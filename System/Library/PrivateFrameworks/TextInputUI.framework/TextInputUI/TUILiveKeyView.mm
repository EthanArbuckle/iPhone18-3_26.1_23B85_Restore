@interface TUILiveKeyView
- (BOOL)keyIsControlType:(id)a3;
- (BOOL)keyIsSpaceType:(id)a3;
- (BOOL)keyIsStringType:(id)a3;
- (TUILiveKeyView)initWithKey:(id)a3 renderTraits:(id)a4 displayContents:(id)a5 inheritedFactory:(id)a6;
- (UIEdgeInsets)backgroundInsets;
- (UIEdgeInsets)drawingInsets;
- (UIEdgeInsets)edgeInsetInterpolationFromStart:(UIEdgeInsets)a3 end:(UIEdgeInsets)a4 atTime:(double)a5;
- (id)controlKeyColor;
- (id)controlShadowColor;
- (id)fontForLabel;
- (id)fontForSymbolStyle:(id)a3;
- (id)highlightedControlKeyColor;
- (id)highlightedKeyCapColor;
- (id)imageWithName:(id)a3;
- (id)keyCapColor;
- (id)labelForKeyCap:(id)a3;
- (id)nameFromControlType:(int)a3;
- (id)roundedRectForRect:(CGRect)a3 radius:(double)a4;
- (id)shadowColor;
- (id)shadowPathForRect:(CGRect)a3;
- (id)symbolImageConfigForRenderTraits:(id)a3 traitCollection:(id)a4;
- (void)createDualStringLabels;
- (void)keyWithLabel;
- (void)keyWithSymbolView;
- (void)makeKeyBackgrounds;
- (void)updateBackgroundWithInsets:(UIEdgeInsets)a3;
- (void)updateFontSize:(double)a3;
- (void)updateForTransitionProgress:(double)a3;
- (void)updateKeyStyle:(int64_t)a3;
- (void)updateLabelInsets;
- (void)updateLabelText:(id)a3 secondaryStrings:(id)a4;
- (void)updateLabelWeight:(unint64_t)a3;
- (void)updateRenderTraits:(id)a3 displayContents:(id)a4;
- (void)updateSymbolInsets;
@end

@implementation TUILiveKeyView

- (id)nameFromControlType:(int)a3
{
  if (a3 <= 22)
  {
    v3 = &stru_1F03BA8F8;
    v13 = @"return";
    if (a3 != 21)
    {
      v13 = 0;
    }

    if (a3 != 14)
    {
      v3 = v13;
    }

    v14 = @"emoji.face.grinning";
    v15 = @"globe";
    if (a3 != 13)
    {
      v15 = 0;
    }

    if (a3 != 9)
    {
      v14 = v15;
    }

    if (a3 <= 13)
    {
      v3 = v14;
    }

    v8 = @"mic";
    v16 = @"keyboard.chevron.compact.down";
    if (a3 != 5)
    {
      v16 = 0;
    }

    if (a3 != 4)
    {
      v8 = v16;
    }

    v17 = @"command";
    v18 = @"delete.left";
    if (a3 != 3)
    {
      v18 = 0;
    }

    if (a3 != 2)
    {
      v17 = v18;
    }

    if (a3 <= 3)
    {
      v8 = v17;
    }

    v12 = a3 <= 8;
  }

  else
  {
    v3 = @"mic";
    v4 = @"scribble";
    v5 = @"keyboard";
    if (a3 != 54)
    {
      v5 = 0;
    }

    if (a3 != 53)
    {
      v4 = v5;
    }

    if (a3 != 52)
    {
      v3 = v4;
    }

    v6 = @"arrow.forward";
    v7 = @"capslock";
    if (a3 != 51)
    {
      v7 = 0;
    }

    if (a3 != 46)
    {
      v6 = v7;
    }

    if (a3 <= 51)
    {
      v3 = v6;
    }

    v8 = @"mic";
    v9 = @"arrow.backward";
    if (a3 != 45)
    {
      v9 = 0;
    }

    if (a3 != 31)
    {
      v8 = v9;
    }

    v10 = @"shift";
    v11 = @"arrow.right.to.line";
    if (a3 != 26)
    {
      v11 = 0;
    }

    if (a3 != 23)
    {
      v10 = v11;
    }

    if (a3 <= 30)
    {
      v8 = v10;
    }

    v12 = a3 <= 45;
  }

  if (v12)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

- (BOOL)keyIsControlType:(id)a3
{
  v3 = a3;
  v4 = [v3 interactionType] == 4 || objc_msgSend(v3, "interactionType") == 5 || objc_msgSend(v3, "interactionType") == 6 || objc_msgSend(v3, "interactionType") == 9 || objc_msgSend(v3, "interactionType") == 10 || objc_msgSend(v3, "interactionType") == 11 || objc_msgSend(v3, "interactionType") == 13 || objc_msgSend(v3, "interactionType") == 14 || objc_msgSend(v3, "interactionType") == 37 || objc_msgSend(v3, "interactionType") == 38 || objc_msgSend(v3, "interactionType") == 17;

  return v4;
}

- (BOOL)keyIsSpaceType:(id)a3
{
  v3 = a3;
  v4 = [v3 interactionType] == 15 || objc_msgSend(v3, "displayType") == 25;

  return v4;
}

- (BOOL)keyIsStringType:(id)a3
{
  v3 = a3;
  v4 = [v3 interactionType] == 1 || objc_msgSend(v3, "interactionType") == 2 || objc_msgSend(v3, "interactionType") == 16;

  return v4;
}

- (id)shadowColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__TUILiveKeyView_shadowColor__block_invoke;
  v4[3] = &unk_1E72D79E8;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

id __29__TUILiveKeyView_shadowColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:dbl_1900C0F80[v2]];

  return v3;
}

- (id)controlShadowColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__TUILiveKeyView_controlShadowColor__block_invoke;
  v4[3] = &unk_1E72D79E8;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

id __36__TUILiveKeyView_controlShadowColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:dbl_1900C0F80[v2]];

  return v3;
}

- (id)highlightedControlKeyColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__TUILiveKeyView_highlightedControlKeyColor__block_invoke;
  v4[3] = &unk_1E72D79E8;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

id __44__TUILiveKeyView_highlightedControlKeyColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  if ([v1 userInterfaceStyle] == 2)
  {
    v2 = 0.42;
    v3 = 1.0;
    v4 = 0.42;
    v5 = 0.42;
  }

  else
  {
    v2 = 0.49;
    v4 = 0.51;
    v5 = 0.54;
    v3 = 1.0;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v4 blue:v5 alpha:v3];

  return v6;
}

- (id)controlKeyColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__TUILiveKeyView_controlKeyColor__block_invoke;
  v4[3] = &unk_1E72D79E8;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

id __33__TUILiveKeyView_controlKeyColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  if ([v1 userInterfaceStyle] == 2)
  {
    v2 = 0.580392157;
    v3 = 0.26;
    v4 = 0.580392157;
    v5 = 0.580392157;
  }

  else
  {
    v2 = 0.28627451;
    v4 = 0.368627451;
    v5 = 0.498039216;
    v3 = 0.23;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v4 blue:v5 alpha:v3];

  return v6;
}

- (id)highlightedKeyCapColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__TUILiveKeyView_highlightedKeyCapColor__block_invoke;
  v4[3] = &unk_1E72D79E8;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

id __40__TUILiveKeyView_highlightedKeyCapColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  if ([v1 userInterfaceStyle] == 2)
  {
    v2 = 0.42;
    v3 = 1.0;
    v4 = 0.42;
    v5 = 0.42;
  }

  else
  {
    v2 = 0.49;
    v4 = 0.51;
    v5 = 0.54;
    v3 = 1.0;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v4 blue:v5 alpha:v3];

  return v6;
}

- (id)keyCapColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__TUILiveKeyView_keyCapColor__block_invoke;
  v4[3] = &unk_1E72D79E8;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

id __29__TUILiveKeyView_keyCapColor__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v3 colorWithAlphaComponent:dbl_1900C0F90[v2]];

  return v4;
}

- (void)updateForTransitionProgress:(double)a3
{
  v5 = [(TUILiveKeyView *)self animationProperties];
  [v5 startingPrimaryLabelInsets];
  v7 = v6;
  v8 = [(TUILiveKeyView *)self animationProperties];
  [v8 endingPrimaryLabelInsets];
  [(TUILiveKeyView *)self linearInterpolationFromStart:v7 end:v9 atTime:a3];
  v11 = v10;
  v12 = [(TUILiveKeyView *)self labelBottom];
  [v12 setConstant:v11];

  v13 = [(TUILiveKeyView *)self animationProperties];
  [v13 startingCornerRadius];
  v15 = v14;
  v16 = [(TUILiveKeyView *)self animationProperties];
  [v16 endingCornerRadius];
  [(TUILiveKeyView *)self linearInterpolationFromStart:v15 end:v17 atTime:a3];
  v19 = v18;
  v20 = [(TUILiveKeyView *)self keyCapBackground];
  v21 = [v20 layer];
  [v21 setCornerRadius:v19];

  v22 = [(TUILiveKeyView *)self animationProperties];
  [v22 startingBackgroundInsets];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(TUILiveKeyView *)self animationProperties];
  [v31 endingBackgroundInsets];
  [(TUILiveKeyView *)self edgeInsetInterpolationFromStart:v24 end:v26 atTime:v28, v30, v32, v33, v34, v35, *&a3];
  [(TUILiveKeyView *)self updateBackgroundWithInsets:?];

  v36 = [(TUILiveKeyView *)self animationProperties];
  [v36 startingFontSize];
  v38 = v37;
  v39 = [(TUILiveKeyView *)self animationProperties];
  [v39 endingFontSize];
  [(TUILiveKeyView *)self linearInterpolationFromStart:v38 end:v40 atTime:a3];
  [(TUILiveKeyView *)self updateFontSize:?];

  v41 = [(TUILiveKeyView *)self secondaryKeyLabel];

  if (v41)
  {
    v42 = [(TUILiveKeyView *)self secondaryKeyLabel];
    v43 = [(TUILiveKeyView *)self secondaryKeyLabel];
    v44 = [v43 font];
    v45 = [(TUILiveKeyView *)self animationProperties];
    [v45 startingSecondaryFontSize];
    v47 = v46;
    v48 = [(TUILiveKeyView *)self animationProperties];
    [v48 endingSecondaryFontSize];
    [(TUILiveKeyView *)self linearInterpolationFromStart:v47 end:v49 atTime:a3];
    v50 = [v44 fontWithSize:?];
    [v42 setFont:v50];

    v54 = [(TUILiveKeyView *)self secondaryKeyLabel];
    [(TUILiveKeyView *)self linearInterpolationFromStart:0.0 end:1.0 atTime:a3];
    v52 = v51;
    [(TUILiveKeyView *)self linearInterpolationFromStart:0.5 end:0.0 atTime:a3];
    [v54 setAlpha:v52 - v53];
  }
}

- (id)shadowPathForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E69DC728] bezierPath];
  v9 = [(TUILiveKeyView *)self traits];
  v10 = [v9 geometry];
  [v10 roundRectRadius];
  v12 = v11;

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = CGRectGetMaxY(v18) - v12;
  [v8 moveToPoint:{x, v13}];
  [v8 addArcWithCenter:0 radius:? startAngle:? endAngle:? clockwise:?];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v14 = CGRectGetMaxX(v19) - v12;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  [v8 addLineToPoint:{v14, CGRectGetMaxY(v20)}];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [v8 addArcWithCenter:0 radius:CGRectGetMaxX(v21) - v12 startAngle:v13 endAngle:v12 clockwise:{1.57079633, 0.0}];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v15 = v13 + 1.0;
  [v8 addArcWithCenter:1 radius:CGRectGetMaxX(v22) - v12 startAngle:v15 endAngle:v12 clockwise:{0.0, 1.57079633}];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  [v8 addLineToPoint:{x + v12, CGRectGetMaxY(v23) + 1.0}];
  [v8 addArcWithCenter:1 radius:x + v12 startAngle:v15 endAngle:v12 clockwise:{1.57079633, 3.14159265}];
  [v8 closePath];

  return v8;
}

- (id)roundedRectForRect:(CGRect)a3 radius:(double)a4
{
  v4 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:a3.origin.x cornerRadius:{a3.origin.y, a3.size.width, a3.size.height, a4}];
  [v4 fillWithBlendMode:7 alpha:0.5];

  return v4;
}

- (UIEdgeInsets)backgroundInsets
{
  if ([(TUILiveKeyView *)self keyStyle]== 2)
  {
    v3 = 9.0;
    v4 = 11.0;
    v5 = 3.0;
  }

  else
  {
    v6 = [(TUILiveKeyView *)self keyStyle];
    v3 = 7.0;
    if (v6 == 3)
    {
      v4 = 7.0;
    }

    else
    {
      v4 = 8.0;
    }

    v5 = 2.0;
    if (v6 != 3)
    {
      v5 = 3.0;
    }
  }

  v7 = 1.0;
  result.right = v3;
  result.bottom = v4;
  result.left = v5;
  result.top = v7;
  return result;
}

- (UIEdgeInsets)drawingInsets
{
  if ([(TUILiveKeyView *)self keyStyle]== 2)
  {
    v3 = 3.0;
    v4 = 11.0;
    v5 = 9.0;
  }

  else
  {
    v6 = [(TUILiveKeyView *)self keyStyle];
    if (v6 == 3)
    {
      v3 = 2.0;
    }

    else
    {
      v3 = 3.0;
    }

    v5 = 7.0;
    if (v6 == 3)
    {
      v4 = 7.0;
    }

    else
    {
      v4 = 8.0;
    }
  }

  v7 = 1.0;
  result.right = v3;
  result.bottom = v4;
  result.left = v5;
  result.top = v7;
  return result;
}

- (void)updateLabelWeight:(unint64_t)a3
{
  v87[2] = *MEMORY[0x1E69E9840];
  v5 = [(TUILiveKeyView *)self keyCapBackground];

  if (v5)
  {
    if ([(TUILiveKeyView *)self keyStyle]== 1 || [(TUILiveKeyView *)self keyStyle]== 4)
    {
      a3 = -1;
    }

    v6 = [(TUILiveKeyView *)self horizontalContentConstraint];
    v7 = [v6 isActive];

    if (v7)
    {
      v8 = MEMORY[0x1E696ACD8];
      v9 = [(TUILiveKeyView *)self horizontalContentConstraint];
      v87[0] = v9;
      v10 = [(TUILiveKeyView *)self verticalContentConstraint];
      v87[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
      [v8 deactivateConstraints:v11];
    }

    v12 = [(TUILiveKeyView *)self keyLabel];
    v13 = v12;
    switch(a3)
    {
      case 8uLL:
        [v12 setTextAlignment:2];

        v49 = [(TUILiveKeyView *)self symbolImageView];
        if (!v49)
        {
          goto LABEL_23;
        }

        v50 = v49;
        v51 = [(TUILiveKeyView *)self symbolImageView];
        v52 = [v51 superview];

        if (!v52)
        {
          goto LABEL_23;
        }

        v53 = [(TUILiveKeyView *)self keyCapBackground];
        v54 = [v53 rightAnchor];
        v55 = [(TUILiveKeyView *)self symbolImageView];
        v56 = [v55 rightAnchor];
        v57 = [(TUILiveKeyView *)self animationProperties];
        [v57 startingPrimaryLabelInsets];
        v59 = [v54 constraintEqualToAnchor:v56 constant:v58];
        [(TUILiveKeyView *)self setHorizontalContentConstraint:v59];

        v60 = [(TUILiveKeyView *)self keyCapBackground];
        v61 = [v60 bottomAnchor];
        v62 = [(TUILiveKeyView *)self symbolImageView];
        v63 = [v62 bottomAnchor];
        v64 = [(TUILiveKeyView *)self animationProperties];
        [v64 startingPrimaryLabelInsets];
        v66 = [v61 constraintEqualToAnchor:v63 constant:v65];
        [(TUILiveKeyView *)self setVerticalContentConstraint:v66];

        v28 = MEMORY[0x1E696ACD8];
        v29 = [(TUILiveKeyView *)self horizontalContentConstraint];
        v84 = v29;
        v30 = &v84;
        break;
      case 4uLL:
        [v12 setTextAlignment:0];

        v31 = [(TUILiveKeyView *)self symbolImageView];
        if (!v31)
        {
          goto LABEL_23;
        }

        v32 = v31;
        v33 = [(TUILiveKeyView *)self symbolImageView];
        v34 = [v33 superview];

        if (!v34)
        {
          goto LABEL_23;
        }

        v35 = [(TUILiveKeyView *)self symbolImageView];
        v36 = [v35 leftAnchor];
        v37 = [(TUILiveKeyView *)self keyCapBackground];
        v38 = [v37 leftAnchor];
        v39 = [(TUILiveKeyView *)self animationProperties];
        [v39 startingPrimaryLabelInsets];
        v41 = [v36 constraintEqualToAnchor:v38 constant:v40];
        [(TUILiveKeyView *)self setHorizontalContentConstraint:v41];

        v42 = [(TUILiveKeyView *)self keyCapBackground];
        v43 = [v42 bottomAnchor];
        v44 = [(TUILiveKeyView *)self symbolImageView];
        v45 = [v44 bottomAnchor];
        v46 = [(TUILiveKeyView *)self animationProperties];
        [v46 startingPrimaryLabelInsets];
        v48 = [v43 constraintEqualToAnchor:v45 constant:v47];
        [(TUILiveKeyView *)self setVerticalContentConstraint:v48];

        v28 = MEMORY[0x1E696ACD8];
        v29 = [(TUILiveKeyView *)self horizontalContentConstraint];
        v85 = v29;
        v30 = &v85;
        break;
      case 0xFFFFFFFFFFFFFFFFLL:
        [v12 setTextAlignment:1];

        v14 = [(TUILiveKeyView *)self symbolImageView];
        if (!v14)
        {
          goto LABEL_23;
        }

        v15 = v14;
        v16 = [(TUILiveKeyView *)self symbolImageView];
        v17 = [v16 superview];

        if (!v17)
        {
          goto LABEL_23;
        }

        v18 = [(TUILiveKeyView *)self symbolImageView];
        v19 = [v18 centerXAnchor];
        v20 = [(TUILiveKeyView *)self keyCapBackground];
        v21 = [v20 centerXAnchor];
        v22 = [v19 constraintEqualToAnchor:v21];
        [(TUILiveKeyView *)self setHorizontalContentConstraint:v22];

        v23 = [(TUILiveKeyView *)self symbolImageView];
        v24 = [v23 centerYAnchor];
        v25 = [(TUILiveKeyView *)self keyCapBackground];
        v26 = [v25 centerYAnchor];
        v27 = [v24 constraintEqualToAnchor:v26];
        [(TUILiveKeyView *)self setVerticalContentConstraint:v27];

        v28 = MEMORY[0x1E696ACD8];
        v29 = [(TUILiveKeyView *)self horizontalContentConstraint];
        v86 = v29;
        v30 = &v86;
        break;
      default:
        [v12 setTextAlignment:1];

        v67 = [(TUILiveKeyView *)self symbolImageView];
        if (!v67)
        {
          goto LABEL_23;
        }

        v68 = v67;
        v69 = [(TUILiveKeyView *)self symbolImageView];
        v70 = [v69 superview];

        if (!v70)
        {
          goto LABEL_23;
        }

        v71 = [(TUILiveKeyView *)self symbolImageView];
        v72 = [v71 centerXAnchor];
        v73 = [(TUILiveKeyView *)self keyCapBackground];
        v74 = [v73 centerXAnchor];
        v75 = [v72 constraintEqualToAnchor:v74];
        [(TUILiveKeyView *)self setHorizontalContentConstraint:v75];

        v76 = [(TUILiveKeyView *)self symbolImageView];
        v77 = [v76 centerYAnchor];
        v78 = [(TUILiveKeyView *)self keyCapBackground];
        v79 = [v78 centerYAnchor];
        v80 = [v77 constraintEqualToAnchor:v79];
        [(TUILiveKeyView *)self setVerticalContentConstraint:v80];

        v28 = MEMORY[0x1E696ACD8];
        v29 = [(TUILiveKeyView *)self horizontalContentConstraint];
        v83 = v29;
        v30 = &v83;
        break;
    }

    v81 = [(TUILiveKeyView *)self verticalContentConstraint];
    v30[1] = v81;
    v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    [v28 activateConstraints:v82];

LABEL_23:
    [(TUILiveKeyView *)self setNeedsLayout];
  }
}

- (void)updateLabelInsets
{
  if ([(TUILiveKeyView *)self keyStyle]== 2)
  {
    v3 = 5.0;
  }

  else
  {
    v3 = 4.0;
  }

  if ([(TUILiveKeyView *)self layoutType]== 3)
  {
    if ([(TUILiveKeyView *)self keyStyle]== 2)
    {
      v3 = 10.0;
    }

    else
    {
      v3 = 4.0;
    }
  }

  v4 = [(TUILiveKeyView *)self labelBottom];
  [v4 setConstant:v3];

  v5 = [(TUILiveKeyView *)self keyStyle];
  v6 = [(TUILiveKeyView *)self layoutType];
  if (v5 == 2 || v6 == 3)
  {
    v8 = 6.0;
  }

  else
  {
    v8 = 3.0;
  }

  v9 = [(TUILiveKeyView *)self labelTrailing];
  [v9 setConstant:v8];
}

- (void)updateLabelText:(id)a3 secondaryStrings:(id)a4
{
  v10 = a3;
  [(TUILiveKeyView *)self setKeyCap:?];
  v5 = [(TUILiveKeyView *)self keyLabel];

  if (v5)
  {
    if ([(TUILiveKeyView *)self layoutType]== 4)
    {
      v6 = [(TUILiveKeyView *)self keyLabel];
      v7 = v6;
      v8 = @" ";
LABEL_6:
      [v6 setText:v8];

      goto LABEL_7;
    }

    if ([(TUILiveKeyView *)self layoutType]== 2 || [(TUILiveKeyView *)self layoutType]== 3 && ([(TUILiveKeyView *)self imageName], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v6 = [(TUILiveKeyView *)self keyLabel];
      v7 = v6;
      v8 = v10;
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)updateFontSize:(double)a3
{
  [(TUILiveKeyView *)self fontSize];
  if (v5 == 0.0)
  {
    v6 = [(TUILiveKeyView *)self fontForLabel];
    v7 = [(TUILiveKeyView *)self keyLabel];
    [v7 setFont:v6];
  }

  else
  {
    [(TUILiveKeyView *)self fontSize];
    if (vabdd_f64(a3, v8) < 1.0)
    {
      return;
    }

    v6 = [(TUILiveKeyView *)self keyLabel];
    v7 = [v6 font];
    v9 = [v7 fontWithSize:a3];
    v10 = [(TUILiveKeyView *)self keyLabel];
    [v10 setFont:v9];
  }

  [(TUILiveKeyView *)self setFontSize:a3];
}

- (id)fontForSymbolStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 fontName];
  [v3 fontSize];
  v6 = v5;
  [v3 fontWeight];
  v8 = v7;
  [v3 fontWidth];
  v10 = v9;
  v11 = [v3 keycapsFallback];

  v12 = UIKBCreateCTFont(v4, v11, v6, v8, v10);

  return v12;
}

- (id)fontForLabel
{
  v3 = [(TUILiveKeyView *)self traits];
  v4 = [v3 symbolStyle];
  v5 = [(TUILiveKeyView *)self fontForSymbolStyle:v4];

  return v5;
}

- (void)createDualStringLabels
{
  v73[6] = *MEMORY[0x1E69E9840];
  v3 = [(TUILiveKeyView *)self secondaryKeyLabel];

  if (!v3)
  {
    v4 = [(TUILiveKeyView *)self keyLabel];
    [v4 removeFromSuperview];

    [(TUILiveKeyView *)self setKeyLabel:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setTextAlignment:1];
    [(TUILiveKeyView *)self addSubview:v5];
    [(TUILiveKeyView *)self setSecondaryKeyLabel:v5];
  }

  v6 = [(TUILiveKeyView *)self fontForLabel];
  v7 = [(TUILiveKeyView *)self secondaryKeyLabel];
  [v7 setFont:v6];

  v8 = [(TUILiveKeyView *)self traits];
  v9 = [v8 secondarySymbolStyles];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = [v10 textColor];

    if (v11)
    {
      [v10 textOpacity];
      v13 = v12;
      v14 = MEMORY[0x1E69DC888];
      v15 = [v10 textColor];
      v16 = [v14 colorWithCGColor:UIKBGetNamedColor(v15)];
      v17 = [v16 colorWithAlphaComponent:v13];
      v18 = [(TUILiveKeyView *)self secondaryKeyLabel];
      [v18 setTextColor:v17];
    }

    v19 = [(TUILiveKeyView *)self fontForSymbolStyle:v10];
    v20 = [(TUILiveKeyView *)self secondaryKeyLabel];
    [v20 setFont:v19];
  }

  v21 = [(TUILiveKeyView *)self keyLabel];

  if (v21)
  {
    if (v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 setTextAlignment:1];
    v23 = [(TUILiveKeyView *)self fontForLabel];
    [v22 setFont:v23];

    v24 = [(TUILiveKeyView *)self traits];
    v25 = [v24 symbolStyle];
    v26 = [v25 textColor];

    if (v26)
    {
      v27 = MEMORY[0x1E69DC888];
      v28 = [(TUILiveKeyView *)self traits];
      v29 = [v28 symbolStyle];
      v30 = [v29 textColor];
      v31 = [v27 colorWithCGColor:UIKBGetNamedColor(v30)];
      [v22 setTextColor:v31];
    }

    [(TUILiveKeyView *)self addSubview:v22];
    [(TUILiveKeyView *)self setKeyLabel:v22];
  }

  v32 = [(TUILiveKeyView *)self labelBottom];
  v33 = [v32 isActive];

  if (v33)
  {
    v34 = [(TUILiveKeyView *)self labelBottom];
    [v34 setActive:0];
  }

  v35 = [(TUILiveKeyView *)self keyLabel];
  v36 = [v35 bottomAnchor];
  v37 = [(TUILiveKeyView *)self keyCapBackground];
  v38 = [v37 bottomAnchor];
  v39 = [(TUILiveKeyView *)self animationProperties];
  [v39 startingPrimaryLabelInsets];
  v41 = [v36 constraintEqualToAnchor:v38 constant:v40];
  [(TUILiveKeyView *)self setLabelBottom:v41];

  v71 = [(TUILiveKeyView *)self secondaryKeyLabel];
  v69 = [v71 topAnchor];
  v70 = [(TUILiveKeyView *)self keyCapBackground];
  v68 = [v70 topAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v73[0] = v67;
  v66 = [(TUILiveKeyView *)self secondaryKeyLabel];
  v64 = [v66 centerXAnchor];
  v65 = [(TUILiveKeyView *)self keyCapBackground];
  v63 = [v65 centerXAnchor];
  [v10 textOffset];
  v62 = [v64 constraintEqualToAnchor:v63 constant:?];
  v73[1] = v62;
  v61 = [(TUILiveKeyView *)self keyLabel];
  v59 = [v61 centerXAnchor];
  v60 = [(TUILiveKeyView *)self keyCapBackground];
  v57 = [v60 centerXAnchor];
  v58 = [(TUILiveKeyView *)self traits];
  v56 = [v58 symbolStyle];
  [v56 textOffset];
  v55 = [v59 constraintEqualToAnchor:v57 constant:?];
  v73[2] = v55;
  v54 = [(TUILiveKeyView *)self keyLabel];
  v52 = [v54 topAnchor];
  v42 = [(TUILiveKeyView *)self keyCapBackground];
  v43 = [v42 topAnchor];
  v44 = [(TUILiveKeyView *)self animationProperties];
  [v44 startingPrimaryLabelInsets];
  [v52 constraintEqualToAnchor:v43 constant:?];
  v45 = v72 = v10;
  v73[3] = v45;
  v46 = [(TUILiveKeyView *)self labelBottom];
  v73[4] = v46;
  v47 = [(TUILiveKeyView *)self secondaryKeyLabel];
  v48 = [v47 heightAnchor];
  v49 = [(TUILiveKeyView *)self keyCapBackground];
  v50 = [v49 heightAnchor];
  v51 = [v48 constraintEqualToAnchor:v50 multiplier:0.5];
  v73[5] = v51;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:6];

  v10 = v72;
  [MEMORY[0x1E696ACD8] activateConstraints:v53];

LABEL_16:
}

- (id)labelForKeyCap:(id)a3
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCC10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTextAlignment:1];
  [v6 setText:v5];

  v7 = [(TUILiveKeyView *)self fontForLabel];
  [v6 setFont:v7];

  v8 = [(TUILiveKeyView *)self traits];
  v9 = [v8 symbolStyle];
  v10 = [v9 textColor];

  if (v10)
  {
    v11 = MEMORY[0x1E69DC888];
    v12 = [(TUILiveKeyView *)self traits];
    v13 = [v12 symbolStyle];
    v14 = [v13 textColor];
    v15 = [v11 colorWithCGColor:UIKBGetNamedColor(v14)];
    [v6 setTextColor:v15];
  }

  [(TUILiveKeyView *)self addSubview:v6];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [v6 topAnchor];
  v18 = [(TUILiveKeyView *)self topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  v20 = [(TUILiveKeyView *)self bottomAnchor];
  v21 = [v6 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  v34[0] = v19;
  v34[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v16 addObjectsFromArray:v23];

  v24 = [v6 leadingAnchor];
  v25 = [(TUILiveKeyView *)self leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];

  v27 = [(TUILiveKeyView *)self trailingAnchor];
  v28 = [v6 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:0.0];

  v33[0] = v26;
  v33[1] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v16 addObjectsFromArray:v30];

  [MEMORY[0x1E696ACD8] activateConstraints:v16];
  v31 = [(TUILiveKeyView *)self labelBottom];

  if (!v31)
  {
    [(TUILiveKeyView *)self setLabelBottom:v22];
    [(TUILiveKeyView *)self setLabelLeading:v26];
    [(TUILiveKeyView *)self setLabelTrailing:v29];
  }

  [(TUILiveKeyView *)self updateLabelInsets];

  return v6;
}

- (void)keyWithLabel
{
  v3 = [(TUILiveKeyView *)self keyLabel];

  if (!v3)
  {
    v4 = [(TUILiveKeyView *)self keyCap];
    v5 = [(TUILiveKeyView *)self labelForKeyCap:v4];
    [(TUILiveKeyView *)self setKeyLabel:v5];
  }

  v6 = [(TUILiveKeyView *)self keyCap];
  [(TUILiveKeyView *)self updateLabelText:v6];
}

- (id)symbolImageConfigForRenderTraits:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 symbolStyle];
  v8 = MEMORY[0x193AE8160]([v7 fontWeightForSymbolImage]);

  if (!v8)
  {
    v9 = [v5 symbolStyle];
    v10 = MEMORY[0x193AE8160]([v9 fontWeight]);

    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = 4;
    }
  }

  v11 = [v5 symbolStyle];
  [v11 fontSizeForSymbolImage];
  v13 = v12;

  if (v13 == 0.0)
  {
    v14 = [v5 symbolStyle];
    [v14 fontSize];
    v13 = v15;
  }

  v16 = MEMORY[0x1E69DCAD8];
  v17 = [v5 symbolStyle];
  v18 = [v16 configurationWithPointSize:v8 weight:objc_msgSend(v17 scale:{"symbolScale"), v13}];

  v19 = [v18 configurationWithTraitCollection:v6];

  return v19;
}

- (id)imageWithName:(id)a3
{
  v4 = a3;
  v5 = [(TUILiveKeyView *)self traits];
  v6 = [(TUILiveKeyView *)self traitCollection];
  v7 = [(TUILiveKeyView *)self symbolImageConfigForRenderTraits:v5 traitCollection:v6];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4 withConfiguration:v7];

  return v8;
}

- (void)updateSymbolInsets
{
  v3 = [(TUILiveKeyView *)self keyStyle];
  v4 = [(TUILiveKeyView *)self symbolImageView];
  v5 = [v4 image];
  [v5 baselineOffsetFromBottom];
  v7 = v6;

  v8 = [(TUILiveKeyView *)self traits];
  v9 = [v8 symbolStyle];
  [v9 textOffset];
  if (v3 == 1)
  {
    v11 = -v10;
  }

  else
  {
    v11 = v10;
  }

  if (v3 == 1)
  {
    v12 = -2.0;
  }

  else
  {
    v12 = -3.0;
  }

  v13 = [(TUILiveKeyView *)self traits];
  v14 = [v13 symbolStyle];
  [v14 textOffset];
  v16 = v15;

  v17 = [(TUILiveKeyView *)self horizontalContentConstraint];
  [v17 setConstant:v11 + v12];

  v18 = [(TUILiveKeyView *)self verticalContentConstraint];
  [v18 setConstant:v16 + v7 * -0.5];
}

- (void)keyWithSymbolView
{
  v3 = [(TUILiveKeyView *)self symbolImageView];

  if (!v3)
  {
    v8 = [(TUILiveKeyView *)self imageName];

    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = [(TUILiveKeyView *)self imageName];
    v6 = [(TUILiveKeyView *)self imageWithName:v9];

    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    [(TUILiveKeyView *)self setSymbolImageView:v10];

    v11 = [(TUILiveKeyView *)self symbolImageView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(TUILiveKeyView *)self symbolImageView];
    [v12 setContentMode:1];

    v13 = [MEMORY[0x1E69DC888] labelColor];
    v14 = [(TUILiveKeyView *)self symbolImageView];
    [v14 setTintColor:v13];

    v7 = [(TUILiveKeyView *)self symbolImageView];
    [(TUILiveKeyView *)self addSubview:v7];
    goto LABEL_7;
  }

  if ([(TUILiveKeyView *)self usesImage])
  {
    v4 = [(TUILiveKeyView *)self imageName];

    if (v4)
    {
      v5 = [(TUILiveKeyView *)self imageName];
      v6 = [(TUILiveKeyView *)self imageWithName:v5];

      v7 = [(TUILiveKeyView *)self symbolImageView];
      [v7 setImage:v6];
LABEL_7:
    }
  }

LABEL_8:
  v15 = [(TUILiveKeyView *)self symbolImageView];

  if (v15)
  {
    v16 = MEMORY[0x1E69DC888];
    v21 = [(TUILiveKeyView *)self traits];
    v17 = [v21 symbolStyle];
    v18 = [v17 textColor];
    v19 = [v16 colorWithCGColor:UIKBGetNamedColor(v18)];
    v20 = [(TUILiveKeyView *)self symbolImageView];
    [v20 setTintColor:v19];
  }
}

- (void)updateBackgroundWithInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
  v9 = [v8 count];

  if (v9 == 4)
  {
    v10 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    v11 = [v10 objectAtIndexedSubscript:0];
    [v11 setConstant:top];

    v12 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    v13 = [v12 objectAtIndexedSubscript:1];
    [v13 setConstant:left];

    v14 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    v15 = [v14 objectAtIndexedSubscript:2];
    [v15 setConstant:bottom];

    v17 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    v16 = [v17 objectAtIndexedSubscript:3];
    [v16 setConstant:right];
  }
}

- (void)makeKeyBackgrounds
{
  v85[4] = *MEMORY[0x1E69E9840];
  v3 = [(TUILiveKeyView *)self renderConfig];
  v84 = [v3 colorAdaptiveBackground];

  v4 = [(TUILiveKeyView *)self keyCapBackground];

  if (!v4)
  {
    v5 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];

    if (v5)
    {
      v6 = MEMORY[0x1E696ACD8];
      v7 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
      [v6 deactivateConstraints:v7];
    }

    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUILiveKeyView *)self setKeyCapBackground:v9];

    v10 = [(TUILiveKeyView *)self keyCapBackground];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(TUILiveKeyView *)self keyCapBackground];
    [(TUILiveKeyView *)self addSubview:v11];

    v83 = [(TUILiveKeyView *)self keyCapBackground];
    v82 = [v83 topAnchor];
    v81 = [(TUILiveKeyView *)self topAnchor];
    v80 = [v82 constraintEqualToAnchor:v81];
    v85[0] = v80;
    v79 = [(TUILiveKeyView *)self keyCapBackground];
    v78 = [v79 leftAnchor];
    v77 = [(TUILiveKeyView *)self leftAnchor];
    v76 = [v78 constraintEqualToAnchor:v77];
    v85[1] = v76;
    v12 = [(TUILiveKeyView *)self bottomAnchor];
    v13 = [(TUILiveKeyView *)self keyCapBackground];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v85[2] = v15;
    v16 = [(TUILiveKeyView *)self rightAnchor];
    v17 = [(TUILiveKeyView *)self keyCapBackground];
    v18 = [v17 rightAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v85[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
    [(TUILiveKeyView *)self setKeyCapBackgroundConstraints:v20];

    v21 = MEMORY[0x1E696ACD8];
    v22 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    [v21 activateConstraints:v22];
  }

  v23 = [(TUILiveKeyView *)self traits];
  v24 = [v23 geometry];
  [v24 roundRectRadius];
  v26 = v25;
  v27 = [(TUILiveKeyView *)self keyCapBackground];
  v28 = [v27 layer];
  [v28 setCornerRadius:v26];

  v29 = [(TUILiveKeyView *)self traits];
  v30 = [v29 layeredBackgroundGradient];
  if (!v30 || (-[TUILiveKeyView traits](self, "traits"), v23 = objc_claimAutoreleasedReturnValue(), ([v23 usesDarkAppearance] & 1) != 0))
  {
    v34 = [(TUILiveKeyView *)self traits];
    v35 = [v34 backgroundGradient];
    v33 = [v35 flatColorName];

    if (!v30)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = [(TUILiveKeyView *)self traits];
    v32 = [v31 layeredBackgroundGradient];
    v33 = [v32 flatColorName];
  }

LABEL_10:
  if (!v33)
  {
    v36 = [(TUILiveKeyView *)self renderConfig];
    if ([v36 colorAdaptiveBackground])
    {
      v33 = @"UIKBColorWhite";
      v37 = @"UIKBColorWhite";
    }

    else
    {
      v38 = [(TUILiveKeyView *)self traits];
      v39 = [v38 usesDarkAppearance];
      v40 = @"UIKBColorWhite";
      if (v39)
      {
        v40 = @"UIKBColorWhite_Alpha30";
      }

      v33 = v40;
    }
  }

  UIKBGetNamedColor(v33);
  v41 = [MEMORY[0x1E69DC888] colorWithCGColor:UIKBGetNamedColor(v33)];
  v42 = [(TUILiveKeyView *)self traits];
  v43 = [v42 backgroundGradient];
  v44 = [v43 flatColorName];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v47 = [(TUILiveKeyView *)self traits];
    v48 = [v47 layeredForegroundGradient];
    v46 = [v48 flatColorName];
  }

  if (!v46)
  {
    v49 = UIKBColorBlue;
    if (!UIAccessibilityIsReduceTransparencyEnabled() && !UIAccessibilityDarkerSystemColorsEnabled())
    {
      v49 = UIKBColorKeyBlueKeyBackground;
    }

    v46 = *v49;
  }

  v50 = [(TUILiveKeyView *)self usesBlueBackground];
  v51 = v41;
  if (v50)
  {
    v51 = [MEMORY[0x1E69DC888] colorWithCGColor:UIKBGetNamedColor(v46)];
  }

  v52 = [(TUILiveKeyView *)self keyCapBackground];
  [v52 setBackgroundColor:v51];

  if (v50)
  {
  }

  v53 = [(TUILiveKeyView *)self traits];
  if ([v53 blendForm] == 10)
  {

LABEL_32:
    v56 = [(TUILiveKeyView *)self keyCapBackground];
    v57 = [v56 layer];
    v58 = [(TUILiveKeyView *)self traits];
    v59 = [v58 extraFiltersForType:*MEMORY[0x1E6979D78]];
    [v57 setFilters:v59];

    [(TUILiveKeyView *)self backgroundInsets];
    [(TUILiveKeyView *)self updateBackgroundWithInsets:?];
    goto LABEL_33;
  }

  v54 = [(TUILiveKeyView *)self traits];
  v55 = [v54 blendForm];

  if (v55 == 11)
  {
    goto LABEL_32;
  }

  [(TUILiveKeyView *)self backgroundInsets];
  [(TUILiveKeyView *)self updateBackgroundWithInsets:?];
  if ((v84 & 1) == 0)
  {
    v60 = [(TUILiveKeyView *)self renderConfig];
    if ([v60 lightKeyboard])
    {
      v61 = @"UIKBColorBlack_Alpha35";
    }

    else
    {
      v61 = @"UIKBColorBlack_Alpha40";
    }

    v62 = UIKBGetNamedColor(v61);
    v63 = [(TUILiveKeyView *)self keyCapBackground];
    v64 = [v63 layer];
    [v64 setShadowColor:v62];

    v65 = [(TUILiveKeyView *)self keyCapBackground];
    v66 = [v65 layer];
    [v66 setShadowOffset:{0.0, 1.0}];

    v67 = [(TUILiveKeyView *)self keyCapBackground];
    v68 = [v67 layer];
    [v68 setShadowRadius:1.0];

    v69 = [(TUILiveKeyView *)self renderConfig];
    if ([v69 lightKeyboard])
    {
      v70 = 0.35;
    }

    else
    {
      v70 = 0.4;
    }

    v71 = [(TUILiveKeyView *)self keyCapBackground];
    v72 = [v71 layer];
    *&v73 = v70;
    [v72 setShadowOpacity:v73];

    v74 = [(TUILiveKeyView *)self keyCapBackground];
    v75 = [v74 layer];
    [v75 setShadowPathIsBounds:1];
  }

LABEL_33:
}

- (void)updateRenderTraits:(id)a3 displayContents:(id)a4
{
  v52 = a3;
  v7 = a4;
  if (self->_traits != v52)
  {
    objc_storeStrong(&self->_traits, a3);
    if ([(TUILiveKeyView *)self layoutType]!= 3)
    {
      goto LABEL_18;
    }

    v8 = [(TUILiveKeyView *)self renderConfig];
    v9 = [v8 controlKeyBackgroundName];
    if (v9)
    {
    }

    else
    {
      v10 = [(TUILiveKeyView *)self usesBlueBackground];

      if (!v10)
      {
        goto LABEL_18;
      }
    }

    v11 = [(UIKBRenderTraits *)v52 backgroundGradient];
    v12 = [v11 flatColorName];

    if (!v12)
    {
      v13 = [(TUILiveKeyView *)self renderConfig];
      if ([v13 colorAdaptiveBackground])
      {
        v12 = @"UIKBColorWhite";
        v14 = @"UIKBColorWhite";
      }

      else
      {
        v15 = [(TUILiveKeyView *)self traits];
        v16 = [v15 usesDarkAppearance];
        v17 = @"UIKBColorWhite";
        if (v16)
        {
          v17 = @"UIKBColorWhite_Alpha30";
        }

        v12 = v17;
      }
    }

    v18 = [MEMORY[0x1E69DC888] colorWithCGColor:UIKBGetNamedColor(v12)];
    v19 = [(TUILiveKeyView *)self keyCapBackground];
    [v19 setBackgroundColor:v18];

    v20 = [(TUILiveKeyView *)self traits];
    if ([v20 blendForm] == 10)
    {
    }

    else
    {
      v21 = [(TUILiveKeyView *)self traits];
      v22 = [v21 blendForm];

      if (v22 != 11)
      {
LABEL_17:

LABEL_18:
        [(TUILiveKeyView *)self usesImage];
        if ([(TUILiveKeyView *)self usesImage])
        {
          v27 = [(UIKBRenderTraits *)v52 symbolStyle];
          if ([v27 usesSymbolImage])
          {
            v28 = [v7 displayStringImage];
            if (v28)
            {
              if ([v7 stringKeycapOverImage])
              {
                v29 = [v7 forceImageKeycap] ^ 1;
              }

              else
              {
                v29 = 0;
              }
            }

            else
            {
              v29 = 1;
            }
          }

          else
          {
            v29 = 1;
          }

          if ([(TUILiveKeyView *)self usesImage]&& (v29 & 1) == 0)
          {
            v45 = [(TUILiveKeyView *)self keyLabel];

            if (v45)
            {
              v46 = [(TUILiveKeyView *)self keyLabel];
              [v46 removeFromSuperview];
            }

            v34 = [v7 displayStringImage];
            [(TUILiveKeyView *)self setImageName:v34];
LABEL_46:

            [(TUILiveKeyView *)self backgroundInsets];
            [(TUILiveKeyView *)self updateBackgroundWithInsets:?];
            v47 = [(UIKBRenderTraits *)v52 geometry];
            [v47 roundRectRadius];
            v49 = v48;
            v50 = [(TUILiveKeyView *)self keyCapBackground];
            v51 = [v50 layer];
            [v51 setCornerRadius:v49];

            goto LABEL_47;
          }
        }

        else
        {
          [(TUILiveKeyView *)self usesImage];
        }

        v30 = [(TUILiveKeyView *)self symbolImageView];

        if (v30)
        {
          v31 = [(TUILiveKeyView *)self symbolImageView];
          [v31 removeFromSuperview];
        }

        v32 = [v7 displayString];
        v33 = v32;
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v35 = [v7 fallbackContents];
          v34 = [v35 displayString];
        }

        v36 = [v7 secondaryDisplayStrings];
        if ([v34 length])
        {
          v37 = [v36 count];
          v38 = [(TUILiveKeyView *)self keyCap];
          if (v37)
          {
            [(TUILiveKeyView *)self updateLabelText:v38 secondaryStrings:v36];
          }

          else
          {
            [(TUILiveKeyView *)self updateLabelText:v38];
          }
        }

        v39 = [(UIKBRenderTraits *)v52 symbolStyle];
        [v39 fontSize];
        v41 = v40;
        [(TUILiveKeyView *)self fontSize];
        v43 = v42;

        if (v41 != v43)
        {
          v44 = [(UIKBRenderTraits *)v52 symbolStyle];
          [v44 fontSize];
          [(TUILiveKeyView *)self updateFontSize:?];
        }

        goto LABEL_46;
      }
    }

    v23 = [(TUILiveKeyView *)self keyCapBackground];
    v24 = [v23 layer];
    v25 = [(TUILiveKeyView *)self traits];
    v26 = [v25 extraFiltersForType:*MEMORY[0x1E6979D78]];
    [v24 setFilters:v26];

    goto LABEL_17;
  }

LABEL_47:
}

- (void)updateKeyStyle:(int64_t)a3
{
  if (self->_keyStyle != a3)
  {
    self->_keyStyle = a3;
    v4 = [(TUILiveKeyView *)self keyLabel];

    if (v4)
    {
      [(TUILiveKeyView *)self updateLabelInsets];
    }

    v5 = [(TUILiveKeyView *)self symbolImageView];

    if (v5)
    {
      [(TUILiveKeyView *)self updateSymbolInsets];
    }

    v6 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];

    if (v6)
    {
      [(TUILiveKeyView *)self backgroundInsets];

      [(TUILiveKeyView *)self updateBackgroundWithInsets:?];
    }
  }
}

- (UIEdgeInsets)edgeInsetInterpolationFromStart:(UIEdgeInsets)a3 end:(UIEdgeInsets)a4 atTime:(double)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  v8 = a3.right;
  v9 = a3.bottom;
  v10 = a3.left;
  [(TUILiveKeyView *)self linearInterpolationFromStart:a3.top end:a4.top atTime:a5];
  v13 = v12;
  [(TUILiveKeyView *)self linearInterpolationFromStart:v10 end:left atTime:a5];
  v15 = v14;
  [(TUILiveKeyView *)self linearInterpolationFromStart:v9 end:bottom atTime:a5];
  v17 = v16;
  [(TUILiveKeyView *)self linearInterpolationFromStart:v8 end:right atTime:a5];
  v19 = v18;
  v20 = v13;
  v21 = v15;
  v22 = v17;
  result.right = v19;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (TUILiveKeyView)initWithKey:(id)a3 renderTraits:(id)a4 displayContents:(id)a5 inheritedFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v39.receiver = self;
  v39.super_class = TUILiveKeyView;
  v15 = [(TUILiveKeyView *)&v39 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v15)
  {
    v16 = [v13 displayString];
    v17 = v16;
    if (!v16)
    {
      v6 = [v13 fallbackContents];
      v17 = [v6 displayString];
    }

    objc_storeStrong(&v15->_keyCap, v17);
    if (!v16)
    {
    }

    v15->_keyStyle = [v11 style];
    v15->_isShowingHighlight = 0;
    v15->_fontSize = 0.0;
    if ([v11 style] == -1)
    {
      v15->_keyStyle = 2;
    }

    objc_storeStrong(&v15->_traits, a4);
    v18 = [v12 symbolStyle];
    if ([v18 usesSymbolImage])
    {
      v19 = [v13 displayStringImage];
      if (v19)
      {
        v20 = [v13 stringKeycapOverImage] ^ 1;
      }

      else
      {
        v20 = 0;
      }

      if (([v14 preferStringKeycapOverImage] & 1) == 0)
      {
        if (v20)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }
    }

    else
    {

      if (![v14 preferStringKeycapOverImage])
      {
        goto LABEL_18;
      }
    }

    if ([v13 forceImageKeycap])
    {
LABEL_16:
      v21 = [v13 displayStringImage];
      imageName = v15->_imageName;
      v15->_imageName = v21;

      v23 = 1;
      goto LABEL_19;
    }

LABEL_18:
    v23 = 0;
LABEL_19:
    v24 = [v11 backingTree];
    v25 = [v24 displayType];

    if (v25 == 23)
    {
      v15->_isShift = 1;
    }

    v15->_usesBlueBackground = 0;
    if ([v11 layoutType] != 3)
    {
      if ([v11 layoutType] == 4)
      {
        v15->_layoutType = 4;
        v15->_layoutShape = 0;
        v29 = [v11 backingTree];
        v30 = [v29 name];
        [(TUILiveKeyView *)v15 setAccessibilityIdentifier:v30];
      }

      else
      {
        if ([v11 layoutShape] == -1)
        {
          v34 = 0;
        }

        else
        {
          v34 = [v11 layoutShape];
        }

        v15->_layoutShape = v34;
        if ([v11 layoutType] == -1)
        {
          v15->_layoutType = 2;
        }

        else
        {
          v15->_layoutType = [v11 layoutType];
        }
      }

      goto LABEL_35;
    }

    v38 = v14;
    v26 = [v12 backgroundGradient];
    v27 = [v26 flatColorName];
    if ([v27 containsString:@"Blue"])
    {
      v28 = v12;
    }

    else
    {
      v28 = v12;
      [v12 layeredForegroundGradient];
      v31 = v37 = v23;
      v32 = [v31 flatColorName];
      v33 = [v32 containsString:@"Blue"];

      v23 = v37;
      if (!v33)
      {
LABEL_28:
        v15->_layoutType = 3;
        v15->_layoutShape = 0;
        v12 = v28;
        v14 = v38;
LABEL_35:
        v35 = [v14 renderConfig];
        [(TUILiveKeyView *)v15 setRenderConfig:v35];

        v15->_usesImage = v23;
        [(TUILiveKeyView *)v15 setBackgroundColor:0];
        [(TUILiveKeyView *)v15 makeKeyBackgrounds];
        goto LABEL_36;
      }
    }

    v15->_usesBlueBackground = 1;
    goto LABEL_28;
  }

LABEL_36:

  return v15;
}

@end