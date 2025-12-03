@interface TTSWrappedAudioQueue
- (AudioStreamBasicDescription)queueStreamDescription;
- (BOOL)_attemptQueueStart;
- (BOOL)_startQueueWithRetry;
- (BOOL)audioQueueActive;
- (BOOL)play;
- (TTSWrappedAudioQueue)init;
- (id)convertBufferIfNecessary:(id)necessary;
- (unint64_t)_minimumBufferByteSize;
- (void)_configureEffects;
- (void)_initializeDSPGraphAU;
- (void)_rebuildAudioQueue;
- (void)_reconfigureQueueFormatForMultiChannelOutputIfNecessary;
- (void)_selectChannels:(OpaqueAudioQueue *)channels;
- (void)_syncGraphParameters;
- (void)_syncGraphProperties;
- (void)_tearDownAudioQueue;
- (void)_tearDownDSPGraphAU;
- (void)bufferCallback:(AudioQueueBuffer *)callback;
- (void)dealloc;
- (void)handleMediaServicesReset;
- (void)playBuffer:(id)buffer completionHandler:(id)handler;
- (void)scheduleBuffer:(id)buffer completionHandler:(id)handler;
- (void)setAudioSession:(id)session;
- (void)setChannels:(id)channels;
- (void)setDspGraph:(id)graph;
- (void)setGraphParameters:(id)parameters;
- (void)setGraphProperties:(id)properties;
- (void)setOutputFormat:(id)format;
- (void)stop;
@end

@implementation TTSWrappedAudioQueue

- (TTSWrappedAudioQueue)init
{
  v32.receiver = self;
  v32.super_class = TTSWrappedAudioQueue;
  v2 = [(TTSWrappedAudioQueue *)&v32 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_bufferLock._os_unfair_lock_opaque = 0;
    v4 = [TTSAudioFormat alloc];
    v30[0] = xmmword_1A95862E0;
    v30[1] = unk_1A95862F0;
    v31 = 32;
    v8 = objc_msgSend_initWithStreamDescription_(v4, v5, v30, v6, v7);
    outputFormat = v3->_outputFormat;
    v3->_outputFormat = v8;

    queueFormat = v3->_queueFormat;
    v3->_queueFormat = 0;

    v15 = objc_msgSend_orderedSet(MEMORY[0x1E695DFA0], v11, v12, v13, v14);
    inflightBuffers = v3->_inflightBuffers;
    v3->_inflightBuffers = v15;

    cachedAudioConverter = v3->_cachedAudioConverter;
    v3->_cachedAudioConverter = 0;

    v3->_audioQueueFlags = 0;
    audioSession = v3->_audioSession;
    v3->_audioSession = 0;

    channels = v3->_channels;
    v3->_channels = MEMORY[0x1E695E0F0];

    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
    v21 = dispatch_queue_create("TTSAQ.callback", v20);
    callbackQueue = v3->_callbackQueue;
    v3->_callbackQueue = v21;

    v27 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24, v25, v26);
    objc_msgSend_addObserver_selector_name_object_(v27, v28, v3, sel_handleMediaServicesReset, *MEMORY[0x1E6958120], 0);
  }

  return v3;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2, v3, v4);
  objc_msgSend_removeObserver_(v6, v7, self, v8, v9);

  objc_msgSend__tearDownAudioQueue(self, v10, v11, v12, v13);
  v14.receiver = self;
  v14.super_class = TTSWrappedAudioQueue;
  [(TTSWrappedAudioQueue *)&v14 dealloc];
}

- (id)convertBufferIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v9 = objc_msgSend_queueFormat(self, v5, v6, v7, v8);
  v14 = objc_msgSend_format(necessaryCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_avFormat(v14, v15, v16, v17, v18);
  if (objc_msgSend_isEqual_(v9, v20, v19, v21, v22))
  {

LABEL_8:
    v79 = necessaryCopy;
    goto LABEL_12;
  }

  v27 = objc_msgSend_queueFormat(self, v23, v24, v25, v26);

  if (!v27)
  {
    goto LABEL_8;
  }

  v32 = objc_msgSend_cachedAudioConverter(self, v28, v29, v30, v31);
  if (v32)
  {
    v37 = v32;
    v38 = objc_msgSend_cachedAudioConverter(self, v33, v34, v35, v36);
    v43 = objc_msgSend_inputFormat(v38, v39, v40, v41, v42);
    v48 = objc_msgSend_format(necessaryCopy, v44, v45, v46, v47);
    v53 = objc_msgSend_avFormat(v48, v49, v50, v51, v52);
    if (objc_msgSend_isEqual_(v43, v54, v53, v55, v56))
    {
      v61 = objc_msgSend_cachedAudioConverter(self, v57, v58, v59, v60);
      v66 = objc_msgSend_outputFormat(v61, v62, v63, v64, v65);
      v71 = objc_msgSend_queueFormat(self, v67, v68, v69, v70);
      isEqual = objc_msgSend_isEqual_(v66, v72, v71, v73, v74);

      if (isEqual)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v80 = objc_alloc(MEMORY[0x1E69583E8]);
  v85 = objc_msgSend_format(necessaryCopy, v81, v82, v83, v84);
  v90 = objc_msgSend_avFormat(v85, v86, v87, v88, v89);
  v95 = objc_msgSend_queueFormat(self, v91, v92, v93, v94);
  v98 = objc_msgSend_initFromFormat_toFormat_(v80, v96, v90, v95, v97);
  objc_msgSend_setCachedAudioConverter_(self, v99, v98, v100, v101);

  v106 = objc_msgSend_channels(self, v102, v103, v104, v105);
  v110 = objc_msgSend_ax_mappedArrayUsingBlock_(v106, v107, &unk_1F1CEDA88, v108, v109);
  v115 = objc_msgSend_cachedAudioConverter(self, v111, v112, v113, v114);
  objc_msgSend_setChannelMap_(v115, v116, v110, v117, v118);

LABEL_11:
  v119 = objc_msgSend_queueFormat(self, v75, v76, v77, v78);
  objc_msgSend_sampleRate(v119, v120, v121, v122, v123);
  v125 = v124;
  v130 = objc_msgSend_format(necessaryCopy, v126, v127, v128, v129);
  objc_msgSend_sampleRate(v130, v131, v132, v133, v134);
  *&v125 = v125 / v135;

  v136 = objc_alloc(MEMORY[0x1E6958438]);
  v141 = objc_msgSend_queueFormat(self, v137, v138, v139, v140);
  v146 = objc_msgSend_frameLength(necessaryCopy, v142, v143, v144, v145);
  v149 = objc_msgSend_initWithPCMFormat_frameCapacity_(v136, v147, v141, (*&v125 * v146), v148);

  v167[0] = 0;
  v167[1] = v167;
  v167[2] = 0x2020000000;
  v168 = 0;
  v154 = objc_msgSend_cachedAudioConverter(self, v150, v151, v152, v153);
  v165 = v167;
  v166 = 0;
  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = sub_1A9330538;
  v163[3] = &unk_1E787FDF8;
  v164 = necessaryCopy;
  objc_msgSend_convertToBuffer_error_withInputFromBlock_(v154, v155, v149, &v166, v163);
  v156 = v166;

  v157 = [TTSAudioBuffer alloc];
  v79 = objc_msgSend_initWithAVBuffer_(v157, v158, v149, v159, v160);

  _Block_object_dispose(v167, 8);
LABEL_12:

  return v79;
}

- (void)scheduleBuffer:(id)buffer completionHandler:(id)handler
{
  bufferCopy = buffer;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A9330724;
    aBlock[3] = &unk_1E787FE48;
    v13 = handlerCopy;
    v11 = _Block_copy(aBlock);
  }

  else
  {
    v11 = 0;
  }

  objc_msgSend_playBuffer_completionHandler_(self, v8, bufferCopy, v11, v9);
}

- (void)playBuffer:(id)buffer completionHandler:(id)handler
{
  v168 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  handlerCopy = handler;
  if (objc_msgSend_state(self, v8, v9, v10, v11))
  {
    v15 = objc_msgSend_convertBufferIfNecessary_(self, v12, bufferCopy, v13, v14);

    v20 = objc_msgSend_frameLength(v15, v16, v17, v18, v19);
    v25 = objc_msgSend_format(v15, v21, v22, v23, v24);
    v30 = v25;
    if (v25)
    {
      objc_msgSend_streamDescription(v25, v26, v27, v28, v29);
      v31 = DWORD2(v163);
    }

    else
    {
      v31 = 0;
      v164 = 0;
      v162 = 0u;
      v163 = 0u;
    }

    outBuffer = 0;
    v42 = objc_msgSend_aqRef(self, v38, v39, v40, v41);
    v47 = objc_msgSend__minimumBufferByteSize(self, v43, v44, v45, v46);
    v48 = AudioQueueAllocateBuffer(v42, v47, &outBuffer);
    v49 = objc_alloc_init(TTSWrappedAudioQueueBuffer);
    objc_msgSend_setAqBuffer_(v49, v50, outBuffer, v51, v52);
    if (v48)
    {
      v56 = AXTTSLogCommon();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_1A9577124(v48, v56, v57, v58, v59);
      }

      v160[1] = MEMORY[0x1E69E9820];
      v160[2] = 3221225472;
      v160[3] = sub_1A9330DFC;
      v160[4] = &unk_1E787FE20;
      v160[5] = self;
      AX_PERFORM_WITH_LOCK();
      if (!handlerCopy)
      {
        goto LABEL_36;
      }

      v64 = objc_msgSend_callbackQueue(self, v60, v61, v62, v63);
      v159[0] = MEMORY[0x1E69E9820];
      v159[1] = 3221225472;
      v159[2] = sub_1A9330E38;
      v159[3] = &unk_1E787FE70;
      v160[0] = handlerCopy;
      dispatch_async(v64, v159);

      v65 = v160;
    }

    else
    {
      objc_msgSend_setCompletionHandler_(v49, v53, handlerCopy, v54, v55);
      v70 = (v31 * v20);
      *(objc_msgSend_aqBuffer(v49, v66, v67, v68, v69) + 16) = v70;
      if (objc_msgSend_frameLength(v15, v71, v72, v73, v74) == 1)
      {
        objc_msgSend_queueStreamDescription(self, v75, v76, v77, v78);
        v83 = objc_msgSend_aqBuffer(v49, v79, v80, v81, v82);
        if ((v158 << 8) >= *v83)
        {
          v88 = *v83;
        }

        else
        {
          v88 = (v158 << 8);
        }

        v89 = objc_msgSend_aqBuffer(v49, v84, v85, v86, v87);
        bzero(*(v89 + 8), v88);
        *(objc_msgSend_aqBuffer(v49, v90, v91, v92, v93) + 16) = v88;
      }

      else
      {
        v98 = *(objc_msgSend_aqBuffer(v49, v75, v76, v77, v78) + 8);
        v103 = objc_msgSend_mutableAudioBufferList(v15, v99, v100, v101, v102);
        memcpy(v98, *(v103 + 16), v70);
      }

      *(objc_msgSend_aqBuffer(v49, v94, v95, v96, v97) + 24) = v49;
      v152 = MEMORY[0x1E69E9820];
      v153 = 3221225472;
      v154 = sub_1A9330E4C;
      v155 = &unk_1E787FE98;
      selfCopy = self;
      v157 = v49;
      AX_PERFORM_WITH_LOCK();
      v148 = 0;
      v149 = &v148;
      v150 = 0x2020000000;
      v151 = 0;
      v141 = MEMORY[0x1E69E9820];
      v142 = 3221225472;
      v143 = sub_1A9330EA0;
      v144 = &unk_1E787FEC0;
      selfCopy2 = self;
      v104 = v157;
      v146 = v104;
      v147 = &v148;
      AX_PERFORM_WITH_LOCK();
      if (*(v149 + 6))
      {
        v135 = MEMORY[0x1E69E9820];
        v136 = 3221225472;
        v137 = sub_1A9330F78;
        v138 = &unk_1E787FE98;
        selfCopy3 = self;
        v140 = v104;
        AX_PERFORM_WITH_LOCK();
        if (*(v149 + 6) == -66671)
        {
          v130 = MEMORY[0x1E69E9820];
          v131 = 3221225472;
          v132 = sub_1A9330FCC;
          v133 = &unk_1E787FE20;
          selfCopy4 = self;
          AX_PERFORM_WITH_LOCK();
          v109 = AXTTSLogCommon();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            sub_1A957720C();
          }
        }

        else
        {
          v109 = AXTTSLogCommon();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v121 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v118, *(v149 + 6), v119, v120);
            sub_1A95771BC(v121, v167, v109);
          }
        }

        if (handlerCopy)
        {
          v126 = objc_msgSend_callbackQueue(self, v122, v123, v124, v125);
          v128[0] = MEMORY[0x1E69E9820];
          v128[1] = 3221225472;
          v128[2] = sub_1A9331008;
          v128[3] = &unk_1E787FE70;
          v129 = handlerCopy;
          dispatch_async(v126, v128);
        }
      }

      else if (objc_msgSend_state(self, v105, v106, v107, v108) == 2 || !objc_msgSend_state(self, v110, v111, v112, v113))
      {
        AX_PERFORM_WITH_LOCK();
      }

      else
      {
        objc_msgSend__attemptQueueStart(self, v114, v115, v116, v117);
      }

      v65 = &v157;
      _Block_object_dispose(&v148, 8);
    }

LABEL_36:
    bufferCopy = v15;
    goto LABEL_37;
  }

  v32 = AXTTSLogCommon();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9577240();
  }

  if (handlerCopy)
  {
    v37 = objc_msgSend_callbackQueue(self, v33, v34, v35, v36);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9330DE8;
    block[3] = &unk_1E787FE70;
    v166 = handlerCopy;
    dispatch_async(v37, block);
  }

LABEL_37:

  v127 = *MEMORY[0x1E69E9840];
}

- (BOOL)play
{
  if (objc_msgSend_shouldRebuildAudioQueue(self, a2, v2, v3, v4))
  {
    objc_msgSend__tearDownAudioQueue(self, v6, v7, v8, v9);
    objc_msgSend_setShouldRebuildAudioQueue_(self, v10, 0, v11, v12);
  }

  objc_msgSend__buildAudioQueue(self, v6, v7, v8, v9);
  if (objc_msgSend_state(self, v13, v14, v15, v16) == 2 && !objc_msgSend__startQueueWithRetry(self, v17, v18, v19, v20))
  {
    return 0;
  }

  v21 = 1;
  objc_msgSend_setState_(self, v17, 1, v19, v20);
  return v21;
}

- (void)stop
{
  v3 = AXTTSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9577274();
  }

  if (objc_msgSend_state(self, v4, v5, v6, v7) || objc_msgSend_audioQueueActive(self, v8, v9, v10, v11))
  {
    objc_msgSend_setState_(self, v8, 0, v10, v11);
    AX_PERFORM_WITH_LOCK();
  }

  objc_msgSend_setState_(self, v8, 0, v10, v11);
}

- (void)setAudioSession:(id)session
{
  sessionCopy = session;
  v10 = objc_msgSend_audioSession(self, v6, v7, v8, v9);
  v15 = objc_msgSend_opaqueSessionID(v10, v11, v12, v13, v14);

  objc_storeStrong(&self->_audioSession, session);
  if (v15 != objc_msgSend_opaqueSessionID(sessionCopy, v16, v17, v18, v19))
  {
    v20 = AXTTSLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v43 = 0;
      _os_log_impl(&dword_1A9324000, v20, OS_LOG_TYPE_INFO, "TTSAQ: Audio session changed, rebuilding audio queue.", v43, 2u);
    }

    objc_msgSend__tearDownAudioQueue(self, v21, v22, v23, v24);
    v29 = objc_msgSend_opaqueSessionID(sessionCopy, v25, v26, v27, v28);
    v34 = objc_msgSend_sharedInstance(MEMORY[0x1E6958468], v30, v31, v32, v33);
    v39 = v29 == objc_msgSend_opaqueSessionID(v34, v35, v36, v37, v38);
    objc_msgSend_setUsingSharedSession_(self, v40, v39, v41, v42);
  }
}

- (void)setChannels:(id)channels
{
  channelsCopy = channels;
  if ((objc_msgSend_isEqualToArray_(channelsCopy, v6, self->_channels, v7, v8) & 1) == 0)
  {
    objc_storeStrong(&self->_channels, channels);
    objc_msgSend__reconfigureQueueFormatForMultiChannelOutputIfNecessary(self, v9, v10, v11, v12);
    v13 = AXTTSLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1A9324000, v13, OS_LOG_TYPE_INFO, "TTSAQ: Audio channels changed, rebuilding audio queue.", v17, 2u);
    }

    objc_msgSend_setShouldRebuildAudioQueue_(self, v14, 1, v15, v16);
  }
}

- (void)setOutputFormat:(id)format
{
  formatCopy = format;
  v10 = objc_msgSend_outputFormat(self, v6, v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(formatCopy, v11, v10, v12, v13);

  if ((isEqual & 1) == 0)
  {
    v19 = AXTTSLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v23 = 0;
      _os_log_impl(&dword_1A9324000, v19, OS_LOG_TYPE_INFO, "TTSAQ: Audio format changed, rebuilding audio queue.", v23, 2u);
    }

    objc_storeStrong(&self->_outputFormat, format);
    objc_msgSend_setShouldRebuildAudioQueue_(self, v20, 1, v21, v22);
  }

  objc_msgSend__reconfigureQueueFormatForMultiChannelOutputIfNecessary(self, v15, v16, v17, v18);
}

- (void)handleMediaServicesReset
{
  v3 = AXTTSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9324000, v3, OS_LOG_TYPE_INFO, "TTSAQ: Media services reset", buf, 2u);
  }

  v8 = objc_msgSend_callbackQueue(self, v4, v5, v6, v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93316E8;
  block[3] = &unk_1E787FE20;
  block[4] = self;
  dispatch_async(v8, block);
}

- (BOOL)audioQueueActive
{
  v6 = objc_msgSend_aqRef(self, a2, v2, v3, v4);
  if (v6)
  {
    ioDataSize = 4;
    outData = 0;
    v11 = objc_msgSend_aqRef(self, v7, v8, v9, v10);
    if (AudioQueueGetProperty(v11, 0x6171726Eu, &outData, &ioDataSize))
    {
      v12 = 1;
    }

    else
    {
      v12 = outData == 0;
    }

    LOBYTE(v6) = !v12;
  }

  return v6;
}

- (void)bufferCallback:(AudioQueueBuffer *)callback
{
  outBuffer[3] = *MEMORY[0x1E69E9840];
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = sub_1A9331CB0;
  v117 = sub_1A9331CDC;
  v118 = 0;
  v5 = callback->mUserData;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = sub_1A9331CE4;
  v111 = sub_1A9331CF4;
  v112 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v10 = objc_msgSend_audioQueueActive(self, v6, v7, v8, v9);
  v95 = MEMORY[0x1E69E9820];
  v96 = 3221225472;
  v97 = sub_1A9331CFC;
  v98 = &unk_1E787FEE8;
  v11 = v5;
  v99 = v11;
  selfCopy = self;
  v101 = &v107;
  v102 = &v103;
  AX_PERFORM_WITH_LOCK();
  if (v11)
  {
    v16 = objc_msgSend_completionHandler(v108[5], v12, v13, v14, v15);

    if (v16)
    {
      v21 = objc_msgSend_completionHandler(v108[5], v17, v18, v19, v20);
      v22 = v114[5];
      v114[5] = v21;

      objc_msgSend_setCompletionHandler_(v108[5], v23, 0, v24, v25);
    }

    v26 = objc_msgSend_aqRef(self, v17, v18, v19, v20);
    AudioQueueFreeBuffer(v26, callback);
    if (v114[5])
    {
      v31 = objc_msgSend_state(self, v27, v28, v29, v30);
      v36 = objc_msgSend_callbackQueue(self, v32, v33, v34, v35);
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = sub_1A9331D94;
      v93[3] = &unk_1E787FF10;
      v93[4] = &v113;
      v94 = v31 == 0;
      dispatch_async(v36, v93);
    }

    if (v104[3] & v10)
    {
      v37 = objc_msgSend__minimumBufferByteSize(self, v27, v28, v29, v30);
      outBuffer[0] = 0;
      v42 = objc_msgSend_aqRef(self, v38, v39, v40, v41);
      AudioQueueAllocateBuffer(v42, v37, outBuffer);
      v43 = outBuffer[0];
      outBuffer[0]->mUserData = 0;
      v43->mAudioDataByteSize = v37;
      bzero(v43->mAudioData, v37);
      objc_msgSend_setCurrentSilenceBufferCount_(self, v44, &unk_1F1D0F780, v45, v46);
      v51 = objc_msgSend_aqRef(self, v47, v48, v49, v50);
      AudioQueueEnqueueBuffer(v51, outBuffer[0], 0, 0);
    }

    goto LABEL_18;
  }

  v52 = objc_msgSend_currentSilenceBufferCount(self, v12, v13, v14, v15);
  v57 = objc_msgSend_unsignedIntValue(v52, v53, v54, v55, v56);

  v62 = v57 * 0.1;
  if (v62 > 0.5)
  {
    v69 = 1;
    goto LABEL_12;
  }

  v63 = objc_msgSend_audioSession(self, v58, v59, v60, v61);
  isActive = objc_msgSend_isActive(v63, v64, v65, v66, v67);

  v69 = isActive ^ 1;
  if ((v104[3] & (isActive & v10) & 1) == 0)
  {
LABEL_12:
    v79 = objc_msgSend_aqRef(self, v58, v59, v60, v61);
    AudioQueueFreeBuffer(v79, callback);
    goto LABEL_13;
  }

  v70 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v58, v57 + 1, v60, v61);
  objc_msgSend_setCurrentSilenceBufferCount_(self, v71, v70, v72, v73);

  v78 = objc_msgSend_aqRef(self, v74, v75, v76, v77);
  AudioQueueEnqueueBuffer(v78, callback, 0, 0);
LABEL_13:
  if (v69 && *(v104 + 24) == 1)
  {
    v80 = AXTTSLogCommon();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      *&v85 = v57 * 0.1;
      v86 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v81, v82, v83, v84, v85);
      sub_1A9577344(v86, outBuffer, v80);
    }

    v91 = objc_msgSend_aqRef(self, v87, v88, v89, v90);
    AudioQueueStop(v91, 1u);
  }

LABEL_18:

  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v107, 8);

  _Block_object_dispose(&v113, 8);
  v92 = *MEMORY[0x1E69E9840];
}

- (BOOL)_startQueueWithRetry
{
  *&v30[5] = *MEMORY[0x1E69E9840];
  objc_msgSend__buildAudioQueue(self, a2, v2, v3, v4);
  if (objc_msgSend__attemptQueueStart(self, v6, v7, v8, v9))
  {
    result = 1;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = v11;
      v13 = AXTTSLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1A957739C(v29, (v12 + 1), v30, v13, v14);
      }

      objc_msgSend__tearDownAudioQueue(self, v15, v16, v17, v18);
      if (v12)
      {
        objc_msgSend_sleepForTimeInterval_(MEMORY[0x1E696AF00], v19, v20, v21, v22, 0.1);
      }

      if (v12 == 2)
      {
        break;
      }

      objc_msgSend__buildAudioQueue(self, v19, v20, v21, v22);
      v27 = objc_msgSend__attemptQueueStart(self, v23, v24, v25, v26);
      v11 = v12 + 1;
    }

    while ((v27 & 1) == 0);
    result = v12 < 2;
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_attemptQueueStart
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 0;
  AX_PERFORM_WITH_LOCK();
  _Block_object_dispose(v3, 8);
  return 1;
}

- (unint64_t)_minimumBufferByteSize
{
  v6 = objc_msgSend_outputFormat(self, a2, v2, v3, v4);
  objc_msgSend_sampleRate(v6, v7, v8, v9, v10);
  v12 = v11;
  v17 = objc_msgSend_outputFormat(self, v13, v14, v15, v16);
  v22 = v17;
  if (v17)
  {
    objc_msgSend_streamDescription(v17, v18, v19, v20, v21);
    v23 = v26;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 * (v12 * 0.1);

  return v24;
}

- (void)_tearDownAudioQueue
{
  if (objc_msgSend_aqRef(self, a2, v2, v3, v4))
  {
    v6 = AXTTSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A957741C(self, v6, v7, v8, v9);
    }

    v14 = objc_msgSend_aqRef(self, v10, v11, v12, v13);
    AudioQueueRemovePropertyListener(v14, 0x6171726Eu, sub_1A9332340, self);
    v19 = objc_msgSend_aqRef(self, v15, v16, v17, v18);
    AudioQueueStop(v19, 1u);
    objc_msgSend_procNodeRef(self, v20, v21, v22, v23);
    ATAudioProcessingNodeDispose();
    v28 = objc_msgSend_aqRef(self, v24, v25, v26, v27);
    AudioQueueDispose(v28, 1u);
    objc_msgSend_setState_(self, v29, 0, v30, v31);
    objc_msgSend_setAqRef_(self, v32, 0, v33, v34);
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_1A9331CE4;
    v45[4] = sub_1A9331CF4;
    v46 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37, v38);
    block[5] = MEMORY[0x1E69E9820];
    block[6] = 3221225472;
    block[7] = sub_1A93323DC;
    block[8] = &unk_1E787FF38;
    block[9] = self;
    block[10] = v45;
    AX_PERFORM_WITH_LOCK();
    v43 = objc_msgSend_callbackQueue(self, v39, v40, v41, v42);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9332544;
    block[3] = &unk_1E787FF60;
    block[4] = v45;
    dispatch_async(v43, block);

    _Block_object_dispose(v45, 8);
  }
}

- (AudioStreamBasicDescription)queueStreamDescription
{
  v8 = objc_msgSend_queueFormat(self, a3, v3, v4, v5);

  if (v8)
  {
    v27 = objc_msgSend_queueFormat(self, v9, v10, v11, v12);
    v17 = objc_msgSend_streamDescription(v27, v13, v14, v15, v16);
    v18 = *(v17 + 32);
    v20 = *v17;
    v19 = *(v17 + 16);
    v21 = v27;
    *&retstr->mSampleRate = v20;
    *&retstr->mBytesPerPacket = v19;
    *&retstr->mBitsPerChannel = v18;
  }

  else
  {
    v21 = objc_msgSend_outputFormat(self, v9, v10, v11, v12);
    if (v21)
    {
      v28 = v21;
      objc_msgSend_streamDescription(v21, v22, v23, v24, v25);
      v21 = v28;
    }

    else
    {
      *&retstr->mBitsPerChannel = 0;
      *&retstr->mSampleRate = 0u;
      *&retstr->mBytesPerPacket = 0u;
    }
  }

  return result;
}

- (void)_rebuildAudioQueue
{
  v42 = 0;
  objc_msgSend_queueStreamDescription(self, a2, v2, v3, v4, 0, 0, 0, 0, 0);
  if (objc_msgSend_usingSharedSession(self, v6, v7, v8, v9))
  {
    objc_msgSend_sharedInstance(MEMORY[0x1E6958468], v10, v11, v12, v13);
  }

  else
  {
    objc_msgSend_audioSession(self, v10, v11, v12, v13);
  }
  v14 = ;
  objc_msgSend_opaqueSessionID(v14, v15, v16, v17, v18);

  objc_msgSend_audioQueueFlags(self, v19, v20, v21, v22);
  AudioQueueNewOutputWithAudioSession();
  v27 = objc_msgSend_audioSession(self, v23, v24, v25, v26);
  objc_msgSend_setPreferredIOBufferDuration_error_(v27, v28, 0, v29, v30, 0.003);

  objc_msgSend__selectChannels_(self, v31, v42, v32, v33);
  self->_aqRef = v42;
  objc_msgSend__configureEffects(self, v34, v35, v36, v37);
  AudioQueueAddPropertyListener(self->_aqRef, 0x6171726Eu, sub_1A9332340, self);
  v38 = AXTTSLogCommon();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_1A95775D8(self, v38, v39, v40, v41);
  }
}

- (void)_reconfigureQueueFormatForMultiChannelOutputIfNecessary
{
  v6 = objc_msgSend_outputFormat(self, a2, v2, v3, v4);

  if (v6)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v11 = objc_msgSend_outputFormat(self, v7, v8, v9, v10);
    v16 = v11;
    if (v11)
    {
      objc_msgSend_streamDescription(v11, v12, v13, v14, v15);
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    if (objc_msgSend_count(self->_channels, v18, v19, v20, v21))
    {
      v26 = objc_msgSend_count(self->_channels, v22, v23, v24, v25);
    }

    else
    {
      v26 = 1;
    }

    if (HIDWORD(v49) == v26)
    {
      v27 = objc_msgSend_outputFormat(self, v22, v23, v24, v25);
      v32 = objc_msgSend_avFormat(v27, v28, v29, v30, v31);
      queueFormat = self->_queueFormat;
      self->_queueFormat = v32;
    }

    else
    {
      DWORD2(v49) *= v26;
      HIDWORD(v49) = v26;
      HIDWORD(v48) &= ~0x20u;
      LODWORD(v49) = v49 * v26;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      LODWORD(v44) = v26 | 0x930000;
      HIDWORD(v44) = 15;
      v34 = objc_alloc(MEMORY[0x1E6958420]);
      v35 = objc_alloc(MEMORY[0x1E69583C8]);
      v39 = objc_msgSend_initWithLayout_(v35, v36, &v44, v37, v38);
      v42 = objc_msgSend_initWithStreamDescription_channelLayout_(v34, v40, &v48, v39, v41, v44, v45, v46, v47);
      v43 = self->_queueFormat;
      self->_queueFormat = v42;
    }
  }

  else
  {
    v17 = AXTTSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A9577670();
    }
  }
}

- (void)_selectChannels:(OpaqueAudioQueue *)channels
{
  v94 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_queueFormat(self, a2, channels, v3, v4);

  if (v7)
  {
    v8 = AXTTSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      channels = self->_channels;
      *buf = 138412290;
      *v90 = channels;
      _os_log_impl(&dword_1A9324000, v8, OS_LOG_TYPE_INFO, "TTSAQ: Selecting channels %@", buf, 0xCu);
    }

    p_channels = &self->_channels;
    if (objc_msgSend_count(self->_channels, v11, v12, v13, v14))
    {
      v19 = objc_msgSend_queueFormat(self, v15, v16, v17, v18);
      v24 = *(objc_msgSend_streamDescription(v19, v20, v21, v22, v23) + 28);

      v29 = objc_msgSend_queueFormat(self, v25, v26, v27, v28);
      v34 = objc_msgSend_channelCount(v29, v30, v31, v32, v33);
      v39 = objc_msgSend_count(self->_channels, v35, v36, v37, v38);

      if (v39 == v34)
      {
        v40 = &v81 - 2 * v24;
        v41 = 16 * v24;
        bzero(v40, v41);
        v88 = 0u;
        v87 = 0u;
        v86 = 0u;
        v85 = 0u;
        v42 = *p_channels;
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v85, v93, 16);
        if (v44)
        {
          v49 = v44;
          v82 = v41;
          *&v83 = channels;
          v84 = &v81;
          v50 = 0;
          v51 = *v86;
          do
          {
            v52 = 0;
            v53 = &v40[2 * v50 + 1];
            v50 += v49;
            do
            {
              if (*v86 != v51)
              {
                objc_enumerationMutation(v42);
              }

              v54 = *(*(&v85 + 1) + 8 * v52);
              *v53 = objc_msgSend_channelNumber(v54, v45, v46, v47, v48);
              v59 = objc_msgSend_owningPortUID(v54, v55, v56, v57, v58);
              *(v53 - 1) = v59;

              ++v52;
              v53 += 2;
            }

            while (v49 != v52);
            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v85, v93, 16);
          }

          while (v49);

          v60 = AudioQueueSetProperty(v83, 0x61716361u, v40, v82);
          if (v60 << 16)
          {
            v61 = v60;
            v62 = AXTTSLogCommon();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_1A9577768(v61, v62);
            }

            if (objc_msgSend_count(*p_channels, v63, v64, v65, v66))
            {
              v68 = 0;
              v69 = v40 + 1;
              *&v67 = 67109634;
              v83 = v67;
              do
              {
                v70 = AXTTSLogCommon();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  v75 = *v69;
                  v76 = *(v69 - 1);
                  *buf = v83;
                  *v90 = v68;
                  *&v90[4] = 1024;
                  *&v90[6] = v75;
                  v91 = 2112;
                  v92 = v76;
                  _os_log_error_impl(&dword_1A9324000, v70, OS_LOG_TYPE_ERROR, "TTSAQ: Channel layout error: [%d], channel number: %d, deviceUID: %@", buf, 0x18u);
                }

                ++v68;
                v69 += 4;
              }

              while (objc_msgSend_count(*p_channels, v71, v72, v73, v74) > v68);
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v77 = AXTTSLogCommon();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_1A95776B0(v24, p_channels, v77, v78, v79);
        }
      }
    }
  }

  v80 = *MEMORY[0x1E69E9840];
}

- (void)_initializeDSPGraphAU
{
  objc_msgSend_aqRef(self, a2, v2, v3, v4);
  v6 = ATAudioProcessingNodeInstantiate();
  objc_msgSend_setProcNodeRef_(self, v7, 0, v8, v9);
  if (v6)
  {
    v10 = AXTTSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A95777F4(v6, v10, v11, v12, v13);
    }
  }
}

- (void)_tearDownDSPGraphAU
{
  if (objc_msgSend_procNodeRef(self, a2, v2, v3, v4))
  {
    objc_msgSend_procNodeRef(self, v6, v7, v8, v9);
    ATAudioProcessingNodeDispose();

    objc_msgSend_setProcNodeRef_(self, v10, 0, v11, v12);
  }
}

- (void)setDspGraph:(id)graph
{
  graphCopy = graph;
  if ((objc_msgSend_isEqualToString_(self->_dspGraph, v6, graphCopy, v7, v8) & 1) == 0)
  {
    objc_storeStrong(&self->_dspGraph, graph);
    AX_PERFORM_WITH_LOCK();
  }
}

- (void)setGraphProperties:(id)properties
{
  propertiesCopy = properties;
  if ((objc_msgSend_isEqualToDictionary_(self->_graphProperties, v6, propertiesCopy, v7, v8) & 1) == 0)
  {
    objc_storeStrong(&self->_graphProperties, properties);
    AX_PERFORM_WITH_LOCK();
  }
}

- (void)setGraphParameters:(id)parameters
{
  parametersCopy = parameters;
  if ((objc_msgSend_isEqualToDictionary_(self->_graphParameters, v6, parametersCopy, v7, v8) & 1) == 0)
  {
    objc_storeStrong(&self->_graphParameters, parameters);
    AX_PERFORM_WITH_LOCK();
  }
}

- (void)_syncGraphParameters
{
  v64 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_aqRef(self, a2, v2, v3, v4) && objc_msgSend_procNodeRef(self, v6, v7, v8, v9) && objc_msgSend_needsParameterSync(self, v6, v10, v8, v9))
  {
    objc_msgSend_setNeedsParameterSync_(self, v6, 0, v8, v9);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v15 = objc_msgSend_graphParameters(self, v11, v12, v13, v14);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v55, v63, 16);
    if (v17)
    {
      v23 = v17;
      v24 = *v56;
      *&v22 = 138412546;
      v53 = v22;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v15);
          }

          v26 = *(*(&v55 + 1) + 8 * i);
          LODWORD(v54) = 0;
          objc_msgSend_unsignedIntValue(v26, v18, v19, v20, v21, v53, 0, v54);
          v31 = objc_msgSend_graphParameters(self, v27, v28, v29, v30);
          v35 = objc_msgSend_objectForKeyedSubscript_(v31, v32, v26, v33, v34);
          objc_msgSend_floatValue(v35, v36, v37, v38, v39);

          objc_msgSend_procNodeRef(self, v40, v41, v42, v43);
          v44 = ATAudioProcessingNodeSetParameter();
          if (v44)
          {
            v45 = v44;
            v46 = AXTTSLogCommon();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v50 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v47, v45, v48, v49);
              *buf = v53;
              v60 = v26;
              v61 = 2112;
              v62 = v50;
              _os_log_error_impl(&dword_1A9324000, v46, OS_LOG_TYPE_ERROR, "TTSAQ: Could not set AUDSPGraph parameter [%@] with error: %@", buf, 0x16u);
            }
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v55, v63, 16);
      }

      while (v23);
    }

    v51 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v52 = *MEMORY[0x1E69E9840];

    objc_msgSend_setNeedsParameterSync_(self, v6, 1, v8, v9);
  }
}

- (void)_syncGraphProperties
{
  v11 = !objc_msgSend_aqRef(self, a2, v2, v3, v4) || !objc_msgSend_procNodeRef(self, v6, v7, v8, v9) || (objc_msgSend_needsPropertySync(self, v6, v10, v8, v9) & 1) == 0;

  objc_msgSend_setNeedsPropertySync_(self, v6, v11, v8, v9);
}

- (void)_configureEffects
{
  objc_msgSend__tearDownDSPGraphAU(self, a2, v2, v3, v4);
  v10 = objc_msgSend_dspGraph(self, v6, v7, v8, v9);

  if (v10)
  {
    if (!objc_msgSend_procNodeRef(self, v11, v12, v13, v14))
    {
      objc_msgSend__initializeDSPGraphAU(self, v15, v16, v17, v18);
    }

    objc_msgSend_dspGraph(self, v15, v16, v17, v18);

    objc_msgSend_procNodeRef(self, v19, v20, v21, v22);
    v23 = ATAudioProcessingNodeSetProperty();
    objc_msgSend_setNeedsPropertySync_(self, v24, 1, v25, v26);
    objc_msgSend_setNeedsParameterSync_(self, v27, 1, v28, v29);
    if (v23)
    {
      v30 = AXTTSLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1A9577888(v23, v30, v31, v32, v33);
      }
    }
  }
}

@end