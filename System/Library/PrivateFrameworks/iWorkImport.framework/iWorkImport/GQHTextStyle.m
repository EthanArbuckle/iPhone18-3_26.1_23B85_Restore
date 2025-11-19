@interface GQHTextStyle
+ (BOOL)getDefaultLineHeight:(__CFString *)a3 fontSize:(float)a4 defLineHeight:(int *)a5;
+ (BOOL)platformGetDefaultLineHeight:(__CTFont *)a3 fontSize:(float)a4 defLineHeight:(int *)a5;
+ (__CFString)platformCreateCssFontFamilyStringFromFontName:(__CFString *)a3;
+ (void)mapStyle:(id)a3 style:(id)a4 state:(id)a5 isSpan:(BOOL)a6;
+ (void)platformGetTraitsFromFont:(__CTFont *)a3 hasBold:(BOOL *)a4 hasItalic:(BOOL *)a5;
+ (void)reduceFontSizeForSuperscriptedText:(id)a3 style:(id)a4 state:(id)a5;
@end

@implementation GQHTextStyle

+ (void)platformGetTraitsFromFont:(__CTFont *)a3 hasBold:(BOOL *)a4 hasItalic:(BOOL *)a5
{
  *a4 = 0;
  *a5 = 0;
  SymbolicTraits = CTFontGetSymbolicTraits(a3);
  if ((SymbolicTraits & 0xC61) == 1)
  {
    *a5 = 1;
  }

  if ((SymbolicTraits & 0xC62) == 2)
  {
    *a4 = 1;
  }
}

+ (__CFString)platformCreateCssFontFamilyStringFromFontName:(__CFString *)a3
{
  v5 = CTFontCreateWithName(a3, 0.0, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CTFontCopyFullName(v5);
  v8 = CTFontCopyFamilyName(v6);
  v12 = 0;
  [a1 platformGetTraitsFromFont:v6 hasBold:&v12 + 1 hasItalic:&v12];
  v9 = objc_opt_new();
  if ([(__CFString *)v7 length]&& ([(__CFString *)v7 isEqualToString:a3]& 1) == 0)
  {
    [v9 addObject:v7];
  }

  if ((v12 & 0x100) == 0 && (v12 & 1) == 0)
  {
    [v9 addObject:a3];
  }

  if ([(__CFString *)v8 length]&& [(__CFString *)v7 length]&& ([(__CFString *)v8 isEqualToString:v7]& 1) == 0 && (![(__CFString *)v8 isEqualToString:a3]|| (v12 & 0x100) != 0 || v12 == 1))
  {
    [v9 addObject:v8];
  }

  v10 = [v9 componentsJoinedByString:{@", "}];

  CFRelease(v6);
  return v10;
}

+ (BOOL)platformGetDefaultLineHeight:(__CTFont *)a3 fontSize:(float)a4 defLineHeight:(int *)a5
{
  if (a3)
  {
    v5 = a5 == 0;
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
    *a5 = llroundf(*&v8);
  }

  return v6;
}

+ (void)mapStyle:(id)a3 style:(id)a4 state:(id)a5 isSpan:(BOOL)a6
{
  v6 = a6;
  v47 = 0;
  v46 = 0;
  v11 = 0;
  if ([a3 overridesObjectProperty:1 value:&v47])
  {
    v12 = [a1 platformCreateCssFontFamilyStringFromFontName:v47];
    if (v12)
    {
      [a4 addAttribute:off_9CE70 value:v12];
    }

    LODWORD(v45) = -1082130432;
    if (([a3 hasValueForFloatProperty:2 value:&v45] & 1) == 0)
    {
      [objc_msgSend(a5 "implicitStyle")];
    }

    LODWORD(v13) = v45;
    if (*&v45 == -1.0)
    {
      goto LABEL_12;
    }

    v14 = [a5 textScale];
    v16 = *&v45;
    if (v14)
    {
      v16 = floorf((*&v45 * [a5 textScale]) / 100.0);
      *&v45 = v16;
    }

    if (v16 <= -1.0 || (*&v15 = v16, ![a1 getDefaultLineHeight:v47 fontSize:&v46 defLineHeight:v15]))
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

  if (v6)
  {
    [GQHTextSpan handleTextBackgroundForStyle:a3 destStyle:a4 state:a5];
  }

  v45 = 0;
  if ([a3 overridesObjectProperty:3 value:&v45] && v45)
  {
    v17 = [a5 coloredBackground];
    v18 = v45;
    if ((v17 & 1) == 0)
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

    v24 = [a5 getColorString:v18];
    [a4 addAttribute:off_9CE58 value:v24];
  }

  v44 = 0;
  if ([a3 overridesBoolProperty:4 value:&v44])
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

  if ([a3 overridesBoolProperty:5 value:&v44])
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

  if ([a5 implicitStyle] != a3)
  {
    v42 = 0.0;
    v43 = 0;
    v27 = [objc_msgSend(a5 "implicitStyle")];
    v28 = [objc_msgSend(a5 "implicitStyle")];
    v29 = [a3 hasValueForIntProperty:11 value:&v43];
    if (([a3 hasValueForIntProperty:7 value:&v42] & 1) != 0 || (v29 & 1) != 0 || (v28 & 1) != 0 || v27)
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
  if ([a3 overridesIntProperty:6 value:&v43])
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
  if ([a3 overridesFloatProperty:2 value:&v42])
  {
    v36 = [a5 textScale];
    v37 = v42;
    if (v36)
    {
      v37 = floorf((v42 * [a5 textScale]) / 100.0);
      v42 = v37;
    }

    [a4 addAttribute:off_9CE78 intValue:llroundf(v37)];
    v47 = 0;
    if (([a3 hasValueForObjectProperty:1 value:&v47] & 1) == 0)
    {
      [objc_msgSend(a5 "implicitStyle")];
    }

    if (v47)
    {
      if ((v11 & 1) != 0 || (*&v38 = v42, [a1 getDefaultLineHeight:v38 fontSize:? defLineHeight:?]))
      {
        [a4 addAttribute:off_9CEA8 pxValue:?];
      }
    }
  }

  if ([a3 hasValueForIntProperty:21 value:&v43])
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
    [GQHTextStyle reduceFontSizeForSuperscriptedText:a3 style:a4 state:a5];
  }

  else if ([a3 hasValueForIntProperty:20 value:&v43])
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

+ (BOOL)getDefaultLineHeight:(__CFString *)a3 fontSize:(float)a4 defLineHeight:(int *)a5
{
  v8 = CTFontCreateWithName(a3, a4, 0);
  if (v8)
  {
    v10 = v8;
    *&v9 = a4;
    v11 = [a1 platformGetDefaultLineHeight:v8 fontSize:a5 defLineHeight:v9];
    CFRelease(v10);
    LOBYTE(v8) = v11;
  }

  return v8;
}

+ (void)reduceFontSizeForSuperscriptedText:(id)a3 style:(id)a4 state:(id)a5
{
  v8 = 0.0;
  if (([a3 overridesFloatProperty:2 value:&v8] & 1) != 0 || objc_msgSend(objc_msgSend(a5, "implicitStyle"), "hasValueForFloatProperty:value:", 2, &v8))
  {
    v7 = v8 * 0.7;
    [a4 addAttribute:off_9CE78 intValue:llroundf(v7)];
  }
}

@end