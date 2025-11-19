@interface UIImage(SBFIOSurfaceConveniences)
- (id)sbf_CGImageBackedImageWithMaximumBitsPerComponent:()SBFIOSurfaceConveniences skipCIF10FitsInSRGBCheck:;
@end

@implementation UIImage(SBFIOSurfaceConveniences)

- (id)sbf_CGImageBackedImageWithMaximumBitsPerComponent:()SBFIOSurfaceConveniences skipCIF10FitsInSRGBCheck:
{
  v19[3] = *MEMORY[0x1E69E9840];
  if ([a1 CGImage])
  {
    v7 = a1;
  }

  else
  {
    v8 = [a1 ioSurface];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 pixelFormat];
      if (a3 <= 8 && v10 == 1999843442)
      {
        v11 = *MEMORY[0x1E696D3B0];
        v18[0] = *MEMORY[0x1E696D2B8];
        v18[1] = v11;
        v19[0] = &unk_1F3D3E910;
        v19[1] = &unk_1F3D3E928;
        v18[2] = *MEMORY[0x1E696DFC0];
        v12 = [MEMORY[0x1E696AD98] numberWithBool:a4];
        v19[2] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

        v14 = CGImageCreateFromIOSurface();
      }

      else
      {
        v14 = UICreateCGImageFromIOSurface();
      }

      v15 = objc_alloc(MEMORY[0x1E69DCAB8]);
      [a1 scale];
      v7 = [v15 initWithCGImage:v14 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v16}];
      CGImageRelease(v14);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end