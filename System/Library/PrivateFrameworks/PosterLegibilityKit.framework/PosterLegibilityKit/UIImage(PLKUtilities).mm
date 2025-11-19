@interface UIImage(PLKUtilities)
+ (id)plk_imageFromContextWithSize:()PLKUtilities scale:type:pool:drawing:;
- (id)plk_alphaMaskImage;
- (uint64_t)plk_isAlphaMask;
@end

@implementation UIImage(PLKUtilities)

- (uint64_t)plk_isAlphaMask
{
  result = [a1 CGImage];
  if (result)
  {
    v2 = result;
    BitsPerPixel = CGImageGetBitsPerPixel(result);
    if (BitsPerPixel == CGImageGetBitsPerComponent(v2))
    {
      return 1;
    }

    else
    {
      AlphaInfo = CGImageGetAlphaInfo(v2);
      BitsPerComponent = CGImageGetBitsPerComponent(v2);
      v6 = CGImageGetBitsPerPixel(v2);
      return AlphaInfo == kCGImageAlphaOnly && v6 == 8 && BitsPerComponent == 8;
    }
  }

  return result;
}

+ (id)plk_imageFromContextWithSize:()PLKUtilities scale:type:pool:drawing:
{
  v13 = a8;
  if (v13)
  {
    v14 = [PLKImageRendererFormat formatForContextType:a6 scale:a7 memoryPool:a3];
    v15 = [(UIGraphicsImageRenderer *)[PLKImageRenderer alloc] initWithSize:v14 format:a1, a2];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__UIImage_PLKUtilities__plk_imageFromContextWithSize_scale_type_pool_drawing___block_invoke;
    v18[3] = &unk_27835B200;
    v19 = v13;
    v16 = [(PLKImageRenderer *)v15 imageWithActions:v18];
  }

  else
  {
    v16 = objc_opt_new();
  }

  return v16;
}

- (id)plk_alphaMaskImage
{
  if ([a1 plk_isAlphaMask])
  {
    v2 = a1;
  }

  else
  {
    [a1 size];
    v4 = v3;
    v6 = v5;
    [a1 scale];
    v7 = [PLKImageRendererFormat formatForContextType:4 scale:?];
    v8 = [(UIGraphicsImageRenderer *)[PLKImageRenderer alloc] initWithSize:v7 format:v4, v6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__UIImage_PLKUtilities__plk_alphaMaskImage__block_invoke;
    v10[3] = &unk_27835B228;
    *&v10[5] = v4;
    *&v10[6] = v6;
    v10[4] = a1;
    v2 = [(PLKImageRenderer *)v8 imageWithActions:v10];
  }

  return v2;
}

@end