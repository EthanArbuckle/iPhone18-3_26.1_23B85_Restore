@interface TUIKeyboardInputModeIconRenderer
- (id)attributedStringForPrimaryLabel:(id)label secondaryLabel:(id)secondaryLabel withTintColor:(id)color detailTintColor:(id)tintColor language:(id)language;
- (id)attributedStringWithText:(id)text color:(id)color;
- (id)imageForPrimaryLabel:(id)label secondaryLabel:(id)secondaryLabel withConfiguration:(id)configuration;
- (void)drawPrimaryLabel:(id)label secondaryLabel:(id)secondaryLabel withConfiguration:(id)configuration inContext:(CGContext *)context;
@end

@implementation TUIKeyboardInputModeIconRenderer

- (id)imageForPrimaryLabel:(id)label secondaryLabel:(id)secondaryLabel withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  secondaryLabelCopy = secondaryLabel;
  labelCopy = label;
  [configurationCopy size];
  v12 = v11;
  v14 = v13;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v17 = v16;

  if (v17 >= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  v22.width = v12;
  v22.height = v14;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v18);
  [(TUIKeyboardInputModeIconRenderer *)self drawPrimaryLabel:labelCopy secondaryLabel:secondaryLabelCopy withConfiguration:configurationCopy inContext:UIGraphicsGetCurrentContext()];

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (void)drawPrimaryLabel:(id)label secondaryLabel:(id)secondaryLabel withConfiguration:(id)configuration inContext:(CGContext *)context
{
  v118[2] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  secondaryLabelCopy = secondaryLabel;
  configurationCopy = configuration;
  v14 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  [configurationCopy size];
  v16 = v15;
  v18 = v17;
  style = [configurationCopy style];
  if (style == 3)
  {
    v127.origin.x = v14;
    v127.origin.y = v13;
    v127.size.width = v16;
    v127.size.height = v18;
    v128 = CGRectInset(v127, v18 / 3.0, 2.5);
    x = v128.origin.x;
    y = v128.origin.y;
    width = v128.size.width;
    height = v128.size.height;
    UIGraphicsPushContext(context);
    v39 = MEMORY[0x1E69DC728];
    v129.origin.x = v14;
    v129.origin.y = v13;
    v129.size.width = v16;
    v129.size.height = v18;
    v130 = CGRectInset(v129, 0.75, 0.75);
    v38 = [v39 _bezierPathWithPillRect:v130.origin.x cornerRadius:{v130.origin.y, v130.size.width, v130.size.height, v18 * 0.5}];
    goto LABEL_7;
  }

  if (style == 2)
  {
    v123.origin.x = v14;
    v123.origin.y = v13;
    v123.size.width = v16;
    v123.size.height = v18;
    v124 = CGRectInset(v123, 2.5, 2.5);
    x = v124.origin.x;
    y = v124.origin.y;
    width = v124.size.width;
    height = v124.size.height;
    UIGraphicsPushContext(context);
    v32 = MEMORY[0x1E69DC728];
    v125.origin.x = v14;
    v125.origin.y = v13;
    v125.size.width = v16;
    v125.size.height = v18;
    v126 = CGRectInset(v125, 0.75, 0.75);
    v33 = v126.origin.x;
    v34 = v126.origin.y;
    v35 = v126.size.width;
    v36 = v126.size.height;
    [configurationCopy backgroundCornerRadius];
    v38 = [v32 _bezierPathWithArcRoundedRect:v33 cornerRadius:{v34, v35, v36, v37}];
LABEL_7:
    v30 = v38;
    backgroundColor = [configurationCopy backgroundColor];
    [backgroundColor setFill];

    [v30 fill];
    goto LABEL_8;
  }

  if (style != 1)
  {
    goto LABEL_9;
  }

  v119.origin.x = v14;
  v119.origin.y = v13;
  v119.size.width = v16;
  v119.size.height = v18;
  v120 = CGRectInset(v119, 2.5, 2.5);
  x = v120.origin.x;
  y = v120.origin.y;
  width = v120.size.width;
  height = v120.size.height;
  UIGraphicsPushContext(context);
  v24 = MEMORY[0x1E69DC728];
  v121.origin.x = v14;
  v121.origin.y = v13;
  v121.size.width = v16;
  v121.size.height = v18;
  v122 = CGRectInset(v121, 0.75, 0.75);
  v25 = v122.origin.x;
  v26 = v122.origin.y;
  v27 = v122.size.width;
  v28 = v122.size.height;
  [configurationCopy backgroundCornerRadius];
  v30 = [v24 _bezierPathWithPillRect:v25 cornerRadius:{v26, v27, v28, v29}];
  backgroundColor2 = [configurationCopy backgroundColor];
  [backgroundColor2 setStroke];

  [v30 setLineWidth:1.5];
  [v30 stroke];
LABEL_8:
  v14 = x;
  v13 = y;
  v16 = width;
  v18 = height;
  UIGraphicsPopContext();

LABEL_9:
  artwork = [configurationCopy artwork];

  if (artwork)
  {
    v42 = MEMORY[0x1E69DCAB8];
    artwork2 = [configurationCopy artwork];
    v44 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v45 = [v42 imageNamed:artwork2 inBundle:v44];

    tintColor = [configurationCopy tintColor];
    v47 = [v45 imageWithTintColor:tintColor renderingMode:2];

    [v47 size];
    v49 = v48;
    [v47 size];
    v52 = v51;
    if (v18 >= v49)
    {
      v66 = v50;
      [configurationCopy baseFontSize];
      v68 = v67 / 17.0 * (v18 / v52);
      v69 = v66 * v68;
      v70 = v52 * v68;
      v71 = 0.5;
      v72 = v14 + (v16 - v69) * 0.5;
      v73 = v18 - v70;
    }

    else
    {
      v53 = v51 * 0.62;
      [v47 size];
      if (v18 >= v53)
      {
        v56 = v54;
        v57 = v55;
      }

      else
      {
        v56 = v16 / 0.62;
        v57 = v18 / 0.62;
      }

      v131.origin.x = v14;
      v131.origin.y = v13;
      v131.size.width = v16;
      v131.size.height = v18;
      v132 = CGRectInset(v131, (v56 - v16) * -0.5, (v57 - v18) * -0.5);
      v74 = v132.origin.x;
      v13 = v132.origin.y;
      v75 = v132.size.width;
      v76 = v132.size.height;
      [configurationCopy baseFontSize];
      v78 = v77 / 17.0 * (v76 / v57);
      v69 = v56 * v78;
      v70 = v57 * v78;
      v71 = 0.5;
      v72 = v74 + (v75 - v69) * 0.5;
      v73 = v76 - v70;
    }

    v79 = v13 + v73 * v71;
    UIGraphicsPushContext(context);
    [v47 drawInRect:{v72, v79, v69, v70}];
    UIGraphicsPopContext();
  }

  else
  {
    [configurationCopy baseFontSize];
    v59 = v58;
    tintColor2 = [configurationCopy tintColor];
    tintColor3 = [configurationCopy tintColor];
    [configurationCopy detailLabelAlpha];
    v62 = [tintColor3 colorWithAlphaComponent:?];
    language = [configurationCopy language];
    v64 = [(TUIKeyboardInputModeIconRenderer *)self attributedStringForPrimaryLabel:labelCopy secondaryLabel:secondaryLabelCopy withTintColor:tintColor2 detailTintColor:v62 language:language];

    if ([v64 length] > 1)
    {
      v59 = v59 + -1.0;
    }

    v108 = secondaryLabelCopy;
    v109 = labelCopy;
    if ([v64 length] >= 2)
    {
      if ([v64 length] == 2)
      {
        v65 = 100.0;
      }

      else if ([v64 length] == 3)
      {
        v65 = 65.0;
      }

      else if ([secondaryLabelCopy length] >= 2)
      {
        v65 = 30.0;
      }

      else
      {
        v65 = 40.0;
      }
    }

    else
    {
      v65 = 110.0;
    }

    v80 = objc_alloc(MEMORY[0x1E69DB880]);
    v117[0] = *MEMORY[0x1E6965898];
    v81 = *MEMORY[0x1E69658E0];
    v116[0] = *MEMORY[0x1E69658B8];
    v82 = *MEMORY[0x1E6965970];
    v115[0] = v81;
    v115[1] = v82;
    v83 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965960]];
    v116[1] = v83;
    v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
    v118[0] = v84;
    v117[1] = *MEMORY[0x1E69658F8];
    v113[0] = &unk_1F03D8C90;
    v85 = [MEMORY[0x1E696AD98] numberWithDouble:v65];
    v113[1] = &unk_1F03D8CA8;
    v114[0] = v85;
    v86 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    v114[1] = v86;
    v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];
    v118[1] = v87;
    v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:2];
    v89 = [v80 initWithFontAttributes:v88];

    fontFamily = [configurationCopy fontFamily];

    if (fontFamily)
    {
      fontFamily2 = [configurationCopy fontFamily];
      v92 = [v89 fontDescriptorWithFamily:fontFamily2];

      v89 = v92;
    }

    v93 = *MEMORY[0x1E69DB648];
    v94 = 5;
    while (1)
    {
      v95 = [MEMORY[0x1E69DB878] fontWithDescriptor:v89 size:{v59, v108, v109}];
      [v64 addAttribute:v93 value:v95 range:{0, objc_msgSend(v64, "length")}];
      [v64 size];
      v97 = v96 / v16;
      v99 = v98 / v18;
      if (v97 <= 1.0 && v99 <= 1.0)
      {
        break;
      }

      if (v97 < v99)
      {
        v97 = v99;
      }

      v101 = v59 / v97;
      if (v59 + -0.5 >= v101)
      {
        v59 = v101;
      }

      else
      {
        v59 = v59 + -0.5;
      }

      if (!--v94)
      {
        goto LABEL_42;
      }
    }

LABEL_42:
    v102 = CTLineCreateWithAttributedString(v64);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v102, 0x80uLL);
    v103 = BoundsWithOptions.size.width;
    v134 = CTLineGetBoundsWithOptions(v102, 8uLL);
    v134.size = *(MEMORY[0x1E695EFD0] + 16);
    *&v112.a = *MEMORY[0x1E695EFD0];
    *&v112.c = v134.size;
    *&v112.tx = *(MEMORY[0x1E695EFD0] + 32);
    v104 = v14 + (v16 - v103) * 0.5;
    v105 = v13 + v134.origin.y + (v18 + v134.size.height) * 0.5;
    *&transform.a = *&v112.a;
    *&transform.c = v134.size;
    *&transform.tx = *&v112.tx;
    CGAffineTransformScale(&v112, &transform, 1.0, -1.0);
    v110 = v112;
    CGAffineTransformTranslate(&transform, &v110, 0.0, v18);
    v112 = transform;
    v110 = transform;
    CGAffineTransformInvert(&transform, &v110);
    v106 = transform.tx + v105 * transform.c + transform.a * v104;
    v107 = transform.ty + v105 * transform.d + transform.b * v104;
    CGContextSaveGState(context);
    transform = v112;
    CGContextConcatCTM(context, &transform);
    CGContextSetTextPosition(context, v106, v107);
    CTLineDraw(v102, context);
    CGContextRestoreGState(context);
    CFRelease(v102);

    secondaryLabelCopy = v108;
    labelCopy = v109;
  }
}

- (id)attributedStringForPrimaryLabel:(id)label secondaryLabel:(id)secondaryLabel withTintColor:(id)color detailTintColor:(id)tintColor language:(id)language
{
  labelCopy = label;
  secondaryLabelCopy = secondaryLabel;
  colorCopy = color;
  tintColorCopy = tintColor;
  languageCopy = language;
  if (!colorCopy)
  {
    colorCopy = [MEMORY[0x1E69DC888] labelColor];
  }

  v17 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v18 = [secondaryLabelCopy length];
  v19 = labelCopy;
  if (v18)
  {
    v20 = [(TUIKeyboardInputModeIconRenderer *)self attributedStringWithText:labelCopy color:tintColorCopy];
    [v17 appendAttributedString:v20];

    v21 = [(TUIKeyboardInputModeIconRenderer *)self attributedStringWithText:@" " color:colorCopy];
    [v17 appendAttributedString:v21];

    v19 = secondaryLabelCopy;
  }

  v22 = [(TUIKeyboardInputModeIconRenderer *)self attributedStringWithText:v19 color:colorCopy];
  [v17 appendAttributedString:v22];

  if (languageCopy)
  {
    [v17 addAttribute:*MEMORY[0x1E696A518] value:languageCopy range:{0, objc_msgSend(v17, "length")}];
  }

  return v17;
}

- (id)attributedStringWithText:(id)text color:(id)color
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAB0];
  colorCopy = color;
  textCopy = text;
  v8 = [v5 alloc];
  v12 = *MEMORY[0x1E69DB650];
  v13[0] = colorCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [v8 initWithString:textCopy attributes:v9];

  return v10;
}

@end