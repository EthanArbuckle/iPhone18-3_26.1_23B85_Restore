@interface TSUFont
+ (id)boldSystemFontOfSize:(double)a3;
+ (id)fontWithName:(id)a3 size:(double)a4;
+ (id)fontWithPlatformFont:(id)a3;
+ (id)italicSystemFontOfSize:(double)a3;
+ (id)systemFontOfSize:(double)a3;
+ (id)systemFontOfSize:(double)a3 weight:(double)a4;
- (NSString)familyName;
- (NSString)fontName;
- (TSUFont)fontWithScale:(double)a3;
- (TSUFont)fontWithSize:(double)a3;
- (TSUFont)initWithCTFont:(__CTFont *)a3;
- (UIFont)platformFont;
- (double)lineHeight;
- (id)convertFontToBold:(BOOL)a3 italic:(BOOL)a4;
- (void)dealloc;
@end

@implementation TSUFont

- (TSUFont)initWithCTFont:(__CTFont *)a3
{
  v8.receiver = self;
  v8.super_class = TSUFont;
  v4 = [(TSUFont *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v4->_ctFont = CFRetain(a3);
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

+ (id)fontWithName:(id)a3 size:(double)a4
{
  result = CTFontCreateWithName(a3, a4, 0);
  if (result)
  {
    v5 = result;
    v6 = [objc_alloc(objc_opt_class()) initWithCTFont:result];
    CFRelease(v5);
    return v6;
  }

  return result;
}

+ (id)systemFontOfSize:(double)a3
{
  v3 = [MEMORY[0x277D74300] systemFontOfSize:a3];

  return [TSUFont fontWithPlatformFont:v3];
}

+ (id)boldSystemFontOfSize:(double)a3
{
  v3 = [MEMORY[0x277D74300] boldSystemFontOfSize:a3];

  return [TSUFont fontWithPlatformFont:v3];
}

+ (id)italicSystemFontOfSize:(double)a3
{
  v3 = [MEMORY[0x277D74300] italicSystemFontOfSize:a3];

  return [TSUFont fontWithPlatformFont:v3];
}

+ (id)systemFontOfSize:(double)a3 weight:(double)a4
{
  v4 = [MEMORY[0x277D74300] systemFontOfSize:a3 weight:a4];

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

- (TSUFont)fontWithSize:(double)a3
{
  result = CTFontCreateCopyWithAttributes(self->_ctFont, a3, 0, 0);
  if (result)
  {
    v4 = result;
    v5 = [objc_alloc(objc_opt_class()) initWithCTFont:result];
    CFRelease(v4);
    return v5;
  }

  return result;
}

- (TSUFont)fontWithScale:(double)a3
{
  v4 = self;
  if (a3 != 1.0)
  {
    [(TSUFont *)self pointSize];
    v6 = v5 * a3;

    return [(TSUFont *)v4 fontWithSize:v6];
  }

  return self;
}

- (id)convertFontToBold:(BOOL)a3 italic:(BOOL)a4
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  result = CTFontCreateCopyWithSymbolicTraits(self->_ctFont, 0.0, 0, v4 | a4, 3u);
  if (result)
  {
    v6 = result;
    v7 = [[TSUFont alloc] initWithCTFont:result];
    CFRelease(v6);
    return v7;
  }

  return result;
}

+ (id)fontWithPlatformFont:(id)a3
{
  v3 = [[a1 alloc] initWithPlatformFont:a3];

  return v3;
}

- (UIFont)platformFont
{
  v2 = [(TSUFont *)self CTFont];

  return v2;
}

@end