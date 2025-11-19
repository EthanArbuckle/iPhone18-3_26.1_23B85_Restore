@interface PILocalLightMapPrepareHDR
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation PILocalLightMapPrepareHDR

+ (id)customAttributes
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7C0];
  v19[0] = *MEMORY[0x1E695F790];
  v19[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v21[0] = v3;
  v20[1] = @"inputLightMapWidth";
  v5 = *MEMORY[0x1E695F6A0];
  v15[0] = *MEMORY[0x1E695F6D8];
  v4 = v15[0];
  v15[1] = v5;
  v18[0] = &unk_1F471F850;
  v18[1] = &unk_1F471F850;
  v7 = *MEMORY[0x1E695F718];
  v8 = *MEMORY[0x1E695F698];
  v16 = *MEMORY[0x1E695F6F0];
  v6 = v16;
  v17 = v8;
  v18[2] = v7;
  v18[3] = @"NSNumber";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v15 count:4];
  v21[1] = v9;
  v20[2] = @"inputLightMapHeight";
  v13[0] = v4;
  v13[1] = v5;
  v14[0] = &unk_1F471F850;
  v14[1] = &unk_1F471F850;
  v13[2] = v6;
  v13[3] = v8;
  v14[2] = v7;
  v14[3] = @"NSNumber";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v21[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  return v11;
}

- (id)outputImage
{
  inputLightMap = self->inputLightMap;
  if (inputLightMap)
  {
    v4 = _lightMapImageFromData(inputLightMap, self->inputLightMapWidth, self->inputLightMapHeight);
    v5 = v4;
    inputGuideImage = self->inputGuideImage;
    if (inputGuideImage)
    {
      v7 = _scaledLightMapImage(v4, inputGuideImage);

      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end