@interface SBIconLabelImage
+ (BOOL)attributedText:(id)a3 fitsInRect:(CGRect)a4 textRect:(CGRect *)a5;
+ (id)imageWithParameters:(id)a3 pool:(id)a4;
+ (id)metricsForParameters:(id)a3;
+ (void)applyKerning:(double)a3 whitespaceKerning:(double)a4 toAttributedString:(id)a5;
- (BOOL)hasBaseline;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsets;
- (double)baselineOffsetFromBottom;
- (id)_initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5 parameters:(id)a6;
@end

@implementation SBIconLabelImage

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = [(SBIconLabelImageParameters *)self->_parameters metrics];
  [v2 alignmentRectInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (BOOL)hasBaseline
{
  v2 = [(SBIconLabelImageParameters *)self->_parameters metrics];
  v3 = [v2 hasBaseline];

  return v3;
}

- (double)baselineOffsetFromBottom
{
  v2 = [(SBIconLabelImageParameters *)self->_parameters metrics];
  [v2 baselineOffsetFromBottom];
  v4 = v3;

  return v4;
}

- (id)_initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5 parameters:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = SBIconLabelImage;
  v11 = [(SBIconLabelImage *)&v15 initWithCGImage:a3 scale:a5 orientation:a4];
  if (v11)
  {
    v12 = [v10 copy];
    parameters = v11->_parameters;
    v11->_parameters = v12;
  }

  return v11;
}

+ (id)metricsForParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v89 = v5;
  if ([v5 length] >= 0x65)
  {
    v89 = [v5 substringToIndex:{objc_msgSend(v5, "rangeOfComposedCharacterSequenceAtIndex:", 100)}];
  }

  v6 = [v4 contentSizeCategory];
  v7 = v6;
  if (v6)
  {
    v8 = UIContentSizeCategoryCompareToCategory(v6, *MEMORY[0x1E69DDC70]);
    v9 = [v4 font];
    if (v8 == NSOrderedDescending)
    {
      v10 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [v4 font];
  }

  LODWORD(v8) = [v4 canTruncate];
  v10 = 1;
LABEL_8:
  v11 = [v4 canTighten];
  v12 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v13 = v12;
  if (v8)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  [v12 setLineBreakMode:v14];
  [v13 setAlignment:0];
  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v86 = v9;
  v16 = [v15 initWithObjectsAndKeys:{v9, *MEMORY[0x1E69DB648], v13, *MEMORY[0x1E69DB688], 0}];
  v17 = [v4 textColor];
  if (v17)
  {
    [v16 setObject:v17 forKey:*MEMORY[0x1E69DB650]];
  }

  [v4 textInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v4 maxSize];
  v27 = v26;
  v28 = v26 - (v21 + v25);
  v90 = v29;
  v30 = v29 - (v19 + v23);
  [v4 scale];
  v91 = v31;
  v94.origin.x = v21 + 0.0;
  v94.origin.y = v19 + 0.0;
  v94.size.width = v28;
  v94.size.height = v30;
  v32 = CGRectGetWidth(v94) + 50.0;
  v95.origin.x = v21 + 0.0;
  v95.origin.y = v19 + 0.0;
  v95.size.width = v28;
  v95.size.height = v30;
  [v89 boundingRectWithSize:0 options:v16 attributes:0 context:{v32, CGRectGetHeight(v95)}];
  v92.origin.x = v33;
  v92.origin.y = v34;
  v92.size.width = v35;
  v92.size.height = v36;
  if (((v8 | v11) & 1) != 0 && (Width = CGRectGetWidth(*&v33), v96.origin.x = v21 + 0.0, v96.origin.y = v19 + 0.0, v96.size.width = v28, v96.size.height = v30, Width > CGRectGetWidth(v96)))
  {
    v84 = v7;
    v38 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v89 attributes:v16];
    if ((v10 & v8) != 0)
    {
      v39 = 10;
    }

    else
    {
      v39 = 15;
    }

    if (v10)
    {
      v40 = 3.0;
    }

    else
    {
      v40 = 1.5;
    }

    v41 = 1;
    while (v39)
    {
      [a1 applyKerning:v38 whitespaceKerning:v41 * -0.1 toAttributedString:v40 * (v41 * -0.1)];
      --v39;
      ++v41;
      if ([a1 attributedText:v38 fitsInRect:&v92 textRect:{v21 + 0.0, v19 + 0.0, v28, v30}])
      {
        goto LABEL_28;
      }
    }

    if (v8)
    {
      [v38 boundingRectWithSize:0 options:0 context:{v28, v30}];
      v92.origin.x = v42;
      v92.origin.y = v43;
      v92.size.width = v44;
      v92.size.height = v45;
    }

LABEL_28:
    v7 = v84;
  }

  else
  {
    v38 = 0;
  }

  v46 = SBHEdgeInsetsInvert(v19);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  [v4 fontLanguageInsets];
  v85 = v48;
  v82 = v52;
  v83 = v50;
  UIEdgeInsetsAdd();
  UIRectIntegralWithScale();
  v53 = v97.size.width;
  height = v97.size.height;
  v97.origin.x = 0.0;
  v97.origin.y = 0.0;
  if (CGRectGetHeight(v97) > v90 || (v98.origin.x = 0.0, v98.origin.y = 0.0, v98.size.width = v53, v98.size.height = height, CGRectGetWidth(v98) > v27))
  {
    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    SBHEdgeInsetsForTransformingRectIntoRect(0.0, 0.0, v53, height, v55, v56, v57, v58);
  }

  v59 = v27;
  UIEdgeInsetsAdd();
  v61 = SBHEdgeInsetsInvert(v60);
  v63 = v62;
  v65 = v64;
  v88 = v66;
  UIRectIntegralWithScale();
  v67 = v99.size.width;
  v68 = v99.size.height;
  v99.origin.x = 0.0;
  v99.origin.y = 0.0;
  if (CGRectGetWidth(v99) <= v27)
  {
    v100.origin.x = 0.0;
    v100.origin.y = 0.0;
    v100.size.width = v67;
    v100.size.height = v68;
    if (CGRectGetHeight(v100) <= v90)
    {
      v59 = v67;
      v90 = v68;
    }
  }

  UIRectIntegralWithScale();
  v70 = v69;
  v80 = v71;
  v81 = v69;
  v79 = v61;
  v87 = v59;
  v72 = v71;
  v74 = v92.size.width;
  v73 = v92.size.height;
  v101.origin.x = 0.0;
  v101.origin.y = 0.0;
  v101.size.width = v59;
  v101.size.height = v90;
  MaxY = CGRectGetMaxY(v101);
  v102.origin.x = v70;
  v102.origin.y = v72;
  v102.size.width = v74;
  v102.size.height = v73;
  v76 = CGRectGetMaxY(v102);
  v103 = v92;
  v77 = [[SBIconLabelImageMetrics alloc] initWithDrawingText:v89 attributedText:v38 attributes:v16 imageRect:1 drawingRect:0.0 baselineOffsetFromBottom:0.0 scale:v87 hasBaseline:v90 invertedTextInsets:v81 alignmentRectInsets:v80, v74, v73, MaxY - (v76 + CGRectGetMinY(v103)), v91, *&v46, v85, v83, v82, *&v79, v63, v65, v88];

  return v77;
}

+ (id)imageWithParameters:(id)a3 pool:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 overrideTraitCollection];
  v54 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 metrics];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [SBIconLabelImage metricsForParameters:v5];
  }

  v13 = v12;

  [v13 imageRect];
  v50 = v15;
  v51 = v14;
  v17 = v16;
  v49 = v18;
  [v13 drawingRect];
  v47 = v20;
  v48 = v19;
  v22 = v21;
  v24 = v23;
  [v13 scale];
  v52 = v25;
  [v13 invertedTextInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [v13 attributedText];
  v35 = [v13 attributes];
  v36 = [v13 drawingText];
  v37 = [v5 focusHighlightColor];
  if ([v5 isColorspaceGrayscale])
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  v39 = MEMORY[0x1E69DCAB8];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __45__SBIconLabelImage_imageWithParameters_pool___block_invoke;
  v58[3] = &unk_1E808BD30;
  v40 = v37;
  v59 = v40;
  v63 = v48;
  v64 = v22;
  v65 = v24;
  v66 = v47;
  v67 = v27;
  v68 = v29;
  v69 = v31;
  v70 = v33;
  v71 = v51;
  v72 = v50;
  v73 = v17;
  v74 = v49;
  v41 = v34;
  v60 = v41;
  v42 = v36;
  v61 = v42;
  v43 = v35;
  v62 = v43;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __45__SBIconLabelImage_imageWithParameters_pool___block_invoke_2;
  v55[3] = &unk_1E808BD58;
  v57 = a1;
  v44 = v5;
  v56 = v44;
  v45 = [v39 sbf_imageFromContextWithSize:v38 scale:v6 type:v58 pool:v55 drawing:v17 encapsulation:{v49, v52}];

  if (v9)
  {
    [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v9];
  }

  return v45;
}

uint64_t __45__SBIconLabelImage_imageWithParameters_pool___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 96);
    v3 = *(a1 + 104);
    v18.origin.x = *(a1 + 64) + v3;
    v18.origin.y = *(a1 + 72) + v2;
    v18.size.width = *(a1 + 80) - (v3 + *(a1 + 120));
    v18.size.height = *(a1 + 88) - (v2 + *(a1 + 112));
    v19 = CGRectIntersection(v18, *(a1 + 128));
    v4 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v19.origin.x cornerRadius:{v19.origin.y, v19.size.width, v19.size.height, 4.0}];
    [*(a1 + 32) setFill];
    [v4 fill];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v9 = *(a1 + 88);

    return [v5 drawWithRect:1 options:0 context:{v6, v7, v8, v9}];
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);

    return [v11 drawWithRect:1 options:v12 attributes:0 context:{v13, v14, v15, v16}];
  }
}

id __45__SBIconLabelImage_imageWithParameters_pool___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = [objc_alloc(*(a1 + 40)) _initWithCGImage:a2 scale:a3 orientation:*(a1 + 32) parameters:a4];

  return v4;
}

+ (BOOL)attributedText:(id)a3 fitsInRect:(CGRect)a4 textRect:(CGRect *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [a3 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
  if (a5)
  {
    a5->origin.x = v10;
    a5->origin.y = v11;
    a5->size.width = v12;
    a5->size.height = v13;
  }

  v14 = round(CGRectGetWidth(*&v10));
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  return v14 <= CGRectGetWidth(v16);
}

+ (void)applyKerning:(double)a3 whitespaceKerning:(double)a4 toAttributedString:(id)a5
{
  v20 = a5;
  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [v20 string];
  v9 = [v20 length];
  v10 = [v8 rangeOfCharacterFromSet:v7];
  v12 = v11;
  v13 = 0;
  v14 = *MEMORY[0x1E69DB660];
  while (1)
  {
    v15 = v10 == 0x7FFFFFFFFFFFFFFFLL ? v9 : v10;
    v16 = v15 - v13;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v20 addAttribute:v14 value:v17 range:{v13, v16}];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    [v20 addAttribute:v14 value:v18 range:{v10, v12}];
    v13 = v10 + v12;
    v10 = [v8 rangeOfCharacterFromSet:v7 options:0 range:{v10 + v12, v9 - (v10 + v12)}];
    v12 = v19;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(SBIconLabelImage *)self size];
  v4 = [v3 appendSize:@"size" withName:?];
  [(SBIconLabelImage *)self scale];
  v5 = [v3 appendFloat:@"scale" withName:?];
  [(SBIconLabelImage *)self alignmentRectInsets];
  v6 = NSStringFromUIEdgeInsets(v14);
  v7 = [v3 appendObject:v6 withName:@"alignmentRectInsets"];

  v8 = [(SBIconLabelImage *)self parameters];
  v9 = [v3 appendObject:v8 withName:@"parameters"];

  [(SBIconLabelImage *)self baselineOffsetFromBottom];
  v10 = [v3 appendFloat:@"baselineOffsetFromBottom" withName:?];
  v11 = [v3 build];

  return v11;
}

@end