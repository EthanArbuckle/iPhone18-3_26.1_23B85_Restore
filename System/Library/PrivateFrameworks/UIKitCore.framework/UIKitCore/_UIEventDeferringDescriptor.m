@interface _UIEventDeferringDescriptor
- (BOOL)isEqual:(id)a3;
- (_UIEventDeferringDescriptor)init;
- (id)_initWithScope:(char)a3 compatibility:(void *)a4 environment:(void *)a5 displayHardwareIdentifier:(void *)a6 predicateSceneIdentityString:(void *)a7 predicateWindowPointer:(int)a8 predicateContextID:(int)a9 targetPID:(void *)a10 targetSceneIdentityString:(void *)a11 targetWindowPointer:(int)a12 targetContextID:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation _UIEventDeferringDescriptor

- (_UIEventDeferringDescriptor)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringDescriptor.m" lineNumber:41 description:@"init is not allowed on _UIEventDeferringDescriptor"];

  return 0;
}

- (id)_initWithScope:(char)a3 compatibility:(void *)a4 environment:(void *)a5 displayHardwareIdentifier:(void *)a6 predicateSceneIdentityString:(void *)a7 predicateWindowPointer:(int)a8 predicateContextID:(int)a9 targetPID:(void *)a10 targetSceneIdentityString:(void *)a11 targetWindowPointer:(int)a12 targetContextID:
{
  if (!a1)
  {
    return 0;
  }

  v22.receiver = a1;
  v22.super_class = _UIEventDeferringDescriptor;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  v20 = v19;
  if (v19)
  {
    v19[3] = a2;
    *(v19 + 8) = a3;
    objc_storeStrong(v19 + 4, a4);
    objc_storeStrong(v20 + 5, a5);
    objc_storeStrong(v20 + 6, a6);
    v20[7] = a7;
    *(v20 + 3) = a8;
    *(v20 + 4) = a9;
    objc_storeStrong(v20 + 8, a10);
    v20[9] = a11;
    *(v20 + 5) = a12;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    v5 = objc_opt_class();
    if (![v5 isEqual:objc_opt_class()])
    {
      goto LABEL_26;
    }

    v6 = [(_UIEventDeferringDescriptor *)self hash];
    if (v6 != [v4 hash] || self->_scope != v4[3] || self->_compatibility != *(v4 + 8))
    {
      goto LABEL_26;
    }

    v7 = v4[4];
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

    v13 = v4[5];
    v8 = self->_displayHardwareIdentifier;
    v14 = v13;
    v10 = v14;
    if (v8 == v14)
    {

LABEL_20:
      if (_deferringTokenEqualToToken(self->_predicateSceneIdentityString, v4[6]) && self->_predicateContextID == *(v4 + 3) && self->_predicateWindowPointer == v4[7] && self->_targetPID == *(v4 + 4) && _deferringTokenEqualToToken(self->_targetSceneIdentityString, v4[8]) && self->_targetWindowPointer == v4[9])
      {
        v12 = self->_targetContextID == *(v4 + 5);
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:self->_scope];
  v5 = [v3 appendBool:self->_compatibility];
  v6 = [v3 appendObject:self->_environment];
  v7 = [v3 appendString:self->_displayHardwareIdentifier];
  v8 = [v3 appendString:self->_predicateSceneIdentityString];
  v9 = [v3 appendPointer:self->_predicateWindowPointer];
  v10 = [v3 appendUnsignedInteger:self->_predicateContextID];
  v11 = [v3 appendUnsignedInteger:self->_targetPID];
  v12 = [v3 appendPointer:self->_targetWindowPointer];
  v13 = [v3 appendString:self->_targetSceneIdentityString];
  v14 = [v3 appendUnsignedInteger:self->_targetContextID];
  v15 = [v3 hash];

  return v15;
}

- (id)succinctDescription
{
  v2 = [(_UIEventDeferringDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69___UIEventDeferringDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

@end