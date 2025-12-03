@interface CIImage(PhotosUIFoundation)
- (id)px_imageByApplyingAlpha:()PhotosUIFoundation;
- (id)px_imageByApplyingScale:()PhotosUIFoundation;
@end

@implementation CIImage(PhotosUIFoundation)

- (id)px_imageByApplyingScale:()PhotosUIFoundation
{
  [self extent];
  v5 = v4;
  v7 = v6;
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, v4 * -0.5, v6 * -0.5);
  CGAffineTransformMakeScale(&t2, a2, a2);
  v10 = v13;
  CGAffineTransformConcat(&v12, &v10, &t2);
  v13 = v12;
  CGAffineTransformMakeTranslation(&t2, v5 * a2 * 0.5, v7 * a2 * 0.5);
  v10 = v13;
  CGAffineTransformConcat(&v12, &v10, &t2);
  v13 = v12;
  v8 = [self imageByApplyingTransform:&v12];

  return v8;
}

- (id)px_imageByApplyingAlpha:()PhotosUIFoundation
{
  v8[4] = *MEMORY[0x1E69E9840];
  colorMatrixFilter = [MEMORY[0x1E695F648] colorMatrixFilter];
  memset(v8, 0, 24);
  *&v8[3] = a2;
  [colorMatrixFilter setDefaults];
  v5 = [MEMORY[0x1E695F688] vectorWithValues:v8 count:4];
  [colorMatrixFilter setAVector:v5];

  [colorMatrixFilter setInputImage:self];
  outputImage = [colorMatrixFilter outputImage];

  return outputImage;
}

@end