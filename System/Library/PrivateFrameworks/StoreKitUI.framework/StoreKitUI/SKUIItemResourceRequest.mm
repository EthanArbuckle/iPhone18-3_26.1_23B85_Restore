@interface SKUIItemResourceRequest
- (SKUIItemRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newLoadOperation;
- (void)finishWithResource:(id)resource;
@end

@implementation SKUIItemResourceRequest

- (void)finishWithResource:(id)resource
{
  resourceCopy = resource;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemResourceRequest *)v5 finishWithResource:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    loadedItems = [resourceCopy loadedItems];
    invalidItemIdentifiers = [resourceCopy invalidItemIdentifiers];
    [WeakRetained itemRequest:self didFinishWithItems:loadedItems invalidItemIdentifiers:invalidItemIdentifiers];
  }

  if (objc_opt_respondsToSelector())
  {
    loadedItems2 = [resourceCopy loadedItems];
    [WeakRetained itemRequest:self didFinishWithItems:loadedItems2];
  }
}

- (id)newLoadOperation
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIItemResourceRequest *)v3 newLoadOperation:v4];
      }
    }
  }

  return [[SKUILoadItemResourceOperation alloc] initWithResourceRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIItemResourceRequest *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUIItemResourceRequest;
  v13 = [(SKUIResourceRequest *)&v15 copyWithZone:zone];
  [v13 setImageProfile:self->_imageProfile];
  [v13 setItemIdentifiers:self->_itemIdentifiers];
  [v13 setKeyProfile:self->_keyProfile];
  return v13;
}

- (SKUIItemRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end