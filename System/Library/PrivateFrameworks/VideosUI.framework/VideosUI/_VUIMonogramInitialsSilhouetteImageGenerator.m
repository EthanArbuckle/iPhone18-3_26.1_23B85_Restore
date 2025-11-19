@interface _VUIMonogramInitialsSilhouetteImageGenerator
+ (id)monogramImageWithDescription:(id)a3;
+ (void)drawInitialsWithRect:(CGRect)a3 andDescription:(id)a4;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7;
- (void)cancelLoad:(id)a3;
@end

@implementation _VUIMonogramInitialsSilhouetteImageGenerator

+ (void)drawInitialsWithRect:(CGRect)a3 andDescription:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v69 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 fillColor];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] blackColor];
  }

  v12 = v11;

  [v8 size];
  v14 = v13;
  [v8 cornerRadius];
  if (v15 <= 0.0)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v18 = [v8 gradientStartColor];
    v19 = [v8 gradientEndColor];
    v20 = v19;
    if (!v18 || !v19)
    {
      v21 = v12;

      v18 = v21;
      v20 = v18;
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_1E4297490;
    v66[0] = [v18 CGColor];
    v66[1] = [v20 CGColor];
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v24 = CGGradientCreateWithColors(DeviceRGB, v23, locations);
    if (v24)
    {
      v25 = v24;
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      MaxY = CGRectGetMaxY(v74);
      CGContextSaveGState(CurrentContext);
      CGContextTranslateCTM(CurrentContext, 0.0, height);
      CGContextScaleCTM(CurrentContext, 1.0, -1.0);
      v70.x = 0.0;
      v70.y = 0.0;
      v72.x = 0.0;
      v72.y = MaxY;
      CGContextDrawLinearGradient(CurrentContext, v25, v70, v72, 3u);
      CGContextRestoreGState(CurrentContext);
      CGGradientRelease(v25);
    }

    else
    {
      [v12 setFill];
      v76.origin.x = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      UIRectFill(v76);
    }

    CFRelease(DeviceRGB);
  }

  else
  {
    v16 = v15;
    if (fabs(v14 * 0.5) == v15)
    {
      [VUIBezierPath bezierPathWithOvalInRect:x, y, width, height];
    }

    else
    {
      [v8 size];
      [VUIBezierPath vui_bezierPathWithRoundedRect:x radius:y, width, height, v16 * (fmax(width, height) / fmax(v27, v28))];
    }
    v18 = ;
    v29 = UIGraphicsGetCurrentContext();
    v20 = [v8 gradientStartColor];
    v30 = [v8 gradientEndColor];
    v31 = v30;
    if (!v20 || !v30)
    {
      v32 = v12;

      v20 = v32;
      v31 = v20;
    }

    v33 = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_1E4297490;
    v67[0] = [v20 CGColor];
    v67[1] = [v31 CGColor];
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    v35 = CGGradientCreateWithColors(v33, v34, locations);
    if (v35)
    {
      v36 = v35;
      v75.origin.x = x;
      v75.origin.y = y;
      v75.size.width = width;
      v75.size.height = height;
      v37 = CGRectGetMaxY(v75);
      CGContextSaveGState(v29);
      CGContextAddPath(v29, [v18 CGPath]);
      CGContextTranslateCTM(v29, 0.0, height);
      CGContextScaleCTM(v29, 1.0, -1.0);
      CGContextClip(v29);
      v71.x = 0.0;
      v71.y = 0.0;
      v73.x = 0.0;
      v73.y = v37;
      CGContextDrawLinearGradient(v29, v36, v71, v73, 3u);
      CGContextRestoreGState(v29);
      CGGradientRelease(v36);
    }

    else
    {
      [v18 addClip];
      [v12 set];
      [v18 fill];
    }

    CFRelease(v33);
  }

  v38 = [v8 font];
  v39 = [v8 text];
  if ([v39 length])
  {
    v40 = [v8 textColor];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v43 = v42;

    v44 = objc_alloc(MEMORY[0x1E696AAB0]);
    v45 = *MEMORY[0x1E69DB650];
    v64[0] = *MEMORY[0x1E69DB648];
    v64[1] = v45;
    v65[0] = v38;
    v65[1] = v43;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    v47 = [v44 initWithString:v39 attributes:v46];

    [v47 size];
    v49 = v48;
    v51 = v50;
    [v8 specialOffsetForString:v39];
    [VUIUtilities vuiRectCenteredXInRect:0.0 boundsToCenterIn:0.0 offset:v49, v51, x, y, width, height, v52];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    [v38 capHeight];
    v60 = (height - v59) * -0.5;
    [v38 pointSize];
    v62 = height - v61 + v60;
    v63 = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(v63, kCGBlendModeCopy);
    [v47 drawInRect:{v54, v62, v56, v58}];
  }
}

+ (id)monogramImageWithDescription:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  v7 = v6;
  [v3 defaultImageSize];
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E69DF708] preferredFormat];
  [v12 setPreferredRange:2];
  v13 = MEMORY[0x1E69DF708];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77___VUIMonogramInitialsSilhouetteImageGenerator_monogramImageWithDescription___block_invoke;
  v23[3] = &unk_1E87349F8;
  v25 = 0;
  v26 = 0;
  v27 = v9;
  v28 = v11;
  v14 = v3;
  v24 = v14;
  v15 = [v13 imageWithSize:v12 format:v23 actions:{v9, v11}];
  if (v9 != v5 || v11 != v7)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77___VUIMonogramInitialsSilhouetteImageGenerator_monogramImageWithDescription___block_invoke_2;
    v17[3] = &unk_1E87349F8;
    v19 = 0;
    v20 = 0;
    v18 = v15;
    v21 = v5;
    v22 = v7;
    v15 = [MEMORY[0x1E69DF708] imageWithSize:v12 format:v17 actions:{v5, v7}];
  }

  return v15;
}

- (id)imageKeyForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 preferedMonogramType] == 2)
  {
    v6 = [v5 text];
    v7 = [v5 font];
    v8 = [v7 fontName];
    v9 = [v5 fillColor];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E69DC888] blackColor];
    }

    v16 = v11;

    v34 = 0.0;
    v35 = 0.0;
    v32 = 0;
    v33 = 0.0;
    [MEMORY[0x1E69DF6D0] vuiColor:v16 getRed:&v35 green:&v34 blue:&v33 alpha:&v32];
    v17 = MEMORY[0x1E696AEC0];
    if ([(__CFString *)v6 length])
    {
      v18 = v6;
    }

    else
    {
      v18 = &stru_1F5DB25C0;
    }

    [v7 pointSize];
    v20 = v19;
    [v5 cornerRadius];
    v21 = &xmmword_1E4297000;
    LODWORD(v21) = vcvtad_u64_f64(v35 * 255.0);
    LODWORD(v22) = vcvtad_u64_f64(v34 * 255.0);
    LODWORD(v23) = vcvtad_u64_f64(v33 * 255.0);
    v12 = [v17 stringWithFormat:@"%@_%@_%.0f_%.0f_%02X%02X%02X%.1f", v18, v8, v20, v24, v21, v22, v23, v32];
  }

  else
  {
    if ([v5 preferedMonogramType] != 1 && objc_msgSend(v5, "preferedMonogramType"))
    {
      v12 = 0;
      goto LABEL_25;
    }

    v13 = [v5 fillColor];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x1E69DC888] blackColor];
    }

    v6 = v15;

    v34 = 0.0;
    v35 = 0.0;
    v32 = 0;
    v33 = 0.0;
    if (v6)
    {
      [MEMORY[0x1E69DF6D0] vuiColor:v6 getRed:&v35 green:&v34 blue:&v33 alpha:&v32];
    }

    v25 = MEMORY[0x1E696AEC0];
    if ([v5 shouldFallBackToSilhouette])
    {
      v26 = @"yes-man";
    }

    else
    {
      v26 = @"no-man";
    }

    [v5 cornerRadius];
    v27 = &xmmword_1E4297000;
    LODWORD(v27) = vcvtad_u64_f64(v35 * 255.0);
    LODWORD(v28) = vcvtad_u64_f64(v34 * 255.0);
    LODWORD(v29) = vcvtad_u64_f64(v33 * 255.0);
    v12 = [v25 stringWithFormat:@"Silhouette_%@_%.0f_%02X%02X%02X%.1f", v26, v30, v27, v28, v29, v32];
  }

LABEL_25:

  return v12;
}

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7
{
  v9 = a3;
  v10 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E696AAE0]);
    objc_initWeak(&location, v13);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __122___VUIMonogramInitialsSilhouetteImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke;
    v20 = &unk_1E872DE00;
    objc_copyWeak(&v23, &location);
    v21 = v12;
    v22 = v10;
    [v13 addExecutionBlock:&v17];
    v14 = [(_VUIMonogramImageGenerator *)self imageGeneratorQueue:v17];
    [v14 addOperation:v13];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:107 userInfo:0];
    (*(v10 + 2))(v10, 0, 0, 0, 0, v15);

    v13 = 0;
  }

  return v13;
}

- (void)cancelLoad:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 cancel];
  }
}

@end