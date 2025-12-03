@interface PNTimelineCrop
+ (id)cropForAsset:(id)asset withTargetSize:(CGSize)size;
- (CGRect)cropRect;
- (PNTimelineCrop)initWithCrop:(CGRect)crop score:(double)score;
- (id)description;
@end

@implementation PNTimelineCrop

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(PNTimelineCrop *)self cropRect];
  v5 = v4;
  [(PNTimelineCrop *)self cropRect];
  v7 = v6;
  [(PNTimelineCrop *)self cropRect];
  v9 = v8;
  [(PNTimelineCrop *)self cropRect];
  v11 = [v3 stringWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v5, v7, v9, v10];
  v12 = MEMORY[0x1E696AEC0];
  [(PNTimelineCrop *)self cropScore];
  v14 = [v12 stringWithFormat:@"cropRect:%@ cropScore:%.4f", v11, v13];

  return v14;
}

- (PNTimelineCrop)initWithCrop:(CGRect)crop score:(double)score
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v10.receiver = self;
  v10.super_class = PNTimelineCrop;
  result = [(PNTimelineCrop *)&v10 init];
  if (result)
  {
    result->_cropScore = score;
    result->_cropRect.origin.x = x;
    result->_cropRect.origin.y = y;
    result->_cropRect.size.width = width;
    result->_cropRect.size.height = height;
  }

  return result;
}

+ (id)cropForAsset:(id)asset withTargetSize:(CGSize)size
{
  v15 = 0.0;
  [asset suggestedCropForTargetSize:&v15 withFocusRegion:size.width andOutputCropScore:{size.height, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [PNTimelineCrop alloc];
  v13 = [(PNTimelineCrop *)v12 initWithCrop:v5 score:v7, v9, v11, v15];

  return v13;
}

@end