@interface TRAMutableSettingsAmbientPresentation
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAmbientPresentationInputs:(id)inputs;
@end

@implementation TRAMutableSettingsAmbientPresentation

- (void)setAmbientPresentationInputs:(id)inputs
{
  inputsCopy = inputs;
  ambientPresentationInputs = self->super._ambientPresentationInputs;
  p_ambientPresentationInputs = &self->super._ambientPresentationInputs;
  if (ambientPresentationInputs != inputsCopy)
  {
    v8 = inputsCopy;
    objc_storeStrong(p_ambientPresentationInputs, inputs);
    inputsCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TRASettingsAmbientPresentation allocWithZone:zone];

  return [(TRASettingsAmbientPresentation *)v4 initWithAmbientPresentationSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithAmbientPresentationSettings:self];
}

@end