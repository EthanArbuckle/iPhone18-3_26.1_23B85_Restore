@interface TSUFont
+ (id)boldSystemFontOfSize:(double)size;
+ (id)fontWithName:(id)name size:(double)size;
+ (id)fontWithPlatformFont:(id)font;
+ (id)italicSystemFontOfSize:(double)size;
+ (id)systemFontOfSize:(double)size;
+ (id)systemFontOfSize:(double)size weight:(double)weight;
- (NSString)familyName;
- (NSString)fontName;
- (TSUFont)fontWithScale:(double)scale;
- (TSUFont)fontWithSize:(double)size;
- (TSUFont)initWithCTFont:(__CTFont *)font;
- (UIFont)platformFont;
- (double)lineHeight;
- (id)convertFontToBold:(BOOL)bold italic:(BOOL)italic;
- (void)dealloc;
@end

@implementation TSUFont

- (TSUFont)initWithCTFont:(__CTFont *)font
{
  v8.receiver = self;
  v8.super_class = TSUFont;
  v4 = [(TSUFont *)&v8 init];
  if (v4)
  {
    if (font)
    {
      v4->_ctFont = CFRetain(font);
    }

    else
    {
      v5 = +[TSUAssertionHandler currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFont initWithCTFont:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFont.m"), 32, @"can't create TSUFont without a CTFontRef"}];

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  ctFont = self->_ctFont;
  if (ctFont)
  {
    CFRelease(ctFont);
    self->_ctFont = 0;
  }

  v4.receiver = self;
  v4.super_class = TSUFont;
  [(TSUFont *)&v4 dealloc];
}

+ (id)fontWithName:(id)name size:(double)size
{
  result = CTFontCreateWithName(name, size, 0);
  if (result)
  {
    v5 = result;
    v6 = [objc_alloc(objc_opt_class()) initWithCTFont:result];
    CFRelease(v5);
    return v6;
  }

  return result;
}

+ (id)systemFontOfSize:(double)size
{
  v3 = [MEMORY[0x277D74300] systemFontOfSize:size];

  return [TSUFont fontWithPlatformFont:v3];
}

+ (id)boldSystemFontOfSize:(double)size
{
  v3 = [MEMORY[0x277D74300] boldSystemFontOfSize:size];

  return [TSUFont fontWithPlatformFont:v3];
}

+ (id)italicSystemFontOfSize:(double)size
{
  v3 = [MEMORY[0x277D74300] italicSystemFontOfSize:size];

  return [TSUFont fontWithPlatformFont:v3];
}

+ (id)systemFontOfSize:(double)size weight:(double)weight
{
  v4 = [MEMORY[0x277D74300] systemFontOfSize:size weight:weight];

  return [TSUFont fontWithPlatformFont:v4];
}

- (NSString)familyName
{
  v2 = CTFontCopyFamilyName(self->_ctFont);

  return v2;
}

- (NSString)fontName
{
  v2 = CTFontCopyPostScriptName(self->_ctFont);

  return v2;
}

- (double)lineHeight
{
  [(TSUFont *)self ascender];
  v4 = v3;
  [(TSUFont *)self descender];
  return v4 + v5;
}

- (TSUFont)fontWithSize:(double)size
{
  result = CTFontCreateCopyWithAttributes(self->_ctFont, size, 0, 0);
  if (result)
  {
    v4 = result;
    v5 = [objc_alloc(objc_opt_class()) initWithCTFont:result];
    CFRelease(v4);
    return v5;
  }

  return result;
}

- (TSUFont)fontWithScale:(double)scale
{
  selfCopy = self;
  if (scale != 1.0)
  {
    [(TSUFont *)self pointSize];
    v6 = v5 * scale;

    return [(TSUFont *)selfCopy fontWithSize:v6];
  }

  return self;
}

- (id)convertFontToBold:(BOOL)bold italic:(BOOL)italic
{
  if (bold)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  result = CTFontCreateCopyWithSymbolicTraits(self->_ctFont, 0.0, 0, v4 | italic, 3u);
  if (result)
  {
    v6 = result;
    v7 = [[TSUFont alloc] initWithCTFont:result];
    CFRelease(v6);
    return v7;
  }

  return result;
}

+ (id)fontWithPlatformFont:(id)font
{
  v3 = [[self alloc] initWithPlatformFont:font];

  return v3;
}

- (UIFont)platformFont
{
  cTFont = [(TSUFont *)self CTFont];

  return cTFont;
}

@end