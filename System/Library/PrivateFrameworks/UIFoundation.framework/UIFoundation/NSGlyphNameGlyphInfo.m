@interface NSGlyphNameGlyphInfo
+ (void)initialize;
- (NSGlyphNameGlyphInfo)initWithCoder:(id)a3;
- (NSGlyphNameGlyphInfo)initWithGlyphName:(id)a3 glyph:(unsigned int)a4 forFont:(id)a5 baseString:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSGlyphNameGlyphInfo

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (NSGlyphNameGlyphInfo)initWithGlyphName:(id)a3 glyph:(unsigned int)a4 forFont:(id)a5 baseString:(id)a6
{
  v9.receiver = self;
  v9.super_class = NSGlyphNameGlyphInfo;
  v7 = [(NSIdentityGlyphInfo *)&v9 initWithGlyph:*&a4 forFont:a5 baseString:a6];
  v7->_name = a3;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSGlyphNameGlyphInfo;
  [(NSIdentityGlyphInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSGlyphNameGlyphInfo;
  [(NSIdentityGlyphInfo *)&v7 encodeWithCoder:?];
  v5 = [a3 allowsKeyedCoding];
  name = self->_name;
  if (v5)
  {
    if (name)
    {
      [a3 encodeObject:name forKey:@"NSGlyphName"];
    }
  }

  else
  {
    [a3 encodeObject:name];
  }
}

- (NSGlyphNameGlyphInfo)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v12.receiver = self;
    v12.super_class = NSGlyphNameGlyphInfo;
    return [(NSIdentityGlyphInfo *)&v12 initWithCoder:a3];
  }

  v6 = [a3 versionForClassName:@"NSGlyphNameGlyphInfo"];
  v7 = objc_opt_class();
  if (v7 != objc_opt_class() || v6 != 0)
  {
    v11.receiver = self;
    v11.super_class = NSGlyphNameGlyphInfo;
    v5 = [(NSIdentityGlyphInfo *)&v11 initWithCoder:a3];
    v5->_name = [a3 decodeObject];
    return v5;
  }

  v10 = [NSGlyphInfo glyphInfoWithGlyph:0 forFont:[(UIFont *)NSFont userFontOfSize:0.0] baseString:&stru_1F01AD578];

  return v10;
}

@end