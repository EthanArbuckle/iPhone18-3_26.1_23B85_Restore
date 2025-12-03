@interface PXGDisplayAssetBlurAdjustment
- (BOOL)isEqualToDisplayAssetAdjustment:(id)adjustment;
- (CGSize)requestSizeForProposedTargetSize:(CGSize)size;
- (PXGDisplayAssetBlurAdjustment)initWithBlurRadius:(double)radius darkeningOverlayOpacity:(double)opacity;
- (id)applyToImage:(id)image targetSize:(CGSize)size;
- (unint64_t)hash;
@end

@implementation PXGDisplayAssetBlurAdjustment

- (CGSize)requestSizeForProposedTargetSize:(CGSize)size
{
  PXSizeMin();
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)isEqualToDisplayAssetAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [adjustmentCopy blurRadius];
    v6 = v5;
    [(PXGDisplayAssetBlurAdjustment *)self blurRadius];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (id)applyToImage:(id)image targetSize:(CGSize)size
{
  v30[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  imageByClampingToExtent = [imageCopy imageByClampingToExtent];
  v7 = [MEMORY[0x277CBF750] filterWithName:@"CIGaussianBlur"];
  v8 = *MEMORY[0x277CBFAF0];
  [v7 setValue:imageByClampingToExtent forKey:*MEMORY[0x277CBFAF0]];
  v9 = MEMORY[0x277CCABB0];
  [(PXGDisplayAssetBlurAdjustment *)self blurRadius];
  v10 = [v9 numberWithDouble:?];
  [v7 setValue:v10 forKey:*MEMORY[0x277CBFB08]];

  outputImage = [v7 outputImage];
  [(PXGDisplayAssetBlurAdjustment *)self darkeningOverlayOpacity];
  outputImage3 = outputImage;
  if (v13 > 0.0)
  {
    v14 = MEMORY[0x277D75348];
    [(PXGDisplayAssetBlurAdjustment *)self darkeningOverlayOpacity];
    v26 = [v14 colorWithWhite:0.0 alpha:v15];
    v16 = [objc_alloc(MEMORY[0x277CBF730]) initWithColor:v26];
    v17 = MEMORY[0x277CBF750];
    v29 = *MEMORY[0x277CBFAD0];
    v30[0] = v16;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v19 = [v17 filterWithName:@"CIConstantColorGenerator" withInputParameters:v18];

    outputImage2 = [v19 outputImage];
    v21 = MEMORY[0x277CBF750];
    v27[0] = *MEMORY[0x277CBFAB8];
    v27[1] = v8;
    v28[0] = outputImage;
    v28[1] = outputImage2;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v23 = [v21 filterWithName:@"CISourceOverCompositing" withInputParameters:v22];

    outputImage3 = [v23 outputImage];
  }

  [imageCopy extent];
  v24 = [outputImage3 imageByCroppingToRect:?];

  return v24;
}

- (PXGDisplayAssetBlurAdjustment)initWithBlurRadius:(double)radius darkeningOverlayOpacity:(double)opacity
{
  v7.receiver = self;
  v7.super_class = PXGDisplayAssetBlurAdjustment;
  result = [(PXGDisplayAssetBlurAdjustment *)&v7 init];
  if (result)
  {
    result->_blurRadius = radius;
    result->_darkeningOverlayOpacity = opacity;
  }

  return result;
}

@end