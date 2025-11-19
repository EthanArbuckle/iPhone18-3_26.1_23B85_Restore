@interface TSABaseApplicationDelegate
+ (TSAApplicationICloudPreferences)tsa_sharedICloudPreferences;
+ (TSAApplicationPropertiesProvider)tsa_sharedPropertiesProvider;
+ (TSABaseApplicationDelegate)sharedDelegate;
+ (void)registerDrawableInfoClassMappingForTests;
+ (void)resetSharedConfigurations;
- (BOOL)hasApplicationBadgeCount;
- (TSABaseApplicationDelegate)init;
- (TSADocumentRoot)documentRoot;
- (id)existingNestedDocumentPathForPath:(id)a3;
- (id)iCloudURLFromDocumentShareURLComponents:(id)a3;
- (void)createStringsProviders;
- (void)persistenceError:(id)a3;
- (void)registerDrawableInfoClassMapping;
- (void)setApplicationBadgeCount:(unint64_t)a3 forCategory:(id)a4;
@end

@implementation TSABaseApplicationDelegate

+ (TSABaseApplicationDelegate)sharedDelegate
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TSABaseApplicationDelegate;
  v2 = objc_msgSendSuper2(&v4, sel_sharedDelegate);

  return v2;
}

+ (void)resetSharedConfigurations
{
  objc_msgSend_resetDisallowedElementKinds(MEMORY[0x277D80F28], a2, v2, v3);
  objc_msgSend_resetDisallowedSmartFieldKinds(MEMORY[0x277D80F28], v4, v5, v6);
  objc_msgSend_resetSharedTableConfiguration(MEMORY[0x277D80D00], v7, v8, v9);
  objc_msgSend_resetSharedChartConfiguration(MEMORY[0x277D80040], v10, v11, v12);
  v14 = MEMORY[0x277D80220];

  MEMORY[0x2821F9670](v14, sel_setShouldPartitionForPrinting_, 0, v13);
}

- (TSABaseApplicationDelegate)init
{
  v13.receiver = self;
  v13.super_class = TSABaseApplicationDelegate;
  v2 = [(TSABaseApplicationDelegate *)&v13 init];
  if (v2)
  {
    xmlInitParser();
    objc_msgSend_registerDefaults(v2, v3, v4, v5);
    objc_msgSend_registerDrawableInfoClassMapping(v2, v6, v7, v8);
    objc_msgSend_createStringsProviders(v2, v9, v10, v11);
    TSUUILayoutIsRTL();
  }

  return v2;
}

- (void)createStringsProviders
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSABaseApplicationDelegate createStringsProviders]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSABaseApplicationDelegate.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 120, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSABaseApplicationDelegate createStringsProviders]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (void)persistenceError:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v8 = objc_msgSend_stringWithUTF8String_(v4, v6, "[TSABaseApplicationDelegate persistenceError:]", v7);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSABaseApplicationDelegate.m", v10);
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v17 = objc_msgSend_domain(v5, v14, v15, v16);
  v21 = objc_msgSend_code(v5, v18, v19, v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v22, v8, v11, 127, 0, "Got persistence error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v13, v17, v21, v5);

  v26 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v26, v23, v24, v25);
}

+ (TSAApplicationPropertiesProvider)tsa_sharedPropertiesProvider
{
  v4 = objc_msgSend_sharedPropertiesProvider(a1, a2, v2, v3);
  v5 = objc_opt_class();
  if (v4)
  {
    v6 = v5;
    v7 = objc_opt_class();
    if (!objc_msgSend_isSubclassOfClass_(v6, v8, v7, v9))
    {
      sub_27610C788(v6);
    }
  }

  return v4;
}

+ (TSAApplicationICloudPreferences)tsa_sharedICloudPreferences
{
  v4 = objc_msgSend_sharedICloudPreferences(a1, a2, v2, v3);
  v5 = objc_opt_class();
  if (v4)
  {
    v6 = v5;
    v7 = objc_opt_class();
    if (!objc_msgSend_isSubclassOfClass_(v6, v8, v7, v9))
    {
      sub_27610C85C(v6);
    }
  }

  return v4;
}

- (void)registerDrawableInfoClassMapping
{
  v2 = MEMORY[0x277D80220];
  v3 = objc_opt_class();
  objc_msgSend_registerClassForUnarchiving_(v2, v4, v3, v5);
  v6 = MEMORY[0x277D80220];
  v7 = objc_opt_class();
  objc_msgSend_registerClassForUnarchiving_(v6, v8, v7, v9);
  v10 = MEMORY[0x277D80220];
  v11 = objc_opt_class();
  objc_msgSend_registerClassForUnarchiving_(v10, v12, v11, v13);
  v14 = MEMORY[0x277D80220];
  v16 = objc_opt_class();

  objc_msgSend_registerClassForUnarchiving_(v14, v15, v16, v17);
}

- (id)iCloudURLFromDocumentShareURLComponents:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v8 = objc_msgSend_tsa_sharedPropertiesProvider(v4, v5, v6, v7);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v12 = objc_msgSend_queryItems(v3, v9, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v90, v94, 16);
  if (v14)
  {
    v18 = v14;
    v87 = v8;
    v88 = v3;
    v89 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *v91;
    do
    {
      v22 = 0;
      do
      {
        if (*v91 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(*(&v90 + 1) + 8 * v22);
        v24 = objc_msgSend_name(v23, v15, v16, v17);
        v28 = objc_msgSend_value(v23, v25, v26, v27);
        if (objc_msgSend_isEqualToString_(v24, v29, @"id", v30))
        {
          v34 = objc_msgSend_copy(v28, v31, v32, v33);

          v20 = v34;
        }

        else if (objc_msgSend_isEqualToString_(v24, v31, @"name", v33))
        {
          v38 = objc_msgSend_copy(v28, v35, v36, v37);

          v19 = v38;
        }

        else if (objc_msgSend_isEqualToString_(v24, v35, @"referer", v37))
        {
          v89 = 1;
        }

        else if (*MEMORY[0x277D813A8] != -1)
        {
          sub_27610C930();
        }

        ++v22;
      }

      while (v18 != v22);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v90, v94, 16);
    }

    while (v18);

    if (v20)
    {
      v8 = v87;
      if (v19)
      {
        v41 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v39, @"https://www.icloud.com", v40);
        v45 = objc_msgSend_applicationName(v87, v42, v43, v44);
        v49 = objc_msgSend_lowercaseString(v45, v46, v47, v48);
        v52 = objc_msgSend_URLByAppendingPathComponent_(v41, v50, v49, v51);
        v55 = objc_msgSend_URLByAppendingPathComponent_(v52, v53, v20, v54);

        v57 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v56, v55, 1);
        v61 = objc_msgSend_URLPathAllowedCharacterSet(MEMORY[0x277CCA900], v58, v59, v60);
        v64 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v19, v62, v61, v63);
        objc_msgSend_setFragment_(v57, v65, v64, v66);

        v73 = objc_msgSend_array(MEMORY[0x277CBEB18], v67, v68, v69);
        v3 = v88;
        if (v89)
        {
          v74 = objc_alloc(MEMORY[0x277CCAD18]);
          v76 = objc_msgSend_initWithName_value_(v74, v75, @"referer", @"web");
          objc_msgSend_addObject_(v73, v77, v76, v78);
        }

        if (objc_msgSend_count(v73, v70, v71, v72))
        {
          v82 = objc_msgSend_copy(v73, v79, v80, v81);
          objc_msgSend_setQueryItems_(v57, v83, v82, v84);
        }

        v85 = objc_msgSend_URL(v57, v79, v80, v81);

        goto LABEL_29;
      }

      v3 = v88;
    }

    else
    {
      v8 = v87;
      v3 = v88;
    }
  }

  else
  {

    v20 = 0;
    v19 = 0;
  }

  if (*MEMORY[0x277D813A8] != -1)
  {
    sub_27610C958();
  }

  v85 = 0;
LABEL_29:

  return v85;
}

- (id)existingNestedDocumentPathForPath:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v8 = objc_msgSend_tsa_sharedPropertiesProvider(v4, v5, v6, v7);
  v12 = objc_msgSend_tangierEditingFormatDocumentType(v8, v9, v10, v11);
  v15 = objc_msgSend_tsu_pathConformsToUTI_(v3, v13, v12, v14);

  if (v15)
  {
    v19 = objc_msgSend_compatibilityDelegate(v8, v16, v17, v18);
    v23 = objc_msgSend_nestedDocumentFilename(v19, v20, v21, v22);
    v26 = objc_msgSend_stringByAppendingPathComponent_(v3, v24, v23, v25);

    v30 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v27, v28, v29);
    LOBYTE(v23) = objc_msgSend_fileExistsAtPath_(v30, v31, v26, v32);

    if (v23)
    {
      goto LABEL_5;
    }
  }

  v26 = 0;
LABEL_5:

  return v26;
}

- (void)setApplicationBadgeCount:(unint64_t)a3 forCategory:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v6, v7, v8);
  v12 = objc_msgSend_objectForKey_(v9, v10, @"TSAApplicationBadgeDefaultsKey", v11);
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_mutableCopy(v12, v13, v14, v15);
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v20 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v18, a3, v19);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v21, v20, v5);

  objc_msgSend_setObject_forKey_(v9, v22, v17, @"TSAApplicationBadgeDefaultsKey");
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = v17;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v39, v43, 16);
  if (v25)
  {
    v28 = v25;
    v29 = 0;
    v30 = *v40;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v23);
        }

        v32 = objc_msgSend_objectForKeyedSubscript_(v23, v26, *(*(&v39 + 1) + 8 * i), v27);
        v29 += objc_msgSend_integerValue(v32, v33, v34, v35);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v39, v43, 16);
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_276090CC4;
  v38[3] = &unk_27A6AF650;
  v38[4] = v29;
  objc_msgSend_performWithApplication_(MEMORY[0x277D811B0], v36, v38, v37);
}

- (BOOL)hasApplicationBadgeCount
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2, v3);
  v7 = objc_msgSend_objectForKey_(v4, v5, @"TSAApplicationBadgeDefaultsKey", v6);
  v8 = v7;
  if (v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
    if (v13)
    {
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = objc_msgSend_objectForKeyedSubscript_(v9, v11, *(*(&v22 + 1) + 8 * i), v12, v22);
          v20 = objc_msgSend_integerValue(v16, v17, v18, v19);

          if (v20 > 0)
          {
            LOBYTE(v13) = 1;
            goto LABEL_12;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v22, v26, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

+ (void)registerDrawableInfoClassMappingForTests
{
  v2 = MEMORY[0x277D80220];
  v3 = objc_opt_class();
  objc_msgSend_registerClassForUnarchiving_(v2, v4, v3, v5);
  v6 = MEMORY[0x277D80220];
  v7 = objc_opt_class();
  objc_msgSend_registerClassForUnarchiving_(v6, v8, v7, v9);
  v10 = MEMORY[0x277D80220];
  v11 = objc_opt_class();
  objc_msgSend_registerClassForUnarchiving_(v10, v12, v11, v13);
  v14 = MEMORY[0x277D80220];
  v16 = objc_opt_class();

  objc_msgSend_registerClassForUnarchiving_(v14, v15, v16, v17);
}

- (TSADocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->mDocumentRoot);

  return WeakRetained;
}

@end