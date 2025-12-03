@interface NSGlyphNameGlyphInfo
+ (void)initialize;
- (NSGlyphNameGlyphInfo)initWithCoder:(id)coder;
- (NSGlyphNameGlyphInfo)initWithGlyphName:(id)name glyph:(unsigned int)glyph forFont:(id)font baseString:(id)string;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSGlyphNameGlyphInfo

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

- (NSGlyphNameGlyphInfo)initWithGlyphName:(id)name glyph:(unsigned int)glyph forFont:(id)font baseString:(id)string
{
  v9.receiver = self;
  v9.super_class = NSGlyphNameGlyphInfo;
  v7 = [(NSIdentityGlyphInfo *)&v9 initWithGlyph:*&glyph forFont:font baseString:string];
  v7->_name = name;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSGlyphNameGlyphInfo;
  [(NSIdentityGlyphInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NSGlyphNameGlyphInfo;
  [(NSIdentityGlyphInfo *)&v7 encodeWithCoder:?];
  allowsKeyedCoding = [coder allowsKeyedCoding];
  name = self->_name;
  if (allowsKeyedCoding)
  {
    if (name)
    {
      [coder encodeObject:name forKey:@"NSGlyphName"];
    }
  }

  else
  {
    [coder encodeObject:name];
  }
}

- (NSGlyphNameGlyphInfo)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    v12.receiver = self;
    v12.super_class = NSGlyphNameGlyphInfo;
    return [(NSIdentityGlyphInfo *)&v12 initWithCoder:coder];
  }

  v6 = [coder versionForClassName:@"NSGlyphNameGlyphInfo"];
  v7 = objc_opt_class();
  if (v7 != objc_opt_class() || v6 != 0)
  {
    v11.receiver = self;
    v11.super_class = NSGlyphNameGlyphInfo;
    v5 = [(NSIdentityGlyphInfo *)&v11 initWithCoder:coder];
    v5->_name = [coder decodeObject];
    return v5;
  }

  v10 = [NSGlyphInfo glyphInfoWithGlyph:0 forFont:[(UIFont *)NSFont userFontOfSize:0.0] baseString:&stru_1F01AD578];

  return v10;
}

@end