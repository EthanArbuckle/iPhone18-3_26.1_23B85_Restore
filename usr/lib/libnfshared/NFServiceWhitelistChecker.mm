@interface NFServiceWhitelistChecker
- (BOOL)_BOOLValueOfEntitlement:(id)entitlement secTask:(__SecTask *)task;
- (BOOL)_isAIDStringValid:(id)valid;
- (BOOL)externalReaderAccessAllow;
- (NFServiceWhitelistChecker)initWithConnection:(id)connection coreNFCConnection:(BOOL)cConnection;
- (double)sessionTimeLimit;
- (id)_arrayValueOfEntitlement:(id)entitlement secTask:(__SecTask *)task;
- (id)_createAccessDictionaryFromICCode:(id)code serialNumber:(id)number maximumFilterStringLength:(unint64_t)length;
- (id)_stringFromArray:(id)array;
- (id)_stringFromISO15693AccessFilterList;
- (id)_stringValueOfEntitlement:(id)entitlement secTask:(__SecTask *)task;
- (id)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getAppInfoDictionary;
- (unsigned)validateISO15693TagAccessWithManufacturerCode:(unint64_t)code;
- (unsigned)validateISO15693TagAccessWithManufacturerCode:(unint64_t)code serialNumber:(id)number;
- (unsigned)validateISO15693TagAcesssWithUID:(id)d;
- (void)_copyValueOfEntitlement:(id)entitlement secTask:(__SecTask *)task;
- (void)_initCardSessionEntitlementsWithSecTask:(__SecTask *)task;
- (void)_initCoreNFCEntitlements:(id)entitlements secTask:(__SecTask *)task;
- (void)_initISO7816PermissibleAIDListWithSecTask:(__SecTask *)task infoPlist:(id)plist;
- (void)_initTagSpecifier:(id)specifier maximumFilterStringLength:(unint64_t)length;
@end

@implementation NFServiceWhitelistChecker

- (void)_copyValueOfEntitlement:(id)entitlement secTask:(__SecTask *)task
{
  v34 = *MEMORY[0x277D85DE8];
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(task, entitlement, &error);
  if (error)
  {
    v7 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v9 = off_27DA9DE50[specific];
    if (v9)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Failed to get entitlements: %{public}@", v14, ClassName, Name, 65, error);
      v7 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v15 = dispatch_get_specific(v7);
    v16 = NFSharedLogGetLogger(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      v19 = object_getClassName(self);
      v20 = sel_getName(a2);
      *buf = 67110146;
      v25 = v18;
      v26 = 2082;
      v27 = v19;
      v28 = 2082;
      v29 = v20;
      v30 = 1024;
      v31 = 65;
      v32 = 2114;
      v33 = error;
      _os_log_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get entitlements: %{public}@", buf, 0x2Cu);
    }

    CFRelease(error);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_BOOLValueOfEntitlement:(id)entitlement secTask:(__SecTask *)task
{
  v4 = objc_msgSend__copyValueOfEntitlement_secTask_(self, a2, entitlement, task);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
  CFRelease(v5);
  return v7;
}

- (id)_arrayValueOfEntitlement:(id)entitlement secTask:(__SecTask *)task
{
  v4 = objc_msgSend__copyValueOfEntitlement_secTask_(self, a2, entitlement, task);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFArrayGetTypeID())
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  return v5;
}

- (id)_stringValueOfEntitlement:(id)entitlement secTask:(__SecTask *)task
{
  v4 = objc_msgSend__copyValueOfEntitlement_secTask_(self, a2, entitlement, task);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFStringGetTypeID())
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  return v5;
}

- (id)_createAccessDictionaryFromICCode:(id)code serialNumber:(id)number maximumFilterStringLength:(unint64_t)length
{
  v47[2] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  numberCopy = number;
  v9 = objc_opt_new();
  v11 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v10, @"0123456789abcdefABCDEF*");
  if (objc_msgSend_length(codeCopy, v12, v13) <= 2)
  {
    v45 = 0;
    v15 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v14, codeCopy);
    v17 = objc_msgSend_scanHexInt_(v15, v16, &v45);

    if (v17)
    {
      v19 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v18, numberCopy);
      v44 = 0;
      objc_msgSend_scanCharactersFromSet_intoString_(v19, v20, v11, &v44);
      v21 = v44;

      if (objc_msgSend_length(v21, v22, v23) <= length)
      {
        hasPrefix = objc_msgSend_hasPrefix_(v21, v24, @"*");
        hasSuffix = objc_msgSend_hasSuffix_(v21, v26, @"*");
        v29 = hasSuffix;
        if (!hasPrefix || (hasSuffix & 1) == 0)
        {
          if ((hasPrefix | hasSuffix))
          {
            v30 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v28, @"*");
            v32 = objc_msgSend_stringByTrimmingCharactersInSet_(v21, v31, v30);

            if (hasPrefix)
            {
              v33 = objc_alloc(MEMORY[0x277CCACA8]);
              v35 = objc_msgSend_initWithFormat_(v33, v34, @"*%@", v32);

              v32 = v35;
            }

            if (v29)
            {
              v36 = objc_alloc(MEMORY[0x277CCACA8]);
              v21 = objc_msgSend_initWithFormat_(v36, v37, @"%@*", v32);
            }

            else
            {
              v21 = v32;
            }
          }

          v46[0] = @"TagManufacturerCode";
          v38 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v28, v45);
          v46[1] = @"TagSerialNumber";
          v47[0] = v38;
          v47[1] = v21;
          v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v47, v46, 2);
          objc_msgSend_addEntriesFromDictionary_(v9, v41, v40);
        }
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_initTagSpecifier:(id)specifier maximumFilterStringLength:(unint64_t)length
{
  v46 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = specifierCopy;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = specifierCopy;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v41, v45, 16);
    if (!v9)
    {
      goto LABEL_23;
    }

    v10 = v9;
    v11 = *v42;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = objc_msgSend_NF_stringForKey_(v13, v14, @"TagManufacturerCode");
          v17 = objc_msgSend_NF_stringForKey_(v13, v16, @"TagSerialNumber");
          v18 = v17;
          if (v15)
          {
            v19 = v17 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {

            v29 = 0;
          }

          else
          {
            v27 = objc_alloc(MEMORY[0x277CBEA60]);
            v29 = objc_msgSend_initWithObjects_(v27, v28, v15, v18, 0);

LABEL_18:
            v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0);
            v33 = objc_msgSend_objectAtIndexedSubscript_(v29, v32, 1);
            v15 = objc_msgSend__createAccessDictionaryFromICCode_serialNumber_maximumFilterStringLength_(self, v34, v31, v33, length);

            if (objc_msgSend_count(v15, v35, v36))
            {
              objc_msgSend_addObject_(self->_iso15693TagAccessFilters, v37, v15);
            }
          }

          goto LABEL_21;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v29 = 0;
          goto LABEL_18;
        }

        v21 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v30, v20);
        v23 = objc_msgSend_stringByTrimmingCharactersInSet_(v13, v22, v21);
        v29 = objc_msgSend_componentsSeparatedByString_(v23, v24, @":");

        if (objc_msgSend_count(v29, v25, v26) == 2)
        {
          goto LABEL_18;
        }

LABEL_21:

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v38, &v41, v45, 16);
      if (!v10)
      {
LABEL_23:

        specifierCopy = v40;
        break;
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAIDStringValid:(id)valid
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA900];
  validCopy = valid;
  v8 = objc_msgSend_characterSetWithCharactersInString_(v5, v7, @"0123456789ABCDEF");
  v11 = objc_msgSend_uppercaseString(validCopy, v9, v10);

  if (objc_msgSend_length(v11, v12, v13) <= 9)
  {
    v16 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v18 = off_27DA9DE50[specific];
      if (v18)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v21 = 45;
        if (isMetaClass)
        {
          v21 = 43;
        }

        v18(5, "%c[%{public}s %{public}s]:%i Identifier string does not meet the minimum required length, %{public}@", v21, ClassName, Name, 195, v11);
        v16 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v22 = dispatch_get_specific(v16);
      v23 = NFSharedLogGetLogger(v22);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v24 = object_getClass(self);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      *buf = 67110146;
      v65 = v25;
      v66 = 2082;
      v67 = object_getClassName(self);
      v68 = 2082;
      v69 = sel_getName(a2);
      v70 = 1024;
      v71 = 195;
      v72 = 2114;
      v73 = v11;
      v26 = "%c[%{public}s %{public}s]:%i Identifier string does not meet the minimum required length, %{public}@";
LABEL_39:
      _os_log_impl(&dword_22EEC4000, v23, OS_LOG_TYPE_DEFAULT, v26, buf, 0x2Cu);
LABEL_40:

      IsMember = 0;
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (objc_msgSend_length(v11, v14, v15) >= 0x21)
  {
    v29 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v30 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v30 < 5)
    {
      v31 = off_27DA9DE50[v30];
      if (v31)
      {
        v32 = object_getClass(self);
        v33 = class_isMetaClass(v32);
        v59 = object_getClassName(self);
        v62 = sel_getName(a2);
        v34 = 45;
        if (v33)
        {
          v34 = 43;
        }

        v31(5, "%c[%{public}s %{public}s]:%i Identifier string exceeds the maximum length, %{public}@", v34, v59, v62, 198, v11);
        v29 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v35 = dispatch_get_specific(v29);
      v23 = NFSharedLogGetLogger(v35);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v36 = object_getClass(self);
      if (class_isMetaClass(v36))
      {
        v37 = 43;
      }

      else
      {
        v37 = 45;
      }

      *buf = 67110146;
      v65 = v37;
      v66 = 2082;
      v67 = object_getClassName(self);
      v68 = 2082;
      v69 = sel_getName(a2);
      v70 = 1024;
      v71 = 198;
      v72 = 2114;
      v73 = v11;
      v26 = "%c[%{public}s %{public}s]:%i Identifier string exceeds the maximum length, %{public}@";
      goto LABEL_39;
    }

    goto LABEL_43;
  }

  if (objc_msgSend_length(v11, v27, v28))
  {
    v47 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v48 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v48 < 5)
    {
      v49 = off_27DA9DE50[v48];
      if (v49)
      {
        v50 = object_getClass(self);
        v51 = class_isMetaClass(v50);
        v60 = object_getClassName(self);
        v63 = sel_getName(a2);
        v52 = 45;
        if (v51)
        {
          v52 = 43;
        }

        v49(5, "%c[%{public}s %{public}s]:%i Invalid AID entry: %{public}@", v52, v60, v63, 201, v11);
        v47 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v53 = dispatch_get_specific(v47);
      v23 = NFSharedLogGetLogger(v53);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v54 = object_getClass(self);
      if (class_isMetaClass(v54))
      {
        v55 = 43;
      }

      else
      {
        v55 = 45;
      }

      *buf = 67110146;
      v65 = v55;
      v66 = 2082;
      v67 = object_getClassName(self);
      v68 = 2082;
      v69 = sel_getName(a2);
      v70 = 1024;
      v71 = 201;
      v72 = 2114;
      v73 = v11;
      v26 = "%c[%{public}s %{public}s]:%i Invalid AID entry: %{public}@";
      goto LABEL_39;
    }

LABEL_43:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  if (objc_msgSend_length(v11, v38, v39))
  {
    v41 = 0;
    do
    {
      v42 = objc_msgSend_characterAtIndex_(v11, v40, v41);
      IsMember = objc_msgSend_characterIsMember_(v8, v43, v42);
      if ((IsMember & 1) == 0)
      {
        break;
      }

      ++v41;
    }

    while (v41 < objc_msgSend_length(v11, v44, v45));
  }

  else
  {
    IsMember = 1;
  }

LABEL_41:

  v56 = *MEMORY[0x277D85DE8];
  return IsMember;
}

- (void)_initCoreNFCEntitlements:(id)entitlements secTask:(__SecTask *)task
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = objc_msgSend_getAppInfoDictionary(self, a2, entitlements);
  v6 = objc_msgSend_NF_stringForKey_(v25, v5, @"NFCReaderUsageDescription");
  if (objc_msgSend_length(v6, v7, v8))
  {
    objc_storeStrong(&self->_readerPurposeString, v6);
  }

  v24 = v6;
  v10 = objc_msgSend__arrayValueOfEntitlement_secTask_(self, v9, @"com.apple.developer.nfc.readersession.formats", task);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (objc_msgSend_isEqualToString_(v17, v18, @"NDEF"))
          {
            self->_ndefReaderAccess = 1;
          }

          else if (objc_msgSend_isEqualToString_(v17, v18, @"ISO15693"))
          {
            v20 = objc_msgSend__arrayValueOfEntitlement_secTask_(self, v19, @"com.apple.developer.nfc.readersession.iso15693.tag-identifiers", task);
            objc_msgSend__initISO15693TagSpecifier_(self, v21, v20);
            self->_iso15693ReaderAccess = 1;
          }

          else if (objc_msgSend_isEqualToString_(v17, v19, @"VAS"))
          {
            self->_vasReaderAccess = 1;
          }

          else if (objc_msgSend_isEqualToString_(v17, v18, @"TAG"))
          {
            *&self->_ndefReaderAccess = 257;
          }

          else if (objc_msgSend_isEqualToString_(v17, v18, @"PACE"))
          {
            self->_tagReaderAccess = 1;
            self->_nfcTagReaderPACEPollingAllow = 1;
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, &v27, v31, 16);
    }

    while (v14);
  }

  objc_msgSend__initISO7816PermissibleAIDListWithSecTask_infoPlist_(self, v13, task, v25);
  objc_msgSend__initCardSessionEntitlementsWithSecTask_(self, v22, task);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_initISO7816PermissibleAIDListWithSecTask:(__SecTask *)task infoPlist:(id)plist
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__arrayValueOfEntitlement_secTask_(self, a2, @"com.apple.developer.nfc.readersession.iso7816.select-identifiers.trusted", task);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v20, v24, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend__isAIDStringValid_(self, v12, v11))
        {
          v13 = objc_msgSend_NF_dataWithHexString_(MEMORY[0x277CBEA90], v12, v11);
          if (objc_msgSend_length(v13, v14, v15) && objc_msgSend_length(v13, v16, v17) <= 0x10)
          {
            objc_msgSend_addObject_(self->_trustedISO7816AidList, v18, v13);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v20, v24, 16);
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_initCardSessionEntitlementsWithSecTask:(__SecTask *)task
{
  v56 = *MEMORY[0x277D85DE8];
  self->_nfcCardSessionAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(self, a2, @"com.apple.developer.nfc.hce", task);
  v6 = objc_opt_new();
  nfcCardSessionAIDPrefixList = self->_nfcCardSessionAIDPrefixList;
  self->_nfcCardSessionAIDPrefixList = v6;

  v9 = objc_msgSend__arrayValueOfEntitlement_secTask_(self, v8, @"com.apple.developer.nfc.hce.iso7816.select-identifier-prefixes", task);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v41, v55, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend__isAIDStringValid_(self, v18, v17))
        {
          v19 = objc_msgSend_NF_dataWithHexString_(MEMORY[0x277CBEA90], v18, v17);
          if (objc_msgSend_length(v19, v20, v21) && objc_msgSend_length(v19, v22, v23) <= 0x10)
          {
            objc_msgSend_addObject_(self->_nfcCardSessionAIDPrefixList, v24, v19);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v41, v55, 16);
    }

    while (v14);
  }

  if (self->_nfcCardSessionAccess && objc_msgSend_count(self->_nfcCardSessionAIDPrefixList, v12, v13))
  {
    v25 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v27 = off_27DA9DE50[specific];
    if (v27)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v27(5, "%c[%{public}s %{public}s]:%i com.apple.developer.nfc.hce.iso7816.select-identifier-prefixes={public}%@", v32, ClassName, Name, 290, self->_nfcCardSessionAIDPrefixList);
      v25 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v33 = dispatch_get_specific(v25);
    v34 = NFSharedLogGetLogger(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(self);
      v38 = sel_getName(a2);
      v39 = self->_nfcCardSessionAIDPrefixList;
      *buf = 67110146;
      v46 = v36;
      v47 = 2082;
      v48 = v37;
      v49 = 2082;
      v50 = v38;
      v51 = 1024;
      v52 = 290;
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_22EEC4000, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i com.apple.developer.nfc.hce.iso7816.select-identifier-prefixes={public}%@", buf, 0x2Cu);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (NFServiceWhitelistChecker)initWithConnection:(id)connection coreNFCConnection:(BOOL)cConnection
{
  cConnectionCopy = cConnection;
  v92 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v87.receiver = self;
  v87.super_class = NFServiceWhitelistChecker;
  v10 = [(NFServiceWhitelistChecker *)&v87 init];
  if (!v10)
  {
    goto LABEL_33;
  }

  v11 = objc_msgSend_processIdentifier(connectionCopy, v8, v9);
  v10->_clientProcessIdentifier = v11;
  memset(buffer, 0, 255);
  proc_name(v11, buffer, 0xFEu);
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = objc_msgSend_initWithUTF8String_(v12, v13, buffer);
  clientName = v10->_clientName;
  v10->_clientName = v14;

  v16 = objc_opt_new();
  iso15693TagAccessFilters = v10->_iso15693TagAccessFilters;
  v10->_iso15693TagAccessFilters = v16;

  v18 = objc_opt_new();
  trustedISO7816AidList = v10->_trustedISO7816AidList;
  v10->_trustedISO7816AidList = v18;

  v22 = *MEMORY[0x277CBECE8];
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy, v20, v21);
  }

  else
  {
    memset(token, 0, 32);
  }

  v23 = SecTaskCreateWithAuditToken(v22, token);
  if (v23)
  {
    v25 = v23;
    v10->_internalAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v24, @"com.apple.nfcd.hwmanager", v23);
    v10->_seshatAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v26, @"com.apple.nfcd.seshat", v25);
    v10->_miniNVWriteAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v27, @"com.apple.nfcd.mininv.write", v25);
    v10->_lpmFactoryTest = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v28, @"com.apple.nfcd.lpm.factorytest", v25);
    v10->_remoteAdminAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v29, @"com.apple.seld.tsmmanager", v25);
    v31 = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v30, @"com.apple.UIKit.vends-view-services", v25);
    v10->_allowBackgroundedSession = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v32, @"com.apple.internal.nfc.allow.backgrounded.session", v25) & v31;
    v10->_ignoreAppStateMonitor = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v33, @"com.apple.internal.nfc.ignore.appstate", v25);
    v10->_singleUserAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v34, @"com.apple.nfcd.singleUser", v25);
    v10->_purpleTrustAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v35, @"com.apple.nfcd.session.trust", v25);
    v10->_surfSessionAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v36, @"com.apple.nfcd.session.peerpayment", v25);
    v10->_eCommerceAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v37, @"com.apple.nfcd.session.ecommerce", v25);
    v10->_cardMigrationAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v38, @"com.apple.nfcd.session.cardmigration", v25);
    v10->_seSessionAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v39, @"com.apple.nfcd.session.se", v25);
    v10->_seLoggingSessionAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v40, @"com.apple.nfcd.session.selogging", v25);
    v10->_lpemConfigSessionAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v41, @"com.apple.nfcd.session.lpemConfig", v25);
    v10->_readerInternalAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v42, @"com.apple.nfcd.session.reader.internal", v25);
    v10->_cardModeAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v43, @"com.apple.nfcd.session.fieldOperations", v25);
    v10->_hceAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v44, @"com.apple.nfcd.hce", v25);
    v10->_radioToggle = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v45, @"com.apple.nfcd.radio.powertoggle", v25);
    v10->_dontResetAssertion = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v46, @"com.apple.nfcd.assertion.dontreset", v25);
    v10->_pollingProfileUpdate = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v47, @"com.apple.nfcd.session.reader.internal.update.polling.profile", v25);
    v10->_bgTagReadingAssertion = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v48, @"com.apple.nfcd.assertion.tagreading", v25);
    v10->_chAssertion = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v49, @"com.apple.nfcd.assertion.handover", v25);
    v10->_nfcHardwareRegistersAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v50, @"com.apple.nfcd.session.hardwareRegisters", v25);
    if (cConnectionCopy)
    {
      objc_msgSend__initCoreNFCEntitlements_secTask_(v10, v51, connectionCopy, v25);
    }

    v10->_useUnfilteredApplets = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v51, @"com.apple.internal.nfc.use.unfiltered.applets", v25);
    v54 = objc_msgSend__stringValueOfEntitlement_secTask_(v10, v52, @"application-identifier", v25);
    if (v54)
    {
      objc_msgSend_setApplicationIdentifier_(v10, v53, v54);
LABEL_32:
      v10->_seCredentialManagerAccess = objc_msgSend__BOOLValueOfEntitlement_secTask_(v10, v55, @"com.apple.nfcd.session.credential.manager", v25);
      CFRelease(v25);

LABEL_33:
      v68 = v10;
      goto LABEL_34;
    }

    v69 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v71 = off_27DA9DE50[specific];
      if (v71)
      {
        Class = object_getClass(v10);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v10);
        Name = sel_getName(a2);
        v74 = 45;
        if (isMetaClass)
        {
          v74 = 43;
        }

        v71(6, "%c[%{public}s %{public}s]:%i Missing or invalid entitlement %{public}@ to be of type <string>, ignoring", v74, ClassName, Name, 355, @"application-identifier");
        v69 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v75 = dispatch_get_specific(v69);
      v76 = NFSharedLogGetLogger(v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = object_getClass(v10);
        if (class_isMetaClass(v77))
        {
          v78 = 43;
        }

        else
        {
          v78 = 45;
        }

        v79 = object_getClassName(v10);
        v80 = sel_getName(a2);
        *token = 67110146;
        *&token[4] = v78;
        *&token[8] = 2082;
        *&token[10] = v79;
        *&token[18] = 2082;
        *&token[20] = v80;
        *&token[28] = 1024;
        *&token[30] = 355;
        v89 = 2114;
        v90 = @"application-identifier";
        _os_log_impl(&dword_22EEC4000, v76, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Missing or invalid entitlement %{public}@ to be of type <string>, ignoring", token, 0x2Cu);
      }

      goto LABEL_32;
    }

LABEL_35:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v56 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v57 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v57 >= 5)
  {
    goto LABEL_35;
  }

  v58 = off_27DA9DE50[v57];
  if (v58)
  {
    v59 = object_getClass(v10);
    v60 = class_isMetaClass(v59);
    v83 = object_getClassName(v10);
    v85 = sel_getName(a2);
    v61 = 45;
    if (v60)
    {
      v61 = 43;
    }

    v58(3, "%c[%{public}s %{public}s]:%i Cannot create SecTaskRef with XPC Connection: %{public}@", v61, v83, v85, 314, connectionCopy);
    v56 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v62 = dispatch_get_specific(v56);
  v63 = NFSharedLogGetLogger(v62);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    v64 = object_getClass(v10);
    if (class_isMetaClass(v64))
    {
      v65 = 43;
    }

    else
    {
      v65 = 45;
    }

    v66 = object_getClassName(v10);
    v67 = sel_getName(a2);
    *token = 67110146;
    *&token[4] = v65;
    *&token[8] = 2082;
    *&token[10] = v66;
    *&token[18] = 2082;
    *&token[20] = v67;
    *&token[28] = 1024;
    *&token[30] = 314;
    v89 = 2114;
    v90 = connectionCopy;
    _os_log_impl(&dword_22EEC4000, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Cannot create SecTaskRef with XPC Connection: %{public}@", token, 0x2Cu);
  }

  v68 = 0;
LABEL_34:

  v81 = *MEMORY[0x277D85DE8];
  return v68;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v11 = objc_msgSend_init(v7, v8, v9);
  if (v11)
  {
    v12 = objc_msgSend_copyWithZone_(self->_clientName, v10, zone);
    v13 = *(v11 + 32);
    *(v11 + 32) = v12;

    *(v11 + 65) = self->_internalAccess;
    *(v11 + 60) = self->_iso15693ReaderAccess;
    *(v11 + 66) = self->_seshatAccess;
    *(v11 + 67) = self->_miniNVWriteAccess;
    *(v11 + 68) = self->_lpmFactoryTest;
    *(v11 + 69) = self->_remoteAdminAccess;
    v15 = objc_msgSend_copyWithZone_(self->_iso15693TagAccessFilters, v14, zone);
    v16 = *(v11 + 8);
    *(v11 + 8) = v15;

    *(v11 + 62) = self->_ndefReaderAccess;
    v18 = objc_msgSend_copyWithZone_(self->_readerPurposeString, v17, zone);
    v19 = *(v11 + 40);
    *(v11 + 40) = v18;

    *(v11 + 70) = self->_allowBackgroundedSession;
    *(v11 + 71) = self->_ignoreAppStateMonitor;
    *(v11 + 61) = self->_vasReaderAccess;
    v21 = objc_msgSend_copyWithZone_(self->_applicationIdentifier, v20, zone);
    v22 = *(v11 + 48);
    *(v11 + 48) = v21;

    v24 = objc_msgSend_copyWithZone_(self->_trustedISO7816AidList, v23, zone);
    v25 = *(v11 + 16);
    *(v11 + 16) = v24;

    *(v11 + 63) = self->_tagReaderAccess;
    *(v11 + 56) = self->_clientProcessIdentifier;
    *(v11 + 87) = self->_dontResetAssertion;
    *(v11 + 74) = self->_singleUserAccess;
    *(v11 + 75) = self->_purpleTrustAccess;
    *(v11 + 76) = self->_surfSessionAccess;
    *(v11 + 77) = self->_eCommerceAccess;
    *(v11 + 79) = self->_seSessionAccess;
    *(v11 + 80) = self->_seLoggingSessionAccess;
    *(v11 + 81) = self->_lpemConfigSessionAccess;
    *(v11 + 82) = self->_readerInternalAccess;
    *(v11 + 83) = self->_cardModeAccess;
    *(v11 + 84) = self->_hceAccess;
    *(v11 + 85) = self->_radioToggle;
    *(v11 + 86) = self->_pollingProfileUpdate;
    *(v11 + 73) = self->_useUnfilteredApplets;
    *(v11 + 72) = self->_nfcTagReaderPACEPollingAllow;
    *(v11 + 88) = self->_bgTagReadingAssertion;
    *(v11 + 89) = self->_chAssertion;
    *(v11 + 90) = self->_seCredentialManagerAccess;
    *(v11 + 64) = self->_nfcCardSessionAccess;
    v27 = objc_msgSend_copyWithZone_(self->_nfcCardSessionAIDPrefixList, v26, zone);
    v28 = *(v11 + 24);
    *(v11 + 24) = v27;

    *(v11 + 91) = self->_nfcHardwareRegistersAccess;
  }

  return v11;
}

- (unsigned)validateISO15693TagAcesssWithUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v8 = objc_msgSend_bytes(v5, v6, v7);
  if (objc_msgSend_length(dCopy, v9, v10) == 8 && *(v8 + 7) == 224)
  {
    if (objc_msgSend_count(self->_iso15693TagAccessFilters, v11, v12))
    {
      v13 = objc_alloc(MEMORY[0x277CBEB28]);
      v16 = objc_msgSend_initWithCapacity_(v13, v14, 6);
      v17 = *(v8 + 6);
      v18 = v8 + 5;
      v19 = -6;
      do
      {
        objc_msgSend_appendBytes_length_(v16, v15, v18--, 1);
      }

      while (!__CFADD__(v19++, 1));
      v21 = objc_msgSend_validateISO15693TagAccessWithManufacturerCode_serialNumber_(self, v15, v17, v16);
    }

    else
    {
      v21 = 27;
    }
  }

  else
  {
    v21 = 10;
  }

  return v21;
}

- (unsigned)validateISO15693TagAccessWithManufacturerCode:(unint64_t)code serialNumber:(id)number
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_NF_asHexString(number, a2, code);
  if (objc_msgSend_length(v6, v7, v8))
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = self->_iso15693TagAccessFilters;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v59, v63, 16);
    if (v10)
    {
      v12 = v10;
      v13 = *v60;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v60 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v59 + 1) + 8 * v14);
        v16 = objc_msgSend_objectForKeyedSubscript_(v15, v11, @"TagManufacturerCode");
        v19 = objc_msgSend_unsignedIntegerValue(v16, v17, v18);

        if (v19 != code)
        {
          goto LABEL_19;
        }

        v20 = objc_msgSend_NF_stringForKey_(v15, v11, @"TagSerialNumber");
        if (objc_msgSend_hasPrefix_(v20, v21, @"*"))
        {
          v24 = objc_msgSend_length(v20, v22, v23);
          v26 = objc_msgSend_substringWithRange_(v20, v25, 1, v24 - 1);
          v29 = objc_msgSend_length(v26, v27, v28);
          if (v29 <= objc_msgSend_length(v6, v30, v31))
          {
            v34 = objc_msgSend_length(v6, v32, v33);
            v37 = objc_msgSend_length(v26, v35, v36);
            v39 = objc_msgSend_substringFromIndex_(v6, v38, v34 - v37);
            v41 = objc_msgSend_caseInsensitiveCompare_(v39, v40, v26);

            goto LABEL_17;
          }
        }

        else
        {
          if (!objc_msgSend_hasSuffix_(v20, v22, @"*"))
          {
            if (!objc_msgSend_caseInsensitiveCompare_(v6, v42, v20))
            {
              goto LABEL_23;
            }

            goto LABEL_18;
          }

          v44 = objc_msgSend_length(v20, v42, v43);
          v26 = objc_msgSend_substringToIndex_(v20, v45, v44 - 1);
          v48 = objc_msgSend_length(v26, v46, v47);
          if (v48 <= objc_msgSend_length(v6, v49, v50))
          {
            v53 = objc_msgSend_length(v26, v51, v52);
            v41 = objc_msgSend_compare_options_range_(v6, v54, v26, 1, 0, v53);
LABEL_17:

            if (!v41)
            {
LABEL_23:

              v55 = 0;
              goto LABEL_24;
            }

            goto LABEL_18;
          }
        }

LABEL_18:
LABEL_19:
        if (v12 == ++v14)
        {
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v59, v63, 16);
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v55 = 32;
LABEL_24:
  }

  else
  {
    v55 = 10;
  }

  v56 = *MEMORY[0x277D85DE8];
  return v55;
}

- (unsigned)validateISO15693TagAccessWithManufacturerCode:(unint64_t)code
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_iso15693TagAccessFilters;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_objectForKeyedSubscript_(*(*(&v18 + 1) + 8 * i), v7, @"TagManufacturerCode", v18);
        v14 = objc_msgSend_unsignedIntegerValue(v11, v12, v13);

        if (v14 == code)
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v18, v22, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 32;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)getAppInfoDictionary
{
  v2 = MEMORY[0x28223BE20](self, a2);
  v17 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  v3 = proc_pidpath(*(v2 + 56), buffer, 0x1000u);
  if (v3 < 1)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = objc_msgSend_initWithBytes_length_encoding_(v5, v6, buffer, v4, 4);
  v9 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v8, v7, 0);
  v12 = objc_msgSend_URLByDeletingLastPathComponent(v9, v10, v11);
  if (!v9 || (v13 = CFBundleCopyInfoDictionaryForURL(v9)) == 0)
  {
    if (v12)
    {
      v13 = CFBundleCopyInfoDictionaryInDirectory(v12);
    }

    else
    {
      v13 = 0;
    }
  }

  if (!v13)
  {
LABEL_8:
    v13 = objc_opt_new();
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)bundleIdentifier
{
  v3 = objc_msgSend_getAppInfoDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"CFBundleIdentifier");

  return v5;
}

- (double)sessionTimeLimit
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_iso15693ReaderAccess || self->_ndefReaderAccess || self->_vasReaderAccess || self->_tagReaderAccess || self->_nfcCardSessionAccess)
  {
    goto LABEL_6;
  }

  v4 = 0.0;
  if (!self->_internalAccess)
  {
    goto LABEL_7;
  }

  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v10 = objc_msgSend_BOOLForKey_(v8, v9, @"BurnoutTimerDisable");

  if (!v10)
  {
LABEL_6:
    v4 = 60.0;
  }

  else
  {
    v11 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v13 = off_27DA9DE50[specific];
    if (v13)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(6, "%c[%{public}s %{public}s]:%i Disabled", v17, ClassName, Name, 524);
      v11 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v18 = dispatch_get_specific(v11);
    v19 = NFSharedLogGetLogger(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v24 = v21;
      v25 = 2082;
      v26 = object_getClassName(self);
      v27 = 2082;
      v28 = sel_getName(a2);
      v29 = 1024;
      v30 = 524;
      _os_log_impl(&dword_22EEC4000, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabled", buf, 0x22u);
    }
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)externalReaderAccessAllow
{
  if ((objc_msgSend_nfcNDEFReaderAccess(self, a2, v2) & 1) != 0 || (objc_msgSend_nfcISO15693ReaderAccess(self, v4, v5) & 1) != 0 || (objc_msgSend_nfcTagReaderAccess(self, v6, v7) & 1) != 0 || (v10 = objc_msgSend_nfcVASReaderAccess(self, v8, v9)) != 0)
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)_stringFromArray:(id)array
{
  arrayCopy = array;
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = objc_msgSend_initWithString_(v4, v5, @"[");
  if (objc_msgSend_count(arrayCopy, v7, v8))
  {
    v10 = 0;
    while (1)
    {
      if (v10)
      {
        objc_msgSend_appendString_(v6, v9, @", ");
      }

      v11 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v9, v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v16, v10);
        objc_msgSend_appendFormat_(v6, v17, @"%@", v14);
        goto LABEL_9;
      }

LABEL_10:

      if (objc_msgSend_count(arrayCopy, v18, v19) <= ++v10)
      {
        goto LABEL_11;
      }
    }

    v14 = objc_msgSend_NF_asHexString(v11, v12, v13);
    objc_msgSend_appendString_(v6, v15, v14);
LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
  objc_msgSend_appendString_(v6, v9, @"]");

  return v6;
}

- (id)_stringFromISO15693AccessFilterList
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_msgSend_initWithString_(v3, v4, @"[");
  if (objc_msgSend_count(self->_iso15693TagAccessFilters, v6, v7))
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        objc_msgSend_appendString_(v5, v8, @", ");
      }

      v10 = objc_msgSend_objectAtIndexedSubscript_(self->_iso15693TagAccessFilters, v8, v9);
      v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"TagManufacturerCode");
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_iso15693TagAccessFilters, v13, v9);
      v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"TagSerialNumber");
      objc_msgSend_appendFormat_(v5, v17, @"{%@=%@, %@=%@}", @"TagManufacturerCode", v12, @"TagSerialNumber", v16);

      ++v9;
    }

    while (objc_msgSend_count(self->_iso15693TagAccessFilters, v18, v19) > v9);
  }

  objc_msgSend_appendString_(v5, v8, @"]");

  return v5;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_initWithFormat_(v4, v5, @"Application Identifier: %@", self->_applicationIdentifier);
  objc_msgSend_addObject_(v3, v7, v6);

  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_ndefReaderAccess)
  {
    v10 = objc_msgSend_initWithFormat_(v8, v9, @"NDEF: %@", @"Y");
  }

  else
  {
    v10 = objc_msgSend_initWithFormat_(v8, v9, @"NDEF: %@", @"N");
  }

  v12 = v10;
  objc_msgSend_addObject_(v3, v11, v10);

  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = objc_msgSend_initWithFormat_(v13, v14, @"PollingProfileUpdate: %d", self->_pollingProfileUpdate);
  objc_msgSend_addObject_(v3, v16, v15);

  if (objc_msgSend_count(self->_iso15693TagAccessFilters, v17, v18))
  {
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = objc_msgSend__stringFromISO15693AccessFilterList(self, v22, v23);
    v26 = objc_msgSend_initWithFormat_(v21, v25, @"Legacy ISO15693 filter List=%@", v24);
    objc_msgSend_addObject_(v3, v27, v26);
  }

  if (objc_msgSend_count(self->_trustedISO7816AidList, v19, v20))
  {
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v31 = objc_msgSend_array(self->_trustedISO7816AidList, v29, v30);
    v33 = objc_msgSend__stringFromArray_(self, v32, v31);
    v35 = objc_msgSend_initWithFormat_(v28, v34, @"ISO7816 Set=%@", v33);
    objc_msgSend_addObject_(v3, v36, v35);
  }

  v37 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_vasReaderAccess)
  {
    v39 = objc_msgSend_initWithFormat_(v37, v38, @"VAS: %@", @"Y");
  }

  else
  {
    v39 = objc_msgSend_initWithFormat_(v37, v38, @"VAS: %@", @"N");
  }

  v41 = v39;
  objc_msgSend_addObject_(v3, v40, v39);

  v42 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_tagReaderAccess)
  {
    v44 = objc_msgSend_initWithFormat_(v42, v43, @"TAG: %@", @"Y");
  }

  else
  {
    v44 = objc_msgSend_initWithFormat_(v42, v43, @"TAG: %@", @"N");
  }

  v46 = v44;
  objc_msgSend_addObject_(v3, v45, v44);

  v47 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_nfcTagReaderPACEPollingAllow)
  {
    v49 = objc_msgSend_initWithFormat_(v47, v48, @"PACEPoll: %@", @"Y");
  }

  else
  {
    v49 = objc_msgSend_initWithFormat_(v47, v48, @"PACEPoll: %@", @"N");
  }

  v51 = v49;
  objc_msgSend_addObject_(v3, v50, v49);

  v52 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_nfcCardSessionAccess)
  {
    v54 = objc_msgSend_initWithFormat_(v52, v53, @"CardSession: %@", @"Y");
  }

  else
  {
    v54 = objc_msgSend_initWithFormat_(v52, v53, @"CardSession: %@", @"N");
  }

  v56 = v54;
  objc_msgSend_addObject_(v3, v55, v54);

  v57 = objc_alloc(MEMORY[0x277CCACA8]);
  v60 = objc_msgSend_array(self->_nfcCardSessionAIDPrefixList, v58, v59);
  v62 = objc_msgSend__stringFromArray_(self, v61, v60);
  v64 = objc_msgSend_initWithFormat_(v57, v63, @"CardSessionAIDPrefixList: %@", v62);
  objc_msgSend_addObject_(v3, v65, v64);

  v68 = objc_msgSend_description(v3, v66, v67);

  return v68;
}

@end