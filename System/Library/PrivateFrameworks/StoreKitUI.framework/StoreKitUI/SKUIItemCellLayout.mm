@interface SKUIItemCellLayout
- (BOOL)_canShowItemOfferNotice;
- (BOOL)displaysItemOfferButton;
- (NSString)itemOfferNoticeString;
- (UIImage)iconImage;
- (id)_parentCollectionViewCell;
- (void)_getParentTableView:(id *)view collectionView:(id *)collectionView;
- (void)_itemOfferConfirmAction:(id)action;
- (void)_reloadItemOfferButton:(BOOL)button;
- (void)_reloadItemOfferVisibility;
- (void)_showItemOfferConfirmationAction:(id)action;
- (void)dealloc;
- (void)itemOfferButtonWillAnimateTransition:(id)transition;
- (void)prepareForReuse;
- (void)resetLayout;
- (void)setBackgroundColor:(id)color;
- (void)setDisplaysItemOfferButton:(BOOL)button;
- (void)setIconImage:(id)image;
- (void)setIconImageHidden:(BOOL)hidden;
- (void)setItemOffer:(id)offer;
- (void)setItemOfferButtonAppearance:(id)appearance;
- (void)setItemOfferNoticeString:(id)string;
- (void)setItemState:(id)state;
- (void)setItemState:(id)state animated:(BOOL)animated;
- (void)setRestricted:(BOOL)restricted;
@end

@implementation SKUIItemCellLayout

- (void)dealloc
{
  [(SKUIItemOfferButton *)self->_itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(SKUIItemOfferButton *)self->_itemOfferButton setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIItemCellLayout;
  [(SKUIItemCellLayout *)&v3 dealloc];
}

- (BOOL)displaysItemOfferButton
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemCellLayout *)v3 displaysItemOfferButton:v4];
      }
    }
  }

  return !self->_hidesItemOfferButton;
}

- (UIImage)iconImage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemCellLayout *)v3 iconImage:v4];
      }
    }
  }

  image = [(SKUICellImageView *)self->_iconImageView image];

  return image;
}

- (NSString)itemOfferNoticeString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemCellLayout *)v3 itemOfferNoticeString:v4];
      }
    }
  }

  text = [(UILabel *)self->_itemOfferNoticeLabel text];

  return text;
}

- (void)resetLayout
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemCellLayout *)v3 resetLayout:v4];
      }
    }
  }

  [(SKUIItemOfferButton *)self->_itemOfferButton setHidden:1];
  [(UILabel *)self->_itemOfferNoticeLabel setHidden:1];
  [(SKUICellImageView *)self->_iconImageView removeFromSuperview];
  iconImageView = self->_iconImageView;
  self->_iconImageView = 0;

  v12.receiver = self;
  v12.super_class = SKUIItemCellLayout;
  [(SKUICellLayout *)&v12 resetLayout];
}

- (void)setDisplaysItemOfferButton:(BOOL)button
{
  buttonCopy = button;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemCellLayout *)v5 setDisplaysItemOfferButton:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_hidesItemOfferButton == buttonCopy)
  {
    self->_hidesItemOfferButton = !buttonCopy;
    [(SKUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
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
        [(SKUIItemCellLayout *)v5 setIconImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  image = [(SKUICellImageView *)self->_iconImageView image];

  if (image != imageCopy)
  {
    iconImageView = self->_iconImageView;
    if (!imageCopy)
    {
      [(SKUICellImageView *)iconImageView removeFromSuperview];
      v29 = self->_iconImageView;
      self->_iconImageView = 0;

      goto LABEL_15;
    }

    if (!iconImageView)
    {
      v15 = objc_alloc_init(SKUICellImageView);
      v16 = self->_iconImageView;
      self->_iconImageView = v15;

      v17 = self->_iconImageView;
      parentCellView = [(SKUICellLayout *)self parentCellView];
      backgroundColor = [parentCellView backgroundColor];
      [(SKUICellImageView *)v17 setBackgroundColor:backgroundColor];

      [(SKUICellImageView *)self->_iconImageView setHidden:[(SKUIItemCellLayout *)self isIconImageHidden]];
      contentView = [(SKUICellLayout *)self contentView];
      [contentView insertSubview:self->_iconImageView atIndex:0];

      iconImageView = self->_iconImageView;
    }

    image2 = [(SKUICellImageView *)iconImageView image];
    [image2 size];
    v23 = v22;
    v25 = v24;

    [(SKUICellImageView *)self->_iconImageView setImage:imageCopy];
    [imageCopy size];
    if (v23 != v27 || v25 != v26)
    {
      [(SKUICellImageView *)self->_iconImageView sizeToFit];
LABEL_15:
      [(SKUICellLayout *)self setNeedsLayout];
    }
  }
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
        [(SKUIItemCellLayout *)v5 setIconImageHidden:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_iconImageHidden != hiddenCopy)
  {
    self->_iconImageHidden = hiddenCopy;
    [(SKUICellImageView *)self->_iconImageView setHidden:hiddenCopy];
  }
}

- (void)setItemOffer:(id)offer
{
  offerCopy = offer;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIItemCellLayout *)v6 setItemOffer:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_itemOffer == offerCopy)
  {
    [(SKUIItemCellLayout *)self _reloadItemOfferVisibility];
  }

  else
  {
    objc_storeStrong(&self->_itemOffer, offer);
    [(SKUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)setItemOfferButtonAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIItemCellLayout *)v6 setItemOfferButtonAppearance:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_itemOfferButtonAppearance != appearanceCopy)
  {
    objc_storeStrong(&self->_itemOfferButtonAppearance, appearance);
    [(SKUIItemOfferButton *)self->_itemOfferButton setColoringWithAppearance:self->_itemOfferButtonAppearance];
  }
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
        [(SKUIItemCellLayout *)v5 setItemOfferNoticeString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  text = [(UILabel *)self->_itemOfferNoticeLabel text];

  if (text != stringCopy)
  {
    itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
    if (stringCopy)
    {
      if (!itemOfferNoticeLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_itemOfferNoticeLabel;
        self->_itemOfferNoticeLabel = v15;

        v17 = self->_itemOfferNoticeLabel;
        parentCellView = [(SKUICellLayout *)self parentCellView];
        backgroundColor = [parentCellView backgroundColor];
        [(UILabel *)v17 setBackgroundColor:backgroundColor];

        v20 = self->_itemOfferNoticeLabel;
        v21 = [MEMORY[0x277D74300] systemFontOfSize:7.0];
        [(UILabel *)v20 setFont:v21];

        [(UILabel *)self->_itemOfferNoticeLabel setNumberOfLines:3];
        [(UILabel *)self->_itemOfferNoticeLabel setTextAlignment:1];
        contentView = [(SKUICellLayout *)self contentView];
        [contentView addSubview:self->_itemOfferNoticeLabel];

        itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
      }

      [(UILabel *)itemOfferNoticeLabel setText:stringCopy];
      [(UILabel *)self->_itemOfferNoticeLabel setHidden:[(SKUIItemCellLayout *)self _canShowItemOfferNotice]^ 1];
      [(SKUICellLayout *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)itemOfferNoticeLabel setHidden:1];
      [(UILabel *)self->_itemOfferNoticeLabel setText:0];
    }
  }
}

- (void)setItemState:(id)state
{
  stateCopy = state;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemCellLayout *)v5 setItemState:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIItemCellLayout *)self setItemState:stateCopy animated:0];
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
        [(SKUIItemCellLayout *)v7 setItemState:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  if (self->_itemState == stateCopy)
  {
    [(SKUIItemCellLayout *)self _reloadItemOfferVisibility];
  }

  else
  {
    v15 = [(SKUIItemState *)stateCopy copy];
    itemState = self->_itemState;
    self->_itemState = v15;

    [(SKUIItemCellLayout *)self _reloadItemOfferButton:animatedCopy];
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
        [(SKUIItemCellLayout *)v5 setRestricted:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_restricted != restrictedCopy)
  {
    self->_restricted = restrictedCopy;
    [(SKUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)prepareForReuse
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemCellLayout *)v3 prepareForReuse:v4];
      }
    }
  }

  [(SKUIItemOfferButton *)self->_itemOfferButton removeButtonStateAnimations];
  v11.receiver = self;
  v11.super_class = SKUIItemCellLayout;
  [(SKUICellLayout *)&v11 prepareForReuse];
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
        [(SKUIItemCellLayout *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUICellImageView *)self->_iconImageView setBackgroundColor:colorCopy];
  [(SKUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:colorCopy];
  [(UILabel *)self->_itemOfferNoticeLabel setBackgroundColor:colorCopy];
  v13.receiver = self;
  v13.super_class = SKUIItemCellLayout;
  [(SKUICellLayout *)&v13 setBackgroundColor:colorCopy];
}

- (void)itemOfferButtonWillAnimateTransition:(id)transition
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIItemCellLayout *)v4 itemOfferButtonWillAnimateTransition:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  [(UILabel *)self->_itemOfferNoticeLabel setHidden:[(SKUIItemCellLayout *)self _canShowItemOfferNotice]^ 1];
  [(SKUIItemCellLayout *)self layoutForItemOfferChange];
}

- (void)_itemOfferConfirmAction:(id)action
{
  v10 = 0;
  v11 = 0;
  [(SKUIItemCellLayout *)self _getParentTableView:&v11 collectionView:&v10];
  v4 = v11;
  v5 = v10;
  delegate = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    parentCellView = [(SKUICellLayout *)self parentCellView];
    [delegate itemTableView:v4 didConfirmItemOfferForTableViewCell:parentCellView];
  }

  delegate2 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    _parentCollectionViewCell = [(SKUIItemCellLayout *)self _parentCollectionViewCell];
    [delegate2 itemCollectionView:v5 didConfirmItemOfferForCell:_parentCollectionViewCell];
  }
}

- (void)_showItemOfferConfirmationAction:(id)action
{
  superview = [(SKUIItemOfferButton *)self->_itemOfferButton superview];
  [superview bringSubviewToFront:self->_itemOfferButton];

  itemOfferButton = self->_itemOfferButton;

  [(SKUIItemOfferButton *)itemOfferButton setShowingConfirmation:1 animated:1];
}

- (BOOL)_canShowItemOfferNotice
{
  text = [(UILabel *)self->_itemOfferNoticeLabel text];
  v4 = [text length];

  if (!v4)
  {
LABEL_4:
    LOBYTE(displaysItemOfferButton) = 0;
    return displaysItemOfferButton;
  }

  displaysItemOfferButton = [(SKUIItemCellLayout *)self displaysItemOfferButton];
  if (displaysItemOfferButton)
  {
    if (![(SKUIItemCellLayout *)self isRestricted])
    {
      itemState = [(SKUIItemCellLayout *)self itemState];
      state = [itemState state];

      LOBYTE(displaysItemOfferButton) = (state & 0xFFFFFFFFFFFFFFEFLL) == 0;
      return displaysItemOfferButton;
    }

    goto LABEL_4;
  }

  return displaysItemOfferButton;
}

- (void)_getParentTableView:(id *)view collectionView:(id *)collectionView
{
  parentCellView = [(SKUICellLayout *)self parentCellView];
  superview = [parentCellView superview];
  if (superview)
  {
    v7 = superview;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 0;
        v9 = v7;
      }

      else
      {
        objc_opt_class();
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v8 = v7;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v12 = v7;
      v10 = v8;
      v11 = v9;
LABEL_7:
      superview2 = [v7 superview];

      if (!v11 && !v10)
      {
        v7 = superview2;
        if (superview2)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  v10 = 0;
  v11 = 0;
  superview2 = 0;
LABEL_12:
  if (collectionView)
  {
    v14 = v10;
    *collectionView = v10;
  }

  if (view)
  {
    v15 = v11;
    *view = v11;
  }
}

- (id)_parentCollectionViewCell
{
  parentCellView = [(SKUICellLayout *)self parentCellView];
  if (parentCellView)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [parentCellView superview];

      parentCellView = superview;
    }

    while (superview);
  }

  return parentCellView;
}

- (void)_reloadItemOfferButton:(BOOL)button
{
  if (!self->_itemOffer || self->_hidesItemOfferButton || (v4 = button, [(SKUIItemCellLayout *)self isRestricted]))
  {
    [(SKUIItemOfferButton *)self->_itemOfferButton setHidden:1];
  }

  else
  {
    itemOfferButton = self->_itemOfferButton;
    if (!itemOfferButton)
    {
      v8 = [SKUIItemOfferButton itemOfferButtonWithAppearance:self->_itemOfferButtonAppearance];
      v9 = self->_itemOfferButton;
      self->_itemOfferButton = v8;

      [(SKUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__cancelItemOfferConfirmationAction_ forControlEvents:0x10000];
      [(SKUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__itemOfferConfirmAction_ forControlEvents:0x20000];
      [(SKUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__showItemOfferConfirmationAction_ forControlEvents:0x40000];
      v10 = self->_itemOfferButton;
      parentCellView = [(SKUICellLayout *)self parentCellView];
      backgroundColor = [parentCellView backgroundColor];
      [(SKUIItemOfferButton *)v10 setBackgroundColor:backgroundColor];

      LODWORD(v13) = -0.5;
      [(SKUIItemOfferButton *)self->_itemOfferButton setCharge:v13];
      [(SKUIItemOfferButton *)self->_itemOfferButton setDelegate:self];
      contentView = [(SKUICellLayout *)self contentView];
      [contentView addSubview:self->_itemOfferButton];

      itemOfferButton = self->_itemOfferButton;
    }

    [(SKUIItemOfferButton *)itemOfferButton setHidden:0];
    itemState = [(SKUIItemCellLayout *)self itemState];
    v16 = self->_itemOfferButton;
    itemOffer = self->_itemOffer;
    clientContext = [(SKUICellLayout *)self clientContext];
    v19 = [(SKUIItemOfferButton *)v16 setValuesUsingItemOffer:itemOffer itemState:itemState clientContext:clientContext animated:v4];

    if (v19)
    {
      [(SKUIItemOfferButton *)self->_itemOfferButton sizeToFit];
      [(SKUICellLayout *)self setNeedsLayout];
    }
  }

  itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
  v6 = [(SKUIItemCellLayout *)self _canShowItemOfferNotice]^ 1;

  [(UILabel *)itemOfferNoticeLabel setHidden:v6];
}

- (void)_reloadItemOfferVisibility
{
  v3 = !self->_itemOffer || self->_hidesItemOfferButton || [(SKUIItemCellLayout *)self isRestricted];
  [(SKUIItemOfferButton *)self->_itemOfferButton setHidden:v3];
  itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
  v5 = [(SKUIItemCellLayout *)self _canShowItemOfferNotice]^ 1;

  [(UILabel *)itemOfferNoticeLabel setHidden:v5];
}

@end