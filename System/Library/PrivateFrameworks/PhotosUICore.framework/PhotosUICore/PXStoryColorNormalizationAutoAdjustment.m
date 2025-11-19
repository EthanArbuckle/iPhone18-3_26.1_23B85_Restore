@interface PXStoryColorNormalizationAutoAdjustment
- (BOOL)isEqualToDisplayAssetAdjustment:(id)a3;
- (id)applyToImage:(id)a3 targetSize:(CGSize)a4;
@end

@implementation PXStoryColorNormalizationAutoAdjustment

- (BOOL)isEqualToDisplayAssetAdjustment:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXStoryColorNormalizationAutoAdjustment;
  if ([(PXStoryColorNormalizationAdjustment *)&v14 isEqualToDisplayAssetAdjustment:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [(PXStoryColorNormalizationAutoAdjustment *)self asset];
      v8 = [v6 asset];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
        v5 = 1;
      }

      else
      {
        v5 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isContentEqualTo:v10];
          if (!v12)
          {
            v12 = [v11 isContentEqualTo:v9];
          }

          v5 = v12 == 2;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)applyToImage:(id)a3 targetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v20[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PXStoryColorNormalizationAdjustment *)self filter];
  objc_sync_enter(v8);
  v9 = [v8 inputNormalization];
  if (!v9)
  {
    [v8 setInputImage:v7];
    v9 = [v8 outputNormalization];
    [v8 setInputNormalization:v9];
  }

  objc_sync_exit(v8);
  v18.receiver = self;
  v18.super_class = PXStoryColorNormalizationAutoAdjustment;
  v10 = [(PXStoryColorNormalizationAdjustment *)&v18 applyToImage:v7 targetSize:width, height];

  if ([(PXStoryColorNormalizationAdjustment *)self useFalseColor])
  {
    v19[0] = @"inputRVector";
    v11 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
    v20[0] = v11;
    v19[1] = @"inputGVector";
    v12 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0];
    v20[1] = v12;
    v19[2] = @"inputBVector";
    v13 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
    v20[2] = v13;
    v19[3] = @"inputBiasVector";
    v14 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    v20[3] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v16 = [v10 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v15];

    v10 = v16;
  }

  return v10;
}

@end