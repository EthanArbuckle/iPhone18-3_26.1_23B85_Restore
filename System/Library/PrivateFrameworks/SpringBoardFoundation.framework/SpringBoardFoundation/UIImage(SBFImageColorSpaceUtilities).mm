@interface UIImage(SBFImageColorSpaceUtilities)
- (CGImage)sbf_colorSpace;
- (id)sbf_ATXSafeCGImageBackedImage;
- (id)sbf_imageByConvertingToColorSpace:()SBFImageColorSpaceUtilities type:;
- (id)sbf_imageByManipulatingInDeviceColorSpaceWithBlock:()SBFImageColorSpaceUtilities;
@end

@implementation UIImage(SBFImageColorSpaceUtilities)

- (CGImage)sbf_colorSpace
{
  result = [a1 CGImage];
  if (result)
  {

    return CGImageGetColorSpace(result);
  }

  return result;
}

- (id)sbf_imageByManipulatingInDeviceColorSpaceWithBlock:()SBFImageColorSpaceUtilities
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = CGColorSpaceRetain([a1 sbf_colorSpace]);
    if (v6)
    {
      v7 = __sbfImageByApplyingColorSpace(a1, 0);
    }

    else
    {
      v7 = a1;
    }

    v9 = v7;
    v10 = v4[2](v4, v7);
    v11 = v10;
    if (v10)
    {
      v8 = __sbfImageByApplyingColorSpace(v10, v6);
    }

    else
    {
      v8 = 0;
    }

    CGColorSpaceRelease(v6);

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

- (id)sbf_imageByConvertingToColorSpace:()SBFImageColorSpaceUtilities type:
{
  [a1 size];
  v8 = v7;
  v10 = v9;
  [a1 scale];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__UIImage_SBFImageColorSpaceUtilities__sbf_imageByConvertingToColorSpace_type___block_invoke;
  v14[3] = &unk_1E807F178;
  v14[4] = a1;
  v12 = _SBFCGBitmapImageCreate(a4, a3, 0, v14, 0, v8, v10, v11);

  return v12;
}

- (id)sbf_ATXSafeCGImageBackedImage
{
  v1 = [a1 sbf_CGImageBackedImageWithMaximumBitsPerComponent:8 skipCIF10FitsInSRGBCheck:0];
  v2 = [v1 sbf_colorSpace];
  if (v2)
  {
    Type = CGColorSpaceGetType();
    if (Type <= 5 && ((1 << Type) & 0x27) != 0)
    {
      goto LABEL_19;
    }
  }

  v5 = CGColorSpaceCopyName(v2);
  v6 = v5;
  v7 = *MEMORY[0x1E695F1C0];
  if (v5)
  {
    if (CFStringCompare(v5, *MEMORY[0x1E695F1C0], 0) == kCFCompareEqualTo || (v8 = *MEMORY[0x1E695F110], CFStringCompare(v6, *MEMORY[0x1E695F110], 0) == kCFCompareEqualTo) || (v9 = *MEMORY[0x1E695F0B8], CFStringCompare(v6, *MEMORY[0x1E695F0B8], 0) == kCFCompareEqualTo))
    {
LABEL_18:
      CFRelease(v6);
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695F110];
    v9 = *MEMORY[0x1E695F0B8];
  }

  v10 = CGColorSpaceCreateWithName(v7);
  v11 = CGColorSpaceCreateWithName(v8);
  v12 = CGColorSpaceCreateWithName(v9);
  if ((CGColorSpaceEqualToColorSpace() & 1) == 0 && (CGColorSpaceEqualToColorSpace() & 1) == 0 && (CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    v13 = [v1 sbf_imageByConvertingToColorSpace:v11 type:0];

    v1 = v13;
  }

  CGColorSpaceRelease(v10);
  CGColorSpaceRelease(v11);
  CGColorSpaceRelease(v12);
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v1;
}

@end