@interface TSWPLoadableFontInfo
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)dealloc;
- (void)setCgFont:(CGFont *)font;
@end

@implementation TSWPLoadableFontInfo

- (void)dealloc
{
  [(TSWPLoadableFontInfo *)self setCgFont:0];
  v3.receiver = self;
  v3.super_class = TSWPLoadableFontInfo;
  [(TSWPLoadableFontInfo *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      fontName = [(TSWPLoadableFontInfo *)self fontName];
      fontName2 = [equal fontName];

      LOBYTE(v5) = [(NSString *)fontName isEqualToString:fontName2];
    }
  }

  return v5;
}

- (id)description
{
  v2 = @"no";
  if (self->_obfuscated)
  {
    v3 = @"yes";
  }

  else
  {
    v3 = @"no";
  }

  if (self->_attemptedLoad)
  {
    v2 = @"yes";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<TSWPLoadableFontInfo groupUID=%@ name=%@ family=%@ obfuscated=%@ attemptedLoad=%@>", self->_groupUID, self->_fontName, self->_fontFamily, v3, v2];
}

- (void)setCgFont:(CGFont *)font
{
  cgFont = self->_cgFont;
  if (cgFont != font)
  {
    if (cgFont)
    {
      error = 0;
      CTFontManagerUnregisterGraphicsFont(cgFont, &error);
      CGFontRelease(self->_cgFont);
    }

    CGFontRetain(font);
    self->_cgFont = font;
  }
}

@end