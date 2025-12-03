@interface _UISegmentedControlFontCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UISegmentedControlFontCacheKey)initWithStyleProvider:(id)provider size:(int)size selected:(BOOL)selected bold:(BOOL)bold hasMaterial:(BOOL)material;
@end

@implementation _UISegmentedControlFontCacheKey

- (_UISegmentedControlFontCacheKey)initWithStyleProvider:(id)provider size:(int)size selected:(BOOL)selected bold:(BOOL)bold hasMaterial:(BOOL)material
{
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = _UISegmentedControlFontCacheKey;
  v13 = [(_UISegmentedControlFontCacheKey *)&v18 init];
  if (v13)
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    styleProviderName = v13->_styleProviderName;
    v13->_styleProviderName = v15;

    v13->_size = size;
    v13->_selected = selected;
    v13->_bold = bold;
    v13->_material = material;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISegmentedControlFontCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (!keyCopy)
  {
    goto LABEL_13;
  }

  v6 = keyCopy[1];
  v7 = self->_styleProviderName;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

    v10 = [(NSString *)v7 isEqual:v8];

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (self->_size != v5[4] || self->_selected != *(v5 + 20) || self->_bold != *(v5 + 21))
  {
    goto LABEL_13;
  }

  v11 = self->_material == *(v5 + 22);
LABEL_14:

  return v11;
}

@end