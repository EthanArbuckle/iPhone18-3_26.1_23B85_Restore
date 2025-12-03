@interface TRAArbitrationDeviceOrientationInputs
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceOrientationInputs:(id)inputs;
- (TRAArbitrationDeviceOrientationInputs)initWithCurrentDeviceOrientation:(int64_t)orientation nonFlatDeviceOrientation:(int64_t)deviceOrientation;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationDeviceOrientationInputs

- (TRAArbitrationDeviceOrientationInputs)initWithCurrentDeviceOrientation:(int64_t)orientation nonFlatDeviceOrientation:(int64_t)deviceOrientation
{
  v7.receiver = self;
  v7.super_class = TRAArbitrationDeviceOrientationInputs;
  result = [(TRAArbitrationDeviceOrientationInputs *)&v7 init];
  if (result)
  {
    result->_currentDeviceOrientation = orientation;
    result->_nonFlatDeviceOrientation = deviceOrientation;
  }

  return result;
}

- (BOOL)isEqualToDeviceOrientationInputs:(id)inputs
{
  inputsCopy = inputs;
  if (!inputsCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TRAArbitrationDeviceOrientationInputs isEqualToDeviceOrientationInputs:];
  }

  if (self == inputsCopy)
  {
    v7 = 1;
    goto LABEL_9;
  }

  currentDeviceOrientation = self->_currentDeviceOrientation;
  if (currentDeviceOrientation == [(TRAArbitrationDeviceOrientationInputs *)inputsCopy currentDeviceOrientation])
  {
    nonFlatDeviceOrientation = self->_nonFlatDeviceOrientation;
    v7 = nonFlatDeviceOrientation == [(TRAArbitrationDeviceOrientationInputs *)inputsCopy nonFlatDeviceOrientation];
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAArbitrationDeviceOrientationInputs *)self isEqualToDeviceOrientationInputs:equalCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbitrationDeviceOrientationInputs *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__TRAArbitrationDeviceOrientationInputs_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_279DD48D0;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  [v4 appendBodySectionWithName:0 multilinePrefix:@"\t\t" block:v7];
  v5 = v4;

  return v4;
}

void __67__TRAArbitrationDeviceOrientationInputs_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = TRAStringForBSDeviceOrientation(*(*(a1 + 40) + 8));
  [v2 appendString:v3 withName:@"current"];

  v4 = *(a1 + 32);
  v5 = TRAStringForBSDeviceOrientation(*(*(a1 + 40) + 16));
  [v4 appendString:v5 withName:@"nonFlat"];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationDeviceOrientationInputs *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)isEqualToDeviceOrientationInputs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"deviceOrientationInputs == nil || [deviceOrientationInputs isKindOfClass:[TRAArbitrationDeviceOrientationInputs class]]" object:? file:? lineNumber:? description:?];
}

@end