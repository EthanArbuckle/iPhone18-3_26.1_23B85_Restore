@interface TFAppLockupView
- (CGSize)displayedIconSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TFAppLockupView)initWithFrame:(CGRect)frame;
- (void)_layoutLabelsInLayoutBounds:(CGRect)bounds;
- (void)_prepareForDisplayWithTraitCollection:(id)collection;
- (void)_styleSubviews;
- (void)layoutSubviews;
- (void)setImage:(id)image animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TFAppLockupView

- (TFAppLockupView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = TFAppLockupView;
  v3 = [(TFAppLockupView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [TFAppLockupViewSpecification alloc];
    traitCollection = [(TFAppLockupView *)v3 traitCollection];
    v6 = [(TFAppLockupViewSpecification *)v4 initWithTraitCollection:traitCollection];
    specification = v3->_specification;
    v3->_specification = v6;

    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    iconView = v3->_iconView;
    v3->_iconView = v13;

    [(TFAppLockupView *)v3 addSubview:v3->_iconView];
    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v15;

    [(TFAppLockupView *)v3 addSubview:v3->_titleLabel];
    v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    primarySubtitleLabel = v3->_primarySubtitleLabel;
    v3->_primarySubtitleLabel = v17;

    [(TFAppLockupView *)v3 addSubview:v3->_primarySubtitleLabel];
    v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    secondarySubtitleLabel = v3->_secondarySubtitleLabel;
    v3->_secondarySubtitleLabel = v19;

    [(TFAppLockupView *)v3 addSubview:v3->_secondarySubtitleLabel];
    [(TFAppLockupView *)v3 _styleSubviews];
    traitCollection2 = [(TFAppLockupView *)v3 traitCollection];
    [(TFAppLockupView *)v3 _prepareForDisplayWithTraitCollection:traitCollection2];
  }

  return v3;
}

- (void)_styleSubviews
{
  titleLabel = [(TFAppLockupView *)self titleLabel];
  specification = [(TFAppLockupView *)self specification];
  titleLabelFont = [specification titleLabelFont];
  [titleLabel setFont:titleLabelFont];

  titleLabel2 = [(TFAppLockupView *)self titleLabel];
  specification2 = [(TFAppLockupView *)self specification];
  titleTextColor = [specification2 titleTextColor];
  [titleLabel2 setTextColor:titleTextColor];

  titleLabel3 = [(TFAppLockupView *)self titleLabel];
  [titleLabel3 setNumberOfLines:2];

  titleLabel4 = [(TFAppLockupView *)self titleLabel];
  [titleLabel4 setLineBreakMode:0];

  primarySubtitleLabel = [(TFAppLockupView *)self primarySubtitleLabel];
  specification3 = [(TFAppLockupView *)self specification];
  subtitleLabelFont = [specification3 subtitleLabelFont];
  [primarySubtitleLabel setFont:subtitleLabelFont];

  primarySubtitleLabel2 = [(TFAppLockupView *)self primarySubtitleLabel];
  specification4 = [(TFAppLockupView *)self specification];
  subtitleTextColor = [specification4 subtitleTextColor];
  [primarySubtitleLabel2 setTextColor:subtitleTextColor];

  primarySubtitleLabel3 = [(TFAppLockupView *)self primarySubtitleLabel];
  [primarySubtitleLabel3 setNumberOfLines:1];

  primarySubtitleLabel4 = [(TFAppLockupView *)self primarySubtitleLabel];
  [primarySubtitleLabel4 setLineBreakMode:4];

  secondarySubtitleLabel = [(TFAppLockupView *)self secondarySubtitleLabel];
  specification5 = [(TFAppLockupView *)self specification];
  subtitleLabelFont2 = [specification5 subtitleLabelFont];
  [secondarySubtitleLabel setFont:subtitleLabelFont2];

  secondarySubtitleLabel2 = [(TFAppLockupView *)self secondarySubtitleLabel];
  specification6 = [(TFAppLockupView *)self specification];
  subtitleTextColor2 = [specification6 subtitleTextColor];
  [secondarySubtitleLabel2 setTextColor:subtitleTextColor2];

  secondarySubtitleLabel3 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [secondarySubtitleLabel3 setNumberOfLines:1];

  secondarySubtitleLabel4 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [secondarySubtitleLabel4 setLineBreakMode:4];

  iconView = [(TFAppLockupView *)self iconView];
  specification7 = [(TFAppLockupView *)self specification];
  iconPlaceholderColor = [specification7 iconPlaceholderColor];
  [iconView setBackgroundColor:iconPlaceholderColor];

  iconView2 = [(TFAppLockupView *)self iconView];
  [iconView2 setClipsToBounds:1];

  iconView3 = [(TFAppLockupView *)self iconView];
  [iconView3 _setContinuousCornerRadius:24.0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  specification = [(TFAppLockupView *)self specification];
  [specification iconSize];
  v8 = v7;

  specification2 = [(TFAppLockupView *)self specification];
  [specification2 paddingBetweenIconAndText];
  v11 = width - v10 - v8;

  titleLabel = [(TFAppLockupView *)self titleLabel];
  [titleLabel sizeThatFits:{v11, height}];
  v14 = v13;

  primarySubtitleLabel = [(TFAppLockupView *)self primarySubtitleLabel];
  [primarySubtitleLabel sizeThatFits:{v11, height}];
  v17 = v16;

  secondarySubtitleLabel = [(TFAppLockupView *)self secondarySubtitleLabel];
  [secondarySubtitleLabel sizeThatFits:{v11, height}];
  v20 = v19;

  if (v14 + v17 + v20 >= v8)
  {
    v21 = v14 + v17 + v20;
  }

  else
  {
    v21 = v8;
  }

  v22 = width;
  result.height = v21;
  result.width = v22;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = TFAppLockupView;
  [(TFAppLockupView *)&v5 traitCollectionDidChange:change];
  traitCollection = [(TFAppLockupView *)self traitCollection];
  [(TFAppLockupView *)self _prepareForDisplayWithTraitCollection:traitCollection];

  [(TFAppLockupView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = TFAppLockupView;
  [(TFAppLockupView *)&v38 layoutSubviews];
  [(TFAppLockupView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  specification = [(TFAppLockupView *)self specification];
  [specification iconSize];
  v13 = v12;
  v15 = v14;

  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  Width = CGRectGetWidth(v39);
  specification2 = [(TFAppLockupView *)self specification];
  [specification2 paddingBetweenIconAndText];
  v36 = v17;

  traitCollection = [(TFAppLockupView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  if (layoutDirection == 1)
  {
    v24 = CGRectGetMaxX(*&v20) - v13;
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    MinY = CGRectGetMinY(v40);
    iconView = [(TFAppLockupView *)self iconView];
    [iconView setFrame:{v24, MinY, v13, v15}];

    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    MinX = CGRectGetMinX(v41);
    v42.origin.x = v24;
    v42.origin.y = MinY;
    v42.size.width = v13;
    v42.size.height = v15;
    v28 = CGRectGetMinY(v42);
    v43.origin.x = v24;
    v43.origin.y = MinY;
    v43.size.width = v13;
    v43.size.height = v15;
    Height = CGRectGetHeight(v43);
  }

  else
  {
    v30 = CGRectGetMinX(*&v20);
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    v31 = CGRectGetMinY(v44);
    iconView2 = [(TFAppLockupView *)self iconView];
    [iconView2 setFrame:{v30, v31, v13, v15}];

    v45.origin.x = v30;
    v45.origin.y = v31;
    v45.size.width = v13;
    v45.size.height = v15;
    MaxX = CGRectGetMaxX(v45);
    specification3 = [(TFAppLockupView *)self specification];
    [specification3 paddingBetweenIconAndText];
    MinX = MaxX + v35;
    v46.origin.x = v30;
    v46.origin.y = v31;
    v46.size.width = v13;
    v46.size.height = v15;
    v28 = CGRectGetMinY(v46);
    v47.origin.x = v30;
    v47.origin.y = v31;
    v47.size.width = v13;
    v47.size.height = v15;
    Height = CGRectGetHeight(v47);
  }

  [(TFAppLockupView *)self _layoutLabelsInLayoutBounds:MinX, v28, Width - v36 - v13, Height, *&v36];
}

- (void)_layoutLabelsInLayoutBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  titleLabel = [(TFAppLockupView *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v10 = v9;
  v59 = v9;

  primarySubtitleLabel = [(TFAppLockupView *)self primarySubtitleLabel];
  [primarySubtitleLabel sizeThatFits:{width, height}];
  v13 = v12;

  secondarySubtitleLabel = [(TFAppLockupView *)self secondarySubtitleLabel];
  [secondarySubtitleLabel sizeThatFits:{width, height}];
  v60 = v15;

  titleLabel2 = [(TFAppLockupView *)self titleLabel];
  [titleLabel2 _firstBaselineOffsetFromTop];
  v18 = v17;
  specification = [(TFAppLockupView *)self specification];
  [specification titleLabelBaselineToFirstSubtitleLabelBaseline];
  v21 = v18 + v20;
  specification2 = [(TFAppLockupView *)self specification];
  [specification2 firstSubtitleLabelBaselineToSecondSubtitleLabelBaseline];
  v24 = v21 + v23;
  secondarySubtitleLabel2 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [secondarySubtitleLabel2 _baselineOffsetFromBottom];
  v27 = v24 + v26;

  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v28 = (CGRectGetHeight(v63) - v27) * 0.5;
  if (v28 >= 0.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0.0;
  }

  v58 = v29;
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  MinX = CGRectGetMinX(v64);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v66.size.width = CGRectGetWidth(v65);
  v56 = v66.size.width;
  v66.origin.x = MinX;
  v66.origin.y = v29;
  v66.size.height = v10;
  MaxY = CGRectGetMaxY(v66);
  titleLabel3 = [(TFAppLockupView *)self titleLabel];
  [titleLabel3 _baselineOffsetFromBottom];
  v33 = MaxY - v32;
  specification3 = [(TFAppLockupView *)self specification];
  [specification3 titleLabelBaselineToFirstSubtitleLabelBaseline];
  v36 = v33 + v35;
  primarySubtitleLabel2 = [(TFAppLockupView *)self primarySubtitleLabel];
  [primarySubtitleLabel2 _firstBaselineOffsetFromTop];
  v55 = v36 - v38;

  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  v54 = CGRectGetMinX(v67);
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v39 = CGRectGetWidth(v68);
  v69.origin.x = v54;
  v69.origin.y = v55;
  v69.size.width = v39;
  v69.size.height = v13;
  v40 = CGRectGetMaxY(v69);
  primarySubtitleLabel3 = [(TFAppLockupView *)self primarySubtitleLabel];
  [primarySubtitleLabel3 _baselineOffsetFromBottom];
  v43 = v40 - v42;
  specification4 = [(TFAppLockupView *)self specification];
  [specification4 firstSubtitleLabelBaselineToSecondSubtitleLabelBaseline];
  v46 = v43 + v45;
  secondarySubtitleLabel3 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [secondarySubtitleLabel3 _firstBaselineOffsetFromTop];
  v49 = v46 - v48;

  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  v50 = CGRectGetMinX(v70);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v51 = CGRectGetWidth(v71);
  secondarySubtitleLabel4 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [secondarySubtitleLabel4 setFrame:{v50, v49, v51, *&v60}];

  titleLabel4 = [(TFAppLockupView *)self titleLabel];
  [titleLabel4 setFrame:{MinX, v58, v56, v59}];

  primarySubtitleLabel4 = [(TFAppLockupView *)self primarySubtitleLabel];
  [primarySubtitleLabel4 setFrame:{v54, v55, v39, v13}];
}

- (void)_prepareForDisplayWithTraitCollection:(id)collection
{
  v4 = [TFAppLockupViewSpecification alloc];
  traitCollection = [(TFAppLockupView *)self traitCollection];
  v6 = [(TFAppLockupViewSpecification *)v4 initWithTraitCollection:traitCollection];
  [(TFAppLockupView *)self setSpecification:v6];

  titleLabel = [(TFAppLockupView *)self titleLabel];
  specification = [(TFAppLockupView *)self specification];
  titleLabelFont = [specification titleLabelFont];
  [titleLabel setFont:titleLabelFont];

  primarySubtitleLabel = [(TFAppLockupView *)self primarySubtitleLabel];
  specification2 = [(TFAppLockupView *)self specification];
  subtitleLabelFont = [specification2 subtitleLabelFont];
  [primarySubtitleLabel setFont:subtitleLabelFont];

  secondarySubtitleLabel = [(TFAppLockupView *)self secondarySubtitleLabel];
  specification3 = [(TFAppLockupView *)self specification];
  subtitleLabelFont2 = [specification3 subtitleLabelFont];
  [secondarySubtitleLabel setFont:subtitleLabelFont2];
}

- (CGSize)displayedIconSize
{
  specification = [(TFAppLockupView *)self specification];
  [specification iconSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  iconView = [(TFAppLockupView *)self iconView];
  [iconView setImage:imageCopy];

  if (animatedCopy)
  {
    animation = [MEMORY[0x277CDA000] animation];
    [animation setDuration:0.3];
    v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [animation setTimingFunction:v8];

    [animation setType:*MEMORY[0x277CDA928]];
    iconView2 = [(TFAppLockupView *)self iconView];
    layer = [iconView2 layer];
    [layer addAnimation:animation forKey:0];
  }
}

@end