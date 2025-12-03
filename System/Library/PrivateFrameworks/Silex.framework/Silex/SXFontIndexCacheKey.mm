@interface SXFontIndexCacheKey
- (BOOL)isEqual:(id)equal;
- (SXFontIndexCacheKey)initWithFontAttributes:(id)attributes fontSize:(int64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SXFontIndexCacheKey

- (SXFontIndexCacheKey)initWithFontAttributes:(id)attributes fontSize:(int64_t)size
{
  attributesCopy = attributes;
  v11.receiver = self;
  v11.super_class = SXFontIndexCacheKey;
  v8 = [(SXFontIndexCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fontAttributes, attributes);
    v9->_fontSize = size;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_fontSize == v5->_fontSize && [(SXFontAttributes *)self->_fontAttributes isEqual:v5->_fontAttributes];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SXFontIndexCacheKey alloc];
  fontAttributes = self->_fontAttributes;
  fontSize = self->_fontSize;

  return [(SXFontIndexCacheKey *)v4 initWithFontAttributes:fontAttributes fontSize:fontSize];
}

@end