@interface PICompositingFilter
+ (id)availableBlendModes;
+ (id)blendKernelForBlendMode:(id)a3;
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation PICompositingFilter

+ (id)customAttributes
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20[0] = *MEMORY[0x1E695F6B8];
  v19 = *MEMORY[0x1E695F7A0];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v21[0] = v2;
  v20[1] = *MEMORY[0x1E695FAB8];
  v3 = *MEMORY[0x1E695F6E0];
  v14[0] = *MEMORY[0x1E695F6E8];
  v14[1] = v3;
  v18[0] = &unk_1F471F980;
  v18[1] = &unk_1F471F990;
  v5 = *MEMORY[0x1E695F6C8];
  v15 = *MEMORY[0x1E695F6A0];
  v4 = v15;
  v16 = v5;
  v18[2] = &unk_1F471F990;
  v18[3] = &unk_1F471F980;
  v17 = *MEMORY[0x1E695F6F0];
  v6 = v17;
  v18[4] = *MEMORY[0x1E695F758];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v14 count:5];
  v21[1] = v7;
  v20[2] = @"inputBlendMode";
  v13[0] = @"PIAttributeTypeMode";
  v8 = [objc_opt_class() availableBlendModes];
  v12[2] = v4;
  v13[1] = v8;
  v13[2] = @"sourceOver";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v21[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  return v10;
}

+ (id)blendKernelForBlendMode:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695F608] valueForKey:v3];

  return v4;
}

+ (id)availableBlendModes
{
  if (availableBlendModes_onceToken != -1)
  {
    dispatch_once(&availableBlendModes_onceToken, &__block_literal_global_22322);
  }

  v3 = availableBlendModes_blendModes;

  return v3;
}

void __42__PICompositingFilter_availableBlendModes__block_invoke()
{
  v0 = availableBlendModes_blendModes;
  availableBlendModes_blendModes = &unk_1F471FD88;
}

- (id)outputImage
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = [(PICompositingFilter *)self inputImage];

  v4 = [(PICompositingFilter *)self inputBackgroundImage];
  v5 = v4;
  if (v3)
  {

    if (v5)
    {
      v6 = [(PICompositingFilter *)self inputBlendMode];
      v7 = v6;
      v8 = @"sourceOver";
      if (v6)
      {
        v8 = v6;
      }

      v9 = v8;

      v10 = [objc_opt_class() blendKernelForBlendMode:v9];
      v11 = [(PICompositingFilter *)self inputImage];
      v12 = [(PICompositingFilter *)self inputBackgroundImage];
      v13 = [v10 applyWithForeground:v11 background:v12];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [(PICompositingFilter *)self inputImage];
      }

      v5 = v15;

      if (v5)
      {
        v16 = [(PICompositingFilter *)self inputIntensity];

        if (v16)
        {
          v17 = [(PICompositingFilter *)self inputBackgroundImage];
          v18 = *MEMORY[0x1E695FB28];
          v25[0] = v5;
          v19 = *MEMORY[0x1E695FB30];
          v24[0] = v18;
          v24[1] = v19;
          v20 = [(PICompositingFilter *)self inputIntensity];
          v25[1] = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
          v22 = [v17 imageByApplyingFilter:@"CIDissolveTransition" withInputParameters:v21];

          v5 = v22;
        }
      }
    }

    else
    {
      v5 = [(PICompositingFilter *)self inputImage];
    }
  }

  return v5;
}

@end