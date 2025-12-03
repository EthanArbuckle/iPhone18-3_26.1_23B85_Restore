@interface SKUIIndexBarEntryDescriptor
+ (id)entryDescriptorWithArtwork:(id)artwork;
+ (id)entryDescriptorWithAttributedString:(id)string;
+ (id)entryDescriptorWithImage:(id)image;
+ (id)placeholderEntryDescriptorWithSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (UIEdgeInsets)contentEdgeInsets;
- (unint64_t)hash;
- (void)setArtwork:(id)artwork;
- (void)setAttributedString:(id)string;
- (void)setImage:(id)image;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  if (equalCopy == self)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || equalCopy->_entryDescriptorType != self->_entryDescriptorType || (equalCopy->_size.width == self->_size.width ? (v13 = equalCopy->_size.height == self->_size.height) : (v13 = 0), !v13 || (image = equalCopy->_image, image != self->_image) && ![(UIImage *)image isEqual:?]|| (attributedString = equalCopy->_attributedString, attributedString != self->_attributedString) && ![(NSAttributedString *)attributedString isEqualToAttributedString:?]))
  {
    v17 = 0;
    goto LABEL_21;
  }

  artwork = equalCopy->_artwork;
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

+ (id)entryDescriptorWithArtwork:(id)artwork
{
  artworkCopy = artwork;
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
  [(SKUIIndexBarEntryDescriptor *)v12 setArtwork:artworkCopy];

  return v12;
}

+ (id)entryDescriptorWithAttributedString:(id)string
{
  stringCopy = string;
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
  [(SKUIIndexBarEntryDescriptor *)v12 setAttributedString:stringCopy];

  return v12;
}

+ (id)entryDescriptorWithImage:(id)image
{
  imageCopy = image;
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
  [(SKUIIndexBarEntryDescriptor *)v12 setImage:imageCopy];

  return v12;
}

+ (id)placeholderEntryDescriptorWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)setArtwork:(id)artwork
{
  artworkCopy = artwork;
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
  if (artwork != artworkCopy && ![(SKUIArtwork *)artwork isEqual:artworkCopy])
  {
    objc_storeStrong(&self->_artwork, artwork);
    [(SKUIArtwork *)self->_artwork size];
    self->_size.width = v15;
    self->_size.height = v16;
  }
}

- (void)setAttributedString:(id)string
{
  stringCopy = string;
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
  if (attributedString != stringCopy && ![(NSAttributedString *)attributedString isEqualToAttributedString:stringCopy])
  {
    v14 = [(NSAttributedString *)stringCopy copy];
    v15 = self->_attributedString;
    self->_attributedString = v14;

    [(NSAttributedString *)self->_attributedString size];
    self->_size.width = v16;
    self->_size.height = v17;
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
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
  if (image != imageCopy && ([(UIImage *)image isEqual:imageCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
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