@interface TFAppLockupView
- (CGSize)displayedIconSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TFAppLockupView)initWithFrame:(CGRect)a3;
- (void)_layoutLabelsInLayoutBounds:(CGRect)a3;
- (void)_prepareForDisplayWithTraitCollection:(id)a3;
- (void)_styleSubviews;
- (void)layoutSubviews;
- (void)setImage:(id)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TFAppLockupView

- (TFAppLockupView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = TFAppLockupView;
  v3 = [(TFAppLockupView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [TFAppLockupViewSpecification alloc];
    v5 = [(TFAppLockupView *)v3 traitCollection];
    v6 = [(TFAppLockupViewSpecification *)v4 initWithTraitCollection:v5];
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
    v21 = [(TFAppLockupView *)v3 traitCollection];
    [(TFAppLockupView *)v3 _prepareForDisplayWithTraitCollection:v21];
  }

  return v3;
}

- (void)_styleSubviews
{
  v3 = [(TFAppLockupView *)self titleLabel];
  v4 = [(TFAppLockupView *)self specification];
  v5 = [v4 titleLabelFont];
  [v3 setFont:v5];

  v6 = [(TFAppLockupView *)self titleLabel];
  v7 = [(TFAppLockupView *)self specification];
  v8 = [v7 titleTextColor];
  [v6 setTextColor:v8];

  v9 = [(TFAppLockupView *)self titleLabel];
  [v9 setNumberOfLines:2];

  v10 = [(TFAppLockupView *)self titleLabel];
  [v10 setLineBreakMode:0];

  v11 = [(TFAppLockupView *)self primarySubtitleLabel];
  v12 = [(TFAppLockupView *)self specification];
  v13 = [v12 subtitleLabelFont];
  [v11 setFont:v13];

  v14 = [(TFAppLockupView *)self primarySubtitleLabel];
  v15 = [(TFAppLockupView *)self specification];
  v16 = [v15 subtitleTextColor];
  [v14 setTextColor:v16];

  v17 = [(TFAppLockupView *)self primarySubtitleLabel];
  [v17 setNumberOfLines:1];

  v18 = [(TFAppLockupView *)self primarySubtitleLabel];
  [v18 setLineBreakMode:4];

  v19 = [(TFAppLockupView *)self secondarySubtitleLabel];
  v20 = [(TFAppLockupView *)self specification];
  v21 = [v20 subtitleLabelFont];
  [v19 setFont:v21];

  v22 = [(TFAppLockupView *)self secondarySubtitleLabel];
  v23 = [(TFAppLockupView *)self specification];
  v24 = [v23 subtitleTextColor];
  [v22 setTextColor:v24];

  v25 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [v25 setNumberOfLines:1];

  v26 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [v26 setLineBreakMode:4];

  v27 = [(TFAppLockupView *)self iconView];
  v28 = [(TFAppLockupView *)self specification];
  v29 = [v28 iconPlaceholderColor];
  [v27 setBackgroundColor:v29];

  v30 = [(TFAppLockupView *)self iconView];
  [v30 setClipsToBounds:1];

  v31 = [(TFAppLockupView *)self iconView];
  [v31 _setContinuousCornerRadius:24.0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TFAppLockupView *)self specification];
  [v6 iconSize];
  v8 = v7;

  v9 = [(TFAppLockupView *)self specification];
  [v9 paddingBetweenIconAndText];
  v11 = width - v10 - v8;

  v12 = [(TFAppLockupView *)self titleLabel];
  [v12 sizeThatFits:{v11, height}];
  v14 = v13;

  v15 = [(TFAppLockupView *)self primarySubtitleLabel];
  [v15 sizeThatFits:{v11, height}];
  v17 = v16;

  v18 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [v18 sizeThatFits:{v11, height}];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = TFAppLockupView;
  [(TFAppLockupView *)&v5 traitCollectionDidChange:a3];
  v4 = [(TFAppLockupView *)self traitCollection];
  [(TFAppLockupView *)self _prepareForDisplayWithTraitCollection:v4];

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
  v11 = [(TFAppLockupView *)self specification];
  [v11 iconSize];
  v13 = v12;
  v15 = v14;

  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  Width = CGRectGetWidth(v39);
  v16 = [(TFAppLockupView *)self specification];
  [v16 paddingBetweenIconAndText];
  v36 = v17;

  v18 = [(TFAppLockupView *)self traitCollection];
  v19 = [v18 layoutDirection];

  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  if (v19 == 1)
  {
    v24 = CGRectGetMaxX(*&v20) - v13;
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    MinY = CGRectGetMinY(v40);
    v26 = [(TFAppLockupView *)self iconView];
    [v26 setFrame:{v24, MinY, v13, v15}];

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
    v32 = [(TFAppLockupView *)self iconView];
    [v32 setFrame:{v30, v31, v13, v15}];

    v45.origin.x = v30;
    v45.origin.y = v31;
    v45.size.width = v13;
    v45.size.height = v15;
    MaxX = CGRectGetMaxX(v45);
    v34 = [(TFAppLockupView *)self specification];
    [v34 paddingBetweenIconAndText];
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

- (void)_layoutLabelsInLayoutBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(TFAppLockupView *)self titleLabel];
  [v8 sizeThatFits:{width, height}];
  v10 = v9;
  v59 = v9;

  v11 = [(TFAppLockupView *)self primarySubtitleLabel];
  [v11 sizeThatFits:{width, height}];
  v13 = v12;

  v14 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [v14 sizeThatFits:{width, height}];
  v60 = v15;

  v16 = [(TFAppLockupView *)self titleLabel];
  [v16 _firstBaselineOffsetFromTop];
  v18 = v17;
  v19 = [(TFAppLockupView *)self specification];
  [v19 titleLabelBaselineToFirstSubtitleLabelBaseline];
  v21 = v18 + v20;
  v22 = [(TFAppLockupView *)self specification];
  [v22 firstSubtitleLabelBaselineToSecondSubtitleLabelBaseline];
  v24 = v21 + v23;
  v25 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [v25 _baselineOffsetFromBottom];
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
  v31 = [(TFAppLockupView *)self titleLabel];
  [v31 _baselineOffsetFromBottom];
  v33 = MaxY - v32;
  v34 = [(TFAppLockupView *)self specification];
  [v34 titleLabelBaselineToFirstSubtitleLabelBaseline];
  v36 = v33 + v35;
  v37 = [(TFAppLockupView *)self primarySubtitleLabel];
  [v37 _firstBaselineOffsetFromTop];
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
  v41 = [(TFAppLockupView *)self primarySubtitleLabel];
  [v41 _baselineOffsetFromBottom];
  v43 = v40 - v42;
  v44 = [(TFAppLockupView *)self specification];
  [v44 firstSubtitleLabelBaselineToSecondSubtitleLabelBaseline];
  v46 = v43 + v45;
  v47 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [v47 _firstBaselineOffsetFromTop];
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
  v52 = [(TFAppLockupView *)self secondarySubtitleLabel];
  [v52 setFrame:{v50, v49, v51, *&v60}];

  v53 = [(TFAppLockupView *)self titleLabel];
  [v53 setFrame:{MinX, v58, v56, v59}];

  v61 = [(TFAppLockupView *)self primarySubtitleLabel];
  [v61 setFrame:{v54, v55, v39, v13}];
}

- (void)_prepareForDisplayWithTraitCollection:(id)a3
{
  v4 = [TFAppLockupViewSpecification alloc];
  v5 = [(TFAppLockupView *)self traitCollection];
  v6 = [(TFAppLockupViewSpecification *)v4 initWithTraitCollection:v5];
  [(TFAppLockupView *)self setSpecification:v6];

  v7 = [(TFAppLockupView *)self titleLabel];
  v8 = [(TFAppLockupView *)self specification];
  v9 = [v8 titleLabelFont];
  [v7 setFont:v9];

  v10 = [(TFAppLockupView *)self primarySubtitleLabel];
  v11 = [(TFAppLockupView *)self specification];
  v12 = [v11 subtitleLabelFont];
  [v10 setFont:v12];

  v15 = [(TFAppLockupView *)self secondarySubtitleLabel];
  v13 = [(TFAppLockupView *)self specification];
  v14 = [v13 subtitleLabelFont];
  [v15 setFont:v14];
}

- (CGSize)displayedIconSize
{
  v2 = [(TFAppLockupView *)self specification];
  [v2 iconSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TFAppLockupView *)self iconView];
  [v7 setImage:v6];

  if (v4)
  {
    v11 = [MEMORY[0x277CDA000] animation];
    [v11 setDuration:0.3];
    v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v11 setTimingFunction:v8];

    [v11 setType:*MEMORY[0x277CDA928]];
    v9 = [(TFAppLockupView *)self iconView];
    v10 = [v9 layer];
    [v10 addAnimation:v11 forKey:0];
  }
}

@end