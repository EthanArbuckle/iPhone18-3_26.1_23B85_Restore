@interface TSWPFontList
+ (id)excludedFamilyNames;
+ (id)sharedInstance;
- (NSArray)recentBaseFonts;
- (NSDictionary)knownFonts;
- (TSWPFontList)init;
- (id)availableFontDescriptorsForAllFamilies;
- (id)availableFontFamilies;
- (id)baseFontWithDescriptor:(id)descriptor;
- (id)cacheKeyForFontDescriptor:(id)descriptor;
- (id)cachedFacesOfFontFamily:(id)family;
- (id)description;
- (id)familiesForFontsInCollection:(__CTFontCollection *)collection;
- (id)familyNameFromFontDescriptor:(__CTFontDescriptor *)descriptor;
- (id)fontFacesForFontFamily:(id)family;
- (id)fontForKey:(id)key;
- (id)fontForPostscriptName:(id)name;
- (id)fontForPostscriptName:(id)name atSize:(double)size;
- (id)fontForPostscriptName:(id)name atSize:(double)size bold:(BOOL)bold italic:(BOOL)italic;
- (id)fontForStyles:(id)styles;
- (id)fontFromStyle:(id)style;
- (id)fontsForAvailableFamilies;
- (id)normalizeChangedFontUrlsToStrings:(id)strings forKey:(id)key;
- (id)sortedFontFamilies;
- (id)sortedFontsInStylesheet:(id)stylesheet;
- (void)cacheFaces:(id)faces forFontFamily:(id)family;
- (void)cacheFont:(id)font withKey:(id)key;
- (void)downloadableFontsChanged:(id)changed;
- (void)dropFontsWithPSNamesInSet:(id)set;
- (void)fontsChanged:(id)changed;
- (void)loadRecentFonts;
- (void)registerRecentFont:(id)font;
- (void)reset;
- (void)saveRecentFontNames:(id)names;
@end

@implementation TSWPFontList

+ (id)sharedInstance
{
  if (qword_280A58538 != -1)
  {
    sub_276F4F864();
  }

  v3 = qword_280A58530;

  return v3;
}

+ (id)excludedFamilyNames
{
  if (qword_280A58548 != -1)
  {
    sub_276F4F878();
  }

  v3 = qword_280A58540;

  return v3;
}

- (TSWPFontList)init
{
  v17.receiver = self;
  v17.super_class = TSWPFontList;
  v2 = [(TSWPFontList *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iWork.TSText.FontList.knownFonts", 0);
    knownFontsAccessQueue = v2->_knownFontsAccessQueue;
    v2->_knownFontsAccessQueue = v3;

    v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
    knownFonts = v2->_knownFonts;
    v2->_knownFonts = v7;

    v11 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v9, v10);
    knownFontFamilyFaces = v2->_knownFontFamilyFaces;
    v2->_knownFontFamilyFaces = v11;

    fontPropertyResolver = v2->_fontPropertyResolver;
    v2->_fontPropertyResolver = &unk_2885FF8F8;

    objc_msgSend_loadRecentFonts(v2, v14, v15);
  }

  return v2;
}

- (void)loadRecentFonts
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v20 = objc_msgSend_arrayForKey_(v4, v5, @"TSWPFontRecentFontNames");

  v7 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v20, v6, &unk_2885FF918);
  v9 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v8, &unk_2885FF938);
  v11 = objc_msgSend_filteredArrayUsingPredicate_(v7, v10, v9);

  objc_msgSend_setRecentFontNames_(self, v12, v11);
  v15 = objc_msgSend_recentFontNames(self, v13, v14);

  if (!v15)
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEA60], v16, v17);
    objc_msgSend_setRecentFontNames_(self, v19, v18);
  }
}

- (NSDictionary)knownFonts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276E36CB0;
  v10 = sub_276E36CC0;
  v11 = 0;
  knownFontsAccessQueue = self->_knownFontsAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276E36CC8;
  v5[3] = &unk_27A6F5988;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(knownFontsAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)familiesForFontsInCollection:(__CTFontCollection *)collection
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, collection);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = CTFontCollectionCreateMatchingFontDescriptors(collection);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_familyNameFromFontDescriptor_(self, v9, *(*(&v16 + 1) + 8 * i), v16);
        if (v14)
        {
          objc_msgSend_addObject_(v5, v13, v14);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v16, v20, 16);
    }

    while (v10);
  }

  return v5;
}

- (id)availableFontDescriptorsForAllFamilies
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = CTFontCollectionCreateFromAvailableFonts(0);
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  if (v3)
  {
    v7 = objc_opt_class();
    v10 = objc_msgSend_excludedFamilyNames(v7, v8, v9);
    v11 = *MEMORY[0x277CC48B8];
    mandatoryAttributes = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v12, *MEMORY[0x277CC48B8]);
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
    cf = v3;
    objc_msgSend_familiesForFontsInCollection_(self, v16, v3);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v53 = 0u;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v50, v57, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v51;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v50 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v10, v19, v24) & 1) == 0)
          {
            v55 = v11;
            v56 = v24;
            v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v56, &v55, 1);
            v26 = CTFontDescriptorCreateWithAttributes(v25);

            if (v26)
            {
              MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v26, mandatoryAttributes);
              if (MatchingFontDescriptor)
              {
                v29 = MatchingFontDescriptor;
                objc_msgSend_setObject_forKeyedSubscript_(v15, v28, MatchingFontDescriptor, v24);
              }

              CFRelease(v26);
            }
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v50, v57, 16);
      }

      while (v21);
    }

    v30 = objc_msgSend_allKeys(v15, v19, v20);
    v32 = objc_msgSend_sortedArrayUsingSelector_(v30, v31, sel_compare_);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = v32;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v46, v54, 16);
    if (v35)
    {
      v37 = v35;
      v38 = *v47;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v47 != v38)
          {
            objc_enumerationMutation(v33);
          }

          v40 = objc_msgSend_objectForKeyedSubscript_(v15, v36, *(*(&v46 + 1) + 8 * j));
          objc_msgSend_addObject_(v6, v41, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v46, v54, 16);
      }

      while (v37);
    }

    CFRelease(cf);
  }

  return v6;
}

- (id)sortedFontFamilies
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_availableFontDescriptorsForAllFamilies(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = MEMORY[0x277CBEB58];
    v9 = objc_msgSend_count(v4, v5, v6);
    v11 = objc_msgSend_setWithCapacity_(v8, v10, v9);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v7;
    obj = v7;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v44, v48, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v45;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = objc_msgSend_familyNameFromFontDescriptor_(self, v14, *(*(&v44 + 1) + 8 * i));
          if (v19)
          {
            objc_msgSend_addObject_(v11, v18, v19);
          }

          else
          {
            v20 = MEMORY[0x277D81150];
            v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPFontList sortedFontFamilies]");
            objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontList.m");
            v24 = v23 = v11;
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 203, 0, "invalid nil value for '%{public}s'", "familyName");

            v11 = v23;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v44, v48, 16);
      }

      while (v15);
    }

    v7 = v40;
  }

  else
  {
    v11 = 0;
  }

  v28 = objc_opt_class();
  v31 = objc_msgSend_excludedFamilyNames(v28, v29, v30);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_276E373E4;
  v42[3] = &unk_27A6F59B0;
  v43 = v31;
  v32 = v31;
  objc_msgSend_tsu_removeObjectsPassingTest_(v11, v33, v42);
  v36 = objc_msgSend_allObjects(v11, v34, v35);
  v38 = objc_msgSend_sortedArrayUsingSelector_(v36, v37, sel_compare_);

  return v38;
}

- (id)familyNameFromFontDescriptor:(__CTFontDescriptor *)descriptor
{
  v3 = CTFontDescriptorCopyAttribute(descriptor, *MEMORY[0x277CC48B8]);
  v4 = v3;
  if (v3 && CFStringHasPrefix(v3, @"."))
  {
    CFRelease(v4);
    v4 = 0;
  }

  return v4;
}

- (id)availableFontFamilies
{
  v4 = objc_msgSend_sortedFontFamilies(self, a2, v2);
  v7 = objc_msgSend_downloadedFonts(self, v5, v6);
  v10 = objc_msgSend_allObjects(v7, v8, v9);
  v12 = objc_msgSend_arrayByAddingObjectsFromArray_(v4, v11, v10);

  return v12;
}

- (void)downloadableFontsChanged:(id)changed
{
  v13 = objc_msgSend_object(changed, a2, changed);
  v5 = objc_msgSend_objectForKeyedSubscript_(v13, v4, @"TSWPFontRegisteredByURLFamilyNames");
  objc_msgSend_registerDownloadedFontPostScriptNames_(self, v6, v5);

  v8 = objc_msgSend_objectForKeyedSubscript_(v13, v7, @"TSWPFontDownloadMatchedNames");
  objc_msgSend_dropFontsWithPSNamesInSet_(self, v9, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v13, v10, @"TSWPFontDownloadUnmatchedNames");
  objc_msgSend_dropFontsWithPSNamesInSet_(self, v12, v11);
}

- (void)fontsChanged:(id)changed
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACC8];
  changedCopy = changed;
  if ((objc_msgSend_isMainThread(v4, v6, v7) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPFontList fontsChanged:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontList.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 295, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_setCachedAvailableFamilyFonts_(self, v8, 0);
  v17 = objc_msgSend_normalizeChangedFontUrlsToStrings_forKey_(self, v16, changedCopy, @"CTFontManagerAvailableFontURLsAdded");
  v19 = objc_msgSend_normalizeChangedFontUrlsToStrings_forKey_(self, v18, changedCopy, @"CTFontManagerAvailableFontURLsRemoved");

  objc_msgSend_dropFontsWithPSNamesInSet_(self, v20, v17);
  objc_msgSend_dropFontsWithPSNamesInSet_(self, v21, v19);
  v28[0] = @"TSWPFontsAdded";
  v28[1] = @"TSWPFontsRemoved";
  v29[0] = v17;
  v29[1] = v19;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v29, v28, 2);
  v26 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v24, v25);
  objc_msgSend_postNotificationName_object_userInfo_(v26, v27, @"TSWPAvailableFontsChanged", 0, v23);
}

- (id)normalizeChangedFontUrlsToStrings:(id)strings forKey:(id)key
{
  v45 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  keyCopy = key;
  v39 = objc_msgSend_set(MEMORY[0x277CBEB58], v7, v8);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = objc_msgSend_userInfo(stringsCopy, v9, v10);
  v38 = keyCopy;
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, keyCopy);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v40, v44, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        v22 = TSUDynamicCast();
        if (v22)
        {
          goto LABEL_10;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = 0;
LABEL_10:
          objc_msgSend_fragment(v22, v20, v21);
          goto LABEL_11;
        }

        v22 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v20, v19);
        objc_msgSend_fragment(v22, v23, v24);
        v25 = LABEL_11:;
        v27 = v25;
        if (v25 && !objc_msgSend_rangeOfString_(v25, v26, @"postscript-name="))
        {
          v30 = v28;
          v31 = objc_msgSend_length(v27, v28, v29);
          if (v30 <= v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = v30;
          }

          if (v30 >= v31)
          {
            objc_msgSend_substringWithRange_(v27, v32, v31, v33 - v31);
          }

          else
          {
            objc_msgSend_substringWithRange_(v27, v32, v30, v33 - v30);
          }
          v34 = ;
          objc_msgSend_addObject_(v39, v35, v34);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v36, &v40, v44, 16);
    }

    while (v16);
  }

  return v39;
}

- (id)fontFacesForFontFamily:(id)family
{
  familyCopy = family;
  v7 = objc_msgSend_cachedFacesOfFontFamily_(self, v5, familyCopy);
  if (!v7)
  {
    v7 = objc_msgSend_facesOfFontFamily_(TSWPFont, v6, familyCopy);
    objc_msgSend_cacheFaces_forFontFamily_(self, v8, v7, familyCopy);
  }

  return v7;
}

- (id)cachedFacesOfFontFamily:(id)family
{
  familyCopy = family;
  v7 = objc_msgSend_knownFontFamilyFaces(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, familyCopy);

  return v9;
}

- (void)cacheFaces:(id)faces forFontFamily:(id)family
{
  familyCopy = family;
  facesCopy = faces;
  v10 = objc_msgSend_knownFontFamilyFaces(self, v8, v9);
  v15 = objc_msgSend_mutableCopy(v10, v11, v12);

  objc_msgSend_setObject_forKeyedSubscript_(v15, v13, facesCopy, familyCopy);
  objc_msgSend_setKnownFontFamilyFaces_(self, v14, v15);
}

- (void)reset
{
  knownFontsAccessQueue = self->_knownFontsAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276E37BB4;
  block[3] = &unk_27A6F44B0;
  block[4] = self;
  dispatch_async(knownFontsAccessQueue, block);
  objc_msgSend_setCachedAvailableFamilyFonts_(self, v4, 0);
}

- (id)fontForPostscriptName:(id)name
{
  nameCopy = name;
  v6 = objc_msgSend_cacheKeyForFontWithPostScriptName_atSize_bold_italic_(self, v5, nameCopy, 0, 0, 0.0);
  v8 = objc_msgSend_fontForKey_(self, v7, v6);
  if (!v8)
  {
    v9 = [TSWPFont alloc];
    v8 = objc_msgSend_initWithDesiredPostScriptName_size_(v9, v10, nameCopy, 0.0);
    if ((objc_msgSend_isSystemProxyFont(v8, v11, v12) & 1) == 0)
    {
      objc_msgSend_cacheFont_withKey_(self, v13, v8, v6);
    }
  }

  return v8;
}

- (id)fontForPostscriptName:(id)name atSize:(double)size
{
  v5 = objc_msgSend_fontForPostscriptName_(self, a2, name);
  v8 = objc_msgSend_copyWithSize_(v5, v6, v7, size);

  return v8;
}

- (id)fontForPostscriptName:(id)name atSize:(double)size bold:(BOOL)bold italic:(BOOL)italic
{
  italicCopy = italic;
  boldCopy = bold;
  nameCopy = name;
  v12 = objc_msgSend_cacheKeyForFontWithPostScriptName_atSize_bold_italic_(self, v11, nameCopy, boldCopy, italicCopy, size);
  v15 = objc_msgSend_fontForKey_(self, v13, v12);
  if (!v15)
  {
    v16 = objc_msgSend_fontForPostscriptName_(self, v14, nameCopy);
    v15 = objc_msgSend_copyWithSize_bold_italic_(v16, v17, boldCopy, italicCopy, size);
    if ((objc_msgSend_isSystemProxyFont(v16, v18, v19) & 1) == 0)
    {
      objc_msgSend_cacheFont_withKey_(self, v20, v15, v12);
    }
  }

  return v15;
}

- (void)cacheFont:(id)font withKey:(id)key
{
  fontCopy = font;
  keyCopy = key;
  knownFontsAccessQueue = self->_knownFontsAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276E37EC8;
  block[3] = &unk_27A6F59D8;
  block[4] = self;
  v12 = keyCopy;
  v13 = fontCopy;
  v9 = fontCopy;
  v10 = keyCopy;
  dispatch_async(knownFontsAccessQueue, block);
}

- (id)fontForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_knownFonts(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, keyCopy);

  return v9;
}

- (id)cacheKeyForFontDescriptor:(id)descriptor
{
  v3 = MEMORY[0x277CCACA8];
  descriptorCopy = descriptor;
  v7 = objc_msgSend_postscriptName(descriptorCopy, v5, v6);
  objc_msgSend_pointSize(descriptorCopy, v8, v9);
  v11 = v10;

  v13 = objc_msgSend_stringWithFormat_(v3, v12, @"%@|%f|%d|%d", v7, v11, 0, 0);

  return v13;
}

- (void)dropFontsWithPSNamesInSet:(id)set
{
  setCopy = set;
  knownFontsAccessQueue = self->_knownFontsAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276E380B4;
  v7[3] = &unk_27A6F5A28;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  dispatch_async(knownFontsAccessQueue, v7);
}

- (id)sortedFontsInStylesheet:(id)stylesheet
{
  v39 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  v7 = objc_msgSend_fontsForAvailableFamilies(self, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7, v8, v9);

  v13 = objc_msgSend_set(MEMORY[0x277CBEB58], v11, v12);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v10;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v38, 16);
  if (v16)
  {
    v19 = v16;
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = objc_msgSend_displayName(*(*(&v34 + 1) + 8 * v21), v17, v18);
        objc_msgSend_addObject_(v13, v23, v22);

        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v34, v38, 16);
    }

    while (v19);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_276E3848C;
  v31[3] = &unk_27A6F5A50;
  v31[4] = self;
  v32 = v13;
  v24 = v14;
  v33 = v24;
  v25 = v13;
  objc_msgSend_enumerateStylesUsingBlock_(stylesheetCopy, v26, v31);
  objc_msgSend_sortUsingComparator_(v24, v27, &unk_2885FF958);
  v28 = v33;
  v29 = v24;

  return v24;
}

- (id)fontFromStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v6 = objc_msgSend_valueForProperty_(styleCopy, v5, 46);
  v7 = TSUDynamicCast();

  if (v7 || (objc_opt_class(), objc_msgSend_valueForProperty_(styleCopy, v9, 16), v10 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v7 = objc_claimAutoreleasedReturnValue(), v10, v7))
  {
    v11 = objc_msgSend_fontForPostscriptName_(self, v8, v7);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)fontsForAvailableFamilies
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cachedAvailableFamilyFonts(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = objc_msgSend_availableFontDescriptorsForAllFamilies(self, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v22, v26, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = objc_msgSend_baseFontWithDescriptor_(self, v13, *(*(&v22 + 1) + 8 * v16));
          objc_msgSend_addObject_(v7, v18, v17);

          ++v16;
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v22, v26, 16);
      }

      while (v14);
    }

    objc_msgSend_setCachedAvailableFamilyFonts_(self, v19, v7);
  }

  v20 = objc_msgSend_cachedAvailableFamilyFonts(self, v5, v6);

  return v20;
}

- (id)baseFontWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v6 = objc_msgSend_cacheKeyForFontDescriptor_(self, v5, descriptorCopy);
  v9 = objc_msgSend_fontForKey_(self, v7, v6);
  if (!v9)
  {
    v9 = objc_msgSend_baseFontWithDescriptor_(TSWPFont, v8, descriptorCopy);
    if ((objc_msgSend_isSystemProxyFont(v9, v10, v11) & 1) == 0)
    {
      objc_msgSend_cacheFont_withKey_(self, v12, v9, v6);
    }
  }

  return v9;
}

- (id)fontForStyles:(id)styles
{
  stylesCopy = styles;
  v7 = objc_msgSend_fontPropertyResolver(self, v5, v6);
  v8 = (v7)[2](v7, stylesCopy, 46);

  if (v8)
  {
    v13 = v8;
LABEL_4:
    v15 = objc_msgSend_fontPropertyResolver(self, v11, v12);
    v16 = (v15)[2](v15, stylesCopy, 19);

    v19 = objc_msgSend_fontPropertyResolver(self, v17, v18);
    v20 = (v19)[2](v19, stylesCopy, 20);

    v23 = objc_msgSend_fontPropertyResolver(self, v21, v22);
    v24 = (v23)[2](v23, stylesCopy, 17);

    v26 = objc_msgSend_fontForPostscriptName_(self, v25, v13);
    objc_msgSend_doubleValue(v24, v27, v28);
    v30 = v29;
    v33 = objc_msgSend_BOOLValue(v16, v31, v32);
    v36 = objc_msgSend_BOOLValue(v20, v34, v35);
    v38 = objc_msgSend_copyWithSize_bold_italic_(v26, v37, v33, v36, v30);

    goto LABEL_5;
  }

  v14 = objc_msgSend_fontPropertyResolver(self, v9, v10);
  v13 = (v14)[2](v14, stylesCopy, 16);

  if (v13)
  {
    goto LABEL_4;
  }

  v40 = MEMORY[0x277D81150];
  v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPFontList fontForStyles:]");
  v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontList.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 499, 0, "invalid nil value for '%{public}s'", "currentFontName");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
  v47 = MEMORY[0x277D81150];
  v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSWPFontList fontForStyles:]");
  v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontList.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v49, v51, 508, 0, "Failed to resolve font name");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
  v13 = objc_msgSend_missingFontPostScriptName(TSWPFont, v55, v56);
  v38 = objc_msgSend_fontForPostscriptName_(self, v57, v13);
LABEL_5:

  return v38;
}

- (void)registerRecentFont:(id)font
{
  fontCopy = font;
  v37 = fontCopy;
  if (fontCopy)
  {
    if ((objc_msgSend_isFallbackFont(fontCopy, v5, v6) & 1) == 0)
    {
      v7 = [TSWPOpaqueFontID alloc];
      v9 = objc_msgSend_initWithFont_(v7, v8, v37);
      v12 = objc_msgSend_recentFontNames(self, v10, v11);
      v15 = objc_msgSend_mutableCopy(v12, v13, v14);

      objc_msgSend_removeObject_(v15, v16, v9);
      objc_msgSend_insertObject_atIndex_(v15, v17, v9, 0);
      objc_msgSend_tsu_trimObjectsFromIndex_(v15, v18, 6);
      v21 = objc_msgSend_recentFontNames(self, v19, v20);
      isEqualToArray = objc_msgSend_isEqualToArray_(v21, v22, v15);

      if ((isEqualToArray & 1) == 0)
      {
        objc_msgSend_setRecentFontNames_(self, v24, v15);
        objc_msgSend_saveRecentFontNames_(self, v25, v15);
        v28 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v26, v27);
        objc_msgSend_postNotificationName_object_(v28, v29, @"TSWPRecentsFontsChangedNotification", v37);
      }
    }
  }

  else
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPFontList registerRecentFont:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontList.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 516, 0, "invalid nil value for '%{public}s'", "recentFont");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }
}

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@: <%p> Known Fonts: \n", v5, self);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = objc_msgSend_knownFonts(self, v8, v9);
  v13 = objc_msgSend_allValues(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v25, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v22;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_appendFormat_(v7, v16, @"\t%@\n", *(*(&v21 + 1) + 8 * i));
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v21, v25, 16);
    }

    while (v17);
  }

  return v7;
}

- (NSArray)recentBaseFonts
{
  v3 = objc_msgSend_recentFontNames(self, a2, v2);
  v5 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v3, v4, &unk_2885FF978);

  v7 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v6, &unk_2885FF998);
  v9 = objc_msgSend_filteredArrayUsingPredicate_(v5, v8, v7);

  return v9;
}

- (void)saveRecentFontNames:(id)names
{
  v7 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(names, a2, &unk_2885FF9B8);
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v3, v4);
  objc_msgSend_setObject_forKey_(v5, v6, v7, @"TSWPFontRecentFontNames");
}

@end