@interface _UISegmentedControlFontCacheKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheKey:(id)a3;
- (_UISegmentedControlFontCacheKey)initWithStyleProvider:(id)a3 size:(int)a4 selected:(BOOL)a5 bold:(BOOL)a6 hasMaterial:(BOOL)a7;
@end

@implementation _UISegmentedControlFontCacheKey

- (_UISegmentedControlFontCacheKey)initWithStyleProvider:(id)a3 size:(int)a4 selected:(BOOL)a5 bold:(BOOL)a6 hasMaterial:(BOOL)a7
{
  v12 = a3;
  v18.receiver = self;
  v18.super_class = _UISegmentedControlFontCacheKey;
  v13 = [(_UISegmentedControlFontCacheKey *)&v18 init];
  if (v13)
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    styleProviderName = v13->_styleProviderName;
    v13->_styleProviderName = v15;

    v13->_size = a4;
    v13->_selected = a5;
    v13->_bold = a6;
    v13->_material = a7;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISegmentedControlFontCacheKey *)self isEqualToCacheKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = v4[1];
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