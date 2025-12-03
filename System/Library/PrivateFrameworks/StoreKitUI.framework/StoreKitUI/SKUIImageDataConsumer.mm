@interface SKUIImageDataConsumer
- (BOOL)isImagePlaceholderAvailable;
- (id)imageForColor:(id)color;
- (id)imageForColor:(id)color size:(CGSize)size;
- (id)imageForImage:(id)image;
- (id)imagePlaceholderForColor:(id)color;
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SKUIImageDataConsumer

- (id)imageForColor:(id)color
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

- (id)imageForColor:(id)color size:(CGSize)size
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

- (id)imageForImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIImageDataConsumer imageForImage:];
  }

  return imageCopy;
}

- (id)imagePlaceholderForColor:(id)color
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

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIImageDataConsumer objectForData:response:error:];
  }

  v7 = objc_alloc(MEMORY[0x277D755B8]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = [v7 initWithData:dataCopy scale:?];

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