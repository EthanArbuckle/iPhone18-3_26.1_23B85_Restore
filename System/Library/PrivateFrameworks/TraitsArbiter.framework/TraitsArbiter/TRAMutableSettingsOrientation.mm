@interface TRAMutableSettingsOrientation
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setOrientationMapResolver:(id)a3;
- (void)setRawOrientationInputs:(id)a3;
- (void)setValidatedOrientationInputs:(id)a3;
@end

@implementation TRAMutableSettingsOrientation

- (void)setOrientation:(int64_t)a3
{
  if (self->super._orientation != a3)
  {
    self->super._orientation = a3;
  }
}

- (void)setOrientationMapResolver:(id)a3
{
  v5 = a3;
  orientationMapResolver = self->super._orientationMapResolver;
  p_orientationMapResolver = &self->super._orientationMapResolver;
  v8 = v5;
  if (([(BSInterfaceOrientationMapResolving *)orientationMapResolver isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_orientationMapResolver, a3);
  }
}

- (void)setValidatedOrientationInputs:(id)a3
{
  v5 = a3;
  validatedOrientationInputs = self->super._validatedOrientationInputs;
  p_validatedOrientationInputs = &self->super._validatedOrientationInputs;
  v8 = v5;
  if (![(TRAArbitrationDeviceOrientationInputs *)validatedOrientationInputs isEqual:?])
  {
    objc_storeStrong(p_validatedOrientationInputs, a3);
  }
}

- (void)setRawOrientationInputs:(id)a3
{
  v5 = a3;
  rawOrientationInputs = self->super._rawOrientationInputs;
  p_rawOrientationInputs = &self->super._rawOrientationInputs;
  v8 = v5;
  if (![(TRAArbitrationDeviceOrientationInputs *)rawOrientationInputs isEqual:?])
  {
    objc_storeStrong(p_rawOrientationInputs, a3);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TRASettingsOrientation allocWithZone:a3];

  return [(TRASettingsOrientation *)v4 initWithOrientationSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithOrientationSettings:self];
}

@end