@interface UIPencilHoverPose
- (CGPoint)location;
- (CGVector)azimuthUnitVector;
- (UIPencilHoverPose)init;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UIPencilHoverPose

- (UIPencilHoverPose)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPencilInteraction.m" lineNumber:237 description:{@"%s: init is not allowed on %@", "-[UIPencilHoverPose init]", objc_opt_class()}];

  return 0;
}

- (CGPoint)location
{
  x = self->_location3D.x;
  y = self->_location3D.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIPencilHoverPose *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  if (os_variant_has_internal_diagnostics())
  {
    v7 = [v3 ui_appendPoint3D:@"location3D" withName:{self->_location3D.x, self->_location3D.y, self->_location3D.z}];
  }

  else
  {
    [(UIPencilHoverPose *)self location];
    v4 = [v3 appendPoint:@"location" withName:?];
  }

  v5 = [v3 appendFloat:@"zOffset" withName:3 decimalPrecision:self->_zOffset];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIPencilHoverPose *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIPencilHoverPose *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__UIPencilHoverPose_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

void __59__UIPencilHoverPose_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__UIPencilHoverPose_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

id __59__UIPencilHoverPose_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (has_internal_diagnostics)
  {
    v11 = [*(a1 + 32) ui_appendPoint3D:@"location3D" withName:{v3[7], v3[8], v3[9]}];
  }

  else
  {
    [v3 location];
    v5 = [v4 appendPoint:@"location" withName:?];
  }

  v6 = [*(a1 + 32) appendFloat:@"zOffset" withName:3 decimalPrecision:*(*(a1 + 40) + 8)];
  v7 = [*(a1 + 32) appendFloat:@"azimuthAngle" withName:3 decimalPrecision:*(*(a1 + 40) + 16)];
  v8 = [*(a1 + 32) ui_appendVector:@"azimuthUnitVector" withName:3 decimalPrecision:{*(*(a1 + 40) + 40), *(*(a1 + 40) + 48)}];
  v9 = [*(a1 + 32) appendFloat:@"altitudeAngle" withName:3 decimalPrecision:*(*(a1 + 40) + 24)];
  return [*(a1 + 32) appendFloat:@"rollAngle" withName:3 decimalPrecision:*(*(a1 + 40) + 32)];
}

- (CGVector)azimuthUnitVector
{
  dx = self->_azimuthUnitVector.dx;
  dy = self->_azimuthUnitVector.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end