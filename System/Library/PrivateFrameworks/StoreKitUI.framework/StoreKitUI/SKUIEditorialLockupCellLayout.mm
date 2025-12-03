@interface SKUIEditorialLockupCellLayout
+ (double)_imagePaddingForArtworkSize:(int64_t)size;
+ (double)editorialWidthForCellWidth:(double)width lockupStyle:(SKUILockupStyle *)style;
- (BOOL)_isItemOfferButtonHidden;
- (BOOL)isIconImageHidden;
- (SKUILockupItemCellLayout)lockupCellLayout;
- (SKUITextBoxView)textBoxView;
- (UIEdgeInsets)contentInsets;
- (id)_editorialCellLayout;
- (id)_editorialContainerView;
- (id)_lockupView;
- (id)iconImage;
- (id)iconImageView;
- (id)itemOffer;
- (id)itemOfferNoticeString;
- (id)itemState;
- (void)applyEditorialLayout:(id)layout withOrientation:(int64_t)orientation;
- (void)layoutForItemOfferChange;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setClientContext:(id)context;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setIconImage:(id)image;
- (void)setIconImageHidden:(BOOL)hidden;
- (void)setItemOffer:(id)offer;
- (void)setItemOfferButtonAppearance:(id)appearance;
- (void)setItemOfferNoticeString:(id)string;
- (void)setItemState:(id)state animated:(BOOL)animated;
- (void)setLayoutStyle:(int64_t)style;
- (void)setRestricted:(BOOL)restricted;
- (void)setVisibleFields:(unint64_t)fields;
@end

@implementation SKUIEditorialLockupCellLayout

+ (double)editorialWidthForCellWidth:(double)width lockupStyle:(SKUILockupStyle *)style
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIEditorialLockupCellLayout *)v7 editorialWidthForCellWidth:v8 lockupStyle:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  if (!SKUILockupLayoutStyleIsHorizontal(style->layoutStyle))
  {
    v15 = SKUILockupImageSizeForLockupSize(style->artworkSize, 12);
    [self _imagePaddingForArtworkSize:style->artworkSize];
    return width - (v15 + v16) + -15.0;
  }

  return width;
}

- (void)applyEditorialLayout:(id)layout withOrientation:(int64_t)orientation
{
  layoutCopy = layout;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIEditorialLockupCellLayout *)v7 applyEditorialLayout:v8 withOrientation:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [layoutCopy bodyTextLayoutForOrientation:orientation];
  v16 = [layoutCopy linkLayoutForOrientation:orientation];
  v17 = [layoutCopy titleTextLayoutForOrientation:orientation];
  v18 = v17;
  if (v15 || v16 || v17)
  {
    _editorialContainerView = [(SKUIEditorialLockupCellLayout *)self _editorialContainerView];
    [_editorialContainerView setHidden:0];
  }

  else
  {
    [(UIView *)self->_editorialContainerView setHidden:1];
  }

  _editorialCellLayout = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
  [_editorialCellLayout applyEditorialLayout:layoutCopy withOrientation:orientation expanded:1];

  [layoutCopy layoutHeightForOrientation:orientation expanded:1];
  self->_editorialHeight = v21;
  [(SKUICellLayout *)self setNeedsLayout];
}

- (SKUILockupItemCellLayout)lockupCellLayout
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 lockupCellLayout:v4];
      }
    }
  }

  _lockupView = [(SKUIEditorialLockupCellLayout *)self _lockupView];
  layout = [_lockupView layout];

  return layout;
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  primaryTextColor = [schemeCopy primaryTextColor];
  offerNoticeTextColor = self->_offerNoticeTextColor;
  self->_offerNoticeTextColor = primaryTextColor;

  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v16 = itemOfferNoticeLabel;
  if (self->_offerNoticeTextColor)
  {
    [itemOfferNoticeLabel setTextColor:?];
  }

  else
  {
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v16 setTextColor:v17];
  }

  _editorialCellLayout = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
  [_editorialCellLayout setColoringWithColorScheme:schemeCopy];

  lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setColoringWithColorScheme:schemeCopy];
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  bottom = insets.bottom;
  top = insets.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIEditorialLockupCellLayout *)v4 setContentInsets:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12.f64[0] = top;
  v12.f64[1] = left;
  v13.f64[0] = bottom;
  v13.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v12), vceqq_f64(*&self->_contentInsets.bottom, v13)))) & 1) == 0)
  {
    self->_contentInsets.top = top;
    self->_contentInsets.left = left;
    self->_contentInsets.bottom = bottom;
    self->_contentInsets.right = right;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setLayoutStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(SKUILockupItemCellLayout *)self->_lockupLayout setLayoutStyle:style];
    _showsItemOfferUnderEditorial = [(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial];
    lockupLayout = self->_lockupLayout;
    if (_showsItemOfferUnderEditorial)
    {
      itemOffer = [(SKUIItemCellLayout *)self->_lockupLayout itemOffer];
      v28.receiver = self;
      v28.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v28 setItemOffer:itemOffer];

      itemOfferNoticeString = [(SKUIItemCellLayout *)self->_lockupLayout itemOfferNoticeString];
      v27.receiver = self;
      v27.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v27 setItemOfferNoticeString:itemOfferNoticeString];

      itemState = [(SKUIItemCellLayout *)self->_lockupLayout itemState];
      v26.receiver = self;
      v26.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v26 setItemState:itemState];

      [(SKUIItemCellLayout *)self->_lockupLayout setItemOffer:0];
      [(SKUIItemCellLayout *)self->_lockupLayout setItemOfferNoticeString:0];
      [(SKUIItemCellLayout *)self->_lockupLayout setItemState:0];
    }

    else
    {
      itemOffer2 = [(SKUIEditorialLockupCellLayout *)self itemOffer];
      [(SKUIItemCellLayout *)lockupLayout setItemOffer:itemOffer2];

      v19 = self->_lockupLayout;
      itemOfferNoticeString2 = [(SKUIEditorialLockupCellLayout *)self itemOfferNoticeString];
      [(SKUIItemCellLayout *)v19 setItemOfferNoticeString:itemOfferNoticeString2];

      v21 = self->_lockupLayout;
      itemState2 = [(SKUIEditorialLockupCellLayout *)self itemState];
      [(SKUIItemCellLayout *)v21 setItemState:itemState2];

      v25.receiver = self;
      v25.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v25 setItemOffer:0];
      v24.receiver = self;
      v24.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v24 setItemOfferNoticeString:0];
      v23.receiver = self;
      v23.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v23 setItemState:0];
    }

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setVisibleFields:(unint64_t)fields
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setVisibleFields:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_visibleFields != fields)
  {
    self->_visibleFields = fields;
    [(SKUILockupItemCellLayout *)self->_lockupLayout setVisibleFields:fields];
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (SKUITextBoxView)textBoxView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 textBoxView:v4];
      }
    }
  }

  _editorialCellLayout = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
  textBoxView = [_editorialCellLayout textBoxView];

  return textBoxView;
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 layoutSubviews:v4];
      }
    }
  }

  contentView = [(SKUICellLayout *)self contentView];
  [contentView bounds];
  v13 = v12;
  v15 = v14;

  p_contentInsets = &self->_contentInsets;
  v17 = v15 - self->_contentInsets.bottom;
  v18 = v13 - self->_contentInsets.right;
  if (SKUILockupLayoutStyleIsHorizontal(self->_layoutStyle))
  {
    _editorialContainerView = [(SKUIEditorialLockupCellLayout *)self _editorialContainerView];
    left = self->_contentInsets.left;
    v21 = p_contentInsets->top + -3.0;
    v22 = self->_editorialHeight + 17.0;
    v23 = v18 - left;
    [_editorialContainerView setFrame:{left, v21, v18 - left, v22}];
    _editorialCellLayout = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
    [_editorialCellLayout layoutSubviews];

    v25 = self->_contentInsets.left;
    v57.origin.x = left;
    v57.origin.y = v21;
    v57.size.width = v18 - left;
    v57.size.height = v22;
    MaxY = CGRectGetMaxY(v57);
    v27 = v17 - self->_contentInsets.bottom - MaxY;
    _lockupView = [(SKUIEditorialLockupCellLayout *)self _lockupView];
    [_lockupView setFrame:{v25, MaxY, v23, v27}];
  }

  else
  {
    _editorialContainerView = [(SKUIEditorialLockupCellLayout *)self _lockupView];
    lockupSize = [(SKUILockupItemCellLayout *)self->_lockupLayout lockupSize];
    v30 = SKUILockupImageSizeForLockupSize(lockupSize, 12);
    top = p_contentInsets->top;
    v31 = self->_contentInsets.left;
    v33 = v17 - p_contentInsets->top;
    [objc_opt_class() _imagePaddingForArtworkSize:lockupSize];
    v35 = v30 + v34;
    [_editorialContainerView setFrame:{v31, top, v35, v33}];
    _lockupView = [(SKUIEditorialLockupCellLayout *)self _editorialContainerView];
    v58.origin.x = v31;
    v58.origin.y = top;
    v58.size.width = v35;
    v58.size.height = v33;
    v36 = CGRectGetMaxX(v58) + 15.0;
    v37 = p_contentInsets->top + -3.0;
    v38 = self->_editorialHeight + 17.0;
    v39 = v18 - v36;
    [_lockupView setFrame:{v36, v37, v39, v38}];
    _editorialCellLayout2 = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
    [_editorialCellLayout2 layoutSubviews];

    itemOfferButton = [(SKUIItemCellLayout *)self itemOfferButton];
    itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
    if ([(SKUIEditorialLockupCellLayout *)self _isItemOfferButtonHidden])
    {
      [itemOfferButton setHidden:1];
      [itemOfferNoticeLabel setHidden:1];
    }

    else if (itemOfferButton)
    {
      [itemOfferButton frame];
      v44 = v43;
      v46 = v45;
      v59.origin.x = v36;
      v59.origin.y = v37;
      v59.size.width = v39;
      v59.size.height = v38;
      v47 = CGRectGetMaxY(v59) + 0.0;
      [itemOfferButton setHidden:0];
      text = [itemOfferNoticeLabel text];
      v49 = [text length];

      if (v49)
      {
        if (itemOfferNoticeLabel)
        {
          [itemOfferNoticeLabel sizeThatFits:{v44 + 10.0, 1.79769313e308}];
          v51 = v50;
          v53 = v52;
          *&v50 = (v44 - v50) * 0.5;
          v54 = v36 + floorf(*&v50);
          v60.origin.x = v36;
          v60.origin.y = v47;
          v60.size.width = v44;
          v60.size.height = v46;
          v55 = CGRectGetMaxY(v60) + 3.0;
          [itemOfferNoticeLabel setHidden:0];
          [itemOfferNoticeLabel setFrame:{v54, v55, v51, v53}];
          if (self->_offerNoticeTextColor)
          {
            [itemOfferNoticeLabel setTextColor:?];
          }

          else
          {
            v56 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
            [itemOfferNoticeLabel setTextColor:v56];
          }
        }
      }

      else
      {
        [itemOfferNoticeLabel setHidden:1];
      }

      [itemOfferButton setFrame:{v36, v47, v44, v46}];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIEditorialCellLayout *)self->_editorialCellLayout setBackgroundColor:colorCopy];
  [(UIView *)self->_editorialContainerView setBackgroundColor:colorCopy];
  [(SKUICellLayoutView *)self->_lockupView setBackgroundColor:colorCopy];
  v13.receiver = self;
  v13.super_class = SKUIEditorialLockupCellLayout;
  [(SKUIItemCellLayout *)&v13 setBackgroundColor:colorCopy];
}

- (id)iconImage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 iconImage:v4];
      }
    }
  }

  iconImage = [(SKUIItemCellLayout *)self->_lockupLayout iconImage];

  return iconImage;
}

- (id)iconImageView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 iconImageView:v4];
      }
    }
  }

  iconImageView = [(SKUIItemCellLayout *)self->_lockupLayout iconImageView];

  return iconImageView;
}

- (BOOL)isIconImageHidden
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 isIconImageHidden:v4];
      }
    }
  }

  return [(SKUIItemCellLayout *)self->_lockupLayout isIconImageHidden];
}

- (id)itemOffer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 itemOffer:v4];
      }
    }
  }

  if ([(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v13.receiver = self;
    v13.super_class = SKUIEditorialLockupCellLayout;
    itemOffer = [(SKUIItemCellLayout *)&v13 itemOffer];
  }

  else
  {
    itemOffer = [(SKUIItemCellLayout *)self->_lockupLayout itemOffer];
  }

  return itemOffer;
}

- (id)itemOfferNoticeString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 itemOfferNoticeString:v4];
      }
    }
  }

  if ([(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v13.receiver = self;
    v13.super_class = SKUIEditorialLockupCellLayout;
    itemOfferNoticeString = [(SKUIItemCellLayout *)&v13 itemOfferNoticeString];
  }

  else
  {
    itemOfferNoticeString = [(SKUIItemCellLayout *)self->_lockupLayout itemOfferNoticeString];
  }

  return itemOfferNoticeString;
}

- (id)itemState
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 itemState:v4];
      }
    }
  }

  if (SKUILockupLayoutStyleIsHorizontal(self->_layoutStyle))
  {
    itemState = [(SKUIItemCellLayout *)self->_lockupLayout itemState];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUIEditorialLockupCellLayout;
    itemState = [(SKUIItemCellLayout *)&v13 itemState];
  }

  return itemState;
}

- (void)layoutForItemOfferChange
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEditorialLockupCellLayout *)v3 layoutForItemOfferChange:v4];
      }
    }
  }

  itemOfferButton = [(SKUIItemCellLayout *)self itemOfferButton];
  [itemOfferButton frame];
  v13 = v12;
  v15 = v14;
  [itemOfferButton sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v17 = v16;
  v19 = v18;
  itemOfferNoticeLabel = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v21 = itemOfferNoticeLabel;
  if (itemOfferNoticeLabel && ([itemOfferNoticeLabel isHidden] & 1) == 0)
  {
    [v21 frame];
    v23 = v22;
    [v21 sizeThatFits:{v17 + 10.0, 1.79769313e308}];
    v25 = v24;
    *&v24 = (v17 - v24) * 0.5;
    [v21 setFrame:{v13 + floorf(*&v24), v23, v25, v26}];
  }

  [itemOfferButton setFrame:{v13, v15, v17, v19}];
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setClientContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUILockupItemCellLayout *)self->_lockupLayout setClientContext:contextCopy];
  v13.receiver = self;
  v13.super_class = SKUIEditorialLockupCellLayout;
  [(SKUICellLayout *)&v13 setClientContext:contextCopy];
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setIconImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setIconImage:imageCopy];
}

- (void)setIconImageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setIconImageHidden:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setIconImageHidden:hiddenCopy];
}

- (void)setItemOffer:(id)offer
{
  offerCopy = offer;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setItemOffer:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if ([(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v14.receiver = self;
    v14.super_class = SKUIEditorialLockupCellLayout;
    [(SKUIItemCellLayout *)&v14 setItemOffer:offerCopy];
  }

  else
  {
    lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
    [lockupCellLayout setItemOffer:offerCopy];
  }
}

- (void)setItemOfferButtonAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setItemOfferButtonAppearance:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setItemOfferButtonAppearance:appearanceCopy];

  v14.receiver = self;
  v14.super_class = SKUIEditorialLockupCellLayout;
  [(SKUIItemCellLayout *)&v14 setItemOfferButtonAppearance:appearanceCopy];
}

- (void)setItemOfferNoticeString:(id)string
{
  stringCopy = string;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setItemOfferNoticeString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if ([(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v14.receiver = self;
    v14.super_class = SKUIEditorialLockupCellLayout;
    [(SKUIItemCellLayout *)&v14 setItemOfferNoticeString:stringCopy];
  }

  else
  {
    lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
    [lockupCellLayout setItemOfferNoticeString:stringCopy];
  }
}

- (void)setItemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIEditorialLockupCellLayout *)v7 setItemState:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  if ([(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v16.receiver = self;
    v16.super_class = SKUIEditorialLockupCellLayout;
    [(SKUIItemCellLayout *)&v16 setItemState:stateCopy animated:animatedCopy];
  }

  else
  {
    lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
    [lockupCellLayout setItemState:stateCopy animated:animatedCopy];
  }
}

- (void)setRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditorialLockupCellLayout *)v5 setRestricted:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setRestricted:restrictedCopy];

  v14.receiver = self;
  v14.super_class = SKUIEditorialLockupCellLayout;
  [(SKUIItemCellLayout *)&v14 setRestricted:restrictedCopy];
}

- (id)_editorialCellLayout
{
  editorialCellLayout = self->_editorialCellLayout;
  if (!editorialCellLayout)
  {
    v4 = [SKUIEditorialCellLayout alloc];
    _editorialContainerView = [(SKUIEditorialLockupCellLayout *)self _editorialContainerView];
    v6 = [(SKUIEditorialCellLayout *)v4 initWithParentView:_editorialContainerView];
    v7 = self->_editorialCellLayout;
    self->_editorialCellLayout = v6;

    v8 = self->_editorialCellLayout;
    parentCellView = [(SKUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(SKUIEditorialCellLayout *)v8 setBackgroundColor:backgroundColor];

    [(SKUIEditorialCellLayout *)self->_editorialCellLayout setContentInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    editorialCellLayout = self->_editorialCellLayout;
  }

  return editorialCellLayout;
}

- (id)_editorialContainerView
{
  editorialContainerView = self->_editorialContainerView;
  if (!editorialContainerView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_editorialContainerView;
    self->_editorialContainerView = v4;

    v6 = self->_editorialContainerView;
    parentCellView = [(SKUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(UIView *)v6 setBackgroundColor:backgroundColor];

    contentView = [(SKUICellLayout *)self contentView];
    [contentView addSubview:self->_editorialContainerView];

    editorialContainerView = self->_editorialContainerView;
  }

  return editorialContainerView;
}

+ (double)_imagePaddingForArtworkSize:(int64_t)size
{
  result = 10.0;
  if ((size - 3) < 3)
  {
    return 15.0;
  }

  return result;
}

- (BOOL)_isItemOfferButtonHidden
{
  if (![(SKUIItemCellLayout *)self displaysItemOfferButton]|| ([(SKUIEditorialLockupCellLayout *)self visibleFields]& 4) == 0)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SKUIEditorialLockupCellLayout;
  itemOffer = [(SKUIItemCellLayout *)&v6 itemOffer];
  if (itemOffer)
  {
    isRestricted = [(SKUIItemCellLayout *)self isRestricted];
  }

  else
  {
    isRestricted = 1;
  }

  return isRestricted;
}

- (id)_lockupView
{
  lockupView = self->_lockupView;
  if (!lockupView)
  {
    v4 = objc_alloc_init(SKUICellLayoutView);
    v5 = self->_lockupView;
    self->_lockupView = v4;

    v6 = [[SKUILockupItemCellLayout alloc] initWithParentView:self->_lockupView];
    lockupLayout = self->_lockupLayout;
    self->_lockupLayout = v6;

    v8 = self->_lockupLayout;
    clientContext = [(SKUICellLayout *)self clientContext];
    [(SKUILockupItemCellLayout *)v8 setClientContext:clientContext];

    [(SKUILockupItemCellLayout *)self->_lockupLayout setLayoutStyle:self->_layoutStyle];
    [(SKUILockupItemCellLayout *)self->_lockupLayout setVisibleFields:self->_visibleFields];
    [(SKUICellLayoutView *)self->_lockupView setLayout:self->_lockupLayout];
    v10 = self->_lockupView;
    parentCellView = [(SKUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(SKUICellLayoutView *)v10 setBackgroundColor:backgroundColor];

    contentView = [(SKUICellLayout *)self contentView];
    [contentView addSubview:self->_lockupView];

    lockupView = self->_lockupView;
  }

  return lockupView;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end