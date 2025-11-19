@interface PFCameraAdjustments
- (BOOL)canBeRenderedByCapturePipelineWithVideoComplement:(BOOL)a3 deferredIdentifier:(id)a4;
- (BOOL)hasCrop;
- (CGRect)cropRect;
- (PFCameraAdjustments)initWithAdjustments:(id)a3;
- (PFCameraAdjustments)initWithCoder:(id)a3;
- (PFCameraAdjustments)initWithEffectFilter:(id)a3 cropRect:(CGRect)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)canBeRenderedByCapturePipelineWithVideoComplement:(BOOL)a3 deferredIdentifier:(id)a4
{
  v6 = a4;
  if (!v6)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_7;
  }

  v7 = !a3;
  v8 = !a3 && self->_depthEnabled;
  if (!v7 && self->_depthEnabled)
  {
    if (![(PFCameraAdjustments *)self hasCrop])
    {
      v9 = [(PFCameraAdjustments *)self effectFilterName];
      v8 = v9 == 0;

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

- (PFCameraAdjustments)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PFCameraAdjustments;
  v5 = [(PFCameraAdjustments *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectFilterName"];
    effectFilterName = v5->_effectFilterName;
    v5->_effectFilterName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"portraitEffectFilterName"];
    portraitEffectFilterName = v5->_portraitEffectFilterName;
    v5->_portraitEffectFilterName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"portraitMetadata"];
    portraitMetadata = v5->_portraitMetadata;
    v5->_portraitMetadata = v10;

    v5->_depthEnabled = [v4 decodeBoolForKey:@"depthEnabled"];
    v5->_isEligibleForCinematicAudioEffectProcessing = [v4 decodeBoolForKey:@"isEligibleForCinematicAudioEffectProcessing"];
    v5->_cinematicVideoRenderingVersion = [v4 decodeIntegerForKey:@"cinematicVideoRenderingVersion"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cropRect"];
    [v12 getValue:&v5->_cropRect size:32];
    if (!PFCameraAdjustmentsCropIsValid(v5->_cropRect.origin.x, v5->_cropRect.origin.y, v5->_cropRect.size.width, v5->_cropRect.size.height))
    {
      v5->_cropRect.origin = 0u;
      v5->_cropRect.size = 0u;
    }

    v5->_sloMoEnabled = [v4 decodeBoolForKey:@"sloMoEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PFCameraAdjustments *)self effectFilterName];
  [v4 encodeObject:v5 forKey:@"effectFilterName"];

  v6 = [(PFCameraAdjustments *)self portraitEffectFilterName];
  [v4 encodeObject:v6 forKey:@"portraitEffectFilterName"];

  v7 = [(PFCameraAdjustments *)self portraitMetadata];
  [v4 encodeObject:v7 forKey:@"portraitMetadata"];

  [v4 encodeBool:-[PFCameraAdjustments isDepthEnabled](self forKey:{"isDepthEnabled"), @"depthEnabled"}];
  [v4 encodeBool:-[PFCameraAdjustments isEligibleForCinematicAudioEffectProcessing](self forKey:{"isEligibleForCinematicAudioEffectProcessing"), @"isEligibleForCinematicAudioEffectProcessing"}];
  [v4 encodeInteger:-[PFCameraAdjustments cinematicVideoRenderingVersion](self forKey:{"cinematicVideoRenderingVersion"), @"cinematicVideoRenderingVersion"}];
  v8 = [MEMORY[0x1E696B098] valueWithBytes:&self->_cropRect objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v4 encodeObject:v8 forKey:@"cropRect"];
  [v4 encodeBool:-[PFCameraAdjustments isSloMoEnabled](self forKey:{"isSloMoEnabled"), @"sloMoEnabled"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PFMutableCameraAdjustments alloc];

  return [(PFCameraAdjustments *)v4 initWithAdjustments:self];
}

- (PFCameraAdjustments)initWithEffectFilter:(id)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = PFCameraAdjustments;
  v11 = [(PFCameraAdjustments *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_effectFilterName, a3);
    v12->_cropRect.origin.x = x;
    v12->_cropRect.origin.y = y;
    v12->_cropRect.size.width = width;
    v12->_cropRect.size.height = height;
  }

  return v12;
}

- (PFCameraAdjustments)initWithAdjustments:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PFCameraAdjustments;
  v5 = [(PFCameraAdjustments *)&v17 init];
  if (v5)
  {
    v6 = [v4 effectFilterName];
    effectFilterName = v5->_effectFilterName;
    v5->_effectFilterName = v6;

    v8 = [v4 portraitEffectFilterName];
    portraitEffectFilterName = v5->_portraitEffectFilterName;
    v5->_portraitEffectFilterName = v8;

    v10 = [v4 portraitMetadata];
    portraitMetadata = v5->_portraitMetadata;
    v5->_portraitMetadata = v10;

    v5->_depthEnabled = [v4 isDepthEnabled];
    v5->_isEligibleForCinematicAudioEffectProcessing = [v4 isEligibleForCinematicAudioEffectProcessing];
    v5->_cinematicVideoRenderingVersion = [v4 cinematicVideoRenderingVersion];
    [v4 cropRect];
    v5->_cropRect.origin.x = v12;
    v5->_cropRect.origin.y = v13;
    v5->_cropRect.size.width = v14;
    v5->_cropRect.size.height = v15;
    v5->_sloMoEnabled = [v4 isSloMoEnabled];
  }

  return v5;
}

@end