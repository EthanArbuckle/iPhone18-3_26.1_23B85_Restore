@interface TSWPUserDefaults
+ (BOOL)automaticDashSubstitution;
+ (BOOL)automaticQuoteSubstitution;
+ (BOOL)p_UserDefaultSet:(id)a3 force:(BOOL)a4;
+ (BOOL)p_cachedBoolForKey:(id)a3;
+ (BOOL)spellCheckingEnabled;
+ (id)appReplacementsDictionary;
+ (id)p_caseInsensitiveDictionary:(id)a3 mergedWithDictionary:(id)a4;
+ (id)replacementsDictionaryAllowingFractions:(BOOL)a3;
+ (unint64_t)maximumFontSize;
+ (void)initialize;
+ (void)p_defaultsChanged:(id)a3;
+ (void)registerUserDefaults:(BOOL)a3;
+ (void)setAutomaticDashSubstitution:(BOOL)a3;
+ (void)setAutomaticQuoteSubstitution:(BOOL)a3;
+ (void)setAutomaticTextReplacement:(BOOL)a3;
+ (void)setAutomaticallyDetectLinks:(BOOL)a3;
+ (void)setAutomaticallyDetectLists:(BOOL)a3;
+ (void)setAutomaticallyDetectPhoneLinks:(BOOL)a3;
+ (void)setAutomaticallyFormatFractions:(BOOL)a3;
+ (void)setInvisiblesColor:(id)a3;
+ (void)setReplacementsDictionary:(id)a3;
+ (void)setShowsQuickFormatBar:(BOOL)a3;
+ (void)setSpellCheckingEnabled:(BOOL)a3;
+ (void)setSuperscriptNumericalSuffixes:(BOOL)a3;
+ (void)setUnderlineLinks:(BOOL)a3;
@end

@implementation TSWPUserDefaults

+ (BOOL)p_UserDefaultSet:(id)a3 force:(BOOL)a4
{
  if (a4)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEBD0];
  v6 = a3;
  v9 = objc_msgSend_standardUserDefaults(v5, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, v6);

  v4 = v11 != 0;
  return v4;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = qword_280A58488;
    qword_280A58488 = v4;
  }
}

+ (void)p_defaultsChanged:(id)a3
{
  v6 = a3;
  v3 = qword_280A58488;
  objc_sync_enter(v3);
  objc_msgSend_removeAllObjects(qword_280A58488, v4, v5);
  objc_sync_exit(v3);
}

+ (BOOL)p_cachedBoolForKey:(id)a3
{
  v3 = a3;
  v4 = qword_280A58488;
  objc_sync_enter(v4);
  v6 = objc_msgSend_objectForKey_(qword_280A58488, v5, v3);
  v9 = v6;
  if (v6)
  {
    LOBYTE(v10) = objc_msgSend_BOOLValue(v6, v7, v8);
  }

  else
  {
    v11 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
    v10 = objc_msgSend_BOOLForKey_(v11, v12, v3);

    if (v10)
    {
      objc_msgSend_setObject_forKey_(qword_280A58488, v13, MEMORY[0x277CBEC38], v3);
    }

    else
    {
      objc_msgSend_setObject_forKey_(qword_280A58488, v13, MEMORY[0x277CBEC28], v3);
    }
  }

  objc_sync_exit(v4);
  return v10;
}

+ (BOOL)spellCheckingEnabled
{
  v2 = objc_msgSend_p_cachedBoolForKey_(a1, a2, *MEMORY[0x277D80820]);
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x2821F9670](TSWPUserDefaults, sel_spellCheckingAllowed, v3);
  }

  return v2;
}

+ (BOOL)automaticDashSubstitution
{
  if (!objc_msgSend_p_UserDefaultSet_force_(a1, a2, @"TSWPAutomaticDashSubstitution", 0))
  {
    return 1;
  }

  return objc_msgSend_p_cachedBoolForKey_(a1, v3, @"TSWPAutomaticDashSubstitution");
}

+ (BOOL)automaticQuoteSubstitution
{
  if (!objc_msgSend_p_UserDefaultSet_force_(a1, a2, @"TSWPAutomaticQuoteSubstitution", 0))
  {
    return 1;
  }

  return objc_msgSend_p_cachedBoolForKey_(a1, v3, @"TSWPAutomaticQuoteSubstitution");
}

+ (void)setShowsQuickFormatBar:(BOOL)a3
{
  v3 = a3;
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v4, v5, v3, @"TSWPShowsQuickFormatBar");

  v7 = qword_280A58488;

  objc_msgSend_removeObjectForKey_(v7, v6, @"TSWPShowsQuickFormatBar");
}

+ (id)p_caseInsensitiveDictionary:(id)a3 mergedWithDictionary:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_count(a3, v6, v7);
  v11 = objc_msgSend_count(v5, v9, v10);

  v13 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v12, v11 + v8);
  v16 = objc_msgSend_copy(v13, v14, v15);

  return v16;
}

+ (id)replacementsDictionaryAllowingFractions:(BOOL)a3
{
  v3 = a3;
  v7 = objc_msgSend_appReplacementsDictionary(a1, a2, a3);
  if (!v7)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v5, v6);
  }

  if (objc_msgSend_automaticTextReplacement(a1, v5, v6))
  {
    v10 = v7;
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v8, v9);
  }

  v13 = v10;
  if (v3 && objc_msgSend_automaticallyFormatFractions(a1, v11, v12))
  {
    if (qword_280A58498 != -1)
    {
      sub_276F4F800();
    }

    v15 = objc_msgSend_p_caseInsensitiveDictionary_mergedWithDictionary_(a1, v14, v13, qword_280A58490);

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

+ (void)setReplacementsDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v8 = objc_msgSend_standardUserDefaults(v3, v5, v6);
  objc_msgSend_setObject_forKey_(v8, v7, v4, @"TSWPTextReplacementsDictionary");
}

+ (void)setInvisiblesColor:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPUserDefaults setInvisiblesColor:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPUserDefaults.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 630, 0, "Only macOS UI builds support setting the invisibles color");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

+ (void)setAutomaticallyDetectLinks:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPAutomaticallyDetectLinks");
}

+ (void)setAutomaticallyDetectPhoneLinks:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPAutomaticallyDetectPhoneLinks");
}

+ (void)setUnderlineLinks:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPUnderlineLinks");
}

+ (void)setAutomaticallyDetectLists:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPAutomaticallyDetectLists");
}

+ (void)setSuperscriptNumericalSuffixes:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPSuperscriptNumericalSuffixes");
}

+ (void)setAutomaticallyFormatFractions:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPAutomaticallyFormatFractions");
}

+ (void)setSpellCheckingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, *MEMORY[0x277D80820]);
}

+ (void)setAutomaticDashSubstitution:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPAutomaticDashSubstitution");
}

+ (void)setAutomaticQuoteSubstitution:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPAutomaticQuoteSubstitution");
}

+ (void)setAutomaticTextReplacement:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_setBool_forKey_(v5, v4, v3, @"TSWPAutomaticTextReplacement");
}

+ (unint64_t)maximumFontSize
{
  if (qword_280A584A8 != -1)
  {
    sub_276F4F814();
  }

  return qword_280A584A0;
}

+ (void)registerUserDefaults:(BOOL)a3
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
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