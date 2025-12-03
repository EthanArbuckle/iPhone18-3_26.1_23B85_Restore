@interface _UIImageContentRenditionCacheKey
+ (_UIImageContentRenditionCacheKey)keyWithSize:(uint64_t)size unresolvedTintColor:(void *)color traitCollection:(void *)collection bold:(char)bold drawMode:(unsigned int)mode;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _UIImageContentRenditionCacheKey

+ (_UIImageContentRenditionCacheKey)keyWithSize:(uint64_t)size unresolvedTintColor:(void *)color traitCollection:(void *)collection bold:(char)bold drawMode:(unsigned int)mode
{
  collectionCopy = collection;
  colorCopy = color;
  objc_opt_self();
  v14 = objc_alloc_init(_UIImageContentRenditionCacheKey);
  v15 = [colorCopy resolvedColorWithTraitCollection:collectionCopy];

  resolvedTintColor = v14->resolvedTintColor;
  v14->resolvedTintColor = v15;

  _styleEffectAppearanceName = [(UITraitCollection *)collectionCopy _styleEffectAppearanceName];

  appearanceName = v14->appearanceName;
  v14->appearanceName = _styleEffectAppearanceName;

  v14->_size.width = self;
  v14->_size.height = a2;
  v14->_drawMode = mode;
  *&v14->_flags = *&v14->_flags & 0xFE | bold;

  return v14;
}

- (unint64_t)hash
{
  v3 = self->_size.height ^ self->_size.width;
  v4 = [(NSString *)self->appearanceName hash];
  return v3 ^ v4 ^ [(UIColor *)self->resolvedTintColor hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  resolvedTintColor = self->resolvedTintColor;
  v6 = equalCopy[1];
  v7 = resolvedTintColor;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_15;
    }

    v10 = [(UIColor *)v6 isEqual:v7];

    if (!v10)
    {
      goto LABEL_16;
    }
  }

  appearanceName = self->appearanceName;
  v6 = equalCopy[2];
  v12 = appearanceName;
  v8 = v12;
  if (v6 != v12)
  {
    if (v6 && v12)
    {
      v13 = [(UIColor *)v6 isEqual:v12];

      if (v13)
      {
        goto LABEL_19;
      }

LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_19:
  v14 = 0;
  if (*(equalCopy + 3) == self->_size.width && *(equalCopy + 4) == self->_size.height)
  {
    if (*(equalCopy + 10) == self->_drawMode)
    {
      v14 = ((*&self->_flags ^ *(equalCopy + 44)) & 1) == 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:

  return v14;
}

@end