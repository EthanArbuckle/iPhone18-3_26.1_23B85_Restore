@interface TSWPItemNumbering
+ (id)allPageNumberFormats;
+ (id)defaultPageNumberFormatForLocale:(id)locale;
+ (id)displayNameForPageNumberFormat:(id)format;
+ (id)instance;
+ (id)pageNumberFormatNameForType:(int)type;
+ (id)pageNumberFormatsForDocLocale:(id)locale;
+ (id)stringFromNumber:(unint64_t)number forFormatName:(id)name;
+ (id)stringFromNumber:(unint64_t)number forPageNumberFormatType:(int)type;
+ (int)pageNumberFormatTypeForName:(id)name;
- (TSWPItemNumbering)init;
- (id)p_additiveTypeFormatForNumber:(unint64_t)number limitsAndSymbols:(id)symbols;
- (id)p_defaultPageNumberFormatForLocale:(id)locale;
- (id)p_displayNameForPageNumberFormat:(id)format;
- (id)p_formatInfoForFormatName:(id)name;
- (id)p_numericTypeFormatForNumber:(unint64_t)number digitChars:(id)chars;
- (id)p_pageNumberFormatNameForType:(int)type;
- (id)p_pageNumberFormatsForDocLocale:(id)locale;
- (id)p_stringFromNumber:(unint64_t)number forFormatName:(id)name;
- (id)p_stringFromNumber:(unint64_t)number forPageNumberFormatType:(int)type;
- (id)p_symbolicTypeFormatForNumber:(unint64_t)number symbols:(id)symbols;
- (int)p_pageNumberFormatTypeForName:(id)name;
@end

@implementation TSWPItemNumbering

+ (id)instance
{
  if (qword_280A58558 != -1)
  {
    sub_276F4F88C();
  }

  v3 = qword_280A58550;

  return v3;
}

- (TSWPItemNumbering)init
{
  v19.receiver = self;
  v19.super_class = TSWPItemNumbering;
  v2 = [(TSWPItemNumbering *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    v4 = SFUMainBundle();
    v6 = objc_msgSend_pathForResource_ofType_(v4, v5, @"ItemNumbering", @"plist");
    v8 = objc_msgSend_initWithContentsOfFile_(v3, v7, v6);

    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"defaultPageNumberFormats");
    defaultPageNumberFormats = v2->_defaultPageNumberFormats;
    v2->_defaultPageNumberFormats = v10;

    v13 = objc_msgSend_objectForKeyedSubscript_(v8, v12, @"validFormatNames");
    validFormatNames = v2->_validFormatNames;
    v2->_validFormatNames = v13;

    v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, @"formatTypeInfo");
    formatTypeInfo = v2->_formatTypeInfo;
    v2->_formatTypeInfo = v16;
  }

  return v2;
}

- (id)p_defaultPageNumberFormatForLocale:(id)locale
{
  localeCopy = locale;
  defaultPageNumberFormats = self->_defaultPageNumberFormats;
  v8 = objc_msgSend_localeIdentifier(localeCopy, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(defaultPageNumberFormats, v9, v8);

  if (!v10)
  {
    v13 = self->_defaultPageNumberFormats;
    v14 = MEMORY[0x277D81228];
    v15 = objc_msgSend_localeIdentifier(localeCopy, v11, v12);
    v17 = objc_msgSend_canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly_(v14, v16, v15);
    v10 = objc_msgSend_objectForKeyedSubscript_(v13, v18, v17);

    if (!v10)
    {
      v21 = self->_defaultPageNumberFormats;
      v22 = MEMORY[0x277D81228];
      v23 = objc_msgSend_localeIdentifier(localeCopy, v19, v20);
      v25 = objc_msgSend_canonicalizeLocaleIdentifierWithLanguageAndScriptOnly_(v22, v24, v23);
      v10 = objc_msgSend_objectForKeyedSubscript_(v21, v26, v25);

      if (!v10)
      {
        v29 = self->_defaultPageNumberFormats;
        v30 = MEMORY[0x277D81228];
        v31 = objc_msgSend_localeIdentifier(localeCopy, v27, v28);
        v33 = objc_msgSend_canonicalizeLocaleIdentifierWithLanguageOnly_(v30, v32, v31);
        v35 = objc_msgSend_objectForKeyedSubscript_(v29, v34, v33);

        if (v35)
        {
          v10 = v35;
        }

        else
        {
          v10 = @"decimal";
        }
      }
    }
  }

  return v10;
}

- (id)p_pageNumberFormatsForDocLocale:(id)locale
{
  v78 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, 3);
  v53 = localeCopy;
  v9 = objc_msgSend_localeIdentifier(localeCopy, v7, v8);
  objc_msgSend_addObject_(v6, v10, v9);

  v13 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v11, v12);
  v16 = objc_msgSend_localeIdentifier(v13, v14, v15);
  objc_msgSend_addObject_(v6, v17, v16);

  v18 = TSUAllInputLanguages();
  v59 = v6;
  objc_msgSend_addObjectsFromArray_(v6, v19, v18);

  v20 = MEMORY[0x277CBEB18];
  v23 = objc_msgSend_count(self->_validFormatNames, v21, v22);
  v60 = objc_msgSend_arrayWithCapacity_(v20, v24, v23);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = self->_validFormatNames;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v71, v77, 16);
  if (v26)
  {
    v28 = v26;
    v29 = *v72;
    v54 = *v72;
    selfCopy = self;
    do
    {
      v30 = 0;
      v56 = v28;
      do
      {
        if (*v72 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v71 + 1) + 8 * v30);
        v32 = objc_msgSend_objectForKeyedSubscript_(self->_formatTypeInfo, v27, v31);
        v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, @"locales");
        if (objc_msgSend_count(v34, v35, v36))
        {
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v38 = v34;
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v67, v76, 16);
          if (v61)
          {
            v40 = *v68;
            v62 = v38;
            v58 = *v68;
            do
            {
              for (i = 0; i != v61; ++i)
              {
                if (*v68 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = *(*(&v67 + 1) + 8 * i);
                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                v66 = 0u;
                v43 = v59;
                v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v63, v75, 16);
                if (v45)
                {
                  v47 = v45;
                  v48 = *v64;
                  while (2)
                  {
                    for (j = 0; j != v47; ++j)
                    {
                      if (*v64 != v48)
                      {
                        objc_enumerationMutation(v43);
                      }

                      if (objc_msgSend_hasPrefix_(*(*(&v63 + 1) + 8 * j), v46, v42))
                      {

                        objc_msgSend_addObject_(v60, v51, v31);
                        goto LABEL_24;
                      }
                    }

                    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v63, v75, 16);
                    if (v47)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v38 = v62;
                v40 = v58;
              }

              v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v50, &v67, v76, 16);
            }

            while (v61);

LABEL_24:
            v29 = v54;
            self = selfCopy;
            v28 = v56;
          }

          else
          {
          }
        }

        else
        {
          objc_msgSend_addObject_(v60, v37, v31);
        }

        ++v30;
      }

      while (v30 != v28);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v71, v77, 16);
    }

    while (v28);
  }

  return v60;
}

- (id)p_displayNameForPageNumberFormat:(id)format
{
  v3 = objc_msgSend_p_formatInfoForFormatName_(self, a2, format);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"displayName");
  v8 = v5;
  if (!v5 || !objc_msgSend_length(v5, v6, v7))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPItemNumbering p_displayNameForPageNumberFormat:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPItemNumbering.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 103, 0, "Missing display name in +displayNameForPageNumberFormat:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  return v8;
}

- (id)p_stringFromNumber:(unint64_t)number forFormatName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_p_formatInfoForFormatName_(self, v7, nameCopy);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"lowerBound");
  v14 = objc_msgSend_objectForKeyedSubscript_(v8, v11, @"upperBound");
  if (v10 && objc_msgSend_unsignedLongValue(v10, v12, v13) > number || v14 && objc_msgSend_unsignedLongValue(v14, v12, v13) < number)
  {
    v15 = objc_msgSend_p_stringFromNumber_forFormatName_(self, v12, number, @"decimal");
    goto LABEL_15;
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v12, @"system");
  v19 = v16;
  if (v16 && objc_msgSend_length(v16, v17, v18) && !objc_msgSend_isEqualToString_(v19, v17, @"numeric"))
  {
    if (objc_msgSend_isEqualToString_(v19, v17, @"symbolic"))
    {
      v28 = objc_msgSend_objectForKeyedSubscript_(v8, v27, @"symbols");
      v23 = v28;
      if (!v28 || !objc_msgSend_length(v28, v29, v30))
      {
        v50 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSWPItemNumbering p_stringFromNumber:forFormatName:]");
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPItemNumbering.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v34, v31, v33, 134, 0, "Missing 'symbols' entry for %@", nameCopy);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
        v23 = @"abcdefghijklmnopqrstuvwxyz";
      }

      v25 = objc_msgSend_p_symbolicTypeFormatForNumber_symbols_(self, v29, number, v23);
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v19, v27, @"additive"))
      {
        v41 = objc_msgSend_pageNumberFormatTypeForName_(TSWPItemNumbering, v37, nameCopy);
        v15 = objc_msgSend_stringFromNumber_forPageNumberFormatType_(TSWPItemNumbering, v42, number, v41);
        goto LABEL_14;
      }

      v38 = objc_msgSend_objectForKeyedSubscript_(v8, v37, @"limitsAndSymbols");
      v23 = v38;
      if (v38 && objc_msgSend_count(v38, v39, v40))
      {
        v25 = objc_msgSend_p_additiveTypeFormatForNumber_limitsAndSymbols_(self, v39, number, v23);
      }

      else
      {
        v51 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSWPItemNumbering p_stringFromNumber:forFormatName:]");
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPItemNumbering.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v46, v43, v45, 141, 0, "Missing 'limitsAndSymbols' entry for %@", nameCopy);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
        v25 = objc_msgSend_p_stringFromNumber_forFormatName_(self, v49, number, @"decimal");
      }
    }
  }

  else
  {
    v20 = objc_msgSend_objectForKeyedSubscript_(v8, v17, @"digitChars");
    v23 = v20;
    if (!v20 || !objc_msgSend_length(v20, v21, v22))
    {

      v23 = @"0123456789";
    }

    v25 = objc_msgSend_p_numericTypeFormatForNumber_digitChars_(self, v24, number, v23);
  }

  v15 = v25;

LABEL_14:
LABEL_15:

  return v15;
}

- (id)p_stringFromNumber:(unint64_t)number forPageNumberFormatType:(int)type
{
  v6 = objc_msgSend_p_pageNumberFormatNameForType_(self, a2, *&type);
  v8 = objc_msgSend_p_stringFromNumber_forFormatName_(self, v7, number, v6);

  return v8;
}

- (int)p_pageNumberFormatTypeForName:(id)name
{
  v3 = objc_msgSend_p_formatInfoForFormatName_(self, a2, name);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"oldTypeID");
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_intValue(v5, v6, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)p_pageNumberFormatNameForType:(int)type
{
  if (type >= 6)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPItemNumbering p_pageNumberFormatNameForType:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPItemNumbering.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 169, 0, "[TSWPItemNumbering pageNumberFormatNameForType]: type ID out of range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (type <= 5)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 0;
  }

  validFormatNames = self->_validFormatNames;

  return objc_msgSend_objectAtIndexedSubscript_(validFormatNames, a2, typeCopy);
}

- (id)p_formatInfoForFormatName:(id)name
{
  v4 = objc_msgSend_objectForKeyedSubscript_(self->_formatTypeInfo, a2, name);
  if (!v4)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPItemNumbering p_formatInfoForFormatName:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPItemNumbering.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 180, 0, "Invalid format name passed to p_formatInfoForFormatName:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    v4 = objc_msgSend_objectForKeyedSubscript_(self->_formatTypeInfo, v13, @"decimal");
  }

  return v4;
}

- (id)p_numericTypeFormatForNumber:(unint64_t)number digitChars:(id)chars
{
  charsCopy = chars;
  v8 = objc_msgSend_string(MEMORY[0x277CCAB68], v6, v7);
  v11 = objc_msgSend_length(charsCopy, v9, v10);
  if (number)
  {
    v13 = v11;
    do
    {
      v14 = objc_msgSend_characterAtIndex_(charsCopy, v12, number % v13);
      objc_msgSend_tsu_insertCharacter_atIndex_(v8, v15, v14, 0);
      v16 = v13 > number;
      number /= v13;
    }

    while (!v16);
  }

  else
  {
    v17 = objc_msgSend_characterAtIndex_(charsCopy, v12, 0);
    objc_msgSend_tsu_appendCharacter_(v8, v18, v17);
  }

  return v8;
}

- (id)p_symbolicTypeFormatForNumber:(unint64_t)number symbols:(id)symbols
{
  symbolsCopy = symbols;
  v8 = objc_msgSend_length(symbolsCopy, v6, v7);
  v9 = (number - 1) / v8;
  v10 = (number - 1) % v8;
  v11 = MEMORY[0x277CCACA8];
  v13 = objc_msgSend_characterAtIndex_(symbolsCopy, v12, v10);

  v15 = objc_msgSend_stringWithFormat_(v11, v14, @"%C", v13);
  v17 = objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(v15, v16, v9 + 1, v15, 0);

  return v17;
}

- (id)p_additiveTypeFormatForNumber:(unint64_t)number limitsAndSymbols:(id)symbols
{
  symbolsCopy = symbols;
  v9 = objc_msgSend_string(MEMORY[0x277CCAB68], v7, v8);
  numberCopy2 = number;
  if (objc_msgSend_count(symbolsCopy, v10, v11))
  {
    v14 = 0;
    numberCopy2 = number;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(symbolsCopy, v12, v14);
      for (i = objc_msgSend_unsignedIntegerValue(v15, v16, v17); numberCopy2 >= i; i = objc_msgSend_unsignedIntegerValue(v15, v24, v25))
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(symbolsCopy, v19, v14 | 1);
        objc_msgSend_appendString_(v9, v21, v20);

        numberCopy2 -= objc_msgSend_unsignedIntegerValue(v15, v22, v23);
      }

      v14 += 2;
    }

    while (v14 < objc_msgSend_count(symbolsCopy, v26, v27));
  }

  if (numberCopy2)
  {
    v28 = objc_msgSend_p_stringFromNumber_forFormatName_(self, v12, number, @"decimal");
  }

  else
  {
    v28 = v9;
  }

  v29 = v28;

  return v29;
}

+ (id)defaultPageNumberFormatForLocale:(id)locale
{
  localeCopy = locale;
  v6 = objc_msgSend_instance(TSWPItemNumbering, v4, v5);
  v8 = objc_msgSend_p_defaultPageNumberFormatForLocale_(v6, v7, localeCopy);

  return v8;
}

+ (id)allPageNumberFormats
{
  v3 = objc_msgSend_instance(TSWPItemNumbering, a2, v2);
  v6 = objc_msgSend_p_allPageNumberFormats(v3, v4, v5);

  return v6;
}

+ (id)pageNumberFormatsForDocLocale:(id)locale
{
  localeCopy = locale;
  v6 = objc_msgSend_instance(TSWPItemNumbering, v4, v5);
  v8 = objc_msgSend_p_pageNumberFormatsForDocLocale_(v6, v7, localeCopy);

  return v8;
}

+ (id)displayNameForPageNumberFormat:(id)format
{
  formatCopy = format;
  v6 = objc_msgSend_instance(TSWPItemNumbering, v4, v5);
  v8 = objc_msgSend_p_displayNameForPageNumberFormat_(v6, v7, formatCopy);

  return v8;
}

+ (id)stringFromNumber:(unint64_t)number forFormatName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_instance(TSWPItemNumbering, v6, v7);
  v10 = objc_msgSend_p_stringFromNumber_forFormatName_(v8, v9, number, nameCopy);

  return v10;
}

+ (id)stringFromNumber:(unint64_t)number forPageNumberFormatType:(int)type
{
  v4 = *&type;
  v6 = objc_msgSend_instance(TSWPItemNumbering, a2, number);
  v8 = objc_msgSend_p_stringFromNumber_forPageNumberFormatType_(v6, v7, number, v4);

  return v8;
}

+ (int)pageNumberFormatTypeForName:(id)name
{
  nameCopy = name;
  v6 = objc_msgSend_instance(TSWPItemNumbering, v4, v5);
  v8 = objc_msgSend_p_pageNumberFormatTypeForName_(v6, v7, nameCopy);

  return v8;
}

+ (id)pageNumberFormatNameForType:(int)type
{
  v3 = *&type;
  v4 = objc_msgSend_instance(TSWPItemNumbering, a2, *&type);
  v6 = objc_msgSend_p_pageNumberFormatNameForType_(v4, v5, v3);

  return v6;
}

@end