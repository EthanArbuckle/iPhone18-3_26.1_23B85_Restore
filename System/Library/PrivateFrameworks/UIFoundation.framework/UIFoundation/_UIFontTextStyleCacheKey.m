@interface _UIFontTextStyleCacheKey
- (BOOL)_isEqualToKey:(id)a3;
- (void)dealloc;
@end

@implementation _UIFontTextStyleCacheKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIFontTextStyleCacheKey;
  [(_UIFontTextStyleCacheKey *)&v3 dealloc];
}

- (BOOL)_isEqualToKey:(id)a3
{
  if (self->super._hash == *(a3 + 1))
  {
    textStyle = self->_textStyle;
    if (textStyle == *(a3 + 3) || (v6 = [(NSString *)textStyle isEqualToString:?]))
    {
      contentSizeCategory = self->_contentSizeCategory;
      if (contentSizeCategory == *(a3 + 4) || (v6 = [(NSString *)contentSizeCategory isEqualToString:?]))
      {
        LOBYTE(v6) = self->_textLegibility == *(a3 + 16);
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