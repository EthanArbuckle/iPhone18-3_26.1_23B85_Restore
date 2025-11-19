@interface TTSSpeechSynthesizer
+ (BOOL)isSystemVoice:(id)a3;
+ (id)_speechVoiceForIdentifier:(id)a3 language:(id)a4 footprint:(int64_t)a5;
+ (id)audioFileSettingsForVoice:(id)a3;
+ (id)availableLanguageCodes;
+ (id)remapVoiceIdentifier:(id)a3;
+ (id)unavailableVoiceIdentifiers;
+ (id)voiceForIdentifier:(id)a3;
- (BOOL)_continueSpeakingRequest:(id)a3 withError:(id *)a4;
- (BOOL)_pauseSpeakingRequest:(id)a3 atNextBoundary:(int64_t)a4 synchronously:(BOOL)a5 error:(id *)a6;
- (BOOL)_startSpeakingString:(id)a3 orSSMLString:(id)a4 withLanguageCode:(id)a5 jobId:(id)a6 request:(id *)a7 error:(id *)a8;
- (BOOL)_stopSpeakingRequest:(id)a3 atNextBoundary:(int64_t)a4 synchronously:(BOOL)a5 error:(id *)a6;
- (BOOL)continueSpeakingWithError:(id *)a3;
- (BOOL)isSpeaking;
- (BOOL)pauseSpeakingAtNextBoundary:(int64_t)a3 synchronously:(BOOL)a4 error:(id *)a5;
- (BOOL)stopSpeakingAtNextBoundary:(int64_t)a3 synchronously:(BOOL)a4 error:(id *)a5;
- (NSArray)audioEffects;
- (NSString)bundleIdentifier;
- (NSString)resolvedVoiceIdentifier;
- (NSString)voiceIdentifier;
- (TTSSpeechSynthesizer)init;
- (TTSSpeechSynthesizerDelegate)delegate;
- (_TtC12TextToSpeech15CoreSynthesizer)coreSynth;
- (float)normalizedRate;
- (id)_makeRequestForVoice:(id)a3 andLanguageCode:(id)a4;
- (id)_preprocessText:(id)a3 languageCode:(id)a4;
- (id)_processMarker:(id)a3 forRequest:(id)a4;
- (id)_resolveVoiceForLanguage:(id)a3;
- (id)resolvedVoiceIdentifierForLanguageCode:(id)a3;
- (id)speechString;
- (id)voiceResolver;
- (unsigned)audioQueueFlags;
- (void)_mediaServicesDied;
- (void)_setDelegate:(id)a3;
- (void)dealloc;
- (void)setAudioEffects:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setOutputChannels:(id)a3;
- (void)setPhonemeSubstitutions:(id)a3;
- (void)setPitch:(float)a3;
- (void)setUserSubstitutions:(id)a3;
- (void)setVolume:(float)a3;
- (void)speechRequest:(id)a3 didStopWithSuccess:(BOOL)a4 phonemesSpoken:(id)a5 error:(id)a6;
- (void)speechRequest:(id)a3 withMarker:(id)a4;
- (void)speechRequestDidContinue:(id)a3;
- (void)speechRequestDidPause:(id)a3;
- (void)speechRequestDidStart:(id)a3;
- (void)testingSetLastRuleConversion:(id)a3 replacement:(id)a4;
- (void)updateCoreSynthSubstitutions;
@end

@implementation TTSSpeechSynthesizer

- (float)normalizedRate
{
  objc_msgSend_rate(self, a2, v2, v3, v4);
  v7 = v6;
  objc_msgSend_rate(self, v8, v9, v10, v11);
  v13 = (((v12 + -1.0) / 3.0) * 0.5) + 0.5;
  result = v12 * 0.5;
  if (v7 >= 1.0)
  {
    return v13;
  }

  return result;
}

+ (BOOL)isSystemVoice:(id)a3
{
  v5 = objc_msgSend_voiceForIdentifier_(a1, a2, a3, v3, v4);
  isSystemVoice = objc_msgSend_isSystemVoice(v5, v6, v7, v8, v9);

  return isSystemVoice;
}

+ (id)unavailableVoiceIdentifiers
{
  if (qword_1EB391018 != -1)
  {
    sub_1A9578A9C();
  }

  v3 = qword_1EB391010;

  return v3;
}

+ (id)voiceForIdentifier:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1A93521CC;
  v21 = sub_1A93521DC;
  v22 = 0;
  v4 = dispatch_semaphore_create(0);
  v9 = objc_msgSend_shared(_TtC12TextToSpeech13VoiceResolver, v5, v6, v7, v8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A93521E4;
  v14[3] = &unk_1E78807D8;
  v16 = &v17;
  v10 = v4;
  v15 = v10;
  objc_msgSend_voiceForIdentifier_preferringLanguage_completionHandler_(v9, v11, v3, 0, v14);

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)testingSetLastRuleConversion:(id)a3 replacement:(id)a4
{
  v13 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  testingLastRuleConversion = self->_testingLastRuleConversion;
  self->_testingLastRuleConversion = v7;

  objc_msgSend_setObject_forKeyedSubscript_(self->_testingLastRuleConversion, v9, v6, @"original", v10);
  objc_msgSend_setObject_forKeyedSubscript_(self->_testingLastRuleConversion, v11, v13, @"replacement", v12);
}

+ (id)availableLanguageCodes
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1A93521CC;
  v21 = sub_1A93521DC;
  v22 = MEMORY[0x1E695E0F0];
  v2 = dispatch_semaphore_create(0);
  v7 = objc_msgSend_shared(_TtC12TextToSpeech13VoiceResolver, v3, v4, v5, v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A935248C;
  v14[3] = &unk_1E7880800;
  v16 = &v17;
  v8 = v2;
  v15 = v8;
  objc_msgSend_currentLocaleIdentifiersWithCompletionHandler_(v7, v9, v14, v10, v11);

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (TTSSpeechSynthesizer)init
{
  v36.receiver = self;
  v36.super_class = TTSSpeechSynthesizer;
  v2 = [(TTSSpeechSynthesizer *)&v36 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("TTSSpeechSynthesizer", v3);
    v5 = *(v2 + 6);
    *(v2 + 6) = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    __asm { FMOV            V0.2S, #1.0 }

    *(v2 + 92) = _D0;
    *(v2 + 25) = 1065353216;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = *(v2 + 7);
    *(v2 + 7) = v13;

    objc_storeStrong(v2 + 14, MEMORY[0x1E69E96A0]);
    v15 = voucher_copy();
    v16 = *(v2 + 22);
    *(v2 + 22) = v15;

    v21 = objc_msgSend_array(MEMORY[0x1E695DEC8], v17, v18, v19, v20);
    v22 = *(v2 + 19);
    *(v2 + 19) = v21;

    v27 = objc_msgSend_array(MEMORY[0x1E695DEC8], v23, v24, v25, v26);
    v28 = *(v2 + 18);
    *(v2 + 18) = v27;

    v33 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v29, v30, v31, v32);
    objc_msgSend_addObserver_selector_name_object_(v33, v34, v2, sel__mediaServicesDied, *MEMORY[0x1E6958120], 0);
  }

  return v2;
}

- (_TtC12TextToSpeech15CoreSynthesizer)coreSynth
{
  coreSynth = self->_coreSynth;
  if (!coreSynth)
  {
    v4 = objc_alloc_init(_TtC12TextToSpeech15CoreSynthesizer);
    v5 = self->_coreSynth;
    self->_coreSynth = v4;

    coreSynth = self->_coreSynth;
  }

  return coreSynth;
}

- (id)voiceResolver
{
  v5 = objc_msgSend_coreSynth(self, a2, v2, v3, v4);
  v10 = objc_msgSend_voiceResolver(v5, v6, v7, v8, v9);

  return v10;
}

- (void)_mediaServicesDied
{
  v3 = AXTTSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A9324000, v3, OS_LOG_TYPE_DEFAULT, "Media services reset", v8, 2u);
  }

  objc_msgSend_removeAllObjects(self->_channels, v4, v5, v6, v7);
}

- (void)dealloc
{
  objc_msgSend__stopSpeakingRequest_atNextBoundary_synchronously_error_(self, a2, 0, 0, 0, 0);
  v3.receiver = self;
  v3.super_class = TTSSpeechSynthesizer;
  [(TTSSpeechSynthesizer *)&v3 dealloc];
}

- (void)_setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_synthesizerFlags = *&self->_synthesizerFlags & 0xBF | v10;
  }
}

- (void)setVolume:(float)a3
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  self->_volume = fmaxf(a3, 0.0001);
}

- (void)setPitch:(float)a3
{
  if (a3 > 2.0)
  {
    a3 = 2.0;
  }

  self->_pitch = fmaxf(a3, 0.5);
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = objc_msgSend_coreSynth(self, v5, v6, v7, v8);
  objc_msgSend_setBundleIdentifier_(v12, v9, v4, v10, v11);
}

- (NSString)bundleIdentifier
{
  v5 = objc_msgSend_coreSynth(self, a2, v2, v3, v4);
  v10 = objc_msgSend_bundleIdentifier(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setOutputChannels:(id)a3
{
  objc_storeStrong(&self->_outputChannels, a3);
  v5 = a3;
  v13 = objc_msgSend_coreSynth(self, v6, v7, v8, v9);
  objc_msgSend_setChannels_(v13, v10, v5, v11, v12);
}

- (void)setUserSubstitutions:(id)a3
{
  v6 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = objc_msgSend_array(MEMORY[0x1E695DEC8], v7, v8, v9, v10);
  }

  userSubstitutions = self->_userSubstitutions;
  self->_userSubstitutions = v12;

  objc_msgSend_enumerateObjectsUsingBlock_(self->_userSubstitutions, v14, &unk_1F1CEFE98, v15, v16);

  MEMORY[0x1EEE66B58](self, sel_updateCoreSynthSubstitutions, v17, v18, v19);
}

- (void)setPhonemeSubstitutions:(id)a3
{
  v6 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = objc_msgSend_array(MEMORY[0x1E695DEC8], v7, v8, v9, v10);
  }

  phonemeSubstitutions = self->_phonemeSubstitutions;
  self->_phonemeSubstitutions = v12;

  MEMORY[0x1EEE66B58](self, sel_updateCoreSynthSubstitutions, v14, v15, v16);
}

- (void)updateCoreSynthSubstitutions
{
  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v14 = objc_msgSend_coreSynth(self, v3, v4, v5, v6);
    v10 = objc_msgSend_arrayByAddingObjectsFromArray_(self->_userSubstitutions, v7, self->_phonemeSubstitutions, v8, v9);
    objc_msgSend_setLegacySubstitutions_(v14, v11, v10, v12, v13);
  }
}

- (NSString)resolvedVoiceIdentifier
{
  v3 = objc_opt_class();
  v7 = objc_msgSend_voiceForIdentifier_(v3, v4, self->_voiceIdentifier, v5, v6);
  v12 = objc_msgSend_identifier(v7, v8, v9, v10, v11);

  return v12;
}

- (id)resolvedVoiceIdentifierForLanguageCode:(id)a3
{
  v5 = objc_msgSend__resolveVoiceForLanguage_(self, a2, a3, v3, v4);
  v10 = objc_msgSend_identifier(v5, v6, v7, v8, v9);

  return v10;
}

- (NSString)voiceIdentifier
{
  voiceIdentifier = self->_voiceIdentifier;
  if (voiceIdentifier)
  {
    v3 = voiceIdentifier;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1A93521CC;
    v28 = sub_1A93521DC;
    v29 = 0;
    v5 = dispatch_semaphore_create(0);
    v10 = objc_msgSend_voiceResolver(self, v6, v7, v8, v9);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = sub_1A9352E2C;
    v21 = &unk_1E78807D8;
    v23 = &v24;
    v11 = v5;
    v22 = v11;
    objc_msgSend_voiceForIdentifier_preferringLanguage_completionHandler_(v10, v12, 0, 0, &v18);

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v3 = objc_msgSend_identifier(v25[5], v13, v14, v15, v16, v18, v19, v20, v21);

    _Block_object_dispose(&v24, 8);
  }

  return v3;
}

- (id)_preprocessText:(id)a3 languageCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_isEqual_(v6, v7, @"he-IL", v8, v9))
  {
    v13 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v10, @"/י", &stru_1F1CFF8D8, v12);

    v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v13, v14, @"/ה", &stru_1F1CFF8D8, v15);

    v18 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v16, @"/ת", &stru_1F1CFF8D8, v17);
LABEL_5:
    v23 = v18;

    v5 = v23;
    goto LABEL_6;
  }

  if (objc_msgSend_isEqual_(v6, v10, @"ja-JP", v11, v12))
  {
    v18 = AXSpeechReplaceJapaneseElongationCharactersIfNeeded(v5);
    goto LABEL_5;
  }

LABEL_6:
  if (objc_msgSend_length(v5, v19, v20, v21, v22) >= 4)
  {
    v28 = objc_msgSend_localizedUppercaseString(v5, v24, v25, v26, v27);
    isEqualToString = objc_msgSend_isEqualToString_(v28, v29, v5, v30, v31);

    if (isEqualToString)
    {
      v35 = objc_msgSend_localizedLowercaseString(v5, v24, v33, v34, v27);

      v5 = v35;
    }
  }

  v36 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v24, @"’", @"'", v27);

  v39 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v36, v37, @"‘", @"'", v38);

  v42 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v39, v40, @"−", @"-", v41);

  v50 = 12288;
  v45 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v43, &v50, 1, v44);
  v48 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v42, v46, v45, @" ", v47);

  return v48;
}

+ (id)remapVoiceIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v8 = objc_msgSend_voiceForIdentifier_(v4, v5, v3, v6, v7);

  v13 = objc_msgSend_identifier(v8, v9, v10, v11, v12);

  return v13;
}

- (id)_resolveVoiceForLanguage:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A93521CC;
  v23 = sub_1A93521DC;
  v24 = 0;
  v5 = dispatch_semaphore_create(0);
  v10 = objc_msgSend_voiceResolver(self, v6, v7, v8, v9);
  voiceIdentifier = self->_voiceIdentifier;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A9353264;
  v16[3] = &unk_1E78807D8;
  v18 = &v19;
  v12 = v5;
  v17 = v12;
  objc_msgSend_voiceForIdentifier_preferringLanguage_completionHandler_(v10, v13, voiceIdentifier, v4, v16);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v14 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)_makeRequestForVoice:(id)a3 andLanguageCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(TTSSpeechRequest);
  v13 = objc_msgSend_voucher(self, v9, v10, v11, v12);
  objc_msgSend_setVoucher_(v8, v14, v13, v15, v16);

  objc_msgSend_setVoice_(v8, v17, v6, v18, v19);
  perVoiceSettings = self->_perVoiceSettings;
  if (perVoiceSettings)
  {
    objc_msgSend_setVoiceSettings_(v8, v20, perVoiceSettings, v21, v22);
  }

  v28 = objc_msgSend_language(v6, v20, perVoiceSettings, v21, v22);
  if (v28)
  {
    v29 = objc_msgSend_language(v6, v24, v25, v26, v27);
    objc_msgSend_setLanguageCode_(v8, v30, v29, v31, v32);
  }

  else
  {
    objc_msgSend_setLanguageCode_(v8, v24, v7, v26, v27);
  }

  v37 = objc_msgSend_gender(v6, v33, v34, v35, v36);
  objc_msgSend_setGender_(v8, v38, v37, v39, v40);
  objc_msgSend_setPitch_(v8, v41, v42, v43, v44, self->_pitch);
  objc_msgSend_setRate_(v8, v45, v46, v47, v48, self->_rate);
  objc_msgSend_setVolume_(v8, v49, v50, v51, v52, self->_volume);
  objc_msgSend_setMaintainsInput_(v8, v53, *&self->_synthesizerFlags >> 7, v54, v55);
  v60 = objc_msgSend_outputChannels(self, v56, v57, v58, v59);
  objc_msgSend_setChannels_(v8, v61, v60, v62, v63);

  v68 = objc_msgSend_audioBufferCallback(self, v64, v65, v66, v67);
  objc_msgSend_setAudioBufferCallback_(v8, v69, v68, v70, v71);

  v76 = objc_msgSend_synthesizeSilently(self, v72, v73, v74, v75);
  objc_msgSend_setSynthesizeSilently_(v8, v77, v76, v78, v79);
  v84 = objc_msgSend_ignoreSubstitutions(self, v80, v81, v82, v83);
  objc_msgSend_setIgnoreSubstitutions_(v8, v85, v84, v86, v87);
  if (!self->_useSharedSession)
  {
    if (self->_audioSessionIDIsValid)
    {
      objc_msgSend_setAudioSessionID_(v8, v88, self->_audioSessionID, v90, v91);
    }

    else
    {
      v95 = objc_msgSend_sharedInstance(MEMORY[0x1E6958468], v88, v89, v90, v91);
      v100 = objc_msgSend_opaqueSessionID(v95, v96, v97, v98, v99);

      objc_msgSend_setAudioSessionID_(v8, v101, v100, v102, v103);
    }

    objc_msgSend_setAudioSessionIDIsValid_(v8, v92, 1, v93, v94);
    objc_msgSend_setAudioQueueFlags_(v8, v104, self->_audioQueueFlags, v105, v106);
  }

  return v8;
}

- (BOOL)_startSpeakingString:(id)a3 orSSMLString:(id)a4 withLanguageCode:(id)a5 jobId:(id)a6 request:(id *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19 = a6;
  if (!(v13 | v14))
  {
    v20 = TTSErrorCreate(0, @"TTSErrorDomain", -4005, @"speech string is empty");
    if (v20)
    {
      v13 = 0;
      if (!a8)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v21 = objc_msgSend__resolveVoiceForLanguage_(self, v16, v15, v17, v18);
  if (v21)
  {
    v26 = v21;
    v90 = a8;
    v27 = objc_msgSend_language(v21, v22, v23, v24, v25);
    v30 = v27;
    if (v27)
    {
      objc_msgSend__preprocessText_languageCode_(self, v28, v13, v27, v29);
    }

    else
    {
      objc_msgSend__preprocessText_languageCode_(self, v28, v13, v15, v29);
    }
    v31 = ;

    v34 = objc_msgSend__makeRequestForVoice_andLanguageCode_(self, v32, v26, v15, v33);
    v39 = v34;
    if (v19)
    {
      objc_msgSend_setJobIdentifier_(v34, v35, v19, v37, v38);
    }

    else
    {
      v45 = objc_msgSend_shared(_TtC12TextToSpeech15TTSSpeechTracer, v35, v36, v37, v38);
      v50 = objc_msgSend_makeSpeechJobIdentifier(v45, v46, v47, v48, v49);
      objc_msgSend_setJobIdentifier_(v39, v51, v50, v52, v53);
    }

    v57 = objc_msgSend_shared(_TtC12TextToSpeech15TTSSpeechTracer, v40, v41, v42, v43);
    v58 = &stru_1F1CFF8D8;
    if (v14)
    {
      v58 = v14;
    }

    if (v31)
    {
      objc_msgSend_makeWithStart_(_TtC12TextToSpeech18TTSSpeechEventObjc, v54, v31, v55, v56);
    }

    else
    {
      objc_msgSend_makeWithStart_(_TtC12TextToSpeech18TTSSpeechEventObjc, v54, v58, v55, v56);
    }
    v59 = ;
    v64 = objc_msgSend_jobIdentifier(v39, v60, v61, v62, v63);
    objc_msgSend_emitWithEvent_forIdentifier_(v57, v65, v59, v64, v66);

    objc_initWeak(&location, v39);
    v71 = objc_msgSend_date(MEMORY[0x1E695DF00], v67, v68, v69, v70);
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = sub_1A93538B8;
    v95[3] = &unk_1E7880848;
    v72 = v71;
    v96 = v72;
    objc_copyWeak(&v97, &location);
    objc_msgSend_setLatencyCallback_(v39, v73, v95, v74, v75);
    if (v14)
    {
      objc_msgSend_setText_(v39, v76, v14, v77, v78);
    }

    else
    {
      objc_msgSend_setText_(v39, v76, v31, v77, v78);
    }

    objc_msgSend_setSpeechStringType_(v39, v79, v14 != 0, v80, v81);
    Current = CFAbsoluteTimeGetCurrent();
    objc_msgSend_setDispatchTime_(v39, v83, v84, v85, v86, Current);
    if (v39)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A9353948;
      block[3] = &unk_1E7880870;
      block[4] = self;
      v93 = v39;
      v94 = v15;
      dispatch_sync(queue, block);
    }

    if (a7)
    {
      v88 = v39;
      *a7 = v39;
    }

    objc_destroyWeak(&v97);

    objc_destroyWeak(&location);
    v20 = 0;
    v13 = v31;
    a8 = v90;
    if (!v90)
    {
      goto LABEL_28;
    }

LABEL_27:
    v20 = v20;
    *a8 = v20;
LABEL_28:
    v44 = v20 == 0;
    goto LABEL_29;
  }

  v20 = TTSErrorCreate(0, @"TTSErrorDomain", -4005, @"no voice available to speak with the supplied language code");
  if (a8)
  {
    v20 = v20;
    v44 = 0;
    *a8 = v20;
  }

  else
  {
    v44 = 0;
  }

LABEL_29:

  return v44;
}

+ (id)audioFileSettingsForVoice:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_voiceForIdentifier_(TTSSpeechSynthesizer, v3, v6, v4, v5);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_1A93521CC;
    v33 = sub_1A93521DC;
    v34 = 0;
    v8 = dispatch_semaphore_create(0);
    v13 = objc_msgSend_synthesisProviderVoice(v7, v9, v10, v11, v12);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_1A9353B54;
    v26 = &unk_1E7880898;
    v28 = &v29;
    v14 = v8;
    v27 = v14;
    objc_msgSend_formatForVoice_completionHandler_(_TtC12TextToSpeech13TTSAURenderer, v15, v13, &v23, v16);

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v21 = objc_msgSend_settings(v30[5], v17, v18, v19, v20, v23, v24, v25, v26);

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)_speechVoiceForIdentifier:(id)a3 language:(id)a4 footprint:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1A93521CC;
  v25 = sub_1A93521DC;
  v26 = 0;
  v8 = dispatch_semaphore_create(0);
  v13 = objc_msgSend_shared(_TtC12TextToSpeech13VoiceResolver, v9, v10, v11, v12);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A9353D34;
  v18[3] = &unk_1E78807D8;
  v20 = &v21;
  v14 = v8;
  v19 = v14;
  objc_msgSend_voiceForIdentifier_preferringLanguage_completionHandler_(v13, v15, v6, v7, v18);

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v16 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v16;
}

- (BOOL)_stopSpeakingRequest:(id)a3 atNextBoundary:(int64_t)a4 synchronously:(BOOL)a5 error:(id *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = self->_speechRequests;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v36, v40, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v9);
        }

        if (!v8 || *(*(&v36 + 1) + 8 * i) == v8)
        {
          v16 = dispatch_semaphore_create(0);
          v21 = objc_msgSend_coreSynth(self, v17, v18, v19, v20);
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = sub_1A9353FA4;
          v34[3] = &unk_1E78808C0;
          v35 = v16;
          v22 = v16;
          objc_msgSend_stopSpeakingAt_completionHandler_(v21, v23, a4, v34, v24);

          dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v36, v40, 16);
    }

    while (v13);
  }

  if (objc_msgSend_count(self->_speechRequests, v25, v26, v27, v28))
  {
    v29 = 0;
  }

  else
  {
    v29 = TTSErrorCreate(0, @"TTSErrorDomain", -4003, @"not currently speaking");
  }

  if (a6)
  {
    v29 = v29;
    *a6 = v29;
  }

  v30 = v29 == 0;

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (BOOL)_pauseSpeakingRequest:(id)a3 atNextBoundary:(int64_t)a4 synchronously:(BOOL)a5 error:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = self->_speechRequests;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v44, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if (!v7 || v15 == v7)
        {
          v16 = dispatch_semaphore_create(0);
          v21 = objc_msgSend_coreSynth(self, v17, v18, v19, v20);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = sub_1A93541C4;
          v38[3] = &unk_1E78808C0;
          v39 = v16;
          v22 = v16;
          objc_msgSend_pauseSpeakingAt_completionHandler_(v21, v23, a4, v38, v24);

          dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
          objc_msgSend_speechRequestDidPause_(self, v25, v15, v26, v27);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v40, v44, 16);
    }

    while (v12);
  }

  if (objc_msgSend_count(self->_speechRequests, v28, v29, v30, v31))
  {
    v32 = 0;
  }

  else
  {
    v32 = TTSErrorCreate(0, @"TTSErrorDomain", -4003, @"not currently speaking");
  }

  if (a6)
  {
    v32 = v32;
    *a6 = v32;
  }

  v33 = v32 == 0;

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)_continueSpeakingRequest:(id)a3 withError:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = self->_speechRequests;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v32, v36, 16);
  if (v9)
  {
    v14 = v9;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        if (!v6 || v17 == v6)
        {
          v18 = objc_msgSend_coreSynth(self, v10, v11, v12, v13, v32);
          v23 = objc_msgSend_continueSpeaking(v18, v19, v20, v21, v22);

          if (v23)
          {
            objc_msgSend_speechRequestDidContinue_(self, v10, v17, v12, v13);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v32, v36, 16);
    }

    while (v14);
  }

  if (!objc_msgSend_count(self->_speechRequests, v24, v25, v26, v27))
  {
    v28 = TTSErrorCreate(0, @"TTSErrorDomain", -4003, @"no active speech job");
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v28 = 0;
  if (a4)
  {
LABEL_14:
    v28 = v28;
    *a4 = v28;
  }

LABEL_15:
  v29 = v28 == 0;

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (NSArray)audioEffects
{
  v5 = objc_msgSend_coreSynth(self, a2, v2, v3, v4);
  v10 = objc_msgSend_effects(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setAudioEffects:(id)a3
{
  v4 = a3;
  v12 = objc_msgSend_coreSynth(self, v5, v6, v7, v8);
  objc_msgSend_setEffects_(v12, v9, v4, v10, v11);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A93544A4;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (TTSSpeechSynthesizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)stopSpeakingAtNextBoundary:(int64_t)a3 synchronously:(BOOL)a4 error:(id *)a5
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93545AC;
  block[3] = &unk_1E78808E8;
  block[4] = self;
  block[5] = &v10;
  v9 = a4;
  block[6] = a3;
  block[7] = a5;
  dispatch_sync(queue, block);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (BOOL)pauseSpeakingAtNextBoundary:(int64_t)a3 synchronously:(BOOL)a4 error:(id *)a5
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93546AC;
  block[3] = &unk_1E78808E8;
  block[4] = self;
  block[5] = &v10;
  v9 = a4;
  block[6] = a3;
  block[7] = a5;
  dispatch_sync(queue, block);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

- (BOOL)continueSpeakingWithError:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A935479C;
  block[3] = &unk_1E7880910;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isSpeaking
{
  v6 = objc_msgSend_coreSynth(self, a2, v2, v3, v4);
  if (objc_msgSend_isSpeaking(v6, v7, v8, v9, v10))
  {
    isPaused = 1;
  }

  else
  {
    v16 = objc_msgSend_coreSynth(self, v11, v12, v13, v14);
    isPaused = objc_msgSend_isPaused(v16, v17, v18, v19, v20);
  }

  return isPaused;
}

- (id)speechString
{
  v5 = objc_msgSend_lastObject(self->_speechRequests, a2, v2, v3, v4);
  v10 = objc_msgSend_text(v5, v6, v7, v8, v9);

  return v10;
}

- (unsigned)audioQueueFlags
{
  v5 = objc_msgSend_coreSynth(self, a2, v2, v3, v4);
  v10 = objc_msgSend_audioQueueFlags(v5, v6, v7, v8, v9);

  return v10;
}

- (void)speechRequestDidStart:(id)a3
{
  v8 = a3;
  if (*&self->_synthesizerFlags)
  {
    v9 = objc_msgSend_delegateTargetQueue(self, v4, v5, v6, v7);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A9354A80;
    v10[3] = &unk_1E787FE98;
    v10[4] = self;
    v11 = v8;
    dispatch_async(v9, v10);
  }
}

- (void)speechRequestDidPause:(id)a3
{
  v8 = a3;
  if ((*&self->_synthesizerFlags & 8) != 0)
  {
    v9 = objc_msgSend_delegateTargetQueue(self, v4, v5, v6, v7);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A9354B90;
    v10[3] = &unk_1E787FE98;
    v10[4] = self;
    v11 = v8;
    dispatch_async(v9, v10);
  }
}

- (void)speechRequestDidContinue:(id)a3
{
  v8 = a3;
  if ((*&self->_synthesizerFlags & 0x10) != 0)
  {
    v9 = objc_msgSend_delegateTargetQueue(self, v4, v5, v6, v7);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A9354CA0;
    v10[3] = &unk_1E787FE98;
    v10[4] = self;
    v11 = v8;
    dispatch_async(v9, v10);
  }
}

- (void)speechRequest:(id)a3 didStopWithSuccess:(BOOL)a4 phonemesSpoken:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A9354DE8;
  block[3] = &unk_1E7880988;
  block[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

- (void)speechRequest:(id)a3 withMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = objc_msgSend__processMarker_forRequest_(self, v8, v7, v6, v9);
  if (v14)
  {
    if ((*&self->_synthesizerFlags & 0x40) != 0)
    {
      v15 = objc_msgSend_delegateTargetQueue(self, v10, v11, v12, v13);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A9355324;
      block[3] = &unk_1E7880870;
      block[4] = self;
      v26 = v14;
      v27 = v6;
      dispatch_async(v15, block);
    }

    if (objc_msgSend_markType(v7, v10, v11, v12, v13) == 1)
    {
      v20 = v7;
      if ((*&self->_synthesizerFlags & 0x20) != 0)
      {
        v21 = objc_msgSend_delegateTargetQueue(self, v16, v17, v18, v19);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1A935537C;
        v22[3] = &unk_1E7880870;
        v22[4] = self;
        v23 = v20;
        v24 = v6;
        dispatch_async(v21, v22);
      }
    }
  }
}

- (id)_processMarker:(id)a3 forRequest:(id)a4
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_markType(v5, v7, v8, v9, v10) != 1)
  {
    goto LABEL_10;
  }

  v11 = v5;
  v16 = objc_msgSend_wordRange(v11, v12, v13, v14, v15);
  v18 = v17;
  v22 = objc_msgSend_text(v6, v17, v19, v20, v21);
  if (v16 <= objc_msgSend_length(v22, v23, v24, v25, v26))
  {
    v35 = &v18[v16];
    v36 = objc_msgSend_text(v6, v27, v28, v29, v30);
    v41 = objc_msgSend_length(v36, v37, v38, v39, v40);

    if (v35 <= v41)
    {
LABEL_9:

LABEL_10:
      v63 = v5;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v42 = objc_msgSend_text(v6, v31, v32, v33, v34);
  v47 = objc_msgSend_length(v42, v43, v44, v45, v46);

  if (v16 < v47)
  {
    v52 = objc_msgSend_text(v6, v48, v49, v50, v51);
    v57 = objc_msgSend_length(v52, v53, v54, v55, v56);

    v58 = AXTTSLogCommon();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v66 = v57 - v16;
      v67 = objc_msgSend_text(v6, v59, v60, v61, v62);
      v68 = MEMORY[0x1E696AD98];
      v73 = objc_msgSend_markType(v11, v69, v70, v71, v72);
      v77 = objc_msgSend_numberWithInteger_(v68, v74, v73, v75, v76);
      v81 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v78, v16, v79, v80);
      v85 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v82, v66, v83, v84);
      v86 = 138413058;
      v87 = v67;
      v88 = 2112;
      v89 = v77;
      v90 = 2112;
      v91 = v81;
      v92 = 2112;
      v93 = v85;
      _os_log_error_impl(&dword_1A9324000, v58, OS_LOG_TYPE_ERROR, "Speech processing error: [%@] / mark: %@ / range: %@, %@", &v86, 0x2Au);
    }

    goto LABEL_9;
  }

  v63 = 0;
LABEL_11:

  v64 = *MEMORY[0x1E69E9840];

  return v63;
}

@end