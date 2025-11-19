@interface SKUIIndexBarEntryDescriptor
+ (id)entryDescriptorWithArtwork:(id)a3;
+ (id)entryDescriptorWithAttributedString:(id)a3;
+ (id)entryDescriptorWithImage:(id)a3;
+ (id)placeholderEntryDescriptorWithSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (UIEdgeInsets)contentEdgeInsets;
- (unint64_t)hash;
- (void)setArtwork:(id)a3;
- (void)setAttributedString:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation SKUIIndexBarEntryDescriptor

- (unint64_t)hash
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIIndexBarEntryDescriptor *)v3 hash:v4];
      }
    }
  }

  entryDescriptorType = self->_entryDescriptorType;
  v12 = [(SKUIArtwork *)self->_artwork hash]^ entryDescriptorType;
  v13 = [(NSAttributedString *)self->_attributedString hash];
  return v12 ^ v13 ^ [(UIImage *)self->_image hash]^ (self->_size.width * 1000.0) ^ (self->_size.height * 10000.0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIIndexBarEntryDescriptor *)v5 isEqual:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (v4 == self)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v4->_entryDescriptorType != self->_entryDescriptorType || (v4->_size.width == self->_size.width ? (v13 = v4->_size.height == self->_size.height) : (v13 = 0), !v13 || (image = v4->_image, image != self->_image) && ![(UIImage *)image isEqual:?]|| (attributedString = v4->_attributedString, attributedString != self->_attributedString) && ![(NSAttributedString *)attributedString isEqualToAttributedString:?]))
  {
    v17 = 0;
    goto LABEL_21;
  }

  artwork = v4->_artwork;
  if (artwork == self->_artwork)
  {
LABEL_20:
    v17 = 1;
    goto LABEL_21;
  }

  v17 = [(SKUIArtwork *)artwork isEqual:?];
LABEL_21:

  return v17;
}

+ (id)entryDescriptorWithArtwork:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryDescriptor *)v4 entryDescriptorWithArtwork:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = objc_alloc_init(SKUIIndexBarEntryDescriptor);
  [(SKUIIndexBarEntryDescriptor *)v12 setEntryDescriptorType:2];
  [(SKUIIndexBarEntryDescriptor *)v12 setArtwork:v3];

  return v12;
}

+ (id)entryDescriptorWithAttributedString:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryDescriptor *)v4 entryDescriptorWithAttributedString:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = objc_alloc_init(SKUIIndexBarEntryDescriptor);
  [(SKUIIndexBarEntryDescriptor *)v12 setEntryDescriptorType:1];
  [(SKUIIndexBarEntryDescriptor *)v12 setAttributedString:v3];

  return v12;
}

+ (id)entryDescriptorWithImage:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntryDescriptor *)v4 entryDescriptorWithImage:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = objc_alloc_init(SKUIIndexBarEntryDescriptor);
  [(SKUIIndexBarEntryDescriptor *)v12 setEntryDescriptorType:3];
  [(SKUIIndexBarEntryDescriptor *)v12 setImage:v3];

  return v12;
}

+ (id)placeholderEntryDescriptorWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIIndexBarEntryDescriptor *)v5 placeholderEntryDescriptorWithSize:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_alloc_init(SKUIIndexBarEntryDescriptor);
  [(SKUIIndexBarEntryDescriptor *)v13 setEntryDescriptorType:0];
  [(SKUIIndexBarEntryDescriptor *)v13 setSize:width, height];

  return v13;
}

- (void)setArtwork:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIIndexBarEntryDescriptor *)v6 setArtwork:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  artwork = self->_artwork;
  if (artwork != v5 && ![(SKUIArtwork *)artwork isEqual:v5])
  {
    objc_storeStrong(&self->_artwork, a3);
    [(SKUIArtwork *)self->_artwork size];
    self->_size.width = v15;
    self->_size.height = v16;
  }
}

- (void)setAttributedString:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIIndexBarEntryDescriptor *)v5 setAttributedString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  attributedString = self->_attributedString;
  if (attributedString != v4 && ![(NSAttributedString *)attributedString isEqualToAttributedString:v4])
  {
    v14 = [(NSAttributedString *)v4 copy];
    v15 = self->_attributedString;
    self->_attributedString = v14;

    [(NSAttributedString *)self->_attributedString size];
    self->_size.width = v16;
    self->_size.height = v17;
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIIndexBarEntryDescriptor *)v6 setImage:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  image = self->_image;
  if (image != v5 && ([(UIImage *)image isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_image, a3);
    [(UIImage *)self->_image size];
    self->_size.width = v15;
    self->_size.height = v16;
  }
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end