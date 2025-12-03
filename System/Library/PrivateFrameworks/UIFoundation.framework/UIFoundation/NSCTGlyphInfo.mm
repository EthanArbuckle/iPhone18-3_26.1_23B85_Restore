@interface NSCTGlyphInfo
- (BOOL)isEqual:(id)equal;
- (unsigned)_glyphForFont:(id)font baseString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSCTGlyphInfo

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

- (unsigned)_glyphForFont:(id)font baseString:(id)string
{
  if ([string isEqualToString:{-[NSCTGlyphInfo _baseString](self, "_baseString")}])
  {
    characterCollection = [(NSCTGlyphInfo *)self characterCollection];
    if (characterCollection)
    {
      v7 = characterCollection;
      v8 = CTFontCopyGraphicsFont(font, 0);
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
        fontCopy = Font;
      }

      else
      {
        fontCopy = font;
      }

      v13 = CTFontCopyPostScriptName(fontCopy);
      if (v13)
      {
        v9 = v13;
        if ([objc_msgSend(font "fontName")])
        {
          v14 = CTFontCopyFontDescriptor(fontCopy);
          if ([objc_msgSend(font "fontDescriptor")])
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

- (void)encodeWithCoder:(id)coder
{
  characterCollection = [(NSCTGlyphInfo *)self characterCollection];
  _baseString = [(NSCTGlyphInfo *)self _baseString];
  if (characterCollection)
  {
    v7 = [NSGlyphInfo glyphInfoWithCharacterIdentifier:[(NSCTGlyphInfo *)self characterIdentifier] collection:characterCollection baseString:_baseString];
  }

  else
  {
    Font = _CTGlyphInfoGetFont();
    v9 = CTFontCopyFontDescriptor(Font);
    v10 = [(UIFont *)NSFont fontWithDescriptor:v9 size:0.0];
    CFRelease(v9);
    if (v10)
    {
      glyphName = [(NSCTGlyphInfo *)self glyphName];
      if (glyphName)
      {
        v7 = [NSGlyphInfo glyphInfoWithGlyphName:glyphName forFont:v10 baseString:_baseString];
      }

      else
      {
        v7 = [NSGlyphInfo glyphInfoWithGlyph:MEMORY[0x193AD41A0](self) forFont:v10 baseString:_baseString];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  [(NSGlyphInfo *)v7 encodeWithCoder:coder];
}

@end