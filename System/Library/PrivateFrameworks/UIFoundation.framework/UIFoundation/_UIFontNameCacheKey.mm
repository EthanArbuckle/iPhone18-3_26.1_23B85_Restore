@interface _UIFontNameCacheKey
- (BOOL)_isEqualToKey:(id)a3;
- (void)dealloc;
@end

@implementation _UIFontNameCacheKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIFontNameCacheKey;
  [(_UIFontNameCacheKey *)&v3 dealloc];
}

- (BOOL)_isEqualToKey:(id)a3
{
  if (self->super._hash == *(a3 + 1))
  {
    fontName = self->_fontName;
    if (fontName == *(a3 + 3) || (v6 = [(NSString *)fontName isEqualToString:?]))
    {
      if (self->_traits == *(a3 + 4))
      {
        pointSize = self->_pointSize;
        [a3 pointSize];
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