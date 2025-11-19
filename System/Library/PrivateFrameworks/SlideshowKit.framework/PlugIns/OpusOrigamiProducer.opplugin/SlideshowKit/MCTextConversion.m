@interface MCTextConversion
+ (id)attributedStringWithCTAttributesFromStringAttributes:(id)a3;
+ (id)attributedStringWithNSAttributesFromStringAttributes:(id)a3;
+ (id)stretchForFontDisplayName:(id)a3 andFamilyName:(id)a4;
+ (id)stringAttributesWithAttributedString:(id)a3;
+ (id)stringFromLigature:(int64_t)a3;
+ (id)stringFromTextAlignment:(int64_t)a3;
+ (id)styleForFontDisplayName:(id)a3 andFamilyName:(id)a4;
+ (id)textFormatFromUnderlineStyle:(unint64_t)a3;
+ (id)textFormatWithCTAttributesForText:(id)a3 attributes:(id)a4;
+ (id)weightForFontDisplayName:(id)a3 andFamilyName:(id)a4;
+ (int64_t)ligatureFromString:(id)a3;
+ (int64_t)textAlignmentFromString:(id)a3;
+ (unint64_t)underlineStyleFromTextFormat:(id)a3;
@end

@implementation MCTextConversion

+ (id)styleForFontDisplayName:(id)a3 andFamilyName:(id)a4
{
  v5 = a3;
  if ([a3 hasPrefix:a4])
  {
    v5 = [v5 substringFromIndex:{objc_msgSend(a4, "length")}];
  }

  v6 = @"italic";
  if ([v5 rangeOfString:@"italic" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"oblique";
    if ([v5 rangeOfString:@"oblique" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      return @"normal";
    }
  }

  return v6;
}

+ (id)weightForFontDisplayName:(id)a3 andFamilyName:(id)a4
{
  v5 = a3;
  if ([a3 hasPrefix:a4])
  {
    v5 = [v5 substringFromIndex:{objc_msgSend(a4, "length")}];
  }

  if ([v5 rangeOfString:@"light" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"lighter";
  }

  if ([v5 rangeOfString:@"bold" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"normal";
  }

  return @"bold";
}

+ (id)stretchForFontDisplayName:(id)a3 andFamilyName:(id)a4
{
  v5 = a3;
  if ([a3 hasPrefix:a4])
  {
    v5 = [v5 substringFromIndex:{objc_msgSend(a4, "length")}];
  }

  if ([v5 rangeOfString:@"condensed" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return @"condensed";
  }
}

+ (int64_t)textAlignmentFromString:(id)a3
{
  if ([a3 isEqualToString:@"left"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"right"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"center"])
  {
    return 2;
  }

  return 0;
}

+ (id)stringFromTextAlignment:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"center";
  }

  else
  {
    return off_1AB508[a3];
  }
}

+ (int64_t)ligatureFromString:(id)a3
{
  if ([a3 isEqualToString:@"noLigatures"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"defaultLigatures"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"allLigatures"])
  {
    return 2;
  }

  return 1;
}

+ (id)stringFromLigature:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"defaultLigatures";
  }

  else
  {
    return off_1AB520[a3];
  }
}

+ (unint64_t)underlineStyleFromTextFormat:(id)a3
{
  v4 = [a3 objectForKey:@"thickness"];
  if ([v4 isEqualToString:@"single"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"thick"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"double"])
  {
    v5 = 9;
  }

  else
  {
    v5 = 1;
  }

  v6 = [a3 objectForKey:@"pattern"];
  if (([v6 isEqualToString:@"solid"] & 1) == 0)
  {
    if ([v6 isEqualToString:@"dot"])
    {
      v5 |= 0x100uLL;
    }

    else if ([v6 isEqualToString:@"dash"])
    {
      v5 |= 0x200uLL;
    }

    else if ([v6 isEqualToString:@"dashdot"])
    {
      v5 |= 0x300uLL;
    }

    else if ([v6 isEqualToString:@"dashdotdot"])
    {
      v5 |= 0x400uLL;
    }
  }

  return v5;
}

+ (id)textFormatFromUnderlineStyle:(unint64_t)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = v4;
  v6 = @"single";
  if (v3 == 2)
  {
    v6 = @"thick";
  }

  if (v3 == 9)
  {
    v7 = @"double";
  }

  else
  {
    v7 = v6;
  }

  [v4 setObject:v7 forKey:@"thickness"];
  if ((HIBYTE(v3) - 1) > 3u)
  {
    v8 = @"solid";
  }

  else
  {
    v8 = off_1AB538[(HIBYTE(v3) - 1)];
  }

  [v5 setObject:v8 forKey:@"pattern"];
  [v5 setObject:&__kCFBooleanFalse forKey:@"byWord"];
  return v5;
}

+ (id)textFormatWithCTAttributesForText:(id)a3 attributes:(id)a4
{
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:a3 forKey:@"text"];
  v7 = [a4 objectForKey:kCTFontAttributeName];
  if (!v7)
  {
    v7 = CTFontCreateWithName(@"Helvetica", 12.0, 0);
  }

  v8 = CTFontCopyPostScriptName(v7);
  v9 = CTFontCopyFamilyName(v7);
  v10 = CTFontCopyDisplayName(v7);
  [v6 setObject:v8 forKey:@"fontName"];
  [v6 setObject:v9 forKey:@"fontFamily"];
  v11 = CTFontGetSize(v7);
  *&v11 = v11;
  [v6 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v11), @"fontSize"}];
  [v6 setObject:+[MCTextConversion styleForFontDisplayName:andFamilyName:](MCTextConversion forKey:{"styleForFontDisplayName:andFamilyName:", v10, v9), @"fontStyle"}];
  [v6 setObject:+[MCTextConversion weightForFontDisplayName:andFamilyName:](MCTextConversion forKey:{"weightForFontDisplayName:andFamilyName:", v10, v9), @"fontWeight"}];
  v12 = [MCTextConversion stretchForFontDisplayName:v10 andFamilyName:v9];
  if (v12)
  {
    [v6 setObject:v12 forKey:@"fontStretch"];
  }

  v13 = [a4 objectForKey:kCTForegroundColorAttributeName];
  if (!v13)
  {
    v13 = +[MPUtilities blackCGColor];
  }

  [v6 setObject:+[MPUtilities stringFromCGColor:](MPUtilities forKey:{"stringFromCGColor:", v13), @"foregroundColor"}];
  v14 = [a4 objectForKey:@"backgroundColor"];
  if (v14)
  {
    [v6 setObject:+[MPUtilities stringFromCGColor:](MPUtilities forKey:{"stringFromCGColor:", v14), @"backgroundColor"}];
  }

  v15 = [a4 objectForKey:kCTParagraphStyleAttributeName];
  if (v15)
  {
    v16 = v15;
    valueBuffer = 0;
    if (CTParagraphStyleGetValueForSpecifier(v15, kCTParagraphStyleSpecifierAlignment, 1uLL, &valueBuffer))
    {
      [v6 setObject:+[MCTextConversion stringFromTextAlignment:](MCTextConversion forKey:{"stringFromTextAlignment:", valueBuffer), @"alignment"}];
    }

    v43 = 0.0;
    if (CTParagraphStyleGetValueForSpecifier(v16, kCTParagraphStyleSpecifierFirstLineHeadIndent, 8uLL, &v43))
    {
      HIDWORD(v17) = HIDWORD(v43);
      *&v17 = v43;
      [v6 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v17), @"firstLineHeadIndent"}];
    }

    valuePtr = 0.0;
    if (CTParagraphStyleGetValueForSpecifier(v16, kCTParagraphStyleSpecifierHeadIndent, 8uLL, &valuePtr))
    {
      HIDWORD(v18) = HIDWORD(valuePtr);
      *&v18 = valuePtr;
      [v6 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v18), @"headIndent"}];
    }
  }

  LODWORD(v43) = 0;
  v19 = [a4 objectForKey:@"shadow"];
  if (v19)
  {
    v20 = v19;
    v21 = +[NSMutableDictionary dictionary];
    v22 = [v20 objectForKey:@"color"];
    if (v22)
    {
      [v21 setObject:+[MPUtilities stringFromCGColor:](MPUtilities forKey:{"stringFromCGColor:", v22), @"color"}];
    }

    v23 = [v20 objectForKey:@"offset"];
    if (v23)
    {
      [v23 CGSizeValue];
      [v21 setObject:NSStringFromCGSize(v45) forKey:@"offset"];
    }

    v24 = [v20 objectForKey:@"blurRadius"];
    if (v24)
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v24, kCFNumberFloat32Type, &valuePtr);
      LODWORD(v25) = LODWORD(valuePtr);
      [v21 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v25), @"blurRadius"}];
    }

    [v6 setObject:v21 forKey:@"shadow"];
  }

  v26 = [a4 objectForKey:kCTUnderlineStyleAttributeName];
  if (v26)
  {
    v27 = v26;
    v28 = +[NSMutableDictionary dictionary];
    CFNumberGetValue(v27, kCFNumberSInt32Type, &v43);
    [v28 addEntriesFromDictionary:{+[MCTextConversion textFormatFromUnderlineStyle:](MCTextConversion, "textFormatFromUnderlineStyle:", SLODWORD(v43))}];
    v29 = [a4 objectForKey:kCTUnderlineColorAttributeName];
    if (v29)
    {
      [v28 setObject:+[MPUtilities stringFromCGColor:](MPUtilities forKey:{"stringFromCGColor:", v29), @"color"}];
    }

    [v6 setObject:v28 forKey:@"underline"];
  }

  v30 = [a4 objectForKey:kCTSuperscriptAttributeName];
  if (v30)
  {
    CFNumberGetValue(v30, kCFNumberSInt32Type, &v43);
    [v6 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", LODWORD(v43)), @"superscript"}];
  }

  v31 = [a4 objectForKey:kCTLigatureAttributeName];
  if (v31)
  {
    CFNumberGetValue(v31, kCFNumberSInt32Type, &v43);
    [v6 setObject:+[MCTextConversion stringFromLigature:](MCTextConversion forKey:{"stringFromLigature:", SLODWORD(v43)), @"ligature"}];
  }

  v32 = [a4 objectForKey:kCTKernAttributeName];
  if (v32)
  {
    CFNumberGetValue(v32, kCFNumberSInt32Type, &v43);
    [v6 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", LODWORD(v43)), @"kern"}];
  }

  v33 = [a4 objectForKey:kCTStrokeWidthAttributeName];
  if (v33)
  {
    v34 = v33;
    v35 = +[NSMutableDictionary dictionary];
    CFNumberGetValue(v34, kCFNumberSInt32Type, &v43);
    [v6 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", LODWORD(v43)), @"strokeWidth"}];
    v36 = [a4 objectForKey:kCTStrokeColorAttributeName];
    if (v36)
    {
      [v35 setObject:+[MPUtilities stringFromCGColor:](MPUtilities forKey:{"stringFromCGColor:", v36), @"strokeColor"}];
    }
  }

  v37 = [a4 objectForKey:@"strikethrough"];
  if (v37)
  {
    v38 = v37;
    v39 = +[NSMutableDictionary dictionary];
    LODWORD(v43) = [v38 integerValue];
    [v39 addEntriesFromDictionary:{+[MCTextConversion textFormatFromUnderlineStyle:](MCTextConversion, "textFormatFromUnderlineStyle:", SLODWORD(v43))}];
    v40 = [a4 objectForKey:kCTUnderlineColorAttributeName];
    if (v40)
    {
      [v39 setObject:+[MPUtilities stringFromCGColor:](MPUtilities forKey:{"stringFromCGColor:", v40), @"color"}];
    }

    [v6 setObject:v39 forKey:@"strikethrough"];
  }

  return v6;
}

+ (id)stringAttributesWithAttributedString:(id)a3
{
  v4 = [a3 length];
  v5 = [a3 string];
  v6 = +[NSMutableArray array];
  if (v4)
  {
    v7 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v8 = [a3 attributesAtIndex:v7 longestEffectiveRange:&v11 inRange:{v7, v4}];
      [v6 addObject:{+[MCTextConversion textFormatWithCTAttributesForText:attributes:](MCTextConversion, "textFormatWithCTAttributesForText:attributes:", objc_msgSend(v5, "substringWithRange:", v11, v12), v8)}];
      v9 = &v4[v7];
      v7 = v12 + v11;
      v4 = &v9[-v12 - v11];
    }

    while (v9 != (v12 + v11));
  }

  return v6;
}

+ (id)attributedStringWithCTAttributesFromStringAttributes:(id)a3
{
  v60 = objc_alloc_init(NSMutableAttributedString);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v4)
  {
    v5 = v4;
    v61 = *v68;
    v59 = kCTStrokeColorAttributeName;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v68 != v61)
        {
          objc_enumerationMutation(a3);
        }

        v7 = *(*(&v67 + 1) + 8 * i);
        v8 = [v7 objectForKey:{@"text", v59}];
        if (v8)
        {
          v9 = v8;
          if ([v8 length])
          {
            v10 = [[NSMutableAttributedString alloc] initWithString:v9];
            v11 = [v9 length];
            v12 = [v7 objectForKey:@"foregroundColor"];
            if (v12)
            {
              v13 = [MPUtilities CGColorFromString:v12];
              v74.location = 0;
              v74.length = v11;
              CFAttributedStringSetAttribute(v10, v74, kCTForegroundColorAttributeName, v13);
            }

            v62 = v11;
            v63 = v10;
            v14 = [v7 objectForKey:@"backgroundColor"];
            if (v14)
            {
              v15 = [MPUtilities CGColorFromString:v14];
              v75.length = v11;
              v75.location = 0;
              CFAttributedStringSetAttribute(v10, v75, @"backgroundColor", v15);
            }

            v16 = [v7 objectForKey:@"fontName"];
            if (v16)
            {
              v17 = v16;
              v18 = [v7 objectForKey:@"fontSize"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [v18 objectForKey:@"3x4"];
              }

              [v18 floatValue];
              v20 = CTFontCreateWithName(v17, v19, 0);
              v76.length = v62;
              v76.location = 0;
              CFAttributedStringSetAttribute(v10, v76, kCTFontAttributeName, v20);
            }

            v66 = 0;
            v64 = 0.0;
            v65 = 0.0;
            v21 = [v7 objectForKey:@"alignment"];
            if (v21)
            {
              v66 = [MCTextConversion textAlignmentFromString:v21];
              v22 = v72;
              v23 = 1;
              *&settings[0].spec = 0;
              settings[0].valueSize = 1;
              settings[0].value = &v66;
            }

            else
            {
              v23 = 0;
              v22 = settings;
            }

            v24 = [v7 objectForKey:@"firstLineHeadIndent"];
            if (v24)
            {
              [v24 floatValue];
              v65 = v25;
              ++v23;
              *&v22->spec = 1;
              v22->valueSize = 8;
              v22->value = &v65;
            }

            v26 = [v7 objectForKey:@"headIndent"];
            if (v26)
            {
              [v26 floatValue];
              v64 = v27;
              v28 = &settings[v23];
              *&v28->spec = 2;
              ++v23;
              v28->valueSize = 8;
              v28->value = &v64;
              goto LABEL_24;
            }

            if (v23)
            {
LABEL_24:
              v29 = CTParagraphStyleCreate(settings, v23);
              v77.length = v62;
              v77.location = 0;
              CFAttributedStringSetAttribute(v10, v77, kCTParagraphStyleAttributeName, v29);
              CFRelease(v29);
            }

            v30 = [v7 objectForKey:@"shadow"];
            v31 = &kCTUnderlineColorAttributeName_ptr;
            if (v30)
            {
              v32 = v30;
              v33 = +[NSMutableDictionary dictionary];
              v34 = [v32 objectForKey:@"color"];
              if (v34)
              {
                [v33 setObject:+[MPUtilities CGColorFromString:](MPUtilities forKey:{"CGColorFromString:", v34), @"color"}];
              }

              v35 = [v32 objectForKey:@"offset"];
              if (v35)
              {
                v36 = CGSizeFromString(v35);
                [v33 setObject:+[NSValue valueWithCGSize:](NSValue forKey:{"valueWithCGSize:", v36.width, v36.height), @"offset"}];
              }

              v37 = [v32 objectForKey:@"blurRadius"];
              v31 = &kCTUnderlineColorAttributeName_ptr;
              if (v37)
              {
                [v37 floatValue];
                [v33 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"blurRadius"}];
              }

              v78.length = v62;
              v78.location = 0;
              CFAttributedStringSetAttribute(v63, v78, @"shadow", v33);
            }

            v38 = [v7 objectForKey:@"underline"];
            if (v38)
            {
              v39 = v38;
              v40 = [v38 objectForKey:@"color"];
              if (v40)
              {
                v41 = [MPUtilities CGColorFromString:v40];
                v79.location = 0;
                v79.length = v62;
                CFAttributedStringSetAttribute(v63, v79, kCTForegroundColorAttributeName, v41);
              }

              v42 = [(CFStringRef *)v31[26] numberWithInt:[MCTextConversion underlineStyleFromTextFormat:v39]];
              v80.location = 0;
              v80.length = v62;
              CFAttributedStringSetAttribute(v63, v80, kCTUnderlineStyleAttributeName, v42);
            }

            v43 = [v7 objectForKey:@"strikethrough"];
            if (v43)
            {
              v44 = v43;
              v45 = [v43 objectForKey:@"color"];
              if (v45)
              {
                v46 = [MPUtilities CGColorFromString:v45];
                v81.location = 0;
                v81.length = v62;
                CFAttributedStringSetAttribute(v63, v81, kCTForegroundColorAttributeName, v46);
              }

              v47 = [(CFStringRef *)v31[26] numberWithUnsignedInteger:[MCTextConversion underlineStyleFromTextFormat:v44]];
              v82.location = 0;
              v82.length = v62;
              CFAttributedStringSetAttribute(v63, v82, @"strikethrough", v47);
            }

            v48 = [v7 objectForKey:@"superscript"];
            if (v48)
            {
              v49 = -[CFStringRef numberWithInt:](v31[26], "numberWithInt:", [v48 intValue]);
              v83.location = 0;
              v83.length = v62;
              CFAttributedStringSetAttribute(v63, v83, kCTSuperscriptAttributeName, v49);
            }

            v50 = [v7 objectForKey:@"ligature"];
            if (v50)
            {
              v51 = -[CFStringRef numberWithInt:](v31[26], "numberWithInt:", [v50 intValue]);
              v84.location = 0;
              v84.length = v62;
              CFAttributedStringSetAttribute(v63, v84, kCTLigatureAttributeName, v51);
            }

            v52 = [v7 objectForKey:@"kern"];
            if (v52)
            {
              v53 = -[CFStringRef numberWithInt:](v31[26], "numberWithInt:", [v52 intValue]);
              v85.location = 0;
              v85.length = v62;
              CFAttributedStringSetAttribute(v63, v85, kCTKernAttributeName, v53);
            }

            v54 = [v7 objectForKey:@"strokeWidth"];
            if (v54)
            {
              v55 = -[CFStringRef numberWithInt:](v31[26], "numberWithInt:", [v54 intValue]);
              v86.location = 0;
              v86.length = v62;
              CFAttributedStringSetAttribute(v63, v86, kCTStrokeWidthAttributeName, v55);
              v56 = [v7 objectForKey:@"strokeColor"];
              if (v56)
              {
                v57 = [MPUtilities CGColorFromString:v56];
                v87.location = 0;
                v87.length = v62;
                CFAttributedStringSetAttribute(v63, v87, v59, v57);
              }
            }

            [v60 appendAttributedString:v63];

            continue;
          }
        }
      }

      v5 = [a3 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v5);
  }

  return v60;
}

+ (id)attributedStringWithNSAttributesFromStringAttributes:(id)a3
{
  v3 = objc_alloc_init(NSMutableAttributedString);

  return v3;
}

@end