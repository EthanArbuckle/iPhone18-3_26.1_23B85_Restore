@interface TUILiveKeyView
- (BOOL)keyIsControlType:(id)type;
- (BOOL)keyIsSpaceType:(id)type;
- (BOOL)keyIsStringType:(id)type;
- (TUILiveKeyView)initWithKey:(id)key renderTraits:(id)traits displayContents:(id)contents inheritedFactory:(id)factory;
- (UIEdgeInsets)backgroundInsets;
- (UIEdgeInsets)drawingInsets;
- (UIEdgeInsets)edgeInsetInterpolationFromStart:(UIEdgeInsets)start end:(UIEdgeInsets)end atTime:(double)time;
- (id)controlKeyColor;
- (id)controlShadowColor;
- (id)fontForLabel;
- (id)fontForSymbolStyle:(id)style;
- (id)highlightedControlKeyColor;
- (id)highlightedKeyCapColor;
- (id)imageWithName:(id)name;
- (id)keyCapColor;
- (id)labelForKeyCap:(id)cap;
- (id)nameFromControlType:(int)type;
- (id)roundedRectForRect:(CGRect)rect radius:(double)radius;
- (id)shadowColor;
- (id)shadowPathForRect:(CGRect)rect;
- (id)symbolImageConfigForRenderTraits:(id)traits traitCollection:(id)collection;
- (void)createDualStringLabels;
- (void)keyWithLabel;
- (void)keyWithSymbolView;
- (void)makeKeyBackgrounds;
- (void)updateBackgroundWithInsets:(UIEdgeInsets)insets;
- (void)updateFontSize:(double)size;
- (void)updateForTransitionProgress:(double)progress;
- (void)updateKeyStyle:(int64_t)style;
- (void)updateLabelInsets;
- (void)updateLabelText:(id)text secondaryStrings:(id)strings;
- (void)updateLabelWeight:(unint64_t)weight;
- (void)updateRenderTraits:(id)traits displayContents:(id)contents;
- (void)updateSymbolInsets;
@end

@implementation TUILiveKeyView

- (id)nameFromControlType:(int)type
{
  if (type <= 22)
  {
    v3 = &stru_1F03BA8F8;
    v13 = @"return";
    if (type != 21)
    {
      v13 = 0;
    }

    if (type != 14)
    {
      v3 = v13;
    }

    v14 = @"emoji.face.grinning";
    v15 = @"globe";
    if (type != 13)
    {
      v15 = 0;
    }

    if (type != 9)
    {
      v14 = v15;
    }

    if (type <= 13)
    {
      v3 = v14;
    }

    v8 = @"mic";
    v16 = @"keyboard.chevron.compact.down";
    if (type != 5)
    {
      v16 = 0;
    }

    if (type != 4)
    {
      v8 = v16;
    }

    v17 = @"command";
    v18 = @"delete.left";
    if (type != 3)
    {
      v18 = 0;
    }

    if (type != 2)
    {
      v17 = v18;
    }

    if (type <= 3)
    {
      v8 = v17;
    }

    v12 = type <= 8;
  }

  else
  {
    v3 = @"mic";
    v4 = @"scribble";
    v5 = @"keyboard";
    if (type != 54)
    {
      v5 = 0;
    }

    if (type != 53)
    {
      v4 = v5;
    }

    if (type != 52)
    {
      v3 = v4;
    }

    v6 = @"arrow.forward";
    v7 = @"capslock";
    if (type != 51)
    {
      v7 = 0;
    }

    if (type != 46)
    {
      v6 = v7;
    }

    if (type <= 51)
    {
      v3 = v6;
    }

    v8 = @"mic";
    v9 = @"arrow.backward";
    if (type != 45)
    {
      v9 = 0;
    }

    if (type != 31)
    {
      v8 = v9;
    }

    v10 = @"shift";
    v11 = @"arrow.right.to.line";
    if (type != 26)
    {
      v11 = 0;
    }

    if (type != 23)
    {
      v10 = v11;
    }

    if (type <= 30)
    {
      v8 = v10;
    }

    v12 = type <= 45;
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

- (BOOL)keyIsControlType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy interactionType] == 4 || objc_msgSend(typeCopy, "interactionType") == 5 || objc_msgSend(typeCopy, "interactionType") == 6 || objc_msgSend(typeCopy, "interactionType") == 9 || objc_msgSend(typeCopy, "interactionType") == 10 || objc_msgSend(typeCopy, "interactionType") == 11 || objc_msgSend(typeCopy, "interactionType") == 13 || objc_msgSend(typeCopy, "interactionType") == 14 || objc_msgSend(typeCopy, "interactionType") == 37 || objc_msgSend(typeCopy, "interactionType") == 38 || objc_msgSend(typeCopy, "interactionType") == 17;

  return v4;
}

- (BOOL)keyIsSpaceType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy interactionType] == 15 || objc_msgSend(typeCopy, "displayType") == 25;

  return v4;
}

- (BOOL)keyIsStringType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy interactionType] == 1 || objc_msgSend(typeCopy, "interactionType") == 2 || objc_msgSend(typeCopy, "interactionType") == 16;

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

- (void)updateForTransitionProgress:(double)progress
{
  animationProperties = [(TUILiveKeyView *)self animationProperties];
  [animationProperties startingPrimaryLabelInsets];
  v7 = v6;
  animationProperties2 = [(TUILiveKeyView *)self animationProperties];
  [animationProperties2 endingPrimaryLabelInsets];
  [(TUILiveKeyView *)self linearInterpolationFromStart:v7 end:v9 atTime:progress];
  v11 = v10;
  labelBottom = [(TUILiveKeyView *)self labelBottom];
  [labelBottom setConstant:v11];

  animationProperties3 = [(TUILiveKeyView *)self animationProperties];
  [animationProperties3 startingCornerRadius];
  v15 = v14;
  animationProperties4 = [(TUILiveKeyView *)self animationProperties];
  [animationProperties4 endingCornerRadius];
  [(TUILiveKeyView *)self linearInterpolationFromStart:v15 end:v17 atTime:progress];
  v19 = v18;
  keyCapBackground = [(TUILiveKeyView *)self keyCapBackground];
  layer = [keyCapBackground layer];
  [layer setCornerRadius:v19];

  animationProperties5 = [(TUILiveKeyView *)self animationProperties];
  [animationProperties5 startingBackgroundInsets];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  animationProperties6 = [(TUILiveKeyView *)self animationProperties];
  [animationProperties6 endingBackgroundInsets];
  [(TUILiveKeyView *)self edgeInsetInterpolationFromStart:v24 end:v26 atTime:v28, v30, v32, v33, v34, v35, *&progress];
  [(TUILiveKeyView *)self updateBackgroundWithInsets:?];

  animationProperties7 = [(TUILiveKeyView *)self animationProperties];
  [animationProperties7 startingFontSize];
  v38 = v37;
  animationProperties8 = [(TUILiveKeyView *)self animationProperties];
  [animationProperties8 endingFontSize];
  [(TUILiveKeyView *)self linearInterpolationFromStart:v38 end:v40 atTime:progress];
  [(TUILiveKeyView *)self updateFontSize:?];

  secondaryKeyLabel = [(TUILiveKeyView *)self secondaryKeyLabel];

  if (secondaryKeyLabel)
  {
    secondaryKeyLabel2 = [(TUILiveKeyView *)self secondaryKeyLabel];
    secondaryKeyLabel3 = [(TUILiveKeyView *)self secondaryKeyLabel];
    font = [secondaryKeyLabel3 font];
    animationProperties9 = [(TUILiveKeyView *)self animationProperties];
    [animationProperties9 startingSecondaryFontSize];
    v47 = v46;
    animationProperties10 = [(TUILiveKeyView *)self animationProperties];
    [animationProperties10 endingSecondaryFontSize];
    [(TUILiveKeyView *)self linearInterpolationFromStart:v47 end:v49 atTime:progress];
    v50 = [font fontWithSize:?];
    [secondaryKeyLabel2 setFont:v50];

    secondaryKeyLabel4 = [(TUILiveKeyView *)self secondaryKeyLabel];
    [(TUILiveKeyView *)self linearInterpolationFromStart:0.0 end:1.0 atTime:progress];
    v52 = v51;
    [(TUILiveKeyView *)self linearInterpolationFromStart:0.5 end:0.0 atTime:progress];
    [secondaryKeyLabel4 setAlpha:v52 - v53];
  }
}

- (id)shadowPathForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  traits = [(TUILiveKeyView *)self traits];
  geometry = [traits geometry];
  [geometry roundRectRadius];
  v12 = v11;

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = CGRectGetMaxY(v18) - v12;
  [bezierPath moveToPoint:{x, v13}];
  [bezierPath addArcWithCenter:0 radius:? startAngle:? endAngle:? clockwise:?];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v14 = CGRectGetMaxX(v19) - v12;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  [bezierPath addLineToPoint:{v14, CGRectGetMaxY(v20)}];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [bezierPath addArcWithCenter:0 radius:CGRectGetMaxX(v21) - v12 startAngle:v13 endAngle:v12 clockwise:{1.57079633, 0.0}];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v15 = v13 + 1.0;
  [bezierPath addArcWithCenter:1 radius:CGRectGetMaxX(v22) - v12 startAngle:v15 endAngle:v12 clockwise:{0.0, 1.57079633}];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  [bezierPath addLineToPoint:{x + v12, CGRectGetMaxY(v23) + 1.0}];
  [bezierPath addArcWithCenter:1 radius:x + v12 startAngle:v15 endAngle:v12 clockwise:{1.57079633, 3.14159265}];
  [bezierPath closePath];

  return bezierPath;
}

- (id)roundedRectForRect:(CGRect)rect radius:(double)radius
{
  v4 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:rect.origin.x cornerRadius:{rect.origin.y, rect.size.width, rect.size.height, radius}];
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
    keyStyle = [(TUILiveKeyView *)self keyStyle];
    v3 = 7.0;
    if (keyStyle == 3)
    {
      v4 = 7.0;
    }

    else
    {
      v4 = 8.0;
    }

    v5 = 2.0;
    if (keyStyle != 3)
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
    keyStyle = [(TUILiveKeyView *)self keyStyle];
    if (keyStyle == 3)
    {
      v3 = 2.0;
    }

    else
    {
      v3 = 3.0;
    }

    v5 = 7.0;
    if (keyStyle == 3)
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

- (void)updateLabelWeight:(unint64_t)weight
{
  v87[2] = *MEMORY[0x1E69E9840];
  keyCapBackground = [(TUILiveKeyView *)self keyCapBackground];

  if (keyCapBackground)
  {
    if ([(TUILiveKeyView *)self keyStyle]== 1 || [(TUILiveKeyView *)self keyStyle]== 4)
    {
      weight = -1;
    }

    horizontalContentConstraint = [(TUILiveKeyView *)self horizontalContentConstraint];
    isActive = [horizontalContentConstraint isActive];

    if (isActive)
    {
      v8 = MEMORY[0x1E696ACD8];
      horizontalContentConstraint2 = [(TUILiveKeyView *)self horizontalContentConstraint];
      v87[0] = horizontalContentConstraint2;
      verticalContentConstraint = [(TUILiveKeyView *)self verticalContentConstraint];
      v87[1] = verticalContentConstraint;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
      [v8 deactivateConstraints:v11];
    }

    keyLabel = [(TUILiveKeyView *)self keyLabel];
    v13 = keyLabel;
    switch(weight)
    {
      case 8uLL:
        [keyLabel setTextAlignment:2];

        symbolImageView = [(TUILiveKeyView *)self symbolImageView];
        if (!symbolImageView)
        {
          goto LABEL_23;
        }

        v50 = symbolImageView;
        symbolImageView2 = [(TUILiveKeyView *)self symbolImageView];
        superview = [symbolImageView2 superview];

        if (!superview)
        {
          goto LABEL_23;
        }

        keyCapBackground2 = [(TUILiveKeyView *)self keyCapBackground];
        rightAnchor = [keyCapBackground2 rightAnchor];
        symbolImageView3 = [(TUILiveKeyView *)self symbolImageView];
        rightAnchor2 = [symbolImageView3 rightAnchor];
        animationProperties = [(TUILiveKeyView *)self animationProperties];
        [animationProperties startingPrimaryLabelInsets];
        v59 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v58];
        [(TUILiveKeyView *)self setHorizontalContentConstraint:v59];

        keyCapBackground3 = [(TUILiveKeyView *)self keyCapBackground];
        bottomAnchor = [keyCapBackground3 bottomAnchor];
        symbolImageView4 = [(TUILiveKeyView *)self symbolImageView];
        bottomAnchor2 = [symbolImageView4 bottomAnchor];
        animationProperties2 = [(TUILiveKeyView *)self animationProperties];
        [animationProperties2 startingPrimaryLabelInsets];
        v66 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v65];
        [(TUILiveKeyView *)self setVerticalContentConstraint:v66];

        v28 = MEMORY[0x1E696ACD8];
        horizontalContentConstraint3 = [(TUILiveKeyView *)self horizontalContentConstraint];
        v84 = horizontalContentConstraint3;
        v30 = &v84;
        break;
      case 4uLL:
        [keyLabel setTextAlignment:0];

        symbolImageView5 = [(TUILiveKeyView *)self symbolImageView];
        if (!symbolImageView5)
        {
          goto LABEL_23;
        }

        v32 = symbolImageView5;
        symbolImageView6 = [(TUILiveKeyView *)self symbolImageView];
        superview2 = [symbolImageView6 superview];

        if (!superview2)
        {
          goto LABEL_23;
        }

        symbolImageView7 = [(TUILiveKeyView *)self symbolImageView];
        leftAnchor = [symbolImageView7 leftAnchor];
        keyCapBackground4 = [(TUILiveKeyView *)self keyCapBackground];
        leftAnchor2 = [keyCapBackground4 leftAnchor];
        animationProperties3 = [(TUILiveKeyView *)self animationProperties];
        [animationProperties3 startingPrimaryLabelInsets];
        v41 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v40];
        [(TUILiveKeyView *)self setHorizontalContentConstraint:v41];

        keyCapBackground5 = [(TUILiveKeyView *)self keyCapBackground];
        bottomAnchor3 = [keyCapBackground5 bottomAnchor];
        symbolImageView8 = [(TUILiveKeyView *)self symbolImageView];
        bottomAnchor4 = [symbolImageView8 bottomAnchor];
        animationProperties4 = [(TUILiveKeyView *)self animationProperties];
        [animationProperties4 startingPrimaryLabelInsets];
        v48 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v47];
        [(TUILiveKeyView *)self setVerticalContentConstraint:v48];

        v28 = MEMORY[0x1E696ACD8];
        horizontalContentConstraint3 = [(TUILiveKeyView *)self horizontalContentConstraint];
        v85 = horizontalContentConstraint3;
        v30 = &v85;
        break;
      case 0xFFFFFFFFFFFFFFFFLL:
        [keyLabel setTextAlignment:1];

        symbolImageView9 = [(TUILiveKeyView *)self symbolImageView];
        if (!symbolImageView9)
        {
          goto LABEL_23;
        }

        v15 = symbolImageView9;
        symbolImageView10 = [(TUILiveKeyView *)self symbolImageView];
        superview3 = [symbolImageView10 superview];

        if (!superview3)
        {
          goto LABEL_23;
        }

        symbolImageView11 = [(TUILiveKeyView *)self symbolImageView];
        centerXAnchor = [symbolImageView11 centerXAnchor];
        keyCapBackground6 = [(TUILiveKeyView *)self keyCapBackground];
        centerXAnchor2 = [keyCapBackground6 centerXAnchor];
        v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        [(TUILiveKeyView *)self setHorizontalContentConstraint:v22];

        symbolImageView12 = [(TUILiveKeyView *)self symbolImageView];
        centerYAnchor = [symbolImageView12 centerYAnchor];
        keyCapBackground7 = [(TUILiveKeyView *)self keyCapBackground];
        centerYAnchor2 = [keyCapBackground7 centerYAnchor];
        v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [(TUILiveKeyView *)self setVerticalContentConstraint:v27];

        v28 = MEMORY[0x1E696ACD8];
        horizontalContentConstraint3 = [(TUILiveKeyView *)self horizontalContentConstraint];
        v86 = horizontalContentConstraint3;
        v30 = &v86;
        break;
      default:
        [keyLabel setTextAlignment:1];

        symbolImageView13 = [(TUILiveKeyView *)self symbolImageView];
        if (!symbolImageView13)
        {
          goto LABEL_23;
        }

        v68 = symbolImageView13;
        symbolImageView14 = [(TUILiveKeyView *)self symbolImageView];
        superview4 = [symbolImageView14 superview];

        if (!superview4)
        {
          goto LABEL_23;
        }

        symbolImageView15 = [(TUILiveKeyView *)self symbolImageView];
        centerXAnchor3 = [symbolImageView15 centerXAnchor];
        keyCapBackground8 = [(TUILiveKeyView *)self keyCapBackground];
        centerXAnchor4 = [keyCapBackground8 centerXAnchor];
        v75 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        [(TUILiveKeyView *)self setHorizontalContentConstraint:v75];

        symbolImageView16 = [(TUILiveKeyView *)self symbolImageView];
        centerYAnchor3 = [symbolImageView16 centerYAnchor];
        keyCapBackground9 = [(TUILiveKeyView *)self keyCapBackground];
        centerYAnchor4 = [keyCapBackground9 centerYAnchor];
        v80 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        [(TUILiveKeyView *)self setVerticalContentConstraint:v80];

        v28 = MEMORY[0x1E696ACD8];
        horizontalContentConstraint3 = [(TUILiveKeyView *)self horizontalContentConstraint];
        v83 = horizontalContentConstraint3;
        v30 = &v83;
        break;
    }

    verticalContentConstraint2 = [(TUILiveKeyView *)self verticalContentConstraint];
    v30[1] = verticalContentConstraint2;
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

  labelBottom = [(TUILiveKeyView *)self labelBottom];
  [labelBottom setConstant:v3];

  keyStyle = [(TUILiveKeyView *)self keyStyle];
  layoutType = [(TUILiveKeyView *)self layoutType];
  if (keyStyle == 2 || layoutType == 3)
  {
    v8 = 6.0;
  }

  else
  {
    v8 = 3.0;
  }

  labelTrailing = [(TUILiveKeyView *)self labelTrailing];
  [labelTrailing setConstant:v8];
}

- (void)updateLabelText:(id)text secondaryStrings:(id)strings
{
  textCopy = text;
  [(TUILiveKeyView *)self setKeyCap:?];
  keyLabel = [(TUILiveKeyView *)self keyLabel];

  if (keyLabel)
  {
    if ([(TUILiveKeyView *)self layoutType]== 4)
    {
      keyLabel2 = [(TUILiveKeyView *)self keyLabel];
      v7 = keyLabel2;
      v8 = @" ";
LABEL_6:
      [keyLabel2 setText:v8];

      goto LABEL_7;
    }

    if ([(TUILiveKeyView *)self layoutType]== 2 || [(TUILiveKeyView *)self layoutType]== 3 && ([(TUILiveKeyView *)self imageName], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      keyLabel2 = [(TUILiveKeyView *)self keyLabel];
      v7 = keyLabel2;
      v8 = textCopy;
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)updateFontSize:(double)size
{
  [(TUILiveKeyView *)self fontSize];
  if (v5 == 0.0)
  {
    fontForLabel = [(TUILiveKeyView *)self fontForLabel];
    keyLabel = [(TUILiveKeyView *)self keyLabel];
    [keyLabel setFont:fontForLabel];
  }

  else
  {
    [(TUILiveKeyView *)self fontSize];
    if (vabdd_f64(size, v8) < 1.0)
    {
      return;
    }

    fontForLabel = [(TUILiveKeyView *)self keyLabel];
    keyLabel = [fontForLabel font];
    v9 = [keyLabel fontWithSize:size];
    keyLabel2 = [(TUILiveKeyView *)self keyLabel];
    [keyLabel2 setFont:v9];
  }

  [(TUILiveKeyView *)self setFontSize:size];
}

- (id)fontForSymbolStyle:(id)style
{
  styleCopy = style;
  fontName = [styleCopy fontName];
  [styleCopy fontSize];
  v6 = v5;
  [styleCopy fontWeight];
  v8 = v7;
  [styleCopy fontWidth];
  v10 = v9;
  keycapsFallback = [styleCopy keycapsFallback];

  v12 = UIKBCreateCTFont(fontName, keycapsFallback, v6, v8, v10);

  return v12;
}

- (id)fontForLabel
{
  traits = [(TUILiveKeyView *)self traits];
  symbolStyle = [traits symbolStyle];
  v5 = [(TUILiveKeyView *)self fontForSymbolStyle:symbolStyle];

  return v5;
}

- (void)createDualStringLabels
{
  v73[6] = *MEMORY[0x1E69E9840];
  secondaryKeyLabel = [(TUILiveKeyView *)self secondaryKeyLabel];

  if (!secondaryKeyLabel)
  {
    keyLabel = [(TUILiveKeyView *)self keyLabel];
    [keyLabel removeFromSuperview];

    [(TUILiveKeyView *)self setKeyLabel:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setTextAlignment:1];
    [(TUILiveKeyView *)self addSubview:v5];
    [(TUILiveKeyView *)self setSecondaryKeyLabel:v5];
  }

  fontForLabel = [(TUILiveKeyView *)self fontForLabel];
  secondaryKeyLabel2 = [(TUILiveKeyView *)self secondaryKeyLabel];
  [secondaryKeyLabel2 setFont:fontForLabel];

  traits = [(TUILiveKeyView *)self traits];
  secondarySymbolStyles = [traits secondarySymbolStyles];
  firstObject = [secondarySymbolStyles firstObject];

  if (firstObject)
  {
    textColor = [firstObject textColor];

    if (textColor)
    {
      [firstObject textOpacity];
      v13 = v12;
      v14 = MEMORY[0x1E69DC888];
      textColor2 = [firstObject textColor];
      v16 = [v14 colorWithCGColor:UIKBGetNamedColor(textColor2)];
      v17 = [v16 colorWithAlphaComponent:v13];
      secondaryKeyLabel3 = [(TUILiveKeyView *)self secondaryKeyLabel];
      [secondaryKeyLabel3 setTextColor:v17];
    }

    v19 = [(TUILiveKeyView *)self fontForSymbolStyle:firstObject];
    secondaryKeyLabel4 = [(TUILiveKeyView *)self secondaryKeyLabel];
    [secondaryKeyLabel4 setFont:v19];
  }

  keyLabel2 = [(TUILiveKeyView *)self keyLabel];

  if (keyLabel2)
  {
    if (secondaryKeyLabel)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 setTextAlignment:1];
    fontForLabel2 = [(TUILiveKeyView *)self fontForLabel];
    [v22 setFont:fontForLabel2];

    traits2 = [(TUILiveKeyView *)self traits];
    symbolStyle = [traits2 symbolStyle];
    textColor3 = [symbolStyle textColor];

    if (textColor3)
    {
      v27 = MEMORY[0x1E69DC888];
      traits3 = [(TUILiveKeyView *)self traits];
      symbolStyle2 = [traits3 symbolStyle];
      textColor4 = [symbolStyle2 textColor];
      v31 = [v27 colorWithCGColor:UIKBGetNamedColor(textColor4)];
      [v22 setTextColor:v31];
    }

    [(TUILiveKeyView *)self addSubview:v22];
    [(TUILiveKeyView *)self setKeyLabel:v22];
  }

  labelBottom = [(TUILiveKeyView *)self labelBottom];
  isActive = [labelBottom isActive];

  if (isActive)
  {
    labelBottom2 = [(TUILiveKeyView *)self labelBottom];
    [labelBottom2 setActive:0];
  }

  keyLabel3 = [(TUILiveKeyView *)self keyLabel];
  bottomAnchor = [keyLabel3 bottomAnchor];
  keyCapBackground = [(TUILiveKeyView *)self keyCapBackground];
  bottomAnchor2 = [keyCapBackground bottomAnchor];
  animationProperties = [(TUILiveKeyView *)self animationProperties];
  [animationProperties startingPrimaryLabelInsets];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v40];
  [(TUILiveKeyView *)self setLabelBottom:v41];

  secondaryKeyLabel5 = [(TUILiveKeyView *)self secondaryKeyLabel];
  topAnchor = [secondaryKeyLabel5 topAnchor];
  keyCapBackground2 = [(TUILiveKeyView *)self keyCapBackground];
  topAnchor2 = [keyCapBackground2 topAnchor];
  v67 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v73[0] = v67;
  secondaryKeyLabel6 = [(TUILiveKeyView *)self secondaryKeyLabel];
  centerXAnchor = [secondaryKeyLabel6 centerXAnchor];
  keyCapBackground3 = [(TUILiveKeyView *)self keyCapBackground];
  centerXAnchor2 = [keyCapBackground3 centerXAnchor];
  [firstObject textOffset];
  v62 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:?];
  v73[1] = v62;
  keyLabel4 = [(TUILiveKeyView *)self keyLabel];
  centerXAnchor3 = [keyLabel4 centerXAnchor];
  keyCapBackground4 = [(TUILiveKeyView *)self keyCapBackground];
  centerXAnchor4 = [keyCapBackground4 centerXAnchor];
  traits4 = [(TUILiveKeyView *)self traits];
  symbolStyle3 = [traits4 symbolStyle];
  [symbolStyle3 textOffset];
  v55 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:?];
  v73[2] = v55;
  keyLabel5 = [(TUILiveKeyView *)self keyLabel];
  topAnchor3 = [keyLabel5 topAnchor];
  keyCapBackground5 = [(TUILiveKeyView *)self keyCapBackground];
  topAnchor4 = [keyCapBackground5 topAnchor];
  animationProperties2 = [(TUILiveKeyView *)self animationProperties];
  [animationProperties2 startingPrimaryLabelInsets];
  [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
  v45 = v72 = firstObject;
  v73[3] = v45;
  labelBottom3 = [(TUILiveKeyView *)self labelBottom];
  v73[4] = labelBottom3;
  secondaryKeyLabel7 = [(TUILiveKeyView *)self secondaryKeyLabel];
  heightAnchor = [secondaryKeyLabel7 heightAnchor];
  keyCapBackground6 = [(TUILiveKeyView *)self keyCapBackground];
  heightAnchor2 = [keyCapBackground6 heightAnchor];
  v51 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
  v73[5] = v51;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:6];

  firstObject = v72;
  [MEMORY[0x1E696ACD8] activateConstraints:v53];

LABEL_16:
}

- (id)labelForKeyCap:(id)cap
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCC10];
  capCopy = cap;
  v6 = objc_alloc_init(v4);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTextAlignment:1];
  [v6 setText:capCopy];

  fontForLabel = [(TUILiveKeyView *)self fontForLabel];
  [v6 setFont:fontForLabel];

  traits = [(TUILiveKeyView *)self traits];
  symbolStyle = [traits symbolStyle];
  textColor = [symbolStyle textColor];

  if (textColor)
  {
    v11 = MEMORY[0x1E69DC888];
    traits2 = [(TUILiveKeyView *)self traits];
    symbolStyle2 = [traits2 symbolStyle];
    textColor2 = [symbolStyle2 textColor];
    v15 = [v11 colorWithCGColor:UIKBGetNamedColor(textColor2)];
    [v6 setTextColor:v15];
  }

  [(TUILiveKeyView *)self addSubview:v6];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  topAnchor = [v6 topAnchor];
  topAnchor2 = [(TUILiveKeyView *)self topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [(TUILiveKeyView *)self bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  v34[0] = v19;
  v34[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v16 addObjectsFromArray:v23];

  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [(TUILiveKeyView *)self leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];

  trailingAnchor = [(TUILiveKeyView *)self trailingAnchor];
  trailingAnchor2 = [v6 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];

  v33[0] = v26;
  v33[1] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v16 addObjectsFromArray:v30];

  [MEMORY[0x1E696ACD8] activateConstraints:v16];
  labelBottom = [(TUILiveKeyView *)self labelBottom];

  if (!labelBottom)
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
  keyLabel = [(TUILiveKeyView *)self keyLabel];

  if (!keyLabel)
  {
    keyCap = [(TUILiveKeyView *)self keyCap];
    v5 = [(TUILiveKeyView *)self labelForKeyCap:keyCap];
    [(TUILiveKeyView *)self setKeyLabel:v5];
  }

  keyCap2 = [(TUILiveKeyView *)self keyCap];
  [(TUILiveKeyView *)self updateLabelText:keyCap2];
}

- (id)symbolImageConfigForRenderTraits:(id)traits traitCollection:(id)collection
{
  traitsCopy = traits;
  collectionCopy = collection;
  symbolStyle = [traitsCopy symbolStyle];
  v8 = MEMORY[0x193AE8160]([symbolStyle fontWeightForSymbolImage]);

  if (!v8)
  {
    symbolStyle2 = [traitsCopy symbolStyle];
    v10 = MEMORY[0x193AE8160]([symbolStyle2 fontWeight]);

    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = 4;
    }
  }

  symbolStyle3 = [traitsCopy symbolStyle];
  [symbolStyle3 fontSizeForSymbolImage];
  v13 = v12;

  if (v13 == 0.0)
  {
    symbolStyle4 = [traitsCopy symbolStyle];
    [symbolStyle4 fontSize];
    v13 = v15;
  }

  v16 = MEMORY[0x1E69DCAD8];
  symbolStyle5 = [traitsCopy symbolStyle];
  v18 = [v16 configurationWithPointSize:v8 weight:objc_msgSend(symbolStyle5 scale:{"symbolScale"), v13}];

  v19 = [v18 configurationWithTraitCollection:collectionCopy];

  return v19;
}

- (id)imageWithName:(id)name
{
  nameCopy = name;
  traits = [(TUILiveKeyView *)self traits];
  traitCollection = [(TUILiveKeyView *)self traitCollection];
  v7 = [(TUILiveKeyView *)self symbolImageConfigForRenderTraits:traits traitCollection:traitCollection];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy withConfiguration:v7];

  return v8;
}

- (void)updateSymbolInsets
{
  keyStyle = [(TUILiveKeyView *)self keyStyle];
  symbolImageView = [(TUILiveKeyView *)self symbolImageView];
  image = [symbolImageView image];
  [image baselineOffsetFromBottom];
  v7 = v6;

  traits = [(TUILiveKeyView *)self traits];
  symbolStyle = [traits symbolStyle];
  [symbolStyle textOffset];
  if (keyStyle == 1)
  {
    v11 = -v10;
  }

  else
  {
    v11 = v10;
  }

  if (keyStyle == 1)
  {
    v12 = -2.0;
  }

  else
  {
    v12 = -3.0;
  }

  traits2 = [(TUILiveKeyView *)self traits];
  symbolStyle2 = [traits2 symbolStyle];
  [symbolStyle2 textOffset];
  v16 = v15;

  horizontalContentConstraint = [(TUILiveKeyView *)self horizontalContentConstraint];
  [horizontalContentConstraint setConstant:v11 + v12];

  verticalContentConstraint = [(TUILiveKeyView *)self verticalContentConstraint];
  [verticalContentConstraint setConstant:v16 + v7 * -0.5];
}

- (void)keyWithSymbolView
{
  symbolImageView = [(TUILiveKeyView *)self symbolImageView];

  if (!symbolImageView)
  {
    imageName = [(TUILiveKeyView *)self imageName];

    if (!imageName)
    {
      goto LABEL_8;
    }

    imageName2 = [(TUILiveKeyView *)self imageName];
    v6 = [(TUILiveKeyView *)self imageWithName:imageName2];

    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    [(TUILiveKeyView *)self setSymbolImageView:v10];

    symbolImageView2 = [(TUILiveKeyView *)self symbolImageView];
    [symbolImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    symbolImageView3 = [(TUILiveKeyView *)self symbolImageView];
    [symbolImageView3 setContentMode:1];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    symbolImageView4 = [(TUILiveKeyView *)self symbolImageView];
    [symbolImageView4 setTintColor:labelColor];

    symbolImageView5 = [(TUILiveKeyView *)self symbolImageView];
    [(TUILiveKeyView *)self addSubview:symbolImageView5];
    goto LABEL_7;
  }

  if ([(TUILiveKeyView *)self usesImage])
  {
    imageName3 = [(TUILiveKeyView *)self imageName];

    if (imageName3)
    {
      imageName4 = [(TUILiveKeyView *)self imageName];
      v6 = [(TUILiveKeyView *)self imageWithName:imageName4];

      symbolImageView5 = [(TUILiveKeyView *)self symbolImageView];
      [symbolImageView5 setImage:v6];
LABEL_7:
    }
  }

LABEL_8:
  symbolImageView6 = [(TUILiveKeyView *)self symbolImageView];

  if (symbolImageView6)
  {
    v16 = MEMORY[0x1E69DC888];
    traits = [(TUILiveKeyView *)self traits];
    symbolStyle = [traits symbolStyle];
    textColor = [symbolStyle textColor];
    v19 = [v16 colorWithCGColor:UIKBGetNamedColor(textColor)];
    symbolImageView7 = [(TUILiveKeyView *)self symbolImageView];
    [symbolImageView7 setTintColor:v19];
  }
}

- (void)updateBackgroundWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  keyCapBackgroundConstraints = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
  v9 = [keyCapBackgroundConstraints count];

  if (v9 == 4)
  {
    keyCapBackgroundConstraints2 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    v11 = [keyCapBackgroundConstraints2 objectAtIndexedSubscript:0];
    [v11 setConstant:top];

    keyCapBackgroundConstraints3 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    v13 = [keyCapBackgroundConstraints3 objectAtIndexedSubscript:1];
    [v13 setConstant:left];

    keyCapBackgroundConstraints4 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    v15 = [keyCapBackgroundConstraints4 objectAtIndexedSubscript:2];
    [v15 setConstant:bottom];

    keyCapBackgroundConstraints5 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    v16 = [keyCapBackgroundConstraints5 objectAtIndexedSubscript:3];
    [v16 setConstant:right];
  }
}

- (void)makeKeyBackgrounds
{
  v85[4] = *MEMORY[0x1E69E9840];
  renderConfig = [(TUILiveKeyView *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  keyCapBackground = [(TUILiveKeyView *)self keyCapBackground];

  if (!keyCapBackground)
  {
    keyCapBackgroundConstraints = [(TUILiveKeyView *)self keyCapBackgroundConstraints];

    if (keyCapBackgroundConstraints)
    {
      v6 = MEMORY[0x1E696ACD8];
      keyCapBackgroundConstraints2 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
      [v6 deactivateConstraints:keyCapBackgroundConstraints2];
    }

    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUILiveKeyView *)self setKeyCapBackground:v9];

    keyCapBackground2 = [(TUILiveKeyView *)self keyCapBackground];
    [keyCapBackground2 setTranslatesAutoresizingMaskIntoConstraints:0];

    keyCapBackground3 = [(TUILiveKeyView *)self keyCapBackground];
    [(TUILiveKeyView *)self addSubview:keyCapBackground3];

    keyCapBackground4 = [(TUILiveKeyView *)self keyCapBackground];
    topAnchor = [keyCapBackground4 topAnchor];
    topAnchor2 = [(TUILiveKeyView *)self topAnchor];
    v80 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v85[0] = v80;
    keyCapBackground5 = [(TUILiveKeyView *)self keyCapBackground];
    leftAnchor = [keyCapBackground5 leftAnchor];
    leftAnchor2 = [(TUILiveKeyView *)self leftAnchor];
    v76 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v85[1] = v76;
    bottomAnchor = [(TUILiveKeyView *)self bottomAnchor];
    keyCapBackground6 = [(TUILiveKeyView *)self keyCapBackground];
    bottomAnchor2 = [keyCapBackground6 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v85[2] = v15;
    rightAnchor = [(TUILiveKeyView *)self rightAnchor];
    keyCapBackground7 = [(TUILiveKeyView *)self keyCapBackground];
    rightAnchor2 = [keyCapBackground7 rightAnchor];
    v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v85[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
    [(TUILiveKeyView *)self setKeyCapBackgroundConstraints:v20];

    v21 = MEMORY[0x1E696ACD8];
    keyCapBackgroundConstraints3 = [(TUILiveKeyView *)self keyCapBackgroundConstraints];
    [v21 activateConstraints:keyCapBackgroundConstraints3];
  }

  traits = [(TUILiveKeyView *)self traits];
  geometry = [traits geometry];
  [geometry roundRectRadius];
  v26 = v25;
  keyCapBackground8 = [(TUILiveKeyView *)self keyCapBackground];
  layer = [keyCapBackground8 layer];
  [layer setCornerRadius:v26];

  traits2 = [(TUILiveKeyView *)self traits];
  layeredBackgroundGradient = [traits2 layeredBackgroundGradient];
  if (!layeredBackgroundGradient || (-[TUILiveKeyView traits](self, "traits"), traits = objc_claimAutoreleasedReturnValue(), ([traits usesDarkAppearance] & 1) != 0))
  {
    traits3 = [(TUILiveKeyView *)self traits];
    backgroundGradient = [traits3 backgroundGradient];
    flatColorName = [backgroundGradient flatColorName];

    if (!layeredBackgroundGradient)
    {
      goto LABEL_10;
    }
  }

  else
  {
    traits4 = [(TUILiveKeyView *)self traits];
    layeredBackgroundGradient2 = [traits4 layeredBackgroundGradient];
    flatColorName = [layeredBackgroundGradient2 flatColorName];
  }

LABEL_10:
  if (!flatColorName)
  {
    renderConfig2 = [(TUILiveKeyView *)self renderConfig];
    if ([renderConfig2 colorAdaptiveBackground])
    {
      flatColorName = @"UIKBColorWhite";
      v37 = @"UIKBColorWhite";
    }

    else
    {
      traits5 = [(TUILiveKeyView *)self traits];
      usesDarkAppearance = [traits5 usesDarkAppearance];
      v40 = @"UIKBColorWhite";
      if (usesDarkAppearance)
      {
        v40 = @"UIKBColorWhite_Alpha30";
      }

      flatColorName = v40;
    }
  }

  UIKBGetNamedColor(flatColorName);
  v41 = [MEMORY[0x1E69DC888] colorWithCGColor:UIKBGetNamedColor(flatColorName)];
  traits6 = [(TUILiveKeyView *)self traits];
  backgroundGradient2 = [traits6 backgroundGradient];
  flatColorName2 = [backgroundGradient2 flatColorName];
  v45 = flatColorName2;
  if (flatColorName2)
  {
    flatColorName3 = flatColorName2;
  }

  else
  {
    traits7 = [(TUILiveKeyView *)self traits];
    layeredForegroundGradient = [traits7 layeredForegroundGradient];
    flatColorName3 = [layeredForegroundGradient flatColorName];
  }

  if (!flatColorName3)
  {
    v49 = UIKBColorBlue;
    if (!UIAccessibilityIsReduceTransparencyEnabled() && !UIAccessibilityDarkerSystemColorsEnabled())
    {
      v49 = UIKBColorKeyBlueKeyBackground;
    }

    flatColorName3 = *v49;
  }

  usesBlueBackground = [(TUILiveKeyView *)self usesBlueBackground];
  v51 = v41;
  if (usesBlueBackground)
  {
    v51 = [MEMORY[0x1E69DC888] colorWithCGColor:UIKBGetNamedColor(flatColorName3)];
  }

  keyCapBackground9 = [(TUILiveKeyView *)self keyCapBackground];
  [keyCapBackground9 setBackgroundColor:v51];

  if (usesBlueBackground)
  {
  }

  traits8 = [(TUILiveKeyView *)self traits];
  if ([traits8 blendForm] == 10)
  {

LABEL_32:
    keyCapBackground10 = [(TUILiveKeyView *)self keyCapBackground];
    layer2 = [keyCapBackground10 layer];
    traits9 = [(TUILiveKeyView *)self traits];
    v59 = [traits9 extraFiltersForType:*MEMORY[0x1E6979D78]];
    [layer2 setFilters:v59];

    [(TUILiveKeyView *)self backgroundInsets];
    [(TUILiveKeyView *)self updateBackgroundWithInsets:?];
    goto LABEL_33;
  }

  traits10 = [(TUILiveKeyView *)self traits];
  blendForm = [traits10 blendForm];

  if (blendForm == 11)
  {
    goto LABEL_32;
  }

  [(TUILiveKeyView *)self backgroundInsets];
  [(TUILiveKeyView *)self updateBackgroundWithInsets:?];
  if ((colorAdaptiveBackground & 1) == 0)
  {
    renderConfig3 = [(TUILiveKeyView *)self renderConfig];
    if ([renderConfig3 lightKeyboard])
    {
      v61 = @"UIKBColorBlack_Alpha35";
    }

    else
    {
      v61 = @"UIKBColorBlack_Alpha40";
    }

    v62 = UIKBGetNamedColor(v61);
    keyCapBackground11 = [(TUILiveKeyView *)self keyCapBackground];
    layer3 = [keyCapBackground11 layer];
    [layer3 setShadowColor:v62];

    keyCapBackground12 = [(TUILiveKeyView *)self keyCapBackground];
    layer4 = [keyCapBackground12 layer];
    [layer4 setShadowOffset:{0.0, 1.0}];

    keyCapBackground13 = [(TUILiveKeyView *)self keyCapBackground];
    layer5 = [keyCapBackground13 layer];
    [layer5 setShadowRadius:1.0];

    renderConfig4 = [(TUILiveKeyView *)self renderConfig];
    if ([renderConfig4 lightKeyboard])
    {
      v70 = 0.35;
    }

    else
    {
      v70 = 0.4;
    }

    keyCapBackground14 = [(TUILiveKeyView *)self keyCapBackground];
    layer6 = [keyCapBackground14 layer];
    *&v73 = v70;
    [layer6 setShadowOpacity:v73];

    keyCapBackground15 = [(TUILiveKeyView *)self keyCapBackground];
    layer7 = [keyCapBackground15 layer];
    [layer7 setShadowPathIsBounds:1];
  }

LABEL_33:
}

- (void)updateRenderTraits:(id)traits displayContents:(id)contents
{
  traitsCopy = traits;
  contentsCopy = contents;
  if (self->_traits != traitsCopy)
  {
    objc_storeStrong(&self->_traits, traits);
    if ([(TUILiveKeyView *)self layoutType]!= 3)
    {
      goto LABEL_18;
    }

    renderConfig = [(TUILiveKeyView *)self renderConfig];
    controlKeyBackgroundName = [renderConfig controlKeyBackgroundName];
    if (controlKeyBackgroundName)
    {
    }

    else
    {
      usesBlueBackground = [(TUILiveKeyView *)self usesBlueBackground];

      if (!usesBlueBackground)
      {
        goto LABEL_18;
      }
    }

    backgroundGradient = [(UIKBRenderTraits *)traitsCopy backgroundGradient];
    flatColorName = [backgroundGradient flatColorName];

    if (!flatColorName)
    {
      renderConfig2 = [(TUILiveKeyView *)self renderConfig];
      if ([renderConfig2 colorAdaptiveBackground])
      {
        flatColorName = @"UIKBColorWhite";
        v14 = @"UIKBColorWhite";
      }

      else
      {
        traits = [(TUILiveKeyView *)self traits];
        usesDarkAppearance = [traits usesDarkAppearance];
        v17 = @"UIKBColorWhite";
        if (usesDarkAppearance)
        {
          v17 = @"UIKBColorWhite_Alpha30";
        }

        flatColorName = v17;
      }
    }

    v18 = [MEMORY[0x1E69DC888] colorWithCGColor:UIKBGetNamedColor(flatColorName)];
    keyCapBackground = [(TUILiveKeyView *)self keyCapBackground];
    [keyCapBackground setBackgroundColor:v18];

    traits2 = [(TUILiveKeyView *)self traits];
    if ([traits2 blendForm] == 10)
    {
    }

    else
    {
      traits3 = [(TUILiveKeyView *)self traits];
      blendForm = [traits3 blendForm];

      if (blendForm != 11)
      {
LABEL_17:

LABEL_18:
        [(TUILiveKeyView *)self usesImage];
        if ([(TUILiveKeyView *)self usesImage])
        {
          symbolStyle = [(UIKBRenderTraits *)traitsCopy symbolStyle];
          if ([symbolStyle usesSymbolImage])
          {
            displayStringImage = [contentsCopy displayStringImage];
            if (displayStringImage)
            {
              if ([contentsCopy stringKeycapOverImage])
              {
                v29 = [contentsCopy forceImageKeycap] ^ 1;
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
            keyLabel = [(TUILiveKeyView *)self keyLabel];

            if (keyLabel)
            {
              keyLabel2 = [(TUILiveKeyView *)self keyLabel];
              [keyLabel2 removeFromSuperview];
            }

            displayStringImage2 = [contentsCopy displayStringImage];
            [(TUILiveKeyView *)self setImageName:displayStringImage2];
LABEL_46:

            [(TUILiveKeyView *)self backgroundInsets];
            [(TUILiveKeyView *)self updateBackgroundWithInsets:?];
            geometry = [(UIKBRenderTraits *)traitsCopy geometry];
            [geometry roundRectRadius];
            v49 = v48;
            keyCapBackground2 = [(TUILiveKeyView *)self keyCapBackground];
            layer = [keyCapBackground2 layer];
            [layer setCornerRadius:v49];

            goto LABEL_47;
          }
        }

        else
        {
          [(TUILiveKeyView *)self usesImage];
        }

        symbolImageView = [(TUILiveKeyView *)self symbolImageView];

        if (symbolImageView)
        {
          symbolImageView2 = [(TUILiveKeyView *)self symbolImageView];
          [symbolImageView2 removeFromSuperview];
        }

        displayString = [contentsCopy displayString];
        v33 = displayString;
        if (displayString)
        {
          displayStringImage2 = displayString;
        }

        else
        {
          fallbackContents = [contentsCopy fallbackContents];
          displayStringImage2 = [fallbackContents displayString];
        }

        secondaryDisplayStrings = [contentsCopy secondaryDisplayStrings];
        if ([displayStringImage2 length])
        {
          v37 = [secondaryDisplayStrings count];
          keyCap = [(TUILiveKeyView *)self keyCap];
          if (v37)
          {
            [(TUILiveKeyView *)self updateLabelText:keyCap secondaryStrings:secondaryDisplayStrings];
          }

          else
          {
            [(TUILiveKeyView *)self updateLabelText:keyCap];
          }
        }

        symbolStyle2 = [(UIKBRenderTraits *)traitsCopy symbolStyle];
        [symbolStyle2 fontSize];
        v41 = v40;
        [(TUILiveKeyView *)self fontSize];
        v43 = v42;

        if (v41 != v43)
        {
          symbolStyle3 = [(UIKBRenderTraits *)traitsCopy symbolStyle];
          [symbolStyle3 fontSize];
          [(TUILiveKeyView *)self updateFontSize:?];
        }

        goto LABEL_46;
      }
    }

    keyCapBackground3 = [(TUILiveKeyView *)self keyCapBackground];
    layer2 = [keyCapBackground3 layer];
    traits4 = [(TUILiveKeyView *)self traits];
    v26 = [traits4 extraFiltersForType:*MEMORY[0x1E6979D78]];
    [layer2 setFilters:v26];

    goto LABEL_17;
  }

LABEL_47:
}

- (void)updateKeyStyle:(int64_t)style
{
  if (self->_keyStyle != style)
  {
    self->_keyStyle = style;
    keyLabel = [(TUILiveKeyView *)self keyLabel];

    if (keyLabel)
    {
      [(TUILiveKeyView *)self updateLabelInsets];
    }

    symbolImageView = [(TUILiveKeyView *)self symbolImageView];

    if (symbolImageView)
    {
      [(TUILiveKeyView *)self updateSymbolInsets];
    }

    keyCapBackgroundConstraints = [(TUILiveKeyView *)self keyCapBackgroundConstraints];

    if (keyCapBackgroundConstraints)
    {
      [(TUILiveKeyView *)self backgroundInsets];

      [(TUILiveKeyView *)self updateBackgroundWithInsets:?];
    }
  }
}

- (UIEdgeInsets)edgeInsetInterpolationFromStart:(UIEdgeInsets)start end:(UIEdgeInsets)end atTime:(double)time
{
  right = end.right;
  bottom = end.bottom;
  left = end.left;
  v8 = start.right;
  v9 = start.bottom;
  v10 = start.left;
  [(TUILiveKeyView *)self linearInterpolationFromStart:start.top end:end.top atTime:time];
  v13 = v12;
  [(TUILiveKeyView *)self linearInterpolationFromStart:v10 end:left atTime:time];
  v15 = v14;
  [(TUILiveKeyView *)self linearInterpolationFromStart:v9 end:bottom atTime:time];
  v17 = v16;
  [(TUILiveKeyView *)self linearInterpolationFromStart:v8 end:right atTime:time];
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

- (TUILiveKeyView)initWithKey:(id)key renderTraits:(id)traits displayContents:(id)contents inheritedFactory:(id)factory
{
  keyCopy = key;
  traitsCopy = traits;
  contentsCopy = contents;
  factoryCopy = factory;
  v39.receiver = self;
  v39.super_class = TUILiveKeyView;
  v15 = [(TUILiveKeyView *)&v39 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v15)
  {
    displayString = [contentsCopy displayString];
    displayString2 = displayString;
    if (!displayString)
    {
      fallbackContents = [contentsCopy fallbackContents];
      displayString2 = [fallbackContents displayString];
    }

    objc_storeStrong(&v15->_keyCap, displayString2);
    if (!displayString)
    {
    }

    v15->_keyStyle = [keyCopy style];
    v15->_isShowingHighlight = 0;
    v15->_fontSize = 0.0;
    if ([keyCopy style] == -1)
    {
      v15->_keyStyle = 2;
    }

    objc_storeStrong(&v15->_traits, traits);
    symbolStyle = [traitsCopy symbolStyle];
    if ([symbolStyle usesSymbolImage])
    {
      displayStringImage = [contentsCopy displayStringImage];
      if (displayStringImage)
      {
        v20 = [contentsCopy stringKeycapOverImage] ^ 1;
      }

      else
      {
        v20 = 0;
      }

      if (([factoryCopy preferStringKeycapOverImage] & 1) == 0)
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

      if (![factoryCopy preferStringKeycapOverImage])
      {
        goto LABEL_18;
      }
    }

    if ([contentsCopy forceImageKeycap])
    {
LABEL_16:
      displayStringImage2 = [contentsCopy displayStringImage];
      imageName = v15->_imageName;
      v15->_imageName = displayStringImage2;

      v23 = 1;
      goto LABEL_19;
    }

LABEL_18:
    v23 = 0;
LABEL_19:
    backingTree = [keyCopy backingTree];
    displayType = [backingTree displayType];

    if (displayType == 23)
    {
      v15->_isShift = 1;
    }

    v15->_usesBlueBackground = 0;
    if ([keyCopy layoutType] != 3)
    {
      if ([keyCopy layoutType] == 4)
      {
        v15->_layoutType = 4;
        v15->_layoutShape = 0;
        backingTree2 = [keyCopy backingTree];
        name = [backingTree2 name];
        [(TUILiveKeyView *)v15 setAccessibilityIdentifier:name];
      }

      else
      {
        if ([keyCopy layoutShape] == -1)
        {
          layoutShape = 0;
        }

        else
        {
          layoutShape = [keyCopy layoutShape];
        }

        v15->_layoutShape = layoutShape;
        if ([keyCopy layoutType] == -1)
        {
          v15->_layoutType = 2;
        }

        else
        {
          v15->_layoutType = [keyCopy layoutType];
        }
      }

      goto LABEL_35;
    }

    v38 = factoryCopy;
    backgroundGradient = [traitsCopy backgroundGradient];
    flatColorName = [backgroundGradient flatColorName];
    if ([flatColorName containsString:@"Blue"])
    {
      v28 = traitsCopy;
    }

    else
    {
      v28 = traitsCopy;
      [traitsCopy layeredForegroundGradient];
      v31 = v37 = v23;
      flatColorName2 = [v31 flatColorName];
      v33 = [flatColorName2 containsString:@"Blue"];

      v23 = v37;
      if (!v33)
      {
LABEL_28:
        v15->_layoutType = 3;
        v15->_layoutShape = 0;
        traitsCopy = v28;
        factoryCopy = v38;
LABEL_35:
        renderConfig = [factoryCopy renderConfig];
        [(TUILiveKeyView *)v15 setRenderConfig:renderConfig];

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