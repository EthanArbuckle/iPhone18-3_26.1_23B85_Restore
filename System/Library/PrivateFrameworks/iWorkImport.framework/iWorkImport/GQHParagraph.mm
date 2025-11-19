@interface GQHParagraph
+ (BOOL)retrieveFontSizeForFirstCharacter:(id)a3 fontSize:(float *)a4;
+ (BOOL)setupBulletStatesForParagraphStyle:(id)a3 paragraph:(id)a4 state:(id)a5 bulletStates:(__CFDictionary *)a6;
+ (__CFDictionary)prepareBullet:(id)a3 paragraph:(id)a4 style:(id)a5 state:(id)a6 bulletStates:(__CFDictionary *)a7 showBullet:(BOOL)a8;
+ (id)getBulletStyle:(id)a3 level:(int)a4;
+ (int)handleBookmark:(id)a3 state:(id)a4;
+ (int)handleInlineList:(id)a3 state:(id)a4;
+ (int)handleLink:(id)a3 state:(id)a4;
+ (int)mapParagraphStyle:(id)a3 paragraph:(id)a4 state:(id)a5 bulletStates:(__CFDictionary *)a6 isMultiColumn:(BOOL)a7;
+ (void)mapBullet:(__CFDictionary *)a3 state:(id)a4;
@end

@implementation GQHParagraph

+ (int)handleInlineList:(id)a3 state:(id)a4
{
  v6 = [a3 children];
  Count = CFArrayGetCount(v6);
  v8 = [GQHTextSpan nonWhitespaceCount:v6];
  v9 = Count;
  if (Count)
  {
    v10 = 0;
    v11 = v8;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [a4 inContent];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [GQHTextSpan handleSpan:ValueAtIndex checkForTrailingBlanks:v10 >= v11 state:a4];
LABEL_12:
        v14 = v13;
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [a1 handleLink:ValueAtIndex state:a4];
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [a1 handleBookmark:ValueAtIndex state:a4];
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [a4 htmlDoc];
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v15 = [a4 htmlDoc];
        if ((isKindOfClass & 1) == 0)
        {
          v14 = [GQHTextSpan handleTextListChild:ValueAtIndex outputBlanks:v10 < v11 state:a4];
          goto LABEL_13;
        }
      }

      v29 = v15;
      [v15 startElement:"span"];
      if ([a4 implicitStyle])
      {
        break;
      }

LABEL_46:
      v14 = [GQHTextSpan handleTextListChild:ValueAtIndex outputBlanks:v10 < v11 state:a4];
      [v29 endElement];
LABEL_13:
      if (++v10 >= v9 || v14 != 1)
      {
        return v14;
      }
    }

    v32 = 0;
    v17 = [a4 implicitStyle];
    v18 = objc_alloc_init(GQHStyle);
    if (![v17 hasValueForIntProperty:21 value:&v32])
    {
      if ([v17 hasValueForIntProperty:20 value:&v32])
      {
        if (v32 < 1)
        {
          v21 = &off_9D068;
        }

        else
        {
          v21 = &off_9D070;
        }

        [(GQHStyle *)v18 addAttribute:off_9CF58 value:*v21];
      }

      goto LABEL_32;
    }

    if (v32 == 2)
    {
      v19 = off_9CF58;
      v20 = &off_9D068;
    }

    else
    {
      if (v32 != 1)
      {
LABEL_32:
        v22 = a1;
        v30 = 0;
        v31 = 0;
        v23 = [v17 hasValueForIntProperty:11 value:&v31];
        v24 = [v17 hasValueForIntProperty:7 value:&v30];
        if (v30)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (v23 && v31)
        {
          if (v25)
          {
            v26 = CFStringCreateWithFormat(0, 0, @"%@ %@", off_9D018, off_9D088);
            [(GQHStyle *)v18 addAttribute:off_9CF48 value:v26];
            CFRelease(v26);
          }

          else
          {
            [(GQHStyle *)v18 addAttribute:off_9CF48 value:off_9D018];
          }

          a1 = v22;
        }

        else
        {
          a1 = v22;
          if (v25)
          {
            v27 = &off_9D088;
          }

          else
          {
            v27 = &off_9D028;
          }

          [(GQHStyle *)v18 addAttribute:off_9CF48 value:*v27];
        }

        [GQHTextSpan handleTextBackgroundForStyle:v17 destStyle:v18 state:a4];
        [(GQHStyle *)v18 setStyleOnCurrentNode:a4];

        goto LABEL_46;
      }

      v19 = off_9CF58;
      v20 = &off_9D070;
    }

    [(GQHStyle *)v18 addAttribute:v19 value:*v20];
    [GQHTextStyle reduceFontSizeForSuperscriptedText:v17 style:v18 state:a4];
    goto LABEL_32;
  }

  return 1;
}

+ (int)handleLink:(id)a3 state:(id)a4
{
  v7 = [a4 htmlDoc];
  v8 = [a3 href];
  if ([a4 shouldMapLinkWithUrl:v8] && (v9 = +[GQHUtils createHtmlHrefForLinkUri:state:](GQHUtils, "createHtmlHrefForLinkUri:state:", v8, a4)) != 0)
  {
    v10 = v9;
    [v7 startElement:"a"];
    [v7 setAttribute:"href" cfStringValue:v10];
    CFRelease(v10);
    [v7 setAttribute:"title" cfStringValue:v8];
  }

  else
  {
    [v7 startElement:"span"];
  }

  if ([a3 characterStyle])
  {
    v11 = objc_alloc_init(GQHStyle);
    +[GQHTextStyle mapStyle:style:state:](GQHTextStyle, "mapStyle:style:state:", [a3 characterStyle], v11, a4);
    -[GQHStyle setStyleOnCurrentNode:mappingBaseStyleClass:baseClassType:](v11, "setStyleOnCurrentNode:mappingBaseStyleClass:baseClassType:", a4, [a3 characterStyle], objc_opt_class());
  }

  v12 = [a1 handleInlineList:a3 state:a4];
  [v7 endElement];
  return v12;
}

+ (int)handleBookmark:(id)a3 state:(id)a4
{
  v7 = [a4 htmlDoc];
  v8 = [a3 name];
  if (v8)
  {
    v9 = v8;
    [v7 startElement:"a"];
    [v7 setAttribute:"name" cfStringValue:v9];
    [v7 endElement];
  }

  return [a1 handleInlineList:a3 state:a4];
}

+ (BOOL)setupBulletStatesForParagraphStyle:(id)a3 paragraph:(id)a4 state:(id)a5 bulletStates:(__CFDictionary *)a6
{
  v9 = [a3 valueForObjectProperty:{38, a4, a5}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = v9;
  if ([v9 parent])
  {
    v11 = v10;
    do
    {
      v11 = [v11 parent];
    }

    while ([v11 parent]);
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(a6, v11, &value))
  {
    value = objc_alloc_init(GQHBulletState);
    CFDictionaryAddValue(a6, v11, value);
  }

  v12 = [a4 listLevel];
  v13 = v12;
  v14 = 0;
  if ((v12 & 0x80000000) == 0 && dword_9CDF8 >= v12)
  {
    [value setCurrentLevel:v12];
    v15 = [v10 valueForObjectProperty:55];
    if (v15)
    {
      v16 = [CFArrayGetValueAtIndex(v15 v13 & 0x7FFFFFFF)];
      [value setBulletIndent:v16 level:v13];
    }

    v17 = [v10 valueForObjectProperty:54];
    if (v17)
    {
      v18 = [CFArrayGetValueAtIndex(v17 v13 & 0x7FFFFFFF)];
      [value setTextIndent:v18 level:v13];
    }

    v19 = [v10 valueForObjectProperty:56];
    if (!v19)
    {
      goto LABEL_18;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v19, v13 & 0x7FFFFFFF);
    if (!ValueAtIndex)
    {
      goto LABEL_18;
    }

    v21 = ValueAtIndex;
    v22 = [ValueAtIndex type];
    switch(v22)
    {
      case 2u:
        v25 = [v21 label];
        if (!v25)
        {
          goto LABEL_28;
        }

        v26 = v25;
        if (![v25 labelType])
        {
          goto LABEL_28;
        }

        v27 = [v26 format];
        v33.length = CFStringGetLength(v27);
        v33.location = 0;
        v28 = CFStringFindWithOptions(v27, @"P", v33, 1uLL, 0);
        v29 = [a4 restartList];
        if ([value listStyleAtLevel:v13] == v11 && (v29 & 1) == 0 && objc_msgSend(value, "hasNumberAtLevel:", v13))
        {
          v30 = ([value numberAtLevel:v13] + 1);
        }

        else
        {
          v30 = [a3 valueForIntProperty:39];
        }

        [value setNumber:v30 level:v13];
        [value setLabelType:objc_msgSend(v26 level:{"labelType"), v13}];
        v23 = value;
        if (v28)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        break;
      case 1u:
        v23 = value;
        v24 = 4;
        break;
      case 0u:
LABEL_18:
        [value setType:0 level:v13];
        v14 = 0;
LABEL_29:
        [value setListStyle:v11 atLevel:v13];
        return v14;
      default:
LABEL_28:
        v14 = 1;
        goto LABEL_29;
    }

    [v23 setType:v24 level:v13];
    goto LABEL_28;
  }

  return v14;
}

+ (__CFDictionary)prepareBullet:(id)a3 paragraph:(id)a4 style:(id)a5 state:(id)a6 bulletStates:(__CFDictionary *)a7 showBullet:(BOOL)a8
{
  v8 = a8;
  v15 = [a3 valueForObjectProperty:38];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = v15;
  if ([v15 parent])
  {
    v17 = v16;
    do
    {
      v17 = [v17 parent];
    }

    while ([v17 parent]);
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(a7, v17, &value))
  {
    value = objc_alloc_init(GQHBulletState);
    CFDictionaryAddValue(a7, v17, value);
  }

  v18 = [v16 valueForObjectProperty:56];
  if (!v18 || (ValueAtIndex = CFArrayGetValueAtIndex(v18, [value currentLevel])) == 0)
  {
    [value currentLevel];
    return 0;
  }

  v20 = ValueAtIndex;
  v21 = [ValueAtIndex type];
  v51 = [value currentLevel];
  v22 = 0;
  if (!v21)
  {
    return 0;
  }

  if (v21 != 2)
  {
    goto LABEL_22;
  }

  v23 = [v20 label];
  v22 = v23;
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = [(__CFString *)v23 labelType];
  v25 = [(__CFString *)v22 format];
  v26 = v25;
  if (v24)
  {
    v57.length = CFStringGetLength(v25);
    v57.location = 0;
    if (!CFStringFindWithOptions(v26, @"P", v57, 1uLL, 0))
    {
      v30 = [(__CFString *)v22 labelType];
      v22 = +[GQHBulletState createLabelStr:number:](GQHBulletState, "createLabelStr:number:", v30, [value numberAtLevel:v51]);
      CFStringAppend(v22, @".");
      goto LABEL_22;
    }

    MutableCopy = [value createTieredNumberStringForLevel:v51];
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, v25);
  }

  v22 = MutableCopy;
LABEL_22:
  v55 = 0;
  v31 = [a3 overridesFloatProperty:23 value:&v55 + 4];
  v50 = [a3 overridesFloatProperty:24 value:&v55];
  if (v8)
  {
    v48 = v31;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v32 = [value bulletIndentForLevel:v51];
    v49 = [value textIndentForLevel:v51];
    v54 = 0;
    if ([a5 getAttribute:off_9CEF0 trblValue:&v54])
    {
      v33 = v54;
      v34 = v54;
    }

    else
    {
      v34 = objc_alloc_init(GQHTrbl);
      v54 = v34;
    }

    [(GQHTrbl *)v34 setLeft:(*&v55 + (v49 + v32))];
    [a5 addAttribute:off_9CEF0 trblValue:v54];

    v35 = [a1 getBulletStyle:v16 level:v51];
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = a3;
    }

    v37 = objc_alloc_init(GQHStyle);
    [GQHTextStyle mapStyle:v36 style:v37 state:a6];
    v53 = 0;
    if ([v16 overridesObjectProperty:57 value:&v53] && objc_msgSend(objc_msgSend(v53, "objectAtIndex:", v51), "scaleWithText"))
    {
      v52 = 0.0;
      if (![GQHParagraph retrieveFontSizeForFirstCharacter:a4 fontSize:&v52])
      {
        [a3 hasValueForFloatProperty:2 value:&v52];
      }

      v38 = v52;
      if (v52 != 0.0)
      {
        v39 = [a6 textScale];
        v38 = v52;
        if (v39)
        {
          v38 = floorf((v52 * [a6 textScale]) / 100.0);
          v52 = v38;
        }
      }

      v40 = off_9CE78;
      [objc_msgSend(v53 objectAtIndex:{v51), "scale"}];
      [(GQHStyle *)v37 addAttribute:v40 intValue:(v38 * v41)];
    }

    [(GQHStyle *)v37 addAttribute:off_9CF38 intValue:0];
    [(GQHStyle *)v37 addAttribute:off_9CF18 value:off_9D040];
    [(GQHStyle *)v37 addAttribute:off_9CEA0 pxValue:llroundf(-v49)];
    [(GQHStyle *)v37 addAttribute:off_9CF48 value:off_9D028];
    [(GQHStyle *)v37 addAttribute:off_9CE60 value:off_9D000];
    [(GQHStyle *)v37 addAttribute:off_9CEA8 value:@"1.0"];
    CFDictionarySetValue(Mutable, @"BulletStyle", v37);

    v31 = v48;
    if (v22)
    {
      CFDictionarySetValue(Mutable, @"BulletString", v22);
    }

    else if ([value typeAtlevel:v51] == 4)
    {
      v42 = xmlStrlen("&bull;");
      v43 = CFDataCreate(0, "&bull;", v42);
      CFDictionarySetValue(Mutable, @"BulletCharRef", v43);
      v44 = v43;
      v31 = v48;
      CFRelease(v44);
    }
  }

  else
  {
    Mutable = 0;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (((v31 | v50) & 1) != 0 || [a6 outlineLevel])
  {
    v45 = off_9CF38;
    v46 = llroundf(*(&v55 + 1) - *&v55);
    v47 = [a6 outlineLevel];
    [a5 addAttribute:v45 pxValue:v46 + dword_9D2A8 * v47];
  }

  return Mutable;
}

+ (void)mapBullet:(__CFDictionary *)a3 state:(id)a4
{
  Value = CFDictionaryGetValue(a3, @"BulletStyle");
  v7 = CFDictionaryGetValue(a3, @"BulletCharRef");
  v8 = CFDictionaryGetValue(a3, @"BulletString");
  if (Value)
  {
    v9 = v8;
    v10 = [a4 htmlDoc];
    [v10 startElement:"span"];
    [Value setStyleOnCurrentNode:a4];
    if (v9)
    {
      [v10 addContent:v9];
    }

    else if (v7)
    {
      [v10 addCharRef:CFDataGetBytePtr(v7)];
    }

    [v10 endElement];
  }
}

+ (id)getBulletStyle:(id)a3 level:(int)a4
{
  v5 = 0;
  [a3 overridesObjectProperty:(a4 + 58) value:&v5];
  return v5;
}

+ (BOOL)retrieveFontSizeForFirstCharacter:(id)a3 fontSize:(float *)a4
{
  v5 = [a3 children];
  if (CFArrayGetCount(v5) < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [ValueAtIndex characterStyle];

    return [v7 hasValueForFloatProperty:2 value:a4];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [GQHParagraph retrieveFontSizeForFirstCharacter:ValueAtIndex fontSize:a4];
}

+ (int)mapParagraphStyle:(id)a3 paragraph:(id)a4 state:(id)a5 bulletStates:(__CFDictionary *)a6 isMultiColumn:(BOOL)a7
{
  v7 = a7;
  v32 = 0.0;
  if (([a1 setupBulletStatesForParagraphStyle:? paragraph:? state:? bulletStates:?] & 1) != 0 || objc_msgSend(a3, "hasValueForFloatProperty:value:", 30, &v32) && (*&v13 = v32, v32 != 0.0))
  {
    v14 = 0;
  }

  else
  {
    v15 = [a3 hasValueForFloatProperty:31 value:{&v32, v13}] ^ 1;
    if (v32 == 0.0)
    {
      v14 = 1;
    }

    else
    {
      v14 = v15;
    }
  }

  v30 = 0;
  v31 = 0;
  v16 = [a3 overridesIntProperty:17 value:&v31];
  v17 = [a3 overridesIntProperty:18 value:&v30];
  if (v16)
  {
    [a5 setOutlineLevel:v31];
  }

  if (v17)
  {
    [a5 setOutlineStyleType:v30];
  }

  if ([a5 useOutline])
  {
    v31 = [a5 outlineLevel];
    v30 = [a5 outlineStyleType];
    if (v30 == 1)
    {
      ++v31;
    }
  }

  if (!v14 || (v18 = [a5 implicitStyle], v19 = objc_msgSend(a5, "coloredBackground"), (v20 = objc_msgSend(a5, "cachedClassStringForTextStyle:implicitStyle:isColoredBackground:outlineLevel:outlineType:isSpan:", a3, v18, v19, v31, v30, 0)) == 0))
  {
    v21 = objc_alloc_init(GQHStyle);
    [GQHParagraphStyle mapStyle:a3 style:v21 state:a5];
    v29 = 0;
    if ([a3 hasValueForFloatProperty:30 value:&v29] && !objc_msgSend(a5, "paragraphIndex"))
    {
      [(GQHStyle *)v21 addAttribute:off_9CED0 intValue:0];
    }

    if ([a3 hasValueForFloatProperty:31 value:&v29])
    {
      v22 = [a5 paragraphIndex];
      if (v22 == [a5 paragraphCount] - 1)
      {
        [(GQHStyle *)v21 addAttribute:off_9CEB8 intValue:0];
      }
    }

    v23 = [a1 prepareBullet:a3 paragraph:a4 style:v21 state:a5 bulletStates:a6 showBullet:{(objc_msgSend(a4, "isBlank") | v7) ^ 1}];
    if (v14)
    {
      cf = 0;
      [GQHStyle createBaseStyleClassString:a3 classString:&cf classType:objc_opt_class() state:a5];
      v24 = [a5 implicitStyle];
      v25 = [a5 coloredBackground];
      v26 = cf;
      if (!cf)
      {
        v26 = &stru_85620;
      }

      v20 = [a5 addCachedClassStringForTextStyle:a3 implicitStyle:v24 isColoredBackground:v25 outlineLevel:v31 outlineType:v30 isSpan:0 baseClassString:v26 cssCachedStyle:v21];
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
      [(GQHStyle *)v21 setStyleOnCurrentNode:a5 mappingBaseStyleClass:a3 baseClassType:objc_opt_class()];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a5 setCurrentParagraphStyle:v21 baseStyle:a3 cachedClass:0];
      }

      v20 = 0;
      if (!v23)
      {
LABEL_34:

        if (!v14)
        {
          return 1;
        }

        goto LABEL_35;
      }
    }

    [a1 mapBullet:v23 state:a5];
    CFRelease(v23);
    goto LABEL_34;
  }

LABEL_35:
  [objc_msgSend(a5 "htmlDoc")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a5 setCurrentParagraphStyle:0 baseStyle:0 cachedClass:v20];
  }

  return 1;
}

@end