@interface _VUIMonogramInitialsSilhouetteImageGenerator
+ (id)monogramImageWithDescription:(id)description;
+ (void)drawInitialsWithRect:(CGRect)rect andDescription:(id)description;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _VUIMonogramInitialsSilhouetteImageGenerator

+ (void)drawInitialsWithRect:(CGRect)rect andDescription:(id)description
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v69 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  fillColor = [descriptionCopy fillColor];
  v10 = fillColor;
  if (fillColor)
  {
    blackColor = fillColor;
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  v12 = blackColor;

  [descriptionCopy size];
  v14 = v13;
  [descriptionCopy cornerRadius];
  if (v15 <= 0.0)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    gradientStartColor = [descriptionCopy gradientStartColor];
    gradientEndColor = [descriptionCopy gradientEndColor];
    gradientStartColor2 = gradientEndColor;
    if (!gradientStartColor || !gradientEndColor)
    {
      v21 = v12;

      gradientStartColor = v21;
      gradientStartColor2 = gradientStartColor;
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_1E4297490;
    v66[0] = [gradientStartColor CGColor];
    v66[1] = [gradientStartColor2 CGColor];
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
      [descriptionCopy size];
      [VUIBezierPath vui_bezierPathWithRoundedRect:x radius:y, width, height, v16 * (fmax(width, height) / fmax(v27, v28))];
    }
    gradientStartColor = ;
    v29 = UIGraphicsGetCurrentContext();
    gradientStartColor2 = [descriptionCopy gradientStartColor];
    gradientEndColor2 = [descriptionCopy gradientEndColor];
    v31 = gradientEndColor2;
    if (!gradientStartColor2 || !gradientEndColor2)
    {
      v32 = v12;

      gradientStartColor2 = v32;
      v31 = gradientStartColor2;
    }

    v33 = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_1E4297490;
    v67[0] = [gradientStartColor2 CGColor];
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
      CGContextAddPath(v29, [gradientStartColor CGPath]);
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
      [gradientStartColor addClip];
      [v12 set];
      [gradientStartColor fill];
    }

    CFRelease(v33);
  }

  font = [descriptionCopy font];
  text = [descriptionCopy text];
  if ([text length])
  {
    textColor = [descriptionCopy textColor];
    v41 = textColor;
    if (textColor)
    {
      whiteColor = textColor;
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v43 = whiteColor;

    v44 = objc_alloc(MEMORY[0x1E696AAB0]);
    v45 = *MEMORY[0x1E69DB650];
    v64[0] = *MEMORY[0x1E69DB648];
    v64[1] = v45;
    v65[0] = font;
    v65[1] = v43;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    v47 = [v44 initWithString:text attributes:v46];

    [v47 size];
    v49 = v48;
    v51 = v50;
    [descriptionCopy specialOffsetForString:text];
    [VUIUtilities vuiRectCenteredXInRect:0.0 boundsToCenterIn:0.0 offset:v49, v51, x, y, width, height, v52];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    [font capHeight];
    v60 = (height - v59) * -0.5;
    [font pointSize];
    v62 = height - v61 + v60;
    v63 = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(v63, kCGBlendModeCopy);
    [v47 drawInRect:{v54, v62, v56, v58}];
  }
}

+ (id)monogramImageWithDescription:(id)description
{
  descriptionCopy = description;
  [descriptionCopy size];
  v5 = v4;
  v7 = v6;
  [descriptionCopy defaultImageSize];
  v9 = v8;
  v11 = v10;
  preferredFormat = [MEMORY[0x1E69DF708] preferredFormat];
  [preferredFormat setPreferredRange:2];
  v13 = MEMORY[0x1E69DF708];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77___VUIMonogramInitialsSilhouetteImageGenerator_monogramImageWithDescription___block_invoke;
  v23[3] = &unk_1E87349F8;
  v25 = 0;
  v26 = 0;
  v27 = v9;
  v28 = v11;
  v14 = descriptionCopy;
  v24 = v14;
  v15 = [v13 imageWithSize:preferredFormat format:v23 actions:{v9, v11}];
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
    v15 = [MEMORY[0x1E69DF708] imageWithSize:preferredFormat format:v17 actions:{v5, v7}];
  }

  return v15;
}

- (id)imageKeyForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 preferedMonogramType] == 2)
  {
    text = [v5 text];
    font = [v5 font];
    fontName = [font fontName];
    fillColor = [v5 fillColor];
    v10 = fillColor;
    if (fillColor)
    {
      blackColor = fillColor;
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
    }

    v16 = blackColor;

    v34 = 0.0;
    v35 = 0.0;
    v32 = 0;
    v33 = 0.0;
    [MEMORY[0x1E69DF6D0] vuiColor:v16 getRed:&v35 green:&v34 blue:&v33 alpha:&v32];
    v17 = MEMORY[0x1E696AEC0];
    if ([(__CFString *)text length])
    {
      v18 = text;
    }

    else
    {
      v18 = &stru_1F5DB25C0;
    }

    [font pointSize];
    v20 = v19;
    [v5 cornerRadius];
    v21 = &xmmword_1E4297000;
    LODWORD(v21) = vcvtad_u64_f64(v35 * 255.0);
    LODWORD(v22) = vcvtad_u64_f64(v34 * 255.0);
    LODWORD(v23) = vcvtad_u64_f64(v33 * 255.0);
    v12 = [v17 stringWithFormat:@"%@_%@_%.0f_%.0f_%02X%02X%02X%.1f", v18, fontName, v20, v24, v21, v22, v23, v32];
  }

  else
  {
    if ([v5 preferedMonogramType] != 1 && objc_msgSend(v5, "preferedMonogramType"))
    {
      v12 = 0;
      goto LABEL_25;
    }

    fillColor2 = [v5 fillColor];
    v14 = fillColor2;
    if (fillColor2)
    {
      blackColor2 = fillColor2;
    }

    else
    {
      blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    }

    text = blackColor2;

    v34 = 0.0;
    v35 = 0.0;
    v32 = 0;
    v33 = 0.0;
    if (text)
    {
      [MEMORY[0x1E69DF6D0] vuiColor:text getRed:&v35 green:&v34 blue:&v33 alpha:&v32];
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

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objectCopy;
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
    v22 = handlerCopy;
    [v13 addExecutionBlock:&v17];
    v14 = [(_VUIMonogramImageGenerator *)self imageGeneratorQueue:v17];
    [v14 addOperation:v13];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:107 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v15);

    v13 = 0;
  }

  return v13;
}

- (void)cancelLoad:(id)load
{
  loadCopy = load;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [loadCopy cancel];
  }
}

@end