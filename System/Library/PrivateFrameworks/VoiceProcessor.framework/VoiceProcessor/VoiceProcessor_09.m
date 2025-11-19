void sub_272560E60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke_3333()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = dlerror();
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }

  v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
LABEL_5:
    v1 = v0;
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreate");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerDispose");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerReset");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerUpdateReportingSessions");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodePCM");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRemoveNode");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerInitialize");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerIsSessionInitialized");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessAudio");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerCreateNodeMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerProcessMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerRegisterDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetDeviceConnectionState");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerStartServices");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v1, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = dlerror();
    v4 = 136315138;
    v5 = v3;
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV2::PostSRCMicClipDetection(VoiceProcessorV2 *this)
{
  v2 = *(this + 129);
  v3 = *(this + 178);
  v4 = *v3;
  if (v2)
  {
    v5 = v4 == *(this + 363);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(this + 364);
    if (v6)
    {
      if (v6 >= v2)
      {
        v7 = *(this + 129);
      }

      else
      {
        v7 = *(this + 364);
      }

      v8 = *(this + 362) - *(this + 365);
      if (v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      if (v4)
      {
        v10 = 0;
        v11 = (v3 + 4);
        do
        {
          v12 = *v11;
          v11 += 2;
          memcpy(v12, (*(this + 184) + 4 * (*(this + 365) + *(this + 362) * v10++)), 4 * v9);
          v13 = *(this + 363);
        }

        while (v10 < v13);
        if (v8 < v7 && v13)
        {
          v14 = 0;
          v15 = (v3 + 4);
          do
          {
            v16 = *v15;
            v15 += 2;
            memcpy((v16 + 4 * v9), (*(this + 184) + 4 * (*(this + 362) * v14++)), 4 * (v7 - v9));
          }

          while (v14 < *(this + 363));
        }
      }

      *(this + 364) -= v7;
      v17 = *(this + 365) + v7;
      *(this + 365) = v17;
      v18 = *(this + 362);
      v19 = v17 >= v18;
      v20 = v17 - v18;
      if (v19)
      {
        *(this + 365) = v20;
      }
    }
  }

  if (**(this + 136))
  {
    v21 = 0;
    v22 = 16;
    do
    {
      __C = 0.0;
      vDSP_maxmgv(*(*(this + 178) + v22), 1, &__C, *(this + 129));
      v23 = __C <= 0.00000001;
      *(*(this + 177) + v21) = __C > 0.00000001;
      if (!v23)
      {
        ++*(this + 373);
      }

      ++v21;
      v22 += 16;
    }

    while (v21 < **(this + 136));
  }
}

uint64_t VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(uint64_t this)
{
  v1 = *(this + 1088);
  v2 = *v1;
  if (v2)
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = 0;
      v6 = v4++;
      if (v4 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v4;
      }

      v8 = 1;
      do
      {
        if ((*(v3 + 456) >> v5))
        {
          if (v8 == v7)
          {
            goto LABEL_12;
          }

          ++v8;
        }

        ++v5;
      }

      while (v5 != 32);
      v5 = 33;
LABEL_12:
      v9 = *(v3 + 4392);
      v10 = *(v3 + 2104);
      if (v5 < (*(v3 + 2112) - v10) >> 2)
      {
        v9 = v9 + *(v10 + 4 * v5);
      }

      if (v9 != 0.0)
      {
        v11 = __exp10f(v9 / 20.0);
        this = MEMORY[0x2743CCE20](*&v1[4 * v6 + 4], 1, &v11, *&v1[4 * v6 + 4], 1, *(v3 + 516));
        v1 = *(v3 + 1088);
        v2 = *v1;
      }
    }

    while (v4 < v2);
  }

  return this;
}

uint64_t VoiceProcessorV2::PreflightUplink(atomic_uint *this, unsigned int a2, unsigned int *a3)
{
  atomic_fetch_add(this + 625, 1u);
  v4 = *(this + 484);
  if (this[624])
  {
    if (this[121])
    {
      VoiceProcessorV2::LogIOError(this, 31.006, this[3148], this[3149], 0.0, "preflight uplink: tryer acquire failed", a3);
      goto LABEL_16;
    }

LABEL_15:
    VoiceProcessorV2::LogIOError(this, 31.005, this[3148], this[3149], 0.0, "preflight uplink: not ok to process?!", a3);
LABEL_16:
    CADeprecated::CAMutex::Lock((this + 648));
    ++this[3148];
    CADeprecated::CAMutex::Unlock((this + 648));
    v15 = 1937006964;
    if (this[3148] == 1)
    {
      VoiceProcessorV2::LogNonTransientErrors(this, 1);
    }

    goto LABEL_20;
  }

  if ((this[121] & 1) == 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 235);
    v8 = *(this + 237);
    v9 = *(this + 236);
    v10 = this[126];
    do
    {
      v11 = v9 * *(this + 234) * v10 / v7;
      v12 = v9 + 1;
      if (v12 <= v7)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(this + 235);
      }

      v14 = v11 - v8;
      if (v12 > v7)
      {
        LODWORD(v11) = 0;
      }

      v9 = v12 - v13;
      ++v6;
      v5 += v14;
      LODWORD(v8) = v11;
    }

    while (v5 < a2);
  }

  else
  {
    v6 = 0;
    LODWORD(v10) = this[126];
  }

  v15 = 0;
  *a3 = v10 * v6;
LABEL_20:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return v15;
}

uint64_t VoiceProcessorV2::DetectVoiceActivity(uint64_t this, const AudioTimeStamp *a2)
{
  inInputBufferLists[1] = *MEMORY[0x277D85DE8];
  if ((*(this + 4695) & 0x20) != 0)
  {
    v2 = this;
    if ((*(this + 4711) & 0x20) != 0)
    {
      this = *(this + 3280);
      if (this)
      {
        if ((*(v2 + 2089) & 1) == 0 && *(v2 + 2088) == 1)
        {
          AudioUnitReset(this, 0, 0);
          this = *(v2 + 3280);
        }

        v4 = *&a2->mRateScalar;
        *&inTimeStamp.mSampleTime = *&a2->mSampleTime;
        *&inTimeStamp.mRateScalar = v4;
        v5 = *&a2->mSMPTETime.mHours;
        *&inTimeStamp.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inTimeStamp.mSMPTETime.mHours = v5;
        ioActionFlags = 512;
        v6 = *(v2 + 1096);
        ioOutputBufferLists = *(v2 + 16440);
        inInputBufferLists[0] = v6;
        this = AudioUnitProcessMultiple(this, &ioActionFlags, &inTimeStamp, *(v2 + 516), 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
        outValue = 0.0;
        v7 = 0.0;
        if (!this)
        {
          this = AudioUnitGetParameter(*(v2 + 3280), 0x73707062u, 0, 0, &outValue);
          v7 = outValue;
        }

        if (v7 != *(v2 + 16432) && *(v2 + 2088) == 1)
        {
          if (*(v2 + 16424))
          {
            this = kdebug_trace();
            v8 = *(v2 + 16200);
            if (v8)
            {
              if (!*MEMORY[0x277D7F098])
              {
                __break(1u);
              }

              v9 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x277D7F098]);
              *(v9 + 16) = 0;
              *(v9 + 24) = v2;
              *(v9 + 32) = v7 != 1.0;
              *v9 = &unk_2881B2208;
              *(v9 + 8) = 0;
              this = caulk::concurrent::messenger::enqueue(v8, v9);
            }
          }
        }

        *(v2 + 16432) = outValue;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return this;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<VoiceProcessorV2::DetectVoiceActivity(AudioTimeStamp const&)::$_0>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  (*(*(v2 + 16424) + 16))();
  v4 = *(a1 + 32);
  kdebug_trace();
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v5 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "ended";
      v8 = *(a1 + 32);
      v15 = "vpProcessUplink_v2.cpp";
      *buf = 136315650;
      if (!v8)
      {
        v7 = "started";
      }

      v16 = 1024;
      v17 = 852;
      v18 = 2080;
      v19 = v7;
      _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> speech activity event %s", buf, 0x1Cu);
    }
  }

  v9 = *(v2 + 12704);
  if (v9 && ((*(v2 + 15881) & 1) != 0 || *(v2 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (*(a1 + 32))
    {
      v10 = "ended";
    }

    else
    {
      v10 = "started";
    }

    CALegacyLog::log(v9, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 852, "operator()", "speech activity event %s", v10);
  }

  result = _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(&v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725619EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZN5caulk10concurrent7details15rt_message_callIZN2vp17call_synchronizerI18VoiceProcessorBaseE4callILNS3_9call_typeE6EJRjRPfS9_PjEEENS3_11call_resultIXT_ES5_JDpT0_EE13expected_typeEDpOSE_EUlT_PKcSM_E_JRiRKSM_RA257_SL_EE10rt_cleanupD2Ev(va);
  _Unwind_Resume(a1);
}

void caulk::concurrent::details::rt_message_call<VoiceProcessorV2::DetectVoiceActivity(AudioTimeStamp const&)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VoiceProcessorV3::RunUplinkEchoDSP(void **this, AudioTimeStamp *a2)
{
  v3 = this;
  v155 = *MEMORY[0x277D85DE8];
  v4 = *this[136];
  if (v4)
  {
    bzero(this[177], v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1)
  {
    this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 129), *(v3 + 135));
    LOBYTE(v5) = *(v3 + 15881);
    if (v5)
    {
      this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 129), *(v3 + 136));
      LOBYTE(v5) = *(v3 + 15881);
      if (v5)
      {
        if (*(v3 + 15880))
        {
LABEL_13:
          bzero(*(*(v3 + 135) + 16), *(*(v3 + 135) + 12));
          LOBYTE(v5) = *(v3 + 15881);
          goto LABEL_14;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  if (*(v3 + 15883) == 1)
  {
    goto LABEL_13;
  }

LABEL_14:
  v6 = (v3 + 516);
  v7 = *(v3 + 129);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v7, *(v3 + 135), a2);
    v7 = *(v3 + 129);
    v8 = *(v3 + 136);
    if (*(v3 + 15881))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = *(v3 + 136);
  }

  if ((*(v3 + 15882) & 1) == 0)
  {
    v9 = *(v3 + 178);
    goto LABEL_23;
  }

LABEL_20:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v7, v8, a2);
  v7 = *(v3 + 129);
  v9 = *(v3 + 178);
  if (*(v3 + 15881))
  {
    goto LABEL_24;
  }

LABEL_23:
  if (*(v3 + 15882) == 1)
  {
LABEL_24:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v7, v9, a2);
  }

  outValue = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0 && (*(v3 + 586) || (*(v3 + 4696) & 0x7F) != 0))
  {
    v145 = 0;
    ioOutputBufferLists = 1;
    v154 = 0uLL;
    v154 = *(*(v3 + 135) + 8);
    v21 = 24 * **(v3 + 136);
    v22 = MEMORY[0x28223BE20](this);
    v25 = (&v138 - ((v24 + 15) & 0x3FFFFFFFF0));
    v26 = *(v3 + 136);
    if (*v26)
    {
      v27 = 0;
      v28 = 2;
      v29 = v25;
      do
      {
        *&v29->mNumberBuffers = 0;
        *&v29->mBuffers[0].mNumberChannels = 0;
        v29->mBuffers[0].mData = 0;
        v29->mNumberBuffers = v23;
        v29->mBuffers[0] = *&v26[v28];
        ++v27;
        v28 += 4;
        ++v29;
      }

      while (v27 < *v26);
    }

    v30 = *(v3 + 586);
    if ((v30 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
    {
      v22 = *(v3 + 350);
      if (v22)
      {
        v145 = 512;
        AudioUnitProcess(v22, &v145, a2, *v6, v25);
        v36 = *v6;
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v36, v25, a2);
        }

        v22 = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 139), v25, v36, v31, v32, v33, v34, v35, v138);
        v30 = *(v3 + 586);
      }
    }

    if ((v30 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
    {
      v22 = *(v3 + 351);
      if (v22)
      {
        v145 = 512;
        AudioUnitProcess(v22, &v145, a2, *v6, v25 + 1);
        v42 = *v6;
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v42, v25 + 1, a2);
        }

        v22 = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 140), v25 + 1, v42, v37, v38, v39, v40, v41, v138);
        v30 = *(v3 + 586);
      }
    }

    if ((v30 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
    {
      v22 = *(v3 + 352);
      if (v22)
      {
        v145 = 512;
        AudioUnitProcess(v22, &v145, a2, *v6, v25 + 2);
        v48 = *v6;
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v48, v25 + 2, a2);
        }

        v22 = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 141), v25 + 2, v48, v43, v44, v45, v46, v47, v138);
      }
    }

    *&ioActionFlags.mBuffers[0].mNumberChannels = 0;
    ioActionFlags.mBuffers[0].mData = 0;
    ioData.mBuffers[0].mData = 0;
    *&ioActionFlags.mNumberBuffers = 1;
    *&ioData.mNumberBuffers = 1;
    *&ioData.mBuffers[0].mNumberChannels = 0;
    v49 = *(v3 + 136);
    if (*v49 < 3u)
    {
      v50 = 0;
      ioActionFlags.mBuffers[0] = *(v49 + 8);
      if (*v49 < 2u)
      {
        v53 = 0;
        goto LABEL_93;
      }

      v51 = 1;
      v52 = 24;
    }

    else
    {
      ioActionFlags.mBuffers[0] = *(v49 + 24);
      v50 = 1;
      v51 = 2;
      v52 = 40;
    }

    v53 = v50;
    ioData.mBuffers[0] = *(v49 + v52);
    v50 = v51;
LABEL_93:
    v54 = *(v3 + 586);
    if ((v54 & 0x20) != 0 && (*(v3 + 4704) & 0x20) != 0)
    {
      v22 = *(v3 + 354);
      if (v22)
      {
        v145 = 512;
        *buf = &ioActionFlags;
        v152.realp = &ioActionFlags;
        v22 = AudioUnitProcessMultiple(v22, &v145, a2, *v6, 1u, buf, 1u, &v152);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v22 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x74u, *v6, &ioActionFlags, a2);
        }

        v54 = *(v3 + 586);
      }
    }

    if ((v54 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
    {
      v22 = *(v3 + 356);
      if (v22)
      {
        v145 = 512;
        v22 = AudioUnitProcess(v22, &v145, a2, *v6, &ioActionFlags);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v22 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *v6, &ioActionFlags, a2);
        }
      }
    }

    if (*(v3 + 4689) & 1) != 0 && (*(v3 + 4705))
    {
      v22 = *(v3 + 357);
      if (v22)
      {
        v145 = 512;
        v22 = AudioUnitProcess(v22, &v145, a2, *v6, &ioData);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v22 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *v6, &ioData, a2);
        }
      }
    }

    if ((*(v3 + 4689) & 0x20) == 0 || (*(v3 + 4705) & 0x20) == 0 || !*(v3 + 362))
    {
      v59 = 0;
      while (((*(v3 + 118) >> v59) & 1) == 0)
      {
        if (++v59 == 32)
        {
          v59 = 33;
          break;
        }
      }

      v60 = *(v3 + 136);
      if (v59 >= *v60)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v63 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v64 = (*v63 ? *v63 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v65 = **(v3 + 136);
            *buf = 136315906;
            *&buf[4] = "vpProcessUplink_v3.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 255;
            *&buf[18] = 1024;
            *&buf[20] = v59;
            LOWORD(v150) = 1024;
            *(&v150 + 2) = v65;
            _os_log_impl(&dword_2724B4000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", buf, 0x1Eu);
          }
        }

        v66 = *(v3 + 1588);
        if (v66 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v66, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v3.cpp", 255, "RunUplinkEchoDSP", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v59, **(v3 + 136));
        }

        v61 = *(*(v3 + 137) + 16);
        v62 = *(v3 + 136);
      }

      else
      {
        v61 = *(*(v3 + 137) + 16);
        v62 = &v60[4 * v59];
      }

      Parameter = memcpy(v61, v62[2], *(v62 + 3));
      v68 = 0;
LABEL_144:
      if ((*(v3 + 4689) & 0x40) == 0 || (*(v3 + 4705) & 0x40) == 0 || !*(v3 + 363))
      {
        v73 = 0;
LABEL_154:
        v74 = (*(*(v3 + 514) + 16) + 4 * *(v3 + 129));
        v152.realp = *(*(v3 + 514) + 16);
        v152.imagp = v74;
        VPTimeFreqConverter_Analyze(*(v3 + 522), *(&v154 + 1), &v152);
        v76 = *(v3 + 586);
        if ((v76 & 0x2000) != 0 && (*(v3 + 4705) & 0x20) != 0 && *(v3 + 362))
        {
          v77 = (*(*(v3 + 430) + 16) + 4 * *(v3 + 129));
          v152.realp = *(*(v3 + 430) + 16);
          v152.imagp = v77;
          VPTimeFreqConverter_Analyze(*(v3 + 516), ioActionFlags.mBuffers[0].mData, &v152);
          v78 = (*(*(v3 + 508) + 16) + 4 * *(v3 + 129));
          v152.realp = *(*(v3 + 508) + 16);
          v152.imagp = v78;
          VPTimeFreqConverter_Analyze(*(v3 + 520), *(*(v3 + 420) + 16), &v152);
          v76 = *(v3 + 586);
        }

        if ((v76 & 0x4000) != 0 && (*(v3 + 4705) & 0x40) != 0 && *(v3 + 363))
        {
          v79 = (*(*(v3 + 509) + 16) + 4 * *(v3 + 129));
          v152.realp = *(*(v3 + 509) + 16);
          v152.imagp = v79;
          VPTimeFreqConverter_Analyze(*(v3 + 517), ioData.mBuffers[0].mData, &v152);
          v80 = (*(*(v3 + 508) + 32) + 4 * *(v3 + 129));
          v152.realp = *(*(v3 + 508) + 32);
          v152.imagp = v80;
          VPTimeFreqConverter_Analyze(*(v3 + 521), *(*(v3 + 421) + 16), &v152);
          v76 = *(v3 + 586);
        }

        if ((v76 & 0x40000000) == 0 || (*(v3 + 4707) & 0x40) == 0 || (v81 = *(v3 + 379)) == 0)
        {
          v88 = 0;
          if ((v76 & 0x80000000) == 0)
          {
            goto LABEL_189;
          }

          goto LABEL_176;
        }

        AudioUnitSetProperty(v81, 0x457u, 0, 0, v3 + 2332, 4u);
        if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
        {
          v82 = *(v3 + 379);
          if (*(v3 + 380))
          {
            v83 = *(v3 + 688);
            goto LABEL_169;
          }
        }

        else
        {
          v82 = *(v3 + 379);
        }

        v83 = 2.0;
LABEL_169:
        AudioUnitSetParameter(v82, 0x1Bu, 0, 0, v83, 0);
        if ((*(v3 + 4689) & 0x20) != 0 && (*(v3 + 4705) & 0x20) != 0 && *(v3 + 362))
        {
          AudioUnitSetParameter(*(v3 + 379), 0x3Fu, 0, 0, *(v3 + 1062) * *(v3 + 1063), 0);
        }

        v84 = *(v3 + 139) + 24;
        v85 = *(v3 + 140) + 24;
        v86 = **(v3 + 136);
        if (v86 < 3)
        {
          v87 = 0;
        }

        else
        {
          v87 = *(v3 + 141) + 24;
        }

        *buf = *(v3 + 139) + 24;
        *&buf[8] = v85;
        v91 = *(v3 + 135);
        *&buf[16] = v87;
        v150 = v91;
        v151 = *(v3 + 210);
        if (v86 >= 3)
        {
          *buf = v85;
          *&buf[8] = v87;
          *&buf[16] = v84;
        }

        v147 = 0;
        v145 = 512;
        AudioUnitSetParameter(*(v3 + 379), 0x2Cu, 0, 0, *(v3 + 1098), 0);
        v88 = 1;
        AudioUnitProcessMultiple(*(v3 + 379), &v145, a2, *(v3 + 129), 6u, buf, 1u, &v147);
        if ((*(v3 + 586) & 0x80000000) == 0)
        {
          goto LABEL_189;
        }

LABEL_176:
        if ((*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
        {
          memcpy(*(*(v3 + 436) + 16 * *(v3 + 1048) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
          memcpy(*(*(v3 + 436) + 16 * *(v3 + 1049) + 16), *(*(v3 + 509) + 16), 4 * (2 * *(v3 + 129)));
          if (*(v3 + 1074) == 0.0 && *(v3 + 1075) == 0.0)
          {
            v89 = 0.0;
          }

          else
          {
            v89 = 1.0;
          }

          AudioUnitSetParameter(*(v3 + 380), 0x20u, 0, 0, v89, 0);
          *buf = *(v3 + 436);
          v147 = *(v3 + 431);
          v145 = 512;
          AudioUnitProcessMultiple(*(v3 + 380), &v145, a2, *(v3 + 129), 1u, buf, 1u, &v147);
          ioDataSize = 8 * *(v3 + 129);
          AudioUnitGetProperty(*(v3 + 380), 0xE7Au, 0, 0, *(*(v3 + 541) + 16), &ioDataSize);
          ioDataSize = 8 * *(v3 + 129);
          AudioUnitGetProperty(*(v3 + 380), 0xE79u, 0, 0, *(*(v3 + 541) + 32), &ioDataSize);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xAu, *(v3 + 129), *(v3 + 431), a2);
          }

          v90 = 1;
LABEL_190:
          v141 = 0;
          VoiceProcessorV2::SignalParamSwitchMix(v3, v90, v88, &v141, v75);
          VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, v68, v73, v90, v141);
          memcpy(*(*(v3 + 434) + 16), *(*(v3 + 508) + 16), *(v3 + 1079));
          v92 = (*(v3 + 4694) & 0x20) != 0 && (*(v3 + 4710) & 0x20) != 0 && *(v3 + 402) != 0;
          *&ioDataSize = 0.0;
          v140 = 0.0;
          AudioUnitGetParameter(*(v3 + 388), 0x1Du, 0, 0, &ioDataSize);
          v93 = *&ioDataSize < 1.0 && v92;
          if (v92)
          {
            *buf = 1065353216;
            if (*&ioDataSize < 1.0)
            {
              vDSP_vfill(buf, *(*(v3 + 505) + 16), 1, *(v3 + 129));
            }

            vDSP_vfill(buf, *(*(v3 + 503) + 16), 1, *(v3 + 129));
          }

          else if ((*(v3 + 4692) & 0x80) == 0 || (*(v3 + 4708) & 0x80) == 0 || !*(v3 + 388))
          {
            v94 = 0;
            goto LABEL_209;
          }

          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 129), *(v3 + 430), a2);
          }

          v94 = 1;
LABEL_209:
          v95 = *(v3 + 586);
          if ((v95 & 0x10000000000) == 0 || (*(v3 + 4709) & 1) == 0 || (v96 = *(v3 + 389)) == 0)
          {
LABEL_230:
            if ((v95 & 0x10000000000000) != 0 && (*(v3 + 4710) & 0x10) != 0)
            {
              v101 = *(v3 + 401);
              if (v101)
              {
                v102 = *(v3 + 503);
                *buf = *(v3 + 430);
                *&buf[8] = v102;
                v147 = *(v3 + 433);
                v148 = v102;
                v145 = 512;
                AudioUnitProcessMultiple(v101, &v145, a2, *(v3 + 129), 2u, buf, 2u, &v147);
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x64u, *(v3 + 129), *(v3 + 430), a2);
                }

                v95 = *(v3 + 586);
              }
            }

            if ((v95 & 0x20000000000000) != 0 && (*(v3 + 4710) & 0x20) != 0 && (v103 = *(v3 + 402)) != 0)
            {
              v104 = *(v3 + 503);
              *buf = *(v3 + 430);
              *&buf[8] = v104;
              v105 = *(v3 + 505);
              v147 = *(v3 + 431);
              v148 = v105;
              v145 = 512;
              AudioUnitProcessMultiple(v103, &v145, a2, *(v3 + 129), 2u, buf, 2u, &v147);
              if ((*(v3 + 4694) & 0x10) != 0 && (*(v3 + 4710) & 0x10) != 0 && *(v3 + 401))
              {
                vDSP_vmin(*(*(v3 + 505) + 16), 1, *(*(v3 + 504) + 16), 1, *(*(v3 + 505) + 16), 1, *(v3 + 129));
              }

              AudioUnitGetParameter(*(v3 + 402), 1u, 0, 0, &outValue);
              if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
              {
                AudioUnitGetParameter(*(v3 + 402), 2u, 0, 0, &v140);
                AudioUnitSetParameter(*(v3 + 414), 0x12u, 0, 0, v140, 0);
              }

              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 431), a2);
              }

              v95 = *(v3 + 586);
              v106 = 1;
            }

            else
            {
              v106 = 0;
            }

            if ((v95 & 0x8000000000) == 0)
            {
              goto LABEL_277;
            }

            if ((*(v3 + 4708) & 0x80) == 0 || (v107 = *(v3 + 388)) == 0)
            {
LABEL_274:
              if ((*(v3 + 4708) & 0x80) != 0 && *(v3 + 388) != 0 && v93)
              {
                v115 = *(*(v3 + 505) + 16);
                vDSP_vmin(*(*(v3 + 503) + 16), 1, v115, 1, v115, 1, *(v3 + 129));
                v116 = *(*(v3 + 430) + 16);
                v117 = *(*(v3 + 431) + 16);
                MEMORY[0x2743CCDD0](v116, 1, v115, 1, v117, 1, *(v3 + 129));
                MEMORY[0x2743CCDD0](v116 + 4 * *(v3 + 129) + 4, 1, v115 + 1, 1, v117 + 4 * *(v3 + 129) + 4, 1, (*(v3 + 129) - 1));
                *(v116 + 4 * *(v3 + 129)) = *(v116 + 4 * *(v3 + 129)) * v115[*(v3 + 129) - 1];
LABEL_281:
                if (((v94 & 1) != 0 || (*(v3 + 4692) & 0x80) != 0 && (*(v3 + 4708) & 0x80) != 0 && *(v3 + 388)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 129), *(v3 + 431), a2);
                }

                if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                {
                  v119 = *(v3 + 409);
                  if (v119)
                  {
                    AudioUnitSetParameter(v119, 0, 0, 0, *(v3 + 3153), 0);
                    AudioUnitSetParameter(*(v3 + 409), 4u, 0, 0, *(v3 + 1054), 0);
                    AudioUnitSetParameter(*(v3 + 409), 0x13u, 0, 0, *(v3 + 1058), 0);
                    AudioUnitSetParameter(*(v3 + 409), 3u, 0, 0, outValue, 0);
                    v120 = *(v3 + 514);
                    *buf = *(v3 + 420);
                    *&buf[8] = v120;
                    v121 = *(v3 + 434);
                    *&buf[16] = *(v3 + 431);
                    v150 = v121;
                    v122 = *(v3 + 505);
                    *&v151 = *(v3 + 503);
                    *(&v151 + 1) = v122;
                    v147 = *(v3 + 137);
                    v145 = 512;
                    AudioUnitProcessMultiple(*(v3 + 409), &v145, a2, *(v3 + 129), 6u, buf, 1u, &v147);
                    v139 = 0.0;
                    AudioUnitGetParameter(*(v3 + 409), 1u, 0, 0, &v139);
                    *(v3 + 3154) = v139;
                    if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
                    {
                      AudioUnitGetParameter(*(v3 + 409), 2u, 0, 0, &outValue);
                      AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, outValue, 0);
                    }
                  }
                }

                goto LABEL_295;
              }

LABEL_277:
              if ((*(v3 + 8868) & 0x80) != 0 && (*(v3 + 8876) & 0x80) != 0 && *(v3 + 478) != 0 && !v92)
              {
                *buf = 1065353216;
                v118 = *(v3 + 129);
                vDSP_vfill(buf, *(*(v3 + 505) + 16), 1, v118);
                memcpy(*(*(v3 + 431) + 16), *(*(v3 + 430) + 16), 8 * v118);
              }

              goto LABEL_281;
            }

            AudioUnitSetParameter(v107, 6u, 0, 0, *(v3 + 1062), 0);
            AudioUnitSetParameter(*(v3 + 388), 7u, 0, 0, *(v3 + 1066), 0);
            AudioUnitSetParameter(*(v3 + 388), 0xDu, 0, 0, *(v3 + 1070), 0);
            v108 = *(v3 + 434);
            *buf = *(v3 + 430);
            *&buf[8] = v108;
            v109 = *(v3 + 505);
            if (v93)
            {
              v110 = *(v3 + 505);
            }

            else
            {
              v110 = 0;
            }

            *&buf[16] = *(v3 + 515);
            v150 = v110;
            if (v93)
            {
              v111 = (v3 + 3464);
              v109 = *(v3 + 503);
            }

            else
            {
              v111 = (v3 + 3448);
            }

            v147 = *v111;
            v148 = v109;
            v145 = 512;
            AudioUnitProcessMultiple(*(v3 + 388), &v145, a2, *(v3 + 129), 4u, buf, 2u, &v147);
            if ((v106 & v93 & 1) == 0)
            {
              AudioUnitGetParameter(*(v3 + 388), 0x20u, 0, 0, &outValue);
            }

            v112 = *(v3 + 129);
            v113 = 3448;
            if (v93)
            {
              v113 = 3464;
            }

            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v112, *(v3 + v113), a2);
              v112 = *(v3 + 129);
              v114 = *(v3 + 503);
              if (*(v3 + 15881))
              {
LABEL_272:
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v112, v114, a2);
LABEL_273:
                if ((*(v3 + 4692) & 0x80) == 0)
                {
                  goto LABEL_277;
                }

                goto LABEL_274;
              }
            }

            else
            {
              v114 = *(v3 + 503);
            }

            if (*(v3 + 15882) != 1)
            {
              goto LABEL_273;
            }

            goto LABEL_272;
          }

          AudioUnitSetParameter(v96, 6u, 0, 0, *(v3 + 1063), 0);
          AudioUnitSetParameter(*(v3 + 389), 7u, 0, 0, *(v3 + 1067), 0);
          AudioUnitSetParameter(*(v3 + 389), 0xDu, 0, 0, *(v3 + 1071), 0);
          memcpy(*(*(v3 + 435) + 16), *(*(v3 + 508) + 32), *(v3 + 1079));
          v97 = *(v3 + 435);
          *buf = *(v3 + 509);
          *&buf[8] = v97;
          *&buf[16] = *(v3 + 515);
          v150 = 0;
          v98 = *(v3 + 504);
          v147 = *(v3 + 433);
          v148 = v98;
          v145 = 512;
          AudioUnitProcessMultiple(*(v3 + 389), &v145, a2, *(v3 + 129), 4u, buf, 2u, &v147);
          v99 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v99, *(v3 + 433), a2);
            v99 = *(v3 + 129);
            v100 = *(v3 + 504);
            if (*(v3 + 15881))
            {
              goto LABEL_228;
            }
          }

          else
          {
            v100 = *(v3 + 504);
          }

          if (*(v3 + 15882) != 1)
          {
LABEL_229:
            v95 = *(v3 + 586);
            goto LABEL_230;
          }

LABEL_228:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v99, v100, a2);
          goto LABEL_229;
        }

LABEL_189:
        v90 = 0;
        goto LABEL_190;
      }

      *buf = &ioData;
      *&buf[8] = &ioOutputBufferLists;
      MEMORY[0x28223BE20](Parameter);
      v69 = *(v3 + 421);
      *(&v138 - 4) = *(v3 + 137);
      *(&v138 - 3) = v69;
      v137 = *(v3 + 426);
      v145 = 512;
      v70 = 0.0;
      if (*(*(v3 + 177) + v50))
      {
        v70 = 1.0;
      }

      AudioUnitSetParameter(*(v3 + 363), 4u, 0, 0, v70, 0);
      AudioUnitSetParameter(*(v3 + 363), 5u, 0, 0, *(v3 + 1100), 0);
      AudioUnitProcessMultiple(*(v3 + 363), &v145, a2, *(v3 + 129), 2u, buf, 3u, &v138 - 4);
      v71 = *(v3 + 129);
      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v71, *(v3 + 421), a2);
        v71 = *(v3 + 129);
        v72 = *(v3 + 137);
        if (*(v3 + 15881))
        {
          goto LABEL_222;
        }
      }

      else
      {
        v72 = *(v3 + 137);
      }

      if (*(v3 + 15882) != 1)
      {
LABEL_223:
        memcpy(ioData.mBuffers[0].mData, *(v72 + 16), 4 * v71);
        AudioUnitGetParameter(*(v3 + 363), 3u, 0, 0, v3 + 1055);
        AudioUnitGetParameter(*(v3 + 363), 8u, 0, 0, v3 + 1059);
        AudioUnitGetParameter(*(v3 + 363), 0x21u, 0, 0, v3 + 1063);
        AudioUnitGetParameter(*(v3 + 363), 0x22u, 0, 0, v3 + 1067);
        AudioUnitGetParameter(*(v3 + 363), 0x25u, 0, 0, v3 + 1071);
        AudioUnitGetParameter(*(v3 + 363), 0x24u, 0, 0, v3 + 1075);
        v73 = 1;
        goto LABEL_154;
      }

LABEL_222:
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v71, v72, a2);
      v72 = *(v3 + 137);
      LODWORD(v71) = *(v3 + 129);
      goto LABEL_223;
    }

    *buf = &ioActionFlags;
    *&buf[8] = &ioOutputBufferLists;
    MEMORY[0x28223BE20](v22);
    v55 = *(v3 + 420);
    *(&v138 - 4) = *(v3 + 137);
    *(&v138 - 3) = v55;
    v137 = *(v3 + 425);
    v145 = 512;
    v56 = 0.0;
    if (*(*(v3 + 177) + v53))
    {
      v56 = 1.0;
    }

    AudioUnitSetParameter(*(v3 + 362), 4u, 0, 0, v56, 0);
    AudioUnitSetParameter(*(v3 + 362), 5u, 0, 0, *(v3 + 1100), 0);
    AudioUnitProcessMultiple(*(v3 + 362), &v145, a2, *(v3 + 129), 2u, buf, 3u, &v138 - 4);
    v57 = *(v3 + 129);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v57, *(v3 + 420), a2);
      v57 = *(v3 + 129);
      v58 = *(v3 + 137);
      if (*(v3 + 15881))
      {
        goto LABEL_218;
      }
    }

    else
    {
      v58 = *(v3 + 137);
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_219:
      memcpy(ioActionFlags.mBuffers[0].mData, *(v58 + 16), 4 * v57);
      AudioUnitGetParameter(*(v3 + 362), 3u, 0, 0, v3 + 1054);
      AudioUnitGetParameter(*(v3 + 362), 8u, 0, 0, v3 + 1058);
      AudioUnitGetParameter(*(v3 + 362), 0x21u, 0, 0, v3 + 1062);
      AudioUnitGetParameter(*(v3 + 362), 0x22u, 0, 0, v3 + 1066);
      AudioUnitGetParameter(*(v3 + 362), 0x25u, 0, 0, v3 + 1070);
      Parameter = AudioUnitGetParameter(*(v3 + 362), 0x24u, 0, 0, v3 + 1074);
      v68 = 1;
      goto LABEL_144;
    }

LABEL_218:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v57, v58, a2);
    v58 = *(v3 + 137);
    LODWORD(v57) = *(v3 + 129);
    goto LABEL_219;
  }

  v10 = 0;
  while (((*(v3 + 118) >> v10) & 1) == 0)
  {
    if (++v10 == 32)
    {
      v10 = 33;
      break;
    }
  }

  v11 = *(v3 + 136);
  if (v10 >= *v11)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v14 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = **(v3 + 136);
        *buf = 136315906;
        *&buf[4] = "vpProcessUplink_v3.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 49;
        *&buf[18] = 1024;
        *&buf[20] = v10;
        LOWORD(v150) = 1024;
        *(&v150 + 2) = v16;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", buf, 0x1Eu);
      }
    }

    v17 = *(v3 + 1588);
    if (v17 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v17, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v3.cpp", 49, "RunUplinkEchoDSP", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v10, **(v3 + 136));
    }

    v12 = *(*(v3 + 137) + 16);
    v13 = *(v3 + 136);
  }

  else
  {
    v12 = *(*(v3 + 137) + 16);
    v13 = &v11[4 * v10];
  }

  memcpy(v12, v13[2], *(v13 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x20) != 0 && (*(v3 + 4710) & 0x20) != 0)
  {
    v18 = *(v3 + 402);
    if (v18)
    {
      v19 = *(v3 + 503);
      *buf = *(v3 + 137);
      *&buf[8] = v19;
      v20 = *(v3 + 505);
      ioOutputBufferLists = *buf;
      *&v154 = v20;
      ioActionFlags.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v18, &ioActionFlags.mNumberBuffers, a2, *(v3 + 129), 2u, buf, 2u, &ioOutputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 137), a2);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
      {
        AudioUnitGetParameter(*(v3 + 402), 1u, 0, 0, &outValue);
        AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, outValue, 0);
      }
    }
  }

LABEL_295:
  *buf = 0;
  v123 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v124 = v123;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 2053) != 0) | v123 & 1))
    {
      goto LABEL_311;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v124 & 1) == 0)
    {
      goto LABEL_311;
    }
  }

  else
  {
    if ((v123 & 1) == 0)
    {
      goto LABEL_311;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v125 = *(v3 + 586);
  if ((v125 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v126 = *(v3 + 410);
    if (v126)
    {
      v127 = 1936748646;
LABEL_309:
      AudioUnitGetParameter(v126, v127, 0, 0, buf);
      goto LABEL_311;
    }
  }

  if ((v125 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v126 = *(v3 + 409);
    if (v126)
    {
      v127 = 2;
      goto LABEL_309;
    }
  }

  *buf = outValue;
LABEL_311:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 137) + 16), 4 * *(v3 + 129));
    *buf = 0;
  }

  else
  {
    *(v3 + 4108) = 0;
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 129), *(v3 + 137), a2);
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v128 = *(v3 + 454);
    if (((v128 != 0) & v124) == 1)
    {
      AudioUnitSetParameter(v128, 0x12u, 0, 0, *buf, 0);
    }
  }

  if ((*(v3 + 586) & 0x8000000000000000) != 0 && (*(v3 + 588) & 0x8000000000000000) != 0)
  {
    v129 = *(v3 + 412);
    if (v129)
    {
      LODWORD(ioOutputBufferLists) = 512;
      AudioUnitProcess(v129, &ioOutputBufferLists, a2, *(v3 + 129), *(v3 + 137));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 129), *(v3 + 137), a2);
      }
    }
  }

  v130 = *(v3 + 587);
  if (v130 & 1) != 0 && (*(v3 + 4712))
  {
    v131 = *(v3 + 413);
    if (v131)
    {
      LODWORD(ioOutputBufferLists) = 512;
      AudioUnitProcess(v131, &ioOutputBufferLists, a2, *(v3 + 129), *(v3 + 137));
      v130 = *(v3 + 587);
    }
  }

  if ((v130 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v132 = *(v3 + 414)) != 0)
  {
    LODWORD(ioOutputBufferLists) = 512;
    AudioUnitProcess(v132, &ioOutputBufferLists, a2, *(v3 + 129), *(v3 + 137));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 129), *(v3 + 137), a2);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 409))
    {
      ioActionFlags.mNumberBuffers = 0;
      AudioUnitGetParameter(*(v3 + 414), 1u, 0, 0, &ioActionFlags.mNumberBuffers);
      AudioUnitSetParameter(*(v3 + 409), 0x11u, 0, 0, *&ioActionFlags.mNumberBuffers, 0);
    }

    ioActionFlags.mNumberBuffers = 0;
    AudioUnitGetParameter(*(v3 + 414), 0x1Bu, 0, 0, &ioActionFlags.mNumberBuffers);
    mNumberBuffers = ioActionFlags.mNumberBuffers;
    if (*(v3 + 577) != *&ioActionFlags.mNumberBuffers)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v134 = *(v3 + 409);
        if (v134)
        {
          AudioUnitSetParameter(v134, 0x12u, 0, 0, *&ioActionFlags.mNumberBuffers, 0);
          mNumberBuffers = ioActionFlags.mNumberBuffers;
        }
      }

      *(v3 + 577) = mNumberBuffers;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(ioOutputBufferLists) = __exp10f(*(v3 + 1099) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &ioOutputBufferLists, *(*(v3 + 137) + 16), 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 129), *(v3 + 137), a2);
    }
  }

  v135 = *MEMORY[0x277D85DE8];
  return 0;
}

char *CADeprecated::CABufferList::CopyDataFrom(char *this, const AudioBufferList *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, AudioStreamPacketDescription *a9)
{
  if (a2->mNumberBuffers)
  {
    v10 = this;
    v11 = 0;
    p_mData = &a2->mBuffers[0].mData;
    for (i = (this + 40); ; i += 2)
    {
      v14 = *(v10 + 16);
      v15 = *(p_mData - 1);
      if (v14 && v15 > v14)
      {
        break;
      }

      v17 = *i;
      v18 = *p_mData;
      p_mData += 2;
      *(i - 1) = v15;
      this = memcpy(v17, v18, v15);
      if (++v11 >= a2->mNumberBuffers)
      {
        return this;
      }
    }

    v19 = CAAssertRtn();
    return VoiceProcessorV3::Process(v19, v20, v21, v22, v23, v24, v25, v26, a9);
  }

  return this;
}

uint64_t VoiceProcessorV4::RunUplinkHardwareDSP(VoiceProcessorV4 *this, AudioBufferList *a2, AudioTimeStamp *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(this + 625, 1u);
  v4 = *(this + 484);
  if (*(this + 624))
  {
    if (*(this + 484))
    {
      VoiceProcessorV2::LogIOError(this, 21.006, *(this + 3148), *(this + 3149), 0.0, "process: tryer acquire failed", a3);
      goto LABEL_5;
    }

LABEL_4:
    VoiceProcessorV2::LogIOError(this, 21.005, *(this + 3148), *(this + 3149), 0.0, "process: not ok to process?!", a3);
LABEL_5:
    CADeprecated::CAMutex::Lock((this + 2592));
    ++*(this + 3148);
    CADeprecated::CAMutex::Unlock((this + 2592));
    v5 = 1937006964;
    if (*(this + 3148) == 1)
    {
      VoiceProcessorV2::LogNonTransientErrors(this, 1);
    }

    goto LABEL_94;
  }

  if (!*(this + 484))
  {
    goto LABEL_4;
  }

  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v8 = mach_absolute_time() * 0.0000000416666667;
      *(this + 1982) = v8;
      if (*(this + 1983) == 0.0)
      {
        *(this + 1983) = v8;
      }
    }
  }

  *(this + 582) = *(this + 580);
  v9 = atomic_load(this + 581);
  *(this + 580) = v9;
  *(this + 585) = *(this + 583);
  v10 = atomic_load(this + 584);
  *(this + 583) = v10;
  if (*(this + 15881) == 1)
  {
    if (v10 != *(this + 585))
    {
      VoiceProcessorV2::PListWriteSetDeviceOrientationParameters(this, v10);
    }

    v11 = *(this + 580);
    if (v11 != *(this + 582) && *(this + 15881) == 1)
    {
      VoiceProcessorV2::PListWriteSetUIOrientationParameters(this, v11);
    }
  }

  CADeprecated::CAMutex::Lock((this + 2592));
  ++*(this + 3148);
  CADeprecated::CAMutex::Unlock((this + 2592));
  if (*(this + 3148) == 1)
  {
    VoiceProcessorV2::LogNonTransientErrors(this, 1);
  }

  if ((*(this + 15881) & 1) == 0)
  {
    v14 = (this + 656);
    v15 = a2;
    goto LABEL_25;
  }

  *(this + 13016) = 1;
  v13 = *(this + 1915);
  if (v13)
  {
    v14 = (this + 656);
    VoiceProcessorV2::InjectionOrAdditionFilesCopyPreInjectionABL(v13, a2, v12);
    v15 = *(this + 1915);
LABEL_25:
    mDataByteSize = v15->mBuffers[0].mDataByteSize;
    v17 = *v14;
    goto LABEL_26;
  }

  mDataByteSize = a2->mBuffers[0].mDataByteSize;
  v17 = *(this + 164);
LABEL_26:
  v18 = mDataByteSize / v17;
  v56 = 0;
  v5 = VoiceProcessorV2::FrontEndBlockSizeCheck(this, 0, mDataByteSize / v17, *(this + 126), a2, &v56);
  if (v5)
  {
    goto LABEL_94;
  }

  if (*(this + 15881) == 1)
  {
    v20 = *(this + 1915);
    v21 = v56;
    if (v20)
    {
      v22 = v56;
      if (!v56)
      {
        v22 = *(this + 126);
      }

      VoiceProcessorV2::InjectionFilesReadSignal(this, 4, v22, v20);
      v23 = v21;
      if (!v21)
      {
        v23 = *(this + 126);
      }

      v24 = *(this + 1915);
      if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 1u, v23, v24, a3);
        v24 = *(this + 1915);
      }

      v25 = v21;
      if (!v21)
      {
        v25 = *(this + 126);
      }

      v26 = *(this + 1992);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        v55 = *(this + 1992);
        v53 = v25;
        v51 = v24;
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3410);
        v26 = v55;
        v24 = v51;
        v25 = v53;
      }

      if (AudioIssueDetectorLibraryLoader(void)::libSym)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v21 = v56;
    v27 = v56;
    if (!v56)
    {
      v27 = *(this + 126);
    }

    if (*(this + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 1u, v27, a2, a3);
    }

    v25 = v21;
    if (!v21)
    {
      v25 = *(this + 126);
    }

    v26 = *(this + 1992);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      v54 = *(this + 1992);
      v52 = v25;
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3410);
      v26 = v54;
      v25 = v52;
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      v24 = a2;
LABEL_53:
      AudioIssueDetectorLibraryLoader(void)::libSym(v26, 1, 0, v24, v25, a3);
      LODWORD(v21) = v56;
    }
  }

  if (v21)
  {
    v28 = *(this + 130);
    if (*v28)
    {
      v29 = 0;
      v30 = 4;
      do
      {
        bzero(*&v28[v30], 4 * v21);
        ++v29;
        v28 = *(this + 130);
        v30 += 4;
      }

      while (v29 < *v28);
    }

    goto LABEL_64;
  }

  v31 = (this + 632);
  if (*(this + 15881) != 1)
  {
    v35 = *(this + 648);
    *buf = *v31;
    *&buf[16] = v35;
    *&buf[32] = *(this + 83);
    v34 = VoiceProcessorV2::FrontEndFormatConverter(this, buf, *(this + 107), a2, v18, *(this + 130), 1);
LABEL_63:
    v5 = v34;
    if (v34)
    {
      goto LABEL_94;
    }

    goto LABEL_64;
  }

  v32 = *(this + 1915);
  if (v32)
  {
    v33 = *(this + 648);
    *buf = *v31;
    *&buf[16] = v33;
    *&buf[32] = *(this + 83);
    v34 = VoiceProcessorV2::FrontEndFormatConverter(this, buf, *(this + 107), v32, v18, *(this + 130), 1);
    goto LABEL_63;
  }

LABEL_64:
  if ((*(this + 1697) & 1) == 0)
  {
    *(this + 1697) = 1;
    mSampleTime = a3->mSampleTime;
    *(this + 216) = *&a3->mSampleTime;
    *(this + 214) = mSampleTime;
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::WriteTSOverload(this, 0.0, mSampleTime, 1);
    }

    *(this + 1768) = 0u;
    *(this + 1784) = 0u;
    *(this + 1736) = 0u;
    *(this + 1752) = 0u;
    *(this + 480) = 0;
  }

  v37 = *(this + 214);
  v38 = a3->mSampleTime;
  if (v37 == a3->mSampleTime)
  {
    *(this + 215) = 0;
  }

  else
  {
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::WriteTSOverload(this, v37, v38, 1);
      v38 = a3->mSampleTime;
      v37 = *(this + 214);
    }

    *(this + 215) = v38 - v37;
    if (v38 < v37)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v39 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v40 = (*v39 ? *v39 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = *(this + 214);
          v42 = a3->mSampleTime;
          mHostTime = a3->mHostTime;
          mRateScalar = a3->mRateScalar;
          mFlags = a3->mFlags;
          *buf = 136316674;
          *&buf[4] = "vpProcessUplink_v4.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 160;
          *&buf[18] = 2048;
          *&buf[20] = v41;
          *&buf[28] = 2048;
          *&buf[30] = v42;
          *&buf[38] = 2048;
          v58 = mHostTime;
          v59 = 2048;
          v60 = mRateScalar;
          v61 = 1024;
          v62 = mFlags;
          _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> mic sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", buf, 0x40u);
        }
      }

      v46 = *(this + 1588);
      if (v46 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v47 = *(this + 214);
        CALegacyLog::log(v46, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v4.cpp", 160, "RunUplinkHardwareDSP", "mic sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", v47, a3->mSampleTime, a3->mHostTime, a3->mRateScalar, a3->mFlags);
      }

      VoiceProcessorV2::LogIOError(this, 21.008, *(this + 3148), 0.0, 0.0, "mic sample time jumped backwards");
      v38 = a3->mSampleTime;
    }
  }

  LODWORD(v37) = *(this + 126);
  *(this + 214) = v38 + *&v37;
  VoiceProcessorV2::LoadMatchingReferenceForMicSignalAndFillTsMic(this, v19, a3->mSampleTime);
  v48 = *(this + 352);
  *(this + 1412) = v48 != 0.0;
  if (v48 != 0.0)
  {
    VoiceProcessorV2::PreSRCMicClipDetection(this);
  }

  v5 = 0;
LABEL_94:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3419()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

uint64_t VoiceProcessorV4::RunUplinkDynamicsDSP(VoiceProcessorV4 *this, AudioBufferList *ioData, AudioTimeStamp *a3, const AudioTimeStamp *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  if ((*(this + 4696) & 0x10) != 0 && (*(this + 4712) & 0x10) != 0)
  {
    v7 = *(this + 417);
    if (v7)
    {
      ioActionFlags.mNumberBuffers = 512;
      AudioUnitProcess(v7, &ioActionFlags.mNumberBuffers, a3, a4, ioData);
      if ((v6[3593] & 1) != 0 || v6[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x30u, a4, ioData, a3);
      }
    }
  }

  if (v6[3593] == 1)
  {
    *outValue = 0;
    v10 = *(this + 586);
    if ((v10 & 0x1000000000000000) != 0 && (*(this + 4711) & 0x10) != 0)
    {
      v11 = *(this + 409);
      if (v11)
      {
        AudioUnitGetParameter(v11, 2u, 0, 0, outValue);
        v10 = *(this + 586);
      }
    }

    if ((v10 & 0x80000000000000) != 0 && (*(this + 4710) & 0x80) != 0 && (v12 = *(this + 404)) != 0)
    {
      v13 = 9;
    }

    else
    {
      if ((v10 & 0x40000000000000) == 0 || (*(this + 4710) & 0x40) == 0 || (v12 = *(this + 403)) == 0)
      {
LABEL_21:
        *&ioActionFlags.mNumberBuffers = 1;
        *&ioActionFlags.mBuffers[0].mNumberChannels = 0x800000001;
        ioActionFlags.mBuffers[0].mData = outValue;
        if ((v6[3593] & 1) != 0 || v6[3594] == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Cu, 2, &ioActionFlags, a3);
        }

        goto LABEL_24;
      }

      v13 = 2;
    }

    AudioUnitGetParameter(v12, v13, 0, 0, &outValue[1]);
    goto LABEL_21;
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t VoiceProcessorV4::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v249 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1)
  {
    this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 129), *(v3 + 135));
    LOBYTE(v5) = *(v3 + 15881);
    if (v5)
    {
      this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 129), *(v3 + 136));
      LOBYTE(v5) = *(v3 + 15881);
      if (v5)
      {
        if (*(v3 + 15880))
        {
LABEL_13:
          bzero(*(*(v3 + 135) + 16), *(*(v3 + 135) + 12));
          LOBYTE(v5) = *(v3 + 15881);
          goto LABEL_14;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  if (*(v3 + 15883) == 1)
  {
    goto LABEL_13;
  }

LABEL_14:
  v6 = (v3 + 516);
  v7 = *(v3 + 129);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v7, *(v3 + 135), a2);
    v7 = *(v3 + 129);
    v8 = *(v3 + 136);
    if (*(v3 + 15881))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = *(v3 + 136);
  }

  if ((*(v3 + 15882) & 1) == 0)
  {
    v9 = *(v3 + 178);
    goto LABEL_23;
  }

LABEL_20:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v7, v8, a2);
  v7 = *(v3 + 129);
  v9 = *(v3 + 178);
  if (*(v3 + 15881))
  {
    goto LABEL_24;
  }

LABEL_23:
  if (*(v3 + 15882) == 1)
  {
LABEL_24:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v7, v9, a2);
  }

  v235 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v23 = *(v3 + 586);
    if (v23 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v234 = 0;
      *(v3 + 2137) = 0;
      *(v3 + 2139) = 0;
      *(v3 + 2138) = 0;
      *(v3 + 4274) = 1;
      *(v3 + 1069) = *(*(v3 + 135) + 8);
      if (v23 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 349);
        if (this)
        {
          v24 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v24;
          v25 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v25;
          v234 = 512;
          this = AudioUnitProcess(this, &v234, &buf, *(v3 + 129), *(v3 + 136));
        }
      }

      v26 = 24 * **(v3 + 136);
      MEMORY[0x28223BE20](this);
      v28 = (&v224 - ((v27 + 15) & 0x3FFFFFFFF0));
      v29 = *(v3 + 136);
      if (*v29)
      {
        v30 = 0;
        v31 = 2;
        v32 = v28;
        do
        {
          *&v32->mNumberBuffers = 0;
          *&v32->mBuffers[0].mNumberChannels = 0;
          v32->mBuffers[0].mData = 0;
          v32->mNumberBuffers = 1;
          v32->mBuffers[0] = *&v29[v31];
          ++v30;
          v31 += 4;
          ++v32;
        }

        while (v30 < *v29);
      }

      v33 = *(v3 + 586);
      if ((v33 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v34 = *(v3 + 350);
        if (v34)
        {
          v35 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v35;
          v36 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v36;
          v234 = 512;
          AudioUnitProcess(v34, &v234, &buf, *v6, v28);
          v42 = *v6;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v42, v28, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 139), v28, v42, v37, v38, v39, v40, v41, v224);
          v33 = *(v3 + 586);
        }
      }

      if ((v33 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v43 = *(v3 + 351);
        if (v43)
        {
          v44 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v44;
          v45 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v45;
          v234 = 512;
          AudioUnitProcess(v43, &v234, &buf, *v6, v28 + 1);
          v51 = *v6;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v51, v28 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 140), v28 + 1, v51, v46, v47, v48, v49, v50, v224);
          v33 = *(v3 + 586);
        }
      }

      if ((v33 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v52 = *(v3 + 352);
        if (v52)
        {
          v53 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v53;
          v54 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v54;
          v234 = 512;
          AudioUnitProcess(v52, &v234, &buf, *v6, v28 + 2);
          v60 = *v6;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v60, v28 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 141), v28 + 2, v60, v55, v56, v57, v58, v59, v224);
          v33 = *(v3 + 586);
        }
      }

      if ((v33 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v61 = *(v3 + 353);
        if (v61)
        {
          v62 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v62;
          v63 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v63;
          v234 = 512;
          AudioUnitProcess(v61, &v234, &buf, *v6, v28 + 3);
          v69 = *v6;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v69, v28 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 142), v28 + 3, v69, v64, v65, v66, v67, v68, v224);
        }
      }

      v70 = *(v3 + 136);
      v71 = *v70;
      v226 = &v224;
      if (v71 < 3)
      {
        *(v3 + 1057) = *(v70 + 8);
        v75 = 0;
        v74 = 0;
        if (*v70 < 2u)
        {
          v73 = 0;
          v72 = 0;
        }

        else
        {
          v72 = 0;
          *(v3 + 16936) = *(v70 + 24);
          v73 = 1;
        }
      }

      else
      {
        if (v71 == 3 || *(v3 + 3134) != 2)
        {
          v75 = 0;
          v74 = 0;
          v72 = 1;
          v73 = 2;
        }

        else
        {
          v72 = 0;
          *(v3 + 1060) = *(v70 + 40);
          *(v3 + 16984) = *(v70 + 56);
          v73 = 1;
          v74 = 3;
          v75 = 2;
        }

        v76 = v70 + 8;
        *(v3 + 1057) = *(v76 + 16 * v72);
        *(v3 + 16936) = *(v76 + 16 * v73);
      }

      v225 = v73;
      v77 = *(v3 + 586);
      if ((v77 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
      {
        v78 = *(v3 + 356);
        if (v78)
        {
          v79 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v79;
          v80 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v80;
          v234 = 512;
          AudioUnitProcess(v78, &v234, &buf, *(v3 + 129), (v3 + 16904));
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 129), (v3 + 16904), &buf);
          }

          v77 = *(v3 + 586);
        }
      }

      if (v77 & 0x100) != 0 && (*(v3 + 4705))
      {
        v81 = *(v3 + 357);
        if (v81)
        {
          v82 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v82;
          v83 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v83;
          v234 = 512;
          AudioUnitProcess(v81, &v234, &buf, *(v3 + 129), (v3 + 16928));
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 129), (v3 + 16928), &buf);
          }

          v77 = *(v3 + 586);
        }
      }

      if ((v77 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
      {
        v84 = *(v3 + 359);
        if (v84)
        {
          v85 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v85;
          v86 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v86;
          v234 = 512;
          AudioUnitProcess(v84, &v234, &buf, *(v3 + 129), (v3 + 16976));
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 129), (v3 + 16976), &buf);
          }

          v77 = *(v3 + 586);
        }
      }

      v233 = 0;
      v87 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v87;
      v88 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v88;
      if ((v77 & 0x2000) != 0 && (*(v3 + 4705) & 0x20) != 0 && *(v3 + 362))
      {
        v89 = *(v3 + 2110);
        if (*(v3 + 2111) == v89)
        {
          goto LABEL_454;
        }

        ECApplicator::apply(*v89, &buf, v72, &v233, v3 + 1054, v3 + 1058, v3 + 1062, v3 + 1066, v3 + 1070, v3 + 1074);
        v90 = *(v3 + 129);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v90, (v3 + 16904), &buf);
          v90 = *(v3 + 129);
          v91 = *(v3 + 420);
          if (*(v3 + 15881))
          {
            goto LABEL_168;
          }
        }

        else
        {
          v91 = *(v3 + 420);
        }

        if (*(v3 + 15882) == 1)
        {
LABEL_168:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v90, v91, &buf);
        }
      }

      else
      {
        v92 = 0;
        while (((*(v3 + 118) >> v92) & 1) == 0)
        {
          if (++v92 == 32)
          {
            v92 = 33;
            break;
          }
        }

        if (v92 >= **(v3 + 136))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v93 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v94 = (*v93 ? *v93 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              v95 = **(v3 + 136);
              LODWORD(v247.mSampleTime) = 136315906;
              *(&v247.mSampleTime + 4) = "vpProcessUplink_v4.cpp";
              WORD2(v247.mHostTime) = 1024;
              *(&v247.mHostTime + 6) = 477;
              WORD1(v247.mRateScalar) = 1024;
              HIDWORD(v247.mRateScalar) = v92;
              LOWORD(v247.mWordClockTime) = 1024;
              *(&v247.mWordClockTime + 2) = v95;
              _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &v247, 0x1Eu);
            }
          }

          v96 = *(v3 + 1588);
          if (v96 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v96, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v4.cpp", 477, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v92, **(v3 + 136));
          }

          v92 = 0;
        }

        v97 = *(v3 + 136) + 16 * v92;
        memcpy(*(*(v3 + 137) + 16), *(v97 + 16), *(v97 + 12));
      }

      v232 = 0;
      if ((*(v3 + 4689) & 0x40) != 0 && (*(v3 + 4705) & 0x40) != 0 && *(v3 + 363))
      {
        v98 = *(v3 + 2110);
        if ((*(v3 + 2111) - v98) <= 8)
        {
          goto LABEL_454;
        }

        ECApplicator::apply(*(v98 + 8), &buf, v225, &v232, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
        v99 = *(v3 + 129);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v99, (v3 + 16928), &buf);
          v99 = *(v3 + 129);
          v100 = *(v3 + 421);
          if (*(v3 + 15881))
          {
            goto LABEL_171;
          }
        }

        else
        {
          v100 = *(v3 + 421);
        }

        if (*(v3 + 15882) == 1)
        {
LABEL_171:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v99, v100, &buf);
        }
      }

      v231 = 0;
      if ((*(v3 + 4689) & 0x80) == 0 || (*(v3 + 4705) & 0x80) == 0 || !*(v3 + 364))
      {
        goto LABEL_183;
      }

      v101 = *(v3 + 2110);
      if ((*(v3 + 2111) - v101) <= 0x10)
      {
        goto LABEL_454;
      }

      ECApplicator::apply(*(v101 + 16), &buf, v75, &v231, v3 + 1056, v3 + 1060, v3 + 1064, v3 + 1068, v3 + 1072, v3 + 1076);
      v102 = *(v3 + 129);
      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v102, (v3 + 16952), &buf);
        v102 = *(v3 + 129);
        v103 = *(v3 + 423);
        if (*(v3 + 15881))
        {
LABEL_182:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v102, v103, &buf);
LABEL_183:
          v230 = 0;
          if ((*(v3 + 4690) & 1) == 0 || (*(v3 + 4706) & 1) == 0 || !*(v3 + 365))
          {
            goto LABEL_194;
          }

          v104 = *(v3 + 2110);
          if ((*(v3 + 2111) - v104) > 0x18)
          {
            ECApplicator::apply(*(v104 + 24), &buf, v74, &v230, v3 + 1057, v3 + 1061, v3 + 1065, v3 + 1069, v3 + 1073, v3 + 1077);
            v105 = *(v3 + 129);
            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v105, (v3 + 16976), &buf);
              v105 = *(v3 + 129);
              v106 = *(v3 + 422);
              if (*(v3 + 15881))
              {
                goto LABEL_193;
              }
            }

            else
            {
              v106 = *(v3 + 422);
            }

            if (*(v3 + 15882) == 1)
            {
LABEL_193:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v105, v106, &buf);
            }

LABEL_194:
            v107 = (*(*(v3 + 514) + 16) + 4 * *(v3 + 129));
            v229.realp = *(*(v3 + 514) + 16);
            v229.imagp = v107;
            VPTimeFreqConverter_Analyze(*(v3 + 522), *(v3 + 2139), &v229);
            if ((*(v3 + 4689) & 0x20) != 0 && (*(v3 + 4705) & 0x20) != 0)
            {
              if (*(v3 + 362))
              {
                v109 = (*(*(v3 + 430) + 16) + 4 * *(v3 + 129));
                v229.realp = *(*(v3 + 430) + 16);
                v229.imagp = v109;
                VPTimeFreqConverter_Analyze(*(v3 + 516), *(v3 + 2115), &v229);
                v110 = (*(*(v3 + 508) + 16) + 4 * *(v3 + 129));
                v229.realp = *(*(v3 + 508) + 16);
                v229.imagp = v110;
                VPTimeFreqConverter_Analyze(*(v3 + 520), *(*(v3 + 420) + 16), &v229);
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 129), *(v3 + 430), &buf);
                }
              }
            }

            if ((*(v3 + 4689) & 0x40) != 0 && (*(v3 + 4705) & 0x40) != 0)
            {
              if (*(v3 + 363))
              {
                v111 = (*(*(v3 + 509) + 16) + 4 * *(v3 + 129));
                v229.realp = *(*(v3 + 509) + 16);
                v229.imagp = v111;
                VPTimeFreqConverter_Analyze(*(v3 + 517), *(v3 + 2118), &v229);
                v112 = (*(*(v3 + 508) + 32) + 4 * *(v3 + 129));
                v229.realp = *(*(v3 + 508) + 32);
                v229.imagp = v112;
                VPTimeFreqConverter_Analyze(*(v3 + 521), *(*(v3 + 421) + 16), &v229);
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 129), *(v3 + 509), &buf);
                }
              }
            }

            if (*(v3 + 4690) & 1) != 0 && (*(v3 + 4706))
            {
              if (*(v3 + 365))
              {
                v113 = (*(*(v3 + 510) + 16) + 4 * *(v3 + 129));
                v229.realp = *(*(v3 + 510) + 16);
                v229.imagp = v113;
                VPTimeFreqConverter_Analyze(*(v3 + 519), *(v3 + 2124), &v229);
                v114 = (*(*(v3 + 508) + 64) + 4 * *(v3 + 129));
                v229.realp = *(*(v3 + 508) + 64);
                v229.imagp = v114;
                VPTimeFreqConverter_Analyze(*(v3 + 2108), *(*(v3 + 422) + 16), &v229);
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 129), *(v3 + 510), &buf);
                }
              }
            }

            v115 = *(v3 + 586);
            if ((v115 & 0x40000000000) == 0 || (*(v3 + 4709) & 4) == 0 || (v116 = *(v3 + 391)) == 0)
            {
LABEL_225:
              v228 = 0;
              if ((v115 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 379))
              {
                v126 = 1;
                v127 = 1;
              }

              else if ((v115 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
              {
                v126 = 0;
                v127 = *(v3 + 382) != 0;
              }

              else
              {
                v126 = 0;
                v127 = 0;
              }

              v128 = v115 & 0x80000000;
              if ((v115 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
              {
                v129 = 1;
                v126 = 1;
                v130 = 1;
                if ((v115 & 0x100000000) == 0)
                {
                  goto LABEL_250;
                }
              }

              else
              {
                if ((v115 & 0x100000000) == 0)
                {
                  v129 = 0;
                  v130 = 1;
                  goto LABEL_250;
                }

                v130 = 1;
                if (*(v3 + 4708))
                {
                  v131 = *(v3 + 381);
                  v129 = v131 != 0;
                  if (v131)
                  {
                    v130 = 2;
                  }

                  else
                  {
                    v130 = 1;
                  }
                }

                else
                {
                  v129 = 0;
                }
              }

              v132 = *(v3 + 588);
              if ((v132 & 0x100000000) != 0 && *(v3 + 381) && (v115 & v132 & 0x200000000) != 0 && *(v3 + 382))
              {
                v130 = 2;
                v126 = 2;
              }

LABEL_250:
              if ((v115 & 0x40000000) == 0)
              {
                goto LABEL_269;
              }

              if ((*(v3 + 4707) & 0x40) == 0)
              {
                goto LABEL_269;
              }

              v133 = *(v3 + 379);
              if (!v133)
              {
                goto LABEL_269;
              }

              AudioUnitSetProperty(v133, 0x457u, 0, 0, v3 + 2332, 4u);
              if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
              {
                v134 = *(v3 + 379);
                if (*(v3 + 380))
                {
                  v135 = *(v3 + 688);
LABEL_257:
                  AudioUnitSetParameter(v134, 0x1Bu, 0, 0, v135, 0);
                  v136 = *(v3 + 586);
                  if ((v136 & 0x2000) != 0)
                  {
                    v137 = *(v3 + 588);
                    if ((v137 & 0x2000) != 0 && *(v3 + 362) && (v136 & v137 & 0x4000) != 0 && *(v3 + 363))
                    {
                      AudioUnitSetParameter(*(v3 + 379), 0x3Fu, 0, 0, *(v3 + 1062) * *(v3 + 1063), 0);
                    }
                  }

                  *&v138 = *(v3 + 139) + 24;
                  *&v139 = *(v3 + 140) + 24;
                  v140 = **(v3 + 136);
                  if (v140 < 3)
                  {
                    v141 = 0.0;
                  }

                  else
                  {
                    *&v141 = *(v3 + 141) + 24;
                  }

                  *&v236.mSampleTime = *(v3 + 139) + 24;
                  *&v236.mHostTime = v139;
                  v142 = *(v3 + 135);
                  v236.mRateScalar = v141;
                  v236.mWordClockTime = v142;
                  *&v236.mSMPTETime.mSubframes = *(v3 + 210);
                  if (v140 >= 3)
                  {
                    v236.mSampleTime = v139;
                    *&v236.mHostTime = v141;
                    v236.mRateScalar = v138;
                  }

                  v239 = 0;
                  v234 = 512;
                  AudioUnitSetParameter(*(v3 + 379), 0x2Cu, 0, 0, *(v3 + 1098), 0);
                  v143 = *&a2->mRateScalar;
                  *&v247.mSampleTime = *&a2->mSampleTime;
                  *&v247.mRateScalar = v143;
                  v144 = *&a2->mSMPTETime.mHours;
                  *&v247.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                  *&v247.mSMPTETime.mHours = v144;
                  AudioUnitProcessMultiple(*(v3 + 379), &v234, &v247, *(v3 + 129), 6u, &v236, 1u, &v239);
                  v115 = *(v3 + 586);
                  v128 = v115 & 0x80000000;
LABEL_269:
                  if (v128 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                  {
                    memcpy(*(*(v3 + 436) + 16 * *(v3 + 1048) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                    memcpy(*(*(v3 + 436) + 16 * *(v3 + 1049) + 16), *(*(v3 + 509) + 16), 4 * (2 * *(v3 + 129)));
                    if (*(v3 + 1074) == 0.0 && *(v3 + 1075) == 0.0)
                    {
                      v145 = 0.0;
                    }

                    else
                    {
                      v145 = 1.0;
                    }

                    AudioUnitSetParameter(*(v3 + 380), 0x20u, 0, 0, v145, 0);
                    v236.mSampleTime = *(v3 + 436);
                    v239 = *(v3 + 431);
                    v146 = *&a2->mRateScalar;
                    *&v247.mSampleTime = *&a2->mSampleTime;
                    *&v247.mRateScalar = v146;
                    v147 = *&a2->mSMPTETime.mHours;
                    *&v247.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&v247.mSMPTETime.mHours = v147;
                    v234 = 512;
                    AudioUnitProcessMultiple(*(v3 + 380), &v234, &v247, *(v3 + 129), 1u, &v236, 1u, &v239);
                    LODWORD(v244) = 8 * *(v3 + 129);
                    AudioUnitGetProperty(*(v3 + 380), 0xE7Au, 0, 0, *(*(v3 + 541) + 16), &v244);
                    LODWORD(v244) = 8 * *(v3 + 129);
                    AudioUnitGetProperty(*(v3 + 380), 0xE79u, 0, 0, *(*(v3 + 541) + 32), &v244);
                    v148 = *(v3 + 129);
                    v149 = *(v3 + 431);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      v150 = &v247;
                      v151 = v3;
                      v152 = 10;
LABEL_278:
                      VoiceProcessorV2::SaveFilesWriteSignal(v151, v152, v148, v149, v150);
                    }

LABEL_306:
                    if (v126 == 2)
                    {
                      VoiceProcessorV4::SignalParamSwitchMixNF(v3, v129, v127, &v228);
                    }

                    else if (v126 == 1)
                    {
                      VoiceProcessorV2::SignalParamSwitchMix(v3, v129, v127, &v228, v108);
                    }

                    if (v130 == 1)
                    {
                      VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, v233, v232, v129, v228);
                    }

                    else
                    {
                      VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, v233, v230, v129, v228);
                    }

                    memcpy(*(*(v3 + 434) + 16), *(*(v3 + 508) + 16), *(v3 + 1079));
                    v166 = *(v3 + 586);
                    if ((v166 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 403))
                    {
                      v167 = 1;
                    }

                    else
                    {
                      v167 = (v166 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 404) != 0;
                    }

                    LODWORD(v244) = 0;
                    LODWORD(v237) = 0;
                    AudioUnitGetParameter(*(v3 + 390), 0x1Du, 0, 0, &v244);
                    v168 = *&v244 < 1.0 && v167;
                    if (v167)
                    {
                      LODWORD(v247.mSampleTime) = 1065353216;
                      if (*&v244 < 1.0)
                      {
                        vDSP_vfill(&v247, *(*(v3 + 505) + 16), 1, *(v3 + 129));
                      }

                      vDSP_vfill(&v247, *(*(v3 + 503) + 16), 1, *(v3 + 129));
                    }

                    else if ((*(v3 + 4693) & 2) == 0 || (*(v3 + 4709) & 2) == 0 || !*(v3 + 390))
                    {
                      v169 = 0;
                      goto LABEL_336;
                    }

                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 129), *(v3 + 430), &buf);
                    }

                    v169 = 1;
LABEL_336:
                    v170 = *(v3 + 504);
                    v171 = *(v3 + 586);
                    if ((v171 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v172 = *(v3 + 403)) != 0)
                    {
                      v173 = *(v3 + 503);
                      v236.mSampleTime = *(v3 + 430);
                      v236.mHostTime = v173;
                      *&v236.mRateScalar = v3 + 16904;
                      v174 = *(v3 + 505);
                      v239 = *(v3 + 431);
                      v240 = v174;
                      v241 = v170;
                      v234 = 512;
                      v175 = *&a2->mRateScalar;
                      *&v247.mSampleTime = *&a2->mSampleTime;
                      *&v247.mRateScalar = v175;
                      v176 = *&a2->mSMPTETime.mHours;
                      *&v247.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&v247.mSMPTETime.mHours = v176;
                      AudioUnitProcessMultiple(v172, &v234, &v247, *(v3 + 129), 3u, &v236, 3u, &v239);
                      AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v235);
                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                      {
                        goto LABEL_351;
                      }

                      v177 = *(v3 + 403);
                      v178 = 2;
                    }

                    else
                    {
                      if ((v171 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v179 = *(v3 + 404)) == 0)
                      {
                        v184 = 0;
                        goto LABEL_356;
                      }

                      AudioUnitSetParameter(v179, 0x14u, 0, 0, *(v3 + 4189), 0);
                      v180 = *(v3 + 433);
                      v236.mSampleTime = *(v3 + 430);
                      v236.mHostTime = v180;
                      v236.mRateScalar = *(v3 + 503);
                      v236.mWordClockTime = v3 + 16904;
                      v181 = *(v3 + 438);
                      v239 = *(v3 + 431);
                      v240 = v181;
                      v241 = *(v3 + 505);
                      v242 = v170;
                      v182 = *&a2->mRateScalar;
                      *&v247.mSampleTime = *&a2->mSampleTime;
                      *&v247.mRateScalar = v182;
                      v183 = *&a2->mSMPTETime.mHours;
                      *&v247.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&v247.mSMPTETime.mHours = v183;
                      v234 = 512;
                      AudioUnitProcessMultiple(*(v3 + 404), &v234, &v247, *(v3 + 129), 4u, &v236, 4u, &v239);
                      AudioUnitGetParameter(*(v3 + 404), 2u, 0, 0, &v235);
                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                      {
LABEL_351:
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 431), &v247);
                        }

                        v184 = 1;
LABEL_356:
                        if ((*(v3 + 4693) & 2) == 0)
                        {
                          goto LABEL_377;
                        }

                        if ((*(v3 + 4709) & 2) == 0 || (v185 = *(v3 + 390)) == 0)
                        {
LABEL_374:
                          if ((*(v3 + 4709) & 2) != 0 && *(v3 + 390) != 0 && v168)
                          {
                            v194 = *(*(v3 + 505) + 16);
                            vDSP_vmin(*(*(v3 + 503) + 16), 1, v194, 1, v194, 1, *(v3 + 129));
                            v195 = *(*(v3 + 430) + 16);
                            v196 = *(*(v3 + 431) + 16);
                            MEMORY[0x2743CCDD0](v195, 1, v194, 1, v196, 1, *(v3 + 129));
                            MEMORY[0x2743CCDD0](v195 + 4 * *(v3 + 129) + 4, 1, v194 + 1, 1, v196 + 4 * *(v3 + 129) + 4, 1, (*(v3 + 129) - 1));
                            *(v195 + 4 * *(v3 + 129)) = *(v195 + 4 * *(v3 + 129)) * v194[*(v3 + 129) - 1];
LABEL_381:
                            if (((v169 & 1) != 0 || (*(v3 + 4693) & 2) != 0 && (*(v3 + 4709) & 2) != 0 && *(v3 + 390)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 129), *(v3 + 431), &buf);
                            }

                            if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                            {
                              v198 = *(v3 + 409);
                              if (v198)
                              {
                                AudioUnitSetParameter(v198, 0, 0, 0, *(v3 + 3153), 0);
                                AudioUnitSetParameter(*(v3 + 409), 4u, 0, 0, *(v3 + 1054), 0);
                                AudioUnitSetParameter(*(v3 + 409), 0x13u, 0, 0, *(v3 + 1058), 0);
                                AudioUnitSetParameter(*(v3 + 409), 3u, 0, 0, v235, 0);
                                AudioUnitSetParameter(*(v3 + 409), 0xEu, 0, 0, *(v3 + 580), 0);
                                v199 = *(v3 + 514);
                                v236.mSampleTime = *(v3 + 420);
                                v236.mHostTime = v199;
                                v200 = *(v3 + 434);
                                v236.mRateScalar = *(v3 + 431);
                                v236.mWordClockTime = v200;
                                v201 = *(v3 + 505);
                                *&v236.mSMPTETime.mSubframes = *(v3 + 503);
                                *&v236.mSMPTETime.mType = v201;
                                v239 = *(v3 + 137);
                                v234 = 512;
                                v202 = *&a2->mRateScalar;
                                *&v247.mSampleTime = *&a2->mSampleTime;
                                *&v247.mRateScalar = v202;
                                v203 = *&a2->mSMPTETime.mHours;
                                *&v247.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                *&v247.mSMPTETime.mHours = v203;
                                AudioUnitProcessMultiple(*(v3 + 409), &v234, &v247, *(v3 + 129), 6u, &v236, 1u, &v239);
                                LODWORD(v246) = 0;
                                AudioUnitGetParameter(*(v3 + 409), 1u, 0, 0, &v246);
                                *(v3 + 3154) = v246;
                                if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
                                {
                                  AudioUnitGetParameter(*(v3 + 409), 2u, 0, 0, &v235);
                                  AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v235, 0);
                                }
                              }
                            }

                            goto LABEL_395;
                          }

LABEL_377:
                          if ((*(v3 + 8869) & 2) != 0 && (*(v3 + 8877) & 2) != 0 && *(v3 + 480) != 0 && !v167)
                          {
                            LODWORD(v247.mSampleTime) = 1065353216;
                            v197 = *(v3 + 129);
                            vDSP_vfill(&v247, *(*(v3 + 505) + 16), 1, v197);
                            memcpy(*(*(v3 + 431) + 16), *(*(v3 + 430) + 16), 8 * v197);
                          }

                          goto LABEL_381;
                        }

                        AudioUnitSetParameter(v185, 6u, 0, 0, *(v3 + 1062), 0);
                        AudioUnitSetParameter(*(v3 + 390), 7u, 0, 0, *(v3 + 1066), 0);
                        AudioUnitSetParameter(*(v3 + 390), 0xDu, 0, 0, *(v3 + 1070), 0);
                        v186 = *(v3 + 434);
                        v236.mSampleTime = *(v3 + 430);
                        v236.mHostTime = v186;
                        v187 = *(v3 + 505);
                        v236.mRateScalar = *(v3 + 515);
                        v236.mWordClockTime = v187;
                        *&v236.mSMPTETime.mSubframes = v170;
                        if (v168)
                        {
                          v188 = (v3 + 3464);
                          v187 = *(v3 + 503);
                        }

                        else
                        {
                          v236.mWordClockTime = 0;
                          v188 = (v3 + 3448);
                        }

                        v239 = *v188;
                        v240 = v187;
                        v189 = *&a2->mRateScalar;
                        *&v247.mSampleTime = *&a2->mSampleTime;
                        *&v247.mRateScalar = v189;
                        v190 = *&a2->mSMPTETime.mHours;
                        *&v247.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&v247.mSMPTETime.mHours = v190;
                        v234 = 512;
                        AudioUnitProcessMultiple(*(v3 + 390), &v234, &v247, *(v3 + 129), 5u, &v236, 2u, &v239);
                        if ((v184 & v168 & 1) == 0)
                        {
                          AudioUnitGetParameter(*(v3 + 390), 0x20u, 0, 0, &v235);
                        }

                        v191 = *(v3 + 129);
                        v192 = 3448;
                        if (v168)
                        {
                          v192 = 3464;
                        }

                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v191, *(v3 + v192), &v247);
                          v191 = *(v3 + 129);
                          v193 = *(v3 + 503);
                          if (*(v3 + 15881))
                          {
LABEL_372:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v191, v193, &v247);
LABEL_373:
                            if ((*(v3 + 4693) & 2) == 0)
                            {
                              goto LABEL_377;
                            }

                            goto LABEL_374;
                          }
                        }

                        else
                        {
                          v193 = *(v3 + 503);
                        }

                        if (*(v3 + 15882) != 1)
                        {
                          goto LABEL_373;
                        }

                        goto LABEL_372;
                      }

                      v177 = *(v3 + 404);
                      v178 = 9;
                    }

                    AudioUnitGetParameter(v177, v178, 0, 0, &v237);
                    AudioUnitSetParameter(*(v3 + 414), 0x12u, 0, 0, *&v237, 0);
                    goto LABEL_351;
                  }

                  if ((v115 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 381))
                  {
                    goto LABEL_306;
                  }

                  memcpy(*(*(v3 + 436) + 16), *(*(v3 + 430) + 16), 8 * *(v3 + 129));
                  memcpy(*(*(v3 + 436) + 32), *(*(v3 + 510) + 16), 8 * *(v3 + 129));
                  v153 = *(v3 + 436);
                  v154 = *(v3 + 435);
                  v244 = *(v3 + 431);
                  v245 = v154;
                  v246 = v153;
                  v155 = *&a2->mRateScalar;
                  *&v247.mSampleTime = *&a2->mSampleTime;
                  *&v247.mRateScalar = v155;
                  v156 = *&a2->mSMPTETime.mHours;
                  *&v247.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                  *&v247.mSMPTETime.mHours = v156;
                  AudioUnitProcessMultiple(*(v3 + 381), &v234, &v247, *(v3 + 129), 1u, &v246, 2u, &v244);
                  v157 = *(v3 + 129);
                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v157, v244, &v247);
                    v157 = *(v3 + 129);
                    v158 = v245;
                    if (*(v3 + 15881))
                    {
                      goto LABEL_290;
                    }
                  }

                  else
                  {
                    v158 = v245;
                  }

                  if (*(v3 + 15882) != 1)
                  {
LABEL_291:
                    if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 382))
                    {
                      goto LABEL_306;
                    }

                    memcpy(*(*(v3 + 437) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                    memcpy(*(*(v3 + 432) + 16), *(*(v3 + 433) + 16), 4 * (2 * *(v3 + 129)));
                    v227 = 10.0;
                    v159 = *(v3 + 435);
                    v239 = *(v3 + 431);
                    v240 = v159;
                    v160 = *(v3 + 510);
                    v241 = *(v3 + 437);
                    v242 = v160;
                    v243 = *(v3 + 432);
                    v161 = *(v3 + 433);
                    v162 = 10.0;
                    v237 = *(v3 + 430);
                    v238 = v161;
                    if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                    {
                      v163 = *(v3 + 404);
                      if (v163)
                      {
                        AudioUnitGetParameter(v163, 9u, 0, 0, &v227);
                        v162 = v227;
                      }
                    }

                    AudioUnitSetParameter(*(v3 + 382), 0xAu, 0, 0, v162, 0);
                    AudioUnitSetParameter(*(v3 + 382), 0x17u, 0, 0, *(v3 + 4189), 0);
                    v164 = *&a2->mRateScalar;
                    *&v236.mSampleTime = *&a2->mSampleTime;
                    *&v236.mRateScalar = v164;
                    v165 = *&a2->mSMPTETime.mHours;
                    *&v236.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&v236.mSMPTETime.mHours = v165;
                    AudioUnitProcessMultiple(*(v3 + 382), &v234, &v236, *(v3 + 129), 5u, &v239, 2u, &v237);
                    v148 = *(v3 + 129);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v148, v237, &v236);
                      v148 = *(v3 + 129);
                      v149 = v238;
                      if (*(v3 + 15881))
                      {
                        goto LABEL_305;
                      }
                    }

                    else
                    {
                      v149 = v238;
                    }

                    if (*(v3 + 15882) != 1)
                    {
                      goto LABEL_306;
                    }

LABEL_305:
                    v150 = &v236;
                    v151 = v3;
                    v152 = 27;
                    goto LABEL_278;
                  }

LABEL_290:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v157, v158, &v247);
                  goto LABEL_291;
                }
              }

              else
              {
                v134 = *(v3 + 379);
              }

              v135 = 2.0;
              goto LABEL_257;
            }

            v117 = *(v3 + 1063);
            if (v117 == 0.0)
            {
              v118 = *(*(v3 + 437) + 16) + 4 * *(v3 + 129);
              v247.mSampleTime = *(*(v3 + 437) + 16);
              v247.mHostTime = v118;
              VPTimeFreqConverter_Analyze(*(v3 + 2109), *(*(v3 + 426) + 16), &v247);
              v117 = *(v3 + 1063);
              v116 = *(v3 + 391);
            }

            AudioUnitSetParameter(v116, 6u, 0, 0, v117, 0);
            AudioUnitSetParameter(*(v3 + 391), 7u, 0, 0, *(v3 + 1067), 0);
            AudioUnitSetParameter(*(v3 + 391), 0xDu, 0, 0, *(v3 + 1071), 0);
            memcpy(*(*(v3 + 435) + 16), *(*(v3 + 508) + 32), *(v3 + 1079));
            v119 = *(v3 + 435);
            v236.mSampleTime = *(v3 + 509);
            v236.mHostTime = v119;
            v120 = *(v3 + 515);
            v236.mWordClockTime = 0;
            *&v236.mSMPTETime.mSubframes = 0;
            v236.mRateScalar = v120;
            v121 = *(v3 + 504);
            v239 = *(v3 + 433);
            v240 = v121;
            v122 = *&a2->mRateScalar;
            *&v247.mSampleTime = *&a2->mSampleTime;
            *&v247.mRateScalar = v122;
            v123 = *&a2->mSMPTETime.mHours;
            *&v247.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&v247.mSMPTETime.mHours = v123;
            v234 = 512;
            AudioUnitProcessMultiple(*(v3 + 391), &v234, &v247, *(v3 + 129), 5u, &v236, 2u, &v239);
            v124 = *(v3 + 129);
            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v124, *(v3 + 433), &v247);
              v124 = *(v3 + 129);
              v125 = *(v3 + 504);
              if (*(v3 + 15881))
              {
                goto LABEL_223;
              }
            }

            else
            {
              v125 = *(v3 + 504);
            }

            if (*(v3 + 15882) != 1)
            {
LABEL_224:
              v115 = *(v3 + 586);
              goto LABEL_225;
            }

LABEL_223:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v124, v125, &v247);
            goto LABEL_224;
          }

LABEL_454:
          std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        v103 = *(v3 + 423);
      }

      if (*(v3 + 15882) != 1)
      {
        goto LABEL_183;
      }

      goto LABEL_182;
    }
  }

  v10 = 0;
  while (((*(v3 + 118) >> v10) & 1) == 0)
  {
    if (++v10 == 32)
    {
      v10 = 33;
      break;
    }
  }

  v11 = *(v3 + 136);
  if (v10 >= *v11)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v14 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = **(v3 + 136);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v4.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 281;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v10;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v16;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v17 = *(v3 + 1588);
    if (v17 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v17, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v4.cpp", 281, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v10, **(v3 + 136));
    }

    v12 = *(*(v3 + 137) + 16);
    v13 = *(v3 + 136);
  }

  else
  {
    v12 = *(*(v3 + 137) + 16);
    v13 = &v11[4 * v10];
  }

  memcpy(v12, v13[2], *(v13 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v18 = *(v3 + 403);
    if (v18)
    {
      v19 = *(v3 + 503);
      v247.mSampleTime = *(v3 + 137);
      v247.mHostTime = v19;
      v20 = *(v3 + 505);
      v236.mSampleTime = v247.mSampleTime;
      v236.mHostTime = v20;
      v21 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v21;
      v22 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v22;
      LODWORD(v239) = 512;
      AudioUnitProcessMultiple(v18, &v239, &buf, *(v3 + 129), 2u, &v247, 2u, &v236);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 137), a2);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
      {
        AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v235);
        AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v235, 0);
      }
    }
  }

LABEL_395:
  LODWORD(v247.mSampleTime) = 0;
  v204 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v205 = v204;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 2053) != 0) | v204 & 1))
    {
      goto LABEL_411;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v205 & 1) == 0)
    {
      goto LABEL_411;
    }
  }

  else
  {
    if ((v204 & 1) == 0)
    {
      goto LABEL_411;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v206 = *(v3 + 586);
  if ((v206 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v207 = *(v3 + 410);
    if (v207)
    {
      v208 = 1936748646;
LABEL_409:
      AudioUnitGetParameter(v207, v208, 0, 0, &v247);
      goto LABEL_411;
    }
  }

  if ((v206 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v207 = *(v3 + 409);
    if (v207)
    {
      v208 = 2;
      goto LABEL_409;
    }
  }

  *&v247.mSampleTime = v235;
LABEL_411:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 137) + 16), 4 * *(v3 + 129));
    LODWORD(v247.mSampleTime) = 0;
  }

  else
  {
    *(v3 + 4108) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v209 = *(v3 + 454);
    if (((v209 != 0) & v205) == 1)
    {
      AudioUnitSetParameter(v209, 0x12u, 0, 0, *&v247.mSampleTime, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 129), *(v3 + 137), a2);
  }

  if ((*(v3 + 586) & 0x8000000000000000) != 0 && (*(v3 + 588) & 0x8000000000000000) != 0)
  {
    v210 = *(v3 + 412);
    if (v210)
    {
      v211 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v211;
      v212 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v212;
      LODWORD(v236.mSampleTime) = 512;
      AudioUnitProcess(v210, &v236, &buf, *(v3 + 129), *(v3 + 137));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  v213 = *(v3 + 587);
  if (v213 & 1) != 0 && (*(v3 + 4712))
  {
    v214 = *(v3 + 413);
    if (v214)
    {
      v215 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v215;
      v216 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v216;
      LODWORD(v236.mSampleTime) = 512;
      AudioUnitProcess(v214, &v236, &buf, *(v3 + 129), *(v3 + 137));
      v213 = *(v3 + 587);
    }
  }

  if ((v213 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v217 = *(v3 + 414)) != 0)
  {
    v218 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v218;
    v219 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v219;
    LODWORD(v236.mSampleTime) = 512;
    AudioUnitProcess(v217, &v236, &buf, *(v3 + 129), *(v3 + 137));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 129), *(v3 + 137), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 409))
    {
      LODWORD(v239) = 0;
      AudioUnitGetParameter(*(v3 + 414), 1u, 0, 0, &v239);
      AudioUnitSetParameter(*(v3 + 409), 0x11u, 0, 0, *&v239, 0);
    }

    LODWORD(v239) = 0;
    AudioUnitGetParameter(*(v3 + 414), 0x1Bu, 0, 0, &v239);
    v220 = v239;
    if (*(v3 + 577) != *&v239)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v221 = *(v3 + 409);
        if (v221)
        {
          AudioUnitSetParameter(v221, 0x12u, 0, 0, *&v239, 0);
          v220 = v239;
        }
      }

      *(v3 + 577) = v220;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 1099) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &buf, *(*(v3 + 137) + 16), 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 129), *(v3 + 137), a2);
    }
  }

  v222 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t VoiceProcessorV4::SignalParamSwitchMixNF(uint64_t this, int a2, int a3, BOOL *a4)
{
  if (a2 && a3)
  {
    v5 = this;
    outValue = 0.0;
    this = AudioUnitGetParameter(*(this + 3056), 2u, 0, 0, &outValue);
    v6 = outValue;
    v7 = *(v5 + 516);
    v8 = *(*(v5 + 3496) + 16);
    v36 = 0.5;
    if (outValue > 2)
    {
      if (v6 == 3)
      {
        ioDataSize = 8 * v7;
        AudioUnitGetProperty(*(v5 + 3048), 0xE79u, 0, 0, *(*(v5 + 4328) + 16), &ioDataSize);
        ioDataSize = 8 * v7;
        v14 = *(*(v5 + 4328) + 32);
        v15 = *(v5 + 3048);
        v16 = 3706;
      }

      else
      {
        if (v6 != 4)
        {
          return this;
        }

        ioDataSize = 8 * v7;
        AudioUnitGetProperty(*(v5 + 3048), 0xE7Bu, 0, 0, *(*(v5 + 4328) + 16), &ioDataSize);
        ioDataSize = 8 * v7;
        v14 = *(*(v5 + 4328) + 32);
        v15 = *(v5 + 3048);
        v16 = 3708;
      }

      AudioUnitGetProperty(v15, v16, 0, 0, v14, &ioDataSize);
      v17 = v8 + 4 * v7;
      v18 = *(v5 + 4328);
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v5 + 4232);
      v22 = *(v5 + 4244);
      v23 = *(v5 + 4320);
      v24 = v23 + v7;
      v25 = (*(v19 + 4 * v23) * *(v19 + 4 * v23)) + (*(v19 + 4 * v24) * *(v19 + 4 * v24));
      v26 = (*(v20 + 4 * v23) * *(v20 + 4 * v23)) + (*(v20 + 4 * v24) * *(v20 + 4 * v24));
      if ((v25 + v26) <= 0.0)
      {
        v28 = 0.0;
        v29 = 1.0;
      }

      else
      {
        v27 = 1.0 / (v25 + v26);
        v28 = v26 * v27;
        v29 = v25 * v27;
      }

      *(v5 + 4216) = (*(v5 + 4228) * v28) + (v29 * *(v5 + 4216));
      *(v5 + 4232) = (v22 * v28) + (v29 * v21);
      *(v5 + 4248) = *(v5 + 4248) * *(v5 + 4252);
      *(v5 + 4264) = (v28 * *(v5 + 4268)) + (v29 * *(v5 + 4264));
      *(v5 + 4280) = (v28 * *(v5 + 4284)) + (v29 * *(v5 + 4280));
      v30 = *(v5 + 516);
      memcpy(*(*(v5 + 3488) + 16), *(*(v5 + 4064) + 16), 4 * (2 * v30));
      memcpy(*(*(v5 + 3488) + 32), *(*(v5 + 4064) + 64), 4 * (2 * *(v5 + 516)));
      v31 = *(v5 + 3488);
      v32 = *(v31 + 16);
      v33 = *(v31 + 32);
      v34 = *(*(v5 + 4064) + 16);
      MEMORY[0x2743CCDD0](v32, 1, v19, 1, v34, 1, (2 * v30));
      MEMORY[0x2743CCDD0](v33, 1, v20, 1, v8, 1, (2 * v30));
      MEMORY[0x2743CCD80](v8, 1, v34, 1, v34, 1, (2 * v30));
      MEMORY[0x2743CCE30](v34 + 4 * v30, 1, v34, 1, v34, 1, v30);
      MEMORY[0x2743CCDD0](v32, 1, v19 + 4 * v30, 1, v8, 1, v30);
      MEMORY[0x2743CCDD0](v32 + 4 * v30, 1, v19, 1, v17, 1, v30);
      MEMORY[0x2743CCD80](v8, 1, v17, 1, v34 + 4 * v30, 1, v30);
      MEMORY[0x2743CCDD0](v33, 1, v20 + 4 * v30, 1, v8, 1, v30);
      MEMORY[0x2743CCDD0](v33 + 4 * v30, 1, v20, 1, v17, 1, v30);
      MEMORY[0x2743CCD80](v8, 1, v17, 1, v8, 1, v30);
      return MEMORY[0x2743CCD80](v8, 1, v34 + 4 * v30, 1, v34 + 4 * v30, 1, v30);
    }

    else if (v6 == 1)
    {
      this = memcpy(*(*(v5 + 4064) + 16), *(*(v5 + 4064) + 64), *(v5 + 4316));
      *(v5 + 4216) = *(v5 + 4228);
      *(v5 + 4232) = *(v5 + 4244);
      *(v5 + 4248) = *(v5 + 4260);
      *(v5 + 4264) = *(v5 + 4276);
      *(v5 + 4280) = *(v5 + 4292);
      *a4 = 1;
    }

    else if (v6 == 2)
    {
      v9 = (*(*v5 + 112))(v5);
      v10 = *(v5 + 4064);
      v11 = *(v10 + 16);
      if (v9 >= 8)
      {
        v11 = *(v10 + 64);
      }

      MEMORY[0x2743CCD80](*(v10 + 16), 1, v11, 1, v8, 1, (2 * v7));
      this = MEMORY[0x2743CCE20](v8, 1, &v36, *(*(v5 + 4064) + 16), 1, (2 * v7));
      v12 = v36;
      *(v5 + 4216) = v36 * (*(v5 + 4228) + *(v5 + 4216));
      *(v5 + 4232) = v12 * (*(v5 + 4244) + *(v5 + 4232));
      v13 = 0.0;
      if (*(v5 + 4260) != 0.0)
      {
        v13 = 1.0;
      }

      *(v5 + 4248) = v13;
      *(v5 + 4264) = v12 * (*(v5 + 4276) + *(v5 + 4264));
      *(v5 + 4280) = v12 * (*(v5 + 4292) + *(v5 + 4292));
    }
  }

  return this;
}

float VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(VoiceProcessorV4 *this, int a2, int a3, int a4, char a5)
{
  v6 = a2;
  result = *(this + 1062);
  if (result == 0.0)
  {
    if (a3 && a4 && a2)
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!a3)
    {
LABEL_9:
      v9 = (*(*(this + 515) + 16) + 4 * *(this + 129));
      v10.realp = *(*(this + 515) + 16);
      v10.imagp = v9;
      VPTimeFreqConverter_Analyze(*(this + 523), *(*(this + 425) + 16), &v10);
      goto LABEL_10;
    }

    memcpy(*(*(this + 425) + 16), *(*(this + 428) + 16), 4 * *(this + 129));
    goto LABEL_9;
  }

LABEL_10:
  if (a3)
  {
    if ((v6 & 1) == 0)
    {
      result = *(this + 1065);
      *(this + 1062) = result;
    }
  }

  return result;
}

uint64_t VoiceProcessorV5::RunUplinkDynamicsDSP(VoiceProcessorV5 *this, AudioBufferList *ioData, AudioTimeStamp *a3, const AudioTimeStamp *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  if ((*(this + 4696) & 0x10) != 0 && (*(this + 4712) & 0x10) != 0)
  {
    v7 = *(this + 417);
    if (v7)
    {
      ioActionFlags.mNumberBuffers = 512;
      AudioUnitProcess(v7, &ioActionFlags.mNumberBuffers, a3, a4, ioData);
      if ((v6[3593] & 1) != 0 || v6[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x30u, a4, ioData, a3);
      }
    }
  }

  if (v6[3593] == 1)
  {
    *outValue = 0;
    v10 = *(this + 586);
    if ((v10 & 0x1000000000000000) != 0 && (*(this + 4711) & 0x10) != 0)
    {
      v11 = *(this + 409);
      if (v11)
      {
        AudioUnitGetParameter(v11, 2u, 0, 0, outValue);
        v10 = *(this + 586);
      }
    }

    if ((v10 & 0x80000000000000) != 0 && (*(this + 4710) & 0x80) != 0 && (v12 = *(this + 404)) != 0)
    {
      v13 = 9;
    }

    else
    {
      if ((v10 & 0x40000000000000) == 0 || (*(this + 4710) & 0x40) == 0 || (v12 = *(this + 403)) == 0)
      {
LABEL_21:
        *&ioActionFlags.mNumberBuffers = 1;
        *&ioActionFlags.mBuffers[0].mNumberChannels = 0x800000001;
        ioActionFlags.mBuffers[0].mData = outValue;
        if ((v6[3593] & 1) != 0 || v6[3594] == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Cu, 2, &ioActionFlags, a3);
        }

        goto LABEL_24;
      }

      v13 = 2;
    }

    AudioUnitGetParameter(v12, v13, 0, 0, &outValue[1]);
    goto LABEL_21;
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t VoiceProcessorV5::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v336 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 129), *(v3 + 135)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 129), *(v3 + 136)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 135);
      v9 = (v3 + 516);
      v10 = *(v3 + 129);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 135);
    goto LABEL_19;
  }

  v6 = *(v3 + 135);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 135);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 129);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 129);
    v11 = *(v3 + 136);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 136);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 178);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 129);
  v12 = *(v3 + 178);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v317 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v26 = *(v3 + 586);
    if (v26 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v316 = 0;
      *(v3 + 2137) = 0;
      *(v3 + 2139) = 0;
      *(v3 + 2138) = 0;
      *(v3 + 4274) = 1;
      *(v3 + 1069) = *(*(v3 + 135) + 8);
      if (v26 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 349);
        if (this)
        {
          v27 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v27;
          v28 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v28;
          v316 = 512;
          this = AudioUnitProcess(this, &v316, &buf, *(v3 + 129), *(v3 + 136));
        }
      }

      v29 = 24 * **(v3 + 136);
      MEMORY[0x28223BE20](this);
      v31 = (&v299 - ((v30 + 15) & 0x3FFFFFFFF0));
      v32 = *(v3 + 136);
      if (*v32)
      {
        v33 = 0;
        v34 = 2;
        v35 = v31;
        do
        {
          *&v35->mNumberBuffers = 0;
          *&v35->mBuffers[0].mNumberChannels = 0;
          v35->mBuffers[0].mData = 0;
          v35->mNumberBuffers = 1;
          v35->mBuffers[0] = *&v32[v34];
          ++v33;
          v34 += 4;
          ++v35;
        }

        while (v33 < *v32);
      }

      v36 = *(v3 + 586);
      if ((v36 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v37 = *(v3 + 350);
        if (v37)
        {
          v38 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v38;
          v39 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v39;
          v316 = 512;
          AudioUnitProcess(v37, &v316, &buf, *v9, v31);
          v45 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v45, v31, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 139), v31, v45, v40, v41, v42, v43, v44, v299);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v46 = *(v3 + 351);
        if (v46)
        {
          v47 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v47;
          v48 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v48;
          v316 = 512;
          AudioUnitProcess(v46, &v316, &buf, *v9, v31 + 1);
          v54 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v54, v31 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 140), v31 + 1, v54, v49, v50, v51, v52, v53, v299);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v55 = *(v3 + 352);
        if (v55)
        {
          v56 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v56;
          v57 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v57;
          v316 = 512;
          AudioUnitProcess(v55, &v316, &buf, *v9, v31 + 2);
          v63 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v63, v31 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 141), v31 + 2, v63, v58, v59, v60, v61, v62, v299);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v64 = *(v3 + 353);
        if (v64)
        {
          v65 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v65;
          v66 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v66;
          v316 = 512;
          AudioUnitProcess(v64, &v316, &buf, *v9, v31 + 3);
          v72 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v72, v31 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 142), v31 + 3, v72, v67, v68, v69, v70, v71, v299);
        }
      }

      v73 = *(v3 + 136);
      v74 = *v73;
      v305 = &v299;
      if (v74 < 3)
      {
        *(v3 + 1057) = *(v73 + 8);
        if (*v73 < 2u)
        {
          v78 = 0;
          v81 = 0;
          v77 = 0;
          v76 = 0;
        }

        else
        {
          v78 = 0;
          v81 = 0;
          if (*(v3 + 17160) == 1)
          {
            v77 = 0;
            *(v3 + 1057) = *(v73 + 24);
            *(v3 + 16936) = *(v73 + 8);
            v76 = 1;
          }

          else
          {
            v76 = 0;
            *(v3 + 16936) = *(v73 + 24);
            v77 = 1;
          }
        }

LABEL_120:
        v83 = *(v3 + 586);
        LODWORD(v306) = v77;
        if ((v83 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
        {
          v84 = *(v3 + 356);
          if (v84)
          {
            v85 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v85;
            v86 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v86;
            v316 = 512;
            AudioUnitProcess(v84, &v316, &buf, *(v3 + 129), (v3 + 16904));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 129), (v3 + 16904), &buf);
            }

            v83 = *(v3 + 586);
          }
        }

        if (v83 & 0x100) != 0 && (*(v3 + 4705))
        {
          v87 = *(v3 + 357);
          if (v87)
          {
            v88 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v88;
            v89 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v89;
            v316 = 512;
            AudioUnitProcess(v87, &v316, &buf, *(v3 + 129), (v3 + 16928));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 129), (v3 + 16928), &buf);
            }

            v83 = *(v3 + 586);
          }
        }

        if ((v83 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
        {
          v90 = *(v3 + 359);
          if (v90)
          {
            v91 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v91;
            v92 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v92;
            v316 = 512;
            AudioUnitProcess(v90, &v316, &buf, *(v3 + 129), (v3 + 16976));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 129), (v3 + 16976), &buf);
            }

            v83 = *(v3 + 586);
          }
        }

        if ((v83 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
        {
          v93 = *(v3 + 360);
          if (v93)
          {
            v94 = (MEMORY[0x28223BE20])(v93);
            *(&v299 - 6) = 2;
            *(&v299 - 5) = *(v3 + 1057);
            *(&v299 - 3) = *(v3 + 16936);
            *&v326.mSampleTime = &v299 - 6;
            v326.mHostTime = 0;
            *&inInputBufferLists.mSampleTime = v3 + 16928;
            memset(&inInputBufferLists.mHostTime, 0, 24);
            v316 = 512;
            v95 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v95;
            v96 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v96;
            AudioUnitProcessMultiple(v94, &v316, &buf, *(v3 + 129), 2u, &v326, 4u, &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 129), (v3 + 16928), &buf);
            }

            v83 = *(v3 + 586);
          }
        }

        v315 = 0;
        v97 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v97;
        v98 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v98;
        if ((v83 & 0x20000) != 0 && (*(v3 + 4706) & 2) != 0 && *(v3 + 366))
        {
          v99 = *(v3 + 2110);
          if (*(v3 + 2111) == v99)
          {
            goto LABEL_619;
          }

          ECApplicator::apply(*v99, &buf, v76, &v315, v3 + 1054, v3 + 1058, v3 + 1062, v3 + 1066, v3 + 1070, v3 + 1074);
          v100 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v100, (v3 + 16904), &buf);
            v100 = *(v3 + 129);
            v101 = *(v3 + 420);
            if (*(v3 + 15881))
            {
              goto LABEL_193;
            }
          }

          else
          {
            v101 = *(v3 + 420);
          }

          if (*(v3 + 15882) == 1)
          {
LABEL_193:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v100, v101, &buf);
          }
        }

        else
        {
          v102 = 0;
          while (((*(v3 + 118) >> v102) & 1) == 0)
          {
            if (++v102 == 32)
            {
              v102 = 33;
              break;
            }
          }

          if (v102 >= **(v3 + 136))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v103 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v104 = (*v103 ? *v103 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                v105 = **(v3 + 136);
                LODWORD(inInputBufferLists.mSampleTime) = 136315906;
                *(&inInputBufferLists.mSampleTime + 4) = "vpProcessUplink_v5.cpp";
                WORD2(inInputBufferLists.mHostTime) = 1024;
                *(&inInputBufferLists.mHostTime + 6) = 340;
                WORD1(inInputBufferLists.mRateScalar) = 1024;
                HIDWORD(inInputBufferLists.mRateScalar) = v102;
                LOWORD(inInputBufferLists.mWordClockTime) = 1024;
                *(&inInputBufferLists.mWordClockTime + 2) = v105;
                _os_log_impl(&dword_2724B4000, v104, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &inInputBufferLists, 0x1Eu);
              }
            }

            v106 = *(v3 + 1588);
            if (v106 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v106, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v5.cpp", 340, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v102, **(v3 + 136));
            }

            v102 = 0;
          }

          v107 = *(v3 + 136) + 16 * v102;
          memcpy(*(*(v3 + 137) + 16), *(v107 + 16), *(v107 + 12));
        }

        if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
        {
          v108 = *(v3 + 418);
          if (v108)
          {
            inInputBufferLists.mSampleTime = *(v3 + 136);
            inInputBufferLists.mHostTime = v3 + 17096;
            v326.mSampleTime = *(v3 + 137);
            v316 = 512;
            AudioUnitProcessMultiple(v108, &v316, &buf, *(v3 + 129), 2u, &inInputBufferLists, 1u, &v326);
          }
        }

        v314 = 0;
        v109 = *(v3 + 586);
        if ((v109 & 0x200000) == 0 || (*(v3 + 4706) & 0x20) == 0 || !*(v3 + 370))
        {
LABEL_201:
          v313 = 0;
          if ((v109 & 0x40000) != 0 && (*(v3 + 4706) & 4) != 0 && *(v3 + 367))
          {
            v113 = *(v3 + 2110);
            if ((*(v3 + 2111) - v113) <= 8)
            {
              goto LABEL_619;
            }

            ECApplicator::apply(*(v113 + 8), &buf, v306, &v313, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
            v114 = *(v3 + 129);
            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v114, (v3 + 16928), &buf);
              v114 = *(v3 + 129);
              v115 = *(v3 + 421);
              if (*(v3 + 15881))
              {
                goto LABEL_211;
              }
            }

            else
            {
              v115 = *(v3 + 421);
            }

            if (*(v3 + 15882) == 1)
            {
LABEL_211:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v114, v115, &buf);
            }
          }

          v312 = 0;
          if ((*(v3 + 4690) & 8) == 0 || (*(v3 + 4706) & 8) == 0 || !*(v3 + 368))
          {
            goto LABEL_223;
          }

          v116 = *(v3 + 2110);
          if ((*(v3 + 2111) - v116) <= 0x10)
          {
            goto LABEL_619;
          }

          ECApplicator::apply(*(v116 + 16), &buf, v78, &v312, v3 + 1056, v3 + 1060, v3 + 1064, v3 + 1068, v3 + 1072, v3 + 1076);
          v117 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v117, (v3 + 16952), &buf);
            v117 = *(v3 + 129);
            v118 = *(v3 + 423);
            if (*(v3 + 15881))
            {
LABEL_222:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v117, v118, &buf);
LABEL_223:
              v311 = 0;
              if ((*(v3 + 4690) & 0x10) == 0 || (*(v3 + 4706) & 0x10) == 0 || !*(v3 + 369))
              {
                goto LABEL_234;
              }

              v119 = *(v3 + 2110);
              if ((*(v3 + 2111) - v119) > 0x18)
              {
                ECApplicator::apply(*(v119 + 24), &buf, v81, &v311, v3 + 1057, v3 + 1061, v3 + 1065, v3 + 1069, v3 + 1073, v3 + 1077);
                v120 = *(v3 + 129);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v120, (v3 + 16976), &buf);
                  v120 = *(v3 + 129);
                  v121 = *(v3 + 422);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_233;
                  }
                }

                else
                {
                  v121 = *(v3 + 422);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_233:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v120, v121, &buf);
                }

LABEL_234:
                if ((*(v3 + 4692) & 0x40) != 0 && (*(v3 + 4708) & 0x40) != 0)
                {
                  v122 = *(v3 + 387);
                  if (v122)
                  {
                    v123 = *(v3 + 139);
                    v124 = *(v3 + 142);
                    v125 = (MEMORY[0x28223BE20])(v122);
                    v298 = 0;
                    *(&v299 - 3) = 0u;
                    *(&v299 - 2) = 0u;
                    *(&v299 - 12) = 2;
                    *(&v299 - 5) = *(v126 + 32);
                    *(&v299 - 3) = *(v127 + 32);
                    v128 = (MEMORY[0x28223BE20])(v125);
                    *(&v299 - 6) = v129;
                    *(&v299 - 5) = *(v3 + 1057);
                    *(&v299 - 3) = *(v3 + 16936);
                    v130 = (MEMORY[0x28223BE20])(v128);
                    v298 = 0;
                    *(&v299 - 3) = v131;
                    *(&v299 - 2) = v131;
                    *(&v299 - 12) = v132;
                    *(&v299 - 5) = *(*(v3 + 420) + 8);
                    *(&v299 - 3) = *(*(v3 + 421) + 8);
                    AudioUnitSetParameter(v130, 0x14u, 0, 0, *(v3 + 1054), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x15u, 0, 0, *(v3 + 1058), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x16u, 0, 0, *(v3 + 1062), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x17u, 0, 0, *(v3 + 1066), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x18u, 0, 0, *(v3 + 1070), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x19u, 0, 0, *(v3 + 1055), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x1Au, 0, 0, *(v3 + 1059), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x1Bu, 0, 0, *(v3 + 1063), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x1Cu, 0, 0, *(v3 + 1067), 0);
                    AudioUnitSetParameter(*(v3 + 387), 0x1Du, 0, 0, *(v3 + 1071), 0);
                    *&v326.mSampleTime = &v299 - 6;
                    v326.mHostTime = (&v299 - 6);
                    *&v326.mRateScalar = &v299 - 6;
                    v133 = *(v3 + 420);
                    *&v329.mNumberBuffers = v3 + 16904;
                    *&v329.mBuffers[0].mNumberChannels = v133;
                    v316 = 512;
                    v134 = *&a2->mRateScalar;
                    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                    *&inInputBufferLists.mRateScalar = v134;
                    v135 = *&a2->mSMPTETime.mHours;
                    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&inInputBufferLists.mSMPTETime.mHours = v135;
                    AudioUnitProcessMultiple(*(v3 + 387), &v316, &inInputBufferLists, *(v3 + 129), 3u, &v326, 2u, &v329);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x23u, *(v3 + 129), (v3 + 16904), &inInputBufferLists);
                    }

                    if ((*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 392))
                    {
                      LODWORD(v310.realp) = 0;
                      AudioUnitGetParameter(*(v3 + 387), 0x13u, 0, 0, &v310);
                      AudioUnitSetParameter(*(v3 + 392), 0x27u, 0, 0, *&v310.realp, 0);
                      AudioUnitGetParameter(*(v3 + 387), 0x14u, 0, 0, v3 + 1054);
                      AudioUnitGetParameter(*(v3 + 387), 0x15u, 0, 0, v3 + 1058);
                      AudioUnitGetParameter(*(v3 + 387), 0x16u, 0, 0, v3 + 1062);
                      AudioUnitGetParameter(*(v3 + 387), 0x17u, 0, 0, v3 + 1066);
                      AudioUnitGetParameter(*(v3 + 387), 0x18u, 0, 0, v3 + 1070);
                    }
                  }
                }

                v136 = (*(*(v3 + 514) + 16) + 4 * *(v3 + 129));
                v310.realp = *(*(v3 + 514) + 16);
                v310.imagp = v136;
                VPTimeFreqConverter_Analyze(*(v3 + 522), *(v3 + 2139), &v310);
                if ((*(v3 + 4690) & 2) != 0 && (*(v3 + 4706) & 2) != 0)
                {
                  if (*(v3 + 366))
                  {
                    v138 = (*(*(v3 + 430) + 16) + 4 * *(v3 + 129));
                    v310.realp = *(*(v3 + 430) + 16);
                    v310.imagp = v138;
                    VPTimeFreqConverter_Analyze(*(v3 + 516), *(v3 + 2115), &v310);
                    v139 = (*(*(v3 + 508) + 16) + 4 * *(v3 + 129));
                    v310.realp = *(*(v3 + 508) + 16);
                    v310.imagp = v139;
                    VPTimeFreqConverter_Analyze(*(v3 + 520), *(*(v3 + 420) + 16), &v310);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 129), *(v3 + 430), &buf);
                    }
                  }
                }

                if ((*(v3 + 4690) & 4) != 0 && (*(v3 + 4706) & 4) != 0)
                {
                  if (*(v3 + 367))
                  {
                    v140 = (*(*(v3 + 509) + 16) + 4 * *(v3 + 129));
                    v310.realp = *(*(v3 + 509) + 16);
                    v310.imagp = v140;
                    VPTimeFreqConverter_Analyze(*(v3 + 517), *(v3 + 2118), &v310);
                    v141 = (*(*(v3 + 508) + 32) + 4 * *(v3 + 129));
                    v310.realp = *(*(v3 + 508) + 32);
                    v310.imagp = v141;
                    VPTimeFreqConverter_Analyze(*(v3 + 521), *(*(v3 + 421) + 16), &v310);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 129), *(v3 + 509), &buf);
                    }
                  }
                }

                if ((*(v3 + 4690) & 0x10) != 0 && (*(v3 + 4706) & 0x10) != 0)
                {
                  if (*(v3 + 369))
                  {
                    v142 = (*(*(v3 + 510) + 16) + 4 * *(v3 + 129));
                    v310.realp = *(*(v3 + 510) + 16);
                    v310.imagp = v142;
                    VPTimeFreqConverter_Analyze(*(v3 + 519), *(v3 + 2124), &v310);
                    v143 = (*(*(v3 + 508) + 64) + 4 * *(v3 + 129));
                    v310.realp = *(*(v3 + 508) + 64);
                    v310.imagp = v143;
                    VPTimeFreqConverter_Analyze(*(v3 + 2108), *(*(v3 + 422) + 16), &v310);
                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 129), *(v3 + 510), &buf);
                    }
                  }
                }

                v309 = 0.0;
                v144 = *(v3 + 586);
                if ((v144 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0)
                {
                  Parameter = *(v3 + 392);
                  if (Parameter)
                  {
                    Parameter = AudioUnitGetParameter(Parameter, 0x2Bu, 0, 0, &v309);
                    v144 = *(v3 + 586);
                  }
                }

                if ((v144 & 0x80000) != 0 && (*(v3 + 4706) & 8) != 0 && *(v3 + 368) && v309 == 1.0)
                {
                  v145 = (*(*(v3 + 508) + 48) + 4 * *(v3 + 129));
                  v310.realp = *(*(v3 + 508) + 48);
                  v310.imagp = v145;
                  VPTimeFreqConverter_Analyze(*(v3 + 2144), *(*(v3 + 423) + 16), &v310);
                  v144 = *(v3 + 586);
                }

                if ((v144 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || (Parameter = *(v3 + 393)) == 0)
                {
LABEL_284:
                  v308 = 0;
                  if ((v144 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 379))
                  {
                    v153 = 1;
                    v154 = 1;
                  }

                  else if ((v144 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
                  {
                    v153 = 0;
                    v154 = *(v3 + 382) != 0;
                  }

                  else
                  {
                    v153 = 0;
                    v154 = 0;
                  }

                  v155 = v144 & 0x80000000;
                  if ((v144 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                  {
                    v156 = 1;
                    v153 = 1;
                    v157 = 1;
                    if ((v144 & 0x100000000) == 0)
                    {
                      goto LABEL_309;
                    }
                  }

                  else
                  {
                    if ((v144 & 0x100000000) == 0)
                    {
                      v156 = 0;
                      v157 = 1;
                      goto LABEL_309;
                    }

                    v157 = 1;
                    if (*(v3 + 4708))
                    {
                      v158 = *(v3 + 381);
                      v156 = v158 != 0;
                      if (v158)
                      {
                        v157 = 2;
                      }

                      else
                      {
                        v157 = 1;
                      }
                    }

                    else
                    {
                      v156 = 0;
                    }
                  }

                  v159 = *(v3 + 588);
                  if ((v159 & 0x100000000) != 0 && *(v3 + 381) && (v144 & v159 & 0x200000000) != 0 && *(v3 + 382))
                  {
                    v157 = 2;
                    v153 = 2;
                  }

LABEL_309:
                  if ((v144 & 0x40000000) == 0)
                  {
                    goto LABEL_326;
                  }

                  if ((*(v3 + 4707) & 0x40) == 0)
                  {
                    goto LABEL_326;
                  }

                  Parameter = *(v3 + 379);
                  if (!Parameter)
                  {
                    goto LABEL_326;
                  }

                  AudioUnitSetProperty(Parameter, 0x457u, 0, 0, v3 + 2332, 4u);
                  if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
                  {
                    v160 = *(v3 + 379);
                    if (*(v3 + 380))
                    {
                      v161 = *(v3 + 688);
LABEL_316:
                      AudioUnitSetParameter(v160, 0x1Bu, 0, 0, v161, 0);
                      v162 = *(v3 + 586);
                      if ((v162 & 0x20000) != 0)
                      {
                        v163 = *(v3 + 588);
                        if ((v163 & 0x20000) != 0 && *(v3 + 366) && (v162 & v163 & 0x40000) != 0 && *(v3 + 367))
                        {
                          AudioUnitSetParameter(*(v3 + 379), 0x3Fu, 0, 0, *(v3 + 1062) * *(v3 + 1063), 0);
                        }
                      }

                      *&v164 = *(v3 + 139) + 24;
                      *&v165 = *(v3 + 140) + 24;
                      if (**(v3 + 136) <= 2u)
                      {
                        *&v326.mSampleTime = *(v3 + 139) + 24;
                        *&v326.mHostTime = v165;
                        v326.mRateScalar = 0.0;
                        v326.mWordClockTime = v3 + 17096;
                        *&v326.mSMPTETime.mSubframes = *(v3 + 210);
                      }

                      else
                      {
                        v166 = *(v3 + 141) + 24;
                        v326.mWordClockTime = v3 + 17096;
                        *&v326.mSMPTETime.mSubframes = *(v3 + 210);
                        v326.mSampleTime = v165;
                        v326.mHostTime = v166;
                        v326.mRateScalar = v164;
                      }

                      *&v329.mNumberBuffers = 0;
                      v316 = 512;
                      AudioUnitSetParameter(*(v3 + 379), 0x2Cu, 0, 0, *(v3 + 1098), 0);
                      v167 = *&a2->mRateScalar;
                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                      *&inInputBufferLists.mRateScalar = v167;
                      v168 = *&a2->mSMPTETime.mHours;
                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&inInputBufferLists.mSMPTETime.mHours = v168;
                      Parameter = AudioUnitProcessMultiple(*(v3 + 379), &v316, &inInputBufferLists, *(v3 + 129), 6u, &v326, 1u, &v329);
                      v144 = *(v3 + 586);
                      v155 = v144 & 0x80000000;
LABEL_326:
                      if (v155 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                      {
                        memcpy(*(*(v3 + 436) + 16 * *(v3 + 1048) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                        memcpy(*(*(v3 + 436) + 16 * *(v3 + 1049) + 16), *(*(v3 + 509) + 16), 4 * (2 * *(v3 + 129)));
                        if (*(v3 + 1074) == 0.0 && *(v3 + 1075) == 0.0)
                        {
                          v169 = 0.0;
                        }

                        else
                        {
                          v169 = 1.0;
                        }

                        AudioUnitSetParameter(*(v3 + 380), 0x20u, 0, 0, v169, 0);
                        v326.mSampleTime = *(v3 + 436);
                        *&v329.mNumberBuffers = *(v3 + 431);
                        v170 = *&a2->mRateScalar;
                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                        *&inInputBufferLists.mRateScalar = v170;
                        v171 = *&a2->mSMPTETime.mHours;
                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&inInputBufferLists.mSMPTETime.mHours = v171;
                        v316 = 512;
                        AudioUnitProcessMultiple(*(v3 + 380), &v316, &inInputBufferLists, *(v3 + 129), 1u, &v326, 1u, &v329);
                        ioDataSize[0] = 8 * *(v3 + 129);
                        AudioUnitGetProperty(*(v3 + 380), 0xE7Au, 0, 0, *(*(v3 + 541) + 16), ioDataSize);
                        ioDataSize[0] = 8 * *(v3 + 129);
                        Parameter = AudioUnitGetProperty(*(v3 + 380), 0xE79u, 0, 0, *(*(v3 + 541) + 32), ioDataSize);
                        v172 = *(v3 + 129);
                        v173 = *(v3 + 431);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          p_inInputBufferLists = &inInputBufferLists;
                          v175 = v3;
                          v176 = 10;
LABEL_335:
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v175, v176, v172, v173, p_inInputBufferLists);
                        }

LABEL_363:
                        v189 = (MEMORY[0x28223BE20])(Parameter);
                        v190 = (&v299 - 8);
                        *(&v299 - 3) = 0u;
                        *(&v299 - 2) = 0u;
                        *(&v299 - 4) = 0u;
                        *(&v299 - 16) = 3;
                        *&v192 = MEMORY[0x28223BE20](v189);
                        v306 = (&v299 - 8);
                        v298 = 0;
                        *(&v299 - 3) = v192;
                        *(&v299 - 2) = v192;
                        *(&v299 - 4) = v192;
                        *(&v299 - 16) = v193;
                        v194 = *(v3 + 586);
                        if ((v194 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 383) || (v194 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 384) || (v194 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 386))
                        {
                          *(&v299 - 7) = *(*(v3 + 430) + 8);
                          *(&v299 - 5) = *(*(v3 + 509) + 8);
                          *(&v299 - 3) = *(*(v3 + 510) + 8);
                          v195 = *(v3 + 508);
                          v196 = v306;
                          v306->mBuffers[0] = *(v195 + 8);
                          *&v196[1].mNumberBuffers = *(v195 + 24);
                          *&v196[1].mBuffers[0].mData = *(v195 + 56);
                        }

                        if ((v194 & 0x400000000) == 0 || (*(v3 + 4708) & 4) == 0 || !*(v3 + 383))
                        {
LABEL_386:
                          if ((v194 & 0x800000000) == 0 || (*(v3 + 4708) & 8) == 0 || !*(v3 + 384))
                          {
LABEL_399:
                            if ((v194 & 0x2000000000) == 0 || (*(v3 + 4708) & 0x20) == 0 || !*(v3 + 386))
                            {
LABEL_412:
                              if (v153 == 2)
                              {
                                VoiceProcessorV4::SignalParamSwitchMixNF(v3, v156, v154, &v308);
                              }

                              else if (v153 == 1)
                              {
                                VoiceProcessorV2::SignalParamSwitchMix(v3, v156, v154, &v308, v191);
                              }

                              if (v157 == 1)
                              {
                                VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, v315, v313, v156, v308);
                              }

                              else
                              {
                                VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, v315, v311, v156, v308);
                              }

                              v209 = memcpy(*(*(v3 + 434) + 16), *(*(v3 + 508) + 16), *(v3 + 1079));
                              v210 = *(v3 + 586);
                              if ((v210 & 0x80000) != 0 && (*(v3 + 4706) & 8) != 0 && *(v3 + 368) && v309 == 1.0)
                              {
                                v209 = memcpy(*(*(v3 + 2143) + 16), *(*(v3 + 508) + 48), *(v3 + 1079));
                                v210 = *(v3 + 586);
                              }

                              if ((v210 & 0x400000000000) == 0 || (v211 = *(v3 + 588), (v211 & 0x400000000000) == 0) || !*(v3 + 395))
                              {
LABEL_442:
                                if ((v210 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 403))
                                {
                                  v227 = 1;
                                }

                                else
                                {
                                  v227 = (v210 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 404) != 0;
                                }

                                ioDataSize[0] = 0;
                                LODWORD(v327) = 0;
                                AudioUnitGetParameter(*(v3 + 392), 0x1Du, 0, 0, ioDataSize);
                                LODWORD(v228) = *ioDataSize < 1.0 && v227;
                                if (v227)
                                {
                                  LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                  if (*ioDataSize < 1.0)
                                  {
                                    vDSP_vfill(&inInputBufferLists, *(*(v3 + 505) + 16), 1, *(v3 + 129));
                                  }

                                  vDSP_vfill(&inInputBufferLists, *(*(v3 + 503) + 16), 1, *(v3 + 129));
                                }

                                else if ((*(v3 + 4693) & 8) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 392))
                                {
                                  v229 = 0;
                                  goto LABEL_465;
                                }

                                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 129), *(v3 + 430), &buf);
                                }

                                v229 = 1;
LABEL_465:
                                v230 = *(v3 + 504);
                                v231 = *(v3 + 586);
                                if ((v231 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v232 = *(v3 + 403)) != 0)
                                {
                                  v233 = *(v3 + 503);
                                  v326.mSampleTime = *(v3 + 430);
                                  v326.mHostTime = v233;
                                  *&v326.mRateScalar = v3 + 16904;
                                  v234 = *(v3 + 505);
                                  *&v329.mNumberBuffers = *(v3 + 431);
                                  *&v329.mBuffers[0].mNumberChannels = v234;
                                  v329.mBuffers[0].mData = v230;
                                  v316 = 512;
                                  v235 = *&a2->mRateScalar;
                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                  *&inInputBufferLists.mRateScalar = v235;
                                  v236 = *&a2->mSMPTETime.mHours;
                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                  *&inInputBufferLists.mSMPTETime.mHours = v236;
                                  AudioUnitProcessMultiple(v232, &v316, &inInputBufferLists, *(v3 + 129), 3u, &v326, 3u, &v329);
                                  AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v317);
                                  if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                                  {
                                    goto LABEL_480;
                                  }

                                  v237 = *(v3 + 403);
                                  v238 = 2;
                                }

                                else
                                {
                                  if ((v231 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v239 = *(v3 + 404)) == 0)
                                  {
                                    v244 = 0;
                                    goto LABEL_485;
                                  }

                                  AudioUnitSetParameter(v239, 0x14u, 0, 0, *(v3 + 4189), 0);
                                  v240 = *(v3 + 433);
                                  v326.mSampleTime = *(v3 + 430);
                                  v326.mHostTime = v240;
                                  v326.mRateScalar = *(v3 + 503);
                                  v326.mWordClockTime = v3 + 16904;
                                  v241 = *(v3 + 438);
                                  *&v329.mNumberBuffers = *(v3 + 431);
                                  *&v329.mBuffers[0].mNumberChannels = v241;
                                  v329.mBuffers[0].mData = *(v3 + 505);
                                  v330 = v230;
                                  v242 = *&a2->mRateScalar;
                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                  *&inInputBufferLists.mRateScalar = v242;
                                  v243 = *&a2->mSMPTETime.mHours;
                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                  *&inInputBufferLists.mSMPTETime.mHours = v243;
                                  v316 = 512;
                                  AudioUnitProcessMultiple(*(v3 + 404), &v316, &inInputBufferLists, *(v3 + 129), 4u, &v326, 4u, &v329);
                                  AudioUnitGetParameter(*(v3 + 404), 2u, 0, 0, &v317);
                                  if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                                  {
LABEL_480:
                                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 431), &inInputBufferLists);
                                    }

                                    v244 = 1;
LABEL_485:
                                    v245 = *(v3 + 586);
                                    if ((v245 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
                                    {
                                      v246 = *(v3 + 406);
                                      if (v246)
                                      {
                                        LODWORD(v306) = v229;
                                        v247 = v228;
                                        v326.mSampleTime = *(v3 + 430);
                                        *&v329.mNumberBuffers = 0;
                                        v248 = *&a2->mSMPTETime.mHours;
                                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                        *&inInputBufferLists.mSMPTETime.mHours = v248;
                                        v249 = *&a2->mRateScalar;
                                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                        *&inInputBufferLists.mRateScalar = v249;
                                        v316 = 512;
                                        v250 = *(v3 + 506);
                                        v251 = *(v250 + 16);
                                        v252 = *(v250 + 12);
                                        if ((AudioUnitProcessMultiple(v246, &v316, &inInputBufferLists, *(v3 + 129), 1u, &v326, 1u, &v329) || AudioUnitGetProperty(*(v3 + 406), 0x13EDu, 0, 0, *(*(v3 + 506) + 16), (*(v3 + 506) + 12))) && v252 >= 4)
                                        {
                                          memset_pattern16(v251, &unk_2727568B0, v252 & 0xFFFFFFFC);
                                        }

                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 129), *(v3 + 506), &inInputBufferLists);
                                        }

                                        v245 = *(v3 + 586);
                                        LODWORD(v228) = v247;
                                        v229 = v306;
                                      }
                                    }

                                    if ((v245 & 0x80000000000) == 0)
                                    {
                                      goto LABEL_535;
                                    }

                                    if ((*(v3 + 4709) & 8) == 0 || (v253 = *(v3 + 392)) == 0)
                                    {
LABEL_527:
                                      if ((*(v3 + 4709) & 8) != 0 && ((*(v3 + 392) != 0) & v228) == 1)
                                      {
                                        v266 = *(*(v3 + 505) + 16);
                                        vDSP_vmin(*(*(v3 + 503) + 16), 1, v266, 1, v266, 1, *(v3 + 129));
                                        if ((*(v3 + 4695) & 2) != 0 && (*(v3 + 4711) & 2) != 0 && *(v3 + 406))
                                        {
                                          vDSP_vmin(*(*(v3 + 506) + 16), 1, v266, 1, v266, 1, *(v3 + 129));
                                        }

                                        v267 = *(*(v3 + 430) + 16);
                                        v268 = *(*(v3 + 431) + 16);
                                        MEMORY[0x2743CCDD0](v267, 1, v266, 1, v268, 1, *(v3 + 129));
                                        MEMORY[0x2743CCDD0](v267 + 4 * *(v3 + 129) + 4, 1, v266 + 1, 1, v268 + 4 * *(v3 + 129) + 4, 1, (*(v3 + 129) - 1));
                                        *(v267 + 4 * *(v3 + 129)) = *(v267 + 4 * *(v3 + 129)) * v266[*(v3 + 129) - 1];
                                        goto LABEL_537;
                                      }

                                      if ((*(v3 + 4709) & 8) != 0)
                                      {
                                        if (*(v3 + 392) != 0 || v227)
                                        {
                                          goto LABEL_537;
                                        }

                                        goto LABEL_536;
                                      }

LABEL_535:
                                      if (v227)
                                      {
LABEL_537:
                                        if (((v229 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 392)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 129), *(v3 + 431), &buf);
                                        }

                                        if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                                        {
                                          v270 = *(v3 + 409);
                                          if (v270)
                                          {
                                            AudioUnitSetParameter(v270, 0, 0, 0, *(v3 + 3153), 0);
                                            AudioUnitSetParameter(*(v3 + 409), 4u, 0, 0, *(v3 + 1054), 0);
                                            AudioUnitSetParameter(*(v3 + 409), 0x13u, 0, 0, *(v3 + 1058), 0);
                                            AudioUnitSetParameter(*(v3 + 409), 3u, 0, 0, v317, 0);
                                            AudioUnitSetParameter(*(v3 + 409), 0xEu, 0, 0, *(v3 + 580), 0);
                                            v271 = *(v3 + 514);
                                            v326.mSampleTime = *(v3 + 420);
                                            v326.mHostTime = v271;
                                            v326.mRateScalar = *(v3 + 431);
                                            v272 = *(v3 + 503);
                                            v326.mWordClockTime = *(v3 + 513);
                                            *&v326.mSMPTETime.mSubframes = v272;
                                            *&v326.mSMPTETime.mType = *(v3 + 505);
                                            *&v329.mNumberBuffers = *(v3 + 137);
                                            v316 = 512;
                                            v273 = *&a2->mRateScalar;
                                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                            *&inInputBufferLists.mRateScalar = v273;
                                            v274 = *&a2->mSMPTETime.mHours;
                                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&inInputBufferLists.mSMPTETime.mHours = v274;
                                            AudioUnitProcessMultiple(*(v3 + 409), &v316, &inInputBufferLists, *(v3 + 129), 6u, &v326, 1u, &v329);
                                            LODWORD(v324) = 0;
                                            AudioUnitGetParameter(*(v3 + 409), 1u, 0, 0, &v324);
                                            *(v3 + 3154) = v324;
                                            if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
                                            {
                                              AudioUnitGetParameter(*(v3 + 409), 2u, 0, 0, &v317);
                                              AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v317, 0);
                                            }
                                          }
                                        }

                                        goto LABEL_551;
                                      }

LABEL_536:
                                      LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                      v269 = *(v3 + 129);
                                      vDSP_vfill(&inInputBufferLists, *(*(v3 + 505) + 16), 1, v269);
                                      memcpy(*(*(v3 + 431) + 16), *(*(v3 + 430) + 16), 8 * v269);
                                      goto LABEL_537;
                                    }

                                    AudioUnitSetParameter(v253, 6u, 0, 0, *(v3 + 1062), 0);
                                    AudioUnitSetParameter(*(v3 + 392), 7u, 0, 0, *(v3 + 1066), 0);
                                    AudioUnitSetParameter(*(v3 + 392), 0xDu, 0, 0, *(v3 + 1070), 0);
                                    v254 = *(v3 + 434);
                                    v326.mSampleTime = *(v3 + 430);
                                    v326.mHostTime = v254;
                                    v326.mRateScalar = *(v3 + 515);
                                    v326.mWordClockTime = *(v3 + 505);
                                    *&v326.mSMPTETime.mSubframes = v230;
                                    *&v326.mSMPTETime.mType = 0;
                                    if ((v228 & 1) == 0)
                                    {
                                      v326.mWordClockTime = 0;
                                    }

                                    v255 = *(v3 + 513);
                                    *&v329.mNumberBuffers = 0;
                                    *&v329.mBuffers[0].mNumberChannels = v255;
                                    v329.mBuffers[0].mData = 0;
                                    v256 = *(v3 + 586);
                                    LODWORD(v306) = v229;
                                    if ((v256 & 0x200000) != 0 && (v257 = *(v3 + 588), (v257 & 0x200000) != 0) && (v258 = *(v3 + 370)) != 0 && (v256 & v257 & 0x40000) != 0 && *(v3 + 367))
                                    {
                                      LODWORD(inInputBufferLists.mSampleTime) = 0;
                                      *&v326.mSMPTETime.mType = *(v3 + 511);
                                      AudioUnitGetParameter(v258, 0x2Du, 0, 0, &inInputBufferLists);
                                      AudioUnitSetParameter(*(v3 + 392), 0x2Au, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                      AudioUnitGetParameter(*(v3 + 367), 0x2Du, 0, 0, &inInputBufferLists);
                                      AudioUnitSetParameter(*(v3 + 392), 0x29u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                    }

                                    else if ((v256 & 0x80000) != 0 && (*(v3 + 4706) & 8) != 0 && *(v3 + 368) && v309 == 1.0)
                                    {
                                      *&v326.mSMPTETime.mType = *(v3 + 2143);
                                    }

                                    v259 = v228 == 0;
                                    v260 = v228;
                                    if (v228)
                                    {
                                      v228 = 3464;
                                    }

                                    else
                                    {
                                      v228 = 3448;
                                    }

                                    v261 = 4040;
                                    *&v329.mNumberBuffers = *(v3 + v228);
                                    if (!v259)
                                    {
                                      v261 = 4024;
                                    }

                                    v329.mBuffers[0].mData = *(v3 + v261);
                                    v262 = *&a2->mRateScalar;
                                    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                    *&inInputBufferLists.mRateScalar = v262;
                                    v263 = *&a2->mSMPTETime.mHours;
                                    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                    *&inInputBufferLists.mSMPTETime.mHours = v263;
                                    v316 = 512;
                                    AudioUnitProcessMultiple(*(v3 + 392), &v316, &inInputBufferLists, *(v3 + 129), 6u, &v326, 3u, &v329);
                                    if ((v244 & v260 & 1) == 0)
                                    {
                                      AudioUnitGetParameter(*(v3 + 392), 0x20u, 0, 0, &v317);
                                    }

                                    v264 = *(v3 + 129);
                                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v264, *(v3 + v228), &inInputBufferLists);
                                      v264 = *(v3 + 129);
                                      v265 = *(v3 + 503);
                                      LOBYTE(v228) = v260;
                                      if (*(v3 + 15881))
                                      {
LABEL_525:
                                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v264, v265, &inInputBufferLists);
LABEL_526:
                                        LOBYTE(v229) = v306;
                                        if ((*(v3 + 4693) & 8) == 0)
                                        {
                                          goto LABEL_535;
                                        }

                                        goto LABEL_527;
                                      }
                                    }

                                    else
                                    {
                                      v265 = *(v3 + 503);
                                      LOBYTE(v228) = v260;
                                    }

                                    if (*(v3 + 15882) != 1)
                                    {
                                      goto LABEL_526;
                                    }

                                    goto LABEL_525;
                                  }

                                  v237 = *(v3 + 404);
                                  v238 = 9;
                                }

                                AudioUnitGetParameter(v237, v238, 0, 0, &v327);
                                AudioUnitSetParameter(*(v3 + 414), 0x12u, 0, 0, *&v327, 0);
                                goto LABEL_480;
                              }

                              ioDataSize[0] = 1092616192;
                              if ((v210 & v211 & 0x80000000000000) != 0)
                              {
                                v209 = *(v3 + 404);
                                if (v209)
                                {
                                  v209 = AudioUnitGetParameter(v209, 9u, 0, 0, ioDataSize);
                                  v210 = *(v3 + 586);
                                }
                              }

                              if ((v210 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 381))
                              {
                                LODWORD(inInputBufferLists.mSampleTime) = 0;
                                LODWORD(v326.mSampleTime) = 0;
                                v329.mNumberBuffers = 0;
                                AudioUnitGetParameter(*(v3 + 382), 0x18u, 0, 0, &inInputBufferLists);
                                AudioUnitGetParameter(*(v3 + 382), 0x19u, 0, 0, &v326);
                                AudioUnitGetParameter(*(v3 + 382), 5u, 0, 0, &v329.mNumberBuffers);
                                AudioUnitSetParameter(*(v3 + 395), 3u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                AudioUnitSetParameter(*(v3 + 395), 4u, 0, 0, *&v326.mSampleTime, 0);
                                AudioUnitSetParameter(*(v3 + 395), 5u, 0, 0, *&v329.mNumberBuffers, 0);
                                v209 = AudioUnitSetParameter(*(v3 + 395), 6u, 0, 0, *ioDataSize, 0);
                              }

                              MEMORY[0x28223BE20](v209);
                              v298 = 0;
                              *(&v299 - 3) = 0u;
                              *(&v299 - 2) = 0u;
                              *(&v299 - 12) = 2;
                              v212 = *(v3 + 430);
                              *(&v299 - 4) = *(v212 + 16);
                              *(&v299 - 5) = *(v212 + 8);
                              v213 = *(v3 + 433);
                              v298 = *(v213 + 16);
                              *(&v299 - 3) = *(v213 + 8);
                              *&v215 = MEMORY[0x28223BE20](v214);
                              *(&v299 - 3) = v215;
                              *(&v299 - 2) = v215;
                              *(&v299 - 12) = v216;
                              MEMORY[0x28223BE20](v217);
                              *(&v299 - 3) = 0;
                              v298 = 0;
                              *(&v299 - 4) = 0;
                              *(&v299 - 8) = 1;
                              v218 = *(v3 + 434);
                              *(v219 - 32) = *(v218 + 16);
                              *(v219 - 40) = *(v218 + 8);
                              v220 = *(v3 + 508);
                              *(v219 - 16) = *(v220 + 32);
                              *(v219 - 24) = *(v220 + 24);
                              v298 = *(v218 + 16);
                              *(&v299 - 3) = *(v218 + 8);
                              v326.mSampleTime = v221;
                              v326.mHostTime = v222;
                              *&v329.mNumberBuffers = v221;
                              *&v329.mBuffers[0].mNumberChannels = &v299 - 4;
                              v223 = *&a2->mRateScalar;
                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                              *&inInputBufferLists.mRateScalar = v223;
                              v224 = *&a2->mSMPTETime.mHours;
                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                              *&inInputBufferLists.mSMPTETime.mHours = v224;
                              v316 = 512;
                              AudioUnitProcessMultiple(*(v3 + 395), &v316, &inInputBufferLists, *(v3 + 129), 2u, &v326, 2u, &v329);
                              v225 = *(v3 + 129);
                              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v225, *(v3 + 430), &inInputBufferLists);
                                v225 = *(v3 + 129);
                                v226 = *(v3 + 433);
                                if (*(v3 + 15881))
                                {
                                  goto LABEL_440;
                                }
                              }

                              else
                              {
                                v226 = *(v3 + 433);
                              }

                              if (*(v3 + 15882) != 1)
                              {
LABEL_441:
                                v210 = *(v3 + 586);
                                goto LABEL_442;
                              }

LABEL_440:
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v225, v226, &inInputBufferLists);
                              goto LABEL_441;
                            }

                            v300 = v190;
                            v301 = v157;
                            v302 = v156;
                            v303 = v153;
                            v304 = v154;
                            v205 = 0;
                            v327 = *(v3 + 527);
                            LODWORD(v328) = *(v3 + 1057);
                            v324 = *(v3 + 529);
                            v325 = *(v3 + 1061);
                            v322 = *(v3 + 531);
                            v323 = *(v3 + 1065);
                            v320 = *(v3 + 533);
                            v321 = *(v3 + 1069);
                            v318 = *(v3 + 535);
                            v319 = *(v3 + 1073);
                            do
                            {
                              AudioUnitSetParameter(*(v3 + 386), 0x64u, 4u, v205, *(&v327 + v205), 0);
                              AudioUnitSetParameter(*(v3 + 386), 0x65u, 4u, v205, *(&v324 + v205), 0);
                              AudioUnitSetParameter(*(v3 + 386), 0x66u, 4u, v205, *(&v322 + v205), 0);
                              AudioUnitSetParameter(*(v3 + 386), 0x67u, 4u, v205, *(&v320 + v205), 0);
                              AudioUnitSetParameter(*(v3 + 386), 0x68u, 4u, v205, *(&v318 + v205), 0);
                              ++v205;
                            }

                            while (v205 != 3);
                            *&v329.mNumberBuffers = 1;
                            *&v329.mBuffers[0].mNumberChannels = 0;
                            v329.mBuffers[0].mData = 0;
                            v329.mBuffers[0] = *(*(v3 + 508) + 8);
                            *ioDataSize = v300;
                            v333 = v306;
                            v326.mSampleTime = *(v3 + 430);
                            v326.mHostTime = &v329;
                            v326.mWordClockTime = 0;
                            v326.mRateScalar = 0.0;
                            v316 = 512;
                            v206 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v206;
                            v207 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v207;
                            AudioUnitProcessMultiple(*(v3 + 386), &v316, &inInputBufferLists, *(v3 + 129), 2u, ioDataSize, 4u, &v326);
                            v307 = 0.0;
                            AudioUnitGetParameter(*(v3 + 386), 0xAu, 0, 0, &v307);
                            v208 = *(v3 + 129);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v208, *(v3 + 430), &inInputBufferLists);
                              v208 = *(v3 + 129);
                              v153 = v303;
                              v154 = v304;
                              v157 = v301;
                              v156 = v302;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_410;
                              }
                            }

                            else
                            {
                              v153 = v303;
                              v154 = v304;
                              v157 = v301;
                              v156 = v302;
                            }

                            if (*(v3 + 15882) != 1)
                            {
LABEL_411:
                              AudioUnitGetParameter(*(v3 + 386), 0x64u, 4u, 0, v3 + 1054);
                              AudioUnitGetParameter(*(v3 + 386), 0x65u, 4u, 0, v3 + 1058);
                              AudioUnitGetParameter(*(v3 + 386), 0x66u, 4u, 0, v3 + 1062);
                              AudioUnitGetParameter(*(v3 + 386), 0x67u, 4u, 0, v3 + 1066);
                              AudioUnitGetParameter(*(v3 + 386), 0x68u, 4u, 0, v3 + 1070);
                              goto LABEL_412;
                            }

LABEL_410:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v208, &v329, &inInputBufferLists);
                            goto LABEL_411;
                          }

                          v300 = v190;
                          v301 = v157;
                          v302 = v156;
                          v303 = v153;
                          v304 = v154;
                          v201 = 0;
                          *ioDataSize = *(v3 + 527);
                          LODWORD(v333) = *(v3 + 1057);
                          v327 = *(v3 + 529);
                          LODWORD(v328) = *(v3 + 1061);
                          v324 = *(v3 + 531);
                          v325 = *(v3 + 1065);
                          v322 = *(v3 + 533);
                          v323 = *(v3 + 1069);
                          v320 = *(v3 + 535);
                          v321 = *(v3 + 1073);
                          do
                          {
                            AudioUnitSetParameter(*(v3 + 384), 0x12u, 4u, v201, *&ioDataSize[v201], 0);
                            AudioUnitSetParameter(*(v3 + 384), 0x13u, 4u, v201, *(&v327 + v201), 0);
                            AudioUnitSetParameter(*(v3 + 384), 0x14u, 4u, v201, *(&v324 + v201), 0);
                            AudioUnitSetParameter(*(v3 + 384), 0x15u, 4u, v201, *(&v322 + v201), 0);
                            AudioUnitSetParameter(*(v3 + 384), 0x16u, 4u, v201, *(&v320 + v201), 0);
                            ++v201;
                          }

                          while (v201 != 3);
                          v190 = v300;
                          *&v326.mSampleTime = v300;
                          v326.mHostTime = v306;
                          *&v329.mNumberBuffers = v300;
                          *&v329.mBuffers[0].mNumberChannels = v306;
                          v316 = 512;
                          v202 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v202;
                          v203 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v203;
                          AudioUnitProcessMultiple(*(v3 + 384), &v316, &inInputBufferLists, *(v3 + 129), 2u, &v326, 2u, &v329);
                          v204 = *(v3 + 129);
                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                          {
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v204, v190, &inInputBufferLists);
                            v204 = *(v3 + 129);
                            v153 = v303;
                            v154 = v304;
                            v157 = v301;
                            v156 = v302;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_397;
                            }
                          }

                          else
                          {
                            v153 = v303;
                            v154 = v304;
                            v157 = v301;
                            v156 = v302;
                          }

                          if (*(v3 + 15882) != 1)
                          {
LABEL_398:
                            v194 = *(v3 + 586);
                            goto LABEL_399;
                          }

LABEL_397:
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v204, v306, &inInputBufferLists);
                          goto LABEL_398;
                        }

                        v300 = &v299 - 8;
                        v301 = v157;
                        v302 = v156;
                        v303 = v153;
                        v304 = v154;
                        v197 = 0;
                        *ioDataSize = *(v3 + 527);
                        LODWORD(v333) = *(v3 + 1057);
                        v327 = *(v3 + 529);
                        LODWORD(v328) = *(v3 + 1061);
                        v324 = *(v3 + 531);
                        v325 = *(v3 + 1065);
                        v322 = *(v3 + 533);
                        v323 = *(v3 + 1069);
                        v320 = *(v3 + 535);
                        v321 = *(v3 + 1073);
                        do
                        {
                          AudioUnitSetParameter(*(v3 + 383), 9u, 4u, v197, *&ioDataSize[v197], 0);
                          AudioUnitSetParameter(*(v3 + 383), 0xAu, 4u, v197, *(&v327 + v197), 0);
                          AudioUnitSetParameter(*(v3 + 383), 0xBu, 4u, v197, *(&v324 + v197), 0);
                          AudioUnitSetParameter(*(v3 + 383), 0xCu, 4u, v197, *(&v322 + v197), 0);
                          AudioUnitSetParameter(*(v3 + 383), 0xDu, 4u, v197, *(&v320 + v197), 0);
                          ++v197;
                        }

                        while (v197 != 3);
                        v190 = v300;
                        *&v326.mSampleTime = v300;
                        v326.mHostTime = v306;
                        *&v329.mNumberBuffers = v300;
                        *&v329.mBuffers[0].mNumberChannels = v306;
                        v316 = 512;
                        v198 = *&a2->mRateScalar;
                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                        *&inInputBufferLists.mRateScalar = v198;
                        v199 = *&a2->mSMPTETime.mHours;
                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&inInputBufferLists.mSMPTETime.mHours = v199;
                        AudioUnitProcessMultiple(*(v3 + 383), &v316, &inInputBufferLists, *(v3 + 129), 2u, &v326, 2u, &v329);
                        v200 = *(v3 + 129);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v200, v190, &inInputBufferLists);
                          v200 = *(v3 + 129);
                          v153 = v303;
                          v154 = v304;
                          v157 = v301;
                          v156 = v302;
                          if (*(v3 + 15881))
                          {
                            goto LABEL_384;
                          }
                        }

                        else
                        {
                          v153 = v303;
                          v154 = v304;
                          v157 = v301;
                          v156 = v302;
                        }

                        if (*(v3 + 15882) != 1)
                        {
LABEL_385:
                          v194 = *(v3 + 586);
                          goto LABEL_386;
                        }

LABEL_384:
                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v200, v306, &inInputBufferLists);
                        goto LABEL_385;
                      }

                      if ((v144 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 381))
                      {
                        goto LABEL_363;
                      }

                      memcpy(*(*(v3 + 436) + 16), *(*(v3 + 430) + 16), 8 * *(v3 + 129));
                      memcpy(*(*(v3 + 436) + 32), *(*(v3 + 510) + 16), 8 * *(v3 + 129));
                      v324 = *(v3 + 436);
                      v177 = *(v3 + 435);
                      *ioDataSize = *(v3 + 431);
                      v333 = v177;
                      v178 = *&a2->mRateScalar;
                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                      *&inInputBufferLists.mRateScalar = v178;
                      v179 = *&a2->mSMPTETime.mHours;
                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&inInputBufferLists.mSMPTETime.mHours = v179;
                      Parameter = AudioUnitProcessMultiple(*(v3 + 381), &v316, &inInputBufferLists, *(v3 + 129), 1u, &v324, 2u, ioDataSize);
                      v180 = *(v3 + 129);
                      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v180, *ioDataSize, &inInputBufferLists);
                        v180 = *(v3 + 129);
                        v181 = v333;
                        if (*(v3 + 15881))
                        {
                          goto LABEL_347;
                        }
                      }

                      else
                      {
                        v181 = v333;
                      }

                      if (*(v3 + 15882) != 1)
                      {
LABEL_348:
                        if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 382))
                        {
                          goto LABEL_363;
                        }

                        memcpy(*(*(v3 + 437) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                        memcpy(*(*(v3 + 432) + 16), *(*(v3 + 433) + 16), 4 * (2 * *(v3 + 129)));
                        LODWORD(v322) = 1092616192;
                        v182 = *(v3 + 435);
                        *&v329.mNumberBuffers = *(v3 + 431);
                        *&v329.mBuffers[0].mNumberChannels = v182;
                        v183 = *(v3 + 510);
                        v329.mBuffers[0].mData = *(v3 + 437);
                        v330 = v183;
                        v331 = *(v3 + 432);
                        v184 = *(v3 + 433);
                        v185 = 10.0;
                        v327 = *(v3 + 430);
                        v328 = v184;
                        if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                        {
                          v186 = *(v3 + 404);
                          if (v186)
                          {
                            AudioUnitGetParameter(v186, 9u, 0, 0, &v322);
                            v185 = *&v322;
                          }
                        }

                        AudioUnitSetParameter(*(v3 + 382), 0xAu, 0, 0, v185, 0);
                        AudioUnitSetParameter(*(v3 + 382), 0x17u, 0, 0, *(v3 + 4189), 0);
                        v187 = *&a2->mRateScalar;
                        *&v326.mSampleTime = *&a2->mSampleTime;
                        *&v326.mRateScalar = v187;
                        v188 = *&a2->mSMPTETime.mHours;
                        *&v326.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&v326.mSMPTETime.mHours = v188;
                        Parameter = AudioUnitProcessMultiple(*(v3 + 382), &v316, &v326, *(v3 + 129), 5u, &v329, 2u, &v327);
                        v172 = *(v3 + 129);
                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v172, v327, &v326);
                          v172 = *(v3 + 129);
                          v173 = v328;
                          if (*(v3 + 15881))
                          {
                            goto LABEL_362;
                          }
                        }

                        else
                        {
                          v173 = v328;
                        }

                        if (*(v3 + 15882) != 1)
                        {
                          goto LABEL_363;
                        }

LABEL_362:
                        p_inInputBufferLists = &v326;
                        v175 = v3;
                        v176 = 27;
                        goto LABEL_335;
                      }

LABEL_347:
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v180, v181, &inInputBufferLists);
                      goto LABEL_348;
                    }
                  }

                  else
                  {
                    v160 = *(v3 + 379);
                  }

                  v161 = 2.0;
                  goto LABEL_316;
                }

                v146 = *(v3 + 1063);
                if (v146 == 0.0)
                {
                  v147 = *(*(v3 + 437) + 16) + 4 * *(v3 + 129);
                  inInputBufferLists.mSampleTime = *(*(v3 + 437) + 16);
                  inInputBufferLists.mHostTime = v147;
                  VPTimeFreqConverter_Analyze(*(v3 + 2109), *(*(v3 + 426) + 16), &inInputBufferLists);
                  v146 = *(v3 + 1063);
                  Parameter = *(v3 + 393);
                }

                AudioUnitSetParameter(Parameter, 6u, 0, 0, v146, 0);
                AudioUnitSetParameter(*(v3 + 393), 7u, 0, 0, *(v3 + 1067), 0);
                AudioUnitSetParameter(*(v3 + 393), 0xDu, 0, 0, *(v3 + 1071), 0);
                memcpy(*(*(v3 + 435) + 16), *(*(v3 + 508) + 32), *(v3 + 1079));
                v148 = *(v3 + 435);
                v326.mSampleTime = *(v3 + 509);
                v326.mHostTime = v148;
                v326.mRateScalar = *(v3 + 515);
                memset(&v326.mWordClockTime, 0, 24);
                *&v329.mNumberBuffers = *(v3 + 433);
                *&v329.mBuffers[0].mNumberChannels = 0;
                v329.mBuffers[0].mData = *(v3 + 504);
                v149 = *&a2->mRateScalar;
                *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                *&inInputBufferLists.mRateScalar = v149;
                v150 = *&a2->mSMPTETime.mHours;
                *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                *&inInputBufferLists.mSMPTETime.mHours = v150;
                v316 = 512;
                Parameter = AudioUnitProcessMultiple(*(v3 + 393), &v316, &inInputBufferLists, *(v3 + 129), 6u, &v326, 3u, &v329);
                v151 = *(v3 + 129);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v151, *(v3 + 433), &inInputBufferLists);
                  v151 = *(v3 + 129);
                  v152 = *(v3 + 504);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_282;
                  }
                }

                else
                {
                  v152 = *(v3 + 504);
                }

                if (*(v3 + 15882) != 1)
                {
LABEL_283:
                  v144 = *(v3 + 586);
                  goto LABEL_284;
                }

LABEL_282:
                Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v151, v152, &inInputBufferLists);
                goto LABEL_283;
              }

LABEL_619:
              std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            v118 = *(v3 + 423);
          }

          if (*(v3 + 15882) != 1)
          {
            goto LABEL_223;
          }

          goto LABEL_222;
        }

        v110 = *(v3 + 2110);
        if ((*(v3 + 2111) - v110) <= 0x20)
        {
          goto LABEL_619;
        }

        ECApplicator::apply(*(v110 + 32), &buf, v306, &v314, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
        v111 = *(v3 + 129);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v111, *(v3 + 137), &buf);
          v111 = *(v3 + 129);
          v112 = *(v3 + 424);
          if (*(v3 + 15881))
          {
LABEL_196:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v111, v112, &buf);
            LODWORD(v111) = *(v3 + 129);
            v112 = *(v3 + 424);
LABEL_197:
            inInputBufferLists.mSampleTime = *(*(v3 + 511) + 16);
            inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v111;
            VPTimeFreqConverter_Analyze(*(v3 + 2142), *(v112 + 16), &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 129), *(v3 + 511), &buf);
            }

            v109 = *(v3 + 586);
            goto LABEL_201;
          }
        }

        else
        {
          v112 = *(v3 + 424);
        }

        if (*(v3 + 15882) != 1)
        {
          goto LABEL_197;
        }

        goto LABEL_196;
      }

      v75 = *(v3 + 3134);
      if (v74 != 3)
      {
        if (v75 == 2)
        {
          v76 = 1;
          v77 = 3;
          v78 = 2;
          v79 = 56;
          v80 = 40;
          goto LABEL_117;
        }

        v75 = *(v3 + 3134);
        if (v75 <= 0xC && ((0x1028u >> v75) & 1) != 0)
        {
          v76 = 3;
          v77 = 2;
          v78 = 1;
          v79 = 40;
          v80 = 24;
          goto LABEL_117;
        }
      }

      v76 = 1;
      v77 = 2;
      if (v75 != 9)
      {
        v78 = 0;
        v81 = 0;
        goto LABEL_119;
      }

      v78 = 3;
      v79 = 40;
      v80 = 56;
LABEL_117:
      *(v3 + 1060) = *(v73 + v80);
      *(v3 + 16984) = *(v73 + v79);
      v81 = v77;
      v77 = v76;
      v76 = 0;
LABEL_119:
      v82 = v73 + 8;
      *(v3 + 1057) = *(v82 + 16 * v76);
      *(v3 + 16936) = *(v82 + 16 * v77);
      goto LABEL_120;
    }
  }

  v13 = 0;
  while (((*(v3 + 118) >> v13) & 1) == 0)
  {
    if (++v13 == 32)
    {
      v13 = 33;
      break;
    }
  }

  v14 = *(v3 + 136);
  if (v13 >= *v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = **(v3 + 136);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v5.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 101;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v13;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v20 = *(v3 + 1588);
    if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v5.cpp", 101, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 136));
    }

    v15 = *(*(v3 + 137) + 16);
    v16 = *(v3 + 136);
  }

  else
  {
    v15 = *(*(v3 + 137) + 16);
    v16 = &v14[4 * v13];
  }

  memcpy(v15, v16[2], *(v16 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v21 = *(v3 + 403);
    if (v21)
    {
      v22 = *(v3 + 503);
      inInputBufferLists.mSampleTime = *(v3 + 137);
      inInputBufferLists.mHostTime = v22;
      v23 = *(v3 + 505);
      v326.mSampleTime = inInputBufferLists.mSampleTime;
      v326.mHostTime = v23;
      v24 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v24;
      v25 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v25;
      v329.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v21, &v329.mNumberBuffers, &buf, *(v3 + 129), 2u, &inInputBufferLists, 2u, &v326);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 137), &buf);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
      {
        AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v317);
        AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v317, 0);
      }
    }
  }

LABEL_551:
  v329.mNumberBuffers = 0;
  v275 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v276 = v275;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 2053) != 0) | v275 & 1))
    {
      goto LABEL_567;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v276 & 1) == 0)
    {
      goto LABEL_567;
    }
  }

  else
  {
    if ((v275 & 1) == 0)
    {
      goto LABEL_567;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v277 = *(v3 + 586);
  if ((v277 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v278 = *(v3 + 410);
    if (v278)
    {
      v279 = 1936748646;
LABEL_565:
      AudioUnitGetParameter(v278, v279, 0, 0, &v329.mNumberBuffers);
      goto LABEL_567;
    }
  }

  if ((v277 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v278 = *(v3 + 409);
    if (v278)
    {
      v279 = 2;
      goto LABEL_565;
    }
  }

  *&v329.mNumberBuffers = v317;
LABEL_567:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 137) + 16), 4 * *(v3 + 129));
    v329.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 4108) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v280 = *(v3 + 454);
    if (((v280 != 0) & v276) == 1)
    {
      AudioUnitSetParameter(v280, 0x12u, 0, 0, *&v329.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 129), *(v3 + 137), a2);
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v281 = *(v3 + 419);
    if (v281)
    {
      inInputBufferLists.mSampleTime = *(v3 + 137);
      v326.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v310.realp) = 512;
      v282 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v282;
      v283 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v283;
      AudioUnitProcessMultiple(v281, &v310, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v326);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if ((*(v3 + 586) & 0x8000000000000000) != 0 && (*(v3 + 588) & 0x8000000000000000) != 0)
  {
    v284 = *(v3 + 412);
    if (v284)
    {
      v285 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v285;
      v286 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v286;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v284, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  v287 = *(v3 + 587);
  if (v287 & 1) != 0 && (*(v3 + 4712))
  {
    v288 = *(v3 + 413);
    if (v288)
    {
      v289 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v289;
      v290 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v290;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v288, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
      v287 = *(v3 + 587);
    }
  }

  if ((v287 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v291 = *(v3 + 414)) != 0)
  {
    v292 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v292;
    v293 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v293;
    LODWORD(inInputBufferLists.mSampleTime) = 512;
    AudioUnitProcess(v291, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 129), *(v3 + 137), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 409))
    {
      LODWORD(v326.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 414), 1u, 0, 0, &v326);
      AudioUnitSetParameter(*(v3 + 409), 0x11u, 0, 0, *&v326.mSampleTime, 0);
    }

    LODWORD(v326.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 414), 0x1Bu, 0, 0, &v326);
    mSampleTime_low = LODWORD(v326.mSampleTime);
    if (*(v3 + 577) != *&v326.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v295 = *(v3 + 409);
        if (v295)
        {
          AudioUnitSetParameter(v295, 0x12u, 0, 0, *&v326.mSampleTime, 0);
          mSampleTime_low = LODWORD(v326.mSampleTime);
        }
      }

      *(v3 + 577) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 1099) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &buf, *(*(v3 + 137) + 16), 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 129), *(v3 + 137), a2);
    }
  }

  v296 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t VoiceProcessorV6::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v387 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 129), *(v3 + 135)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 129), *(v3 + 136)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 135);
      v9 = (v3 + 516);
      v10 = *(v3 + 129);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 135);
    goto LABEL_19;
  }

  v6 = *(v3 + 135);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 135);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 129);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 129);
    v11 = *(v3 + 136);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 136);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 178);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 129);
  v12 = *(v3 + 178);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v367 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v26 = *(v3 + 586);
    if (v26 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v366 = 0;
      *(v3 + 2137) = 0;
      *(v3 + 2139) = 0;
      *(v3 + 2138) = 0;
      *(v3 + 4274) = 1;
      *(v3 + 1069) = *(*(v3 + 135) + 8);
      if (v26 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 349);
        if (this)
        {
          v27 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v27;
          v28 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v28;
          v366 = 512;
          this = AudioUnitProcess(this, &v366, &buf, *(v3 + 129), *(v3 + 136));
        }
      }

      v29 = 24 * **(v3 + 136);
      MEMORY[0x28223BE20](this);
      v31 = (&v351 - ((v30 + 15) & 0x3FFFFFFFF0));
      v32 = *(v3 + 136);
      if (*v32)
      {
        v33 = 0;
        v34 = 2;
        v35 = v31;
        do
        {
          *&v35->mNumberBuffers = 0;
          *&v35->mBuffers[0].mNumberChannels = 0;
          v35->mBuffers[0].mData = 0;
          v35->mNumberBuffers = 1;
          v35->mBuffers[0] = *&v32[v34];
          ++v33;
          v34 += 4;
          ++v35;
        }

        while (v33 < *v32);
      }

      v36 = *(v3 + 586);
      if ((v36 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v37 = *(v3 + 350);
        if (v37)
        {
          v38 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v38;
          v39 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v39;
          v366 = 512;
          AudioUnitProcess(v37, &v366, &buf, *v9, v31);
          v45 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v45, v31, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 139), v31, v45, v40, v41, v42, v43, v44, v351);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v46 = *(v3 + 351);
        if (v46)
        {
          v47 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v47;
          v48 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v48;
          v366 = 512;
          AudioUnitProcess(v46, &v366, &buf, *v9, v31 + 1);
          v54 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v54, v31 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 140), v31 + 1, v54, v49, v50, v51, v52, v53, v351);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v55 = *(v3 + 352);
        if (v55)
        {
          v56 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v56;
          v57 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v57;
          v366 = 512;
          AudioUnitProcess(v55, &v366, &buf, *v9, v31 + 2);
          v63 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v63, v31 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 141), v31 + 2, v63, v58, v59, v60, v61, v62, v351);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v64 = *(v3 + 353);
        if (v64)
        {
          v65 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v65;
          v66 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v66;
          v366 = 512;
          AudioUnitProcess(v64, &v366, &buf, *v9, v31 + 3);
          v72 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v72, v31 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 142), v31 + 3, v72, v67, v68, v69, v70, v71, v351);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 0x40) != 0 && (*(v3 + 4704) & 0x40) != 0 && *(v3 + 355))
      {
        v73 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v73;
        v74 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v74;
        VoiceProcessorV6::ApplyGMCoexNoiseMitigation(v3, *(v3 + 136), *(v3 + 136), &buf, *(v3 + 129));
      }

      v75 = *(v3 + 136);
      v76 = *v75;
      v356 = &v351;
      if (v76 < 3)
      {
        *(v3 + 1057) = *(v75 + 8);
        v81 = 0;
        v80 = 0;
        if (*v75 < 2u)
        {
          v79 = 0;
          v78 = 0;
        }

        else
        {
          v78 = 0;
          *(v3 + 16936) = *(v75 + 24);
          v79 = 1;
        }

LABEL_126:
        v86 = *(v3 + 586);
        LODWORD(v355) = v81;
        LODWORD(v357) = v79;
        if ((v86 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
        {
          v87 = *(v3 + 356);
          if (v87)
          {
            v88 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v88;
            v89 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v89;
            v366 = 512;
            AudioUnitProcess(v87, &v366, &buf, *(v3 + 129), (v3 + 16904));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 129), (v3 + 16904), &buf);
            }

            v86 = *(v3 + 586);
          }
        }

        if (v86 & 0x100) != 0 && (*(v3 + 4705))
        {
          v90 = *(v3 + 357);
          if (v90)
          {
            v91 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v91;
            v92 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v92;
            v366 = 512;
            AudioUnitProcess(v90, &v366, &buf, *(v3 + 129), (v3 + 16928));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 129), (v3 + 16928), &buf);
            }

            v86 = *(v3 + 586);
          }
        }

        if ((v86 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
        {
          v93 = *(v3 + 359);
          if (v93)
          {
            v94 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v94;
            v95 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v95;
            v366 = 512;
            AudioUnitProcess(v93, &v366, &buf, *(v3 + 129), (v3 + 16976));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 129), (v3 + 16976), &buf);
            }

            v86 = *(v3 + 586);
          }
        }

        if ((v86 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
        {
          v96 = *(v3 + 360);
          if (v96)
          {
            MEMORY[0x28223BE20](v96);
            *(&v351 - 6) = 2;
            *(&v351 - 5) = *(v3 + 1057);
            *(&v351 - 3) = *(v3 + 16936);
            *&v376.mSampleTime = &v351 - 6;
            v376.mHostTime = 0;
            *&inInputBufferLists.mSampleTime = v3 + 16904;
            memset(&inInputBufferLists.mHostTime, 0, 24);
            v366 = 512;
            v97 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v97;
            v98 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v98;
            AudioUnitProcessMultiple(v99, &v366, &buf, *(v3 + 129), 2u, &v376, 4u, &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 129), (v3 + 16904), &buf);
            }

            v86 = *(v3 + 586);
          }
        }

        v365 = 0;
        v100 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v100;
        v101 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v101;
        if ((v86 & 0x4000000) == 0 || (*(v3 + 4707) & 4) == 0 || !*(v3 + 375))
        {
LABEL_169:
          v364 = 0;
          if ((v86 & 0x8000000) == 0 || (*(v3 + 4707) & 8) == 0 || !*(v3 + 376))
          {
            goto LABEL_184;
          }

          v105 = *(v3 + 2110);
          if ((*(v3 + 2111) - v105) <= 0x28)
          {
            goto LABEL_712;
          }

          ECApplicator::apply(*(v105 + 40), &buf, v357, &v364, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
          v106 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x22u, v106, *(v3 + 137), &buf);
            v106 = *(v3 + 129);
            v107 = *(v3 + 2149);
            if (*(v3 + 15881))
            {
LABEL_179:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x11u, v106, v107, &buf);
              LODWORD(v106) = *(v3 + 129);
              v107 = *(v3 + 2149);
LABEL_180:
              inInputBufferLists.mSampleTime = *(*(v3 + 512) + 16);
              inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v106;
              VPTimeFreqConverter_Analyze(*(v3 + 2157), *(v107 + 16), &inInputBufferLists);
              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x17u, *(v3 + 129), *(v3 + 512), &buf);
              }

              v86 = *(v3 + 586);
LABEL_184:
              LODWORD(v354) = v80;
              if ((v86 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0 && *(v3 + 371))
              {
                v108 = *(v3 + 2110);
                if (*(v3 + 2111) == v108)
                {
                  goto LABEL_712;
                }

                PropertyInfo = ECApplicator::apply(*v108, &buf, v78, &v365 + 1, v3 + 1054, v3 + 1058, v3 + 1062, v3 + 1066, v3 + 1070, v3 + 1074);
                v110 = *(v3 + 129);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v110, (v3 + 16904), &buf);
                  v110 = *(v3 + 129);
                  v111 = *(v3 + 420);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_228;
                  }
                }

                else
                {
                  v111 = *(v3 + 420);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_228:
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v110, v111, &buf);
                }
              }

              else
              {
                v112 = 0;
                while (((*(v3 + 118) >> v112) & 1) == 0)
                {
                  if (++v112 == 32)
                  {
                    v112 = 33;
                    break;
                  }
                }

                if (v112 >= **(v3 + 136))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v113 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                  {
                    v114 = (*v113 ? *v113 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                    {
                      v115 = **(v3 + 136);
                      LODWORD(inInputBufferLists.mSampleTime) = 136315906;
                      *(&inInputBufferLists.mSampleTime + 4) = "vpProcessUplink_v6.cpp";
                      WORD2(inInputBufferLists.mHostTime) = 1024;
                      *(&inInputBufferLists.mHostTime + 6) = 356;
                      WORD1(inInputBufferLists.mRateScalar) = 1024;
                      HIDWORD(inInputBufferLists.mRateScalar) = v112;
                      LOWORD(inInputBufferLists.mWordClockTime) = 1024;
                      *(&inInputBufferLists.mWordClockTime + 2) = v115;
                      _os_log_impl(&dword_2724B4000, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &inInputBufferLists, 0x1Eu);
                    }
                  }

                  v116 = *(v3 + 1588);
                  if (v116 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v116, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v6.cpp", 356, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v112, **(v3 + 136));
                  }

                  v112 = 0;
                }

                v117 = *(v3 + 136) + 16 * v112;
                PropertyInfo = memcpy(*(*(v3 + 137) + 16), *(v117 + 16), *(v117 + 12));
              }

              v118 = (v3 + 17096);
              if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
              {
                PropertyInfo = *(v3 + 418);
                if (PropertyInfo)
                {
                  inInputBufferLists.mSampleTime = *(v3 + 136);
                  inInputBufferLists.mHostTime = v3 + 17096;
                  v376.mSampleTime = *(v3 + 137);
                  v366 = 512;
                  PropertyInfo = AudioUnitProcessMultiple(PropertyInfo, &v366, &buf, *(v3 + 129), 2u, &inInputBufferLists, 1u, &v376);
                }
              }

              v363 = 0;
              if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0 && *(v3 + 372))
              {
                v119 = *(v3 + 2110);
                if ((*(v3 + 2111) - v119) <= 8)
                {
                  goto LABEL_712;
                }

                PropertyInfo = ECApplicator::apply(*(v119 + 8), &buf, v357, &v363, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
                v120 = *(v3 + 129);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v120, (v3 + 16928), &buf);
                  v120 = *(v3 + 129);
                  v121 = *(v3 + 421);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_231;
                  }
                }

                else
                {
                  v121 = *(v3 + 421);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_231:
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v120, v121, &buf);
                }
              }

              v362 = 0;
              if ((*(v3 + 4691) & 1) == 0 || (*(v3 + 4707) & 1) == 0 || !*(v3 + 373))
              {
                goto LABEL_243;
              }

              v122 = *(v3 + 2110);
              if ((*(v3 + 2111) - v122) <= 0x10)
              {
                goto LABEL_712;
              }

              PropertyInfo = ECApplicator::apply(*(v122 + 16), &buf, v355, &v362, v3 + 1056, v3 + 1060, v3 + 1064, v3 + 1068, v3 + 1072, v3 + 1076);
              v123 = *(v3 + 129);
              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
              {
                PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v123, (v3 + 16952), &buf);
                v123 = *(v3 + 129);
                v124 = *(v3 + 423);
                if (*(v3 + 15881))
                {
LABEL_242:
                  PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v123, v124, &buf);
LABEL_243:
                  v361 = 0;
                  if ((*(v3 + 4691) & 2) == 0 || (*(v3 + 4707) & 2) == 0 || !*(v3 + 374))
                  {
                    goto LABEL_254;
                  }

                  v125 = *(v3 + 2110);
                  if ((*(v3 + 2111) - v125) > 0x18)
                  {
                    PropertyInfo = ECApplicator::apply(*(v125 + 24), &buf, v354, &v361, v3 + 1057, v3 + 1061, v3 + 1065, v3 + 1069, v3 + 1073, v3 + 1077);
                    v126 = *(v3 + 129);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v126, (v3 + 16976), &buf);
                      v126 = *(v3 + 129);
                      v127 = *(v3 + 422);
                      if (*(v3 + 15881))
                      {
                        goto LABEL_253;
                      }
                    }

                    else
                    {
                      v127 = *(v3 + 422);
                    }

                    if (*(v3 + 15882) == 1)
                    {
LABEL_253:
                      PropertyInfo = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v126, v127, &buf);
                    }

LABEL_254:
                    if ((*(v3 + 8869) & 8) != 0 && (*(v3 + 8877) & 8) != 0)
                    {
                      if (*(v3 + 482))
                      {
                        *(v3 + 17128) = 0;
                        if (*(v3 + 4691) & 1) != 0 && (*(v3 + 4707))
                        {
                          PropertyInfo = *(v3 + 373);
                          if (PropertyInfo)
                          {
                            if (*(v3 + 2140))
                            {
                              LODWORD(inInputBufferLists.mSampleTime) = 0;
                              PropertyInfo = AudioUnitGetPropertyInfo(PropertyInfo, 0xF3Cu, 0, 0, &inInputBufferLists, 0);
                              if (!PropertyInfo && LODWORD(inInputBufferLists.mSampleTime) == 4 * *v9)
                              {
                                v128 = *(*(v3 + 2140) + 16);
                                PropertyInfo = AudioUnitGetProperty(*(v3 + 373), 0xF3Cu, 0, 0, v128, &inInputBufferLists);
                                v129 = PropertyInfo;
                                if (*(v3 + 489) == 1)
                                {
                                  PropertyInfo = AudioUnitSetProperty(*(v3 + 482), 0xF3Cu, 0, 0, v128, LODWORD(inInputBufferLists.mSampleTime));
                                }

                                *(v3 + 17128) = v129 == 0;
                              }
                            }
                          }
                        }
                      }
                    }

                    if ((*(v3 + 4692) & 0x10) != 0 && (*(v3 + 4708) & 0x10) != 0 && *(v3 + 385))
                    {
                      v357 = (v3 + 17096);
                      MEMORY[0x28223BE20](PropertyInfo);
                      *(&v351 - 5) = 0u;
                      *(&v351 - 4) = 0u;
                      *(&v351 - 3) = 0u;
                      *(&v351 - 2) = 0u;
                      v350 = 0;
                      *(&v351 - 9) = *(v3 + 1057);
                      v130 = *(v3 + 16936);
                      *(&v351 - 20) = 4;
                      *(&v351 - 7) = v130;
                      *(&v351 - 5) = *(v3 + 16984);
                      v131 = *(*(v3 + 420) + 16);
                      v132 = *(*(v3 + 421) + 16);
                      v354 = *(v3 + 2139);
                      v355 = v132;
                      v133 = *(*(v3 + 422) + 16);
                      v134 = *(*(v3 + 2165) + 16);
                      LODWORD(v382) = 1051372203;
                      v135 = *(v3 + 129);
                      MEMORY[0x2743CCD80](v131, 1);
                      MEMORY[0x2743CCD80](v134, 1, v133, 1, v134, 1, *(v3 + 129));
                      MEMORY[0x2743CCE20](v134, 1, &v382, v134, 1, *(v3 + 129));
                      *(&v351 - 3) = *(*(v3 + 2165) + 8);
                      *&v379.mNumberBuffers = &v351 - 10;
                      ioOutputBufferLists.realp = *(v3 + 137);
                      v366 = 512;
                      v136 = *&a2->mRateScalar;
                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                      *&inInputBufferLists.mRateScalar = v136;
                      v137 = *&a2->mSMPTETime.mHours;
                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&inInputBufferLists.mSMPTETime.mHours = v137;
                      AudioUnitProcessMultiple(*(v3 + 385), &v366, &inInputBufferLists, *(v3 + 129), 1u, &v379, 1u, &ioOutputBufferLists);
                      v138 = v354;
                      memcpy((*(*(v3 + 2161) + 16) + 4 * *(v3 + 4320)), v354, 4 * *(v3 + 129));
                      memcpy((*(*(v3 + 2162) + 16) + 4 * *(v3 + 4320)), v131, 4 * *(v3 + 129));
                      v139 = v355;
                      memcpy((*(*(v3 + 2163) + 16) + 4 * *(v3 + 4320)), v355, 4 * *(v3 + 129));
                      memcpy((*(*(v3 + 2164) + 16) + 4 * *(v3 + 4320)), v133, 4 * *(v3 + 129));
                      LODWORD(v377) = 4 * *(v3 + 129);
                      AudioUnitGetProperty(*(v3 + 385), 0x9087u, 0, 0, *(*(v3 + 2166) + 16), &v377);
                      v140 = *(*(v3 + 2167) + 16) + 4 * *(v3 + 129);
                      v376.mSampleTime = *(*(v3 + 2167) + 16);
                      v376.mHostTime = v140;
                      VPTimeFreqConverter_Analyze(*(v3 + 2168), *(*(v3 + 137) + 16), &v376);
                      memcpy(v138, *(*(v3 + 2161) + 16), 4 * *(v3 + 129));
                      memcpy(v131, *(*(v3 + 2162) + 16), 4 * *(v3 + 129));
                      memcpy(v139, *(*(v3 + 2163) + 16), 4 * *(v3 + 129));
                      memcpy(v133, *(*(v3 + 2164) + 16), 4 * *(v3 + 129));
                      memmove(*(*(v3 + 2161) + 16), (*(*(v3 + 2161) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
                      memmove(*(*(v3 + 2162) + 16), (*(*(v3 + 2162) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
                      memmove(*(*(v3 + 2163) + 16), (*(*(v3 + 2163) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
                      memmove(*(*(v3 + 2164) + 16), (*(*(v3 + 2164) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 129), *(v3 + 137), &inInputBufferLists);
                      }

                      v118 = v357;
                    }

                    v141 = (*(*(v3 + 514) + 16) + 4 * *(v3 + 129));
                    ioOutputBufferLists.realp = *(*(v3 + 514) + 16);
                    ioOutputBufferLists.imagp = v141;
                    VPTimeFreqConverter_Analyze(*(v3 + 522), *(v3 + 2139), &ioOutputBufferLists);
                    if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0)
                    {
                      if (*(v3 + 371))
                      {
                        v143 = (*(*(v3 + 430) + 16) + 4 * *(v3 + 129));
                        ioOutputBufferLists.realp = *(*(v3 + 430) + 16);
                        ioOutputBufferLists.imagp = v143;
                        VPTimeFreqConverter_Analyze(*(v3 + 516), *(v3 + 2115), &ioOutputBufferLists);
                        v144 = (*(*(v3 + 508) + 16) + 4 * *(v3 + 129));
                        ioOutputBufferLists.realp = *(*(v3 + 508) + 16);
                        ioOutputBufferLists.imagp = v144;
                        VPTimeFreqConverter_Analyze(*(v3 + 520), *(*(v3 + 420) + 16), &ioOutputBufferLists);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 129), *(v3 + 430), &buf);
                        }
                      }
                    }

                    if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0)
                    {
                      if (*(v3 + 372))
                      {
                        v145 = (*(*(v3 + 509) + 16) + 4 * *(v3 + 129));
                        ioOutputBufferLists.realp = *(*(v3 + 509) + 16);
                        ioOutputBufferLists.imagp = v145;
                        VPTimeFreqConverter_Analyze(*(v3 + 517), *(v3 + 2118), &ioOutputBufferLists);
                        v146 = (*(*(v3 + 508) + 32) + 4 * *(v3 + 129));
                        ioOutputBufferLists.realp = *(*(v3 + 508) + 32);
                        ioOutputBufferLists.imagp = v146;
                        VPTimeFreqConverter_Analyze(*(v3 + 521), *(*(v3 + 421) + 16), &ioOutputBufferLists);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 129), *(v3 + 509), &buf);
                        }
                      }
                    }

                    if ((*(v3 + 4691) & 2) != 0 && (*(v3 + 4707) & 2) != 0)
                    {
                      if (*(v3 + 374))
                      {
                        v147 = (*(*(v3 + 510) + 16) + 4 * *(v3 + 129));
                        ioOutputBufferLists.realp = *(*(v3 + 510) + 16);
                        ioOutputBufferLists.imagp = v147;
                        VPTimeFreqConverter_Analyze(*(v3 + 519), *(v3 + 2124), &ioOutputBufferLists);
                        v148 = (*(*(v3 + 508) + 64) + 4 * *(v3 + 129));
                        ioOutputBufferLists.realp = *(*(v3 + 508) + 64);
                        ioOutputBufferLists.imagp = v148;
                        VPTimeFreqConverter_Analyze(*(v3 + 2108), *(*(v3 + 422) + 16), &ioOutputBufferLists);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 129), *(v3 + 510), &buf);
                        }
                      }
                    }

                    v360 = 0.0;
                    v149 = *(v3 + 586);
                    if ((v149 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0)
                    {
                      Parameter = *(v3 + 392);
                      if (Parameter)
                      {
                        Parameter = AudioUnitGetParameter(Parameter, 0x2Bu, 0, 0, &v360);
                        v149 = *(v3 + 586);
                      }
                    }

                    if ((v149 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v360 == 1.0)
                    {
                      v150 = (*(*(v3 + 508) + 48) + 4 * *(v3 + 129));
                      ioOutputBufferLists.realp = *(*(v3 + 508) + 48);
                      ioOutputBufferLists.imagp = v150;
                      VPTimeFreqConverter_Analyze(*(v3 + 2144), *(*(v3 + 423) + 16), &ioOutputBufferLists);
                      v149 = *(v3 + 586);
                    }

                    if ((v149 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || (Parameter = *(v3 + 393)) == 0)
                    {
LABEL_313:
                      v359 = 0;
                      if ((v149 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 379))
                      {
                        v158 = 1;
                        v159 = 1;
                      }

                      else if ((v149 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
                      {
                        v158 = 0;
                        v159 = *(v3 + 382) != 0;
                      }

                      else
                      {
                        v158 = 0;
                        v159 = 0;
                      }

                      v160 = v149 & 0x80000000;
                      if ((v149 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                      {
                        v161 = 1;
                        v158 = 1;
                        v162 = 1;
                        if ((v149 & 0x100000000) == 0)
                        {
                          goto LABEL_338;
                        }
                      }

                      else
                      {
                        if ((v149 & 0x100000000) == 0)
                        {
                          v161 = 0;
                          v162 = 1;
                          goto LABEL_338;
                        }

                        v162 = 1;
                        if (*(v3 + 4708))
                        {
                          v163 = *(v3 + 381);
                          v161 = v163 != 0;
                          if (v163)
                          {
                            v162 = 2;
                          }

                          else
                          {
                            v162 = 1;
                          }
                        }

                        else
                        {
                          v161 = 0;
                        }
                      }

                      v164 = *(v3 + 588);
                      if ((v164 & 0x100000000) != 0 && *(v3 + 381) && (v149 & v164 & 0x200000000) != 0 && *(v3 + 382))
                      {
                        v162 = 2;
                        v158 = 2;
                      }

LABEL_338:
                      if ((v149 & 0x40000000) == 0)
                      {
                        goto LABEL_355;
                      }

                      if ((*(v3 + 4707) & 0x40) == 0)
                      {
                        goto LABEL_355;
                      }

                      Parameter = *(v3 + 379);
                      if (!Parameter)
                      {
                        goto LABEL_355;
                      }

                      AudioUnitSetProperty(Parameter, 0x457u, 0, 0, v3 + 2332, 4u);
                      if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
                      {
                        v165 = *(v3 + 379);
                        if (*(v3 + 380))
                        {
                          v166 = *(v3 + 688);
LABEL_345:
                          AudioUnitSetParameter(v165, 0x1Bu, 0, 0, v166, 0);
                          v167 = *(v3 + 586);
                          if ((v167 & 0x400000) != 0)
                          {
                            v168 = *(v3 + 588);
                            if ((v168 & 0x400000) != 0 && *(v3 + 371) && (v167 & v168 & 0x800000) != 0 && *(v3 + 372))
                            {
                              AudioUnitSetParameter(*(v3 + 379), 0x3Fu, 0, 0, *(v3 + 1062) * *(v3 + 1063), 0);
                            }
                          }

                          *&v169 = *(v3 + 139) + 24;
                          *&v170 = *(v3 + 140) + 24;
                          if (**(v3 + 136) <= 2u)
                          {
                            *&v376.mSampleTime = *(v3 + 139) + 24;
                            *&v376.mHostTime = v170;
                            v376.mRateScalar = 0.0;
                            v376.mWordClockTime = v118;
                            *&v376.mSMPTETime.mSubframes = *(v3 + 210);
                          }

                          else
                          {
                            v171 = *(v3 + 141) + 24;
                            *&v376.mSMPTETime.mSubframes = *(v3 + 210);
                            v376.mSampleTime = v170;
                            v376.mHostTime = v171;
                            v376.mRateScalar = v169;
                            v376.mWordClockTime = v118;
                          }

                          *&v379.mNumberBuffers = 0;
                          v366 = 512;
                          AudioUnitSetParameter(*(v3 + 379), 0x2Cu, 0, 0, *(v3 + 1098), 0);
                          v172 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v172;
                          v173 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v173;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 379), &v366, &inInputBufferLists, *(v3 + 129), 6u, &v376, 1u, &v379);
                          v149 = *(v3 + 586);
                          v160 = v149 & 0x80000000;
LABEL_355:
                          if (v160 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                          {
                            memcpy(*(*(v3 + 436) + 16 * *(v3 + 1048) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                            memcpy(*(*(v3 + 436) + 16 * *(v3 + 1049) + 16), *(*(v3 + 509) + 16), 4 * (2 * *(v3 + 129)));
                            if (*(v3 + 1074) == 0.0 && *(v3 + 1075) == 0.0)
                            {
                              v174 = 0.0;
                            }

                            else
                            {
                              v174 = 1.0;
                            }

                            AudioUnitSetParameter(*(v3 + 380), 0x20u, 0, 0, v174, 0);
                            v376.mSampleTime = *(v3 + 436);
                            *&v379.mNumberBuffers = *(v3 + 431);
                            v175 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v175;
                            v176 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v176;
                            v366 = 512;
                            AudioUnitProcessMultiple(*(v3 + 380), &v366, &inInputBufferLists, *(v3 + 129), 1u, &v376, 1u, &v379);
                            LODWORD(v382) = 8 * *(v3 + 129);
                            AudioUnitGetProperty(*(v3 + 380), 0xE7Au, 0, 0, *(*(v3 + 541) + 16), &v382);
                            LODWORD(v382) = 8 * *(v3 + 129);
                            Parameter = AudioUnitGetProperty(*(v3 + 380), 0xE79u, 0, 0, *(*(v3 + 541) + 32), &v382);
                            v177 = *(v3 + 129);
                            v178 = *(v3 + 431);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              p_inInputBufferLists = &inInputBufferLists;
                              v180 = v3;
                              v181 = 10;
LABEL_364:
                              Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v180, v181, v177, v178, p_inInputBufferLists);
                            }

LABEL_392:
                            MEMORY[0x28223BE20](Parameter);
                            v193 = (&v351 - 8);
                            *(&v351 - 3) = 0u;
                            *(&v351 - 2) = 0u;
                            *(&v351 - 4) = 0u;
                            *(&v351 - 16) = 3;
                            *&v196 = MEMORY[0x28223BE20](v194);
                            v357 = (&v351 - 8);
                            v350 = 0;
                            *(&v351 - 3) = v196;
                            *(&v351 - 2) = v196;
                            *(&v351 - 4) = v196;
                            *(&v351 - 16) = v197;
                            v198 = *(v3 + 586);
                            if ((v198 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 383) || (v198 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 384) || (v198 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 386))
                            {
                              *(&v351 - 7) = *(*(v3 + 430) + 8);
                              *(&v351 - 5) = *(*(v3 + 509) + 8);
                              *(&v351 - 3) = *(*(v3 + 510) + 8);
                              v199 = *(v3 + 508);
                              v200 = v357;
                              v357->mBuffers[0] = *(v199 + 8);
                              *&v200[1].mNumberBuffers = *(v199 + 24);
                              *&v200[1].mBuffers[0].mData = *(v199 + 56);
                            }

                            if ((v198 & 0x400000000) == 0 || (*(v3 + 4708) & 4) == 0 || !*(v3 + 383))
                            {
LABEL_415:
                              if ((v198 & 0x800000000) == 0 || (*(v3 + 4708) & 8) == 0 || !*(v3 + 384))
                              {
LABEL_428:
                                if ((v198 & 0x2000000000) == 0 || (*(v3 + 4708) & 0x20) == 0 || !*(v3 + 386))
                                {
LABEL_441:
                                  if (v158 == 2)
                                  {
                                    VoiceProcessorV4::SignalParamSwitchMixNF(v3, v161, v159, &v359);
                                  }

                                  else if (v158 == 1)
                                  {
                                    VoiceProcessorV2::SignalParamSwitchMix(v3, v161, v159, &v359, v195);
                                  }

                                  if (v162 == 1)
                                  {
                                    VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, HIBYTE(v365), v363, v161, v359);
                                  }

                                  else
                                  {
                                    VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, HIBYTE(v365), v361, v161, v359);
                                  }

                                  v213 = memcpy(*(*(v3 + 434) + 16), *(*(v3 + 508) + 16), *(v3 + 1079));
                                  v214 = *(v3 + 586);
                                  if ((v214 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v360 == 1.0)
                                  {
                                    v213 = memcpy(*(*(v3 + 2143) + 16), *(*(v3 + 508) + 48), *(v3 + 1079));
                                    v214 = *(v3 + 586);
                                  }

                                  if ((v214 & 0x400000000000) == 0 || (v215 = *(v3 + 588), (v215 & 0x400000000000) == 0) || !*(v3 + 395))
                                  {
LABEL_471:
                                    if ((v214 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 403))
                                    {
                                      v231 = 1;
                                    }

                                    else
                                    {
                                      v231 = (v214 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 404) != 0;
                                    }

                                    LODWORD(v377) = 0;
                                    LODWORD(v374) = 0;
                                    AudioUnitGetParameter(*(v3 + 392), 0x1Du, 0, 0, &v377);
                                    if (*&v377 < 1.0)
                                    {
                                      v232 = v231;
                                    }

                                    else
                                    {
                                      v232 = 0;
                                    }

                                    if (v231)
                                    {
                                      LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                      if (*&v377 < 1.0)
                                      {
                                        vDSP_vfill(&inInputBufferLists, *(*(v3 + 505) + 16), 1, *(v3 + 129));
                                      }

                                      vDSP_vfill(&inInputBufferLists, *(*(v3 + 503) + 16), 1, *(v3 + 129));
                                    }

                                    else if ((*(v3 + 4693) & 8) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 392))
                                    {
                                      LODWORD(v233) = 0;
                                      goto LABEL_494;
                                    }

                                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 129), *(v3 + 430), &buf);
                                    }

                                    LODWORD(v233) = 1;
LABEL_494:
                                    v234 = *(v3 + 586);
                                    if ((v234 & 0x8000000000000) != 0 && (*(v3 + 4710) & 8) != 0)
                                    {
                                      v235 = *(v3 + 400);
                                      if (v235)
                                      {
                                        v236 = v232;
                                        v237 = v233;
                                        v366 = 512;
                                        inInputBufferLists.mSampleTime = *(v3 + 430);
                                        v376.mSampleTime = *(v3 + 431);
                                        v238 = AudioUnitProcessMultiple(v235, &v366, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v376);
                                        v239 = *(v3 + 2156);
                                        v242 = *(v239 + 12);
                                        v240 = v239 + 12;
                                        v241 = v242;
                                        v243 = *(v240 + 4);
                                        if ((v238 || AudioUnitGetProperty(*(v3 + 400), 0x3ECu, 0, 0, *(v240 + 4), v240)) && v241 >= 4)
                                        {
                                          memset_pattern16(v243, &unk_2727568B0, v241 & 0xFFFFFFFC);
                                        }

                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x74u, *(v3 + 129), *(v3 + 430), &buf);
                                        }

                                        v234 = *(v3 + 586);
                                        LODWORD(v233) = v237;
                                        v232 = v236;
                                      }
                                    }

                                    v244 = *(v3 + 504);
                                    if ((v234 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v245 = *(v3 + 403)) != 0)
                                    {
                                      v246 = *(v3 + 503);
                                      v376.mSampleTime = *(v3 + 430);
                                      v376.mHostTime = v246;
                                      *&v376.mRateScalar = v3 + 16904;
                                      v247 = *(v3 + 505);
                                      *&v379.mNumberBuffers = *(v3 + 431);
                                      *&v379.mBuffers[0].mNumberChannels = v247;
                                      v379.mBuffers[0].mData = v244;
                                      v366 = 512;
                                      v248 = *&a2->mRateScalar;
                                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                      *&inInputBufferLists.mRateScalar = v248;
                                      v249 = *&a2->mSMPTETime.mHours;
                                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&inInputBufferLists.mSMPTETime.mHours = v249;
                                      AudioUnitProcessMultiple(v245, &v366, &inInputBufferLists, *(v3 + 129), 3u, &v376, 3u, &v379);
                                      AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v367);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                                      {
                                        goto LABEL_520;
                                      }

                                      v250 = *(v3 + 403);
                                      v251 = 2;
                                    }

                                    else
                                    {
                                      if ((v234 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v252 = *(v3 + 404)) == 0)
                                      {
                                        v257 = 0;
                                        goto LABEL_525;
                                      }

                                      AudioUnitSetParameter(v252, 0x14u, 0, 0, *(v3 + 4189), 0);
                                      v253 = *(v3 + 433);
                                      v376.mSampleTime = *(v3 + 430);
                                      v376.mHostTime = v253;
                                      v376.mRateScalar = *(v3 + 503);
                                      v376.mWordClockTime = v3 + 16904;
                                      v254 = *(v3 + 438);
                                      *&v379.mNumberBuffers = *(v3 + 431);
                                      *&v379.mBuffers[0].mNumberChannels = v254;
                                      v379.mBuffers[0].mData = *(v3 + 505);
                                      v380 = v244;
                                      v255 = *&a2->mRateScalar;
                                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                      *&inInputBufferLists.mRateScalar = v255;
                                      v256 = *&a2->mSMPTETime.mHours;
                                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&inInputBufferLists.mSMPTETime.mHours = v256;
                                      v366 = 512;
                                      AudioUnitProcessMultiple(*(v3 + 404), &v366, &inInputBufferLists, *(v3 + 129), 4u, &v376, 4u, &v379);
                                      AudioUnitGetParameter(*(v3 + 404), 2u, 0, 0, &v367);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                                      {
LABEL_520:
                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 431), &inInputBufferLists);
                                        }

                                        v257 = 1;
LABEL_525:
                                        v258 = *(v3 + 586);
                                        if ((v258 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
                                        {
                                          v259 = *(v3 + 406);
                                          if (v259)
                                          {
                                            LODWORD(v357) = v257;
                                            v355 = v244;
                                            v260 = v232;
                                            v261 = v233;
                                            v376.mSampleTime = *(v3 + 430);
                                            *&v379.mNumberBuffers = 0;
                                            v262 = *&a2->mSMPTETime.mHours;
                                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&inInputBufferLists.mSMPTETime.mHours = v262;
                                            v263 = *&a2->mRateScalar;
                                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                            *&inInputBufferLists.mRateScalar = v263;
                                            v366 = 512;
                                            v264 = *(v3 + 506);
                                            v265 = *(v264 + 16);
                                            v266 = *(v264 + 12);
                                            if ((AudioUnitProcessMultiple(v259, &v366, &inInputBufferLists, *(v3 + 129), 1u, &v376, 1u, &v379) || AudioUnitGetProperty(*(v3 + 406), 0x13EDu, 0, 0, *(*(v3 + 506) + 16), (*(v3 + 506) + 12))) && v266 >= 4)
                                            {
                                              memset_pattern16(v265, &unk_2727568B0, v266 & 0xFFFFFFFC);
                                            }

                                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 129), *(v3 + 506), &inInputBufferLists);
                                            }

                                            v258 = *(v3 + 586);
                                            LODWORD(v233) = v261;
                                            v232 = v260;
                                            v244 = v355;
                                            v257 = v357;
                                          }
                                        }

                                        if (v258 & 0x100000000000000) != 0 && (*(v3 + 4711))
                                        {
                                          v267 = *(v3 + 405);
                                          if (v267)
                                          {
                                            LODWORD(v355) = v231;
                                            v231 = v257;
                                            v268 = v244;
                                            v269 = v232;
                                            v270 = v233;
                                            v376.mSampleTime = *(v3 + 430);
                                            *&v379.mNumberBuffers = 0;
                                            v366 = 512;
                                            v271 = *&a2->mSMPTETime.mHours;
                                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&inInputBufferLists.mSMPTETime.mHours = v271;
                                            v272 = *&a2->mRateScalar;
                                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                            *&inInputBufferLists.mRateScalar = v272;
                                            v273 = *(v3 + 507);
                                            v354 = *(v273 + 16);
                                            v274 = *(v273 + 12);
                                            if ((AudioUnitProcessMultiple(v267, &v366, &inInputBufferLists, *(v3 + 129), 1u, &v376, 1u, &v379) || AudioUnitGetProperty(*(v3 + 405), 0x3EAu, 0, 0, *(*(v3 + 507) + 16), (*(v3 + 507) + 12))) && v274 >= 4)
                                            {
                                              memset_pattern16(v354, &unk_2727568B0, v274 & 0xFFFFFFFC);
                                            }

                                            v258 = *(v3 + 586);
                                            LODWORD(v233) = v270;
                                            v232 = v269;
                                            v244 = v268;
                                            v257 = v231;
                                            LOBYTE(v231) = v355;
                                          }
                                        }

                                        if ((v258 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0)
                                        {
                                          if (*(v3 + 407))
                                          {
                                            v275 = *(v3 + 4344);
                                            if (v275)
                                            {
                                              LODWORD(v357) = v257;
                                              if (v275 == 1)
                                              {
                                                v276 = 1136;
                                                v277 = 1112;
                                              }

                                              else
                                              {
                                                v276 = 1128;
                                                v277 = 1120;
                                              }

                                              LODWORD(v355) = v233;
                                              v278 = *(v3 + v276);
                                              v279 = *(v3 + v277);
                                              v280 = *(*(v3 + 2154) + 16) + 4 * *(v3 + 129);
                                              v376.mSampleTime = *(*(v3 + 2154) + 16);
                                              v376.mHostTime = v280;
                                              VPTimeFreqConverter_Analyze(*(v3 + 2158), *(v279 + 40), &v376);
                                              v281 = *(*(v3 + 2154) + 32) + 4 * *(v3 + 129);
                                              v376.mSampleTime = *(*(v3 + 2154) + 32);
                                              v376.mHostTime = v281;
                                              VPTimeFreqConverter_Analyze(*(v3 + 2159), *(v278 + 40), &v376);
                                              *&v379.mNumberBuffers = *(v3 + 2154);
                                              v382 = *&v379.mNumberBuffers;
                                              v366 = 512;
                                              v282 = *&a2->mRateScalar;
                                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                              *&inInputBufferLists.mRateScalar = v282;
                                              v283 = *&a2->mSMPTETime.mHours;
                                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                              *&inInputBufferLists.mSMPTETime.mHours = v283;
                                              v284 = AudioUnitProcessMultiple(*(v3 + 407), &v366, &inInputBufferLists, *(v3 + 129), 1u, &v379, 1u, &v382);
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Fu, *(v3 + 129), *(v3 + 2154), &inInputBufferLists);
                                              }

                                              v285 = *(v3 + 2155);
                                              v288 = *(v285 + 12);
                                              v286 = v285 + 12;
                                              v287 = v288;
                                              v289 = *(v286 + 4);
                                              if ((v284 || AudioUnitGetProperty(*(v3 + 407), 0x15FEu, 0, 0, *(v286 + 4), v286)) && v287 >= 4)
                                              {
                                                memset_pattern16(v289, &unk_2727568B0, v287 & 0xFFFFFFFC);
                                              }

                                              v257 = v357;
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x70u, *(v3 + 129), *(v3 + 2155), &inInputBufferLists);
                                              }

                                              v258 = *(v3 + 586);
                                              LOBYTE(v233) = v355;
                                            }
                                          }
                                        }

                                        if ((v258 & 0x80000000000) == 0)
                                        {
                                          goto LABEL_611;
                                        }

                                        if ((*(v3 + 4709) & 8) == 0 || (v290 = *(v3 + 392)) == 0)
                                        {
LABEL_593:
                                          if ((*(v3 + 4709) & 8) != 0 && ((*(v3 + 392) != 0) & v232) == 1)
                                          {
                                            v304 = *(*(v3 + 505) + 16);
                                            vDSP_vmin(*(*(v3 + 503) + 16), 1, v304, 1, v304, 1, *(v3 + 129));
                                            v305 = *(v3 + 586);
                                            if ((v305 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0 && *(v3 + 406))
                                            {
                                              vDSP_vmin(*(*(v3 + 506) + 16), 1, v304, 1, v304, 1, *(v3 + 129));
                                              v305 = *(v3 + 586);
                                            }

                                            if ((v305 & 0x100000000000000) != 0 && (*(v3 + 4711) & 1) != 0 && *(v3 + 405))
                                            {
                                              vDSP_vmin(*(*(v3 + 507) + 16), 1, v304, 1, v304, 1, *(v3 + 129));
                                              v305 = *(v3 + 586);
                                            }

                                            if ((v305 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0 && *(v3 + 407))
                                            {
                                              vDSP_vmin(*(*(v3 + 2155) + 16), 1, v304, 1, v304, 1, *(v3 + 129));
                                              v305 = *(v3 + 586);
                                            }

                                            v306 = v233;
                                            if ((v305 & 0x8000000000000) != 0 && (*(v3 + 4710) & 8) != 0 && *(v3 + 400))
                                            {
                                              vDSP_vmin(*(*(v3 + 2156) + 16), 1, v304, 1, v304, 1, *(v3 + 129));
                                            }

                                            v233 = *(*(v3 + 430) + 16);
                                            v307 = *(*(v3 + 431) + 16);
                                            MEMORY[0x2743CCDD0](v233, 1, v304, 1, v307, 1, *(v3 + 129));
                                            MEMORY[0x2743CCDD0](v233 + 4 * *(v3 + 129) + 4, 1, v304 + 1, 1, v307 + 4 * *(v3 + 129) + 4, 1, (*(v3 + 129) - 1));
                                            *(v233 + 4 * *(v3 + 129)) = *(v233 + 4 * *(v3 + 129)) * v304[*(v3 + 129) - 1];
                                            LOBYTE(v233) = v306;
                                            goto LABEL_613;
                                          }

                                          if ((*(v3 + 4709) & 8) != 0)
                                          {
                                            if ((*(v3 + 392) != 0) | v231 & 1)
                                            {
                                              goto LABEL_613;
                                            }

                                            goto LABEL_612;
                                          }

LABEL_611:
                                          if (v231)
                                          {
LABEL_613:
                                            if (((v233 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 392)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 129), *(v3 + 431), &buf);
                                            }

                                            if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                                            {
                                              v309 = *(v3 + 409);
                                              if (v309)
                                              {
                                                if (*(v3 + 3134) == 13)
                                                {
                                                  v310 = *(v3 + 2169);
                                                  *v310 = v367;
                                                  v311 = *(v3 + 4320);
                                                  v312 = *(v3 + 129);
                                                  v313 = v311 % v312;
                                                  v314 = vcvtms_u32_f32(v311 / v312);
                                                  if (v313)
                                                  {
                                                    v315 = ((v313 / v312) * v310[v314 + 1]) + ((1.0 - (v313 / v312)) * v310[v314]);
                                                  }

                                                  else
                                                  {
                                                    v315 = v310[v314];
                                                  }

                                                  v367 = v315;
                                                  memmove(v310 + 1, v310, *(v3 + 2170) - v310 - 4);
                                                  v309 = *(v3 + 409);
                                                }

                                                AudioUnitSetParameter(v309, 0, 0, 0, *(v3 + 3153), 0);
                                                AudioUnitSetParameter(*(v3 + 409), 4u, 0, 0, *(v3 + 1054), 0);
                                                AudioUnitSetParameter(*(v3 + 409), 0x13u, 0, 0, *(v3 + 1058), 0);
                                                AudioUnitSetParameter(*(v3 + 409), 3u, 0, 0, v367, 0);
                                                AudioUnitSetParameter(*(v3 + 409), 0xEu, 0, 0, *(v3 + 580), 0);
                                                if (*(v3 + 3134) == 13)
                                                {
                                                  v316 = *(v3 + 514);
                                                  v376.mSampleTime = *(v3 + 420);
                                                  v376.mHostTime = v316;
                                                  v317 = *(v3 + 434);
                                                  v376.mRateScalar = *(v3 + 2167);
                                                  v376.mWordClockTime = v317;
                                                  *&v376.mSMPTETime.mSubframes = 0;
                                                  *&v376.mSMPTETime.mType = *(v3 + 2166);
                                                  *&v379.mNumberBuffers = 0;
                                                  v366 = 512;
                                                  v318 = *&a2->mRateScalar;
                                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                                  *&inInputBufferLists.mRateScalar = v318;
                                                  v319 = *&a2->mSMPTETime.mHours;
                                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                  *&inInputBufferLists.mSMPTETime.mHours = v319;
                                                  AudioUnitProcessMultiple(*(v3 + 409), &v366, &inInputBufferLists, *(v3 + 129), 6u, &v376, 1u, &v379);
                                                  LODWORD(v382) = 0;
                                                  LODWORD(v372) = 4;
                                                  AudioUnitGetProperty(*(v3 + 409), 0x15u, 0, 0, &v382, &v372);
                                                  if (!v382)
                                                  {
                                                    LODWORD(v370) = 0;
                                                    AudioUnitGetParameter(*(v3 + 409), 0xBu, 0, 0, &v370);
                                                    MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &v370, *(*(v3 + 137) + 16), 1, *(v3 + 129));
                                                  }
                                                }

                                                else
                                                {
                                                  v320 = *(v3 + 514);
                                                  v376.mSampleTime = *(v3 + 420);
                                                  v376.mHostTime = v320;
                                                  v321 = *(v3 + 513);
                                                  v376.mRateScalar = *(v3 + 431);
                                                  v376.mWordClockTime = v321;
                                                  *&v376.mSMPTETime.mSubframes = *(v3 + 503);
                                                  *&v376.mSMPTETime.mType = *(v3 + 505);
                                                  *&v379.mNumberBuffers = *(v3 + 137);
                                                  v366 = 512;
                                                  v322 = *&a2->mRateScalar;
                                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                                  *&inInputBufferLists.mRateScalar = v322;
                                                  v323 = *&a2->mSMPTETime.mHours;
                                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                  *&inInputBufferLists.mSMPTETime.mHours = v323;
                                                  AudioUnitProcessMultiple(*(v3 + 409), &v366, &inInputBufferLists, *(v3 + 129), 6u, &v376, 1u, &v379);
                                                }

                                                LODWORD(inInputBufferLists.mSampleTime) = 0;
                                                AudioUnitGetParameter(*(v3 + 409), 1u, 0, 0, &inInputBufferLists);
                                                *(v3 + 3154) = LODWORD(inInputBufferLists.mSampleTime);
                                                if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
                                                {
                                                  AudioUnitGetParameter(*(v3 + 409), 2u, 0, 0, &v367);
                                                  AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v367, 0);
                                                }
                                              }
                                            }

                                            goto LABEL_638;
                                          }

LABEL_612:
                                          LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                          v308 = *(v3 + 129);
                                          vDSP_vfill(&inInputBufferLists, *(*(v3 + 505) + 16), 1, v308);
                                          memcpy(*(*(v3 + 431) + 16), *(*(v3 + 430) + 16), 8 * v308);
                                          goto LABEL_613;
                                        }

                                        AudioUnitSetParameter(v290, 6u, 0, 0, *(v3 + 1062), 0);
                                        AudioUnitSetParameter(*(v3 + 392), 7u, 0, 0, *(v3 + 1066), 0);
                                        AudioUnitSetParameter(*(v3 + 392), 0xDu, 0, 0, *(v3 + 1070), 0);
                                        v291 = *(v3 + 434);
                                        v376.mSampleTime = *(v3 + 430);
                                        v376.mHostTime = v291;
                                        v292 = *(v3 + 505);
                                        v376.mRateScalar = *(v3 + 515);
                                        v376.mWordClockTime = v292;
                                        *&v376.mSMPTETime.mSubframes = v244;
                                        *&v376.mSMPTETime.mType = 0;
                                        if ((v232 & 1) == 0)
                                        {
                                          v376.mWordClockTime = 0;
                                        }

                                        v293 = *(v3 + 513);
                                        *&v379.mNumberBuffers = 0;
                                        *&v379.mBuffers[0].mNumberChannels = v293;
                                        v379.mBuffers[0].mData = 0;
                                        v294 = *(v3 + 586);
                                        if ((v294 & 0x4000000) != 0 && (v295 = *(v3 + 588), (v295 & 0x4000000) != 0) && (v297 = *(v3 + 375)) != 0 && (v294 & v295 & 0x400000) != 0 && *(v3 + 371))
                                        {
                                          v296 = v257;
                                          LODWORD(inInputBufferLists.mSampleTime) = 0;
                                          *&v376.mSMPTETime.mType = *(v3 + 511);
                                          AudioUnitGetParameter(v297, 0x2Du, 0, 0, &inInputBufferLists);
                                          AudioUnitSetParameter(*(v3 + 392), 0x2Au, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                          AudioUnitGetParameter(*(v3 + 371), 0x2Du, 0, 0, &inInputBufferLists);
                                          AudioUnitSetParameter(*(v3 + 392), 0x29u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                        }

                                        else
                                        {
                                          v296 = v257;
                                          if ((v294 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v360 == 1.0)
                                          {
                                            *&v376.mSMPTETime.mType = *(v3 + 2143);
                                          }
                                        }

                                        if (v232)
                                        {
                                          v298 = 3464;
                                        }

                                        else
                                        {
                                          v298 = 3448;
                                        }

                                        v299 = 4040;
                                        *&v379.mNumberBuffers = *(v3 + v298);
                                        if (v232)
                                        {
                                          v299 = 4024;
                                        }

                                        v379.mBuffers[0].mData = *(v3 + v299);
                                        v300 = *&a2->mRateScalar;
                                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                        *&inInputBufferLists.mRateScalar = v300;
                                        v301 = *&a2->mSMPTETime.mHours;
                                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                        *&inInputBufferLists.mSMPTETime.mHours = v301;
                                        v366 = 512;
                                        AudioUnitProcessMultiple(*(v3 + 392), &v366, &inInputBufferLists, *(v3 + 129), 6u, &v376, 3u, &v379);
                                        if ((v296 & v232 & 1) == 0)
                                        {
                                          AudioUnitGetParameter(*(v3 + 392), 0x20u, 0, 0, &v367);
                                        }

                                        v302 = *(v3 + 129);
                                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v302, *(v3 + v298), &inInputBufferLists);
                                          v302 = *(v3 + 129);
                                          v303 = *(v3 + 503);
                                          if (*(v3 + 15881))
                                          {
LABEL_591:
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v302, v303, &inInputBufferLists);
LABEL_592:
                                            if ((*(v3 + 4693) & 8) == 0)
                                            {
                                              goto LABEL_611;
                                            }

                                            goto LABEL_593;
                                          }
                                        }

                                        else
                                        {
                                          v303 = *(v3 + 503);
                                        }

                                        if (*(v3 + 15882) != 1)
                                        {
                                          goto LABEL_592;
                                        }

                                        goto LABEL_591;
                                      }

                                      v250 = *(v3 + 404);
                                      v251 = 9;
                                    }

                                    AudioUnitGetParameter(v250, v251, 0, 0, &v374);
                                    AudioUnitSetParameter(*(v3 + 414), 0x12u, 0, 0, *&v374, 0);
                                    goto LABEL_520;
                                  }

                                  LODWORD(v382) = 1092616192;
                                  if ((v214 & v215 & 0x80000000000000) != 0)
                                  {
                                    v213 = *(v3 + 404);
                                    if (v213)
                                    {
                                      v213 = AudioUnitGetParameter(v213, 9u, 0, 0, &v382);
                                      v214 = *(v3 + 586);
                                    }
                                  }

                                  if ((v214 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 381))
                                  {
                                    LODWORD(inInputBufferLists.mSampleTime) = 0;
                                    LODWORD(v376.mSampleTime) = 0;
                                    v379.mNumberBuffers = 0;
                                    AudioUnitGetParameter(*(v3 + 382), 0x18u, 0, 0, &inInputBufferLists);
                                    AudioUnitGetParameter(*(v3 + 382), 0x19u, 0, 0, &v376);
                                    AudioUnitGetParameter(*(v3 + 382), 5u, 0, 0, &v379.mNumberBuffers);
                                    AudioUnitSetParameter(*(v3 + 395), 3u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                    AudioUnitSetParameter(*(v3 + 395), 4u, 0, 0, *&v376.mSampleTime, 0);
                                    AudioUnitSetParameter(*(v3 + 395), 5u, 0, 0, *&v379.mNumberBuffers, 0);
                                    v213 = AudioUnitSetParameter(*(v3 + 395), 6u, 0, 0, *&v382, 0);
                                  }

                                  MEMORY[0x28223BE20](v213);
                                  v350 = 0;
                                  *(&v351 - 3) = 0u;
                                  *(&v351 - 2) = 0u;
                                  *(&v351 - 12) = 2;
                                  v216 = *(v3 + 430);
                                  *(&v351 - 4) = *(v216 + 16);
                                  *(&v351 - 5) = *(v216 + 8);
                                  v217 = *(v3 + 433);
                                  v350 = *(v217 + 16);
                                  *(&v351 - 3) = *(v217 + 8);
                                  *&v219 = MEMORY[0x28223BE20](v218);
                                  *(&v351 - 3) = v219;
                                  *(&v351 - 2) = v219;
                                  *(&v351 - 12) = v220;
                                  MEMORY[0x28223BE20](v221);
                                  *(&v351 - 3) = 0;
                                  v350 = 0;
                                  *(&v351 - 4) = 0;
                                  *(&v351 - 8) = 1;
                                  v222 = *(v3 + 434);
                                  *(v223 - 32) = *(v222 + 16);
                                  *(v223 - 40) = *(v222 + 8);
                                  v224 = *(v3 + 508);
                                  *(v223 - 16) = *(v224 + 32);
                                  *(v223 - 24) = *(v224 + 24);
                                  v350 = *(v222 + 16);
                                  *(&v351 - 3) = *(v222 + 8);
                                  v376.mSampleTime = v225;
                                  v376.mHostTime = v226;
                                  *&v379.mNumberBuffers = v225;
                                  *&v379.mBuffers[0].mNumberChannels = &v351 - 4;
                                  v227 = *&a2->mRateScalar;
                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                  *&inInputBufferLists.mRateScalar = v227;
                                  v228 = *&a2->mSMPTETime.mHours;
                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                  *&inInputBufferLists.mSMPTETime.mHours = v228;
                                  v366 = 512;
                                  AudioUnitProcessMultiple(*(v3 + 395), &v366, &inInputBufferLists, *(v3 + 129), 2u, &v376, 2u, &v379);
                                  v229 = *(v3 + 129);
                                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                  {
                                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v229, *(v3 + 430), &inInputBufferLists);
                                    v229 = *(v3 + 129);
                                    v230 = *(v3 + 433);
                                    if (*(v3 + 15881))
                                    {
                                      goto LABEL_469;
                                    }
                                  }

                                  else
                                  {
                                    v230 = *(v3 + 433);
                                  }

                                  if (*(v3 + 15882) != 1)
                                  {
LABEL_470:
                                    v214 = *(v3 + 586);
                                    goto LABEL_471;
                                  }

LABEL_469:
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v229, v230, &inInputBufferLists);
                                  goto LABEL_470;
                                }

                                v351 = v193;
                                v352 = v162;
                                v353 = v161;
                                LODWORD(v354) = v158;
                                LODWORD(v355) = v159;
                                v209 = 0;
                                v377 = *(v3 + 527);
                                LODWORD(v378) = *(v3 + 1057);
                                v374 = *(v3 + 529);
                                v375 = *(v3 + 1061);
                                v372 = *(v3 + 531);
                                v373 = *(v3 + 1065);
                                v370 = *(v3 + 533);
                                v371 = *(v3 + 1069);
                                v368 = *(v3 + 535);
                                v369 = *(v3 + 1073);
                                do
                                {
                                  AudioUnitSetParameter(*(v3 + 386), 0x64u, 4u, v209, *(&v377 + v209), 0);
                                  AudioUnitSetParameter(*(v3 + 386), 0x65u, 4u, v209, *(&v374 + v209), 0);
                                  AudioUnitSetParameter(*(v3 + 386), 0x66u, 4u, v209, *(&v372 + v209), 0);
                                  AudioUnitSetParameter(*(v3 + 386), 0x67u, 4u, v209, *(&v370 + v209), 0);
                                  AudioUnitSetParameter(*(v3 + 386), 0x68u, 4u, v209, *(&v368 + v209), 0);
                                  ++v209;
                                }

                                while (v209 != 3);
                                *&v379.mNumberBuffers = 1;
                                *&v379.mBuffers[0].mNumberChannels = 0;
                                v379.mBuffers[0].mData = 0;
                                v379.mBuffers[0] = *(*(v3 + 508) + 8);
                                v382 = v351;
                                v383 = v357;
                                v376.mSampleTime = *(v3 + 430);
                                v376.mHostTime = &v379;
                                v376.mRateScalar = 0.0;
                                v376.mWordClockTime = 0;
                                v366 = 512;
                                v210 = *&a2->mRateScalar;
                                *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                *&inInputBufferLists.mRateScalar = v210;
                                v211 = *&a2->mSMPTETime.mHours;
                                *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                *&inInputBufferLists.mSMPTETime.mHours = v211;
                                AudioUnitProcessMultiple(*(v3 + 386), &v366, &inInputBufferLists, *(v3 + 129), 2u, &v382, 4u, &v376);
                                v358 = 0.0;
                                AudioUnitGetParameter(*(v3 + 386), 0xAu, 0, 0, &v358);
                                v212 = *(v3 + 129);
                                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v212, *(v3 + 430), &inInputBufferLists);
                                  v212 = *(v3 + 129);
                                  v159 = v355;
                                  v161 = v353;
                                  v158 = v354;
                                  v162 = v352;
                                  if (*(v3 + 15881))
                                  {
                                    goto LABEL_439;
                                  }
                                }

                                else
                                {
                                  v159 = v355;
                                  v161 = v353;
                                  v158 = v354;
                                  v162 = v352;
                                }

                                if (*(v3 + 15882) != 1)
                                {
LABEL_440:
                                  AudioUnitGetParameter(*(v3 + 386), 0x64u, 4u, 0, v3 + 1054);
                                  AudioUnitGetParameter(*(v3 + 386), 0x65u, 4u, 0, v3 + 1058);
                                  AudioUnitGetParameter(*(v3 + 386), 0x66u, 4u, 0, v3 + 1062);
                                  AudioUnitGetParameter(*(v3 + 386), 0x67u, 4u, 0, v3 + 1066);
                                  AudioUnitGetParameter(*(v3 + 386), 0x68u, 4u, 0, v3 + 1070);
                                  goto LABEL_441;
                                }

LABEL_439:
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v212, &v379, &inInputBufferLists);
                                goto LABEL_440;
                              }

                              v351 = v193;
                              v352 = v162;
                              v353 = v161;
                              LODWORD(v354) = v158;
                              LODWORD(v355) = v159;
                              v205 = 0;
                              v382 = *(v3 + 527);
                              LODWORD(v383) = *(v3 + 1057);
                              v377 = *(v3 + 529);
                              LODWORD(v378) = *(v3 + 1061);
                              v374 = *(v3 + 531);
                              v375 = *(v3 + 1065);
                              v372 = *(v3 + 533);
                              v373 = *(v3 + 1069);
                              v370 = *(v3 + 535);
                              v371 = *(v3 + 1073);
                              do
                              {
                                AudioUnitSetParameter(*(v3 + 384), 0x12u, 4u, v205, *(&v382 + v205), 0);
                                AudioUnitSetParameter(*(v3 + 384), 0x13u, 4u, v205, *(&v377 + v205), 0);
                                AudioUnitSetParameter(*(v3 + 384), 0x14u, 4u, v205, *(&v374 + v205), 0);
                                AudioUnitSetParameter(*(v3 + 384), 0x15u, 4u, v205, *(&v372 + v205), 0);
                                AudioUnitSetParameter(*(v3 + 384), 0x16u, 4u, v205, *(&v370 + v205), 0);
                                ++v205;
                              }

                              while (v205 != 3);
                              v193 = v351;
                              *&v376.mSampleTime = v351;
                              v376.mHostTime = v357;
                              *&v379.mNumberBuffers = v351;
                              *&v379.mBuffers[0].mNumberChannels = v357;
                              v366 = 512;
                              v206 = *&a2->mRateScalar;
                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                              *&inInputBufferLists.mRateScalar = v206;
                              v207 = *&a2->mSMPTETime.mHours;
                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                              *&inInputBufferLists.mSMPTETime.mHours = v207;
                              AudioUnitProcessMultiple(*(v3 + 384), &v366, &inInputBufferLists, *(v3 + 129), 2u, &v376, 2u, &v379);
                              v208 = *(v3 + 129);
                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v208, v193, &inInputBufferLists);
                                v208 = *(v3 + 129);
                                v159 = v355;
                                v161 = v353;
                                v158 = v354;
                                v162 = v352;
                                if (*(v3 + 15881))
                                {
                                  goto LABEL_426;
                                }
                              }

                              else
                              {
                                v159 = v355;
                                v161 = v353;
                                v158 = v354;
                                v162 = v352;
                              }

                              if (*(v3 + 15882) != 1)
                              {
LABEL_427:
                                v198 = *(v3 + 586);
                                goto LABEL_428;
                              }

LABEL_426:
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v208, v357, &inInputBufferLists);
                              goto LABEL_427;
                            }

                            v351 = (&v351 - 8);
                            v352 = v162;
                            v353 = v161;
                            LODWORD(v354) = v158;
                            LODWORD(v355) = v159;
                            v201 = 0;
                            v382 = *(v3 + 527);
                            LODWORD(v383) = *(v3 + 1057);
                            v377 = *(v3 + 529);
                            LODWORD(v378) = *(v3 + 1061);
                            v374 = *(v3 + 531);
                            v375 = *(v3 + 1065);
                            v372 = *(v3 + 533);
                            v373 = *(v3 + 1069);
                            v370 = *(v3 + 535);
                            v371 = *(v3 + 1073);
                            do
                            {
                              AudioUnitSetParameter(*(v3 + 383), 9u, 4u, v201, *(&v382 + v201), 0);
                              AudioUnitSetParameter(*(v3 + 383), 0xAu, 4u, v201, *(&v377 + v201), 0);
                              AudioUnitSetParameter(*(v3 + 383), 0xBu, 4u, v201, *(&v374 + v201), 0);
                              AudioUnitSetParameter(*(v3 + 383), 0xCu, 4u, v201, *(&v372 + v201), 0);
                              AudioUnitSetParameter(*(v3 + 383), 0xDu, 4u, v201, *(&v370 + v201), 0);
                              ++v201;
                            }

                            while (v201 != 3);
                            v193 = v351;
                            *&v376.mSampleTime = v351;
                            v376.mHostTime = v357;
                            *&v379.mNumberBuffers = v351;
                            *&v379.mBuffers[0].mNumberChannels = v357;
                            v366 = 512;
                            v202 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v202;
                            v203 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v203;
                            AudioUnitProcessMultiple(*(v3 + 383), &v366, &inInputBufferLists, *(v3 + 129), 2u, &v376, 2u, &v379);
                            v204 = *(v3 + 129);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v204, v193, &inInputBufferLists);
                              v204 = *(v3 + 129);
                              v159 = v355;
                              v161 = v353;
                              v158 = v354;
                              v162 = v352;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_413;
                              }
                            }

                            else
                            {
                              v159 = v355;
                              v161 = v353;
                              v158 = v354;
                              v162 = v352;
                            }

                            if (*(v3 + 15882) != 1)
                            {
LABEL_414:
                              v198 = *(v3 + 586);
                              goto LABEL_415;
                            }

LABEL_413:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v204, v357, &inInputBufferLists);
                            goto LABEL_414;
                          }

                          if ((v149 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 381))
                          {
                            goto LABEL_392;
                          }

                          memcpy(*(*(v3 + 436) + 16), *(*(v3 + 430) + 16), 8 * *(v3 + 129));
                          memcpy(*(*(v3 + 436) + 32), *(*(v3 + 510) + 16), 8 * *(v3 + 129));
                          v374 = *(v3 + 436);
                          v182 = *(v3 + 435);
                          v382 = *(v3 + 431);
                          v383 = v182;
                          v183 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v183;
                          v184 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v184;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 381), &v366, &inInputBufferLists, *(v3 + 129), 1u, &v374, 2u, &v382);
                          v185 = *(v3 + 129);
                          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                          {
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v185, v382, &inInputBufferLists);
                            v185 = *(v3 + 129);
                            v186 = v383;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_376;
                            }
                          }

                          else
                          {
                            v186 = v383;
                          }

                          if (*(v3 + 15882) != 1)
                          {
LABEL_377:
                            if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 382))
                            {
                              goto LABEL_392;
                            }

                            memcpy(*(*(v3 + 437) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                            memcpy(*(*(v3 + 432) + 16), *(*(v3 + 433) + 16), 4 * (2 * *(v3 + 129)));
                            LODWORD(v372) = 1092616192;
                            LODWORD(v370) = 1084227584;
                            v187 = *(v3 + 435);
                            *&v379.mNumberBuffers = *(v3 + 431);
                            *&v379.mBuffers[0].mNumberChannels = v187;
                            v188 = *(v3 + 510);
                            v379.mBuffers[0].mData = *(v3 + 437);
                            v380 = v188;
                            v381 = *(v3 + 432);
                            v189 = *(v3 + 433);
                            v377 = *(v3 + 430);
                            v378 = v189;
                            if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                            {
                              v190 = *(v3 + 404);
                              if (v190)
                              {
                                AudioUnitGetParameter(v190, 9u, 0, 0, &v372);
                              }
                            }

                            AudioUnitGetParameter(*(v3 + 381), 0xEu, 4u, 0, &v370);
                            AudioUnitSetParameter(*(v3 + 382), 0xAu, 0, 0, *&v372, 0);
                            AudioUnitSetParameter(*(v3 + 382), 0x17u, 0, 0, *(v3 + 4189), 0);
                            AudioUnitSetParameter(*(v3 + 382), 0x1Au, 0, 0, *&v370, 0);
                            v191 = *&a2->mRateScalar;
                            *&v376.mSampleTime = *&a2->mSampleTime;
                            *&v376.mRateScalar = v191;
                            v192 = *&a2->mSMPTETime.mHours;
                            *&v376.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&v376.mSMPTETime.mHours = v192;
                            Parameter = AudioUnitProcessMultiple(*(v3 + 382), &v366, &v376, *(v3 + 129), 5u, &v379, 2u, &v377);
                            v177 = *(v3 + 129);
                            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                            {
                              Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v177, v377, &v376);
                              v177 = *(v3 + 129);
                              v178 = v378;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_391;
                              }
                            }

                            else
                            {
                              v178 = v378;
                            }

                            if (*(v3 + 15882) != 1)
                            {
                              goto LABEL_392;
                            }

LABEL_391:
                            p_inInputBufferLists = &v376;
                            v180 = v3;
                            v181 = 27;
                            goto LABEL_364;
                          }

LABEL_376:
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v185, v186, &inInputBufferLists);
                          goto LABEL_377;
                        }
                      }

                      else
                      {
                        v165 = *(v3 + 379);
                      }

                      v166 = 2.0;
                      goto LABEL_345;
                    }

                    v151 = *(v3 + 1063);
                    if (v151 == 0.0)
                    {
                      v152 = *(*(v3 + 437) + 16) + 4 * *(v3 + 129);
                      inInputBufferLists.mSampleTime = *(*(v3 + 437) + 16);
                      inInputBufferLists.mHostTime = v152;
                      VPTimeFreqConverter_Analyze(*(v3 + 2109), *(*(v3 + 426) + 16), &inInputBufferLists);
                      v151 = *(v3 + 1063);
                      Parameter = *(v3 + 393);
                    }

                    AudioUnitSetParameter(Parameter, 6u, 0, 0, v151, 0);
                    AudioUnitSetParameter(*(v3 + 393), 7u, 0, 0, *(v3 + 1067), 0);
                    AudioUnitSetParameter(*(v3 + 393), 0xDu, 0, 0, *(v3 + 1071), 0);
                    memcpy(*(*(v3 + 435) + 16), *(*(v3 + 508) + 32), *(v3 + 1079));
                    v153 = *(v3 + 435);
                    v376.mSampleTime = *(v3 + 509);
                    v376.mHostTime = v153;
                    v376.mRateScalar = *(v3 + 515);
                    memset(&v376.mWordClockTime, 0, 24);
                    *&v379.mNumberBuffers = *(v3 + 433);
                    *&v379.mBuffers[0].mNumberChannels = 0;
                    v379.mBuffers[0].mData = *(v3 + 504);
                    v154 = *&a2->mRateScalar;
                    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                    *&inInputBufferLists.mRateScalar = v154;
                    v155 = *&a2->mSMPTETime.mHours;
                    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&inInputBufferLists.mSMPTETime.mHours = v155;
                    v366 = 512;
                    Parameter = AudioUnitProcessMultiple(*(v3 + 393), &v366, &inInputBufferLists, *(v3 + 129), 6u, &v376, 3u, &v379);
                    v156 = *(v3 + 129);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v156, *(v3 + 433), &inInputBufferLists);
                      v156 = *(v3 + 129);
                      v157 = *(v3 + 504);
                      if (*(v3 + 15881))
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      v157 = *(v3 + 504);
                    }

                    if (*(v3 + 15882) != 1)
                    {
LABEL_312:
                      v149 = *(v3 + 586);
                      goto LABEL_313;
                    }

LABEL_311:
                    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v156, v157, &inInputBufferLists);
                    goto LABEL_312;
                  }

LABEL_712:
                  std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
                }
              }

              else
              {
                v124 = *(v3 + 423);
              }

              if (*(v3 + 15882) != 1)
              {
                goto LABEL_243;
              }

              goto LABEL_242;
            }
          }

          else
          {
            v107 = *(v3 + 2149);
          }

          if (*(v3 + 15882) != 1)
          {
            goto LABEL_180;
          }

          goto LABEL_179;
        }

        v102 = *(v3 + 2110);
        if ((*(v3 + 2111) - v102) <= 0x20)
        {
          goto LABEL_712;
        }

        ECApplicator::apply(*(v102 + 32), &buf, v78, &v365, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
        v103 = *(v3 + 129);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v103, *(v3 + 137), &buf);
          v103 = *(v3 + 129);
          v104 = *(v3 + 424);
          if (*(v3 + 15881))
          {
LABEL_164:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v103, v104, &buf);
            LODWORD(v103) = *(v3 + 129);
            v104 = *(v3 + 424);
LABEL_165:
            inInputBufferLists.mSampleTime = *(*(v3 + 511) + 16);
            inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v103;
            VPTimeFreqConverter_Analyze(*(v3 + 2142), *(v104 + 16), &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 129), *(v3 + 511), &buf);
            }

            v86 = *(v3 + 586);
            goto LABEL_169;
          }
        }

        else
        {
          v104 = *(v3 + 424);
        }

        if (*(v3 + 15882) != 1)
        {
          goto LABEL_165;
        }

        goto LABEL_164;
      }

      v77 = *(v3 + 3134);
      if (v76 != 3)
      {
        if (v77 == 2)
        {
          v78 = 0;
          v79 = 1;
          v80 = 3;
          v81 = 2;
          v82 = 56;
          v83 = 40;
          goto LABEL_124;
        }

        v77 = *(v3 + 3134);
        if (v77 <= 0xC && ((0x1028u >> v77) & 1) != 0)
        {
          v78 = 0;
          v79 = 3;
          v80 = 2;
          v81 = 1;
          v82 = 40;
          v83 = 24;
          goto LABEL_124;
        }
      }

      if ((v77 | 4) != 0xD)
      {
        v81 = 0;
        v80 = 0;
        v78 = 1;
        v79 = 2;
LABEL_125:
        v85 = v75 + 8;
        *(v3 + 1057) = *(v85 + 16 * v78);
        *(v3 + 16936) = *(v85 + 16 * v79);
        goto LABEL_126;
      }

      v84 = *(v3 + 600);
      v78 = 1;
      v80 = 3;
      v81 = 2;
      v82 = 56;
      v83 = 40;
      if (v84 == 1781740087)
      {
        v79 = 2;
      }

      else
      {
        v79 = 2;
        if (v84 != 1781805623)
        {
          v78 = 0;
          v79 = 1;
          v80 = 2;
          v81 = 3;
          v82 = 40;
          v83 = 56;
        }
      }

LABEL_124:
      *(v3 + 1060) = *(v75 + v83);
      *(v3 + 16984) = *(v75 + v82);
      goto LABEL_125;
    }
  }

  v13 = 0;
  while (((*(v3 + 118) >> v13) & 1) == 0)
  {
    if (++v13 == 32)
    {
      v13 = 33;
      break;
    }
  }

  v14 = *(v3 + 136);
  if (v13 >= *v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = **(v3 + 136);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v6.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 51;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v13;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v20 = *(v3 + 1588);
    if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v6.cpp", 51, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 136));
    }

    v15 = *(*(v3 + 137) + 16);
    v16 = *(v3 + 136);
  }

  else
  {
    v15 = *(*(v3 + 137) + 16);
    v16 = &v14[4 * v13];
  }

  memcpy(v15, v16[2], *(v16 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v21 = *(v3 + 403);
    if (v21)
    {
      v22 = *(v3 + 503);
      inInputBufferLists.mSampleTime = *(v3 + 137);
      inInputBufferLists.mHostTime = v22;
      v23 = *(v3 + 505);
      v376.mSampleTime = inInputBufferLists.mSampleTime;
      v376.mHostTime = v23;
      v24 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v24;
      v25 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v25;
      v379.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v21, &v379.mNumberBuffers, &buf, *(v3 + 129), 2u, &inInputBufferLists, 2u, &v376);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 137), &buf);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
      {
        AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v367);
        AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v367, 0);
      }
    }
  }

LABEL_638:
  v379.mNumberBuffers = 0;
  v324 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v325 = v324;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 2053) != 0) | v324 & 1))
    {
      goto LABEL_654;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v325 & 1) == 0)
    {
      goto LABEL_654;
    }
  }

  else
  {
    if ((v324 & 1) == 0)
    {
      goto LABEL_654;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v326 = *(v3 + 586);
  if ((v326 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v327 = *(v3 + 410);
    if (v327)
    {
      v328 = 1936748646;
LABEL_652:
      AudioUnitGetParameter(v327, v328, 0, 0, &v379.mNumberBuffers);
      goto LABEL_654;
    }
  }

  if ((v326 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v327 = *(v3 + 409);
    if (v327)
    {
      v328 = 2;
      goto LABEL_652;
    }
  }

  *&v379.mNumberBuffers = v367;
LABEL_654:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 137) + 16), 4 * *(v3 + 129));
    v379.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 4108) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v329 = *(v3 + 454);
    if (((v329 != 0) & v325) == 1)
    {
      AudioUnitSetParameter(v329, 0x12u, 0, 0, *&v379.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 129), *(v3 + 137), a2);
  }

  if ((*(v3 + 4695) & 8) != 0 && (*(v3 + 4711) & 8) != 0)
  {
    v330 = *(v3 + 408);
    if (v330)
    {
      inInputBufferLists.mSampleTime = *(v3 + 137);
      v376.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(ioOutputBufferLists.realp) = 512;
      v331 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v331;
      v332 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v332;
      AudioUnitProcessMultiple(v330, &ioOutputBufferLists, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v376);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v333 = *(v3 + 419);
    if (v333)
    {
      inInputBufferLists.mSampleTime = *(v3 + 137);
      v376.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(ioOutputBufferLists.realp) = 512;
      v334 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v334;
      v335 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v335;
      AudioUnitProcessMultiple(v333, &ioOutputBufferLists, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v376);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if ((*(v3 + 586) & 0x8000000000000000) != 0 && (*(v3 + 588) & 0x8000000000000000) != 0)
  {
    v336 = *(v3 + 412);
    if (v336)
    {
      v337 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v337;
      v338 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v338;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v336, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  v339 = *(v3 + 587);
  if (v339 & 1) != 0 && (*(v3 + 4712))
  {
    v340 = *(v3 + 413);
    if (v340)
    {
      v341 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v341;
      v342 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v342;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v340, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
      v339 = *(v3 + 587);
    }
  }

  if ((v339 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v343 = *(v3 + 414)) != 0)
  {
    v344 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v344;
    v345 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v345;
    LODWORD(inInputBufferLists.mSampleTime) = 512;
    AudioUnitProcess(v343, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 129), *(v3 + 137), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 409))
    {
      LODWORD(v376.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 414), 1u, 0, 0, &v376);
      AudioUnitSetParameter(*(v3 + 409), 0x11u, 0, 0, *&v376.mSampleTime, 0);
    }

    LODWORD(v376.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 414), 0x1Bu, 0, 0, &v376);
    mSampleTime_low = LODWORD(v376.mSampleTime);
    if (*(v3 + 577) != *&v376.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v347 = *(v3 + 409);
        if (v347)
        {
          AudioUnitSetParameter(v347, 0x12u, 0, 0, *&v376.mSampleTime, 0);
          mSampleTime_low = LODWORD(v376.mSampleTime);
        }
      }

      *(v3 + 577) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 1099) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &buf, *(*(v3 + 137) + 16), 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 129), *(v3 + 137), a2);
    }
  }

  VoiceProcessorV6::ProcessLevelDrivenSuppressor(v3, a2);
  v348 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t VoiceProcessorV6::ApplyGMCoexNoiseMitigation(VoiceProcessorV6 *this, const AudioBufferList *a2, AudioBufferList *a3, const AudioTimeStamp *a4, UInt32 a5)
{
  inInputBufferLists[1] = *MEMORY[0x277D85DE8];
  v10 = atomic_load(this + 16576);
  AudioUnitSetParameter(*(this + 355), 0x676D636Fu, 0, 0, (v10 & 1), 0);
  ioActionFlags = 512;
  ioOutputBufferLists = a3;
  inInputBufferLists[0] = a2;
  result = AudioUnitProcessMultiple(*(this + 355), &ioActionFlags, a4, a5, 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VoiceProcessorV6::ProcessLevelDrivenSuppressor(uint64_t this, AudioTimeStamp *inTimeStamp)
{
  inInputBufferLists[1] = *MEMORY[0x277D85DE8];
  if ((*(this + 4696) & 4) != 0)
  {
    v2 = this;
    if ((*(this + 4712) & 4) != 0)
    {
      this = *(this + 3320);
      if (this)
      {
        v4 = *(v2 + 1096);
        if (*v4)
        {
          v5 = 0;
          v6 = 4;
          do
          {
            v7 = *(v2 + 17416);
            v8 = *&v4[v6];
            v9 = (*(*(v2 + 17424) + v6 * 4) + 4 * *(v2 + 516));
            v17.realp = *(*(v2 + 17424) + v6 * 4);
            v17.imagp = v9;
            VPTimeFreqConverter_Analyze(v7, v8, &v17);
            ++v5;
            v4 = *(v2 + 1096);
            v6 += 4;
          }

          while (v5 < *v4);
          this = *(v2 + 3320);
        }

        ioOutputBufferLists = *(v2 + 17424);
        inInputBufferLists[0] = ioOutputBufferLists;
        ioActionFlags = 512;
        this = AudioUnitProcessMultiple(this, &ioActionFlags, inTimeStamp, *(v2 + 516), 1u, inInputBufferLists, 1u, &ioOutputBufferLists);
        v10 = *(v2 + 1096);
        if (v10->mNumberBuffers)
        {
          v11 = 0;
          v12 = 16;
          do
          {
            this = *(v2 + 17416);
            v13 = *(&v10->mNumberBuffers + v12);
            v14 = (*(*(v2 + 17424) + v12) + 4 * *(v2 + 516));
            v17.realp = *(*(v2 + 17424) + v12);
            v17.imagp = v14;
            if (this)
            {
              this = VPTimeFreqConverter::Synthesize(this, &v17, v13);
              v10 = *(v2 + 1096);
            }

            ++v11;
            v12 += 16;
          }

          while (v11 < v10->mNumberBuffers);
        }

        if ((*(v2 + 15881) & 1) != 0 || *(v2 + 15882) == 1)
        {
          this = VoiceProcessorV2::SaveFilesWriteSignal(v2, 0x2Eu, *(v2 + 516), v10, inTimeStamp);
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t VoiceProcessorV7::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v347 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 129), *(v3 + 135)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 129), *(v3 + 136)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 135);
      v9 = (v3 + 516);
      v10 = *(v3 + 129);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 135);
    goto LABEL_19;
  }

  v6 = *(v3 + 135);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 135);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 129);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 129);
    v11 = *(v3 + 136);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 136);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 178);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 129);
  v12 = *(v3 + 178);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v328 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v26 = *(v3 + 586);
    if (v26 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v327 = 0;
      *(v3 + 2137) = 0;
      *(v3 + 2139) = 0;
      *(v3 + 2138) = 0;
      *(v3 + 4274) = 1;
      *(v3 + 1069) = *(*(v3 + 135) + 8);
      if (v26 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 349);
        if (this)
        {
          v27 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v27;
          v28 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v28;
          v327 = 512;
          this = AudioUnitProcess(this, &v327, &buf, *(v3 + 129), *(v3 + 136));
        }
      }

      v29 = 24 * **(v3 + 136);
      MEMORY[0x28223BE20](this);
      v31 = (&v311 - ((v30 + 15) & 0x3FFFFFFFF0));
      v32 = *(v3 + 136);
      if (*v32)
      {
        v33 = 0;
        v34 = 2;
        v35 = v31;
        do
        {
          *&v35->mNumberBuffers = 0;
          *&v35->mBuffers[0].mNumberChannels = 0;
          v35->mBuffers[0].mData = 0;
          v35->mNumberBuffers = 1;
          v35->mBuffers[0] = *&v32[v34];
          ++v33;
          v34 += 4;
          ++v35;
        }

        while (v33 < *v32);
      }

      v36 = *(v3 + 586);
      if ((v36 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v37 = *(v3 + 350);
        if (v37)
        {
          v38 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v38;
          v39 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v39;
          v327 = 512;
          AudioUnitProcess(v37, &v327, &buf, *v9, v31);
          v45 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v45, v31, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 139), v31, v45, v40, v41, v42, v43, v44, v311);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v46 = *(v3 + 351);
        if (v46)
        {
          v47 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v47;
          v48 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v48;
          v327 = 512;
          AudioUnitProcess(v46, &v327, &buf, *v9, v31 + 1);
          v54 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v54, v31 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 140), v31 + 1, v54, v49, v50, v51, v52, v53, v311);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v55 = *(v3 + 352);
        if (v55)
        {
          v56 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v56;
          v57 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v57;
          v327 = 512;
          AudioUnitProcess(v55, &v327, &buf, *v9, v31 + 2);
          v63 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v63, v31 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 141), v31 + 2, v63, v58, v59, v60, v61, v62, v311);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v64 = *(v3 + 353);
        if (v64)
        {
          v65 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v65;
          v66 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v66;
          v327 = 512;
          AudioUnitProcess(v64, &v327, &buf, *v9, v31 + 3);
          v72 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v72, v31 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 142), v31 + 3, v72, v67, v68, v69, v70, v71, v311);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 0x40) != 0 && (*(v3 + 4704) & 0x40) != 0 && *(v3 + 355))
      {
        v73 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v73;
        v74 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v74;
        VoiceProcessorV6::ApplyGMCoexNoiseMitigation(v3, *(v3 + 136), *(v3 + 136), &buf, *(v3 + 129));
      }

      v75 = *(v3 + 136);
      v76 = *v75;
      v316 = &v311;
      if (v76 < 3)
      {
        *(v3 + 1057) = *(v75 + 8);
        if (*v75 < 2u)
        {
          LODWORD(v315) = 0;
          v82 = 0;
          v79 = 0;
          v78 = 0;
        }

        else if (*(v3 + 17160) == 1)
        {
          LODWORD(v315) = 0;
          v82 = 0;
          v79 = 0;
          *(v3 + 1057) = *(v75 + 24);
          *(v3 + 16936) = *(v75 + 8);
          v78 = 1;
        }

        else
        {
          LODWORD(v315) = 0;
          v82 = 0;
          v78 = 0;
          *(v3 + 16936) = *(v75 + 24);
          v79 = 1;
        }

LABEL_124:
        v84 = *(v3 + 586);
        LODWORD(v317) = v79;
        if ((v84 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
        {
          v85 = *(v3 + 356);
          if (v85)
          {
            v86 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v86;
            v87 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v87;
            v327 = 512;
            AudioUnitProcess(v85, &v327, &buf, *(v3 + 129), (v3 + 16904));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 129), (v3 + 16904), &buf);
            }

            v84 = *(v3 + 586);
          }
        }

        if (v84 & 0x100) != 0 && (*(v3 + 4705))
        {
          v88 = *(v3 + 357);
          if (v88)
          {
            v89 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v89;
            v90 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v90;
            v327 = 512;
            AudioUnitProcess(v88, &v327, &buf, *(v3 + 129), (v3 + 16928));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 129), (v3 + 16928), &buf);
            }

            v84 = *(v3 + 586);
          }
        }

        if ((v84 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
        {
          v91 = *(v3 + 359);
          if (v91)
          {
            v92 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v92;
            v93 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v93;
            v327 = 512;
            AudioUnitProcess(v91, &v327, &buf, *(v3 + 129), (v3 + 16976));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 129), (v3 + 16976), &buf);
            }

            v84 = *(v3 + 586);
          }
        }

        if ((v84 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
        {
          v94 = *(v3 + 360);
          if (v94)
          {
            MEMORY[0x28223BE20](v94);
            *(&v311 - 6) = 2;
            *(&v311 - 5) = *(v3 + 1057);
            *(&v311 - 3) = *(v3 + 16936);
            *&v337.mSampleTime = &v311 - 6;
            v337.mHostTime = 0;
            *&inInputBufferLists.mSampleTime = v3 + 16904;
            memset(&inInputBufferLists.mHostTime, 0, 24);
            v327 = 512;
            v95 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v95;
            v96 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v96;
            AudioUnitProcessMultiple(v97, &v327, &buf, *(v3 + 129), 2u, &v337, 4u, &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 129), (v3 + 16904), &buf);
            }

            v84 = *(v3 + 586);
          }
        }

        v326 = 0;
        v98 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v98;
        v99 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v99;
        if ((v84 & 0x4000000) == 0 || (*(v3 + 4707) & 4) == 0 || !*(v3 + 375))
        {
LABEL_168:
          v325 = 0;
          if ((v84 & 0x8000000) == 0 || (*(v3 + 4707) & 8) == 0 || !*(v3 + 376))
          {
            goto LABEL_183;
          }

          v103 = *(v3 + 2110);
          if ((*(v3 + 2111) - v103) <= 0x28)
          {
            goto LABEL_668;
          }

          ECApplicator::apply(*(v103 + 40), &buf, v317, &v325, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
          v104 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x22u, v104, *(v3 + 137), &buf);
            v104 = *(v3 + 129);
            v105 = *(v3 + 2149);
            if (*(v3 + 15881))
            {
LABEL_178:
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x11u, v104, v105, &buf);
              LODWORD(v104) = *(v3 + 129);
              v105 = *(v3 + 2149);
LABEL_179:
              inInputBufferLists.mSampleTime = *(*(v3 + 512) + 16);
              inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v104;
              VPTimeFreqConverter_Analyze(*(v3 + 2157), *(v105 + 16), &inInputBufferLists);
              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x17u, *(v3 + 129), *(v3 + 512), &buf);
              }

              v84 = *(v3 + 586);
LABEL_183:
              if ((v84 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0 && *(v3 + 371))
              {
                v106 = *(v3 + 2110);
                if (*(v3 + 2111) == v106)
                {
                  goto LABEL_668;
                }

                ECApplicator::apply(*v106, &buf, v78, &v326 + 1, v3 + 1054, v3 + 1058, v3 + 1062, v3 + 1066, v3 + 1070, v3 + 1074);
                v107 = *(v3 + 129);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v107, (v3 + 16904), &buf);
                  v107 = *(v3 + 129);
                  v108 = *(v3 + 420);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_227;
                  }
                }

                else
                {
                  v108 = *(v3 + 420);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_227:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v107, v108, &buf);
                }
              }

              else
              {
                v109 = 0;
                while (((*(v3 + 118) >> v109) & 1) == 0)
                {
                  if (++v109 == 32)
                  {
                    v109 = 33;
                    break;
                  }
                }

                if (v109 >= **(v3 + 136))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v110 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                  {
                    v111 = (*v110 ? *v110 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                    {
                      v112 = **(v3 + 136);
                      LODWORD(inInputBufferLists.mSampleTime) = 136315906;
                      *(&inInputBufferLists.mSampleTime + 4) = "vpProcessUplink_v7.cpp";
                      WORD2(inInputBufferLists.mHostTime) = 1024;
                      *(&inInputBufferLists.mHostTime + 6) = 334;
                      WORD1(inInputBufferLists.mRateScalar) = 1024;
                      HIDWORD(inInputBufferLists.mRateScalar) = v109;
                      LOWORD(inInputBufferLists.mWordClockTime) = 1024;
                      *(&inInputBufferLists.mWordClockTime + 2) = v112;
                      _os_log_impl(&dword_2724B4000, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &inInputBufferLists, 0x1Eu);
                    }
                  }

                  v113 = *(v3 + 1588);
                  if (v113 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v113, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v7.cpp", 334, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v109, **(v3 + 136));
                  }

                  v109 = 0;
                }

                v114 = *(v3 + 136) + 16 * v109;
                memcpy(*(*(v3 + 137) + 16), *(v114 + 16), *(v114 + 12));
              }

              if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
              {
                v115 = *(v3 + 418);
                if (v115)
                {
                  inInputBufferLists.mSampleTime = *(v3 + 136);
                  inInputBufferLists.mHostTime = v3 + 17096;
                  v337.mSampleTime = *(v3 + 137);
                  v327 = 512;
                  AudioUnitProcessMultiple(v115, &v327, &buf, *(v3 + 129), 2u, &inInputBufferLists, 1u, &v337);
                }
              }

              v324 = 0;
              if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0 && *(v3 + 372))
              {
                v116 = *(v3 + 2110);
                if ((*(v3 + 2111) - v116) <= 8)
                {
                  goto LABEL_668;
                }

                ECApplicator::apply(*(v116 + 8), &buf, v317, &v324, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
                v117 = *(v3 + 129);
                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v117, (v3 + 16928), &buf);
                  v117 = *(v3 + 129);
                  v118 = *(v3 + 421);
                  if (*(v3 + 15881))
                  {
                    goto LABEL_230;
                  }
                }

                else
                {
                  v118 = *(v3 + 421);
                }

                if (*(v3 + 15882) == 1)
                {
LABEL_230:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v117, v118, &buf);
                }
              }

              v323 = 0;
              if ((*(v3 + 4691) & 1) == 0 || (*(v3 + 4707) & 1) == 0 || !*(v3 + 373))
              {
                goto LABEL_242;
              }

              v119 = *(v3 + 2110);
              if ((*(v3 + 2111) - v119) <= 0x10)
              {
                goto LABEL_668;
              }

              ECApplicator::apply(*(v119 + 16), &buf, v315, &v323, v3 + 1056, v3 + 1060, v3 + 1064, v3 + 1068, v3 + 1072, v3 + 1076);
              v120 = *(v3 + 129);
              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v120, (v3 + 16952), &buf);
                v120 = *(v3 + 129);
                v121 = *(v3 + 423);
                if (*(v3 + 15881))
                {
LABEL_241:
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v120, v121, &buf);
LABEL_242:
                  v322 = 0;
                  if ((*(v3 + 4691) & 2) == 0 || (*(v3 + 4707) & 2) == 0 || !*(v3 + 374))
                  {
                    goto LABEL_253;
                  }

                  v122 = *(v3 + 2110);
                  if ((*(v3 + 2111) - v122) > 0x18)
                  {
                    ECApplicator::apply(*(v122 + 24), &buf, v82, &v322, v3 + 1057, v3 + 1061, v3 + 1065, v3 + 1069, v3 + 1073, v3 + 1077);
                    v123 = *(v3 + 129);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v123, (v3 + 16976), &buf);
                      v123 = *(v3 + 129);
                      v124 = *(v3 + 422);
                      if (*(v3 + 15881))
                      {
                        goto LABEL_252;
                      }
                    }

                    else
                    {
                      v124 = *(v3 + 422);
                    }

                    if (*(v3 + 15882) == 1)
                    {
LABEL_252:
                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v123, v124, &buf);
                    }

LABEL_253:
                    if ((*(v3 + 8869) & 8) != 0 && (*(v3 + 8877) & 8) != 0)
                    {
                      if (*(v3 + 482))
                      {
                        *(v3 + 17128) = 0;
                        if (*(v3 + 4691) & 1) != 0 && (*(v3 + 4707))
                        {
                          v125 = *(v3 + 373);
                          if (v125)
                          {
                            if (*(v3 + 2140))
                            {
                              LODWORD(inInputBufferLists.mSampleTime) = 0;
                              if (!AudioUnitGetPropertyInfo(v125, 0xF3Cu, 0, 0, &inInputBufferLists, 0) && LODWORD(inInputBufferLists.mSampleTime) == 4 * *v9)
                              {
                                v126 = *(*(v3 + 2140) + 16);
                                Property = AudioUnitGetProperty(*(v3 + 373), 0xF3Cu, 0, 0, v126, &inInputBufferLists);
                                if (*(v3 + 489) == 1)
                                {
                                  AudioUnitSetProperty(*(v3 + 482), 0xF3Cu, 0, 0, v126, LODWORD(inInputBufferLists.mSampleTime));
                                }

                                *(v3 + 17128) = Property == 0;
                              }
                            }
                          }
                        }
                      }
                    }

                    v128 = (*(*(v3 + 514) + 16) + 4 * *(v3 + 129));
                    v321.realp = *(*(v3 + 514) + 16);
                    v321.imagp = v128;
                    VPTimeFreqConverter_Analyze(*(v3 + 522), *(v3 + 2139), &v321);
                    if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0)
                    {
                      if (*(v3 + 371))
                      {
                        v130 = (*(*(v3 + 430) + 16) + 4 * *(v3 + 129));
                        v321.realp = *(*(v3 + 430) + 16);
                        v321.imagp = v130;
                        VPTimeFreqConverter_Analyze(*(v3 + 516), *(v3 + 2115), &v321);
                        v131 = (*(*(v3 + 508) + 16) + 4 * *(v3 + 129));
                        v321.realp = *(*(v3 + 508) + 16);
                        v321.imagp = v131;
                        VPTimeFreqConverter_Analyze(*(v3 + 520), *(*(v3 + 420) + 16), &v321);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 129), *(v3 + 430), &buf);
                        }
                      }
                    }

                    if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0)
                    {
                      if (*(v3 + 372))
                      {
                        v132 = (*(*(v3 + 509) + 16) + 4 * *(v3 + 129));
                        v321.realp = *(*(v3 + 509) + 16);
                        v321.imagp = v132;
                        VPTimeFreqConverter_Analyze(*(v3 + 517), *(v3 + 2118), &v321);
                        v133 = (*(*(v3 + 508) + 32) + 4 * *(v3 + 129));
                        v321.realp = *(*(v3 + 508) + 32);
                        v321.imagp = v133;
                        VPTimeFreqConverter_Analyze(*(v3 + 521), *(*(v3 + 421) + 16), &v321);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 129), *(v3 + 509), &buf);
                        }
                      }
                    }

                    if ((*(v3 + 4691) & 2) != 0 && (*(v3 + 4707) & 2) != 0)
                    {
                      if (*(v3 + 374))
                      {
                        v134 = (*(*(v3 + 510) + 16) + 4 * *(v3 + 129));
                        v321.realp = *(*(v3 + 510) + 16);
                        v321.imagp = v134;
                        VPTimeFreqConverter_Analyze(*(v3 + 519), *(v3 + 2124), &v321);
                        v135 = (*(*(v3 + 508) + 64) + 4 * *(v3 + 129));
                        v321.realp = *(*(v3 + 508) + 64);
                        v321.imagp = v135;
                        VPTimeFreqConverter_Analyze(*(v3 + 2108), *(*(v3 + 422) + 16), &v321);
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 129), *(v3 + 510), &buf);
                        }
                      }
                    }

                    v320 = 0.0;
                    v136 = *(v3 + 586);
                    if ((v136 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0)
                    {
                      Parameter = *(v3 + 392);
                      if (Parameter)
                      {
                        Parameter = AudioUnitGetParameter(Parameter, 0x2Bu, 0, 0, &v320);
                        v136 = *(v3 + 586);
                      }
                    }

                    if ((v136 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v320 == 1.0)
                    {
                      v137 = (*(*(v3 + 508) + 48) + 4 * *(v3 + 129));
                      v321.realp = *(*(v3 + 508) + 48);
                      v321.imagp = v137;
                      VPTimeFreqConverter_Analyze(*(v3 + 2144), *(*(v3 + 423) + 16), &v321);
                      v136 = *(v3 + 586);
                    }

                    if ((v136 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || (Parameter = *(v3 + 393)) == 0)
                    {
LABEL_305:
                      v319 = 0;
                      if ((v136 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 379))
                      {
                        v145 = 1;
                        v146 = 1;
                      }

                      else if ((v136 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
                      {
                        v145 = 0;
                        v146 = *(v3 + 382) != 0;
                      }

                      else
                      {
                        v145 = 0;
                        v146 = 0;
                      }

                      v147 = v136 & 0x80000000;
                      if ((v136 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                      {
                        v148 = 1;
                        v145 = 1;
                        v149 = 1;
                        if ((v136 & 0x100000000) == 0)
                        {
                          goto LABEL_330;
                        }
                      }

                      else
                      {
                        if ((v136 & 0x100000000) == 0)
                        {
                          v148 = 0;
                          v149 = 1;
                          goto LABEL_330;
                        }

                        v149 = 1;
                        if (*(v3 + 4708))
                        {
                          v150 = *(v3 + 381);
                          v148 = v150 != 0;
                          if (v150)
                          {
                            v149 = 2;
                          }

                          else
                          {
                            v149 = 1;
                          }
                        }

                        else
                        {
                          v148 = 0;
                        }
                      }

                      v151 = *(v3 + 588);
                      if ((v151 & 0x100000000) != 0 && *(v3 + 381) && (v136 & v151 & 0x200000000) != 0 && *(v3 + 382))
                      {
                        v149 = 2;
                        v145 = 2;
                      }

LABEL_330:
                      if ((v136 & 0x40000000) == 0)
                      {
                        goto LABEL_347;
                      }

                      if ((*(v3 + 4707) & 0x40) == 0)
                      {
                        goto LABEL_347;
                      }

                      Parameter = *(v3 + 379);
                      if (!Parameter)
                      {
                        goto LABEL_347;
                      }

                      AudioUnitSetProperty(Parameter, 0x457u, 0, 0, v3 + 2332, 4u);
                      if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
                      {
                        v152 = *(v3 + 379);
                        if (*(v3 + 380))
                        {
                          v153 = *(v3 + 688);
LABEL_337:
                          AudioUnitSetParameter(v152, 0x1Bu, 0, 0, v153, 0);
                          v154 = *(v3 + 586);
                          if ((v154 & 0x400000) != 0)
                          {
                            v155 = *(v3 + 588);
                            if ((v155 & 0x400000) != 0 && *(v3 + 371) && (v154 & v155 & 0x800000) != 0 && *(v3 + 372))
                            {
                              AudioUnitSetParameter(*(v3 + 379), 0x3Fu, 0, 0, *(v3 + 1062) * *(v3 + 1063), 0);
                            }
                          }

                          *&v156 = *(v3 + 139) + 24;
                          *&v157 = *(v3 + 140) + 24;
                          if (**(v3 + 136) <= 2u)
                          {
                            *&v337.mSampleTime = *(v3 + 139) + 24;
                            *&v337.mHostTime = v157;
                            v337.mRateScalar = 0.0;
                            v337.mWordClockTime = v3 + 17096;
                            *&v337.mSMPTETime.mSubframes = *(v3 + 210);
                          }

                          else
                          {
                            v158 = *(v3 + 141) + 24;
                            v337.mWordClockTime = v3 + 17096;
                            *&v337.mSMPTETime.mSubframes = *(v3 + 210);
                            v337.mSampleTime = v157;
                            v337.mHostTime = v158;
                            v337.mRateScalar = v156;
                          }

                          *&v340.mNumberBuffers = 0;
                          v327 = 512;
                          AudioUnitSetParameter(*(v3 + 379), 0x2Cu, 0, 0, *(v3 + 1098), 0);
                          v159 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v159;
                          v160 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v160;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 379), &v327, &inInputBufferLists, *(v3 + 129), 6u, &v337, 1u, &v340);
                          v136 = *(v3 + 586);
                          v147 = v136 & 0x80000000;
LABEL_347:
                          if (v147 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                          {
                            memcpy(*(*(v3 + 436) + 16 * *(v3 + 1048) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                            memcpy(*(*(v3 + 436) + 16 * *(v3 + 1049) + 16), *(*(v3 + 509) + 16), 4 * (2 * *(v3 + 129)));
                            if (*(v3 + 1074) == 0.0 && *(v3 + 1075) == 0.0)
                            {
                              v161 = 0.0;
                            }

                            else
                            {
                              v161 = 1.0;
                            }

                            AudioUnitSetParameter(*(v3 + 380), 0x20u, 0, 0, v161, 0);
                            v337.mSampleTime = *(v3 + 436);
                            *&v340.mNumberBuffers = *(v3 + 431);
                            v162 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v162;
                            v163 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v163;
                            v327 = 512;
                            AudioUnitProcessMultiple(*(v3 + 380), &v327, &inInputBufferLists, *(v3 + 129), 1u, &v337, 1u, &v340);
                            ioDataSize[0] = 8 * *(v3 + 129);
                            AudioUnitGetProperty(*(v3 + 380), 0xE7Au, 0, 0, *(*(v3 + 541) + 16), ioDataSize);
                            ioDataSize[0] = 8 * *(v3 + 129);
                            Parameter = AudioUnitGetProperty(*(v3 + 380), 0xE79u, 0, 0, *(*(v3 + 541) + 32), ioDataSize);
                            v164 = *(v3 + 129);
                            v165 = *(v3 + 431);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              p_inInputBufferLists = &inInputBufferLists;
                              v167 = v3;
                              v168 = 10;
LABEL_356:
                              Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v167, v168, v164, v165, p_inInputBufferLists);
                            }

LABEL_384:
                            MEMORY[0x28223BE20](Parameter);
                            v181 = (&v311 - 8);
                            *(&v311 - 3) = 0u;
                            *(&v311 - 2) = 0u;
                            *(&v311 - 4) = 0u;
                            *(&v311 - 16) = 3;
                            *&v184 = MEMORY[0x28223BE20](v182);
                            v317 = (&v311 - 8);
                            v310 = 0;
                            *(&v311 - 3) = v184;
                            *(&v311 - 2) = v184;
                            *(&v311 - 4) = v184;
                            *(&v311 - 16) = v185;
                            v186 = *(v3 + 586);
                            if ((v186 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 383) || (v186 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 384) || (v186 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 386))
                            {
                              *(&v311 - 7) = *(*(v3 + 430) + 8);
                              *(&v311 - 5) = *(*(v3 + 509) + 8);
                              *(&v311 - 3) = *(*(v3 + 510) + 8);
                              v187 = *(v3 + 508);
                              v188 = v317;
                              v317->mBuffers[0] = *(v187 + 8);
                              *&v188[1].mNumberBuffers = *(v187 + 24);
                              *&v188[1].mBuffers[0].mData = *(v187 + 56);
                            }

                            if ((v186 & 0x400000000) == 0 || (*(v3 + 4708) & 4) == 0 || !*(v3 + 383))
                            {
LABEL_407:
                              if ((v186 & 0x800000000) == 0 || (*(v3 + 4708) & 8) == 0 || !*(v3 + 384))
                              {
LABEL_420:
                                if ((v186 & 0x2000000000) == 0 || (*(v3 + 4708) & 0x20) == 0 || !*(v3 + 386))
                                {
LABEL_433:
                                  if (v145 == 2)
                                  {
                                    VoiceProcessorV4::SignalParamSwitchMixNF(v3, v148, v146, &v319);
                                  }

                                  else if (v145 == 1)
                                  {
                                    VoiceProcessorV2::SignalParamSwitchMix(v3, v148, v146, &v319, v183);
                                  }

                                  if (v149 == 1)
                                  {
                                    VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, HIBYTE(v326), v324, v148, v319);
                                  }

                                  else
                                  {
                                    VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, HIBYTE(v326), v322, v148, v319);
                                  }

                                  v201 = memcpy(*(*(v3 + 434) + 16), *(*(v3 + 508) + 16), *(v3 + 1079));
                                  v202 = *(v3 + 586);
                                  if ((v202 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v320 == 1.0)
                                  {
                                    v201 = memcpy(*(*(v3 + 2143) + 16), *(*(v3 + 508) + 48), *(v3 + 1079));
                                    v202 = *(v3 + 586);
                                  }

                                  if ((v202 & 0x400000000000) == 0 || (v203 = *(v3 + 588), (v203 & 0x400000000000) == 0) || !*(v3 + 395))
                                  {
LABEL_463:
                                    if ((v202 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 403))
                                    {
                                      v219 = 1;
                                    }

                                    else
                                    {
                                      v219 = (v202 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 404) != 0;
                                    }

                                    LODWORD(v338) = 0;
                                    LODWORD(v335) = 0;
                                    LODWORD(v333) = 0;
                                    AudioUnitGetParameter(*(v3 + 392), 0x1Du, 0, 0, &v338);
                                    v220 = *&v338 < 1.0 && v219;
                                    if (v219)
                                    {
                                      LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                      if (*&v338 < 1.0)
                                      {
                                        vDSP_vfill(&inInputBufferLists, *(*(v3 + 505) + 16), 1, *(v3 + 129));
                                      }

                                      vDSP_vfill(&inInputBufferLists, *(*(v3 + 503) + 16), 1, *(v3 + 129));
                                    }

                                    else if ((*(v3 + 4693) & 8) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 392))
                                    {
                                      LODWORD(v221) = 0;
                                      goto LABEL_486;
                                    }

                                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 129), *(v3 + 430), &buf);
                                    }

                                    LODWORD(v221) = 1;
LABEL_486:
                                    v222 = *(v3 + 504);
                                    v223 = *(v3 + 586);
                                    if ((v223 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v224 = *(v3 + 403)) != 0)
                                    {
                                      v225 = *(v3 + 503);
                                      v337.mSampleTime = *(v3 + 430);
                                      v337.mHostTime = v225;
                                      *&v337.mRateScalar = v3 + 16904;
                                      v226 = *(v3 + 505);
                                      *&v340.mNumberBuffers = *(v3 + 431);
                                      *&v340.mBuffers[0].mNumberChannels = v226;
                                      v340.mBuffers[0].mData = v222;
                                      v327 = 512;
                                      v227 = *&a2->mRateScalar;
                                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                      *&inInputBufferLists.mRateScalar = v227;
                                      v228 = *&a2->mSMPTETime.mHours;
                                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&inInputBufferLists.mSMPTETime.mHours = v228;
                                      AudioUnitProcessMultiple(v224, &v327, &inInputBufferLists, *(v3 + 129), 3u, &v337, 3u, &v340);
                                      AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v335);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                                      {
                                        goto LABEL_501;
                                      }

                                      v229 = *(v3 + 403);
                                      v230 = 2;
                                    }

                                    else
                                    {
                                      if ((v223 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v231 = *(v3 + 404)) == 0)
                                      {
                                        v236 = 0;
                                        goto LABEL_506;
                                      }

                                      AudioUnitSetParameter(v231, 0x14u, 0, 0, *(v3 + 4189), 0);
                                      v232 = *(v3 + 433);
                                      v337.mSampleTime = *(v3 + 430);
                                      v337.mHostTime = v232;
                                      v337.mRateScalar = *(v3 + 503);
                                      v337.mWordClockTime = v3 + 16904;
                                      v233 = *(v3 + 438);
                                      *&v340.mNumberBuffers = *(v3 + 431);
                                      *&v340.mBuffers[0].mNumberChannels = v233;
                                      v340.mBuffers[0].mData = *(v3 + 505);
                                      v341 = v222;
                                      v234 = *&a2->mRateScalar;
                                      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                      *&inInputBufferLists.mRateScalar = v234;
                                      v235 = *&a2->mSMPTETime.mHours;
                                      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&inInputBufferLists.mSMPTETime.mHours = v235;
                                      v327 = 512;
                                      AudioUnitProcessMultiple(*(v3 + 404), &v327, &inInputBufferLists, *(v3 + 129), 4u, &v337, 4u, &v340);
                                      AudioUnitGetParameter(*(v3 + 404), 2u, 0, 0, &v335);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                                      {
LABEL_501:
                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 431), &inInputBufferLists);
                                        }

                                        v236 = 1;
LABEL_506:
                                        v237 = *(v3 + 586);
                                        if ((v237 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
                                        {
                                          v238 = *(v3 + 406);
                                          if (v238)
                                          {
                                            LODWORD(v317) = v236;
                                            v315 = v222;
                                            v239 = v220;
                                            v240 = v221;
                                            v337.mSampleTime = *(v3 + 430);
                                            *&v340.mNumberBuffers = 0;
                                            v241 = *&a2->mSMPTETime.mHours;
                                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&inInputBufferLists.mSMPTETime.mHours = v241;
                                            v242 = *&a2->mRateScalar;
                                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                            *&inInputBufferLists.mRateScalar = v242;
                                            v327 = 512;
                                            v243 = *(v3 + 506);
                                            v244 = *(v243 + 16);
                                            v245 = *(v243 + 12);
                                            if ((AudioUnitProcessMultiple(v238, &v327, &inInputBufferLists, *(v3 + 129), 1u, &v337, 1u, &v340) || AudioUnitGetProperty(*(v3 + 406), 0x13EDu, 0, 0, *(*(v3 + 506) + 16), (*(v3 + 506) + 12))) && v245 >= 4)
                                            {
                                              memset_pattern16(v244, &unk_2727568B0, v245 & 0xFFFFFFFC);
                                            }

                                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 129), *(v3 + 506), &inInputBufferLists);
                                            }

                                            v237 = *(v3 + 586);
                                            LODWORD(v221) = v240;
                                            v220 = v239;
                                            v222 = v315;
                                            v236 = v317;
                                          }
                                        }

                                        if ((v237 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0)
                                        {
                                          if (*(v3 + 407))
                                          {
                                            v246 = *(v3 + 4344);
                                            if (v246)
                                            {
                                              LODWORD(v317) = v236;
                                              if (v246 == 1)
                                              {
                                                v247 = 1136;
                                                v248 = 1112;
                                              }

                                              else
                                              {
                                                v247 = 1128;
                                                v248 = 1120;
                                              }

                                              LODWORD(v315) = v221;
                                              v249 = *(v3 + v247);
                                              v250 = *(v3 + v248);
                                              v251 = *(*(v3 + 2154) + 16) + 4 * *(v3 + 129);
                                              v337.mSampleTime = *(*(v3 + 2154) + 16);
                                              v337.mHostTime = v251;
                                              VPTimeFreqConverter_Analyze(*(v3 + 2158), *(v250 + 40), &v337);
                                              v252 = *(*(v3 + 2154) + 32) + 4 * *(v3 + 129);
                                              v337.mSampleTime = *(*(v3 + 2154) + 32);
                                              v337.mHostTime = v252;
                                              VPTimeFreqConverter_Analyze(*(v3 + 2159), *(v249 + 40), &v337);
                                              *&v340.mNumberBuffers = *(v3 + 2154);
                                              *ioDataSize = *&v340.mNumberBuffers;
                                              v327 = 512;
                                              v253 = *&a2->mRateScalar;
                                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                              *&inInputBufferLists.mRateScalar = v253;
                                              v254 = *&a2->mSMPTETime.mHours;
                                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                              *&inInputBufferLists.mSMPTETime.mHours = v254;
                                              v255 = AudioUnitProcessMultiple(*(v3 + 407), &v327, &inInputBufferLists, *(v3 + 129), 1u, &v340, 1u, ioDataSize);
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Fu, *(v3 + 129), *(v3 + 2154), &inInputBufferLists);
                                              }

                                              v256 = *(v3 + 2155);
                                              v259 = *(v256 + 12);
                                              v257 = v256 + 12;
                                              v258 = v259;
                                              v260 = *(v257 + 4);
                                              if ((v255 || AudioUnitGetProperty(*(v3 + 407), 0x15FEu, 0, 0, *(v257 + 4), v257)) && v258 >= 4)
                                              {
                                                memset_pattern16(v260, &unk_2727568B0, v258 & 0xFFFFFFFC);
                                              }

                                              v236 = v317;
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x70u, *(v3 + 129), *(v3 + 2155), &inInputBufferLists);
                                              }

                                              v237 = *(v3 + 586);
                                              LOBYTE(v221) = v315;
                                            }
                                          }
                                        }

                                        if ((v237 & 0x80000000000) == 0)
                                        {
                                          goto LABEL_576;
                                        }

                                        if ((*(v3 + 4709) & 8) == 0 || (v261 = *(v3 + 392)) == 0)
                                        {
LABEL_566:
                                          if ((*(v3 + 4709) & 8) != 0 && *(v3 + 392) != 0 && v220)
                                          {
                                            v274 = *(*(v3 + 505) + 16);
                                            vDSP_vmin(*(*(v3 + 503) + 16), 1, v274, 1, v274, 1, *(v3 + 129));
                                            v275 = *(v3 + 586);
                                            if ((v275 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0 && *(v3 + 406))
                                            {
                                              vDSP_vmin(*(*(v3 + 506) + 16), 1, v274, 1, v274, 1, *(v3 + 129));
                                              v275 = *(v3 + 586);
                                            }

                                            v276 = v221;
                                            if ((v275 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0 && *(v3 + 407))
                                            {
                                              vDSP_vmin(*(*(v3 + 2155) + 16), 1, v274, 1, v274, 1, *(v3 + 129));
                                            }

                                            v221 = *(*(v3 + 430) + 16);
                                            v277 = *(*(v3 + 431) + 16);
                                            MEMORY[0x2743CCDD0](v221, 1, v274, 1, v277, 1, *(v3 + 129));
                                            MEMORY[0x2743CCDD0](v221 + 4 * *(v3 + 129) + 4, 1, v274 + 1, 1, v277 + 4 * *(v3 + 129) + 4, 1, (*(v3 + 129) - 1));
                                            *(v221 + 4 * *(v3 + 129)) = *(v221 + 4 * *(v3 + 129)) * v274[*(v3 + 129) - 1];
                                            LOBYTE(v221) = v276;
                                            goto LABEL_578;
                                          }

                                          if ((*(v3 + 4709) & 8) != 0)
                                          {
                                            if (*(v3 + 392) != 0 || v219)
                                            {
                                              goto LABEL_578;
                                            }

                                            goto LABEL_577;
                                          }

LABEL_576:
                                          if (v219)
                                          {
LABEL_578:
                                            if (((v221 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 392)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 129), *(v3 + 431), &buf);
                                            }

                                            if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                                            {
                                              v279 = *(v3 + 409);
                                              if (v279)
                                              {
                                                AudioUnitSetParameter(v279, 0, 0, 0, *(v3 + 3153), 0);
                                                AudioUnitSetParameter(*(v3 + 409), 4u, 0, 0, *(v3 + 1054), 0);
                                                AudioUnitSetParameter(*(v3 + 409), 0x13u, 0, 0, *(v3 + 1058), 0);
                                                AudioUnitSetParameter(*(v3 + 409), 3u, 0, 0, *&v335, 0);
                                                AudioUnitSetParameter(*(v3 + 409), 0xEu, 0, 0, *(v3 + 580), 0);
                                                v280 = *(v3 + 514);
                                                v337.mSampleTime = *(v3 + 420);
                                                v337.mHostTime = v280;
                                                v337.mRateScalar = *(v3 + 431);
                                                v281 = *(v3 + 503);
                                                v337.mWordClockTime = *(v3 + 513);
                                                *&v337.mSMPTETime.mSubframes = v281;
                                                *&v337.mSMPTETime.mType = *(v3 + 505);
                                                *&v340.mNumberBuffers = *(v3 + 137);
                                                v327 = 512;
                                                v282 = *&a2->mRateScalar;
                                                *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                                *&inInputBufferLists.mRateScalar = v282;
                                                v283 = *&a2->mSMPTETime.mHours;
                                                *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                *&inInputBufferLists.mSMPTETime.mHours = v283;
                                                AudioUnitProcessMultiple(*(v3 + 409), &v327, &inInputBufferLists, *(v3 + 129), 6u, &v337, 1u, &v340);
                                                ioDataSize[0] = 0;
                                                AudioUnitGetParameter(*(v3 + 409), 1u, 0, 0, ioDataSize);
                                                *(v3 + 3154) = ioDataSize[0];
                                                if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
                                                {
                                                  AudioUnitGetParameter(*(v3 + 409), 2u, 0, 0, &v335);
                                                  AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, *&v335, 0);
                                                }
                                              }
                                            }

                                            goto LABEL_592;
                                          }

LABEL_577:
                                          LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
                                          v278 = *(v3 + 129);
                                          vDSP_vfill(&inInputBufferLists, *(*(v3 + 505) + 16), 1, v278);
                                          memcpy(*(*(v3 + 431) + 16), *(*(v3 + 430) + 16), 8 * v278);
                                          goto LABEL_578;
                                        }

                                        AudioUnitSetParameter(v261, 6u, 0, 0, *(v3 + 1062), 0);
                                        AudioUnitSetParameter(*(v3 + 392), 7u, 0, 0, *(v3 + 1066), 0);
                                        AudioUnitSetParameter(*(v3 + 392), 0xDu, 0, 0, *(v3 + 1070), 0);
                                        v262 = *(v3 + 434);
                                        v337.mSampleTime = *(v3 + 430);
                                        v337.mHostTime = v262;
                                        v337.mRateScalar = *(v3 + 515);
                                        v337.mWordClockTime = *(v3 + 505);
                                        *&v337.mSMPTETime.mSubframes = v222;
                                        *&v337.mSMPTETime.mType = 0;
                                        if (!v220)
                                        {
                                          v337.mWordClockTime = 0;
                                        }

                                        v263 = *(v3 + 513);
                                        *&v340.mNumberBuffers = 0;
                                        *&v340.mBuffers[0].mNumberChannels = v263;
                                        v340.mBuffers[0].mData = 0;
                                        v264 = *(v3 + 586);
                                        if ((v264 & 0x4000000) != 0 && (v265 = *(v3 + 588), (v265 & 0x4000000) != 0) && (v267 = *(v3 + 375)) != 0 && (v264 & v265 & 0x400000) != 0 && *(v3 + 371))
                                        {
                                          v266 = v236;
                                          LODWORD(inInputBufferLists.mSampleTime) = 0;
                                          *&v337.mSMPTETime.mType = *(v3 + 511);
                                          AudioUnitGetParameter(v267, 0x2Du, 0, 0, &inInputBufferLists);
                                          AudioUnitSetParameter(*(v3 + 392), 0x2Au, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                          AudioUnitGetParameter(*(v3 + 371), 0x2Du, 0, 0, &inInputBufferLists);
                                          AudioUnitSetParameter(*(v3 + 392), 0x29u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                        }

                                        else
                                        {
                                          v266 = v236;
                                          if ((v264 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v320 == 1.0)
                                          {
                                            *&v337.mSMPTETime.mType = *(v3 + 2143);
                                          }
                                        }

                                        if (v220)
                                        {
                                          v268 = 3464;
                                        }

                                        else
                                        {
                                          v268 = 3448;
                                        }

                                        v269 = 4040;
                                        *&v340.mNumberBuffers = *(v3 + v268);
                                        if (v220)
                                        {
                                          v269 = 4024;
                                        }

                                        v340.mBuffers[0].mData = *(v3 + v269);
                                        v270 = *&a2->mRateScalar;
                                        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                        *&inInputBufferLists.mRateScalar = v270;
                                        v271 = *&a2->mSMPTETime.mHours;
                                        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                        *&inInputBufferLists.mSMPTETime.mHours = v271;
                                        v327 = 512;
                                        AudioUnitProcessMultiple(*(v3 + 392), &v327, &inInputBufferLists, *(v3 + 129), 6u, &v337, 3u, &v340);
                                        if ((v266 & v220 & 1) == 0)
                                        {
                                          AudioUnitGetParameter(*(v3 + 392), 0x20u, 0, 0, &v335);
                                        }

                                        v272 = *(v3 + 129);
                                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                        {
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v272, *(v3 + v268), &inInputBufferLists);
                                          v272 = *(v3 + 129);
                                          v273 = *(v3 + 503);
                                          if (*(v3 + 15881))
                                          {
LABEL_564:
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v272, v273, &inInputBufferLists);
LABEL_565:
                                            if ((*(v3 + 4693) & 8) == 0)
                                            {
                                              goto LABEL_576;
                                            }

                                            goto LABEL_566;
                                          }
                                        }

                                        else
                                        {
                                          v273 = *(v3 + 503);
                                        }

                                        if (*(v3 + 15882) != 1)
                                        {
                                          goto LABEL_565;
                                        }

                                        goto LABEL_564;
                                      }

                                      v229 = *(v3 + 404);
                                      v230 = 9;
                                    }

                                    AudioUnitGetParameter(v229, v230, 0, 0, &v333);
                                    AudioUnitSetParameter(*(v3 + 414), 0x12u, 0, 0, *&v333, 0);
                                    goto LABEL_501;
                                  }

                                  ioDataSize[0] = 1092616192;
                                  if ((v202 & v203 & 0x80000000000000) != 0)
                                  {
                                    v201 = *(v3 + 404);
                                    if (v201)
                                    {
                                      v201 = AudioUnitGetParameter(v201, 9u, 0, 0, ioDataSize);
                                      v202 = *(v3 + 586);
                                    }
                                  }

                                  if ((v202 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 381))
                                  {
                                    LODWORD(inInputBufferLists.mSampleTime) = 0;
                                    LODWORD(v337.mSampleTime) = 0;
                                    v340.mNumberBuffers = 0;
                                    AudioUnitGetParameter(*(v3 + 382), 0x18u, 0, 0, &inInputBufferLists);
                                    AudioUnitGetParameter(*(v3 + 382), 0x19u, 0, 0, &v337);
                                    AudioUnitGetParameter(*(v3 + 382), 5u, 0, 0, &v340.mNumberBuffers);
                                    AudioUnitSetParameter(*(v3 + 395), 3u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
                                    AudioUnitSetParameter(*(v3 + 395), 4u, 0, 0, *&v337.mSampleTime, 0);
                                    AudioUnitSetParameter(*(v3 + 395), 5u, 0, 0, *&v340.mNumberBuffers, 0);
                                    v201 = AudioUnitSetParameter(*(v3 + 395), 6u, 0, 0, *ioDataSize, 0);
                                  }

                                  MEMORY[0x28223BE20](v201);
                                  v310 = 0;
                                  *(&v311 - 3) = 0u;
                                  *(&v311 - 2) = 0u;
                                  *(&v311 - 12) = 2;
                                  v204 = *(v3 + 430);
                                  *(&v311 - 4) = *(v204 + 16);
                                  *(&v311 - 5) = *(v204 + 8);
                                  v205 = *(v3 + 433);
                                  v310 = *(v205 + 16);
                                  *(&v311 - 3) = *(v205 + 8);
                                  *&v207 = MEMORY[0x28223BE20](v206);
                                  *(&v311 - 3) = v207;
                                  *(&v311 - 2) = v207;
                                  *(&v311 - 12) = v208;
                                  MEMORY[0x28223BE20](v209);
                                  *(&v311 - 3) = 0;
                                  v310 = 0;
                                  *(&v311 - 4) = 0;
                                  *(&v311 - 8) = 1;
                                  v210 = *(v3 + 434);
                                  *(v211 - 32) = *(v210 + 16);
                                  *(v211 - 40) = *(v210 + 8);
                                  v212 = *(v3 + 508);
                                  *(v211 - 16) = *(v212 + 32);
                                  *(v211 - 24) = *(v212 + 24);
                                  v310 = *(v210 + 16);
                                  *(&v311 - 3) = *(v210 + 8);
                                  v337.mSampleTime = v213;
                                  v337.mHostTime = v214;
                                  *&v340.mNumberBuffers = v213;
                                  *&v340.mBuffers[0].mNumberChannels = &v311 - 4;
                                  v215 = *&a2->mRateScalar;
                                  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                  *&inInputBufferLists.mRateScalar = v215;
                                  v216 = *&a2->mSMPTETime.mHours;
                                  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                  *&inInputBufferLists.mSMPTETime.mHours = v216;
                                  v327 = 512;
                                  AudioUnitProcessMultiple(*(v3 + 395), &v327, &inInputBufferLists, *(v3 + 129), 2u, &v337, 2u, &v340);
                                  v217 = *(v3 + 129);
                                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                  {
                                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v217, *(v3 + 430), &inInputBufferLists);
                                    v217 = *(v3 + 129);
                                    v218 = *(v3 + 433);
                                    if (*(v3 + 15881))
                                    {
                                      goto LABEL_461;
                                    }
                                  }

                                  else
                                  {
                                    v218 = *(v3 + 433);
                                  }

                                  if (*(v3 + 15882) != 1)
                                  {
LABEL_462:
                                    v202 = *(v3 + 586);
                                    goto LABEL_463;
                                  }

LABEL_461:
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v217, v218, &inInputBufferLists);
                                  goto LABEL_462;
                                }

                                v311 = v181;
                                v312 = v149;
                                v313 = v148;
                                v314 = v145;
                                LODWORD(v315) = v146;
                                v197 = 0;
                                v338 = *(v3 + 527);
                                LODWORD(v339) = *(v3 + 1057);
                                v335 = *(v3 + 529);
                                v336 = *(v3 + 1061);
                                v333 = *(v3 + 531);
                                v334 = *(v3 + 1065);
                                v331 = *(v3 + 533);
                                v332 = *(v3 + 1069);
                                v329 = *(v3 + 535);
                                v330 = *(v3 + 1073);
                                do
                                {
                                  AudioUnitSetParameter(*(v3 + 386), 0x64u, 4u, v197, *(&v338 + v197), 0);
                                  AudioUnitSetParameter(*(v3 + 386), 0x65u, 4u, v197, *(&v335 + v197), 0);
                                  AudioUnitSetParameter(*(v3 + 386), 0x66u, 4u, v197, *(&v333 + v197), 0);
                                  AudioUnitSetParameter(*(v3 + 386), 0x67u, 4u, v197, *(&v331 + v197), 0);
                                  AudioUnitSetParameter(*(v3 + 386), 0x68u, 4u, v197, *(&v329 + v197), 0);
                                  ++v197;
                                }

                                while (v197 != 3);
                                *&v340.mNumberBuffers = 1;
                                *&v340.mBuffers[0].mNumberChannels = 0;
                                v340.mBuffers[0].mData = 0;
                                v340.mBuffers[0] = *(*(v3 + 508) + 8);
                                *ioDataSize = v311;
                                v344 = v317;
                                v337.mSampleTime = *(v3 + 430);
                                v337.mHostTime = &v340;
                                v337.mWordClockTime = 0;
                                v337.mRateScalar = 0.0;
                                v327 = 512;
                                v198 = *&a2->mRateScalar;
                                *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                                *&inInputBufferLists.mRateScalar = v198;
                                v199 = *&a2->mSMPTETime.mHours;
                                *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                *&inInputBufferLists.mSMPTETime.mHours = v199;
                                AudioUnitProcessMultiple(*(v3 + 386), &v327, &inInputBufferLists, *(v3 + 129), 2u, ioDataSize, 4u, &v337);
                                v318 = 0.0;
                                AudioUnitGetParameter(*(v3 + 386), 0xAu, 0, 0, &v318);
                                v200 = *(v3 + 129);
                                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v200, *(v3 + 430), &inInputBufferLists);
                                  v200 = *(v3 + 129);
                                  v145 = v314;
                                  v146 = v315;
                                  v149 = v312;
                                  v148 = v313;
                                  if (*(v3 + 15881))
                                  {
                                    goto LABEL_431;
                                  }
                                }

                                else
                                {
                                  v145 = v314;
                                  v146 = v315;
                                  v149 = v312;
                                  v148 = v313;
                                }

                                if (*(v3 + 15882) != 1)
                                {
LABEL_432:
                                  AudioUnitGetParameter(*(v3 + 386), 0x64u, 4u, 0, v3 + 1054);
                                  AudioUnitGetParameter(*(v3 + 386), 0x65u, 4u, 0, v3 + 1058);
                                  AudioUnitGetParameter(*(v3 + 386), 0x66u, 4u, 0, v3 + 1062);
                                  AudioUnitGetParameter(*(v3 + 386), 0x67u, 4u, 0, v3 + 1066);
                                  AudioUnitGetParameter(*(v3 + 386), 0x68u, 4u, 0, v3 + 1070);
                                  goto LABEL_433;
                                }

LABEL_431:
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v200, &v340, &inInputBufferLists);
                                goto LABEL_432;
                              }

                              v311 = v181;
                              v312 = v149;
                              v313 = v148;
                              v314 = v145;
                              LODWORD(v315) = v146;
                              v193 = 0;
                              *ioDataSize = *(v3 + 527);
                              LODWORD(v344) = *(v3 + 1057);
                              v338 = *(v3 + 529);
                              LODWORD(v339) = *(v3 + 1061);
                              v335 = *(v3 + 531);
                              v336 = *(v3 + 1065);
                              v333 = *(v3 + 533);
                              v334 = *(v3 + 1069);
                              v331 = *(v3 + 535);
                              v332 = *(v3 + 1073);
                              do
                              {
                                AudioUnitSetParameter(*(v3 + 384), 0x12u, 4u, v193, *&ioDataSize[v193], 0);
                                AudioUnitSetParameter(*(v3 + 384), 0x13u, 4u, v193, *(&v338 + v193), 0);
                                AudioUnitSetParameter(*(v3 + 384), 0x14u, 4u, v193, *(&v335 + v193), 0);
                                AudioUnitSetParameter(*(v3 + 384), 0x15u, 4u, v193, *(&v333 + v193), 0);
                                AudioUnitSetParameter(*(v3 + 384), 0x16u, 4u, v193, *(&v331 + v193), 0);
                                ++v193;
                              }

                              while (v193 != 3);
                              v181 = v311;
                              *&v337.mSampleTime = v311;
                              v337.mHostTime = v317;
                              *&v340.mNumberBuffers = v311;
                              *&v340.mBuffers[0].mNumberChannels = v317;
                              v327 = 512;
                              v194 = *&a2->mRateScalar;
                              *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                              *&inInputBufferLists.mRateScalar = v194;
                              v195 = *&a2->mSMPTETime.mHours;
                              *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                              *&inInputBufferLists.mSMPTETime.mHours = v195;
                              AudioUnitProcessMultiple(*(v3 + 384), &v327, &inInputBufferLists, *(v3 + 129), 2u, &v337, 2u, &v340);
                              v196 = *(v3 + 129);
                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v196, v181, &inInputBufferLists);
                                v196 = *(v3 + 129);
                                v145 = v314;
                                v146 = v315;
                                v149 = v312;
                                v148 = v313;
                                if (*(v3 + 15881))
                                {
                                  goto LABEL_418;
                                }
                              }

                              else
                              {
                                v145 = v314;
                                v146 = v315;
                                v149 = v312;
                                v148 = v313;
                              }

                              if (*(v3 + 15882) != 1)
                              {
LABEL_419:
                                v186 = *(v3 + 586);
                                goto LABEL_420;
                              }

LABEL_418:
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v196, v317, &inInputBufferLists);
                              goto LABEL_419;
                            }

                            v311 = (&v311 - 8);
                            v312 = v149;
                            v313 = v148;
                            v314 = v145;
                            LODWORD(v315) = v146;
                            v189 = 0;
                            *ioDataSize = *(v3 + 527);
                            LODWORD(v344) = *(v3 + 1057);
                            v338 = *(v3 + 529);
                            LODWORD(v339) = *(v3 + 1061);
                            v335 = *(v3 + 531);
                            v336 = *(v3 + 1065);
                            v333 = *(v3 + 533);
                            v334 = *(v3 + 1069);
                            v331 = *(v3 + 535);
                            v332 = *(v3 + 1073);
                            do
                            {
                              AudioUnitSetParameter(*(v3 + 383), 9u, 4u, v189, *&ioDataSize[v189], 0);
                              AudioUnitSetParameter(*(v3 + 383), 0xAu, 4u, v189, *(&v338 + v189), 0);
                              AudioUnitSetParameter(*(v3 + 383), 0xBu, 4u, v189, *(&v335 + v189), 0);
                              AudioUnitSetParameter(*(v3 + 383), 0xCu, 4u, v189, *(&v333 + v189), 0);
                              AudioUnitSetParameter(*(v3 + 383), 0xDu, 4u, v189, *(&v331 + v189), 0);
                              ++v189;
                            }

                            while (v189 != 3);
                            v181 = v311;
                            *&v337.mSampleTime = v311;
                            v337.mHostTime = v317;
                            *&v340.mNumberBuffers = v311;
                            *&v340.mBuffers[0].mNumberChannels = v317;
                            v327 = 512;
                            v190 = *&a2->mRateScalar;
                            *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                            *&inInputBufferLists.mRateScalar = v190;
                            v191 = *&a2->mSMPTETime.mHours;
                            *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&inInputBufferLists.mSMPTETime.mHours = v191;
                            AudioUnitProcessMultiple(*(v3 + 383), &v327, &inInputBufferLists, *(v3 + 129), 2u, &v337, 2u, &v340);
                            v192 = *(v3 + 129);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v192, v181, &inInputBufferLists);
                              v192 = *(v3 + 129);
                              v145 = v314;
                              v146 = v315;
                              v149 = v312;
                              v148 = v313;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_405;
                              }
                            }

                            else
                            {
                              v145 = v314;
                              v146 = v315;
                              v149 = v312;
                              v148 = v313;
                            }

                            if (*(v3 + 15882) != 1)
                            {
LABEL_406:
                              v186 = *(v3 + 586);
                              goto LABEL_407;
                            }

LABEL_405:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v192, v317, &inInputBufferLists);
                            goto LABEL_406;
                          }

                          if ((v136 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 381))
                          {
                            goto LABEL_384;
                          }

                          memcpy(*(*(v3 + 436) + 16), *(*(v3 + 430) + 16), 8 * *(v3 + 129));
                          memcpy(*(*(v3 + 436) + 32), *(*(v3 + 510) + 16), 8 * *(v3 + 129));
                          v335 = *(v3 + 436);
                          v169 = *(v3 + 435);
                          *ioDataSize = *(v3 + 431);
                          v344 = v169;
                          v170 = *&a2->mRateScalar;
                          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                          *&inInputBufferLists.mRateScalar = v170;
                          v171 = *&a2->mSMPTETime.mHours;
                          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&inInputBufferLists.mSMPTETime.mHours = v171;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 381), &v327, &inInputBufferLists, *(v3 + 129), 1u, &v335, 2u, ioDataSize);
                          v172 = *(v3 + 129);
                          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                          {
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v172, *ioDataSize, &inInputBufferLists);
                            v172 = *(v3 + 129);
                            v173 = v344;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_368;
                            }
                          }

                          else
                          {
                            v173 = v344;
                          }

                          if (*(v3 + 15882) != 1)
                          {
LABEL_369:
                            if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 382))
                            {
                              goto LABEL_384;
                            }

                            memcpy(*(*(v3 + 437) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                            memcpy(*(*(v3 + 432) + 16), *(*(v3 + 433) + 16), 4 * (2 * *(v3 + 129)));
                            LODWORD(v333) = 1092616192;
                            v174 = *(v3 + 435);
                            *&v340.mNumberBuffers = *(v3 + 431);
                            *&v340.mBuffers[0].mNumberChannels = v174;
                            v175 = *(v3 + 510);
                            v340.mBuffers[0].mData = *(v3 + 437);
                            v341 = v175;
                            v342 = *(v3 + 432);
                            v176 = *(v3 + 433);
                            v177 = 10.0;
                            v338 = *(v3 + 430);
                            v339 = v176;
                            if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                            {
                              v178 = *(v3 + 404);
                              if (v178)
                              {
                                AudioUnitGetParameter(v178, 9u, 0, 0, &v333);
                                v177 = *&v333;
                              }
                            }

                            AudioUnitSetParameter(*(v3 + 382), 0xAu, 0, 0, v177, 0);
                            AudioUnitSetParameter(*(v3 + 382), 0x17u, 0, 0, *(v3 + 4189), 0);
                            v179 = *&a2->mRateScalar;
                            *&v337.mSampleTime = *&a2->mSampleTime;
                            *&v337.mRateScalar = v179;
                            v180 = *&a2->mSMPTETime.mHours;
                            *&v337.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&v337.mSMPTETime.mHours = v180;
                            Parameter = AudioUnitProcessMultiple(*(v3 + 382), &v327, &v337, *(v3 + 129), 5u, &v340, 2u, &v338);
                            v164 = *(v3 + 129);
                            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                            {
                              Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v164, v338, &v337);
                              v164 = *(v3 + 129);
                              v165 = v339;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_383;
                              }
                            }

                            else
                            {
                              v165 = v339;
                            }

                            if (*(v3 + 15882) != 1)
                            {
                              goto LABEL_384;
                            }

LABEL_383:
                            p_inInputBufferLists = &v337;
                            v167 = v3;
                            v168 = 27;
                            goto LABEL_356;
                          }

LABEL_368:
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v172, v173, &inInputBufferLists);
                          goto LABEL_369;
                        }
                      }

                      else
                      {
                        v152 = *(v3 + 379);
                      }

                      v153 = 2.0;
                      goto LABEL_337;
                    }

                    v138 = *(v3 + 1063);
                    if (v138 == 0.0)
                    {
                      v139 = *(*(v3 + 437) + 16) + 4 * *(v3 + 129);
                      inInputBufferLists.mSampleTime = *(*(v3 + 437) + 16);
                      inInputBufferLists.mHostTime = v139;
                      VPTimeFreqConverter_Analyze(*(v3 + 2109), *(*(v3 + 426) + 16), &inInputBufferLists);
                      v138 = *(v3 + 1063);
                      Parameter = *(v3 + 393);
                    }

                    AudioUnitSetParameter(Parameter, 6u, 0, 0, v138, 0);
                    AudioUnitSetParameter(*(v3 + 393), 7u, 0, 0, *(v3 + 1067), 0);
                    AudioUnitSetParameter(*(v3 + 393), 0xDu, 0, 0, *(v3 + 1071), 0);
                    memcpy(*(*(v3 + 435) + 16), *(*(v3 + 508) + 32), *(v3 + 1079));
                    v140 = *(v3 + 435);
                    v337.mSampleTime = *(v3 + 509);
                    v337.mHostTime = v140;
                    v337.mRateScalar = *(v3 + 515);
                    memset(&v337.mWordClockTime, 0, 24);
                    *&v340.mNumberBuffers = *(v3 + 433);
                    *&v340.mBuffers[0].mNumberChannels = 0;
                    v340.mBuffers[0].mData = *(v3 + 504);
                    v141 = *&a2->mRateScalar;
                    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
                    *&inInputBufferLists.mRateScalar = v141;
                    v142 = *&a2->mSMPTETime.mHours;
                    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                    *&inInputBufferLists.mSMPTETime.mHours = v142;
                    v327 = 512;
                    Parameter = AudioUnitProcessMultiple(*(v3 + 393), &v327, &inInputBufferLists, *(v3 + 129), 6u, &v337, 3u, &v340);
                    v143 = *(v3 + 129);
                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                    {
                      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v143, *(v3 + 433), &inInputBufferLists);
                      v143 = *(v3 + 129);
                      v144 = *(v3 + 504);
                      if (*(v3 + 15881))
                      {
                        goto LABEL_303;
                      }
                    }

                    else
                    {
                      v144 = *(v3 + 504);
                    }

                    if (*(v3 + 15882) != 1)
                    {
LABEL_304:
                      v136 = *(v3 + 586);
                      goto LABEL_305;
                    }

LABEL_303:
                    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v143, v144, &inInputBufferLists);
                    goto LABEL_304;
                  }

LABEL_668:
                  std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
                }
              }

              else
              {
                v121 = *(v3 + 423);
              }

              if (*(v3 + 15882) != 1)
              {
                goto LABEL_242;
              }

              goto LABEL_241;
            }
          }

          else
          {
            v105 = *(v3 + 2149);
          }

          if (*(v3 + 15882) != 1)
          {
            goto LABEL_179;
          }

          goto LABEL_178;
        }

        v100 = *(v3 + 2110);
        if ((*(v3 + 2111) - v100) <= 0x20)
        {
          goto LABEL_668;
        }

        ECApplicator::apply(*(v100 + 32), &buf, v78, &v326, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
        v101 = *(v3 + 129);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v101, *(v3 + 137), &buf);
          v101 = *(v3 + 129);
          v102 = *(v3 + 424);
          if (*(v3 + 15881))
          {
LABEL_163:
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v101, v102, &buf);
            LODWORD(v101) = *(v3 + 129);
            v102 = *(v3 + 424);
LABEL_164:
            inInputBufferLists.mSampleTime = *(*(v3 + 511) + 16);
            inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v101;
            VPTimeFreqConverter_Analyze(*(v3 + 2142), *(v102 + 16), &inInputBufferLists);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 129), *(v3 + 511), &buf);
            }

            v84 = *(v3 + 586);
            goto LABEL_168;
          }
        }

        else
        {
          v102 = *(v3 + 424);
        }

        if (*(v3 + 15882) != 1)
        {
          goto LABEL_164;
        }

        goto LABEL_163;
      }

      v77 = *(v3 + 3134);
      if (v76 != 3)
      {
        if (v77 == 2)
        {
          v78 = 1;
          v79 = 3;
          LODWORD(v315) = 2;
          v80 = 56;
          v81 = 40;
          goto LABEL_121;
        }

        v77 = *(v3 + 3134);
        if (v77 <= 0xC && ((0x1028u >> v77) & 1) != 0)
        {
          v78 = 3;
          v79 = 2;
          LODWORD(v315) = 1;
          v80 = 40;
          v81 = 24;
          goto LABEL_121;
        }
      }

      v78 = 1;
      v79 = 2;
      if (v77 != 9)
      {
        LODWORD(v315) = 0;
        v82 = 0;
        goto LABEL_123;
      }

      LODWORD(v315) = 3;
      v80 = 40;
      v81 = 56;
LABEL_121:
      *(v3 + 1060) = *(v75 + v81);
      *(v3 + 16984) = *(v75 + v80);
      v82 = v79;
      v79 = v78;
      v78 = 0;
LABEL_123:
      v83 = v75 + 8;
      *(v3 + 1057) = *(v83 + 16 * v78);
      *(v3 + 16936) = *(v83 + 16 * v79);
      goto LABEL_124;
    }
  }

  v13 = 0;
  while (((*(v3 + 118) >> v13) & 1) == 0)
  {
    if (++v13 == 32)
    {
      v13 = 33;
      break;
    }
  }

  v14 = *(v3 + 136);
  if (v13 >= *v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = **(v3 + 136);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v7.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 50;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v13;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v20 = *(v3 + 1588);
    if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v7.cpp", 50, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 136));
    }

    v15 = *(*(v3 + 137) + 16);
    v16 = *(v3 + 136);
  }

  else
  {
    v15 = *(*(v3 + 137) + 16);
    v16 = &v14[4 * v13];
  }

  memcpy(v15, v16[2], *(v16 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v21 = *(v3 + 403);
    if (v21)
    {
      v22 = *(v3 + 503);
      inInputBufferLists.mSampleTime = *(v3 + 137);
      inInputBufferLists.mHostTime = v22;
      v23 = *(v3 + 505);
      v337.mSampleTime = inInputBufferLists.mSampleTime;
      v337.mHostTime = v23;
      v24 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v24;
      v25 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v25;
      v340.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v21, &v340.mNumberBuffers, &buf, *(v3 + 129), 2u, &inInputBufferLists, 2u, &v337);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 137), &buf);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
      {
        AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v328);
        AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v328, 0);
      }
    }
  }

LABEL_592:
  v340.mNumberBuffers = 0;
  v284 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v285 = v284;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 2053) != 0) | v284 & 1))
    {
      goto LABEL_608;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v285 & 1) == 0)
    {
      goto LABEL_608;
    }
  }

  else
  {
    if ((v284 & 1) == 0)
    {
      goto LABEL_608;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v286 = *(v3 + 586);
  if ((v286 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v287 = *(v3 + 410);
    if (v287)
    {
      v288 = 1936748646;
LABEL_606:
      AudioUnitGetParameter(v287, v288, 0, 0, &v340.mNumberBuffers);
      goto LABEL_608;
    }
  }

  if ((v286 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v287 = *(v3 + 409);
    if (v287)
    {
      v288 = 2;
      goto LABEL_606;
    }
  }

  *&v340.mNumberBuffers = v328;
LABEL_608:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 137) + 16), 4 * *(v3 + 129));
    v340.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 4108) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v289 = *(v3 + 454);
    if (((v289 != 0) & v285) == 1)
    {
      AudioUnitSetParameter(v289, 0x12u, 0, 0, *&v340.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 129), *(v3 + 137), a2);
  }

  if ((*(v3 + 4695) & 8) != 0 && (*(v3 + 4711) & 8) != 0)
  {
    v290 = *(v3 + 408);
    if (v290)
    {
      inInputBufferLists.mSampleTime = *(v3 + 137);
      v337.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v321.realp) = 512;
      v291 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v291;
      v292 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v292;
      AudioUnitProcessMultiple(v290, &v321, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v337);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v293 = *(v3 + 419);
    if (v293)
    {
      inInputBufferLists.mSampleTime = *(v3 + 137);
      v337.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v321.realp) = 512;
      v294 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v294;
      v295 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v295;
      AudioUnitProcessMultiple(v293, &v321, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v337);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if ((*(v3 + 586) & 0x8000000000000000) != 0 && (*(v3 + 588) & 0x8000000000000000) != 0)
  {
    v296 = *(v3 + 412);
    if (v296)
    {
      v297 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v297;
      v298 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v298;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v296, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  v299 = *(v3 + 587);
  if (v299 & 1) != 0 && (*(v3 + 4712))
  {
    v300 = *(v3 + 413);
    if (v300)
    {
      v301 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v301;
      v302 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v302;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v300, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
      v299 = *(v3 + 587);
    }
  }

  if ((v299 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v303 = *(v3 + 414)) != 0)
  {
    v304 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v304;
    v305 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v305;
    LODWORD(inInputBufferLists.mSampleTime) = 512;
    AudioUnitProcess(v303, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 129), *(v3 + 137), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 409))
    {
      LODWORD(v337.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 414), 1u, 0, 0, &v337);
      AudioUnitSetParameter(*(v3 + 409), 0x11u, 0, 0, *&v337.mSampleTime, 0);
    }

    LODWORD(v337.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 414), 0x1Bu, 0, 0, &v337);
    mSampleTime_low = LODWORD(v337.mSampleTime);
    if (*(v3 + 577) != *&v337.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v307 = *(v3 + 409);
        if (v307)
        {
          AudioUnitSetParameter(v307, 0x12u, 0, 0, *&v337.mSampleTime, 0);
          mSampleTime_low = LODWORD(v337.mSampleTime);
        }
      }

      *(v3 + 577) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 1099) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &buf, *(*(v3 + 137) + 16), 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 129), *(v3 + 137), a2);
    }
  }

  VoiceProcessorV6::ProcessLevelDrivenSuppressor(v3, a2);
  v308 = *MEMORY[0x277D85DE8];
  return 0;
}