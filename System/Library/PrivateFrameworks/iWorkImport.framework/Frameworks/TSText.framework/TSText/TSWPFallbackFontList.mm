@interface TSWPFallbackFontList
+ (id)sharedInstance;
- (BOOL)isMasqueradingFontName:(id)name;
- (NSSet)replaceableFontNames;
- (TSWPFallbackFontList)init;
- (TSWPFallbackFontList)initWithList:(id)list;
- (id)fallbackFontNameForFontWithName:(id)name;
- (id)fallbackListForPostscriptFontName:(id)name;
- (id)localizedNameForMasqueradingFontName:(id)name;
@end

@implementation TSWPFallbackFontList

+ (id)sharedInstance
{
  if (qword_280A59230 != -1)
  {
    sub_276F59CD0();
  }

  v3 = qword_280A59228;

  return v3;
}

- (TSWPFallbackFontList)init
{
  v4 = sub_276E32640(self, a2, v2);
  v6 = objc_msgSend_pathForResource_ofType_(v4, v5, @"TSWPFallbackFonts", @"plist");

  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v9 = objc_msgSend_initWithContentsOfFile_(v7, v8, v6);
  v11 = objc_msgSend_initWithList_(self, v10, v9);

  return v11;
}

- (TSWPFallbackFontList)initWithList:(id)list
{
  listCopy = list;
  v10.receiver = self;
  v10.super_class = TSWPFallbackFontList;
  v6 = [(TSWPFallbackFontList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fallbackFontList, list);
    localizedFontFamilyNameResolver = v7->_localizedFontFamilyNameResolver;
    v7->_localizedFontFamilyNameResolver = &unk_2886098F0;
  }

  return v7;
}

- (NSSet)replaceableFontNames
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_msgSend_fallbackFontList(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);
  v9 = objc_msgSend_setWithArray_(v3, v8, v7);

  return v9;
}

- (id)fallbackListForPostscriptFontName:(id)name
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v10 = objc_msgSend_fallbackFontList(self, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, nameCopy);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v12;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v23, v27, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = objc_msgSend_objectForKeyedSubscript_(*(*(&v23 + 1) + 8 * i), v16, @"PostScript-name", v23);
        objc_msgSend_addObject_(v7, v21, v20);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v23, v27, 16);
    }

    while (v17);
  }

  return v7;
}

- (id)fallbackFontNameForFontWithName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = objc_msgSend_fallbackFontList(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, nameCopy);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v9;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v25;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = objc_msgSend_objectForKeyedSubscript_(*(*(&v24 + 1) + 8 * v16), v13, @"PostScript-name", v24);
      v20 = objc_msgSend_sharedInstance(TSWPFontVerifier, v18, v19);
      isFontWithPostscriptNameInstalled = objc_msgSend_isFontWithPostscriptNameInstalled_(v20, v21, v17);

      if (isFontWithPostscriptNameInstalled)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v28, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v17 = 0;
  }

  return v17;
}

- (id)localizedNameForMasqueradingFontName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_localizedFontFamilyNameResolver(self, v5, v6);
  v8 = v7[2]();

  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, nameCopy);

  return v10;
}

- (BOOL)isMasqueradingFontName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_sharedInstance(TSWPFontVerifier, v5, v6);
  isFontWithPostscriptNameInstalled = objc_msgSend_isFontWithPostscriptNameInstalled_(v7, v8, nameCopy);

  if (isFontWithPostscriptNameInstalled)
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_msgSend_fallbackFontNameForFontWithName_(self, v10, nameCopy);
    if (objc_msgSend_length(v12, v13, v14))
    {
      v17 = objc_msgSend_masqueradingFontNames(self, v15, v16);
      v11 = objc_msgSend_containsObject_(v17, v18, v12);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end