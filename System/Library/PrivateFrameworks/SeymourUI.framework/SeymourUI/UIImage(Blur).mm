@interface UIImage(Blur)
- (id)applyBlurWithRadius:()Blur tintColor:saturationDeltaFactor:maskImage:;
@end

@implementation UIImage(Blur)

- (id)applyBlurWithRadius:()Blur tintColor:saturationDeltaFactor:maskImage:
{
  v68 = a3;
  v83 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  [self size];
  if (v11 < 1.0 || ([self size], v12 < 1.0))
  {
    [self size];
    v14 = v13;
    [self size];
    NSLog(&cfstr_ErrorInvalidSi.isa, v14, v15, self);
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  if (![self CGImage])
  {
    NSLog(&cfstr_ErrorImageMust.isa, self);
    goto LABEL_4;
  }

  if (v10 && ![v10 CGImage])
  {
    NSLog(&cfstr_ErrorMaskimage.isa, v10);
    goto LABEL_4;
  }

  v18 = *MEMORY[0x277CBF348];
  v19 = *(MEMORY[0x277CBF348] + 8);
  [self size];
  v21 = v20;
  v23 = v22;
  selfCopy = self;
  v25 = selfCopy;
  v26 = fabs(v68.n128_f64[0] + -1.0);
  if (a2 > 0.00000011920929 || v26 > 0.00000011920929)
  {
    [selfCopy size];
    v29 = v28;
    v31 = v30;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v34 = v33;
    v85.width = v29;
    v85.height = v31;
    UIGraphicsBeginImageContextWithOptions(v85, 0, v34);

    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    [v25 size];
    CGContextTranslateCTM(CurrentContext, 0.0, -v36);
    cGImage = [v25 CGImage];
    v88.origin.x = v18;
    v88.origin.y = v19;
    v88.size.width = v21;
    v88.size.height = v23;
    CGContextDrawImage(CurrentContext, v88, cGImage);
    src.data = CGBitmapContextGetData(CurrentContext);
    src.width = CGBitmapContextGetWidth(CurrentContext);
    src.height = CGBitmapContextGetHeight(CurrentContext);
    src.rowBytes = CGBitmapContextGetBytesPerRow(CurrentContext);
    [v25 size];
    v39 = v38;
    v41 = v40;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v44 = v43;
    v86.width = v39;
    v86.height = v41;
    UIGraphicsBeginImageContextWithOptions(v86, 0, v44);

    v45 = UIGraphicsGetCurrentContext();
    dest.data = CGBitmapContextGetData(v45);
    dest.width = CGBitmapContextGetWidth(v45);
    dest.height = CGBitmapContextGetHeight(v45);
    dest.rowBytes = CGBitmapContextGetBytesPerRow(v45);
    if (a2 > 0.00000011920929)
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 scale];
      v48 = v47 * a2;

      LODWORD(mainScreen3) = vcvtmd_u64_f64(v48 * 3.0 * 2.50662827 * 0.25 + 0.5);
      vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, mainScreen3 | 1, mainScreen3 | 1, 0, 8u);
      vImageBoxConvolve_ARGB8888(&dest, &src, 0, 0, 0, mainScreen3 | 1, mainScreen3 | 1, 0, 8u);
      vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, mainScreen3 | 1, mainScreen3 | 1, 0, 8u);
    }

    if (v26 > 0.00000011920929)
    {
      v71 = v68.n128_f64[0] * 0.9278 + 0.0722;
      v72 = v68.n128_f64[0] * -0.0722 + 0.0722;
      v73 = v72;
      v75 = vmlaq_n_f64(vdupq_n_s64(0x3FE6E2EB1C432CA5uLL), xmmword_20C14BF90, v68.n128_f64[0]);
      v76 = v75.f64[0];
      v74 = 0;
      v77 = 0;
      v49 = vmlaq_n_f64(vdupq_n_s64(0x3FCB367A0F9096BCuLL), xmmword_20C14BFA0, v68.n128_f64[0]);
      v78 = v49.f64[0];
      v79 = v49;
      v80 = 0u;
      v81 = 0u;
      v82 = 0x3FF0000000000000;
      v50 = 0;
      v51 = &v71;
      v52 = vdupq_n_s64(0x4070000000000000uLL);
      do
      {
        v53 = *v51;
        v54 = *(v51 + 2);
        v51 += 4;
        *(&v67 + v50) = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v53, v52)), vmulq_f64(v54, v52)))));
        v50 += 8;
      }

      while (v50 != 32);
      if (a2 > 0.00000011920929)
      {
        vImageMatrixMultiply_ARGB8888(&dest, &src, &v67, 256, 0, 0, 0);
        UIGraphicsEndImageContext();
        v27 = UIGraphicsGetImageFromCurrentImageContext();

LABEL_26:
        UIGraphicsEndImageContext();
        goto LABEL_27;
      }

      vImageMatrixMultiply_ARGB8888(&src, &dest, &v67, 256, 0, 0, 0);
    }

    v27 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    goto LABEL_26;
  }

  v27 = selfCopy;
LABEL_27:
  [v25 size];
  v56 = v55;
  v58 = v57;
  mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen4 scale];
  v61 = v60;
  v87.width = v56;
  v87.height = v58;
  UIGraphicsBeginImageContextWithOptions(v87, 0, v61);

  v62 = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(v62, 1.0, -1.0);
  [v25 size];
  CGContextTranslateCTM(v62, 0.0, -v63);
  cGImage2 = [v25 CGImage];
  v89.origin.x = v18;
  v89.origin.y = v19;
  v89.size.width = v21;
  v89.size.height = v23;
  CGContextDrawImage(v62, v89, cGImage2);
  if (a2 > 0.00000011920929)
  {
    CGContextSaveGState(v62);
    if (v10)
    {
      cGImage3 = [v10 CGImage];
      v90.origin.x = v18;
      v90.origin.y = v19;
      v90.size.width = v21;
      v90.size.height = v23;
      CGContextClipToMask(v62, v90, cGImage3);
    }

    cGImage4 = [v27 CGImage];
    v91.origin.x = v18;
    v91.origin.y = v19;
    v91.size.width = v21;
    v91.size.height = v23;
    CGContextDrawImage(v62, v91, cGImage4);
    CGContextRestoreGState(v62);
  }

  if (v9)
  {
    CGContextSaveGState(v62);
    CGContextSetFillColorWithColor(v62, [v9 CGColor]);
    v92.origin.x = v18;
    v92.origin.y = v19;
    v92.size.width = v21;
    v92.size.height = v23;
    CGContextFillRect(v62, v92);
    CGContextRestoreGState(v62);
  }

  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

LABEL_5:

  return v16;
}

@end