@interface UIPencilInteractionTap
- (UIPencilInteractionTap)init;
- (id)_initWithTimestamp:(double)timestamp hoverPose:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UIPencilInteractionTap

- (id)_initWithTimestamp:(double)timestamp hoverPose:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = UIPencilInteractionTap;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    *(v5 + 1) = timestamp;
    objc_storeStrong(v5 + 2, a2);
  }

  return v6;
}

- (UIPencilInteractionTap)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPencilInteraction.m" lineNumber:383 description:{@"%s: init is not allowed on %@", "-[UIPencilInteractionTap init]", objc_opt_class()}];

  return 0;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIPencilInteractionTap *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  hoverPose = self->_hoverPose;
  if (hoverPose)
  {
    succinctDescription = [(UIPencilHoverPose *)hoverPose succinctDescription];
  }

  else
  {
    succinctDescription = @"(nil)";
  }

  v6 = [v3 appendObject:succinctDescription withName:@"hoverPose"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIPencilInteractionTap *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIPencilInteractionTap *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__UIPencilInteractionTap_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

void __64__UIPencilInteractionTap_descriptionBuilderWithMultilinePrefix___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__UIPencilInteractionTap_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v5 = a1[2];
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

id __64__UIPencilInteractionTap_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"(nil)";
  }

  return [v1 appendObject:v4 withName:@"hoverPose"];
}

@end