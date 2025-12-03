@interface TTSLocaleUtilities
+ (id)sharedInstance;
- (NSDictionary)canonicalLanguageCodeVoiceNamesData;
- (NSDictionary)generalLanguageCodeData;
- (NSDictionary)voiceIdSampleStringData;
- (TTSLocaleUtilities)init;
- (id)defaultVoiceIdentifierForGeneralLanguageCode:(id)code;
- (id)defaultVoiceIdentifierForVoiceName:(id)name;
- (id)sampleStringForVoiceIdentifier:(id)identifier withPreferredLocaleID:(id)d;
@end

@implementation TTSLocaleUtilities

- (TTSLocaleUtilities)init
{
  v10.receiver = self;
  v10.super_class = TTSLocaleUtilities;
  v6 = [(TTSLocaleUtilities *)&v10 init];
  if (v6)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4, v5);
    fallbackSampleStringCache = v6->_fallbackSampleStringCache;
    v6->_fallbackSampleStringCache = v7;
  }

  return v6;
}

+ (id)sharedInstance
{
  if (qword_1ED970E98 != -1)
  {
    sub_1A9578A18();
  }

  v3 = qword_1ED970EB0;

  return v3;
}

- (NSDictionary)canonicalLanguageCodeVoiceNamesData
{
  canonicalLanguageCodeVoiceNamesData = self->_canonicalLanguageCodeVoiceNamesData;
  if (!canonicalLanguageCodeVoiceNamesData)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = objc_opt_class();
    v9 = objc_msgSend_bundleForClass_(v4, v6, v5, v7, v8);
    v12 = objc_msgSend_pathForResource_ofType_(v9, v10, @"CanonicalLanguageCodeVoiceNamesMap", @"plist", v11);

    if (v12)
    {
      v16 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], v13, v12, v14, v15);
      v17 = self->_canonicalLanguageCodeVoiceNamesData;
      self->_canonicalLanguageCodeVoiceNamesData = v16;
    }

    else
    {
      v18 = AXTTSLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A9578A2C(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    canonicalLanguageCodeVoiceNamesData = self->_canonicalLanguageCodeVoiceNamesData;
  }

  return canonicalLanguageCodeVoiceNamesData;
}

- (NSDictionary)generalLanguageCodeData
{
  generalLanguageCodeData = self->_generalLanguageCodeData;
  if (!generalLanguageCodeData)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = objc_opt_class();
    v9 = objc_msgSend_bundleForClass_(v4, v6, v5, v7, v8);
    v12 = objc_msgSend_pathForResource_ofType_(v9, v10, @"GeneralLanguageCodeMap", @"plist", v11);

    if (v12)
    {
      v16 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], v13, v12, v14, v15);
      v17 = self->_generalLanguageCodeData;
      self->_generalLanguageCodeData = v16;
    }

    else
    {
      v18 = AXTTSLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A9578A2C(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    generalLanguageCodeData = self->_generalLanguageCodeData;
  }

  return generalLanguageCodeData;
}

- (NSDictionary)voiceIdSampleStringData
{
  voiceIdSampleStringData = self->_voiceIdSampleStringData;
  if (!voiceIdSampleStringData)
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = objc_opt_class();
    v9 = objc_msgSend_bundleForClass_(v4, v6, v5, v7, v8);
    v12 = objc_msgSend_pathForResource_ofType_(v9, v10, @"VoiceIdSampleStringMap", @"plist", v11);

    if (v12)
    {
      v16 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x1E695DF20], v13, v12, v14, v15);
      v17 = self->_voiceIdSampleStringData;
      self->_voiceIdSampleStringData = v16;
    }

    else
    {
      v18 = AXTTSLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A9578A64(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    voiceIdSampleStringData = self->_voiceIdSampleStringData;
  }

  return voiceIdSampleStringData;
}

- (id)defaultVoiceIdentifierForGeneralLanguageCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    v5 = AXCLanguageCanonicalFormToGeneralLanguage();
    if (objc_msgSend_isEqualToString_(v5, v6, codeCopy, v7, v8))
    {
      v13 = objc_msgSend_generalLanguageCodeData(self, v9, v10, v11, v12);
      v17 = objc_msgSend_objectForKey_(v13, v14, codeCopy, v15, v16);

      if (!v17)
      {
        v22 = objc_msgSend_sharedInstance(TTSAXResourceManager, v18, v19, v20, v21);
        v25 = objc_msgSend_resourcesWithLanguage_type_(v22, v23, codeCopy, 4, v24);
        v30 = objc_msgSend_firstObject(v25, v26, v27, v28, v29);
        v17 = objc_msgSend_voiceId(v30, v31, v32, v33, v34);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)sampleStringForVoiceIdentifier:(id)identifier withPreferredLocaleID:(id)d
{
  dCopy = d;
  v15 = objc_msgSend_lowercaseString(identifier, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend_voiceIdSampleStringData(self, v11, v12, v13, v14);
    v20 = objc_msgSend_objectForKey_(v16, v17, v15, v18, v19);

    if (!v20)
    {
      if (!objc_msgSend_containsString_(v15, v21, @"compact", v22, v23))
      {
        goto LABEL_9;
      }

      if (objc_msgSend_containsString_(v15, v24, @".super-compact.", v26, v27))
      {
        objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v28, @".super-compact.", @".compact.", v29);
      }

      else
      {
        objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v28, @".compact.", @".super-compact.", v29);
      }
      v30 = ;
      v35 = objc_msgSend_voiceIdSampleStringData(self, v31, v32, v33, v34);
      v20 = objc_msgSend_objectForKey_(v35, v36, v30, v37, v38);

      if (!v20)
      {
LABEL_9:
        v39 = objc_msgSend_sharedInstance(TTSAXResourceManager, v24, v25, v26, v27);
        v43 = objc_msgSend_resourceWithVoiceId_(v39, v40, v15, v41, v42);

        if (!v43)
        {
          goto LABEL_26;
        }

        selfCopy = self;
        objc_sync_enter(selfCopy);
        isPersonalVoice = objc_msgSend_isPersonalVoice(v43, v45, v46, v47, v48);
        if ((objc_msgSend_type(v43, v50, v51, v52, v53) == 3) | isPersonalVoice & 1)
        {
          v58 = 0;
        }

        else
        {
          v59 = objc_msgSend_fallbackSampleStringCache(selfCopy, v54, v55, v56, v57);
          v64 = objc_msgSend_primaryLanguage(v43, v60, v61, v62, v63);
          v58 = objc_msgSend_objectForKeyedSubscript_(v59, v65, v64, v66, v67);
        }

        objc_sync_exit(selfCopy);

        if (v58)
        {
          goto LABEL_23;
        }

        if ((objc_msgSend_type(v43, v68, v69, v70, v71) != 3 || objc_msgSend_subtype(v43, v72, v73, v74, v75) == 7 && objc_msgSend_footprint(v43, v76, v77, v78, v79) == 3) && isPersonalVoice)
        {
          if (!dCopy)
          {
            dCopy = objc_msgSend_primaryLanguage(v43, v72, v73, v74, v75);
          }

          v80 = MEMORY[0x1E696AAE8];
          v81 = objc_opt_class();
          v85 = objc_msgSend_bundleForClass_(v80, v82, v81, v83, v84);
          v58 = AXNSLocalizedStringForLocale();
        }

        else
        {
          v86 = MEMORY[0x1E696AAE8];
          v87 = objc_opt_class();
          v85 = objc_msgSend_bundleForClass_(v86, v88, v87, v89, v90);
          v95 = objc_msgSend_primaryLanguage(v43, v91, v92, v93, v94);
          v58 = AXNSLocalizedStringForLocale();
        }

        if (v58)
        {
LABEL_23:
          v96 = selfCopy;
          objc_sync_enter(v96);
          if (!((objc_msgSend_type(v43, v97, v98, v99, v100) == 3) | isPersonalVoice & 1))
          {
            v105 = objc_msgSend_fallbackSampleStringCache(v96, v101, v102, v103, v104);
            v110 = objc_msgSend_primaryLanguage(v43, v106, v107, v108, v109);
            objc_msgSend_setObject_forKeyedSubscript_(v105, v111, v58, v110, v112);
          }

          objc_sync_exit(v96);

          v117 = objc_msgSend_name(v43, v113, v114, v115, v116);
          v122 = objc_msgSend_primaryLanguage(v43, v118, v119, v120, v121);
          v125 = objc_msgSend_localizedName_forLanguage_(TTSSpeechVoice, v123, v117, v122, v124);

          v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v126, v58, v127, v128, v125);
        }

        else
        {
LABEL_26:
          v20 = 0;
        }
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)defaultVoiceIdentifierForVoiceName:(id)name
{
  v54 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = objc_msgSend_canonicalLanguageCodeVoiceNamesData(self, v4, v5, v6, v7, 0);
    v14 = objc_msgSend_allKeys(v9, v10, v11, v12, v13);

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v47, v53, 16);
    if (v16)
    {
      v21 = v16;
      v22 = *v48;
LABEL_4:
      v23 = 0;
      while (1)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v14);
        }

        v24 = *(*(&v47 + 1) + 8 * v23);
        v25 = objc_msgSend_canonicalLanguageCodeVoiceNamesData(self, v17, v18, v19, v20);
        v29 = objc_msgSend_objectForKey_(v25, v26, v24, v27, v28);

        v34 = objc_msgSend_lowercaseString(nameCopy, v30, v31, v32, v33);
        v38 = objc_msgSend_containsObject_(v29, v35, v34, v36, v37);

        if (v38)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v47, v53, 16);
          if (v21)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v39 = v24;

      if (!v39)
      {
        goto LABEL_13;
      }

      v40 = AXCLanguageCanonicalFormToGeneralLanguage();
      v44 = objc_msgSend_defaultVoiceIdentifierForGeneralLanguageCode_(self, v41, v40, v42, v43);
    }

    else
    {
LABEL_10:

LABEL_13:
      v39 = AXTTSLogResourceManager();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = nameCopy;
        _os_log_impl(&dword_1A9324000, v39, OS_LOG_TYPE_INFO, "Unable to find language code for voice name: %@", buf, 0xCu);
      }

      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

@end