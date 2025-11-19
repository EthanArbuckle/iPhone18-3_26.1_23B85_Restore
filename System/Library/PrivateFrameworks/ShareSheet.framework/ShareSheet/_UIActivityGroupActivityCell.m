@interface _UIActivityGroupActivityCell
+ (CGSize)preferredSizeForSheetWidth:(double)a3 sizeCategory:(id)a4 titleLabelText:(id)a5 screenScale:(double)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIActivityGroupActivityCell)initWithFrame:(CGRect)a3;
- (id)draggingView;
- (void)initHighlightLayerIfNeeded;
- (void)initHighlightedImageViewIfNeeded;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateHighlightedImageViewIfNeeded;
@end

@implementation _UIActivityGroupActivityCell

- (_UIActivityGroupActivityCell)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = _UIActivityGroupActivityCell;
  v3 = [(_UIActivityGroupActivityCell *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v4 setContentMode:2];
    v5 = [v4 layer];
    [v5 setCornerRadius:10.0];

    [v4 setClipsToBounds:1];
    [(_UIActivityGroupActivityCell *)v3 setImageView:v4];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v6 setClipsToBounds:0];
    v7 = [MEMORY[0x1E69DC888] blackColor];
    v8 = [v7 colorWithAlphaComponent:0.25];
    v9 = [v8 CGColor];
    v10 = [v6 layer];
    [v10 setShadowColor:v9];

    v11 = [v6 layer];
    LODWORD(v12) = 1058642330;
    [v11 setShadowOpacity:v12];

    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    v15 = [v6 layer];
    [v15 setShadowOffset:{v13, v14}];

    v16 = [v6 layer];
    [v16 setShadowRadius:5.0];

    [v6 setAlpha:0.4];
    [(_UIActivityGroupActivityCell *)v3 setShadowView:v6];
    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v18 = [v17 layer];
    [v18 setCornerRadius:12.0];

    [(_UIActivityGroupActivityCell *)v3 setImageSlot:v17];
    v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(_UIActivityGroupActivityCell *)v3 setTitleSlot:v19];
    v20 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [v20 addSubview:v6];

    v21 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [v21 addSubview:v4];

    v22 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [v22 addSubview:v17];

    v23 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [v23 addSubview:v19];

    v24 = createTitleLabel();
    [(_UIActivityGroupActivityCell *)v3 setTitleLabel:v24];
    v25 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [v25 addSubview:v24];

    v26 = v3;
  }

  return v3;
}

- (void)prepareForReuse
{
  v14.receiver = self;
  v14.super_class = _UIActivityGroupActivityCell;
  [(_UIActivityGroupActivityCell *)&v14 prepareForReuse];
  v3 = [(_UIActivityGroupActivityCell *)self imageView];
  [v3 setImage:0];

  v4 = [(_UIActivityGroupActivityCell *)self highlightedImageView];
  [v4 setImage:0];

  v5 = [(_UIActivityGroupActivityCell *)self titleLabel];
  [v5 setText:0];

  [(_UIActivityGroupActivityCell *)self setShadowView:0];
  v6 = [(_UIActivityGroupActivityCell *)self titleLabel];
  v7 = [v6 layer];
  [v7 setContents:0];

  v8 = [(_UIActivityGroupActivityCell *)self imageView];
  v9 = [v8 layer];
  [v9 setContents:0];

  v10 = [(_UIActivityGroupActivityCell *)self imageSlot];
  v11 = [v10 layer];
  [v11 setContents:0];

  v12 = [(_UIActivityGroupActivityCell *)self titleSlot];
  v13 = [v12 layer];
  [v13 setContents:0];
}

+ (CGSize)preferredSizeForSheetWidth:(double)a3 sizeCategory:(id)a4 titleLabelText:(id)a5 screenScale:(double)a6
{
  v8 = a4;
  v9 = a5;
  if (sCachedPreferredSizesBySheetParams)
  {
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v11 = sCachedPreferredSizesBySheetParams;
    sCachedPreferredSizesBySheetParams = v10;

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (UIContentSizeCategoryIsAccessibilityCategory(v8))
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld", v9, a3];
    v13 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
  v12 = @"~";
LABEL_8:
  v14 = [sCachedPreferredSizesBySheetParams objectForKey:v12];
  v15 = v14;
  if (v14)
  {
    [v14 CGSizeValue];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    ChickletSize = getChickletSize();
    if (v13)
    {
      if (!sCachedCellWidthBySheetWidth)
      {
        v21 = objc_alloc_init(MEMORY[0x1E695DEE0]);
        v22 = sCachedCellWidthBySheetWidth;
        sCachedCellWidthBySheetWidth = v21;
      }

      v23 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      v24 = [sCachedCellWidthBySheetWidth objectForKey:v23];
      v25 = v24;
      if (v24)
      {
        [v24 floatValue];
        v27 = v26;
      }

      else
      {
        v27 = 240.0;
        v37 = a3 / 240.0 - floor(a3 / 240.0);
        v38 = 10;
        do
        {
          if (v37 >= 0.25 && v37 <= 0.5)
          {
            break;
          }

          v27 = v27 + 10.0;
          v37 = a3 / v27 - floor(a3 / v27);
          --v38;
        }

        while (v38);
        v40 = sCachedCellWidthBySheetWidth;
        v41 = [MEMORY[0x1E696AD98] numberWithDouble:{v27, 0.5, 10.0}];
        [v40 setObject:v41 forKey:v23];
      }

      getTitleLabelHeightForWidthTextAndSizeCategory(v9, v8, v27 + -1.0 - ChickletSize);
    }

    else
    {
      v28 = [sTitleLabel _screen];
      v29 = _UIActivityGroupActivityCellFont(v8, v28);
      v30 = v8;
      v31 = v30;
      v32 = 1.0;
      if (v8 && UIContentSizeCategoryCompareToCategory(v30, *MEMORY[0x1E69DDC60]) != NSOrderedAscending)
      {
        [v29 pointSize];
        v34 = v33 / 11.0;
        if (v34 <= 2.0)
        {
          v32 = v34;
        }

        else
        {
          v32 = 2.0;
        }
      }

      v35 = ChickletSize * v32 + 0.0;
      v36 = getTitleLabelFontForWidthTextAndSizeCategory(v31, v35 + -1.0);
      [v36 ascender];
      getTitleLabelHeightForWidthTextAndSizeCategory(@"\n", v31, v35);
      [v36 descender];
    }

    UIRectIntegralWithScale();
    v17 = v42;
    v19 = v43;
    v44 = sCachedPreferredSizesBySheetParams;
    *v48 = v42;
    *&v48[1] = v43;
    v45 = [MEMORY[0x1E696B098] valueWithBytes:v48 objCType:"{CGSize=dd}"];
    [v44 setObject:v45 forKey:v12];
  }

  v46 = v17;
  v47 = v19;
  result.height = v47;
  result.width = v46;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = objc_opt_class();
  v6 = [(_UIActivityGroupActivityCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [(_UIActivityGroupActivityCell *)self titleLabel];
  v9 = [v8 text];
  v10 = [(_UIActivityGroupActivityCell *)self traitCollection];
  [v10 displayScale];
  [v5 preferredSizeForSheetWidth:v7 sizeCategory:v9 titleLabelText:width screenScale:v11];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  v80.receiver = self;
  v80.super_class = _UIActivityGroupActivityCell;
  [(_UIActivityGroupActivityCell *)&v80 layoutSubviews];
  v3 = [(_UIActivityGroupActivityCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [(_UIActivityGroupActivityCell *)self _shouldReverseLayoutDirection];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);
  v7 = [(_UIActivityGroupActivityCell *)self traitCollection];
  [v7 displayScale];

  v8 = [(_UIActivityGroupActivityCell *)self contentView];
  [v8 bounds];
  CGRectGetMidX(v81);

  v9 = [(_UIActivityGroupActivityCell *)self contentView];
  [v9 bounds];
  CGRectGetMidY(v82);

  ChickletSize = getChickletSize();
  if (IsAccessibilityCategory)
  {
    if (v5)
    {
      v11 = [(_UIActivityGroupActivityCell *)self contentView];
      [v11 bounds];
      CGRectGetMaxX(v83);
    }

    UIRoundToScale();
  }

  UIRectIntegralWithScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(_UIActivityGroupActivityCell *)self shadowView];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = MEMORY[0x1E69DC728];
  v22 = [(_UIActivityGroupActivityCell *)self shadowView];
  [v22 bounds];
  v23 = [v21 bezierPathWithRoundedRect:? cornerRadius:?];
  v24 = [v23 CGPath];
  v25 = [(_UIActivityGroupActivityCell *)self shadowView];
  v26 = [v25 layer];
  [v26 setShadowPath:v24];

  UIRectIntegralWithScale();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [(_UIActivityGroupActivityCell *)self imageView];
  v36 = ChickletSize;
  [v35 setFrame:{v28, v30, v32, v34}];

  UIRectIntegralWithScale();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(_UIActivityGroupActivityCell *)self imageSlot];
  [v45 setFrame:{v38, v40, v42, v44}];

  v46 = [(_UIActivityGroupActivityCell *)self contentView];
  [v46 bounds];
  Width = CGRectGetWidth(v84);

  if (IsAccessibilityCategory)
  {
    v48 = [(_UIActivityGroupActivityCell *)self titleLabel];
    v49 = [v48 text];
    getTitleLabelHeightForWidthTextAndSizeCategory(v49, v4, Width - (v36 + 1.0 + 10.0));

    if ((v5 & 1) == 0)
    {
      v50 = [(_UIActivityGroupActivityCell *)self imageView];
      [v50 frame];
      CGRectGetMaxX(v85);
    }
  }

  else
  {
    getTitleLabelHeightForWidthTextAndSizeCategory(@"\n", v4, Width + -1.0);
    v51 = getTitleLabelFontForWidthTextAndSizeCategory(v4, Width + -1.0);
    [v51 ascender];
    v52 = [(_UIActivityGroupActivityCell *)self imageView];
    [v52 frame];
    CGRectGetMaxY(v86);
  }

  UIRectIntegralWithScale();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = [(_UIActivityGroupActivityCell *)self titleLabel];
  [v61 setFrame:{v54, v56, v58, v60}];

  v62 = [(_UIActivityGroupActivityCell *)self titleLabel];
  [v62 frame];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = [(_UIActivityGroupActivityCell *)self titleSlot];
  [v71 setFrame:{v64, v66, v68, v70}];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v72 = [(_UIActivityGroupActivityCell *)self contentView];
    [v72 frame];
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v79 = [(_UIActivityGroupActivityCell *)self contentView];
    [v79 setFrame:{v74, 0.0, v76, v78}];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v13.receiver = self;
  v13.super_class = _UIActivityGroupActivityCell;
  v4 = a3;
  [(_UIActivityGroupActivityCell *)&v13 traitCollectionDidChange:v4];
  v5 = [(_UIActivityGroupActivityCell *)self traitCollection:v13.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    v8 = [(_UIActivityGroupActivityCell *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];

    if (([v9 isEqualToString:*MEMORY[0x1E69DDC90]] & 1) == 0)
    {
      v10 = [(_UIActivityGroupActivityCell *)self traitCollection];
      v11 = [v10 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v11);

      if (!IsAccessibilityCategory)
      {
        [sCachedCellWidthBySheetWidth removeAllObjects];
      }
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIActivityGroupActivityCell *)self imageSlot];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(_UIActivityGroupActivityCell *)self titleSlot];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v16.receiver = self;
  v16.super_class = _UIActivityGroupActivityCell;
  [(_UIActivityGroupActivityCell *)&v16 setHighlighted:v3];
  v11 = [(_UIActivityGroupActivityCell *)self imageSlot];
  v12 = [v11 layer];
  [v12 setContents:v7];

  v13 = [(_UIActivityGroupActivityCell *)self titleSlot];
  v14 = [v13 layer];
  [v14 setContents:v10];

  [(_UIActivityGroupActivityCell *)self initHighlightLayerIfNeeded];
  v15 = [(_UIActivityGroupActivityCell *)self highlightLayer];
  [v15 setHidden:v3 ^ 1];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIActivityGroupActivityCell *)self imageSlot];
  v6 = [v5 layer];
  v7 = [v6 contents];

  v8 = [(_UIActivityGroupActivityCell *)self titleSlot];
  v9 = [v8 layer];
  v10 = [v9 contents];

  v15.receiver = self;
  v15.super_class = _UIActivityGroupActivityCell;
  [(_UIActivityGroupActivityCell *)&v15 setSelected:v3];
  v11 = [(_UIActivityGroupActivityCell *)self imageSlot];
  v12 = [v11 layer];
  [v12 setContents:v7];

  v13 = [(_UIActivityGroupActivityCell *)self titleSlot];
  v14 = [v13 layer];
  [v14 setContents:v10];
}

- (void)initHighlightLayerIfNeeded
{
  v3 = [(_UIActivityGroupActivityCell *)self highlightLayer];

  if (!v3)
  {
    v9 = [MEMORY[0x1E6979398] layer];
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.466666667];
    [v9 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

    [v9 setCornerRadius:12.0];
    v5 = [(_UIActivityGroupActivityCell *)self imageSlot];
    v6 = [v5 layer];
    [v6 bounds];
    [v9 setFrame:?];

    [v9 setHidden:1];
    [(_UIActivityGroupActivityCell *)self setHighlightLayer:v9];
    v7 = [(_UIActivityGroupActivityCell *)self imageSlot];
    v8 = [v7 layer];
    [v8 insertSublayer:v9 atIndex:0];
  }
}

- (void)updateHighlightedImageViewIfNeeded
{
  [(_UIActivityGroupActivityCell *)self initHighlightedImageViewIfNeeded];
  v5 = [(_UIActivityGroupActivityCell *)self imageView];
  v3 = [v5 image];
  v4 = [(_UIActivityGroupActivityCell *)self highlightedImageView];
  [v4 setImage:v3];
}

- (void)initHighlightedImageViewIfNeeded
{
  v3 = [(_UIActivityGroupActivityCell *)self highlightedImageView];

  if (!v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __64___UIActivityGroupActivityCell_initHighlightedImageViewIfNeeded__block_invoke;
    v4[3] = &unk_1E71F9510;
    v4[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  }
}

- (id)draggingView
{
  [(_UIActivityGroupActivityCell *)self frame];
  v7 = [objc_alloc(objc_opt_class()) initWithFrame:{v3, v4, v5, v6}];
  v8 = [(_UIActivityGroupActivityCell *)self titleLabel];
  v9 = [v8 text];
  v10 = [v7 titleLabel];
  [v10 setText:v9];

  v11 = [(_UIActivityGroupActivityCell *)self imageView];
  v12 = [v11 image];
  v13 = [v7 imageView];
  [v13 setImage:v12];

  v14 = [(_UIActivityGroupActivityCell *)self shadowView];
  [v7 setShadowView:v14];

  [v7 setHighlighted:{-[_UIActivityGroupActivityCell isHighlighted](self, "isHighlighted")}];
  v15 = [(_UIActivityGroupActivityCell *)self imageSlot];
  [v7 setImageSlot:v15];

  v16 = [(_UIActivityGroupActivityCell *)self titleSlot];
  [v7 setTitleSlot:v16];

  [v7 setUserInteractionEnabled:0];

  return v7;
}

@end