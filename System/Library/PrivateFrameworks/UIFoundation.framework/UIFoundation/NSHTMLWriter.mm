@interface NSHTMLWriter
- (BOOL)_closeBlocksForParagraphStyle:(id)style atIndex:(unint64_t)index inString:(id)string;
- (BOOL)_closeListsForParagraphStyle:(id)style atIndex:(unint64_t)index inString:(id)string;
- (BOOL)_isStrictByParsingExcludedElements;
- (Class)_webArchiveClass;
- (NSHTMLWriter)initWithAttributedString:(id)string;
- (id)HTMLData;
- (id)HTMLFileWrapper;
- (id)_defaultValueForAttribute:(id)attribute range:(_NSRange)range;
- (id)_prefix;
- (id)_prefixDown;
- (id)_prefixUp;
- (id)_resourceForFileWrapper:(id)wrapper filename:(id *)filename;
- (id)_textAttributesForHighlightColor:(id)color;
- (id)documentFragmentForDocument:(id)document;
- (id)documentFragmentString;
- (id)markElementFor:(id)for spanClass:(unint64_t)class paraClass:(unint64_t)paraClass;
- (id)subresources;
- (id)webArchive;
- (id)webArchiveData;
- (unint64_t)_listClassForList:(id)list;
- (unint64_t)_paragraphClassforParagraphStyle:(id)style presentationIntent:(id)intent range:(_NSRange)range isEmpty:(BOOL)empty isCompletelyEmpty:(BOOL)completelyEmpty headerString:(id *)string alignmentString:(id *)alignmentString directionString:(id *)self0 forWebKit:(BOOL)self1;
- (unint64_t)_spanClassForAttributes:(id)attributes inParagraphClass:(unint64_t)class spanClass:(unint64_t)spanClass flags:(unint64_t *)flags forWebKit:(BOOL)kit;
- (void)_addImageElementForResource:(id)resource description:(id)description inString:(id)string;
- (void)_addSourceElementForResource:(id)resource MIMEType:(id)type inString:(id)string;
- (void)_appendAttachment:(id)attachment atIndex:(unint64_t)index toString:(id)string;
- (void)_appendImageGlyph:(id)glyph withAttributes:(id)attributes toString:(id)string;
- (void)_closeFlags:(unint64_t)flags openFlags:(unint64_t)openFlags inString:(id)string;
- (void)_createWebArchiveData;
- (void)_generateHTMLForWebKit:(BOOL)kit;
- (void)_openBlocksForParagraphStyle:(id)style atIndex:(unint64_t)index inString:(id)string;
- (void)_openListsForParagraphStyle:(id)style atIndex:(unint64_t)index inString:(id)string isStrict:(BOOL)strict;
- (void)_prepareString:(id)string forConversionToEncoding:(unint64_t)encoding;
- (void)_writeDocumentPropertiesToString:(id)string;
- (void)_writeDocumentProperty:(id)property value:(id)value toString:(id)string;
- (void)dealloc;
- (void)readDocumentFragment:(id)fragment;
- (void)setDocumentAttributes:(id)attributes;
@end

@implementation NSHTMLWriter

- (Class)_webArchiveClass
{
  result = _webArchiveClass__webArchiveClass_980;
  if (!_webArchiveClass__webArchiveClass_980)
  {
    result = objc_lookUpClass("WebArchive");
    _webArchiveClass__webArchiveClass_980 = result;
    if (!result)
    {
      __NSLoadWebKit();
      result = objc_lookUpClass("WebArchive");
      _webArchiveClass__webArchiveClass_980 = result;
      if (!result)
      {
        NSLog(@"Could not dynamically load the WebKit framework.");
        return _webArchiveClass__webArchiveClass_980;
      }
    }
  }

  return result;
}

- (NSHTMLWriter)initWithAttributedString:(id)string
{
  v7.receiver = self;
  v7.super_class = NSHTMLWriter;
  v4 = [(NSHTMLWriter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (string)
    {
      v4->_attrStr = string;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSHTMLWriter;
  [(NSHTMLWriter *)&v3 dealloc];
}

- (void)setDocumentAttributes:(id)attributes
{
  documentAttrs = self->_documentAttrs;
  if (documentAttrs != attributes)
  {

    self->_documentAttrs = attributes;
  }
}

- (id)_prefix
{
  level = self->_level;
  if (level < 1)
  {
    return &stru_1F01AD578;
  }

  else
  {
    return [&stru_1F01AD578 stringByPaddingToLength:self->_prefixSpaces * level withString:@" " startingAtIndex:0];
  }
}

- (id)_prefixUp
{
  level = self->_level;
  if (level < 1)
  {
    result = &stru_1F01AD578;
  }

  else
  {
    result = [&stru_1F01AD578 stringByPaddingToLength:self->_prefixSpaces * level withString:@" " startingAtIndex:0];
    level = self->_level;
  }

  self->_level = level + 1;
  return result;
}

- (id)_prefixDown
{
  level = self->_level;
  self->_level = level - 1;
  if (level < 2)
  {
    return &stru_1F01AD578;
  }

  else
  {
    return [&stru_1F01AD578 stringByPaddingToLength:self->_prefixSpaces * (level - 1) withString:@" " startingAtIndex:0];
  }
}

- (id)_textAttributesForHighlightColor:(id)color
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (!color || [color isEqual:@"NSTextHighlightColorSchemeDefault"])
  {
    if (_NSTextScalingTypeForCurrentEnvironment() == 1)
    {
      v4 = +[NSTextLayoutManager textHighlightAttributes_iOS];
    }

    else
    {
      v4 = +[NSTextLayoutManager textHighlightAttributes_macOS];
    }

    v5 = [v4 objectForKeyedSubscript:@"NSColor"];
    if (v5)
    {
      goto LABEL_7;
    }

    return MEMORY[0x1E695E0F8];
  }

  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v5 = [_textAttributesForHighlightColor__colorSchemeTable objectForKeyedSubscript:color];
  if (!v5)
  {
    if ([color isEqualToString:@"NSTextHighlightColorSchemePurple"])
    {
      systemPurpleColor = [(objc_class *)getNSColorClass_4() systemPurpleColor];
      goto LABEL_29;
    }

    if ([color isEqualToString:@"NSTextHighlightColorSchemePink"])
    {
      systemPurpleColor = [(objc_class *)getNSColorClass_4() systemPinkColor];
      goto LABEL_29;
    }

    if ([color isEqualToString:@"NSTextHighlightColorSchemeOrange"])
    {
      systemPurpleColor = [(objc_class *)getNSColorClass_4() systemOrangeColor];
      goto LABEL_29;
    }

    if ([color isEqualToString:@"NSTextHighlightColorSchemeMint"])
    {
      systemPurpleColor = [(objc_class *)getNSColorClass_4() systemMintColor];
      goto LABEL_29;
    }

    if ([color isEqualToString:@"NSTextHighlightColorSchemeBlue"])
    {
      systemPurpleColor = [(objc_class *)getNSColorClass_4() systemBlueColor];
LABEL_29:
      v5 = systemPurpleColor;
      if (systemPurpleColor)
      {
        v13 = _textAttributesForHighlightColor__colorSchemeTable;
        if (!_textAttributesForHighlightColor__colorSchemeTable)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
          _textAttributesForHighlightColor__colorSchemeTable = v13;
        }

        [v13 setObject:v5 forKeyedSubscript:color];
      }

      goto LABEL_33;
    }

    v10 = [color rangeOfString:@"NSTextHighlightColorScheme" options:8];
    colorCopy = color;
    if (v11)
    {
      colorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"system%@Color", objc_msgSend(color, "substringFromIndex:", v10 + v11)];
    }

    v5 = NSSelectorFromString(colorCopy);
    if (v5)
    {
      getNSColorClass_4();
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v5 = 0;
        goto LABEL_33;
      }

      systemPurpleColor = [(objc_class *)getNSColorClass_4() performSelector:v5];
      goto LABEL_29;
    }
  }

LABEL_33:
  objc_sync_exit(v7);
  if (!v5)
  {
    return MEMORY[0x1E695E0F8];
  }

LABEL_7:
  if (_NSTextScalingTypeForCurrentEnvironment() == 1)
  {
    v6 = [NSTextLayoutManager textHighlightBackgroundColorForForegroundColor_iOS:v5];
  }

  else
  {
    v6 = [NSTextLayoutManager textHighlightBackgroundColorForForegroundColor_macOS:v5];
  }

  if (v6)
  {
    v16[0] = @"NSColor";
    v16[1] = @"NSBackgroundColor";
    v17[0] = v5;
    v17[1] = v6;
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v14 = @"NSColor";
    v15 = v5;
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }
}

- (unint64_t)_spanClassForAttributes:(id)attributes inParagraphClass:(unint64_t)class spanClass:(unint64_t)spanClass flags:(unint64_t *)flags forWebKit:(BOOL)kit
{
  kitCopy = kit;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v108 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v104 = [attributes objectForKey:@"NSFont"];
  clearColor = [attributes objectForKey:@"NSColor"];
  v11 = [attributes objectForKey:@"NSBackgroundColor"];
  blackColor = [attributes objectForKey:@"NSStrokeColor"];
  v13 = [attributes objectForKey:@"NSTextHighlightColorScheme"];
  v14 = [objc_msgSend(attributes objectForKey:{@"NSTextHighlightStyle", "isEqual:", @"NSTextHighlightStyleDefault"}];
  v95 = [attributes objectForKey:@"NSUnderline"];
  v96 = [attributes objectForKey:@"NSStrikethrough"];
  v97 = [attributes objectForKey:@"NSSuperScript"];
  v92 = [attributes objectForKey:@"NSBaselineOffset"];
  v98 = [attributes objectForKey:@"NSKern"];
  v109 = [attributes objectForKey:@"NSStrokeWidth"];
  v99 = [attributes objectForKey:@"NSLigature"];
  v103 = [attributes objectForKey:@"NSShadow"];
  v15 = [attributes objectForKey:@"NSWritingDirection"];
  if (v14)
  {
    selfCopy2 = self;
    v17 = [(NSHTMLWriter *)self _textAttributesForHighlightColor:v13];
    v18 = [v17 objectForKeyedSubscript:@"NSColor"];
    v19 = [v17 objectForKeyedSubscript:@"NSBackgroundColor"];
    if (v18)
    {
      clearColor = v18;
    }

    if (v19)
    {
      v11 = v19;
    }

    v107 = v11;
  }

  else
  {
    v107 = v11;
    selfCopy2 = self;
  }

  if (v109)
  {
    if (!blackColor)
    {
      blackColor = clearColor;
    }

    if (!blackColor)
    {
      blackColor = [(objc_class *)getNSColorClass_4() blackColor];
    }
  }

  v102 = blackColor;
  if (spanClass)
  {
    v20 = [(NSMutableArray *)selfCopy2->_charStyleArrays objectAtIndex:spanClass - 1];
    v21 = [objc_msgSend(v20 objectAtIndex:{2), "unsignedIntegerValue"}];
    v22 = [objc_msgSend(v20 objectAtIndex:{3), "unsignedIntegerValue"}];
    v23 = [objc_msgSend(v20 objectAtIndex:{4), "unsignedIntegerValue"}];
  }

  else
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (class)
  {
    v24 = [(NSMutableArray *)selfCopy2->_paraStyleArrays objectAtIndex:class - 1];
    v25 = v24;
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [objc_msgSend(v24 objectAtIndex:{2), "unsignedIntegerValue"}];
    }

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [objc_msgSend(v25 objectAtIndex:{3), "unsignedIntegerValue"}];
    }

    v26 = v104;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v101 = [objc_msgSend(v25 objectAtIndex:{4), "unsignedIntegerValue"}];
    }

    else
    {
      v101 = v23;
    }
  }

  else
  {
    v101 = v23;
    v26 = v104;
  }

  v27 = selfCopy2;
  if (v26)
  {
    goto LABEL_26;
  }

  if ((*&selfCopy2->_flags & 2) != 0)
  {
    v26 = 0;
LABEL_36:
    v28 = &stru_1F01AD578;
    goto LABEL_37;
  }

  v26 = NSDefaultFont();
  if (!v26)
  {
    goto LABEL_36;
  }

LABEL_26:
  v28 = [(NSMutableDictionary *)selfCopy2->_fontNames objectForKey:v26];
  if (!v28)
  {
    v28 = _fontNameForFont(v26, kitCopy);
    if (v28)
    {
      [(NSMutableDictionary *)selfCopy2->_fontNames setObject:v28 forKey:v26];
    }
  }

  v29 = [(NSMutableDictionary *)selfCopy2->_fontDescriptions objectForKey:v26];
  if (!v29)
  {
    v29 = [-[UIFont htmlMarkupDescriptionForWebKit:](v26 htmlMarkupDescriptionForWebKit:{kitCopy), "mutableCopy"}];
    [v29 replaceOccurrencesOfString:@" withString:@"'" options:0 range:{0, objc_msgSend(v29, "length"")}];
    [(NSMutableDictionary *)selfCopy2->_fontDescriptions setObject:v29 forKey:v26];
  }

  [v9 appendFormat:@"%@; ", v29];
LABEL_37:
  v30 = &stru_1F01AD578;
  if (v28)
  {
    v30 = v28;
  }

  v105 = v30;
  if (v109)
  {
    [v109 doubleValue];
    if (v31 != 0.0)
    {
      [v109 doubleValue];
      if (v32 > 0.0)
      {
        clearColor = [(objc_class *)getNSColorClass_4() clearColor];
      }
    }
  }

  if (v95)
  {
    v33 = &stru_1F01AD578;
    if ([v95 unsignedIntegerValue])
    {
      v34 = (selfCopy2->_excludedElements2 & 0x4000000) == 0;
      if ((v27->_excludedElements2 & 0x4000000) != 0)
      {
        v33 = @"underline ";
      }
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
    v33 = &stru_1F01AD578;
  }

  if (v96)
  {
    v35 = &stru_1F01AD578;
    if ([v96 integerValue])
    {
      if ((v27->_excludedElements2 & 0x2400) == 0x2400)
      {
        v35 = @"line-through ";
      }

      else
      {
        v34 |= 2uLL;
      }
    }
  }

  else
  {
    v35 = &stru_1F01AD578;
  }

  if ([(__CFString *)v33 length]|| [(__CFString *)v35 length])
  {
    [v9 appendFormat:@"text-decoration: %@%@; ", v33, v35];
  }

  v36 = &stru_1F01AD578;
  if (v97)
  {
    integerValue = [v97 integerValue];
    if (integerValue <= 0)
    {
      if ((integerValue & 0x8000000000000000) == 0)
      {
        goto LABEL_67;
      }

      v38 = @"sub";
      v39 = 0x10000;
      v40 = 32;
    }

    else
    {
      v38 = @"super";
      v39 = 0x20000;
      v40 = 16;
    }

    if ((v27->_excludedElements2 & v39) != 0)
    {
      v36 = v38;
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    v34 |= v41;
  }

LABEL_67:
  if ([(__CFString *)v36 length])
  {
    [v9 appendFormat:@"vertical-align: %@; ", v36];
  }

  else if (v92)
  {
    [v92 doubleValue];
    if (v44 != 0.0)
    {
      [v92 doubleValue];
      [v9 appendFormat:@"vertical-align: %.1fpx; ", v45];
    }
  }

  if (v98)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v98 doubleValue];
      if (fabs(v42) >= 2.22044605e-16)
      {
        v91 = v42;
        v43 = @"letter-spacing: %.1fpx; ";
      }

      else
      {
        v43 = @"font-kerning: none; ";
      }

      [v9 appendFormat:v43, *&v91];
    }
  }

  if (v99)
  {
    intValue = [v99 intValue];
    if (intValue <= 2)
    {
      [v9 appendFormat:off_1E726E3D0[intValue]];
    }
  }

  if (clearColor)
  {
    v47 = _colorValForColor_0(clearColor);
  }

  else
  {
    v47 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v48 = v107;
  if (v47 != v21)
  {
    v49 = v47 >> 8;
    if (v47 == 0xFF)
    {
      if (v47 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = 0;
      }

      else
      {
        v50 = v49;
      }

      [v9 appendFormat:@"color: #%.6x; ", v50];
    }

    else
    {
      [v9 appendFormat:@"color: %@; ", _rgbaString(v47)];
    }

    if (v47 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v51 = 0;
    }

    else
    {
      v51 = v49;
    }

    [v108 appendFormat:@" color=#%.6x", v51];
    v48 = v107;
  }

  if (!v48)
  {
    _ZF = v22 == 0x7FFFFFFFFFFFFFFFLL;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    if (_ZF)
    {
      goto LABEL_105;
    }

    goto LABEL_101;
  }

  v52 = _colorValForColor_0(v48);
  if (v52 == v22)
  {
    goto LABEL_105;
  }

  v53 = v52;
  if (v52 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_101:
    [v9 appendString:@"background-color: transparent; "];
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_105;
  }

  if (v52 == 0xFF)
  {
    [v9 appendFormat:@"background-color: #%.6x; ", v52 >> 8];
  }

  else
  {
    [v9 appendFormat:@"background-color: %@; ", _rgbaString(v52)];
  }

  v22 = v53;
LABEL_105:
  if (v102)
  {
    v55 = _colorValForColor_0(v102);
  }

  else
  {
    v55 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v55 != v101)
  {
    [(UIFont *)v26 pointSize];
    v57 = v56 * 0.01;
    [v109 doubleValue];
    *&v58 = v57 * v58;
    v59 = fabsf(*&v58);
    if (v55 == 0xFF)
    {
      LODWORD(v60) = v55 >> 8;
      if (v55 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v60 = 0;
      }

      else
      {
        v60 = v60;
      }

      [v9 appendFormat:@"-webkit-text-stroke: %.3gpx #%.6x; ", v59, v60];
    }

    else
    {
      [v9 appendFormat:@"-webkit-text-stroke: %.3gpx %@; ", v59, _rgbaString(v55)];
    }
  }

  if (v103)
  {
    [v103 shadowOffset];
    v62 = v61;
    v64 = v63;
    [v103 shadowBlurRadius];
    v66 = v65;
    shadowColor = [v103 shadowColor];
    if (!shadowColor)
    {
      v76 = 2863311360;
LABEL_125:
      [v9 appendFormat:@"text-shadow: %.1fpx %.1fpx %.1fpx %@; ", v62, v64, v66, _rgbaString(v76)];
      goto LABEL_128;
    }

    v68 = shadowColor;
    getUIColorClass_0[0]();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v113 = 0.0;
      v114[0] = 0.0;
      v111 = 0.0;
      v112 = 0.0;
      v110 = 0.0;
      if ([v68 getRed:v114 green:&v113 blue:&v112 alpha:&v111])
      {
        v69.f64[0] = v113;
        v69.f64[1] = v112;
        __asm { FMOV            V3.2D, #1.0 }

        v74 = vmlsq_lane_f64(_Q3, vsubq_f64(_Q3, v69), v111, 0);
        __asm { FMOV            V1.2D, #0.5 }

        *&_Q1.f64[0] = vshl_u32(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q1, vdupq_n_s64(0x406FE00000000000uLL), v74)))), 0x800000010);
        v76 = (LODWORD(_Q1.f64[0]) | (vcvtmd_s64_f64((1.0 - (1.0 - v114[0]) * v111) * 255.0 + 0.5) << 24) | vcvtmd_s64_f64(v111 * 255.0 + 0.5) | HIDWORD(_Q1.f64[0]));
        goto LABEL_123;
      }

      if ([v68 getWhite:&v110 alpha:&v111])
      {
        v76 = ((16843008 * vcvtmd_s64_f64((1.0 - (1.0 - v110) * v111) * 255.0 + 0.5)) | vcvtmd_s64_f64(v111 * 255.0 + 0.5));
LABEL_123:
        if (v76 == 0xFF)
        {
          v77 = v76 >> 8;
LABEL_127:
          [v9 appendFormat:@"text-shadow: %.1fpx %.1fpx %.1fpx #%.6x; ", v62, v64, v66, v77];
          goto LABEL_128;
        }

        goto LABEL_125;
      }
    }

    v77 = 0;
    goto LABEL_127;
  }

LABEL_128:
  if (v15 && [v15 count])
  {
    v78 = [objc_msgSend(v15 objectAtIndex:{0), "unsignedIntegerValue"}];
    v79 = @"rtl";
    if ((v78 & 1) == 0)
    {
      v79 = @"ltr";
    }

    v80 = @"bidi-override";
    if ((v78 & 2) == 0)
    {
      v80 = @"embed";
    }

    [v9 appendFormat:@"direction: %@; unicode-bidi: %@; ", v79, v80];
  }

  if ([v9 length])
  {
    v81 = v22;
    v82 = v108;
    while (([v9 hasSuffix:@" "] & 1) != 0 || objc_msgSend(v9, "hasSuffix:", @";"))
    {
      [v9 deleteCharactersInRange:{objc_msgSend(v9, "length") - 1, 1}];
    }

    v83 = [(NSMutableOrderedSet *)v27->_charStyleStrings indexOfObject:v9];
    if (v83 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v83 = [(NSMutableOrderedSet *)v27->_charStyleStrings count];
      [(NSMutableOrderedSet *)v27->_charStyleStrings addObject:v9];
      [(NSMutableArray *)v27->_fontStrings addObject:v108];
      charStyleArrays = v27->_charStyleArrays;
      v85 = MEMORY[0x1E695DEC8];
      v86 = [MEMORY[0x1E696AD98] numberWithDouble:12.0];
      v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v47];
      v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v81];
      v82 = v108;
      -[NSMutableArray addObject:](charStyleArrays, "addObject:", [v85 arrayWithObjects:{v105, v86, v87, v88, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v55), 0}]);
    }

    v89 = v83 + 1;
  }

  else
  {
    v89 = 0;
    v82 = v108;
  }

  if (flags)
  {
    *flags = v34;
  }

  return v89;
}

- (id)_defaultValueForAttribute:(id)attribute range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v35 = 0;
  v36 = 0;
  v8 = [@"NSFont" isEqualToString:?];
  if ([attribute isEqualToString:@"NSBackgroundColor"])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    attrStr = self->_attrStr;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __48__NSHTMLWriter__defaultValueForAttribute_range___block_invoke;
    v30[3] = &unk_1E7266970;
    v30[4] = &v31;
    [(NSAttributedString *)attrStr enumerateAttribute:@"NSBackgroundColor" inRange:location options:length usingBlock:0, v30];
    v10 = *(v32 + 24);
    _Block_object_dispose(&v31, 8);
    if (v10)
    {
      return 0;
    }
  }

  v11 = location ? (__PAIR128__(location, length) - 1) >> 64 : 0;
  v29 = location + length;
  if (v11 >= location + length)
  {
    return 0;
  }

  v12 = 0;
  Mutable = 0;
  v14 = 0;
  v28 = length;
  v27 = v8;
  while (1)
  {
    v15 = [NSAttributedString attribute:"attribute:atIndex:longestEffectiveRange:inRange:" atIndex:attribute longestEffectiveRange:? inRange:?];
    v16 = v15;
    if (length <= 2 * v36)
    {
      break;
    }

    if (((v15 != 0) & v8) == 1)
    {
      selfCopy = self;
      attributeCopy = attribute;
      traits = [(UIFont *)v15 traits];
      v20 = traits;
      if ((traits & 2) != 0)
      {
        familyName = [(UIFont *)v16 familyName];
        [(UIFont *)v16 pointSize];
        v21 = [UIFont fontWithFamilyName:familyName traits:v20 & 0xFFFFFFFD size:?];
        if (v20)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v21 = v16;
        if ((traits & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_14:
        familyName2 = [(UIFont *)v21 familyName];
        [(UIFont *)v21 pointSize];
        v21 = [UIFont fontWithFamilyName:familyName2 traits:v20 & 0xFFFFFFFE size:?];
      }

LABEL_15:
      attribute = attributeCopy;
      if (v21)
      {
        v16 = v21;
      }

      self = selfCopy;
      length = v28;
      v8 = v27;
    }

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    }

    Value = CFDictionaryGetValue(Mutable, v16);
    v25 = &Value[v36];
    CFDictionarySetValue(Mutable, v16, &Value[v36]);
    if (v25 > v14)
    {
      v14 = v25;
      v12 = v16;
    }

    if (v36 + v35 >= v29)
    {
      if (!Mutable)
      {
        return v12;
      }

      goto LABEL_27;
    }
  }

  v12 = v15;
  if (!Mutable)
  {
    return v12;
  }

LABEL_27:
  CFRelease(Mutable);
  return v12;
}

uint64_t __48__NSHTMLWriter__defaultValueForAttribute_range___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (unint64_t)_paragraphClassforParagraphStyle:(id)style presentationIntent:(id)intent range:(_NSRange)range isEmpty:(BOOL)empty isCompletelyEmpty:(BOOL)completelyEmpty headerString:(id *)string alignmentString:(id *)alignmentString directionString:(id *)self0 forWebKit:(BOOL)self1
{
  emptyCopy = empty;
  length = range.length;
  location = range.location;
  v17 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [style headIndent];
  v19 = v18;
  [style firstLineHeadIndent];
  v21 = v20;
  [style tailIndent];
  v23 = v22;
  [style paragraphSpacingBefore];
  v25 = v24;
  [style paragraphSpacing];
  v27 = v26;
  [style minimumLineHeight];
  v29 = v28;
  [style hyphenationFactor];
  v31 = v30;
  alignment = [style alignment];
  baseWritingDirection = [style baseWritingDirection];
  headerLevel = [style headerLevel];
  textLists = [style textLists];
  if ([textLists count])
  {
    lastObject = [textLists lastObject];
    if (intent)
    {
LABEL_3:
      v37 = [intent intentKind] != 6;
      goto LABEL_6;
    }
  }

  else
  {
    lastObject = 0;
    if (intent)
    {
      goto LABEL_3;
    }
  }

  v37 = 1;
LABEL_6:
  if (!lastObject)
  {
    goto LABEL_13;
  }

  isOrdered = [lastObject isOrdered];
  excludedElements2 = self->_excludedElements2;
  if (isOrdered)
  {
    if ((excludedElements2 & 0x40) != 0)
    {
      goto LABEL_13;
    }
  }

  else if ((excludedElements2 & 0x8000000) != 0)
  {
    goto LABEL_13;
  }

  if ((excludedElements2 & 4) == 0)
  {
    v40 = @"li";
    v19 = 0.0;
    v21 = 0.0;
    goto LABEL_44;
  }

LABEL_13:
  if (headerLevel < 1)
  {
    goto LABEL_36;
  }

  if (headerLevel <= 3)
  {
    if (headerLevel == 1)
    {
      if ((self->_excludedElements1 & 0x800000) == 0)
      {
        v40 = @"h1";
        goto LABEL_44;
      }
    }

    else if (headerLevel == 2)
    {
      if ((self->_excludedElements1 & 0x1000000) == 0)
      {
        v40 = @"h2";
        goto LABEL_44;
      }
    }

    else
    {
      v41 = headerLevel == 3;
      v40 = 0;
      if (!v41)
      {
        goto LABEL_37;
      }

      if ((self->_excludedElements1 & 0x2000000) == 0)
      {
        v40 = @"h3";
        goto LABEL_44;
      }
    }

LABEL_36:
    v40 = 0;
    goto LABEL_37;
  }

  if (headerLevel == 4)
  {
    if ((self->_excludedElements1 & 0x4000000) == 0)
    {
      v40 = @"h4";
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  if (headerLevel == 5)
  {
    if ((self->_excludedElements1 & 0x8000000) == 0)
    {
      v40 = @"h5";
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  v41 = headerLevel == 6;
  v40 = 0;
  if (v41)
  {
    if ((self->_excludedElements1 & 0x10000000) != 0)
    {
      v40 = 0;
    }

    else
    {
      v40 = @"h6";
    }
  }

LABEL_37:
  if (v40 != 0 || v37)
  {
    if (v40)
    {
      goto LABEL_44;
    }
  }

  else if ((self->_excludedElements1 & 0x200) == 0)
  {
    v40 = @"blockquote";
    goto LABEL_44;
  }

  if ((self->_excludedElements2 & 0x80) != 0)
  {
    v40 = 0;
    v48 = 0x7FFFFFFFFFFFFFFFLL;
    v50 = 12.0;
    v45 = &stru_1F01AD578;
    v84 = &stru_1F01AD578;
    v85 = &stru_1F01AD578;
    v67 = 0x7FFFFFFFFFFFFFFFLL;
    v51 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_100;
  }

  v40 = @"p";
LABEL_44:
  v42 = -v23;
  if (v23 >= 0.0)
  {
    v42 = 0.0;
  }

  [v17 appendFormat:@"margin: %.1fpx %.1fpx %.1fpx %.1fpx; ", v25, *&v42, v27, *&v19];
  if (baseWritingDirection == -1)
  {
    baseWritingDirection = _NSStringImputedBaseWritingDirectionAtIndex([(NSAttributedString *)self->_attrStr string], location, location, length);
  }

  v43 = alignment - 1;
  if ((alignment - 1) < 3)
  {
    v44 = off_1E726E3E8[v43];
    v45 = off_1E726E400[v43];
LABEL_53:
    [v17 appendString:v44];
    goto LABEL_54;
  }

  if (alignment)
  {
    v45 = &stru_1F01AD578;
    goto LABEL_54;
  }

  v45 = &stru_1F01AD578;
  if (baseWritingDirection == 1)
  {
    v45 = @" align=left";
    v44 = @"text-align: left; ";
    goto LABEL_53;
  }

LABEL_54:
  v46 = &stru_1F01AD578;
  if (v31 > 0.0)
  {
    [v17 appendString:@"-webkit-hyphens: auto; "];
  }

  if (baseWritingDirection == 1)
  {
    v46 = @" dir=rtl";
  }

  if (v21 != v19)
  {
    [v17 appendFormat:@"text-indent: %.1fpx; ", v21 - v19];
  }

  if (v29 > 0.0)
  {
    [v17 appendFormat:@"line-height: %.1fpx; ", *&v29];
  }

  if (length >= 0x400)
  {
    v47 = 1024;
  }

  else
  {
    v47 = length;
  }

  v85 = v46;
  if ((self->_excludedElements1 & 0x400000) != 0 || completelyEmpty)
  {
    v53 = [(NSHTMLWriter *)self _defaultValueForAttribute:@"NSFont" range:location, v47];
    v54 = &stru_1F01AD578;
    if (v53)
    {
      v55 = v53;
      [(UIFont *)v53 pointSize];
      v50 = v56;
      v57 = [(NSMutableDictionary *)self->_fontNames objectForKey:v55];
      if (!v57)
      {
        v57 = _fontNameForFont(v55, kit);
        if (v57)
        {
          [(NSMutableDictionary *)self->_fontNames setObject:v57 forKey:v55];
        }
      }

      +[NSTypesetter defaultTypesetterBehavior];
      [(UIFont *)v55 _defaultLineHeightForUILayout];
      v59 = v58;
      [(UIFont *)v55 _leading];
      v49 = v59 + v60;
    }

    else
    {
      v49 = 14.0;
      v57 = &stru_1F01AD578;
      v50 = 12.0;
    }

    if (v57)
    {
      v54 = v57;
    }

    if (v50 <= 0.0)
    {
      v50 = 12.0;
    }

    v52 = emptyCopy;
    if ([(__CFString *)v54 length])
    {
      v61 = _escapedStringForString(v54, 1);
      [v61 rangeOfCharacterFromSet:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AB08], "alphanumericCharacterSet"), "invertedSet")}];
      if (v62)
      {
        v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v61];
      }

      [v17 appendFormat:@"font: %.1fpx %@; ", *&v50, v61];
    }

    v84 = v54;
    v63 = [(NSHTMLWriter *)self _defaultValueForAttribute:@"NSColor" range:location, v47];
    if (v63 && (v64 = _colorValForColor_0(v63), v64 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v48 = v64;
      v68 = ~v64;
      [v17 appendFormat:@"color: #%.6x; ", v64 >> 8];
      if (v68)
      {
        [v17 appendFormat:@"color: %@; ", _rgbaString(v48)];
      }
    }

    else
    {
      v48 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v65 = [(NSHTMLWriter *)self _defaultValueForAttribute:@"NSStrokeColor" range:location, v47];
    if (v65 && (v66 = _colorValForColor_0(v65), v66 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v51 = v66;
      if (v66 == 0xFF)
      {
        [v17 appendFormat:@"-webkit-text-stroke: #%.6x; ", v66 >> 8];
      }

      else
      {
        [v17 appendFormat:@"-webkit-text-stroke: %@; ", _rgbaString(v66)];
      }
    }

    else
    {
      v51 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v48 = 0x7FFFFFFFFFFFFFFFLL;
    v49 = 14.0;
    v50 = 12.0;
    v84 = &stru_1F01AD578;
    v51 = 0x7FFFFFFFFFFFFFFFLL;
    v52 = emptyCopy;
  }

  v69 = [(NSHTMLWriter *)self _defaultValueForAttribute:@"NSBackgroundColor" range:location, v47];
  if (v69 && (v70 = _colorValForColor_0(v69), v70 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v67 = v70;
    v80 = ~v70;
    [v17 appendFormat:@"background-color: #%.6x; ", v70 >> 8];
    if (v80)
    {
      [v17 appendFormat:@"background-color: %@; ", _rgbaString(v67)];
    }
  }

  else
  {
    v67 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    [v17 appendFormat:@"min-height: %.1fpx; ", *&v49];
  }

LABEL_100:
  if ([v17 length])
  {
    v87 = v51;
    while (([v17 hasSuffix:@" "] & 1) != 0 || objc_msgSend(v17, "hasSuffix:", @";"))
    {
      [v17 deleteCharactersInRange:{objc_msgSend(v17, "length") - 1, 1}];
    }

    v71 = [(NSMutableArray *)self->_paraStyleStrings indexOfObject:v17];
    if (v71 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v71 = [(NSMutableArray *)self->_paraStyleStrings count];
      [(NSMutableArray *)self->_paraStyleStrings addObject:v17];
      paraStyleArrays = self->_paraStyleArrays;
      selfCopy = self;
      v72 = v40;
      v73 = MEMORY[0x1E695DEC8];
      v74 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
      v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
      v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v67];
      v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v87];
      v77 = v73;
      v40 = v72;
      self = selfCopy;
      -[NSMutableArray addObject:](paraStyleArrays, "addObject:", [v77 arrayWithObjects:{v84, v74, v75, v76, v81, 0}]);
    }

    v78 = v71 + 1;
    if ([@"p" isEqualToString:v40])
    {
      [(NSMutableIndexSet *)self->_paraStyleIndexes addIndex:v78];
    }

    if ([@"li" isEqualToString:v40])
    {
      [(NSMutableIndexSet *)self->_listItemStyleIndexes addIndex:v78];
    }
  }

  else
  {
    v78 = 0;
  }

  if (string)
  {
    *string = v40;
  }

  if (alignmentString)
  {
    *alignmentString = v45;
  }

  if (directionString)
  {
    *directionString = v85;
  }

  return v78;
}

- (void)_writeDocumentProperty:(id)property value:(id)value toString:(id)string
{
  if (property && value)
  {
    _prefix = [(NSHTMLWriter *)self _prefix];
    v10 = _escapedStringForString(value, 1);
    if ((self->_excludedElements2 & 0x10000000) != 0)
    {
      v11 = &stru_1F01AD578;
    }

    else
    {
      v11 = @" /";
    }

    [string appendFormat:@"%@<meta name=%@ content=%@%@>\n", _prefix, property, v10, v11];
  }
}

- (void)_writeDocumentPropertiesToString:(id)string
{
  excludedElements2 = self->_excludedElements2;
  if ((excludedElements2 & 0x800000) == 0)
  {
    [string appendFormat:@"%@<title>%@</title>\n", -[NSHTMLWriter _prefix](self, "_prefix"), _escapedStringForString(-[NSDictionary objectForKey:](self->_documentAttrs, "objectForKey:", @"NSTitleDocumentAttribute", 0)];
    excludedElements2 = self->_excludedElements2;
  }

  if ((excludedElements2 & 0x10) == 0)
  {
    v6 = [(NSDictionary *)self->_documentAttrs objectForKey:@"NSKeywordsDocumentAttribute"];
    v7 = [(NSDictionary *)self->_documentAttrs objectForKey:@"NSCreationTimeDocumentAttribute"];
    v8 = [(NSDictionary *)self->_documentAttrs objectForKey:@"NSModificationTimeDocumentAttribute"];
    if (v6 && [v6 count])
    {
      v23 = [v6 componentsJoinedByString:{@", "}];
    }

    else
    {
      v23 = 0;
    }

    v9 = objc_alloc(MEMORY[0x1E695DEE8]);
    v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v11 = v10;
    if (v7)
    {
      v12 = [v10 components:252 fromDate:v7];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%04d-%02d-%02dT%02d:%02d:%02dZ", objc_msgSend(v12, "year"), objc_msgSend(v12, "month"), objc_msgSend(v12, "day"), objc_msgSend(v12, "hour"), objc_msgSend(v12, "minute"), objc_msgSend(v12, "second")];
      if (!v8)
      {
LABEL_12:

        [(NSHTMLWriter *)self _writeDocumentProperty:@"Author" value:[(NSDictionary *)self->_documentAttrs objectForKey:@"NSAuthorDocumentAttribute"] toString:string];
        [(NSHTMLWriter *)self _writeDocumentProperty:@"LastAuthor" value:[(NSDictionary *)self->_documentAttrs objectForKey:@"NSEditorDocumentAttribute"] toString:string];
        [(NSHTMLWriter *)self _writeDocumentProperty:@"Company" value:[(NSDictionary *)self->_documentAttrs objectForKey:@"NSCompanyDocumentAttribute"] toString:string];
        [(NSHTMLWriter *)self _writeDocumentProperty:@"Copyright" value:[(NSDictionary *)self->_documentAttrs objectForKey:@"NSCopyrightDocumentAttribute"] toString:string];
        [(NSHTMLWriter *)self _writeDocumentProperty:@"Subject" value:[(NSDictionary *)self->_documentAttrs objectForKey:@"NSSubjectDocumentAttribute"] toString:string];
        [(NSHTMLWriter *)self _writeDocumentProperty:@"Description" value:[(NSDictionary *)self->_documentAttrs objectForKey:@"NSCommentDocumentAttribute"] toString:string];
        [(NSHTMLWriter *)self _writeDocumentProperty:@"Keywords" value:v23 toString:string];
        [(NSHTMLWriter *)self _writeDocumentProperty:@"CreationTime" value:v13 toString:string];
        [(NSHTMLWriter *)self _writeDocumentProperty:@"ModificationTime" value:v8 toString:string];

        [(NSHTMLWriter *)self _writeDocumentProperty:@"Generator" value:@"Cocoa HTML Writer" toString:string];
        return;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    [v11 components:252 fromDate:v8];
    v22 = v13;
    v14 = MEMORY[0x1E696AEC0];
    year = [v12 year];
    month = [v12 month];
    v17 = [v12 day];
    hour = [v12 hour];
    minute = [v12 minute];
    second = [v12 second];
    v20 = v14;
    v13 = v22;
    v8 = [v20 stringWithFormat:@"%04d-%02d-%02dT%02d:%02d:%02dZ", year, month, v17, hour, minute, second];
    goto LABEL_12;
  }
}

- (void)_closeFlags:(unint64_t)flags openFlags:(unint64_t)openFlags inString:(id)string
{
  openFlagsCopy = openFlags;
  flagsCopy = flags;
  v9 = openFlags ^ flags;
  if ((openFlags ^ flags))
  {
    v11 = 0;
    v10 = 63;
    if ((flags & 0x20) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (((openFlags ^ flags) & 2) != 0)
  {
    v11 = 0;
    v10 = 62;
    if ((flags & 0x20) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (((openFlags ^ flags) & 4) != 0)
  {
    v11 = 0;
    v10 = 60;
    if ((flags & 0x20) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (((openFlags ^ flags) & 8) != 0)
  {
    v11 = 0;
    v10 = 56;
    if ((flags & 0x20) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (((openFlags ^ flags) & 0x10) != 0)
  {
    v11 = 0;
    v10 = 48;
    if ((flags & 0x20) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = v9 & 0x20;
    v11 = (v9 & 0x20) == 0;
    if ((flags & 0x20) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v11)
  {
    [string appendString:@"</sub>"];
  }

LABEL_19:
  if ((flagsCopy & v10 & 0x10) != 0)
  {
    [string appendString:@"</sup>"];
  }

  if ((flagsCopy & v10 & 8) != 0)
  {
    [string appendString:@"</i>"];
  }

  if ((flagsCopy & v10 & 4) != 0)
  {
    [string appendString:@"</b>"];
  }

  if ((flagsCopy & v10 & 2) != 0)
  {
    if ((self->_excludedElements2 & 0x400) != 0)
    {
      v12 = @"</strike>";
    }

    else
    {
      v12 = @"</s>";
    }

    [string appendString:v12];
  }

  if (flagsCopy & v10)
  {
    [string appendString:@"</u>"];
  }

  if (openFlagsCopy & v10)
  {
    [string appendString:@"<u>"];
  }

  if ((openFlagsCopy & v10 & 2) != 0)
  {
    if ((self->_excludedElements2 & 0x400) != 0)
    {
      v13 = @"<strike>";
    }

    else
    {
      v13 = @"<s>";
    }

    [string appendString:v13];
  }

  if ((openFlagsCopy & v10 & 4) != 0)
  {
    [string appendString:@"<b>"];
  }

  if ((openFlagsCopy & v10 & 8) != 0)
  {
    [string appendString:@"<i>"];
  }

  if ((openFlagsCopy & v10 & 0x10) != 0)
  {
    [string appendString:@"<sup>"];
  }

  v14 = (openFlagsCopy & 0x20) == 0 || v11;
  if ((v14 & 1) == 0)
  {

    [string appendString:@"<sub>"];
  }
}

- (void)_openBlocksForParagraphStyle:(id)style atIndex:(unint64_t)index inString:(id)string
{
  textBlocks = [style textBlocks];
  v8 = [textBlocks count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; v9 != i; ++i)
    {
      v11 = [textBlocks objectAtIndex:i];
      if ([(NSAttributedString *)self->_attrStr rangeOfTextBlock:v11 atIndex:index]== index)
      {
        v12 = [(NSHTMLWriter *)self _blockClassForBlock:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          table = [v11 table];
          v43 = [(NSAttributedString *)self->_attrStr _atStartOfTextTableRow:table atIndex:index];
          v14 = [(NSAttributedString *)self->_attrStr _atStartOfTextTable:table atIndex:index];
          [v11 verticalAlignment];
          rowSpan = [v11 rowSpan];
          columnSpan = [v11 columnSpan];
          v20 = &stru_1F01AD578;
          if (rowSpan >= 2)
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@" rowspan=%d", rowSpan];
          }

          v44 = v20;
          v21 = &stru_1F01AD578;
          if (columnSpan >= 2)
          {
            v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@" colspan=%d", columnSpan];
          }

          if (v14)
          {
            v22 = [(NSHTMLWriter *)self _blockClassForBlock:table];
            [table contentWidth];
            v24 = &stru_1F01AD578;
            if (v23 > 0.0)
            {
              v25 = v23;
              if ([table contentWidthValueType] == 1)
              {
                v26 = @" width=%.1f%%";
              }

              else
              {
                v26 = @" width=%.1f";
              }

              v24 = [MEMORY[0x1E696AEC0] stringWithFormat:v26, *&v25];
            }

            excludedElements2 = self->_excludedElements2;
            if ((excludedElements2 & 0x1140000) != 0)
            {
              excludedElements1 = self->_excludedElements1;
              if ((excludedElements1 & 0x40000) == 0)
              {
                if (!v22 || (excludedElements2 & 0x1000) != 0)
                {
                  [string appendFormat:@"%@<div>\n", -[NSHTMLWriter _prefixUp](self, "_prefixUp"), v41];
                }

                else
                {
                  v29 = excludedElements1 & 0x20000000 | self->_excludedElements2 & 0x8000;
                  _prefixUp = [(NSHTMLWriter *)self _prefixUp];
                  if (v29)
                  {
                    [string appendFormat:@"%@<div style=%@>\n", _prefixUp, -[NSMutableArray objectAtIndex:](self->_blockStyleStrings, "objectAtIndex:", v22 - 1)];
                  }

                  else
                  {
                    [string appendFormat:@"%@<div class=d%lu>\n", _prefixUp, v22];
                  }
                }
              }
            }

            else
            {
              if (!v22 || (excludedElements2 & 0x1000) != 0)
              {
                [string appendFormat:@"%@<table%@ cellspacing=0 cellpadding=0>\n", -[NSHTMLWriter _prefixUp](self, "_prefixUp"), v24, v42];
              }

              else
              {
                v31 = self->_excludedElements1 & 0x20000000 | self->_excludedElements2 & 0x8000;
                _prefixUp2 = [(NSHTMLWriter *)self _prefixUp];
                if (v31)
                {
                  [string appendFormat:@"%@<table%@ cellspacing=0 cellpadding=0 style=%@>\n", _prefixUp2, v24, -[NSMutableArray objectAtIndex:](self->_tableStyleStrings, "objectAtIndex:", v22 - 1)];
                }

                else
                {
                  [string appendFormat:@"%@<table%@ cellspacing=0 cellpadding=0 class=t%lu>\n", _prefixUp2, v24, v22];
                }
              }

              if ((self->_excludedElements2 & 0x80000) == 0)
              {
                [string appendFormat:@"%@<tbody>\n", -[NSHTMLWriter _prefixUp](self, "_prefixUp"), v41];
              }
            }
          }

          v33 = self->_excludedElements2;
          if ((v33 & 0x1140000) == 0)
          {
            if (v43)
            {
              [string appendFormat:@"%@<tr>\n", -[NSHTMLWriter _prefixUp](self, "_prefixUp")];
            }

            if (!v12 || (self->_excludedElements2 & 0x1000) != 0)
            {
              v42 = v21;
              v41 = v44;
              [string appendFormat:@"%@<td%@%@ valign=%@>\n", -[NSHTMLWriter _prefixUp](self, "_prefixUp")];
            }

            else
            {
              v38 = self->_excludedElements1 & 0x20000000 | self->_excludedElements2 & 0x8000;
              _prefixUp3 = [(NSHTMLWriter *)self _prefixUp];
              v40 = _prefixUp3;
              if (v38)
              {
                [(NSMutableArray *)self->_tableCellStyleStrings objectAtIndex:v12 - 1];
                v41 = v44;
                v42 = v21;
                [string appendFormat:@"%@<td%@%@ valign=%@ style=%@>\n", v40];
              }

              else
              {
                v41 = v44;
                v42 = v21;
                [string appendFormat:@"%@<td%@%@ valign=%@ class=td%lu>\n", _prefixUp3];
              }
            }

            continue;
          }

          v34 = self->_excludedElements1;
          if ((v34 & 0x40000) == 0)
          {
            if (v12 && (v33 & 0x1000) == 0)
            {
              v17 = v34 & 0x20000000;
              v16 = self->_excludedElements2 & 0x8000;
LABEL_41:
              v35 = v17 | v16;
              _prefixUp4 = [(NSHTMLWriter *)self _prefixUp];
              v37 = _prefixUp4;
              if (v35)
              {
                v41 = [(NSMutableArray *)self->_blockStyleStrings objectAtIndex:v12 - 1];
                [string appendFormat:@"%@<div style=%@>\n", v37];
              }

              else
              {
                v41 = v12;
                [string appendFormat:@"%@<div class=d%lu>\n", _prefixUp4];
              }

              continue;
            }

LABEL_43:
            [string appendFormat:@"%@<div>\n", -[NSHTMLWriter _prefixUp](self, "_prefixUp")];
          }
        }

        else
        {
          v15 = self->_excludedElements1;
          if ((v15 & 0x40000) == 0)
          {
            if (v12 && (self->_excludedElements2 & 0x1000) == 0)
            {
              v16 = v15 & 0x20000000;
              v17 = self->_excludedElements2 & 0x8000;
              goto LABEL_41;
            }

            goto LABEL_43;
          }
        }
      }
    }
  }
}

- (BOOL)_closeBlocksForParagraphStyle:(id)style atIndex:(unint64_t)index inString:(id)string
{
  textBlocks = [style textBlocks];
  v8 = [textBlocks count];
  v9 = 0;
  if (v8)
  {
    v10 = v8 - 1;
    while (1)
    {
      v11 = [textBlocks objectAtIndex:v10];
      v12 = [(NSAttributedString *)self->_attrStr rangeOfTextBlock:v11 atIndex:index];
      if (v12 + v13 != index + 1)
      {
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_14:
      if ((self->_excludedElements1 & 0x40000) == 0)
      {
        v19 = @"%@</div>\n";
LABEL_16:
        [string appendFormat:v19, -[NSHTMLWriter _prefixDown](self, "_prefixDown")];
        v9 = 1;
      }

LABEL_17:
      if (--v10 == -1)
      {
        return v9;
      }
    }

    table = [v11 table];
    v15 = [(NSAttributedString *)self->_attrStr _atEndOfTextTableRow:table atIndex:index];
    v16 = [(NSAttributedString *)self->_attrStr _atEndOfTextTable:table atIndex:index];
    if ((self->_excludedElements2 & 0x1140000) != 0)
    {
      v17 = @"%@</div>\n";
      if ((self->_excludedElements1 & 0x40000) != 0)
      {
        if (!v15)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v17 = @"%@</td>\n";
    }

    [string appendFormat:v17, -[NSHTMLWriter _prefixDown](self, "_prefixDown")];
    v9 = 1;
    if (!v15)
    {
      goto LABEL_12;
    }

LABEL_11:
    if ((self->_excludedElements2 & 0x1140000) == 0)
    {
      [string appendFormat:@"%@</tr>\n", -[NSHTMLWriter _prefixDown](self, "_prefixDown")];
      v9 = 1;
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_13:
      excludedElements2 = self->_excludedElements2;
      if ((excludedElements2 & 0x1140000) == 0)
      {
        v19 = @"%@</table>\n";
        if ((excludedElements2 & 0x80000) == 0)
        {
          [string appendFormat:@"%@</tbody>\n", -[NSHTMLWriter _prefixDown](self, "_prefixDown")];
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_12:
    if (!v16)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  return v9;
}

- (unint64_t)_listClassForList:(id)list
{
  isOrdered = [list isOrdered];
  v6 = 152;
  if (isOrdered)
  {
    v6 = 144;
  }

  v7 = *(&self->super.isa + v6);
  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  _markerSpecifierAsCSSValue = [list _markerSpecifierAsCSSValue];
  if ([_markerSpecifierAsCSSValue length])
  {
    [v8 appendFormat:@"list-style-type: %@; ", _markerSpecifierAsCSSValue];
  }

  if ([v8 length])
  {
    while (([v8 hasSuffix:@" "] & 1) != 0 || objc_msgSend(v8, "hasSuffix:", @";"))
    {
      [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - 1, 1}];
    }

    v10 = [v7 indexOfObject:v8];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v7 count];
      [v7 addObject:v8];
    }

    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_openListsForParagraphStyle:(id)style atIndex:(unint64_t)index inString:(id)string isStrict:(BOOL)strict
{
  textLists = [style textLists];
  v11 = [textLists count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    strictCopy = strict;
    do
    {
      v14 = [textLists objectAtIndex:v13];
      if ([(NSAttributedString *)self->_attrStr rangeOfTextList:v14 atIndex:index]== index)
      {
        v15 = [(NSHTMLWriter *)self _listClassForList:v14];
        if ([v14 isOrdered])
        {
          startingItemNumber = [v14 startingItemNumber];
          v17 = &stru_1F01AD578;
          if (!strict && startingItemNumber != 1)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@" start=%ld", startingItemNumber];
          }

          excludedElements2 = self->_excludedElements2;
          if ((excludedElements2 & 0x40) != 0)
          {
            goto LABEL_23;
          }

          if (v15 && (excludedElements2 & 0x1000) == 0)
          {
            v19 = self->_excludedElements1 & 0x20000000 | self->_excludedElements2 & 0x8000;
            _prefixUp = [(NSHTMLWriter *)self _prefixUp];
            if (v19)
            {
              [string appendFormat:@"%@<ol style=%@%@>\n", _prefixUp, -[NSMutableArray objectAtIndex:](self->_olistStyleStrings, "objectAtIndex:", v15 - 1), v17];
            }

            else
            {
              [string appendFormat:@"%@<ol class=ol%lu%@>\n", _prefixUp, v15, v17];
            }

LABEL_22:
            strict = strictCopy;
            goto LABEL_23;
          }

          [string appendFormat:@"%@<ol%@>\n", -[NSHTMLWriter _prefixUp](self, "_prefixUp"), v17];
        }

        else
        {
          v21 = self->_excludedElements2;
          if ((v21 & 0x8000000) == 0)
          {
            if (v15 && (v21 & 0x1000) == 0)
            {
              v22 = self->_excludedElements1 & 0x20000000 | self->_excludedElements2 & 0x8000;
              _prefixUp2 = [(NSHTMLWriter *)self _prefixUp];
              if (v22)
              {
                [string appendFormat:@"%@<ul style=%@>\n", _prefixUp2, -[NSMutableArray objectAtIndex:](self->_ulistStyleStrings, "objectAtIndex:", v15 - 1), v25];
              }

              else
              {
                [string appendFormat:@"%@<ul class=ul%lu>\n", _prefixUp2, v15, v25];
              }

              goto LABEL_22;
            }

            [string appendFormat:@"%@<ul>\n", -[NSHTMLWriter _prefixUp](self, "_prefixUp"), v24];
          }
        }
      }

LABEL_23:
      ++v13;
    }

    while (v12 != v13);
  }
}

- (BOOL)_closeListsForParagraphStyle:(id)style atIndex:(unint64_t)index inString:(id)string
{
  textLists = [style textLists];
  v9 = [textLists count];
  v10 = 0;
  if (v9)
  {
    for (i = v9 - 1; i != -1; --i)
    {
      v12 = [textLists objectAtIndex:i];
      v13 = [(NSAttributedString *)self->_attrStr rangeOfTextList:v12 atIndex:index];
      if (v13 + v14 == index + 1)
      {
        isOrdered = [v12 isOrdered];
        excludedElements2 = self->_excludedElements2;
        if (!isOrdered)
        {
          v17 = @"%@</ul>\n";
          if ((excludedElements2 & 0x8000000) != 0)
          {
            continue;
          }

LABEL_6:
          [string appendFormat:v17, -[NSHTMLWriter _prefixDown](self, "_prefixDown")];
          v10 = 1;
          continue;
        }

        v17 = @"%@</ol>\n";
        if ((excludedElements2 & 0x40) == 0)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return v10;
}

- (void)_addImageElementForResource:(id)resource description:(id)description inString:(id)string
{
  v8 = [objc_msgSend(resource "URL")];
  v9 = _escapedStringForString(description, 1);
  if ((self->_excludedElements2 & 0x10000000) != 0)
  {
    v10 = &stru_1F01AD578;
  }

  else
  {
    v10 = @" /";
  }

  [string appendFormat:@"<img src=%@ alt=%@%@>", v8, v9, v10];
}

- (void)_addSourceElementForResource:(id)resource MIMEType:(id)type inString:(id)string
{
  v8 = [objc_msgSend(resource "URL")];
  if ((self->_excludedElements2 & 0x10000000) != 0)
  {
    v9 = &stru_1F01AD578;
  }

  else
  {
    v9 = @" /";
  }

  [string appendFormat:@"<source srcset=%@ type=%@%@>", v8, type, v9];
}

- (id)_resourceForFileWrapper:(id)wrapper filename:(id *)filename
{
  if (![wrapper isRegularFile])
  {
    return 0;
  }

  preferredFilename = [wrapper preferredFilename];
  if (!preferredFilename)
  {
    return 0;
  }

  v8 = preferredFilename;
  regularFileContents = [wrapper regularFileContents];
  pathExtension = [v8 pathExtension];
  stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];
  v11 = [(NSDictionary *)[(NSFileWrapper *)self->_fileWrapper fileWrappers] objectForKey:v8];
  v12 = v8;
  if (v11)
  {
    v13 = v11;
    v14 = 1;
    v12 = v8;
    while (![v13 isRegularFile] || (objc_msgSend(regularFileContents, "isEqual:", objc_msgSend(v13, "regularFileContents")) & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%lu", stringByDeletingPathExtension, v14];
      v12 = v15;
      if (pathExtension)
      {
        v12 = [v15 stringByAppendingPathExtension:pathExtension];
      }

      v13 = [(NSDictionary *)[(NSFileWrapper *)self->_fileWrapper fileWrappers] objectForKey:v12];
      ++v14;
      if (!v13)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if ([v12 isEqualToString:v8])
    {
      [(NSFileWrapper *)self->_fileWrapper addFileWrapper:wrapper];
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:regularFileContents];
      [v17 setPreferredFilename:v12];
      [(NSFileWrapper *)self->_fileWrapper addFileWrapper:v17];
    }
  }

  v16 = [(NSMutableDictionary *)self->_subresources objectForKey:v12];
  if (!v16)
  {
    outputBaseURL = self->_outputBaseURL;
    v20 = MEMORY[0x1E695DFF8];
    v21 = outputBaseURL ? [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", -[NSURL absoluteString](outputBaseURL, "absoluteString"), objc_msgSend(v12, "stringByAddingPercentEscapesUsingEncoding:", 4)] : objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"file:///%@", objc_msgSend(v12, "stringByAddingPercentEscapesUsingEncoding:", 4), v35);
    v16 = [v20 URLWithString:v21];
    if (v16)
    {
      if (self->_resourceHandler && (objc_opt_respondsToSelector() & 1) != 0)
      {
        resourceHandler = self->_resourceHandler;
        lowercaseString = [pathExtension lowercaseString];
        if ([@"tiff" isEqualToString:lowercaseString] & 1) != 0 || (objc_msgSend(@"tif", "isEqualToString:", lowercaseString))
        {
          preferredMIMEType = @"image/tiff";
        }

        else if ([@"jpeg" isEqualToString:lowercaseString] & 1) != 0 || (objc_msgSend(@"jpg", "isEqualToString:", lowercaseString))
        {
          preferredMIMEType = @"image/jpeg";
        }

        else if ([@"gif" isEqualToString:lowercaseString])
        {
          preferredMIMEType = @"image/gif";
        }

        else if ([@"png" isEqualToString:lowercaseString])
        {
          preferredMIMEType = @"image/png";
        }

        else
        {
          v32 = [@"pdf" isEqualToString:lowercaseString];
          if (v32)
          {
            preferredMIMEType = @"application/pdf";
          }

          else
          {
            preferredMIMEType = @"application/octet-stream";
          }

          if ((v32 & 1) == 0 && pathExtension)
          {
            if ([pathExtension length] && (v33 = objc_msgSend(MEMORY[0x1E6982C40], "typeWithFilenameExtension:", pathExtension)) != 0 && (v34 = v33, objc_msgSend(v33, "preferredMIMEType")))
            {
              preferredMIMEType = [v34 preferredMIMEType];
            }

            else
            {
              preferredMIMEType = @"application/octet-stream";
            }
          }
        }

        v25 = [resourceHandler resourceForData:regularFileContents URL:v16 MIMEType:preferredMIMEType textEncodingName:0 frameName:0];
      }

      else
      {
        v26 = [NSSubstituteWebResource alloc];
        lowercaseString2 = [pathExtension lowercaseString];
        if ([@"tiff" isEqualToString:lowercaseString2] & 1) != 0 || (objc_msgSend(@"tif", "isEqualToString:", lowercaseString2))
        {
          preferredMIMEType2 = @"image/tiff";
        }

        else if ([@"jpeg" isEqualToString:lowercaseString2] & 1) != 0 || (objc_msgSend(@"jpg", "isEqualToString:", lowercaseString2))
        {
          preferredMIMEType2 = @"image/jpeg";
        }

        else if ([@"gif" isEqualToString:lowercaseString2])
        {
          preferredMIMEType2 = @"image/gif";
        }

        else if ([@"png" isEqualToString:lowercaseString2])
        {
          preferredMIMEType2 = @"image/png";
        }

        else
        {
          v29 = [@"pdf" isEqualToString:lowercaseString2];
          if (v29)
          {
            preferredMIMEType2 = @"application/pdf";
          }

          else
          {
            preferredMIMEType2 = @"application/octet-stream";
          }

          if ((v29 & 1) == 0 && pathExtension)
          {
            if ([pathExtension length] && (v30 = objc_msgSend(MEMORY[0x1E6982C40], "typeWithFilenameExtension:", pathExtension)) != 0 && (v31 = v30, objc_msgSend(v30, "preferredMIMEType")))
            {
              preferredMIMEType2 = [v31 preferredMIMEType];
            }

            else
            {
              preferredMIMEType2 = @"application/octet-stream";
            }
          }
        }

        v25 = [(NSSubstituteWebResource *)v26 initWithData:regularFileContents URL:v16 MIMEType:preferredMIMEType2 textEncodingName:0 frameName:0];
      }

      v16 = v25;
      if (v25)
      {
        [(NSMutableDictionary *)self->_subresources setObject:v25 forKey:v12];
      }
    }
  }

  if (filename)
  {
    *filename = v12;
  }

  return v16;
}

- (void)_appendAttachment:(id)attachment atIndex:(unint64_t)index toString:(id)string
{
  if (self->_resourceHandler && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [self->_resourceHandler htmlStringForAttachment:attachment atIndex:index];
    if (v9)
    {

      [string appendString:v9];
    }
  }

  else if ((~self->_excludedElements2 & 0x22) != 0)
  {
    fileWrapper = [attachment fileWrapper];
    v11 = [objc_msgSend(fileWrapper "preferredFilename")];
    v19 = 0;
    v12 = [(NSHTMLWriter *)self _resourceForFileWrapper:fileWrapper filename:&v19];
    if (v12)
    {
      v13 = v12;
      excludedElements2 = self->_excludedElements2;
      if ((excludedElements2 & 2) == 0)
      {
        if (v11 && ((v15 = [v11 lowercaseString], (objc_msgSend(@"tiff", "isEqualToString:", v15) & 1) == 0) && (objc_msgSend(@"tif", "isEqualToString:", v15) & 1) == 0 ? ((objc_msgSend(@"jpeg", "isEqualToString:", v15) & 1) == 0 && (objc_msgSend(@"jpg", "isEqualToString:", v15) & 1) == 0 ? ((objc_msgSend(@"gif", "isEqualToString:", v15) & 1) == 0 ? ((objc_msgSend(@"png", "isEqualToString:", v15) & 1) == 0 ? ((objc_msgSend(@"pdf", "isEqualToString:", v15) & 1) == 0 ? (!objc_msgSend(v11, "length") || (v17 = objc_msgSend(MEMORY[0x1E6982C40], "typeWithFilenameExtension:", v11)) == 0 || (v18 = v17, !objc_msgSend(v17, "preferredMIMEType")) ? (v16 = @"application/octet-stream") : (v16 = objc_msgSend(v18, "preferredMIMEType"))) : (v16 = @"application/pdf")) : (v16 = @"image/png")) : (v16 = @"image/gif")) : (v16 = @"image/jpeg")) : (v16 = @"image/tiff"), (-[__CFString hasPrefix:](v16, "hasPrefix:", @"image") & 1) != 0) || (objc_msgSend(objc_msgSend(v13, "MIMEType"), "hasPrefix:", @"image") & 1) != 0)
        {
          [(NSHTMLWriter *)self _addImageElementForResource:v13 description:v19 inString:string];
          return;
        }

        excludedElements2 = self->_excludedElements2;
      }

      if ((excludedElements2 & 0x20) == 0)
      {
        [(NSHTMLWriter *)self _addObjectElementForResource:v13 description:v19 inString:string];
      }
    }
  }
}

- (void)_appendImageGlyph:(id)glyph withAttributes:(id)attributes toString:(id)string
{
  if ((~self->_excludedElements2 & 0x22) != 0)
  {
    v17[7] = v5;
    v17[8] = v6;
    v10 = [glyph _configuredFileWrapperForAttributes:{0, attributes}];
    _fallbackFileWrapper = [glyph _fallbackFileWrapper];
    v17[0] = 0;
    if ((self->_excludedElements3 & 3) != 0)
    {
      v12 = [(NSHTMLWriter *)self _resourceForFileWrapper:_fallbackFileWrapper filename:v17];
      if (!v12)
      {
        return;
      }

      goto LABEL_11;
    }

    v12 = [(NSHTMLWriter *)self _resourceForFileWrapper:v10 filename:v17];
    v13 = [(NSHTMLWriter *)self _resourceForFileWrapper:_fallbackFileWrapper filename:0];
    if (!v12 || (v14 = v13) == 0)
    {
      if (!v12)
      {
        return;
      }

LABEL_11:
      excludedElements2 = self->_excludedElements2;
      if ((excludedElements2 & 2) != 0)
      {
        if ((excludedElements2 & 0x20) == 0)
        {
          [(NSHTMLWriter *)self _addObjectElementForResource:v12 description:v17[0] inString:string];
        }
      }

      else
      {
        [(NSHTMLWriter *)self _addImageElementForResource:v12 description:v17[0] inString:string];
      }

      return;
    }

    contentDescription = [glyph contentDescription];
    if (![contentDescription length])
    {
      contentDescription = v17[0];
    }

    [string appendString:@"<picture>"];
    [(NSHTMLWriter *)self _addSourceElementForResource:v12 MIMEType:@"image/x-apple-adaptive-glyph" inString:string];
    [(NSHTMLWriter *)self _addImageElementForResource:v14 description:contentDescription inString:string];
    [string appendString:@"</picture>"];
  }
}

- (BOOL)_isStrictByParsingExcludedElements
{
  selfCopy = self;
  v3 = [(NSDictionary *)self->_documentAttrs objectForKey:@"ExcludedElements"];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"APPLET", @"BASEFONT", @"CENTER", @"DIR", @"FONT", @"ISINDEX", @"MENU", @"S", @"STRIKE", @"U", 0}];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"A", @"ABBR", @"ACRONYM", @"ADDRESS", @"B", @"BASE", @"BASEFONT", @"BDO", @"BIG", @"BLOCKQUOTE", @"BODY", @"BR", @"CAPTION", @"CITE", @"COL", @"COLGROUP", @"DD", @"DFN", @"DIV", @"DL", @"DOCTYPE", @"EM", @"FONT", @"H1", @"H2", @"H3", @"H4", @"H5", @"H6", @"HEAD", @"HR", @"HTML", @"I", @"IMG", @"LI", @"LINK", @"META", @"OBJECT", @"OL", @"P", @"PRE", @"Q", @"S", @"SMALL", @"SPAN", @"STRIKE", @"STRONG", @"STYLE", @"SUB", @"SUP", @"TABLE", @"TBODY", @"TD", @"TFOOT", @"THEAD", @"TITLE", @"TR", @"TT", @"U", @"UL", @"XML"}];
  v6 = [v4 count];
  v7 = [v5 count];
  if (!v3)
  {
    v8 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"APPLET", @"BASEFONT", @"CENTER", @"DIR", @"FONT", @"ISINDEX", @"MENU", @"S", @"STRIKE", @"U", @"XML", 0}];
    }

    v3 = v8;
  }

  v9 = [v3 count];
  v10 = v9;
  if (v6)
  {
    v11 = 0;
    while (v10)
    {
      for (i = 0; i < v10; ++i)
      {
        v13 = [objc_msgSend(v4 objectAtIndex:{v11), "compare:options:", objc_msgSend(v3, "objectAtIndex:", i), 1}];
        v14 = v13 == 0;
        if (!v13)
        {
          break;
        }
      }

      if (!v13 && ++v11 < v6)
      {
        continue;
      }

      goto LABEL_15;
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
    if (v9)
    {
LABEL_15:
      v15 = 0;
      p_excludedElements3 = &selfCopy->_excludedElements3;
      v17 = selfCopy;
      p_excludedElements2 = &selfCopy->_excludedElements2;
      v26 = v17;
      v27 = p_excludedElements3;
      p_excludedElements1 = &v17->_excludedElements1;
      do
      {
        if (v7)
        {
          v20 = 0;
          while ([objc_msgSend(v5 objectAtIndex:{v20), "compare:options:", objc_msgSend(v3, "objectAtIndex:", v15), 1}])
          {
            if (++v20 >= v7)
            {
              goto LABEL_31;
            }
          }

          v21 = v20 - 64;
          if (v20 > 0x3F)
          {
            v22 = v27;
          }

          else
          {
            v21 = v20 - 32;
            v22 = p_excludedElements2;
          }

          if (v20 <= 0x1F)
          {
            v23 = v20;
          }

          else
          {
            v23 = v21;
          }

          if (v20 <= 0x1F)
          {
            v24 = p_excludedElements1;
          }

          else
          {
            v24 = v22;
          }

          *v24 |= 1 << v23;
        }

LABEL_31:
        ++v15;
      }

      while (v15 != v10);
      selfCopy = v26;
    }
  }

  return (selfCopy->_excludedElements2 & 0x80) == 0 && v14;
}

- (void)_prepareString:(id)string forConversionToEncoding:(unint64_t)encoding
{
  v6 = [string length];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v22[1] = 0;
    v23 = 0;
    range.length = 0;
    v22[0] = 0;
    range.location = 0;
    v10 = *MEMORY[0x1E695E9B0];
    v11 = v6;
    v12 = 0;
    do
    {
      if (16 * v11 <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 16 * v11;
      }

      if ([string getBytes:0 maxLength:v13 usedLength:&v23 encoding:encoding options:0 range:v9 remainingRange:{v11, v22, range.location, range.length}])
      {
        v14 = v23 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v12 = v8;
        if (v22[0] > v8)
        {
          v15 = [string rangeOfComposedCharacterSequenceAtIndex:v22[0] - 1];
          if ((v15 + v16) <= v22[0])
          {
            v12 = v22[0];
          }

          else
          {
            v12 = v15;
          }
        }
      }

      v11 = v7 - v12;
      if (v7 <= v12)
      {
        break;
      }

      if (v12 <= v8)
      {
        v17 = [string rangeOfComposedCharacterSequenceAtIndex:v8];
        v19 = v17 + v18;
        range.location = v9;
        range.length = v17 + v18 - v8;
        if (CFStringTransform(string, &range, v10, 0))
        {
          v12 = range.length + range.location;
        }

        else
        {
          v12 = v19;
        }

        v20 = [string length];
        v11 = v20 - v12;
        if (v20 <= v12)
        {
          return;
        }

        v7 = v20;
        if (v12 <= v8)
        {
          v12 = v8 + 1;
          if (v20 <= v8 + 1)
          {
            return;
          }

          v11 = v20 + ~v8;
        }
      }

      v8 = v12;
      v9 = v12;
    }

    while (v11);
  }
}

- (id)markElementFor:(id)for spanClass:(unint64_t)class paraClass:(unint64_t)paraClass
{
  if ([for isEqual:{@"NSTextHighlightStyleDefault", class, paraClass}])
  {
    return @"<mark style=background-color: rgba(0, 0, 0, 0.0)>";
  }

  else
  {
    return @"<mark>";
  }
}

- (void)_generateHTMLForWebKit:(BOOL)kit
{
  kitCopy = kit;
  string = [(NSAttributedString *)self->_attrStr string];
  v223 = [(NSString *)string length];
  string2 = [MEMORY[0x1E696AD60] string];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v220 = [(NSDictionary *)self->_documentAttrs objectForKey:@"CharacterEncoding"];
  v5 = [(NSDictionary *)self->_documentAttrs objectForKey:@"PrefixSpaces"];
  v6 = [(NSDictionary *)self->_documentAttrs objectForKey:@"InterchangeNewline"];
  v7 = [(NSDictionary *)self->_documentAttrs objectForKey:@"NoDefaultFonts"];
  v8 = [(NSDictionary *)self->_documentAttrs objectForKey:@"TabsToSpaces"];
  v9 = [(NSDictionary *)self->_documentAttrs objectForKey:@"CoalesceTabSpans"];
  v192 = _colorValForColor_0([(NSDictionary *)self->_documentAttrs objectForKey:@"BackgroundColor"]);
  v229[0] = xmmword_18E856180;
  v227 = 0;
  v228 = 0;
  v225 = 0;
  v226 = 0;
  _isStrictByParsingExcludedElements = [(NSHTMLWriter *)self _isStrictByParsingExcludedElements];
  self->_bodyStr = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10 = objc_alloc(MEMORY[0x1E696AC38]);
  self->_fileWrapper = [v10 initDirectoryWithFileWrappers:MEMORY[0x1E695E0F8]];
  self->_subresources = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_paraStyleStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_paraStyleArrays = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_paraStyleIndexes = objc_alloc_init(MEMORY[0x1E696AD50]);
  self->_listItemStyleIndexes = objc_alloc_init(MEMORY[0x1E696AD50]);
  self->_charStyleStrings = objc_alloc_init(MEMORY[0x1E695DFA0]);
  self->_fontDescriptions = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_charStyleArrays = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_fontStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_tableStyleStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_tableCellStyleStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_blockStyleStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_olistStyleStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_ulistStyleStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_fontNames = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_level = 0;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = [standardUserDefaults integerForKey:@"NSHTMLPrefixSpaces"];
  }

  self->_prefixSpaces = integerValue;
  v12 = string;
  if ((integerValue & 0x8000000000000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    if (integerValue < 0x11)
    {
      goto LABEL_9;
    }

    v13 = 16;
  }

  self->_prefixSpaces = v13;
LABEL_9:
  if (v6)
  {
    v14 = [v6 integerValue] > 0;
  }

  else
  {
    if (![standardUserDefaults objectForKey:@"NSHTMLInterchangeNewline"])
    {
      goto LABEL_14;
    }

    v14 = [standardUserDefaults BOOLForKey:@"NSHTMLInterchangeNewline"];
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFE | v14);
LABEL_14:
  if (v7)
  {
    v15 = [v7 integerValue] > 0;
  }

  else
  {
    if (![standardUserDefaults objectForKey:@"NSHTMLNoDefaultFonts"])
    {
      goto LABEL_22;
    }

    v15 = [standardUserDefaults BOOLForKey:@"NSHTMLNoDefaultFonts"];
  }

  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFD | v16);
LABEL_22:
  if (v8)
  {
    v17 = [v8 integerValue] > 0;
  }

  else
  {
    if (![standardUserDefaults objectForKey:@"NSHTMLTabsToSpaces"])
    {
      goto LABEL_30;
    }

    v17 = [standardUserDefaults BOOLForKey:@"NSHTMLTabsToSpaces"];
  }

  if (v17)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFB | v18);
LABEL_30:
  if (v9)
  {
    v19 = [v9 integerValue] > 0;
  }

  else
  {
    if (![standardUserDefaults objectForKey:@"NSHTMLCoalesceTabSpans"])
    {
      goto LABEL_38;
    }

    v19 = [standardUserDefaults BOOLForKey:@"NSHTMLCoalesceTabSpans"];
  }

  if (v19)
  {
    v20 = 8;
  }

  else
  {
    v20 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFF7 | v20);
LABEL_38:
  v21 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v22 = [v21 initRegularFileWithContents:{objc_msgSend(MEMORY[0x1E695DEF0], "data")}];
  [v22 setPreferredFilename:@"index.html"];
  [(NSFileWrapper *)self->_fileWrapper addFileWrapper:v22];
  v23 = [(NSDictionary *)self->_documentAttrs objectForKey:@"TextEncodingName"];
  self->_textEncodingName = v23;
  if (!v23)
  {
    self->_textEncodingName = [standardUserDefaults stringForKey:@"NSHTMLTextEncodingName"];
  }

  if (v220)
  {
    unsignedIntegerValue = [v220 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [standardUserDefaults integerForKey:@"NSHTMLCharacterEncoding"];
  }

  self->_characterEncoding = unsignedIntegerValue;
  v193 = v22;
  if (unsignedIntegerValue)
  {
    v25 = CFStringConvertNSStringEncodingToEncoding(unsignedIntegerValue);
    self->_textEncodingName = CFStringConvertEncodingToIANACharSetName(v25);
LABEL_45:
    characterEncoding = self->_characterEncoding;
    goto LABEL_46;
  }

  textEncodingName = self->_textEncodingName;
  if (!textEncodingName)
  {
    goto LABEL_57;
  }

  v29 = CFStringConvertIANACharSetNameToEncoding(textEncodingName);
  if (v29 == -1)
  {
    goto LABEL_45;
  }

  characterEncoding = CFStringConvertEncodingToNSStringEncoding(v29);
  self->_characterEncoding = characterEncoding;
LABEL_46:
  if (characterEncoding > 2415919359)
  {
    if (characterEncoding > 2550137087)
    {
      if (characterEncoding == 2550137088)
      {
        goto LABEL_63;
      }

      v27 = 2617245952;
    }

    else
    {
      if (characterEncoding == 2415919360)
      {
        goto LABEL_63;
      }

      v27 = 2483028224;
    }

LABEL_62:
    if (characterEncoding != v27)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (characterEncoding > 9)
  {
    if (characterEncoding == 10)
    {
      goto LABEL_63;
    }

    v27 = 2348810496;
    goto LABEL_62;
  }

  if (!characterEncoding)
  {
LABEL_57:
    self->_textEncodingName = @"UTF-8";
    self->_characterEncoding = 4;
    goto LABEL_63;
  }

  if (characterEncoding == 4)
  {
LABEL_63:
    *&self->_flags |= 0x20u;
  }

LABEL_64:
  v30 = self->_textEncodingName;
  self->_outputBaseURL = [(NSDictionary *)self->_documentAttrs objectForKey:@"OutputBaseURL"];
  self->_resourceHandler = [(NSDictionary *)self->_documentAttrs objectForKey:@"WebResourceHandler"];
  if (v223)
  {
    v31 = 0;
    v32 = 0;
    v202 = 0;
    v210 = 0;
    v206 = 0;
    v33 = 0;
    v218 = 0;
    v198 = 0;
    v215 = 0;
    v217 = 0;
    v211 = 0;
    v219 = 0;
    LOBYTE(v34) = 0;
    v35 = 0;
    v213 = 0;
    LOBYTE(v209) = 0;
    v195 = *MEMORY[0x1E696A7D0];
    v203 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v37 = [(NSString *)v12 characterAtIndex:v31];
      v38 = v31 < *&v229[0] || v31 - *&v229[0] >= *(&v229[0] + 1);
      if (v38)
      {
        break;
      }

      v43 = 0;
      if ((v35 & 1) == 0)
      {
        goto LABEL_279;
      }

LABEL_277:
      if (v37 != 9)
      {
        [(NSMutableString *)self->_bodyStr appendString:@"</span>"];
        v35 = 0;
      }

LABEL_279:
      if ((v34 & 1) == 0)
      {
        goto LABEL_283;
      }

      LODWORD(v34) = 1;
      if (v37 != 9 && v37 != 32)
      {
        [(NSMutableString *)self->_bodyStr appendString:@"</span>"];
LABEL_283:
        LODWORD(v34) = 0;
      }

      if (v37 != 9 && (v213 & 1) != 0)
      {
        [(NSMutableString *)self->_bodyStr appendString:@"</span>"];
        v213 = 0;
      }

      if (v37 == 9)
      {
        v94 = v43;
      }

      else
      {
        v94 = 1;
      }

      v222 = v33;
      if (v37 != 32 && v94)
      {
        if ((self->_excludedElements1 & 0x800) != 0)
        {
          if (v37 <= 0x3Eu && ((1 << v37) & 0x5000004000000000) != 0 || v37 == 65532)
          {
            goto LABEL_303;
          }
        }

        else if (v37 > 0x84u)
        {
          if (v37 == 133 || v37 == 8232 || v37 == 65532)
          {
            goto LABEL_303;
          }
        }

        else if (v37 <= 0x3Eu && ((1 << v37) & 0x5000004000000000) != 0)
        {
          goto LABEL_303;
        }

        if (v37 > 0x1Fu || v37 <= 0xDu && ((1 << v37) & 0x2600) != 0)
        {
          goto LABEL_404;
        }
      }

LABEL_303:
      v36 = v31 - v32;
      if (v31 > v32)
      {
        [(NSMutableString *)self->_bodyStr appendString:[(NSString *)v12 substringWithRange:v32, v36]];
      }

      v95 = v31 + 1;
      if (v37 == 32)
      {
LABEL_332:
        v208 = v35;
        v102 = [(NSMutableString *)self->_bodyStr length];
        if (v31)
        {
          v103 = [(NSString *)v12 characterAtIndex:v31 - 1];
        }

        else
        {
          v103 = 0;
        }

        if (v103)
        {
          v104 = v103 == 10;
        }

        else
        {
          v104 = 1;
        }

        v109 = v104 || v103 == 13 || (v103 & 0xFFFE) == 8232 || v31 <= v203 || v103 == 133;
        if (v102)
        {
          v110 = [(NSMutableString *)self->_bodyStr characterAtIndex:v102 - 1]== 32;
        }

        else
        {
          v110 = 0;
        }

        if (v95 < v223)
        {
          v111 = 0;
          v112 = v31 + 1;
          while (1)
          {
            v113 = [(NSString *)v12 characterAtIndex:v112];
            if (v113 > 12)
            {
              if (v113 != 32)
              {
                if (v113 != 13)
                {
LABEL_379:
                  v115 = v113 != 8233;
LABEL_367:
                  if (v37 == 9)
                  {
                    excludedElements2 = self->_excludedElements2;
                    if ((excludedElements2 & 0x1000) == 0)
                    {
                      if (((v34 | ((excludedElements2 & 0x20000000) >> 29)) & 1) == 0)
                      {
                        [(NSMutableString *)self->_bodyStr appendString:@"<span class=Apple-converted-space>"];
                        LOBYTE(v34) = 1;
                      }

                      if (v208)
                      {
LABEL_374:
                        v208 = 1;
                      }

                      else
                      {
                        if ((self->_excludedElements2 & 0x40000000) == 0)
                        {
                          [(NSMutableString *)self->_bodyStr appendString:@"<span class=Apple-converted-tab>"];
                          goto LABEL_374;
                        }

                        v208 = 0;
                      }
                    }

                    v117 = 3;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  v120 = v109 | v110;
                  v121 = ~v117;
                  v122 = v117 + v111;
                  while (2)
                  {
                    if ((v120 & 1) != 0 || (v122 & 1) == v115)
                    {
                      if ((v34 & 1) == 0)
                      {
                        if ((self->_excludedElements2 & 0x20001000) != 0)
                        {
                          LOBYTE(v34) = 0;
LABEL_396:
                          if ((*&self->_flags & 0x20) != 0)
                          {
                            v120 = 0;
                            v123 = @" ";
                          }

                          else
                          {
                            v120 = 0;
                            if (self->_characterEncoding == 5)
                            {
                              v123 = @" ";
                            }

                            else
                            {
                              v123 = @"&nbsp;";
                            }
                          }

LABEL_401:
                          [(NSMutableString *)self->_bodyStr appendString:v123];
                          --v122;
                          v38 = __CFADD__(v121++, 1);
                          if (v38)
                          {
                            v32 = v31 + 1;
                            v12 = string;
                            v33 = v222;
                            v35 = v208;
                            goto LABEL_404;
                          }

                          continue;
                        }

                        [(NSMutableString *)self->_bodyStr appendString:@"<span class=Apple-converted-space>"];
                      }

                      LOBYTE(v34) = 1;
                      goto LABEL_396;
                    }

                    break;
                  }

                  v120 = 1;
                  v123 = @" ";
                  goto LABEL_401;
                }

LABEL_366:
                v115 = 0;
                goto LABEL_367;
              }

              v114 = 1;
            }

            else
            {
              if (v113 != 9)
              {
                if (v113 != 10)
                {
                  goto LABEL_379;
                }

                goto LABEL_366;
              }

              v114 = 4;
            }

            v111 += v114;
            if (v223 == ++v112)
            {
              goto LABEL_366;
            }
          }
        }

        v111 = 0;
        goto LABEL_366;
      }

      if (v37 <= 0x3Du)
      {
        switch(v37)
        {
          case 9u:
            flags = self->_flags;
            if ((*&flags & 4) != 0)
            {
              goto LABEL_332;
            }

            if ((self->_excludedElements2 & 0x40001000) == 0)
            {
              if ((*&flags & 8) != 0)
              {
                if (v213)
                {
                  bodyStr = self->_bodyStr;
                  v149 = @"\t";
                }

                else
                {
                  bodyStr = self->_bodyStr;
                  if (self->_excludedElements1 & 0x20000000 | self->_excludedElements2 & 0x8000)
                  {
                    v149 = @"<span class=Apple-tab-span style=white-space:pre>\t";
                  }

                  else
                  {
                    v149 = @"<span class=Apple-tab-span>\t";
                  }
                }

                [(NSMutableString *)bodyStr appendString:v149, v36];
                v213 = 1;
              }

              else
              {
                if (self->_excludedElements1 & 0x20000000 | self->_excludedElements2 & 0x8000)
                {
                  v147 = @"<span class=Apple-tab-span style=white-space:pre>\t</span>";
                }

                else
                {
                  v147 = @"<span class=Apple-tab-span>\t</span>";
                }

                [(NSMutableString *)self->_bodyStr appendString:v147, v36];
              }

              v118 = 0;
              v119 = 0;
              *&self->_flags |= 0x10u;
              goto LABEL_384;
            }

            v96 = self->_bodyStr;
            v97 = @"\t";
LABEL_382:
            [(NSMutableString *)v96 appendString:v97, v36];
            goto LABEL_383;
          case 0x26u:
            v96 = self->_bodyStr;
            v97 = @"&amp;";
            goto LABEL_382;
          case 0x3Cu:
            v96 = self->_bodyStr;
            v97 = @"&lt;";
            goto LABEL_382;
        }

        goto LABEL_324;
      }

      if (v37 > 0x2027u)
      {
        if (v37 != 8232)
        {
          if (v37 == 65532)
          {
            v98 = [(NSAttributedString *)self->_attrStr attribute:@"NSAttachment" atIndex:v31 effectiveRange:0];
            if (v98)
            {
              [(NSHTMLWriter *)self _appendAttachment:v98 atIndex:v31 toString:self->_bodyStr];
            }

            v99 = [(NSAttributedString *)self->_attrStr attribute:@"CTAdaptiveImageProvider" atIndex:v31 effectiveRange:0];
            if (v99)
            {
              [(NSHTMLWriter *)self _appendImageGlyph:v99 withAttributes:v210 toString:self->_bodyStr];
            }

LABEL_383:
            v118 = 0;
            v119 = 0;
LABEL_384:
            v32 = v31 + 1;
            goto LABEL_408;
          }

          goto LABEL_324;
        }
      }

      else
      {
        if (v37 == 62)
        {
          v96 = self->_bodyStr;
          v97 = @"&gt;";
          goto LABEL_382;
        }

        if (v37 != 133)
        {
          goto LABEL_324;
        }
      }

      v100 = &stru_1F01AD578;
      if ((self->_excludedElements2 & 0x10000000) == 0)
      {
        v100 = @" /";
      }

      [(NSMutableString *)self->_bodyStr appendFormat:@"<br%@>\n", v36, v100];
LABEL_324:
      v32 = v31 + 1;
LABEL_404:
      v119 = v37 == 13;
      v118 = v37 == 8233;
      if (v37 == 10 || v37 == 13)
      {
        goto LABEL_412;
      }

      if (v37 == 8233)
      {
        goto LABEL_411;
      }

      v95 = v31 + 1;
LABEL_408:
      if (v95 == v223)
      {
        if (v37 == 10 || v37 == 13)
        {
LABEL_412:
          if ((self->_excludedElements2 & 0x80000000) != 0 || (*&self->_flags & 1) == 0)
          {
            v124 = v35;
            v125 = 1;
            goto LABEL_419;
          }

          v127 = v35;
          v128 = v31 + 1 == v223;
          v125 = 1;
          if (v127)
          {
LABEL_420:
            [(NSMutableString *)self->_bodyStr appendString:@"</span>", v36];
          }
        }

        else
        {
LABEL_411:
          if (v118)
          {
            goto LABEL_412;
          }

          v124 = v35;
          v125 = 0;
LABEL_419:
          v128 = 0;
          if (v124)
          {
            goto LABEL_420;
          }
        }

        if (v34)
        {
          [(NSMutableString *)self->_bodyStr appendString:@"</span>", v36];
        }

        if (v37 == 10 || v37 == 8233 || v37 == 13)
        {
          v129 = v31 - v32;
          v34 = v218;
          if (v31 > v32)
          {
            [(NSMutableString *)self->_bodyStr appendString:[(NSString *)v12 substringWithRange:v32, v129]];
          }

          if (v119)
          {
            v126 = v223;
            v130 = v219;
            if (v31 + 1 < v223 && [(NSString *)v12 characterAtIndex:v31 + 1, v129]== 10)
            {
              ++v31;
            }

LABEL_438:
            [(NSHTMLWriter *)self _closeFlags:v211 openFlags:0 inString:self->_bodyStr];
            if (v130 && [v130 count] >= 2 && (self->_excludedElements2 & 0x1000) == 0 && objc_msgSend(v130, "count") >= 2)
            {
              v131 = 1;
              do
              {
                [(NSMutableString *)self->_bodyStr appendString:@"</span>"];
                ++v131;
              }

              while (v131 < [v130 count]);
            }

            if (v34)
            {
              v132 = v215;
              if (v215)
              {
                v133 = @"</font>";
                if ((self->_excludedElements1 & 0x400000) == 0 || (v133 = @"</span>", (self->_excludedElements2 & 0x1000) == 0))
                {
                  [(NSMutableString *)self->_bodyStr appendString:v133];
                  v132 = 0;
                }
              }

              [(NSMutableString *)self->_bodyStr appendString:@"</mark>"];
            }

            else
            {
              v132 = v215;
            }

            if (v222)
            {
              if (v132)
              {
                if (v132 != v217)
                {
                  v134 = @"</font>";
                  if ((self->_excludedElements1 & 0x400000) == 0 || (v134 = @"</span>", (self->_excludedElements2 & 0x1000) == 0))
                  {
                    [(NSMutableString *)self->_bodyStr appendString:v134];
                  }
                }
              }

              [(NSMutableString *)self->_bodyStr appendString:@"</a>"];
              if (!v217)
              {
                goto LABEL_465;
              }

LABEL_460:
              if ((self->_excludedElements1 & 0x400000) == 0)
              {
                v135 = @"</font>";
                goto LABEL_464;
              }

              if ((self->_excludedElements2 & 0x1000) == 0)
              {
                v135 = @"</span>";
LABEL_464:
                [(NSMutableString *)self->_bodyStr appendString:v135];
              }
            }

            else if (v132)
            {
              goto LABEL_460;
            }

LABEL_465:
            v136 = v228;
            if (v228)
            {
              if (v209)
              {
                v137 = v228;
                if ((self->_excludedElements1 & 0x800) == 0)
                {
                  v138 = &stru_1F01AD578;
                  if ((self->_excludedElements2 & 0x10000000) == 0)
                  {
                    v138 = @" /";
                  }

                  [(NSMutableString *)self->_bodyStr appendFormat:@"<br%@>", v138];
                  v137 = v228;
                }
              }

              else
              {
                v137 = v228;
              }

              [(NSMutableString *)self->_bodyStr appendFormat:@"</%@>", v137];
            }

            v139 = v136 != 0;
            [(NSMutableString *)self->_bodyStr appendString:@"\n"];
            v140 = [(NSHTMLWriter *)self _closeListsForParagraphStyle:v206 atIndex:v31 inString:self->_bodyStr];
            v141 = [(NSHTMLWriter *)self _closeBlocksForParagraphStyle:v206 atIndex:v31 inString:self->_bodyStr];
            if (((v125 ^ 1 | ((BYTE1(self->_excludedElements1) & 8) >> 3)) & 1) == 0)
            {
              v142 = v141 || v140 || v139;
              if ((v142 ^ 1 | v128))
              {
                v143 = [(NSMutableString *)self->_bodyStr length];
                if (!(v142 & 1 | (v143 == 0)))
                {
                  v144 = v143 - 1;
                  if ([(NSMutableString *)self->_bodyStr characterAtIndex:v143 - 1]== 10)
                  {
                    [(NSMutableString *)self->_bodyStr deleteCharactersInRange:v144, 1];
                  }
                }

                v145 = @" class=Apple-interchange-newline";
                if (!v128)
                {
                  v145 = &stru_1F01AD578;
                }

                v146 = @" /";
                if ((self->_excludedElements2 & 0x10000000) != 0)
                {
                  v146 = &stru_1F01AD578;
                }

                [(NSMutableString *)self->_bodyStr appendFormat:@"<br%@%@>\n", v145, v146];
              }
            }

            v95 = v31 + 1;
            v229[0] = xmmword_18E856180;

            LOBYTE(v209) = 0;
            v213 = 0;
            v35 = 0;
            LOBYTE(v34) = 0;
            v218 = 0;
            v219 = 0;
            v211 = 0;
            v215 = 0;
            v217 = 0;
            v33 = 0;
            v202 = v31 + 1;
            v32 = v31 + 1;
            goto LABEL_484;
          }

          v126 = v223;
        }

        else
        {
          v126 = v223;
          v34 = v218;
          if (v31 + 1 == v223 && v223 > v32)
          {
            [(NSMutableString *)self->_bodyStr appendString:[(NSString *)v12 substringWithRange:v32, v223 - v32]];
          }
        }

        v130 = v219;
        goto LABEL_438;
      }

      v126 = v223;
LABEL_484:
      v31 = v95;
      if (v95 >= v126)
      {
        goto LABEL_498;
      }
    }

    v225 = 0;
    v210 = [(NSAttributedString *)self->_attrStr attributesAtIndex:v31 effectiveRange:v229];
    v207 = v35;
    if (v31 && (v37 == 10 || v37 == 8233 || v37 == 13))
    {
      v39 = [(NSString *)v12 characterAtIndex:v31 - 1];
      if (v39 != 10 && v39 != 13 && v39 != 8233)
      {
        v210 = [(NSAttributedString *)self->_attrStr attributesAtIndex:v31 - 1 effectiveRange:v229];
        if (v31 < *&v229[0] || v31 - *&v229[0] >= *(&v229[0] + 1))
        {
          ++*(&v229[0] + 1);
        }
      }
    }

    if ((self->_excludedElements1 & 1) == 0)
    {
      v40 = [(NSDictionary *)v210 objectForKey:@"NSLink"];
      if (v40)
      {
        v41 = v40;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          absoluteString = v41;
LABEL_89:
          v44 = _escapedStringForString(absoluteString, 1);
          goto LABEL_91;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          absoluteString = [v41 absoluteString];
          goto LABEL_89;
        }
      }
    }

    v44 = 0;
LABEL_91:
    if (v33 == v44)
    {
      v45 = 0;
    }

    else if (v33)
    {
      v45 = [v33 isEqualToString:v44] ^ 1;
    }

    else
    {
      v45 = 1;
    }

    v221 = v33;
    if (v44)
    {
      v46 = v33 == 0;
    }

    else
    {
      v46 = 0;
    }

    v47 = v217;
    if (v46)
    {
      v47 = v215;
    }

    v200 = v47;
    if ((self->_excludedElements2 & 0x1000) != 0)
    {
      v48 = 0;
    }

    else
    {
      v48 = [(NSDictionary *)v210 objectForKey:@"NSWritingDirection"];
    }

    v205 = v44;
    if (v219 == v48)
    {
      v49 = 0;
    }

    else if (v219)
    {
      v49 = [v219 isEqual:v48] ^ 1;
    }

    else
    {
      v49 = 1;
    }

    if ((self->_excludedElements3 & 4) != 0)
    {
      v50 = 0;
    }

    else
    {
      v50 = [(NSDictionary *)v210 objectForKey:@"NSTextHighlightStyle"];
    }

    v204 = v50;
    v201 = [v50 isEqual:v218];
    if (v31 > v202)
    {
      if (v44)
      {
        v51 = v200;
      }

      else
      {
        v51 = 0;
      }

      v212 = [(NSHTMLWriter *)self _spanClassForAttributes:v210 inParagraphClass:v198 spanClass:v51 flags:&v225 forWebKit:kitCopy];
      v52 = v31 - v32;
      if (v31 > v32)
      {
        [(NSMutableString *)self->_bodyStr appendString:[(NSString *)v12 substringWithRange:v32, v52]];
      }

      if (!((v212 != v215) | (v45 | v49) & 1))
      {
        v35 = v207;
        if (((v211 == v225) & v201) != 0)
        {
          v43 = 0;
        }

        else
        {
          if (v207)
          {
            [(NSMutableString *)self->_bodyStr appendString:@"</span>", v52];
          }

          if (v34)
          {
            [(NSMutableString *)self->_bodyStr appendString:@"</span>", v52];
          }

          if (v213)
          {
            [(NSMutableString *)self->_bodyStr appendString:@"</span>", v52];
          }

          [(NSHTMLWriter *)self _closeFlags:v211 openFlags:0 inString:self->_bodyStr];
          if (!((v218 == 0) | v201 & 1))
          {
            [(NSMutableString *)self->_bodyStr appendString:@"</mark>"];
          }

          if (!((v204 == 0) | v201 & 1))
          {
            [(NSMutableString *)self->_bodyStr appendString:[(NSHTMLWriter *)self markElementFor:v204 spanClass:v215 paraClass:v198]];
          }

          [(NSHTMLWriter *)self _closeFlags:0 openFlags:v225 inString:self->_bodyStr];
          v43 = 0;
          v213 = 0;
          v35 = 0;
          LOBYTE(v34) = 0;
        }

        v212 = v215;
        goto LABEL_269;
      }

      if (v207)
      {
        [(NSMutableString *)self->_bodyStr appendString:@"</span>", v52];
      }

      if (v34)
      {
        [(NSMutableString *)self->_bodyStr appendString:@"</span>", v52];
      }

      if (v213)
      {
        [(NSMutableString *)self->_bodyStr appendString:@"</span>", v52];
      }

      [(NSHTMLWriter *)self _closeFlags:v211 openFlags:0 inString:self->_bodyStr];
      if (v219 && [v219 count] >= 2 && (self->_excludedElements2 & 0x1000) == 0 && objc_msgSend(v219, "count") >= 2)
      {
        v53 = 1;
        do
        {
          [(NSMutableString *)self->_bodyStr appendString:@"</span>"];
          ++v53;
        }

        while (v53 < [v219 count]);
      }

      if (v215)
      {
        if (v215 != v200)
        {
          v54 = @"</font>";
          if ((self->_excludedElements1 & 0x400000) == 0 || (v54 = @"</span>", (self->_excludedElements2 & 0x1000) == 0))
          {
            [(NSMutableString *)self->_bodyStr appendString:v54];
          }
        }
      }

      if (!((v218 == 0) | v201 & 1))
      {
        [(NSMutableString *)self->_bodyStr appendString:@"</mark>"];
      }

      if (!v221 || ((v45 ^ 1) & 1) != 0 || ([(NSMutableString *)self->_bodyStr appendString:@"</a>"], v205) || !v200 || v212 == v200)
      {
        v55 = v201;
        if (((v205 != 0) & v45) == 1)
        {
          [(NSMutableString *)self->_bodyStr appendFormat:@"<a href=%@>", v205];
        }
      }

      else if ((self->_excludedElements1 & 0x400000) != 0)
      {
        v55 = v201;
        if ((self->_excludedElements2 & 0x1000) == 0)
        {
          [(NSMutableString *)self->_bodyStr appendString:@"</span>"];
        }
      }

      else
      {
        [(NSMutableString *)self->_bodyStr appendString:@"</font>"];
        v55 = v201;
      }

      if (!((v204 == 0) | v55 & 1))
      {
        [(NSMutableString *)self->_bodyStr appendString:[(NSHTMLWriter *)self markElementFor:v204 spanClass:v212 paraClass:v198]];
      }

      if (v212 && v212 != v200)
      {
        if ((self->_excludedElements1 & 0x400000) != 0)
        {
          if ((self->_excludedElements2 & 0x1000) != 0)
          {
            goto LABEL_211;
          }

          [(NSMutableString *)self->_bodyStr appendString:@"<span"];
        }

        else
        {
          [(NSMutableString *)self->_bodyStr appendFormat:@"<font%@", [(NSMutableArray *)self->_fontStrings objectAtIndex:v212 - 1]];
        }

        excludedElements1 = self->_excludedElements1;
        v72 = self->_excludedElements2;
        if (!(excludedElements1 & 0x20000000 | v72 & 0x9000))
        {
          v46 = (excludedElements1 & 0x400000) == 0;
          v73 = 115;
          if (v46)
          {
            v73 = 102;
          }

          [(NSMutableString *)self->_bodyStr appendFormat:@" class=%c%lu>", v73, v212];
          if (!v48)
          {
            goto LABEL_268;
          }

          goto LABEL_212;
        }

        if ((v72 & 0x1000) != 0)
        {
          [(NSMutableString *)self->_bodyStr appendString:@">"];
          if (v48)
          {
            goto LABEL_212;
          }

          goto LABEL_268;
        }

        [(NSMutableString *)self->_bodyStr appendFormat:@" style=%@>", [(NSMutableOrderedSet *)self->_charStyleStrings objectAtIndex:v212 - 1]];
      }

LABEL_211:
      if (v48)
      {
LABEL_212:
        if ([v48 count] >= 2 && (self->_excludedElements2 & 0x1000) == 0 && objc_msgSend(v48, "count") >= 2)
        {
          v76 = 1;
          do
          {
            v77 = [objc_msgSend(v48 objectAtIndex:{v76), "unsignedIntegerValue"}];
            v78 = @"ltr";
            if (v77)
            {
              v78 = @"rtl";
            }

            v79 = @"bidi-override";
            if ((v77 & 2) == 0)
            {
              v79 = @"embed";
            }

            [(NSMutableString *)self->_bodyStr appendFormat:@"<span style=direction: %@; unicode-bidi: %@>", v78, v79];
            ++v76;
          }

          while (v76 < [v48 count]);
        }
      }

LABEL_268:
      [(NSHTMLWriter *)self _closeFlags:0 openFlags:v225 inString:self->_bodyStr];
      v43 = 0;
      v213 = 0;
      v35 = 0;
      LOBYTE(v34) = 0;
LABEL_269:
      v32 = v31;
      v89 = v200;
      goto LABEL_270;
    }

    v206 = [(NSDictionary *)v210 objectForKey:@"NSParagraphStyle"];
    if (!v206)
    {
      v206 = +[NSParagraphStyle defaultParagraphStyle];
    }

    v56 = 1;
    v203 = [(NSString *)v12 paragraphRangeForRange:v31, 1];
    v58 = v57;
    v209 = 0;
    v216 = v57;
    if (v37 <= 0xCu)
    {
      if (v37 != 9)
      {
        v59 = 0;
        if (v37 != 10)
        {
          goto LABEL_167;
        }

        goto LABEL_158;
      }
    }

    else
    {
      if (v37 == 13)
      {
        goto LABEL_158;
      }

      if (v37 != 8233)
      {
        v59 = 0;
        if (v37 != 32)
        {
          goto LABEL_167;
        }
      }
    }

    v56 = v37 == 8233;
LABEL_158:
    v60 = v203 + v57;
    for (i = v31 + 1; i < v60; ++i)
    {
      v62 = [(NSString *)v12 characterAtIndex:i];
      if ((v62 > 0x20 || ((1 << v62) & 0x100002600) == 0) && v62 != 8233)
      {
        v59 = 0;
        goto LABEL_166;
      }
    }

    v59 = 1;
LABEL_166:
    v209 = v56;
    v58 = v216;
LABEL_167:
    LOBYTE(v191) = kitCopy;
    v191 = [(NSHTMLWriter *)self _paragraphClassforParagraphStyle:v206 presentationIntent:[(NSDictionary *)v210 objectForKey:v195] range:v203 isEmpty:v58 isCompletelyEmpty:v59 headerString:v209 alignmentString:&v228 directionString:&v227 forWebKit:&v226, v191];
    if ((self->_excludedElements1 & 0x400000) != 0 || !v227)
    {
      v227 = &stru_1F01AD578;
    }

    v64 = v205;
    if (!v226)
    {
      v226 = &stru_1F01AD578;
    }

    v212 = [(NSHTMLWriter *)self _spanClassForAttributes:v210 inParagraphClass:v191 spanClass:0 flags:&v225 forWebKit:kitCopy];
    [(NSHTMLWriter *)self _openBlocksForParagraphStyle:v206 atIndex:v31 inString:self->_bodyStr];
    [(NSHTMLWriter *)self _openListsForParagraphStyle:v206 atIndex:v31 inString:self->_bodyStr isStrict:_isStrictByParsingExcludedElements];
    if (!v228)
    {
LABEL_228:
      if (!v212)
      {
        goto LABEL_240;
      }

      if ((self->_excludedElements1 & 0x400000) != 0)
      {
        if ((self->_excludedElements2 & 0x1000) != 0)
        {
          goto LABEL_240;
        }

        [(NSMutableString *)self->_bodyStr appendString:@"<span"];
      }

      else
      {
        [(NSMutableString *)self->_bodyStr appendFormat:@"<font%@", [(NSMutableArray *)self->_fontStrings objectAtIndex:v212 - 1]];
      }

      v81 = self->_excludedElements1;
      v82 = self->_excludedElements2;
      if (!(v81 & 0x20000000 | v82 & 0x9000))
      {
        v46 = (v81 & 0x400000) == 0;
        v83 = 115;
        if (v46)
        {
          v83 = 102;
        }

        [(NSMutableString *)self->_bodyStr appendFormat:@" class=%c%lu>", v83, v212];
        if (!v64)
        {
          goto LABEL_242;
        }

        goto LABEL_241;
      }

      if ((v82 & 0x1000) != 0)
      {
        [(NSMutableString *)self->_bodyStr appendString:@">"];
        if (!v64)
        {
          goto LABEL_242;
        }

        goto LABEL_241;
      }

      [(NSMutableString *)self->_bodyStr appendFormat:@" style=%@>", [(NSMutableOrderedSet *)self->_charStyleStrings objectAtIndex:v212 - 1]];
LABEL_240:
      if (!v64)
      {
LABEL_242:
        if (!((v204 == 0) | v201 & 1))
        {
          [(NSMutableString *)self->_bodyStr appendString:[(NSHTMLWriter *)self markElementFor:v204 spanClass:v212 paraClass:v191]];
        }

        if (v48 && [v48 count] >= 2 && (self->_excludedElements2 & 0x1000) == 0 && objc_msgSend(v48, "count") >= 2)
        {
          v84 = 1;
          do
          {
            v85 = [objc_msgSend(v48 objectAtIndex:{v84), "unsignedIntegerValue"}];
            v86 = @"ltr";
            if (v85)
            {
              v86 = @"rtl";
            }

            v87 = @"bidi-override";
            if ((v85 & 2) == 0)
            {
              v87 = @"embed";
            }

            [(NSMutableString *)self->_bodyStr appendFormat:@"<span style=direction: %@; unicode-bidi: %@>", v86, v87];
            ++v84;
          }

          while (v84 < [v48 count]);
        }

        [(NSHTMLWriter *)self _closeFlags:0 openFlags:v225 inString:self->_bodyStr];
        v43 = 0;
        v198 = v191;
        if ([(NSArray *)[(NSParagraphStyle *)v206 textLists] count]&& v37 == 9)
        {
          v88 = v31;
          while (++v88 < v203 + v216)
          {
            if ([(NSString *)v12 characterAtIndex:v88]== 9)
            {
              v213 = 0;
              v35 = 0;
              LOBYTE(v34) = 0;
              v32 = v88 + 1;
              v43 = 1;
              v89 = v217;
              v31 = v88;
              goto LABEL_270;
            }
          }

          v43 = 0;
          v213 = 0;
          v35 = 0;
          LOBYTE(v34) = 0;
        }

        else
        {
          v213 = 0;
          v35 = 0;
          LOBYTE(v34) = 0;
        }

        v89 = v217;
LABEL_270:
        if (v205)
        {
          v90 = 1;
        }

        else
        {
          v90 = v221 == 0;
        }

        v211 = v225;
        if (v90)
        {
          v91 = v89;
        }

        else
        {
          v91 = 0;
        }

        v217 = v91;

        v92 = [v205 copy];
        v93 = v48;
        v33 = v92;
        v219 = [v93 copy];

        v218 = [v204 copy];
        v215 = v212;
        if ((v35 & 1) == 0)
        {
          goto LABEL_279;
        }

        goto LABEL_277;
      }

LABEL_241:
      [(NSMutableString *)self->_bodyStr appendFormat:@"<a href=%@>", v64];
      v217 = v212;
      goto LABEL_242;
    }

    if (!v191)
    {
      v69 = self->_bodyStr;
      _prefix = [(NSHTMLWriter *)self _prefix];
      [(NSMutableString *)v69 appendFormat:@"%@<%@%@%@>", _prefix, v228, v227, v226];
      goto LABEL_228;
    }

    v65 = self->_excludedElements1;
    v66 = self->_excludedElements2;
    if (!(v65 & 0x20000000 | v66 & 0x9000))
    {
      if ([@"p" isEqualToString:?])
      {
        v67 = self->_bodyStr;
        _prefix2 = [(NSHTMLWriter *)self _prefix];
        [(NSMutableString *)v67 appendFormat:@"%@<%@%@%@ class=p%lu>", _prefix2, v228, v227, v226, v191];
LABEL_227:
        v64 = v205;
        goto LABEL_228;
      }

      v65 = self->_excludedElements1;
      v66 = self->_excludedElements2;
    }

    if (!(v65 & 0x20000000 | v66 & 0x9000))
    {
      if ([@"li" isEqualToString:v228])
      {
        v74 = self->_bodyStr;
        _prefix3 = [(NSHTMLWriter *)self _prefix];
        [(NSMutableString *)v74 appendFormat:@"%@<%@%@%@ class=li%lu>", _prefix3, v228, v227, v226, v191];
        goto LABEL_227;
      }

      v66 = self->_excludedElements2;
    }

    v214 = self->_bodyStr;
    _prefix4 = [(NSHTMLWriter *)self _prefix];
    if ((v66 & 0x1000) != 0)
    {
      [(NSMutableString *)v214 appendFormat:@"%@<%@%@%@>", _prefix4, v228, v227, v226];
    }

    else
    {
      [(NSMutableString *)v214 appendFormat:@"%@<%@%@%@ style=%@>", _prefix4, v228, v227, v226, [(NSMutableArray *)self->_paraStyleStrings objectAtIndex:v191 - 1]];
    }

    v12 = string;
    goto LABEL_227;
  }

LABEL_498:
  self->_level = 0;
  if ((self->_excludedElements2 & 0x10000000) == 0)
  {
    if (self->_textEncodingName)
    {
      [(__CFString *)string2 appendFormat:@"<?xml version=1.0 encoding=%@?>\n", self->_textEncodingName];
    }

    else
    {
      [(__CFString *)string2 appendString:@"<?xml version=1.0?>\n"];
    }
  }

  v150 = self->_excludedElements1;
  if ((v150 & 0x100000) != 0)
  {
    v152 = v193;
    if ((v150 & 0x80000000) != 0)
    {
      goto LABEL_523;
    }

    goto LABEL_520;
  }

  v151 = self->_excludedElements2;
  if ((v151 & 0x10000000) != 0)
  {
    v152 = v193;
    if (!(v151 & 0x800000 | v150 & 0x20000000))
    {
      v155 = @" Transitional";
      if (_isStrictByParsingExcludedElements)
      {
        v155 = &stru_1F01AD578;
      }

      v156 = @"loose";
      if (_isStrictByParsingExcludedElements)
      {
        v156 = @"strict";
      }

      [(__CFString *)string2 appendFormat:@"<!DOCTYPE html PUBLIC -//W3C//DTD HTML 4.01%@//EN http://www.w3.org/TR/html4/%@.dtd>\n", v155, v156];
    }
  }

  else
  {
    v152 = v193;
    if ((v150 & 0x80000000) == 0 && !(v151 & 0x800000 | v150 & 0x20000400))
    {
      v153 = @"Transitional";
      if (_isStrictByParsingExcludedElements)
      {
        v153 = @"Strict";
      }

      v154 = @"transitional";
      if (_isStrictByParsingExcludedElements)
      {
        v154 = @"strict";
      }

      [(__CFString *)string2 appendFormat:@"<!DOCTYPE html PUBLIC -//W3C//DTD XHTML 1.0 %@//EN http://www.w3.org/TR/xhtml1/DTD/xhtml1-%@.dtd>\n", v153, v154];
    }
  }

  v150 = self->_excludedElements1;
  if ((v150 & 0x80000000) == 0)
  {
LABEL_520:
    v157 = &stru_1F01AD578;
    if ((self->_excludedElements2 & 0x10000000) == 0)
    {
      v157 = @" xmlns=http://www.w3.org/1999/xhtml";
    }

    [(__CFString *)string2 appendFormat:@"<html%@>\n", v157];
    v150 = self->_excludedElements1;
  }

LABEL_523:
  if ((v150 & 0x20000000) == 0)
  {
    [(__CFString *)string2 appendFormat:@"%@<head>\n", [(NSHTMLWriter *)self _prefixUp]];
    if ((self->_excludedElements2 & 0x10) == 0)
    {
      [(__CFString *)string2 appendFormat:@"%@<meta http-equiv=Content-Type content=text/html", [(NSHTMLWriter *)self _prefix]];
      if (self->_textEncodingName)
      {
        [(__CFString *)string2 appendFormat:@"; charset=%@", self->_textEncodingName];
      }

      if ((self->_excludedElements2 & 0x10000000) != 0)
      {
        v158 = &stru_1F01AD578;
      }

      else
      {
        v158 = @" /";
      }

      [(__CFString *)string2 appendFormat:@"%@>\n", v158];
      _prefix5 = [(NSHTMLWriter *)self _prefix];
      if ((self->_excludedElements2 & 0x10000000) != 0)
      {
        v160 = &stru_1F01AD578;
      }

      else
      {
        v160 = @" /";
      }

      [(__CFString *)string2 appendFormat:@"%@<meta http-equiv=Content-Style-Type content=text/css%@>\n", _prefix5, v160];
    }

    [(NSHTMLWriter *)self _writeDocumentPropertiesToString:string2];
    if ((self->_excludedElements2 & 0x9000) == 0)
    {
      [(__CFString *)string2 appendFormat:@"%@<style type=text/css>\n", [(NSHTMLWriter *)self _prefixUp]];
      if (v192 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v161 = v192 >> 8;
        if (v161 != 0xFFFFFF)
        {
          [(__CFString *)string2 appendFormat:@"%@body {background-color: #%.6x}\n", [(NSHTMLWriter *)self _prefix], v161];
        }
      }

      v162 = [(NSMutableArray *)self->_paraStyleStrings count];
      if (v162)
      {
        v163 = v162;
        v164 = 0;
        do
        {
          v165 = v164 + 1;
          if ([(NSMutableIndexSet *)self->_paraStyleIndexes containsIndex:v164 + 1])
          {
            [(__CFString *)string2 appendFormat:@"%@p.p%lu {%@}\n", [(NSHTMLWriter *)self _prefix], v164 + 1, [(NSMutableArray *)self->_paraStyleStrings objectAtIndex:v164]];
          }

          ++v164;
        }

        while (v163 != v165);
        v166 = 0;
        do
        {
          v167 = v166 + 1;
          if ([(NSMutableIndexSet *)self->_listItemStyleIndexes containsIndex:v166 + 1])
          {
            [(__CFString *)string2 appendFormat:@"%@li.li%lu {%@}\n", [(NSHTMLWriter *)self _prefix], v166 + 1, [(NSMutableArray *)self->_paraStyleStrings objectAtIndex:v166]];
          }

          ++v166;
        }

        while (v163 != v167);
      }

      v168 = [(NSMutableOrderedSet *)self->_charStyleStrings count];
      v169 = v168;
      if ((self->_excludedElements1 & 0x400000) != 0)
      {
        if ((self->_excludedElements2 & 0x1000) == 0 && v168)
        {
          v171 = 0;
          do
          {
            [(__CFString *)string2 appendFormat:@"%@span.s%lu {%@}\n", [(NSHTMLWriter *)self _prefix], v171 + 1, [(NSMutableOrderedSet *)self->_charStyleStrings objectAtIndex:v171]];
            ++v171;
          }

          while (v169 != v171);
        }
      }

      else if (v168)
      {
        v170 = 0;
        do
        {
          [(__CFString *)string2 appendFormat:@"%@font.f%lu {%@}\n", [(NSHTMLWriter *)self _prefix], v170 + 1, [(NSMutableOrderedSet *)self->_charStyleStrings objectAtIndex:v170]];
          ++v170;
        }

        while (v169 != v170);
      }

      if ((self->_excludedElements2 & 0x40001000) == 0 && (*&self->_flags & 0x10) != 0)
      {
        [(__CFString *)string2 appendFormat:@"%@span.Apple-tab-span {white-space:pre}\n", [(NSHTMLWriter *)self _prefix]];
      }

      v172 = [(NSMutableArray *)self->_tableStyleStrings count];
      if (v172)
      {
        v173 = v172;
        for (j = 0; j != v173; ++j)
        {
          [(__CFString *)string2 appendFormat:@"%@table.t%lu {%@}\n", [(NSHTMLWriter *)self _prefix], j + 1, [(NSMutableArray *)self->_tableStyleStrings objectAtIndex:j]];
        }
      }

      v175 = [(NSMutableArray *)self->_tableCellStyleStrings count];
      if (v175)
      {
        v176 = v175;
        for (k = 0; k != v176; ++k)
        {
          [(__CFString *)string2 appendFormat:@"%@td.td%lu {%@}\n", [(NSHTMLWriter *)self _prefix], k + 1, [(NSMutableArray *)self->_tableCellStyleStrings objectAtIndex:k]];
        }
      }

      v178 = [(NSMutableArray *)self->_blockStyleStrings count];
      if (v178)
      {
        v179 = v178;
        for (m = 0; m != v179; ++m)
        {
          [(__CFString *)string2 appendFormat:@"%@div.d%lu {%@}\n", [(NSHTMLWriter *)self _prefix], m + 1, [(NSMutableArray *)self->_blockStyleStrings objectAtIndex:m]];
        }
      }

      v181 = [(NSMutableArray *)self->_olistStyleStrings count];
      if (v181)
      {
        v182 = v181;
        for (n = 0; n != v182; ++n)
        {
          [(__CFString *)string2 appendFormat:@"%@ol.ol%lu {%@}\n", [(NSHTMLWriter *)self _prefix], n + 1, [(NSMutableArray *)self->_olistStyleStrings objectAtIndex:n]];
        }
      }

      v184 = [(NSMutableArray *)self->_ulistStyleStrings count];
      if (v184)
      {
        v185 = v184;
        for (ii = 0; ii != v185; ++ii)
        {
          [(__CFString *)string2 appendFormat:@"%@ul.ul%lu {%@}\n", [(NSHTMLWriter *)self _prefix], ii + 1, [(NSMutableArray *)self->_ulistStyleStrings objectAtIndex:ii]];
        }
      }

      [(__CFString *)string2 appendFormat:@"%@</style>\n", [(NSHTMLWriter *)self _prefixDown]];
    }

    [(__CFString *)string2 appendFormat:@"%@</head>\n", [(NSHTMLWriter *)self _prefixDown]];
    v150 = self->_excludedElements1;
  }

  if ((v150 & 0x400) == 0)
  {
    if (v192 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_580;
    }

    if (v192 >> 8 == 0xFFFFFF)
    {
      goto LABEL_580;
    }

    v187 = self->_excludedElements2;
    if (!(v150 & 0x20000000 | v187 & 0x9000))
    {
      goto LABEL_580;
    }

    if ((v187 & 0x1000) != 0)
    {
      if ((v150 & 0x400000) != 0)
      {
LABEL_580:
        [(__CFString *)string2 appendString:@"<body>\n"];
        goto LABEL_581;
      }

      [(__CFString *)string2 appendFormat:@"<body bgcolor=#%.6x>\n", v192 >> 8];
    }

    else
    {
      [(__CFString *)string2 appendFormat:@"<body style=background-color: #%.6x>\n", v192 >> 8];
    }
  }

LABEL_581:
  [(__CFString *)string2 appendString:self->_bodyStr];
  if ([(NSMutableString *)self->_bodyStr hasSuffix:@">\n"])
  {
    [(NSMutableString *)self->_bodyStr deleteCharactersInRange:[(NSMutableString *)self->_bodyStr length]- 1, 1];
  }

  v188 = self->_excludedElements1;
  if ((v188 & 0x400) == 0)
  {
    [(__CFString *)string2 appendString:@"</body>\n"];
    v188 = self->_excludedElements1;
  }

  if ((v188 & 0x80000000) == 0)
  {
    [(__CFString *)string2 appendString:@"</html>\n"];
  }

  if ((*&self->_flags & 0x20) == 0)
  {
    [(NSHTMLWriter *)self _prepareString:string2 forConversionToEncoding:self->_characterEncoding];
  }

  v189 = [(__CFString *)string2 dataUsingEncoding:self->_characterEncoding];
  self->_htmlData = v189;
  if (!v189)
  {
    if ([(__CFString *)string2 length])
    {
      range.location = 0;
      range.length = [(__CFString *)string2 length];
      if (CFStringTransform(string2, &range, *MEMORY[0x1E695E9B0], 0))
      {
        self->_htmlData = [(__CFString *)string2 dataUsingEncoding:self->_characterEncoding];
      }
    }
  }

  [(NSFileWrapper *)self->_fileWrapper removeFileWrapper:v152];

  htmlData = self->_htmlData;
  if (htmlData)
  {
    [(NSFileWrapper *)self->_fileWrapper addRegularFileWithContents:htmlData preferredFilename:@"index.html"];
  }
}

- (id)HTMLData
{
  if (!self->_fileWrapper)
  {
    [(NSHTMLWriter *)self _generateHTML];
  }

  v3 = self->_htmlData;

  return v3;
}

- (id)HTMLFileWrapper
{
  fileWrapper = self->_fileWrapper;
  if (!fileWrapper)
  {
    [(NSHTMLWriter *)self _generateHTML];
    fileWrapper = self->_fileWrapper;
  }

  v4 = fileWrapper;

  return v4;
}

- (id)subresources
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (!self->_fileWrapper)
  {
    [(NSHTMLWriter *)self _generateHTML];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_subresources allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        webResource = [(NSMutableDictionary *)self->_subresources objectForKey:*(*(&v11 + 1) + 8 * v8)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          webResource = [webResource webResource];
        }

        if (webResource)
        {
          [array addObject:webResource];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)webArchive
{
  _webArchiveClass = [(NSHTMLWriter *)self _webArchiveClass];
  if (self->_fileWrapper || ([(NSHTMLWriter *)self _generateHTML], self->_fileWrapper))
  {
    if (self->_outputBaseURL)
    {
      v4 = [MEMORY[0x1E695DFF8] URLWithString:@"index.html" relativeToURL:?];
    }

    else
    {
      v4 = [MEMORY[0x1E695DFF8] URLWithString:@"file:///index.html"];
    }

    v5 = [[NSSubstituteWebResource alloc] initWithData:self->_htmlData URL:v4 MIMEType:@"text/html" textEncodingName:self->_textEncodingName frameName:0];
    v6 = [[_webArchiveClass alloc] initWithMainResource:-[NSSubstituteWebResource webResource](v5 subresources:"webResource") subframeArchives:{-[NSHTMLWriter subresources](self, "subresources"), 0}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_createWebArchiveData
{
  if (!self->_webArchiveData)
  {
    self->_webArchiveData = [-[NSHTMLWriter webArchive](self "webArchive")];
  }
}

- (id)webArchiveData
{
  if (!self->_webArchiveData)
  {
    v3 = _NSCreateWebArchiveOnAppKitThread;
    if (_NSCreateWebArchiveOnAppKitThread == 254)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      if ([standardUserDefaults objectForKey:@"NSCreateWebArchiveOnAppKitThread"])
      {
        v3 = [standardUserDefaults BOOLForKey:@"NSCreateWebArchiveOnAppKitThread"];
      }

      else
      {
        v3 = 1;
      }

      _NSCreateWebArchiveOnAppKitThread = v3;
    }

    if (v3 == 1 && ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      [(NSHTMLWriter *)self performSelectorOnMainThread:sel__createWebArchiveData withObject:0 waitUntilDone:1];
    }

    else
    {
      [(NSHTMLWriter *)self _createWebArchiveData];
    }
  }

  return self->_webArchiveData;
}

- (void)readDocumentFragment:(id)fragment
{
  ownerDocument = [fragment ownerDocument];
  if (ownerDocument)
  {
    v6 = ownerDocument;
    if (!objc_lookUpClass("DOMHTMLDocument") || (objc_opt_isKindOfClass() & 1) == 0 || (v7 = [v6 createElement:@"div"]) == 0 || (v8 = v7, (objc_opt_respondsToSelector() & 1) == 0))
    {
      v9 = [v6 createElementNS:@"http://www.w3.org/1999/xhtml" qualifiedName:@"div"];
      if (!v9)
      {
        return;
      }

      v8 = v9;
    }

    if (objc_opt_respondsToSelector())
    {
      self->_outputBaseURL = [MEMORY[0x1E695DFF8] _web_uniqueWebDataURL];
      *&self->_flags |= 9u;
      if (!self->_fileWrapper)
      {
        [(NSHTMLWriter *)self _generateHTML];
      }

      [v8 setInnerHTML:self->_bodyStr];
      if ([v8 hasChildNodes])
      {
        do
        {
          firstChild = [v8 firstChild];
          [v8 removeChild:firstChild];
          [fragment appendChild:firstChild];
        }

        while (([v8 hasChildNodes] & 1) != 0);
      }
    }
  }
}

- (id)documentFragmentForDocument:(id)document
{
  createDocumentFragment = [document createDocumentFragment];
  if (createDocumentFragment)
  {
    [(NSHTMLWriter *)self readDocumentFragment:createDocumentFragment];
  }

  return createDocumentFragment;
}

- (id)documentFragmentString
{
  if (!self->_fileWrapper)
  {
    [(NSHTMLWriter *)self _generateHTMLForWebKit:1];
  }

  v3 = self->_bodyStr;

  return v3;
}

@end