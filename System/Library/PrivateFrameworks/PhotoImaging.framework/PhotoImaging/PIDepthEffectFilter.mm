@interface PIDepthEffectFilter
- (id)outputImage;
@end

@implementation PIDepthEffectFilter

- (id)outputImage
{
  v26[1] = *MEMORY[0x1E69E9840];
  inputImage = [(PIDepthEffectFilter *)self inputImage];

  if (inputImage)
  {
    v4 = [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffectApplyBlurMap"];
    inputImage2 = [(PIDepthEffectFilter *)self inputImage];
    [v4 setValue:inputImage2 forKey:*MEMORY[0x1E695FAB0]];

    inputBlurMap = [(PIDepthEffectFilter *)self inputBlurMap];
    [v4 setValue:inputBlurMap forKey:@"inputBlurMap"];

    inputMatte = [(PIDepthEffectFilter *)self inputMatte];
    [v4 setValue:inputMatte forKey:@"inputMatteImage"];

    inputScale = [(PIDepthEffectFilter *)self inputScale];
    [v4 setValue:inputScale forKey:*MEMORY[0x1E695FB20]];

    inputLumaNoiseScale = [(PIDepthEffectFilter *)self inputLumaNoiseScale];
    [v4 setValue:inputLumaNoiseScale forKey:@"inputLumaNoiseScale"];

    inputShape = [(PIDepthEffectFilter *)self inputShape];
    [v4 setValue:inputShape forKey:@"inputShape"];

    inputAperture = [(PIDepthEffectFilter *)self inputAperture];
    [v4 setValue:inputAperture forKey:@"inputAperture"];

    inputDepthMetadata = [(PIDepthEffectFilter *)self inputDepthMetadata];
    [v4 setValue:inputDepthMetadata forKey:@"inputAuxDataMetadata"];

    inputGainMap = [(PIDepthEffectFilter *)self inputGainMap];
    inputGainMapIsLinear = [(PIDepthEffectFilter *)self inputGainMapIsLinear];
    bOOLValue = [inputGainMapIsLinear BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v16 = [inputGainMap _imageByApplyingGamma:0.454545455];

      inputGainMap = v16;
    }

    inputGainMapMetadata = [(PIDepthEffectFilter *)self inputGainMapMetadata];

    if (inputGainMapMetadata)
    {
      v25 = *MEMORY[0x1E696D228];
      v26[0] = inputGainMapMetadata;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v19 = [inputGainMap imageBySettingPropertiesNoCopy:v18];

      inputGainMap = v19;
    }

    [v4 setValue:inputGainMap forKey:@"inputGainMap"];
    inputBestHairQuality = [(PIDepthEffectFilter *)self inputBestHairQuality];
    [v4 setValue:inputBestHairQuality forKey:@"inputBestHairQuality"];

    v21 = +[PIGlobalSettings globalSettings];
    portraitDisableFuzzball = [v21 portraitDisableFuzzball];

    if (portraitDisableFuzzball)
    {
      [v4 setValue:MEMORY[0x1E695E110] forKey:@"inputBestHairQuality"];
    }

    outputImage = [v4 outputImage];
  }

  else
  {
    outputImage = 0;
  }

  return outputImage;
}

@end