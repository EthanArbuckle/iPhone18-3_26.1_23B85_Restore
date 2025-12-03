@interface SKUIScrollingTabNavigationBar
- (UIOffset)positionOffset;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setPositionOffset:(UIOffset)offset;
@end

@implementation SKUIScrollingTabNavigationBar

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIScrollingTabNavigationBar *)v6 setCenter:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = x + self->_positionOffset.horizontal;
  v15 = y + self->_positionOffset.vertical;
  v16.receiver = self;
  v16.super_class = SKUIScrollingTabNavigationBar;
  [(SKUIScrollingTabNavigationBar *)&v16 setCenter:v14, v15];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIScrollingTabNavigationBar *)v8 setFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = x + self->_positionOffset.horizontal;
  v17 = y + self->_positionOffset.vertical;
  v18.receiver = self;
  v18.super_class = SKUIScrollingTabNavigationBar;
  [(SKUIScrollingTabNavigationBar *)&v18 setFrame:v16, v17, width, height];
}

- (UIOffset)positionOffset
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIScrollingTabNavigationBar *)v3 positionOffset:v4];
      }
    }
  }

  horizontal = self->_positionOffset.horizontal;
  vertical = self->_positionOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)setPositionOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIScrollingTabNavigationBar *)v6 setPositionOffset:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  p_positionOffset = &self->_positionOffset;
  if (self->_positionOffset.horizontal != horizontal || self->_positionOffset.vertical != vertical)
  {
    [(SKUIScrollingTabNavigationBar *)self center];
    v16 = self->_positionOffset.vertical;
    v18 = v17 - p_positionOffset->horizontal;
    p_positionOffset->horizontal = horizontal;
    self->_positionOffset.vertical = vertical;
    v20.receiver = self;
    v20.super_class = SKUIScrollingTabNavigationBar;
    [(SKUIScrollingTabNavigationBar *)&v20 setCenter:horizontal + v18, vertical + v19 - v16];
  }
}

@end