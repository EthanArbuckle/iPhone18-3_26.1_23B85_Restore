@interface UIPencilInteractionTap
- (UIPencilInteractionTap)init;
- (id)_initWithTimestamp:(double)a3 hoverPose:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UIPencilInteractionTap

- (id)_initWithTimestamp:(double)a3 hoverPose:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = UIPencilInteractionTap;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    *(v5 + 1) = a3;
    objc_storeStrong(v5 + 2, a2);
  }

  return v6;
}

- (UIPencilInteractionTap)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIPencilInteraction.m" lineNumber:383 description:{@"%s: init is not allowed on %@", "-[UIPencilInteractionTap init]", objc_opt_class()}];

  return 0;
}

- (id)succinctDescription
{
  v2 = [(UIPencilInteractionTap *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  hoverPose = self->_hoverPose;
  if (hoverPose)
  {
    v5 = [(UIPencilHoverPose *)hoverPose succinctDescription];
  }

  else
  {
    v5 = @"(nil)";
  }

  v6 = [v3 appendObject:v5 withName:@"hoverPose"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIPencilInteractionTap *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIPencilInteractionTap *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__UIPencilInteractionTap_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
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