@interface _TVUberBlurImageDecorator
- (id)decorate:(id)decorate scaledWithSize:(CGSize)size croppedToFit:(BOOL)fit;
@end

@implementation _TVUberBlurImageDecorator

- (id)decorate:(id)decorate scaledWithSize:(CGSize)size croppedToFit:(BOOL)fit
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D755B8];
  decorateCopy = decorate;
  v8 = [v6 alloc];
  image = [decorateCopy image];

  v10 = [v8 initWithCGImage:image];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v13 = v12;
  v15 = v14;

  if (self->_blurType > 1)
  {
    gradientColor = [(_TVUberBlurImageDecorator *)self gradientColor];
    v42 = gradientColor;
    if (gradientColor)
    {
      v43 = gradientColor;
    }

    else
    {
      v43 = [MEMORY[0x277D75348] colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:0.2];
    }

    v39 = v43;

    v44 = _TVBlurredImageWithOptionsAndOverlayColorForImage(v10, 13, v39, v13, v15, 2.0);
    v45 = v44;
    if (v44 && (v46 = CGImageRetain([v44 CGImage])) != 0 || objc_msgSend(v45, "ioSurface") && (objc_msgSend(v45, "ioSurface"), (v46 = _UICreateCGImageFromIOSurfaceWithOptions()) != 0))
    {
      v84 = v45;
      image = v46;
      v86 = v10;
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 scale];
      v49 = v48;
      v93.width = v13;
      v93.height = v15;
      UIGraphicsBeginImageContextWithOptions(v93, 0, v49);

      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextTranslateCTM(CurrentContext, 0.0, v15);
      CGContextScaleCTM(CurrentContext, 1.0, -1.0);
      v51 = +[TVMLUtilities TVMLKitBundle];
      v52 = [v51 tv_imageNamed:@"Music_Uber_Blur_Gradient"];

      cGImage = [v52 CGImage];
      Width = CGImageGetWidth(cGImage);
      Height = CGImageGetHeight(cGImage);
      BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
      BitsPerPixel = CGImageGetBitsPerPixel(cGImage);
      BytesPerRow = CGImageGetBytesPerRow(cGImage);
      DataProvider = CGImageGetDataProvider(cGImage);
      Decode = CGImageGetDecode(cGImage);
      v61 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, Decode, 0);
      CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
      v10 = v86;
      [v86 size];
      v63 = v62;
      v65 = v64;
      v66 = v13 / v62;
      v67 = v15 / v64;
      if (v66 < v67)
      {
        v66 = v67;
      }

      CGAffineTransformMakeScale(&v88, v66, v66);
      v97.origin.x = 0.0;
      v97.origin.y = 0.0;
      v97.size.width = v63;
      v97.size.height = v65;
      v98 = CGRectApplyAffineTransform(v97, &v88);
      v68 = *MEMORY[0x277CBF348];
      v69 = *(MEMORY[0x277CBF348] + 8);
      [TVMLUtilities centerRect:v98.origin.x inRect:v98.origin.y, v98.size.width, v98.size.height, *MEMORY[0x277CBF348], v69, v13, v15];
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v77 = v76;
      cGImage2 = [v86 CGImage];
      v99.origin.x = v71;
      v99.origin.y = v73;
      v99.size.width = v75;
      v99.size.height = v77;
      CGContextDrawImage(CurrentContext, v99, cGImage2);
      CGContextSetBlendMode(CurrentContext, kCGBlendModeNormal);
      v79 = CGImageCreateWithMask(image, v61);
      [v52 size];
      v100.size.width = v80;
      v100.size.height = v81;
      v100.origin.x = v68;
      v100.origin.y = v69;
      CGContextDrawImage(CurrentContext, v100, v79);
      v82 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      if (v82)
      {
        v40 = -[TVImage initWithCGImageRef:preserveAlpha:]([TVImage alloc], "initWithCGImageRef:preserveAlpha:", [v82 CGImage], 0);
      }

      else
      {
        v40 = 0;
      }

      v45 = v84;
      CFRelease(v79);
      CFRelease(v61);
      CFRelease(image);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    [v10 size];
    v17 = v16;
    v19 = v18;
    v20 = v13 / v16;
    v21 = v15 / v18;
    if (v20 < v21)
    {
      v20 = v21;
    }

    CGAffineTransformMakeScale(&v88, v20, v20);
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = v17;
    v95.size.height = v19;
    v96 = CGRectApplyAffineTransform(v95, &v88);
    x = v96.origin.x;
    y = v96.origin.y;
    v24 = v96.size.width;
    v25 = v96.size.height;
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 scale];
    v28 = v27;
    v91.width = v13;
    v91.height = v15;
    UIGraphicsBeginImageContextWithOptions(v91, 0, v28);

    v29 = UIGraphicsGetCurrentContext();
    CGContextSaveGState(v29);
    [TVMLUtilities centerRect:x inRect:y, v24, v25, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v13, v15];
    v30 = 1.0;
    [v10 drawInRect:17 blendMode:? alpha:?];
    CGContextRestoreGState(v29);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (DeviceRGB)
    {
      v32 = DeviceRGB;
      if (self->_blurStyle != 1)
      {
        v30 = 0.0;
      }

      *&v88.a = xmmword_26CE87A60;
      v33 = [MEMORY[0x277D75348] colorWithWhite:v30 alpha:0.2];
      v87[0] = [v33 CGColor];
      v34 = [MEMORY[0x277D75348] colorWithWhite:v30 alpha:0.0];
      v87[1] = [v34 CGColor];
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];

      v36 = CGGradientCreateWithColors(v32, v35, &v88.a);
      if (v36)
      {
        v37 = v36;
        v38 = 0.598958333;
        if (self->_blurType == 1)
        {
          v38 = 0.5;
        }

        v92.x = v13 * v38;
        v94.x = v92.x + v13 * 0.104166667;
        v92.y = 0.0;
        v94.y = 0.0;
        CGContextDrawLinearGradient(v29, v36, v92, v94, 3u);
        CFRelease(v37);
      }

      CFRelease(v32);
    }

    v39 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v39)
    {
      v40 = -[TVImage initWithCGImageRef:preserveAlpha:]([TVImage alloc], "initWithCGImageRef:preserveAlpha:", [v39 CGImage], 0);
    }

    else
    {
      v40 = 0;
    }
  }

  return v40;
}

@end