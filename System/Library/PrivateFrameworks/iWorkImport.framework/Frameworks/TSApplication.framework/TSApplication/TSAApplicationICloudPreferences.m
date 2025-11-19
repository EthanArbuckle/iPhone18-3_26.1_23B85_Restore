@interface TSAApplicationICloudPreferences
- (BOOL)hasIWorkAuthorName;
- (BOOL)isICloudDocumentPreference:(id)a3 validForKey:(id)a4;
- (id)collaboratorNameForDocumentInfo:(id)a3 firstName:(id *)a4 lastName:(id *)a5;
- (id)documentPreferenceKeyPrefix;
- (id)iCloudDocumentPreferenceKeyForKvsDocumentKey:(id)a3 isMatchingKey:(BOOL *)a4;
- (id)iWorkAuthorName;
- (id)iWorkAuthorPrivateIDsAndMetadata;
- (id)preferencesForKvsDocumentKey:(id)a3;
- (id)validICloudPreferencesForPreferences:(id)a3 invalidKeys:(id *)a4;
- (unint64_t)collaboratorColorIndexForKvsDocumentKey:(id)a3;
- (unint64_t)iWorkAuthorColorIndex;
- (void)clearICloudDocumentPreferences;
- (void)clearIWorkAuthorPrivateID;
- (void)p_ubiquitousKeyValueStoreDidChange:(id)a3;
- (void)registerICloudPreferences;
- (void)setIWorkAuthorColorIndex:(unint64_t)a3;
- (void)setIWorkAuthorName:(id)a3;
- (void)setIWorkAuthorPrivateIDsAndMetadata:(id)a3;
- (void)setPreferences:(id)a3 forKvsDocumentKey:(id)a4;
@end

@implementation TSAApplicationICloudPreferences

- (void)registerICloudPreferences
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2760BBB28;
  block[3] = &unk_27A6B0170;
  block[4] = self;
  if (qword_280A42530 != -1)
  {
    dispatch_once(&qword_280A42530, block);
  }
}

- (id)documentPreferenceKeyPrefix
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_tsa_sharedPropertiesProvider(TSABaseApplicationDelegate, a2, v2, v3);
  v9 = objc_msgSend_applicationName(v5, v6, v7, v8);
  v12 = objc_msgSend_stringWithFormat_(v4, v10, @"TSAICloudDocumentPreferencePrefix-%@", v11, v9);

  return v12;
}

- (void)clearICloudDocumentPreferences
{
  v21 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, v2, v3);
  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v5, v6, v7);
  v14 = objc_msgSend_documentPreferenceKeyPrefix(self, v9, v10, v11);
  for (i = 0; i != 20; ++i)
  {
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@-%tu", v13, v14, i);
    objc_msgSend_removeObjectForKey_(v21, v17, v16, v18);
    objc_msgSend_removeObjectForKey_(v8, v19, v16, v20);
  }
}

- (id)collaboratorNameForDocumentInfo:(id)a3 firstName:(id *)a4 lastName:(id *)a5
{
  if (objc_msgSend_length(0, a2, a3, a4, a5))
  {
    goto LABEL_2;
  }

  v11 = objc_msgSend_iWorkAuthorName(self, v6, v7, v8);
  v9 = v11;
  if (v11 && !objc_msgSend_length(v11, v12, v13, v14))
  {

LABEL_2:
    v9 = 0;
  }

  return v9;
}

- (unint64_t)collaboratorColorIndexForKvsDocumentKey:(id)a3
{
  v5 = objc_msgSend_preferencesForKvsDocumentKey_(self, a2, a3, v3);
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"TSAICloudDocumentPreferenceAuthorColorIndexKey", v7);
  v9 = TSUDynamicCast();

  if (!v9 || (v13 = objc_msgSend_unsignedIntegerValue(v9, v10, v11, v12), v13 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = objc_msgSend_iWorkAuthorColorIndex(self, v10, v11, v12);
  }

  return v13;
}

- (id)iCloudDocumentPreferenceKeyForKvsDocumentKey:(id)a3 isMatchingKey:(BOOL *)a4
{
  v69 = a3;
  if (objc_msgSend_length(v69, v6, v7, v8))
  {
    v63 = a4;
    v68 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], v9, v10, v11);
    v65 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v12, v13, v14);
    v20 = objc_msgSend_documentPreferenceKeyPrefix(self, v15, v16, v17);
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%@-%tu", v19, v20, v21);
      v27 = objc_msgSend_dictionaryForKey_(v68, v25, v24, v26);
      v30 = v27;
      if (v27)
      {
        v31 = v27;
      }

      else
      {
        v31 = objc_msgSend_dictionaryForKey_(v65, v28, v24, v29);
      }

      v32 = v31;

      objc_opt_class();
      v35 = objc_msgSend_objectForKeyedSubscript_(v32, v33, @"TSAICloudDocumentPreferenceShareIDKey", v34);
      v36 = TSUDynamicCast();

      objc_opt_class();
      v39 = objc_msgSend_objectForKeyedSubscript_(v32, v37, @"TSAICloudDocumentPreferenceTimestampKey", v38);
      v40 = TSUDynamicCast();

      if (objc_msgSend_isEqualToString_(v69, v41, v36, v42))
      {
        if (!v23 || objc_msgSend_compare_(v23, v43, v40, v44) == -1)
        {
          break;
        }
      }

      if ((v22 & 1) == 0)
      {
        if (v40)
        {
          if (v64 && objc_msgSend_compare_(v64, v43, v40, v44) != 1)
          {
            v22 = 0;
            goto LABEL_18;
          }

          v45 = v24;

          v46 = v40;
          v47 = v64;
          v22 = 0;
          v64 = v46;
          v66 = v45;
        }

        else
        {
          v50 = v24;
          v47 = v66;
          v22 = 1;
          v66 = v50;
        }

        goto LABEL_17;
      }

      v22 = 1;
LABEL_18:

      if (++v21 == 20)
      {
        if (v63)
        {
          *v63 = v67 != 0;
        }

        if (v67)
        {
          v51 = v67;
        }

        else
        {
          v51 = v66;
        }

        v52 = v51;

        goto LABEL_29;
      }
    }

    v48 = v24;

    v49 = v40;
    v47 = v23;
    v23 = v49;
    v67 = v48;
LABEL_17:

    goto LABEL_18;
  }

  v53 = MEMORY[0x277D81150];
  v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSAApplicationICloudPreferences iCloudDocumentPreferenceKeyForKvsDocumentKey:isMatchingKey:]", v11);
  v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAApplicationICloudPreferences.m", v56);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 170, 0, "Invalid share ID");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
  v52 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_29:

  return v52;
}

- (BOOL)isICloudDocumentPreference:(id)a3 validForKey:(id)a4
{
  v6 = a3;
  if (objc_msgSend_isEqualToString_(a4, v7, @"TSAICloudDocumentPreferenceAuthorColorIndexKey", v8))
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    v13 = v9;
    if (v9)
    {
      v14 = objc_msgSend_unsignedIntegerValue(v9, v10, v11, v12);
      isValidIWorkAuthorColorIndex = objc_msgSend_isValidIWorkAuthorColorIndex_(self, v15, v14, v16);
    }

    else
    {
      isValidIWorkAuthorColorIndex = 0;
    }
  }

  else
  {
    isValidIWorkAuthorColorIndex = 1;
  }

  return isValidIWorkAuthorColorIndex;
}

- (id)validICloudPreferencesForPreferences:(id)a3 invalidKeys:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CBEB38];
  v11 = objc_msgSend_count(v6, v8, v9, v10);
  v17 = objc_msgSend_dictionaryWithCapacity_(v7, v12, v11, v13);
  if (a4)
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15, v16);
  }

  else
  {
    v18 = 0;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2760BC398;
  v27[3] = &unk_27A6B0470;
  v27[4] = self;
  v19 = v17;
  v28 = v19;
  v20 = v18;
  v29 = v20;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v21, v27, v22);
  if (a4)
  {
    v23 = v20;
    *a4 = v20;
  }

  v24 = v29;
  v25 = v19;

  return v19;
}

- (id)preferencesForKvsDocumentKey:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6, v7))
  {
    v32 = 0;
    v9 = objc_msgSend_iCloudDocumentPreferenceKeyForKvsDocumentKey_isMatchingKey_(self, v8, v4, &v32);
    v13 = v9;
    if (v32 == 1 && objc_msgSend_length(v9, v10, v11, v12))
    {
      v17 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], v14, v15, v16);
      v20 = objc_msgSend_dictionaryForKey_(v17, v18, v13, v19);
      v24 = v20;
      if (v20)
      {
        v25 = v20;
      }

      else
      {
        v27 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v21, v22, v23);
        v25 = objc_msgSend_dictionaryForKey_(v27, v28, v13, v29);
      }

      v26 = objc_msgSend_validICloudPreferencesForPreferences_invalidKeys_(self, v30, v25, 0);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)setPreferences:(id)a3 forKvsDocumentKey:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_length(v7, v8, v9, v10))
  {
    v78 = 0;
    v12 = objc_msgSend_validICloudPreferencesForPreferences_invalidKeys_(self, v11, v6, &v78);
    v13 = v78;
    v77 = 0;
    v18 = objc_msgSend_iCloudDocumentPreferenceKeyForKvsDocumentKey_isMatchingKey_(self, v14, v7, &v77);
    if (v18)
    {
      v19 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], v15, v16, v17);
      v25 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v20, v21, v22);
      if (v6)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v12, v23, v7, @"TSAICloudDocumentPreferenceShareIDKey");
        v26 = MEMORY[0x277CCABB0];
        v30 = objc_msgSend_date(MEMORY[0x277CBEAA8], v27, v28, v29);
        objc_msgSend_timeIntervalSince1970(v30, v31, v32, v33);
        v37 = objc_msgSend_numberWithDouble_(v26, v34, v35, v36);
        objc_msgSend_setObject_forKeyedSubscript_(v12, v38, v37, @"TSAICloudDocumentPreferenceTimestampKey");

        if (v77 == 1)
        {
          v41 = objc_msgSend_dictionaryForKey_(v19, v39, v18, v40);
          v45 = v41;
          v71 = v25;
          if (v41)
          {
            v46 = objc_msgSend_mutableCopy(v41, v42, v43, v44);
          }

          else
          {
            v55 = objc_msgSend_dictionaryForKey_(v25, v42, v18, v44);
            v46 = objc_msgSend_mutableCopy(v55, v56, v57, v58);
          }

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v72 = v13;
          v59 = v13;
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v73, v79, 16);
          if (v61)
          {
            v64 = v61;
            v65 = *v74;
            do
            {
              for (i = 0; i != v64; ++i)
              {
                if (*v74 != v65)
                {
                  objc_enumerationMutation(v59);
                }

                objc_msgSend_removeObjectForKey_(v46, v62, *(*(&v73 + 1) + 8 * i), v63, v71);
              }

              v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v73, v79, 16);
            }

            while (v64);
          }

          objc_msgSend_addEntriesFromDictionary_(v46, v67, v12, v68);
          v12 = v46;
          v25 = v71;
          v13 = v72;
          objc_msgSend_setDictionary_forKey_(v19, v69, v46, v18, v71);
        }

        else
        {
          v46 = v12;
          objc_msgSend_setDictionary_forKey_(v19, v39, v12, v18);
        }

        objc_msgSend_tsk_coalescedSynchronizeForDefaultStore(MEMORY[0x277CCAD80], v52, v53, v54);
        objc_msgSend_setObject_forKey_(v25, v70, v46, v18);
      }

      else
      {
        objc_msgSend_removeObjectForKey_(v19, v23, v18, v24);
        objc_msgSend_tsk_coalescedSynchronizeForDefaultStore(MEMORY[0x277CCAD80], v47, v48, v49);
        objc_msgSend_removeObjectForKey_(v25, v50, v18, v51);
      }
    }
  }
}

- (void)setIWorkAuthorName:(id)a3
{
  v50[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_normalizedAuthorNameForAuthorName_(MEMORY[0x277D80608], a2, a3, v3);
  v9 = objc_msgSend_iWorkAuthorName(self, v6, v7, v8);
  v10 = v9;
  v11 = &stru_288512028;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  if (!objc_msgSend_length(v5, v13, v14, v15))
  {

    v19 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  if (!v5 || (objc_msgSend_isEqualToString_(v5, v16, v12, v18) & 1) != 0)
  {
    v19 = 0;
LABEL_8:
    v20 = 1;
    goto LABEL_9;
  }

  v49[0] = @"TSAAnnotationAuthorNewNameKey";
  v49[1] = @"TSAAnnotationAuthorOldNameKey";
  v50[0] = v5;
  v50[1] = v12;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v50, v49, 2);
  if (!v19)
  {
    goto LABEL_8;
  }

  v42 = objc_msgSend_notificationWithName_object_userInfo_(MEMORY[0x277CCAB88], v16, @"TSAAnnotationAuthorNameWillChangeNotification", self, v19);
  v46 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v43, v44, v45);
  objc_msgSend_postNotification_(v46, v47, v42, v48);

  v20 = 0;
LABEL_9:
  v21 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], v16, v17, v18);
  objc_msgSend_setString_forKey_(v21, v22, v5, @"TSAICloudAuthorNameKey");
  objc_msgSend_tsk_coalescedSynchronizeForDefaultStore(MEMORY[0x277CCAD80], v23, v24, v25);
  v29 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v26, v27, v28);
  objc_msgSend_setObject_forKey_(v29, v30, v5, @"TSAICloudAuthorNameKey");
  objc_msgSend_synchronize(v29, v31, v32, v33);
  if ((v20 & 1) == 0)
  {
    v35 = objc_msgSend_notificationWithName_object_userInfo_(MEMORY[0x277CCAB88], v34, @"TSAAnnotationAuthorNameDidChangeNotification", self, v19);
    v39 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v36, v37, v38);
    objc_msgSend_postNotification_(v39, v40, v35, v41);
  }
}

- (BOOL)hasIWorkAuthorName
{
  v4 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, v2, v3);
  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v5, v6, v7);
  objc_opt_class();
  v13 = objc_msgSend_objectForKey_(v4, v9, @"TSAICloudAuthorNameKey", v10);
  if (v13)
  {
    v14 = TSUDynamicCast();
  }

  else
  {
    v15 = objc_msgSend_objectForKey_(v8, v11, @"TSAICloudAuthorNameKey", v12);
    v14 = TSUDynamicCast();
  }

  return v14 != 0;
}

- (id)iWorkAuthorName
{
  v4 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, v2, v3);
  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v5, v6, v7);
  objc_opt_class();
  v13 = objc_msgSend_objectForKey_(v4, v9, @"TSAICloudAuthorNameKey", v10);
  if (v13)
  {
    v14 = TSUDynamicCast();
  }

  else
  {
    v15 = objc_msgSend_objectForKey_(v8, v11, @"TSAICloudAuthorNameKey", v12);
    v14 = TSUDynamicCast();
  }

  if (!objc_msgSend_length(v14, v16, v17, v18))
  {

    v14 = 0;
  }

  return v14;
}

- (unint64_t)iWorkAuthorColorIndex
{
  v5 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, v2, v3);
  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v6, v7, v8);
  objc_opt_class();
  v14 = objc_msgSend_objectForKey_(v5, v10, @"TSAICloudAuthorColorIndexKey", v11);
  if (v14)
  {
    v15 = TSUDynamicCast();
  }

  else
  {
    v16 = objc_msgSend_objectForKey_(v9, v12, @"TSAICloudAuthorColorIndexKey", v13);
    v15 = TSUDynamicCast();
  }

  if (v15)
  {
    v20 = objc_msgSend_unsignedIntegerValue(v15, v17, v18, v19);
    isValidIWorkAuthorColorIndex = objc_msgSend_isValidIWorkAuthorColorIndex_(self, v21, v20, v22);
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    isValidIWorkAuthorColorIndex = objc_msgSend_isValidIWorkAuthorColorIndex_(self, v17, 0x7FFFFFFFFFFFFFFFLL, v19);
  }

  if (isValidIWorkAuthorColorIndex)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v24;
}

- (void)setIWorkAuthorColorIndex:(unint64_t)a3
{
  v17 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, a3, v3);
  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v6, v7, v8);
  if (objc_msgSend_isValidIWorkAuthorColorIndex_(self, v10, a3, v11))
  {
    objc_msgSend_setLongLong_forKey_(v17, v12, a3, @"TSAICloudAuthorColorIndexKey");
    objc_msgSend_setInteger_forKey_(v9, v14, a3, @"TSAICloudAuthorColorIndexKey");
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v17, v12, @"TSAICloudAuthorColorIndexKey", v13);
    objc_msgSend_removeObjectForKey_(v9, v15, @"TSAICloudAuthorColorIndexKey", v16);
  }
}

- (void)clearIWorkAuthorPrivateID
{
  v18 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, v2, v3);
  v7 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v4, v5, v6);
  objc_msgSend_removeObjectForKey_(v18, v8, @"TSAICloudAuthorPrivateIDKey", v9);
  objc_msgSend_tsk_coalescedSynchronizeForDefaultStore(MEMORY[0x277CCAD80], v10, v11, v12);
  objc_msgSend_removeObjectForKey_(v7, v13, @"TSAICloudAuthorPrivateIDKey", v14);
  objc_msgSend_synchronize(v7, v15, v16, v17);
}

- (id)iWorkAuthorPrivateIDsAndMetadata
{
  v4 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, v2, v3);
  objc_opt_class();
  v7 = objc_msgSend_objectForKey_(v4, v5, @"TSAICloudAuthorPrivateIDKey", v6);
  v8 = TSUDynamicCast();

  return v8;
}

- (void)setIWorkAuthorPrivateIDsAndMetadata:(id)a3
{
  v3 = MEMORY[0x277CCAD80];
  v4 = a3;
  v12 = objc_msgSend_defaultStore(v3, v5, v6, v7);
  objc_msgSend_setObject_forKey_(v12, v8, v4, @"TSAICloudAuthorPrivateIDKey");

  objc_msgSend_tsk_coalescedSynchronizeForDefaultStore(MEMORY[0x277CCAD80], v9, v10, v11);
}

- (void)p_ubiquitousKeyValueStoreDidChange:(id)a3
{
  v102[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_userInfo(a3, a2, a3, v3);
  v7 = objc_msgSend_objectForKey_(v4, v5, *MEMORY[0x277CCA7B0], v6);
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_integerValue(v7, v8, v9, v10);
    if (v12 <= 3 && v12 != 2)
    {
      v84 = v11;
      v85 = v4;
      v16 = objc_msgSend_objectForKey_(v4, v13, *MEMORY[0x277CCA7B8], v14);
      v20 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], v17, v18, v19);
      v87 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v21, v22, v23);
      if (objc_msgSend_containsObject_(v16, v24, @"TSAICloudAuthorNameKey", v25))
      {
        v29 = objc_msgSend_stringForKey_(v87, v26, @"TSAICloudAuthorNameKey", v28);
        v32 = objc_msgSend_stringForKey_(v20, v30, @"TSAICloudAuthorNameKey", v31);
        if (objc_msgSend_length(v32, v33, v34, v35))
        {
          v39 = objc_msgSend_length(v29, v36, v37, v38);
          if (v39)
          {
            if (objc_msgSend_isEqualToString_(v32, v40, v29, v41))
            {
              v39 = 0;
            }

            else
            {
              v101[0] = @"TSAAnnotationAuthorNewNameKey";
              v101[1] = @"TSAAnnotationAuthorOldNameKey";
              v102[0] = v32;
              v102[1] = v29;
              v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v102, v101, 2);
            }
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          v96 = sub_2760BD514;
          v97 = &unk_27A6B0248;
          v98 = self;
          v99 = v39;
          v43 = MEMORY[0x277CCACC8];
          v44 = v39;
          if (objc_msgSend_isMainThread(v43, v45, v46, v47))
          {
            (v96)(block);
          }

          else
          {
            dispatch_async(MEMORY[0x277D85CD0], block);
          }
        }
      }

      v48 = objc_msgSend_iCloudPreferenceKeys(self, v26, v27, v28);
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v49 = v16;
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v91, v100, 16);
      if (v51)
      {
        v54 = v51;
        v55 = *v92;
        mode = *MEMORY[0x277CBF058];
        do
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v92 != v55)
            {
              objc_enumerationMutation(v49);
            }

            v57 = *(*(&v91 + 1) + 8 * i);
            if (objc_msgSend_containsObject_(v48, v52, v57, v53))
            {
              v63 = objc_msgSend_objectForKey_(v20, v58, v57, v60);
              if (v63)
              {
                objc_msgSend_setObject_forKey_(v87, v61, v63, v57);
              }

              else
              {
                objc_msgSend_removeObjectForKey_(v87, v61, v57, v62);
              }
            }

            else
            {
              v64 = objc_msgSend_documentPreferenceKeyPrefix(self, v58, v59, v60);
              hasPrefix = objc_msgSend_hasPrefix_(v57, v65, v64, v66);

              if (hasPrefix)
              {
                v63 = objc_msgSend_dictionaryForKey_(v20, v68, v57, v70);
                objc_opt_class();
                v73 = objc_msgSend_objectForKeyedSubscript_(v63, v71, @"TSAICloudDocumentPreferenceShareIDKey", v72);
                v74 = TSUDynamicCast();

                if (v74)
                {
                  objc_msgSend_setObject_forKey_(v87, v75, v63, v57);
                  v89[0] = MEMORY[0x277D85DD0];
                  v89[1] = 3221225472;
                  v89[2] = sub_2760BD590;
                  v89[3] = &unk_27A6B0248;
                  v89[4] = self;
                  v90 = v63;
                  v76 = v89;
                  Main = CFRunLoopGetMain();
                  CFRunLoopPerformBlock(Main, mode, v76);
                  CFRunLoopWakeUp(Main);
                }
              }

              else
              {
                v63 = objc_msgSend_tsa_sharedPropertiesProvider(TSABaseApplicationDelegate, v68, v69, v70);
                v81 = objc_msgSend_appTextDefaultsKey(v63, v78, v79, v80);
                objc_msgSend_isEqualToString_(v57, v82, v81, v83);
              }
            }
          }

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v91, v100, 16);
        }

        while (v54);
      }

      v11 = v84;
      v4 = v85;
    }
  }

  else if (*MEMORY[0x277D81408] != -1)
  {
    sub_27610CB64();
  }
}

@end