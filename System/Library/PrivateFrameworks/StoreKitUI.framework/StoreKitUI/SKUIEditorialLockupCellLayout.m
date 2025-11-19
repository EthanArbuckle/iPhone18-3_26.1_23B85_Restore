@interface SKUIEditorialLockupCellLayout
+ (double)_imagePaddingForArtworkSize:(int64_t)a3;
+ (double)editorialWidthForCellWidth:(double)a3 lockupStyle:(SKUILockupStyle *)a4;
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
- (void)applyEditorialLayout:(id)a3 withOrientation:(int64_t)a4;
- (void)layoutForItemOfferChange;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setClientContext:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setIconImage:(id)a3;
- (void)setIconImageHidden:(BOOL)a3;
- (void)setItemOffer:(id)a3;
- (void)setItemOfferButtonAppearance:(id)a3;
- (void)setItemOfferNoticeString:(id)a3;
- (void)setItemState:(id)a3 animated:(BOOL)a4;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setRestricted:(BOOL)a3;
- (void)setVisibleFields:(unint64_t)a3;
@end

@implementation SKUIEditorialLockupCellLayout

+ (double)editorialWidthForCellWidth:(double)a3 lockupStyle:(SKUILockupStyle *)a4
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

  if (!SKUILockupLayoutStyleIsHorizontal(a4->layoutStyle))
  {
    v15 = SKUILockupImageSizeForLockupSize(a4->artworkSize, 12);
    [a1 _imagePaddingForArtworkSize:a4->artworkSize];
    return a3 - (v15 + v16) + -15.0;
  }

  return a3;
}

- (void)applyEditorialLayout:(id)a3 withOrientation:(int64_t)a4
{
  v6 = a3;
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

  v15 = [v6 bodyTextLayoutForOrientation:a4];
  v16 = [v6 linkLayoutForOrientation:a4];
  v17 = [v6 titleTextLayoutForOrientation:a4];
  v18 = v17;
  if (v15 || v16 || v17)
  {
    v19 = [(SKUIEditorialLockupCellLayout *)self _editorialContainerView];
    [v19 setHidden:0];
  }

  else
  {
    [(UIView *)self->_editorialContainerView setHidden:1];
  }

  v20 = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
  [v20 applyEditorialLayout:v6 withOrientation:a4 expanded:1];

  [v6 layoutHeightForOrientation:a4 expanded:1];
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

  v11 = [(SKUIEditorialLockupCellLayout *)self _lockupView];
  v12 = [v11 layout];

  return v12;
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
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

  v13 = [v4 primaryTextColor];
  offerNoticeTextColor = self->_offerNoticeTextColor;
  self->_offerNoticeTextColor = v13;

  v15 = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v16 = v15;
  if (self->_offerNoticeTextColor)
  {
    [v15 setTextColor:?];
  }

  else
  {
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v16 setTextColor:v17];
  }

  v18 = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
  [v18 setColoringWithColorScheme:v4];

  v19 = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v19 setColoringWithColorScheme:v4];
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  bottom = a3.bottom;
  top = a3.top;
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

- (void)setLayoutStyle:(int64_t)a3
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

  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(SKUILockupItemCellLayout *)self->_lockupLayout setLayoutStyle:a3];
    v13 = [(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial];
    lockupLayout = self->_lockupLayout;
    if (v13)
    {
      v15 = [(SKUIItemCellLayout *)self->_lockupLayout itemOffer];
      v28.receiver = self;
      v28.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v28 setItemOffer:v15];

      v16 = [(SKUIItemCellLayout *)self->_lockupLayout itemOfferNoticeString];
      v27.receiver = self;
      v27.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v27 setItemOfferNoticeString:v16];

      v17 = [(SKUIItemCellLayout *)self->_lockupLayout itemState];
      v26.receiver = self;
      v26.super_class = SKUIEditorialLockupCellLayout;
      [(SKUIItemCellLayout *)&v26 setItemState:v17];

      [(SKUIItemCellLayout *)self->_lockupLayout setItemOffer:0];
      [(SKUIItemCellLayout *)self->_lockupLayout setItemOfferNoticeString:0];
      [(SKUIItemCellLayout *)self->_lockupLayout setItemState:0];
    }

    else
    {
      v18 = [(SKUIEditorialLockupCellLayout *)self itemOffer];
      [(SKUIItemCellLayout *)lockupLayout setItemOffer:v18];

      v19 = self->_lockupLayout;
      v20 = [(SKUIEditorialLockupCellLayout *)self itemOfferNoticeString];
      [(SKUIItemCellLayout *)v19 setItemOfferNoticeString:v20];

      v21 = self->_lockupLayout;
      v22 = [(SKUIEditorialLockupCellLayout *)self itemState];
      [(SKUIItemCellLayout *)v21 setItemState:v22];

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

- (void)setVisibleFields:(unint64_t)a3
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

  if (self->_visibleFields != a3)
  {
    self->_visibleFields = a3;
    [(SKUILockupItemCellLayout *)self->_lockupLayout setVisibleFields:a3];
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

  v11 = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
  v12 = [v11 textBoxView];

  return v12;
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

  v11 = [(SKUICellLayout *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  p_contentInsets = &self->_contentInsets;
  v17 = v15 - self->_contentInsets.bottom;
  v18 = v13 - self->_contentInsets.right;
  if (SKUILockupLayoutStyleIsHorizontal(self->_layoutStyle))
  {
    v19 = [(SKUIEditorialLockupCellLayout *)self _editorialContainerView];
    left = self->_contentInsets.left;
    v21 = p_contentInsets->top + -3.0;
    v22 = self->_editorialHeight + 17.0;
    v23 = v18 - left;
    [v19 setFrame:{left, v21, v18 - left, v22}];
    v24 = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
    [v24 layoutSubviews];

    v25 = self->_contentInsets.left;
    v57.origin.x = left;
    v57.origin.y = v21;
    v57.size.width = v18 - left;
    v57.size.height = v22;
    MaxY = CGRectGetMaxY(v57);
    v27 = v17 - self->_contentInsets.bottom - MaxY;
    v28 = [(SKUIEditorialLockupCellLayout *)self _lockupView];
    [v28 setFrame:{v25, MaxY, v23, v27}];
  }

  else
  {
    v19 = [(SKUIEditorialLockupCellLayout *)self _lockupView];
    v29 = [(SKUILockupItemCellLayout *)self->_lockupLayout lockupSize];
    v30 = SKUILockupImageSizeForLockupSize(v29, 12);
    top = p_contentInsets->top;
    v31 = self->_contentInsets.left;
    v33 = v17 - p_contentInsets->top;
    [objc_opt_class() _imagePaddingForArtworkSize:v29];
    v35 = v30 + v34;
    [v19 setFrame:{v31, top, v35, v33}];
    v28 = [(SKUIEditorialLockupCellLayout *)self _editorialContainerView];
    v58.origin.x = v31;
    v58.origin.y = top;
    v58.size.width = v35;
    v58.size.height = v33;
    v36 = CGRectGetMaxX(v58) + 15.0;
    v37 = p_contentInsets->top + -3.0;
    v38 = self->_editorialHeight + 17.0;
    v39 = v18 - v36;
    [v28 setFrame:{v36, v37, v39, v38}];
    v40 = [(SKUIEditorialLockupCellLayout *)self _editorialCellLayout];
    [v40 layoutSubviews];

    v41 = [(SKUIItemCellLayout *)self itemOfferButton];
    v42 = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
    if ([(SKUIEditorialLockupCellLayout *)self _isItemOfferButtonHidden])
    {
      [v41 setHidden:1];
      [v42 setHidden:1];
    }

    else if (v41)
    {
      [v41 frame];
      v44 = v43;
      v46 = v45;
      v59.origin.x = v36;
      v59.origin.y = v37;
      v59.size.width = v39;
      v59.size.height = v38;
      v47 = CGRectGetMaxY(v59) + 0.0;
      [v41 setHidden:0];
      v48 = [v42 text];
      v49 = [v48 length];

      if (v49)
      {
        if (v42)
        {
          [v42 sizeThatFits:{v44 + 10.0, 1.79769313e308}];
          v51 = v50;
          v53 = v52;
          *&v50 = (v44 - v50) * 0.5;
          v54 = v36 + floorf(*&v50);
          v60.origin.x = v36;
          v60.origin.y = v47;
          v60.size.width = v44;
          v60.size.height = v46;
          v55 = CGRectGetMaxY(v60) + 3.0;
          [v42 setHidden:0];
          [v42 setFrame:{v54, v55, v51, v53}];
          if (self->_offerNoticeTextColor)
          {
            [v42 setTextColor:?];
          }

          else
          {
            v56 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
            [v42 setTextColor:v56];
          }
        }
      }

      else
      {
        [v42 setHidden:1];
      }

      [v41 setFrame:{v36, v47, v44, v46}];
    }
  }
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
        [(SKUIEditorialLockupCellLayout *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIEditorialCellLayout *)self->_editorialCellLayout setBackgroundColor:v4];
  [(UIView *)self->_editorialContainerView setBackgroundColor:v4];
  [(SKUICellLayoutView *)self->_lockupView setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIEditorialLockupCellLayout;
  [(SKUIItemCellLayout *)&v13 setBackgroundColor:v4];
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

  v11 = [(SKUIItemCellLayout *)self->_lockupLayout iconImage];

  return v11;
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

  v11 = [(SKUIItemCellLayout *)self->_lockupLayout iconImageView];

  return v11;
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
    v11 = [(SKUIItemCellLayout *)&v13 itemOffer];
  }

  else
  {
    v11 = [(SKUIItemCellLayout *)self->_lockupLayout itemOffer];
  }

  return v11;
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
    v11 = [(SKUIItemCellLayout *)&v13 itemOfferNoticeString];
  }

  else
  {
    v11 = [(SKUIItemCellLayout *)self->_lockupLayout itemOfferNoticeString];
  }

  return v11;
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
    v11 = [(SKUIItemCellLayout *)self->_lockupLayout itemState];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUIEditorialLockupCellLayout;
    v11 = [(SKUIItemCellLayout *)&v13 itemState];
  }

  return v11;
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

  v11 = [(SKUIItemCellLayout *)self itemOfferButton];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  [v11 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v17 = v16;
  v19 = v18;
  v20 = [(SKUIItemCellLayout *)self itemOfferNoticeLabel];
  v21 = v20;
  if (v20 && ([v20 isHidden] & 1) == 0)
  {
    [v21 frame];
    v23 = v22;
    [v21 sizeThatFits:{v17 + 10.0, 1.79769313e308}];
    v25 = v24;
    *&v24 = (v17 - v24) * 0.5;
    [v21 setFrame:{v13 + floorf(*&v24), v23, v25, v26}];
  }

  [v11 setFrame:{v13, v15, v17, v19}];
}

- (void)setClientContext:(id)a3
{
  v4 = a3;
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

  [(SKUILockupItemCellLayout *)self->_lockupLayout setClientContext:v4];
  v13.receiver = self;
  v13.super_class = SKUIEditorialLockupCellLayout;
  [(SKUICellLayout *)&v13 setClientContext:v4];
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
        [(SKUIEditorialLockupCellLayout *)v5 setIconImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v13 setIconImage:v4];
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
        [(SKUIEditorialLockupCellLayout *)v5 setIconImageHidden:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v13 setIconImageHidden:v3];
}

- (void)setItemOffer:(id)a3
{
  v4 = a3;
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
    [(SKUIItemCellLayout *)&v14 setItemOffer:v4];
  }

  else
  {
    v13 = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
    [v13 setItemOffer:v4];
  }
}

- (void)setItemOfferButtonAppearance:(id)a3
{
  v4 = a3;
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

  v13 = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v13 setItemOfferButtonAppearance:v4];

  v14.receiver = self;
  v14.super_class = SKUIEditorialLockupCellLayout;
  [(SKUIItemCellLayout *)&v14 setItemOfferButtonAppearance:v4];
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
        [(SKUIEditorialLockupCellLayout *)v5 setItemOfferNoticeString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if ([(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v14.receiver = self;
    v14.super_class = SKUIEditorialLockupCellLayout;
    [(SKUIItemCellLayout *)&v14 setItemOfferNoticeString:v4];
  }

  else
  {
    v13 = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
    [v13 setItemOfferNoticeString:v4];
  }
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
        [(SKUIEditorialLockupCellLayout *)v7 setItemState:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  if ([(SKUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v16.receiver = self;
    v16.super_class = SKUIEditorialLockupCellLayout;
    [(SKUIItemCellLayout *)&v16 setItemState:v6 animated:v4];
  }

  else
  {
    v15 = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
    [v15 setItemState:v6 animated:v4];
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
        [(SKUIEditorialLockupCellLayout *)v5 setRestricted:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v13 setRestricted:v3];

  v14.receiver = self;
  v14.super_class = SKUIEditorialLockupCellLayout;
  [(SKUIItemCellLayout *)&v14 setRestricted:v3];
}

- (id)_editorialCellLayout
{
  editorialCellLayout = self->_editorialCellLayout;
  if (!editorialCellLayout)
  {
    v4 = [SKUIEditorialCellLayout alloc];
    v5 = [(SKUIEditorialLockupCellLayout *)self _editorialContainerView];
    v6 = [(SKUIEditorialCellLayout *)v4 initWithParentView:v5];
    v7 = self->_editorialCellLayout;
    self->_editorialCellLayout = v6;

    v8 = self->_editorialCellLayout;
    v9 = [(SKUICellLayout *)self parentCellView];
    v10 = [v9 backgroundColor];
    [(SKUIEditorialCellLayout *)v8 setBackgroundColor:v10];

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
    v7 = [(SKUICellLayout *)self parentCellView];
    v8 = [v7 backgroundColor];
    [(UIView *)v6 setBackgroundColor:v8];

    v9 = [(SKUICellLayout *)self contentView];
    [v9 addSubview:self->_editorialContainerView];

    editorialContainerView = self->_editorialContainerView;
  }

  return editorialContainerView;
}

+ (double)_imagePaddingForArtworkSize:(int64_t)a3
{
  result = 10.0;
  if ((a3 - 3) < 3)
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
  v4 = [(SKUIItemCellLayout *)&v6 itemOffer];
  if (v4)
  {
    v3 = [(SKUIItemCellLayout *)self isRestricted];
  }

  else
  {
    v3 = 1;
  }

  return v3;
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
    v9 = [(SKUICellLayout *)self clientContext];
    [(SKUILockupItemCellLayout *)v8 setClientContext:v9];

    [(SKUILockupItemCellLayout *)self->_lockupLayout setLayoutStyle:self->_layoutStyle];
    [(SKUILockupItemCellLayout *)self->_lockupLayout setVisibleFields:self->_visibleFields];
    [(SKUICellLayoutView *)self->_lockupView setLayout:self->_lockupLayout];
    v10 = self->_lockupView;
    v11 = [(SKUICellLayout *)self parentCellView];
    v12 = [v11 backgroundColor];
    [(SKUICellLayoutView *)v10 setBackgroundColor:v12];

    v13 = [(SKUICellLayout *)self contentView];
    [v13 addSubview:self->_lockupView];

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