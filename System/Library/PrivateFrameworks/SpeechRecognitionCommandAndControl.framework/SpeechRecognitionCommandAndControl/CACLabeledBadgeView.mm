@interface CACLabeledBadgeView
+ (CGSize)sizeOfBadgeGivenNumberOfDisplayedDigits:(int64_t)digits arrowOrientation:(int64_t)orientation badgePresentation:(int64_t)presentation badgeIndicator:(int64_t)indicator;
+ (CGSize)sizeOfBadgeGivenNumberOfDisplayedDigits:(int64_t)digits arrowOrientation:(int64_t)orientation badgePresentation:(int64_t)presentation badgeIndicator:(int64_t)indicator contrasted:(BOOL)contrasted;
+ (double)_heightForBadgeWithTextWithOrientation:(int64_t)orientation;
+ (double)badgeFontSize;
+ (id)_badgeFont;
+ (id)_badgeImageWithDoubleRightArrow;
+ (id)_badgeImageWithDownArrow;
+ (id)_badgeImageWithNoArrow;
+ (id)_badgeImageWithNoArrowAndBorder;
+ (id)_badgeImageWithRightArrow;
+ (id)_badgeImageWithTinyRightArrow;
+ (id)_maskImageForArrowOrientation:(int64_t)orientation badgePresentation:(int64_t)presentation badgeIndicator:(int64_t)indicator;
+ (id)imageBundle;
- (id)_initWithFrame:(CGRect)frame label:(id)label arrowOrientation:(int64_t)orientation badgePresentation:(int64_t)presentation badgeIndicator:(int64_t)indicator isContrasted:(BOOL)contrasted;
- (id)contrastedCopy;
- (id)copy;
- (void)_setUpSubviews;
- (void)layoutSubviews;
@end

@implementation CACLabeledBadgeView

+ (double)badgeFontSize
{
  _badgeFont = [self _badgeFont];
  [_badgeFont pointSize];
  v4 = v3;

  return v4;
}

+ (double)_heightForBadgeWithTextWithOrientation:(int64_t)orientation
{
  _badgeFont = [self _badgeFont];
  [_badgeFont lineHeight];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  UIRoundToScale();
  v6 = v5;

  return v6;
}

+ (id)_badgeFont
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  v5 = MEMORY[0x277D74300];
  _badgeFontTextStyle = [self _badgeFontTextStyle];
  v7 = [v5 preferredFontForTextStyle:_badgeFontTextStyle];

  return v7;
}

+ (CGSize)sizeOfBadgeGivenNumberOfDisplayedDigits:(int64_t)digits arrowOrientation:(int64_t)orientation badgePresentation:(int64_t)presentation badgeIndicator:(int64_t)indicator
{
  [self sizeOfBadgeGivenNumberOfDisplayedDigits:digits arrowOrientation:orientation badgePresentation:presentation badgeIndicator:indicator contrasted:0];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)sizeOfBadgeGivenNumberOfDisplayedDigits:(int64_t)digits arrowOrientation:(int64_t)orientation badgePresentation:(int64_t)presentation badgeIndicator:(int64_t)indicator contrasted:(BOOL)contrasted
{
  contrastedCopy = contrasted;
  v12 = [CACLabeledBadgeView alloc];
  v13 = digits - 1;
  if (v13 > 3)
  {
    v14 = @"88";
  }

  else
  {
    v14 = [&unk_287BF0008 objectAtIndexedSubscript:v13];
  }

  v15 = [(CACLabeledBadgeView *)v12 initWithFrame:v14 label:orientation arrowOrientation:presentation badgePresentation:indicator badgeIndicator:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v13 <= 3)
  {
  }

  [(CACLabeledBadgeView *)v15 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  if (contrastedCopy)
  {
    v18 = v17 * 1.08;
  }

  else
  {
    v18 = v17;
  }

  if (contrastedCopy)
  {
    v19 = v16 * 1.08;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19;
  v21 = v18;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (id)_badgeImageWithNoArrow
{
  _badgeFont = [self _badgeFont];
  if (!_badgeImageWithNoArrow_sBadgeFont || ([_badgeImageWithNoArrow_sBadgeFont isEqual:_badgeFont] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithNoArrow_sBadgeFont, _badgeFont);
    v4 = MEMORY[0x277D755B8];
    imageBundle = [self imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-tail-none" inBundle:imageBundle];
    v7 = [v6 resizableImageWithCapInsets:{4.0, 4.0, 4.0, 4.0}];
    v8 = _badgeImageWithNoArrow_sBadgeImage;
    _badgeImageWithNoArrow_sBadgeImage = v7;

    v9 = [_badgeImageWithNoArrow_sBadgeImage resizableImageWithCapInsets:{4.0, 4.0, 4.0, 4.0}];
    v10 = _badgeImageWithNoArrow_sBadgeImage;
    _badgeImageWithNoArrow_sBadgeImage = v9;
  }

  v11 = _badgeImageWithNoArrow_sBadgeImage;
  v12 = _badgeImageWithNoArrow_sBadgeImage;

  return v11;
}

+ (id)_badgeImageWithNoArrowAndBorder
{
  _badgeFont = [self _badgeFont];
  if (!_badgeImageWithNoArrowAndBorder_sBadgeFont || ([_badgeImageWithNoArrowAndBorder_sBadgeFont isEqual:_badgeFont] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithNoArrowAndBorder_sBadgeFont, _badgeFont);
    v4 = MEMORY[0x277D755B8];
    imageBundle = [self imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-bordered" inBundle:imageBundle];
    v7 = [v6 resizableImageWithCapInsets:{6.5, 6.5, 6.5, 6.5}];
    v8 = _badgeImageWithNoArrowAndBorder_sBadgeImage;
    _badgeImageWithNoArrowAndBorder_sBadgeImage = v7;

    v9 = [_badgeImageWithNoArrowAndBorder_sBadgeImage resizableImageWithCapInsets:{6.5, 6.5, 6.5, 6.5}];
    v10 = _badgeImageWithNoArrowAndBorder_sBadgeImage;
    _badgeImageWithNoArrowAndBorder_sBadgeImage = v9;
  }

  v11 = _badgeImageWithNoArrowAndBorder_sBadgeImage;
  v12 = _badgeImageWithNoArrowAndBorder_sBadgeImage;

  return v11;
}

+ (id)_badgeImageWithRightArrow
{
  _badgeFont = [self _badgeFont];
  if (!_badgeImageWithRightArrow_sBadgeFont || ([_badgeImageWithRightArrow_sBadgeFont isEqual:_badgeFont] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithRightArrow_sBadgeFont, _badgeFont);
    v4 = MEMORY[0x277D755B8];
    imageBundle = [self imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-single-tail-right" inBundle:imageBundle];
    v7 = [v6 _stretchableImageWithCapInsets:{0.0, 4.0, 0.0, 12.4}];
    v8 = _badgeImageWithRightArrow_sBadgeImage;
    _badgeImageWithRightArrow_sBadgeImage = v7;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      imageWithHorizontallyFlippedOrientation = [_badgeImageWithRightArrow_sBadgeImage imageWithHorizontallyFlippedOrientation];
      v12 = _badgeImageWithRightArrow_sBadgeImage;
      _badgeImageWithRightArrow_sBadgeImage = imageWithHorizontallyFlippedOrientation;
    }
  }

  v13 = _badgeImageWithRightArrow_sBadgeImage;
  v14 = _badgeImageWithRightArrow_sBadgeImage;

  return v13;
}

+ (id)_badgeImageWithDownArrow
{
  _badgeFont = [self _badgeFont];
  if (!_badgeImageWithDownArrow_sBadgeFont || ([_badgeImageWithDownArrow_sBadgeFont isEqual:_badgeFont] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithDownArrow_sBadgeFont, _badgeFont);
    v4 = MEMORY[0x277D755B8];
    imageBundle = [self imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-single-tail-down" inBundle:imageBundle];
    v7 = [v6 _stretchableImageWithCapInsets:{4.0, 4.0, 12.4, 4.0}];
    v8 = _badgeImageWithDownArrow_sBadgeImage;
    _badgeImageWithDownArrow_sBadgeImage = v7;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      imageWithHorizontallyFlippedOrientation = [_badgeImageWithDownArrow_sBadgeImage imageWithHorizontallyFlippedOrientation];
      v12 = _badgeImageWithDownArrow_sBadgeImage;
      _badgeImageWithDownArrow_sBadgeImage = imageWithHorizontallyFlippedOrientation;
    }
  }

  v13 = _badgeImageWithDownArrow_sBadgeImage;
  v14 = _badgeImageWithDownArrow_sBadgeImage;

  return v13;
}

+ (id)_badgeImageWithDoubleRightArrow
{
  _badgeFont = [self _badgeFont];
  if (!_badgeImageWithDoubleRightArrow_sBadgeFont || ([_badgeImageWithDoubleRightArrow_sBadgeFont isEqual:_badgeFont] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithDoubleRightArrow_sBadgeFont, _badgeFont);
    v4 = MEMORY[0x277D755B8];
    imageBundle = [self imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-double-tail-right" inBundle:imageBundle];
    v7 = [v6 _stretchableImageWithCapInsets:{0.0, 4.0, 0.0, 14.4}];
    v8 = _badgeImageWithDoubleRightArrow_sBadgeImage;
    _badgeImageWithDoubleRightArrow_sBadgeImage = v7;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      imageWithHorizontallyFlippedOrientation = [_badgeImageWithDoubleRightArrow_sBadgeImage imageWithHorizontallyFlippedOrientation];
      v12 = _badgeImageWithDoubleRightArrow_sBadgeImage;
      _badgeImageWithDoubleRightArrow_sBadgeImage = imageWithHorizontallyFlippedOrientation;
    }
  }

  v13 = _badgeImageWithDoubleRightArrow_sBadgeImage;
  v14 = _badgeImageWithDoubleRightArrow_sBadgeImage;

  return v13;
}

+ (id)_badgeImageWithTinyRightArrow
{
  if (_badgeImageWithTinyRightArrow_onceToken != -1)
  {
    +[CACLabeledBadgeView _badgeImageWithTinyRightArrow];
  }

  v3 = _badgeImageWithTinyRightArrow_sBadgeImage;

  return v3;
}

void __52__CACLabeledBadgeView__badgeImageWithTinyRightArrow__block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  v2 = v1;
  v13.width = 10.0;
  v13.height = 6.0;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v2);

  v11 = [MEMORY[0x277D75208] bezierPath];
  [v11 moveToPoint:{0.25, 2.25}];
  [v11 addArcWithCenter:1 radius:2.25 startAngle:2.25 endAngle:2.0 clockwise:{3.14159265, 4.71238898}];
  [v11 addLineToPoint:{4.0, 0.25}];
  [v11 addLineToPoint:{9.75, 3.0}];
  [v11 addLineToPoint:{4.0, 5.75}];
  [v11 addLineToPoint:{2.25, 5.75}];
  [v11 addArcWithCenter:1 radius:2.25 startAngle:3.75 endAngle:2.0 clockwise:{1.57079633, 3.14159265}];
  [v11 closePath];
  [v11 setLineWidth:0.5];
  v3 = [MEMORY[0x277D75348] blackColor];
  [v3 set];

  [v11 fill];
  v4 = [MEMORY[0x277D75348] whiteColor];
  [v4 set];

  [v11 stroke];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  v6 = _badgeImageWithTinyRightArrow_sBadgeImage;
  _badgeImageWithTinyRightArrow_sBadgeImage = v5;

  UIGraphicsEndImageContext();
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 userInterfaceLayoutDirection];

  if (v8 == 1)
  {
    v9 = [_badgeImageWithTinyRightArrow_sBadgeImage imageWithHorizontallyFlippedOrientation];
    v10 = _badgeImageWithTinyRightArrow_sBadgeImage;
    _badgeImageWithTinyRightArrow_sBadgeImage = v9;
  }
}

+ (id)_maskImageForArrowOrientation:(int64_t)orientation badgePresentation:(int64_t)presentation badgeIndicator:(int64_t)indicator
{
  if (presentation)
  {
    if (presentation == 2)
    {
      _badgeImageWithTinyRightArrow = [objc_opt_class() _badgeImageWithTinyRightArrow];
      goto LABEL_11;
    }

    if (presentation == 1)
    {
      _badgeImageWithTinyRightArrow = [objc_opt_class() _badgeImageWithNoArrowAndBorder];
      goto LABEL_11;
    }

LABEL_10:
    _badgeImageWithTinyRightArrow = 0;
    goto LABEL_11;
  }

  if (orientation != 2)
  {
    if (orientation == 1)
    {
      indicatorCopy = indicator;
      v8 = objc_opt_class();
      if ((indicatorCopy & 2) != 0)
      {
        [v8 _badgeImageWithDoubleRightArrow];
      }

      else
      {
        [v8 _badgeImageWithRightArrow];
      }
      _badgeImageWithTinyRightArrow = ;
      goto LABEL_11;
    }

    if (!orientation)
    {
      _badgeImageWithTinyRightArrow = [objc_opt_class() _badgeImageWithNoArrow];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  _badgeImageWithTinyRightArrow = [objc_opt_class() _badgeImageWithDownArrow];
LABEL_11:

  return _badgeImageWithTinyRightArrow;
}

+ (id)imageBundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CACLabeledBadgeView_imageBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (imageBundle_onceToken != -1)
  {
    dispatch_once(&imageBundle_onceToken, block);
  }

  v2 = imageBundle_sImageBundle;

  return v2;
}

uint64_t __34__CACLabeledBadgeView_imageBundle__block_invoke()
{
  imageBundle_sImageBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithFrame:(CGRect)frame label:(id)label arrowOrientation:(int64_t)orientation badgePresentation:(int64_t)presentation badgeIndicator:(int64_t)indicator isContrasted:(BOOL)contrasted
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  labelCopy = label;
  v23.receiver = self;
  v23.super_class = CACLabeledBadgeView;
  height = [(CACLabeledBadgeView *)&v23 initWithFrame:x, y, width, height];
  v20 = height;
  if (height)
  {
    objc_storeStrong(&height->_label, label);
    v20->_arrowOrientation = orientation;
    v20->_badgePresentation = presentation;
    v20->_badgeIndicatorMask = indicator;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CACLabeledBadgeView *)v20 setBackgroundColor:clearColor];

    [(CACLabeledBadgeView *)v20 setAlpha:1.0];
    v20->_isContrastBackdrop = contrasted;
    [(CACLabeledBadgeView *)v20 _setUpSubviews];
  }

  return v20;
}

- (id)contrastedCopy
{
  [(CACLabeledBadgeView *)self frame];
  v7 = CACCGRectIncreasedByPercentage(v3, v4, v5, v6, 0.08);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [CACLabeledBadgeView alloc];
  label = [(CACLabeledBadgeView *)self label];
  v16 = [(CACLabeledBadgeView *)v14 _initWithFrame:label label:[(CACLabeledBadgeView *)self arrowOrientation] arrowOrientation:[(CACLabeledBadgeView *)self badgePresentation] badgePresentation:[(CACLabeledBadgeView *)self badgeIndicatorMask] badgeIndicator:1 isContrasted:v7, v9, v11, v13];

  return v16;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CACLabeledBadgeView;
  [(CACLabeledBadgeView *)&v9 layoutSubviews];
  if (_UISolariumEnabled())
  {
    if ([MEMORY[0x277D79880] glassOverlaysEnabled])
    {
      [(CACLabeledBadgeView *)self bounds];
      v4 = v3;
      [(CACLabeledBadgeView *)self bounds];
      v6 = v5;
      badgeMaskImageView = [(CACLabeledBadgeView *)self badgeMaskImageView];
      maskView = [badgeMaskImageView maskView];
      [maskView setFrame:{0.0, 0.0, v4, v6}];
    }
  }
}

- (void)_setUpSubviews
{
  v184[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CACLabeledBadgeView *)self addSubview:v8];
  if (_UISolariumEnabled() && [MEMORY[0x277D79880] glassOverlaysEnabled])
  {
    v9 = objc_opt_new();
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:clearColor];

    v11 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = objc_opt_class();
    arrowOrientation = [(CACLabeledBadgeView *)self arrowOrientation];
    badgePresentation = [(CACLabeledBadgeView *)self badgePresentation];
    badgeIndicatorMask = [(CACLabeledBadgeView *)self badgeIndicatorMask];
    v16 = badgePresentation;
    v17 = v9;
    v18 = [v12 _maskImageForArrowOrientation:arrowOrientation badgePresentation:v16 badgeIndicator:badgeIndicatorMask];
    v19 = [v11 initWithImage:v18];
    [v9 setMaskView:v19];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addSubview:v9];
    [v9 setOverrideUserInterfaceStyle:2];
    [v9 vc_setWantsGlassAppearance:1];
    [v9 maskView];

    v20 = 0;
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277D755E8]);
    v22 = [objc_opt_class() _maskImageForArrowOrientation:-[CACLabeledBadgeView arrowOrientation](self badgePresentation:"arrowOrientation") badgeIndicator:{-[CACLabeledBadgeView badgePresentation](self, "badgePresentation"), -[CACLabeledBadgeView badgeIndicatorMask](self, "badgeIndicatorMask")}];
    v17 = [v21 initWithImage:v22];

    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addSubview:v17];
    if ([(CACLabeledBadgeView *)self isContrastBackdrop])
    {
      v23 = [CACAdaptiveBackdropView contrastAdaptiveBackdropViewWithFrame:v4, v5, v6, v7];
    }

    else
    {
      v23 = objc_opt_new();
    }

    v20 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [v20 layer];
    [layer setCaptureOnly:0];

    v25 = *MEMORY[0x277CDA610];
    layer2 = [v20 layer];
    [layer2 setCompositingFilter:v25];

    [v8 addSubview:v20];
  }

  layer3 = [(CACLabeledBadgeView *)self layer];
  [layer3 setAllowsGroupBlending:0];

  array = [MEMORY[0x277CBEB18] array];
  v178 = v8;
  v179 = array;
  if ([(CACLabeledBadgeView *)self badgePresentation]== 2)
  {
    v29 = v8;
    v30 = array;
    _badgeImageWithTinyRightArrow = [objc_opt_class() _badgeImageWithTinyRightArrow];
    selfCopy = [v17 widthAnchor];
    [_badgeImageWithTinyRightArrow size];
    v33 = [(CACLabeledBadgeView *)selfCopy constraintEqualToConstant:?];
    v182[0] = v33;
    heightAnchor = [v17 heightAnchor];
    [_badgeImageWithTinyRightArrow size];
    v36 = v35;
    isContrastBackdrop = [(CACLabeledBadgeView *)self isContrastBackdrop];
    v38 = 1.08;
    if (!isContrastBackdrop)
    {
      v38 = 1.0;
    }

    v39 = [heightAnchor constraintEqualToConstant:v36 * v38];
    v182[1] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:2];
    v41 = v30;
    v42 = v29;
    v43 = v40;
    [v41 addObjectsFromArray:v40];
  }

  else
  {
    v172 = v20;
    _badgeImageWithTinyRightArrow = objc_opt_new();
    [_badgeImageWithTinyRightArrow setTranslatesAutoresizingMaskIntoConstraints:0];
    [_badgeImageWithTinyRightArrow setTextAlignment:1];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [_badgeImageWithTinyRightArrow setTextColor:whiteColor];

    _badgeFont = [objc_opt_class() _badgeFont];
    [_badgeImageWithTinyRightArrow setFont:_badgeFont];

    label = [(CACLabeledBadgeView *)self label];
    [_badgeImageWithTinyRightArrow setText:label];

    [_badgeImageWithTinyRightArrow setHidden:{-[CACLabeledBadgeView isContrastBackdrop](self, "isContrastBackdrop")}];
    selfCopy = self;
    [(CACLabeledBadgeView *)selfCopy addSubview:_badgeImageWithTinyRightArrow];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v176 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76818]];
    v50 = MEMORY[0x277D75520];
    _badgeFontTextStyle = [objc_opt_class() _badgeFontTextStyle];
    v52 = [v50 metricsForTextStyle:_badgeFontTextStyle];

    if (-[CACLabeledBadgeView badgePresentation](selfCopy, "badgePresentation") != 1 || ([_badgeImageWithTinyRightArrow text], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "length"), v53, v55 = 1.25, v54 <= 1))
    {
      arrowOrientation2 = [(CACLabeledBadgeView *)selfCopy arrowOrientation];
      v55 = 3.0;
      if (arrowOrientation2 == 2)
      {
        text = [_badgeImageWithTinyRightArrow text];
        v58 = [text length];

        v55 = 3.0;
        if (v58 > 1)
        {
          v55 = 1.25;
        }
      }
    }

    if (IsAccessibilityCategory)
    {
      [v52 scaledValueForValue:v176 compatibleWithTraitCollection:v55];
    }

    else
    {
      [v52 scaledValueForValue:v55];
    }

    v60 = v59;
    v61 = dbl_26B405190[([(CACLabeledBadgeView *)selfCopy badgeIndicatorMask]& 2) == 0];
    if (IsAccessibilityCategory)
    {
      v33 = v176;
      [v52 scaledValueForValue:v176 compatibleWithTraitCollection:v61];
      v63 = v62 + v60 * -0.5;
      if ([(CACLabeledBadgeView *)selfCopy arrowOrientation]== 1)
      {
        v64 = v63;
      }

      else
      {
        v64 = v60;
      }

      v65 = 0.0;
      [v52 scaledValueForValue:v176 compatibleWithTraitCollection:0.0];
      v67 = v66;
      if ([(CACLabeledBadgeView *)selfCopy badgePresentation]== 1)
      {
        [v52 scaledValueForValue:v176 compatibleWithTraitCollection:2.5];
        v65 = v68;
      }
    }

    else
    {
      [v52 scaledValueForValue:v61];
      v70 = v69 + v60 * -0.25;
      if ([(CACLabeledBadgeView *)selfCopy arrowOrientation]== 1)
      {
        v64 = v70;
      }

      else
      {
        v64 = v60;
      }

      v65 = 0.0;
      [v52 scaledValueForValue:0.0];
      v67 = v71;
      if ([(CACLabeledBadgeView *)selfCopy badgePresentation]== 1)
      {
        [v52 scaledValueForValue:2.5];
        v65 = v72;
      }

      v33 = v176;
    }

    v170 = v52;
    selfCopy2 = self;
    [objc_opt_class() _heightForBadgeWithTextWithOrientation:{-[CACLabeledBadgeView arrowOrientation](selfCopy, "arrowOrientation")}];
    v74 = v73 + v65 * 2.0;
    isContrastBackdrop2 = [(CACLabeledBadgeView *)selfCopy isContrastBackdrop];
    v76 = 1.08;
    if (!isContrastBackdrop2)
    {
      v76 = 1.0;
    }

    v77 = v74 * v76;
    arrowOrientation3 = [(CACLabeledBadgeView *)selfCopy arrowOrientation];
    topAnchor = [_badgeImageWithTinyRightArrow topAnchor];
    topAnchor2 = [(CACLabeledBadgeView *)selfCopy topAnchor];
    v81 = v67 + v65;
    v168 = topAnchor;
    if (arrowOrientation3 == 2)
    {
      v43 = topAnchor2;
      v82 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v81 + 2.0];
      v184[0] = v82;
      bottomAnchor = [_badgeImageWithTinyRightArrow bottomAnchor];
      bottomAnchor2 = [(CACLabeledBadgeView *)selfCopy bottomAnchor];
      v164 = [bottomAnchor constraintEqualToAnchor:-(v81 + 8.4 + -2.0) constant:?];
      v184[1] = v164;
      leadingAnchor = [_badgeImageWithTinyRightArrow leadingAnchor];
      leadingAnchor2 = [(CACLabeledBadgeView *)selfCopy leadingAnchor];
      v162 = leadingAnchor;
      v158 = [leadingAnchor constraintEqualToAnchor:v60 + v65 constant:?];
      v184[2] = v158;
      trailingAnchor = [_badgeImageWithTinyRightArrow trailingAnchor];
      trailingAnchor2 = [(CACLabeledBadgeView *)selfCopy trailingAnchor];
      v156 = trailingAnchor;
      v152 = [trailingAnchor constraintEqualToAnchor:-(v64 + v65) constant:?];
      v184[3] = v152;
      heightAnchor2 = [v17 heightAnchor];
      heightAnchor3 = [heightAnchor2 constraintEqualToConstant:v77];
      v184[4] = heightAnchor3;
      v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:5];
      [v179 addObjectsFromArray:v88];
    }

    else
    {
      v150 = topAnchor2;
      v89 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v81];
      v183[0] = v89;
      bottomAnchor3 = [_badgeImageWithTinyRightArrow bottomAnchor];
      bottomAnchor2 = [(CACLabeledBadgeView *)selfCopy bottomAnchor];
      v164 = [bottomAnchor3 constraintEqualToAnchor:-v81 constant:?];
      v183[1] = v164;
      leadingAnchor3 = [_badgeImageWithTinyRightArrow leadingAnchor];
      leadingAnchor2 = [(CACLabeledBadgeView *)selfCopy leadingAnchor];
      v162 = leadingAnchor3;
      v158 = [leadingAnchor3 constraintEqualToAnchor:v60 + v65 constant:?];
      v183[2] = v158;
      trailingAnchor3 = [_badgeImageWithTinyRightArrow trailingAnchor];
      trailingAnchor2 = [(CACLabeledBadgeView *)selfCopy trailingAnchor];
      v156 = trailingAnchor3;
      v152 = [trailingAnchor3 constraintEqualToAnchor:-(v64 + v65) constant:?];
      v183[3] = v152;
      heightAnchor2 = [v17 widthAnchor];
      heightAnchor3 = [v17 heightAnchor];
      v88 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3];
      v183[4] = v88;
      heightAnchor4 = [v17 heightAnchor];
      v93 = [heightAnchor4 constraintEqualToConstant:v77];
      v183[5] = v93;
      [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:6];
      v95 = v94 = v17;
      [v179 addObjectsFromArray:v95];

      v17 = v94;
      v82 = v89;

      v33 = v176;
      bottomAnchor = bottomAnchor3;
      v43 = v150;
    }

    v20 = v172;
    self = selfCopy2;
    v42 = v178;
    v39 = v168;
    heightAnchor = v170;
  }

  if (_UISolariumEnabled() && [MEMORY[0x277D79880] glassOverlaysEnabled])
  {
    topAnchor3 = [v17 topAnchor];
    [(CACLabeledBadgeView *)self topAnchor];
    topAnchor7 = topAnchor6 = topAnchor3;
    v97 = [topAnchor3 constraintEqualToAnchor:?];
    v181[0] = v97;
    bottomAnchor4 = [v17 bottomAnchor];
    bottomAnchor5 = [(CACLabeledBadgeView *)self bottomAnchor];
    bottomAnchor8 = bottomAnchor4;
    v177 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v181[1] = v177;
    leadingAnchor4 = [v17 leadingAnchor];
    leadingAnchor5 = [(CACLabeledBadgeView *)self leadingAnchor];
    v175 = leadingAnchor4;
    v102 = leadingAnchor4;
    v103 = leadingAnchor5;
    v171 = [v102 constraintEqualToAnchor:leadingAnchor5];
    v181[2] = v171;
    trailingAnchor4 = [v17 trailingAnchor];
    trailingAnchor5 = [(CACLabeledBadgeView *)self trailingAnchor];
    v169 = trailingAnchor4;
    v106 = trailingAnchor4;
    v107 = trailingAnchor5;
    v165 = [v106 constraintEqualToAnchor:trailingAnchor5];
    v181[3] = v165;
    topAnchor4 = [v42 topAnchor];
    topAnchor5 = [v17 topAnchor];
    v163 = topAnchor4;
    v110 = topAnchor4;
    v111 = topAnchor5;
    v159 = [v110 constraintEqualToAnchor:topAnchor5];
    v181[4] = v159;
    bottomAnchor6 = [v42 bottomAnchor];
    bottomAnchor7 = [v17 bottomAnchor];
    v157 = bottomAnchor6;
    v153 = [bottomAnchor6 constraintEqualToAnchor:?];
    v181[5] = v153;
    leadingAnchor6 = [v42 leadingAnchor];
    leadingAnchor7 = [v17 leadingAnchor];
    v151 = leadingAnchor6;
    v147 = [leadingAnchor6 constraintEqualToAnchor:?];
    v181[6] = v147;
    trailingAnchor6 = [v42 trailingAnchor];
    trailingAnchor7 = [v17 trailingAnchor];
    v146 = trailingAnchor6;
    v144 = [trailingAnchor6 constraintEqualToAnchor:?];
    v181[7] = v144;
    [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:8];
    v143 = v115 = v179;
    [v179 addObjectsFromArray:?];
  }

  else
  {
    topAnchor6 = [v17 topAnchor];
    topAnchor7 = [(CACLabeledBadgeView *)self topAnchor];
    v142 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v180[0] = v142;
    bottomAnchor8 = [v17 bottomAnchor];
    bottomAnchor9 = [(CACLabeledBadgeView *)self bottomAnchor];
    v177 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v180[1] = v177;
    leadingAnchor8 = [v17 leadingAnchor];
    leadingAnchor9 = [(CACLabeledBadgeView *)self leadingAnchor];
    v175 = leadingAnchor8;
    v171 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v180[2] = v171;
    trailingAnchor8 = [v17 trailingAnchor];
    trailingAnchor9 = [(CACLabeledBadgeView *)self trailingAnchor];
    v169 = trailingAnchor8;
    v165 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v180[3] = v165;
    topAnchor8 = [v42 topAnchor];
    topAnchor9 = [v17 topAnchor];
    v163 = topAnchor8;
    v159 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    v180[4] = v159;
    bottomAnchor10 = [v42 bottomAnchor];
    bottomAnchor7 = [v17 bottomAnchor];
    v157 = bottomAnchor10;
    v153 = [bottomAnchor10 constraintEqualToAnchor:?];
    v180[5] = v153;
    leadingAnchor10 = [v42 leadingAnchor];
    leadingAnchor7 = [v17 leadingAnchor];
    v151 = leadingAnchor10;
    v147 = [leadingAnchor10 constraintEqualToAnchor:?];
    v180[6] = v147;
    trailingAnchor10 = [v42 trailingAnchor];
    trailingAnchor7 = [v17 trailingAnchor];
    v146 = trailingAnchor10;
    v144 = [trailingAnchor10 constraintEqualToAnchor:?];
    v180[7] = v144;
    topAnchor10 = [v20 topAnchor];
    topAnchor11 = [(CACLabeledBadgeView *)self topAnchor];
    v143 = topAnchor10;
    v136 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
    v180[8] = v136;
    bottomAnchor11 = [v20 bottomAnchor];
    bottomAnchor12 = [(CACLabeledBadgeView *)self bottomAnchor];
    v133 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    v180[9] = v133;
    leadingAnchor11 = [v20 leadingAnchor];
    leadingAnchor12 = [(CACLabeledBadgeView *)self leadingAnchor];
    v124 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v180[10] = v124;
    trailingAnchor11 = [v20 trailingAnchor];
    [(CACLabeledBadgeView *)self trailingAnchor];
    v126 = v20;
    v128 = v127 = self;
    [trailingAnchor11 constraintEqualToAnchor:v128];
    v130 = v129 = v17;
    v180[11] = v130;
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:12];
    [v179 addObjectsFromArray:v131];

    v111 = topAnchor9;
    v17 = v129;
    bottomAnchor5 = bottomAnchor9;

    self = v127;
    v20 = v126;
    v103 = leadingAnchor9;

    v97 = v142;
    v107 = trailingAnchor9;

    v115 = v179;
    v42 = v178;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v115];
  [(CACLabeledBadgeView *)self setBadgeMaskImageView:v17];
}

- (id)copy
{
  v3 = [CACLabeledBadgeView alloc];
  [(CACLabeledBadgeView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  label = [(CACLabeledBadgeView *)self label];
  v13 = [(CACLabeledBadgeView *)v3 initWithFrame:label label:[(CACLabeledBadgeView *)self arrowOrientation] arrowOrientation:[(CACLabeledBadgeView *)self badgePresentation] badgePresentation:[(CACLabeledBadgeView *)self badgeIndicatorMask] badgeIndicator:v5, v7, v9, v11];

  return v13;
}

@end