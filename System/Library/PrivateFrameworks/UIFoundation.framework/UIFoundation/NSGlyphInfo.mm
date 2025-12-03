@interface NSGlyphInfo
+ (NSGlyphInfo)glyphInfoWithCGGlyph:(CGGlyph)glyph forFont:(NSFont *)font baseString:(NSString *)string;
+ (NSGlyphInfo)glyphInfoWithCharacterIdentifier:(NSUInteger)cid collection:(NSCharacterCollection)characterCollection baseString:(NSString *)string;
+ (NSGlyphInfo)glyphInfoWithGlyph:(NSGlyph)glyph forFont:(NSFont *)font baseString:(NSString *)string;
+ (NSGlyphInfo)glyphInfoWithGlyphName:(NSString *)glyphName forFont:(NSFont *)font baseString:(NSString *)string;
+ (void)initialize;
- (NSGlyphInfo)initWithBaseString:(id)string;
- (NSGlyphInfo)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSGlyphInfo

+ (NSGlyphInfo)glyphInfoWithGlyphName:(NSString *)glyphName forFont:(NSFont *)font baseString:(NSString *)string
{
  v8 = [(UIFont *)font glyphWithName:?];
  if (![(UIFont *)font glyphWithName:glyphName])
  {
    return 0;
  }

  v9 = [[NSGlyphNameGlyphInfo alloc] initWithGlyphName:glyphName glyph:v8 forFont:font baseString:string];

  return v9;
}

+ (NSGlyphInfo)glyphInfoWithCGGlyph:(CGGlyph)glyph forFont:(NSFont *)font baseString:(NSString *)string
{
  v7 = glyph;
  v8 = objc_opt_class();

  return [v8 glyphInfoWithGlyph:v7 forFont:font baseString:string];
}

+ (NSGlyphInfo)glyphInfoWithGlyph:(NSGlyph)glyph forFont:(NSFont *)font baseString:(NSString *)string
{
  v7 = *&glyph;
  if ([(UIFont *)font numberOfGlyphs]<= glyph)
  {
    return 0;
  }

  return [NSIdentityGlyphInfo glyphInfoWithGlyph:v7 forFont:font baseString:string];
}

+ (NSGlyphInfo)glyphInfoWithCharacterIdentifier:(NSUInteger)cid collection:(NSCharacterCollection)characterCollection baseString:(NSString *)string
{
  if (characterCollection < (NSAdobeJapan2CharacterCollection|NSAdobeGB1CharacterCollection) || characterCollection == 255)
  {
    return [NSCIDGlyphInfo glyphInfoWithCharacterIdentifier:"glyphInfoWithCharacterIdentifier:collection:baseString:" collection:cid baseString:?];
  }

  else
  {
    return 0;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __NSGlyphInfoClassObject = self;

    [self setVersion:1];
  }
}

- (NSGlyphInfo)initWithBaseString:(id)string
{
  v6.receiver = self;
  v6.super_class = NSGlyphInfo;
  v4 = [(NSGlyphInfo *)&v6 init];
  v4->_baseString = [string copy];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSGlyphInfo;
  [(NSGlyphInfo *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  allowsKeyedCoding = [coder allowsKeyedCoding];
  baseString = self->_baseString;
  if (allowsKeyedCoding)
  {
    if (baseString)
    {

      [coder encodeObject:? forKey:?];
    }
  }

  else
  {

    [coder encodeObject:baseString];
  }
}

- (NSGlyphInfo)initWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    if ([coder versionForClassName:@"NSGlyphInfo"] || (v11 = objc_opt_class(), v11 != objc_opt_class()))
    {
      self->_baseString = [coder decodeObject];
      selfCopy = self;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSString"];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSFont"];
  if (!v7)
  {
    v14 = [coder decodeInt32ForKey:@"NSCID_RO"];
    if (v14)
    {
      selfCopy = [NSGlyphInfo glyphInfoWithCharacterIdentifier:v14 & 0xFFFFFF collection:HIBYTE(v14) baseString:v6];
      goto LABEL_9;
    }

LABEL_15:

    goto LABEL_16;
  }

  v8 = v7;
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSGlyphName"];
  if (v9)
  {
    selfCopy = [NSGlyphInfo glyphInfoWithGlyphName:v9 forFont:v8 baseString:v6];
    goto LABEL_9;
  }

  v15 = [coder decodeInt32ForKey:@"NSGlyph"];
  if (!v15)
  {
    goto LABEL_15;
  }

  selfCopy = [NSGlyphInfo glyphInfoWithGlyph:v15 forFont:v8 baseString:v6];
LABEL_9:
  v12 = selfCopy;

  if (v12)
  {
    return v12;
  }

LABEL_16:
  v16 = [NSGlyphInfo glyphInfoWithGlyph:0 forFont:[(UIFont *)NSFont userFontOfSize:0.0] baseString:&stru_1F01AD578];

  return v16;
}

@end