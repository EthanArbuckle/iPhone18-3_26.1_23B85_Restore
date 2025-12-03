@interface SKUIBadgeTextAttachment
- (BOOL)isEqual:(id)equal;
- (CGSize)badgeSize;
- (SKUIBadgeTextAttachment)initWithViewElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_ensureImageIsLoaded;
- (void)_loadImageWithResourceName:(id)name fallbackImage:(id)image styleColor:(id)color;
@end

@implementation SKUIBadgeTextAttachment

- (SKUIBadgeTextAttachment)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIBadgeTextAttachment initWithViewElement:];
  }

  v24.receiver = self;
  v24.super_class = SKUIBadgeTextAttachment;
  v5 = [(SKUIBadgeTextAttachment *)&v24 init];
  if (v5)
  {
    if ([elementCopy badgeType])
    {
      fallbackImage = v5;
      v5 = 0;
    }

    else
    {
      fallbackImage = [elementCopy fallbackImage];
      resourceName = [elementCopy resourceName];
      style = [elementCopy style];
      ikColor = [style ikColor];
      color = [ikColor color];

      v11 = [elementCopy URL];
      imageURL = v5->_imageURL;
      v5->_imageURL = v11;

      v13 = *MEMORY[0x277CBF3A0];
      v14 = *(MEMORY[0x277CBF3A0] + 8);
      [elementCopy size];
      [(SKUIBadgeTextAttachment *)v5 setBounds:v13, v14, v15, v16];
      if (resourceName && ![MEMORY[0x277CCACC8] isMainThread])
      {
        v17 = dispatch_semaphore_create(0);
        [(SKUIBadgeTextAttachment *)v5 setImageLoadingSemaphore:v17];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __47__SKUIBadgeTextAttachment_initWithViewElement___block_invoke;
        v19[3] = &unk_2781F96E8;
        v20 = v5;
        v21 = resourceName;
        v22 = fallbackImage;
        v23 = color;
        dispatch_async(MEMORY[0x277D85CD0], v19);
      }

      else
      {
        [(SKUIBadgeTextAttachment *)v5 _loadImageWithResourceName:resourceName fallbackImage:fallbackImage styleColor:color];
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  [(SKUIBadgeTextAttachment *)self _ensureImageIsLoaded];
  v3 = [(NSURL *)self->_imageURL hash];
  [(SKUIBadgeTextAttachment *)self bounds];
  v8 = ((((v3 + v4 * 10.0) + v5 * 100.0) + v6 * 1000.0) + v7 * 10000.0);
  image = [(SKUIBadgeTextAttachment *)self image];
  v10 = v8 + 100000 * [image hash];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      imageURL = self->_imageURL;
      if ((imageURL == v5->_imageURL || [(NSURL *)imageURL isEqual:?]) && ([(SKUIBadgeTextAttachment *)self bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, [(SKUIBadgeTextAttachment *)v5 bounds], v24.origin.x = v15, v24.origin.y = v16, v24.size.width = v17, v24.size.height = v18, v23.origin.x = v8, v23.origin.y = v10, v23.size.width = v12, v23.size.height = v14, CGRectEqualToRect(v23, v24)))
      {
        [(SKUIBadgeTextAttachment *)self _ensureImageIsLoaded];
        [(SKUIBadgeTextAttachment *)v5 _ensureImageIsLoaded];
        image = [(SKUIBadgeTextAttachment *)self image];
        image2 = [(SKUIBadgeTextAttachment *)v5 image];
        if (image == image2)
        {
          v21 = 1;
        }

        else
        {
          v21 = [image isEqual:image2];
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  [(SKUIBadgeTextAttachment *)self _ensureImageIsLoaded];
  v4 = objc_alloc_init(SKUIBadgeTextAttachment);
  objc_storeStrong(&v4->_imageURL, self->_imageURL);
  [(SKUIBadgeTextAttachment *)self bounds];
  [(SKUIBadgeTextAttachment *)v4 setBounds:?];
  image = [(SKUIBadgeTextAttachment *)self image];
  [(SKUIBadgeTextAttachment *)v4 setImage:image];

  return v4;
}

- (CGSize)badgeSize
{
  [(SKUIBadgeTextAttachment *)self bounds];
  v5 = v4;
  v6 = v3;
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    image = [(SKUIBadgeTextAttachment *)self image];
    v9 = image;
    if (image)
    {
      [image size];
      v5 = v10;
      v6 = v11;
    }
  }

  v12 = v5;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_ensureImageIsLoaded
{
  imageLoadingSemaphore = [(SKUIBadgeTextAttachment *)self imageLoadingSemaphore];
  if (imageLoadingSemaphore)
  {
    v3 = imageLoadingSemaphore;
    dispatch_semaphore_wait(imageLoadingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    imageLoadingSemaphore = v3;
  }
}

- (void)_loadImageWithResourceName:(id)name fallbackImage:(id)image styleColor:(id)color
{
  nameCopy = name;
  imageCopy = image;
  colorCopy = color;
  if (!nameCopy)
  {
    goto LABEL_16;
  }

  v10 = SKUIImageWithResourceName(nameCopy);
  v11 = v10;
  if (colorCopy && [v10 renderingMode] == 2)
  {
    v12 = [v11 _flatImageWithColor:colorCopy];

    v11 = v12;
  }

  if (!v11)
  {
LABEL_16:
    if (self->_imageURL)
    {
      v11 = 0;
    }

    else
    {
      v11 = imageCopy;
    }
  }

  [(SKUIBadgeTextAttachment *)self setImage:v11];
  imageLoadingSemaphore = [(SKUIBadgeTextAttachment *)self imageLoadingSemaphore];
  v14 = imageLoadingSemaphore;
  if (imageLoadingSemaphore)
  {
    dispatch_semaphore_signal(imageLoadingSemaphore);
    [(SKUIBadgeTextAttachment *)self setImageLoadingSemaphore:0];
  }
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBadgeTextAttachment initWithViewElement:]";
}

@end