@interface TSWPUserDefaults
+ (BOOL)automaticDashSubstitution;
+ (BOOL)automaticQuoteSubstitution;
+ (BOOL)p_UserDefaultSet:(id)set force:(BOOL)force;
+ (BOOL)p_cachedBoolForKey:(id)key;
+ (BOOL)spellCheckingEnabled;
+ (id)appReplacementsDictionary;
+ (id)p_caseInsensitiveDictionary:(id)dictionary mergedWithDictionary:(id)withDictionary;
+ (id)replacementsDictionaryAllowingFractions:(BOOL)fractions;
+ (unint64_t)maximumFontSize;
+ (void)initialize;
+ (void)p_defaultsChanged:(id)changed;
+ (void)registerUserDefaults:(BOOL)defaults;
+ (void)setAutomaticDashSubstitution:(BOOL)substitution;
+ (void)setAutomaticQuoteSubstitution:(BOOL)substitution;
+ (void)setAutomaticTextReplacement:(BOOL)replacement;
+ (void)setAutomaticallyDetectLinks:(BOOL)links;
+ (void)setAutomaticallyDetectLists:(BOOL)lists;
+ (void)setAutomaticallyDetectPhoneLinks:(BOOL)links;
+ (void)setAutomaticallyFormatFractions:(BOOL)fractions;
+ (void)setInvisiblesColor:(id)color;
+ (void)setReplacementsDictionary:(id)dictionary;
+ (void)setShowsQuickFormatBar:(BOOL)bar;
+ (void)setSpellCheckingEnabled:(BOOL)enabled;
+ (void)setSuperscriptNumericalSuffixes:(BOOL)suffixes;
+ (void)setUnderlineLinks:(BOOL)links;
@end

@implementation TSWPUserDefaults

+ (BOOL)p_UserDefaultSet:(id)set force:(BOOL)force
{
  if (force)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEBD0];
  setCopy = set;
  v9 = objc_msgSend_standardUserDefaults(v5, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, setCopy);

  v4 = v11 != 0;
  return v4;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = qword_280A58488;
    qword_280A58488 = v4;
  }
}

+ (void)p_defaultsChanged:(id)changed
{
  changedCopy = changed;
  v3 = qword_280A58488;
  objc_sync_enter(v3);
  objc_msgSend_removeAllObjects(qword_280A58488, v4, v5);
  objc_sync_exit(v3);
}

+ (BOOL)p_cachedBoolForKey:(id)key
{
  keyCopy = key;
  v4 = qword_280A58488;
  objc_sync_enter(v4);
  v6 = objc_msgSend_objectForKey_(qword_280A58488, v5, keyCopy);
  v9 = v6;
  if (v6)
  {
    LOBYTE(v10) = objc_msgSend_BOOLValue(v6, v7, v8);
  }

  else
  {
    v11 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
    v10 = objc_msgSend_BOOLForKey_(v11, v12, keyCopy);

    if (v10)
    {
      objc_msgSend_setObject_forKey_(qword_280A58488, v13, MEMORY[0x277CBEC38], keyCopy);
    }

    else
    {
      objc_msgSend_setObject_forKey_(qword_280A58488, v13, MEMORY[0x277CBEC28], keyCopy);
    }
  }

  objc_sync_exit(v4);
  return v10;
}

+ (BOOL)spellCheckingEnabled
{
  v2 = objc_msgSend_p_cachedBoolForKey_(self, a2, *MEMORY[0x277D80820]);
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x2821F9670](TSWPUserDefaults, sel_spellCheckingAllowed, v3);
  }

  return v2;
}

+ (BOOL)automaticDashSubstitution
{
  if (!objc_msgSend_p_UserDefaultSet_force_(self, a2, @"TSWPAutomaticDashSubstitution", 0))
  {
    return 1;
  }

  return objc_msgSend_p_cachedBoolForKey_(self, v3, @"TSWPAutomaticDashSubstitution");
}

+ (BOOL)automaticQuoteSubstitution
{
  if (!objc_msgSend_p_UserDefaultSet_force_(self, a2, @"TSWPAutomaticQuoteSubstitution", 0))
  {
    return 1;
  }

  return objc_msgSend_p_cachedBoolForKey_(self, v3, @"TSWPAutomaticQuoteSubstitution");
}

+ (void)setShowsQuickFormatBar:(BOOL)bar
{
  barCopy = bar;
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, bar);
  objc_msgSend_setBool_forKey_(v4, v5, barCopy, @"TSWPShowsQuickFormatBar");

  v7 = qword_280A58488;

  objc_msgSend_removeObjectForKey_(v7, v6, @"TSWPShowsQuickFormatBar");
}

+ (id)p_caseInsensitiveDictionary:(id)dictionary mergedWithDictionary:(id)withDictionary
{
  withDictionaryCopy = withDictionary;
  v8 = objc_msgSend_count(dictionary, v6, v7);
  v11 = objc_msgSend_count(withDictionaryCopy, v9, v10);

  v13 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v12, v11 + v8);
  v16 = objc_msgSend_copy(v13, v14, v15);

  return v16;
}

+ (id)replacementsDictionaryAllowingFractions:(BOOL)fractions
{
  fractionsCopy = fractions;
  v7 = objc_msgSend_appReplacementsDictionary(self, a2, fractions);
  if (!v7)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v5, v6);
  }

  if (objc_msgSend_automaticTextReplacement(self, v5, v6))
  {
    v10 = v7;
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v8, v9);
  }

  v13 = v10;
  if (fractionsCopy && objc_msgSend_automaticallyFormatFractions(self, v11, v12))
  {
    if (qword_280A58498 != -1)
    {
      sub_276F4F800();
    }

    v15 = objc_msgSend_p_caseInsensitiveDictionary_mergedWithDictionary_(self, v14, v13, qword_280A58490);

    v13 = v15;
  }

  return v13;
}

+ (id)appReplacementsDictionary
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"TSWPTextReplacementsDictionary");

  return v5;
}

+ (void)setReplacementsDictionary:(id)dictionary
{
  v3 = MEMORY[0x277CBEBD0];
  dictionaryCopy = dictionary;
  v8 = objc_msgSend_standardUserDefaults(v3, v5, v6);
  objc_msgSend_setObject_forKey_(v8, v7, dictionaryCopy, @"TSWPTextReplacementsDictionary");
}

+ (void)setInvisiblesColor:(id)color
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPUserDefaults setInvisiblesColor:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUserDefaults.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 630, 0, "Only macOS UI builds support setting the invisibles color");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

+ (void)setAutomaticallyDetectLinks:(BOOL)links
{
  linksCopy = links;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, links);
  objc_msgSend_setBool_forKey_(v5, v4, linksCopy, @"TSWPAutomaticallyDetectLinks");
}

+ (void)setAutomaticallyDetectPhoneLinks:(BOOL)links
{
  linksCopy = links;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, links);
  objc_msgSend_setBool_forKey_(v5, v4, linksCopy, @"TSWPAutomaticallyDetectPhoneLinks");
}

+ (void)setUnderlineLinks:(BOOL)links
{
  linksCopy = links;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, links);
  objc_msgSend_setBool_forKey_(v5, v4, linksCopy, @"TSWPUnderlineLinks");
}

+ (void)setAutomaticallyDetectLists:(BOOL)lists
{
  listsCopy = lists;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, lists);
  objc_msgSend_setBool_forKey_(v5, v4, listsCopy, @"TSWPAutomaticallyDetectLists");
}

+ (void)setSuperscriptNumericalSuffixes:(BOOL)suffixes
{
  suffixesCopy = suffixes;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, suffixes);
  objc_msgSend_setBool_forKey_(v5, v4, suffixesCopy, @"TSWPSuperscriptNumericalSuffixes");
}

+ (void)setAutomaticallyFormatFractions:(BOOL)fractions
{
  fractionsCopy = fractions;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, fractions);
  objc_msgSend_setBool_forKey_(v5, v4, fractionsCopy, @"TSWPAutomaticallyFormatFractions");
}

+ (void)setSpellCheckingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, enabled);
  objc_msgSend_setBool_forKey_(v5, v4, enabledCopy, *MEMORY[0x277D80820]);
}

+ (void)setAutomaticDashSubstitution:(BOOL)substitution
{
  substitutionCopy = substitution;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, substitution);
  objc_msgSend_setBool_forKey_(v5, v4, substitutionCopy, @"TSWPAutomaticDashSubstitution");
}

+ (void)setAutomaticQuoteSubstitution:(BOOL)substitution
{
  substitutionCopy = substitution;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, substitution);
  objc_msgSend_setBool_forKey_(v5, v4, substitutionCopy, @"TSWPAutomaticQuoteSubstitution");
}

+ (void)setAutomaticTextReplacement:(BOOL)replacement
{
  replacementCopy = replacement;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, replacement);
  objc_msgSend_setBool_forKey_(v5, v4, replacementCopy, @"TSWPAutomaticTextReplacement");
}

+ (unint64_t)maximumFontSize
{
  if (qword_280A584A8 != -1)
  {
    sub_276F4F814();
  }

  return qword_280A584A0;
}

+ (void)registerUserDefaults:(BOOL)defaults
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, defaults);
  v12[0] = @"TSWPAutomaticallyDetectLinks";
  v12[1] = @"TSWPAutomaticallyDetectPhoneLinks";
  v13[0] = MEMORY[0x277CBEC28];
  v13[1] = MEMORY[0x277CBEC28];
  v12[2] = @"TSWPAutomaticallyDetectLists";
  v12[3] = @"TSWPSuperscriptNumericalSuffixes";
  v13[2] = MEMORY[0x277CBEC28];
  v13[3] = MEMORY[0x277CBEC28];
  v12[4] = *MEMORY[0x277D80820];
  v13[4] = MEMORY[0x277CBEC28];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v13, v12, 5);
  objc_msgSend_registerDefaults_(v3, v6, v5);

  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
  objc_msgSend_synchronize(v9, v10, v11);
}

@end