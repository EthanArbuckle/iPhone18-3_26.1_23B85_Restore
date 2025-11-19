@interface SKUIGiftThemeCollectionView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_visibleBounds;
- (UIEdgeInsets)visibleBoundsInsets;
- (void)_visibleBounds;
@end

@implementation SKUIGiftThemeCollectionView

- (CGRect)_visibleBounds
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftThemeCollectionView _visibleBounds];
  }

  v13.receiver = self;
  v13.super_class = SKUIGiftThemeCollectionView;
  [(SKUIGiftThemeCollectionView *)&v13 _visibleBounds];
  top = self->_visibleBoundsInsets.top;
  left = self->_visibleBoundsInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_visibleBoundsInsets.right);
  v12 = v11 - (top + self->_visibleBoundsInsets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftThemeCollectionView pointInside:withEvent:];
  }

  v7 = [(SKUIGiftThemeCollectionView *)self superview];
  [(SKUIGiftThemeCollectionView *)self convertPoint:v7 toView:x, y];
  v9 = v8;
  v11 = v10;

  v12 = [(SKUIGiftThemeCollectionView *)self superview];
  [v12 bounds];
  v14.x = v9;
  v14.y = v11;
  LOBYTE(v7) = CGRectContainsPoint(v15, v14);

  return v7;
}

- (UIEdgeInsets)visibleBoundsInsets
{
  top = self->_visibleBoundsInsets.top;
  left = self->_visibleBoundsInsets.left;
  bottom = self->_visibleBoundsInsets.bottom;
  right = self->_visibleBoundsInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_visibleBounds
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftThemeCollectionView _visibleBounds]";
}

- (void)pointInside:withEvent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftThemeCollectionView pointInside:withEvent:]";
}

@end