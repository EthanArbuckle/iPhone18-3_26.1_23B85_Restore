@interface UIPencilInteractionSqueeze
- (UIPencilInteractionSqueeze)init;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_initWithTimestamp:(void *)timestamp eventPhase:(double)phase normalizedForceVelocity:(double)velocity hoverPose:;
@end

@implementation UIPencilInteractionSqueeze

- (uint64_t)_initWithTimestamp:(void *)timestamp eventPhase:(double)phase normalizedForceVelocity:(double)velocity hoverPose:
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = UIPencilInteractionSqueeze;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  *(v9 + 2) = phase;
  if ((a2 - 1) < 4)
  {
    v9[3] = (a2 - 1);
    *(v9 + 1) = velocity;
    objc_storeStrong(v9 + 4, timestamp);
    return v10;
  }

  v13 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v14 = 134217984;
  v15 = a2;
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

- (UIPencilInteractionSqueeze)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPencilInteraction.m" lineNumber:496 description:{@"%s: init is not allowed on %@", "-[UIPencilInteractionSqueeze init]", objc_opt_class()}];

  return 0;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIPencilInteractionSqueeze *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  phase = self->_phase;
  if (phase > 3)
  {
    v6 = &stru_1EFB14550;
  }

  else
  {
    v6 = off_1E711F2F8[phase];
  }

  v7 = [v3 appendObject:v6 withName:@"phase"];
  if (os_variant_has_internal_diagnostics())
  {
    v12 = [v4 appendFloat:@"normalizedForceVelocity" withName:1 decimalPrecision:self->_normalizedForceVelocity];
  }

  hoverPose = self->_hoverPose;
  if (hoverPose)
  {
    succinctDescription = [(UIPencilHoverPose *)hoverPose succinctDescription];
  }

  else
  {
    succinctDescription = @"(nil)";
  }

  v10 = [v4 appendObject:succinctDescription withName:@"hoverPose"];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIPencilInteractionSqueeze *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIPencilInteractionSqueeze *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__UIPencilInteractionSqueeze_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

void __68__UIPencilInteractionSqueeze_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__UIPencilInteractionSqueeze_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

id __68__UIPencilInteractionSqueeze_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  if (v3 > 3)
  {
    v4 = &stru_1EFB14550;
  }

  else
  {
    v4 = off_1E711F2F8[v3];
  }

  v5 = [v2 appendObject:v4 withName:@"phase"];
  if (os_variant_has_internal_diagnostics())
  {
    v8 = [*(a1 + 32) appendFloat:@"normalizedForceVelocity" withName:1 decimalPrecision:*(*(a1 + 40) + 8)];
  }

  if (*(*(a1 + 40) + 32))
  {
    v6 = *(*(a1 + 40) + 32);
  }

  else
  {
    v6 = @"(nil)";
  }

  return [*(a1 + 32) appendObject:v6 withName:@"hoverPose"];
}

@end