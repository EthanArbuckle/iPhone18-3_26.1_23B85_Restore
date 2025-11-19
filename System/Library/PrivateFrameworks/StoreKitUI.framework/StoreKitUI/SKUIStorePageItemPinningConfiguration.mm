@interface SKUIStorePageItemPinningConfiguration
- (UIEdgeInsets)pinningContentInset;
- (void)invalidatePinningContentInset;
- (void)invalidatePinningGroup;
- (void)invalidatePinningStyle;
- (void)invalidatePinningTransitionStyle;
- (void)setPinningContentInset:(UIEdgeInsets)a3;
- (void)setPinningGroup:(int64_t)a3;
- (void)setPinningStyle:(int64_t)a3;
- (void)setPinningTransitionStyle:(int64_t)a3;
@end

@implementation SKUIStorePageItemPinningConfiguration

- (void)setPinningContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIStorePageItemPinningConfiguration *)v8 setPinningContentInset:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  self->_pinningContentInset.top = top;
  self->_pinningContentInset.left = left;
  self->_pinningContentInset.bottom = bottom;
  self->_pinningContentInset.right = right;
  self->_hasValidPinningContentInset = 1;
}

- (void)setPinningStyle:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIStorePageItemPinningConfiguration *)v5 setPinningStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  self->_pinningStyle = a3;
  self->_hasValidPinningStyle = 1;
}

- (void)setPinningGroup:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIStorePageItemPinningConfiguration *)v5 setPinningGroup:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  self->_pinningGroup = a3;
  self->_hasValidPinningGroup = 1;
}

- (void)setPinningTransitionStyle:(int64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStorePageItemPinningConfiguration *)v5 setPinningTransitionStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  self->_pinningTransitionStyle = a3;
  self->_hasValidPinningTransitionStyle = 1;
}

- (void)invalidatePinningContentInset
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStorePageItemPinningConfiguration *)v3 invalidatePinningContentInset:v4];
      }
    }
  }

  v11 = *(MEMORY[0x277D768C8] + 16);
  *&self->_pinningContentInset.top = *MEMORY[0x277D768C8];
  *&self->_pinningContentInset.bottom = v11;
  self->_hasValidPinningContentInset = 0;
}

- (void)invalidatePinningStyle
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStorePageItemPinningConfiguration *)v3 invalidatePinningStyle:v4];
      }
    }
  }

  self->_pinningStyle = 0;
  self->_hasValidPinningStyle = 0;
}

- (void)invalidatePinningGroup
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStorePageItemPinningConfiguration *)v3 invalidatePinningGroup:v4];
      }
    }
  }

  self->_pinningGroup = 0;
  self->_hasValidPinningGroup = 0;
}

- (void)invalidatePinningTransitionStyle
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStorePageItemPinningConfiguration *)v3 invalidatePinningTransitionStyle:v4];
      }
    }
  }

  self->_pinningTransitionStyle = 0;
  self->_hasValidPinningTransitionStyle = 0;
}

- (UIEdgeInsets)pinningContentInset
{
  top = self->_pinningContentInset.top;
  left = self->_pinningContentInset.left;
  bottom = self->_pinningContentInset.bottom;
  right = self->_pinningContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end