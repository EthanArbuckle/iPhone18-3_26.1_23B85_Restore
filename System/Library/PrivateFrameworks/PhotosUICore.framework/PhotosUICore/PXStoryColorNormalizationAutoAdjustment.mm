@interface PXStoryColorNormalizationAutoAdjustment
- (BOOL)isEqualToDisplayAssetAdjustment:(id)adjustment;
- (id)applyToImage:(id)image targetSize:(CGSize)size;
@end

@implementation PXStoryColorNormalizationAutoAdjustment

- (BOOL)isEqualToDisplayAssetAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  v14.receiver = self;
  v14.super_class = PXStoryColorNormalizationAutoAdjustment;
  if ([(PXStoryColorNormalizationAdjustment *)&v14 isEqualToDisplayAssetAdjustment:adjustmentCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = adjustmentCopy;
      asset = [(PXStoryColorNormalizationAutoAdjustment *)self asset];
      asset2 = [v6 asset];
      v9 = asset;
      v10 = asset2;
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

- (id)applyToImage:(id)image targetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v20[4] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  filter = [(PXStoryColorNormalizationAdjustment *)self filter];
  objc_sync_enter(filter);
  inputNormalization = [filter inputNormalization];
  if (!inputNormalization)
  {
    [filter setInputImage:imageCopy];
    inputNormalization = [filter outputNormalization];
    [filter setInputNormalization:inputNormalization];
  }

  objc_sync_exit(filter);
  v18.receiver = self;
  v18.super_class = PXStoryColorNormalizationAutoAdjustment;
  height = [(PXStoryColorNormalizationAdjustment *)&v18 applyToImage:imageCopy targetSize:width, height];

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
    v16 = [height imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v15];

    height = v16;
  }

  return height;
}

@end