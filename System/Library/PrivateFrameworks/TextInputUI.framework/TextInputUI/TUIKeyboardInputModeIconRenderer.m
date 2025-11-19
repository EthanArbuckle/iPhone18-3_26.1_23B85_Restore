@interface TUIKeyboardInputModeIconRenderer
- (id)attributedStringForPrimaryLabel:(id)a3 secondaryLabel:(id)a4 withTintColor:(id)a5 detailTintColor:(id)a6 language:(id)a7;
- (id)attributedStringWithText:(id)a3 color:(id)a4;
- (id)imageForPrimaryLabel:(id)a3 secondaryLabel:(id)a4 withConfiguration:(id)a5;
- (void)drawPrimaryLabel:(id)a3 secondaryLabel:(id)a4 withConfiguration:(id)a5 inContext:(CGContext *)a6;
@end

@implementation TUIKeyboardInputModeIconRenderer

- (id)imageForPrimaryLabel:(id)a3 secondaryLabel:(id)a4 withConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v8 size];
  v12 = v11;
  v14 = v13;
  v15 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v15 scale];
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
  [(TUIKeyboardInputModeIconRenderer *)self drawPrimaryLabel:v10 secondaryLabel:v9 withConfiguration:v8 inContext:UIGraphicsGetCurrentContext()];

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (void)drawPrimaryLabel:(id)a3 secondaryLabel:(id)a4 withConfiguration:(id)a5 inContext:(CGContext *)a6
{
  v118[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  [v12 size];
  v16 = v15;
  v18 = v17;
  v19 = [v12 style];
  if (v19 == 3)
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
    UIGraphicsPushContext(a6);
    v39 = MEMORY[0x1E69DC728];
    v129.origin.x = v14;
    v129.origin.y = v13;
    v129.size.width = v16;
    v129.size.height = v18;
    v130 = CGRectInset(v129, 0.75, 0.75);
    v38 = [v39 _bezierPathWithPillRect:v130.origin.x cornerRadius:{v130.origin.y, v130.size.width, v130.size.height, v18 * 0.5}];
    goto LABEL_7;
  }

  if (v19 == 2)
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
    UIGraphicsPushContext(a6);
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
    [v12 backgroundCornerRadius];
    v38 = [v32 _bezierPathWithArcRoundedRect:v33 cornerRadius:{v34, v35, v36, v37}];
LABEL_7:
    v30 = v38;
    v40 = [v12 backgroundColor];
    [v40 setFill];

    [v30 fill];
    goto LABEL_8;
  }

  if (v19 != 1)
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
  UIGraphicsPushContext(a6);
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
  [v12 backgroundCornerRadius];
  v30 = [v24 _bezierPathWithPillRect:v25 cornerRadius:{v26, v27, v28, v29}];
  v31 = [v12 backgroundColor];
  [v31 setStroke];

  [v30 setLineWidth:1.5];
  [v30 stroke];
LABEL_8:
  v14 = x;
  v13 = y;
  v16 = width;
  v18 = height;
  UIGraphicsPopContext();

LABEL_9:
  v41 = [v12 artwork];

  if (v41)
  {
    v42 = MEMORY[0x1E69DCAB8];
    v43 = [v12 artwork];
    v44 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v45 = [v42 imageNamed:v43 inBundle:v44];

    v46 = [v12 tintColor];
    v47 = [v45 imageWithTintColor:v46 renderingMode:2];

    [v47 size];
    v49 = v48;
    [v47 size];
    v52 = v51;
    if (v18 >= v49)
    {
      v66 = v50;
      [v12 baseFontSize];
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
      [v12 baseFontSize];
      v78 = v77 / 17.0 * (v76 / v57);
      v69 = v56 * v78;
      v70 = v57 * v78;
      v71 = 0.5;
      v72 = v74 + (v75 - v69) * 0.5;
      v73 = v76 - v70;
    }

    v79 = v13 + v73 * v71;
    UIGraphicsPushContext(a6);
    [v47 drawInRect:{v72, v79, v69, v70}];
    UIGraphicsPopContext();
  }

  else
  {
    [v12 baseFontSize];
    v59 = v58;
    v60 = [v12 tintColor];
    v61 = [v12 tintColor];
    [v12 detailLabelAlpha];
    v62 = [v61 colorWithAlphaComponent:?];
    v63 = [v12 language];
    v64 = [(TUIKeyboardInputModeIconRenderer *)self attributedStringForPrimaryLabel:v10 secondaryLabel:v11 withTintColor:v60 detailTintColor:v62 language:v63];

    if ([v64 length] > 1)
    {
      v59 = v59 + -1.0;
    }

    v108 = v11;
    v109 = v10;
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

      else if ([v11 length] >= 2)
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

    v90 = [v12 fontFamily];

    if (v90)
    {
      v91 = [v12 fontFamily];
      v92 = [v89 fontDescriptorWithFamily:v91];

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
    CGContextSaveGState(a6);
    transform = v112;
    CGContextConcatCTM(a6, &transform);
    CGContextSetTextPosition(a6, v106, v107);
    CTLineDraw(v102, a6);
    CGContextRestoreGState(a6);
    CFRelease(v102);

    v11 = v108;
    v10 = v109;
  }
}

- (id)attributedStringForPrimaryLabel:(id)a3 secondaryLabel:(id)a4 withTintColor:(id)a5 detailTintColor:(id)a6 language:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14)
  {
    v14 = [MEMORY[0x1E69DC888] labelColor];
  }

  v17 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v18 = [v13 length];
  v19 = v12;
  if (v18)
  {
    v20 = [(TUIKeyboardInputModeIconRenderer *)self attributedStringWithText:v12 color:v15];
    [v17 appendAttributedString:v20];

    v21 = [(TUIKeyboardInputModeIconRenderer *)self attributedStringWithText:@" " color:v14];
    [v17 appendAttributedString:v21];

    v19 = v13;
  }

  v22 = [(TUIKeyboardInputModeIconRenderer *)self attributedStringWithText:v19 color:v14];
  [v17 appendAttributedString:v22];

  if (v16)
  {
    [v17 addAttribute:*MEMORY[0x1E696A518] value:v16 range:{0, objc_msgSend(v17, "length")}];
  }

  return v17;
}

- (id)attributedStringWithText:(id)a3 color:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AAB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v12 = *MEMORY[0x1E69DB650];
  v13[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [v8 initWithString:v7 attributes:v9];

  return v10;
}

@end