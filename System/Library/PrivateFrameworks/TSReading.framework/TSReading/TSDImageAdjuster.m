@interface TSDImageAdjuster
- (CGImage)newFilteredImageForImage:(CGImage *)a3 enhancedImage:(CGImage *)a4;
- (CGImage)p_newImageFromCIImage:(id)a3 underlyingImage:(CGImage *)a4;
- (TSDImageAdjuster)init;
- (TSDImageAdjuster)initWithImageAdjustments:(id)a3;
- (void)dealloc;
@end

@implementation TSDImageAdjuster

- (TSDImageAdjuster)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageAdjuster init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageAdjuster.m"), 24, @"The -initWithImageAdjustments is the designated initializer of TSDImageAdjuster."}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"The -initWithImageAdjustments is the designated initializer of TSDImageAdjuster.", "-[TSDImageAdjuster init]"), 0}]);
}

- (TSDImageAdjuster)initWithImageAdjustments:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDImageAdjuster;
  v4 = [(TSDImageAdjuster *)&v6 init];
  if (v4)
  {
    v4->mImageAdjustments = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDImageAdjuster;
  [(TSDImageAdjuster *)&v3 dealloc];
}

- (CGImage)newFilteredImageForImage:(CGImage *)a3 enhancedImage:(CGImage *)a4
{
  v99[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  mImageAdjustments = self->mImageAdjustments;
  if (mImageAdjustments)
  {
    v8 = [(TSDImageAdjustments *)mImageAdjustments enhance];
    v9 = 0;
    if (a4)
    {
      if (v8)
      {
        v9 = *a4 != 0;
        if (*a4)
        {
          v4 = *a4;
        }
      }
    }

    v82 = [objc_alloc(MEMORY[0x277CBF758]) initWithCGImage:v4];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [(TSDImageAdjustments *)self->mImageAdjustments enhance];
    if (!v9 && v11)
    {
      v98 = *MEMORY[0x277CBFA10];
      v99[0] = MEMORY[0x277CBEC28];
      v12 = [v82 autoAdjustmentFiltersWithOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v99, &v98, 1)}];
      if (v12)
      {
        [v10 addObjectsFromArray:v12];
      }

      if (a4 && [v12 count])
      {
        v80 = a4;
        v81 = v4;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v91 objects:v97 count:16];
        v14 = v82;
        if (v13)
        {
          v15 = v13;
          v16 = *v92;
          v14 = v82;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v92 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v91 + 1) + 8 * i);
              [v18 setValue:v14 forKey:@"inputImage"];
              v14 = [v18 valueForKey:@"outputImage"];
            }

            v15 = [v12 countByEnumeratingWithState:&v91 objects:v97 count:16];
          }

          while (v15);
        }

        v19 = v14;
        v4 = v81;
        *v80 = [(TSDImageAdjuster *)self p_newImageFromCIImage:v19 underlyingImage:v81];
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v20 = [v12 countByEnumeratingWithState:&v87 objects:v96 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v88;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v88 != v22)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v87 + 1) + 8 * j) setValue:0 forKey:@"inputImage"];
            }

            v21 = [v12 countByEnumeratingWithState:&v87 objects:v96 count:16];
          }

          while (v21);
        }
      }
    }

    [(TSDImageAdjustments *)self->mImageAdjustments bottomLevel];
    if (v24 != 0.0 || ([(TSDImageAdjustments *)self->mImageAdjustments topLevel], v25 != 1.0))
    {
      v26 = [MEMORY[0x277CBF750] filterWithName:@"CIColorMatrix"];
      [v26 setDefaults];
      [(TSDImageAdjustments *)self->mImageAdjustments bottomLevel];
      v28 = v27;
      [(TSDImageAdjustments *)self->mImageAdjustments topLevel];
      v30 = v29 - v28;
      v31 = 1.0 / v30;
      v32 = -v28 / v30;
      [v26 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 1.0 / v30, 0.0, 0.0, 0.0), @"inputRVector"}];
      [v26 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, v31, 0.0, 0.0), @"inputGVector"}];
      [v26 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, 0.0, v31, 0.0), @"inputBVector"}];
      [v26 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", 0.0, 0.0, 0.0, 1.0), @"inputAVector"}];
      [v26 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:Z:W:", v32, v32, v32, 0.0), @"inputBiasVector"}];
      [v10 addObject:v26];
    }

    [(TSDImageAdjustments *)self->mImageAdjustments gamma];
    if (v33 != 0.0)
    {
      v34 = [MEMORY[0x277CBF750] filterWithName:@"CIGammaAdjust"];
      [v34 setDefaults];
      v35 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments gamma];
      [v34 setValue:objc_msgSend(v35 forKey:{"numberWithDouble:", pow(v36 / 2.5 + 1.0, 3.0)), @"inputPower"}];
      [v10 addObject:v34];
    }

    [(TSDImageAdjustments *)self->mImageAdjustments saturation];
    if (v37 != 0.0 || ([(TSDImageAdjustments *)self->mImageAdjustments contrast], v38 != 0.0))
    {
      v39 = [MEMORY[0x277CBF750] filterWithName:@"CIColorControls"];
      [v39 setDefaults];
      v40 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments saturation];
      [v39 setValue:objc_msgSend(v40 forKey:{"numberWithDouble:", v41 + 1.0), @"inputSaturation"}];
      v42 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments contrast];
      [v39 setValue:objc_msgSend(v42 forKey:{"numberWithDouble:", exp2(v43 + v43)), @"inputContrast"}];
      [v10 addObject:v39];
    }

    [(TSDImageAdjustments *)self->mImageAdjustments exposure];
    if (v44 != 0.0)
    {
      v45 = [MEMORY[0x277CBF750] filterWithName:@"CIExposureAdjust"];
      [v45 setDefaults];
      v46 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments exposure];
      [v45 setValue:objc_msgSend(v46 forKey:{"numberWithDouble:"), @"inputEV"}];
      [v10 addObject:v45];
    }

    [(TSDImageAdjustments *)self->mImageAdjustments highlights];
    if (v47 != 0.0 || ([(TSDImageAdjustments *)self->mImageAdjustments shadows], v48 != 0.0))
    {
      v49 = [MEMORY[0x277CBF750] filterWithName:@"CIHighlightShadowAdjust"];
      [v49 setDefaults];
      v50 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments highlights];
      [v49 setValue:objc_msgSend(v50 forKey:{"numberWithDouble:", (1.0 - v51) * 0.6), @"inputHighlightAmount"}];
      v52 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments shadows];
      [v49 setValue:objc_msgSend(v52 forKey:{"numberWithDouble:", v53 * 0.4), @"inputShadowAmount"}];
      [v10 addObject:v49];
    }

    [(TSDImageAdjustments *)self->mImageAdjustments sharpness];
    if (v54 != 0.0)
    {
      v55 = [MEMORY[0x277CBF750] filterWithName:@"CIUnsharpMask"];
      [v55 setDefaults];
      v56 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments sharpness];
      [v55 setValue:objc_msgSend(v56 forKey:{"numberWithDouble:", v57 * 4.0), @"inputRadius"}];
      v58 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments sharpness];
      [v55 setValue:objc_msgSend(v58 forKey:{"numberWithDouble:", v59 * 0.75), @"inputIntensity"}];
      [v10 addObject:v55];
    }

    [(TSDImageAdjustments *)self->mImageAdjustments denoise];
    if (v60 != 0.0)
    {
      v61 = [MEMORY[0x277CBF750] filterWithName:@"CINoiseReduction"];
      [v61 setDefaults];
      v62 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments denoise];
      [v61 setValue:objc_msgSend(v62 forKey:{"numberWithDouble:", v63 * 0.04), @"inputNoiseLevel"}];
      v64 = MEMORY[0x277CCABB0];
      [(TSDImageAdjustments *)self->mImageAdjustments denoise];
      [v61 setValue:objc_msgSend(v64 forKey:{"numberWithDouble:", v65 * 0.6), @"inputSharpness"}];
      [v10 addObject:v61];
    }

    [(TSDImageAdjustments *)self->mImageAdjustments temperature];
    if (v66 != 0.0 || ([(TSDImageAdjustments *)self->mImageAdjustments tint], v67 != 0.0))
    {
      v68 = [MEMORY[0x277CBF750] filterWithName:@"CITemperatureAndTint"];
      [v68 setDefaults];
      [v68 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:", 10000.0, 0.0), @"inputNeutral"}];
      [(TSDImageAdjustments *)self->mImageAdjustments temperature];
      v70 = v69 * 3500.0 + 10000.0;
      [(TSDImageAdjustments *)self->mImageAdjustments tint];
      [v68 setValue:objc_msgSend(MEMORY[0x277CBF788] forKey:{"vectorWithX:Y:", v70, v71 * 75.0), @"inputTargetNeutral"}];
      [v10 addObject:v68];
    }

    if ([v10 count])
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v72 = [v10 countByEnumeratingWithState:&v83 objects:v95 count:16];
      v73 = v82;
      if (v72)
      {
        v74 = v72;
        v75 = *v84;
        v73 = v82;
        do
        {
          for (k = 0; k != v74; ++k)
          {
            if (*v84 != v75)
            {
              objc_enumerationMutation(v10);
            }

            v77 = *(*(&v83 + 1) + 8 * k);
            [v77 setValue:v73 forKey:@"inputImage"];
            v73 = [v77 valueForKey:@"outputImage"];
          }

          v74 = [v10 countByEnumeratingWithState:&v83 objects:v95 count:16];
        }

        while (v74);
      }

      v78 = [(TSDImageAdjuster *)self p_newImageFromCIImage:v73 underlyingImage:v4];
    }

    else
    {

      return CGImageRetain(v4);
    }

    return v78;
  }

  return CGImageRetain(a3);
}

- (CGImage)p_newImageFromCIImage:(id)a3 underlyingImage:(CGImage *)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  Width = CGImageGetWidth(a4);
  CGImageGetHeight(a4);
  v7 = 3;
  AlphaInfo = CGImageGetAlphaInfo(a4);
  if (AlphaInfo - 5 < 2)
  {
    goto LABEL_4;
  }

  if (AlphaInfo == kCGImageAlphaOnly)
  {
    v7 = 2;
    goto LABEL_6;
  }

  if (AlphaInfo == kCGImageAlphaNone)
  {
LABEL_4:
    v7 = 1;
  }

LABEL_6:
  v9 = TSDBitmapContextCreate(v7, Width);
  v10 = TSDRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = MEMORY[0x277CBF740];
  v21 = *MEMORY[0x277CBF930];
  v22[0] = TSUDeviceRGBColorSpace();
  v18 = [objc_msgSend(v17 contextWithOptions:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1)), "createCGImage:fromRect:", a3, v10, v12, v14, v16}];
  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  CGContextDrawImage(v9, v23, v18);
  CGImageRelease(v18);
  Image = CGBitmapContextCreateImage(v9);
  CGContextRelease(v9);
  return Image;
}

@end