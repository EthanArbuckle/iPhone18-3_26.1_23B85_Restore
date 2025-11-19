@interface _UIBlurEffectVariableImpl
- (BOOL)isEqual:(id)a3;
- (_UIBlurEffectVariableImpl)initWithBaseRadius:(double)a3 imageMask:(id)a4 scale:(double)a5 allowAXAdaptation:(BOOL)a6;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIBlurEffectVariableImpl

- (_UIBlurEffectVariableImpl)initWithBaseRadius:(double)a3 imageMask:(id)a4 scale:(double)a5 allowAXAdaptation:(BOOL)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = _UIBlurEffectVariableImpl;
  v12 = [(_UIBlurEffectVariableImpl *)&v16 init];
  v13 = v12;
  if (v12)
  {
    if (a3 >= 0.0)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0.0;
    }

    v12->_blurRadius = v14;
    v12->_blurScale = fmax(fmin(a5, 1.0), 0.0);
    objc_storeStrong(&v12->_imageMask, a4);
    v13->_allowAXAdaptation = a6;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self->_blurRadius > 0.0)
  {
    [v4 encodeDouble:@"UIBlurEffectRadius" forKey:?];
  }

  if (self->_blurScale > 0.0)
  {
    [v4 encodeDouble:@"UIBlurEffectScale" forKey:?];
  }

  if (!self->_allowAXAdaptation)
  {
    [v4 encodeBool:0 forKey:@"UIBlurEffectAllowAXAdaptation"];
  }

  [v4 encodeObject:self->_imageMask forKey:@"UIBlurEffectImageMask"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v41[2] = *MEMORY[0x1E69E9840];
  v35 = a3;
  v7 = a4;
  if ([v7 reducedTransperancy] && self->_allowAXAdaptation)
  {
    _UIBlurEffectAddAverageColorFilterEntry(v35, v7, fmax(self->_blurScale, 0.25));
  }

  else
  {
    blurRadius = self->_blurRadius;
    imageMask = self->_imageMask;
    blurScale = self->_blurScale;
    v11 = v35;
    v12 = v7;
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
      v16 = [v12 traitCollection];
      v17 = v13;
      v18 = [(UIImage *)v17 _primitiveImageAsset];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 imageWithTraitCollection:v16];

        v17 = v20;
      }

      v21 = [(UIImage *)v17 CGImage];
      if (!v21)
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef _imageRefFromUIImage(UIImage *__strong, UITraitCollection *__strong)"}];
        [v32 handleFailureInFunction:v33 file:@"UIBlurEffect.m" lineNumber:1320 description:{@"UIImage (%@) returned NULL from -CGImage.", v17}];
      }

      v22 = [_UIVisualEffectFilterEntry alloc];
      v23 = *MEMORY[0x1E6979D70];
      v38[0] = *MEMORY[0x1E6979BA8];
      v24 = v38[0];
      v25 = [MEMORY[0x1E696AD98] numberWithDouble:blurRadius];
      v38[1] = @"inputMaskImage";
      v39[0] = v25;
      v39[1] = v21;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v36[0] = v24;
      v36[1] = @"inputMaskImage";
      v37[0] = &unk_1EFE2E1F8;
      v37[1] = v21;
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

- (void)appendDescriptionTo:(id)a3
{
  v4 = a3;
  [v4 appendFormat:@" blurRadius=%f", *&self->_blurRadius];
  if (self->_blurScale > 0.0)
  {
    [v4 appendFormat:@" blurScale=%f", *&self->_blurScale];
  }

  [v4 appendFormat:@" imageMask=%@", self->_imageMask];
  if (!self->_allowAXAdaptation)
  {
    [v4 appendString:@" allowAXAdaptation=NO"];
  }
}

@end