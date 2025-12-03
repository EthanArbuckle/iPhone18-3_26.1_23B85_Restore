@interface SBSAElementLayoutTransition
- (BOOL)elementWithIdentityWasOrIsSensorAttached:(id)attached;
- (BOOL)isCollisionRequired;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSingleElementExpansion;
- (BOOL)isTransitionFromCustom;
- (BOOL)isTransitionToSingleCompact;
- (SBSAElementLayoutTransition)initWithInitialElementContexts:(id)contexts targetElementContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAElementLayoutTransition

- (BOOL)isTransitionFromCustom
{
  sbsa_onlyObjectOrNil = [(NSArray *)self->_initialElementContexts sbsa_onlyObjectOrNil];
  layoutMode = [sbsa_onlyObjectOrNil layoutMode];
  sbsa_onlyObjectOrNil2 = [(NSArray *)self->_initialElementContexts sbsa_onlyObjectOrNil];
  if (SBSABehavesLikeCustom(layoutMode, [sbsa_onlyObjectOrNil2 systemApertureCustomLayout]))
  {
    v6 = SBSAAreElementLayoutsEqualToLayouts(self->_initialElementContexts, self->_targetElementContexts) ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isSingleElementExpansion
{
  if ([(NSArray *)self->_initialElementContexts count]!= 1 || [(NSArray *)self->_targetElementContexts count]!= 1)
  {
    return 0;
  }

  firstObject = [(NSArray *)self->_initialElementContexts firstObject];
  firstObject2 = [(NSArray *)self->_targetElementContexts firstObject];
  v5 = SAElementIdentityEqualToIdentity();
  v6 = SBSAIsElementLayoutEqualToLayout(firstObject, firstObject2);
  v7 = 0;
  if (v5 && (v6 & 1) == 0)
  {
    v7 = SBSABehavesLikeCustom([firstObject2 layoutMode], objc_msgSend(firstObject2, "systemApertureCustomLayout"));
  }

  return v7;
}

- (BOOL)isCollisionRequired
{
  v3 = [(NSArray *)self->_initialElementContexts count];
  v4 = [(NSArray *)self->_targetElementContexts count];
  v5 = (v3 != 0) & ~SBSAAreElementLayoutsEqualToLayouts(self->_initialElementContexts, self->_targetElementContexts);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && v3 == 1 && v4 == 1)
  {
    firstObject = [(NSArray *)self->_initialElementContexts firstObject];
    firstObject2 = [(NSArray *)self->_targetElementContexts firstObject];
    v11 = SAElementIdentityEqualToIdentity();
    v12 = SBSABehavesLikeCustom([firstObject layoutMode], objc_msgSend(firstObject, "systemApertureCustomLayout"));
    v13 = v12 & !SBSABehavesLikeCustom([firstObject2 layoutMode], objc_msgSend(firstObject2, "systemApertureCustomLayout"));
    if (v11)
    {
      LOBYTE(v6) = v13;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (SBSAElementLayoutTransition)initWithInitialElementContexts:(id)contexts targetElementContext:(id)context
{
  contextsCopy = contexts;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = SBSAElementLayoutTransition;
  v8 = [(SBSAElementLayoutTransition *)&v14 init];
  if (v8)
  {
    if (contextsCopy)
    {
      v9 = [contextsCopy copy];
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }

    initialElementContexts = v8->_initialElementContexts;
    v8->_initialElementContexts = v9;

    if (contextCopy)
    {
      v11 = [contextCopy copy];
    }

    else
    {
      v11 = MEMORY[0x277CBEBF8];
    }

    targetElementContexts = v8->_targetElementContexts;
    v8->_targetElementContexts = v11;
  }

  return v8;
}

- (BOOL)isTransitionToSingleCompact
{
  if ([(NSArray *)self->_targetElementContexts count]!= 1)
  {
    return 0;
  }

  firstObject = [(NSArray *)self->_targetElementContexts firstObject];
  if ([(SBSAElementLayoutTransition *)self isLayoutChange])
  {
    v4 = [firstObject layoutMode] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)elementWithIdentityWasOrIsSensorAttached:(id)attached
{
  if (attached)
  {
    attachedCopy = attached;
    initialElementContexts = [(SBSAElementLayoutTransition *)self initialElementContexts];
    v6 = SBSAElementIdentityOfSensorAttachedElementInCollection(initialElementContexts);
    v7 = SAElementIdentityEqualToIdentity();

    targetElementContexts = [(SBSAElementLayoutTransition *)self targetElementContexts];
    v9 = SBSAElementIdentityOfSensorAttachedElementInCollection(targetElementContexts);
    LOBYTE(v6) = SAElementIdentityEqualToIdentity();

    v10 = v7 | v6;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__SBSAElementLayoutTransition_isEqual___block_invoke;
  v17[3] = &unk_2783A94B0;
  v17[4] = self;
  v18 = equalCopy;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __39__SBSAElementLayoutTransition_isEqual___block_invoke_2;
  v14 = &unk_2783A94B0;
  selfCopy = self;
  v16 = v18;
  v6 = v18;
  v7 = MEMORY[0x223D6F7F0](&v11);
  v8 = [v5 appendEqualsBlocks:{v17, v7, 0, v11, v12, v13, v14, selfCopy}];
  v9 = [v8 isEqual];

  return v9;
}

uint64_t __39__SBSAElementLayoutTransition_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) initialElementContexts];
  v3 = SBSAAreElementLayoutsEqualToLayouts(v1, v2);

  return v3;
}

uint64_t __39__SBSAElementLayoutTransition_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) targetElementContexts];
  v3 = SBSAAreElementLayoutsEqualToLayouts(v1, v2);

  return v3;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_initialElementContexts];
  v5 = [v4 appendObject:self->_targetElementContexts];
  v6 = [v5 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  initialElementContexts = self->_initialElementContexts;
  targetElementContexts = self->_targetElementContexts;

  return [v4 initWithInitialElementContexts:initialElementContexts targetElementContext:targetElementContexts];
}

@end