@interface NSCTGlyphInfo
- (BOOL)isEqual:(id)a3;
- (unsigned)_glyphForFont:(id)a3 baseString:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSCTGlyphInfo

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

- (unsigned)_glyphForFont:(id)a3 baseString:(id)a4
{
  if ([a4 isEqualToString:{-[NSCTGlyphInfo _baseString](self, "_baseString")}])
  {
    v6 = [(NSCTGlyphInfo *)self characterCollection];
    if (v6)
    {
      v7 = v6;
      v8 = CTFontCopyGraphicsFont(a3, 0);
      if (v8)
      {
        v9 = v8;
        CTGlyphInfoGetCharacterCollection(self);
        if ((v7 == 255 || CGFontGetRegistryOrderingSupplement() && CFEqual(0, @"Adobe") && CFEqual(0, __NSOrderingTable[v7 - 1])) && CGFontGetGlyphsForCIDs())
        {
          CharacterIdentifier = 0;
LABEL_22:
          CFRelease(v9);
          return CharacterIdentifier;
        }

LABEL_19:
        CharacterIdentifier = 0;
        goto LABEL_22;
      }
    }

    else
    {
      Font = _CTGlyphInfoGetFont();
      if (Font)
      {
        v12 = Font;
      }

      else
      {
        v12 = a3;
      }

      v13 = CTFontCopyPostScriptName(v12);
      if (v13)
      {
        v9 = v13;
        if ([objc_msgSend(a3 "fontName")])
        {
          v14 = CTFontCopyFontDescriptor(v12);
          if ([objc_msgSend(a3 "fontDescriptor")])
          {
            CharacterIdentifier = MEMORY[0x193AD41A0](self);
            if (!CharacterIdentifier)
            {
              CharacterIdentifier = CTGlyphInfoGetCharacterIdentifier(self);
            }
          }

          else
          {
            CharacterIdentifier = 0;
          }

          CFRelease(v14);
          goto LABEL_22;
        }

        goto LABEL_19;
      }
    }
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSCTGlyphInfo *)self characterCollection];
  v6 = [(NSCTGlyphInfo *)self _baseString];
  if (v5)
  {
    v7 = [NSGlyphInfo glyphInfoWithCharacterIdentifier:[(NSCTGlyphInfo *)self characterIdentifier] collection:v5 baseString:v6];
  }

  else
  {
    Font = _CTGlyphInfoGetFont();
    v9 = CTFontCopyFontDescriptor(Font);
    v10 = [(UIFont *)NSFont fontWithDescriptor:v9 size:0.0];
    CFRelease(v9);
    if (v10)
    {
      v11 = [(NSCTGlyphInfo *)self glyphName];
      if (v11)
      {
        v7 = [NSGlyphInfo glyphInfoWithGlyphName:v11 forFont:v10 baseString:v6];
      }

      else
      {
        v7 = [NSGlyphInfo glyphInfoWithGlyph:MEMORY[0x193AD41A0](self) forFont:v10 baseString:v6];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  [(NSGlyphInfo *)v7 encodeWithCoder:a3];
}

@end