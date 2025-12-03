@interface GQHTextStyle
+ (BOOL)getDefaultLineHeight:(__CFString *)height fontSize:(float)size defLineHeight:(int *)lineHeight;
+ (BOOL)platformGetDefaultLineHeight:(__CTFont *)height fontSize:(float)size defLineHeight:(int *)lineHeight;
+ (__CFString)platformCreateCssFontFamilyStringFromFontName:(__CFString *)name;
+ (void)mapStyle:(id)style style:(id)a4 state:(id)state isSpan:(BOOL)span;
+ (void)platformGetTraitsFromFont:(__CTFont *)font hasBold:(BOOL *)bold hasItalic:(BOOL *)italic;
+ (void)reduceFontSizeForSuperscriptedText:(id)text style:(id)style state:(id)state;
@end

@implementation GQHTextStyle

+ (void)platformGetTraitsFromFont:(__CTFont *)font hasBold:(BOOL *)bold hasItalic:(BOOL *)italic
{
  *bold = 0;
  *italic = 0;
  SymbolicTraits = CTFontGetSymbolicTraits(font);
  if ((SymbolicTraits & 0xC61) == 1)
  {
    *italic = 1;
  }

  if ((SymbolicTraits & 0xC62) == 2)
  {
    *bold = 1;
  }
}

+ (__CFString)platformCreateCssFontFamilyStringFromFontName:(__CFString *)name
{
  v5 = CTFontCreateWithName(name, 0.0, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CTFontCopyFullName(v5);
  v8 = CTFontCopyFamilyName(v6);
  v12 = 0;
  [self platformGetTraitsFromFont:v6 hasBold:&v12 + 1 hasItalic:&v12];
  v9 = objc_opt_new();
  if ([(__CFString *)v7 length]&& ([(__CFString *)v7 isEqualToString:name]& 1) == 0)
  {
    [v9 addObject:v7];
  }

  if ((v12 & 0x100) == 0 && (v12 & 1) == 0)
  {
    [v9 addObject:name];
  }

  if ([(__CFString *)v8 length]&& [(__CFString *)v7 length]&& ([(__CFString *)v8 isEqualToString:v7]& 1) == 0 && (![(__CFString *)v8 isEqualToString:name]|| (v12 & 0x100) != 0 || v12 == 1))
  {
    [v9 addObject:v8];
  }

  v10 = [v9 componentsJoinedByString:{@", "}];

  CFRelease(v6);
  return v10;
}

+ (BOOL)platformGetDefaultLineHeight:(__CTFont *)height fontSize:(float)size defLineHeight:(int *)lineHeight
{
  if (height)
  {
    v5 = lineHeight == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    TSWPDefaultLineHeightForFont();
    *&v8 = v8;
    *lineHeight = llroundf(*&v8);
  }

  return v6;
}

+ (void)mapStyle:(id)style style:(id)a4 state:(id)state isSpan:(BOOL)span
{
  spanCopy = span;
  v47 = 0;
  v46 = 0;
  v11 = 0;
  if ([style overridesObjectProperty:1 value:&v47])
  {
    v12 = [self platformCreateCssFontFamilyStringFromFontName:v47];
    if (v12)
    {
      [a4 addAttribute:off_9CE70 value:v12];
    }

    LODWORD(v45) = -1082130432;
    if (([style hasValueForFloatProperty:2 value:&v45] & 1) == 0)
    {
      [objc_msgSend(state "implicitStyle")];
    }

    LODWORD(v13) = v45;
    if (*&v45 == -1.0)
    {
      goto LABEL_12;
    }

    textScale = [state textScale];
    v16 = *&v45;
    if (textScale)
    {
      v16 = floorf((*&v45 * [state textScale]) / 100.0);
      *&v45 = v16;
    }

    if (v16 <= -1.0 || (*&v15 = v16, ![self getDefaultLineHeight:v47 fontSize:&v46 defLineHeight:v15]))
    {
LABEL_12:
      v11 = 0;
    }

    else
    {
      [a4 addAttribute:off_9CEA8 pxValue:v46];
      v11 = 1;
    }
  }

  if (spanCopy)
  {
    [GQHTextSpan handleTextBackgroundForStyle:style destStyle:a4 state:state];
  }

  v45 = 0;
  if ([style overridesObjectProperty:3 value:&v45] && v45)
  {
    coloredBackground = [state coloredBackground];
    v18 = v45;
    if ((coloredBackground & 1) == 0)
    {
      [v45 redComponent];
      v20 = 1.0 - v19;
      [v45 greenComponent];
      v22 = 1.0 - v21;
      [v45 blueComponent];
      *&v23 = 1.0 - v23;
      if (sqrtf(((v22 * v22) + (v20 * v20)) + (*&v23 * *&v23)) >= 0.1)
      {
        v18 = v45;
      }

      else
      {
        v18 = +[GQDColor blackColor];
        v45 = v18;
      }
    }

    v24 = [state getColorString:v18];
    [a4 addAttribute:off_9CE58 value:v24];
  }

  v44 = 0;
  if ([style overridesBoolProperty:4 value:&v44])
  {
    if (v44)
    {
      v25 = &off_9CFB0;
    }

    else
    {
      v25 = &off_9D038;
    }

    [a4 addAttribute:off_9CE90 value:*v25];
  }

  if ([style overridesBoolProperty:5 value:&v44])
  {
    if (v44)
    {
      v26 = &off_9CFF0;
    }

    else
    {
      v26 = &off_9D038;
    }

    [a4 addAttribute:off_9CE80 value:*v26];
  }

  if ([state implicitStyle] != style)
  {
    v42 = 0.0;
    v43 = 0;
    v27 = [objc_msgSend(state "implicitStyle")];
    v28 = [objc_msgSend(state "implicitStyle")];
    v29 = [style hasValueForIntProperty:11 value:&v43];
    if (([style hasValueForIntProperty:7 value:&v42] & 1) != 0 || (v29 & 1) != 0 || (v28 & 1) != 0 || v27)
    {
      if (v43)
      {
        if (v42 != 0.0)
        {
          v30 = CFStringCreateWithFormat(0, 0, @"%@ %@", off_9D018, off_9D088);
          [a4 addAttribute:off_9CF48 value:v30];
          CFRelease(v30);
          goto LABEL_45;
        }

        v31 = off_9CF48;
        v32 = &off_9D018;
      }

      else
      {
        v31 = off_9CF48;
        if (v42 == 0.0)
        {
          v32 = &off_9D028;
        }

        else
        {
          v32 = &off_9D088;
        }
      }

      [a4 addAttribute:v31 value:*v32];
    }
  }

LABEL_45:
  v43 = 0;
  if ([style overridesIntProperty:6 value:&v43])
  {
    v33 = v43 - 1;
    if ((v43 - 1) > 2)
    {
      v35 = &off_9D028;
      v34 = &off_9CF40;
    }

    else
    {
      v34 = off_80848[v33];
      v35 = off_80860[v33];
    }

    [a4 addAttribute:*v34 value:*v35];
  }

  v42 = 0.0;
  if ([style overridesFloatProperty:2 value:&v42])
  {
    textScale2 = [state textScale];
    v37 = v42;
    if (textScale2)
    {
      v37 = floorf((v42 * [state textScale]) / 100.0);
      v42 = v37;
    }

    [a4 addAttribute:off_9CE78 intValue:llroundf(v37)];
    v47 = 0;
    if (([style hasValueForObjectProperty:1 value:&v47] & 1) == 0)
    {
      [objc_msgSend(state "implicitStyle")];
    }

    if (v47)
    {
      if ((v11 & 1) != 0 || (*&v38 = v42, [self getDefaultLineHeight:v38 fontSize:? defLineHeight:?]))
      {
        [a4 addAttribute:off_9CEA8 pxValue:?];
      }
    }
  }

  if ([style hasValueForIntProperty:21 value:&v43])
  {
    if (v43 == 2)
    {
      v39 = off_9CF58;
      v40 = &off_9D068;
    }

    else
    {
      if (v43 != 1)
      {
        return;
      }

      v39 = off_9CF58;
      v40 = &off_9D070;
    }

    [a4 addAttribute:v39 value:*v40];
    [GQHTextStyle reduceFontSizeForSuperscriptedText:style style:a4 state:state];
  }

  else if ([style hasValueForIntProperty:20 value:&v43])
  {
    if (v43 < 1)
    {
      v41 = &off_9D068;
    }

    else
    {
      v41 = &off_9D070;
    }

    [a4 addAttribute:off_9CF58 value:*v41];
  }
}

+ (BOOL)getDefaultLineHeight:(__CFString *)height fontSize:(float)size defLineHeight:(int *)lineHeight
{
  v8 = CTFontCreateWithName(height, size, 0);
  if (v8)
  {
    v10 = v8;
    *&v9 = size;
    v11 = [self platformGetDefaultLineHeight:v8 fontSize:lineHeight defLineHeight:v9];
    CFRelease(v10);
    LOBYTE(v8) = v11;
  }

  return v8;
}

+ (void)reduceFontSizeForSuperscriptedText:(id)text style:(id)style state:(id)state
{
  v8 = 0.0;
  if (([text overridesFloatProperty:2 value:&v8] & 1) != 0 || objc_msgSend(objc_msgSend(state, "implicitStyle"), "hasValueForFloatProperty:value:", 2, &v8))
  {
    v7 = v8 * 0.7;
    [style addAttribute:off_9CE78 intValue:llroundf(v7)];
  }
}

@end