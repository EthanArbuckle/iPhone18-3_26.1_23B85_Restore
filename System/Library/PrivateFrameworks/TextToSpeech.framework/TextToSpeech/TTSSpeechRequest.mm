@interface TTSSpeechRequest
- (TTSSpeechRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TTSSpeechRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AD98];
  v10 = objc_msgSend_text(self, v6, v7, v8, v9);
  v15 = objc_msgSend_length(v10, v11, v12, v13, v14);
  v19 = objc_msgSend_numberWithUnsignedInteger_(v5, v16, v15, v17, v18);
  languageCode = self->_languageCode;
  v25 = objc_msgSend_voice(self, v21, v22, v23, v24);
  v30 = objc_msgSend_footprint(v25, v26, v27, v28, v29);
  if ((v30 - 1) > 4)
  {
    objc_msgSend_stringWithFormat_(v3, v31, @"[%@ %p] %@ language: %@ footprint: %@ rate: %lf pitch: %lf volume: %lf", v32, v33, v4, self, v19, languageCode, 0, *&self->_rate, *&self->_pitch, *&self->_volume);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v31, @"[%@ %p] %@ language: %@ footprint: %@ rate: %lf pitch: %lf volume: %lf", v32, v33, v4, self, v19, languageCode, off_1E78806C0[v30 - 1], *&self->_rate, *&self->_pitch, *&self->_volume);
  }
  v34 = ;

  return v34;
}

- (void)encodeWithCoder:(id)a3
{
  jobIdentifier = self->_jobIdentifier;
  v32 = a3;
  objc_msgSend_encodeObject_forKey_(v32, v5, jobIdentifier, @"jobIdentifier", v6);
  objc_msgSend_encodeObject_forKey_(v32, v7, self->_languageCode, @"languageCode", v8);
  objc_msgSend_encodeObject_forKey_(v32, v9, self->_voice, @"voice", v10);
  objc_msgSend_encodeInteger_forKey_(v32, v11, self->_gender, @"gender", v12);
  objc_msgSend_encodeDouble_forKey_(v32, v13, @"rate", v14, v15, self->_rate);
  objc_msgSend_encodeDouble_forKey_(v32, v16, @"pitch", v17, v18, self->_pitch);
  objc_msgSend_encodeDouble_forKey_(v32, v19, @"volume", v20, v21, self->_volume);
  objc_msgSend_encodeBool_forKey_(v32, v22, self->_maintainsInput, @"maintainsInput", v23);
  objc_msgSend_encodeBool_forKey_(v32, v24, self->_audioSessionIDIsValid, @"audioSessionIDIsValid", v25);
  objc_msgSend_encodeInt32_forKey_(v32, v26, self->_audioSessionID, @"audioSessionID", v27);
  objc_msgSend_encodeInt32_forKey_(v32, v28, self->_audioQueueFlags, @"audioQueueFlags", v29);
  objc_msgSend_encodeObject_forKey_(v32, v30, self->_synthesisProviderVoice, @"synthesisProviderVoice", v31);
}

- (TTSSpeechRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v91.receiver = self;
  v91.super_class = TTSSpeechRequest;
  v5 = [(TTSSpeechRequest *)&v91 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"languageCode", v8);
    objc_msgSend_setLanguageCode_(v5, v10, v9, v11, v12);

    v13 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"voice", v15);
    objc_msgSend_setVoice_(v5, v17, v16, v18, v19);

    v20 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"jobIdentifier", v22);
    objc_msgSend_setJobIdentifier_(v5, v24, v23, v25, v26);

    v30 = objc_msgSend_decodeIntegerForKey_(v4, v27, @"gender", v28, v29);
    objc_msgSend_setGender_(v5, v31, v30, v32, v33);
    objc_msgSend_decodeDoubleForKey_(v4, v34, @"rate", v35, v36);
    objc_msgSend_setRate_(v5, v37, v38, v39, v40);
    objc_msgSend_decodeDoubleForKey_(v4, v41, @"pitch", v42, v43);
    objc_msgSend_setPitch_(v5, v44, v45, v46, v47);
    objc_msgSend_decodeDoubleForKey_(v4, v48, @"volume", v49, v50);
    objc_msgSend_setVolume_(v5, v51, v52, v53, v54);
    v58 = objc_msgSend_decodeBoolForKey_(v4, v55, @"maintainsInput", v56, v57);
    objc_msgSend_setMaintainsInput_(v5, v59, v58, v60, v61);
    v65 = objc_msgSend_decodeBoolForKey_(v4, v62, @"audioSessionIDIsValid", v63, v64);
    objc_msgSend_setAudioSessionIDIsValid_(v5, v66, v65, v67, v68);
    v72 = objc_msgSend_decodeInt32ForKey_(v4, v69, @"audioSessionID", v70, v71);
    objc_msgSend_setAudioSessionID_(v5, v73, v72, v74, v75);
    v79 = objc_msgSend_decodeInt32ForKey_(v4, v76, @"audioQueueFlags", v77, v78);
    objc_msgSend_setAudioQueueFlags_(v5, v80, v79, v81, v82);
    v83 = objc_opt_class();
    v86 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v84, v83, @"synthesisProviderVoice", v85);
    objc_msgSend_setSynthesisProviderVoice_(v5, v87, v86, v88, v89);
  }

  return v5;
}

@end