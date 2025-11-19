@interface NSIdentityGlyphInfo
+ (id)glyphInfoWithGlyph:(unsigned int)a3 forFont:(id)a4 baseString:(id)a5;
+ (void)initialize;
- (NSIdentityGlyphInfo)initWithCoder:(id)a3;
- (NSIdentityGlyphInfo)initWithGlyph:(unsigned int)a3 forFont:(id)a4 baseString:(id)a5;
- (unsigned)_glyphForFont:(id)a3 baseString:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSIdentityGlyphInfo

+ (id)glyphInfoWithGlyph:(unsigned int)a3 forFont:(id)a4 baseString:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithGlyph:*&a3 forFont:a4 baseString:a5];

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (NSIdentityGlyphInfo)initWithGlyph:(unsigned int)a3 forFont:(id)a4 baseString:(id)a5
{
  v9.receiver = self;
  v9.super_class = NSIdentityGlyphInfo;
  v7 = [(NSGlyphInfo *)&v9 initWithBaseString:a5];
  v7->_font = a4;
  v7->_glyph = a3;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSIdentityGlyphInfo;
  [(NSGlyphInfo *)&v3 dealloc];
}

- (unsigned)_glyphForFont:(id)a3 baseString:(id)a4
{
  result = [a4 isEqualToString:self->super._baseString];
  if (result)
  {
    if ([a3 isEqual:self->_font])
    {
      return self->_glyph;
    }

    [(UIFont *)self->_font pointSize];
    result = [objc_msgSend(a3 "fontWithSize:{"isEqual:", self->_font}")];
    if (result)
    {
      return self->_glyph;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NSIdentityGlyphInfo;
  [(NSGlyphInfo *)&v8 encodeWithCoder:?];
  v5 = [a3 allowsKeyedCoding];
  font = self->_font;
  if (v5)
  {
    if (font)
    {
      [a3 encodeObject:font forKey:@"NSFont"];
    }

    glyph = self->_glyph;
    if (glyph)
    {
      [a3 encodeInt32:glyph forKey:@"NSGlyph"];
    }
  }

  else
  {
    [a3 encodeObject:font];
    [a3 encodeValueOfObjCType:"I" at:&self->_glyph];
  }
}

- (NSIdentityGlyphInfo)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v12.receiver = self;
    v12.super_class = NSIdentityGlyphInfo;
    return [(NSGlyphInfo *)&v12 initWithCoder:a3];
  }

  v6 = [a3 versionForClassName:@"NSIdentityGlyphInfo"];
  v7 = objc_opt_class();
  if (v7 != objc_opt_class() || v6 != 0)
  {
    v11.receiver = self;
    v11.super_class = NSIdentityGlyphInfo;
    v5 = [(NSGlyphInfo *)&v11 initWithCoder:a3];
    v5->_font = [a3 decodeObject];
    [a3 decodeValueOfObjCType:"I" at:&v5->_glyph size:4];
    return v5;
  }

  v10 = [NSGlyphInfo glyphInfoWithGlyph:0 forFont:[(UIFont *)NSFont userFontOfSize:0.0] baseString:&stru_1F01AD578];

  return v10;
}

@end