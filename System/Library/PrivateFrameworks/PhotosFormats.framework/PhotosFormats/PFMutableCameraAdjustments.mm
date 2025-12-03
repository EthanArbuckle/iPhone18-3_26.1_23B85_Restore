@interface PFMutableCameraAdjustments
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setCinematicVideoRenderingVersion:(unint64_t)version;
- (void)setCropRect:(CGRect)rect;
- (void)setDepthEnabled:(BOOL)enabled;
- (void)setEffectFilterName:(id)name;
- (void)setIsEligibleForCinematicAudioEffectProcessing:(BOOL)processing;
- (void)setPortraitEffectFilterName:(id)name;
- (void)setPortraitMetadata:(id)metadata;
- (void)setSloMoEnabled:(BOOL)enabled;
@end

@implementation PFMutableCameraAdjustments

- (void)setCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->super._cropRect))
  {
    self->super._cropRect.origin.x = x;
    self->super._cropRect.origin.y = y;
    self->super._cropRect.size.width = width;
    self->super._cropRect.size.height = height;
  }
}

- (void)setCinematicVideoRenderingVersion:(unint64_t)version
{
  if (self->super._cinematicVideoRenderingVersion != version)
  {
    self->super._cinematicVideoRenderingVersion = version;
  }
}

- (void)setIsEligibleForCinematicAudioEffectProcessing:(BOOL)processing
{
  if (self->super._isEligibleForCinematicAudioEffectProcessing != processing)
  {
    self->super._isEligibleForCinematicAudioEffectProcessing = processing;
  }
}

- (void)setSloMoEnabled:(BOOL)enabled
{
  if (self->super._sloMoEnabled != enabled)
  {
    self->super._sloMoEnabled = enabled;
  }
}

- (void)setDepthEnabled:(BOOL)enabled
{
  if (self->super._depthEnabled != enabled)
  {
    self->super._depthEnabled = enabled;
  }
}

- (void)setPortraitMetadata:(id)metadata
{
  metadataCopy = metadata;
  portraitMetadata = self->super._portraitMetadata;
  p_portraitMetadata = &self->super._portraitMetadata;
  if (portraitMetadata != metadataCopy)
  {
    v8 = metadataCopy;
    objc_storeStrong(p_portraitMetadata, metadata);
    metadataCopy = v8;
  }
}

- (void)setPortraitEffectFilterName:(id)name
{
  if (self->super._portraitEffectFilterName != name)
  {
    self->super._portraitEffectFilterName = [name copy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEffectFilterName:(id)name
{
  if (self->super._effectFilterName != name)
  {
    self->super._effectFilterName = [name copy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithAdjustments:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PFCameraAdjustments alloc];

  return [(PFCameraAdjustments *)v4 initWithAdjustments:self];
}

@end