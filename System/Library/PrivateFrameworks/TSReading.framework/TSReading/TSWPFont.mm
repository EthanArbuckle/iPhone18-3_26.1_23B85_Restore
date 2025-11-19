@interface TSWPFont
+ (id)fontWithName:(id)a3;
+ (id)fontWithName:(id)a3 compatibilityName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)compatibilityName;
- (NSString)displayName;
- (NSString)familyName;
- (TSWPFont)init;
- (TSWPFont)initWithFontName:(id)a3 compatibilityName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSWPFont

+ (id)fontWithName:(id)a3
{
  v3 = [[a1 alloc] initWithFontName:a3 compatibilityName:0];

  return v3;
}

+ (id)fontWithName:(id)a3 compatibilityName:(id)a4
{
  v4 = [[a1 alloc] initWithFontName:a3 compatibilityName:a4];

  return v4;
}

- (TSWPFont)initWithFontName:(id)a3 compatibilityName:(id)a4
{
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFont initWithFontName:compatibilityName:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFont.mm"), 51, @"invalid nil value for '%s'", "fontName"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFont initWithFontName:compatibilityName:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFont.mm"), 52, @"Wrong class for fontName"}];
  }

  v14.receiver = self;
  v14.super_class = TSWPFont;
  v11 = [(TSWPFont *)&v14 init];
  v12 = v11;
  if (v11)
  {
    if (a3)
    {
      [(TSWPFont *)v11 setFontName:a3];
      [(TSWPFont *)v12 setCompatibilityName:a4];
    }

    else
    {

      return 0;
    }
  }

  return v12;
}

- (TSWPFont)init
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFont init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFont.mm"), 73, @"Failed to call designated initializer"}];
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPFont;
  [(TSWPFont *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSWPFont alloc];
  v5 = [(TSWPFont *)self fontName];
  v6 = [(TSWPFont *)self compatibilityName];

  return [(TSWPFont *)v4 initWithFontName:v5 compatibilityName:v6];
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(NSString *)[(TSWPFont *)self fontName] hash];
    result = [(NSString *)[(TSWPFont *)self compatibilityName] hash]+ v4;
    self->_hash = result;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    v6 = [(TSWPFont *)self fontName];
    v7 = [v5 fontName];
    if (!(v6 | v7) || (LODWORD(v4) = [v6 isEqual:v7], v4))
    {
      v8 = [(TSWPFont *)self compatibilityName];
      v9 = [v5 compatibilityName];
      if (v8 | v9)
      {

        LOBYTE(v4) = [v8 isEqual:v9];
      }

      else
      {
        LOBYTE(v4) = 1;
      }
    }
  }

  return v4;
}

- (NSString)compatibilityName
{
  if (-[NSString isEqualToString:](self->_compatibilityName, "isEqualToString:", [+[TSWPFontCache sharedCache](TSWPFontCache "sharedCache")]))
  {
    return 0;
  }

  else
  {
    return self->_compatibilityName;
  }
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    displayName = [+[TSWPFontCache sharedCache](TSWPFontCache "sharedCache")];
    if (!displayName)
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFont displayName]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFont.mm"), 131, @"invalid nil value for '%s'", "result"}];
    }

    v6 = [(TSWPFont *)self compatibilityName];
    if (v6)
    {
      displayName = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSWPBundle(), "localizedStringForKey:value:table:", @"%@ (%@)", &stru_287D36338, @"TSText", displayName, v6];
    }

    self->_displayName = [(NSString *)displayName copy];
  }

  return displayName;
}

- (NSString)familyName
{
  familyName = self->_familyName;
  if (familyName)
  {
    return familyName;
  }

  fontName = self->_fontName;
  if (!fontName)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFont familyName]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFont.mm"), 152, @"invalid nil value for '%s'", "_fontName"}];
    fontName = self->_fontName;
    if (!fontName)
    {
      return 0;
    }
  }

  v7 = CTFontDescriptorCreateWithNameAndSize(fontName, 0.0);
  if (!v7)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFont familyName]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFont.mm"), 156, @"invalid nil value for '%s'", "desc"}];
    return 0;
  }

  v8 = v7;
  v9 = CTFontDescriptorCopyAttribute(v7, *MEMORY[0x277CC48B8]);
  if (v9)
  {
    familyName = v9;
    self->_familyName = v9;
  }

  else
  {
    v12 = TSWPCreateFontWithName(self->_fontName, 0.0);
    if (!v12)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFont familyName]"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFont.mm"), 167, @"invalid nil value for '%s'", "ctFont"}];
    }

    familyName = CTFontCopyFamilyName(v12);
    self->_familyName = familyName;
    self->_compatibilityName = [(NSString *)self->_fontName copy];
    CFRelease(v12);
  }

  CFRelease(v8);
  return familyName;
}

@end