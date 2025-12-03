@interface _UIActivityGroupActivityCell
+ (CGSize)preferredSizeForSheetWidth:(double)width sizeCategory:(id)category titleLabelText:(id)text screenScale:(double)scale;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIActivityGroupActivityCell)initWithFrame:(CGRect)frame;
- (id)draggingView;
- (void)initHighlightLayerIfNeeded;
- (void)initHighlightedImageViewIfNeeded;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
- (void)updateHighlightedImageViewIfNeeded;
@end

@implementation _UIActivityGroupActivityCell

- (_UIActivityGroupActivityCell)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = _UIActivityGroupActivityCell;
  v3 = [(_UIActivityGroupActivityCell *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v4 setContentMode:2];
    layer = [v4 layer];
    [layer setCornerRadius:10.0];

    [v4 setClipsToBounds:1];
    [(_UIActivityGroupActivityCell *)v3 setImageView:v4];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v6 setClipsToBounds:0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v8 = [blackColor colorWithAlphaComponent:0.25];
    cGColor = [v8 CGColor];
    layer2 = [v6 layer];
    [layer2 setShadowColor:cGColor];

    layer3 = [v6 layer];
    LODWORD(v12) = 1058642330;
    [layer3 setShadowOpacity:v12];

    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    layer4 = [v6 layer];
    [layer4 setShadowOffset:{v13, v14}];

    layer5 = [v6 layer];
    [layer5 setShadowRadius:5.0];

    [v6 setAlpha:0.4];
    [(_UIActivityGroupActivityCell *)v3 setShadowView:v6];
    v17 = objc_alloc_init(MEMORY[0x1E69DD250]);
    layer6 = [v17 layer];
    [layer6 setCornerRadius:12.0];

    [(_UIActivityGroupActivityCell *)v3 setImageSlot:v17];
    v19 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(_UIActivityGroupActivityCell *)v3 setTitleSlot:v19];
    contentView = [(_UIActivityGroupActivityCell *)v3 contentView];
    [contentView addSubview:v6];

    contentView2 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [contentView2 addSubview:v4];

    contentView3 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [contentView3 addSubview:v17];

    contentView4 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [contentView4 addSubview:v19];

    v24 = createTitleLabel();
    [(_UIActivityGroupActivityCell *)v3 setTitleLabel:v24];
    contentView5 = [(_UIActivityGroupActivityCell *)v3 contentView];
    [contentView5 addSubview:v24];

    v26 = v3;
  }

  return v3;
}

- (void)prepareForReuse
{
  v14.receiver = self;
  v14.super_class = _UIActivityGroupActivityCell;
  [(_UIActivityGroupActivityCell *)&v14 prepareForReuse];
  imageView = [(_UIActivityGroupActivityCell *)self imageView];
  [imageView setImage:0];

  highlightedImageView = [(_UIActivityGroupActivityCell *)self highlightedImageView];
  [highlightedImageView setImage:0];

  titleLabel = [(_UIActivityGroupActivityCell *)self titleLabel];
  [titleLabel setText:0];

  [(_UIActivityGroupActivityCell *)self setShadowView:0];
  titleLabel2 = [(_UIActivityGroupActivityCell *)self titleLabel];
  layer = [titleLabel2 layer];
  [layer setContents:0];

  imageView2 = [(_UIActivityGroupActivityCell *)self imageView];
  layer2 = [imageView2 layer];
  [layer2 setContents:0];

  imageSlot = [(_UIActivityGroupActivityCell *)self imageSlot];
  layer3 = [imageSlot layer];
  [layer3 setContents:0];

  titleSlot = [(_UIActivityGroupActivityCell *)self titleSlot];
  layer4 = [titleSlot layer];
  [layer4 setContents:0];
}

+ (CGSize)preferredSizeForSheetWidth:(double)width sizeCategory:(id)category titleLabelText:(id)text screenScale:(double)scale
{
  categoryCopy = category;
  textCopy = text;
  if (sCachedPreferredSizesBySheetParams)
  {
    if (!categoryCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v11 = sCachedPreferredSizesBySheetParams;
    sCachedPreferredSizesBySheetParams = v10;

    if (!categoryCopy)
    {
      goto LABEL_7;
    }
  }

  if (UIContentSizeCategoryIsAccessibilityCategory(categoryCopy))
  {
    width = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld", textCopy, width];
    v13 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
  width = @"~";
LABEL_8:
  v14 = [sCachedPreferredSizesBySheetParams objectForKey:width];
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

      v23 = [MEMORY[0x1E696AD98] numberWithDouble:width];
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
        v37 = width / 240.0 - floor(width / 240.0);
        v38 = 10;
        do
        {
          if (v37 >= 0.25 && v37 <= 0.5)
          {
            break;
          }

          v27 = v27 + 10.0;
          v37 = width / v27 - floor(width / v27);
          --v38;
        }

        while (v38);
        v40 = sCachedCellWidthBySheetWidth;
        v41 = [MEMORY[0x1E696AD98] numberWithDouble:{v27, 0.5, 10.0}];
        [v40 setObject:v41 forKey:v23];
      }

      getTitleLabelHeightForWidthTextAndSizeCategory(textCopy, categoryCopy, v27 + -1.0 - ChickletSize);
    }

    else
    {
      _screen = [sTitleLabel _screen];
      v29 = _UIActivityGroupActivityCellFont(categoryCopy, _screen);
      v30 = categoryCopy;
      v31 = v30;
      v32 = 1.0;
      if (categoryCopy && UIContentSizeCategoryCompareToCategory(v30, *MEMORY[0x1E69DDC60]) != NSOrderedAscending)
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
    [v44 setObject:v45 forKey:width];
  }

  v46 = v17;
  v47 = v19;
  result.height = v47;
  result.width = v46;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = objc_opt_class();
  traitCollection = [(_UIActivityGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  titleLabel = [(_UIActivityGroupActivityCell *)self titleLabel];
  text = [titleLabel text];
  traitCollection2 = [(_UIActivityGroupActivityCell *)self traitCollection];
  [traitCollection2 displayScale];
  [v5 preferredSizeForSheetWidth:preferredContentSizeCategory sizeCategory:text titleLabelText:width screenScale:v11];
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
  traitCollection = [(_UIActivityGroupActivityCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  _shouldReverseLayoutDirection = [(_UIActivityGroupActivityCell *)self _shouldReverseLayoutDirection];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  traitCollection2 = [(_UIActivityGroupActivityCell *)self traitCollection];
  [traitCollection2 displayScale];

  contentView = [(_UIActivityGroupActivityCell *)self contentView];
  [contentView bounds];
  CGRectGetMidX(v81);

  contentView2 = [(_UIActivityGroupActivityCell *)self contentView];
  [contentView2 bounds];
  CGRectGetMidY(v82);

  ChickletSize = getChickletSize();
  if (IsAccessibilityCategory)
  {
    if (_shouldReverseLayoutDirection)
    {
      contentView3 = [(_UIActivityGroupActivityCell *)self contentView];
      [contentView3 bounds];
      CGRectGetMaxX(v83);
    }

    UIRoundToScale();
  }

  UIRectIntegralWithScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  shadowView = [(_UIActivityGroupActivityCell *)self shadowView];
  [shadowView setFrame:{v13, v15, v17, v19}];

  v21 = MEMORY[0x1E69DC728];
  shadowView2 = [(_UIActivityGroupActivityCell *)self shadowView];
  [shadowView2 bounds];
  v23 = [v21 bezierPathWithRoundedRect:? cornerRadius:?];
  cGPath = [v23 CGPath];
  shadowView3 = [(_UIActivityGroupActivityCell *)self shadowView];
  layer = [shadowView3 layer];
  [layer setShadowPath:cGPath];

  UIRectIntegralWithScale();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  imageView = [(_UIActivityGroupActivityCell *)self imageView];
  v36 = ChickletSize;
  [imageView setFrame:{v28, v30, v32, v34}];

  UIRectIntegralWithScale();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  imageSlot = [(_UIActivityGroupActivityCell *)self imageSlot];
  [imageSlot setFrame:{v38, v40, v42, v44}];

  contentView4 = [(_UIActivityGroupActivityCell *)self contentView];
  [contentView4 bounds];
  Width = CGRectGetWidth(v84);

  if (IsAccessibilityCategory)
  {
    titleLabel = [(_UIActivityGroupActivityCell *)self titleLabel];
    text = [titleLabel text];
    getTitleLabelHeightForWidthTextAndSizeCategory(text, preferredContentSizeCategory, Width - (v36 + 1.0 + 10.0));

    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      imageView2 = [(_UIActivityGroupActivityCell *)self imageView];
      [imageView2 frame];
      CGRectGetMaxX(v85);
    }
  }

  else
  {
    getTitleLabelHeightForWidthTextAndSizeCategory(@"\n", preferredContentSizeCategory, Width + -1.0);
    v51 = getTitleLabelFontForWidthTextAndSizeCategory(preferredContentSizeCategory, Width + -1.0);
    [v51 ascender];
    imageView3 = [(_UIActivityGroupActivityCell *)self imageView];
    [imageView3 frame];
    CGRectGetMaxY(v86);
  }

  UIRectIntegralWithScale();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  titleLabel2 = [(_UIActivityGroupActivityCell *)self titleLabel];
  [titleLabel2 setFrame:{v54, v56, v58, v60}];

  titleLabel3 = [(_UIActivityGroupActivityCell *)self titleLabel];
  [titleLabel3 frame];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  titleSlot = [(_UIActivityGroupActivityCell *)self titleSlot];
  [titleSlot setFrame:{v64, v66, v68, v70}];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    contentView5 = [(_UIActivityGroupActivityCell *)self contentView];
    [contentView5 frame];
    v74 = v73;
    v76 = v75;
    v78 = v77;

    contentView6 = [(_UIActivityGroupActivityCell *)self contentView];
    [contentView6 setFrame:{v74, 0.0, v76, v78}];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v13.receiver = self;
  v13.super_class = _UIActivityGroupActivityCell;
  changeCopy = change;
  [(_UIActivityGroupActivityCell *)&v13 traitCollectionDidChange:changeCopy];
  v5 = [(_UIActivityGroupActivityCell *)self traitCollection:v13.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    traitCollection = [(_UIActivityGroupActivityCell *)self traitCollection];
    preferredContentSizeCategory3 = [traitCollection preferredContentSizeCategory];

    if (([preferredContentSizeCategory3 isEqualToString:*MEMORY[0x1E69DDC90]] & 1) == 0)
    {
      traitCollection2 = [(_UIActivityGroupActivityCell *)self traitCollection];
      preferredContentSizeCategory4 = [traitCollection2 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory4);

      if (!IsAccessibilityCategory)
      {
        [sCachedCellWidthBySheetWidth removeAllObjects];
      }
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  imageSlot = [(_UIActivityGroupActivityCell *)self imageSlot];
  layer = [imageSlot layer];
  contents = [layer contents];

  titleSlot = [(_UIActivityGroupActivityCell *)self titleSlot];
  layer2 = [titleSlot layer];
  contents2 = [layer2 contents];

  v16.receiver = self;
  v16.super_class = _UIActivityGroupActivityCell;
  [(_UIActivityGroupActivityCell *)&v16 setHighlighted:highlightedCopy];
  imageSlot2 = [(_UIActivityGroupActivityCell *)self imageSlot];
  layer3 = [imageSlot2 layer];
  [layer3 setContents:contents];

  titleSlot2 = [(_UIActivityGroupActivityCell *)self titleSlot];
  layer4 = [titleSlot2 layer];
  [layer4 setContents:contents2];

  [(_UIActivityGroupActivityCell *)self initHighlightLayerIfNeeded];
  highlightLayer = [(_UIActivityGroupActivityCell *)self highlightLayer];
  [highlightLayer setHidden:highlightedCopy ^ 1];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  imageSlot = [(_UIActivityGroupActivityCell *)self imageSlot];
  layer = [imageSlot layer];
  contents = [layer contents];

  titleSlot = [(_UIActivityGroupActivityCell *)self titleSlot];
  layer2 = [titleSlot layer];
  contents2 = [layer2 contents];

  v15.receiver = self;
  v15.super_class = _UIActivityGroupActivityCell;
  [(_UIActivityGroupActivityCell *)&v15 setSelected:selectedCopy];
  imageSlot2 = [(_UIActivityGroupActivityCell *)self imageSlot];
  layer3 = [imageSlot2 layer];
  [layer3 setContents:contents];

  titleSlot2 = [(_UIActivityGroupActivityCell *)self titleSlot];
  layer4 = [titleSlot2 layer];
  [layer4 setContents:contents2];
}

- (void)initHighlightLayerIfNeeded
{
  highlightLayer = [(_UIActivityGroupActivityCell *)self highlightLayer];

  if (!highlightLayer)
  {
    layer = [MEMORY[0x1E6979398] layer];
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.466666667];
    [layer setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

    [layer setCornerRadius:12.0];
    imageSlot = [(_UIActivityGroupActivityCell *)self imageSlot];
    layer2 = [imageSlot layer];
    [layer2 bounds];
    [layer setFrame:?];

    [layer setHidden:1];
    [(_UIActivityGroupActivityCell *)self setHighlightLayer:layer];
    imageSlot2 = [(_UIActivityGroupActivityCell *)self imageSlot];
    layer3 = [imageSlot2 layer];
    [layer3 insertSublayer:layer atIndex:0];
  }
}

- (void)updateHighlightedImageViewIfNeeded
{
  [(_UIActivityGroupActivityCell *)self initHighlightedImageViewIfNeeded];
  imageView = [(_UIActivityGroupActivityCell *)self imageView];
  image = [imageView image];
  highlightedImageView = [(_UIActivityGroupActivityCell *)self highlightedImageView];
  [highlightedImageView setImage:image];
}

- (void)initHighlightedImageViewIfNeeded
{
  highlightedImageView = [(_UIActivityGroupActivityCell *)self highlightedImageView];

  if (!highlightedImageView)
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
  titleLabel = [(_UIActivityGroupActivityCell *)self titleLabel];
  text = [titleLabel text];
  titleLabel2 = [v7 titleLabel];
  [titleLabel2 setText:text];

  imageView = [(_UIActivityGroupActivityCell *)self imageView];
  image = [imageView image];
  imageView2 = [v7 imageView];
  [imageView2 setImage:image];

  shadowView = [(_UIActivityGroupActivityCell *)self shadowView];
  [v7 setShadowView:shadowView];

  [v7 setHighlighted:{-[_UIActivityGroupActivityCell isHighlighted](self, "isHighlighted")}];
  imageSlot = [(_UIActivityGroupActivityCell *)self imageSlot];
  [v7 setImageSlot:imageSlot];

  titleSlot = [(_UIActivityGroupActivityCell *)self titleSlot];
  [v7 setTitleSlot:titleSlot];

  [v7 setUserInteractionEnabled:0];

  return v7;
}

@end