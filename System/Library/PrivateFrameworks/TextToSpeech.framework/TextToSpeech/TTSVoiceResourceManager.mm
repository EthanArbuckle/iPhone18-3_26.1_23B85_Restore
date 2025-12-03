@interface TTSVoiceResourceManager
+ (id)effectiveResourceForLanguageCode:(id)code andVoiceType:(int64_t)type;
+ (void)enumerateLoadableResourcesInAsset:(id)asset usingBlock:(id)block;
@end

@implementation TTSVoiceResourceManager

+ (id)effectiveResourceForLanguageCode:(id)code andVoiceType:(int64_t)type
{
  codeCopy = code;
  if ((_AXSSpeechSynthesisOptions() & 8) != 0)
  {
    v9 = AXTTSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A9324000, v9, OS_LOG_TYPE_DEFAULT, "Pref AXSpeechSynthesisOptionMauiEngineSkipSiriProvidedRules=YES. will not load Siri-provided rules", v11, 2u);
    }

    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_voiceResourceForLanguage_voiceType_(TTSSiriAssetManager, v6, codeCopy, type, v7);
  }

  return v8;
}

+ (void)enumerateLoadableResourcesInAsset:(id)asset usingBlock:(id)block
{
  v58 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  blockCopy = block;
  v49 = assetCopy;
  if (assetCopy)
  {
    v7 = AXTTSLogRange();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1A957878C(assetCopy, v7, v8, v9, v10);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = objc_msgSend_resourceList(assetCopy, v11, v12, v13, v14);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v53, v57, 16);
    if (v16)
    {
      v20 = v16;
      v21 = *v54;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v54 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v53 + 1) + 8 * i);
          v24 = objc_msgSend_objectForKeyedSubscript_(v23, v17, @"mime-type", v18, v19);
          v28 = objc_msgSend_objectForKeyedSubscript_(v23, v25, @"filename", v26, v27);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v29, "application/edct-bin-dictionary", v30, v31);
          isEqualToString = objc_msgSend_isEqualToString_(v24, v33, v32, v34, v35);

          if (isEqualToString)
          {
            v41 = objc_msgSend_searchPathURL(v49, v37, v38, v39, v40);
            v45 = objc_msgSend_URLByAppendingPathComponent_(v41, v42, v28, v43, v44);

            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = sub_1A9348328;
            aBlock[3] = &unk_1E78803A8;
            v52 = v45;
            v46 = v45;
            v47 = _Block_copy(aBlock);
            blockCopy[2](blockCopy, v28, v24, v47, v46);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v53, v57, 16);
      }

      while (v20);
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

@end