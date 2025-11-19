@interface UIImage(SBFImageCGBitmapDrawing)
+ (id)sbf_imageFromBGRAContextWithSize:()SBFImageCGBitmapDrawing scale:colorSpace:withAlpha:pool:drawing:encapsulation:;
+ (id)sbf_imageFromContextWithSize:()SBFImageCGBitmapDrawing scale:type:pool:drawing:;
+ (id)sbf_imageFromContextWithSize:()SBFImageCGBitmapDrawing scale:type:pool:drawing:encapsulation:;
+ (uint64_t)sbf_bytesNeededForSize:()SBFImageCGBitmapDrawing scale:withContextType:;
- (id)sbf_downscaledImageByDrawingIntoContextOfType:()SBFImageCGBitmapDrawing downscaleFactor:;
- (id)sbf_memoryMappedImageWithPool:()SBFImageCGBitmapDrawing;
@end

@implementation UIImage(SBFImageCGBitmapDrawing)

+ (uint64_t)sbf_bytesNeededForSize:()SBFImageCGBitmapDrawing scale:withContextType:
{
  v6 = vcvtpd_u64_f64(a2 * a3);
  _SBFGraphicsContextComponentsCountForType(a6);
  return CGBitmapGetAlignedBytesPerRow() * v6;
}

+ (id)sbf_imageFromContextWithSize:()SBFImageCGBitmapDrawing scale:type:pool:drawing:
{
  v8 = _SBFCGBitmapImageCreate(a6, 0, a7, a8, 0, a1, a2, a3);

  return v8;
}

+ (id)sbf_imageFromContextWithSize:()SBFImageCGBitmapDrawing scale:type:pool:drawing:encapsulation:
{
  v9 = _SBFCGBitmapImageCreate(a6, 0, a7, a8, a9, a1, a2, a3);

  return v9;
}

+ (id)sbf_imageFromBGRAContextWithSize:()SBFImageCGBitmapDrawing scale:colorSpace:withAlpha:pool:drawing:encapsulation:
{
  v10 = _SBFCGBitmapImageCreate(a7 ^ 1u, a6, a8, a9, a10, a1, a2, a3);

  return v10;
}

- (id)sbf_downscaledImageByDrawingIntoContextOfType:()SBFImageCGBitmapDrawing downscaleFactor:
{
  v7 = [a1 sbf_CGImageBackedImage];
  [a1 size];
  v9 = v8;
  v11 = v10;
  [a1 scale];
  v13 = v12 / a2;
  v14 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__UIImage_SBFImageCGBitmapDrawing__sbf_downscaledImageByDrawingIntoContextOfType_downscaleFactor___block_invoke;
  v18[3] = &unk_1E807F178;
  v19 = v7;
  v15 = v7;
  v16 = [v14 sbf_imageFromContextWithSize:a4 scale:0 type:v18 pool:v9 drawing:{v11, v13}];

  return v16;
}

- (id)sbf_memoryMappedImageWithPool:()SBFImageCGBitmapDrawing
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 CGImage];
  Height = CGImageGetHeight(v6);
  BytesPerRow = CGImageGetBytesPerRow(v6);
  v9 = [v4 slotLength];
  if (BytesPerRow * Height <= v9 && (v10 = v9, (DataProvider = CGImageGetDataProvider(v6)) != 0) && (v12 = CGDataProviderCopyData(DataProvider)) != 0)
  {
    v13 = v12;
    Length = CFDataGetLength(v12);
    if (Length <= v10)
    {
      v17 = [v4 nextSlotWithBytes:CFDataGetBytePtr(v13) length:Length];
      v18 = v17;
      if (v17 && (v19 = CGDataProviderCreateWithCFData(v17)) != 0)
      {
        v20 = v19;
        Width = CGImageGetWidth(v6);
        BitsPerComponent = CGImageGetBitsPerComponent(v6);
        bitsPerPixel = CGImageGetBitsPerPixel(v6);
        ColorSpace = CGImageGetColorSpace(v6);
        BitmapInfo = CGImageGetBitmapInfo(v6);
        v23 = CGImageCreate(Width, Height, BitsPerComponent, bitsPerPixel, BytesPerRow, ColorSpace, BitmapInfo, v20, 0, 0, kCGRenderingIntentDefault);
        if (v23)
        {
          v24 = v23;
          v25 = objc_alloc(MEMORY[0x1E69DCAB8]);
          [a1 scale];
          v15 = [v25 initWithCGImage:v24 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v26}];
          CGImageRelease(v24);
        }

        else
        {
          v15 = 0;
        }

        CGDataProviderRelease(v20);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v13);
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v15;
}

@end