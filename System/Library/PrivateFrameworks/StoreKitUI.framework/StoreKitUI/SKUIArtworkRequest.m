@interface SKUIArtworkRequest
- (BOOL)cachesInMemory;
- (SKUIArtworkRequestDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)newLoadOperation;
- (void)description;
- (void)finishWithResource:(id)a3;
@end

@implementation SKUIArtworkRequest

- (id)description
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIArtworkRequest description];
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SKUIArtworkRequest *)self URL];
  v7 = [v3 stringWithFormat:@"<%@:%p URL = %@>", v5, self, v6];;

  return v7;
}

- (BOOL)cachesInMemory
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIArtworkRequest *)v2 cachesInMemory:v3];
      }
    }
  }

  return 1;
}

- (void)finishWithResource:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIArtworkRequest *)v5 finishWithResource:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained artworkRequest:self didLoadImage:v4];
  }

  else
  {
    v14 = [(SKUIArtworkRequest *)self URL];
    v15 = [v14 scheme];
    v16 = [v15 isEqualToString:@"x-apple-identity-image"];

    if (v16)
    {
      v17 = MEMORY[0x277D755B8];
      v18 = UIImagePNGRepresentation(v4);
      v19 = [v17 imageWithData:v18];
    }

    else
    {
      v19 = v4;
    }

    v20 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v19, @"SKUIArtworkRequestImageKey", 0}];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 postNotificationName:@"SKUIArtworkRequestDidLoadImageNotification" object:self userInfo:v20];
  }
}

- (id)newLoadOperation
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIArtworkRequest *)v3 newLoadOperation:v4];
      }
    }
  }

  return [[SKUILoadArtworkResourceOperation alloc] initWithResourceRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIArtworkRequest *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIArtworkRequest;
  v13 = [(SKUIResourceRequest *)&v20 copyWithZone:a3];
  objc_storeStrong(v13 + 3, self->_dataConsumer);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_storeWeak(v13 + 4, WeakRetained);

  v15 = [(NSString *)self->_imageName copyWithZone:a3];
  v16 = v13[5];
  v13[5] = v15;

  v17 = [(NSURL *)self->_url copyWithZone:a3];
  v18 = v13[6];
  v13[6] = v17;

  return v13;
}

- (SKUIArtworkRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)description
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIArtworkRequest description]";
}

@end