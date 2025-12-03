@interface TSWPFontVerifier
+ (id)sharedInstance;
- (BOOL)isCoreTextDownloadableFontName:(id)name;
- (BOOL)isFontWithPostscriptNameInstalled:(id)installed;
@end

@implementation TSWPFontVerifier

+ (id)sharedInstance
{
  if (qword_280A58458 != -1)
  {
    sub_276F4F6E8();
  }

  v3 = qword_280A58450;

  return v3;
}

- (BOOL)isFontWithPostscriptNameInstalled:(id)installed
{
  installedCopy = installed;
  v6 = objc_msgSend_missingFontName(TSWPFontVerifier, v4, v5);
  v8 = objc_msgSend_containsString_(installedCopy, v7, v6);

  if (v8 & 1) != 0 || objc_msgSend_uiFontTypeForFontName_(TSWPFont, v9, installedCopy) != -1 || (objc_msgSend_isSystemFontName_(TSWPFont, v10, installedCopy))
  {
    v11 = 1;
  }

  else
  {
    v13 = CTFontCreateWithNameAndOptions(installedCopy, 0.0, 0, 1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = CTFontCopyPostScriptName(v13);
      v18 = objc_msgSend_missingFontName(TSWPFontVerifier, v16, v17);
      isEqualToString = objc_msgSend_isEqualToString_(v15, v19, v18);

      v11 = isEqualToString ^ 1;
      CFRelease(v14);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)isCoreTextDownloadableFontName:(id)name
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC48A0];
  v15[0] = *MEMORY[0x277CC4908];
  v15[1] = v3;
  v16[0] = name;
  v16[1] = MEMORY[0x277CBEC38];
  v4 = MEMORY[0x277CBEAC0];
  nameCopy = name;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v16, v15, 2);

  v8 = CTFontDescriptorCreateWithAttributes(v7);
  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v8, 0);
  v12 = MatchingFontDescriptors;
  if (MatchingFontDescriptors)
  {
    v13 = objc_msgSend_count(MatchingFontDescriptors, v10, v11) != 0;
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v8);

  return v13;
}

@end