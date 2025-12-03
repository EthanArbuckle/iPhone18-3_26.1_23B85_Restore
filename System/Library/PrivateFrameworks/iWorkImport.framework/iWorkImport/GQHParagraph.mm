@interface GQHParagraph
+ (BOOL)retrieveFontSizeForFirstCharacter:(id)character fontSize:(float *)size;
+ (BOOL)setupBulletStatesForParagraphStyle:(id)style paragraph:(id)paragraph state:(id)state bulletStates:(__CFDictionary *)states;
+ (__CFDictionary)prepareBullet:(id)bullet paragraph:(id)paragraph style:(id)style state:(id)state bulletStates:(__CFDictionary *)states showBullet:(BOOL)showBullet;
+ (id)getBulletStyle:(id)style level:(int)level;
+ (int)handleBookmark:(id)bookmark state:(id)state;
+ (int)handleInlineList:(id)list state:(id)state;
+ (int)handleLink:(id)link state:(id)state;
+ (int)mapParagraphStyle:(id)style paragraph:(id)paragraph state:(id)state bulletStates:(__CFDictionary *)states isMultiColumn:(BOOL)column;
+ (void)mapBullet:(__CFDictionary *)bullet state:(id)state;
@end

@implementation GQHParagraph

+ (int)handleInlineList:(id)list state:(id)state
{
  children = [list children];
  Count = CFArrayGetCount(children);
  v8 = [GQHTextSpan nonWhitespaceCount:children];
  v9 = Count;
  if (Count)
  {
    v10 = 0;
    v11 = v8;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(children, v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [state inContent];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [GQHTextSpan handleSpan:ValueAtIndex checkForTrailingBlanks:v10 >= v11 state:state];
LABEL_12:
        v14 = v13;
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [self handleLink:ValueAtIndex state:state];
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [self handleBookmark:ValueAtIndex state:state];
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        htmlDoc = [state htmlDoc];
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        htmlDoc = [state htmlDoc];
        if ((isKindOfClass & 1) == 0)
        {
          v14 = [GQHTextSpan handleTextListChild:ValueAtIndex outputBlanks:v10 < v11 state:state];
          goto LABEL_13;
        }
      }

      v29 = htmlDoc;
      [htmlDoc startElement:"span"];
      if ([state implicitStyle])
      {
        break;
      }

LABEL_46:
      v14 = [GQHTextSpan handleTextListChild:ValueAtIndex outputBlanks:v10 < v11 state:state];
      [v29 endElement];
LABEL_13:
      if (++v10 >= v9 || v14 != 1)
      {
        return v14;
      }
    }

    v32 = 0;
    implicitStyle = [state implicitStyle];
    v18 = objc_alloc_init(GQHStyle);
    if (![implicitStyle hasValueForIntProperty:21 value:&v32])
    {
      if ([implicitStyle hasValueForIntProperty:20 value:&v32])
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
        selfCopy = self;
        v30 = 0;
        v31 = 0;
        v23 = [implicitStyle hasValueForIntProperty:11 value:&v31];
        v24 = [implicitStyle hasValueForIntProperty:7 value:&v30];
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

          self = selfCopy;
        }

        else
        {
          self = selfCopy;
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

        [GQHTextSpan handleTextBackgroundForStyle:implicitStyle destStyle:v18 state:state];
        [(GQHStyle *)v18 setStyleOnCurrentNode:state];

        goto LABEL_46;
      }

      v19 = off_9CF58;
      v20 = &off_9D070;
    }

    [(GQHStyle *)v18 addAttribute:v19 value:*v20];
    [GQHTextStyle reduceFontSizeForSuperscriptedText:implicitStyle style:v18 state:state];
    goto LABEL_32;
  }

  return 1;
}

+ (int)handleLink:(id)link state:(id)state
{
  htmlDoc = [state htmlDoc];
  href = [link href];
  if ([state shouldMapLinkWithUrl:href] && (v9 = +[GQHUtils createHtmlHrefForLinkUri:state:](GQHUtils, "createHtmlHrefForLinkUri:state:", href, state)) != 0)
  {
    v10 = v9;
    [htmlDoc startElement:"a"];
    [htmlDoc setAttribute:"href" cfStringValue:v10];
    CFRelease(v10);
    [htmlDoc setAttribute:"title" cfStringValue:href];
  }

  else
  {
    [htmlDoc startElement:"span"];
  }

  if ([link characterStyle])
  {
    v11 = objc_alloc_init(GQHStyle);
    +[GQHTextStyle mapStyle:style:state:](GQHTextStyle, "mapStyle:style:state:", [link characterStyle], v11, state);
    -[GQHStyle setStyleOnCurrentNode:mappingBaseStyleClass:baseClassType:](v11, "setStyleOnCurrentNode:mappingBaseStyleClass:baseClassType:", state, [link characterStyle], objc_opt_class());
  }

  v12 = [self handleInlineList:link state:state];
  [htmlDoc endElement];
  return v12;
}

+ (int)handleBookmark:(id)bookmark state:(id)state
{
  htmlDoc = [state htmlDoc];
  name = [bookmark name];
  if (name)
  {
    v9 = name;
    [htmlDoc startElement:"a"];
    [htmlDoc setAttribute:"name" cfStringValue:v9];
    [htmlDoc endElement];
  }

  return [self handleInlineList:bookmark state:state];
}

+ (BOOL)setupBulletStatesForParagraphStyle:(id)style paragraph:(id)paragraph state:(id)state bulletStates:(__CFDictionary *)states
{
  v9 = [style valueForObjectProperty:{38, paragraph, state}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  parent = v9;
  if ([v9 parent])
  {
    parent = v10;
    do
    {
      parent = [parent parent];
    }

    while ([parent parent]);
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(states, parent, &value))
  {
    value = objc_alloc_init(GQHBulletState);
    CFDictionaryAddValue(states, parent, value);
  }

  listLevel = [paragraph listLevel];
  v13 = listLevel;
  v14 = 0;
  if ((listLevel & 0x80000000) == 0 && dword_9CDF8 >= listLevel)
  {
    [value setCurrentLevel:listLevel];
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
    type = [ValueAtIndex type];
    switch(type)
    {
      case 2u:
        label = [v21 label];
        if (!label)
        {
          goto LABEL_28;
        }

        v26 = label;
        if (![label labelType])
        {
          goto LABEL_28;
        }

        format = [v26 format];
        v33.length = CFStringGetLength(format);
        v33.location = 0;
        v28 = CFStringFindWithOptions(format, @"P", v33, 1uLL, 0);
        restartList = [paragraph restartList];
        if ([value listStyleAtLevel:v13] == parent && (restartList & 1) == 0 && objc_msgSend(value, "hasNumberAtLevel:", v13))
        {
          v30 = ([value numberAtLevel:v13] + 1);
        }

        else
        {
          v30 = [style valueForIntProperty:39];
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
        [value setListStyle:parent atLevel:v13];
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

+ (__CFDictionary)prepareBullet:(id)bullet paragraph:(id)paragraph style:(id)style state:(id)state bulletStates:(__CFDictionary *)states showBullet:(BOOL)showBullet
{
  showBulletCopy = showBullet;
  v15 = [bullet valueForObjectProperty:38];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  parent = v15;
  if ([v15 parent])
  {
    parent = v16;
    do
    {
      parent = [parent parent];
    }

    while ([parent parent]);
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(states, parent, &value))
  {
    value = objc_alloc_init(GQHBulletState);
    CFDictionaryAddValue(states, parent, value);
  }

  v18 = [v16 valueForObjectProperty:56];
  if (!v18 || (ValueAtIndex = CFArrayGetValueAtIndex(v18, [value currentLevel])) == 0)
  {
    [value currentLevel];
    return 0;
  }

  v20 = ValueAtIndex;
  type = [ValueAtIndex type];
  currentLevel = [value currentLevel];
  v22 = 0;
  if (!type)
  {
    return 0;
  }

  if (type != 2)
  {
    goto LABEL_22;
  }

  label = [v20 label];
  v22 = label;
  if (!label)
  {
    goto LABEL_22;
  }

  labelType = [(__CFString *)label labelType];
  format = [(__CFString *)v22 format];
  v26 = format;
  if (labelType)
  {
    v57.length = CFStringGetLength(format);
    v57.location = 0;
    if (!CFStringFindWithOptions(v26, @"P", v57, 1uLL, 0))
    {
      labelType2 = [(__CFString *)v22 labelType];
      v22 = +[GQHBulletState createLabelStr:number:](GQHBulletState, "createLabelStr:number:", labelType2, [value numberAtLevel:currentLevel]);
      CFStringAppend(v22, @".");
      goto LABEL_22;
    }

    MutableCopy = [value createTieredNumberStringForLevel:currentLevel];
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, format);
  }

  v22 = MutableCopy;
LABEL_22:
  v55 = 0;
  v31 = [bullet overridesFloatProperty:23 value:&v55 + 4];
  v50 = [bullet overridesFloatProperty:24 value:&v55];
  if (showBulletCopy)
  {
    v48 = v31;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v32 = [value bulletIndentForLevel:currentLevel];
    v49 = [value textIndentForLevel:currentLevel];
    v54 = 0;
    if ([style getAttribute:off_9CEF0 trblValue:&v54])
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
    [style addAttribute:off_9CEF0 trblValue:v54];

    v35 = [self getBulletStyle:v16 level:currentLevel];
    if (v35)
    {
      bulletCopy = v35;
    }

    else
    {
      bulletCopy = bullet;
    }

    v37 = objc_alloc_init(GQHStyle);
    [GQHTextStyle mapStyle:bulletCopy style:v37 state:state];
    v53 = 0;
    if ([v16 overridesObjectProperty:57 value:&v53] && objc_msgSend(objc_msgSend(v53, "objectAtIndex:", currentLevel), "scaleWithText"))
    {
      v52 = 0.0;
      if (![GQHParagraph retrieveFontSizeForFirstCharacter:paragraph fontSize:&v52])
      {
        [bullet hasValueForFloatProperty:2 value:&v52];
      }

      v38 = v52;
      if (v52 != 0.0)
      {
        textScale = [state textScale];
        v38 = v52;
        if (textScale)
        {
          v38 = floorf((v52 * [state textScale]) / 100.0);
          v52 = v38;
        }
      }

      v40 = off_9CE78;
      [objc_msgSend(v53 objectAtIndex:{currentLevel), "scale"}];
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

    else if ([value typeAtlevel:currentLevel] == 4)
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

  if (((v31 | v50) & 1) != 0 || [state outlineLevel])
  {
    v45 = off_9CF38;
    v46 = llroundf(*(&v55 + 1) - *&v55);
    outlineLevel = [state outlineLevel];
    [style addAttribute:v45 pxValue:v46 + dword_9D2A8 * outlineLevel];
  }

  return Mutable;
}

+ (void)mapBullet:(__CFDictionary *)bullet state:(id)state
{
  Value = CFDictionaryGetValue(bullet, @"BulletStyle");
  v7 = CFDictionaryGetValue(bullet, @"BulletCharRef");
  v8 = CFDictionaryGetValue(bullet, @"BulletString");
  if (Value)
  {
    v9 = v8;
    htmlDoc = [state htmlDoc];
    [htmlDoc startElement:"span"];
    [Value setStyleOnCurrentNode:state];
    if (v9)
    {
      [htmlDoc addContent:v9];
    }

    else if (v7)
    {
      [htmlDoc addCharRef:CFDataGetBytePtr(v7)];
    }

    [htmlDoc endElement];
  }
}

+ (id)getBulletStyle:(id)style level:(int)level
{
  v5 = 0;
  [style overridesObjectProperty:(level + 58) value:&v5];
  return v5;
}

+ (BOOL)retrieveFontSizeForFirstCharacter:(id)character fontSize:(float *)size
{
  children = [character children];
  if (CFArrayGetCount(children) < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(children, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    characterStyle = [ValueAtIndex characterStyle];

    return [characterStyle hasValueForFloatProperty:2 value:size];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [GQHParagraph retrieveFontSizeForFirstCharacter:ValueAtIndex fontSize:size];
}

+ (int)mapParagraphStyle:(id)style paragraph:(id)paragraph state:(id)state bulletStates:(__CFDictionary *)states isMultiColumn:(BOOL)column
{
  columnCopy = column;
  v32 = 0.0;
  if (([self setupBulletStatesForParagraphStyle:? paragraph:? state:? bulletStates:?] & 1) != 0 || objc_msgSend(style, "hasValueForFloatProperty:value:", 30, &v32) && (*&v13 = v32, v32 != 0.0))
  {
    v14 = 0;
  }

  else
  {
    v15 = [style hasValueForFloatProperty:31 value:{&v32, v13}] ^ 1;
    if (v32 == 0.0)
    {
      v14 = 1;
    }

    else
    {
      v14 = v15;
    }
  }

  outlineStyleType = 0;
  outlineLevel = 0;
  v16 = [style overridesIntProperty:17 value:&outlineLevel];
  v17 = [style overridesIntProperty:18 value:&outlineStyleType];
  if (v16)
  {
    [state setOutlineLevel:outlineLevel];
  }

  if (v17)
  {
    [state setOutlineStyleType:outlineStyleType];
  }

  if ([state useOutline])
  {
    outlineLevel = [state outlineLevel];
    outlineStyleType = [state outlineStyleType];
    if (outlineStyleType == 1)
    {
      ++outlineLevel;
    }
  }

  if (!v14 || (v18 = [state implicitStyle], v19 = objc_msgSend(state, "coloredBackground"), (v20 = objc_msgSend(state, "cachedClassStringForTextStyle:implicitStyle:isColoredBackground:outlineLevel:outlineType:isSpan:", style, v18, v19, outlineLevel, outlineStyleType, 0)) == 0))
  {
    v21 = objc_alloc_init(GQHStyle);
    [GQHParagraphStyle mapStyle:style style:v21 state:state];
    v29 = 0;
    if ([style hasValueForFloatProperty:30 value:&v29] && !objc_msgSend(state, "paragraphIndex"))
    {
      [(GQHStyle *)v21 addAttribute:off_9CED0 intValue:0];
    }

    if ([style hasValueForFloatProperty:31 value:&v29])
    {
      paragraphIndex = [state paragraphIndex];
      if (paragraphIndex == [state paragraphCount] - 1)
      {
        [(GQHStyle *)v21 addAttribute:off_9CEB8 intValue:0];
      }
    }

    v23 = [self prepareBullet:style paragraph:paragraph style:v21 state:state bulletStates:states showBullet:{(objc_msgSend(paragraph, "isBlank") | columnCopy) ^ 1}];
    if (v14)
    {
      cf = 0;
      [GQHStyle createBaseStyleClassString:style classString:&cf classType:objc_opt_class() state:state];
      implicitStyle = [state implicitStyle];
      coloredBackground = [state coloredBackground];
      v26 = cf;
      if (!cf)
      {
        v26 = &stru_85620;
      }

      v20 = [state addCachedClassStringForTextStyle:style implicitStyle:implicitStyle isColoredBackground:coloredBackground outlineLevel:outlineLevel outlineType:outlineStyleType isSpan:0 baseClassString:v26 cssCachedStyle:v21];
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
      [(GQHStyle *)v21 setStyleOnCurrentNode:state mappingBaseStyleClass:style baseClassType:objc_opt_class()];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [state setCurrentParagraphStyle:v21 baseStyle:style cachedClass:0];
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

    [self mapBullet:v23 state:state];
    CFRelease(v23);
    goto LABEL_34;
  }

LABEL_35:
  [objc_msgSend(state "htmlDoc")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [state setCurrentParagraphStyle:0 baseStyle:0 cachedClass:v20];
  }

  return 1;
}

@end