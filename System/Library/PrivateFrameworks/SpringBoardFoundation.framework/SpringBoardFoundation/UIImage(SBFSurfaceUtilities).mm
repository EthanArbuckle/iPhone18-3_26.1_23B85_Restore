@interface UIImage(SBFSurfaceUtilities)
+ (id)sbf_imageWithIOSurface:()SBFSurfaceUtilities scale:orientation:;
@end

@implementation UIImage(SBFSurfaceUtilities)

+ (id)sbf_imageWithIOSurface:()SBFSurfaceUtilities scale:orientation:
{
  v8 = a4;
  if ([v8 pixelFormat] == 1380411457)
  {
    v9 = v8;
    [v9 lockWithOptions:1 seed:0];
    baseAddress = [v9 baseAddress];
    bytesPerRow = [v9 bytesPerRow];
    width = [v9 width];
    height = [v9 height];
    allocationSize = [v9 allocationSize];
    v15 = v9;
    v16 = CGDataProviderCreateWithData(v15, baseAddress, allocationSize, releaseIOSurface);
    [v15 incrementUseCount];
    v17 = IOSurfaceCopyValue(v15, *MEMORY[0x1E696CEE0]);
    if (!v17 || (v18 = v17, v19 = CGColorSpaceCreateWithPropertyList(v17), CFRelease(v18), !v19))
    {
      v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    v20 = CGImageCreate(width, height, 0x10uLL, 0x40uLL, bytesPerRow, v19, 0x1101u, v16, 0, 1, kCGRenderingIntentDefault);
    CGImageSetProperty();
    CGDataProviderRelease(v16);
    CGColorSpaceRelease(v19);
    if (v20)
    {
      v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v20 scale:a5 orientation:a2];
    }

    else
    {
      v21 = 0;
    }

    CGImageRelease(v20);
  }

  else
  {
    v21 = [[self alloc] _initWithIOSurface:v8 scale:a5 orientation:a2];
  }

  return v21;
}

@end