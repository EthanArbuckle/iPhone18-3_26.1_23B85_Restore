@interface OFTextConversion
+ (CGColor)CGColorFromString:(id)a3;
+ (CGColor)blackCGColor;
+ (id)attributedStringWithCTAttributesFromStringAttributes:(id)a3 scaleFactor:(double)a4;
+ (id)attributedStringWithNSAttributesFromStringAttributes:(id)a3 scaleFactor:(double)a4;
+ (id)stretchForFontDisplayName:(id)a3 andFamilyName:(id)a4;
+ (id)stringAttributesWithAttributedString:(id)a3 scaleFactor:(double)a4;
+ (id)stringFromCGColor:(CGColor *)a3;
+ (id)stringFromLigature:(int64_t)a3;
+ (id)stringFromTextAlignment:(int64_t)a3;
+ (id)styleForFontDisplayName:(id)a3 andFamilyName:(id)a4;
+ (id)textFormatFromUnderlineStyle:(unint64_t)a3;
+ (id)textFormatWithCTAttributesForText:(id)a3 attributes:(id)a4 scaleFactor:(double)a5;
+ (id)weightForFontDisplayName:(id)a3 andFamilyName:(id)a4;
+ (int64_t)ligatureFromString:(id)a3;
+ (int64_t)textAlignmentFromString:(id)a3;
+ (unint64_t)underlineStyleFromTextFormat:(id)a3;
@end

@implementation OFTextConversion

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
    return off_279C8A328[a3];
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
    return off_279C8A340[a3];
  }
}

+ (id)stringFromCGColor:(CGColor *)a3
{
  if (!a3)
  {
    return 0;
  }

  Components = CGColorGetComponents(a3);
  v4 = *Components;
  v5 = *(Components + 1);
  v6 = *(Components + 2);
  v7 = *(Components + 3);

  return NSStringFromCGRect(*&v4);
}

+ (CGColor)CGColorFromString:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  components = CGRectFromString(a3);
  v3 = +[OFTextConversion newColorSpaceForDevice];
  v4 = CGColorCreate(v3, &components.origin.x);
  CGColorSpaceRelease(v3);
  return v4;
}

+ (CGColor)blackCGColor
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [OFTextConversion newColorSpaceForDevice:0];
  v3 = CGColorCreate(v2, &v5);
  CGColorSpaceRelease(v2);
  return v3;
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
  v4 = [MEMORY[0x277CBEB38] dictionary];
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
    v8 = off_279C8A358[(HIBYTE(v3) - 1)];
  }

  [v5 setObject:v8 forKey:@"pattern"];
  [v5 setObject:MEMORY[0x277CBEC28] forKey:@"byWord"];
  return v5;
}

+ (id)textFormatWithCTAttributesForText:(id)a3 attributes:(id)a4 scaleFactor:(double)a5
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:a3 forKey:@"text"];
  v9 = [a4 objectForKey:*MEMORY[0x277CC4838]];
  if (!v9)
  {
    v9 = CTFontCreateWithName(@"Helvetica", 12.0, 0);
  }

  v10 = CTFontCopyPostScriptName(v9);
  v11 = CTFontCopyFamilyName(v9);
  v12 = CTFontCopyDisplayName(v9);
  [v8 setObject:v10 forKey:@"fontName"];
  [v8 setObject:v11 forKey:@"fontFamily"];
  v13 = MEMORY[0x277CCABB0];
  v14 = CTFontGetSize(v9) / a5;
  *&v14 = v14;
  [v8 setObject:objc_msgSend(v13 forKey:{"numberWithFloat:", v14), @"fontSize"}];
  [v8 setObject:+[OFTextConversion styleForFontDisplayName:andFamilyName:](OFTextConversion forKey:{"styleForFontDisplayName:andFamilyName:", v12, v11), @"fontStyle"}];
  [v8 setObject:+[OFTextConversion weightForFontDisplayName:andFamilyName:](OFTextConversion forKey:{"weightForFontDisplayName:andFamilyName:", v12, v11), @"fontWeight"}];
  v15 = [OFTextConversion stretchForFontDisplayName:v12 andFamilyName:v11];
  if (v15)
  {
    [v8 setObject:v15 forKey:@"fontStretch"];
  }

  v16 = [a4 objectForKey:*MEMORY[0x277CC49C0]];
  if (!v16)
  {
    v16 = +[OFTextConversion blackCGColor];
  }

  [v8 setObject:+[OFTextConversion stringFromCGColor:](OFTextConversion forKey:{"stringFromCGColor:", v16), @"foregroundColor"}];
  v17 = [a4 objectForKey:@"backgroundColor"];
  if (v17)
  {
    [v8 setObject:+[OFTextConversion stringFromCGColor:](OFTextConversion forKey:{"stringFromCGColor:", v17), @"backgroundColor"}];
  }

  v18 = [a4 objectForKey:*MEMORY[0x277CC49F8]];
  if (v18)
  {
    v19 = v18;
    valueBuffer = 0;
    if (CTParagraphStyleGetValueForSpecifier(v18, kCTParagraphStyleSpecifierAlignment, 1uLL, &valueBuffer))
    {
      [v8 setObject:+[OFTextConversion stringFromTextAlignment:](OFTextConversion forKey:{"stringFromTextAlignment:", valueBuffer), @"alignment"}];
    }

    v47 = 0.0;
    if (CTParagraphStyleGetValueForSpecifier(v19, kCTParagraphStyleSpecifierFirstLineHeadIndent, 8uLL, &v47))
    {
      HIDWORD(v20) = HIDWORD(v47);
      *&v20 = v47;
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v20), @"firstLineHeadIndent"}];
    }

    valuePtr = 0.0;
    if (CTParagraphStyleGetValueForSpecifier(v19, kCTParagraphStyleSpecifierHeadIndent, 8uLL, &valuePtr))
    {
      HIDWORD(v21) = HIDWORD(valuePtr);
      *&v21 = valuePtr;
      [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v21), @"headIndent"}];
    }
  }

  LODWORD(v47) = 0;
  v22 = [a4 objectForKey:@"shadow"];
  if (v22)
  {
    v23 = v22;
    v24 = [MEMORY[0x277CBEB38] dictionary];
    v25 = [v23 objectForKey:@"color"];
    if (v25)
    {
      [v24 setObject:+[OFTextConversion stringFromCGColor:](OFTextConversion forKey:{"stringFromCGColor:", v25), @"color"}];
    }

    v26 = [v23 objectForKey:@"offset"];
    if (v26)
    {
      [v26 CGSizeValue];
      [v24 setObject:NSStringFromCGSize(v49) forKey:@"offset"];
    }

    v27 = [v23 objectForKey:@"blurRadius"];
    if (v27)
    {
      LODWORD(valuePtr) = 0;
      CFNumberGetValue(v27, kCFNumberFloat32Type, &valuePtr);
      LODWORD(v28) = LODWORD(valuePtr);
      [v24 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v28), @"blurRadius"}];
    }

    [v8 setObject:v24 forKey:@"shadow"];
  }

  v29 = [a4 objectForKey:*MEMORY[0x277CC4AC0]];
  v30 = MEMORY[0x277CC4AB8];
  if (v29)
  {
    v31 = v29;
    v32 = [MEMORY[0x277CBEB38] dictionary];
    CFNumberGetValue(v31, kCFNumberSInt32Type, &v47);
    [v32 addEntriesFromDictionary:{+[OFTextConversion textFormatFromUnderlineStyle:](OFTextConversion, "textFormatFromUnderlineStyle:", SLODWORD(v47))}];
    v33 = [a4 objectForKey:*v30];
    if (v33)
    {
      [v32 setObject:+[OFTextConversion stringFromCGColor:](OFTextConversion forKey:{"stringFromCGColor:", v33), @"color"}];
    }

    [v8 setObject:v32 forKey:@"underline"];
  }

  v34 = [a4 objectForKey:*MEMORY[0x277CC4A18]];
  if (v34)
  {
    CFNumberGetValue(v34, kCFNumberSInt32Type, &v47);
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", LODWORD(v47)), @"superscript"}];
  }

  v35 = [a4 objectForKey:*MEMORY[0x277CC49F0]];
  if (v35)
  {
    CFNumberGetValue(v35, kCFNumberSInt32Type, &v47);
    [v8 setObject:+[OFTextConversion stringFromLigature:](OFTextConversion forKey:{"stringFromLigature:", SLODWORD(v47)), @"ligature"}];
  }

  v36 = [a4 objectForKey:*MEMORY[0x277CC49E0]];
  if (v36)
  {
    CFNumberGetValue(v36, kCFNumberSInt32Type, &v47);
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", LODWORD(v47)), @"kern"}];
  }

  v37 = [a4 objectForKey:*MEMORY[0x277CC4A10]];
  if (v37)
  {
    v38 = v37;
    v39 = [MEMORY[0x277CBEB38] dictionary];
    CFNumberGetValue(v38, kCFNumberSInt32Type, &v47);
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", LODWORD(v47)), @"strokeWidth"}];
    v40 = [a4 objectForKey:*MEMORY[0x277CC4A08]];
    if (v40)
    {
      [v39 setObject:+[OFTextConversion stringFromCGColor:](OFTextConversion forKey:{"stringFromCGColor:", v40), @"strokeColor"}];
    }
  }

  v41 = [a4 objectForKey:@"strikethrough"];
  if (v41)
  {
    v42 = v41;
    v43 = [MEMORY[0x277CBEB38] dictionary];
    LODWORD(v47) = [v42 integerValue];
    [v43 addEntriesFromDictionary:{+[OFTextConversion textFormatFromUnderlineStyle:](OFTextConversion, "textFormatFromUnderlineStyle:", SLODWORD(v47))}];
    v44 = [a4 objectForKey:*v30];
    if (v44)
    {
      [v43 setObject:+[OFTextConversion stringFromCGColor:](OFTextConversion forKey:{"stringFromCGColor:", v44), @"color"}];
    }

    [v8 setObject:v43 forKey:@"strikethrough"];
  }

  return v8;
}

+ (id)stringAttributesWithAttributedString:(id)a3 scaleFactor:(double)a4
{
  v6 = [a3 length];
  v7 = [a3 string];
  v8 = [MEMORY[0x277CBEB18] array];
  if (v6)
  {
    v9 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v10 = [a3 attributesAtIndex:v9 longestEffectiveRange:&v13 inRange:{v9, v6}];
      [v8 addObject:{+[OFTextConversion textFormatWithCTAttributesForText:attributes:scaleFactor:](OFTextConversion, "textFormatWithCTAttributesForText:attributes:scaleFactor:", objc_msgSend(v7, "substringWithRange:", v13, v14), v10, a4)}];
      v11 = v9 + v6;
      v9 = v14 + v13;
      v6 = v11 - (v14 + v13);
    }

    while (v11 != v14 + v13);
  }

  return v8;
}

+ (id)attributedStringWithCTAttributesFromStringAttributes:(id)a3 scaleFactor:(double)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v74 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v81 objects:v87 count:16];
  if (v6)
  {
    v7 = v6;
    attrName = *MEMORY[0x277CC49C0];
    v76 = *v82;
    v72 = *MEMORY[0x277CC4838];
    v73 = *MEMORY[0x277CC49F8];
    v70 = *MEMORY[0x277CC4A18];
    v71 = *MEMORY[0x277CC4AC0];
    v68 = *MEMORY[0x277CC49E0];
    v69 = *MEMORY[0x277CC49F0];
    v66 = *MEMORY[0x277CC4A08];
    v67 = *MEMORY[0x277CC4A10];
    v8 = 0x279C89000uLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v82 != v76)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v81 + 1) + 8 * i);
        v11 = [v10 objectForKey:@"text"];
        if (v11)
        {
          v12 = v11;
          if ([v11 length])
          {
            v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v12];
            v14 = [v12 length];
            v15 = [v10 objectForKey:@"foregroundColor"];
            if (v15)
            {
              v16 = [*(v8 + 1872) CGColorFromString:v15];
              v89.location = 0;
              v89.length = v14;
              CFAttributedStringSetAttribute(v13, v89, attrName, v16);
            }

            aStr = v13;
            v17 = [v10 objectForKey:@"backgroundColor"];
            v18 = v14;
            if (v17)
            {
              v19 = [*(v8 + 1872) CGColorFromString:v17];
              v90.location = 0;
              v90.length = v14;
              CFAttributedStringSetAttribute(aStr, v90, @"backgroundColor", v19);
            }

            v20 = [v10 objectForKey:@"fontName"];
            if (v20)
            {
              v21 = v20;
              [objc_msgSend(v10 objectForKey:{@"fontSize", "floatValue"}];
              v23 = CTFontCreateWithName(v21, v22 * a4, 0);
              v91.location = 0;
              v91.length = v14;
              CFAttributedStringSetAttribute(aStr, v91, v72, v23);
            }

            v80 = 0;
            v78 = 0.0;
            v79 = 0.0;
            v24 = [v10 objectForKey:@"alignment"];
            if (v24)
            {
              v80 = [*(v8 + 1872) textAlignmentFromString:v24];
              v25 = v86;
              v26 = 1;
              *&settings[0].spec = 0;
              settings[0].valueSize = 1;
              settings[0].value = &v80;
            }

            else
            {
              v26 = 0;
              v25 = settings;
            }

            v27 = [v10 objectForKey:@"firstLineHeadIndent"];
            if (v27)
            {
              [v27 floatValue];
              v79 = v28;
              ++v26;
              *&v25->spec = 1;
              v25->valueSize = 8;
              v25->value = &v79;
            }

            v29 = [v10 objectForKey:@"headIndent"];
            if (v29)
            {
              [v29 floatValue];
              v78 = v30;
              v31 = &settings[v26];
              *&v31->spec = 2;
              ++v26;
              v31->valueSize = 8;
              v31->value = &v78;
              goto LABEL_22;
            }

            if (v26)
            {
LABEL_22:
              v32 = CTParagraphStyleCreate(settings, v26);
              v92.location = 0;
              v92.length = v14;
              CFAttributedStringSetAttribute(aStr, v92, v73, v32);
              CFRelease(v32);
            }

            v33 = [v10 objectForKey:@"shadow"];
            v34 = 0x277CCA000;
            if (v33)
            {
              v35 = v33;
              v36 = [MEMORY[0x277CBEB38] dictionary];
              v37 = [v35 objectForKey:@"color"];
              if (v37)
              {
                [v36 setObject:+[OFTextConversion CGColorFromString:](OFTextConversion forKey:{"CGColorFromString:", v37), @"color"}];
              }

              v38 = [v35 objectForKey:@"offset"];
              if (v38)
              {
                v39 = v18;
                v40 = MEMORY[0x277CCAE60];
                v41 = CGSizeFromString(v38);
                v42 = v40;
                v18 = v39;
                [v36 setObject:objc_msgSend(v42 forKey:{"valueWithCGSize:", v41.width, v41.height), @"offset"}];
              }

              v43 = [v35 objectForKey:@"blurRadius"];
              v34 = 0x277CCA000uLL;
              if (v43)
              {
                v44 = MEMORY[0x277CCABB0];
                [v43 floatValue];
                [v36 setObject:objc_msgSend(v44 forKey:{"numberWithFloat:"), @"blurRadius"}];
              }

              v93.location = 0;
              v93.length = v18;
              CFAttributedStringSetAttribute(aStr, v93, @"shadow", v36);
            }

            v45 = [v10 objectForKey:@"underline"];
            if (v45)
            {
              v46 = v45;
              v47 = [v45 objectForKey:@"color"];
              if (v47)
              {
                v48 = [OFTextConversion CGColorFromString:v47];
                v94.location = 0;
                v94.length = v18;
                CFAttributedStringSetAttribute(aStr, v94, attrName, v48);
              }

              v49 = [*(v34 + 2992) numberWithInt:{+[OFTextConversion underlineStyleFromTextFormat:](OFTextConversion, "underlineStyleFromTextFormat:", v46)}];
              v95.location = 0;
              v95.length = v18;
              CFAttributedStringSetAttribute(aStr, v95, v71, v49);
            }

            v50 = [v10 objectForKey:@"strikethrough"];
            if (v50)
            {
              v51 = v50;
              v52 = [v50 objectForKey:@"color"];
              if (v52)
              {
                v53 = [OFTextConversion CGColorFromString:v52];
                v96.location = 0;
                v96.length = v18;
                CFAttributedStringSetAttribute(aStr, v96, attrName, v53);
              }

              v54 = [*(v34 + 2992) numberWithUnsignedInteger:{+[OFTextConversion underlineStyleFromTextFormat:](OFTextConversion, "underlineStyleFromTextFormat:", v51)}];
              v97.location = 0;
              v97.length = v18;
              CFAttributedStringSetAttribute(aStr, v97, @"strikethrough", v54);
            }

            v55 = [v10 objectForKey:@"superscript"];
            if (v55)
            {
              v56 = [*(v34 + 2992) numberWithInt:{objc_msgSend(v55, "intValue")}];
              v98.location = 0;
              v98.length = v18;
              CFAttributedStringSetAttribute(aStr, v98, v70, v56);
            }

            v57 = [v10 objectForKey:@"ligature"];
            if (v57)
            {
              v58 = [*(v34 + 2992) numberWithInt:{objc_msgSend(v57, "intValue")}];
              v99.location = 0;
              v99.length = v18;
              CFAttributedStringSetAttribute(aStr, v99, v69, v58);
            }

            v59 = [v10 objectForKey:@"kern"];
            if (v59)
            {
              v60 = [*(v34 + 2992) numberWithInt:{objc_msgSend(v59, "intValue")}];
              v100.location = 0;
              v100.length = v18;
              CFAttributedStringSetAttribute(aStr, v100, v68, v60);
            }

            v61 = [v10 objectForKey:@"strokeWidth"];
            if (v61)
            {
              v62 = [*(v34 + 2992) numberWithInt:{objc_msgSend(v61, "intValue")}];
              v101.location = 0;
              v101.length = v18;
              CFAttributedStringSetAttribute(aStr, v101, v67, v62);
              v63 = [v10 objectForKey:@"strokeColor"];
              if (v63)
              {
                v64 = [OFTextConversion CGColorFromString:v63];
                v102.location = 0;
                v102.length = v18;
                CFAttributedStringSetAttribute(aStr, v102, v66, v64);
              }
            }

            [v74 appendAttributedString:aStr];

            v8 = 0x279C89000;
            continue;
          }
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v81 objects:v87 count:16];
    }

    while (v7);
  }

  return v74;
}

+ (id)attributedStringWithNSAttributesFromStringAttributes:(id)a3 scaleFactor:(double)a4
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB48]);

  return v4;
}

@end