@interface TSAApplicationPropertiesProvider
- (BOOL)isReadableDocumentType:(id)a3;
- (NSArray)importableDocumentTypes;
- (NSArray)nativeDocumentTypes;
- (NSArray)readableDocumentTypes;
- (NSString)appTextDefaultsKey;
- (NSString)nativeSFFDocumentType;
- (NSString)tangierEditingFormatDocumentType;
- (NSString)templateDocumentExtension;
- (NSString)templateDocumentType;
- (NSString)templateSFFDocumentType;
- (id)appTextDefaults;
- (id)iWorkTextDefaultsPassphraseVerifier;
- (uint64_t)supportsWebVideos;
- (void)setAppTextDefaults:(id)a3 passphraseVerifier:(id)a4;
@end

@implementation TSAApplicationPropertiesProvider

- (NSString)templateDocumentType
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAApplicationPropertiesProvider templateDocumentType]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAApplicationPropertiesProvider.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 21, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSAApplicationPropertiesProvider templateDocumentType]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (NSString)templateSFFDocumentType
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAApplicationPropertiesProvider templateSFFDocumentType]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAApplicationPropertiesProvider.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 25, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSAApplicationPropertiesProvider templateSFFDocumentType]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (NSString)templateDocumentExtension
{
  v4 = objc_msgSend_templateDocumentType(self, a2, v2, v3);
  v8 = objc_msgSend_tsu_UTIFilenameExtension(v4, v5, v6, v7);

  return v8;
}

- (NSString)tangierEditingFormatDocumentType
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAApplicationPropertiesProvider tangierEditingFormatDocumentType]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAApplicationPropertiesProvider.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 33, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSAApplicationPropertiesProvider tangierEditingFormatDocumentType]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (NSString)nativeSFFDocumentType
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAApplicationPropertiesProvider nativeSFFDocumentType]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAApplicationPropertiesProvider.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 37, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSAApplicationPropertiesProvider nativeSFFDocumentType]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (NSArray)nativeDocumentTypes
{
  v25[5] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_nativeDocumentType(self, a2, v2, v3);
  v9 = objc_msgSend_templateDocumentType(self, v6, v7, v8, v5);
  v25[1] = v9;
  v13 = objc_msgSend_templateSFFDocumentType(self, v10, v11, v12);
  v25[2] = v13;
  v17 = objc_msgSend_tangierEditingFormatDocumentType(self, v14, v15, v16);
  v25[3] = v17;
  v21 = objc_msgSend_nativeSFFDocumentType(self, v18, v19, v20);
  v25[4] = v21;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v25, 5);

  return v23;
}

- (NSArray)readableDocumentTypes
{
  v5 = objc_msgSend_nativeDocumentTypes(self, a2, v2, v3);
  v9 = objc_msgSend_importableDocumentTypes(self, v6, v7, v8);
  v12 = objc_msgSend_arrayByAddingObjectsFromArray_(v5, v10, v9, v11);

  return v12;
}

- (NSArray)importableDocumentTypes
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAApplicationPropertiesProvider importableDocumentTypes]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAApplicationPropertiesProvider.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 53, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSAApplicationPropertiesProvider importableDocumentTypes]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (BOOL)isReadableDocumentType:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_readableDocumentTypes(self, v5, v6, v7);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        if (objc_msgSend_tsu_conformsToUTI_(v4, v10, *(*(&v16 + 1) + 8 * i), v11, v16))
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v16, v20, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (NSString)appTextDefaultsKey
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_applicationName(self, a2, v2, v3);
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"TSWPDefaults-%@", v7, v5);

  return v8;
}

- (id)appTextDefaults
{
  v5 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, v2, v3);
  v9 = objc_msgSend_appTextDefaultsKey(self, v6, v7, v8);
  v12 = objc_msgSend_objectForKey_(v5, v10, v9, v11);

  return v12;
}

- (id)iWorkTextDefaultsPassphraseVerifier
{
  v4 = objc_msgSend_defaultStore(MEMORY[0x277CCAD80], a2, v2, v3);
  v7 = objc_msgSend_dataForKey_(v4, v5, @"TSAICloudTextDefaultsPassphraseVerifierKey", v6);

  return v7;
}

- (void)setAppTextDefaults:(id)a3 passphraseVerifier:(id)a4
{
  v6 = MEMORY[0x277CCAD80];
  v7 = a4;
  v8 = a3;
  v21 = objc_msgSend_defaultStore(v6, v9, v10, v11);
  v15 = objc_msgSend_appTextDefaultsKey(self, v12, v13, v14);
  objc_msgSend_setObject_forKey_(v21, v16, v8, v15);

  objc_msgSend_setData_forKey_(v21, v17, v7, @"TSAICloudTextDefaultsPassphraseVerifierKey");
  objc_msgSend_tsk_coalescedSynchronizeForDefaultStore(MEMORY[0x277CCAD80], v18, v19, v20);
}

- (uint64_t)supportsWebVideos
{
  if (qword_280A42528 != -1)
  {
    sub_27610CB50();
  }

  return byte_280A42520;
}

@end