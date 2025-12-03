@interface MecabraWordProperties
+ (__IDXIndex)characterInformationDictionary;
+ (__IDXIndex)codeLookupInformationDictionary;
+ (__IDXIndex)informationDictionaryAtPath:(__CFURL *)path;
+ (id)searchResultsForString:(id)string dictionary:(__IDXIndex *)dictionary;
+ (id)sortedRadicalList;
- (MecabraWordProperties)initWithString:(id)string language:(int)language;
- (NSArray)characterInformation;
- (NSArray)codeLookupInformation;
- (id)bihuaCodes;
- (id)cangjieCodes;
- (id)initialsForStrings:(id)strings;
- (id)isIncludedInCurrentLanguage;
- (id)pinyinInformationForString:(id)string;
- (id)radicalInformationForString:(id)string;
- (id)separatedInputCodesForString:(id)string;
- (id)strokeInformationForString:(id)string;
- (id)tonesForString:(id)string;
- (id)wubixingCodes;
- (id)zhuyinInformationForString:(id)string;
- (void)dealloc;
@end

@implementation MecabraWordProperties

+ (__IDXIndex)informationDictionaryAtPath:(__CFURL *)path
{
  if (!path)
  {
    return 0;
  }

  v3 = sub_2992432B4(0, path, 0);
  v4 = v3;
  if (v3)
  {
    sub_299243598(v3, &unk_2A1F83748);
  }

  return v4;
}

+ (__IDXIndex)characterInformationDictionary
{
  if (qword_2A1460C68 != -1)
  {
    dispatch_once(&qword_2A1460C68, &unk_2A1F6E6F8);
  }

  return qword_2A1460C60;
}

+ (__IDXIndex)codeLookupInformationDictionary
{
  if (qword_2A1460C78 != -1)
  {
    dispatch_once(&qword_2A1460C78, &unk_2A1F6E718);
  }

  return qword_2A1460C70;
}

+ (id)searchResultsForString:(id)string dictionary:(__IDXIndex *)dictionary
{
  v15[1] = *MEMORY[0x29EDCA608];
  if (dictionary)
  {
    if (sub_299243500(dictionary, string, @"IDXExactMatch") && (v15[0] = 0, v12[0] = 0, v12[1] = 0, v13 = 0, (*(**(dictionary + 2) + 72))(*(dictionary + 2), *(dictionary + 5), 1, v15, &v14) >= 1))
    {
      sub_29924388C(dictionary, v15[0], v14, v12, v11);
      v6 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v8 = objc_msgSend_initWithBytes_length_encoding_(v6, v7, v13, v11[2], 4);
    }

    else
    {
      v8 = 0;
    }

    result = objc_msgSend_componentsSeparatedByString_(v8, v5, @";");
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

+ (id)sortedRadicalList
{
  if (qword_2A1460C88 != -1)
  {
    dispatch_once(&qword_2A1460C88, &unk_2A1F6E738);
  }

  return qword_2A1460C80;
}

- (NSArray)characterInformation
{
  result = self->_characterInformation;
  if (!result)
  {
    v5 = objc_msgSend_analysisString(self, a2, v2);
    Character = objc_msgSend_firstCharacter(v5, v6, v7);
    v11 = objc_msgSend_characterInformationDictionary(MecabraWordProperties, v9, v10);
    result = objc_msgSend_searchResultsForString_dictionary_(MecabraWordProperties, v12, Character, v11);
    self->_characterInformation = result;
  }

  return result;
}

- (NSArray)codeLookupInformation
{
  result = self->_codeLookupInformation;
  if (!result)
  {
    v5 = objc_msgSend_analysisString(self, a2, v2);
    v8 = objc_msgSend_codeLookupInformationDictionary(MecabraWordProperties, v6, v7);
    result = objc_msgSend_searchResultsForString_dictionary_(MecabraWordProperties, v9, v5, v8);
    self->_codeLookupInformation = result;
  }

  return result;
}

- (id)radicalInformationForString:(id)string
{
  v4 = objc_msgSend_language(self, a2, string);
  v6 = objc_msgSend_componentsByLanguage_(string, v5, v4);

  return objc_msgSend_firstObject(v6, v7, v8);
}

- (id)strokeInformationForString:(id)string
{
  v4 = MEMORY[0x29EDBA070];
  v5 = objc_msgSend_language(self, a2, string);
  v7 = objc_msgSend_componentsByLanguage_(string, v6, v5);
  Object = objc_msgSend_firstObject(v7, v8, v9);
  v14 = objc_msgSend_integerValue(Object, v11, v12);

  return objc_msgSend_numberWithInteger_(v4, v13, v14);
}

- (id)pinyinInformationForString:(id)string
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_language(self, a2, string);
  v6 = objc_msgSend_componentsByLanguage_(string, v5, v4);
  v9 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v7, v8);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v21, v25, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = objc_msgSend_pinyinStringFromPinyinWithToneNumber(*(*(&v21 + 1) + 8 * v16), v12, v13);
        objc_msgSend_addObject_(v9, v18, v17);
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v21, v25, 16);
    }

    while (v14);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v9;
}

- (id)zhuyinInformationForString:(id)string
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_language(self, a2, string);
  v6 = objc_msgSend_componentsByLanguage_(string, v5, v4);
  v9 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v7, v8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v20, v24, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = objc_msgSend_zhuyinSyllableFromPinyinSyllable(*(*(&v20 + 1) + 8 * v16), v12, v13);
        if (v17)
        {
          objc_msgSend_addObject_(v9, v12, v17);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v20, v24, 16);
    }

    while (v14);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v9;
}

- (id)initialsForStrings:(id)strings
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDB8E20];
  v5 = objc_msgSend_count(strings, a2, strings);
  v7 = objc_msgSend_setWithCapacity_(v4, v6, v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(strings, v8, &v27, v31, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(strings);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if (objc_msgSend_length(v15, v10, v11))
        {
          v16 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v15, v10, 0);
          v18 = objc_msgSend_substringWithRange_(v15, v17, v16, v17);
          v21 = objc_msgSend_stringByStrippingDiacritics(v18, v19, v20);
          v24 = objc_msgSend_uppercaseString(v21, v22, v23);
          if (v24)
          {
            objc_msgSend_addObject_(v7, v10, v24);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(strings, v10, &v27, v31, 16);
    }

    while (v12);
  }

  result = objc_msgSend_allObjects(v7, v10, v11);
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)tonesForString:(id)string
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = objc_msgSend_componentsSeparatedByString_(string, a2, @" ");
  v5 = objc_msgSend_setWithCapacity_(MEMORY[0x29EDB8E20], v4, 5);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v16, v20, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = objc_msgSend_toneFromPinyinSyllableWithNumber(*(*(&v16 + 1) + 8 * v12), v8, v9);
        if (v13)
        {
          objc_msgSend_addObject_(v5, v8, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, &v16, v20, 16);
    }

    while (v10);
  }

  result = objc_msgSend_allObjects(v5, v8, v9);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)separatedInputCodesForString:(id)string
{
  v5 = objc_msgSend_language(self, a2, string);

  return objc_msgSend_componentsByLanguage_(string, v4, v5);
}

- (MecabraWordProperties)initWithString:(id)string language:(int)language
{
  v10.receiver = self;
  v10.super_class = MecabraWordProperties;
  v8 = [(MecabraWordProperties *)&v10 init];
  if (v8)
  {
    v8->_analysisString = objc_msgSend_copy(string, v6, v7);
    v8->_language = language;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MecabraWordProperties;
  [(MecabraWordProperties *)&v3 dealloc];
}

- (id)wubixingCodes
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = objc_msgSend_wubixingCodesForStandard_(self, a2, 0);
  v5 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v3, v4);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v6, &v16, v20, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v2);
        }

        InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString(0xAu, *(*(&v16 + 1) + 8 * v10));
        objc_msgSend_addObject_(v5, v12, InputKeyFromASCIIString);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v13, &v16, v20, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v5;
}

- (id)bihuaCodes
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_codeLookupInformation(self, a2, v2);
  v6 = objc_msgSend_objectAtIndex_(v4, v5, 1);
  v8 = objc_msgSend_separatedInputCodesForString_(self, v7, v6);
  v11 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v9, v10);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v12, &v23, v27, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v8);
        }

        v19 = objc_msgSend_strokeStringFromNumberString(*(*(&v23 + 1) + 8 * v18), v14, v15);
        objc_msgSend_addObject_(v11, v20, v19);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v23, v27, 16);
    }

    while (v16);
  }

  v21 = *MEMORY[0x29EDCA608];
  return v11;
}

- (id)cangjieCodes
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_codeLookupInformation(self, a2, v2);
  v6 = objc_msgSend_objectAtIndex_(v4, v5, 2);
  v8 = objc_msgSend_separatedInputCodesForString_(self, v7, v6);
  v11 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v9, v10);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v12, &v22, v26, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v8);
        }

        InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString(9u, *(*(&v22 + 1) + 8 * v16));
        objc_msgSend_addObject_(v11, v18, InputKeyFromASCIIString);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v19, &v22, v26, 16);
    }

    while (v14);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v11;
}

- (id)isIncludedInCurrentLanguage
{
  v4 = objc_msgSend_language(self, a2, v2);
  v7 = MEMORY[0x29EDB8EB0];
  if (v4 == 2)
  {
    v24 = objc_msgSend_characterInformation(self, v5, v6);
    v26 = objc_msgSend_objectAtIndex_(v24, v25, 3);
    v29 = objc_msgSend_BOOLValue(v26, v27, v28);
    v32 = objc_msgSend_characterInformation(self, v30, v31);
    v34 = objc_msgSend_objectAtIndex_(v32, v33, 4);
    v37 = objc_msgSend_BOOLValue(v34, v35, v36);
    v22 = MEMORY[0x29EDB8EA8];
    if (v37)
    {
      v22 = v7;
    }

    v23 = v29 == 0;
  }

  else
  {
    if (v4 != 1)
    {
      return v7;
    }

    v8 = objc_msgSend_characterInformation(self, v5, v6);
    v10 = objc_msgSend_objectAtIndex_(v8, v9, 3);
    v13 = objc_msgSend_BOOLValue(v10, v11, v12);
    v16 = objc_msgSend_characterInformation(self, v14, v15);
    v18 = objc_msgSend_objectAtIndex_(v16, v17, 4);
    v21 = objc_msgSend_BOOLValue(v18, v19, v20);
    v22 = MEMORY[0x29EDB8EA8];
    if (v13)
    {
      v22 = v7;
    }

    v23 = v21 == 0;
  }

  if (!v23)
  {
    return v22;
  }

  return v7;
}

@end