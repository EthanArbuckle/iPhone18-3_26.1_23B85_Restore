@interface PXStoryColorNormalizationAdjustment
+ (id)_falseColorMatrixParameters;
+ (id)autoAdjustmentForAsset:(id)a3;
+ (id)colorCubeForNormalization:(id)a3 targetColorSpace:(CGColorSpace *)a4;
+ (id)dummyAdjustment;
- (BOOL)isEqualToDisplayAssetAdjustment:(id)a3;
- (NSString)adjustmentDetails;
- (PXStoryColorNormalizationAdjustment)initWithNormalization:(id)a3;
- (PXStoryColorNormalizationAdjustment)initWithNormalizationFilter:(id)a3;
- (id)applyToImage:(id)a3 targetSize:(CGSize)a4;
- (unint64_t)hash;
@end

@implementation PXStoryColorNormalizationAdjustment

- (NSString)adjustmentDetails
{
  v2 = [(PXStoryColorNormalizationAdjustment *)self normalization];
  v3 = [v2 detailedDescription];

  return v3;
}

- (id)applyToImage:(id)a3 targetSize:(CGSize)a4
{
  v30[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(PXStoryColorNormalizationAdjustment *)self useColorCube])
  {
    v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    colorCubeData = self->_colorCubeData;
    if (!colorCubeData)
    {
      v8 = [(PIColorNormalizationFilter *)self->_filter inputNormalization];
      v9 = [PXStoryColorNormalizationAdjustment colorCubeForNormalization:v8 targetColorSpace:v6];
      v10 = self->_colorCubeData;
      self->_colorCubeData = v9;

      colorCubeData = self->_colorCubeData;
    }

    v29[0] = @"inputCubeData";
    v29[1] = @"inputColorSpace";
    v30[0] = colorCubeData;
    v30[1] = v6;
    v29[2] = @"inputCubeDimension";
    v30[2] = &unk_1F190A528;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v12 = [v5 imageByApplyingFilter:@"CIColorCubeWithColorSpace" withInputParameters:v11];

    CGColorSpaceRelease(v6);
  }

  else
  {
    [(PIColorNormalizationFilter *)self->_filter setInputImage:v5];
    v12 = [(PIColorNormalizationFilter *)self->_filter outputImage];
    [(PIColorNormalizationFilter *)self->_filter setInputImage:0];
  }

  if ([(PXStoryColorNormalizationAdjustment *)self useFalseColor])
  {
    v27[0] = @"inputRVector";
    v13 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
    v28[0] = v13;
    v27[1] = @"inputGVector";
    v14 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0];
    v28[1] = v14;
    v27[2] = @"inputBVector";
    v15 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
    v28[2] = v15;
    v27[3] = @"inputBiasVector";
    v16 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    v28[3] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
    v18 = [v12 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v17];

    v12 = v18;
  }

  [(PXStoryColorNormalizationAdjustment *)self intensity];
  if (v19 < 1.0)
  {
    v20 = MEMORY[0x1E696AD98];
    [(PXStoryColorNormalizationAdjustment *)self intensity:@"inputTargetImage"];
    v21 = [v20 numberWithDouble:?];
    v26[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:2];
    v23 = [v5 imageByApplyingFilter:@"CIDissolveTransition" withInputParameters:v22];

    v12 = v23;
  }

  return v12;
}

- (BOOL)isEqualToDisplayAssetAdjustment:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryColorNormalizationAdjustment *)self filter];
      v7 = [(PXStoryColorNormalizationAdjustment *)v5 filter];
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(PXStoryColorNormalizationAdjustment *)self filter];
  v3 = [v2 hash];

  return v3;
}

- (PXStoryColorNormalizationAdjustment)initWithNormalizationFilter:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryColorNormalizationAdjustment.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"filter != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PXStoryColorNormalizationAdjustment;
  v7 = [(PXStoryColorNormalizationAdjustment *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_filter, a3);
    v9 = +[PXStorySettings sharedInstance];
    v8->_useFalseColor = [v9 enableFalseColorNormalization];

    v8->_intensity = 1.0;
  }

  return v8;
}

- (PXStoryColorNormalizationAdjustment)initWithNormalization:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryColorNormalizationAdjustment.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"normalization != nil"}];
  }

  v6 = objc_alloc_init(getPIColorNormalizationFilterClass());
  [v6 setInputNormalization:v5];
  v7 = [(PXStoryColorNormalizationAdjustment *)self initWithNormalizationFilter:v6];

  return v7;
}

+ (id)colorCubeForNormalization:(id)a3 targetColorSpace:(CGColorSpace *)a4
{
  v5 = a3;
  v6 = [getPIColorNormalizationFilterClass() colorCubeForNormalization:v5 dimension:32 targetColorSpace:a4];

  return v6;
}

+ (id)_falseColorMatrixParameters
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"inputRVector";
  v2 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v9[0] = v2;
  v8[1] = @"inputGVector";
  v3 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0];
  v9[1] = v3;
  v8[2] = @"inputBVector";
  v4 = [MEMORY[0x1E695F688] vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
  v9[2] = v4;
  v8[3] = @"inputBiasVector";
  v5 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

+ (id)autoAdjustmentForAsset:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(getPIColorNormalizationFilterClass());
  v5 = [(PXStoryColorNormalizationAdjustment *)[PXStoryColorNormalizationAutoAdjustment alloc] initWithNormalizationFilter:v4];
  [(PXStoryColorNormalizationAutoAdjustment *)v5 setAsset:v3];

  return v5;
}

+ (id)dummyAdjustment
{
  v2 = objc_alloc_init(PXStoryColorNormalizationFakeAdjustment);

  return v2;
}

@end