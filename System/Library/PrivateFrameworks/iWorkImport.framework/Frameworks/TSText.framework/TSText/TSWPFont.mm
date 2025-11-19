@interface TSWPFont
+ (BOOL)isSystemFontName:(id)a3;
+ (id)baseFontForFamilyName:(id)a3;
+ (id)baseFontWithDescriptor:(id)a3;
+ (id)facesOfFontFamily:(id)a3;
+ (id)fontWithDesiredPostScriptName:(id)a3;
+ (id)fontWithDesiredPostScriptName:(id)a3 atSize:(double)a4;
+ (id)fontWithDesiredPostScriptName:(id)a3 fallbackFont:(id)a4 ofType:(unint64_t)a5;
+ (id)fontWithOpaqueIdentifier:(id)a3;
+ (id)loadPlatformFontForPostScriptName:(id)a3 size:(double)a4;
+ (id)loadPlatformFontOrFallbackForPostScriptName:(id)a3 size:(double)a4 foundType:(unint64_t *)a5;
+ (id)localizedMasqueradingFontFamilyNames;
+ (id)masqueradingFontNames;
+ (id)missingFont;
+ (id)p_localizedFamilyNameForPlatformFont:(id)a3;
+ (id)postScriptNameForFamilyName:(id)a3;
+ (id)proxyFontNameForUIFontType:(unsigned int)a3;
+ (unsigned)uiFontTypeForFontName:(id)a3;
+ (void)initialize;
- (BOOL)isBaseFontEqualToBaseFontFor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMasqueradingFontName;
- (NSArray)familyFaces;
- (NSString)displayName;
- (TSWPFont)baseFont;
- (TSWPFont)initWithDesiredPostScriptName:(id)a3 platformFontDescriptor:(id)a4 andPlatformFont:(id)a5 ofType:(unint64_t)a6 localizedFamilyName:(id)a7;
- (TSWPFont)initWithDesiredPostScriptName:(id)a3 size:(double)a4;
- (TSWPFontHeightInfo)heightInfo;
- (__CTFont)ctFont;
- (__CTFont)ctFontForSize:(double)a3;
- (__CTFont)ctFontForSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5;
- (__CTFont)ctFontForSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5 traits:(id)a6;
- (double)size;
- (id)copyWithSize:(double)a3;
- (id)copyWithSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5;
- (id)copyWithSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5 traits:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)pStringFromFontType;
- (unint64_t)hash;
@end

@implementation TSWPFont

+ (id)missingFont
{
  v3 = objc_msgSend_missingFontPostScriptName(a1, a2, v2);
  v5 = objc_msgSend_fontWithDesiredPostScriptName_(TSWPFont, v4, v3);

  return v5;
}

+ (id)masqueradingFontNames
{
  if (qword_280A582A0 != -1)
  {
    sub_276F4F4CC();
  }

  v3 = qword_280A58298;

  return v3;
}

+ (id)localizedMasqueradingFontFamilyNames
{
  if (qword_280A582B0 != -1)
  {
    sub_276F4F4E0();
  }

  v3 = qword_280A582A8;

  return v3;
}

+ (id)fontWithDesiredPostScriptName:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithDesiredPostScriptName_size_(v5, v6, v4, 0.0);

  return v7;
}

+ (id)fontWithOpaqueIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_familyName(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_familyName(v4, v8, v9);

    objc_msgSend_baseFontForFamilyName_(a1, v11, v10);
  }

  else
  {
    v10 = objc_msgSend_desiredPostScriptName(v4, v8, v9);

    objc_msgSend_fontWithDesiredPostScriptName_(a1, v12, v10);
  }
  v13 = ;

  return v13;
}

+ (id)fontWithDesiredPostScriptName:(id)a3 fallbackFont:(id)a4 ofType:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 alloc];
  v13 = objc_msgSend_platformFont(v8, v11, v12);

  v15 = objc_msgSend_initWithDesiredPostScriptName_platformFontDescriptor_andPlatformFont_ofType_(v10, v14, v9, 0, v13, a5);

  return v15;
}

+ (id)fontWithDesiredPostScriptName:(id)a3 atSize:(double)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v9 = objc_msgSend_initWithDesiredPostScriptName_size_(v7, v8, v6, a4);

  return v9;
}

+ (id)baseFontWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = CTFontCreateWithFontDescriptor(v4, 0.0, 0);
  v6 = [a1 alloc];
  v9 = objc_msgSend_postscriptName(v4, v7, v8);
  v11 = objc_msgSend_initWithDesiredPostScriptName_platformFontDescriptor_andPlatformFont_ofType_(v6, v10, v9, v4, v5, 1);

  return v11;
}

+ (id)baseFontForFamilyName:(id)a3
{
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_helveticaFont(a1, v5, v6);
  v10 = objc_msgSend_familyName(v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(v4, v11, v10);

  if (isEqual)
  {
    v15 = objc_msgSend_helveticaFont(a1, v13, v14);
  }

  else
  {
    if (v4)
    {
      v44 = *MEMORY[0x277CC48B8];
      v45[0] = v4;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v45, &v44, 1);
      v17 = CTFontDescriptorCreateWithAttributes(v16);
      if (v17)
      {
        v19 = v17;
        v20 = CTFontCreateWithFontDescriptor(v17, 0.0, 0);
        v23 = objc_msgSend_fontName(v20, v21, v22);
        v26 = objc_msgSend_missingFontPostScriptName(TSWPFont, v24, v25);
        v28 = objc_msgSend_isEqual_(v23, v27, v26);

        v29 = [TSWPFont alloc];
        v32 = v29;
        if (v28)
        {
          v33 = objc_msgSend_initWithDesiredPostScriptName_(v29, v30, v4);
        }

        else
        {
          v41 = objc_msgSend_fontName(v20, v30, v31);
          v33 = objc_msgSend_initWithDesiredPostScriptName_platformFontDescriptor_andPlatformFont_ofType_(v32, v42, v41, v19, v20, 1);
        }

        CFRelease(v19);

        if (v33)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "+[TSWPFont baseFontForFamilyName:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFont.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 138, 0, "invalid nil value for '%{public}s'", "desc");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
      }
    }

    v15 = objc_msgSend_missingFont(a1, v13, v14);
  }

  v33 = v15;
LABEL_12:

  return v33;
}

+ (id)loadPlatformFontOrFallbackForPostScriptName:(id)a3 size:(double)a4 foundType:(unint64_t *)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  *a5 = 1;
  p_superclass = &OBJC_METACLASS___TSWPFlowInfo.superclass;
  v12 = objc_msgSend_sharedInstance(TSWPFontVerifier, v10, v11);
  if (objc_msgSend_isFontWithPostscriptNameInstalled_(v12, v13, v8))
  {
    v18 = objc_msgSend_loadPlatformFontForPostScriptName_size_(a1, v14, v8, a4);
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v43 = objc_msgSend_sharedInstance(TSWPFallbackFontList, v14, v15);
  objc_msgSend_fallbackListForPostscriptFontName_(v43, v19, v8);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = v47 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v44, v48, 16);
  if (!v22)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v24 = v22;
  v25 = *v45;
  v42 = a5;
  while (2)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v45 != v25)
      {
        objc_enumerationMutation(v20);
      }

      v27 = *(*(&v44 + 1) + 8 * i);
      if (objc_msgSend_isFontWithPostscriptNameInstalled_(v12, v23, v27, v42))
      {
        v18 = objc_msgSend_loadPlatformFontForPostScriptName_size_(a1, v28, v27, a4);
        v35 = objc_msgSend_masqueradingFontNames(a1, v33, v34);
        v37 = objc_msgSend_containsObject_(v35, v36, v27);

        v38 = 2;
        if (v37)
        {
          v38 = 3;
        }

        goto LABEL_19;
      }

      v30 = objc_msgSend_masqueradingFontNames(a1, v28, v29);
      v32 = objc_msgSend_containsObject_(v30, v31, v27);

      if (v32)
      {
        v18 = objc_msgSend_loadPlatformFontForPostScriptName_size_(a1, v23, v27, a4);
        v38 = 3;
LABEL_19:
        a5 = v42;
        *v42 = v38;
        p_superclass = &OBJC_METACLASS___TSWPFlowInfo.superclass;
        goto LABEL_20;
      }
    }

    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v44, v48, 16);
    v18 = 0;
    a5 = v42;
    p_superclass = (&OBJC_METACLASS___TSWPFlowInfo + 8);
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_20:

  if (!v18)
  {
LABEL_21:
    v39 = objc_msgSend_missingFontName(p_superclass + 154, v16, v17);
    v18 = objc_msgSend_loadPlatformFontForPostScriptName_size_(a1, v40, v39, a4);

    *a5 = 2;
  }

LABEL_22:

  return v18;
}

+ (BOOL)isSystemFontName:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_length(v4, v5, v6) && objc_msgSend_characterAtIndex_(v4, v7, 0) == 46 && objc_msgSend_uiFontTypeForFontName_(a1, v8, v4) == -1;

  return v9;
}

+ (id)loadPlatformFontForPostScriptName:(id)a3 size:(double)a4
{
  v6 = a3;
  v8 = objc_msgSend_uiFontTypeForFontName_(a1, v7, v6);
  if (v8 == kCTFontUIFontNone)
  {
    v10 = objc_opt_class();
    if (objc_msgSend_isSystemFontName_(v10, v11, v6))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276DAA29C;
      block[3] = &unk_27A6F44B0;
      v15 = v6;
      if (qword_280A582B8 != -1)
      {
        dispatch_once(&qword_280A582B8, block);
      }
    }

    UIFontForLanguage = CTFontCreateWithName(v6, a4, 0);
  }

  else
  {
    UIFontForLanguage = CTFontCreateUIFontForLanguage(v8, a4, 0);
  }

  v12 = UIFontForLanguage;

  return v12;
}

+ (id)p_localizedFamilyNameForPlatformFont:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_fontName(v4, v5, v6);
  LOBYTE(a1) = objc_msgSend_isSystemFontName_(a1, v8, v7);

  if ((a1 & 1) != 0 || (v11 = CTFontCopyLocalizedName(v4, *MEMORY[0x277CC48C0], 0)) == 0)
  {
    v11 = objc_msgSend_familyName(v4, v9, v10);
  }

  return v11;
}

- (TSWPFont)initWithDesiredPostScriptName:(id)a3 size:(double)a4
{
  v13 = 0;
  v6 = a3;
  v7 = objc_opt_class();
  v9 = objc_msgSend_loadPlatformFontOrFallbackForPostScriptName_size_foundType_(v7, v8, v6, &v13, a4);
  v11 = objc_msgSend_initWithDesiredPostScriptName_platformFontDescriptor_andPlatformFont_ofType_(self, v10, v6, 0, v9, v13);

  return v11;
}

- (TSWPFont)initWithDesiredPostScriptName:(id)a3 platformFontDescriptor:(id)a4 andPlatformFont:(id)a5 ofType:(unint64_t)a6 localizedFamilyName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v17 = a7;
  if (!v13)
  {
    v18 = a6;
    v19 = v14;
    v20 = MEMORY[0x277D81150];
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPFont initWithDesiredPostScriptName:platformFontDescriptor:andPlatformFont:ofType:localizedFamilyName:]");
    v79 = v15;
    v22 = v21 = v17;
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFont.m");
    v25 = v20;
    v14 = v19;
    a6 = v18;
    v13 = 0;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v26, v22, v24, 255, 0, "invalid nil value for '%{public}s'", "desiredPostScriptName");

    v17 = v21;
    v15 = v79;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  v80.receiver = self;
  v80.super_class = TSWPFont;
  v29 = [(TSWPFont *)&v80 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_desiredPostScriptName, a3);
    v30->_type = a6;
    objc_storeStrong(&v30->_platformFont, a5);
    if (v14)
    {
      v31 = v14;
    }

    else
    {
      v31 = CTFontCopyFontDescriptor(v30->_platformFont);
    }

    platformFontDescriptor = v30->_platformFontDescriptor;
    v30->_platformFontDescriptor = v31;

    v35 = objc_msgSend_familyName(v15, v33, v34);

    if (v35)
    {
      v38 = objc_msgSend_familyName(v15, v36, v37);
    }

    else
    {
      v38 = &stru_28860A0F0;
    }

    familyName = v30->_familyName;
    v30->_familyName = v38;

    v40 = CTFontDescriptorCopyAttribute(v30->_platformFontDescriptor, *MEMORY[0x277CC4908]);
    postScriptName = v30->_postScriptName;
    v30->_postScriptName = v40;

    if (!v30->_postScriptName)
    {
      v44 = objc_msgSend_fontName(v15, v42, v43);
      v45 = v30->_postScriptName;
      v30->_postScriptName = v44;
    }

    v46 = objc_msgSend_sharedInstance(TSWPFallbackFontList, v42, v43);
    v47 = CTFontDescriptorCopyAttribute(v30->_platformFontDescriptor, *MEMORY[0x277CC48B8]);
    v48 = v30->_familyName;
    v30->_familyName = v47;

    if (v17)
    {
      v51 = objc_msgSend_copy(v17, v49, v50);
    }

    else
    {
      if (a6 == 3)
      {
        v52 = objc_msgSend_localizedNameForMasqueradingFontName_(v46, v49, v13);
        localizedFamilyName = v30->_localizedFamilyName;
        v30->_localizedFamilyName = v52;

        if (!v30->_localizedFamilyName)
        {
          objc_storeStrong(&v30->_localizedFamilyName, a3);
          v56 = MEMORY[0x277D81150];
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSWPFont initWithDesiredPostScriptName:platformFontDescriptor:andPlatformFont:ofType:localizedFamilyName:]");
          v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFont.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v58, v60, 285, 0, "Masquerading font with no localized name found: %@", v30);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
        }

        goto LABEL_19;
      }

      v64 = objc_opt_class();
      v51 = objc_msgSend_p_localizedFamilyNameForPlatformFont_(v64, v65, v15);
    }

    v66 = v30->_localizedFamilyName;
    v30->_localizedFamilyName = v51;

LABEL_19:
    if (!v30->_localizedFamilyName)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSWPFont initWithDesiredPostScriptName:platformFontDescriptor:andPlatformFont:ofType:localizedFamilyName:]");
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFont.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 290, 0, "Unable to acquire a localized family name for: %@", v30);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
    }

    v74 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v54, v55);
    alternatePlatformFonts = v30->_alternatePlatformFonts;
    v30->_alternatePlatformFonts = v74;

    v76 = objc_opt_class();
    if (objc_msgSend_uiFontTypeForFontName_(v76, v77, v13) != -1)
    {
      v30->_isSystemProxyFont = 1;
    }
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSWPFont alloc];
  v7 = objc_msgSend_desiredPostScriptName(self, v5, v6);
  v10 = objc_msgSend_platformFont(self, v8, v9);
  v13 = objc_msgSend_type(self, v11, v12);
  v16 = objc_msgSend_localizedFamilyName(self, v14, v15);
  v18 = objc_msgSend_initWithDesiredPostScriptName_platformFontDescriptor_andPlatformFont_ofType_localizedFamilyName_(v4, v17, v7, 0, v10, v13, v16);

  return v18;
}

- (BOOL)isMasqueradingFontName
{
  v4 = objc_msgSend_masqueradingFontNames(TSWPFont, a2, v2);
  v7 = objc_msgSend_postScriptName(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v4, v8, v7);

  return v9;
}

- (BOOL)isBaseFontEqualToBaseFontFor:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_baseFont(self, v5, v6);
  v10 = objc_msgSend_baseFont(v4, v8, v9);

  LOBYTE(v4) = objc_msgSend_isEqual_(v7, v11, v10);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 == self)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  v8 = objc_msgSend_platformFont(self, v6, v7);
  v11 = objc_msgSend_platformFont(v5, v9, v10);
  if ((objc_msgSend_isEqual_(v8, v12, v11) & 1) == 0)
  {

    goto LABEL_7;
  }

  v15 = objc_msgSend_desiredPostScriptName(self, v13, v14);
  v18 = objc_msgSend_desiredPostScriptName(v5, v16, v17);
  isEqual = objc_msgSend_isEqual_(v15, v19, v18);

  if ((isEqual & 1) == 0)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v21 = 1;
LABEL_8:

  return v21;
}

- (unint64_t)hash
{
  if (!objc_msgSend_hashValue(self, a2, v2))
  {
    v6 = objc_alloc_init(MEMORY[0x277D811E8]);
    objc_msgSend_addObject_(v6, v7, self->_postScriptName);
    objc_msgSend_addObject_(v6, v8, self->_desiredPostScriptName);
    objc_msgSend_pointSize(self->_platformFont, v9, v10);
    objc_msgSend_addInt_(v6, v12, (v11 * 1000.0));
    v15 = objc_msgSend_hashValue(v6, v13, v14);
    objc_msgSend_setHashValue_(self, v16, v15);
  }

  return objc_msgSend_hashValue(self, v4, v5);
}

- (__CTFont)ctFont
{
  v3 = objc_msgSend_platformFont(self, a2, v2);
  v4 = CFRetain(v3);
  v5 = CFAutorelease(v4);

  return v5;
}

- (__CTFont)ctFontForSize:(double)a3
{
  objc_msgSend_size(self, a2, v3);
  if (v8 == a3)
  {

    return objc_msgSend_ctFont(self, v6, v7);
  }

  else
  {
    v10 = objc_msgSend_postScriptName(self, v6, v7);
    v12 = objc_msgSend_cacheKeyWithFontName_size_(TSWPFontCacheKey, v11, v10, a3);

    v15 = objc_msgSend_alternatePlatformFonts(self, v13, v14);
    objc_sync_enter(v15);
    v18 = objc_msgSend_alternatePlatformFonts(self, v16, v17);
    v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v12);

    if (v20)
    {
      v23 = objc_msgSend_alternatePlatformFonts(self, v21, v22);
      v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v12);
      v26 = CFRetain(v25);
      v27 = CFAutorelease(v26);

      objc_sync_exit(v15);
    }

    else
    {
      objc_sync_exit(v15);

      v30 = objc_msgSend_ctFont(self, v28, v29);
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v30, a3, 0, 0);
      v34 = objc_msgSend_alternatePlatformFonts(self, v32, v33);
      objc_sync_enter(v34);
      v37 = objc_msgSend_alternatePlatformFonts(self, v35, v36);
      objc_msgSend_setObject_forKeyedSubscript_(v37, v38, CopyWithAttributes, v12);

      objc_sync_exit(v34);
      v27 = CFAutorelease(CopyWithAttributes);
    }

    return v27;
  }
}

- (__CTFont)ctFontForSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5 traits:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v13 = objc_msgSend_postScriptName(self, v11, v12);
  v15 = objc_msgSend_cacheKeyWithFontName_fontSize_bold_italic_fontFeatures_(TSWPFontCacheKey, v14, v13, v7, v6, v10, a3);

  v18 = objc_msgSend_alternatePlatformFonts(self, v16, v17);
  objc_sync_enter(v18);
  v21 = objc_msgSend_alternatePlatformFonts(self, v19, v20);
  v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v15);

  if (v23)
  {
    v26 = objc_msgSend_alternatePlatformFonts(self, v24, v25);
    v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, v15);
    v29 = CFRetain(v28);
    v30 = CFAutorelease(v29);
  }

  else
  {
    objc_sync_exit(v18);

    v30 = objc_msgSend_ctFontForSize_bold_italic_(self, v31, v7, v6, a3);
    if (objc_msgSend_count(v10, v32, v33))
    {
      v36 = CTFontCopyFontDescriptor(v30);
      if (v36)
      {
        v37 = v36;
        v38 = objc_alloc(MEMORY[0x277CBEAC0]);
        v40 = objc_msgSend_initWithObjectsAndKeys_(v38, v39, v10, *MEMORY[0x277CC48D0], 0);
        CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v37, v40);
        CFRelease(v37);
        if (CopyWithAttributes)
        {
          v42 = CTFontCreateWithFontDescriptor(CopyWithAttributes, a3, 0);
          CFRelease(CopyWithAttributes);
          if (v42)
          {
            v30 = CFAutorelease(v42);
          }
        }
      }
    }

    v18 = objc_msgSend_alternatePlatformFonts(self, v34, v35);
    objc_sync_enter(v18);
    v26 = objc_msgSend_alternatePlatformFonts(self, v43, v44);
    objc_msgSend_setObject_forKeyedSubscript_(v26, v45, v30, v15);
  }

  objc_sync_exit(v18);
  return v30;
}

- (__CTFont)ctFontForSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = objc_msgSend_postScriptName(self, a2, a4);
  v11 = objc_msgSend_cacheKeyWithFontName_fontSize_bold_italic_fontFeatures_(TSWPFontCacheKey, v10, v9, v6, v5, 0, a3);

  v14 = objc_msgSend_alternatePlatformFonts(self, v12, v13);
  objc_sync_enter(v14);
  v17 = objc_msgSend_alternatePlatformFonts(self, v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v11);

  if (!v19)
  {
    objc_sync_exit(v14);

    v29 = objc_msgSend_ctFontForSize_(self, v27, v28, a3);
    v30 = CFRetain(v29);
    SymbolicTraits = CTFontGetSymbolicTraits(v30);
    v34 = SymbolicTraits;
    if (((SymbolicTraits & 2) == 0) == v6)
    {
      v35 = v6 ? 2 : 0;
      CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v30, a3, 0, SymbolicTraits & 0xFFFFFFFD | v35, 2u);
      if (CopyWithSymbolicTraits)
      {
        v37 = CopyWithSymbolicTraits;
        if (v30 != CopyWithSymbolicTraits)
        {
          CFRelease(v30);
LABEL_12:
          if ((v34 & 1) != v5)
          {
            v38 = CTFontCreateCopyWithSymbolicTraits(v37, a3, 0, v34 & 0xFFFFFFFE | v5, 1u);
            if (v38)
            {
              v39 = v38;
              if (v37 != v38)
              {
                CFRelease(v37);
LABEL_18:
                v40 = objc_msgSend_alternatePlatformFonts(self, v32, v33);
                objc_sync_enter(v40);
                v43 = objc_msgSend_alternatePlatformFonts(self, v41, v42);
                objc_msgSend_setObject_forKeyedSubscript_(v43, v44, v39, v11);

                objc_sync_exit(v40);
                v26 = CFAutorelease(v39);
                goto LABEL_19;
              }

              CFRelease(v38);
            }
          }

          v39 = v37;
          goto LABEL_18;
        }

        CFRelease(CopyWithSymbolicTraits);
      }
    }

    v37 = v30;
    goto LABEL_12;
  }

  v22 = objc_msgSend_alternatePlatformFonts(self, v20, v21);
  v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, v11);
  v25 = CFRetain(v24);
  v26 = CFAutorelease(v25);

  objc_sync_exit(v14);
LABEL_19:

  return v26;
}

- (id)copyWithSize:(double)a3
{
  v5 = objc_msgSend_ctFontForSize_(self, a2, v3, a3);
  v8 = objc_msgSend_fontName(v5, v6, v7);
  if ((objc_msgSend_isRequestedFont(self, v9, v10) & 1) == 0)
  {
    v13 = objc_msgSend_desiredPostScriptName(self, v11, v12);

    v8 = v13;
  }

  v14 = [TSWPFont alloc];
  v17 = objc_msgSend_type(self, v15, v16);
  v20 = objc_msgSend_localizedFamilyName(self, v18, v19);
  v22 = objc_msgSend_initWithDesiredPostScriptName_platformFontDescriptor_andPlatformFont_ofType_localizedFamilyName_(v14, v21, v8, 0, v5, v17, v20);

  return v22;
}

- (id)copyWithSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5
{
  v6 = objc_msgSend_ctFontForSize_bold_italic_(self, a2, a4, a5, a3);
  v9 = objc_msgSend_fontName(v6, v7, v8);
  if ((objc_msgSend_isRequestedFont(self, v10, v11) & 1) == 0)
  {
    v14 = objc_msgSend_desiredPostScriptName(self, v12, v13);

    v9 = v14;
  }

  v15 = [TSWPFont alloc];
  v18 = objc_msgSend_type(self, v16, v17);
  v21 = objc_msgSend_localizedFamilyName(self, v19, v20);
  v23 = objc_msgSend_initWithDesiredPostScriptName_platformFontDescriptor_andPlatformFont_ofType_localizedFamilyName_(v15, v22, v9, 0, v6, v18, v21);

  return v23;
}

- (id)copyWithSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5 traits:(id)a6
{
  v7 = objc_msgSend_ctFontForSize_bold_italic_traits_(self, a2, a4, a5, a6, a3);
  v10 = objc_msgSend_fontName(v7, v8, v9);
  if ((objc_msgSend_isRequestedFont(self, v11, v12) & 1) == 0)
  {
    v15 = objc_msgSend_desiredPostScriptName(self, v13, v14);

    v10 = v15;
  }

  v16 = [TSWPFont alloc];
  v19 = objc_msgSend_type(self, v17, v18);
  v22 = objc_msgSend_localizedFamilyName(self, v20, v21);
  v24 = objc_msgSend_initWithDesiredPostScriptName_platformFontDescriptor_andPlatformFont_ofType_localizedFamilyName_(v16, v23, v10, 0, v7, v19, v22);

  return v24;
}

- (NSString)displayName
{
  v4 = objc_msgSend_localizedFamilyName(self, a2, v2);
  if ((objc_msgSend_isFallbackFont(self, v5, v6) & 1) != 0 || !v4)
  {
    v9 = objc_msgSend_desiredPostScriptName(self, v7, v8);

    v4 = v9;
  }

  return v4;
}

- (id)pStringFromFontType
{
  v3 = objc_msgSend_type(self, a2, v2);
  if (v3 > 3)
  {
    return @"Type invalid";
  }

  else
  {
    return off_27A6F44D0[v3];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_displayName(self, v6, v7);
  v11 = objc_msgSend_desiredPostScriptName(self, v9, v10);
  v14 = objc_msgSend_postScriptName(self, v12, v13);
  v17 = objc_msgSend_pStringFromFontType(self, v15, v16);
  objc_msgSend_size(self, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v3, v20, @"%@: <%p> Display: %@ (Wanted: %@ as: %@ - Status: %@) @ %.2fpts", v5, self, v8, v11, v14, v17, v21);

  return v22;
}

- (NSArray)familyFaces
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_familyName(self, v4, v5);
  v8 = objc_msgSend_facesOfFontFamily_(v3, v7, v6);

  return v8;
}

- (double)size
{
  v3 = objc_msgSend_platformFont(self, a2, v2);
  objc_msgSend_pointSize(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (TSWPFontHeightInfo)heightInfo
{
  *&retstr->verticalHeight = 0u;
  *&retstr->underlinePosition = 0u;
  *&retstr->descent = 0u;
  *&retstr->leadingBelow = 0u;
  *&retstr->spaceBefore = 0u;
  *&retstr->ascent = 0u;
  v5 = objc_msgSend_ctFont(self, a3, v3);

  sub_276D38FF4(v5, v6, v7, retstr);
  return result;
}

- (TSWPFont)baseFont
{
  if (objc_msgSend_isRequestedFont(self, a2, v2))
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_familyName(self, v7, v8);
    v11 = objc_msgSend_postScriptNameForFamilyName_(v6, v10, v9);
    v13 = objc_msgSend_fontWithDesiredPostScriptName_(TSWPFont, v12, v11);
  }

  else
  {
    v9 = objc_msgSend_desiredPostScriptName(self, v4, v5);
    v13 = objc_msgSend_fontWithDesiredPostScriptName_(TSWPFont, v14, v9);
  }

  return v13;
}

+ (id)facesOfFontFamily:(id)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v5 = v3;
  if (v3)
  {
    v51 = *MEMORY[0x277CC48B8];
    v52[0] = v3;
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v52, &v51, 1);
    v7 = CTFontDescriptorCreateWithAttributes(v6);
    v44 = objc_opt_new();
    if (v7)
    {
      MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v7, 0);
      if (MatchingFontDescriptors)
      {
        v41 = v7;
        v42 = v6;
        v43 = v5;
        v9 = objc_alloc(MEMORY[0x277CBEB58]);
        v12 = objc_msgSend_count(MatchingFontDescriptors, v10, v11);
        v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v40 = MatchingFontDescriptors;
        obj = MatchingFontDescriptors;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v46, v50, 16);
        if (v16)
        {
          v17 = v16;
          v18 = *v47;
          v19 = *MEMORY[0x277CC4940];
          v20 = *MEMORY[0x277CC4908];
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v47 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v46 + 1) + 8 * i);
              v23 = CTFontDescriptorCopyAttributes(v22);
              if ((objc_msgSend_containsObject_(v14, v24, v23) & 1) == 0)
              {
                v25 = CTFontDescriptorCopyLocalizedAttribute(v22, v19, 0);
                v26 = CTFontDescriptorCopyAttribute(v22, v20);
                v28 = objc_msgSend_fontFaceWithPostScriptName_faceName_(TSWPFontFace, v27, v26, v25);
                objc_msgSend_addObject_(v44, v29, v28);

                objc_msgSend_addObject_(v14, v30, v23);
              }
            }

            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v46, v50, 16);
          }

          while (v17);
        }

        v6 = v42;
        v5 = v43;
        MatchingFontDescriptors = v40;
        v7 = v41;
      }

      CFRelease(v7);
    }
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "+[TSWPFont facesOfFontFamily:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFont.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 560, 0, "invalid nil value for '%{public}s'", "fontFamily");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    v44 = MEMORY[0x277CBEBF8];
  }

  return v44;
}

+ (void)initialize
{
  if (qword_280A582C0 != -1)
  {
    sub_276F4F4F4();
  }
}

+ (id)proxyFontNameForUIFontType:(unsigned int)a3
{
  if (a3 > 0x1A)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_msgSend_objectAtIndexedSubscript_(qword_280A582C8, a2, a3);
  }

  return v4;
}

+ (unsigned)uiFontTypeForFontName:(id)a3
{
  v3 = objc_msgSend_objectForKeyedSubscript_(qword_280A582D0, a2, a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_unsignedIntValue(v3, v4, v5);
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)postScriptNameForFamilyName:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v5 = v3;
  if (v3)
  {
    v19 = *MEMORY[0x277CC48B8];
    v20[0] = v3;
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v20, &v19, 1);
    v7 = CTFontDescriptorCreateWithAttributes(v6);
    if (v7)
    {
      v9 = v7;
      v10 = CTFontDescriptorCopyAttribute(v7, *MEMORY[0x277CC4908]);
      CFRelease(v9);
    }

    else
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSWPFont postScriptNameForFamilyName:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFont.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 688, 0, "invalid nil value for '%{public}s'", "desc");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end