@interface TTSSiriAssetManager
+ (id)_assetTechnologyForVoiceType:(int64_t)a3;
+ (id)_assetTypesForVoiceType:(int64_t)a3;
+ (id)_assetsForLanguage:(id)a3 voiceType:(int64_t)a4 installedOnly:(BOOL)a5;
+ (id)_footprintForType:(int64_t)a3;
+ (id)_siriAssetForLanguage:(id)a3 gender:(int64_t)a4 footprint:(int64_t)a5 voiceName:(id)a6 voiceType:(int64_t)a7;
+ (id)assetForLanguage:(id)a3 gender:(int64_t)a4 footprint:(int64_t)a5 voiceName:(id)a6 voiceType:(int64_t)a7;
+ (id)convertTTSLanguageCodeToSiriLanguageCode:(id)a3;
+ (id)deprecatedVoicesMap;
+ (id)installedAssetForLanguage:(id)a3 gender:(int64_t)a4 footprint:(int64_t)a5 voiceName:(id)a6 voiceType:(int64_t)a7;
+ (id)installedVoiceResourceForLanguage:(id)a3;
+ (id)ttsAssetFromVoiceAsset:(id)a3;
+ (id)voiceAssetFromTTSAsset:(id)a3;
+ (id)voiceIdentifierForAsset:(id)a3;
+ (id)voiceIdentifierForType:(int64_t)a3 footprint:(int64_t)a4 language:(id)a5 name:(id)a6;
+ (id)voiceResourceForLanguage:(id)a3 voiceType:(int64_t)a4;
+ (int64_t)_footprintForQuality:(id)a3;
+ (int64_t)_voiceTypeForAssetTechnology:(id)a3;
+ (void)downloadAsset:(id)a3 progressHandler:(id)a4;
+ (void)downloadVoiceResourceForLanguage:(id)a3 completion:(id)a4;
+ (void)purgeAsset:(id)a3;
+ (void)stopDownload:(id)a3;
@end

@implementation TTSSiriAssetManager

+ (id)convertTTSLanguageCodeToSiriLanguageCode:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"ar-001", v5, v6))
  {
    v10 = @"ar-SA";
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v3, v7, @"no-NO", v8, v9))
    {
      goto LABEL_6;
    }

    v10 = @"nb-NO";
  }

  v3 = v10;
LABEL_6:
  v13 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v11, @"_", @"-", v12);

  return v13;
}

+ (void)downloadVoiceResourceForLanguage:(id)a3 completion:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v11 = objc_msgSend_convertTTSLanguageCodeToSiriLanguageCode_(v7, v8, v6, v9, v10);

  v38 = &unk_1F1D0F798;
  v39[0] = v11;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v39, &v38, 1);
  v14 = MEMORY[0x1E69D3328];
  v19 = objc_msgSend_voiceResources(MEMORY[0x1E69D3348], v15, v16, v17, v18);
  v37 = v19;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, &v37, 1, v21);
  v25 = objc_msgSend_bestAssetOfTypes_matching_(v14, v23, v22, v13, v24);

  if (objc_msgSend_locallyAvailable(v25, v26, v27, v28, v29))
  {
    if (v5)
    {
      v5[2](v5, 1);
    }
  }

  else if (v25)
  {
    v30 = AXTTSLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v25;
      _os_log_impl(&dword_1A9324000, v30, OS_LOG_TYPE_INFO, "Downloading voice resources asset %@", buf, 0xCu);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1A9336678;
    v33[3] = &unk_1E7880008;
    v34 = v5;
    objc_msgSend_downloadWithReservation_useBattery_progress_then_(v25, v31, @"TextToSpeech.VoiceResources", 1, &unk_1F1CEDAC8, v33);
  }

  else if (v5)
  {
    v5[2](v5, 0);
  }

  v32 = *MEMORY[0x1E69E9840];
}

+ (id)installedVoiceResourceForLanguage:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_class();
  v8 = objc_msgSend_convertTTSLanguageCodeToSiriLanguageCode_(v4, v5, v3, v6, v7);

  v26[0] = &unk_1F1D0F7B0;
  v26[1] = &unk_1F1D0F798;
  v27[0] = MEMORY[0x1E695E118];
  v27[1] = v8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v27, v26, 2);
  v11 = MEMORY[0x1E69D3328];
  v16 = objc_msgSend_voiceResources(MEMORY[0x1E69D3348], v12, v13, v14, v15);
  v25 = v16;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, &v25, 1, v18);
  v22 = objc_msgSend_bestAssetOfTypes_matching_(v11, v20, v19, v10, v21);

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)voiceResourceForLanguage:(id)a3 voiceType:(int64_t)a4
{
  v102[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_class();
  v11 = objc_msgSend_convertTTSLanguageCodeToSiriLanguageCode_(v7, v8, v6, v9, v10);

  v101[0] = &unk_1F1D0F7B0;
  v101[1] = &unk_1F1D0F798;
  v102[0] = MEMORY[0x1E695E118];
  v102[1] = v11;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v102, v101, 2);
  v14 = MEMORY[0x1E69D3328];
  v19 = objc_msgSend_voiceResources(MEMORY[0x1E69D3348], v15, v16, v17, v18);
  v100 = v19;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, &v100, 1, v21);
  v25 = objc_msgSend_bestAssetOfTypes_matching_(v14, v23, v22, v13, v24);

  v26 = AXTTSLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9577C8C();
  }

  if (v25)
  {
    v31 = objc_msgSend_assetSource(v25, v27, v28, v29, v30);
    v36 = objc_msgSend_mobileAsset(MEMORY[0x1E69D3338], v32, v33, v34, v35);

    if (v31 == v36)
    {
      objc_msgSend_downloadVoiceResourceForLanguage_completion_(a1, v37, v11, 0, v38);
    }

    v39 = objc_alloc_init(TTSVoiceResourceAsset);
    objc_msgSend_setBundleIdentifier_(v39, v40, @"com.apple.MobileAsset.VoiceServices.VoiceResources", v41, v42);
    v43 = MEMORY[0x1E696AD98];
    v48 = objc_msgSend_versionNumber(v25, v44, v45, v46, v47);
    v52 = objc_msgSend_numberWithInteger_(v43, v49, v48, v50, v51);
    v57 = objc_msgSend_stringValue(v52, v53, v54, v55, v56);
    objc_msgSend_setMasteredVersion_(v39, v58, v57, v59, v60);

    objc_msgSend_setCompatibilityVersion_(v39, v61, &unk_1F1D0F7C8, v62, v63);
    objc_msgSend_setContentVersion_(v39, v64, &unk_1F1D0F7C8, v65, v66);
    v71 = objc_msgSend_supportedLanguages(v25, v67, v68, v69, v70);
    objc_msgSend_setLanguages_(v39, v72, v71, v73, v74);

    if (objc_msgSend_locallyAvailable(v25, v75, v76, v77, v78))
    {
      v83 = objc_msgSend_bundle(v25, v79, v80, v81, v82);
      v88 = objc_msgSend_bundleURL(v83, v84, v85, v86, v87);

      objc_msgSend_setSearchPathURL_(v39, v89, v88, v90, v91);
      v95 = objc_msgSend_URLByAppendingPathComponent_(v88, v92, @"voice_configs.plist", v93, v94);
      objc_msgSend_syncWithConfigFile_voiceType_(v39, v96, v95, a4, v97);
    }
  }

  else
  {
    objc_msgSend_downloadVoiceResourceForLanguage_completion_(a1, v27, v11, 0, v30);
    v39 = 0;
  }

  v98 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)_footprintForType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    if (a3 == 4)
    {
      v5 = objc_msgSend_premium(MEMORY[0x1E69D3330], a2, 4, v3, v4);
    }

    else if (a3 == 5)
    {
      v5 = objc_msgSend_premiumhigh(MEMORY[0x1E69D3330], a2, 5, v3, v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = objc_msgSend_compact(MEMORY[0x1E69D3330], a2, a3, v3, v4);
  }

  return v5;
}

+ (id)_assetTypesForVoiceType:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v6 = objc_msgSend_vocalizerVoice(MEMORY[0x1E69D3348], a2, 1, v3, v4);
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, &v21, 1, v12, v19, v20, v6, v22);
      goto LABEL_9;
    }

    if (a3 == 2)
    {
      v6 = objc_msgSend_customVoice(MEMORY[0x1E69D3348], a2, 2, v3, v4);
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, &v20, 1, v10, v19, v6, v21, v22);
      goto LABEL_9;
    }
  }

  else if ((a3 - 4) < 2 || a3 == 7)
  {
    v6 = objc_msgSend_gryphonVoice(MEMORY[0x1E69D3348], a2, a3, v3, v4);
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, &v19, 1, v8, v6, v20, v21, v22);
    v13 = LABEL_9:;
    goto LABEL_10;
  }

  v6 = AXTTSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1A9577D10(a3, v6, v16, v17, v18);
  }

  v13 = 0;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)ttsAssetFromVoiceAsset:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v9 = objc_msgSend_languages(v4, v5, v6, v7, v8);
    v14 = objc_msgSend_firstObject(v9, v10, v11, v12, v13);
    v19 = objc_msgSend_gender(v4, v15, v16, v17, v18);
    v24 = objc_msgSend_footprint(v4, v20, v21, v22, v23);
    v29 = objc_msgSend_name(v4, v25, v26, v27, v28);
    v34 = objc_msgSend_voiceType(v4, v30, v31, v32, v33);
    isInstalled = objc_msgSend_isInstalled(v4, v35, v36, v37, v38);

    v41 = objc_msgSend__siriAssetForLanguage_gender_footprint_voiceName_voiceType_locallyAvailable_(a1, v40, v14, v19, v24, v29, v34, isInstalled);
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

+ (int64_t)_footprintForQuality:(id)a3
{
  v3 = MEMORY[0x1E69D3330];
  v4 = a3;
  v9 = objc_msgSend_compact(v3, v5, v6, v7, v8);
  isEqual = objc_msgSend_isEqual_(v4, v10, v9, v11, v12);

  if (isEqual)
  {
    v14 = 3;
  }

  else
  {
    v14 = 4;
  }

  return v14;
}

+ (id)voiceAssetFromTTSAsset:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    isBuiltIn_masteredVersion_compatibilityVersion_neural = 0;
    goto LABEL_19;
  }

  v10 = objc_msgSend_name(v4, v5, v6, v7, v8);
  v15 = objc_msgSend_name(v9, v11, v12, v13, v14);
  if (!objc_msgSend_length(v15, v16, v17, v18, v19))
  {

    goto LABEL_8;
  }

  v24 = objc_msgSend_supportedLanguages(v9, v20, v21, v22, v23);
  v29 = objc_msgSend_count(v24, v25, v26, v27, v28);

  if (!v29)
  {
LABEL_8:
    v40 = AXTTSLogCommon();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_1A9577DA0();
    }

    isBuiltIn_masteredVersion_compatibilityVersion_neural = 0;
    goto LABEL_18;
  }

  if (objc_msgSend_purgeable(v9, v30, v31, v32, v33))
  {
    v38 = 0;
  }

  else
  {
    v38 = objc_msgSend_locallyAvailable(v9, v34, v35, v36, v37);
  }

  v41 = objc_msgSend_technology(v9, v34, v35, v36, v37);
  v46 = objc_msgSend_custom(MEMORY[0x1E69D3340], v42, v43, v44, v45);
  v163 = v10;
  if (objc_msgSend_isEqual_(v41, v47, v46, v48, v49))
  {
    v54 = objc_msgSend_quality(v9, v50, v51, v52, v53);
    v59 = objc_msgSend_compact(MEMORY[0x1E69D3330], v55, v56, v57, v58);
    isEqual = objc_msgSend_isEqual_(v54, v60, v59, v61, v62);

    v38 |= isEqual;
  }

  v162 = v38;

  v160 = [TTSVoiceAsset alloc];
  v68 = objc_msgSend_supportedLanguages(v9, v64, v65, v66, v67);
  v73 = objc_msgSend_gender(v9, v69, v70, v71, v72);
  if (v73 == 2)
  {
    v78 = 2;
  }

  else
  {
    v78 = v73 == 1;
  }

  v79 = objc_msgSend_quality(v9, v74, v75, v76, v77);
  v161 = a1;
  v83 = objc_msgSend__footprintForQuality_(a1, v80, v79, v81, v82);
  v88 = objc_msgSend_locallyAvailable(v9, v84, v85, v86, v87);
  v93 = objc_msgSend_technology(v9, v89, v90, v91, v92);
  v98 = objc_msgSend_string(v93, v94, v95, v96, v97);
  v103 = objc_msgSend_neural(MEMORY[0x1E69D3340], v99, v100, v101, v102);
  v108 = objc_msgSend_string(v103, v104, v105, v106, v107);
  isEqualToString = objc_msgSend_isEqualToString_(v98, v109, v108, v110, v111);
  isBuiltIn_masteredVersion_compatibilityVersion_neural = objc_msgSend_initWithName_languages_gender_footprint_isInstalled_isBuiltIn_masteredVersion_compatibilityVersion_neural_(v160, v112, v163, v68, v78, v83, v88, v162 & 1, @"1", @"1", isEqualToString);

  v117 = objc_msgSend_technology(v9, v113, v114, v115, v116);
  v121 = objc_msgSend__voiceTypeForAssetTechnology_(v161, v118, v117, v119, v120);

  v126 = objc_msgSend_bundle(v9, v122, v123, v124, v125);
  v131 = objc_msgSend_bundlePath(v126, v127, v128, v129, v130);
  objc_msgSend_setVoicePath_(isBuiltIn_masteredVersion_compatibilityVersion_neural, v132, v131, v133, v134);

  objc_msgSend_setVoiceType_(isBuiltIn_masteredVersion_compatibilityVersion_neural, v135, v121, v136, v137);
  v141 = objc_msgSend_voiceIdentifierForAsset_(v161, v138, v9, v139, v140);
  objc_msgSend_setIdentifier_(isBuiltIn_masteredVersion_compatibilityVersion_neural, v142, v141, v143, v144);

  v149 = objc_msgSend_diskSize(v9, v145, v146, v147, v148);
  v154 = objc_msgSend_unsignedIntValue(v149, v150, v151, v152, v153);
  objc_msgSend_setFileSize_(isBuiltIn_masteredVersion_compatibilityVersion_neural, v155, v154, v156, v157);

  v10 = v163;
LABEL_18:

LABEL_19:

  return isBuiltIn_masteredVersion_compatibilityVersion_neural;
}

+ (id)voiceIdentifierForType:(int64_t)a3 footprint:(int64_t)a4 language:(id)a5 name:(id)a6
{
  v9 = a5;
  v14 = objc_msgSend_lowercaseString(a6, v10, v11, v12, v13);
  v17 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v15, @"-", &stru_1F1CFF8D8, v16);

  v21 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v22 = MEMORY[0x1E696AEC0];
        v23 = kTTSGryphonVoiceIdentifierPrefix;
        break;
      case 5:
        v22 = MEMORY[0x1E696AEC0];
        v23 = kTTSNeuralVoiceIdentifierPrefix;
        break;
      case 7:
        v22 = MEMORY[0x1E696AEC0];
        if (a4 == 3)
        {
          v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"%@.%@", v19, v20, @"com.apple.voice", v17);
          goto LABEL_16;
        }

        v23 = kTTSNeuralAXVoiceIdentifierPrefix;
        break;
      default:
        goto LABEL_16;
    }

LABEL_14:
    v34 = *v23;
    v25 = TTSStringForSpeechFootprint(a4);
    v30 = objc_msgSend_lowercaseString(v25, v35, v36, v37, v38);
    objc_msgSend_stringWithFormat_(v22, v39, @"%@_%@_%@_%@", v40, v41, v34, v17, v9, v30);
    goto LABEL_15;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_16;
    }

    v22 = MEMORY[0x1E696AEC0];
    v23 = kTTSSiriVoiceIdentifierPrefix;
    goto LABEL_14;
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = TTSStringForSpeechFootprint(a4);
  v30 = objc_msgSend_lowercaseString(v25, v26, v27, v28, v29);
  objc_msgSend_stringWithFormat_(v24, v31, @"%@.%@-%@", v32, v33, @"com.apple.ttsbundle", v17, v30);
  v21 = LABEL_15:;

LABEL_16:

  return v21;
}

+ (id)voiceIdentifierForAsset:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_technology(v4, v5, v6, v7, v8);
  v13 = objc_msgSend__voiceTypeForAssetTechnology_(a1, v10, v9, v11, v12);

  v18 = objc_msgSend_quality(v4, v14, v15, v16, v17);
  v22 = objc_msgSend__footprintForQuality_(a1, v19, v18, v20, v21);

  v31 = objc_msgSend_primaryLanguage(v4, v23, v24, v25, v26);
  if (v31)
  {
    v32 = objc_msgSend_primaryLanguage(v4, v27, v28, v29, v30);
  }

  else
  {
    v33 = objc_msgSend_supportedLanguages(v4, v27, v28, v29, v30);
    v32 = objc_msgSend_firstObject(v33, v34, v35, v36, v37);
  }

  v42 = objc_msgSend_name(v4, v38, v39, v40, v41);
  v44 = objc_msgSend_voiceIdentifierForType_footprint_language_name_(a1, v43, v13, v22, v32, v42);

  return v44;
}

+ (void)purgeAsset:(id)a3
{
  v8 = objc_msgSend_ttsAssetFromVoiceAsset_(a1, a2, a3, v3, v4);
  objc_msgSend_purgeImmediately_(v8, v5, 1, v6, v7);
}

+ (void)stopDownload:(id)a3
{
  v4 = a3;
  v5 = AXTTSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A9324000, v5, OS_LOG_TYPE_DEFAULT, "Reqeuesting cancel asset download", v13, 2u);
  }

  v9 = objc_msgSend_ttsAssetFromVoiceAsset_(a1, v6, v4, v7, v8);

  objc_msgSend_cancelDownloadingThen_(v9, v10, &unk_1F1CEF598, v11, v12);
}

+ (id)deprecatedVoicesMap
{
  if (qword_1ED9705A8 != -1)
  {
    sub_1A9577E14();
  }

  v3 = qword_1ED9705B0;

  return v3;
}

+ (void)downloadAsset:(id)a3 progressHandler:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_ttsAssetFromVoiceAsset_(a1, v7, a3, v8, v9);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A9337748;
  v15[3] = &unk_1E7880050;
  v16 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A933776C;
  v13[3] = &unk_1E7880008;
  v14 = v16;
  v11 = v16;
  objc_msgSend_downloadWithReservation_useBattery_progress_then_(v10, v12, @"Accessibility", 1, v15, v13);
}

+ (int64_t)_voiceTypeForAssetTechnology:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_custom(MEMORY[0x1E69D3340], v4, v5, v6, v7);
  isEqual = objc_msgSend_isEqual_(v3, v9, v8, v10, v11);

  if (isEqual)
  {
    v17 = 2;
  }

  else
  {
    v18 = objc_msgSend_vocalizer(MEMORY[0x1E69D3340], v13, v14, v15, v16);
    v22 = objc_msgSend_isEqual_(v3, v19, v18, v20, v21);

    if (v22)
    {
      v17 = 1;
    }

    else
    {
      v27 = objc_msgSend_neural(MEMORY[0x1E69D3340], v23, v24, v25, v26);
      v31 = objc_msgSend_isEqual_(v3, v28, v27, v29, v30);

      if (v31)
      {
        v17 = 5;
      }

      else
      {
        v36 = objc_msgSend_neuralAX(MEMORY[0x1E69D3340], v32, v33, v34, v35);
        v40 = objc_msgSend_isEqual_(v3, v37, v36, v38, v39);

        if (v40)
        {
          v17 = 7;
        }

        else
        {
          v45 = objc_msgSend_gryphon(MEMORY[0x1E69D3340], v41, v42, v43, v44);
          v49 = objc_msgSend_isEqual_(v3, v46, v45, v47, v48);

          if (v49)
          {
            v17 = 4;
          }

          else
          {
            v17 = 1;
          }
        }
      }
    }
  }

  return v17;
}

+ (id)_assetTechnologyForVoiceType:(int64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v6 = objc_msgSend_vocalizer(MEMORY[0x1E69D3340], a2, 1, v3, v4);
      goto LABEL_15;
    }

    if (a3 == 2)
    {
      v6 = objc_msgSend_custom(MEMORY[0x1E69D3340], a2, 2, v3, v4);
      goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        v6 = objc_msgSend_gryphon(MEMORY[0x1E69D3340], a2, 4, v3, v4);
        goto LABEL_15;
      case 5:
        v6 = objc_msgSend_neural(MEMORY[0x1E69D3340], a2, 5, v3, v4);
        goto LABEL_15;
      case 7:
        v6 = objc_msgSend_neuralAX(MEMORY[0x1E69D3340], a2, 7, v3, v4);
        goto LABEL_15;
    }
  }

  v7 = AXTTSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1A9577D10(a3, v7, v8, v9, v10);
  }

  v6 = 0;
LABEL_15:

  return v6;
}

+ (id)_assetsForLanguage:(id)a3 voiceType:(int64_t)a4 installedOnly:(BOOL)a5
{
  v5 = a5;
  v65[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v64 = &unk_1F1D0F7E0;
  v12 = objc_msgSend__assetTechnologyForVoiceType_(a1, v9, a4, v10, v11);
  v65[0] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v65, &v64, 1);
  v19 = objc_msgSend_mutableCopy(v14, v15, v16, v17, v18);

  if (v8)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v19, v20, v8, &unk_1F1D0F798, v22);
  }

  v23 = objc_msgSend__assetTypesForVoiceType_(a1, v20, a4, v21, v22);
  if (v23)
  {
    v26 = objc_opt_new();
    if (v5)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v19, v24, MEMORY[0x1E695E118], &unk_1F1D0F7B0, v25);
    }

    v27 = objc_msgSend_listAssetsOfTypes_matching_(MEMORY[0x1E69D3328], v24, v23, v19, v25);
    v28 = AXTTSLogResourceManager();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v52 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v29, a4, v30, v31);
      *buf = 138412802;
      v59 = v52;
      v60 = 2112;
      v61 = v19;
      v62 = 2112;
      v63 = v27;
      _os_log_debug_impl(&dword_1A9324000, v28, OS_LOG_TYPE_DEBUG, "TTSAsset::listAssetsOfTypes (voiceTypes=%@ filter=%@): %@", buf, 0x20u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v32 = v27;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v53, v57, 16);
    if (v34)
    {
      v38 = v34;
      v39 = *v54;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(v32);
          }

          v41 = objc_msgSend_voiceAssetFromTTSAsset_(a1, v35, *(*(&v53 + 1) + 8 * i), v36, v37, v53);
          objc_msgSend_addObject_(v26, v42, v41, v43, v44);
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v53, v57, 16);
      }

      while (v38);
    }

    v49 = objc_msgSend_allObjects(v26, v45, v46, v47, v48);
  }

  else
  {
    v49 = 0;
  }

  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

+ (id)installedAssetForLanguage:(id)a3 gender:(int64_t)a4 footprint:(int64_t)a5 voiceName:(id)a6 voiceType:(int64_t)a7
{
  v8 = objc_msgSend__siriAssetForLanguage_gender_footprint_voiceName_voiceType_locallyAvailable_(a1, a2, a3, a4, a5, a6, a7, 1);
  v12 = objc_msgSend_voiceAssetFromTTSAsset_(a1, v9, v8, v10, v11);

  return v12;
}

+ (id)assetForLanguage:(id)a3 gender:(int64_t)a4 footprint:(int64_t)a5 voiceName:(id)a6 voiceType:(int64_t)a7
{
  v8 = objc_msgSend__siriAssetForLanguage_gender_footprint_voiceName_voiceType_(a1, a2, a3, a4, a5, a6, a7);
  v12 = objc_msgSend_voiceAssetFromTTSAsset_(a1, v9, v8, v10, v11);

  return v12;
}

+ (id)_siriAssetForLanguage:(id)a3 gender:(int64_t)a4 footprint:(int64_t)a5 voiceName:(id)a6 voiceType:(int64_t)a7
{
  v12 = a6;
  v16 = objc_msgSend_convertTTSLanguageCodeToSiriLanguageCode_(a1, v13, a3, v14, v15);
  v18 = objc_msgSend__assetFilterForLanguage_gender_footprint_voiceName_voiceType_locallyAvailable_(a1, v17, v16, a4, a5, v12, a7, 1);

  v23 = objc_msgSend_mutableCopy(v18, v19, v20, v21, v22);
  v29 = objc_msgSend__assetTypesForVoiceType_(a1, v24, a7, v25, v26);
  if (v29)
  {
    v33 = objc_msgSend_bestAssetOfTypes_matching_(MEMORY[0x1E69D3328], v27, v29, v23, v28);
    if (!v33)
    {
      objc_msgSend_removeObjectForKey_(v23, v30, &unk_1F1D0F7B0, v31, v32);
      v33 = objc_msgSend_bestAssetOfTypes_matching_(MEMORY[0x1E69D3328], v34, v29, v23, v35);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end