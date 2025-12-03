@interface TSWPPhonetics
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)orderedTranscriberIDsForLanguage:(int)language;
+ (id)sharedDictionary;
- (TSWPPhonetics)init;
- (id)pronunciationSuggestionsForBaseText:(id)text locale:(id)locale language:(int)language;
- (id)transcriberForBaseText:(id)text range:(_NSRange)range documentLocale:(id)locale outLanguageLocale:(id *)languageLocale outTextLanguageCode:(int *)code;
@end

@implementation TSWPPhonetics

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSWPPhonetics;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276E04BA0;
  block[3] = &unk_27A6F3D70;
  block[4] = self;
  if (qword_280A58480 != -1)
  {
    dispatch_once(&qword_280A58480, block);
  }

  v2 = qword_280A58478;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPPhonetics allocWithZone:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPhonetics.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 32, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (TSWPPhonetics)init
{
  v43.receiver = self;
  v43.super_class = TSWPPhonetics;
  v2 = [(TSWPPhonetics *)&v43 init];
  if (v2)
  {
    v38 = objc_alloc(MEMORY[0x277CBEAC0]);
    v42 = sub_276E32640(v38, v3, v4);
    v41 = objc_msgSend_localizedStringForKey_value_table_(v42, v5, @"Katakana", &stru_28860A0F0, @"TSText");
    v36 = objc_msgSend_transcriberWithIdentifier_displayName_romanizationLocaleID_transformIdentifier_(TSWPTranscriber, v6, @"Katakana", v41, @"ja_JP", *MEMORY[0x277CBF0E8]);
    v40 = sub_276E32640(v36, v7, v8);
    v39 = objc_msgSend_localizedStringForKey_value_table_(v40, v9, @"Hiragana", &stru_28860A0F0, @"TSText");
    v34 = objc_msgSend_transcriberWithIdentifier_displayName_romanizationLocaleID_transformIdentifier_(TSWPTranscriber, v10, @"Hiragana", v39, @"ja_JP", *MEMORY[0x277CBF0E0]);
    v37 = sub_276E32640(v34, v11, v12);
    v35 = objc_msgSend_localizedStringForKey_value_table_(v37, v13, @"Romaji", &stru_28860A0F0, @"TSText");
    v15 = objc_msgSend_transcriberWithIdentifier_displayName_romanizationLocaleID_transformIdentifier_(TSWPTranscriber, v14, @"Romaji", v35, @"ja_JP", @"Null");
    v18 = sub_276E32640(v15, v16, v17);
    v20 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, @"Zhuyin", &stru_28860A0F0, @"TSText");
    v22 = objc_msgSend_transcriberWithIdentifier_displayName_romanizationLocaleID_transformIdentifier_(TSWPTranscriber, v21, @"Zhuyin", v20, @"zh_TW", @"Latin-Bopomofo");
    v25 = sub_276E32640(v22, v23, v24);
    v27 = objc_msgSend_localizedStringForKey_value_table_(v25, v26, @"Pinyin", &stru_28860A0F0, @"TSText");
    v29 = objc_msgSend_transcriberWithIdentifier_displayName_romanizationLocaleID_transformIdentifier_(TSWPTranscriber, v28, @"Pinyin", v27, @"zh_HK", @"Null");
    v31 = objc_msgSend_initWithObjectsAndKeys_(v38, v30, v36, @"Katakana", v34, @"Hiragana", v15, @"Romaji", v22, @"Zhuyin", v29, @"Pinyin", 0);
    transcribers = v2->_transcribers;
    v2->_transcribers = v31;
  }

  return v2;
}

+ (id)orderedTranscriberIDsForLanguage:(int)language
{
  v10[3] = *MEMORY[0x277D85DE8];
  switch(language)
  {
    case 0:
      v9[0] = @"Pinyin";
      v9[1] = @"Zhuyin";
      v3 = MEMORY[0x277CBEA60];
      v4 = v9;
      goto LABEL_7;
    case 1:
      v8[0] = @"Zhuyin";
      v8[1] = @"Pinyin";
      v3 = MEMORY[0x277CBEA60];
      v4 = v8;
LABEL_7:
      objc_msgSend_arrayWithObjects_count_(v3, a2, v4, 2);
      break;
    case 2:
      v10[0] = @"Hiragana";
      v10[1] = @"Katakana";
      v10[2] = @"Romaji";
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v10, 3);
      break;
    default:
      v7[0] = @"Hiragana";
      v7[1] = @"Katakana";
      v7[2] = @"Romaji";
      v7[3] = @"Pinyin";
      v7[4] = @"Zhuyin";
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v7, 5);
      break;
  }
  v5 = ;

  return v5;
}

- (id)transcriberForBaseText:(id)text range:(_NSRange)range documentLocale:(id)locale outLanguageLocale:(id *)languageLocale outTextLanguageCode:(int *)code
{
  length = range.length;
  location = range.location;
  textCopy = text;
  localeCopy = locale;
  codeCopy = code;
  if (code)
  {
    if (languageLocale)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPPhonetics transcriberForBaseText:range:documentLocale:outLanguageLocale:outTextLanguageCode:]");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPhonetics.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 97, 0, "invalid nil value for '%{public}s'", "outTextLanguage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
    if (languageLocale)
    {
      goto LABEL_3;
    }
  }

  v59 = MEMORY[0x277D81150];
  v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPPhonetics transcriberForBaseText:range:documentLocale:outLanguageLocale:outTextLanguageCode:]");
  v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPhonetics.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v60, v62, 98, 0, "invalid nil value for '%{public}s'", "outLanguageLocale");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65);
LABEL_3:
  v16 = objc_msgSend_languageCode(localeCopy, v13, v14);
  v19 = sub_276D39910(v16, v17, v18);

  v70.location = location;
  v70.length = length;
  v22 = CFStringTokenizerCopyBestStringLanguage(textCopy, v70);
  if (!v22)
  {
    v23 = objc_msgSend_substringWithRange_(textCopy, v20, location, length);
    v71.location = location;
    v71.length = length;
    v22 = CFStringTokenizerCopyBestStringLanguage(v23, v71);
  }

  v24 = v19;
  if (v19 == 7)
  {
    v24 = sub_276D39910(v22, v20, v21);
  }

  v25 = objc_msgSend_orderedTranscriberIDsForLanguage_(TSWPPhonetics, v20, v24);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);

  if (v19 == 2 && sub_276D39910(v22, v28, v29) != 2)
  {
    v31 = objc_msgSend_substringWithRange_(textCopy, v30, location, length);
    v34 = objc_msgSend_length(v31, v32, v33);
    v36 = objc_msgSend_linguisticTagsInRange_scheme_options_orthography_tokenRanges_(v31, v35, 0, v34, *MEMORY[0x277CCA400], 4, 0, 0);
    if (objc_msgSend_count(v36, v37, v38))
    {
      v66 = v31;
      objc_opt_class();
      v40 = objc_msgSend_objectAtIndexedSubscript_(v36, v39, 0);
      v41 = TSUDynamicCast();
      v44 = objc_msgSend_lowercaseString(v41, v42, v43);

      if ((objc_msgSend_isEqualToString_(v44, v45, @"hans") & 1) == 0 && (objc_msgSend_isEqualToString_(v44, v46, @"hant") & 1) == 0)
      {

        v27 = @"Katakana";
      }

      v31 = v66;
    }
  }

  if (v24 == 7)
  {
    v47 = localeCopy;
  }

  else
  {
    v47 = sub_276D39F7C(v24, localeCopy);
  }

  v48 = v47;
  *codeCopy = v24;
  *languageLocale = v47;
  v50 = objc_msgSend_transcriberWithIdentifier_(self, v49, v27);

  return v50;
}

- (id)pronunciationSuggestionsForBaseText:(id)text locale:(id)locale language:(int)language
{
  v5 = *&language;
  v57 = *MEMORY[0x277D85DE8];
  textCopy = text;
  localeCopy = locale;
  v49 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  selfCopy = self;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = objc_msgSend_orderedTranscriberIDsForLanguage_(TSWPPhonetics, v14, v5);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v50, v56, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v51;
    v47 = v13;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = objc_msgSend_transcriberWithIdentifier_(selfCopy, v17, *(*(&v50 + 1) + 8 * i));
        v23 = objc_msgSend_transcribeText_withLocale_(v21, v22, textCopy, localeCopy);
        if (objc_msgSend_length(v23, v24, v25) && (objc_msgSend_containsObject_(v13, v26, v23) & 1) == 0)
        {
          v55[0] = v21;
          v55[1] = v23;
          v55[2] = localeCopy;
          v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v55, 3);
          objc_msgSend_addObject_(v49, v28, v27);

          objc_msgSend_addObject_(v13, v29, v23);
        }

        v30 = objc_msgSend_transcribeText_(v21, v26, textCopy);

        if (objc_msgSend_length(v30, v31, v32) && (objc_msgSend_containsObject_(v13, v33, v30) & 1) == 0)
        {
          v54[0] = v21;
          v54[1] = v30;
          v36 = objc_msgSend_romanizationLocale(v21, v34, v35);
          v54[2] = v36;
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v54, 3);
          v38 = textCopy;
          v39 = v18;
          v40 = localeCopy;
          v41 = v19;
          v43 = v42 = selfCopy;
          objc_msgSend_addObject_(v49, v44, v43);

          selfCopy = v42;
          v19 = v41;
          localeCopy = v40;
          v18 = v39;
          textCopy = v38;
          v13 = v47;

          objc_msgSend_addObject_(v47, v45, v30);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v50, v56, 16);
    }

    while (v18);
  }

  return v49;
}

@end