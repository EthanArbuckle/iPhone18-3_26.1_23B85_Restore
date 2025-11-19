@interface CACLabeledBadgeView
+ (CGSize)sizeOfBadgeGivenNumberOfDisplayedDigits:(int64_t)a3 arrowOrientation:(int64_t)a4 badgePresentation:(int64_t)a5 badgeIndicator:(int64_t)a6;
+ (CGSize)sizeOfBadgeGivenNumberOfDisplayedDigits:(int64_t)a3 arrowOrientation:(int64_t)a4 badgePresentation:(int64_t)a5 badgeIndicator:(int64_t)a6 contrasted:(BOOL)a7;
+ (double)_heightForBadgeWithTextWithOrientation:(int64_t)a3;
+ (double)badgeFontSize;
+ (id)_badgeFont;
+ (id)_badgeImageWithDoubleRightArrow;
+ (id)_badgeImageWithDownArrow;
+ (id)_badgeImageWithNoArrow;
+ (id)_badgeImageWithNoArrowAndBorder;
+ (id)_badgeImageWithRightArrow;
+ (id)_badgeImageWithTinyRightArrow;
+ (id)_maskImageForArrowOrientation:(int64_t)a3 badgePresentation:(int64_t)a4 badgeIndicator:(int64_t)a5;
+ (id)imageBundle;
- (id)_initWithFrame:(CGRect)a3 label:(id)a4 arrowOrientation:(int64_t)a5 badgePresentation:(int64_t)a6 badgeIndicator:(int64_t)a7 isContrasted:(BOOL)a8;
- (id)contrastedCopy;
- (id)copy;
- (void)_setUpSubviews;
- (void)layoutSubviews;
@end

@implementation CACLabeledBadgeView

+ (double)badgeFontSize
{
  v2 = [a1 _badgeFont];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

+ (double)_heightForBadgeWithTextWithOrientation:(int64_t)a3
{
  v3 = [a1 _badgeFont];
  [v3 lineHeight];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  UIRoundToScale();
  v6 = v5;

  return v6;
}

+ (id)_badgeFont
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = MEMORY[0x277D74300];
  v6 = [a1 _badgeFontTextStyle];
  v7 = [v5 preferredFontForTextStyle:v6];

  return v7;
}

+ (CGSize)sizeOfBadgeGivenNumberOfDisplayedDigits:(int64_t)a3 arrowOrientation:(int64_t)a4 badgePresentation:(int64_t)a5 badgeIndicator:(int64_t)a6
{
  [a1 sizeOfBadgeGivenNumberOfDisplayedDigits:a3 arrowOrientation:a4 badgePresentation:a5 badgeIndicator:a6 contrasted:0];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)sizeOfBadgeGivenNumberOfDisplayedDigits:(int64_t)a3 arrowOrientation:(int64_t)a4 badgePresentation:(int64_t)a5 badgeIndicator:(int64_t)a6 contrasted:(BOOL)a7
{
  v7 = a7;
  v12 = [CACLabeledBadgeView alloc];
  v13 = a3 - 1;
  if (v13 > 3)
  {
    v14 = @"88";
  }

  else
  {
    v14 = [&unk_287BF0008 objectAtIndexedSubscript:v13];
  }

  v15 = [(CACLabeledBadgeView *)v12 initWithFrame:v14 label:a4 arrowOrientation:a5 badgePresentation:a6 badgeIndicator:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v13 <= 3)
  {
  }

  [(CACLabeledBadgeView *)v15 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  if (v7)
  {
    v18 = v17 * 1.08;
  }

  else
  {
    v18 = v17;
  }

  if (v7)
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
  v3 = [a1 _badgeFont];
  if (!_badgeImageWithNoArrow_sBadgeFont || ([_badgeImageWithNoArrow_sBadgeFont isEqual:v3] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithNoArrow_sBadgeFont, v3);
    v4 = MEMORY[0x277D755B8];
    v5 = [a1 imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-tail-none" inBundle:v5];
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
  v3 = [a1 _badgeFont];
  if (!_badgeImageWithNoArrowAndBorder_sBadgeFont || ([_badgeImageWithNoArrowAndBorder_sBadgeFont isEqual:v3] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithNoArrowAndBorder_sBadgeFont, v3);
    v4 = MEMORY[0x277D755B8];
    v5 = [a1 imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-bordered" inBundle:v5];
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
  v3 = [a1 _badgeFont];
  if (!_badgeImageWithRightArrow_sBadgeFont || ([_badgeImageWithRightArrow_sBadgeFont isEqual:v3] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithRightArrow_sBadgeFont, v3);
    v4 = MEMORY[0x277D755B8];
    v5 = [a1 imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-single-tail-right" inBundle:v5];
    v7 = [v6 _stretchableImageWithCapInsets:{0.0, 4.0, 0.0, 12.4}];
    v8 = _badgeImageWithRightArrow_sBadgeImage;
    _badgeImageWithRightArrow_sBadgeImage = v7;

    v9 = [MEMORY[0x277D75128] sharedApplication];
    v10 = [v9 userInterfaceLayoutDirection];

    if (v10 == 1)
    {
      v11 = [_badgeImageWithRightArrow_sBadgeImage imageWithHorizontallyFlippedOrientation];
      v12 = _badgeImageWithRightArrow_sBadgeImage;
      _badgeImageWithRightArrow_sBadgeImage = v11;
    }
  }

  v13 = _badgeImageWithRightArrow_sBadgeImage;
  v14 = _badgeImageWithRightArrow_sBadgeImage;

  return v13;
}

+ (id)_badgeImageWithDownArrow
{
  v3 = [a1 _badgeFont];
  if (!_badgeImageWithDownArrow_sBadgeFont || ([_badgeImageWithDownArrow_sBadgeFont isEqual:v3] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithDownArrow_sBadgeFont, v3);
    v4 = MEMORY[0x277D755B8];
    v5 = [a1 imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-single-tail-down" inBundle:v5];
    v7 = [v6 _stretchableImageWithCapInsets:{4.0, 4.0, 12.4, 4.0}];
    v8 = _badgeImageWithDownArrow_sBadgeImage;
    _badgeImageWithDownArrow_sBadgeImage = v7;

    v9 = [MEMORY[0x277D75128] sharedApplication];
    v10 = [v9 userInterfaceLayoutDirection];

    if (v10 == 1)
    {
      v11 = [_badgeImageWithDownArrow_sBadgeImage imageWithHorizontallyFlippedOrientation];
      v12 = _badgeImageWithDownArrow_sBadgeImage;
      _badgeImageWithDownArrow_sBadgeImage = v11;
    }
  }

  v13 = _badgeImageWithDownArrow_sBadgeImage;
  v14 = _badgeImageWithDownArrow_sBadgeImage;

  return v13;
}

+ (id)_badgeImageWithDoubleRightArrow
{
  v3 = [a1 _badgeFont];
  if (!_badgeImageWithDoubleRightArrow_sBadgeFont || ([_badgeImageWithDoubleRightArrow_sBadgeFont isEqual:v3] & 1) == 0)
  {
    objc_storeStrong(&_badgeImageWithDoubleRightArrow_sBadgeFont, v3);
    v4 = MEMORY[0x277D755B8];
    v5 = [a1 imageBundle];
    v6 = [v4 imageNamed:@"badge-platter-double-tail-right" inBundle:v5];
    v7 = [v6 _stretchableImageWithCapInsets:{0.0, 4.0, 0.0, 14.4}];
    v8 = _badgeImageWithDoubleRightArrow_sBadgeImage;
    _badgeImageWithDoubleRightArrow_sBadgeImage = v7;

    v9 = [MEMORY[0x277D75128] sharedApplication];
    v10 = [v9 userInterfaceLayoutDirection];

    if (v10 == 1)
    {
      v11 = [_badgeImageWithDoubleRightArrow_sBadgeImage imageWithHorizontallyFlippedOrientation];
      v12 = _badgeImageWithDoubleRightArrow_sBadgeImage;
      _badgeImageWithDoubleRightArrow_sBadgeImage = v11;
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

+ (id)_maskImageForArrowOrientation:(int64_t)a3 badgePresentation:(int64_t)a4 badgeIndicator:(int64_t)a5
{
  if (a4)
  {
    if (a4 == 2)
    {
      v5 = [objc_opt_class() _badgeImageWithTinyRightArrow];
      goto LABEL_11;
    }

    if (a4 == 1)
    {
      v5 = [objc_opt_class() _badgeImageWithNoArrowAndBorder];
      goto LABEL_11;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v7 = a5;
      v8 = objc_opt_class();
      if ((v7 & 2) != 0)
      {
        [v8 _badgeImageWithDoubleRightArrow];
      }

      else
      {
        [v8 _badgeImageWithRightArrow];
      }
      v5 = ;
      goto LABEL_11;
    }

    if (!a3)
    {
      v5 = [objc_opt_class() _badgeImageWithNoArrow];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = [objc_opt_class() _badgeImageWithDownArrow];
LABEL_11:

  return v5;
}

+ (id)imageBundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CACLabeledBadgeView_imageBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)_initWithFrame:(CGRect)a3 label:(id)a4 arrowOrientation:(int64_t)a5 badgePresentation:(int64_t)a6 badgeIndicator:(int64_t)a7 isContrasted:(BOOL)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a4;
  v23.receiver = self;
  v23.super_class = CACLabeledBadgeView;
  v19 = [(CACLabeledBadgeView *)&v23 initWithFrame:x, y, width, height];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_label, a4);
    v20->_arrowOrientation = a5;
    v20->_badgePresentation = a6;
    v20->_badgeIndicatorMask = a7;
    v21 = [MEMORY[0x277D75348] clearColor];
    [(CACLabeledBadgeView *)v20 setBackgroundColor:v21];

    [(CACLabeledBadgeView *)v20 setAlpha:1.0];
    v20->_isContrastBackdrop = a8;
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
  v15 = [(CACLabeledBadgeView *)self label];
  v16 = [(CACLabeledBadgeView *)v14 _initWithFrame:v15 label:[(CACLabeledBadgeView *)self arrowOrientation] arrowOrientation:[(CACLabeledBadgeView *)self badgePresentation] badgePresentation:[(CACLabeledBadgeView *)self badgeIndicatorMask] badgeIndicator:1 isContrasted:v7, v9, v11, v13];

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
      v7 = [(CACLabeledBadgeView *)self badgeMaskImageView];
      v8 = [v7 maskView];
      [v8 setFrame:{0.0, 0.0, v4, v6}];
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
    v10 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v10];

    v11 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = objc_opt_class();
    v13 = [(CACLabeledBadgeView *)self arrowOrientation];
    v14 = [(CACLabeledBadgeView *)self badgePresentation];
    v15 = [(CACLabeledBadgeView *)self badgeIndicatorMask];
    v16 = v14;
    v17 = v9;
    v18 = [v12 _maskImageForArrowOrientation:v13 badgePresentation:v16 badgeIndicator:v15];
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
    v24 = [v20 layer];
    [v24 setCaptureOnly:0];

    v25 = *MEMORY[0x277CDA610];
    v26 = [v20 layer];
    [v26 setCompositingFilter:v25];

    [v8 addSubview:v20];
  }

  v27 = [(CACLabeledBadgeView *)self layer];
  [v27 setAllowsGroupBlending:0];

  v28 = [MEMORY[0x277CBEB18] array];
  v178 = v8;
  v179 = v28;
  if ([(CACLabeledBadgeView *)self badgePresentation]== 2)
  {
    v29 = v8;
    v30 = v28;
    v31 = [objc_opt_class() _badgeImageWithTinyRightArrow];
    v32 = [v17 widthAnchor];
    [v31 size];
    v33 = [(CACLabeledBadgeView *)v32 constraintEqualToConstant:?];
    v182[0] = v33;
    v34 = [v17 heightAnchor];
    [v31 size];
    v36 = v35;
    v37 = [(CACLabeledBadgeView *)self isContrastBackdrop];
    v38 = 1.08;
    if (!v37)
    {
      v38 = 1.0;
    }

    v39 = [v34 constraintEqualToConstant:v36 * v38];
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
    v31 = objc_opt_new();
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 setTextAlignment:1];
    v44 = [MEMORY[0x277D75348] whiteColor];
    [v31 setTextColor:v44];

    v45 = [objc_opt_class() _badgeFont];
    [v31 setFont:v45];

    v46 = [(CACLabeledBadgeView *)self label];
    [v31 setText:v46];

    [v31 setHidden:{-[CACLabeledBadgeView isContrastBackdrop](self, "isContrastBackdrop")}];
    v32 = self;
    [(CACLabeledBadgeView *)v32 addSubview:v31];
    v47 = [MEMORY[0x277D75128] sharedApplication];
    v48 = [v47 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v48);

    v176 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76818]];
    v50 = MEMORY[0x277D75520];
    v51 = [objc_opt_class() _badgeFontTextStyle];
    v52 = [v50 metricsForTextStyle:v51];

    if (-[CACLabeledBadgeView badgePresentation](v32, "badgePresentation") != 1 || ([v31 text], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "length"), v53, v55 = 1.25, v54 <= 1))
    {
      v56 = [(CACLabeledBadgeView *)v32 arrowOrientation];
      v55 = 3.0;
      if (v56 == 2)
      {
        v57 = [v31 text];
        v58 = [v57 length];

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
    v61 = dbl_26B405190[([(CACLabeledBadgeView *)v32 badgeIndicatorMask]& 2) == 0];
    if (IsAccessibilityCategory)
    {
      v33 = v176;
      [v52 scaledValueForValue:v176 compatibleWithTraitCollection:v61];
      v63 = v62 + v60 * -0.5;
      if ([(CACLabeledBadgeView *)v32 arrowOrientation]== 1)
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
      if ([(CACLabeledBadgeView *)v32 badgePresentation]== 1)
      {
        [v52 scaledValueForValue:v176 compatibleWithTraitCollection:2.5];
        v65 = v68;
      }
    }

    else
    {
      [v52 scaledValueForValue:v61];
      v70 = v69 + v60 * -0.25;
      if ([(CACLabeledBadgeView *)v32 arrowOrientation]== 1)
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
      if ([(CACLabeledBadgeView *)v32 badgePresentation]== 1)
      {
        [v52 scaledValueForValue:2.5];
        v65 = v72;
      }

      v33 = v176;
    }

    v170 = v52;
    v174 = self;
    [objc_opt_class() _heightForBadgeWithTextWithOrientation:{-[CACLabeledBadgeView arrowOrientation](v32, "arrowOrientation")}];
    v74 = v73 + v65 * 2.0;
    v75 = [(CACLabeledBadgeView *)v32 isContrastBackdrop];
    v76 = 1.08;
    if (!v75)
    {
      v76 = 1.0;
    }

    v77 = v74 * v76;
    v78 = [(CACLabeledBadgeView *)v32 arrowOrientation];
    v79 = [v31 topAnchor];
    v80 = [(CACLabeledBadgeView *)v32 topAnchor];
    v81 = v67 + v65;
    v168 = v79;
    if (v78 == 2)
    {
      v43 = v80;
      v82 = [v79 constraintEqualToAnchor:v80 constant:v81 + 2.0];
      v184[0] = v82;
      v83 = [v31 bottomAnchor];
      v166 = [(CACLabeledBadgeView *)v32 bottomAnchor];
      v164 = [v83 constraintEqualToAnchor:-(v81 + 8.4 + -2.0) constant:?];
      v184[1] = v164;
      v84 = [v31 leadingAnchor];
      v160 = [(CACLabeledBadgeView *)v32 leadingAnchor];
      v162 = v84;
      v158 = [v84 constraintEqualToAnchor:v60 + v65 constant:?];
      v184[2] = v158;
      v85 = [v31 trailingAnchor];
      v154 = [(CACLabeledBadgeView *)v32 trailingAnchor];
      v156 = v85;
      v152 = [v85 constraintEqualToAnchor:-(v64 + v65) constant:?];
      v184[3] = v152;
      v86 = [v17 heightAnchor];
      v87 = [v86 constraintEqualToConstant:v77];
      v184[4] = v87;
      v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:5];
      [v179 addObjectsFromArray:v88];
    }

    else
    {
      v150 = v80;
      v89 = [v79 constraintEqualToAnchor:v80 constant:v81];
      v183[0] = v89;
      v148 = [v31 bottomAnchor];
      v166 = [(CACLabeledBadgeView *)v32 bottomAnchor];
      v164 = [v148 constraintEqualToAnchor:-v81 constant:?];
      v183[1] = v164;
      v90 = [v31 leadingAnchor];
      v160 = [(CACLabeledBadgeView *)v32 leadingAnchor];
      v162 = v90;
      v158 = [v90 constraintEqualToAnchor:v60 + v65 constant:?];
      v183[2] = v158;
      v91 = [v31 trailingAnchor];
      v154 = [(CACLabeledBadgeView *)v32 trailingAnchor];
      v156 = v91;
      v152 = [v91 constraintEqualToAnchor:-(v64 + v65) constant:?];
      v183[3] = v152;
      v86 = [v17 widthAnchor];
      v87 = [v17 heightAnchor];
      v88 = [v86 constraintGreaterThanOrEqualToAnchor:v87];
      v183[4] = v88;
      v92 = [v17 heightAnchor];
      v93 = [v92 constraintEqualToConstant:v77];
      v183[5] = v93;
      [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:6];
      v95 = v94 = v17;
      [v179 addObjectsFromArray:v95];

      v17 = v94;
      v82 = v89;

      v33 = v176;
      v83 = v148;
      v43 = v150;
    }

    v20 = v172;
    self = v174;
    v42 = v178;
    v39 = v168;
    v34 = v170;
  }

  if (_UISolariumEnabled() && [MEMORY[0x277D79880] glassOverlaysEnabled])
  {
    v96 = [v17 topAnchor];
    [(CACLabeledBadgeView *)self topAnchor];
    v167 = v173 = v96;
    v97 = [v96 constraintEqualToAnchor:?];
    v181[0] = v97;
    v98 = [v17 bottomAnchor];
    v99 = [(CACLabeledBadgeView *)self bottomAnchor];
    v161 = v98;
    v177 = [v98 constraintEqualToAnchor:v99];
    v181[1] = v177;
    v100 = [v17 leadingAnchor];
    v101 = [(CACLabeledBadgeView *)self leadingAnchor];
    v175 = v100;
    v102 = v100;
    v103 = v101;
    v171 = [v102 constraintEqualToAnchor:v101];
    v181[2] = v171;
    v104 = [v17 trailingAnchor];
    v105 = [(CACLabeledBadgeView *)self trailingAnchor];
    v169 = v104;
    v106 = v104;
    v107 = v105;
    v165 = [v106 constraintEqualToAnchor:v105];
    v181[3] = v165;
    v108 = [v42 topAnchor];
    v109 = [v17 topAnchor];
    v163 = v108;
    v110 = v108;
    v111 = v109;
    v159 = [v110 constraintEqualToAnchor:v109];
    v181[4] = v159;
    v112 = [v42 bottomAnchor];
    v155 = [v17 bottomAnchor];
    v157 = v112;
    v153 = [v112 constraintEqualToAnchor:?];
    v181[5] = v153;
    v113 = [v42 leadingAnchor];
    v149 = [v17 leadingAnchor];
    v151 = v113;
    v147 = [v113 constraintEqualToAnchor:?];
    v181[6] = v147;
    v114 = [v42 trailingAnchor];
    v145 = [v17 trailingAnchor];
    v146 = v114;
    v144 = [v114 constraintEqualToAnchor:?];
    v181[7] = v144;
    [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:8];
    v143 = v115 = v179;
    [v179 addObjectsFromArray:?];
  }

  else
  {
    v173 = [v17 topAnchor];
    v167 = [(CACLabeledBadgeView *)self topAnchor];
    v142 = [v173 constraintEqualToAnchor:v167];
    v180[0] = v142;
    v161 = [v17 bottomAnchor];
    v141 = [(CACLabeledBadgeView *)self bottomAnchor];
    v177 = [v161 constraintEqualToAnchor:v141];
    v180[1] = v177;
    v116 = [v17 leadingAnchor];
    v140 = [(CACLabeledBadgeView *)self leadingAnchor];
    v175 = v116;
    v171 = [v116 constraintEqualToAnchor:v140];
    v180[2] = v171;
    v117 = [v17 trailingAnchor];
    v139 = [(CACLabeledBadgeView *)self trailingAnchor];
    v169 = v117;
    v165 = [v117 constraintEqualToAnchor:v139];
    v180[3] = v165;
    v118 = [v42 topAnchor];
    v138 = [v17 topAnchor];
    v163 = v118;
    v159 = [v118 constraintEqualToAnchor:v138];
    v180[4] = v159;
    v119 = [v42 bottomAnchor];
    v155 = [v17 bottomAnchor];
    v157 = v119;
    v153 = [v119 constraintEqualToAnchor:?];
    v180[5] = v153;
    v120 = [v42 leadingAnchor];
    v149 = [v17 leadingAnchor];
    v151 = v120;
    v147 = [v120 constraintEqualToAnchor:?];
    v180[6] = v147;
    v121 = [v42 trailingAnchor];
    v145 = [v17 trailingAnchor];
    v146 = v121;
    v144 = [v121 constraintEqualToAnchor:?];
    v180[7] = v144;
    v122 = [v20 topAnchor];
    v137 = [(CACLabeledBadgeView *)self topAnchor];
    v143 = v122;
    v136 = [v122 constraintEqualToAnchor:v137];
    v180[8] = v136;
    v135 = [v20 bottomAnchor];
    v134 = [(CACLabeledBadgeView *)self bottomAnchor];
    v133 = [v135 constraintEqualToAnchor:v134];
    v180[9] = v133;
    v132 = [v20 leadingAnchor];
    v123 = [(CACLabeledBadgeView *)self leadingAnchor];
    v124 = [v132 constraintEqualToAnchor:v123];
    v180[10] = v124;
    v125 = [v20 trailingAnchor];
    [(CACLabeledBadgeView *)self trailingAnchor];
    v126 = v20;
    v128 = v127 = self;
    [v125 constraintEqualToAnchor:v128];
    v130 = v129 = v17;
    v180[11] = v130;
    v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:12];
    [v179 addObjectsFromArray:v131];

    v111 = v138;
    v17 = v129;
    v99 = v141;

    self = v127;
    v20 = v126;
    v103 = v140;

    v97 = v142;
    v107 = v139;

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
  v12 = [(CACLabeledBadgeView *)self label];
  v13 = [(CACLabeledBadgeView *)v3 initWithFrame:v12 label:[(CACLabeledBadgeView *)self arrowOrientation] arrowOrientation:[(CACLabeledBadgeView *)self badgePresentation] badgePresentation:[(CACLabeledBadgeView *)self badgeIndicatorMask] badgeIndicator:v5, v7, v9, v11];

  return v13;
}

@end