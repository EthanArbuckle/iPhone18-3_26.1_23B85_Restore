@interface PIDepthEffectFilter
- (id)outputImage;
@end

@implementation PIDepthEffectFilter

- (id)outputImage
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = [(PIDepthEffectFilter *)self inputImage];

  if (v3)
  {
    v4 = [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffectApplyBlurMap"];
    v5 = [(PIDepthEffectFilter *)self inputImage];
    [v4 setValue:v5 forKey:*MEMORY[0x1E695FAB0]];

    v6 = [(PIDepthEffectFilter *)self inputBlurMap];
    [v4 setValue:v6 forKey:@"inputBlurMap"];

    v7 = [(PIDepthEffectFilter *)self inputMatte];
    [v4 setValue:v7 forKey:@"inputMatteImage"];

    v8 = [(PIDepthEffectFilter *)self inputScale];
    [v4 setValue:v8 forKey:*MEMORY[0x1E695FB20]];

    v9 = [(PIDepthEffectFilter *)self inputLumaNoiseScale];
    [v4 setValue:v9 forKey:@"inputLumaNoiseScale"];

    v10 = [(PIDepthEffectFilter *)self inputShape];
    [v4 setValue:v10 forKey:@"inputShape"];

    v11 = [(PIDepthEffectFilter *)self inputAperture];
    [v4 setValue:v11 forKey:@"inputAperture"];

    v12 = [(PIDepthEffectFilter *)self inputDepthMetadata];
    [v4 setValue:v12 forKey:@"inputAuxDataMetadata"];

    v13 = [(PIDepthEffectFilter *)self inputGainMap];
    v14 = [(PIDepthEffectFilter *)self inputGainMapIsLinear];
    v15 = [v14 BOOLValue];

    if ((v15 & 1) == 0)
    {
      v16 = [v13 _imageByApplyingGamma:0.454545455];

      v13 = v16;
    }

    v17 = [(PIDepthEffectFilter *)self inputGainMapMetadata];

    if (v17)
    {
      v25 = *MEMORY[0x1E696D228];
      v26[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v19 = [v13 imageBySettingPropertiesNoCopy:v18];

      v13 = v19;
    }

    [v4 setValue:v13 forKey:@"inputGainMap"];
    v20 = [(PIDepthEffectFilter *)self inputBestHairQuality];
    [v4 setValue:v20 forKey:@"inputBestHairQuality"];

    v21 = +[PIGlobalSettings globalSettings];
    v22 = [v21 portraitDisableFuzzball];

    if (v22)
    {
      [v4 setValue:MEMORY[0x1E695E110] forKey:@"inputBestHairQuality"];
    }

    v23 = [v4 outputImage];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end