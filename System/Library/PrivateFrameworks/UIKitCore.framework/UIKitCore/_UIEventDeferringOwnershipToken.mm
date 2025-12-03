@interface _UIEventDeferringOwnershipToken
- (_BYTE)_initWithOwner:(uint64_t)owner scope:(void *)scope environments:(void *)environments target:(void *)target reason:(void *)reason endDeferringBlock:;
- (_UIEventDeferringOwnershipToken)init;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)dealloc;
- (void)endEventDeferringWithReason:(uint64_t)reason;
@end

@implementation _UIEventDeferringOwnershipToken

- (void)dealloc
{
  if (!self->_hasInvalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringOwnershipToken.m" lineNumber:105 description:{@"Owner must request to end event deferring before dealloc: %@", self}];
  }

  v5.receiver = self;
  v5.super_class = _UIEventDeferringOwnershipToken;
  [(_UIEventDeferringOwnershipToken *)&v5 dealloc];
}

- (_UIEventDeferringOwnershipToken)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringOwnershipToken.m" lineNumber:78 description:@"init is not allowed on _UIEventDeferringOwnershipToken"];

  return 0;
}

- (_BYTE)_initWithOwner:(uint64_t)owner scope:(void *)scope environments:(void *)environments target:(void *)target reason:(void *)reason endDeferringBlock:
{
  if (!self)
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = _UIEventDeferringOwnershipToken;
  v13 = objc_msgSendSuper2(&v23, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[24] = 0;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = *(v14 + 4);
    *(v14 + 4) = v16;

    *(v14 + 5) = _UIEventDeferringInterfaceCategoryForOwningElement();
    *(v14 + 6) = a2;
    *(v14 + 7) = owner;
    objc_storeStrong(v14 + 8, scope);
    v18 = [scope mutableCopy];
    v19 = *(v14 + 1);
    *(v14 + 1) = v18;

    objc_storeStrong(v14 + 9, environments);
    objc_storeStrong(v14 + 10, target);
    v20 = [reason copy];
    v21 = *(v14 + 2);
    *(v14 + 2) = v20;
  }

  return v14;
}

- (void)endEventDeferringWithReason:(uint64_t)reason
{
  if (reason)
  {
    v3 = *(reason + 16);
    if (v3)
    {
      (*(v3 + 16))(v3, reason, a2);
      v4 = *(reason + 16);
      *(reason + 16) = 0;
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIEventDeferringOwnershipToken *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_hasInvalidated withName:@"invalidated"];
  v5 = _NSStringFromUIEventDeferringScope(self->_scope);
  v6 = [v3 appendObject:v5 withName:@"scope"];

  v7 = [v3 appendObject:self->_ownerClass withName:@"ownerClass"];
  owningInterfaceElementCategory = self->_owningInterfaceElementCategory;
  if (owningInterfaceElementCategory > 3)
  {
    v9 = &stru_1EFB14550;
  }

  else
  {
    v9 = off_1E70F6710[owningInterfaceElementCategory];
  }

  v10 = [v3 appendObject:v9 withName:@"owningInterfaceElementCategory"];
  v11 = [v3 appendPointer:self->_ownerPointer withName:@"ownerPointer"];
  v12 = [v3 appendObject:self->_reason withName:@"reason"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringOwnershipToken *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringOwnershipToken *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v6 = [v5 appendBool:self->_hasInvalidated withName:@"invalidated"];
  v7 = _NSStringFromUIEventDeferringScope(self->_scope);
  v8 = [v5 appendObject:v7 withName:@"scope"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73___UIEventDeferringOwnershipToken_descriptionBuilderWithMultilinePrefix___block_invoke;
  v13[3] = &unk_1E70F35B8;
  v9 = v5;
  v14 = v9;
  selfCopy = self;
  v10 = [v9 modifyBody:v13];
  v11 = v9;

  return v9;
}

@end