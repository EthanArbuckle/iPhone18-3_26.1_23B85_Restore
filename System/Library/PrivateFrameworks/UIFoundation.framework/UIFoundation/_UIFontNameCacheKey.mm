@interface _UIFontNameCacheKey
- (BOOL)_isEqualToKey:(id)key;
- (void)dealloc;
@end

@implementation _UIFontNameCacheKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIFontNameCacheKey;
  [(_UIFontNameCacheKey *)&v3 dealloc];
}

- (BOOL)_isEqualToKey:(id)key
{
  if (self->super._hash == *(key + 1))
  {
    fontName = self->_fontName;
    if (fontName == *(key + 3) || (v6 = [(NSString *)fontName isEqualToString:?]))
    {
      if (self->_traits == *(key + 4))
      {
        pointSize = self->_pointSize;
        [key pointSize];
        LOBYTE(v6) = vabdd_f64(pointSize, v8) < 0.00000011920929;
      }

      else
      {
        LOBYTE(v6) = 0;
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