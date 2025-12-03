@interface PFCameraAdjustments
- (BOOL)canBeRenderedByCapturePipelineWithVideoComplement:(BOOL)complement deferredIdentifier:(id)identifier;
- (BOOL)hasCrop;
- (CGRect)cropRect;
- (PFCameraAdjustments)initWithAdjustments:(id)adjustments;
- (PFCameraAdjustments)initWithCoder:(id)coder;
- (PFCameraAdjustments)initWithEffectFilter:(id)filter cropRect:(CGRect)rect;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFCameraAdjustments

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)canBeRenderedByCapturePipelineWithVideoComplement:(BOOL)complement deferredIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = !complement;
  v8 = !complement && self->_depthEnabled;
  if (!v7 && self->_depthEnabled)
  {
    if (![(PFCameraAdjustments *)self hasCrop])
    {
      effectFilterName = [(PFCameraAdjustments *)self effectFilterName];
      v8 = effectFilterName == 0;

      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_7:

  return v8;
}

- (BOOL)hasCrop
{
  [(PFCameraAdjustments *)self cropRect];

  return PFCameraAdjustmentsCropIsValid(v2, v3, v4, v5);
}

- (PFCameraAdjustments)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PFCameraAdjustments;
  v5 = [(PFCameraAdjustments *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectFilterName"];
    effectFilterName = v5->_effectFilterName;
    v5->_effectFilterName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"portraitEffectFilterName"];
    portraitEffectFilterName = v5->_portraitEffectFilterName;
    v5->_portraitEffectFilterName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"portraitMetadata"];
    portraitMetadata = v5->_portraitMetadata;
    v5->_portraitMetadata = v10;

    v5->_depthEnabled = [coderCopy decodeBoolForKey:@"depthEnabled"];
    v5->_isEligibleForCinematicAudioEffectProcessing = [coderCopy decodeBoolForKey:@"isEligibleForCinematicAudioEffectProcessing"];
    v5->_cinematicVideoRenderingVersion = [coderCopy decodeIntegerForKey:@"cinematicVideoRenderingVersion"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cropRect"];
    [v12 getValue:&v5->_cropRect size:32];
    if (!PFCameraAdjustmentsCropIsValid(v5->_cropRect.origin.x, v5->_cropRect.origin.y, v5->_cropRect.size.width, v5->_cropRect.size.height))
    {
      v5->_cropRect.origin = 0u;
      v5->_cropRect.size = 0u;
    }

    v5->_sloMoEnabled = [coderCopy decodeBoolForKey:@"sloMoEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  effectFilterName = [(PFCameraAdjustments *)self effectFilterName];
  [coderCopy encodeObject:effectFilterName forKey:@"effectFilterName"];

  portraitEffectFilterName = [(PFCameraAdjustments *)self portraitEffectFilterName];
  [coderCopy encodeObject:portraitEffectFilterName forKey:@"portraitEffectFilterName"];

  portraitMetadata = [(PFCameraAdjustments *)self portraitMetadata];
  [coderCopy encodeObject:portraitMetadata forKey:@"portraitMetadata"];

  [coderCopy encodeBool:-[PFCameraAdjustments isDepthEnabled](self forKey:{"isDepthEnabled"), @"depthEnabled"}];
  [coderCopy encodeBool:-[PFCameraAdjustments isEligibleForCinematicAudioEffectProcessing](self forKey:{"isEligibleForCinematicAudioEffectProcessing"), @"isEligibleForCinematicAudioEffectProcessing"}];
  [coderCopy encodeInteger:-[PFCameraAdjustments cinematicVideoRenderingVersion](self forKey:{"cinematicVideoRenderingVersion"), @"cinematicVideoRenderingVersion"}];
  v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_cropRect objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [coderCopy encodeObject:v8 forKey:@"cropRect"];
  [coderCopy encodeBool:-[PFCameraAdjustments isSloMoEnabled](self forKey:{"isSloMoEnabled"), @"sloMoEnabled"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PFMutableCameraAdjustments alloc];

  return [(PFCameraAdjustments *)v4 initWithAdjustments:self];
}

- (PFCameraAdjustments)initWithEffectFilter:(id)filter cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  filterCopy = filter;
  v14.receiver = self;
  v14.super_class = PFCameraAdjustments;
  v11 = [(PFCameraAdjustments *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_effectFilterName, filter);
    v12->_cropRect.origin.x = x;
    v12->_cropRect.origin.y = y;
    v12->_cropRect.size.width = width;
    v12->_cropRect.size.height = height;
  }

  return v12;
}

- (PFCameraAdjustments)initWithAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  v17.receiver = self;
  v17.super_class = PFCameraAdjustments;
  v5 = [(PFCameraAdjustments *)&v17 init];
  if (v5)
  {
    effectFilterName = [adjustmentsCopy effectFilterName];
    effectFilterName = v5->_effectFilterName;
    v5->_effectFilterName = effectFilterName;

    portraitEffectFilterName = [adjustmentsCopy portraitEffectFilterName];
    portraitEffectFilterName = v5->_portraitEffectFilterName;
    v5->_portraitEffectFilterName = portraitEffectFilterName;

    portraitMetadata = [adjustmentsCopy portraitMetadata];
    portraitMetadata = v5->_portraitMetadata;
    v5->_portraitMetadata = portraitMetadata;

    v5->_depthEnabled = [adjustmentsCopy isDepthEnabled];
    v5->_isEligibleForCinematicAudioEffectProcessing = [adjustmentsCopy isEligibleForCinematicAudioEffectProcessing];
    v5->_cinematicVideoRenderingVersion = [adjustmentsCopy cinematicVideoRenderingVersion];
    [adjustmentsCopy cropRect];
    v5->_cropRect.origin.x = v12;
    v5->_cropRect.origin.y = v13;
    v5->_cropRect.size.width = v14;
    v5->_cropRect.size.height = v15;
    v5->_sloMoEnabled = [adjustmentsCopy isSloMoEnabled];
  }

  return v5;
}

@end