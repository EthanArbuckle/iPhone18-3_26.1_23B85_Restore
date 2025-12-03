@interface TTSVoiceResourceAsset
+ (id)legacyPlatforms;
- (TTSVoiceResourceAsset)initWithCoder:(id)coder;
- (id)defaultFootprintString;
- (id)defaultTypeString;
- (id)defaultVoice;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)syncWithConfigData:(id)data voiceType:(int64_t)type;
- (void)syncWithConfigFile:(id)file voiceType:(int64_t)type;
@end

@implementation TTSVoiceResourceAsset

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_componentsJoinedByString_(self->_languages, a2, @", ", v2, v3);
  v11 = objc_msgSend_contentVersion(self, v7, v8, v9, v10);
  v16 = objc_msgSend_masteredVersion(self, v12, v13, v14, v15);
  v20 = objc_msgSend_stringWithFormat_(v5, v17, @"Voice resource, Languages: %@, ContentVersion: %@, MasteredVersion: %@", v18, v19, v6, v11, v16);

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = TTSVoiceResourceAsset;
  coderCopy = coder;
  [(TTSAssetBase *)&v9 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_languages, @"_languages", v6, v9.receiver, v9.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_searchPathURL, @"_searchPathURL", v8);
}

- (TTSVoiceResourceAsset)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = TTSVoiceResourceAsset;
  v5 = [(TTSAssetBase *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v26, 2, v8);
    v13 = objc_msgSend_setWithArray_(v6, v10, v9, v11, v12);
    v16 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v14, v13, @"_languages", v15);
    languages = v5->_languages;
    v5->_languages = v16;

    v18 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"_searchPathURL", v20);
    searchPathURL = v5->_searchPathURL;
    v5->_searchPathURL = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)legacyPlatforms
{
  if (qword_1EB390FC0 != -1)
  {
    sub_1A9578764();
  }

  v3 = qword_1EB390FB8;

  return v3;
}

- (void)syncWithConfigFile:(id)file voiceType:(int64_t)type
{
  v9 = objc_msgSend_dictionaryWithContentsOfURL_(MEMORY[0x1E695DF20], a2, file, type, v4);
  objc_msgSend_syncWithConfigData_voiceType_(self, v7, v9, type, v8);
}

- (void)syncWithConfigData:(id)data voiceType:(int64_t)type
{
  v77 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = dataCopy;
  if (dataCopy)
  {
    v12 = objc_msgSend_allKeys(dataCopy, v7, v8, v9, v10);
    v16 = objc_msgSend_containsObject_(v12, v13, @"ax_resources", v14, v15);

    selfCopy = self;
    v67 = v11;
    if (v16)
    {
      v23 = objc_msgSend_objectForKeyedSubscript_(v11, v17, @"ax_resources", v18, v19);
      if ((type & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        objc_msgSend_objectForKeyedSubscript_(v11, v20, @"ax_gryphon_resource_order", v21, v22);
      }

      else
      {
        objc_msgSend_objectForKeyedSubscript_(v11, v20, @"ax_compact_resource_order", v21, v22);
      }
      v24 = ;
    }

    else
    {
      v24 = objc_msgSend_objectForKeyedSubscript_(v11, v17, @"vocalizer_resource_order", v18, v19);
      v23 = objc_msgSend_objectForKeyedSubscript_(v11, v25, @"vocalizer_resources", v26, v27);
    }

    v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v28, v29, v30, v31);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v37 = objc_msgSend_allKeys(v23, v33, v34, v35, v36);
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = sub_1A9347128;
    v68[3] = &unk_1E7880370;
    v38 = v24;
    v69 = v38;
    v42 = objc_msgSend_sortedArrayUsingComparator_(v37, v39, v68, v40, v41);

    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v70, v76, 16);
    if (v44)
    {
      v48 = v44;
      v49 = *v71;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v71 != v49)
          {
            objc_enumerationMutation(v42);
          }

          v51 = *(*(&v70 + 1) + 8 * i);
          if (objc_msgSend_containsObject_(v38, v45, v51, v46, v47))
          {
            v74[0] = @"filename";
            v74[1] = @"mime-type";
            v75[0] = v51;
            v52 = objc_msgSend_objectForKeyedSubscript_(v23, v45, v51, v46, v47);
            v75[1] = v52;
            objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v53, v75, v74, 2);
            v55 = v54 = v23;
            objc_msgSend_addObject_(v32, v56, v55, v57, v58);

            v23 = v54;
          }
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v70, v76, 16);
      }

      while (v48);
    }

    objc_msgSend_setResourceList_(selfCopy, v59, v32, v60, v61);
    v11 = v67;
    objc_msgSend_setVoiceConfig_(selfCopy, v62, v67, v63, v64);
  }

  v65 = *MEMORY[0x1E69E9840];
}

- (id)defaultVoice
{
  v5 = objc_msgSend_voiceConfig(self, a2, v2, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"_voices", v7, v8);

  if (!v9)
  {
    v20 = 0;
    goto LABEL_13;
  }

  if (qword_1EB390FD0 != -1)
  {
    sub_1A9578778();
  }

  if (byte_1EB390FC8 == 1 && CFPreferencesGetAppBooleanValue(@"DisableGryphon", @"com.apple.voiced", 0) || (objc_msgSend_legacyPlatforms(TTSVoiceResourceAsset, v10, v11, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = MGCopyAnswer(), v19 = objc_msgSend_containsObject_(v14, v16, v15, v17, v18), v15, v14, (v19 & 1) != 0))
  {
    objc_msgSend_objectForKeyedSubscript_(v9, v10, @"legacy", v12, v13);
    goto LABEL_11;
  }

  if (MGGetProductType() == 4240173202)
  {
    objc_msgSend_objectForKeyedSubscript_(v9, v21, @"premiumhigh", v22, v23);
    v20 = LABEL_11:;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  v20 = objc_msgSend_objectForKeyedSubscript_(v9, v21, @"default", v22, v23);
LABEL_13:

  return v20;
}

- (id)defaultTypeString
{
  v5 = objc_msgSend_defaultVoice(self, a2, v2, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Type", v7, v8);

  return v9;
}

- (id)defaultFootprintString
{
  v5 = objc_msgSend_defaultVoice(self, a2, v2, v3, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Footprint", v7, v8);

  return v9;
}

@end