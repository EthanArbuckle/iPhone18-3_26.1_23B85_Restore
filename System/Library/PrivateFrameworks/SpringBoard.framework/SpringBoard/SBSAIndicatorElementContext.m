@interface SBSAIndicatorElementContext
+ (id)instanceWithBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)indicatorSize;
- (NSDirectionalEdgeInsets)preferredEdgeOutsets;
- (NSString)description;
- (SBSAIndicatorElementContext)initWithSystemApertureElementContext:(id)a3;
- (id)copyWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSAIndicatorElementContext

- (SBSAIndicatorElementContext)initWithSystemApertureElementContext:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBSAIndicatorElementContext;
  v5 = [(SBSAIndicatorElementContext *)&v19 init];
  if (v5)
  {
    v6 = [v4 clientIdentifier];
    v7 = [v6 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    v9 = [v4 elementIdentifier];
    v10 = [v9 copy];
    elementIdentifier = v5->_elementIdentifier;
    v5->_elementIdentifier = v10;

    v5->_interfaceOrientation = [v4 interfaceOrientation];
    v5->_indicatorNeedsDisplayWellKnownLocation = [v4 indicatorNeedsDisplayWellKnownLocation];
    [v4 indicatorSize];
    v5->_indicatorSize.width = v12;
    v5->_indicatorSize.height = v13;
    [v4 preferredEdgeOutsets];
    v5->_preferredEdgeOutsets.top = v14;
    v5->_preferredEdgeOutsets.leading = v15;
    v5->_preferredEdgeOutsets.bottom = v16;
    v5->_preferredEdgeOutsets.trailing = v17;
    v5->_supportsMicroIndicatorPosition = [v4 supportsMicroIndicatorPosition];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  clientIdentifier = self->_clientIdentifier;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __39__SBSAIndicatorElementContext_isEqual___block_invoke;
  v38[3] = &unk_2783ACDB8;
  v7 = v4;
  v39 = v7;
  v8 = [v5 appendObject:clientIdentifier counterpart:v38];
  elementIdentifier = self->_elementIdentifier;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__SBSAIndicatorElementContext_isEqual___block_invoke_2;
  v36[3] = &unk_2783ACDB8;
  v10 = v7;
  v37 = v10;
  v11 = [v8 appendObject:elementIdentifier counterpart:v36];
  supportsMicroIndicatorPosition = self->_supportsMicroIndicatorPosition;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __39__SBSAIndicatorElementContext_isEqual___block_invoke_3;
  v34[3] = &unk_2783ACE58;
  v13 = v10;
  v35 = v13;
  v14 = [v11 appendBool:supportsMicroIndicatorPosition counterpart:v34];
  indicatorNeedsDisplayWellKnownLocation = self->_indicatorNeedsDisplayWellKnownLocation;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__SBSAIndicatorElementContext_isEqual___block_invoke_4;
  v32[3] = &unk_2783ACE58;
  v16 = v13;
  v33 = v16;
  v17 = [v14 appendBool:indicatorNeedsDisplayWellKnownLocation counterpart:v32];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __39__SBSAIndicatorElementContext_isEqual___block_invoke_5;
  v30[3] = &unk_2783BA168;
  v18 = v16;
  v31 = v18;
  v19 = [v17 appendCGSize:v30 counterpart:{self->_indicatorSize.width, self->_indicatorSize.height}];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __39__SBSAIndicatorElementContext_isEqual___block_invoke_6;
  v28[3] = &unk_2783A94B0;
  v28[4] = self;
  v20 = v18;
  v29 = v20;
  v21 = [v19 appendEqualsBlocks:{v28, 0}];
  interfaceOrientation = self->_interfaceOrientation;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __39__SBSAIndicatorElementContext_isEqual___block_invoke_7;
  v26[3] = &unk_2783ACDE0;
  v27 = v20;
  v23 = v20;
  v24 = [v21 appendInteger:interfaceOrientation counterpart:v26];
  LOBYTE(v20) = [v24 isEqual];

  return v20;
}

BOOL __39__SBSAIndicatorElementContext_isEqual___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) preferredEdgeOutsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 40) preferredEdgeOutsets];
  v13 = v5 == v12;
  if (v3 != v14)
  {
    v13 = 0;
  }

  if (v9 != v11)
  {
    v13 = 0;
  }

  return v7 == v10 && v13;
}

- (unint64_t)hash
{
  v15 = [MEMORY[0x277CF0C40] builder];
  v14 = [v15 appendObject:self->_clientIdentifier];
  v3 = [v14 appendObject:self->_elementIdentifier];
  v4 = [v3 appendBool:self->_supportsMicroIndicatorPosition];
  v5 = [v4 appendBool:self->_indicatorNeedsDisplayWellKnownLocation];
  v6 = [v5 appendCGSize:{self->_indicatorSize.width, self->_indicatorSize.height}];
  v7 = [v6 appendCGFloat:self->_preferredEdgeOutsets.top];
  v8 = [v7 appendCGFloat:self->_preferredEdgeOutsets.leading];
  v9 = [v8 appendCGFloat:self->_preferredEdgeOutsets.bottom];
  v10 = [v9 appendCGFloat:self->_preferredEdgeOutsets.trailing];
  v11 = [v10 appendInteger:self->_interfaceOrientation];
  v12 = [v11 hash];

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_clientIdentifier)
  {
    clientIdentifier = self->_clientIdentifier;
  }

  else
  {
    clientIdentifier = @"nil";
  }

  if (self->_elementIdentifier)
  {
    elementIdentifier = self->_elementIdentifier;
  }

  else
  {
    elementIdentifier = @"nil";
  }

  v7 = NSStringFromBOOL();
  v8 = NSStringFromBOOL();
  v9 = NSStringFromCGSize(self->_indicatorSize);
  v10 = NSStringFromDirectionalEdgeInsets(self->_preferredEdgeOutsets);
  v11 = SBSAStringFromUIInterfaceOrientation(self->_interfaceOrientation);
  v12 = [v3 stringWithFormat:@"<%@: %p clientIdentifier: %@; elementIdentifier: %@; supportsMicroIndicatorPosition: %@; indicatorNeedsDisplayWellKnownLocation: %@; indicatorSize: %@; preferredEdgeOutsets: %@; interfaceOrientation: %@>", v4, self, clientIdentifier, elementIdentifier, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithSystemApertureElementContext:self];
}

+ (id)instanceWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:v3];

  return v5;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBSAIndicatorElementContext *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

- (CGSize)indicatorSize
{
  width = self->_indicatorSize.width;
  height = self->_indicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsets
{
  top = self->_preferredEdgeOutsets.top;
  leading = self->_preferredEdgeOutsets.leading;
  bottom = self->_preferredEdgeOutsets.bottom;
  trailing = self->_preferredEdgeOutsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end