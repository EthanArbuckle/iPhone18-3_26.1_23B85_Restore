@interface SKUIIndexBarEntry
+ (id)entryWithAttributedString:(id)string;
+ (id)entryWithImage:(id)image;
+ (id)placeholderEntryWithSize:(CGSize)size;
+ (id)systemCombinedEntry;
- (BOOL)isEqual:(id)equal;
- (CGSize)_calculatedContentSize;
- (CGSize)contentSize;
- (CGSize)size;
- (NSAttributedString)entryAttributedString;
- (UIColor)tintColor;
- (UIEdgeInsets)contentEdgeInsets;
- (UIImage)entryImage;
- (unint64_t)hash;
- (void)setTintColor:(id)color;
@end

@implementation SKUIIndexBarEntry

+ (id)entryWithAttributedString:(id)string
{
  stringCopy = string;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntry *)v4 entryWithAttributedString:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [[SKUIAttributedStringIndexBarEntry alloc] initWithAttributedString:stringCopy];

  return v12;
}

+ (id)entryWithImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIIndexBarEntry *)v4 entryWithImage:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [[SKUIImageIndexBarEntry alloc] initWithImage:imageCopy];

  return v12;
}

+ (id)placeholderEntryWithSize:(CGSize)size
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
        [(SKUIIndexBarEntry *)v5 placeholderEntryWithSize:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  height = [[SKUIPlaceholderIndexBarEntry alloc] initWithPlaceholderSize:width, height];

  return height;
}

+ (id)systemCombinedEntry
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIIndexBarEntry *)v2 systemCombinedEntry:v3];
      }
    }
  }

  v10 = objc_alloc_init(SKUISystemCombinedIndexBarEntry);

  return v10;
}

- (unint64_t)hash
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIIndexBarEntry *)v3 hash:v4];
      }
    }
  }

  return (self->_entryType ^ self->_visibilityPriority) + 52314;
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
        [(SKUIIndexBarEntry *)v5 isEqual:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v13 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_visibilityPriority == self->_visibilityPriority && equalCopy->_entryType == self->_entryType;
  }

  return v13;
}

- (CGSize)contentSize
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIIndexBarEntry *)v3 contentSize:v4];
      }
    }
  }

  if (self->_hasValidContentSize)
  {
    width = self->_contentSize.width;
    height = self->_contentSize.height;
  }

  else
  {
    [(SKUIIndexBarEntry *)self _calculatedContentSize];
    self->_contentSize.width = width;
    self->_contentSize.height = height;
    self->_hasValidContentSize = 1;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (NSAttributedString)entryAttributedString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIIndexBarEntry *)v2 entryAttributedString:v3];
      }
    }
  }

  return 0;
}

- (UIImage)entryImage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIIndexBarEntry *)v2 entryImage:v3];
      }
    }
  }

  return 0;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIIndexBarEntry *)v6 setTintColor:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  tintColor = self->_tintColor;
  if (tintColor != colorCopy && ([(UIColor *)tintColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_tintColor, color);
    [(SKUIIndexBarEntry *)self _tintColorDidChange];
  }
}

- (CGSize)size
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIIndexBarEntry *)v3 size:v4];
      }
    }
  }

  [(SKUIIndexBarEntry *)self contentSize];
  v12 = v11 + self->_contentEdgeInsets.left + self->_contentEdgeInsets.right;
  v14 = v13 + self->_contentEdgeInsets.top + self->_contentEdgeInsets.bottom;
  result.height = v14;
  result.width = v12;
  return result;
}

- (UIColor)tintColor
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIIndexBarEntry *)v3 tintColor:v4];
      }
    }
  }

  tintColor = self->_tintColor;
  if (tintColor)
  {
    blackColor = tintColor;
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  return blackColor;
}

- (CGSize)_calculatedContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
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

@end