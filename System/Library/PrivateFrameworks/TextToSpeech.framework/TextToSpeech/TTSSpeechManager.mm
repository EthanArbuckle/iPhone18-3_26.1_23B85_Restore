@interface TTSSpeechManager
+ (BOOL)currentProcessAllowedToSaveVoiceInfo;
+ (URegularExpression)createRegularExpressionFromString:(id)a3;
+ (id)_resetAvailableVoices;
+ (id)availableSuperCompactVoices;
+ (id)availableVoices;
+ (id)currentLanguageCode;
+ (id)languageCodeForVoiceIdentifier:(id)a3;
+ (id)literalStringMarkup:(id)a3 string:(id)a4 speakCap:(BOOL)a5;
+ (id)matchedRangesForString:(id)a3 withRegularExpression:(URegularExpression *)a4;
+ (id)spellOutLetterCaseMarkupString:(id)a3 string:(id)a4;
+ (void)test_actionStartTap:(id)a3;
- (AVAudioSession)audioSession;
- (BOOL)isInAudioInterruption;
- (BOOL)isPaused;
- (BOOL)isSpeaking;
- (NSArray)outputChannels;
- (NSString)audioSessionCategory;
- (TTSSpeechManager)init;
- (id)_phonemeSubstitutionsForAction:(id)a3;
- (id)externalVoiceIdentifierUsedForLanguage:(id)a3;
- (id)voiceIdentifierUsedForLanguage:(id)a3;
- (unint64_t)audioSessionCategoryOptions;
- (unint64_t)setActiveOptions;
- (unsigned)audioQueueFlags;
- (void)__speechJobFinished:(id)a3;
- (void)_continueSpeaking;
- (void)_didBeginInterruption;
- (void)_didEndInterruption;
- (void)_dispatchSpeechAction:(id)a3;
- (void)_handleAudioInterruption:(id)a3;
- (void)_handleMediaServicesWereLost:(id)a3;
- (void)_handleMediaServicesWereReset:(id)a3;
- (void)_initialize;
- (void)_isSpeaking:(id)a3;
- (void)_pauseSpeaking:(id)a3;
- (void)_processAudioBufferCallback:(id)a3;
- (void)_processDidContinueCallback:(id)a3;
- (void)_processDidEncounterMarker:(id)a3;
- (void)_processDidPauseCallback:(id)a3;
- (void)_processDidStartCallback:(id)a3;
- (void)_processWillSpeechRange:(id)a3;
- (void)_resetInterruptionTracking;
- (void)_setVoiceForAction:(id)a3 snippet:(id)a4;
- (void)_speechJobFinished:(BOOL)a3 action:(id)a4;
- (void)_startNextSpeechJob;
- (void)_stopSpeaking:(id)a3;
- (void)_tearDown;
- (void)_updateAudioSessionProperties;
- (void)_updateAuxiliarySession;
- (void)_updateUserSubstitutions;
- (void)clearSpeechQueue;
- (void)continueSpeaking;
- (void)dealloc;
- (void)dispatchSpeechAction:(id)a3;
- (void)handleAudioInterruption:(id)a3;
- (void)handleMediaServicesWereLost:(id)a3;
- (void)handleMediaServicesWereReset:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseSpeaking:(int64_t)a3;
- (void)setAudioQueueFlags:(unsigned int)a3;
- (void)setAudioSession:(id)a3;
- (void)setAudioSessionCategory:(id)a3;
- (void)setAudioSessionCategoryOptions:(unint64_t)a3;
- (void)setIsInAudioInterruption:(BOOL)a3;
- (void)setIsPaused:(BOOL)a3;
- (void)setOutputChannels:(id)a3;
- (void)setSetActiveOptions:(unint64_t)a3;
- (void)setSpeechSource:(id)a3;
- (void)setUsesAuxiliarySession:(BOOL)a3;
- (void)speechSynthesizer:(id)a3 didContinueSpeakingRequest:(id)a4;
- (void)speechSynthesizer:(id)a3 didEncounterMarker:(id)a4 forRequest:(id)a5;
- (void)speechSynthesizer:(id)a3 didPauseSpeakingRequest:(id)a4;
- (void)speechSynthesizer:(id)a3 didStartSpeakingRequest:(id)a4;
- (void)stopSpeaking:(int64_t)a3;
- (void)tearDown;
@end

@implementation TTSSpeechManager

- (TTSSpeechManager)init
{
  v36.receiver = self;
  v36.super_class = TTSSpeechManager;
  v2 = [(TTSSpeechManager *)&v36 init];
  if (v2)
  {
    v3 = dispatch_queue_create("speech-manager-properties", 0);
    propertyQueue = v2->_propertyQueue;
    v2->_propertyQueue = v3;

    v5 = dispatch_queue_create("speech-manager-audio", 0);
    audioOperationQueue = v2->_audioOperationQueue;
    v2->_audioOperationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    speechQueue = v2->_speechQueue;
    v2->_speechQueue = v7;

    v2->_speechEnabled = 1;
    objc_msgSend_setShouldHandleAudioInterruptions_(v2, v9, 1, v10, v11);
    v12 = objc_alloc(MEMORY[0x1E6988780]);
    v16 = objc_msgSend_initWithTargetSerialQueue_(v12, v13, MEMORY[0x1E69E96A0], v14, v15);
    audioDeactivatorTimer = v2->_audioDeactivatorTimer;
    v2->_audioDeactivatorTimer = v16;

    objc_msgSend_setAutomaticallyCancelPendingBlockUponSchedulingNewBlock_(v2->_audioDeactivatorTimer, v18, 1, v19, v20);
    objc_msgSend_setAudioSessionInactiveTimeout_(v2, v21, v22, v23, v24, 2.0);
    v25 = objc_opt_new();
    speechThreadQueueLock = v2->_speechThreadQueueLock;
    v2->_speechThreadQueueLock = v25;

    v27 = objc_alloc_init(TTSSpeechThread);
    runThread = v2->_runThread;
    v2->_runThread = v27;

    objc_msgSend_start(v2->_runThread, v29, v30, v31, v32);
    objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(v2, v33, sel__initialize, v2->_runThread, 0, 0);
    v34 = v2;
  }

  return v2;
}

- (void)setSpeechSource:(id)a3
{
  objc_storeStrong(&self->_speechSource, a3);
  v8 = a3;
  objc_msgSend_setSpeechSource_(self->_synthesizer, v5, v8, v6, v7);
}

- (void)setUsesAuxiliarySession:(BOOL)a3
{
  if (self->_usesAuxiliarySession != a3)
  {
    self->_usesAuxiliarySession = a3;
    objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(self, a2, sel__updateAuxiliarySession, self->_runThread, 0, 0);
  }
}

- (void)_updateAuxiliarySession
{
  v172 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], a2, v2, v3, v4);
  if (v6 != self->_runThread)
  {
    sub_1A9579270();
  }

  objc_msgSend_handleAudioSessionObservers_(self, v7, 0, v8, v9);
  if (self->_synthesizer)
  {
    v14 = objc_msgSend_audioSession(self, v10, v11, v12, v13);
    v19 = objc_msgSend_audioSessionCategory(self, v15, v16, v17, v18);
    v24 = objc_msgSend_audioSessionCategoryOptions(self, v20, v21, v22, v23);
    if (self->_usesAuxiliarySession)
    {
      v29 = v24;
      v30 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9324000, v30, OS_LOG_TYPE_INFO, "Requesting use of aux session", buf, 2u);
      }

      v35 = objc_msgSend_audioSession(self, v31, v32, v33, v34);
      if (v35)
      {
        v40 = v35;
        v41 = objc_msgSend_audioSession(self, v36, v37, v38, v39);
        v46 = objc_msgSend_sharedInstance(MEMORY[0x1E6958468], v42, v43, v44, v45);
        isEqual = objc_msgSend_isEqual_(v41, v47, v46, v48, v49);

        if ((isEqual & 1) == 0)
        {
          if (!v19)
          {
            v19 = *MEMORY[0x1E6958098];
          }

          v118 = AXLogSpeechSynthesis();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v171 = v19;
            _os_log_impl(&dword_1A9324000, v118, OS_LOG_TYPE_INFO, "Aux session exists. Updating with category: %@", buf, 0xCu);
          }

          v123 = objc_msgSend_audioSession(self, v119, v120, v121, v122);
          v169 = 0;
          v126 = objc_msgSend_setCategory_error_(v123, v124, v19, &v169, v125);
          v88 = v169;

          if (!v88 && (v126 & 1) != 0)
          {
            goto LABEL_46;
          }

          v127 = AXLogSpeechSynthesis();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
          {
            sub_1A957929C();
          }

          goto LABEL_45;
        }
      }

      v51 = objc_msgSend_audioSession(self, v36, v37, v38, v39);
      if (v51)
      {
        v56 = v51;
        v57 = objc_msgSend_audioSession(self, v52, v53, v54, v55);
        v62 = objc_msgSend_sharedInstance(MEMORY[0x1E6958468], v58, v59, v60, v61);
        v66 = objc_msgSend_isEqual_(v57, v63, v62, v64, v65);

        if (!v66)
        {
          goto LABEL_46;
        }
      }

      if (!v29)
      {
        v29 = 3;
      }

      if (!v19)
      {
        v19 = *MEMORY[0x1E6958098];
      }

      v67 = objc_msgSend_auxiliarySession(MEMORY[0x1E6958468], v52, v53, v54, v55);
      objc_msgSend_setAudioSession_(self, v68, v67, v69, v70);

      v75 = objc_msgSend_audioSession(self, v71, v72, v73, v74);
      v168 = 0;
      v78 = objc_msgSend_setParticipatesInNowPlayingAppPolicy_error_(v75, v76, 0, &v168, v77);
      v79 = v168;

      if (v79 || (v78 & 1) == 0)
      {
        v80 = AXLogSpeechSynthesis();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          sub_1A9579304();
        }
      }

      v81 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v171 = v19;
        _os_log_impl(&dword_1A9324000, v81, OS_LOG_TYPE_INFO, "Aux session does not exist. Creating and updating with category: %@", buf, 0xCu);
      }

      v86 = objc_msgSend_audioSession(self, v82, v83, v84, v85);
      v167 = v79;
      objc_msgSend_setCategory_withOptions_error_(v86, v87, v19, v29, &v167);
      v88 = v167;

      if (((v88 == 0) & v78) != 0)
      {
        v88 = 0;
LABEL_41:
        synthesizer = self->_synthesizer;
        v129 = objc_msgSend_audioSession(self, v89, v90, v91, v92);
        v134 = objc_msgSend_opaqueSessionID(v129, v130, v131, v132, v133);
        objc_msgSend_useSpecificAudioSession_(synthesizer, v135, v134, v136, v137);

        v142 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v138, v139, v140, v141);
        v127 = v142;
        v147 = *MEMORY[0x1E69580E0];
        if (v14)
        {
          objc_msgSend_removeObserver_name_object_(v142, v143, self, *MEMORY[0x1E69580E0], v14);
          v148 = *MEMORY[0x1E6958118];
          objc_msgSend_removeObserver_name_object_(v127, v149, self, *MEMORY[0x1E6958118], v14);
          v150 = *MEMORY[0x1E6958120];
          objc_msgSend_removeObserver_name_object_(v127, v151, self, *MEMORY[0x1E6958120], v14);
        }

        else
        {
          v148 = *MEMORY[0x1E6958118];
          v150 = *MEMORY[0x1E6958120];
        }

        v152 = objc_msgSend_audioSession(self, v143, v144, v145, v146);
        objc_msgSend_addObserver_selector_name_object_(v127, v153, self, sel_handleAudioInterruption_, v147, v152);

        v158 = objc_msgSend_audioSession(self, v154, v155, v156, v157);
        objc_msgSend_addObserver_selector_name_object_(v127, v159, self, sel_handleMediaServicesWereLost_, v148, v158);

        v164 = objc_msgSend_audioSession(self, v160, v161, v162, v163);
        objc_msgSend_addObserver_selector_name_object_(v127, v165, self, sel_handleMediaServicesWereReset_, v150, v164);

LABEL_45:
LABEL_46:
        objc_msgSend_handleAudioSessionObservers_(self, v52, 1, v54, v55);

        goto LABEL_47;
      }

      v114 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        sub_1A957929C();
      }
    }

    else
    {
      v93 = objc_msgSend_audioSession(self, v25, v26, v27, v28);
      if (v93)
      {
        v98 = v93;
        v99 = objc_msgSend_audioSession(self, v94, v95, v96, v97);
        v104 = objc_msgSend_sharedInstance(MEMORY[0x1E6958468], v100, v101, v102, v103);
        v108 = objc_msgSend_isEqual_(v99, v105, v104, v106, v107);

        if (v108)
        {
          goto LABEL_46;
        }
      }

      v109 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9324000, v109, OS_LOG_TYPE_INFO, "Reverting back to shared audio session", buf, 2u);
      }

      v114 = objc_msgSend_sharedInstance(MEMORY[0x1E6958468], v110, v111, v112, v113);
      objc_msgSend_setAudioSession_(self, v115, v114, v116, v117);
      v88 = 0;
    }

    goto LABEL_41;
  }

  v14 = AXLogSpeechSynthesis();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1A957936C(v14);
  }

LABEL_47:

  v166 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2, v3, v4);
  objc_msgSend_removeObserver_(v6, v7, self, v8, v9);

  v10.receiver = self;
  v10.super_class = TTSSpeechManager;
  [(TTSSpeechManager *)&v10 dealloc];
}

- (void)tearDown
{
  objc_msgSend_lock(self->_speechThreadQueueLock, a2, v2, v3, v4);
  self->_speechThreadFinished = 1;
  CFRetain(self);
  objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(self, v6, sel__tearDown, self->_runThread, 0, 0);
  speechThreadQueueLock = self->_speechThreadQueueLock;

  objc_msgSend_unlock(speechThreadQueueLock, v7, v8, v9, v10);
}

- (void)_tearDown
{
  if (self->_usesAuxiliarySession)
  {
    v6 = objc_msgSend_audioDeactivatorTimer(self, a2, v2, v3, v4);
    objc_msgSend_cancel(v6, v7, v8, v9, v10);

    v15 = objc_msgSend_audioSession(self, v11, v12, v13, v14);
    objc_msgSend_setActive_withOptions_error_(v15, v16, 0, 0, 0);
  }

  objc_msgSend_setAudioSession_(self, a2, 0, v3, v4);
  v49 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v17, v18, v19, v20);
  v21 = *MEMORY[0x1E69580E0];
  v26 = objc_msgSend_audioSession(self, v22, v23, v24, v25);
  objc_msgSend_removeObserver_name_object_(v49, v27, self, v21, v26);

  v28 = *MEMORY[0x1E6958118];
  v33 = objc_msgSend_audioSession(self, v29, v30, v31, v32);
  objc_msgSend_removeObserver_name_object_(v49, v34, self, v28, v33);

  v35 = *MEMORY[0x1E6958120];
  v40 = objc_msgSend_audioSession(self, v36, v37, v38, v39);
  objc_msgSend_removeObserver_name_object_(v49, v41, self, v35, v40);

  objc_msgSend_handleAudioSessionObservers_(self, v42, 0, v43, v44);
  objc_msgSend_stop(self->_runThread, v45, v46, v47, v48);
  CFRelease(self);
}

- (void)handleMediaServicesWereLost:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_audioOperationQueue(self, v5, v6, v7, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A93625D0;
  v11[3] = &unk_1E787FE98;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(v9, v11);
}

- (void)_handleMediaServicesWereLost:(id)a3
{
  if (objc_msgSend_shouldHandleAudioInterruptions(self, a2, a3, v3, v4))
  {
    objc_msgSend__didBeginInterruption(self, v6, v7, v8, v9);
  }

  if (self->_usesAuxiliarySession)
  {
    propertyQueue = self->_propertyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A93626AC;
    block[3] = &unk_1E787FE20;
    block[4] = self;
    dispatch_sync(propertyQueue, block);
    objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(self, v11, sel__updateAuxiliarySession, self->_runThread, 0, 0);
  }

  objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(self, v6, sel__updateAudioSessionProperties, self->_runThread, 0, 0);
}

- (void)handleMediaServicesWereReset:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_audioOperationQueue(self, v5, v6, v7, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A936276C;
  v11[3] = &unk_1E787FE98;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(v9, v11);
}

- (void)_handleMediaServicesWereReset:(id)a3
{
  if (objc_msgSend_shouldHandleAudioInterruptions(self, a2, a3, v3, v4))
  {
    objc_msgSend__didEndInterruption(self, v6, v7, v8, v9);
  }

  runThread = self->_runThread;

  objc_msgSend_performSelector_onThread_withObject_waitUntilDone_(self, v6, sel__updateAudioSessionProperties, runThread, 0, 0);
}

- (void)_resetInterruptionTracking
{
  objc_msgSend_setAudioInterruptionStartedTime_(self, a2, v2, v3, v4, 0.0);
  objc_msgSend_setWasSpeakingBeforeAudioInterruption_(self, v6, 0, v7, v8);
  objc_msgSend_setDidRequestStartSpeakingDuringAudioInterruption_(self, v9, 0, v10, v11);
  objc_msgSend_setDidRequestPauseSpeakingDuringAudioInterruption_(self, v12, 0, v13, v14);
  objc_msgSend_setDidRequestResumeSpeakingDuringAudioInterruption_(self, v15, 0, v16, v17);

  objc_msgSend_setRequestedActionDuringAudioInterruption_(self, v18, 0, v19, v20);
}

- (void)_didEndInterruption
{
  objc_msgSend_setIsInAudioInterruption_(self, a2, 0, v2, v3);
  if (objc_msgSend_didRequestStartSpeakingDuringAudioInterruption(self, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_requestedActionDuringAudioInterruption(self, v9, v10, v11, v12);
    objc_msgSend_dispatchSpeechAction_(self, v14, v13, v15, v16);
  }

  else if (objc_msgSend_wasSpeakingBeforeAudioInterruption(self, v9, v10, v11, v12) && !objc_msgSend_didRequestPauseSpeakingDuringAudioInterruption(self, v20, v17, v18, v19) || objc_msgSend_didRequestResumeSpeakingDuringAudioInterruption(self, v20, v17, v18, v19))
  {
    objc_msgSend_continueSpeaking(self, v20, v17, v18, v19);
  }

  MEMORY[0x1EEE66B58](self, sel__resetInterruptionTracking, v17, v18, v19);
}

- (void)_didBeginInterruption
{
  v42 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isSpeaking(self, a2, v2, v3, v4) && (objc_msgSend_isPaused(self, v6, v7, v8, v9) & 1) == 0)
  {
    objc_msgSend_setWasSpeakingBeforeAudioInterruption_(self, v10, 1, v11, v12);
    objc_msgSend_pauseSpeaking_(self, v13, 0, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"Speech interrupted, pausing", v17, v18);
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"%s:%d %@", v21, v22, "[TTSSpeechManager _didBeginInterruption]", 642, v19);
    if (qword_1ED970350 != -1)
    {
      sub_1A9579408();
    }

    v24 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v23;
      v26 = v24;
      *buf = 136446210;
      v41 = objc_msgSend_UTF8String(v23, v27, v28, v29, v30);
      _os_log_impl(&dword_1A9324000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  objc_msgSend_setAudioInterruptionStartedTime_(self, v32, v33, v34, v35, Current);
  objc_msgSend_setIsInAudioInterruption_(self, v36, 1, v37, v38);
  v39 = *MEMORY[0x1E69E9840];
}

- (void)handleAudioInterruption:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_audioOperationQueue(self, v5, v6, v7, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A9362B40;
  v11[3] = &unk_1E787FE98;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(v9, v11);
}

- (void)_handleAudioInterruption:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_shouldHandleAudioInterruptions(self, v5, v6, v7, v8))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_msgSend_userInfo(v4, v9, v10, v11, v12);
    v18 = objc_msgSend_stringWithFormat_(v13, v15, @"AVSpeechSynthesizer Audio interruption notification: %@", v16, v17, v14);

    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%s:%d %@", v20, v21, "[TTSSpeechManager _handleAudioInterruption:]", 660, v18);
    if (qword_1ED970350 != -1)
    {
      sub_1A957941C();
    }

    v23 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
      v25 = v23;
      *buf = 136446210;
      v50 = objc_msgSend_UTF8String(v22, v26, v27, v28, v29);
      _os_log_impl(&dword_1A9324000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v34 = objc_msgSend_userInfo(v4, v30, v31, v32, v33);
    v38 = objc_msgSend_objectForKey_(v34, v35, *MEMORY[0x1E69580F8], v36, v37);
    v43 = objc_msgSend_integerValue(v38, v39, v40, v41, v42);

    if (v43)
    {
      if (v43 == 1)
      {
        objc_msgSend__didBeginInterruption(self, v44, v45, v46, v47);
      }
    }

    else
    {
      objc_msgSend__didEndInterruption(self, v44, v45, v46, v47);
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)_updateAudioSessionProperties
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], a2, v2, v3, v4);
  if ((objc_msgSend_isEqual_(v6, v7, self->_runThread, v8, v9) & 1) == 0)
  {
    sub_1A9579430();
  }

  v14 = objc_msgSend_audioSessionCategory(self, v10, v11, v12, v13);
  v19 = objc_msgSend_audioSessionCategoryOptions(self, v15, v16, v17, v18);
  if (v14)
  {
    v24 = v19;
    v25 = objc_msgSend_audioSession(self, v20, v21, v22, v23);
    v45 = 0;
    objc_msgSend_setCategory_withOptions_error_(v25, v26, v14, v24, &v45);
    v27 = v45;

    if (v27)
    {
      v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, @"Error setting category: %@", v29, v30, v27);
      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v32, @"%s:%d %@", v33, v34, "[TTSSpeechManager _updateAudioSessionProperties]", 687, v31);
      if (qword_1ED970350 != -1)
      {
        sub_1A957945C();
      }

      v36 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v35;
        v38 = v36;
        v43 = objc_msgSend_UTF8String(v35, v39, v40, v41, v42);
        *buf = 136446210;
        v47 = v43;
        _os_log_impl(&dword_1A9324000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((objc_msgSend_isEqualToString_(v10, v13, @"audioSessionCategory", v14, v15) & 1) != 0 || objc_msgSend_isEqualToString_(v10, v16, @"audioSessionCategoryOptions", v17, v18))
  {
    objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v16, sel__updateAudioSessionProperties, 0, 0);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = TTSSpeechManager;
    [(TTSSpeechManager *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_initialize
{
  v81 = *MEMORY[0x1E69E9840];
  objc_msgSend_handleAudioSessionObservers_(self, a2, 1, v2, v3);
  objc_msgSend__updateAudioSessionProperties(self, v5, v6, v7, v8);
  objc_initWeak(&location, self);
  v9 = objc_allocWithZone(TTSSpeechSynthesizer);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  synthesizer = self->_synthesizer;
  self->_synthesizer = v14;

  v20 = objc_msgSend_speechSource(self, v16, v17, v18, v19);
  objc_msgSend_setSpeechSource_(self->_synthesizer, v21, v20, v22, v23);

  objc_msgSend_setDelegate_(self->_synthesizer, v24, self, v25, v26);
  v31 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v27, v28, v29, v30);
  v36 = objc_msgSend_bundleIdentifier(v31, v32, v33, v34, v35);
  objc_msgSend_setBundleIdentifier_(self->_synthesizer, v37, v36, v38, v39);

  v45 = sub_1A93632E0(v40, v41, v42, v43, v44);
  v50 = objc_msgSend_sharedInstance(v45, v46, v47, v48, v49);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = sub_1A93633C0;
  v76[3] = &unk_1E7880C60;
  objc_copyWeak(&v77, &location);
  objc_msgSend_registerUpdateBlock_forRetrieveSelector_withListener_(v50, v51, v76, sel_customPronunciationSubstitutions, self);

  objc_msgSend__updateUserSubstitutions(self, v52, v53, v54, v55);
  v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v56, @"Synthesizer created: %@", v57, v58, self->_synthesizer);
  v63 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v60, @"%s:%d %@", v61, v62, "[TTSSpeechManager _initialize]", 729, v59);
  if (qword_1ED970350 != -1)
  {
    sub_1A9579484();
  }

  v64 = qword_1ED970348;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    v65 = v63;
    v70 = objc_msgSend_UTF8String(v63, v66, v67, v68, v69);
    *buf = 136446210;
    v80 = v70;
    _os_log_impl(&dword_1A9324000, v64, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  objc_msgSend__updateAuxiliarySession(self, v71, v72, v73, v74);
  objc_destroyWeak(&v77);
  objc_destroyWeak(&location);
  v75 = *MEMORY[0x1E69E9840];
}

- (unint64_t)setActiveOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A93634F0;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setSetActiveOptions:(unint64_t)a3
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A9363578;
  v4[3] = &unk_1E7880C88;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(propertyQueue, v4);
}

- (void)setAudioSessionCategory:(id)a3
{
  v4 = a3;
  propertyQueue = self->_propertyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A936361C;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(propertyQueue, v7);
}

- (NSString)audioSessionCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A9363718;
  v10 = sub_1A9363728;
  v11 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363730;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAudioSessionCategoryOptions:(unint64_t)a3
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A93637B8;
  v4[3] = &unk_1E7880C88;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(propertyQueue, v4);
}

- (unint64_t)audioSessionCategoryOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363870;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isInAudioInterruption
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363930;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsInAudioInterruption:(BOOL)a3
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A93639BC;
  v4[3] = &unk_1E7880CB0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(propertyQueue, v4);
}

- (AVAudioSession)audioSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A9363718;
  v10 = sub_1A9363728;
  v11 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363ABC;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAudioSession:(id)a3
{
  v4 = a3;
  propertyQueue = self->_propertyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A9363B68;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(propertyQueue, v7);
}

- (BOOL)isPaused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363C20;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsPaused:(BOOL)a3
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A9363CAC;
  v4[3] = &unk_1E7880CB0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(propertyQueue, v4);
}

- (void)_updateUserSubstitutions
{
  v6 = sub_1A93632E0(self, a2, v2, v3, v4);
  v19 = objc_msgSend_sharedInstance(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_customPronunciationSubstitutions(v19, v11, v12, v13, v14);
  objc_msgSend_setUserSubstitutions_(self->_synthesizer, v16, v15, v17, v18);
}

+ (id)currentLanguageCode
{
  v2 = TTSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();

  return v2;
}

+ (id)spellOutLetterCaseMarkupString:(id)a3 string:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_length(v6, v7, v8, v9, v10) == 1)
  {
    v15 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x1E696AB08], v11, v12, v13, v14);
    v19 = objc_msgSend_characterAtIndex_(v6, v16, 0, v17, v18);
    if (objc_msgSend_characterIsMember_(v15, v20, v19, v21, v22))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 2;
  }

  v24 = objc_msgSend_speechMarkupStringForType_forIdentifier_string_(TTSSpeechSynthesizer, v11, v23, v5, v6);

  return v24;
}

+ (id)languageCodeForVoiceIdentifier:(id)a3
{
  v5 = objc_msgSend_voiceForIdentifier_(TTSSpeechSynthesizer, a2, a3, v3, v4);
  v10 = objc_msgSend_language(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)literalStringMarkup:(id)a3 string:(id)a4 speakCap:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (!objc_msgSend_length(v8, v9, v10, v11, v12))
  {
    v86 = v8;
    goto LABEL_23;
  }

  v20 = objc_msgSend_languageCodeForVoiceIdentifier_(TTSSpeechManager, v13, v7, v14, v15);
  if (!v20)
  {
    v20 = objc_msgSend_currentLanguageCode(TTSSpeechManager, v16, v17, v18, v19);
  }

  v21 = objc_msgSend_spellOutLetterCaseMarkupString_string_(TTSSpeechManager, v16, v7, v8, v19);
  v26 = objc_msgSend_length(v8, v22, v23, v24, v25);
  if (v26 == 1)
  {
    v31 = objc_msgSend_characterAtIndex_(v8, v27, 0, v29, v30);
    v36 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x1E696AB08], v32, v33, v34, v35);
    objc_msgSend_characterIsMember_(v36, v37, v31, v38, v39);

    isCharacterNativelySpeakable_languageCode = objc_msgSend__isCharacterNativelySpeakable_languageCode_(a1, v40, v31, v20, v41);
    v43 = v20;
    v48 = v43;
    v94 = 0;
    v95 = &v94;
    v96 = 0x2020000000;
    v49 = off_1EB3910D8;
    v97 = off_1EB3910D8;
    if (!off_1EB3910D8)
    {
      v50 = sub_1A9369498(v43, v44, v45, v46, v47);
      v95[3] = dlsym(v50, "AXVOLocalizedStringForCharacter");
      off_1EB3910D8 = v95[3];
      v49 = v95[3];
    }

    _Block_object_dispose(&v94, 8);
    if (!v49)
    {
      sub_1A95794AC(v51, v52, v53, v54, v55);
    }

    v56 = v49(v31, v48);

    if (v56)
    {
      v60 = isCharacterNativelySpeakable_languageCode;
    }

    else
    {
      v60 = 1;
    }

    if (v60 & 1) != 0 || (objc_msgSend_isEqualToString_(v56, v57, v8, v58, v59))
    {
      goto LABEL_21;
    }

    v64 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v61, @"]\\-^", v62, v63);
    v68 = objc_msgSend_characterAtIndex_(v8, v65, 0, v66, v67);
    objc_msgSend_characterIsMember_(v64, v69, v68, v70, v71);
    v72 = AXCFormattedString();
    v75 = objc_msgSend_rangeOfString_options_(v56, v73, v72, 1024, v74, v8);
    v93 = v76;

    if (v75 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v92 = objc_msgSend_stringByApplyingTransform_reverse_(v8, v77, *MEMORY[0x1E695DA48], 0, v78);
      v79 = AXCFormattedString();
      v75 = objc_msgSend_rangeOfString_options_(v56, v80, v79, 1024, v81, v92);
      v93 = v82;

      if (v75 == 0x7FFFFFFFFFFFFFFFLL)
      {

        v85 = v56;
LABEL_20:
        v88 = v85;

        v21 = v88;
LABEL_21:

        goto LABEL_22;
      }

      v87 = objc_msgSend_spellOutLetterCaseMarkupString_string_(TTSSpeechManager, v83, v7, v92, v84);

      v21 = v87;
    }

    v85 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v56, v77, v75, v93, v21);
    goto LABEL_20;
  }

LABEL_22:
  v89 = VOTBundle(v26, v27, v28, v29, v30);
  v90 = AXNSLocalizedStringForLocale();

  v86 = AXCFormattedString();

LABEL_23:

  return v86;
}

+ (id)availableVoices
{
  v6 = objc_msgSend_currentProcessAllowedToSaveVoiceInfo(a1, a2, v2, v3, v4);

  return MEMORY[0x1EEE66B58](a1, sel_availableVoices_, v6, v7, v8);
}

+ (id)availableSuperCompactVoices
{
  v5 = objc_msgSend_sharedInstance(TTSAXResourceManager, a2, v2, v3, v4);
  v8 = objc_msgSend_resourcesWithType_subType_(v5, v6, 4, 2, v7);

  v12 = objc_msgSend_ax_filteredArrayUsingBlock_(v8, v9, &unk_1F1CF0298, v10, v11);

  v16 = objc_msgSend_ax_flatMappedArrayUsingBlock_(v12, v13, &unk_1F1CF02B8, v14, v15);

  return v16;
}

+ (id)_resetAvailableVoices
{
  v6 = objc_msgSend_currentProcessAllowedToSaveVoiceInfo(a1, a2, v2, v3, v4);

  return MEMORY[0x1EEE66B58](a1, sel__resetAvailableVoices_, v6, v7, v8);
}

+ (BOOL)currentProcessAllowedToSaveVoiceInfo
{
  v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, v2, v3, v4);
  v10 = objc_msgSend_processName(v5, v6, v7, v8, v9);
  if (objc_msgSend_isEqualToString_(v10, v11, @"com.apple.accessibility.AccessibilityUIServer", v12, v13))
  {
    isEqualToString = 1;
  }

  else
  {
    v19 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v14, v15, v16, v17);
    v24 = objc_msgSend_processName(v19, v20, v21, v22, v23);
    if (objc_msgSend_isEqualToString_(v24, v25, @"com.apple.AccessibilityUIServer", v26, v27))
    {
      isEqualToString = 1;
    }

    else
    {
      v32 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v28, v29, v30, v31);
      v37 = objc_msgSend_bundleIdentifier(v32, v33, v34, v35, v36);
      isEqualToString = objc_msgSend_isEqualToString_(v37, v38, @"com.apple.springboard", v39, v40);
    }
  }

  return isEqualToString;
}

+ (URegularExpression)createRegularExpressionFromString:(id)a3
{
  status = U_ZERO_ERROR;
  v3 = a3;
  v8 = objc_msgSend_length(v3, v4, v5, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v9 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
  objc_msgSend_getCharacters_range_(v3, v10, v9, 0, v8);

  v11 = uregex_open(v9, v8, 0, &v13, &status);
  free(v9);
  uregex_useAnchoringBounds(v11, 1, &status);
  return v11;
}

+ (id)matchedRangesForString:(id)a3 withRegularExpression:(URegularExpression *)a4
{
  v5 = a3;
  status = U_ZERO_ERROR;
  v10 = objc_msgSend_length(v5, v6, v7, v8, v9);
  v11 = malloc_type_malloc(2 * v10, 0x1000040BDFB0063uLL);
  objc_msgSend_getCharacters_(v5, v12, v11, v13, v14);
  uregex_setText(a4, v11, v10, &status);
  v19 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18);
  if (uregex_find(a4, -1, &status) && status == U_ZERO_ERROR)
  {
    do
    {
      v20 = uregex_start(a4, 0, &status);
      v21 = uregex_end(a4, 0, &status);
      v24 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v22, v20, v21 - v20, v23);
      objc_msgSend_addObject_(v19, v25, v24, v26, v27);
    }

    while (uregex_find(a4, v21, &status) && status == U_ZERO_ERROR);
  }

  free(v11);

  return v19;
}

- (void)_speechJobFinished:(BOOL)a3 action:(id)a4
{
  v122 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_msgSend_setIsPaused_(self, v7, 0, v8, v9);
  objc_msgSend_setState_(v6, v10, 2, v11, v12);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93655B0;
  block[3] = &unk_1E7880CB0;
  v13 = v6;
  v118 = v13;
  v119 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v14 = MEMORY[0x1E696AEC0];
  v19 = objc_msgSend_firstObject(self->_speechQueue, v15, v16, v17, v18);
  v23 = objc_msgSend_stringWithFormat_(v14, v20, @"Removing from queue: %@", v21, v22, v19);

  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"%s:%d %@", v25, v26, "[TTSSpeechManager _speechJobFinished:action:]", 1120, v23);
  if (qword_1ED970350 != -1)
  {
    sub_1A9579610();
  }

  v28 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v29 = v27;
    v30 = v28;
    v35 = objc_msgSend_UTF8String(v27, v31, v32, v33, v34);
    *buf = 136446210;
    v121 = v35;
    _os_log_impl(&dword_1A9324000, v30, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  objc_msgSend_removeObjectIdenticalTo_(self->_speechQueue, v36, v13, v37, v38);
  v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v39, @"Remaining queue: %@", v40, v41, self->_speechQueue);
  v46 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v43, @"%s:%d %@", v44, v45, "[TTSSpeechManager _speechJobFinished:action:]", 1123, v42);
  if (qword_1ED970350 != -1)
  {
    sub_1A9579638();
  }

  v47 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v48 = v46;
    v49 = v47;
    v54 = objc_msgSend_UTF8String(v46, v50, v51, v52, v53);
    *buf = 136446210;
    v121 = v54;
    _os_log_impl(&dword_1A9324000, v49, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  v59 = objc_msgSend_audioOperationQueue(self, v55, v56, v57, v58);
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = sub_1A93656C0;
  v116[3] = &unk_1E787FE20;
  v116[4] = self;
  dispatch_sync(v59, v116);

  self->_isSpeaking = 0;
  objc_msgSend_setIsPaused_(self, v60, 0, v61, v62);
  if (objc_msgSend_count(self->_speechQueue, v63, v64, v65, v66))
  {
    v71 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v67, @"Start next job", v69, v70);
    v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v72, @"%s:%d %@", v73, v74, "[TTSSpeechManager _speechJobFinished:action:]", 1133, v71);
    if (qword_1ED970350 != -1)
    {
      sub_1A9579660();
    }

    v76 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
    {
      v77 = v75;
      v78 = v76;
      v83 = objc_msgSend_UTF8String(v75, v79, v80, v81, v82);
      *buf = 136446210;
      v121 = v83;
      _os_log_impl(&dword_1A9324000, v78, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
    }

    objc_msgSend__startNextSpeechJob(self, v84, v85, v86, v87);
  }

  else if (self->_usesAuxiliarySession)
  {
    objc_msgSend_audioSessionInactiveTimeout(self, v67, v68, v69, v70);
    v89 = v88;
    v93 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v90, @"Scheduling audio session deactivation in: %f", v91, v92, *&v88);
    v97 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v94, @"%s:%d %@", v95, v96, "[TTSSpeechManager _speechJobFinished:action:]", 1141, v93);
    if (qword_1ED970350 != -1)
    {
      sub_1A9579688();
    }

    v98 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v99 = v97;
      v100 = v98;
      v105 = objc_msgSend_UTF8String(v97, v101, v102, v103, v104);
      *buf = 136446210;
      v121 = v105;
      _os_log_impl(&dword_1A9324000, v100, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v110 = objc_msgSend_audioDeactivatorTimer(self, v106, v107, v108, v109);
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = sub_1A9365750;
    v115[3] = &unk_1E787FE20;
    v115[4] = self;
    objc_msgSend_afterDelay_processBlock_(v110, v111, v115, v112, v113, v89);
  }

  v114 = *MEMORY[0x1E69E9840];
}

- (id)externalVoiceIdentifierUsedForLanguage:(id)a3
{
  synthesizer = self->_synthesizer;
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__speechVoiceForIdentifier_language_footprint_(v5, v6, 0, v4, 1);

  v12 = objc_msgSend_identifier(v7, v8, v9, v10, v11);

  return v12;
}

- (id)voiceIdentifierUsedForLanguage:(id)a3
{
  synthesizer = self->_synthesizer;
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__speechVoiceForIdentifier_language_footprint_(v5, v6, 0, v4, 1);

  v12 = objc_msgSend_identifier(v7, v8, v9, v10, v11);

  return v12;
}

- (id)_phonemeSubstitutionsForAction:(id)a3
{
  v5 = objc_msgSend_attributedString(a3, a2, a3, v3, v4);
  if (objc_msgSend_length(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13);
    v15 = *MEMORY[0x1E6958358];
    v20 = objc_msgSend_length(v5, v16, v17, v18, v19);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A9365B14;
    v24[3] = &unk_1E7880CF8;
    v25 = v5;
    v21 = v14;
    v26 = v21;
    objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v25, v22, v15, 0, v20, 0, v24);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)_startNextSpeechJob
{
  v383 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(self->_speechQueue, a2, v2, v3, v4))
  {
    v9 = objc_msgSend_objectAtIndex_(self->_speechQueue, v6, 0, v7, v8);
    if (objc_msgSend_state(v9, v10, v11, v12, v13))
    {
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"Existing speech job already in flight", v16, v17);
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%s:%d %@", v20, v21, "[TTSSpeechManager _startNextSpeechJob]", 1197, v18);
      if (qword_1ED970350 != -1)
      {
        sub_1A95796D8();
      }

      v23 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
      {
        v24 = v22;
        v25 = v23;
        *buf = 136446210;
        v382 = objc_msgSend_UTF8String(v22, v26, v27, v28, v29);
        _os_log_impl(&dword_1A9324000, v25, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
      }
    }

    else if (objc_msgSend_isInAudioInterruption(self, v14, v15, v16, v17) && (v34 = CFAbsoluteTimeGetCurrent(), objc_msgSend_audioInterruptionStartedTime(self, v35, v36, v37, v38), v34 - v39 < 1.5))
    {
      v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, @"Is in audio interruption, not starting speech", v32, v33);
      v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v41, @"%s:%d %@", v42, v43, "[TTSSpeechManager _startNextSpeechJob]", 1205, v40);
      if (qword_1ED970350 != -1)
      {
        sub_1A9579778();
      }

      v45 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v44;
        v47 = v45;
        *buf = 136446210;
        v382 = objc_msgSend_UTF8String(v44, v48, v49, v50, v51);
        _os_log_impl(&dword_1A9324000, v47, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      objc_msgSend_setDidRequestStartSpeakingDuringAudioInterruption_(self, v52, 1, v53, v54);
      objc_msgSend_setDidRequestPauseSpeakingDuringAudioInterruption_(self, v55, 0, v56, v57);
      objc_msgSend_setDidRequestResumeSpeakingDuringAudioInterruption_(self, v58, 0, v59, v60);
      objc_msgSend_setRequestedActionDuringAudioInterruption_(self, v61, v9, v62, v63);
    }

    else
    {
      objc_msgSend_preprocessAction(v9, v30, v31, v32, v33);
      v64 = MEMORY[0x1E696AEC0];
      v69 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v65, v66, v67, v68);
      v74 = objc_msgSend_name(v69, v70, v71, v72, v73);
      v79 = objc_msgSend_string(v9, v75, v76, v77, v78);
      Current = CFAbsoluteTimeGetCurrent();
      v84 = objc_msgSend_stringWithFormat_(v64, v81, @"%@ Will speak: %@ %f", v82, v83, v74, v79, *&Current);

      v88 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v85, @"%s:%d %@", v86, v87, "[TTSSpeechManager _startNextSpeechJob]", 1215, v84);
      if (qword_1ED970350 != -1)
      {
        sub_1A95796EC();
      }

      v89 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
      {
        v90 = v88;
        v91 = v89;
        *buf = 136446210;
        v382 = objc_msgSend_UTF8String(v88, v92, v93, v94, v95);
        _os_log_impl(&dword_1A9324000, v91, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
      }

      if (objc_msgSend_isSpeaking(self->_synthesizer, v96, v97, v98, v99))
      {
        v104 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v100, @"Stopping existing job", v102, v103);
        v108 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v105, @"%s:%d %@", v106, v107, "[TTSSpeechManager _startNextSpeechJob]", 1219, v104);
        if (qword_1ED970350 != -1)
        {
          sub_1A9579700();
        }

        v109 = qword_1ED970348;
        if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
        {
          v110 = v108;
          v111 = v109;
          v116 = objc_msgSend_UTF8String(v108, v112, v113, v114, v115);
          *buf = 136446210;
          v382 = v116;
          _os_log_impl(&dword_1A9324000, v111, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        objc_msgSend_stopSpeakingAtNextBoundary_synchronously_error_(self->_synthesizer, v117, 0, 1, 0);
      }

      objc_msgSend_speakingRate(v9, v100, v101, v102, v103);
      *&v118 = v118;
      objc_msgSend_setNormalizedRate_(self->_synthesizer, v119, v120, v121, v122, v118);
      objc_msgSend_volume(v9, v123, v124, v125, v126);
      *&v127 = v127;
      objc_msgSend_setVolume_(self->_synthesizer, v128, v129, v130, v131, v127);
      v136 = objc_msgSend_voiceSelection(v9, v132, v133, v134, v135);
      v141 = objc_msgSend_voiceSettings(v136, v137, v138, v139, v140);
      objc_msgSend_setPerVoiceSettings_(self->_synthesizer, v142, v141, v143, v144);

      v149 = objc_msgSend_voiceSelection(v9, v145, v146, v147, v148);
      v154 = objc_msgSend_effects(v149, v150, v151, v152, v153);
      objc_msgSend_setAudioEffects_(self->_synthesizer, v155, v154, v156, v157);

      synthesizer = self->_synthesizer;
      objc_msgSend_pitch(v9, v159, v160, v161, v162);
      *&v163 = v163;
      objc_msgSend_setPitch_(synthesizer, v164, v165, v166, v167, v163);
      v172 = objc_msgSend_audioQueueFlags(self, v168, v169, v170, v171);
      objc_msgSend_setAudioQueueFlags_(self->_synthesizer, v173, v172, v174, v175);
      v180 = objc_msgSend_voiceIdentifier(v9, v176, v177, v178, v179);
      objc_msgSend_setVoiceIdentifier_(self->_synthesizer, v181, v180, v182, v183);

      if (objc_msgSend_ignoreCustomSubstitutions(v9, v184, v185, v186, v187))
      {
        objc_msgSend_setUserSubstitutions_(self->_synthesizer, v188, 0, v190, v191);
      }

      v192 = objc_msgSend_synthesizeSilently(v9, v188, v189, v190, v191);
      objc_msgSend_setSynthesizeSilently_(self->_synthesizer, v193, v192, v194, v195);
      v199 = objc_msgSend__phonemeSubstitutionsForAction_(self, v196, v9, v197, v198);
      objc_msgSend_setPhonemeSubstitutions_(self->_synthesizer, v200, v199, v201, v202);

      objc_msgSend_setSpeakingRequestClientContext_(self->_synthesizer, v203, v9, v204, v205);
      v210 = objc_msgSend_audioBufferCallback(v9, v206, v207, v208, v209);
      v211 = v210 != 0;

      v216 = objc_msgSend_voiceIdentifier(self->_synthesizer, v212, v213, v214, v215);
      IsAllowedToUseBufferCallbackAPIInCurrentProcess = TTSVoiceWithIdentifierIsAllowedToUseBufferCallbackAPIInCurrentProcess(v216, v217, v218, v219, v220);

      if ((IsAllowedToUseBufferCallbackAPIInCurrentProcess & v211) == 1)
      {
        objc_initWeak(buf, self);
        v378[0] = MEMORY[0x1E69E9820];
        v378[1] = 3221225472;
        v378[2] = sub_1A93668A0;
        v378[3] = &unk_1E7880D20;
        objc_copyWeak(&v380, buf);
        v379 = v9;
        objc_msgSend_setAudioBufferCallback_(self->_synthesizer, v225, v378, v226, v227);

        objc_destroyWeak(&v380);
        objc_destroyWeak(buf);
      }

      else
      {
        objc_msgSend_setAudioBufferCallback_(self->_synthesizer, v222, 0, v223, v224);
      }

      self->_isSpeaking = 1;
      objc_msgSend_setIsPaused_(self, v228, 0, v229, v230);
      v235 = objc_msgSend_attributedString(v9, v231, v232, v233, v234);
      v240 = objc_msgSend_string(v235, v236, v237, v238, v239);
      v245 = v240;
      if (v240)
      {
        v246 = v240;
      }

      else
      {
        v246 = objc_msgSend_string(v9, v241, v242, v243, v244);
      }

      v247 = v246;

      v252 = objc_msgSend_processedString(v9, v248, v249, v250, v251);
      v253 = v252 == 0;

      if (!v253)
      {
        v258 = objc_msgSend_processedString(v9, v254, v255, v256, v257);

        v247 = v258;
      }

      if (objc_msgSend_length(v247, v254, v255, v256, v257))
      {
        v263 = objc_msgSend_requestWillStart(self, v259, v260, v261, v262);
        v264 = v263 == 0;

        if (!v264)
        {
          v269 = objc_msgSend_requestWillStart(self, v265, v266, v267, v268);
          (v269)[2](v269, v9);
        }

        v270 = objc_msgSend_audioDeactivatorTimer(self, v265, v266, v267, v268);
        objc_msgSend_cancel(v270, v271, v272, v273, v274);

        v279 = objc_msgSend_audioSession(self, v275, v276, v277, v278);
        active = objc_msgSend_setActiveOptions(self, v280, v281, v282, v283);
        v377 = 0;
        objc_msgSend_setActive_withOptions_error_(v279, v285, 1, active, &v377);
        v286 = v377;

        if (v286)
        {
          v290 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v287, @"Error setting active: %@", v288, v289, v286);
          v294 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v291, @"%s:%d %@", v292, v293, "[TTSSpeechManager _startNextSpeechJob]", 1328, v290);
          if (qword_1ED970350 != -1)
          {
            sub_1A9579728();
          }

          v295 = qword_1ED970348;
          if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
          {
            v296 = v294;
            v297 = v295;
            v302 = objc_msgSend_UTF8String(v294, v298, v299, v300, v301);
            *buf = 136446210;
            v382 = v302;
            _os_log_impl(&dword_1A9324000, v297, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }
        }

        objc_msgSend_setState_(v9, v287, 1, v288, v289);
        v307 = objc_msgSend_taggedSSML(v9, v303, v304, v305, v306);
        v308 = v307 == 0;

        if (v308)
        {
          v348 = self->_synthesizer;
          v327 = objc_msgSend_language(v9, v309, v310, v311, v312);
          v373 = v286;
          v374 = 0;
          objc_msgSend_startSpeakingString_withLanguageCode_request_error_(v348, v349, v247, v327, &v374, &v373);
          v342 = v374;
          v343 = v373;
          v335 = v286;
        }

        else
        {
          v313 = objc_msgSend_taggedSSML(v9, v309, v310, v311, v312);
          v318 = objc_msgSend_ssmlSnippets(v313, v314, v315, v316, v317);
          v323 = objc_msgSend_currentSSMLSnippetIndex(v9, v319, v320, v321, v322);
          v327 = objc_msgSend_objectAtIndexedSubscript_(v318, v324, v323, v325, v326);

          objc_msgSend__setVoiceForAction_snippet_(self, v328, v9, v327, v329);
          v330 = self->_synthesizer;
          v335 = objc_msgSend_ssml(v327, v331, v332, v333, v334);
          v340 = objc_msgSend_language(v9, v336, v337, v338, v339);
          v375 = v286;
          v376 = 0;
          objc_msgSend_startSpeakingSSML_withLanguageCode_request_error_(v330, v341, v335, v340, &v376, &v375);
          v342 = v376;
          v343 = v375;
        }

        if (v9 && v342)
        {
          objc_setAssociatedObject(v342, &unk_1EB3910E0, v9, 1);
        }

        if (v343)
        {
          v354 = MEMORY[0x1E696AEC0];
          v355 = objc_msgSend_localizedDescription(v343, v350, v351, v352, v353);
          v359 = objc_msgSend_stringWithFormat_(v354, v356, @"Speech Error:%@", v357, v358, v355);

          v363 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v360, @"%s:%d %@", v361, v362, "[TTSSpeechManager _startNextSpeechJob]", 1346, v359);
          if (qword_1ED970350 != -1)
          {
            sub_1A9579750();
          }

          v364 = qword_1ED970348;
          if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
          {
            v365 = v363;
            v366 = v364;
            v371 = objc_msgSend_UTF8String(v363, v367, v368, v369, v370);
            *buf = 136446210;
            v382 = v371;
            _os_log_impl(&dword_1A9324000, v366, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }
        }
      }

      else
      {
        v344 = objc_alloc_init(TTSSpeechRequest);
        v342 = v344;
        if (v9 && v344)
        {
          objc_setAssociatedObject(v344, &unk_1EB3910E0, v9, 1);
        }

        objc_msgSend_speechSynthesizer_didStartSpeakingRequest_(self, v345, self->_synthesizer, v342, v346);
        objc_msgSend_speechSynthesizer_didFinishSpeakingRequest_successfully_withError_(self, v347, self->_synthesizer, v342, 1, 0);
        v343 = 0;
      }
    }
  }

  v372 = *MEMORY[0x1E69E9840];
}

- (void)_setVoiceForAction:(id)a3 snippet:(id)a4
{
  v43 = a3;
  v6 = a4;
  v11 = objc_msgSend_voiceName(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = MEMORY[0x1E69584F8];
    v17 = objc_msgSend_voiceName(v6, v12, v13, v14, v15);
    v21 = objc_msgSend__voiceFromInternalVoiceListWithIdentifier_(v16, v18, v17, v19, v20);
LABEL_5:
    v35 = v21;
    v36 = objc_msgSend_identifier(v21, v22, v23, v24, v25);
    objc_msgSend_setVoiceIdentifier_(self->_synthesizer, v37, v36, v38, v39);

    goto LABEL_6;
  }

  v26 = objc_msgSend_language(v6, v12, v13, v14, v15);

  if (v26)
  {
    v31 = MEMORY[0x1E69584F8];
    v17 = objc_msgSend_language(v6, v27, v28, v29, v30);
    v21 = objc_msgSend_voiceWithLanguage_(v31, v32, v17, v33, v34);
    goto LABEL_5;
  }

  v17 = objc_msgSend_voiceIdentifier(v43, v27, v28, v29, v30);
  objc_msgSend_setVoiceIdentifier_(self->_synthesizer, v40, v17, v41, v42);
LABEL_6:
}

- (void)_processAudioBufferCallback:(id)a3
{
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5, v6, v7) != 2)
  {
    v8 = AXLogSpeechSynthesis();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1A957978C();
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A9366C8C;
  block[3] = &unk_1E787FE20;
  v11 = v3;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_dispatchSpeechAction:(id)a3
{
  v129 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v10 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v6, v7, v8, v9);
  v15 = objc_msgSend_name(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_string(v4, v16, v17, v18, v19);
  shouldQueue = objc_msgSend_shouldQueue(v4, v21, v22, v23, v24);
  v29 = objc_msgSend_stringWithFormat_(v5, v26, @"%@ Should queue: %@ -> %d", v27, v28, v15, v20, shouldQueue);

  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, @"%s:%d %@", v31, v32, "[TTSSpeechManager _dispatchSpeechAction:]", 1392, v29);
  if (qword_1ED970350 != -1)
  {
    sub_1A9579800();
  }

  v34 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v35 = v33;
    v36 = v34;
    *buf = 136446210;
    v128 = objc_msgSend_UTF8String(v33, v37, v38, v39, v40);
    _os_log_impl(&dword_1A9324000, v36, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  if (objc_msgSend_shouldQueue(v4, v41, v42, v43, v44) & 1) != 0 || objc_msgSend_count(self->_speechQueue, v45, v46, v47, v48) && (objc_msgSend_objectAtIndex_(self->_speechQueue, v45, 0, v47, v48), v49 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend_cannotInterrupt(v49, v50, v51, v52, v53), v49, (v54))
  {
    v55 = 1;
  }

  else
  {
    v56 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v45, @"Telling synthesizer to stop because this job doesn't want to queue", v47, v48);
    v60 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57, @"%s:%d %@", v58, v59, "[TTSSpeechManager _dispatchSpeechAction:]", 1402, v56);
    if (qword_1ED970350 != -1)
    {
      sub_1A9579814();
    }

    v61 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
    {
      v62 = v60;
      v63 = v61;
      v68 = objc_msgSend_UTF8String(v60, v64, v65, v66, v67);
      *buf = 136446210;
      v128 = v68;
      _os_log_impl(&dword_1A9324000, v63, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
    }

    objc_msgSend_removeAllObjects(self->_speechQueue, v69, v70, v71, v72);
    objc_msgSend_stopSpeakingAtNextBoundary_synchronously_error_(self->_synthesizer, v73, 0, 1, 0);
    v55 = 0;
  }

  objc_msgSend_addObject_(self->_speechQueue, v45, v4, v47, v48);
  v77 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v74, @"isSpeaking: %d", v75, v76, self->_isSpeaking);
  v81 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v78, @"%s:%d %@", v79, v80, "[TTSSpeechManager _dispatchSpeechAction:]", 1410, v77);
  if (qword_1ED970350 != -1)
  {
    sub_1A957983C();
  }

  v82 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v83 = v81;
    v84 = v82;
    v89 = objc_msgSend_UTF8String(v81, v85, v86, v87, v88);
    *buf = 136446210;
    v128 = v89;
    _os_log_impl(&dword_1A9324000, v84, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  v93 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v90, @"Speech queue items: %@", v91, v92, self->_speechQueue);
  v97 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v94, @"%s:%d %@", v95, v96, "[TTSSpeechManager _dispatchSpeechAction:]", 1411, v93);
  if (qword_1ED970350 != -1)
  {
    sub_1A9579864();
  }

  v98 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v99 = v97;
    v100 = v98;
    v105 = objc_msgSend_UTF8String(v97, v101, v102, v103, v104);
    *buf = 136446210;
    v128 = v105;
    _os_log_impl(&dword_1A9324000, v100, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  if (!v55 || !self->_isSpeaking)
  {
    v109 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v106, @"Starting next job", v107, v108);
    v113 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v110, @"%s:%d %@", v111, v112, "[TTSSpeechManager _dispatchSpeechAction:]", 1414, v109);
    if (qword_1ED970350 != -1)
    {
      sub_1A957988C();
    }

    v114 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
    {
      v115 = v113;
      v116 = v114;
      v121 = objc_msgSend_UTF8String(v113, v117, v118, v119, v120);
      *buf = 136446210;
      v128 = v121;
      _os_log_impl(&dword_1A9324000, v116, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
    }

    objc_msgSend__startNextSpeechJob(self, v122, v123, v124, v125);
  }

  v126 = *MEMORY[0x1E69E9840];
}

- (void)clearSpeechQueue
{
  if (_AXSInUnitTestMode() && objc_msgSend_isFinished(self->_runThread, v3, v4, v5, v6))
  {
    sub_1A95798B4();
  }

  objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v3, sel__clearSpeechQueue, 0, 0);
}

- (void)dispatchSpeechAction:(id)a3
{
  v12 = a3;
  if (objc_msgSend_speechEnabled(self, v4, v5, v6, v7))
  {
    if (_AXSInUnitTestMode() && objc_msgSend_isFinished(self->_runThread, v8, v9, v10, v11))
    {
      sub_1A95798E0();
    }

    objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v8, sel__dispatchSpeechAction_, v12, 0);
  }
}

- (void)_pauseSpeaking:(id)a3
{
  v25 = a3;
  if (objc_msgSend_isInAudioInterruption(self, v4, v5, v6, v7) && objc_msgSend_wasSpeakingBeforeAudioInterruption(self, v8, v9, v10, v11))
  {
    objc_msgSend_setDidRequestPauseSpeakingDuringAudioInterruption_(self, v8, 1, v10, v11);
    objc_msgSend_setDidRequestResumeSpeakingDuringAudioInterruption_(self, v12, 0, v13, v14);
    objc_msgSend_setDidRequestStartSpeakingDuringAudioInterruption_(self, v15, 0, v16, v17);
    objc_msgSend_setRequestedActionDuringAudioInterruption_(self, v18, 0, v19, v20);
  }

  synthesizer = self->_synthesizer;
  v22 = objc_msgSend_intValue(v25, v8, v9, v10, v11);
  objc_msgSend_pauseSpeakingAtNextBoundary_error_(synthesizer, v23, v22, 0, v24);
}

- (void)pauseSpeaking:(int64_t)a3
{
  if (_AXSInUnitTestMode() && objc_msgSend_isFinished(self->_runThread, v5, v6, v7, v8))
  {
    sub_1A957990C();
  }

  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, a3, v7, v8);
  objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v9, sel__pauseSpeaking_, v10, 1);
}

- (void)_continueSpeaking
{
  if (objc_msgSend_isInAudioInterruption(self, a2, v2, v3, v4))
  {
    objc_msgSend_setDidRequestResumeSpeakingDuringAudioInterruption_(self, v6, 1, v7, v8);
    objc_msgSend_setDidRequestPauseSpeakingDuringAudioInterruption_(self, v9, 0, v10, v11);
    objc_msgSend_setDidRequestStartSpeakingDuringAudioInterruption_(self, v12, 0, v13, v14);
    objc_msgSend_setRequestedActionDuringAudioInterruption_(self, v15, 0, v16, v17);
  }

  synthesizer = self->_synthesizer;

  MEMORY[0x1EEE66B58](synthesizer, sel_continueSpeakingWithError_, 0, v7, v8);
}

- (void)continueSpeaking
{
  if (_AXSInUnitTestMode() && objc_msgSend_isFinished(self->_runThread, v3, v4, v5, v6))
  {
    sub_1A9579938();
  }

  objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v3, sel__continueSpeaking, 0, 0);
}

- (void)_stopSpeaking:(id)a3
{
  synthesizer = self->_synthesizer;
  v7 = objc_msgSend_integerValue(a3, a2, a3, v3, v4);

  objc_msgSend_stopSpeakingAtNextBoundary_synchronously_error_(synthesizer, v6, v7, 1, 0);
}

- (void)stopSpeaking:(int64_t)a3
{
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a3, v3, v4);
  objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v6, sel__stopSpeaking_, v7, 0);
}

- (void)_isSpeaking:(id)a3
{
  synthesizer = self->_synthesizer;
  v11 = a3;
  if (objc_msgSend_isSpeaking(synthesizer, v4, v5, v6, v7))
  {
    objc_msgSend_setString_(v11, v8, @"1", v9, v10);
  }

  else
  {
    objc_msgSend_setString_(v11, v8, @"0", v9, v10);
  }
}

- (BOOL)isSpeaking
{
  if (_AXSInUnitTestMode() && objc_msgSend_isFinished(self->_runThread, v3, v4, v5, v6))
  {
    sub_1A9579964();
  }

  if (objc_msgSend_isFinished(self->_runThread, v3, v4, v5, v6))
  {
    return 0;
  }

  v12 = objc_msgSend_string(MEMORY[0x1E696AD60], v7, v8, v9, v10);
  objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v13, sel__isSpeaking_, v12, 1);
  v18 = objc_msgSend_BOOLValue(v12, v14, v15, v16, v17);

  return v18;
}

- (NSArray)outputChannels
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A9363718;
  v13 = sub_1A9363728;
  v14 = 0;
  propertyQueue = self->_propertyQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A936798C;
  v8[3] = &unk_1E7880670;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(propertyQueue, v8);
  v6 = objc_msgSend_convertChannels_(TTSAudioSessionChannel, v3, v10[5], v4, v5);
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)setOutputChannels:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v4;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v33, v38, 16);
    if (v16)
    {
      v20 = v16;
      v21 = *v34;
      do
      {
        v22 = 0;
        do
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v26 = objc_msgSend_channelWithChannel_(TTSAudioSessionChannel, v17, *(*(&v33 + 1) + 8 * v22), v18, v19);
          if (v26)
          {
            objc_msgSend_addObject_(v13, v23, v26, v24, v25);
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v33, v38, 16);
      }

      while (v20);
    }

    propertyQueue = self->_propertyQueue;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1A9367BF8;
    v31[3] = &unk_1E787FE98;
    v31[4] = self;
    v32 = v13;
    v28 = v13;
    dispatch_async(propertyQueue, v31);
  }

  else
  {
    v29 = self->_propertyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9367BE8;
    block[3] = &unk_1E787FE20;
    block[4] = self;
    dispatch_async(v29, block);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (unsigned)audioQueueFlags
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9367CB0;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAudioQueueFlags:(unsigned int)a3
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A9367D3C;
  v4[3] = &unk_1E7880D48;
  v4[4] = self;
  v5 = a3;
  dispatch_async(propertyQueue, v4);
}

- (void)_processDidStartCallback:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v5, v6, v7, v8);
  if ((objc_msgSend_isEqual_(v9, v10, self->_runThread, v11, v12) & 1) == 0)
  {
    sub_1A9579990();
  }

  v13 = objc_autoreleasePoolPush();
  v14 = objc_getAssociatedObject(v4, &unk_1EB3910E0);
  v19 = objc_msgSend_taggedSSML(v14, v15, v16, v17, v18);
  if (!v19 || (v24 = v19, v25 = objc_msgSend_currentSSMLSnippetIndex(v14, v20, v21, v22, v23), v24, !v25))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9367E74;
    block[3] = &unk_1E787FE20;
    v27 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_autoreleasePoolPop(v13);
}

- (void)speechSynthesizer:(id)a3 didStartSpeakingRequest:(id)a4
{
  v5 = MEMORY[0x1E696AF00];
  v18 = a4;
  v10 = objc_msgSend_currentThread(v5, v6, v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(v10, v11, self->_runThread, v12, v13);

  if (isEqual)
  {
    objc_msgSend__processDidStartCallback_(self, v15, v18, v16, v17);
  }

  else
  {
    objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v15, sel__processDidStartCallback_, v18, 1);
  }
}

- (void)__speechJobFinished:(id)a3
{
  v4 = a3;
  v19 = objc_msgSend_objectAtIndexedSubscript_(v4, v5, 0, v6, v7);
  v12 = objc_msgSend_BOOLValue(v19, v8, v9, v10, v11);
  v16 = objc_msgSend_objectAtIndexedSubscript_(v4, v13, 1, v14, v15);

  objc_msgSend__speechJobFinished_action_(self, v17, v12, v16, v18);
}

- (void)speechSynthesizer:(id)a3 didPauseSpeakingRequest:(id)a4
{
  v5 = MEMORY[0x1E696AF00];
  v18 = a4;
  v10 = objc_msgSend_currentThread(v5, v6, v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(v10, v11, self->_runThread, v12, v13);

  if (isEqual)
  {
    objc_msgSend__processDidPauseCallback_(self, v15, v18, v16, v17);
  }

  else
  {
    objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v15, sel__processDidPauseCallback_, v18, 1);
  }
}

- (void)_processDidPauseCallback:(id)a3
{
  v4 = a3;
  objc_msgSend_setIsPaused_(self, v5, 1, v6, v7);
  v8 = objc_autoreleasePoolPush();
  v9 = objc_getAssociatedObject(v4, &unk_1EB3910E0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93687E4;
  block[3] = &unk_1E787FE20;
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_autoreleasePoolPop(v8);
}

- (void)speechSynthesizer:(id)a3 didContinueSpeakingRequest:(id)a4
{
  v5 = MEMORY[0x1E696AF00];
  v18 = a4;
  v10 = objc_msgSend_currentThread(v5, v6, v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(v10, v11, self->_runThread, v12, v13);

  if (isEqual)
  {
    objc_msgSend__processDidContinueCallback_(self, v15, v18, v16, v17);
  }

  else
  {
    objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v15, sel__processDidContinueCallback_, v18, 1);
  }
}

- (void)_processDidContinueCallback:(id)a3
{
  v4 = a3;
  objc_msgSend_setIsPaused_(self, v5, 0, v6, v7);
  v8 = objc_autoreleasePoolPush();
  v9 = objc_getAssociatedObject(v4, &unk_1EB3910E0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93689E0;
  block[3] = &unk_1E787FE20;
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_autoreleasePoolPop(v8);
}

- (void)speechSynthesizer:(id)a3 didEncounterMarker:(id)a4 forRequest:(id)a5
{
  v59[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v59[0] = v8;
  v59[1] = v7;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v59, 2, v10);
  if (objc_msgSend_markType(v7, v12, v13, v14, v15) == 1)
  {
    v20 = v7;
    v58[0] = v8;
    v21 = MEMORY[0x1E696B098];
    v26 = objc_msgSend_wordRange(v20, v22, v23, v24, v25);
    v29 = objc_msgSend_valueWithRange_(v21, v27, v26, v27, v28);
    v58[1] = v29;
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, v58, 2, v31);

    v37 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v33, v34, v35, v36);
    isEqual = objc_msgSend_isEqual_(v37, v38, self->_runThread, v39, v40);

    if (isEqual)
    {
      objc_msgSend__processDidEncounterMarker_(self, v42, v11, v43, v44);
      objc_msgSend__processWillSpeechRange_(self, v45, v32, v46, v47);
    }

    else
    {
      objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v42, sel__processDidEncounterMarker_, v11, 1);
      objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v56, sel__processWillSpeechRange_, v32, 1);
    }
  }

  else
  {
    v48 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v16, v17, v18, v19);
    v52 = objc_msgSend_isEqual_(v48, v49, self->_runThread, v50, v51);

    if (v52)
    {
      objc_msgSend__processDidEncounterMarker_(self, v53, v11, v54, v55);
    }

    else
    {
      objc_msgSend__enqueueSelectorOnSpeechThread_object_waitUntilDone_(self, v53, sel__processDidEncounterMarker_, v11, 1);
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (void)_processDidEncounterMarker:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_objectAtIndexedSubscript_(v3, v4, 0, v5, v6);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v3, v8, 1, v9, v10);

  v12 = objc_getAssociatedObject(v7, &unk_1EB3910E0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A9368D38;
  v15[3] = &unk_1E787FE98;
  v16 = v12;
  v17 = v11;
  v13 = v11;
  v14 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

- (void)_processWillSpeechRange:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_objectAtIndexedSubscript_(v3, v4, 0, v5, v6);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3010000000;
  v24 = 0;
  v25 = 0;
  v23[3] = &unk_1A95FC00D;
  v11 = objc_msgSend_objectAtIndexedSubscript_(v3, v8, 1, v9, v10);
  v24 = objc_msgSend_rangeValue(v11, v12, v13, v14, v15);
  v25 = v16;

  v17 = objc_autoreleasePoolPush();
  v18 = objc_getAssociatedObject(v7, &unk_1EB3910E0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A9368F04;
  v20[3] = &unk_1E787FF38;
  v21 = v18;
  v22 = v23;
  v19 = v18;
  dispatch_async(MEMORY[0x1E69E96A0], v20);

  objc_autoreleasePoolPop(v17);
  _Block_object_dispose(v23, 8);
}

+ (void)test_actionStartTap:(id)a3
{
  qword_1EB3910C8 = _Block_copy(a3);

  MEMORY[0x1EEE66BB8]();
}

@end