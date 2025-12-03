@interface TSWPParagraphStyle
+ (TSSPropertySet)deprecatedProperties;
+ (TSSPropertySet)iWorkSpecificSimpleParagraphProperties;
+ (TSSPropertySet)nonEmphasisParagraphProperties;
+ (TSSPropertySet)paragraphProperties;
+ (TSSPropertySet)properties;
+ (TSSPropertySet)propertiesAllowingNSNull;
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultPropertyMap;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)p_normalDecimalSeparator;
+ (id)paragraphPropertiesAllowingNSNull;
+ (id)styleSummaryForPropertyMap:(id)map;
+ (int)defaultIntValueForProperty:(int)property;
- (BOOL)allowAsBookmarkSuggestionStyle;
- (BOOL)p_contentTagIsBody;
- (NSString)presetKind;
- (TSWPParagraphStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (__CTFont)findCachedFontForCharacterStyle:(id)style scalePercent:(unint64_t)percent;
- (__CTParagraphStyle)p_createCoreTextParagraphStyleWithCharacterStyle:(id)style writingDirection:(int)direction;
- (char)p_coreTextWritingDirectionFromWPWritingDirection:(int)direction;
- (id)archivableRepresentationOfChangeSet:(id)set;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (id)fallbackFontColorWhenUnableToReadCharacterFillColor;
- (id)followingParagraphStyle;
- (id)fullPropertyMap;
- (id)getTypesetterAttributes:(id)attributes scalePercent:(unint64_t)percent isRightToLeft:(BOOL)left;
- (id)initialListStyle;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)p_coreTextCharacterStyle:(id)style allowLigatures:(BOOL)ligatures scalePercent:(unint64_t)percent shouldCache:(BOOL *)cache;
- (id)parentStyleForFixingOrphanVariation;
- (id)styleSummary;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)minimumReadVersion;
- (void)addMissingClassProperties;
- (void)clearStyleCaches;
- (void)dealloc;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)localizeForBidi:(BOOL)bidi;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setInitialListStyle:(id)style;
- (void)setOverridePropertyMap:(id)map;
- (void)setValue:(id)value forProperty:(int)property;
- (void)willModify;
@end

@implementation TSWPParagraphStyle

+ (TSSPropertySet)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276D3BAE8;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A57FC0 != -1)
  {
    dispatch_once(&qword_280A57FC0, block);
  }

  v2 = qword_280A57FB8;

  return v2;
}

+ (TSSPropertySet)paragraphProperties
{
  if (qword_280A57FD0 != -1)
  {
    sub_276F4EFA4();
  }

  v3 = qword_280A57FC8;

  return v3;
}

+ (TSSPropertySet)deprecatedProperties
{
  if (qword_280A57FE0 != -1)
  {
    sub_276F4EFB8();
  }

  v3 = qword_280A57FD8;

  return v3;
}

+ (TSSPropertySet)nonEmphasisParagraphProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276D3BE2C;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A57FF0 != -1)
  {
    dispatch_once(&qword_280A57FF0, block);
  }

  v2 = qword_280A57FE8;

  return v2;
}

+ (TSSPropertySet)propertiesAllowingNSNull
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276D3BF6C;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A58000 != -1)
  {
    dispatch_once(&qword_280A58000, block);
  }

  v2 = qword_280A57FF8;

  return v2;
}

+ (id)paragraphPropertiesAllowingNSNull
{
  if (qword_280A58010 != -1)
  {
    sub_276F4EFCC();
  }

  v3 = qword_280A58008;

  return v3;
}

+ (TSSPropertySet)iWorkSpecificSimpleParagraphProperties
{
  if (qword_280A58020 != -1)
  {
    sub_276F4EFE0();
  }

  v3 = qword_280A58018;

  return v3;
}

+ (int)defaultIntValueForProperty:(int)property
{
  result = 0x80000000;
  if (property > 85)
  {
    if (property <= 100)
    {
      if (property == 93)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x80000000;
      }

      if (property == 92)
      {
        v4 = 1;
      }

      else
      {
        v4 = v9;
      }

      if (property == 91)
      {
        v4 = 0;
      }

      if (property == 90)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0x80000000;
      }

      if (property == 89)
      {
        v10 = 0;
      }

      if (property == 86)
      {
        v7 = 4;
      }

      else
      {
        v7 = v10;
      }

      v8 = property <= 90;
    }

    else
    {
      if (property == 121)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0x80000000;
      }

      if (property == 108)
      {
        v4 = 0;
      }

      if (property == 106)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0x80000000;
      }

      if (property == 105)
      {
        v5 = 0;
      }

      if (property <= 107)
      {
        v4 = v5;
      }

      if (property == 104)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0x80000000;
      }

      if (property == 102)
      {
        v6 = 0;
      }

      if (property == 101)
      {
        v7 = -1;
      }

      else
      {
        v7 = v6;
      }

      v8 = property <= 104;
    }

    if (v8)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    switch(property)
    {
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 26:
      case 27:
      case 30:
      case 37:
      case 47:
      case 49:
        result = 0;
        break;
      case 41:
        result = 1;
        break;
      case 44:
        result = -1;
        break;
      default:
        return result;
    }
  }

  return result;
}

+ (float)defaultFloatValueForProperty:(int)property
{
  result = INFINITY;
  v4 = 0.0;
  if (property == 99)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = INFINITY;
  }

  if (property == 88)
  {
    v5 = 0.0;
  }

  v6 = 36.0;
  if (property == 87)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = INFINITY;
  }

  if (property != 83)
  {
    v6 = v7;
  }

  if (property <= 87)
  {
    v5 = v6;
  }

  if (property == 82)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = INFINITY;
  }

  if (property == 81)
  {
    v8 = 0.0;
  }

  if (property == 80)
  {
    v8 = 0.0;
  }

  if (property <= 82)
  {
    v5 = v8;
  }

  if (property == 36)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = INFINITY;
  }

  if (property == 35)
  {
    v9 = 0.0;
  }

  if (property == 34)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = INFINITY;
  }

  if (property != 32)
  {
    v4 = v10;
  }

  if (property > 34)
  {
    v4 = v9;
  }

  if (property == 28)
  {
    result = 1.0;
  }

  if (property == 24)
  {
    result = 1.0;
  }

  if (property == 17)
  {
    result = 12.0;
  }

  if (property > 31)
  {
    result = v4;
  }

  if (property > 79)
  {
    return v5;
  }

  return result;
}

+ (id)p_normalDecimalSeparator
{
  v3 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x277CBE6A8]);

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @".";
  }

  v7 = v6;

  return v6;
}

+ (id)defaultValueForProperty:(int)property
{
  v3 = *&property;
  v5 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, *&property);
  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  v11 = v8;
  if (v3 <= 47)
  {
    if (v3 <= 37)
    {
      if (v3 <= 24)
      {
        if (v3 == 16)
        {
          v14 = @"Helvetica";
          goto LABEL_40;
        }

        v12 = v5;
        if (v3 != 18)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v12 = v8;
        if (v3 != 25)
        {
          v12 = v8;
          if (v3 != 29)
          {
            v12 = v5;
            if (v3 != 33)
            {
              goto LABEL_35;
            }
          }
        }
      }
    }

    else
    {
      v12 = v8;
      if (v3 > 42)
      {
        if (v3 != 43)
        {
          v12 = v8;
          if (v3 != 45)
          {
            v12 = v8;
            if (v3 != 46)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else if (v3 != 38)
      {
        v12 = v8;
        if (v3 != 39)
        {
          v12 = v8;
          if (v3 != 40)
          {
            goto LABEL_35;
          }
        }
      }
    }

    goto LABEL_38;
  }

  if (v3 > 95)
  {
    if (v3 > 102)
    {
      v12 = v8;
      if (v3 != 103)
      {
        v12 = v8;
        if (v3 != 107)
        {
          v12 = v8;
          if (v3 != 109)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else
    {
      if (v3 == 96)
      {
        v13 = objc_msgSend_p_normalDecimalSeparator(self, v9, v10);
        goto LABEL_39;
      }

      v12 = v8;
      if (v3 != 98)
      {
        if (v3 == 100)
        {
          v13 = objc_msgSend_ruleOffsetWithDX_dY_(TSWPRuleOffset, v9, v10, 6.0, 6.0);
          goto LABEL_39;
        }

LABEL_35:
        v17.receiver = self;
        v17.super_class = &OBJC_METACLASS___TSWPParagraphStyle;
        v13 = objc_msgSendSuper2(&v17, sel_defaultValueForProperty_, v3);
        goto LABEL_39;
      }
    }

LABEL_38:
    v13 = v12;
    goto LABEL_39;
  }

  if (v3 > 84)
  {
    if (v3 == 85)
    {
      v13 = objc_msgSend_lineSpacing(TSWPLineSpacing, v9, v10);
      goto LABEL_39;
    }

    v12 = v8;
    if (v3 != 94)
    {
      v12 = v8;
      if (v3 != 95)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  if (v3 == 48)
  {
    v13 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v9, v5);
    goto LABEL_39;
  }

  v12 = v8;
  if (v3 == 50)
  {
    goto LABEL_38;
  }

  if (v3 != 84)
  {
    goto LABEL_35;
  }

  v13 = objc_msgSend_tabs(TSWPTabs, v9, v10);
LABEL_39:
  v14 = v13;
LABEL_40:
  v15 = v14;

  return v14;
}

+ (id)defaultPropertyMap
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TSWPParagraphStyle;
  v3 = objc_msgSendSuper2(&v10, sel_defaultPropertyMap);
  v6 = objc_msgSend_deprecatedProperties(self, v4, v5);
  v8 = objc_msgSend_propertyMapByRemovingValuesForProperties_(v3, v7, v6);

  return v8;
}

+ (id)defaultStyleWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v5, contextCopy, 0, 0, 0);

  return isVariation;
}

- (TSWPParagraphStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  variationCopy = variation;
  contextCopy = context;
  nameCopy = name;
  mapCopy = map;
  v25.receiver = self;
  v25.super_class = TSWPParagraphStyle;
  v13 = [(TSWPParagraphStyle *)&v25 initWithContext:contextCopy name:nameCopy overridePropertyMap:mapCopy isVariation:variationCopy];
  v14 = objc_opt_class();
  v17 = objc_msgSend_propertiesAllowingNSNull(v14, v15, v16);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_276D3C950;
  v23[3] = &unk_27A6F3D98;
  v23[4] = v17;
  v18 = v13;
  v24 = v18;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(mapCopy, v19, v23);
  v20 = v24;
  v21 = v18;

  return v21;
}

- (void)dealloc
{
  coreTextParagraphStyle = self->_coreTextParagraphStyle;
  if (coreTextParagraphStyle)
  {
    CFRelease(coreTextParagraphStyle);
  }

  v4.receiver = self;
  v4.super_class = TSWPParagraphStyle;
  [(TSWPParagraphStyle *)&v4 dealloc];
}

- (void)setOverridePropertyMap:(id)map
{
  mapCopy = map;
  v18.receiver = self;
  v18.super_class = TSWPParagraphStyle;
  [(TSWPParagraphStyle *)&v18 setOverridePropertyMap:mapCopy];
  v5 = objc_opt_class();
  v8 = objc_msgSend_propertiesAllowingNSNull(v5, v6, v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276D3CDB0;
  v17[3] = &unk_27A6F3D98;
  v17[4] = v8;
  v17[5] = self;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(mapCopy, v9, v17);
  v11 = objc_msgSend_overrideValueForProperty_(self, v10, 95);

  if (v11 == self)
  {
    v14 = *(&self->super.super.super.isa + *MEMORY[0x277D80AF0]);
    v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
    objc_msgSend_setObject_forProperty_(v14, v16, v15, 95);
  }
}

- (void)setValue:(id)value forProperty:(int)property
{
  v4 = *&property;
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = TSWPParagraphStyle;
  [(TSWPParagraphStyle *)&v18 setValue:valueCopy forProperty:v4];
  if (v4 == 16)
  {
    objc_opt_class();
    v7 = TSUCheckedDynamicCast();
    isSystemFontName = objc_msgSend_isSystemFontName_(TSWPFont, v8, v7);

    if (isSystemFontName)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPParagraphStyle setValue:forProperty:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 407, 0, "Unexpected use of system font name.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }
  }
}

- (id)fullPropertyMap
{
  v9.receiver = self;
  v9.super_class = TSWPParagraphStyle;
  fullPropertyMap = [(TSWPParagraphStyle *)&v9 fullPropertyMap];
  v3 = objc_opt_class();
  v6 = objc_msgSend_deprecatedProperties(v3, v4, v5);
  objc_msgSend_removeValuesForProperties_(fullPropertyMap, v7, v6);

  return fullPropertyMap;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = TSWPParagraphStyle;
  [(TSWPParagraphStyle *)&v14 replaceReferencedStylesUsingBlock:blockCopy];
  v7 = objc_msgSend_propertyMap(self, v5, v6);
  v9 = objc_msgSend_objectForProperty_(v7, v8, 95);

  if (v9 == self)
  {
    v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11);
    objc_msgSend_setValue_forProperty_(self, v13, v12, 95);
  }
}

- (void)willModify
{
  objc_msgSend_clearStyleCaches(self, a2, v2);
  v6 = objc_msgSend_stylesheet(self, v4, v5);
  v9 = objc_msgSend_rootAncestor(v6, v7, v8);

  if (v9)
  {
    do
    {
      v11 = objc_msgSend_childrenOfStyle_(v9, v10, self);
      objc_msgSend_enumerateObjectsUsingBlock_(v11, v12, &unk_2885FE300);

      v15 = objc_msgSend_child(v9, v13, v14);

      v9 = v15;
    }

    while (v15);
  }

  v16.receiver = self;
  v16.super_class = TSWPParagraphStyle;
  [(TSWPParagraphStyle *)&v16 willModify];
}

- (void)clearStyleCaches
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  coreTextParagraphStyle = obj->_coreTextParagraphStyle;
  if (coreTextParagraphStyle)
  {
    CFRelease(coreTextParagraphStyle);
    v2 = obj;
    obj->_coreTextParagraphStyle = 0;
  }

  styleCache = v2->_styleCache;
  v2->_styleCache = 0;

  scalePercentStyleCaches = obj->_scalePercentStyleCaches;
  obj->_scalePercentStyleCaches = 0;

  objc_sync_exit(obj);
}

- (id)getTypesetterAttributes:(id)attributes scalePercent:(unint64_t)percent isRightToLeft:(BOOL)left
{
  leftCopy = left;
  attributesCopy = attributes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_coreTextParagraphStyle)
  {
    selfCopy->_coreTextParagraphStyle = objc_msgSend_p_createCoreTextParagraphStyleWithCharacterStyle_writingDirection_(selfCopy, v10, 0, 0);
  }

  if (percent == 100)
  {
    styleCache = selfCopy->_styleCache;
    if (!styleCache)
    {
      v13 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v10, 517, 0);
      v14 = selfCopy->_styleCache;
      selfCopy->_styleCache = v13;

      styleCache = selfCopy->_styleCache;
    }

    v15 = styleCache;
  }

  else
  {
    if (percent - 20 >= 0x17D)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPParagraphStyle getTypesetterAttributes:scalePercent:isRightToLeft:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 474, 0, "Bad scalePercent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    scalePercentStyleCaches = selfCopy->_scalePercentStyleCaches;
    if (!scalePercentStyleCaches)
    {
      v24 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v10, v11);
      v25 = selfCopy->_scalePercentStyleCaches;
      selfCopy->_scalePercentStyleCaches = v24;

      scalePercentStyleCaches = selfCopy->_scalePercentStyleCaches;
    }

    v26 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v10, percent);
    v15 = objc_msgSend_objectForKey_(scalePercentStyleCaches, v27, v26);

    if (!v15)
    {
      v15 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v28, 517, 0);
      v29 = selfCopy->_scalePercentStyleCaches;
      v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v30, percent);
      objc_msgSend_setObject_forKey_(v29, v32, v15, v31);
    }
  }

  if (attributesCopy)
  {
    v33 = attributesCopy;
  }

  else
  {
    v33 = selfCopy;
  }

  v34 = v33;
  v37 = objc_msgSend_objectForKey_(v15, v35, v34);
  if (!v37)
  {
    objc_opt_class();
    v48 = objc_msgSend_context(selfCopy, v46, v47);
    v51 = objc_msgSend_documentObject(v48, v49, v50);
    v52 = TSUDynamicCast();

    if (v52)
    {
      v55 = objc_msgSend_useLigatures(v52, v53, v54);
    }

    else
    {
      v55 = 1;
    }

    v66 = 1;
    v37 = objc_msgSend_p_coreTextCharacterStyle_allowLigatures_scalePercent_shouldCache_(selfCopy, v53, attributesCopy, v55, percent, &v66);
    if (v66 == 1)
    {
      objc_msgSend_setObject_forKey_(v15, v56, v37, v34);
    }

    if (leftCopy)
    {
      goto LABEL_18;
    }

LABEL_28:
    v44 = v37;
    goto LABEL_29;
  }

  if (!leftCopy)
  {
    goto LABEL_28;
  }

LABEL_18:
  v38 = objc_msgSend_intValueForProperty_(selfCopy, v36, 44);
  if (v38 == -1)
  {
    CoreTextParagraphStyleWithCharacterStyle_writingDirection = objc_msgSend_p_createCoreTextParagraphStyleWithCharacterStyle_writingDirection_(selfCopy, v39, 0, 1);
  }

  else
  {
    CoreTextParagraphStyleWithCharacterStyle_writingDirection = objc_msgSend_p_createCoreTextParagraphStyleWithCharacterStyle_writingDirection_(selfCopy, v39, 0, v38);
  }

  v43 = CoreTextParagraphStyleWithCharacterStyle_writingDirection;
  v44 = objc_msgSend_mutableCopy(v37, v41, v42);
  objc_msgSend_setObject_forKeyedSubscript_(v44, v45, v43, *MEMORY[0x277CC49F8]);
  CFRelease(v43);

LABEL_29:
  objc_sync_exit(selfCopy);

  if (!v44)
  {
    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSWPParagraphStyle getTypesetterAttributes:scalePercent:isRightToLeft:]");
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
    if (leftCopy)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v61, v59, v62, 524, 0, "Failed to get attributes isRTL: %{public}@\ncharacter style: %@\n paragraph style: %@", @"YES", attributesCopy, selfCopy);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v61, v59, v62, 524, 0, "Failed to get attributes isRTL: %{public}@\ncharacter style: %@\n paragraph style: %@", @"NO", attributesCopy, selfCopy);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64);
  }

  return v44;
}

- (__CTFont)findCachedFontForCharacterStyle:(id)style scalePercent:(unint64_t)percent
{
  v4 = objc_msgSend_getTypesetterAttributes_scalePercent_isRightToLeft_(self, a2, style, percent, 0);
  v6 = v4;
  if (v4)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *MEMORY[0x277CC4838]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (char)p_coreTextWritingDirectionFromWPWritingDirection:(int)direction
{
  directionCopy = direction;
  if (direction == -1)
  {
    objc_opt_class();
    v7 = objc_msgSend_context(self, v5, v6);
    v10 = objc_msgSend_documentObject(v7, v8, v9);
    v11 = TSUDynamicCast();

    directionCopy = v11 && (objc_msgSend_isDirectionRightToLeft(v11, v12, v13) & 1) != 0;
    if (!directionCopy)
    {
      return 0;
    }
  }

  else if (!direction)
  {
    return 0;
  }

  if (directionCopy == 1)
  {
    return 1;
  }

  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPParagraphStyle p_coreTextWritingDirectionFromWPWritingDirection:]");
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 564, 0, "Bad writing direction map.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  return 0;
}

- (__CTParagraphStyle)p_createCoreTextParagraphStyleWithCharacterStyle:(id)style writingDirection:(int)direction
{
  v4 = *&direction;
  selfCopy = self;
  v107[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_intValueForProperty_(self, a2, 86);
  if (v6 >= 256)
  {
    v69 = selfCopy;
    v70 = MEMORY[0x277D81150];
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPParagraphStyle p_createCoreTextParagraphStyleWithCharacterStyle:writingDirection:]");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v74, v71, v73, 571, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76);
    v85 = -1;
  }

  else
  {
    v85 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      v8 = objc_msgSend_p_coreTextWritingDirectionFromWPWritingDirection_(selfCopy, v7, v4);
      goto LABEL_4;
    }

    v69 = selfCopy;
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPParagraphStyle p_createCoreTextParagraphStyleWithCharacterStyle:writingDirection:]");
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v82, v79, v81, 571, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84);
    v85 = 0;
  }

  selfCopy = v69;
  v8 = objc_msgSend_p_coreTextWritingDirectionFromWPWritingDirection_(v69, v77, v4);
LABEL_4:
  v10 = v8;
  v95 = v8;
  objc_msgSend_floatValueForProperty_(selfCopy, v9, 83);
  v12 = v11;
  v94 = v11;
  objc_opt_class();
  v14 = objc_msgSend_valueForProperty_(selfCopy, v13, 84);
  v15 = TSUCheckedDynamicCast();

  v90 = v15;
  v18 = objc_msgSend_count(v15, v16, v17);
  v91 = objc_opt_new();
  v93 = v91;
  objc_msgSend_floatValueForProperty_(selfCopy, v19, 80);
  v21 = v20;
  objc_msgSend_floatValueForProperty_(selfCopy, v22, 81);
  v26 = v25;
  v28 = v21 < v25 && v10 == 0;
  v89 = v28;
  if (v18)
  {
    v87 = selfCopy;
    v29 = 0;
    v30 = v21;
    v86 = *MEMORY[0x277CC4A20];
    v31 = &unk_276F99594;
    v32 = v10;
    if (v10 != 1)
    {
      v31 = &unk_276F99590;
    }

    v88 = v31;
    v33 = 1;
    v34 = v18;
    do
    {
      v35 = objc_msgSend_tabAtIndex_(v90, v23, v29);
      v38 = objc_msgSend_alignment(v35, v36, v37);
      objc_msgSend_position(v35, v39, v40);
      v43 = v42;
      if (v38 == 3)
      {
        v44 = objc_msgSend_valueForProperty_(v87, v41, 96);
        v47 = objc_msgSend_null(MEMORY[0x277CBEB68], v45, v46);
        v48 = v44 == v47;

        if (v48)
        {

          v44 = &stru_28860A0F0;
        }

        v50 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v49, v44);
        v106 = v86;
        v107[0] = v50;
        v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v107, &v106, 1);
      }

      else
      {
        v52 = 0;
      }

      v53 = v43 - v30 + v26;
      if (v32 != 1)
      {
        v53 = v43;
      }

      v54 = CTTextTabCreate(v88[v38], v53, v52);
      objc_msgSend_addObject_(v91, v55, v54);
      CFRelease(v54);
      v56 = v89;
      if (v34 != v18)
      {
        v56 = 0;
      }

      if (v56 && v43 > v26)
      {
        v34 = v29;
      }

      v29 = v33;
    }

    while (v18 > v33++);
  }

  else
  {
    v34 = 0;
  }

  if (v89)
  {
    v58 = CTTextTabCreate(kCTTextAlignmentLeft, v26, 0);
    objc_msgSend_insertObject_atIndex_(v91, v59, v58, v34);
    CFRelease(v58);
  }

  if (objc_msgSend_count(v91, v23, v24))
  {
    v62 = objc_msgSend_lastObject(v91, v60, v61);

    Location = CTTextTabGetLocation(v62);
    v64 = (floor(Location / v12) + 1.0) * v12;
    if (v64 - Location < v12)
    {
      v65 = CTTextTabCreate(kCTTextAlignmentLeft, v64, 0);
      objc_msgSend_addObject_(v91, v66, v65);
      CFRelease(v65);
    }
  }

  v92 = v85;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v92;
  v97 = 13;
  v98 = 1;
  v99 = &v95;
  v100 = 5;
  v101 = 8;
  v102 = &v94;
  v103 = 4;
  v104 = 8;
  v105 = &v93;
  v67 = CTParagraphStyleCreate(&settings, 4uLL);

  return v67;
}

- (id)p_coreTextCharacterStyle:(id)style allowLigatures:(BOOL)ligatures scalePercent:(unint64_t)percent shouldCache:(BOOL *)cache
{
  ligaturesCopy = ligatures;
  styleCopy = style;
  v11 = objc_opt_new();
  objc_msgSend_setObject_forKeyedSubscript_(v11, v12, self->_coreTextParagraphStyle, *MEMORY[0x277CC49F8]);
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
  v177 = v15;
  objc_msgSend_tsu_addNonNilObject_(v15, v16, styleCopy);
  objc_msgSend_tsu_addNonNilObject_(v15, v17, self);
  v18 = TSWPResolvePropertyForStyles(v15, 16);
  v176 = v18;
  v21 = (objc_msgSend_isSystemFontName_(TSWPFont, v19, v18) & 1) == 0 && objc_msgSend_uiFontTypeForFontName_(TSWPFont, v20, v18) == -1;
  *cache = v21;
  font = sub_276D38B74(v15, percent);
  if (!font)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPParagraphStyle p_coreTextCharacterStyle:allowLigatures:scalePercent:shouldCache:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 666, 0, "Bad font");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v11, v22, font, *MEMORY[0x277CC4838]);
  v30 = sub_276D388FC(styleCopy, self, 36, 0.0);
  v33 = objc_msgSend_documentRoot(self, v31, v32);
  shouldAllowLigaturesInMinimallyTrackedText = objc_msgSend_shouldAllowLigaturesInMinimallyTrackedText(v33, v34, v35);

  v38 = v30 != 0.0;
  if (shouldAllowLigaturesInMinimallyTrackedText && fabs(v30) < 0.0001)
  {
    v38 = 0;
  }

  v39 = v30 > 0.05 && vabdd_f64(0.05, v30) >= 0.0001;
  if (v30 >= -0.05)
  {
    v40 = 0;
    if (!v38)
    {
LABEL_14:
      if (ligaturesCopy)
      {
        goto LABEL_15;
      }

LABEL_19:
      v41 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v40 = fabs(v30 + 0.05) >= 0.0001;
    if (!v38)
    {
      goto LABEL_14;
    }
  }

  Size = CTFontGetSize(font);
  v45 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v43, v44, v30 * Size);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v46, v45, *MEMORY[0x277CC49E0]);

  if ((shouldAllowLigaturesInMinimallyTrackedText & (!v39 && !v40) & ligaturesCopy & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v41 = sub_276D386B0(styleCopy, self, 41, 0);
  if (v41 != 1)
  {
LABEL_20:
    v47 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v37, v41);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v48, v47, *MEMORY[0x277CC49F0]);
  }

  v49 = sub_276D388FC(styleCopy, self, 34, 0.0);
  v52 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v50, v51, v49);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v53, v52, @"TSWPBaselineShift");

  v54 = sub_276D386B0(styleCopy, self, 37, 0);
  v56 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v55, v54);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v57, v56, @"TSWPSuperscript");

  if (v54)
  {
    v58 = sub_276D388FC(styleCopy, self, 17, 0.0);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(font, v58, 0, 0);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v60, CopyWithAttributes, @"TSWPUnadjustedFont");
    CFRelease(CopyWithAttributes);
  }

  v61 = TSWPResolvePropertyForStyles(styleCopy, self, 40);
  v175 = v61;
  if (objc_msgSend_isEnabled(v61, v62, v63))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v11, v64, v61, @"TSWPShadow");
  }

  v66 = sub_276D386B0(styleCopy, self, 23, 0);
  if (v66 >= 4)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSWPParagraphStyle p_coreTextCharacterStyle:allowLigatures:scalePercent:shouldCache:]");
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 720, 0, "bad underline value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
  }

  if (v66 >= 3)
  {
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v65, 3);
  }

  else
  {
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v65, v66);
  }
  v74 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v11, v75, v74, @"TSWPUnderline");

  v76 = TSWPResolvePropertyForStyles(styleCopy, self, 25);
  v79 = objc_msgSend_null(MEMORY[0x277CBEB68], v77, v78);

  if (v79 == v76)
  {
    v80 = 0;
  }

  else
  {
    v80 = v76;
  }

  v174 = v80;
  if (v80)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v11, v81, v80, @"TSWPUnderlineColor");
  }

  v84 = TSWPResolvePropertyForStyles(styleCopy, self, 45);
  v173 = v84;
  if (v84)
  {
    v85 = objc_msgSend_null(MEMORY[0x277CBEB68], v82, v83);

    if (v84 != v85)
    {
      v86 = String();
      objc_msgSend_setObject_forKeyedSubscript_(v11, v87, v84, v86);
    }
  }

  v89 = sub_276D386B0(styleCopy, self, 27, 0);
  if (v89 >= 3)
  {
    v90 = MEMORY[0x277D81150];
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "[TSWPParagraphStyle p_coreTextCharacterStyle:allowLigatures:scalePercent:shouldCache:]");
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v94, v91, v93, 737, 0, "bad strikethru value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96);
  }

  if (v89 >= 2)
  {
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v88, 2);
  }

  else
  {
    objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v88, v89);
  }
  v97 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v11, v98, v97, @"TSWPStrikethrough");

  v100 = TSWPResolvePropertyForStyles(styleCopy, self, 29);
  v172 = v100;
  if (v100)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v11, v99, v100, @"TSWPStrikethroughColor");
  }

  v101 = TSWPResolvePropertyForStyles(styleCopy, self, 38);
  v171 = v101;
  if (v101)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v11, v102, v101, @"TSWPTextBackgroundColor");
  }

  objc_opt_class();
  v103 = TSWPResolvePropertyForStyles(styleCopy, self, 50);
  v178 = TSUDynamicCast();

  objc_opt_class();
  v104 = TSWPResolvePropertyForStyles(styleCopy, self, 48);
  v105 = TSUDynamicCast();

  if (v178)
  {
    v108 = objc_msgSend_emptyStroke(MEMORY[0x277D803C0], v106, v107);
    v110 = objc_msgSend_isEqual_(v178, v109, v108) ^ 1;

    if (v105)
    {
LABEL_49:
      v111 = objc_msgSend_isClear(v105, v106, v107) ^ 1;
      goto LABEL_52;
    }
  }

  else
  {
    v110 = 0;
    if (v105)
    {
      goto LABEL_49;
    }
  }

  v111 = 0;
LABEL_52:
  if (((v110 | v111) & 1) == 0)
  {
    v119 = objc_msgSend_grayColor(MEMORY[0x277D81180], v106, v107);
    v122 = objc_msgSend_colorWithAlphaComponent_(v119, v120, v121, 0.7);
    v125 = objc_msgSend_CGColor(v122, v123, v124);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v126, v125, *MEMORY[0x277CC4A08]);

    objc_msgSend_setObject_forKeyedSubscript_(v11, v127, &unk_288627290, *MEMORY[0x277CC4A10]);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v128, MEMORY[0x277CBEC38], @"TSWPInvisibleTextAttribute");
    goto LABEL_83;
  }

  if (v110)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v11, v106, v178, @"TSWPCharacterStrokeAttribute");
  }

  if (v111)
  {
    objc_opt_class();
    v112 = TSUDynamicCast();
    v115 = v112;
    if (v112)
    {
      v116 = objc_msgSend_CGColor(v112, v113, v114);
      objc_msgSend_setObject_forKeyedSubscript_(v11, v117, v116, *MEMORY[0x277CC49C0]);
      v118 = 0;
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v113, v105, @"TSWPCharacterFillAttribute");
      v133 = objc_msgSend_referenceColor(v105, v131, v132);
      v136 = v133;
      if (v133)
      {
        v118 = v133;
      }

      else
      {
        v118 = objc_msgSend_blackColor(MEMORY[0x277D81180], v134, v135);
      }
    }

    if (v118)
    {
LABEL_66:
      v137 = *MEMORY[0x277CC49C0];
      v138 = objc_msgSend_objectForKeyedSubscript_(v11, v129, *MEMORY[0x277CC49C0]);

      if (!v138)
      {
        if (!v105 || (objc_msgSend_isClear(v118, v129, v130) & 1) == 0)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v11, v129, *MEMORY[0x277CBED28], *MEMORY[0x277CC49C8]);
        }

        v140 = objc_msgSend_CGColor(v118, v129, v139);
        objc_msgSend_setObject_forKeyedSubscript_(v11, v141, v140, v137);
      }
    }
  }

  else
  {
    v118 = objc_msgSend_clearColor(MEMORY[0x277D81180], v106, v107);
    if (v118)
    {
      goto LABEL_66;
    }
  }

  if (v110)
  {
    objc_msgSend_color(v178, v129, v130);
  }

  else
  {
    objc_msgSend_referenceColor(v105, v129, v130);
  }
  v142 = ;

  v144 = objc_msgSend_objectForKeyedSubscript_(v11, v143, @"TSWPUnderline");
  if (objc_msgSend_isEqual_(v144, v145, &unk_288627278))
  {
  }

  else
  {
    v148 = objc_msgSend_objectForKeyedSubscript_(v11, v146, @"TSWPUnderlineColor");

    if (!v148)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v147, v142, @"TSWPUnderlineColor");
    }
  }

  v149 = objc_msgSend_objectForKeyedSubscript_(v11, v147, @"TSWPStrikethrough");
  if (objc_msgSend_isEqual_(v149, v150, &unk_288627278))
  {
  }

  else
  {
    v152 = objc_msgSend_objectForKeyedSubscript_(v11, v151, @"TSWPStrikethroughColor");

    if (!v152)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v153, v142, @"TSWPStrikethroughColor");
    }
  }

LABEL_83:
  objc_opt_class();
  v154 = TSWPResolvePropertyForStyles(styleCopy, self, 49);
  v155 = TSUDynamicCast();

  if (v155)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v11, v156, v155, @"TSWPCharacterFillShouldFillTextContainerAttribute");
  }

  if (objc_msgSend_intValueForProperty_(self, v156, 106))
  {
    v158 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v157, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v159, v158, @"TSWPRoundedBorder");
  }

  v162 = objc_msgSend_valueForProperty_(self, v157, 98);
  if (v162)
  {
    v163 = objc_msgSend_null(MEMORY[0x277CBEB68], v160, v161);

    if (v162 != v163)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v160, v162, @"TSWPParagraphStroke");
    }
  }

  v166 = objc_msgSend_valueForProperty_(self, v160, 94);
  if (v166)
  {
    v167 = objc_msgSend_null(MEMORY[0x277CBEB68], v164, v165);

    if (v166 != v167)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v168, v166, @"TSWPParagraphFill");
    }
  }

  CFRelease(font);
  v169 = v11;

  return v11;
}

- (id)followingParagraphStyle
{
  selfCopy = self;
  v4 = objc_msgSend_valueForProperty_(selfCopy, v3, 95);
  v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);

  if (v4 != v7)
  {
    objc_opt_class();
    v8 = TSUDynamicCast();

    selfCopy = v8;
  }

  return selfCopy;
}

- (void)setInitialListStyle:(id)style
{
  styleCopy = style;
  v10 = styleCopy;
  if (styleCopy)
  {
    v7 = styleCopy;
  }

  else
  {
    v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  }

  v9 = v7;
  objc_msgSend_setValue_forProperty_(self, v8, v7, 103);
}

- (id)initialListStyle
{
  v2 = objc_msgSend_valueForProperty_(self, a2, 103);
  v5 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4);
  if (objc_msgSend_isEqual_(v2, v6, v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  v8 = v7;

  return v7;
}

- (unint64_t)minimumReadVersion
{
  v4 = objc_msgSend_presetKind(self, a2, v2);
  v5 = *MEMORY[0x277D80AF8];

  if (v4 == v5)
  {
    return *MEMORY[0x277D808D0];
  }

  v7.receiver = self;
  v7.super_class = TSWPParagraphStyle;
  return [(TSWPParagraphStyle *)&v7 minimumReadVersion];
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D80BD0];
  }

  v69.receiver = self;
  v69.super_class = TSWPParagraphStyle;
  [(TSWPParagraphStyle *)&v69 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 12);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D80AB8]);
    v12 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    if (*(archive + 4))
    {
      objc_msgSend_loadCharacterStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, *(archive + 4), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadCharacterStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v11, v12, &TSWP::_CharacterStylePropertiesArchive_default_instance_, unarchiverCopy);
    }

    if (*(archive + 5))
    {
      objc_msgSend_loadParagraphStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v13, v12, *(archive + 5), unarchiverCopy);
    }

    else
    {
      objc_msgSend_loadParagraphStylePropertiesIntoPropertyMap_fromArchive_unarchiver_(self, v13, v12, &TSWP::_ParagraphStylePropertiesArchive_default_instance_, unarchiverCopy);
    }

    if (objc_msgSend_containsProperty_(v12, v14, 16))
    {
      objc_opt_class();
      v16 = objc_msgSend_objectForProperty_(v12, v15, 16);
      v17 = TSUCheckedDynamicCast();
      isSystemFontName = objc_msgSend_isSystemFontName_(TSWPFont, v18, v17);

      if (isSystemFontName)
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPParagraphStyle loadFromArchive:unarchiver:]");
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 885, 0, "Unexpected use of system font.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      }
    }

    objc_storeStrong((&self->super.super.super.isa + *MEMORY[0x277D80AF0]), v12);
    if (unarchiverCopy)
    {
      v30 = objc_msgSend_preUFFVersion(unarchiverCopy, v28, v29);
      v33 = objc_msgSend_fileFormatVersion(unarchiverCopy, v31, v32) < 0x2000200000004;
      v56 = objc_msgSend_fileFormatVersion(unarchiverCopy, v34, v35) < 0x2000200000004;
      v38 = objc_msgSend_fileFormatVersion(unarchiverCopy, v36, v37) < 0x2000300000002;
      v41 = objc_msgSend_fileFormatVersion(unarchiverCopy, v39, v40) < *MEMORY[0x277D809A8];
      v44 = objc_msgSend_fileFormatVersion(unarchiverCopy, v42, v43) < 0x4000100000007;
      v47 = objc_msgSend_fileFormatVersion(unarchiverCopy, v45, v46) < 0xD000200000001;
      if (v30 > 0x51FF6A007)
      {
        v52 = 0;
        v51 = 0;
        v57 = 0;
      }

      else
      {
        v48 = *(archive + 5);
        if (!v48)
        {
          v48 = &TSWP::_ParagraphStylePropertiesArchive_default_instance_;
        }

        v49.i64[0] = v48[2];
        v50 = &TSWP::_CharacterStylePropertiesArchive_default_instance_;
        if (*(archive + 4))
        {
          v50 = *(archive + 4);
        }

        v49.i64[1] = v50[2];
        v51 = v49.i8[0] & 1;
        v57 = vand_s8(vmovn_s32(vtstq_s32(v49, xmmword_276F99580)), 0x1000100010001);
        v52 = 1;
      }

      v53 = v56;
    }

    else
    {
      v47 = 0;
      v41 = 0;
      v53 = 0;
      v52 = 0;
      v33 = 0;
      v38 = 0;
      v44 = 0;
      v51 = 0;
      v57 = 0;
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_276D3F568;
    v58[3] = &unk_27A6F3DE0;
    v58[4] = self;
    v60 = v53;
    v54 = v12;
    v59 = v54;
    v61 = v38;
    v62 = v33;
    v63 = v41;
    v64 = v47;
    v65 = v44;
    v66 = v52;
    v67 = vuzp1_s8(v57, v57).u32[0];
    v68 = v51;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v55, v58);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[38]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  objc_opt_class();
  v7 = *MEMORY[0x277D80AF0];
  v9 = objc_msgSend_objectForProperty_(*(&self->super.super.super.isa + v7), v8, 16);
  v10 = TSUCheckedDynamicCast();
  isSystemFontName = objc_msgSend_isSystemFontName_(TSWPFont, v11, v10);

  if (isSystemFontName)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPParagraphStyle saveToArchive:archiver:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1034, 0, "Unexpected use of system font.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_overrideValueForProperty_(self, v13, 95);

  if (v21)
  {
    v68 = archiverCopy;
    objc_opt_class();
    v23 = objc_msgSend_objectForProperty_(*(&self->super.super.super.isa + v7), v22, 95);
    v24 = TSUDynamicCast();

    if (v24 && (String() & 1) == 0)
    {
      v26 = MEMORY[0x277D81150];
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSWPParagraphStyle saveToArchive:archiver:]");
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      v28 = String();
      v29 = String();
      v30 = String();
      v31 = String();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v67, v66, 1041, 0, "Following style %@ (%@) must be from the same stylesheet as current style %@ (%@) or a parent stylesheet", v28, v29, v30, v31);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
      objc_msgSend_removeValueForProperty_(*(&self->super.super.super.isa + v7), v35, 95);
    }

    if (v24 == self)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSWPParagraphStyle saveToArchive:archiver:]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 1045, 0, "Unexpected 'self' following paragraph style %@", self);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
    }

    archiverCopy = v68;
  }

  v43 = objc_opt_class();
  v46 = objc_msgSend_propertiesAllowingNSNull(v43, v44, v45);
  v47 = *(&self->super.super.super.isa + v7);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_276D40308;
  v76[3] = &unk_27A6F3E08;
  v48 = v46;
  v77 = v48;
  objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v47, v49, v76);
  *(archive + 4) |= 1u;
  v50 = *(archive + 3);
  if (!v50)
  {
    v51 = *(archive + 1);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277CA3260](v51);
    *(archive + 3) = v50;
  }

  v75.receiver = self;
  v75.super_class = TSWPParagraphStyle;
  [(TSWPParagraphStyle *)&v75 saveToArchive:v50 archiver:archiverCopy];
  v54 = objc_msgSend_overrideCount(self, v52, v53);
  if (v54)
  {
    if (HIDWORD(v54))
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSWPParagraphStyle saveToArchive:archiver:]");
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v60, v62, 1060, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65);
      LODWORD(v54) = -1;
    }

    *(archive + 4) |= 8u;
    *(archive + 12) = v54;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_276D40464;
    v72[3] = &unk_27A6F3E30;
    v72[4] = self;
    archiveCopy = archive;
    v56 = archiverCopy;
    v73 = v56;
    objc_msgSend_pushScopeForField_message_usingBlock_(v56, v57, 11, archive, v72);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_276D404E4;
    v69[3] = &unk_27A6F3E30;
    v69[4] = self;
    archiveCopy2 = archive;
    v70 = v56;
    objc_msgSend_pushScopeForField_message_usingBlock_(v70, v58, 12, archive, v69);
  }
}

- (id)fallbackFontColorWhenUnableToReadCharacterFillColor
{
  v11.receiver = self;
  v11.super_class = TSWPParagraphStyle;
  fallbackFontColorWhenUnableToReadCharacterFillColor = [(TSSStyle *)&v11 fallbackFontColorWhenUnableToReadCharacterFillColor];
  v6 = objc_msgSend_parent(self, v4, v5);
  v7 = v6 | fallbackFontColorWhenUnableToReadCharacterFillColor;

  if (!v7)
  {
    fallbackFontColorWhenUnableToReadCharacterFillColor = objc_msgSend_blackColor(MEMORY[0x277D81180], v8, v9);
  }

  return fallbackFontColorWhenUnableToReadCharacterFillColor;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276D41AA4, off_2812DC408[38]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)localizeForBidi:(BOOL)bidi
{
  bidiCopy = bidi;
  v5 = objc_msgSend_overrideIntValueForProperty_(self, a2, 86);
  v10 = objc_msgSend_parent(self, v6, v7);
  if (v10)
  {
    v11 = objc_msgSend_parent(self, v8, v9);
    v13 = objc_msgSend_intValueForProperty_(v11, v12, 86);

    v14 = v13 != 4;
  }

  else
  {
    v14 = 1;
  }

  if (v5 || !v14)
  {
    if (v5 == 1 && bidiCopy)
    {
      objc_msgSend_setIntValue_forProperty_(self, v15, 0, 86);
    }
  }

  else
  {
    objc_msgSend_setIntValue_forProperty_(self, v15, 4, 86);
  }

  v17 = objc_msgSend_parent(self, v15, v16);

  if (v17)
  {
    objc_msgSend_removeValueForProperty_(self, v18, 44);
    if (!bidiCopy)
    {
      return;
    }
  }

  else
  {
    objc_msgSend_setIntValue_forProperty_(self, v18, 0xFFFFFFFFLL, 44);
    if (!bidiCopy)
    {
      return;
    }
  }

  objc_msgSend_overrideFloatValueForProperty_(self, v19, 81);
  v21 = v20;
  objc_msgSend_overrideFloatValueForProperty_(self, v22, 82);
  v24 = v23;
  objc_msgSend_removeValueForProperty_(self, v25, 82);
  objc_msgSend_removeValueForProperty_(self, v26, 81);
  if (v21 != INFINITY)
  {
    *&v28 = v21;
    objc_msgSend_setFloatValue_forProperty_(self, v27, 82, v28);
  }

  if (v24 != INFINITY)
  {
    *&v28 = v24;

    objc_msgSend_setFloatValue_forProperty_(self, v27, 81, v28);
  }
}

- (void)addMissingClassProperties
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v3 = objc_opt_class();
  v6 = objc_msgSend_properties(v3, v4, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276D40940;
  v8[3] = &unk_27A6F3E58;
  v8[4] = self;
  v8[5] = v9;
  objc_msgSend_enumeratePropertiesUsingBlock_(v6, v7, v8);

  _Block_object_dispose(v9, 8);
}

- (id)parentStyleForFixingOrphanVariation
{
  objc_opt_class();
  v5 = objc_msgSend_context(self, v3, v4);
  v8 = objc_msgSend_documentObject(v5, v6, v7);
  v9 = TSUDynamicCast();

  v12 = objc_msgSend_theme(v9, v10, v11);
  v15 = objc_msgSend_defaultParagraphStyle(v12, v13, v14);

  return v15;
}

- (id)archivableRepresentationOfChangeSet:(id)set
{
  setCopy = set;
  v5 = [TSWPStyleDiff alloc];
  v8 = objc_msgSend_context(self, v6, v7);
  v10 = objc_msgSend_initWithContext_changeSet_(v5, v9, v8, setCopy);

  return v10;
}

- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform
{
  v6 = *&property;
  valueCopy = value;
  v11 = valueCopy;
  if ((v6 - 80) > 8)
  {
    goto LABEL_18;
  }

  d = transform->d;
  if (((1 << (v6 - 80)) & 0x18F) != 0)
  {
    v13 = MEMORY[0x277CCABB0];
    objc_msgSend_floatValue(valueCopy, v9, v10);
    v17 = objc_msgSend_numberWithDouble_(v13, v15, v16, d * v14);
LABEL_4:
    v18 = v17;
    goto LABEL_5;
  }

  if (v6 == 84)
  {
    objc_opt_class();
    v37 = TSUDynamicCast();
    v23 = v37;
    if (v37)
    {
      v18 = objc_msgSend_copy(v37, v38, v39);
      v43 = objc_msgSend_count(v18, v40, v41);
      if (v43)
      {
        v44 = 0;
        v45 = 1;
        do
        {
          v46 = objc_msgSend_tabAtIndex_(v18, v42, v44);
          objc_msgSend_position(v46, v47, v48);
          objc_msgSend_setPosition_(v46, v50, v51, d * v49);

          v44 = v45;
        }

        while (v43 > v45++);
      }

      goto LABEL_21;
    }

LABEL_18:
    v53 = *&transform->c;
    v55[0] = *&transform->a;
    v55[1] = v53;
    v55[2] = *&transform->tx;
    v54.receiver = self;
    v54.super_class = TSWPParagraphStyle;
    v17 = [(TSWPParagraphStyle *)&v54 boxedValueForProperty:v6 oldBoxedValue:v11 transformedByTransform:v55];
    goto LABEL_4;
  }

  if (v6 != 85)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  v20 = TSUDynamicCast();
  v23 = v20;
  if (v20 && objc_msgSend_mode(v20, v21, v22))
  {
    objc_msgSend_amount(v23, v24, v25);
    v27 = v26;
    v28 = [TSWPLineSpacing alloc];
    v31 = objc_msgSend_mode(v23, v29, v30);
    objc_msgSend_baselineRule(v23, v32, v33);
    v36 = objc_msgSend_initWithMode_amount_baselineRule_(v28, v34, v31, d * v27, v35);
  }

  else
  {
    v36 = v11;
  }

  v18 = v36;
LABEL_21:

LABEL_5:

  return v18;
}

- (NSString)presetKind
{
  v3 = *MEMORY[0x277D80B70];
  if (objc_msgSend_isIdentified(self, v4, v5))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = objc_msgSend_firstIdentifiedAncestor(self, v6, v7);
  }

  v11 = selfCopy;
  v13 = objc_msgSend_styleIdentifier(selfCopy, v9, v10);
  if (v13)
  {
    v14 = String();
    isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"captions");
  }

  else
  {
    v14 = 0;
    isEqualToString = objc_msgSend_isEqualToString_(0, v12, @"captions");
  }

  if (isEqualToString)
  {
    v17 = *MEMORY[0x277D80AF8];

    v3 = v17;
  }

  return v3;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  v11 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v9, v10);
  v14 = objc_msgSend_propertyMap(self, v12, v13);
  v17 = objc_msgSend_allProperties(v14, v15, v16);
  objc_msgSend_addProperties_(v11, v18, v17);

  v21 = objc_msgSend_propertyMap(v8, v19, v20);
  v24 = objc_msgSend_allProperties(v21, v22, v23);
  objc_msgSend_addProperties_(v11, v25, v24);

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 5;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_276D41218;
  v31[3] = &unk_27A6F3E80;
  v31[4] = self;
  v26 = v8;
  v32 = v26;
  v34 = &v35;
  v27 = contextCopy;
  v33 = v27;
  objc_msgSend_enumeratePropertiesUsingBlock_(v11, v28, v31);
  v29 = v36[3];

  _Block_object_dispose(&v35, 8);
  return v29;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_copy(self, v8, v9);
  v13 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v11, v12);
  v16 = objc_msgSend_propertyMap(self, v14, v15);
  v19 = objc_msgSend_allProperties(v16, v17, v18);
  objc_msgSend_addProperties_(v13, v20, v19);

  v23 = objc_msgSend_propertyMap(v7, v21, v22);
  v26 = objc_msgSend_allProperties(v23, v24, v25);
  objc_msgSend_addProperties_(v13, v27, v26);

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_276D414F0;
  v34[3] = &unk_27A6F3EA8;
  v34[4] = self;
  v28 = v7;
  v35 = v28;
  fractionCopy = fraction;
  v29 = v10;
  v36 = v29;
  objc_msgSend_enumeratePropertiesUsingBlock_(v13, v30, v34);
  v31 = v36;
  v32 = v29;

  return v29;
}

+ (id)styleSummaryForPropertyMap:(id)map
{
  mapCopy = map;
  v5 = objc_msgSend_boxedObjectForProperty_(mapCopy, v4, 16);
  objc_msgSend_floatValueForProperty_(mapCopy, v6, 17);
  v8 = v7;
  v10 = objc_msgSend_intValueForProperty_(mapCopy, v9, 19);
  v11 = @"B";
  if (!v10)
  {
    v11 = &stru_28860A0F0;
  }

  v12 = v11;
  v14 = objc_msgSend_intValueForProperty_(mapCopy, v13, 20);
  v15 = @"I";
  if (!v14)
  {
    v15 = &stru_28860A0F0;
  }

  v16 = v15;
  v18 = objc_msgSend_intValueForProperty_(mapCopy, v17, 23);
  v19 = @"U";
  if (!v18)
  {
    v19 = &stru_28860A0F0;
  }

  v20 = v19;
  v22 = objc_msgSend_intValueForProperty_(mapCopy, v21, 27);
  v24 = @"S";
  if (!v22)
  {
    v24 = &stru_28860A0F0;
  }

  v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%@-%g [%@%@%@%@]", v5, v8, v12, v16, v20, v24);

  return v25;
}

- (id)styleSummary
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_propertyMap(self, v4, v5);
  v8 = objc_msgSend_styleSummaryForPropertyMap_(v3, v7, v6);

  return v8;
}

- (BOOL)allowAsBookmarkSuggestionStyle
{
  v6 = objc_msgSend_styleIdentifier(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_context(self, v4, v5);
    v10 = objc_msgSend_documentRoot(v7, v8, v9);
    v13 = objc_msgSend_theme(v10, v11, v12);
    if (objc_msgSend_indexOfPreset_(v13, v14, self) == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_p_contentTagIsBody(self, v15, v16) & 1) != 0)
    {
      LOBYTE(v19) = 0;
    }

    else
    {
      v20 = objc_msgSend_styleIdentifier(self, v17, v18);
      if (objc_msgSend_isEqualToString_(v20, v21, @"Normal"))
      {
        LOBYTE(v19) = 0;
      }

      else
      {
        v24 = objc_msgSend_styleIdentifier(self, v22, v23);
        v19 = objc_msgSend_isEqualToString_(v24, v25, @"Normal.0") ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (BOOL)p_contentTagIsBody
{
  if (qword_280A58030 != -1)
  {
    sub_276F4F008();
  }

  v4 = objc_msgSend_contentTag(self, a2, v2);
  hasPrefix = objc_msgSend_hasPrefix_(v4, v5, qword_280A58028);

  return hasPrefix;
}

@end