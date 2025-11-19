@interface _UIEventDeferringRecord
- (BOOL)needsRecreation;
- (_UIEventDeferringRecord)init;
- (id)_initWithDescriptor:(void *)a3 invalidationToken:(void *)a4 deferringToken:(uint64_t)a5 recordingManagerPointer:(void *)a6 recreationReasons:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)addRecreationReason:(uint64_t)result;
- (void)recreationReasons;
@end

@implementation _UIEventDeferringRecord

- (void)recreationReasons
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      a1 = [v2 copy];
    }

    else
    {
      a1 = objc_opt_new();
    }

    v1 = vars8;
  }

  return a1;
}

- (BOOL)needsRecreation
{
  if (!a1 || !a1[1])
  {
    return 0;
  }

  v1 = [(_UIEventDeferringRecord *)a1 recreationReasons];
  v2 = [v1 count] != 0;

  return v2;
}

- (_UIEventDeferringRecord)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringRecord.m" lineNumber:56 description:{@"%s: init is not allowed on _UIEventDeferringRecord", "-[_UIEventDeferringRecord init]"}];

  return 0;
}

- (id)_initWithDescriptor:(void *)a3 invalidationToken:(void *)a4 deferringToken:(uint64_t)a5 recordingManagerPointer:(void *)a6 recreationReasons:
{
  if (!a1)
  {
    return 0;
  }

  v17.receiver = a1;
  v17.super_class = _UIEventDeferringRecord;
  v11 = objc_msgSendSuper2(&v17, sel_init);
  if (v11)
  {
    v12 = [a2 copy];
    v13 = *(v11 + 2);
    *(v11 + 2) = v12;

    objc_storeStrong(v11 + 3, a3);
    objc_storeWeak(v11 + 4, a4);
    *(v11 + 5) = a5;
    v14 = [a6 mutableCopy];
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
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_addRecreationReason_ object:v3 file:@"_UIEventDeferringRecord.m" lineNumber:84 description:{@"%s: Invalid to mark a record as needing recreation for the same reason twice: %@", "-[_UIEventDeferringRecord addRecreationReason:]", v3}];
    }

    v7 = *(v3 + 8);

    return [v7 addObject:a2];
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(_UIEventDeferringRecord *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:-[_UIEventDeferringRecord needsRecreation](self) withName:@"needsRecreation"];
  v5 = [v3 appendUnsignedInteger:-[NSMutableSet count](self->_recreationReasons withName:{"count"), @"recreationReasons.count"}];
  v6 = [(_UIEventDeferringDescriptor *)self->_descriptor succinctDescription];
  v7 = [v3 appendObject:v6 withName:@"descriptor"];

  v8 = [v3 appendObject:self->_invalidationToken withName:@"invalidationToken"];
  WeakRetained = objc_loadWeakRetained(&self->_deferringToken);
  v10 = [WeakRetained succinctDescription];
  v11 = [v3 appendObject:v10 withName:@"deferringToken"];

  v12 = [v3 appendPointer:self->_recordingManagerPointer withName:@"recordingManagerPointer"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringRecord *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringRecord *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v6 = [v5 appendBool:-[_UIEventDeferringRecord needsRecreation](self) withName:@"needsRecreation"];
  v7 = [v5 appendUnsignedInteger:-[NSMutableSet count](self->_recreationReasons withName:{"count"), @"recreationReasons.count"}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___UIEventDeferringRecord_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v8 = v5;
  v13 = v8;
  v14 = self;
  v9 = [v8 modifyBody:v12];
  v10 = v8;

  return v8;
}

@end