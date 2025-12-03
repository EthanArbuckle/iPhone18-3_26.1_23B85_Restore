@interface _SKUIFontDescriptorCacheKey
- (BOOL)isEqual:(id)equal;
- (_SKUIFontDescriptorCacheKey)initWithTextStyle:(__CFString *)style sizeCategory:(id)category;
@end

@implementation _SKUIFontDescriptorCacheKey

- (_SKUIFontDescriptorCacheKey)initWithTextStyle:(__CFString *)style sizeCategory:(id)category
{
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = _SKUIFontDescriptorCacheKey;
  v8 = [(_SKUIFontDescriptorCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_textStyle = style;
    objc_storeStrong(&v8->_sizeCategory, category);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v8 = 1;
    }

    else if (CFEqual([(_SKUIFontDescriptorCacheKey *)self textStyle], [(_SKUIFontDescriptorCacheKey *)v5 textStyle]))
    {
      sizeCategory = [(_SKUIFontDescriptorCacheKey *)self sizeCategory];
      sizeCategory2 = [(_SKUIFontDescriptorCacheKey *)v5 sizeCategory];
      v8 = [sizeCategory isEqual:sizeCategory2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end