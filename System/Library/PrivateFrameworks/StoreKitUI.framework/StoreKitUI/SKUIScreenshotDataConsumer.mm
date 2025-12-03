@interface SKUIScreenshotDataConsumer
+ (id)consumer;
+ (id)consumerWithScreenshotSize:(CGSize)size;
- (id)imageForColor:(id)color size:(CGSize)size;
- (id)imageForImage:(id)image;
@end

@implementation SKUIScreenshotDataConsumer

+ (id)consumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIScreenshotDataConsumer *)v3 consumer:v4];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___SKUIScreenshotDataConsumer;
  v11 = objc_msgSendSuper2(&v13, sel_consumer);

  return v11;
}

+ (id)consumerWithScreenshotSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIScreenshotDataConsumer *)v6 consumerWithScreenshotSize:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  consumer = [self consumer];
  [consumer setImageSize:{width, height}];
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [consumer setBorderColor:v15];

  [consumer setBorderWidths:{1.0, 1.0, 1.0, 1.0}];

  return consumer;
}

- (id)imageForColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIScreenshotDataConsumer *)v8 imageForColor:v9 size:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  forcesPortrait = self->_forcesPortrait;
  v17 = width > height;
  if (forcesPortrait && v17)
  {
    v18 = height;
  }

  else
  {
    v18 = width;
  }

  if (forcesPortrait && v17)
  {
    v19 = width;
  }

  else
  {
    v19 = height;
  }

  v22.receiver = self;
  v22.super_class = SKUIScreenshotDataConsumer;
  v20 = [(SKUIStyledImageDataConsumer *)&v22 imageForColor:colorCopy size:v18, v19];

  return v20;
}

- (id)imageForImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIScreenshotDataConsumer *)v5 imageForImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_forcesPortrait)
  {
    [imageCopy size];
    v14 = v13;
    [imageCopy size];
    if (v14 > v15)
    {
      v16 = objc_alloc(MEMORY[0x277D755B8]);
      cGImage = [imageCopy CGImage];
      [imageCopy scale];
      v18 = [v16 initWithCGImage:cGImage scale:2 orientation:?];

      imageCopy = v18;
    }
  }

  v21.receiver = self;
  v21.super_class = SKUIScreenshotDataConsumer;
  v19 = [(SKUIStyledImageDataConsumer *)&v21 imageForImage:imageCopy];

  return v19;
}

@end