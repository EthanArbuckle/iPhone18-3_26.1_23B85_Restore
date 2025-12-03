@interface _UIBlurEffectVariableImpl
- (BOOL)isEqual:(id)equal;
- (_UIBlurEffectVariableImpl)initWithBaseRadius:(double)radius imageMask:(id)mask scale:(double)scale allowAXAdaptation:(BOOL)adaptation;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIBlurEffectVariableImpl

- (_UIBlurEffectVariableImpl)initWithBaseRadius:(double)radius imageMask:(id)mask scale:(double)scale allowAXAdaptation:(BOOL)adaptation
{
  maskCopy = mask;
  v16.receiver = self;
  v16.super_class = _UIBlurEffectVariableImpl;
  v12 = [(_UIBlurEffectVariableImpl *)&v16 init];
  v13 = v12;
  if (v12)
  {
    if (radius >= 0.0)
    {
      radiusCopy = radius;
    }

    else
    {
      radiusCopy = 0.0;
    }

    v12->_blurRadius = radiusCopy;
    v12->_blurScale = fmax(fmin(scale, 1.0), 0.0);
    objc_storeStrong(&v12->_imageMask, mask);
    v13->_allowAXAdaptation = adaptation;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_blurRadius > 0.0)
  {
    [coderCopy encodeDouble:@"UIBlurEffectRadius" forKey:?];
  }

  if (self->_blurScale > 0.0)
  {
    [coderCopy encodeDouble:@"UIBlurEffectScale" forKey:?];
  }

  if (!self->_allowAXAdaptation)
  {
    [coderCopy encodeBool:0 forKey:@"UIBlurEffectAllowAXAdaptation"];
  }

  [coderCopy encodeObject:self->_imageMask forKey:@"UIBlurEffectImageMask"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    if (*(v5 + 1) == self->_blurRadius && *(v5 + 2) == self->_blurScale)
    {
      v7 = *(v5 + 3);
      v8 = self->_imageMask;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {

LABEL_14:
        v12 = v6[32] == self->_allowAXAdaptation;
LABEL_16:

        goto LABEL_17;
      }

      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
      }

      else
      {
        v13 = [(UIImage *)v8 isEqual:v9];

        if (v13)
        {
          goto LABEL_14;
        }
      }
    }

    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  v41[2] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  environmentCopy = environment;
  if ([environmentCopy reducedTransperancy] && self->_allowAXAdaptation)
  {
    _UIBlurEffectAddAverageColorFilterEntry(descriptorCopy, environmentCopy, fmax(self->_blurScale, 0.25));
  }

  else
  {
    blurRadius = self->_blurRadius;
    imageMask = self->_imageMask;
    blurScale = self->_blurScale;
    v11 = descriptorCopy;
    v12 = environmentCopy;
    v13 = imageMask;
    if ([v12 allowsBlurring])
    {
      v41[0] = *MEMORY[0x1E6979B78];
      v41[1] = *MEMORY[0x1E6979AC8];
      v40 = xmmword_1E70F6890;
      v14 = MEMORY[0x1E695DF20];
      if ([v12 allowsDithering])
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      v34 = [v14 dictionaryWithObjects:&v40 forKeys:v41 count:v15];
      traitCollection = [v12 traitCollection];
      v17 = v13;
      _primitiveImageAsset = [(UIImage *)v17 _primitiveImageAsset];
      v19 = _primitiveImageAsset;
      if (_primitiveImageAsset)
      {
        v20 = [_primitiveImageAsset imageWithTraitCollection:traitCollection];

        v17 = v20;
      }

      cGImage = [(UIImage *)v17 CGImage];
      if (!cGImage)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef _imageRefFromUIImage(UIImage *__strong, UITraitCollection *__strong)"}];
        [currentHandler handleFailureInFunction:v33 file:@"UIBlurEffect.m" lineNumber:1320 description:{@"UIImage (%@) returned NULL from -CGImage.", v17}];
      }

      v22 = [_UIVisualEffectFilterEntry alloc];
      v23 = *MEMORY[0x1E6979D70];
      v38[0] = *MEMORY[0x1E6979BA8];
      v24 = v38[0];
      v25 = [MEMORY[0x1E696AD98] numberWithDouble:blurRadius];
      v38[1] = @"inputMaskImage";
      v39[0] = v25;
      v39[1] = cGImage;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v36[0] = v24;
      v36[1] = @"inputMaskImage";
      v37[0] = &unk_1EFE2E1F8;
      v37[1] = cGImage;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
      v28 = [(_UIVisualEffectFilterEntry *)v22 initWithFilterType:v23 configurationValues:v34 requestedValues:v26 identityValues:v27];

      [(_UIVisualEffectFilterEntry *)v28 setIdentityScaleHint:1.0];
      [(_UIVisualEffectFilterEntry *)v28 setUseRelaxedDiffingRule:1];
      v29 = 0.5;
      if (blurScale > 0.0)
      {
        v29 = blurScale;
      }

      [(_UIVisualEffectFilterEntry *)v28 setRequestedScaleHint:v29];
      [v11 addFilterEntry:v28];

      for (i = 1; i != -1; --i)
      {
      }

      for (j = 1; j != -1; --j)
      {
      }
    }
  }
}

- (void)appendDescriptionTo:(id)to
{
  toCopy = to;
  [toCopy appendFormat:@" blurRadius=%f", *&self->_blurRadius];
  if (self->_blurScale > 0.0)
  {
    [toCopy appendFormat:@" blurScale=%f", *&self->_blurScale];
  }

  [toCopy appendFormat:@" imageMask=%@", self->_imageMask];
  if (!self->_allowAXAdaptation)
  {
    [toCopy appendString:@" allowAXAdaptation=NO"];
  }
}

@end