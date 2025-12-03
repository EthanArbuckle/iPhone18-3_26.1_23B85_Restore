@interface NSIdentityGlyphInfo
+ (id)glyphInfoWithGlyph:(unsigned int)glyph forFont:(id)font baseString:(id)string;
+ (void)initialize;
- (NSIdentityGlyphInfo)initWithCoder:(id)coder;
- (NSIdentityGlyphInfo)initWithGlyph:(unsigned int)glyph forFont:(id)font baseString:(id)string;
- (unsigned)_glyphForFont:(id)font baseString:(id)string;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSIdentityGlyphInfo

+ (id)glyphInfoWithGlyph:(unsigned int)glyph forFont:(id)font baseString:(id)string
{
  v5 = [objc_alloc(objc_opt_class()) initWithGlyph:*&glyph forFont:font baseString:string];

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

- (NSIdentityGlyphInfo)initWithGlyph:(unsigned int)glyph forFont:(id)font baseString:(id)string
{
  v9.receiver = self;
  v9.super_class = NSIdentityGlyphInfo;
  v7 = [(NSGlyphInfo *)&v9 initWithBaseString:string];
  v7->_font = font;
  v7->_glyph = glyph;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSIdentityGlyphInfo;
  [(NSGlyphInfo *)&v3 dealloc];
}

- (unsigned)_glyphForFont:(id)font baseString:(id)string
{
  result = [string isEqualToString:self->super._baseString];
  if (result)
  {
    if ([font isEqual:self->_font])
    {
      return self->_glyph;
    }

    [(UIFont *)self->_font pointSize];
    result = [objc_msgSend(font "fontWithSize:{"isEqual:", self->_font}")];
    if (result)
    {
      return self->_glyph;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NSIdentityGlyphInfo;
  [(NSGlyphInfo *)&v8 encodeWithCoder:?];
  allowsKeyedCoding = [coder allowsKeyedCoding];
  font = self->_font;
  if (allowsKeyedCoding)
  {
    if (font)
    {
      [coder encodeObject:font forKey:@"NSFont"];
    }

    glyph = self->_glyph;
    if (glyph)
    {
      [coder encodeInt32:glyph forKey:@"NSGlyph"];
    }
  }

  else
  {
    [coder encodeObject:font];
    [coder encodeValueOfObjCType:"I" at:&self->_glyph];
  }
}

- (NSIdentityGlyphInfo)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    v12.receiver = self;
    v12.super_class = NSIdentityGlyphInfo;
    return [(NSGlyphInfo *)&v12 initWithCoder:coder];
  }

  v6 = [coder versionForClassName:@"NSIdentityGlyphInfo"];
  v7 = objc_opt_class();
  if (v7 != objc_opt_class() || v6 != 0)
  {
    v11.receiver = self;
    v11.super_class = NSIdentityGlyphInfo;
    v5 = [(NSGlyphInfo *)&v11 initWithCoder:coder];
    v5->_font = [coder decodeObject];
    [coder decodeValueOfObjCType:"I" at:&v5->_glyph size:4];
    return v5;
  }

  v10 = [NSGlyphInfo glyphInfoWithGlyph:0 forFont:[(UIFont *)NSFont userFontOfSize:0.0] baseString:&stru_1F01AD578];

  return v10;
}

@end