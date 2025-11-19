@interface TRASettingsOrientation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOrientationSettings:(id)a3;
- (TRASettingsOrientation)initWithOrientation:(int64_t)a3;
- (TRASettingsOrientation)initWithOrientation:(int64_t)a3 orientationMapResolver:(id)a4 validatedOrientationInputs:(id)a5 rawOrientationInputs:(id)a6;
- (TRASettingsOrientation)initWithOrientationSettings:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
@end

@implementation TRASettingsOrientation

- (TRASettingsOrientation)initWithOrientation:(int64_t)a3 orientationMapResolver:(id)a4 validatedOrientationInputs:(id)a5 rawOrientationInputs:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = TRASettingsOrientation;
  v14 = [(TRASettingsOrientation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_orientation = a3;
    objc_storeStrong(&v14->_orientationMapResolver, a4);
    objc_storeStrong(&v15->_validatedOrientationInputs, a5);
    objc_storeStrong(&v15->_rawOrientationInputs, a6);
  }

  return v15;
}

- (TRASettingsOrientation)initWithOrientationSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 orientation];
    v7 = [v5 orientationMapResolver];
    v8 = [v5 validatedOrientationInputs];
    v9 = [v5 rawOrientationInputs];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CF0BC0]) initWithTargetOrientation:0 currentOrientation:0];
    v8 = [[TRAArbitrationDeviceOrientationInputs alloc] initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
    v9 = [[TRAArbitrationDeviceOrientationInputs alloc] initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
    v6 = 0;
  }

  v10 = [(TRASettingsOrientation *)self initWithOrientation:v6 orientationMapResolver:v7 validatedOrientationInputs:v8 rawOrientationInputs:v9];

  return v10;
}

- (TRASettingsOrientation)initWithOrientation:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x277CF0BC0]) initWithTargetOrientation:0 currentOrientation:0];
  v6 = [[TRAArbitrationDeviceOrientationInputs alloc] initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
  v7 = [[TRAArbitrationDeviceOrientationInputs alloc] initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
  v8 = [(TRASettingsOrientation *)self initWithOrientation:a3 orientationMapResolver:v5 validatedOrientationInputs:v6 rawOrientationInputs:v7];

  return v8;
}

- (BOOL)isEqualToOrientationSettings:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TRASettingsOrientation isEqualToOrientationSettings:];
  }

  if (self == v4)
  {
    v12 = 1;
    goto LABEL_11;
  }

  orientation = self->_orientation;
  if (orientation != [(TRASettingsOrientation *)v4 orientation])
  {
    goto LABEL_9;
  }

  orientationMapResolver = self->_orientationMapResolver;
  v7 = [(TRASettingsOrientation *)v4 orientationMapResolver];
  LODWORD(orientationMapResolver) = [(BSInterfaceOrientationMapResolving *)orientationMapResolver isEqual:v7];

  if (!orientationMapResolver)
  {
    goto LABEL_9;
  }

  validatedOrientationInputs = self->_validatedOrientationInputs;
  v9 = [(TRASettingsOrientation *)v4 validatedOrientationInputs];
  LODWORD(validatedOrientationInputs) = [(TRAArbitrationDeviceOrientationInputs *)validatedOrientationInputs isEqual:v9];

  if (validatedOrientationInputs)
  {
    rawOrientationInputs = self->_rawOrientationInputs;
    v11 = [(TRASettingsOrientation *)v4 rawOrientationInputs];
    v12 = [(TRAArbitrationDeviceOrientationInputs *)rawOrientationInputs isEqual:v11];
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TRAMutableSettingsOrientation allocWithZone:a3];

  return [(TRASettingsOrientation *)v4 initWithOrientationSettings:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRASettingsOrientation *)self isEqualToOrientationSettings:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = TRAStringForBSInterfaceOrientation(self->_orientation);
  v4 = [v2 stringWithFormat:@"orientation: %@", v3];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = TRAStringForBSDeviceOrientation([(TRAArbitrationDeviceOrientationInputs *)self->_validatedOrientationInputs currentDeviceOrientation]);
  v6 = TRAStringForBSDeviceOrientation([(TRAArbitrationDeviceOrientationInputs *)self->_validatedOrientationInputs nonFlatDeviceOrientation]);
  v7 = [v4 stringWithFormat:@"current: %@, nonFlat: %@", v5, v6];

  v8 = MEMORY[0x277CCACA8];
  v9 = TRAStringForBSDeviceOrientation([(TRAArbitrationDeviceOrientationInputs *)self->_rawOrientationInputs currentDeviceOrientation]);
  v10 = TRAStringForBSDeviceOrientation([(TRAArbitrationDeviceOrientationInputs *)self->_rawOrientationInputs nonFlatDeviceOrientation]);
  v11 = [v8 stringWithFormat:@"current: %@, nonFlat: %@", v9, v10];

  v12 = MEMORY[0x277CCACA8];
  v13 = TRAStringForBSInterfaceOrientation(self->_orientation);
  v14 = [v12 stringWithFormat:@"orientation: %@, deviceValidated: {%@}, deviceRaw: {%@}, mapResolver: {%@}", v13, v7, v11, self->_orientationMapResolver];

  return v14;
}

- (void)isEqualToOrientationSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"orientationSettings == nil || [orientationSettings isKindOfClass:[TRASettingsOrientation class]]" object:? file:? lineNumber:? description:?];
}

@end