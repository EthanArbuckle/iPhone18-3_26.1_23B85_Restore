@interface SXFontIndexCacheKey
- (BOOL)isEqual:(id)a3;
- (SXFontIndexCacheKey)initWithFontAttributes:(id)a3 fontSize:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SXFontIndexCacheKey

- (SXFontIndexCacheKey)initWithFontAttributes:(id)a3 fontSize:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SXFontIndexCacheKey;
  v8 = [(SXFontIndexCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fontAttributes, a3);
    v9->_fontSize = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_fontSize == v5->_fontSize && [(SXFontAttributes *)self->_fontAttributes isEqual:v5->_fontAttributes];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SXFontIndexCacheKey alloc];
  fontAttributes = self->_fontAttributes;
  fontSize = self->_fontSize;

  return [(SXFontIndexCacheKey *)v4 initWithFontAttributes:fontAttributes fontSize:fontSize];
}

@end