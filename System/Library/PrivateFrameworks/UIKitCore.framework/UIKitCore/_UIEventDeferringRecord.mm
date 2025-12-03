@interface _UIEventDeferringRecord
- (BOOL)needsRecreation;
- (_UIEventDeferringRecord)init;
- (id)_initWithDescriptor:(void *)descriptor invalidationToken:(void *)token deferringToken:(uint64_t)deferringToken recordingManagerPointer:(void *)pointer recreationReasons:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)addRecreationReason:(uint64_t)result;
- (void)recreationReasons;
@end

@implementation _UIEventDeferringRecord

- (void)recreationReasons
{
  if (self)
  {
    v2 = self[1];
    if (v2)
    {
      self = [v2 copy];
    }

    else
    {
      self = objc_opt_new();
    }

    v1 = vars8;
  }

  return self;
}

- (BOOL)needsRecreation
{
  if (!self || !self[1])
  {
    return 0;
  }

  recreationReasons = [(_UIEventDeferringRecord *)self recreationReasons];
  v2 = [recreationReasons count] != 0;

  return v2;
}

- (_UIEventDeferringRecord)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringRecord.m" lineNumber:56 description:{@"%s: init is not allowed on _UIEventDeferringRecord", "-[_UIEventDeferringRecord init]"}];

  return 0;
}

- (id)_initWithDescriptor:(void *)descriptor invalidationToken:(void *)token deferringToken:(uint64_t)deferringToken recordingManagerPointer:(void *)pointer recreationReasons:
{
  if (!self)
  {
    return 0;
  }

  v17.receiver = self;
  v17.super_class = _UIEventDeferringRecord;
  v11 = objc_msgSendSuper2(&v17, sel_init);
  if (v11)
  {
    v12 = [a2 copy];
    v13 = *(v11 + 2);
    *(v11 + 2) = v12;

    objc_storeStrong(v11 + 3, descriptor);
    objc_storeWeak(v11 + 4, token);
    *(v11 + 5) = deferringToken;
    v14 = [pointer mutableCopy];
    v15 = *(v11 + 1);
    *(v11 + 1) = v14;
  }

  return v11;
}

- (uint64_t)addRecreationReason:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(v3 + 8);
      *(v3 + 8) = v5;

      v4 = *(v3 + 8);
    }

    if ([v4 containsObject:a2])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addRecreationReason_ object:v3 file:@"_UIEventDeferringRecord.m" lineNumber:84 description:{@"%s: Invalid to mark a record as needing recreation for the same reason twice: %@", "-[_UIEventDeferringRecord addRecreationReason:]", v3}];
    }

    v7 = *(v3 + 8);

    return [v7 addObject:a2];
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIEventDeferringRecord *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:-[_UIEventDeferringRecord needsRecreation](self) withName:@"needsRecreation"];
  v5 = [v3 appendUnsignedInteger:-[NSMutableSet count](self->_recreationReasons withName:{"count"), @"recreationReasons.count"}];
  succinctDescription = [(_UIEventDeferringDescriptor *)self->_descriptor succinctDescription];
  v7 = [v3 appendObject:succinctDescription withName:@"descriptor"];

  v8 = [v3 appendObject:self->_invalidationToken withName:@"invalidationToken"];
  WeakRetained = objc_loadWeakRetained(&self->_deferringToken);
  succinctDescription2 = [WeakRetained succinctDescription];
  v11 = [v3 appendObject:succinctDescription2 withName:@"deferringToken"];

  v12 = [v3 appendPointer:self->_recordingManagerPointer withName:@"recordingManagerPointer"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v6 = [v5 appendBool:-[_UIEventDeferringRecord needsRecreation](self) withName:@"needsRecreation"];
  v7 = [v5 appendUnsignedInteger:-[NSMutableSet count](self->_recreationReasons withName:{"count"), @"recreationReasons.count"}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___UIEventDeferringRecord_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v8 = v5;
  v13 = v8;
  selfCopy = self;
  v9 = [v8 modifyBody:v12];
  v10 = v8;

  return v8;
}

@end