@interface PLSubstandardPhotoEditSource
+ (id)_imageWithImage:(id)image orientation:(int64_t)orientation;
- (PLSubstandardPhotoEditSource)initWithImage:(id)image orientation:(int64_t)orientation;
- (PLSubstandardPhotoEditSource)initWithImage:(id)image orientation:(int64_t)orientation size:(CGSize)size;
@end

@implementation PLSubstandardPhotoEditSource

- (PLSubstandardPhotoEditSource)initWithImage:(id)image orientation:(int64_t)orientation size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = [PLSubstandardPhotoEditSource _imageWithImage:image orientation:?];
  [v9 extent];
  if (width != v10 || height != v11)
  {
    v13 = width / v10;
    if (width / v10 < height / v11)
    {
      v13 = height / v11;
    }

    CGAffineTransformMakeScale(&v20, v13, v13);
    v14 = [v9 imageByApplyingTransform:&v20];

    [v14 extent];
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = width;
    v22.size.height = height;
    if (CGRectEqualToRect(v21, v22))
    {
      v9 = v14;
    }

    else
    {
      imageByClampingToExtent = [v14 imageByClampingToExtent];

      v9 = [imageByClampingToExtent imageByCroppingToRect:{0.0, 0.0, width, height}];
    }
  }

  v16 = [getPIPhotoEditHelperClass_85048() imageSourceWithCIImage:v9 orientation:orientation];
  v19.receiver = self;
  v19.super_class = PLSubstandardPhotoEditSource;
  v17 = [(PLEditSource *)&v19 initWithResolvedSource:v16 mediaType:1];

  return v17;
}

- (PLSubstandardPhotoEditSource)initWithImage:(id)image orientation:(int64_t)orientation
{
  v6 = [PLSubstandardPhotoEditSource _imageWithImage:image orientation:?];
  v7 = [getPIPhotoEditHelperClass_85048() imageSourceWithCIImage:v6 orientation:orientation];
  v10.receiver = self;
  v10.super_class = PLSubstandardPhotoEditSource;
  v8 = [(PLEditSource *)&v10 initWithResolvedSource:v7 mediaType:1];

  return v8;
}

+ (id)_imageWithImage:(id)image orientation:(int64_t)orientation
{
  v5 = [MEMORY[0x1E695F658] imageWithCGImage:DCIM_CGImageRefFromPLImage()];
  v6 = v5;
  if (orientation == 8)
  {
    orientationCopy = 6;
  }

  else
  {
    orientationCopy = orientation;
  }

  if (orientation == 6)
  {
    v8 = 8;
  }

  else
  {
    v8 = orientationCopy;
  }

  v9 = [v5 imageByApplyingOrientation:v8];

  return v9;
}

@end