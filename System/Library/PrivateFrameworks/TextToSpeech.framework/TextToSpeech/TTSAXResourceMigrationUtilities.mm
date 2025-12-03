@interface TTSAXResourceMigrationUtilities
+ (id)sharedInstance;
- (id)updatedIdentifierForLegacyIdentifier:(id)identifier withLanguageCode:(id)code;
@end

@implementation TTSAXResourceMigrationUtilities

+ (id)sharedInstance
{
  if (qword_1ED970E90 != -1)
  {
    sub_1A9577C00();
  }

  v3 = qword_1ED970EA8;

  return v3;
}

- (id)updatedIdentifierForLegacyIdentifier:(id)identifier withLanguageCode:(id)code
{
  v139 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  codeCopy = code;
  if (identifierCopy)
  {
    if (objc_msgSend_isEqualToString_(identifierCopy, v6, @"com.apple.speech.voice.Alex", v7, v8))
    {
      v14 = @"com.apple.speech.synthesis.voice.Alex";
      goto LABEL_37;
    }

    v16 = objc_msgSend_lowercaseString(identifierCopy, v10, v11, v12, v13);
    v20 = objc_msgSend_containsObject_(&unk_1F1D0F858, v17, v16, v18, v19);

    if (v20)
    {
      v14 = identifierCopy;
      goto LABEL_37;
    }

    v25 = objc_msgSend_sharedInstance(TTSRegexCache, v21, v22, v23, v24);
    v28 = objc_msgSend_regexForString_atStart_(v25, v26, @"com\\.apple\\.ttsbundle\\.(?<name>[^.]*)\\-(?<quality>premium|compact|Premium|Compact)$", 1, v27);

    v33 = objc_msgSend_length(identifierCopy, v29, v30, v31, v32);
    v35 = objc_msgSend_firstMatchInString_options_range_(v28, v34, identifierCopy, 2, 0, v33);
    if (!objc_msgSend_numberOfRanges(v35, v36, v37, v38, v39))
    {
      v14 = identifierCopy;
LABEL_36:

      goto LABEL_37;
    }

    v43 = objc_msgSend_rangeWithName_(v35, v40, @"name", v41, v42);
    v45 = v44;
    v48 = objc_msgSend_rangeWithName_(v35, v44, @"quality", v46, v47);
    v50 = v49;
    v52 = objc_msgSend_substringWithRange_(identifierCopy, v49, v43, v45, v51);
    v55 = objc_msgSend_substringWithRange_(identifierCopy, v53, v48, v50, v54);
    v60 = objc_msgSend_lowercaseString(v55, v56, v57, v58, v59);

    if (objc_msgSend_containsString_(v52, v61, @"-", v62, v63))
    {
      v67 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v52, v64, @"-", &stru_1F1CFF8D8, v66);
      v72 = objc_msgSend_lowercaseString(v67, v68, v69, v70, v71);
      v77 = objc_msgSend_capitalizedString(v72, v73, v74, v75, v76);

      v52 = v77;
    }

    isEqualToString = objc_msgSend_isEqualToString_(v60, v64, @"compact", v65, v66);
    if (codeCopy && isEqualToString)
    {
      v83 = objc_msgSend_sharedInstance(TTSLocaleUtilities, v79, v80, v81, v82);
      v14 = objc_msgSend_defaultVoiceIdentifierForGeneralLanguageCode_(v83, v84, codeCopy, v85, v86);

      if (v14)
      {
LABEL_35:

        goto LABEL_36;
      }
    }

    else if (!codeCopy)
    {
      v92 = objc_msgSend_sharedInstance(TTSAXResourceManager, v79, v80, v81, v82);
      v91 = objc_msgSend_languageCodeForResourceName_withType_(v92, v93, v52, 4, v94);

      goto LABEL_20;
    }

    v91 = codeCopy;
LABEL_20:
    v95 = _BuiltInVoiceNameForLanguage(v91, v87, v88, v89, v90);
    v135 = v60;
    v136 = v28;
    v134 = v95;
    if (v95)
    {
      v99 = v95;
      if ((objc_msgSend_isEqualToString_(v95, v96, v52, v97, v98) & 1) == 0)
      {
        v104 = objc_msgSend_sharedInstance(TTSAXResourceManager, v100, v101, v102, v103);
        v107 = objc_msgSend_languageCodeForResourceName_withType_(v104, v105, v52, 4, v106);

        if ((objc_msgSend_isEqualToString_(v91, v108, v107, v109, v110) & 1) == 0)
        {
          v111 = v99;

          v52 = v111;
        }
      }

      v112 = v91;
    }

    else
    {
      v113 = AXTTSLogResourceMigration();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v138 = v91;
        _os_log_impl(&dword_1A9324000, v113, OS_LOG_TYPE_INFO, "No voice found for language code: %@. Attempting to find fallback language.", buf, 0xCu);
      }

      v118 = objc_msgSend_sharedInstance(TTSAXResourceManager, v114, v115, v116, v117);
      v112 = objc_msgSend_languageCodeForResourceName_withType_(v118, v119, v52, 4, v120);

      v121 = AXTTSLogResourceMigration();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v138 = v112;
        _os_log_impl(&dword_1A9324000, v121, OS_LOG_TYPE_INFO, "Found fallback language code: %@", buf, 0xCu);
      }
    }

    v122 = MEMORY[0x1E696AEC0];
    v60 = v135;
    if (objc_msgSend_isEqualToString_(v135, v100, @"compact", v102, v103))
    {
      v127 = @"compact";
    }

    else
    {
      v127 = @"enhanced";
    }

    v128 = objc_msgSend_capitalizedString(v52, v123, v124, v125, v126);
    v14 = objc_msgSend_stringWithFormat_(v122, v129, @"%@.%@.%@.%@", v130, v131, @"com.apple.voice", v127, v112, v128);

    v28 = v136;
    goto LABEL_35;
  }

  v15 = AXTTSLogResourceMigration();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9577C14(codeCopy, v15);
  }

  v14 = 0;
LABEL_37:

  v132 = *MEMORY[0x1E69E9840];

  return v14;
}

@end