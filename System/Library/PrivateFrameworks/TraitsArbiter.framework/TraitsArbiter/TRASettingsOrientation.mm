@interface TRASettingsOrientation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOrientationSettings:(id)settings;
- (TRASettingsOrientation)initWithOrientation:(int64_t)orientation;
- (TRASettingsOrientation)initWithOrientation:(int64_t)orientation orientationMapResolver:(id)resolver validatedOrientationInputs:(id)inputs rawOrientationInputs:(id)orientationInputs;
- (TRASettingsOrientation)initWithOrientationSettings:(id)settings;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
@end

@implementation TRASettingsOrientation

- (TRASettingsOrientation)initWithOrientation:(int64_t)orientation orientationMapResolver:(id)resolver validatedOrientationInputs:(id)inputs rawOrientationInputs:(id)orientationInputs
{
  resolverCopy = resolver;
  inputsCopy = inputs;
  orientationInputsCopy = orientationInputs;
  v17.receiver = self;
  v17.super_class = TRASettingsOrientation;
  v14 = [(TRASettingsOrientation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_orientation = orientation;
    objc_storeStrong(&v14->_orientationMapResolver, resolver);
    objc_storeStrong(&v15->_validatedOrientationInputs, inputs);
    objc_storeStrong(&v15->_rawOrientationInputs, orientationInputs);
  }

  return v15;
}

- (TRASettingsOrientation)initWithOrientationSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    orientation = [settingsCopy orientation];
    orientationMapResolver = [v5 orientationMapResolver];
    validatedOrientationInputs = [v5 validatedOrientationInputs];
    rawOrientationInputs = [v5 rawOrientationInputs];
  }

  else
  {
    orientationMapResolver = [objc_alloc(MEMORY[0x277CF0BC0]) initWithTargetOrientation:0 currentOrientation:0];
    validatedOrientationInputs = [[TRAArbitrationDeviceOrientationInputs alloc] initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
    rawOrientationInputs = [[TRAArbitrationDeviceOrientationInputs alloc] initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
    orientation = 0;
  }

  v10 = [(TRASettingsOrientation *)self initWithOrientation:orientation orientationMapResolver:orientationMapResolver validatedOrientationInputs:validatedOrientationInputs rawOrientationInputs:rawOrientationInputs];

  return v10;
}

- (TRASettingsOrientation)initWithOrientation:(int64_t)orientation
{
  v5 = [objc_alloc(MEMORY[0x277CF0BC0]) initWithTargetOrientation:0 currentOrientation:0];
  v6 = [[TRAArbitrationDeviceOrientationInputs alloc] initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
  v7 = [[TRAArbitrationDeviceOrientationInputs alloc] initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
  v8 = [(TRASettingsOrientation *)self initWithOrientation:orientation orientationMapResolver:v5 validatedOrientationInputs:v6 rawOrientationInputs:v7];

  return v8;
}

- (BOOL)isEqualToOrientationSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TRASettingsOrientation isEqualToOrientationSettings:];
  }

  if (self == settingsCopy)
  {
    v12 = 1;
    goto LABEL_11;
  }

  orientation = self->_orientation;
  if (orientation != [(TRASettingsOrientation *)settingsCopy orientation])
  {
    goto LABEL_9;
  }

  orientationMapResolver = self->_orientationMapResolver;
  orientationMapResolver = [(TRASettingsOrientation *)settingsCopy orientationMapResolver];
  LODWORD(orientationMapResolver) = [(BSInterfaceOrientationMapResolving *)orientationMapResolver isEqual:orientationMapResolver];

  if (!orientationMapResolver)
  {
    goto LABEL_9;
  }

  validatedOrientationInputs = self->_validatedOrientationInputs;
  validatedOrientationInputs = [(TRASettingsOrientation *)settingsCopy validatedOrientationInputs];
  LODWORD(validatedOrientationInputs) = [(TRAArbitrationDeviceOrientationInputs *)validatedOrientationInputs isEqual:validatedOrientationInputs];

  if (validatedOrientationInputs)
  {
    rawOrientationInputs = self->_rawOrientationInputs;
    rawOrientationInputs = [(TRASettingsOrientation *)settingsCopy rawOrientationInputs];
    v12 = [(TRAArbitrationDeviceOrientationInputs *)rawOrientationInputs isEqual:rawOrientationInputs];
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TRAMutableSettingsOrientation allocWithZone:zone];

  return [(TRASettingsOrientation *)v4 initWithOrientationSettings:self];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRASettingsOrientation *)self isEqualToOrientationSettings:equalCopy];
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

- (id)descriptionWithMultilinePrefix:(id)prefix
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