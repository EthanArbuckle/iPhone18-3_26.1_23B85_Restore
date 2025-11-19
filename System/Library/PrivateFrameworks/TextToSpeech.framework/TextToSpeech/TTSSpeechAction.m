@interface TTSSpeechAction
- (TTSSpeechAction)init;
- (id)_detectLanguageFromContent;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)preprocessAction;
@end

@implementation TTSSpeechAction

- (void)dealloc
{
  v6 = objc_msgSend_utterance(self, a2, v2, v3, v4);
  objc_msgSend_setAction_(v6, v7, 0, v8, v9);

  v10.receiver = self;
  v10.super_class = TTSSpeechAction;
  [(TTSSpeechAction *)&v10 dealloc];
}

- (TTSSpeechAction)init
{
  v9.receiver = self;
  v9.super_class = TTSSpeechAction;
  result = [(TTSSpeechAction *)&v9 init];
  __asm { FMOV            V0.2D, #1.0 }

  *&result->_pitch = _Q0;
  result->_shouldPrecomposeString = 1;
  v8 = 0.5;
  if (byte_1EB3910B0)
  {
    v8 = 4.0;
  }

  result->_speakingRate = v8;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TTSSpeechAction);
  v9 = objc_msgSend_string(self, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  objc_msgSend_setString_(v4, v15, v14, v16, v17);

  v22 = objc_msgSend_language(self, v18, v19, v20, v21);
  v27 = objc_msgSend_copy(v22, v23, v24, v25, v26);
  objc_msgSend_setLanguage_(v4, v28, v27, v29, v30);

  return v4;
}

- (void)preprocessAction
{
  if (self->_shouldPrecomposeString)
  {
    v6 = objc_msgSend_string(self, a2, v2, v3, v4);
    v11 = objc_msgSend_precomposedStringWithCanonicalMapping(v6, v7, v8, v9, v10);
    objc_msgSend_setString_(self, v12, v11, v13, v14);

    v19 = objc_msgSend_ssmlRepresentation(self, v15, v16, v17, v18);
    v24 = objc_msgSend_precomposedStringWithCanonicalMapping(v19, v20, v21, v22, v23);
    objc_msgSend_setSsmlRepresentation_(self, v25, v24, v26, v27);
  }

  v32 = objc_msgSend_language(self, a2, v2, v3, v4);
  if (v32)
  {
    goto LABEL_6;
  }

  if (self->_shouldDetectLanguage)
  {
    v32 = objc_msgSend__detectLanguageFromContent(self, v28, v29, v30, v31);
    objc_msgSend_setLanguage_(self, v33, v32, v34, v35);
LABEL_6:
  }

  shouldProcessEmoji = self->_shouldProcessEmoji;
  if (shouldProcessEmoji || self->_shouldProcessEmoticons)
  {
    if (self->_shouldProcessEmoticons || !shouldProcessEmoji)
    {
      v37 = shouldProcessEmoji | 2;
    }

    else
    {
      v37 = self->_shouldProcessEmoji;
    }

    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    emojiRangeReplacements = self->_emojiRangeReplacements;
    self->_emojiRangeReplacements = v38;

    v44 = objc_msgSend_string(self, v40, v41, v42, v43);
    v49 = objc_msgSend_language(self, v45, v46, v47, v48);
    v54 = objc_msgSend_voiceIdentifier(self, v50, v51, v52, v53);
    v55 = TTSSpeechTransformTextWithLanguageAndVoiceIdentifier(v44, v37, v49, v54, self->_emojiRangeReplacements);
    objc_msgSend_setProcessedString_(self, v56, v55, v57, v58);
  }

  v59 = objc_msgSend_ssmlRepresentation(self, v28, v29, v30, v31);

  if (v59)
  {
    v72 = objc_alloc_init(_TtC12TextToSpeech15SSMLVoiceTagger);
    v64 = objc_msgSend_ssmlRepresentation(self, v60, v61, v62, v63);
    v68 = objc_msgSend_tagSSML_(v72, v65, v64, v66, v67);
    objc_msgSend_setTaggedSSML_(self, v69, v68, v70, v71);
  }
}

- (id)_detectLanguageFromContent
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_string(self, a2, v2, v3, v4);

  if (!v6)
  {
    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"content is nil, language detection not possible", v9, v10);
    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v37, @"%s:%d %@", v38, v39, "[TTSSpeechAction _detectLanguageFromContent]", 231, v31);
    if (qword_1ED970350 != -1)
    {
      sub_1A957925C();
    }

    v36 = qword_1ED970348;
    if (!os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

LABEL_10:
    v40 = v35;
    v41 = v36;
    *buf = 136446210;
    v78 = objc_msgSend_UTF8String(v35, v42, v43, v44, v45);
    _os_log_impl(&dword_1A9324000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
LABEL_11:

LABEL_12:
    v46 = 0;
    goto LABEL_13;
  }

  v11 = objc_msgSend_string(self, v7, v8, v9, v10);
  v16 = objc_msgSend_length(v11, v12, v13, v14, v15);

  if (v16 <= 0x15D)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_msgSend_string(self, v17, v18, v19, v20);
    v27 = objc_msgSend_length(v22, v23, v24, v25, v26);
    v31 = objc_msgSend_stringWithFormat_(v21, v28, @"Not enough characters (%lu) to accurately detect language", v29, v30, v27);

    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v32, @"%s:%d %@", v33, v34, "[TTSSpeechAction _detectLanguageFromContent]", 238, v31);
    if (qword_1ED970350 != -1)
    {
      sub_1A9579248();
    }

    v36 = qword_1ED970348;
    if (!os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v49 = objc_msgSend_string(self, v17, v18, v19, v20);
  v54 = objc_msgSend_string(self, v50, v51, v52, v53);
  v81.length = objc_msgSend_length(v54, v55, v56, v57, v58);
  v81.location = 0;
  v31 = CFStringTokenizerCopyBestStringLanguage(v49, v81);

  if (!v31)
  {
    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v59, @"could not determine content language, returning default", v60, v61);
    v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v67, @"%s:%d %@", v68, v69, "[TTSSpeechAction _detectLanguageFromContent]", 245, v35);
    if (qword_1ED970350 != -1)
    {
      sub_1A9579234();
    }

    v70 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v41;
      v72 = v70;
      *buf = 136446210;
      v78 = objc_msgSend_UTF8String(v41, v73, v74, v75, v76);
      _os_log_impl(&dword_1A9324000, v72, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v62 = TTSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
  v66 = v62;
  if (v62 && objc_msgSend_rangeOfString_(v62, v63, v31, v64, v65) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = 0;
  }

  else
  {
    v46 = v31;
  }

LABEL_13:
  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

@end