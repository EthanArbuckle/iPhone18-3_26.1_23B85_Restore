@interface SKUISwooshViewController
- (CGRect)frameForItemAtIndex:(int64_t)index;
- (SKUISwooshViewControllerDelegate)delegate;
- (id)indexPathsForVisibleItems;
- (id)popImageViewForItemAtIndex:(int64_t)index;
- (void)deselectAllItems;
- (void)setImage:(id)image forItemAtIndex:(int64_t)index;
- (void)unhideImages;
@end

@implementation SKUISwooshViewController

- (void)deselectAllItems
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v2)
    {
      [(SKUISwooshViewController *)v2 deselectAllItems:v3];
    }
  }
}

- (CGRect)frameForItemAtIndex:(int64_t)index
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISwooshViewController *)v3 frameForItemAtIndex:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)indexPathsForVisibleItems
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUISwooshViewController *)v2 indexPathsForVisibleItems:v3];
      }
    }
  }

  return 0;
}

- (id)popImageViewForItemAtIndex:(int64_t)index
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISwooshViewController *)v3 popImageViewForItemAtIndex:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)setImage:(id)image forItemAtIndex:(int64_t)index
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(SKUISwooshViewController *)v4 setImage:v5 forItemAtIndex:v6, v7, v8, v9, v10, v11];
    }
  }
}

- (void)unhideImages
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v2)
    {
      [(SKUISwooshViewController *)v2 unhideImages:v3];
    }
  }
}

- (SKUISwooshViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end