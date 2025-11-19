@interface SKUIItemCellLayout
- (BOOL)_canShowItemOfferNotice;
- (BOOL)displaysItemOfferButton;
- (NSString)itemOfferNoticeString;
- (UIImage)iconImage;
- (id)_parentCollectionViewCell;
- (void)_getParentTableView:(id *)a3 collectionView:(id *)a4;
- (void)_itemOfferConfirmAction:(id)a3;
- (void)_reloadItemOfferButton:(BOOL)a3;
- (void)_reloadItemOfferVisibility;
- (void)_showItemOfferConfirmationAction:(id)a3;
- (void)dealloc;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)prepareForReuse;
- (void)resetLayout;
- (void)setBackgroundColor:(id)a3;
- (void)setDisplaysItemOfferButton:(BOOL)a3;
- (void)setIconImage:(id)a3;
- (void)setIconImageHidden:(BOOL)a3;
- (void)setItemOffer:(id)a3;
- (void)setItemOfferButtonAppearance:(id)a3;
- (void)setItemOfferNoticeString:(id)a3;
- (void)setItemState:(id)a3;
- (void)setItemState:(id)a3 animated:(BOOL)a4;
- (void)setRestricted:(BOOL)a3;
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

  v11 = [(SKUICellImageView *)self->_iconImageView image];

  return v11;
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

  v11 = [(UILabel *)self->_itemOfferNoticeLabel text];

  return v11;
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

- (void)setDisplaysItemOfferButton:(BOOL)a3
{
  v3 = a3;
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

  if (self->_hidesItemOfferButton == v3)
  {
    self->_hidesItemOfferButton = !v3;
    [(SKUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)setIconImage:(id)a3
{
  v4 = a3;
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

  v13 = [(SKUICellImageView *)self->_iconImageView image];

  if (v13 != v4)
  {
    iconImageView = self->_iconImageView;
    if (!v4)
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
      v18 = [(SKUICellLayout *)self parentCellView];
      v19 = [v18 backgroundColor];
      [(SKUICellImageView *)v17 setBackgroundColor:v19];

      [(SKUICellImageView *)self->_iconImageView setHidden:[(SKUIItemCellLayout *)self isIconImageHidden]];
      v20 = [(SKUICellLayout *)self contentView];
      [v20 insertSubview:self->_iconImageView atIndex:0];

      iconImageView = self->_iconImageView;
    }

    v21 = [(SKUICellImageView *)iconImageView image];
    [v21 size];
    v23 = v22;
    v25 = v24;

    [(SKUICellImageView *)self->_iconImageView setImage:v4];
    [v4 size];
    if (v23 != v27 || v25 != v26)
    {
      [(SKUICellImageView *)self->_iconImageView sizeToFit];
LABEL_15:
      [(SKUICellLayout *)self setNeedsLayout];
    }
  }
}

- (void)setIconImageHidden:(BOOL)a3
{
  v3 = a3;
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

  if (self->_iconImageHidden != v3)
  {
    self->_iconImageHidden = v3;
    [(SKUICellImageView *)self->_iconImageView setHidden:v3];
  }
}

- (void)setItemOffer:(id)a3
{
  v5 = a3;
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

  if (self->_itemOffer == v5)
  {
    [(SKUIItemCellLayout *)self _reloadItemOfferVisibility];
  }

  else
  {
    objc_storeStrong(&self->_itemOffer, a3);
    [(SKUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)setItemOfferButtonAppearance:(id)a3
{
  v5 = a3;
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

  if (self->_itemOfferButtonAppearance != v5)
  {
    objc_storeStrong(&self->_itemOfferButtonAppearance, a3);
    [(SKUIItemOfferButton *)self->_itemOfferButton setColoringWithAppearance:self->_itemOfferButtonAppearance];
  }
}

- (void)setItemOfferNoticeString:(id)a3
{
  v4 = a3;
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

  v13 = [(UILabel *)self->_itemOfferNoticeLabel text];

  if (v13 != v4)
  {
    itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
    if (v4)
    {
      if (!itemOfferNoticeLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_itemOfferNoticeLabel;
        self->_itemOfferNoticeLabel = v15;

        v17 = self->_itemOfferNoticeLabel;
        v18 = [(SKUICellLayout *)self parentCellView];
        v19 = [v18 backgroundColor];
        [(UILabel *)v17 setBackgroundColor:v19];

        v20 = self->_itemOfferNoticeLabel;
        v21 = [MEMORY[0x277D74300] systemFontOfSize:7.0];
        [(UILabel *)v20 setFont:v21];

        [(UILabel *)self->_itemOfferNoticeLabel setNumberOfLines:3];
        [(UILabel *)self->_itemOfferNoticeLabel setTextAlignment:1];
        v22 = [(SKUICellLayout *)self contentView];
        [v22 addSubview:self->_itemOfferNoticeLabel];

        itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
      }

      [(UILabel *)itemOfferNoticeLabel setText:v4];
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

- (void)setItemState:(id)a3
{
  v4 = a3;
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

  [(SKUIItemCellLayout *)self setItemState:v4 animated:0];
}

- (void)setItemState:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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

  if (self->_itemState == v6)
  {
    [(SKUIItemCellLayout *)self _reloadItemOfferVisibility];
  }

  else
  {
    v15 = [(SKUIItemState *)v6 copy];
    itemState = self->_itemState;
    self->_itemState = v15;

    [(SKUIItemCellLayout *)self _reloadItemOfferButton:v4];
  }
}

- (void)setRestricted:(BOOL)a3
{
  v3 = a3;
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

  if (self->_restricted != v3)
  {
    self->_restricted = v3;
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

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
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

  [(SKUICellImageView *)self->_iconImageView setBackgroundColor:v4];
  [(SKUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:v4];
  [(UILabel *)self->_itemOfferNoticeLabel setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIItemCellLayout;
  [(SKUICellLayout *)&v13 setBackgroundColor:v4];
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
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

- (void)_itemOfferConfirmAction:(id)a3
{
  v10 = 0;
  v11 = 0;
  [(SKUIItemCellLayout *)self _getParentTableView:&v11 collectionView:&v10];
  v4 = v11;
  v5 = v10;
  v6 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SKUICellLayout *)self parentCellView];
    [v6 itemTableView:v4 didConfirmItemOfferForTableViewCell:v7];
  }

  v8 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SKUIItemCellLayout *)self _parentCollectionViewCell];
    [v8 itemCollectionView:v5 didConfirmItemOfferForCell:v9];
  }
}

- (void)_showItemOfferConfirmationAction:(id)a3
{
  v4 = [(SKUIItemOfferButton *)self->_itemOfferButton superview];
  [v4 bringSubviewToFront:self->_itemOfferButton];

  itemOfferButton = self->_itemOfferButton;

  [(SKUIItemOfferButton *)itemOfferButton setShowingConfirmation:1 animated:1];
}

- (BOOL)_canShowItemOfferNotice
{
  v3 = [(UILabel *)self->_itemOfferNoticeLabel text];
  v4 = [v3 length];

  if (!v4)
  {
LABEL_4:
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = [(SKUIItemCellLayout *)self displaysItemOfferButton];
  if (v5)
  {
    if (![(SKUIItemCellLayout *)self isRestricted])
    {
      v6 = [(SKUIItemCellLayout *)self itemState];
      v7 = [v6 state];

      LOBYTE(v5) = (v7 & 0xFFFFFFFFFFFFFFEFLL) == 0;
      return v5;
    }

    goto LABEL_4;
  }

  return v5;
}

- (void)_getParentTableView:(id *)a3 collectionView:(id *)a4
{
  v16 = [(SKUICellLayout *)self parentCellView];
  v6 = [v16 superview];
  if (v6)
  {
    v7 = v6;
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
      v13 = [v7 superview];

      if (!v11 && !v10)
      {
        v7 = v13;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  v10 = 0;
  v11 = 0;
  v13 = 0;
LABEL_12:
  if (a4)
  {
    v14 = v10;
    *a4 = v10;
  }

  if (a3)
  {
    v15 = v11;
    *a3 = v11;
  }
}

- (id)_parentCollectionViewCell
{
  v2 = [(SKUICellLayout *)self parentCellView];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)_reloadItemOfferButton:(BOOL)a3
{
  if (!self->_itemOffer || self->_hidesItemOfferButton || (v4 = a3, [(SKUIItemCellLayout *)self isRestricted]))
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
      v11 = [(SKUICellLayout *)self parentCellView];
      v12 = [v11 backgroundColor];
      [(SKUIItemOfferButton *)v10 setBackgroundColor:v12];

      LODWORD(v13) = -0.5;
      [(SKUIItemOfferButton *)self->_itemOfferButton setCharge:v13];
      [(SKUIItemOfferButton *)self->_itemOfferButton setDelegate:self];
      v14 = [(SKUICellLayout *)self contentView];
      [v14 addSubview:self->_itemOfferButton];

      itemOfferButton = self->_itemOfferButton;
    }

    [(SKUIItemOfferButton *)itemOfferButton setHidden:0];
    v15 = [(SKUIItemCellLayout *)self itemState];
    v16 = self->_itemOfferButton;
    itemOffer = self->_itemOffer;
    v18 = [(SKUICellLayout *)self clientContext];
    v19 = [(SKUIItemOfferButton *)v16 setValuesUsingItemOffer:itemOffer itemState:v15 clientContext:v18 animated:v4];

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