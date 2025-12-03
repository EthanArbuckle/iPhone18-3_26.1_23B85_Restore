@interface UIImage(SUAdditions)
- (uint64_t)stretchableImageWithLeftCapWidth:()SUAdditions rightCapWidth:;
@end

@implementation UIImage(SUAdditions)

- (uint64_t)stretchableImageWithLeftCapWidth:()SUAdditions rightCapWidth:
{
  if (a3 == a4)
  {

    return [self stretchableImageWithLeftCapWidth:? topCapHeight:?];
  }

  else
  {
    [self size];
    v9 = v8;
    if (a3 <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = a3;
    }

    v11 = ((v10 * 2.0) + 1.0);
    [self scale];
    v13 = v12;
    v14 = v12 * v11;
    v15 = ceilf(v14);
    v16 = v9 * v12;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v19 = CGBitmapContextCreate(0, vcvtps_u32_f32(v14), vcvtps_u32_f32(v16), 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
    if (v19)
    {
      v20 = v19;
      v42.size.height = ceilf(v16);
      v42.origin.x = 0.0;
      v42.origin.y = 0.0;
      v42.size.width = v15;
      CGContextClearRect(v19, v42);
      CGContextScaleCTM(v20, v13, v13);
      CGAffineTransformMakeScale(&v40, v13, v13);
      CGContextSetBaseCTM();
      [self size];
      *&v21 = v13 * v21;
      v22 = ceilf(*&v21);
      [self size];
      v24 = v13 * v23;
      v25 = ceilf(v24);
      v39 = v11;
      v26 = v13 * a3;
      v27 = a4;
      v28 = v13 * a4;
      v29 = v22 - v28 - v26;
      cGImage = [self CGImage];
      v43.origin.x = 0.0;
      v43.origin.y = 0.0;
      v43.size.width = v26;
      v43.size.height = v25;
      v31 = CGImageCreateWithImageInRect(cGImage, v43);
      v44.origin.x = 0.0;
      v44.origin.y = 0.0;
      v44.size.width = a3;
      v44.size.height = v9;
      CGContextDrawImage(v20, v44, v31);
      CGImageRelease(v31);
      cGImage2 = [self CGImage];
      v45.origin.x = v26 + v29;
      v45.origin.y = 0.0;
      v45.size.width = v28;
      v45.size.height = v25;
      v33 = CGImageCreateWithImageInRect(cGImage2, v45);
      v46.origin.x = v39 - v27;
      v46.origin.y = 0.0;
      v46.size.width = v27;
      v46.size.height = v9;
      CGContextDrawImage(v20, v46, v33);
      CGImageRelease(v33);
      cGImage3 = [self CGImage];
      v47.origin.y = 0.0;
      v47.origin.x = v26;
      v47.size.width = v29;
      v47.size.height = v25;
      v35 = CGImageCreateWithImageInRect(cGImage3, v47);
      v48.size.width = v39 - a3 - v27;
      v48.origin.y = 0.0;
      v48.origin.x = a3;
      v48.size.height = v9;
      CGContextDrawImage(v20, v48, v35);
      CGImageRelease(v35);
      Image = CGBitmapContextCreateImage(v20);
      if (Image)
      {
        v37 = Image;
        v38 = [objc_msgSend(MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:{v13), "stretchableImageWithLeftCapWidth:topCapHeight:", a3, 0}];
        CGImageRelease(v37);
      }

      else
      {
        v38 = 0;
      }

      CFRelease(v20);
    }

    else
    {
      v38 = 0;
    }

    CGColorSpaceRelease(DeviceRGB);
    return v38;
  }
}

@end