@interface SKUIItemBrowseCellLayout
- (CGSize)imageBoundingSize;
- (NSString)indexNumberString;
- (NSString)subtitle;
- (NSString)title;
- (SKUIItemBrowseCellLayout)initWithCollectionViewCell:(id)cell;
- (SKUIItemBrowseCellLayout)initWithParentView:(id)view;
- (SKUIItemBrowseCellLayout)initWithTableViewCell:(id)cell;
- (id)_decimalNumberFormatter;
- (void)_initSKUIItemBrowseCellLayout;
- (void)_reloadUserRatingViews;
- (void)layoutForItemOfferChange;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setIconImage:(id)image;
- (void)setImageBoundingSize:(CGSize)size;
- (void)setIndexNumberString:(id)string;
- (void)setLargeSpacing:(BOOL)spacing;
- (void)setNumberOfUserRatings:(int64_t)ratings;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUserRating:(double)rating;
@end

@implementation SKUIItemBrowseCellLayout

- (SKUIItemBrowseCellLayout)initWithCollectionViewCell:(id)cell
{
  cellCopy = cell;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemBrowseCellLayout *)v5 initWithCollectionViewCell:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIItemBrowseCellLayout;
  v13 = [(SKUICellLayout *)&v16 initWithCollectionViewCell:cellCopy];
  v14 = v13;
  if (v13)
  {
    [(SKUIItemBrowseCellLayout *)v13 _initSKUIItemBrowseCellLayout];
  }

  return v14;
}

- (SKUIItemBrowseCellLayout)initWithParentView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemBrowseCellLayout *)v5 initWithParentView:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIItemBrowseCellLayout;
  v13 = [(SKUICellLayout *)&v16 initWithParentView:viewCopy];
  v14 = v13;
  if (v13)
  {
    [(SKUIItemBrowseCellLayout *)v13 _initSKUIItemBrowseCellLayout];
  }

  return v14;
}

- (SKUIItemBrowseCellLayout)initWithTableViewCell:(id)cell
{
  cellCopy = cell;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIItemBrowseCellLayout *)v5 initWithTableViewCell:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIItemBrowseCellLayout;
  v13 = [(SKUICellLayout *)&v16 initWithTableViewCell:cellCopy];
  v14 = v13;
  if (v13)
  {
    [(SKUIItemBrowseCellLayout *)v13 _initSKUIItemBrowseCellLayout];
  }

  return v14;
}

- (NSString)indexNumberString
{
  indexNumberLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
  text = [indexNumberLabel text];

  return text;
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  primaryTextColor = [schemeCopy primaryTextColor];
  primaryTextColor = self->_primaryTextColor;
  self->_primaryTextColor = primaryTextColor;

  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v8 = itemOfferNoticeLabel;
  if (self->_primaryTextColor)
  {
    [itemOfferNoticeLabel setTextColor:?];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v8 setTextColor:v9];
  }

  subtitleLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
  v11 = subtitleLabel;
  if (self->_primaryTextColor)
  {
    [subtitleLabel setTextColor:?];
  }

  else
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v11 setTextColor:v12];
  }

  indexNumberLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
  v14 = indexNumberLabel;
  if (self->_primaryTextColor)
  {
    [indexNumberLabel setTextColor:?];
  }

  else
  {
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
    [v14 setTextColor:v15];
  }

  userRatingLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
  v17 = userRatingLabel;
  if (self->_primaryTextColor)
  {
    [userRatingLabel setTextColor:?];
  }

  else
  {
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v17 setTextColor:v18];
  }

  secondaryTextColor = [schemeCopy secondaryTextColor];

  v20 = secondaryTextColor;
  if (!secondaryTextColor)
  {
    v20 = self->_primaryTextColor;
  }

  objc_storeStrong(&self->_secondaryTextColor, v20);

  titleLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
  v23 = titleLabel;
  if (self->_secondaryTextColor)
  {
    [titleLabel setTextColor:?];
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v23 setTextColor:blackColor];
  }
}

- (void)setImageBoundingSize:(CGSize)size
{
  if (self->_imageBoundingSize.width != size.width || self->_imageBoundingSize.height != size.height)
  {
    self->_imageBoundingSize = size;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setIndexNumberString:(id)string
{
  stringCopy = string;
  indexNumberString = [(SKUIItemBrowseCellLayout *)self indexNumberString];
  if (indexNumberString != stringCopy && ([indexNumberString isEqualToString:stringCopy] & 1) == 0)
  {
    cellContentView = self->_cellContentView;
    if (stringCopy)
    {
      indexNumberLabel = [(_SKUIItemBrowseCellContentView *)cellContentView indexNumberLabel];

      if (!indexNumberLabel)
      {
        v7 = self->_cellContentView;
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        [(_SKUIItemBrowseCellContentView *)v7 setIndexNumberLabel:v8];

        indexNumberLabel2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        [indexNumberLabel2 setAdjustsFontSizeToFitWidth:1];

        indexNumberLabel3 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        parentCellView = [(SKUICellLayout *)self parentCellView];
        backgroundColor = [parentCellView backgroundColor];
        [indexNumberLabel3 setBackgroundColor:backgroundColor];

        indexNumberLabel4 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        [indexNumberLabel4 setTextAlignment:1];

        indexNumberLabel5 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        v15 = indexNumberLabel5;
        if (self->_primaryTextColor)
        {
          [indexNumberLabel5 setTextColor:?];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
          [v15 setTextColor:v16];
        }

        largeSpacing = self->_largeSpacing;
        indexNumberLabel6 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
        v19 = 15.0;
        if (largeSpacing)
        {
          v19 = 20.0;
        }

        v20 = [MEMORY[0x277D74300] systemFontOfSize:v19];
        [indexNumberLabel6 setFont:v20];
      }

      indexNumberLabel7 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
      [indexNumberLabel7 setText:stringCopy];
    }

    else
    {
      [(_SKUIItemBrowseCellContentView *)cellContentView setIndexNumberLabel:0];
    }

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setLargeSpacing:(BOOL)spacing
{
  if (self->_largeSpacing != spacing)
  {
    self->_largeSpacing = spacing;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setNumberOfUserRatings:(int64_t)ratings
{
  if (self->_numberOfUserRatings != ratings || ([(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_numberOfUserRatings = ratings;

    [(SKUIItemBrowseCellLayout *)self _reloadUserRatingViews];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = [(SKUIItemBrowseCellLayout *)self subtitle];
  if (subtitle != subtitleCopy && ([subtitle isEqualToString:subtitleCopy] & 1) == 0)
  {
    cellContentView = self->_cellContentView;
    if (subtitleCopy)
    {
      subtitleLabel = [(_SKUIItemBrowseCellContentView *)cellContentView subtitleLabel];

      if (!subtitleLabel)
      {
        v7 = self->_cellContentView;
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        [(_SKUIItemBrowseCellContentView *)v7 setSubtitleLabel:v8];

        subtitleLabel2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
        parentCellView = [(SKUICellLayout *)self parentCellView];
        backgroundColor = [parentCellView backgroundColor];
        [subtitleLabel2 setBackgroundColor:backgroundColor];

        subtitleLabel3 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
        v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [subtitleLabel3 setFont:v13];

        subtitleLabel4 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
        v15 = subtitleLabel4;
        if (self->_primaryTextColor)
        {
          [subtitleLabel4 setTextColor:?];
        }

        else
        {
          v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
          [v15 setTextColor:v16];
        }
      }

      subtitleLabel5 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
      [subtitleLabel5 setText:subtitleCopy];
    }

    else
    {
      [(_SKUIItemBrowseCellContentView *)cellContentView setSubtitleLabel:0];
    }

    [(SKUICellLayout *)self setNeedsLayout];
    [(_SKUIItemBrowseCellContentView *)self->_cellContentView setNeedsDisplay];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SKUIItemBrowseCellLayout *)self title];
  if (title != titleCopy && ([title isEqualToString:titleCopy] & 1) == 0)
  {
    cellContentView = self->_cellContentView;
    if (titleCopy)
    {
      titleLabel = [(_SKUIItemBrowseCellContentView *)cellContentView titleLabel];

      if (!titleLabel)
      {
        v7 = self->_cellContentView;
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        [(_SKUIItemBrowseCellContentView *)v7 setTitleLabel:v8];

        titleLabel2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
        [titleLabel2 setNumberOfLines:2];

        titleLabel3 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
        parentCellView = [(SKUICellLayout *)self parentCellView];
        backgroundColor = [parentCellView backgroundColor];
        [titleLabel3 setBackgroundColor:backgroundColor];

        titleLabel4 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
        v14 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [titleLabel4 setFont:v14];

        titleLabel5 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
        v16 = titleLabel5;
        if (self->_secondaryTextColor)
        {
          [titleLabel5 setTextColor:?];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [v16 setTextColor:blackColor];
        }
      }

      titleLabel6 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
      [titleLabel6 setText:titleCopy];
    }

    else
    {
      [(_SKUIItemBrowseCellContentView *)cellContentView setTitleLabel:0];
    }

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setUserRating:(double)rating
{
  if (self->_userRating != rating || ([(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingImageView], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_userRating = rating;

    [(SKUIItemBrowseCellLayout *)self _reloadUserRatingViews];
  }
}

- (NSString)subtitle
{
  subtitleLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

- (NSString)title
{
  titleLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)layoutForItemOfferChange
{
  contentView = [(SKUICellLayout *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  itemOfferButton = [(SKUIItemCellLayout *)self itemOfferButton];
  [itemOfferButton frame];
  [itemOfferButton sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v9 = v8;
  v11 = v10;
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  if ([itemOfferNoticeLabel isHidden])
  {

    itemOfferNoticeLabel = 0;
  }

  else if (itemOfferNoticeLabel)
  {
    [itemOfferNoticeLabel frame];
    [itemOfferNoticeLabel sizeThatFits:{v9 + 10.0, 1.79769313e308}];
    v12 = v15;
    v13 = v16;
    v17 = v11 + v16 + 3.0;
    goto LABEL_6;
  }

  v17 = v11;
LABEL_6:
  v18 = (v7 - v17) * 0.5;
  v19 = floorf(v18);
  v20 = v5 + -15.0 - v9;
  v21 = (v9 - v12) * 0.5;
  v22 = v20 + floorf(v21);
  v26.origin.x = v20;
  v26.origin.y = v19;
  v26.size.width = v9;
  v26.size.height = v11;
  v23 = CGRectGetMaxY(v26) + 3.0;
  [itemOfferButton setFrame:{v20, v19, v9, v11}];
  [itemOfferNoticeLabel setFrame:{v22, v23, v12, v13}];
}

- (void)layoutSubviews
{
  v85.receiver = self;
  v85.super_class = SKUIItemBrowseCellLayout;
  [(SKUICellLayout *)&v85 layoutSubviews];
  contentView = [(SKUICellLayout *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(_SKUIItemBrowseCellContentView *)self->_cellContentView setFrame:v5, v7, v9, v11];
  [(_SKUIItemBrowseCellContentView *)self->_cellContentView setNeedsDisplay];
  indexNumberLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];

  if (indexNumberLabel)
  {
    indexNumberLabel2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
    [indexNumberLabel2 frame];

    if (self->_largeSpacing)
    {
      v14 = 24.0;
    }

    else
    {
      v14 = 21.0;
    }

    if (self->_largeSpacing)
    {
      v15 = 32.0;
    }

    else
    {
      v15 = 24.0;
    }

    v16 = (v11 - v14) * 0.5;
    v17 = floorf(v16);
    indexNumberLabel3 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView indexNumberLabel];
    [indexNumberLabel3 setFrame:{10.0, v17, v15, v14}];

    v86.origin.x = 10.0;
    v86.origin.y = v17;
    v86.size.width = v15;
    v86.size.height = v14;
    v19 = CGRectGetMaxX(v86) + 10.0;
  }

  else
  {
    v19 = 15.0;
  }

  iconImageView = [(SKUIItemCellLayout *)self iconImageView];
  v21 = iconImageView;
  if (iconImageView)
  {
    [iconImageView frame];
    width = self->_imageBoundingSize.width;
    if (width <= 0.00000011920929)
    {
      height = v23;
      width = v22;
    }

    else
    {
      height = self->_imageBoundingSize.height;
    }

    v26 = v11;
    v27 = floor((v11 - height) * 0.5);
    [v21 setFrame:{v19, v27, width, height}];
    v87.origin.x = v19;
    v87.origin.y = v27;
    v11 = v26;
    v87.size.width = width;
    v87.size.height = height;
    v19 = CGRectGetMaxX(v87) + 10.0;
  }

  v88.origin.x = v5;
  v88.origin.y = v7;
  v88.size.width = v9;
  v88.size.height = v11;
  MaxX = CGRectGetMaxX(v88);
  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  if ([itemOfferNoticeLabel isHidden])
  {

    itemOfferNoticeLabel = 0;
  }

  else if (self->_primaryTextColor)
  {
    [itemOfferNoticeLabel setTextColor:?];
  }

  else
  {
    v30 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [itemOfferNoticeLabel setTextColor:v30];
  }

  v31 = MaxX + -15.0;
  itemOfferButton = [(SKUIItemCellLayout *)self itemOfferButton];
  v33 = itemOfferButton;
  if (itemOfferButton && ([itemOfferButton isHidden] & 1) == 0)
  {
    [v33 frame];
    v35 = v34;
    v37 = v36;
    [v33 layoutSizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v84 = v38;
    v39 = v11;
    if (itemOfferNoticeLabel)
    {
      [itemOfferNoticeLabel sizeThatFits:{v38 + 10.0, 1.79769313e308}];
      v41 = v40;
      v83 = v42;
      v43 = v37 + v42 + 3.0;
    }

    else
    {
      v41 = *(MEMORY[0x277CBF3A0] + 16);
      v83 = *(MEMORY[0x277CBF3A0] + 24);
      v43 = v37;
    }

    v44 = v31 - v35;
    v45 = (v39 - v43) * 0.5;
    v46 = floorf(v45);
    v47 = (v35 - v41) * 0.5;
    v82 = v31;
    v48 = v31 - v35 + floorf(v47);
    v89.origin.x = v44;
    v89.origin.y = v46;
    v89.size.width = v35;
    v89.size.height = v37;
    MaxY = CGRectGetMaxY(v89);
    v50 = v37;
    v51 = MaxY + 3.0;
    v52 = v44;
    v11 = v39;
    [v33 setFrame:{v52, v46, v35, v50}];
    [itemOfferNoticeLabel setFrame:{v48, v51, v41, v83}];
    v31 = v82 - v84 + -15.0;
  }

  removeControlView = [(SKUIItemCellLayout *)self removeControlView];
  v54 = removeControlView;
  if (removeControlView)
  {
    [removeControlView frame];
    v31 = v55 + -15.0;
  }

  v56 = v31 - v19;
  titleLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
  [titleLabel sizeThatFits:{v31 - v19, 1.79769313e308}];
  v59 = v58;

  userRatingImageView = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingImageView];
  v61 = userRatingImageView;
  v62 = 0.0;
  if (userRatingImageView && ([userRatingImageView isHidden] & 1) == 0)
  {
    [v61 frame];
    v62 = v63;
  }

  userRatingLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];

  if (v62 >= 16.0)
  {
    v65 = v62;
  }

  else
  {
    v65 = 16.0;
  }

  if (userRatingLabel)
  {
    v62 = v65;
  }

  v66 = v62 + 1.0;
  if (v62 <= 0.00000011920929)
  {
    v66 = 0.0;
  }

  v67 = (v11 - (v59 + 1.0 + 16.0 + v66)) * 0.5;
  v68 = ceilf(v67);
  titleLabel2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];

  if (titleLabel2)
  {
    titleLabel3 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
    [titleLabel3 frame];

    titleLabel4 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView titleLabel];
    [titleLabel4 setFrame:{v19, v68, v31 - v19, v59}];

    v90.origin.x = v19;
    v90.origin.y = v68;
    v90.size.width = v31 - v19;
    v90.size.height = v59;
    v68 = CGRectGetMaxY(v90) + 1.0;
  }

  subtitleLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];

  if (subtitleLabel)
  {
    subtitleLabel2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
    [subtitleLabel2 frame];

    subtitleLabel3 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView subtitleLabel];
    [subtitleLabel3 setFrame:{v19, v68, v31 - v19, 16.0}];

    v91.size.height = 16.0;
    v91.origin.x = v19;
    v91.origin.y = v68;
    v91.size.width = v31 - v19;
    v68 = CGRectGetMaxY(v91);
  }

  if (v61 && ([v61 isHidden] & 1) == 0)
  {
    [v61 frame];
    v76 = (v62 - v75) * 0.5;
    [v61 setFrame:{v19, v68 + 1.0 + floorf(v76)}];
  }

  userRatingLabel2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];

  if (userRatingLabel2)
  {
    userRatingLabel3 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
    [userRatingLabel3 frame];

    if (v61 && ([v61 isHidden] & 1) == 0)
    {
      [v61 frame];
      v19 = CGRectGetMaxX(v92) + 3.0;
      v56 = v31 - v19;
    }

    v79 = (v62 + -16.0) * 0.5;
    v80 = v68 + floorf(v79);
    userRatingLabel4 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
    [userRatingLabel4 setFrame:{v19, v80, v56, 16.0}];
  }
}

- (void)setBackgroundColor:(id)color
{
  cellContentView = self->_cellContentView;
  colorCopy = color;
  [(_SKUIItemBrowseCellContentView *)cellContentView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIItemBrowseCellLayout;
  [(SKUIItemCellLayout *)&v6 setBackgroundColor:colorCopy];
}

- (void)setIconImage:(id)image
{
  v7.receiver = self;
  v7.super_class = SKUIItemBrowseCellLayout;
  [(SKUIItemCellLayout *)&v7 setIconImage:image];
  iconImageView = [(SKUIItemCellLayout *)self iconImageView];
  [iconImageView setContentMode:4];

  contentView = [(SKUICellLayout *)self contentView];
  iconImageView2 = [(SKUIItemCellLayout *)self iconImageView];
  [contentView insertSubview:iconImageView2 aboveSubview:self->_cellContentView];
}

- (id)_decimalNumberFormatter
{
  if (_decimalNumberFormatter_sOnce_0 != -1)
  {
    [SKUIItemBrowseCellLayout _decimalNumberFormatter];
  }

  v3 = _decimalNumberFormatter_sNumberFormatter_0;

  return v3;
}

uint64_t __51__SKUIItemBrowseCellLayout__decimalNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _decimalNumberFormatter_sNumberFormatter_0;
  _decimalNumberFormatter_sNumberFormatter_0 = v0;

  v2 = _decimalNumberFormatter_sNumberFormatter_0;

  return [v2 setNumberStyle:1];
}

- (void)_initSKUIItemBrowseCellLayout
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  self->_largeSpacing = [currentDevice userInterfaceIdiom] == 1;

  v4 = objc_alloc_init(_SKUIItemBrowseCellContentView);
  cellContentView = self->_cellContentView;
  self->_cellContentView = v4;

  contentView = [(SKUICellLayout *)self contentView];
  [contentView addSubview:self->_cellContentView];
}

- (void)_reloadUserRatingViews
{
  parentCellView = [(SKUICellLayout *)self parentCellView];
  userRatingLabel = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];

  if (!userRatingLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    backgroundColor = [parentCellView backgroundColor];
    [v4 setBackgroundColor:backgroundColor];

    v6 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [v4 setFont:v6];

    if (self->_primaryTextColor)
    {
      [v4 setTextColor:?];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
      [v4 setTextColor:v7];
    }

    [(_SKUIItemBrowseCellContentView *)self->_cellContentView setUserRatingLabel:v4];
  }

  if (self->_numberOfUserRatings)
  {
    _decimalNumberFormatter = [(SKUIItemBrowseCellLayout *)self _decimalNumberFormatter];
    userRatingLabel2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
    v12 = [_decimalNumberFormatter stringFromNumber:v11];
    v13 = [v10 stringWithFormat:@"(%@)", v12];
    [userRatingLabel2 setText:v13];

    userRatingImageView = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingImageView];
    if (!userRatingImageView)
    {
      userRatingImageView = objc_alloc_init(SKUICellImageView);
      [(_SKUIItemBrowseCellContentView *)self->_cellContentView setUserRatingImageView:userRatingImageView];
      backgroundColor2 = [parentCellView backgroundColor];
      [(SKUICellImageView *)userRatingImageView setBackgroundColor:backgroundColor2];
    }

    v16 = [SKUIRatingStarsCache cacheWithProperties:1];
    [(SKUICellImageView *)userRatingImageView setHidden:0];
    v17 = [v16 ratingStarsImageForRating:self->_userRating];
    [(SKUICellImageView *)userRatingImageView setImage:v17];

    [(SKUICellImageView *)userRatingImageView sizeToFit];
  }

  else
  {
    userRatingImageView2 = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingImageView];
    [userRatingImageView2 setHidden:1];

    _decimalNumberFormatter = [(_SKUIItemBrowseCellContentView *)self->_cellContentView userRatingLabel];
    clientContext = [(SKUICellLayout *)self clientContext];
    userRatingImageView = clientContext;
    if (clientContext)
    {
      [(SKUICellImageView *)clientContext localizedStringForKey:@"NO_RATINGS"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"NO_RATINGS" inBundles:0];
    }
    v16 = ;
    [_decimalNumberFormatter setText:v16];
  }

  [(SKUICellLayout *)self setNeedsLayout];
}

- (CGSize)imageBoundingSize
{
  width = self->_imageBoundingSize.width;
  height = self->_imageBoundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end