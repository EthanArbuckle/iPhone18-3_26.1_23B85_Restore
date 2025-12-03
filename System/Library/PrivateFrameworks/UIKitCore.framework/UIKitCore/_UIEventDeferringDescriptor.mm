@interface _UIEventDeferringDescriptor
- (BOOL)isEqual:(id)equal;
- (_UIEventDeferringDescriptor)init;
- (id)_initWithScope:(char)scope compatibility:(void *)compatibility environment:(void *)environment displayHardwareIdentifier:(void *)identifier predicateSceneIdentityString:(void *)string predicateWindowPointer:(int)pointer predicateContextID:(int)d targetPID:(void *)self0 targetSceneIdentityString:(void *)self1 targetWindowPointer:(int)self2 targetContextID:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation _UIEventDeferringDescriptor

- (_UIEventDeferringDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringDescriptor.m" lineNumber:41 description:@"init is not allowed on _UIEventDeferringDescriptor"];

  return 0;
}

- (id)_initWithScope:(char)scope compatibility:(void *)compatibility environment:(void *)environment displayHardwareIdentifier:(void *)identifier predicateSceneIdentityString:(void *)string predicateWindowPointer:(int)pointer predicateContextID:(int)d targetPID:(void *)self0 targetSceneIdentityString:(void *)self1 targetWindowPointer:(int)self2 targetContextID:
{
  if (!self)
  {
    return 0;
  }

  v22.receiver = self;
  v22.super_class = _UIEventDeferringDescriptor;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  v20 = v19;
  if (v19)
  {
    v19[3] = a2;
    *(v19 + 8) = scope;
    objc_storeStrong(v19 + 4, compatibility);
    objc_storeStrong(v20 + 5, environment);
    objc_storeStrong(v20 + 6, identifier);
    v20[7] = string;
    *(v20 + 3) = pointer;
    *(v20 + 4) = d;
    objc_storeStrong(v20 + 8, iD);
    v20[9] = identityString;
    *(v20 + 5) = windowPointer;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    if (![v5 isEqual:objc_opt_class()])
    {
      goto LABEL_26;
    }

    v6 = [(_UIEventDeferringDescriptor *)self hash];
    if (v6 != [equalCopy hash] || self->_scope != equalCopy[3] || self->_compatibility != *(equalCopy + 8))
    {
      goto LABEL_26;
    }

    v7 = equalCopy[4];
    v8 = self->_environment;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8 || !v9)
      {
        goto LABEL_18;
      }

      v11 = [(BKSHIDEventDeferringEnvironment *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    v13 = equalCopy[5];
    v8 = self->_displayHardwareIdentifier;
    v14 = v13;
    v10 = v14;
    if (v8 == v14)
    {

LABEL_20:
      if (_deferringTokenEqualToToken(self->_predicateSceneIdentityString, equalCopy[6]) && self->_predicateContextID == *(equalCopy + 3) && self->_predicateWindowPointer == equalCopy[7] && self->_targetPID == *(equalCopy + 4) && _deferringTokenEqualToToken(self->_targetSceneIdentityString, equalCopy[8]) && self->_targetWindowPointer == equalCopy[9])
      {
        v12 = self->_targetContextID == *(equalCopy + 5);
        goto LABEL_27;
      }

LABEL_26:
      v12 = 0;
LABEL_27:

      return v12;
    }

    if (v8 && v14)
    {
      v15 = [(BKSHIDEventDeferringEnvironment *)v8 isEqual:v14];

      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_26;
  }

  return 1;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:self->_scope];
  v5 = [builder appendBool:self->_compatibility];
  v6 = [builder appendObject:self->_environment];
  v7 = [builder appendString:self->_displayHardwareIdentifier];
  v8 = [builder appendString:self->_predicateSceneIdentityString];
  v9 = [builder appendPointer:self->_predicateWindowPointer];
  v10 = [builder appendUnsignedInteger:self->_predicateContextID];
  v11 = [builder appendUnsignedInteger:self->_targetPID];
  v12 = [builder appendPointer:self->_targetWindowPointer];
  v13 = [builder appendString:self->_targetSceneIdentityString];
  v14 = [builder appendUnsignedInteger:self->_targetContextID];
  v15 = [builder hash];

  return v15;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIEventDeferringDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_compatibility withName:@"compatibility"];
  v5 = [v3 appendObject:self->_environment withName:@"environment"];
  [v3 appendString:self->_displayHardwareIdentifier withName:@"displayIdentifier"];
  v6 = [v3 appendUnsignedInteger:self->_targetContextID withName:@"targetContextID" format:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69___UIEventDeferringDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

@end