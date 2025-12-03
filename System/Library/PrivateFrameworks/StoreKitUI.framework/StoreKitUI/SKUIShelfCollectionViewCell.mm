@interface SKUIShelfCollectionViewCell
+ (double)maximumPerspectiveHeightForSize:(CGSize)size;
- (UIEdgeInsets)contentInset;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setCollectionView:(id)view;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setPerspectiveTargetView:(id)view;
- (void)setRendersWithParallax:(BOOL)parallax;
- (void)setRendersWithPerspective:(BOOL)perspective;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setVanishingPoint:(CGPoint)point;
- (void)updateForChangedDistanceFromVanishingPoint;
@end

@implementation SKUIShelfCollectionViewCell

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIShelfCollectionViewCell *)v6 setCollectionView:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  collectionView = self->_collectionView;
  if (collectionView != viewCopy)
  {
    if ([(UICollectionView *)collectionView isDescendantOfView:self])
    {
      [(UICollectionView *)self->_collectionView removeFromSuperview];
    }

    objc_storeStrong(&self->_collectionView, view);
    [(UICollectionView *)self->_collectionView setSemanticContentAttribute:[(SKUIShelfCollectionViewCell *)self semanticContentAttribute]];
    [(SKUIShelfCollectionViewCell *)self setNeedsLayout];
    collectionView = self->_collectionView;
  }

  if (collectionView && ([(UICollectionView *)collectionView isDescendantOfView:self]& 1) == 0)
  {
    contentView = [(SKUIShelfCollectionViewCell *)self contentView];
    v16 = self->_collectionView;
    backgroundColor = [(SKUIShelfCollectionViewCell *)self backgroundColor];
    [(UICollectionView *)v16 setBackgroundColor:backgroundColor];

    [contentView addSubview:self->_collectionView];
    [(SKUIShelfCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShelfCollectionViewCell *)v5 setSemanticContentAttribute:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUIShelfCollectionViewCell;
  [(SKUIShelfCollectionViewCell *)&v13 setSemanticContentAttribute:attribute];
  [(UICollectionView *)self->_collectionView setSemanticContentAttribute:attribute];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  left = inset.left;
  bottom = inset.bottom;
  top = inset.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIShelfCollectionViewCell *)v4 setContentInset:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12.f64[0] = top;
  v12.f64[1] = left;
  v13.f64[0] = bottom;
  v13.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v12), vceqq_f64(*&self->_contentInset.bottom, v13)))) & 1) == 0)
  {
    self->_contentInset.top = top;
    self->_contentInset.left = left;
    self->_contentInset.bottom = bottom;
    self->_contentInset.right = right;
    [(SKUIShelfCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setRendersWithPerspective:(BOOL)perspective
{
  perspectiveCopy = perspective;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShelfCollectionViewCell *)v5 setRendersWithPerspective:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_rendersWithPerspective != perspectiveCopy)
  {
    self->_rendersWithPerspective = perspectiveCopy;
    [(SKUIShelfCollectionViewCell *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)setRendersWithParallax:(BOOL)parallax
{
  parallaxCopy = parallax;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShelfCollectionViewCell *)v5 setRendersWithParallax:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_rendersWithParallax != parallaxCopy)
  {
    self->_rendersWithParallax = parallaxCopy;
    [(SKUIShelfCollectionViewCell *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShelfCollectionViewCell *)v5 applyLayoutAttributes:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  backgroundColor = [attributesCopy backgroundColor];
  [(SKUIShelfCollectionViewCell *)self setBackgroundColor:backgroundColor];

  v14.receiver = self;
  v14.super_class = SKUIShelfCollectionViewCell;
  [(SKUICollectionViewCell *)&v14 applyLayoutAttributes:attributesCopy];
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
        [(SKUIShelfCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v31.receiver = self;
  v31.super_class = SKUIShelfCollectionViewCell;
  [(SKUICollectionViewCell *)&v31 layoutSubviews];
  contentView = [(SKUIShelfCollectionViewCell *)self contentView];
  [contentView bounds];
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v15 = v14 + left;
  v17 = v16 + top;
  v19 = v18 - (left + self->_contentInset.right);
  v21 = v20 - (top + self->_contentInset.bottom);

  [(UICollectionView *)self->_collectionView frame];
  v33.origin.x = v22;
  v33.origin.y = v23;
  v25 = v24;
  v33.size.height = v26;
  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.width = v19;
  v32.size.height = v21;
  v33.size.width = v25;
  if (!CGRectEqualToRect(v32, v33))
  {
    [(UICollectionView *)self->_collectionView contentOffset];
    v28 = v27;
    v30 = v29;
    [(UICollectionView *)self->_collectionView setFrame:v15, v17, v19, v21];
    if (v19 == v25)
    {
      [(UICollectionView *)self->_collectionView setContentOffset:v28, v30];
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
        [(SKUIShelfCollectionViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UICollectionView *)self->_collectionView setBackgroundColor:colorCopy];
  v13.receiver = self;
  v13.super_class = SKUIShelfCollectionViewCell;
  [(SKUICollectionViewCell *)&v13 setBackgroundColor:colorCopy];
}

+ (double)maximumPerspectiveHeightForSize:(CGSize)size
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIShelfCollectionViewCell *)v3 maximumPerspectiveHeightForSize:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0.0;
}

- (void)setPerspectiveTargetView:(id)view
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v3)
    {
      [(SKUIShelfCollectionViewCell *)v3 setPerspectiveTargetView:v4, v5, v6, v7, v8, v9, v10];
    }
  }
}

- (void)setVanishingPoint:(CGPoint)point
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v3)
    {
      [(SKUIShelfCollectionViewCell *)v3 setVanishingPoint:v4, v5, v6, v7, v8, v9, v10];
    }
  }
}

- (void)updateForChangedDistanceFromVanishingPoint
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIShelfCollectionViewCell *)v3 updateForChangedDistanceFromVanishingPoint:v4];
      }
    }
  }

  if (self->_rendersWithParallax)
  {
    SKUICollectionViewUpdatePerspectiveCells(self->_collectionView, 0);
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end