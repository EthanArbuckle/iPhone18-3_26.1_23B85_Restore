@interface TRAMutableSettingsOrientation
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setOrientation:(int64_t)orientation;
- (void)setOrientationMapResolver:(id)resolver;
- (void)setRawOrientationInputs:(id)inputs;
- (void)setValidatedOrientationInputs:(id)inputs;
@end

@implementation TRAMutableSettingsOrientation

- (void)setOrientation:(int64_t)orientation
{
  if (self->super._orientation != orientation)
  {
    self->super._orientation = orientation;
  }
}

- (void)setOrientationMapResolver:(id)resolver
{
  resolverCopy = resolver;
  orientationMapResolver = self->super._orientationMapResolver;
  p_orientationMapResolver = &self->super._orientationMapResolver;
  v8 = resolverCopy;
  if (([(BSInterfaceOrientationMapResolving *)orientationMapResolver isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_orientationMapResolver, resolver);
  }
}

- (void)setValidatedOrientationInputs:(id)inputs
{
  inputsCopy = inputs;
  validatedOrientationInputs = self->super._validatedOrientationInputs;
  p_validatedOrientationInputs = &self->super._validatedOrientationInputs;
  v8 = inputsCopy;
  if (![(TRAArbitrationDeviceOrientationInputs *)validatedOrientationInputs isEqual:?])
  {
    objc_storeStrong(p_validatedOrientationInputs, inputs);
  }
}

- (void)setRawOrientationInputs:(id)inputs
{
  inputsCopy = inputs;
  rawOrientationInputs = self->super._rawOrientationInputs;
  p_rawOrientationInputs = &self->super._rawOrientationInputs;
  v8 = inputsCopy;
  if (![(TRAArbitrationDeviceOrientationInputs *)rawOrientationInputs isEqual:?])
  {
    objc_storeStrong(p_rawOrientationInputs, inputs);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TRASettingsOrientation allocWithZone:zone];

  return [(TRASettingsOrientation *)v4 initWithOrientationSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithOrientationSettings:self];
}

@end