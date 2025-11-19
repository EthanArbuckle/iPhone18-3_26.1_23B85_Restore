@interface SKUIImageDataConsumer
- (BOOL)isImagePlaceholderAvailable;
- (id)imageForColor:(id)a3;
- (id)imageForColor:(id)a3 size:(CGSize)a4;
- (id)imageForImage:(id)a3;
- (id)imagePlaceholderForColor:(id)a3;
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SKUIImageDataConsumer

- (id)imageForColor:(id)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIImageDataConsumer *)v3 imageForColor:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (id)imageForColor:(id)a3 size:(CGSize)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIImageDataConsumer *)v4 imageForColor:v5 size:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return 0;
}

- (id)imageForImage:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIImageDataConsumer imageForImage:];
  }

  return v3;
}

- (id)imagePlaceholderForColor:(id)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIImageDataConsumer *)v3 imagePlaceholderForColor:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (BOOL)isImagePlaceholderAvailable
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIImageDataConsumer *)v2 isImagePlaceholderAvailable:v3];
      }
    }
  }

  return 0;
}

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v6 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIImageDataConsumer objectForData:response:error:];
  }

  v7 = objc_alloc(MEMORY[0x277D755B8]);
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v9 = [v7 initWithData:v6 scale:?];

  if (v9)
  {
    v10 = [(SKUIImageDataConsumer *)self imageForImage:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)imageForImage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIImageDataConsumer imageForImage:]";
}

- (void)objectForData:response:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIImageDataConsumer objectForData:response:error:]";
}

@end