@interface SKUITemplatedBadgeImageConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SKUITemplatedBadgeImageConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUITemplatedBadgeImageConsumer objectForData:response:error:];
  }

  v16.receiver = self;
  v16.super_class = SKUITemplatedBadgeImageConsumer;
  v10 = [(SKUIImageDataConsumer *)&v16 objectForData:v8 response:v9 error:a5];
  if (v10)
  {
    v11 = v10;
    v12 = [(SKUITemplatedBadgeImageConsumer *)self templateColor];

    if (v12)
    {
      v13 = [(SKUITemplatedBadgeImageConsumer *)self templateColor];
      v14 = [v11 _flatImageWithColor:v13];

      v11 = v13;
    }

    else
    {
      v14 = [(SKUIImageDataConsumer *)self imageForImage:v11];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)objectForData:response:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITemplatedBadgeImageConsumer objectForData:response:error:]";
}

@end