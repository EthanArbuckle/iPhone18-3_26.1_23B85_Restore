@interface UIImage(PLKAdditions)
+ (id)plk_imageWithIOSurface:()PLKAdditions scale:orientation:;
- (CGImage)plk_colorSpace;
- (id)plk_CGImageBackedImageWithMaximumBitsPerComponent:()PLKAdditions skipCIF10FitsInSRGBCheck:;
- (id)plk_cropImageWithRect:()PLKAdditions outputSize:preservingAspectRatio:canUseIOSurface:;
- (id)plk_resizeImageToSize:()PLKAdditions;
- (id)plk_resizeImageToSize:()PLKAdditions preservingAspectRatio:;
- (id)plk_wrappedIOSurface;
@end

@implementation UIImage(PLKAdditions)

+ (id)plk_imageWithIOSurface:()PLKAdditions scale:orientation:
{
  v8 = a4;
  if ([v8 pixelFormat] == 1380411457)
  {
    v9 = v8;
    [v9 lockWithOptions:1 seed:0];
    v10 = [v9 baseAddress];
    v11 = [v9 bytesPerRow];
    v12 = [v9 width];
    v13 = [v9 height];
    v14 = [v9 allocationSize];
    v15 = v9;
    v16 = CGDataProviderCreateWithData(v15, v10, v14, ___PLKReleaseIOSurface);
    [v15 incrementUseCount];
    v17 = IOSurfaceCopyValue(v15, *MEMORY[0x277CD29C0]);
    if (!v17 || (v18 = v17, v19 = CGColorSpaceCreateWithPropertyList(v17), CFRelease(v18), !v19))
    {
      v19 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    }

    v20 = CGImageCreate(v12, v13, 0x10uLL, 0x40uLL, v11, v19, 0x1101u, v16, 0, 1, kCGRenderingIntentDefault);
    v21 = *MEMORY[0x277CBF548];
    CGImageSetProperty();
    CGDataProviderRelease(v16);
    CGColorSpaceRelease(v19);
    if (v20)
    {
      v22 = [MEMORY[0x277D755B8] imageWithCGImage:v20 scale:a5 orientation:a2];
    }

    else
    {
      v22 = 0;
    }

    CGImageRelease(v20);
  }

  else
  {
    v22 = [[a1 alloc] _initWithIOSurface:v8 scale:a5 orientation:a2];
  }

  return v22;
}

- (id)plk_wrappedIOSurface
{
  v2 = [a1 ioSurface];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = PLKIOSurfaceFromCGImage([a1 CGImage], 0);
  }

  return v3;
}

- (id)plk_cropImageWithRect:()PLKAdditions outputSize:preservingAspectRatio:canUseIOSurface:
{
  v115[3] = *MEMORY[0x277D85DE8];
  v19 = PLKLogRendering();
  v20 = os_signpost_id_generate(v19);

  v21 = PLKLogRendering();
  v22 = v21;
  v23 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21E5D5000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "plk_cropImage", &unk_21E5F550D, buf, 2u);
  }

  v24 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  [a1 size];
  v122.size.width = v26;
  v122.size.height = v27;
  v117.origin.x = a2;
  v117.origin.y = a3;
  v117.size.width = a4;
  v117.size.height = a5;
  v122.origin.x = v24;
  v122.origin.y = v25;
  v28 = CGRectEqualToRect(v117, v122);
  v29 = v28;
  v30 = !v28;
  v31 = a5 != a7 || a4 != a6;
  v118.origin.x = a2;
  v118.origin.y = a3;
  v118.size.width = a4;
  v118.size.height = a5;
  if (CGRectIsEmpty(v118) || !(v30 | v31) || (BSFloatLessThanOrEqualToFloat() & 1) != 0 || BSFloatLessThanOrEqualToFloat())
  {
    v32 = PLKLogRendering();
    v33 = v32;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 67110400;
      *&buf[4] = v30;
      *&buf[8] = 1024;
      *&buf[10] = v31;
      *&buf[14] = 2048;
      *v101 = a4;
      *&v101[8] = 2048;
      *&v101[10] = a5;
      *&v101[18] = 2048;
      *&v101[20] = a6;
      *&v101[28] = 2048;
      *&v101[30] = a7;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v33, OS_SIGNPOST_INTERVAL_END, v20, "pui_cropImage", "No work to do: needsCrop=%u, needsScale=%u, cropRect.size=(%f, %f), outputSize=(%f, %f)", buf, 0x36u);
    }

    v34 = a1;
    goto LABEL_15;
  }

  v37 = [a1 imageOrientation];
  rect = *MEMORY[0x277CBF2C0];
  v95 = *(MEMORY[0x277CBF2C0] + 16);
  v38 = *(MEMORY[0x277CBF2C0] + 32);
  v39 = *(MEMORY[0x277CBF2C0] + 40);
  v91 = v37;
  if (v37 && (v40 = v37, [a1 size], v40 <= 7))
  {
    if (((1 << v40) & 0x22) != 0)
    {
      v43 = xmmword_21E5F3DE0;
      v44 = xmmword_21E5F3DF0;
      v38 = 0;
      v39 = v42;
    }

    else if (((1 << v40) & 0x44) != 0)
    {
      v43 = xmmword_21E5F3E00;
      v44 = xmmword_21E5F3E10;
      v39 = 0;
      v38 = v42;
    }

    else
    {
      v44 = rect;
      v43 = v95;
      if (((1 << v40) & 0x88) != 0)
      {
        v43 = xmmword_21E5F3DF0;
        v44 = xmmword_21E5F3DE0;
        v38 = 0;
        v39 = v41;
      }
    }
  }

  else
  {
    v44 = rect;
    v43 = v95;
  }

  rectb = v44;
  v96 = v43;
  [a1 scale];
  memset(&v99, 0, sizeof(v99));
  v90 = v45;
  CGAffineTransformMakeScale(&v99, v45, v45);
  memset(&v98, 0, sizeof(v98));
  *buf = rectb;
  *v101 = v96;
  *&v101[16] = v38;
  *&v101[24] = v39;
  t2 = v99;
  CGAffineTransformConcat(&v98, buf, &t2);
  *buf = *&v98.a;
  *v101 = *&v98.c;
  *&v101[16] = *&v98.tx;
  v119.origin.x = a2;
  v119.origin.y = a3;
  v119.size.width = a4;
  v119.size.height = a5;
  v120 = CGRectApplyAffineTransform(v119, buf);
  x = v120.origin.x;
  y = v120.origin.y;
  width = v120.size.width;
  recta = v120.size.height;
  if (!a10)
  {
LABEL_43:
    v59 = PLKLogRendering();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      [UIImage(PLKAdditions) plk_cropImageWithRect:v59 outputSize:? preservingAspectRatio:? canUseIOSurface:?];
    }

    v60 = [a1 plk_CGImageBackedImage];
    v61 = v60;
    if (v29)
    {
      v62 = 0;
      v34 = 0;
      if (!v31)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v63 = [v60 CGImage];
      v121.origin.x = x;
      v121.origin.y = y;
      v121.size.width = width;
      v121.size.height = recta;
      v62 = CGImageCreateWithImageInRect(v63, v121);
      v34 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v62 scale:v91 orientation:v90];
      if (!v31)
      {
LABEL_53:
        if (v62)
        {
          CGImageRelease(v62);
        }

        v58 = 1;
        goto LABEL_56;
      }
    }

    if (v34)
    {
      v64 = v34;
    }

    else
    {
      v64 = v61;
    }

    v65 = [v64 plk_resizeImageToSize:a9 preservingAspectRatio:{a6, a7, BytesPerRow}];

    v34 = v65;
    goto LABEL_53;
  }

  v48 = a1;
  v49 = [v48 plk_wrappedIOSurface];
  if (v49)
  {
    v50 = v49;

    v87 = 0;
    goto LABEL_30;
  }

  v85 = y;
  v86 = x;
  [v48 scale];
  v53 = v52;
  [v48 size];
  v55 = v54;
  if (MEMORY[0x223D5F5C0](*MEMORY[0x277CD2B88]) < vcvtpd_u64_f64(v53 * v56) || MEMORY[0x223D5F5C0](*MEMORY[0x277CD2A28]) < vcvtpd_u64_f64(v53 * v55))
  {

    y = v85;
    x = v86;
    goto LABEL_43;
  }

  v69 = PLKIOSurfaceFromCGImage([v48 CGImage], 1);
  if (v69)
  {
    v70 = v69;
    v87 = 0;
    buffera = v69;
    y = v85;
    x = v86;
    goto LABEL_78;
  }

  v71 = [v48 CGImage];
  if (CGImageGetBitsPerComponent(v71) > 8)
  {
    goto LABEL_73;
  }

  CGImageGetWidth(v71);
  CGImageGetHeight(v71);
  if (!CGImageGetImageProvider())
  {
    goto LABEL_73;
  }

  v72 = *MEMORY[0x277CBED28];
  v73 = *MEMORY[0x277CBF530];
  v115[0] = *MEMORY[0x277CBF540];
  v115[1] = v73;
  v74 = *MEMORY[0x277CBF528];
  t2.a = v72;
  t2.b = v74;
  v115[2] = *MEMORY[0x277CBF538];
  t2.c = v72;
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&t2 forKeys:v115 count:3];
  v75 = CGImageProviderCopyImageBlockSetWithOptions();
  if (!v75)
  {

LABEL_73:
    v87 = 0;
LABEL_74:
    MGGetBoolAnswer();
    [v48 size];
    [v48 scale];
    [v48 plk_colorSpace];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *v101 = __PLKCreateIOSurfaceForImage_block_invoke;
    *&v101[8] = &unk_27835B470;
    *&v101[16] = v48;
    v80 = BSUISurfaceWithColorSpaceAndDrawBlock();
    v81 = v80;
    if (v80)
    {
      [(__IOSurface *)v80 setAttachment:@"PosterLegibilityKit" forKey:*MEMORY[0x277CD2A50]];
    }

    y = v85;
    x = v86;
    buffera = v81;
    goto LABEL_77;
  }

  v87 = v75;
  CGImageBlockSetGetImageBlock();
  BytesPerRow = CGImageBlockGetBytesPerRow();
  CGImageBlockGetData();
  buffera = IOSurfaceWrapClientImage();
  ColorSpace = CGImageProviderGetColorSpace();
  y = v85;
  x = v86;
  if (ColorSpace)
  {
    v77 = ColorSpace;
    space = CGColorSpaceCreateDeviceRGB();
    if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
    {
      v78 = CGColorSpaceCopyPropertyList(v77);
      if (v78)
      {
        v79 = v78;
        IOSurfaceSetValue(buffera, *MEMORY[0x277CD29C0], v78);
        CFRelease(v79);
      }
    }

    CGColorSpaceRelease(space);
  }

  if (!buffera)
  {
    goto LABEL_74;
  }

  [(__IOSurface *)buffera setAttachment:@"PLK-WrapsClientImage" forKey:*MEMORY[0x277CD2A50]];
LABEL_77:
  v70 = 0;
LABEL_78:

  v50 = buffera;
  if (!buffera)
  {
    v34 = 0;
    goto LABEL_39;
  }

LABEL_30:
  buffer = v50;
  v51 = __PLKCreateCroppedIOSurface(v50, x, y, width, recta);
  if (v51)
  {
    v34 = [MEMORY[0x277D755B8] plk_imageWithIOSurface:v51 scale:v91 orientation:v90];
  }

  else
  {
    v57 = PLKLogCommon();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      [UIImage(PLKAdditions) plk_cropImageWithRect:v57 outputSize:? preservingAspectRatio:? canUseIOSurface:?];
    }

    v34 = 0;
  }

LABEL_39:
  if (v87)
  {
    CGImageBlockSetRelease();
  }

  if (!v34)
  {
    goto LABEL_43;
  }

  v58 = 0;
LABEL_56:
  v66 = PLKLogRendering();
  v67 = v66;
  if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    v68 = [v34 imageOrientation];
    *buf = 67112192;
    *&buf[4] = v34 != 0;
    *&buf[8] = 1024;
    *&buf[10] = v30;
    *&buf[14] = 1024;
    *v101 = v31;
    *&v101[4] = 2048;
    *&v101[6] = a2;
    *&v101[14] = 2048;
    *&v101[16] = a3;
    *&v101[24] = 2048;
    *&v101[26] = a4;
    *&v101[34] = 2048;
    *&v101[36] = a5;
    v102 = 2048;
    v103 = a6;
    v104 = 2048;
    v105 = a7;
    v106 = 2048;
    v107 = v91;
    v108 = 2048;
    v109 = v68;
    v110 = 1024;
    v111 = a10;
    v112 = 1024;
    v113 = v58;
    _os_signpost_emit_with_name_impl(&dword_21E5D5000, v67, OS_SIGNPOST_INTERVAL_END, v20, "plk_cropImage", "Complete: success=%u needsCrop=%u, needsScale=%u, cropRect=((%f, %f), (%f, %f)), outputSize=(%f, %f), imageOrientation=%lu, outputImage.imageOrientation=%lu canUseIOSurface=%u, usedCPU=%u", buf, 0x70u);
  }

LABEL_15:
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)plk_resizeImageToSize:()PLKAdditions preservingAspectRatio:
{
  [a1 size];
  if (v9 == a2 && v10 == a3)
  {
    v15 = a1;
  }

  else
  {
    if (a5)
    {
      v12 = v9;
      v13 = v10;
      v14 = v9 / v10;
      if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        if (v12 >= v13)
        {
          a3 = floor(a2 * v14);
        }

        else
        {
          a2 = floor(a3 * v14);
        }
      }
    }

    v15 = [a1 plk_resizeImageToSize:{a2, a3}];
  }

  return v15;
}

- (id)plk_CGImageBackedImageWithMaximumBitsPerComponent:()PLKAdditions skipCIF10FitsInSRGBCheck:
{
  v20[3] = *MEMORY[0x277D85DE8];
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
        v11 = *MEMORY[0x277CD2D90];
        v19[0] = *MEMORY[0x277CD2CC8];
        v19[1] = v11;
        v20[0] = &unk_282FA0F50;
        v20[1] = &unk_282FA0F68;
        v19[2] = *MEMORY[0x277CD3528];
        v12 = [MEMORY[0x277CCABB0] numberWithBool:a4];
        v20[2] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

        v14 = CGImageCreateFromIOSurface();
      }

      else
      {
        v14 = UICreateCGImageFromIOSurface();
      }

      v15 = objc_alloc(MEMORY[0x277D755B8]);
      [a1 scale];
      v7 = [v15 initWithCGImage:v14 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v16}];
      CGImageRelease(v14);
    }

    else
    {
      v7 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)plk_resizeImageToSize:()PLKAdditions
{
  [a1 size];
  if (v7 == a2 && v6 == a3)
  {
    v26 = a1;
    goto LABEL_26;
  }

  [a1 scale];
  v10 = v9;
  UIRectIntegralWithScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [a1 CGImage];
  v20 = MGGetBoolAnswer();
  v21 = v20;
  if (!v19 || (v20 & 1) != 0)
  {
    if (v20)
    {
      BitsPerComponent = 16;
    }

    else
    {
      BitsPerComponent = 8;
    }

    if (v20)
    {
      v23 = 4353;
    }

    else
    {
      v23 = 1;
    }

    if (!v19)
    {
      goto LABEL_22;
    }

    if ((v20 ^ 1))
    {
      goto LABEL_22;
    }

    ColorSpace = CGImageGetColorSpace(v19);
    if (!ColorSpace)
    {
      goto LABEL_22;
    }

    v28 = ColorSpace;
    if (!CGColorSpaceIsWideGamutRGB(ColorSpace))
    {
      goto LABEL_22;
    }

    v24 = v28;
  }

  else
  {
    BitsPerComponent = CGImageGetBitsPerComponent(v19);
    v23 = CGImageGetBitmapInfo(v19) & 0xFFFFFFE0 | 1;
    v24 = CGImageGetColorSpace(v19);
  }

  v25 = CGColorSpaceRetain(v24);
  if (!v25)
  {
LABEL_22:
    v29 = MEMORY[0x277CBF430];
    if (!v21)
    {
      v29 = MEMORY[0x277CBF4B8];
    }

    v25 = CGColorSpaceCreateWithName(*v29);
  }

  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  v30 = (v10 * CGRectGetWidth(v37));
  v38.origin.x = v12;
  v38.origin.y = v14;
  v38.size.width = v16;
  v38.size.height = v18;
  v31 = (v10 * CGRectGetHeight(v38));
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v25);
  v33 = CGBitmapContextCreate(0, v30, v31, BitsPerComponent, (BitsPerComponent >> 3) * v30 + (BitsPerComponent >> 3) * v30 * NumberOfComponents, v25, v23);
  CGContextTranslateCTM(v33, 0.0, v31);
  CGContextScaleCTM(v33, v10, -v10);
  UIGraphicsPushContext(v33);
  [a1 drawInRect:{v12, v14, v16, v18}];
  UIGraphicsPopContext();
  Image = CGBitmapContextCreateImage(v33);
  CGColorSpaceRelease(v25);
  CGContextRelease(v33);
  v26 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:v10];
  CGImageRelease(Image);
LABEL_26:

  return v26;
}

- (CGImage)plk_colorSpace
{
  result = [a1 CGImage];
  if (result)
  {

    return CGImageGetColorSpace(result);
  }

  return result;
}

@end