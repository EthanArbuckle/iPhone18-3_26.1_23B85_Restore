@interface _UIFontTextStyleCacheKey
- (BOOL)_isEqualToKey:(id)key;
- (void)dealloc;
@end

@implementation _UIFontTextStyleCacheKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIFontTextStyleCacheKey;
  [(_UIFontTextStyleCacheKey *)&v3 dealloc];
}

- (BOOL)_isEqualToKey:(id)key
{
  if (self->super._hash == *(key + 1))
  {
    textStyle = self->_textStyle;
    if (textStyle == *(key + 3) || (v6 = [(NSString *)textStyle isEqualToString:?]))
    {
      contentSizeCategory = self->_contentSizeCategory;
      if (contentSizeCategory == *(key + 4) || (v6 = [(NSString *)contentSizeCategory isEqualToString:?]))
      {
        LOBYTE(v6) = self->_textLegibility == *(key + 16);
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end