@interface TTSVoiceAsset
- (TTSVoiceAsset)initWithCoder:(id)coder;
- (TTSVoiceAsset)initWithDictionaryRepresentation:(id)representation;
- (TTSVoiceAsset)initWithName:(id)name languages:(id)languages gender:(int64_t)gender footprint:(int64_t)footprint isInstalled:(BOOL)installed isBuiltIn:(BOOL)in masteredVersion:(id)version compatibilityVersion:(id)self0 neural:(BOOL)self1;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTSVoiceAsset

- (TTSVoiceAsset)initWithName:(id)name languages:(id)languages gender:(int64_t)gender footprint:(int64_t)footprint isInstalled:(BOOL)installed isBuiltIn:(BOOL)in masteredVersion:(id)version compatibilityVersion:(id)self0 neural:(BOOL)self1
{
  v55 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  languagesCopy = languages;
  v53.receiver = self;
  v53.super_class = TTSVoiceAsset;
  v23 = [(TTSVoiceAsset *)&v53 init];
  if (v23)
  {
    genderCopy = gender;
    footprintCopy = footprint;
    inCopy = in;
    v24 = objc_msgSend_copy(nameCopy, v19, v20, v21, v22);
    name = v23->_name;
    v23->_name = v24;

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v26 = languagesCopy;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v49, v54, 16);
    if (v28)
    {
      v32 = v28;
      v33 = *v50;
      do
      {
        v34 = 0;
        do
        {
          if (*v50 != v33)
          {
            objc_enumerationMutation(v26);
          }

          if (objc_msgSend_containsString_(*(*(&v49 + 1) + 8 * v34), v29, @"_", v30, v31))
          {
            v35 = AXTTSLogCommon();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
            {
              sub_1A9579CB8(&buf, v48, v35);
            }
          }

          ++v34;
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v49, v54, 16);
      }

      while (v32);
    }

    v40 = objc_msgSend_copy(v26, v36, v37, v38, v39);
    languages = v23->_languages;
    v23->_languages = v40;

    v23->_gender = genderCopy;
    v23->_footprint = footprintCopy;
    v23->_isInstalled = installed;
    v23->_isBuiltInVoice = inCopy;
    v23->_neural = neural;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v34.receiver = self;
  v34.super_class = TTSVoiceAsset;
  v7 = [(TTSVoiceAsset *)&v34 description];
  name = self->_name;
  languages = self->_languages;
  gender = self->_gender;
  v11 = @"any";
  if (gender == 2)
  {
    v11 = @"female";
  }

  if (gender == 1)
  {
    v12 = @"male";
  }

  else
  {
    v12 = v11;
  }

  if (self->_footprint == 3)
  {
    v13 = @"compact";
  }

  else
  {
    v13 = @"premium";
  }

  v14 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v4, self->_neural, v5, v6);
  v18 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v15, self->_isInstalled, v16, v17);
  v23 = objc_msgSend_masteredVersion(self, v19, v20, v21, v22);
  v28 = objc_msgSend_compatibilityVersion(self, v24, v25, v26, v27);
  v32 = objc_msgSend_stringWithFormat_(v3, v29, @"%@ Name: %@, Languages: %@, Gender: %@, Footprint: %@, Neural: %@, Installed: %@, Version: %@/%@", v30, v31, v7, name, languages, v12, v13, v14, v18, v23, v28);

  return v32;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, name, @"_name", v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_languages, @"_languages", v9);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v10, self->_gender, @"_gender", v11);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v12, self->_footprint, @"_footprint", v13);
  objc_msgSend_encodeBool_forKey_(coderCopy, v14, self->_isInstalled, @"_isInstalled", v15);
  objc_msgSend_encodeBool_forKey_(coderCopy, v16, self->_isBuiltInVoice, @"_isBuiltInVoice", v17);
  objc_msgSend_encodeObject_forKey_(coderCopy, v18, self->_voicePath, @"_voicePath", v19);
  objc_msgSend_encodeBool_forKey_(coderCopy, v20, self->_neural, @"_neural", v21);
  v27 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, self->_fileSize, v23, v24);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, v27, @"fileSizeWithNumber", v26);
}

- (TTSVoiceAsset)initWithCoder:(id)coder
{
  v54[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = TTSVoiceAsset;
  v5 = [(TTSVoiceAsset *)&v53 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"_name", v8);
    name = v5->_name;
    v5->_name = v9;

    v11 = MEMORY[0x1E695DFD8];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v54, 2, v13);
    v18 = objc_msgSend_setWithArray_(v11, v15, v14, v16, v17);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v19, v18, @"_languages", v20);
    languages = v5->_languages;
    v5->_languages = v21;

    v5->_gender = objc_msgSend_decodeIntegerForKey_(coderCopy, v23, @"_gender", v24, v25);
    v5->_footprint = objc_msgSend_decodeIntegerForKey_(coderCopy, v26, @"_footprint", v27, v28);
    v5->_isInstalled = objc_msgSend_decodeBoolForKey_(coderCopy, v29, @"_isInstalled", v30, v31);
    v5->_isBuiltInVoice = objc_msgSend_decodeBoolForKey_(coderCopy, v32, @"_isBuiltInVoice", v33, v34);
    v35 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v35, @"_voicePath", v37);
    voicePath = v5->_voicePath;
    v5->_voicePath = v38;

    v5->_neural = objc_msgSend_decodeBoolForKey_(coderCopy, v40, @"_neural", v41, v42);
    v43 = objc_opt_class();
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v44, v43, @"fileSizeWithNumber", v45);
    v5->_fileSize = objc_msgSend_integerValue(v46, v47, v48, v49, v50);
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (TTSVoiceAsset)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v7 = objc_msgSend_objectForKey_(representationCopy, v4, @"Name", v5, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v13 = objc_msgSend_objectForKey_(representationCopy, v10, @"Languages", v11, v12);
  objc_opt_class();
  v18 = 0;
  if (objc_opt_isKindOfClass())
  {
    v19 = objc_msgSend_lastObject(v13, v14, v15, v16, v17);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v13;
    }

    else
    {
      v20 = 0;
    }

    v18 = v20;
  }

  v21 = objc_msgSend_objectForKey_(representationCopy, v14, @"Gender", v16, v17);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = objc_msgSend_integerValue(v21, v22, v23, v24, v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v22, @"neural", v24, v25);
  v32 = objc_msgSend_BOOLValue(v27, v28, v29, v30, v31);

  v36 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v33, @"MasteredVersion", v34, v35);
  v40 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v37, @"CompatabilityVersion", v38, v39);
  v52 = v32;
  isBuiltIn_masteredVersion_compatibilityVersion_neural = objc_msgSend_initWithName_languages_gender_footprint_isInstalled_isBuiltIn_masteredVersion_compatibilityVersion_neural_(self, v41, v9, v18, v26, 1, 0, 1, v36, v40, v52);

  v43 = isBuiltIn_masteredVersion_compatibilityVersion_neural;
  v47 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v44, @"VoicePath", v45, v46);
  objc_msgSend_setVoicePath_(v43, v48, v47, v49, v50);

  return v43;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v3;
  name = self->_name;
  if (name)
  {
    objc_msgSend_setObject_forKey_(v3, v4, name, @"Name", v6);
  }

  languages = self->_languages;
  if (languages)
  {
    objc_msgSend_setObject_forKey_(v7, v4, languages, @"Languages", v6);
  }

  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v4, self->_gender, v5, v6);
  objc_msgSend_setObject_forKey_(v7, v11, v10, @"Gender", v12);

  v16 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v13, self->_neural, v14, v15);
  objc_msgSend_setObject_forKey_(v7, v17, v16, @"neural", v18);

  v23 = objc_msgSend_contentVersion(self, v19, v20, v21, v22);

  if (v23)
  {
    v28 = objc_msgSend_contentVersion(self, v24, v25, v26, v27);
    objc_msgSend_setObject_forKey_(v7, v29, v28, @"ContentVersion", v30);
  }

  v31 = objc_msgSend_masteredVersion(self, v24, v25, v26, v27);

  if (v31)
  {
    v36 = objc_msgSend_masteredVersion(self, v32, v33, v34, v35);
    objc_msgSend_setObject_forKey_(v7, v37, v36, @"MasteredVersion", v38);
  }

  v39 = objc_msgSend_compatibilityVersion(self, v32, v33, v34, v35);

  if (v39)
  {
    v44 = objc_msgSend_compatibilityVersion(self, v40, v41, v42, v43);
    objc_msgSend_setObject_forKey_(v7, v45, v44, @"CompatabilityVersion", v46);
  }

  v47 = objc_msgSend_voicePath(self, v40, v41, v42, v43);

  if (v47)
  {
    v52 = objc_msgSend_voicePath(self, v48, v49, v50, v51);
    objc_msgSend_setObject_forKey_(v7, v53, v52, @"VoicePath", v54);
  }

  return v7;
}

@end