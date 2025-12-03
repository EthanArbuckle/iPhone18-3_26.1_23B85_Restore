@interface PXStoryColorNormalizationAdjustment
+ (id)_falseColorMatrixParameters;
+ (id)autoAdjustmentForAsset:(id)asset;
+ (id)colorCubeForNormalization:(id)normalization targetColorSpace:(CGColorSpace *)space;
+ (id)dummyAdjustment;
- (BOOL)isEqualToDisplayAssetAdjustment:(id)adjustment;
- (NSString)adjustmentDetails;
- (PXStoryColorNormalizationAdjustment)initWithNormalization:(id)normalization;
- (PXStoryColorNormalizationAdjustment)initWithNormalizationFilter:(id)filter;
- (id)applyToImage:(id)image targetSize:(CGSize)size;
- (unint64_t)hash;
@end

@implementation PXStoryColorNormalizationAdjustment

- (NSString)adjustmentDetails
{
  normalization = [(PXStoryColorNormalizationAdjustment *)self normalization];
  detailedDescription = [normalization detailedDescription];

  return detailedDescription;
}

- (id)applyToImage:(id)image targetSize:(CGSize)size
{
  v30[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if ([(PXStoryColorNormalizationAdjustment *)self useColorCube])
  {
    v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    colorCubeData = self->_colorCubeData;
    if (!colorCubeData)
    {
      inputNormalization = [(PIColorNormalizationFilter *)self->_filter inputNormalization];
      v9 = [PXStoryColorNormalizationAdjustment colorCubeForNormalization:inputNormalization targetColorSpace:v6];
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
    outputImage = [imageCopy imageByApplyingFilter:@"CIColorCubeWithColorSpace" withInputParameters:v11];

    CGColorSpaceRelease(v6);
  }

  else
  {
    [(PIColorNormalizationFilter *)self->_filter setInputImage:imageCopy];
    outputImage = [(PIColorNormalizationFilter *)self->_filter outputImage];
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
    v18 = [outputImage imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v17];

    outputImage = v18;
  }

  [(PXStoryColorNormalizationAdjustment *)self intensity];
  if (v19 < 1.0)
  {
    v20 = MEMORY[0x1E696AD98];
    [(PXStoryColorNormalizationAdjustment *)self intensity:@"inputTargetImage"];
    v21 = [v20 numberWithDouble:?];
    v26[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:2];
    v23 = [imageCopy imageByApplyingFilter:@"CIDissolveTransition" withInputParameters:v22];

    outputImage = v23;
  }

  return outputImage;
}

- (BOOL)isEqualToDisplayAssetAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  if (self == adjustmentCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = adjustmentCopy;
      filter = [(PXStoryColorNormalizationAdjustment *)self filter];
      filter2 = [(PXStoryColorNormalizationAdjustment *)v5 filter];
      if (filter == filter2)
      {
        v8 = 1;
      }

      else
      {
        v8 = [filter isEqual:filter2];
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
  filter = [(PXStoryColorNormalizationAdjustment *)self filter];
  v3 = [filter hash];

  return v3;
}

- (PXStoryColorNormalizationAdjustment)initWithNormalizationFilter:(id)filter
{
  filterCopy = filter;
  if (!filterCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryColorNormalizationAdjustment.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"filter != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PXStoryColorNormalizationAdjustment;
  v7 = [(PXStoryColorNormalizationAdjustment *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_filter, filter);
    v9 = +[PXStorySettings sharedInstance];
    v8->_useFalseColor = [v9 enableFalseColorNormalization];

    v8->_intensity = 1.0;
  }

  return v8;
}

- (PXStoryColorNormalizationAdjustment)initWithNormalization:(id)normalization
{
  normalizationCopy = normalization;
  if (!normalizationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryColorNormalizationAdjustment.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"normalization != nil"}];
  }

  v6 = objc_alloc_init(getPIColorNormalizationFilterClass());
  [v6 setInputNormalization:normalizationCopy];
  v7 = [(PXStoryColorNormalizationAdjustment *)self initWithNormalizationFilter:v6];

  return v7;
}

+ (id)colorCubeForNormalization:(id)normalization targetColorSpace:(CGColorSpace *)space
{
  normalizationCopy = normalization;
  v6 = [getPIColorNormalizationFilterClass() colorCubeForNormalization:normalizationCopy dimension:32 targetColorSpace:space];

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

+ (id)autoAdjustmentForAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_alloc_init(getPIColorNormalizationFilterClass());
  v5 = [(PXStoryColorNormalizationAdjustment *)[PXStoryColorNormalizationAutoAdjustment alloc] initWithNormalizationFilter:v4];
  [(PXStoryColorNormalizationAutoAdjustment *)v5 setAsset:assetCopy];

  return v5;
}

+ (id)dummyAdjustment
{
  v2 = objc_alloc_init(PXStoryColorNormalizationFakeAdjustment);

  return v2;
}

@end