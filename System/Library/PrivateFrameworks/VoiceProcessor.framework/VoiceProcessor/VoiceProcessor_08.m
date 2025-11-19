void sub_272551548(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::Locker::~Locker((v1 + 272));
  atomic_fetch_add((v2 + 2500), 0xFFFFFFFF);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>(caulk::concurrent::details::lf_read_sync_write_impl *a1, void (***a2)(uint64_t, void, void))
{
  v4 = caulk::concurrent::details::lf_read_sync_write_impl::begin_access(a1);
  if (*(a1 + v4 + 8))
  {
    v5 = a1 + 32 * v4;
    if (v5[40] == 1)
    {
      (**a2)((*a2 + 1), *(v5 + 2), *(v5 + 3) - *(v5 + 2));
    }

    v4 = a1;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821E8620](v4);
}

uint64_t caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV4::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>(uint64_t **a1, void *inData, UInt32 inDataSize)
{
  v4 = **a1;
  if (*(v4 + 16752))
  {
    v5 = 1733326433;
  }

  else
  {
    v5 = 1936747876;
  }

  if (*(v4 + 16752))
  {
    v6 = 1936747876;
  }

  else
  {
    v6 = 0;
  }

  return AudioUnitSetProperty(*(v4 + 3512), v5, 0, v6, inData, inDataSize);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3011()
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

uint64_t VoiceProcessorV8::ProcessDownlinkAudio(atomic_uint *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, const AudioTimeStamp *a6, const AudioTimeStamp *a7)
{
  v7 = a5;
  v8 = this;
  v565 = *MEMORY[0x277D85DE8];
  v9 = (this + 3158);
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    VoiceProcessorV2::LogIOError(this, 23.006, this[3150], 0.0, 0.0, "processdl: tryer failed to acquire lock", a3, a4, a5, a6, a7);
    v10 = (v8 + 2592);
    CADeprecated::CAMutex::Lock((v8 + 2592));
LABEL_3:
    ++*(v8 + 3150);
    CADeprecated::CAMutex::Unlock(v10);
    LOBYTE(nn) = 0;
    v12 = 0.0;
    goto LABEL_928;
  }

  v542 = a2;
  v543 = a3;
  v541 = a4;
  if ((*(this + 485) & 1) == 0)
  {
    VoiceProcessorV2::LogIOError(this, 23.005, this[3150], 0.0, 0.0, "processdl: not ok to process?!", a3, a4, a5, a6, a7);
    v10 = (v8 + 2592);
    CADeprecated::CAMutex::Lock((v8 + 2592));
    goto LABEL_3;
  }

  v13 = a7;
  v12 = 0.0;
  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v12 = mach_absolute_time() * 0.0000000416666667;
      if (*(v8 + 1984) == 0.0)
      {
        *(v8 + 1984) = v12;
      }
    }
  }

  (*(*v8 + 696))(&v557, v8, v13);
  v556 = v557;
  if (v9[3249] == 1)
  {
    if (*v9)
    {
      v15 = *(v8 + 1578);
      HIDWORD(v16) = HIDWORD(v556.mSampleTime);
      if (v15 == v556.mSampleTime)
      {
        goto LABEL_48;
      }

      VoiceProcessorV2::WriteTSOverload(v8, v15, v556.mSampleTime, 2);
      v16 = *(v8 + 1578);
      if (v556.mSampleTime >= v16)
      {
        goto LABEL_48;
      }

      v17 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v18 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(v8 + 1578);
          LODWORD(v557.mSampleTime) = 136316674;
          *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v557.mHostTime) = 1024;
          *(&v557.mHostTime + 6) = 89;
          WORD1(v557.mRateScalar) = 2048;
          *(&v557.mRateScalar + 4) = v20;
          WORD2(v557.mWordClockTime) = 2048;
          *(&v557.mWordClockTime + 6) = *&v556.mSampleTime;
          HIWORD(v557.mSMPTETime.mCounter) = 2048;
          *&v557.mSMPTETime.mType = v556.mHostTime;
          v557.mSMPTETime.mHours = 2048;
          *&v557.mSMPTETime.mMinutes = v556.mRateScalar;
          HIWORD(v557.mFlags) = 1024;
          v557.mReserved = v556.mFlags;
          _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", &v557, 0x40u);
        }
      }

      v21 = *(v8 + 1588);
      if (v21 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v21, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 89, "ProcessDownlinkAudio", "sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(v8 + 1578), v556.mSampleTime, v556.mHostTime, v556.mRateScalar, v556.mFlags);
      }

      VoiceProcessorV2::LogIOError(v8, 23.008, *(v8 + 3150), 0.0, 0.0, "sprk sample time jumped backwards");
    }

    else
    {
      *v9 = 1;
      VoiceProcessorV2::WriteTSOverload(v8, 0.0, v556.mSampleTime, 2);
      v16 = *(v8 + 216);
      v22 = v556.mSampleTime - v16;
      v23 = (((roundf(*(v8 + 291) * *(v8 + 126)) + *(v8 + 126)) + *(v8 + 295)) + *(v8 + 296));
      if (v556.mSampleTime - v16 == v23)
      {
LABEL_48:
        LODWORD(v16) = *(v8 + 123);
        *(v8 + 1578) = v556.mSampleTime + *&v16;
        goto LABEL_49;
      }

      v17 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v24 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v557.mSampleTime) = 136315906;
          *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
          WORD2(v557.mHostTime) = 1024;
          *(&v557.mHostTime + 6) = 76;
          WORD1(v557.mRateScalar) = 2048;
          *(&v557.mRateScalar + 4) = v23;
          WORD2(v557.mWordClockTime) = 2048;
          *(&v557.mWordClockTime + 6) = v22;
          _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", &v557, 0x26u);
        }
      }

      v26 = *(v8 + 1588);
      if (v26 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v26, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 76, "ProcessDownlinkAudio", "bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", v23, v22);
      }

      VoiceProcessorV2::LogIOError(v8, 23.009, *(v8 + 3150), 0.0, 0.0, "bad relative mic-ref TS");
    }

    v13 = v17;
    goto LABEL_48;
  }

LABEL_49:
  v554 = v8 + 2504;
  v27 = (*(*(v8 + 313) + 16))();
  v533 = a6;
  v555 = v27;
  CADeprecated::CAMutex::Lock((v8 + 2592));
  ++*(v8 + 3150);
  CADeprecated::CAMutex::Unlock((v8 + 2592));
  v28 = *(v8 + 123);
  NumberOfSourceFrames = v28;
  v553 = v28;
  v29 = v9[3249];
  if (v29)
  {
    v9[385] = 1;
    if (v7->mNumberBuffers == *(v8 + 91))
    {
      v30 = (v8 + 336);
      if (v542)
      {
LABEL_61:
        VoiceProcessorV2::InjectionFilesReadSignal(v8, 1, v533, v542);
        if (v9[3249])
        {
LABEL_63:
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x32u, v533, v542, &v556);
LABEL_64:
          v36 = v543;
          if (!v543)
          {
            v36 = *(v8 + 201);
            if (v36->mNumberBuffers)
            {
              v37 = v13;
              v38 = 0;
              p_mData = &v36->mBuffers[0].mData;
              do
              {
                v40 = v36;
                bzero(*p_mData, *(p_mData - 1));
                v36 = v40;
                ++v38;
                p_mData += 2;
              }

              while (v38 < v40->mNumberBuffers);
              v13 = v37;
            }
          }

          v543 = v36;
          if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 10, v533, v543), (v9[3249] & 1) != 0) || v9[3250] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x55u, v533, v543, &v556);
          }

          v41 = v541;
          if (!v541)
          {
            v41 = *(v8 + 202);
            if (v41->mNumberBuffers)
            {
              v42 = v13;
              v43 = 0;
              v44 = &v41->mBuffers[0].mData;
              do
              {
                v45 = v41;
                bzero(*v44, *(v44 - 1));
                v41 = v45;
                ++v43;
                v44 += 2;
              }

              while (v43 < v45->mNumberBuffers);
              v13 = v42;
            }
          }

          v541 = v41;
          if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 11, v533, v541), (v9[3249] & 1) != 0) || v9[3250] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x56u, v533, v541, &v556);
          }

          v28 = *(v8 + 123);
LABEL_83:
          v46 = v533;
          v545 = v9;
          v546 = v8;
          if (v28 == v533)
          {
            if (v7->mBuffers[0].mDataByteSize == *(v8 + 90) * v533)
            {
              v525 = v13;
              if (v9[3171] != 1)
              {
                goto LABEL_223;
              }

              v9[3171] = 0;
              v47 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
              VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), v46, "processdownlinkaudio: <block size no longer mismatched>");
              if (v47 <= 1.0)
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v90 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
                if (v90)
                {
                  v91 = v90;
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(v557.mSampleTime) = 136315650;
                    *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                    WORD2(v557.mHostTime) = 1024;
                    *(&v557.mHostTime + 6) = 240;
                    WORD1(v557.mRateScalar) = 2048;
                    *(&v557.mRateScalar + 4) = v47;
                    _os_log_impl(&dword_2724B4000, v91, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v557, 0x1Cu);
                  }
                }

                v92 = *(v8 + 1588);
                if (v92 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v92, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 240, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v47);
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v93 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
                if (v93)
                {
                  v94 = v93;
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    v95 = *(v8 + 123);
                    LODWORD(v557.mSampleTime) = 136315906;
                    *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                    WORD2(v557.mHostTime) = 1024;
                    *(&v557.mHostTime + 6) = 244;
                    WORD1(v557.mRateScalar) = 1024;
                    HIDWORD(v557.mRateScalar) = v46;
                    LOWORD(v557.mWordClockTime) = 1024;
                    *(&v557.mWordClockTime + 2) = v95;
                    _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v557, 0x1Eu);
                  }
                }

                v54 = *(v8 + 1588);
                if (v54 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v55 = 244;
                  v56 = 2;
                  goto LABEL_222;
                }
              }

              else
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v48 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                if (v48)
                {
                  v49 = v48;
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v557.mSampleTime) = 136315650;
                    *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                    WORD2(v557.mHostTime) = 1024;
                    *(&v557.mHostTime + 6) = 232;
                    WORD1(v557.mRateScalar) = 2048;
                    *(&v557.mRateScalar + 4) = v47;
                    _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v557, 0x1Cu);
                  }
                }

                v50 = *(v8 + 1588);
                if (v50 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v50, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 232, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v47);
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v51 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                if (v51)
                {
                  v52 = v51;
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    v53 = *(v8 + 123);
                    LODWORD(v557.mSampleTime) = 136315906;
                    *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                    WORD2(v557.mHostTime) = 1024;
                    *(&v557.mHostTime + 6) = 236;
                    WORD1(v557.mRateScalar) = 1024;
                    HIDWORD(v557.mRateScalar) = v46;
                    LOWORD(v557.mWordClockTime) = 1024;
                    *(&v557.mWordClockTime + 2) = v53;
                    _os_log_impl(&dword_2724B4000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v557, 0x1Eu);
                  }
                }

                v54 = *(v8 + 1588);
                if (v54 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v55 = 236;
                  v56 = 1;
LABEL_222:
                  CALegacyLog::log(v54, v56, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", v55, "ProcessDownlinkAudio", "processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", v46, *(v8 + 123));
                }
              }

LABEL_223:
              v96 = *(v8 + 49);
              v97 = *(v8 + 123);
              if (*(v8 + 48))
              {
                if (v96)
                {
                  v98 = *(v8 + 123);
                  NumberOfSourceFrames = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v96);
                  v96 = *(v8 + 48);
LABEL_230:
                  v97 = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v96);
                  goto LABEL_231;
                }

                v96 = *(v8 + 48);
              }

              else if (!v96)
              {
LABEL_231:
                v99 = *(v8 + 14);
                v100 = *v99;
                if (v100 >= 1)
                {
                  v101 = v97 * *(v8 + 60);
                  v102 = (v100 + 3) & 0xFFFFFFFC;
                  v103 = vdupq_n_s64(v100 - 1);
                  v104 = xmmword_2727564D0;
                  v105 = xmmword_2727564E0;
                  v106 = (v99 + 11);
                  v107 = vdupq_n_s64(4uLL);
                  do
                  {
                    v108 = vmovn_s64(vcgeq_u64(v103, v105));
                    if (vuzp1_s16(v108, *v103.i8).u8[0])
                    {
                      *(v106 - 8) = v101;
                    }

                    if (vuzp1_s16(v108, *&v103).i8[2])
                    {
                      *(v106 - 4) = v101;
                    }

                    if (vuzp1_s16(*&v103, vmovn_s64(vcgeq_u64(v103, *&v104))).i32[1])
                    {
                      *v106 = v101;
                      v106[4] = v101;
                    }

                    v104 = vaddq_s64(v104, v107);
                    v105 = vaddq_s64(v105, v107);
                    v106 += 16;
                    v102 -= 4;
                  }

                  while (v102);
                }

                v551 = v97;
                Signal = (*(*(v8 + 13) + 16))();
                v110 = v551;
                v553 = v551;
                v111 = *(v8 + 14);
                if (v9[3249] == 1 && (Signal = VoiceProcessorV2::InjectionFilesReadSignal(v8, 0, v551, *(v8 + 14)), v111 = *(v8 + 14), (v9[3249] & 1) != 0) || v9[3250] == 1)
                {
                  Signal = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x33u, v551, v111, &v556);
                  v111 = *(v8 + 14);
                }

                v112 = *(v8 + 1993);
                if (AudioIssueDetectorLibraryLoader(void)::once != -1)
                {
                  dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3056);
                }

                if (AudioIssueDetectorLibraryLoader(void)::libSym)
                {
                  Signal = AudioIssueDetectorLibraryLoader(void)::libSym(v112, 51, 0, v111, v551, &v556);
                }

                if ((*(v8 + 2090) & 1) != 0 || *(v8 + 20) == 7 && *(v8 + 3152) == 0.0)
                {
                  Signal = vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v557, *(v8 + 14));
                  v113 = (*&v557.mSampleTime + 8);
                  v114 = 16 * **&v557.mSampleTime;
                  for (i = (*&v557.mSampleTime + 8); v114; v114 -= 16)
                  {
                    v117 = *i;
                    v116 = i[1];
                    i += 4;
                    Signal = vp::fill(v113, (v116 >> 2) / v117, 0.0);
                    v113 += 2;
                  }
                }

                v118 = *(v8 + 57);
                if ((v118 & 0x20) != 0)
                {
                  v121 = *(v8 + 61);
                  if (v121 - 65 <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v557.mSampleTime) = 136315394;
                      *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                      WORD2(v557.mHostTime) = 1024;
                      *(&v557.mHostTime + 6) = 309;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                    }

                    exception = __cxa_allocate_exception(0x10uLL);
                    *exception = &unk_2881B25F8;
                    exception[2] = -50;
                  }

                  MEMORY[0x28223BE20](Signal);
                  v120 = (&mBuffers - v122);
                  bzero(&mBuffers - v122, v123 + 24);
                }

                else
                {
                  v119 = MEMORY[0x28223BE20](Signal);
                  v120 = &v521;
                  v521 = 0;
                  v522 = 0uLL;
                  v121 = 1;
                }

                v124 = 0;
                mBuffers = v7->mBuffers;
                *v120 = v121;
                v125 = 2;
                if ((v118 & 0x20) != 0)
                {
                  goto LABEL_260;
                }

LABEL_261:
                for (j = 1; v124 < j; j = *(v8 + 61))
                {
                  *&v120[v125] = *(*(v8 + 14) + v125 * 4);
                  ++v124;
                  v125 += 4;
                  if ((v118 & 0x20) == 0)
                  {
                    goto LABEL_261;
                  }

LABEL_260:
                  ;
                }

                v532 = v7;
                v127 = *(v8 + 67);
                if ((v127 & 0x20) != 0)
                {
                  v129 = *(v8 + 71);
                  if (v129 - 65 <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v557.mSampleTime) = 136315394;
                      *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                      WORD2(v557.mHostTime) = 1024;
                      *(&v557.mHostTime + 6) = 314;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                    }

                    v512 = __cxa_allocate_exception(0x10uLL);
                    *v512 = &unk_2881B25F8;
                    v512[2] = -50;
                  }

                  MEMORY[0x28223BE20](v119);
                  v128 = (&mBuffers - v130);
                  bzero(&mBuffers - v130, v131 + 24);
                }

                else
                {
                  MEMORY[0x28223BE20](v119);
                  *&v128 = COERCE_DOUBLE(&v521);
                  v521 = 0;
                  v522 = 0uLL;
                  v129 = 1;
                }

                v132 = 0;
                v133 = 0;
                v134 = *&v128;
                *v128 = v129;
                v135 = (v128 + 2);
                if ((v127 & 0x20) != 0)
                {
                  goto LABEL_270;
                }

LABEL_271:
                for (k = 1; v133 < k; k = *(v8 + 71))
                {
                  v136 = *&v134 + v132;
                  *(v136 + 16) = *(*(v8 + 23) + v132 + 16);
                  *(v136 + 8) = 1;
                  *(v136 + 12) = 4 * v110;
                  ++v133;
                  v132 += 16;
                  if ((v127 & 0x20) == 0)
                  {
                    goto LABEL_271;
                  }

LABEL_270:
                  ;
                }

                if ((*(v8 + 8864) & 1) != 0 && (*(v8 + 8872) & 1) != 0 && *(v8 + 439))
                {
                  v138 = atomic_load(v8 + 2047);
                  v139 = v134;
                  if (v138)
                  {
                    *&v563.mSampleTime = v8;
                    *&v557.mSampleTime = caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV8::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>;
                    v557.mHostTime = &v563;
                    *&inInputBufferLists.mSampleTime = &v557;
                    caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>((v8 + 16296), &inInputBufferLists);
                    atomic_fetch_add(v8 + 2047, -v138);
                  }

                  v140 = *(v8 + 580);
                  if (v140 != *(v8 + 582))
                  {
                    AudioUnitSetParameter(*(v8 + 439), 0x75696F72u, 0, 0, v140, 0);
                  }

                  v557 = v556;
                  LODWORD(v560.mSampleTime) = 512;
                  *&inInputBufferLists.mSampleTime = v120;
                  v563.mSampleTime = v134;
                  LODWORD(v110) = v553;
                  AudioUnitProcessMultiple(*(v8 + 439), &v560, &v557, v553, 1u, &inInputBufferLists, 1u, &v563);
                }

                else
                {
                  if (*(v8 + 20) || *(v8 + 61) != 2)
                  {
                    v172 = &v135[2 * v129];
                    while (v135 != v172)
                    {
                      vp::fill(v135, v110, 0.0);
                      v173 = 16 * *v120;
                      for (m = v120 + 2; v173; v173 -= 16)
                      {
                        MEMORY[0x2743CCD80](v135[1], 1, *(m + 1), 1, v135[1], 1, v110);
                        m += 4;
                      }

                      v135 += 2;
                    }
                  }

                  else
                  {
                    if (v121 >= v129)
                    {
                      v141 = v129;
                    }

                    else
                    {
                      v141 = v121;
                    }

                    if (v141)
                    {
                      v142 = (v120 + 4);
                      v143 = (*&v134 + 16);
                      do
                      {
                        v144 = *(v142 - 1);
                        v145 = *(v143 - 1);
                        if (v144 >= v145)
                        {
                          v146 = v145;
                        }

                        else
                        {
                          v146 = v144;
                        }

                        memcpy(*v143, *v142, v146);
                        v142 += 2;
                        v143 += 2;
                        --v141;
                      }

                      while (v141);
                    }
                  }

                  v139 = v134;
                }

                if ((*(v8 + 8864) & 2) != 0 && (*(v8 + 8872) & 2) != 0)
                {
                  v147 = *(v8 + 440);
                  if (v147)
                  {
                    v557 = v556;
                    LODWORD(v563.mSampleTime) = 512;
                    v148 = MEMORY[0x28223BE20](v147);
                    v522 = 0uLL;
                    v521 = 0;
                    v522 = *(*(v8 + 23) + 8);
                    LODWORD(v521) = 1;
                    *&inInputBufferLists.mSampleTime = &v521;
                    AudioUnitProcessMultiple(v148, &v563, &v557, v110, 1u, &inInputBufferLists, 0, &v560);
                  }
                }

                v149 = *(v8 + 48);
                if (v149)
                {
                  VoiceProcessor::SampleRateConverter::Convert(v149, &v553, &NumberOfSourceFrames, *&v139, *(v8 + 24));
                  LODWORD(v110) = NumberOfSourceFrames;
                  v553 = NumberOfSourceFrames;
                  v139 = *(v8 + 24);
                }

                v151 = VoiceProcessorV2::DetermineNoiseBasedVolume(v8);
                v152 = 0;
                v153 = 0;
                v154 = (v110 / *(v8 + 132));
                inInputBufferLists = v556;
                v540 = (*&v139 + 8);
                v544 = (*&v139 + 16);
                v547 = v139;
                do
                {
                  if ((**&v139 - 65) <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v557.mSampleTime) = 136315394;
                      *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                      WORD2(v557.mHostTime) = 1024;
                      *(&v557.mHostTime + 6) = 424;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                    }

                    v499 = __cxa_allocate_exception(0x10uLL);
                    *v499 = &unk_2881B25F8;
                    v499[2] = -50;
                  }

                  MEMORY[0x28223BE20](v150);
                  v156 = (&mBuffers - v155);
                  bzero(&mBuffers - v155, v157 + 24);
                  v158 = **&v139;
                  v156->mNumberBuffers = v158;
                  if (v158)
                  {
                    v159 = &v156->mBuffers[0].mData;
                    v160 = v544;
                    do
                    {
                      *(v159 - 2) = 1;
                      *(v159 - 1) = 4 * v154;
                      v161 = *v160;
                      v160 += 4;
                      *v159 = (v161 + 4 * v152);
                      v159 += 2;
                      --v158;
                    }

                    while (v158);
                  }

                  v162 = *(v8 + 1108);
                  if ((v162 & 8) != 0 && (*(v8 + 8872) & 8) != 0)
                  {
                    v163 = *(v8 + 442);
                    if (v163)
                    {
                      v557 = inInputBufferLists;
                      LODWORD(v563.mSampleTime) = 512;
                      AudioUnitProcess(v163, &v563, &v557, v154, v156);
                      if ((v545[3249] & 1) != 0 || v545[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x57u, v154, v156, &v557);
                      }

                      v162 = *(v8 + 1108);
                    }
                  }

                  if ((v162 & 0x20) != 0 && (*(v8 + 8872) & 0x20) != 0)
                  {
                    v164 = *(v8 + 444);
                    if (v164)
                    {
                      v557 = inInputBufferLists;
                      LODWORD(v563.mSampleTime) = 512;
                      AudioUnitProcess(v164, &v563, &v557, v154, v156);
                      if ((v545[3249] & 1) != 0 || v545[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x58u, v154, v156, &v557);
                      }

                      v162 = *(v8 + 1108);
                    }
                  }

                  v165 = *&inInputBufferLists.mRateScalar;
                  *(v8 + 1103) = *&inInputBufferLists.mSampleTime;
                  *(v8 + 1104) = v165;
                  v166 = *&inInputBufferLists.mSMPTETime.mHours;
                  *(v8 + 1105) = *&inInputBufferLists.mSMPTETime.mSubframes;
                  *(v8 + 1106) = v166;
                  if ((~v162 & 0xC0) != 0 || ((*(v8 + 8872) & 0x40) == 0 || !*(v8 + 445) ? ((*(v8 + 8872) & 0x80) != 0 ? (v167 = *(v8 + 446) != 0) : (v167 = 0)) : (v167 = 1), *(v8 + 488) != 1 ? (v150 = (*(*v8 + 784))(v8, v156, v156, v167, v154)) : (*&v557.mSampleTime = v156, *&v563.mSampleTime = v156, v150 = BlockProcessor::Process(*(v8 + 2205), v154, &v557, &v563)), !v167))
                  {
                    v150 = (*(*v8 + 784))(v8, v156, v156, 0, v154);
                  }

                  v168 = *(v8 + 1108);
                  if (v168 & 0x100) != 0 && (*(v8 + 8873))
                  {
                    v150 = *(v8 + 447);
                    if (v150)
                    {
                      v557 = inInputBufferLists;
                      AudioUnitSetParameter(v150, 5u, 0, 0, v151, 0);
                      LODWORD(v563.mSampleTime) = 512;
                      v150 = AudioUnitProcess(*(v8 + 447), &v563, &v557, v154, v156);
                      if ((v545[3249] & 1) != 0 || v545[3250] == 1)
                      {
                        v150 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x36u, v154, v156, &v557);
                      }

                      v168 = *(v8 + 1108);
                    }
                  }

                  if ((v168 & 0x200) != 0 && (*(v8 + 8873) & 2) != 0)
                  {
                    v150 = *(v8 + 448);
                    if (v150)
                    {
                      v557 = inInputBufferLists;
                      LODWORD(v563.mSampleTime) = 512;
                      v150 = AudioUnitProcess(v150, &v563, &v557, v154, v156);
                      if ((v545[3249] & 1) != 0 || v545[3250] == 1)
                      {
                        v150 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x59u, v154, v156, &v557);
                      }

                      v168 = *(v8 + 1108);
                    }
                  }

                  if ((v168 & 0x4000) != 0 && (*(v8 + 8873) & 0x40) != 0)
                  {
                    if (*(v8 + 453))
                    {
                      v150 = (*(*v8 + 680))(v8, v156, v154, &inInputBufferLists);
                      if ((v545[3249] & 1) != 0 || v545[3250] == 1)
                      {
                        v150 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Du, v154, v156, &inInputBufferLists);
                      }
                    }
                  }

                  v152 += v154;
                  inInputBufferLists.mSampleTime = inInputBufferLists.mSampleTime + v154;
                  ++v153;
                  v139 = v547;
                }

                while (v153 < *(v8 + 132));
                v169 = *(v8 + 77);
                if ((v169 & 0x20) != 0)
                {
                  v171 = *(v8 + 81);
                  v7 = v532;
                  v9 = v545;
                  if ((v171 - 65) <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v557.mSampleTime) = 136315394;
                      *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                      WORD2(v557.mHostTime) = 1024;
                      *(&v557.mHostTime + 6) = 510;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                    }

                    v513 = __cxa_allocate_exception(0x10uLL);
                    *v513 = &unk_2881B25F8;
                    v513[2] = -50;
                  }

                  MEMORY[0x28223BE20](v150);
                  v170 = (&mBuffers - v175);
                  bzero(&mBuffers - v175, v176 + 24);
                }

                else
                {
                  MEMORY[0x28223BE20](v150);
                  v170 = &v521;
                  v521 = 0;
                  v522 = 0uLL;
                  v171 = 1;
                  v7 = v532;
                  v9 = v545;
                }

                *v170 = v171;
                v178 = *(v8 + 48);
                v177 = *(v8 + 49);
                if (v177)
                {
                  if (v178)
                  {
                    NumberOfSourceFrames = *(v8 + 123);
                    v177 = VoiceProcessor::SampleRateConverter::Convert(v177, &v553, &NumberOfSourceFrames, *&v139, *(v8 + 25));
                    v179 = 0;
                    v180 = *(v8 + 77);
                    v181 = 2;
                    v182 = v541;
                    v183 = v542;
                    v184 = v543;
                    if ((v180 & 0x20) != 0)
                    {
                      goto LABEL_365;
                    }

LABEL_366:
                    for (n = 1; v179 < n; n = *(v8 + 81))
                    {
                      *&v170[v181] = *(*(v8 + 25) + v181 * 4);
                      ++v179;
                      v181 += 4;
                      if ((v180 & 0x20) == 0)
                      {
                        goto LABEL_366;
                      }

LABEL_365:
                      ;
                    }
                  }

                  else
                  {
                    v177 = VoiceProcessor::SampleRateConverter::Convert(v177, &v553, &NumberOfSourceFrames, *&v139, *(v8 + 25));
                    v191 = 0;
                    v192 = *(v8 + 77);
                    v193 = 2;
                    v182 = v541;
                    v183 = v542;
                    v184 = v543;
                    if ((v192 & 0x20) != 0)
                    {
                      goto LABEL_380;
                    }

LABEL_381:
                    for (ii = 1; v191 < ii; ii = *(v8 + 81))
                    {
                      *&v170[v193] = *(*(v8 + 25) + v193 * 4);
                      ++v191;
                      v193 += 4;
                      if ((v192 & 0x20) == 0)
                      {
                        goto LABEL_381;
                      }

LABEL_380:
                      ;
                    }
                  }

                  v553 = NumberOfSourceFrames;
                }

                else
                {
                  v186 = v170 + 2;
                  if (v178)
                  {
                    v187 = 0;
                    v182 = v541;
                    v183 = v542;
                    v184 = v543;
                    v188 = v540;
                    if ((v169 & 0x20) != 0)
                    {
                      goto LABEL_373;
                    }

LABEL_374:
                    for (jj = 1; v187 < jj; jj = *(v8 + 81))
                    {
                      v189 = *&v188->mNumberBuffers;
                      v188 = (v188 + 16);
                      *v186++ = v189;
                      ++v187;
                      if ((v169 & 0x20) == 0)
                      {
                        goto LABEL_374;
                      }

LABEL_373:
                      ;
                    }
                  }

                  else
                  {
                    v182 = v541;
                    v183 = v542;
                    v184 = v543;
                    v395 = v540;
                    if ((v169 & 0x20) != 0)
                    {
                      goto LABEL_699;
                    }

LABEL_700:
                    for (kk = 1; v178 < kk; kk = *(v8 + 81))
                    {
                      v396 = *&v395->mNumberBuffers;
                      v395 = (v395 + 16);
                      *v186++ = v396;
                      ++v178;
                      if ((v169 & 0x20) == 0)
                      {
                        goto LABEL_700;
                      }

LABEL_699:
                      ;
                    }
                  }
                }

                v563 = v556;
                if (*(v8 + 132))
                {
                  v195 = 0;
                  v196 = 0;
                  v197 = v8 + 3512;
                  v529 = &v184->mBuffers[0].mData;
                  v530 = (v170 + 4);
                  v528 = &v182->mBuffers[0].mData;
                  v531 = &v183->mBuffers[0].mData;
                  v526 = (v8 + 2760);
                  v527 = &v7->mBuffers[0].mData;
                  v198 = 1;
                  v199 = -8589940800.0;
                  while (1)
                  {
                    v538 = v195;
                    if ((*(v8 + 308) & 0x20) != 0)
                    {
                      v203 = *(v8 + 81);
                      if ((v203 - 65) <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v557.mSampleTime) = 136315394;
                          *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                          WORD2(v557.mHostTime) = 1024;
                          *(&v557.mHostTime + 6) = 547;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                        }

                        v510 = __cxa_allocate_exception(0x10uLL);
                        *v510 = &unk_2881B25F8;
                        v510[2] = -50;
                      }

                      MEMORY[0x28223BE20](v177);
                      v202 = (&mBuffers - v204);
                      bzero(&mBuffers - v204, v205 + 24);
                      v201 = v543;
                    }

                    else
                    {
                      v200 = MEMORY[0x28223BE20](v177);
                      v202 = &v521;
                      v521 = 0;
                      v522 = 0uLL;
                      v203 = 1;
                    }

                    *v202 = v203;
                    if (v201)
                    {
                      mNumberBuffers = v201->mNumberBuffers;
                      if (v201->mNumberBuffers - 65 <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v557.mSampleTime) = 136315394;
                          *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                          WORD2(v557.mHostTime) = 1024;
                          *(&v557.mHostTime + 6) = 549;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                        }

                        v503 = __cxa_allocate_exception(0x10uLL);
                        *v503 = &unk_2881B25F8;
                        v503[2] = -50;
                      }
                    }

                    else
                    {
                      mNumberBuffers = 1;
                    }

                    MEMORY[0x28223BE20](v200);
                    v208 = (&mBuffers - v207);
                    bzero(&mBuffers - v207, v209 + 24);
                    v537 = v208;
                    *v208 = mNumberBuffers;
                    if (v541)
                    {
                      v211 = v541->mNumberBuffers;
                      if (v541->mNumberBuffers - 65 <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v557.mSampleTime) = 136315394;
                          *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                          WORD2(v557.mHostTime) = 1024;
                          *(&v557.mHostTime + 6) = 552;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                        }

                        v505 = __cxa_allocate_exception(0x10uLL);
                        *v505 = &unk_2881B25F8;
                        v505[2] = -50;
                      }
                    }

                    else
                    {
                      v211 = 1;
                    }

                    MEMORY[0x28223BE20](v210);
                    v213 = (&mBuffers - v212);
                    bzero(&mBuffers - v212, v214 + 24);
                    v536 = v213;
                    *v213 = v211;
                    v534 = v196;
                    if (v542)
                    {
                      v216 = v542->mNumberBuffers;
                      if (v542->mNumberBuffers - 65 <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v557.mSampleTime) = 136315394;
                          *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                          WORD2(v557.mHostTime) = 1024;
                          *(&v557.mHostTime + 6) = 555;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                        }

                        v507 = __cxa_allocate_exception(0x10uLL);
                        *v507 = &unk_2881B25F8;
                        v507[2] = -50;
                      }
                    }

                    else
                    {
                      v216 = 1;
                    }

                    MEMORY[0x28223BE20](v215);
                    v218 = (&mBuffers - v217);
                    bzero(&mBuffers - v217, v219 + 24);
                    v540 = v218;
                    v218->mNumberBuffers = v216;
                    v221 = *(v8 + 2260);
                    v222 = *(v8 + 204);
                    v544 = v202;
                    if (v221 != 1)
                    {
                      goto LABEL_408;
                    }

                    v223 = v538;
                    if (!v222)
                    {
                      goto LABEL_411;
                    }

                    if (*v222)
                    {
                      break;
                    }

LABEL_409:
                    v226 = *v222;
                    if ((*v222 - 65) <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v557.mSampleTime) = 136315394;
                        *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                        WORD2(v557.mHostTime) = 1024;
                        *(&v557.mHostTime + 6) = 560;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                      }

                      v509 = __cxa_allocate_exception(0x10uLL);
                      *v509 = &unk_2881B25F8;
                      v509[2] = -50;
                    }

LABEL_412:
                    MEMORY[0x28223BE20](v220);
                    v228 = (&mBuffers - v227);
                    bzero(&mBuffers - v227, v229 + 24);
                    v539 = v228;
                    *v228 = v226;
                    v231 = v7->mNumberBuffers;
                    if ((v231 - 65) <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v557.mSampleTime) = 136315394;
                        *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                        WORD2(v557.mHostTime) = 1024;
                        *(&v557.mHostTime + 6) = 562;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                      }

                      v500 = __cxa_allocate_exception(0x10uLL);
                      *v500 = &unk_2881B25F8;
                      v500[2] = -50;
                    }

                    v232 = v7;
                    MEMORY[0x28223BE20](v230);
                    v234 = (&mBuffers - v233);
                    bzero(&mBuffers - v233, v235 + 24);
                    v547 = *&v234;
                    *v234 = v231;
                    v236 = *v544;
                    if (v236)
                    {
                      v237 = 4 * *(v8 + 131);
                      v238 = v544 + 4;
                      v239 = v530;
                      do
                      {
                        *(v238 - 2) = 1;
                        *(v238 - 1) = v237;
                        v240 = *v239;
                        v239 += 2;
                        *v238 = v240 + 4 * v223;
                        v238 += 2;
                        --v236;
                      }

                      while (v236);
                    }

                    v241 = v537;
                    v242 = *v537;
                    v243 = v541;
                    v244 = v542;
                    v245 = v543;
                    v246 = v232;
                    v247 = v536;
                    if (v242)
                    {
                      v248 = 4 * *(v8 + 131);
                      v249 = (v537 + 4);
                      v250 = v529;
                      do
                      {
                        *(v249 - 2) = 1;
                        *(v249 - 1) = v248;
                        if (v245)
                        {
                          v251 = *v250 + 4 * v223;
                        }

                        else
                        {
                          v251 = 0;
                        }

                        *v249 = v251;
                        v249 += 2;
                        v250 += 2;
                        --v242;
                      }

                      while (v242);
                    }

                    v252 = *v247;
                    if (v252)
                    {
                      v253 = 4 * *(v8 + 131);
                      v254 = (v247 + 4);
                      v255 = v528;
                      do
                      {
                        *(v254 - 2) = 1;
                        *(v254 - 1) = v253;
                        if (v243)
                        {
                          v256 = *v255 + 4 * v223;
                        }

                        else
                        {
                          v256 = 0;
                        }

                        *v254 = v256;
                        v254 += 2;
                        v255 += 2;
                        --v252;
                      }

                      while (v252);
                    }

                    v257 = v540->mNumberBuffers;
                    if (v257)
                    {
                      v258 = 4 * *(v8 + 131);
                      v259 = &v540->mBuffers[0].mData;
                      v260 = v531;
                      do
                      {
                        *(v259 - 2) = 1;
                        *(v259 - 1) = v258;
                        if (v244)
                        {
                          v261 = *v260 + 4 * v223;
                        }

                        else
                        {
                          v261 = 0;
                        }

                        *v259 = v261;
                        v259 += 2;
                        v260 += 2;
                        --v257;
                      }

                      while (v257);
                    }

                    if (v231)
                    {
                      v262 = 4 * *(v8 + 131);
                      v263 = (*&v547 + 16);
                      v264 = v527;
                      do
                      {
                        *(v263 - 2) = 1;
                        *(v263 - 1) = v262;
                        if (v246)
                        {
                          v265 = *v264 + 4 * v223;
                        }

                        else
                        {
                          v265 = 0;
                        }

                        *v263 = v265;
                        v263 += 2;
                        v264 += 2;
                        --v231;
                      }

                      while (v231);
                    }

                    if (v226)
                    {
                      v266 = 4 * *(v8 + 131);
                      v267 = v226;
                      v268 = v222 + 4;
                      v269 = (v539 + 4);
                      do
                      {
                        *(v269 - 2) = 1;
                        *(v269 - 1) = v266;
                        if (v222)
                        {
                          v270 = *v268 + 4 * v223;
                        }

                        else
                        {
                          v270 = 0;
                        }

                        *v269 = v270;
                        v269 += 2;
                        v268 += 2;
                        --v267;
                      }

                      while (v267);
                    }

                    if (v244 && (*(v8 + 2260) & 1) != 0)
                    {
                      v271 = v542->mNumberBuffers >= v226 ? v226 : v542->mNumberBuffers;
                      if (v271)
                      {
                        v272 = (v539 + 4);
                        v273 = v531;
                        do
                        {
                          v274 = *(v273 - 1);
                          v275 = *(v272 - 1);
                          if (v274 >= v275)
                          {
                            v276 = v275;
                          }

                          else
                          {
                            v276 = v274;
                          }

                          memcpy(*v272, *v273, v276);
                          v273 += 2;
                          v272 += 2;
                          --v271;
                        }

                        while (v271);
                      }
                    }

                    if (v543)
                    {
                      v277 = v241;
                    }

                    else
                    {
                      v277 = 0;
                    }

                    MonoABL = GetMonoABL(v277, &v562, *(v8 + 131));
                    if (v541)
                    {
                      v279 = v247;
                    }

                    else
                    {
                      v279 = 0;
                    }

                    *&v280 = COERCE_DOUBLE(GetMonoABL(v279, &v561, *(v8 + 131)));
                    if (v542)
                    {
                      v281 = v540;
                    }

                    else
                    {
                      v281 = 0;
                    }

                    v282 = GetMonoABL(v281, &v550, *(v8 + 131));
                    if (v545[3928] == 1)
                    {
                      v283 = *(v8 + 1108);
                      if ((v283 & 0x400) != 0)
                      {
                        v284 = *(v8 + 1109);
                        if ((v284 & 0x400) != 0)
                        {
                          if (*(v8 + 449))
                          {
                            if ((v283 & v284 & 2) != 0)
                            {
                              v285 = *(v8 + 440);
                              if (v285)
                              {
                                LODWORD(v557.mSampleTime) = 0;
                                AudioUnitGetParameter(v285, 0x73707062u, 0, 0, &v557);
                                AudioUnitSetParameter(*(v8 + 449), 0x22u, 0, 0, *&v557.mSampleTime, 0);
                              }
                            }
                          }
                        }
                      }
                    }

                    v286 = 0;
                    *&v557.mSampleTime = 10;
                    v557.mHostTime = v544;
                    *&v557.mRateScalar = 11;
                    v535 = v282;
                    v557.mWordClockTime = v282;
                    *&v557.mSMPTETime.mSubframes = 12;
                    *&v557.mSMPTETime.mType = MonoABL;
                    *&v557.mSMPTETime.mHours = 13;
                    *&v557.mFlags = v280;
                    do
                    {
                      v287 = *(&v557.mSampleTime + v286);
                      v288 = *(&v557.mHostTime + v286);
                      if (!v288)
                      {
                        v288 = *(v8 + 203);
                        if (v288->mNumberBuffers)
                        {
                          v289 = v197;
                          v290 = 0;
                          v291 = &v288->mBuffers[0].mData;
                          do
                          {
                            bzero(*v291, *(v291 - 1));
                            ++v290;
                            v291 += 2;
                          }

                          while (v290 < v288->mNumberBuffers);
                          v288 = v546[203];
                          v197 = v289;
                          v8 = v546;
                        }
                      }

                      v292 = VoiceProcessorV2::VPUseAUInProcess(v8, v287, 0);
                      if (v288)
                      {
                        v293 = v292;
                      }

                      else
                      {
                        v293 = 0;
                      }

                      if (v293)
                      {
                        v560 = v563;
                        LODWORD(v559[0]) = 512;
                        AudioUnitProcess(*&v197[8 * v287], v559, &v560, *(v8 + 131), v288);
                      }

                      v286 += 16;
                    }

                    while (v286 != 64);
                    v294 = *(v8 + 1108);
                    if ((v294 & 0x40000000) != 0)
                    {
                      v297 = *(v8 + 1109);
                      v296 = *&v547;
                      if ((v297 & 0x40000000) == 0)
                      {
                        goto LABEL_488;
                      }

                      v295 = 0;
                      if (!*(v8 + 469) || (v294 & v297 & 0x80000000) == 0)
                      {
                        goto LABEL_489;
                      }

                      if (*(v8 + 470) && *v526 && *(*v526 + 80))
                      {
                        vp::Audio_Buffer::prepare(v526, *(v8 + 131));
                        v313 = *(v8 + 345);
                        if (v313)
                        {
                          v314 = *(v313 + 80);
                        }

                        else
                        {
                          v314 = 0;
                        }

                        if (*v314)
                        {
                          v356 = 0;
                          v357 = (v314 + 4);
                          do
                          {
                            bzero(*v357, *(v357 - 1));
                            ++v356;
                            v357 += 2;
                          }

                          while (v356 < *v314);
                          v313 = *v526;
                          v296 = *&v547;
                        }

                        if (v313)
                        {
                          v295 = *(v313 + 80);
                        }

                        else
                        {
                          v295 = 0;
                        }

                        LODWORD(v560.mSampleTime) = 512;
                        v557 = v563;
                        AudioUnitSetParameter(*(v8 + 469), 1u, 0, 0, (*(v8 + 3152) + -1.0) * 24.0, 0);
                        AudioUnitProcess(*(v8 + 469), &v560, &v557, *(v8 + 131), v295);
                        v358 = *(v8 + 131);
                        if ((v545[3249] & 1) != 0 || v545[3250] == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Du, *(v8 + 131), v295, &v563);
                          v358 = *(v8 + 131);
                        }

                        v557 = v563;
                        LODWORD(v560.mSampleTime) = 512;
                        AudioUnitProcess(*(v8 + 470), &v560, &v557, v358, v295);
                        v359 = *(v8 + 131);
                        if ((v545[3249] & 1) != 0 || v545[3250] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Eu, v359, v295, &v557), v359 = *(v8 + 131), (v545[3249]) || v545[3250] == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Fu, v359, v295, &v557);
                        }

                        v294 = *(v8 + 1108);
                      }

                      else
                      {
LABEL_488:
                        v295 = 0;
                      }
                    }

                    else
                    {
                      v295 = 0;
                      v296 = *&v547;
                    }

LABEL_489:
                    if (*(v8 + 2260))
                    {
                      v298 = v296;
                    }

                    else
                    {
                      v298 = v544;
                    }

                    if (*(v8 + 2260))
                    {
                      nn = v539;
                    }

                    else
                    {
                      nn = v535;
                    }

                    if (nn)
                    {
                      v299 = nn;
                    }

                    else
                    {
                      v299 = v295;
                    }

                    v540 = v299;
                    if ((v294 & 0x8000000) != 0 && ((*(v8 + 8875) & 8) != 0 || *(v8 + 480) == 1) && nn)
                    {
                      v300 = VoiceProcessorV2::CalculateDownlinkMixGainDB(v8);
                      *(v8 + 1121) = v300;
                      LODWORD(v557.mSampleTime) = __exp10f(v300 / 20.0);
                      v301 = *nn;
                      nn += 8;
                      for (mm = 16 * v301; mm; mm -= 16)
                      {
                        MEMORY[0x2743CCE20](*(nn + 8), 1, &v557, *(nn + 8), 1, *(v8 + 131));
                        nn += 16;
                      }

                      v294 = *(v8 + 1108);
                    }

                    if ((v294 & 0x10000000) != 0 && (*(v8 + 8875) & 0x10) != 0)
                    {
                      (*(*v8 + 688))(v8, v544, v539);
                      v294 = *(v8 + 1108);
                    }

                    if ((v294 & 0x8000) != 0 && (v303 = *(v8 + 1109), (v303 & 0x8000) != 0) && (v304 = *(v8 + 454)) != 0)
                    {
                      v305 = *(v8 + 2260);
                      v557 = v563;
                      v549 = 512;
                      v306 = v537;
                      if (((v543 != 0) & v305) == 0)
                      {
                        v306 = MonoABL;
                      }

                      *&v560.mSampleTime = v544;
                      v560.mHostTime = v306;
                      v307 = *&v536;
                      if (((v541 != 0) & v305) == 0)
                      {
                        v307 = *&v280;
                      }

                      v308 = v539;
                      if (((v542 != 0) & v305) == 0)
                      {
                        v308 = v535;
                      }

                      v560.mRateScalar = v307;
                      v560.mWordClockTime = v308;
                      *&v560.mSMPTETime.mSubframes = v295;
                      if ((v294 & v303 & 2) != 0)
                      {
                        v315 = *(v8 + 440);
                        v7 = v532;
                        v309 = v545;
                        if (v315 && ((v305 & 1) != 0 || v545[3929] == 1))
                        {
                          LODWORD(v559[0]) = 0;
                          Parameter = AudioUnitGetParameter(v315, 0x73707062u, 0, 0, v559);
                          v318 = *v559 == 1.0 && Parameter == 0;
                          v548 = v318;
                          AudioUnitSetProperty(*(v8 + 454), 0x6164756Bu, 0, 0, &v548, 4u);
                          v304 = *(v8 + 454);
                        }
                      }

                      else
                      {
                        v7 = v532;
                        v309 = v545;
                      }

                      v559[0] = v298;
                      v559[1] = v540;
                      AudioUnitProcessMultiple(v304, &v549, &v557, *(v8 + 131), 5u, &v560, 2u, v559);
                      v319 = *(v8 + 131);
                      if ((v309[3249] & 1) != 0 || v309[3250] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x5Bu, v319, v298, &v557), v319 = *(v8 + 131), (v309[3249]) || v309[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x78u, v319, v540, &v557);
                      }
                    }

                    else
                    {
                      if (MonoABL)
                      {
                        LODWORD(v557.mSampleTime) = 1055175620;
                        v310 = v298 + 2;
                        for (nn = 16 * *v298; nn; nn -= 16)
                        {
                          MEMORY[0x2743CCE10](MonoABL->mBuffers[0].mData, 1, &v557, *(v310 + 1), 1, *(v310 + 1), 1, *(v8 + 131));
                          v310 += 4;
                        }
                      }

                      v7 = v532;
                      if (*&v280 != 0.0)
                      {
                        v311 = v298 + 2;
                        for (nn = 16 * *v298; nn; nn -= 16)
                        {
                          MEMORY[0x2743CCD80](v280->mBuffers[0].mData, 1, *(v311 + 1), 1, *(v311 + 1), 1, *(v8 + 131));
                          v311 += 4;
                        }
                      }

                      v309 = v545;
                      if (v295)
                      {
                        if (v295 != v540)
                        {
                          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v557, v540);
                          v312 = *&v557.mSampleTime + 8;
                          for (nn = 16 * **&v557.mSampleTime; nn; nn -= 16)
                          {
                            MEMORY[0x2743CCD80](*(v295 + 16), 1, *(v312 + 8), 1, *(v312 + 8), 1, *(v8 + 131));
                            v312 += 16;
                          }
                        }
                      }
                    }

                    v320 = *(v8 + 1108);
                    if ((v320 & 0x8000) != 0 && (*(v8 + 8873) & 0x80) != 0 && *(v8 + 454) && *(v8 + 2260) == 1)
                    {
                      (*(*v8 + 664))(v8, v298, &v563);
                      v320 = *(v8 + 1108);
                      v7 = v532;
                      v309 = v545;
                    }

                    if ((v320 & 0x800000) != 0 && (*(v8 + 8874) & 0x80) != 0)
                    {
                      v321 = *(v8 + 462);
                      if (v321)
                      {
                        v557 = v563;
                        LODWORD(v560.mSampleTime) = 512;
                        AudioUnitProcess(v321, &v560, &v557, *(v8 + 131), v298);
                        if ((v309[3249] & 1) != 0 || v309[3250] == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, *(v8 + 131), v298, &v557);
                        }

                        v320 = *(v8 + 1108);
                      }
                    }

                    if (v320 & 0x1000000) != 0 && (*(v8 + 8875))
                    {
                      v322 = *(v8 + 463);
                      if (v322)
                      {
                        v323 = *(v8 + 580);
                        if (v323 != *(v8 + 582))
                        {
                          AudioUnitSetParameter(v322, 1u, 0, 0, v323, 0);
                          v322 = *(v8 + 463);
                        }

                        v557 = v563;
                        LODWORD(v560.mSampleTime) = 512;
                        AudioUnitProcess(v322, &v560, &v557, *(v8 + 131), v298);
                        v320 = *(v8 + 1108);
                      }
                    }

                    if ((v320 & 0x2000000) != 0 && (*(v8 + 8875) & 2) != 0 && (v324 = *(v8 + 464)) != 0)
                    {
                      v557 = v563;
                      LODWORD(v560.mSampleTime) = 512;
                      AudioUnitProcess(v324, &v560, &v557, *(v8 + 131), v298);
                    }

                    else if ((v320 & 0x4000000) != 0 && (*(v8 + 8875) & 4) != 0 && (v325 = *(v8 + 465)) != 0)
                    {
                      v326 = *(v8 + 199);
                      if (v326->mNumberBuffers)
                      {
                        v327 = 0;
                        v328 = *(v8 + 81) - 1;
                        nn = (v298 + 2);
                        v329 = 16;
                        do
                        {
                          if (v328 >= v327)
                          {
                            v330 = v327;
                          }

                          else
                          {
                            v330 = v328;
                          }

                          memcpy(*(&v326->mNumberBuffers + v329), *(nn + 16 * v330 + 8), 4 * *(v8 + 131));
                          ++v327;
                          v326 = *(v8 + 199);
                          v329 += 16;
                        }

                        while (v327 < v326->mNumberBuffers);
                        v325 = *(v8 + 465);
                      }

                      v557 = v563;
                      LODWORD(v560.mSampleTime) = 512;
                      AudioUnitProcess(v325, &v560, &v557, *(v8 + 131), v326);
                      v298 = *(v8 + 199);
                      if (!v298)
                      {
                        v559[0] = 0;
                        v558 = 0u;
                        memset(&v557, 0, sizeof(v557));
                        v498 = MEMORY[0x277D86220];
                        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        LODWORD(v560.mSampleTime) = 134217984;
                        *(&v560.mSampleTime + 4) = 0.0;
                        LODWORD(v523) = 12;
                        *(&v522 + 1) = &v560;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_955;
                      }
                    }

                    else
                    {
                      v331 = 1.0;
                      if ((*(v8 + 2260) & 1) == 0)
                      {
                        v331 = *(v8 + 3155);
                      }

                      LODWORD(v557.mSampleTime) = __exp10f(((v331 * 32.0) + -32.0) / 20.0);
                      v332 = v298 + 2;
                      for (i1 = 16 * *v298; i1; i1 -= 16)
                      {
                        MEMORY[0x2743CCE20](*(v332 + 1), 1, &v557, *(v332 + 1), 1, *(v8 + 131));
                        v332 += 4;
                      }

                      if ((v309[3249] & 1) != 0 || v309[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, *(v8 + 131), v298, &v556);
                      }
                    }

                    if (!v540 || (*(v8 + 8867) & 0x20) == 0 || (*(v8 + 8875) & 0x20) == 0 && *(v8 + 480) != 1)
                    {
                      v334 = v547;
                      if (*v298)
                      {
                        v335 = 0;
                        v336 = 4;
                        do
                        {
                          memcpy(*(*&v334 + v336 * 4), *&v298[v336], 4 * *(v8 + 131));
                          ++v335;
                          v336 += 4;
                        }

                        while (v335 < *v298);
                      }

                      goto LABEL_598;
                    }

                    v344 = *(v8 + 2260);
                    if (v344 == 1)
                    {
                      v345 = *(v8 + 91);
                      v346 = *v298;
LABEL_612:
                      v347 = v547;
                      if (v346)
                      {
                        v348 = 0;
                        v349 = v345 - 1;
                        v350 = v540->mBuffers;
                        v351 = 4;
                        do
                        {
                          if (v349 >= v348)
                          {
                            v352 = v348;
                          }

                          else
                          {
                            v352 = v349;
                          }

                          MEMORY[0x2743CCD80](*&v298[v351], 1, v350[v352].mData, 1, *(*&v347 + v351 * 4), 1, *(v8 + 131));
                          ++v348;
                          v351 += 4;
                          v347 = v547;
                        }

                        while (v348 < *v298);
                      }

                      goto LABEL_598;
                    }

                    v346 = *v298;
                    v345 = 1;
                    if ((v344 & 1) != 0 || v346 == 1)
                    {
                      goto LABEL_612;
                    }

                    v353 = v298 + 2;
                    v354 = v540->mBuffers;
                      ;
                    }

LABEL_598:
                    DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
                    if ((DynamicsDSPChannelCount - 65) <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v557.mSampleTime) = 136315394;
                        *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                        WORD2(v557.mHostTime) = 1024;
                        *(&v557.mHostTime + 6) = 860;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                      }

                      v501 = __cxa_allocate_exception(0x10uLL);
                      *v501 = &unk_2881B25F8;
                      v501[2] = -50;
                    }

                    v338 = DynamicsDSPChannelCount;
                    MEMORY[0x28223BE20](DynamicsDSPChannelCount);
                    v340 = (&mBuffers - v339);
                    bzero(&mBuffers - v339, v341 + 24);
                    v340->mNumberBuffers = v338;
                    v177 = memcpy(v340->mBuffers, (*&v547 + 8), 16 * v338);
                    v9 = v545;
                    v342 = v534;
                    if ((v545[3249] & 1) != 0 || v545[3250] == 1)
                    {
                      v177 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x35u, *(v8 + 131), v340, &v556);
                    }

                    if (*(v8 + 8868) & 1) != 0 && (*(v8 + 8876))
                    {
                      v177 = *(v8 + 471);
                      if (v177)
                      {
                        v557 = v563;
                        LODWORD(v560.mSampleTime) = 512;
                        v177 = AudioUnitProcess(v177, &v560, &v557, *(v8 + 131), v340);
                      }
                    }

                    v343 = *(v8 + 131);
                    v563.mSampleTime = v563.mSampleTime + v343;
                    v195 = v343 + v538;
                    v196 = v342 + 1;
                    if (v196 >= *(v8 + 132))
                    {
                      goto LABEL_641;
                    }
                  }

                  v224 = 0;
                  v225 = (v222 + 4);
                  do
                  {
                    bzero(*v225, *(v225 - 1));
                    ++v224;
                    v225 += 2;
                  }

                  while (v224 < *v222);
                  v222 = *(v8 + 204);
LABEL_408:
                  v223 = v538;
                  if (!v222)
                  {
LABEL_411:
                    v226 = 1;
                    goto LABEL_412;
                  }

                  goto LABEL_409;
                }

LABEL_641:
                v360 = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
                v361 = v360;
                v362 = *(v8 + 1108);
                if ((v362 & 0x400000000) != 0)
                {
                  v363 = v533;
                  if ((*(v8 + 8876) & 4) != 0)
                  {
                    v364 = *(v8 + 473);
                    if (v364)
                    {
                      if ((v360 - 65) <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v557.mSampleTime) = 136315394;
                          *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                          WORD2(v557.mHostTime) = 1024;
                          *(&v557.mHostTime + 6) = 885;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                        }

                        v514 = __cxa_allocate_exception(0x10uLL);
                        *v514 = &unk_2881B25F8;
                        v514[2] = -50;
                      }

                      MEMORY[0x28223BE20](v360);
                      v366 = (&mBuffers - v365);
                      bzero(&mBuffers - v365, v367 + 24);
                      v366->mNumberBuffers = v361;
                      memcpy(v366->mBuffers, mBuffers, 16 * v361);
                      LODWORD(v557.mSampleTime) = 512;
                      v360 = AudioUnitProcess(v364, &v557, &v556, *(v8 + 123), v366);
                      if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                      {
                        v360 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x40u, v363, v366, &v556);
                      }

                      v362 = *(v8 + 1108);
                    }
                  }
                }

                else
                {
                  v363 = v533;
                }

                if ((v362 & 0x2000000000) != 0 && (*(v8 + 8876) & 0x20) != 0 && *(v8 + 476) || (v362 & 0x800000000) != 0 && (*(v8 + 8876) & 8) != 0 && *(v8 + 474))
                {
                  if ((v362 & 0x2000000000) != 0)
                  {
                    v368 = 37;
                  }

                  else
                  {
                    v368 = 35;
                  }

                  v369 = (v8 + 8 * v368);
                  if (v361 == v7->mNumberBuffers)
                  {
                    v557 = v556;
                    LODWORD(v560.mSampleTime) = 512;
                    v360 = AudioUnitProcess(v369[439], &v560, &v557, *(v8 + 123), v7);
                  }

                  else
                  {
                    v391 = *(v8 + 26);
                    if (v391->mNumberBuffers)
                    {
                      v392 = 0;
                      v393 = 16;
                      do
                      {
                        memcpy(*(&v391->mNumberBuffers + v393), v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
                        ++v392;
                        v391 = *(v8 + 26);
                        v393 += 16;
                      }

                      while (v392 < v391->mNumberBuffers);
                    }

                    v557 = v556;
                    v550.mNumberBuffers = 512;
                    v360 = AudioUnitProcess(v369[439], &v550.mNumberBuffers, &v557, *(v8 + 123), v391);
                    if ((*(v8 + 8868) & 0x40) != 0 && (*(v8 + 8876) & 0x40) != 0 && (v360 = *(v8 + 477)) != 0)
                    {
                      v394 = *(v8 + 580);
                      if (v394 != *(v8 + 582))
                      {
                        AudioUnitSetParameter(v360, 0, 0, 0, v394, 0);
                        v360 = *(v8 + 477);
                      }

                      *&v562.mNumberBuffers = *(v8 + 26);
                      *&v561.mNumberBuffers = v7;
                      v560 = v556;
                      LODWORD(v559[0]) = 512;
                      v360 = AudioUnitProcessMultiple(v360, v559, &v560, *(v8 + 123), 1u, &v562, 1u, &v561);
                      if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                      {
                        v360 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v363, v7, &v560);
                      }
                    }

                    else if (v7->mNumberBuffers)
                    {
                      v398 = 0;
                      v399 = &v7->mBuffers[0].mData;
                      do
                      {
                        v400 = *(v8 + 26);
                        if (v398 >= *v400)
                        {
                          v401 = 0;
                        }

                        else
                        {
                          v401 = v398;
                        }

                        v360 = memcpy(*v399, *&v400[4 * v401 + 4], *(v399 - 1));
                        ++v398;
                        v399 += 2;
                      }

                      while (v398 < v7->mNumberBuffers);
                    }
                  }
                }

                else if ((v362 & 0x20000000000) != 0 && (v370 = *(v8 + 1109), (v370 & 0x20000000000) != 0) && *(v8 + 480))
                {
                  if ((v362 & v370 & 0x40000000000) != 0 && *(v8 + 481))
                  {
                    if (v361 - 65 <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v557.mSampleTime) = 136315394;
                        *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                        WORD2(v557.mHostTime) = 1024;
                        *(&v557.mHostTime + 6) = 947;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                      }

                      v519 = __cxa_allocate_exception(0x10uLL);
                      *v519 = &unk_2881B25F8;
                      v519[2] = -50;
                    }

                    MEMORY[0x28223BE20](v360);
                    v372 = (&mBuffers - v371);
                    bzero(&mBuffers - v371, v373 + 24);
                    v374 = 0;
                    *v372 = v361;
                    v375 = *(v8 + 26);
                    v376 = 16 * v361;
                    do
                    {
                      v377 = memcpy(*(v375 + v374 + 16), v7->mBuffers[v374 / 0x10].mData, *(v375 + v374 + 12));
                      v375 = *(v8 + 26);
                      *&v372[v374 / 4 + 2] = *(v375 + v374 + 8);
                      v374 += 16;
                    }

                    while (v376 != v374);
                    *&v560.mSampleTime = v372;
                    v378 = *(v8 + 1081);
                    if ((v378 - 65) < 0xFFFFFFC0)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v557.mSampleTime) = 136315394;
                        *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                        WORD2(v557.mHostTime) = 1024;
                        *(&v557.mHostTime + 6) = 959;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                      }

                      v520 = __cxa_allocate_exception(0x10uLL);
                      *v520 = &unk_2881B25F8;
                      v520[2] = -50;
                    }

                    MEMORY[0x28223BE20](v377);
                    v380 = (&mBuffers - v379);
                    bzero(&mBuffers - v379, v381 + 24);
                    v380->mNumberBuffers = v378;
                    v382 = v7 + 1;
                    v383 = 8;
                    v384 = v378;
                    v363 = v533;
                    do
                    {
                      v385 = *&v382->mNumberBuffers;
                      v382 = (v382 + 32);
                      *(&v380->mNumberBuffers + v383) = v385;
                      v383 += 16;
                      --v384;
                    }

                    while (v384);
                    *&v562.mNumberBuffers = v380;
                    if ((*(v8 + 2261) & 1) != 0 || !*(v8 + 20) && *(v8 + 61) == 2)
                    {
                      v386 = *(v8 + 580);
                      if (v386 != *(v8 + 582))
                      {
                        AudioUnitSetParameter(*(v8 + 481), 0, 0, 0, v386, 0);
                      }
                    }

                    v557 = v556;
                    v561.mNumberBuffers = 512;
                    AudioUnitProcessMultiple(*(v8 + 481), &v561.mNumberBuffers, &v557, *(v8 + 123), 1u, &v560, 1u, &v562);
                    if (v9[3249] & 1) != 0 || (v9[3250])
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x80u, v363, v380, &v557);
                    }

                    v407 = &v7->mBuffers[0].mData;
                    do
                    {
                      memcpy(*v407, v407[2], *(v407 - 1));
                      v407 += 4;
                      --v378;
                    }

                    while (v378);
                  }

                  else if ((*(v8 + 2260) & 1) == 0 && v7->mNumberBuffers >= 2)
                  {
                    v405 = v7[1].mBuffers;
                    v406 = 1;
                    do
                    {
                      memcpy(*v405, v7->mBuffers[0].mData, *(v405 - 1));
                      ++v406;
                      v405 += 2;
                    }

                    while (v406 < v7->mNumberBuffers);
                  }

                  v557 = v556;
                  LODWORD(v560.mSampleTime) = 512;
                  v360 = AudioUnitProcess(*(v8 + 480), &v560, &v557, *(v8 + 123), v7);
                }

                else if (v362 < 0 && (*(v8 + 1109) & 0x8000000000000000) != 0)
                {
                  v402 = v7->mNumberBuffers;
                  if (v7->mNumberBuffers >= 2)
                  {
                    if (*(v8 + 81) == 1)
                    {
                      v360 = memcpy(*&v7[1].mBuffers[0].mNumberChannels, v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
                      v402 = v7->mNumberBuffers;
                    }

                    if (v402 >= 3)
                    {
                      v403 = &v7[2];
                      v404 = 2;
                      do
                      {
                        bzero(*v403, *(v403 - 1));
                        ++v404;
                        v403 += 2;
                      }

                      while (v404 < v7->mNumberBuffers);
                    }
                  }
                }

                else if ((*(v8 + 2260) & 1) == 0)
                {
                  v387 = *(v8 + 81);
                  v388 = v387 <= 1 ? 1 : v387;
                  if (v388 < v7->mNumberBuffers)
                  {
                    v389 = &mBuffers[(v388 - 1)];
                    v390 = 16 * v388 + 16;
                    do
                    {
                      v360 = memcpy(*(&v7->mNumberBuffers + v390), v389[1], *(v389 + 1));
                      ++v388;
                      v390 += 16;
                    }

                    while (v388 < v7->mNumberBuffers);
                  }
                }

                v408 = *(v8 + 1108);
                if ((v408 & 0x80000000000) == 0)
                {
                  p_mSampleTime = &v525->mSampleTime;
                  goto LABEL_766;
                }

                p_mSampleTime = &v525->mSampleTime;
                if ((*(v8 + 8877) & 8) == 0 || !*(v8 + 482))
                {
LABEL_766:
                  if ((v408 & 0x100000000000) != 0 && (*(v8 + 8877) & 0x10) != 0)
                  {
                    v360 = *(v8 + 483);
                    if (v360)
                    {
                      v425 = p_mSampleTime[1];
                      *&v557.mSampleTime = *p_mSampleTime;
                      *&v557.mRateScalar = v425;
                      v426 = p_mSampleTime[3];
                      *&v557.mSMPTETime.mSubframes = p_mSampleTime[2];
                      *&v557.mSMPTETime.mHours = v426;
                      LODWORD(v560.mSampleTime) = 512;
                      v360 = AudioUnitProcess(v360, &v560, &v557, *(v8 + 123), v7);
                      v408 = *(v8 + 1108);
                    }
                  }

                  if ((v408 & 0x200000000000) != 0 && (*(v8 + 8877) & 0x20) != 0)
                  {
                    v360 = *(v8 + 484);
                    if (v360)
                    {
                      *&v560.mSampleTime = v7;
                      *&v562.mNumberBuffers = v7;
                      v427 = p_mSampleTime[1];
                      *&v557.mSampleTime = *p_mSampleTime;
                      *&v557.mRateScalar = v427;
                      v428 = p_mSampleTime[3];
                      *&v557.mSMPTETime.mSubframes = p_mSampleTime[2];
                      *&v557.mSMPTETime.mHours = v428;
                      v561.mNumberBuffers = 512;
                      v360 = AudioUnitProcessMultiple(v360, &v561.mNumberBuffers, &v557, *(v8 + 123), 1u, &v560, 1u, &v562);
                      v408 = *(v8 + 1108);
                    }
                  }

                  if ((v408 & 0x100000000000000) == 0 || (v429 = *(v8 + 1109), (v429 & 0x100000000000000) == 0) || !*(v8 + 495))
                  {
                    if ((v408 & 0x200000000000000) == 0 || (v429 = *(v8 + 1109), (v429 & 0x200000000000000) == 0) || !*(v8 + 496))
                    {
                      if ((v408 & 0x400000000000000) == 0 || (v429 = *(v8 + 1109), (v429 & 0x400000000000000) == 0) || !*(v8 + 497))
                      {
                        v446 = 0;
LABEL_811:
                        if ((v408 & 0x40000000000000) != 0 && (*(v8 + 8878) & 0x40) != 0)
                        {
                          v360 = *(v8 + 493);
                          if (v360)
                          {
                            v557 = v556;
                            LODWORD(v560.mSampleTime) = 512;
                            v360 = AudioUnitProcess(v360, &v560, &v557, *(v8 + 123), v7);
                            v408 = *(v8 + 1108);
                          }
                        }

                        if ((v408 & 0x2000000000000000) != 0 && ((*(v8 + 8879) & 0x20) != 0 || *(v8 + 480) == 1))
                        {
                          LODWORD(v557.mSampleTime) = 1065353216;
                          LODWORD(v560.mSampleTime) = 1065353216;
                          if (((*(v8 + 2091) & 1) != 0 || *(v8 + 480) == 1) && (v447 = *(v8 + 1139), v447 != 0.0))
                          {
                            v448 = __exp10f(v447 / 20.0);
                            *&v560.mSampleTime = v448;
                            *&v557.mSampleTime = v448;
                          }

                          else
                          {
                            v449 = *(v8 + 1137);
                            if (v449 >= -300.0)
                            {
                              if (v449 == 0.0)
                              {
                                v448 = 1.0;
                              }

                              else
                              {
                                if (v449 > 60.0)
                                {
                                  v449 = 60.0;
                                }

                                v448 = __exp10f(v449 / 20.0);
                                *&v557.mSampleTime = v448;
                              }
                            }

                            else
                            {
                              LODWORD(v557.mSampleTime) = 0;
                              v448 = 0.0;
                            }

                            v450 = *(v8 + 1138);
                            if (v450 >= -300.0)
                            {
                              if (v450 != 0.0)
                              {
                                if (v450 > 60.0)
                                {
                                  v450 = 60.0;
                                }

                                LODWORD(v560.mSampleTime) = __exp10f(v450 / 20.0);
                              }
                            }

                            else
                            {
                              LODWORD(v560.mSampleTime) = 0;
                            }
                          }

                          if (v448 == 0.0)
                          {
                            bzero(v7->mBuffers[0].mData, 4 * *(v8 + 123));
                          }

                          else if (v448 != 1.0)
                          {
                            v360 = MEMORY[0x2743CCE20](v7->mBuffers[0].mData, 1, &v557, v7->mBuffers[0].mData, 1, *(v8 + 123));
                          }

                          if (v7->mNumberBuffers >= 2)
                          {
                            v451 = 1;
                            v452 = 32;
                            do
                            {
                              if (*&v560.mSampleTime == 0.0)
                              {
                                bzero(*(&v7->mNumberBuffers + v452), 4 * *(v8 + 123));
                              }

                              else if (*&v560.mSampleTime != 1.0)
                              {
                                v360 = MEMORY[0x2743CCE20](*(&v7->mNumberBuffers + v452), 1, &v560, *(&v7->mNumberBuffers + v452), 1, *(v8 + 123), *&v560.mSampleTime);
                              }

                              ++v451;
                              v452 += 16;
                            }

                            while (v451 < v7->mNumberBuffers);
                          }

                          v408 = *(v8 + 1108);
                        }

                        if (v408 & 0x100000000000000) != 0 && (*(v8 + 8879))
                        {
                          v360 = *(v8 + 495);
                          if (v360)
                          {
                            if (*(v8 + 1136) == 1 && (v453 = *(v8 + 198)) != 0)
                            {
                              ABLRingBuffer<float>::ReadFrom(v8 + 386, *(v8 + 123), v453);
                              v360 = *(v8 + 495);
                              v454 = 2;
                            }

                            else
                            {
                              v454 = 1;
                            }

                            v455 = *(v8 + 198);
                            *&v560.mSampleTime = v7;
                            v560.mHostTime = v455;
                            *&v562.mNumberBuffers = v7;
                            v557 = v556;
                            v561.mNumberBuffers = 512;
                            v360 = AudioUnitProcessMultiple(v360, &v561.mNumberBuffers, &v557, *(v8 + 123), v454, &v560, 1u, &v562);
                            if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                            {
                              v360 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x41u, v363, v7, &v557);
                            }

                            v408 = *(v8 + 1108);
                          }
                        }

                        if ((v408 & 0x200000000000000) != 0 && (*(v8 + 8879) & 2) != 0)
                        {
                          v456 = *(v8 + 496);
                          if (v456)
                          {
                            v457 = *(v8 + 1081);
                            if ((v457 - 65) <= 0xFFFFFFBF)
                            {
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                LODWORD(v557.mSampleTime) = 136315394;
                                *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                                WORD2(v557.mHostTime) = 1024;
                                *(&v557.mHostTime + 6) = 1269;
                                _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                              }

                              v515 = __cxa_allocate_exception(0x10uLL);
                              *v515 = &unk_2881B25F8;
                              v515[2] = -50;
                            }

                            MEMORY[0x28223BE20](v360);
                            v459 = (&mBuffers - v458);
                            bzero(&mBuffers - v458, v460 + 24);
                            v459->mNumberBuffers = v457;
                            v461 = 8;
                            v462 = mBuffers;
                            do
                            {
                              v463 = *v462;
                              v462 += 2;
                              *(&v459->mNumberBuffers + v461) = v463;
                              v461 += 16;
                              --v457;
                            }

                            while (v457);
                            v464 = *(v8 + 198);
                            *&v560.mSampleTime = v459;
                            v560.mHostTime = v464;
                            *&v562.mNumberBuffers = v459;
                            v557 = v556;
                            v561.mNumberBuffers = 512;
                            v360 = AudioUnitProcessMultiple(v456, &v561.mNumberBuffers, &v557, *(v8 + 123), 1u, &v560, 1u, &v562);
                            v363 = v533;
                            if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                            {
                              v360 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x42u, v533, v459, &v557);
                            }

                            v408 = *(v8 + 1108);
                          }
                        }

                        if ((v408 & 0x400000000000000) != 0 && (*(v8 + 8879) & 4) != 0 && *(v8 + 497))
                        {
                          if (*(v8 + 1136) == 1 && (v465 = *(v8 + 198)) != 0)
                          {
                            v360 = ABLRingBuffer<float>::ReadFrom(v8 + 386, *(v8 + 123), v465);
                            v466 = 2;
                          }

                          else
                          {
                            v466 = 1;
                          }

                          v467 = *(v8 + 1081);
                          if ((v467 - 65) <= 0xFFFFFFBF)
                          {
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                            {
                              LODWORD(v557.mSampleTime) = 136315394;
                              *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                              WORD2(v557.mHostTime) = 1024;
                              *(&v557.mHostTime + 6) = 1296;
                              _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                            }

                            v516 = __cxa_allocate_exception(0x10uLL);
                            *v516 = &unk_2881B25F8;
                            v516[2] = -50;
                          }

                          MEMORY[0x28223BE20](v360);
                          v469 = (&mBuffers - v468);
                          bzero(&mBuffers - v468, v470 + 24);
                          v469->mNumberBuffers = v467;
                          v471 = v7 + 1;
                          v472 = 8;
                          do
                          {
                            v473 = *&v471->mNumberBuffers;
                            v471 = (v471 + 32);
                            *(&v469->mNumberBuffers + v472) = v473;
                            v472 += 16;
                            --v467;
                          }

                          while (v467);
                          v474 = *(v8 + 198);
                          *&v560.mSampleTime = v469;
                          v560.mHostTime = v474;
                          *&v562.mNumberBuffers = v469;
                          v557 = v556;
                          v561.mNumberBuffers = 512;
                          AudioUnitProcessMultiple(*(v8 + 497), &v561.mNumberBuffers, &v557, *(v8 + 123), v466, &v560, 1u, &v562);
                          v363 = v533;
                          if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                          {
                            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x43u, v533, v469, &v557);
                          }

                          v408 = *(v8 + 1108);
                        }

                        if ((v408 & 0x400000000000) != 0 && (*(v8 + 8877) & 0x40) != 0)
                        {
                          v475 = *(v8 + 485);
                          if (v475)
                          {
                            v557 = v556;
                            LODWORD(v560.mSampleTime) = 512;
                            AudioUnitProcess(v475, &v560, &v557, *(v8 + 123), v7);
                            v408 = *(v8 + 1108);
                          }
                        }

                        if ((v408 & 0x800000000000) != 0)
                        {
                          v476 = v446;
                        }

                        else
                        {
                          v476 = 1;
                        }

                        if (v476)
                        {
                          v477 = &unk_28133C000;
                        }

                        else
                        {
                          v477 = &unk_28133C000;
                          if ((*(v8 + 8877) & 0x80) != 0)
                          {
                            v478 = *(v8 + 486);
                            if (v478)
                            {
                              v557 = v556;
                              LODWORD(v560.mSampleTime) = 512;
                              AudioUnitProcess(v478, &v560, &v557, *(v8 + 123), v7);
                              if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, *(v8 + 123), v7, &v557);
                              }

                              v408 = *(v8 + 1108);
                            }
                          }
                        }

                        if ((v408 & 0x4000000000000) != 0 && (*(v8 + 8878) & 4) != 0)
                        {
                          v479 = *(v8 + 489);
                          if (v479)
                          {
                            v557 = v556;
                            LODWORD(v560.mSampleTime) = 512;
                            AudioUnitProcess(v479, &v560, &v557, *(v8 + 123), v7);
                            if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x77u, *(v8 + 123), v7, &v557);
                            }

                            v408 = *(v8 + 1108);
                          }
                        }

                        if ((v408 & 0x8000000000000) != 0 && (*(v8 + 8878) & 8) != 0)
                        {
                          v480 = *(v8 + 490);
                          if (v480)
                          {
                            v481 = *(v8 + 19);
                            if (v481 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v481) & 1) != 0)
                            {
                              v557 = v556;
                              LODWORD(v560.mSampleTime) = 512;
                              AudioUnitProcess(v480, &v560, &v557, *(v8 + 123), v7);
                              if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x75u, *(v8 + 123), v7, &v557);
                              }
                            }
                          }
                        }

                        if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v363, v7), (v9[3249] & 1) != 0) || v9[3250] == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v363, v7, &v556);
                        }

                        v482 = *(v8 + 1993);
                        if (AudioIssueDetectorLibraryLoader(void)::once != -1)
                        {
                          dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3056);
                        }

                        if (v477[85])
                        {
                          v477[85](v482, 70, 0, v7, v363, &v556);
                        }

                        if (*(v8 + 1135) == 1 && (v9[3528] & 1) == 0)
                        {
                          VoiceProcessorV2::AppendReferenceSignal(v8, v7, &v556, 0);
                        }

                        if (v9[3249] == 1)
                        {
                          VoiceProcessorV2::LoopBackRead(v8, v363, v7);
                        }

                        goto LABEL_925;
                      }
                    }
                  }

                  if ((v408 & v429 & 0x800000000000) != 0)
                  {
                    v360 = *(v8 + 486);
                    if (v360)
                    {
                      v557 = v556;
                      LODWORD(v560.mSampleTime) = 512;
                      v360 = AudioUnitProcess(v360, &v560, &v557, *(v8 + 123), v7);
                      if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                      {
                        v360 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, *(v8 + 123), v7, &v557);
                      }

                      v408 = *(v8 + 1108);
                    }
                  }

                  if (v408 & 0x1000000000000) != 0 && (*(v8 + 8878))
                  {
                    v430 = *(v8 + 487);
                    if (v430)
                    {
                      v431 = *(v8 + 1081);
                      if ((v431 - 65) <= 0xFFFFFFBF)
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_1003;
                        }

                        LODWORD(v557.mSampleTime) = 136315394;
                        *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                        WORD2(v557.mHostTime) = 1024;
                        *(&v557.mHostTime + 6) = 1156;
                        v517 = MEMORY[0x277D86220];
                        goto LABEL_1002;
                      }

                      MEMORY[0x28223BE20](v360);
                      v433 = (&mBuffers - v432);
                      bzero(&mBuffers - v432, v434 + 24);
                      v433->mNumberBuffers = v431;
                      v435 = 8;
                      v436 = mBuffers;
                      do
                      {
                        v437 = *v436;
                        v436 += 2;
                        *(&v433->mNumberBuffers + v435) = v437;
                        v435 += 16;
                        --v431;
                      }

                      while (v431);
                      v557 = v556;
                      LODWORD(v560.mSampleTime) = 512;
                      v360 = AudioUnitProcess(v430, &v560, &v557, *(v8 + 123), v433);
                      if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                      {
                        v360 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Au, *(v8 + 123), v433, &v557);
                      }

                      v408 = *(v8 + 1108);
                    }
                  }

                  if ((v408 & 0x2000000000000) == 0 || (*(v8 + 8878) & 2) == 0 || (v438 = *(v8 + 488)) == 0)
                  {
LABEL_809:
                    v446 = 1;
                    goto LABEL_811;
                  }

                  v439 = *(v8 + 1081);
                  if ((v439 - 65) > 0xFFFFFFBF)
                  {
                    MEMORY[0x28223BE20](v360);
                    v441 = (&mBuffers - v440);
                    bzero(&mBuffers - v440, v442 + 24);
                    v441->mNumberBuffers = v439;
                    v443 = v7 + 1;
                    v444 = 8;
                    do
                    {
                      v445 = *&v443->mNumberBuffers;
                      v443 = (v443 + 32);
                      *(&v441->mNumberBuffers + v444) = v445;
                      v444 += 16;
                      --v439;
                    }

                    while (v439);
                    v557 = v556;
                    LODWORD(v560.mSampleTime) = 512;
                    v360 = AudioUnitProcess(v438, &v560, &v557, *(v8 + 123), v441);
                    if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                    {
                      v360 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Bu, *(v8 + 123), v441, &v557);
                    }

                    v408 = *(v8 + 1108);
                    goto LABEL_809;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
LABEL_1003:
                    v518 = __cxa_allocate_exception(0x10uLL);
                    *v518 = &unk_2881B25F8;
                    v518[2] = -50;
                  }

                  LODWORD(v557.mSampleTime) = 136315394;
                  *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                  WORD2(v557.mHostTime) = 1024;
                  *(&v557.mHostTime + 6) = 1173;
                  v517 = MEMORY[0x277D86220];
LABEL_1002:
                  _os_log_impl(&dword_2724B4000, v517, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v557, 0x12u);
                  goto LABEL_1003;
                }

                v410 = *(v8 + 2140);
                v411 = *(v410 + 16);
                v561.mNumberBuffers = *(v8 + 129);
                v412 = *(v8 + 50);
                if (v412)
                {
                  v561.mNumberBuffers = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v412);
                  v410 = *(v8 + 1986);
                  if (v561.mNumberBuffers <= *(v410 + 12) >> 2)
                  {
                    VoiceProcessor::SampleRateConverter::Convert(*(v8 + 50), v8 + 129, &v561.mNumberBuffers, *(v8 + 2140), v410);
                    v410 = *(v8 + 1986);
                  }

                  else
                  {
                    *(v8 + 17128) = 0;
                  }

                  v411 = *(v410 + 16);
                }

                v413 = *(v410 + 12) >> 2;
                if (*(v8 + 17128) == 1)
                {
                  v414 = 0.0;
                  if (v413 > v561.mNumberBuffers)
                  {
                    vDSP_vclr(&v411[v561.mNumberBuffers], 1, (v413 - v561.mNumberBuffers));
                  }
                }

                else
                {
                  v414 = 1.0;
                  vDSP_vclr(v411, 1, v413);
                }

                AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, v414, 0);
                if ((*(v8 + 4694) & 0x80) != 0 && (*(v8 + 4710) & 0x80) != 0)
                {
                  v415 = *(v8 + 404);
                  if (v415)
                  {
                    LODWORD(v557.mSampleTime) = 0;
                    AudioUnitGetParameter(v415, 9u, 0, 0, &v557);
                    AudioUnitSetParameter(*(v8 + 482), 0x17u, 0, 0, *&v557.mSampleTime, 0);
                  }
                }

                v416 = *(v8 + 482);
                v417 = atomic_load(VoiceProcessorV4::mIsOnEar);
                AudioUnitSetParameter(v416, 0x16u, 0, 0, v417, 0);
                v418 = *(v8 + 50);
                v419 = 17120;
                if (v418)
                {
                  v419 = 15888;
                }

                v420 = *(v8 + v419);
                *&v560.mSampleTime = v7;
                v560.mHostTime = v420;
                v557 = v556;
                v550.mNumberBuffers = 512;
                *&v562.mNumberBuffers = v7;
                v421 = *(v8 + 131);
                if (v9[3249] & 1) != 0 || (v9[3250])
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x71u, v421, v7, &v557);
                  v421 = *(v8 + 131);
                  v422 = 15888;
                  if (!*(v8 + 50))
                  {
                    v422 = 17120;
                  }

                  v423 = *(v8 + v422);
                  if (v9[3249])
                  {
LABEL_761:
                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x72u, v421, v423, &v557);
LABEL_762:
                    AudioUnitProcessMultiple(*(v8 + 482), &v550.mNumberBuffers, &v557, *(v8 + 123), 2u, &v560, 1u, &v562);
                    if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                    {
                      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x73u, *(v8 + 131), v7, &v557);
                    }

                    v360 = AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, 0.0, 0);
                    v408 = *(v8 + 1108);
                    goto LABEL_766;
                  }
                }

                else
                {
                  if (v418)
                  {
                    v424 = (v8 + 15888);
                  }

                  else
                  {
                    v424 = (v8 + 17120);
                  }

                  v423 = *v424;
                }

                if (v9[3250] != 1)
                {
                  goto LABEL_762;
                }

                goto LABEL_761;
              }

              NumberOfSourceFrames = *(v8 + 123);
              goto LABEL_230;
            }

            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v71 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v72 = (*v71 ? *v71 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                mDataByteSize = v7->mBuffers[0].mDataByteSize;
                v74 = *(v8 + 90) * v533;
                LODWORD(v557.mSampleTime) = 136315906;
                *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                WORD2(v557.mHostTime) = 1024;
                *(&v557.mHostTime + 6) = 211;
                WORD1(v557.mRateScalar) = 1024;
                HIDWORD(v557.mRateScalar) = mDataByteSize;
                LOWORD(v557.mWordClockTime) = 1024;
                *(&v557.mWordClockTime + 2) = v74;
                _os_log_impl(&dword_2724B4000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", &v557, 0x1Eu);
              }
            }

            v75 = *(v8 + 1588);
            v76 = v9[3249];
            if (v75)
            {
              if ((v9[3249] & 1) == 0 && v9[3250] != 1)
              {
                goto LABEL_152;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v75, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 211, "ProcessDownlinkAudio", "processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", v7->mBuffers[0].mDataByteSize, *(v8 + 90) * v533);
              v76 = v9[3249];
            }

            if (v76)
            {
              VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v533, v7);
              if (v9[3249])
              {
LABEL_153:
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v533, v7, &v556);
LABEL_154:
                v77 = *(v8 + 1993);
                if (AudioIssueDetectorLibraryLoader(void)::once != -1)
                {
                  dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3056);
                }

                if (!AudioIssueDetectorLibraryLoader(void)::libSym)
                {
                  goto LABEL_925;
                }

                goto LABEL_199;
              }
            }

LABEL_152:
            if (v9[3250] != 1)
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          if (v9[3171])
          {
            v57 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
            v58 = *(v8 + 1981);
            if (v57 > v58)
            {
              *(v8 + 1981) = v58 + 10.0;
              VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), v533, "processdownlinkaudio: <block size mismatch>");
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v59 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
              if (v59)
              {
                v60 = v59;
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v557.mSampleTime) = 136315650;
                  *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                  WORD2(v557.mHostTime) = 1024;
                  *(&v557.mHostTime + 6) = 187;
                  WORD1(v557.mRateScalar) = 2048;
                  *(&v557.mRateScalar + 4) = v57;
                  _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", &v557, 0x1Cu);
                }
              }

              v61 = *(v8 + 1588);
              if (v61 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v61, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 187, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", v57);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v62 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
              if (v62)
              {
                v63 = v62;
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  v64 = v7->mBuffers[0].mDataByteSize;
                  v65 = *(v8 + 123);
                  CAFormatter::CAFormatter(&inInputBufferLists, v30);
                  v66 = *(v8 + 3150);
                  LODWORD(v557.mSampleTime) = 136316674;
                  *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                  WORD2(v557.mHostTime) = 1024;
                  *(&v557.mHostTime + 6) = 193;
                  WORD1(v557.mRateScalar) = 1024;
                  HIDWORD(v557.mRateScalar) = v533;
                  LOWORD(v557.mWordClockTime) = 1024;
                  *(&v557.mWordClockTime + 2) = v64;
                  HIWORD(v557.mWordClockTime) = 1024;
                  *&v557.mSMPTETime.mSubframes = v65;
                  LOWORD(v557.mSMPTETime.mCounter) = 2080;
                  *(&v557.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
                  HIWORD(v557.mSMPTETime.mFlags) = 1024;
                  *&v557.mSMPTETime.mHours = v66;
                  _os_log_impl(&dword_2724B4000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", &v557, 0x34u);
                  if (*&inInputBufferLists.mSampleTime)
                  {
                    free(*&inInputBufferLists.mSampleTime);
                  }

                  v9 = v545;
                }
              }

              v67 = *(v8 + 1588);
              if (v67)
              {
                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v68 = VPLogScope(void)::scope;
                  v69 = v7->mBuffers[0].mDataByteSize;
                  v70 = *(v8 + 123);
                  CAFormatter::CAFormatter(&v557, v30);
                  CALegacyLog::log(v67, 1, v68, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 193, "ProcessDownlinkAudio", "processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", v533, v69, v70, *&v557.mSampleTime, *(v8 + 3150));
LABEL_190:
                  if (*&v557.mSampleTime)
                  {
                    free(*&v557.mSampleTime);
                  }
                }
              }
            }
          }

          else
          {
            v9[3171] = 1;
            *(v8 + 1978) = mach_absolute_time();
            *(v8 + 1981) = 0x3FF0000000000000;
            VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), v46, "processdl: <block size mismatch>");
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v78 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
            {
              v79 = (*v78 ? *v78 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v557.mSampleTime) = 136315394;
                *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                WORD2(v557.mHostTime) = 1024;
                *(&v557.mHostTime + 6) = 164;
                _os_log_impl(&dword_2724B4000, v79, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG", &v557, 0x12u);
              }
            }

            v80 = *(v8 + 1588);
            if (v80 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v80, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 164, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG");
            }

            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v81 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
            {
              v82 = (*v81 ? *v81 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
              {
                v83 = v7->mBuffers[0].mDataByteSize;
                v84 = *(v8 + 123);
                CAFormatter::CAFormatter(&inInputBufferLists, v30);
                v85 = *(v8 + 3150);
                LODWORD(v557.mSampleTime) = 136316674;
                *(&v557.mSampleTime + 4) = "vpProcessDownlink_v8.cpp";
                WORD2(v557.mHostTime) = 1024;
                *(&v557.mHostTime + 6) = 170;
                WORD1(v557.mRateScalar) = 1024;
                HIDWORD(v557.mRateScalar) = v533;
                LOWORD(v557.mWordClockTime) = 1024;
                *(&v557.mWordClockTime + 2) = v83;
                HIWORD(v557.mWordClockTime) = 1024;
                *&v557.mSMPTETime.mSubframes = v84;
                LOWORD(v557.mSMPTETime.mCounter) = 2080;
                *(&v557.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
                HIWORD(v557.mSMPTETime.mFlags) = 1024;
                *&v557.mSMPTETime.mHours = v85;
                _os_log_impl(&dword_2724B4000, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", &v557, 0x34u);
                if (*&inInputBufferLists.mSampleTime)
                {
                  free(*&inInputBufferLists.mSampleTime);
                }

                v9 = v545;
              }
            }

            v86 = *(v8 + 1588);
            if (v86 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v87 = VPLogScope(void)::scope;
              v88 = v7->mBuffers[0].mDataByteSize;
              v89 = *(v8 + 123);
              CAFormatter::CAFormatter(&v557, v30);
              CALegacyLog::log(v86, 2, v87, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 170, "ProcessDownlinkAudio", "warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", v533, v88, v89, *&v557.mSampleTime, *(v8 + 3150));
              goto LABEL_190;
            }
          }

          if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v533, v7), (v9[3249] & 1) != 0) || v9[3250] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v533, v7, &v556);
          }

          v77 = *(v8 + 1993);
          if (AudioIssueDetectorLibraryLoader(void)::once != -1)
          {
            dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3056);
          }

          if (!AudioIssueDetectorLibraryLoader(void)::libSym)
          {
            goto LABEL_925;
          }

LABEL_199:
          AudioIssueDetectorLibraryLoader(void)::libSym(v77, 70, 0, v7, v533, &v556);
          goto LABEL_925;
        }

LABEL_62:
        if (v9[3250] != 1)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

LABEL_56:
      v31 = *(v8 + 200);
      v32 = v31->mNumberBuffers;
      v542 = v31;
      if (v32)
      {
        v33 = v13;
        v34 = 0;
        v35 = &v31->mBuffers[0].mData;
        do
        {
          bzero(*v35, *(v35 - 1));
          ++v34;
          v35 += 2;
        }

        while (v34 < v31->mNumberBuffers);
        v29 = v9[3249];
        v13 = v33;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }
  }

  else if (v7->mNumberBuffers == *(v8 + 91))
  {
    v30 = (v8 + 336);
    if ((v9[3250] & 1) == 0)
    {
      goto LABEL_83;
    }

    if (v542)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_925:
  if (v555 == 1)
  {
    (*(*v554 + 24))(v554);
  }

  LOBYTE(nn) = 1;
LABEL_928:
  if (v9[3249] == 1 && *(v8 + 1589))
  {
    v483 = mach_absolute_time();
    v484 = *(v8 + 1589);
    v198 = 0x280898000uLL;
    if (VPTimestampLogScope(void)::once != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    v298 = 0x280898000;
    v199 = v483 * 0.0000000416666667 - v12;
    CALegacyLog::log(v484, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 1377, "ProcessDownlinkAudio", "DL %f %f %f", v556.mSampleTime, v12, v199);
    v485 = *(v8 + 123);
    v486 = *(v8 + 42);
    if (v199 >= v485 / v486)
    {
      v498 = *(v8 + 1589);
      if (VPTimestampLogScope(void)::once != -1)
      {
LABEL_955:
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      CALegacyLog::log(v498, 5, *(v298 + 424), "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 1380, "ProcessDownlinkAudio", "DL ERROR, processing slower than RT - %f", v199);
      v485 = *(v8 + 123);
      v486 = *(v8 + 42);
    }

    if (v12 - *(v8 + 1984) > (*(v8 + 296) + v485) / v486)
    {
      v487 = *(v8 + 1589);
      if (*(v198 + 3384) != -1)
      {
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      CALegacyLog::log(v487, 5, *(v298 + 424), "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v8.cpp", 1383, "ProcessDownlinkAudio", "DL ERROR, not being called in a timely manner - %f", v12 - *(v8 + 1984));
    }

    *(v8 + 1984) = v12;
  }

  if (nn)
  {
    if (*(v8 + 1656) & 1) != 0 || (v488 = FadeInOverFewFrames(*(v8 + 205), v7, *(v8 + 412), *(v8 + 413)), *(v8 + 1656) = v488, *(v8 + 412) = HIDWORD(v488), (v488))
    {
      v489 = *(v8 + 205);
      v490 = v7->mNumberBuffers >= *v489 ? *v489 : v7->mNumberBuffers;
      if (v490)
      {
        v491 = &v7->mBuffers[0].mData;
        v492 = (v489 + 4);
        do
        {
          v493 = *(v491 - 1);
          v494 = *(v492 - 1);
          if (v493 >= v494)
          {
            v495 = v494;
          }

          else
          {
            v495 = v493;
          }

          memcpy(*v492, *v491, v495);
          v491 += 2;
          v492 += 2;
          --v490;
        }

        while (v490);
      }
    }
  }

  else
  {
    *(v8 + 412) = 0;
    *(v8 + 1656) = 0;
    FadeOutOverOneFrame(*(v8 + 205), v7);
  }

  atomic_fetch_add(v8 + 625, 0xFFFFFFFF);
  v496 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2725570FC(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::Locker::~Locker((v1 + 240));
  atomic_fetch_add((v2 + 2500), 0xFFFFFFFF);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV8::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>(uint64_t **a1, void *inData, UInt32 inDataSize)
{
  v4 = **a1;
  if (*(v4 + 16752))
  {
    v5 = 1733326433;
  }

  else
  {
    v5 = 1936747876;
  }

  if (*(v4 + 16752))
  {
    v6 = 1936747876;
  }

  else
  {
    v6 = 0;
  }

  return AudioUnitSetProperty(*(v4 + 3512), v5, 0, v6, inData, inDataSize);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3121()
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

void VoiceProcessorV8::OCNSAndSpeechEnhanceDLProcess(VoiceProcessorV8 *this, AudioBufferList *a2, AudioBufferList *a3, int a4, const AudioTimeStamp *inNumberFrames)
{
  v8 = a2;
  v34 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v10 = *(this + 2190);
    mData = a2->mBuffers[0].mData;
    inTimeStamp.mSampleTime = *(*(this + 2189) + 16);
    inTimeStamp.mHostTime = *&inTimeStamp.mSampleTime + 4 * inNumberFrames;
    VPTimeFreqConverter_Analyze(v10, mData, &inTimeStamp);
  }

  v12 = *(this + 1108);
  if ((v12 & 0x40) != 0 && (*(this + 8872) & 0x40) != 0)
  {
    v13 = *(this + 445);
    if (v13)
    {
      inInputBufferLists.imagp = 0;
      ioOutputBufferLists[1] = 0;
      p_mNumberBuffers = &v8->mNumberBuffers;
      v15 = a3;
      if (a4)
      {
        p_mNumberBuffers = *(this + 2189);
        v15 = p_mNumberBuffers;
      }

      inInputBufferLists.realp = p_mNumberBuffers;
      ioOutputBufferLists[0] = v15;
      v16 = *(this + 1104);
      *&inTimeStamp.mSampleTime = *(this + 1103);
      *&inTimeStamp.mRateScalar = v16;
      v17 = *(this + 1106);
      *&inTimeStamp.mSMPTETime.mSubframes = *(this + 1105);
      *&inTimeStamp.mSMPTETime.mHours = v17;
      ioActionFlags[0] = 512;
      AudioUnitProcessMultiple(v13, ioActionFlags, &inTimeStamp, inNumberFrames, 2u, &inInputBufferLists, 2u, ioOutputBufferLists);
      AudioUnitGetParameter(*(this + 445), 1u, 0, 0, this + 4189);
      v12 = *(this + 1108);
    }
  }

  if ((v12 & 0x80) != 0 && (*(this + 8872) & 0x80) != 0 && (v18 = *(this + 446)) != 0)
  {
    v19 = a3;
    if (a4)
    {
      v8 = *(this + 2189);
      v19 = v8;
    }

    *ioActionFlags = v19;
    ioOutputBufferLists[0] = v8;
    v20 = *(this + 1104);
    *&inTimeStamp.mSampleTime = *(this + 1103);
    *&inTimeStamp.mRateScalar = v20;
    v21 = *(this + 1106);
    *&inTimeStamp.mSMPTETime.mSubframes = *(this + 1105);
    *&inTimeStamp.mSMPTETime.mHours = v21;
    v29 = 512;
    AudioUnitSetProperty(v18, 0x3E9u, 0, 0, *(*(this + 2183) + 16), *(*(this + 2183) + 12));
    AudioUnitSetProperty(*(this + 446), 0x3EAu, 0, 0, this + 17504, 4u);
    v22 = *(this + 294);
    if (v22 != *(this + 295) && *v22 == 1886613611)
    {
      AudioUnitSetParameter(*(this + 446), 0x34u, 0, 0, *(this + 4377), 0);
    }

    AudioUnitProcessMultiple(*(this + 446), &v29, &inTimeStamp, inNumberFrames, 1u, ioOutputBufferLists, 1u, ioActionFlags);
    if (a4)
    {
      v23 = *(this + 2190);
      v24 = a3->mBuffers[0].mData;
      inInputBufferLists.realp = *(*(this + 2189) + 16);
      inInputBufferLists.imagp = &inInputBufferLists.realp[inNumberFrames];
      if (v23)
      {
        VPTimeFreqConverter::Synthesize(v23, &inInputBufferLists, v24);
      }
    }

    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Au, inNumberFrames, a3, &inTimeStamp);
    }
  }

  else if (a4)
  {
    v25 = *(this + 2190);
    v26 = a3->mBuffers[0].mData;
    v27 = *(*(this + 2189) + 16) + 4 * inNumberFrames;
    inTimeStamp.mSampleTime = *(*(this + 2189) + 16);
    inTimeStamp.mHostTime = v27;
    if (v25)
    {
      VPTimeFreqConverter::Synthesize(v25, &inTimeStamp, v26);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t VoiceProcessorV9::ProcessDownlinkAudio(atomic_uint *this, AudioBufferList *a2, AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, const AudioTimeStamp *a6, const AudioTimeStamp *a7)
{
  v7 = a5;
  v8 = this;
  v588 = *MEMORY[0x277D85DE8];
  v9 = (this + 3158);
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    VoiceProcessorV2::LogIOError(this, 23.006, this[3150], 0.0, 0.0, "processdl: tryer failed to acquire lock", a3, a4, a5, a6, a7);
    v10 = (v8 + 2592);
    CADeprecated::CAMutex::Lock((v8 + 2592));
LABEL_3:
    ++*(v8 + 3150);
    CADeprecated::CAMutex::Unlock(v10);
    v11 = 0;
    v12 = 0.0;
    goto LABEL_987;
  }

  v564 = a2;
  v565 = a3;
  v563 = a4;
  if ((*(this + 485) & 1) == 0)
  {
    VoiceProcessorV2::LogIOError(this, 23.005, this[3150], 0.0, 0.0, "processdl: not ok to process?!", a3, a4, a5, a6, a7);
    v10 = (v8 + 2592);
    CADeprecated::CAMutex::Lock((v8 + 2592));
    goto LABEL_3;
  }

  v13 = a7;
  v14 = a6;
  v12 = 0.0;
  if (*(this + 15881) == 1)
  {
    if (*(this + 1589))
    {
      v12 = mach_absolute_time() * 0.0000000416666667;
      if (*(v8 + 1984) == 0.0)
      {
        *(v8 + 1984) = v12;
      }
    }
  }

  (*(*v8 + 696))(&v580, v8, v13);
  v579 = v580;
  if (v9[3249] == 1)
  {
    if (*v9)
    {
      v15 = *(v8 + 1578);
      HIDWORD(v16) = HIDWORD(v579.mSampleTime);
      if (v15 == v579.mSampleTime)
      {
        goto LABEL_48;
      }

      VoiceProcessorV2::WriteTSOverload(v8, v15, v579.mSampleTime, 2);
      v16 = *(v8 + 1578);
      if (v579.mSampleTime >= v16)
      {
        goto LABEL_48;
      }

      v17 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v18 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(v8 + 1578);
          LODWORD(v580.mSampleTime) = 136316674;
          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v580.mHostTime) = 1024;
          *(&v580.mHostTime + 6) = 88;
          WORD1(v580.mRateScalar) = 2048;
          *(&v580.mRateScalar + 4) = v20;
          WORD2(v580.mWordClockTime) = 2048;
          *(&v580.mWordClockTime + 6) = *&v579.mSampleTime;
          HIWORD(v580.mSMPTETime.mCounter) = 2048;
          *&v580.mSMPTETime.mType = v579.mHostTime;
          v580.mSMPTETime.mHours = 2048;
          *&v580.mSMPTETime.mMinutes = v579.mRateScalar;
          HIWORD(v580.mFlags) = 1024;
          v580.mReserved = v579.mFlags;
          _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", &v580, 0x40u);
        }
      }

      v21 = *(v8 + 1588);
      if (v21 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v21, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 88, "ProcessDownlinkAudio", "sprk sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", *(v8 + 1578), v579.mSampleTime, v579.mHostTime, v579.mRateScalar, v579.mFlags);
      }

      VoiceProcessorV2::LogIOError(v8, 23.008, *(v8 + 3150), 0.0, 0.0, "sprk sample time jumped backwards");
    }

    else
    {
      *v9 = 1;
      VoiceProcessorV2::WriteTSOverload(v8, 0.0, v579.mSampleTime, 2);
      v16 = *(v8 + 216);
      v22 = v579.mSampleTime - v16;
      v23 = (((roundf(*(v8 + 291) * *(v8 + 126)) + *(v8 + 126)) + *(v8 + 295)) + *(v8 + 296));
      if (v579.mSampleTime - v16 == v23)
      {
LABEL_48:
        LODWORD(v16) = *(v8 + 123);
        *(v8 + 1578) = v579.mSampleTime + *&v16;
        goto LABEL_49;
      }

      v17 = v13;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v24 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v580.mSampleTime) = 136315906;
          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
          WORD2(v580.mHostTime) = 1024;
          *(&v580.mHostTime + 6) = 75;
          WORD1(v580.mRateScalar) = 2048;
          *(&v580.mRateScalar + 4) = v23;
          WORD2(v580.mWordClockTime) = 2048;
          *(&v580.mWordClockTime + 6) = v22;
          _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", &v580, 0x26u);
        }
      }

      v26 = *(v8 + 1588);
      if (v26 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v26, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 75, "ProcessDownlinkAudio", "bad mic-speaker delay: expected sample time diff: %.1lf, actual sample time diff: %.1lf", v23, v22);
      }

      VoiceProcessorV2::LogIOError(v8, 23.009, *(v8 + 3150), 0.0, 0.0, "bad relative mic-ref TS");
    }

    v13 = v17;
    goto LABEL_48;
  }

LABEL_49:
  v577 = v8 + 2504;
  v578 = (*(*(v8 + 313) + 16))();
  CADeprecated::CAMutex::Lock((v8 + 2592));
  ++*(v8 + 3150);
  CADeprecated::CAMutex::Unlock((v8 + 2592));
  v27 = *(v8 + 123);
  NumberOfSourceFrames = v27;
  v576 = v27;
  v28 = v9[3249];
  if (v28)
  {
    v9[385] = 1;
    if (v7->mNumberBuffers == *(v8 + 91))
    {
      v29 = (v8 + 336);
      if (v564)
      {
LABEL_61:
        VoiceProcessorV2::InjectionFilesReadSignal(v8, 1, v14, v564);
        if (v9[3249])
        {
LABEL_63:
          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x32u, v14, v564, &v579);
LABEL_64:
          v35 = v565;
          if (!v565)
          {
            v35 = *(v8 + 201);
            if (v35->mNumberBuffers)
            {
              v36 = v13;
              v37 = 0;
              p_mData = &v35->mBuffers[0].mData;
              do
              {
                v39 = v35;
                bzero(*p_mData, *(p_mData - 1));
                v35 = v39;
                ++v37;
                p_mData += 2;
              }

              while (v37 < v39->mNumberBuffers);
              v13 = v36;
            }
          }

          v565 = v35;
          if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 10, v14, v565), (v9[3249] & 1) != 0) || v9[3250] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x55u, v14, v565, &v579);
          }

          v40 = v563;
          if (!v563)
          {
            v40 = *(v8 + 202);
            if (v40->mNumberBuffers)
            {
              v41 = v13;
              v42 = 0;
              v43 = &v40->mBuffers[0].mData;
              do
              {
                v44 = v40;
                bzero(*v43, *(v43 - 1));
                v40 = v44;
                ++v42;
                v43 += 2;
              }

              while (v42 < v44->mNumberBuffers);
              v13 = v41;
            }
          }

          v563 = v40;
          if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 11, v14, v563), (v9[3249] & 1) != 0) || v9[3250] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x56u, v14, v563, &v579);
          }

          v27 = *(v8 + 123);
LABEL_83:
          v568 = v9;
          v569 = v8;
          v556 = v14;
          if (v27 == v14)
          {
            if (v7->mBuffers[0].mDataByteSize == *(v8 + 90) * v14)
            {
              v548 = v13;
              if (v9[3171] != 1)
              {
                goto LABEL_223;
              }

              v9[3171] = 0;
              v45 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
              VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), v14, "processdownlinkaudio: <block size no longer mismatched>");
              if (v45 <= 1.0)
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v90 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
                if (v90)
                {
                  v91 = v90;
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(v580.mSampleTime) = 136315650;
                    *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                    WORD2(v580.mHostTime) = 1024;
                    *(&v580.mHostTime + 6) = 239;
                    WORD1(v580.mRateScalar) = 2048;
                    *(&v580.mRateScalar + 4) = v45;
                    _os_log_impl(&dword_2724B4000, v91, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v580, 0x1Cu);
                  }
                }

                v92 = *(v8 + 1588);
                if (v92 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v92, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 239, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v45);
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v93 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
                if (v93)
                {
                  v94 = v93;
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    v95 = *(v8 + 123);
                    LODWORD(v580.mSampleTime) = 136315906;
                    *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                    WORD2(v580.mHostTime) = 1024;
                    *(&v580.mHostTime + 6) = 243;
                    WORD1(v580.mRateScalar) = 1024;
                    HIDWORD(v580.mRateScalar) = v14;
                    LOWORD(v580.mWordClockTime) = 1024;
                    *(&v580.mWordClockTime + 2) = v95;
                    _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v580, 0x1Eu);
                  }
                }

                v52 = *(v8 + 1588);
                if (v52 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v53 = 243;
                  v54 = 2;
                  goto LABEL_222;
                }
              }

              else
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v46 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                if (v46)
                {
                  v47 = v46;
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v580.mSampleTime) = 136315650;
                    *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                    WORD2(v580.mHostTime) = 1024;
                    *(&v580.mHostTime + 6) = 231;
                    WORD1(v580.mRateScalar) = 2048;
                    *(&v580.mRateScalar + 4) = v45;
                    _os_log_impl(&dword_2724B4000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", &v580, 0x1Cu);
                  }
                }

                v48 = *(v8 + 1588);
                if (v48 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v48, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 231, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v45);
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v49 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                if (v49)
                {
                  v50 = v49;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    v51 = *(v8 + 123);
                    LODWORD(v580.mSampleTime) = 136315906;
                    *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                    WORD2(v580.mHostTime) = 1024;
                    *(&v580.mHostTime + 6) = 235;
                    WORD1(v580.mRateScalar) = 1024;
                    HIDWORD(v580.mRateScalar) = v14;
                    LOWORD(v580.mWordClockTime) = 1024;
                    *(&v580.mWordClockTime + 2) = v51;
                    _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", &v580, 0x1Eu);
                  }
                }

                v52 = *(v8 + 1588);
                if (v52 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v53 = 235;
                  v54 = 1;
LABEL_222:
                  CALegacyLog::log(v52, v54, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", v53, "ProcessDownlinkAudio", "processdownlinkaudio: <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", v14, *(v8 + 123));
                }
              }

LABEL_223:
              v96 = *(v8 + 49);
              v97 = *(v8 + 123);
              if (*(v8 + 48))
              {
                if (v96)
                {
                  v98 = *(v8 + 123);
                  NumberOfSourceFrames = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v96);
                  v96 = *(v8 + 48);
LABEL_230:
                  v97 = VoiceProcessor::SampleRateConverter::GetNumberOfSourceFrames(*v96);
                  goto LABEL_231;
                }

                v96 = *(v8 + 48);
              }

              else if (!v96)
              {
LABEL_231:
                v99 = *(v8 + 14);
                v100 = *v99;
                if (v100 >= 1)
                {
                  v101 = v97 * *(v8 + 60);
                  v102 = (v100 + 3) & 0xFFFFFFFC;
                  v103 = vdupq_n_s64(v100 - 1);
                  v104 = xmmword_2727564D0;
                  v105 = xmmword_2727564E0;
                  v106 = (v99 + 11);
                  v107 = vdupq_n_s64(4uLL);
                  do
                  {
                    v108 = vmovn_s64(vcgeq_u64(v103, v105));
                    if (vuzp1_s16(v108, *v103.i8).u8[0])
                    {
                      *(v106 - 8) = v101;
                    }

                    if (vuzp1_s16(v108, *&v103).i8[2])
                    {
                      *(v106 - 4) = v101;
                    }

                    if (vuzp1_s16(*&v103, vmovn_s64(vcgeq_u64(v103, *&v104))).i32[1])
                    {
                      *v106 = v101;
                      v106[4] = v101;
                    }

                    v104 = vaddq_s64(v104, v107);
                    v105 = vaddq_s64(v105, v107);
                    v106 += 16;
                    v102 -= 4;
                  }

                  while (v102);
                }

                v574 = v97;
                Signal = (*(*(v8 + 13) + 16))();
                v110 = v574;
                v576 = v574;
                v111 = *(v8 + 14);
                if (v9[3249] == 1 && (Signal = VoiceProcessorV2::InjectionFilesReadSignal(v8, 0, v574, *(v8 + 14)), v111 = *(v8 + 14), (v9[3249] & 1) != 0) || v9[3250] == 1)
                {
                  Signal = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x33u, v574, v111, &v579);
                  v111 = *(v8 + 14);
                }

                v112 = *(v8 + 1993);
                if (AudioIssueDetectorLibraryLoader(void)::once != -1)
                {
                  dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3169);
                }

                if (AudioIssueDetectorLibraryLoader(void)::libSym)
                {
                  Signal = AudioIssueDetectorLibraryLoader(void)::libSym(v112, 51, 0, v111, v574, &v579);
                }

                if ((*(v8 + 2090) & 1) != 0 || *(v8 + 20) == 7 && *(v8 + 3152) == 0.0)
                {
                  Signal = vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v580, *(v8 + 14));
                  v113 = (*&v580.mSampleTime + 8);
                  v114 = 16 * **&v580.mSampleTime;
                  for (i = (*&v580.mSampleTime + 8); v114; v114 -= 16)
                  {
                    v117 = *i;
                    v116 = i[1];
                    i += 4;
                    Signal = vp::fill(v113, (v116 >> 2) / v117, 0.0);
                    v113 += 2;
                  }
                }

                v118 = *(v8 + 57);
                if ((v118 & 0x20) != 0)
                {
                  v121 = *(v8 + 61);
                  if (v121 - 65 <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v580.mSampleTime) = 136315394;
                      *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                      WORD2(v580.mHostTime) = 1024;
                      *(&v580.mHostTime + 6) = 308;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                    }

                    exception = __cxa_allocate_exception(0x10uLL);
                    *exception = &unk_2881B25F8;
                    exception[2] = -50;
                  }

                  MEMORY[0x28223BE20](Signal);
                  v120 = (&v545 - v122);
                  bzero(&v545 - v122, v123 + 24);
                }

                else
                {
                  v119 = MEMORY[0x28223BE20](Signal);
                  v120 = &v542;
                  v542 = 0;
                  v543 = 0uLL;
                  v121 = 1;
                }

                v124 = 0;
                v546 = (v8 + 17128);
                mBuffers = v7->mBuffers;
                *v120 = v121;
                v125 = 2;
                if ((v118 & 0x20) != 0)
                {
                  goto LABEL_260;
                }

LABEL_261:
                for (j = 1; v124 < j; j = *(v8 + 61))
                {
                  *&v120[v125] = *(*(v8 + 14) + v125 * 4);
                  ++v124;
                  v125 += 4;
                  if ((v118 & 0x20) == 0)
                  {
                    goto LABEL_261;
                  }

LABEL_260:
                  ;
                }

                v555 = v7;
                v127 = *(v8 + 67);
                if ((v127 & 0x20) != 0)
                {
                  v129 = *(v8 + 71);
                  if (v129 - 65 <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v580.mSampleTime) = 136315394;
                      *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                      WORD2(v580.mHostTime) = 1024;
                      *(&v580.mHostTime + 6) = 313;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                    }

                    v531 = __cxa_allocate_exception(0x10uLL);
                    *v531 = &unk_2881B25F8;
                    v531[2] = -50;
                  }

                  MEMORY[0x28223BE20](v119);
                  v128 = (&v545 - v130);
                  bzero(&v545 - v130, v131 + 24);
                }

                else
                {
                  MEMORY[0x28223BE20](v119);
                  v128 = &v542;
                  v542 = 0;
                  v543 = 0uLL;
                  v129 = 1;
                }

                v132 = 0;
                v133 = 0;
                v128->mNumberBuffers = v129;
                v134 = v128->mBuffers;
                if ((v127 & 0x20) != 0)
                {
                  goto LABEL_270;
                }

LABEL_271:
                for (k = 1; v133 < k; k = *(v8 + 71))
                {
                  v135 = v128 + v132;
                  *(v135 + 2) = *(*(v8 + 23) + v132 + 16);
                  *(v135 + 2) = 1;
                  *(v135 + 3) = 4 * v110;
                  ++v133;
                  v132 += 16;
                  if ((v127 & 0x20) == 0)
                  {
                    goto LABEL_271;
                  }

LABEL_270:
                  ;
                }

                if ((*(v8 + 8864) & 1) != 0 && (*(v8 + 8872) & 1) != 0 && *(v8 + 439))
                {
                  v137 = atomic_load(v8 + 2047);
                  if (v137)
                  {
                    *&v586.mSampleTime = v8;
                    *&v580.mSampleTime = caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV9::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>;
                    v580.mHostTime = &v586;
                    *&inInputBufferLists.mSampleTime = &v580;
                    caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>((v8 + 16296), &inInputBufferLists);
                    atomic_fetch_add(v8 + 2047, -v137);
                  }

                  v138 = *(v8 + 580);
                  if (v138 != *(v8 + 582))
                  {
                    AudioUnitSetParameter(*(v8 + 439), 0x75696F72u, 0, 0, v138, 0);
                  }

                  v580 = v579;
                  LODWORD(v583.mSampleTime) = 512;
                  *&inInputBufferLists.mSampleTime = v120;
                  *&v586.mSampleTime = v128;
                  LODWORD(v110) = v576;
                  AudioUnitProcessMultiple(*(v8 + 439), &v583, &v580, v576, 1u, &inInputBufferLists, 1u, &v586);
                }

                else if (*(v8 + 20) || *(v8 + 61) != 2)
                {
                  v175 = &v134[v129];
                  while (v134 != v175)
                  {
                    vp::fill(v134, v110, 0.0);
                    v176 = 16 * *v120;
                    for (m = v120 + 2; v176; v176 -= 16)
                    {
                      MEMORY[0x2743CCD80](v134->mData, 1, *(m + 1), 1, v134->mData, 1, v110);
                      m += 4;
                    }

                    ++v134;
                  }
                }

                else
                {
                  if (v121 >= v129)
                  {
                    v139 = v129;
                  }

                  else
                  {
                    v139 = v121;
                  }

                  if (v139)
                  {
                    v140 = (v120 + 4);
                    v141 = &v128->mBuffers[0].mData;
                    do
                    {
                      v142 = *(v140 - 1);
                      v143 = *(v141 - 1);
                      if (v142 >= v143)
                      {
                        v144 = v143;
                      }

                      else
                      {
                        v144 = v142;
                      }

                      memcpy(*v141, *v140, v144);
                      v140 += 2;
                      v141 += 2;
                      --v139;
                    }

                    while (v139);
                  }
                }

                if ((*(v8 + 8864) & 2) != 0 && (*(v8 + 8872) & 2) != 0)
                {
                  v145 = *(v8 + 440);
                  if (v145)
                  {
                    v580 = v579;
                    LODWORD(v586.mSampleTime) = 512;
                    v146 = MEMORY[0x28223BE20](v145);
                    v543 = 0uLL;
                    v542 = 0;
                    v543 = *(*(v8 + 23) + 8);
                    LODWORD(v542) = 1;
                    *&inInputBufferLists.mSampleTime = &v542;
                    AudioUnitProcessMultiple(v146, &v586, &v580, v110, 1u, &inInputBufferLists, 0, &v583);
                  }
                }

                v147 = *(v8 + 48);
                if (v147)
                {
                  VoiceProcessor::SampleRateConverter::Convert(v147, &v576, &NumberOfSourceFrames, v128, *(v8 + 24));
                  LODWORD(v110) = NumberOfSourceFrames;
                  v576 = NumberOfSourceFrames;
                  v128 = *(v8 + 24);
                }

                v149 = VoiceProcessorV2::DetermineNoiseBasedVolume(v8);
                v150 = 0;
                v151 = 0;
                v152 = v110 / *(v8 + 132);
                inInputBufferLists = v579;
                v153 = 4 * v152;
                v567 = v128->mBuffers;
                LODWORD(v570) = v152;
                v154 = v152;
                do
                {
                  if ((*(v8 + 308) & 0x20) != 0)
                  {
                    v156 = *(v8 + 81);
                    if (v156 - 65 <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v580.mSampleTime) = 136315394;
                        *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                        WORD2(v580.mHostTime) = 1024;
                        *(&v580.mHostTime + 6) = 417;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                      }

                      v520 = __cxa_allocate_exception(0x10uLL);
                      *v520 = &unk_2881B25F8;
                      v520[2] = -50;
                    }

                    MEMORY[0x28223BE20](v148);
                    v155 = (&v545 - v157);
                    bzero(&v545 - v157, v158 + 24);
                  }

                  else
                  {
                    MEMORY[0x28223BE20](v148);
                    v155 = &v542;
                    v542 = 0;
                    v543 = 0uLL;
                    v156 = 1;
                  }

                  v159 = 0;
                  v155->mNumberBuffers = v156;
                  v160 = v156;
                  do
                  {
                    v161 = v155 + v159 * 16;
                    *(v161 + 2) = 1;
                    *(v161 + 3) = v153;
                    if (v128)
                    {
                      v162 = v128->mBuffers[v159].mData + 4 * v150;
                    }

                    else
                    {
                      v162 = 0;
                    }

                    *(v161 + 2) = v162;
                    ++v159;
                    --v160;
                  }

                  while (v160);
                  v163 = *(v8 + 1108);
                  if ((v163 & 8) != 0 && (*(v8 + 8872) & 8) != 0)
                  {
                    v164 = *(v8 + 442);
                    if (v164)
                    {
                      v580 = inInputBufferLists;
                      LODWORD(v586.mSampleTime) = 512;
                      AudioUnitProcess(v164, &v586, &v580, v570, v155);
                      if ((v568[3249] & 1) != 0 || v568[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x57u, v570, v155, &inInputBufferLists);
                      }

                      v163 = *(v8 + 1108);
                    }
                  }

                  if ((v163 & 0x10) != 0 && (*(v8 + 8872) & 0x10) != 0)
                  {
                    v165 = *(v8 + 443);
                    if (v165)
                    {
                      v580 = inInputBufferLists;
                      LODWORD(v586.mSampleTime) = 512;
                      AudioUnitProcess(v165, &v586, &v580, v570, v155);
                      if ((v568[3249] & 1) != 0 || v568[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x76u, v570, v155, &inInputBufferLists);
                      }

                      v163 = *(v8 + 1108);
                    }
                  }

                  if ((v163 & 0x20) != 0 && (*(v8 + 8872) & 0x20) != 0)
                  {
                    v166 = *(v8 + 444);
                    if (v166)
                    {
                      v580 = inInputBufferLists;
                      LODWORD(v586.mSampleTime) = 512;
                      AudioUnitProcess(v166, &v586, &v580, v570, v155);
                      if ((v568[3249] & 1) != 0 || v568[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x58u, v570, v155, &inInputBufferLists);
                      }

                      v163 = *(v8 + 1108);
                    }
                  }

                  v167 = *&inInputBufferLists.mRateScalar;
                  *(v8 + 1103) = *&inInputBufferLists.mSampleTime;
                  *(v8 + 1104) = v167;
                  v168 = *&inInputBufferLists.mSMPTETime.mHours;
                  *(v8 + 1105) = *&inInputBufferLists.mSMPTETime.mSubframes;
                  *(v8 + 1106) = v168;
                  if ((~v163 & 0xC0) != 0 || ((*(v8 + 8872) & 0x40) == 0 || !*(v8 + 445) ? ((*(v8 + 8872) & 0x80) != 0 ? (v169 = *(v8 + 446) != 0) : (v169 = 0)) : (v169 = 1), *(v8 + 488) != 1 ? (v148 = (*(*v8 + 784))(v8, v155, v155, v169, v570)) : (*&v580.mSampleTime = v155, *&v586.mSampleTime = v155, v148 = BlockProcessor::Process(*(v8 + 2205), v570, &v580, &v586)), !v169))
                  {
                    v148 = (*(*v8 + 784))(v8, v155, v155, 0, v570);
                  }

                  v170 = *(v8 + 1108);
                  if (v170 & 0x100) != 0 && (*(v8 + 8873))
                  {
                    v148 = *(v8 + 447);
                    if (v148)
                    {
                      v580 = inInputBufferLists;
                      AudioUnitSetParameter(v148, 5u, 0, 0, v149, 0);
                      LODWORD(v586.mSampleTime) = 512;
                      v148 = AudioUnitProcess(*(v8 + 447), &v586, &v580, v570, v155);
                      if ((v568[3249] & 1) != 0 || v568[3250] == 1)
                      {
                        v148 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x36u, v570, v155, &v580);
                      }

                      v170 = *(v8 + 1108);
                    }
                  }

                  if ((v170 & 0x200) != 0 && (*(v8 + 8873) & 2) != 0)
                  {
                    v148 = *(v8 + 448);
                    if (v148)
                    {
                      v580 = inInputBufferLists;
                      LODWORD(v586.mSampleTime) = 512;
                      v148 = AudioUnitProcess(v148, &v586, &v580, v570, v155);
                      if ((v568[3249] & 1) != 0 || v568[3250] == 1)
                      {
                        v148 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x59u, v570, v155, &v580);
                      }

                      v170 = *(v8 + 1108);
                    }
                  }

                  if ((v170 & 0x4000) != 0 && (*(v8 + 8873) & 0x40) != 0)
                  {
                    if (*(v8 + 453))
                    {
                      v148 = (*(*v8 + 680))(v8, v155, v570, &inInputBufferLists);
                      if ((v568[3249] & 1) != 0 || v568[3250] == 1)
                      {
                        v148 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Du, v570, v155, &inInputBufferLists);
                      }
                    }
                  }

                  v150 += v570;
                  inInputBufferLists.mSampleTime = inInputBufferLists.mSampleTime + v154;
                  ++v151;
                }

                while (v151 < *(v8 + 132));
                v171 = *(v8 + 77);
                if ((v171 & 0x20) != 0)
                {
                  v173 = *(v8 + 81);
                  v7 = v555;
                  v174 = v556;
                  v9 = v568;
                  if ((v173 - 65) <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v580.mSampleTime) = 136315394;
                      *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                      WORD2(v580.mHostTime) = 1024;
                      *(&v580.mHostTime + 6) = 513;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                    }

                    v532 = __cxa_allocate_exception(0x10uLL);
                    *v532 = &unk_2881B25F8;
                    v532[2] = -50;
                  }

                  MEMORY[0x28223BE20](v148);
                  v172 = (&v545 - v178);
                  bzero(&v545 - v178, v179 + 24);
                }

                else
                {
                  MEMORY[0x28223BE20](v148);
                  v172 = &v542;
                  v542 = 0;
                  v543 = 0uLL;
                  v173 = 1;
                  v7 = v555;
                  v174 = v556;
                  v9 = v568;
                }

                *v172 = v173;
                v181 = *(v8 + 48);
                v180 = *(v8 + 49);
                if (v180)
                {
                  if (v181)
                  {
                    NumberOfSourceFrames = *(v8 + 123);
                    v180 = VoiceProcessor::SampleRateConverter::Convert(v180, &v576, &NumberOfSourceFrames, v128, *(v8 + 25));
                    v182 = 0;
                    v183 = *(v8 + 77);
                    v184 = 2;
                    v185 = v563;
                    v186 = v564;
                    v187 = v565;
                    if ((v183 & 0x20) != 0)
                    {
                      goto LABEL_376;
                    }

LABEL_377:
                    for (n = 1; v182 < n; n = *(v8 + 81))
                    {
                      *&v172[v184] = *(*(v8 + 25) + v184 * 4);
                      ++v182;
                      v184 += 4;
                      if ((v183 & 0x20) == 0)
                      {
                        goto LABEL_377;
                      }

LABEL_376:
                      ;
                    }
                  }

                  else
                  {
                    v180 = VoiceProcessor::SampleRateConverter::Convert(v180, &v576, &NumberOfSourceFrames, v128, *(v8 + 25));
                    v194 = 0;
                    v195 = *(v8 + 77);
                    v196 = 2;
                    v185 = v563;
                    v186 = v564;
                    v187 = v565;
                    if ((v195 & 0x20) != 0)
                    {
                      goto LABEL_391;
                    }

LABEL_392:
                    for (ii = 1; v194 < ii; ii = *(v8 + 81))
                    {
                      *&v172[v196] = *(*(v8 + 25) + v196 * 4);
                      ++v194;
                      v196 += 4;
                      if ((v195 & 0x20) == 0)
                      {
                        goto LABEL_392;
                      }

LABEL_391:
                      ;
                    }
                  }

                  v576 = NumberOfSourceFrames;
                }

                else
                {
                  v189 = v172 + 2;
                  if (v181)
                  {
                    v190 = 0;
                    v185 = v563;
                    v186 = v564;
                    v187 = v565;
                    v191 = v567;
                    if ((v171 & 0x20) != 0)
                    {
                      goto LABEL_384;
                    }

LABEL_385:
                    for (jj = 1; v190 < jj; jj = *(v8 + 81))
                    {
                      v192 = *v191++;
                      *v189++ = v192;
                      ++v190;
                      if ((v171 & 0x20) == 0)
                      {
                        goto LABEL_385;
                      }

LABEL_384:
                      ;
                    }
                  }

                  else
                  {
                    v185 = v563;
                    v186 = v564;
                    v187 = v565;
                    v410 = v567;
                    if ((v171 & 0x20) != 0)
                    {
                      goto LABEL_731;
                    }

LABEL_732:
                    for (kk = 1; v181 < kk; kk = *(v8 + 81))
                    {
                      v411 = *v410++;
                      *v189++ = v411;
                      ++v181;
                      if ((v171 & 0x20) == 0)
                      {
                        goto LABEL_732;
                      }

LABEL_731:
                      ;
                    }
                  }
                }

                v586 = v579;
                if (*(v8 + 132))
                {
                  LODWORD(v567) = 0;
                  v198 = 0;
                  v199 = v8 + 3512;
                  v552 = &v187->mBuffers[0].mData;
                  v553 = (v172 + 4);
                  v551 = &v185->mBuffers[0].mData;
                  v554 = &v186->mBuffers[0].mData;
                  v549 = (v8 + 2760);
                  v550 = &v7->mBuffers[0].mData;
                  v11 = 1;
                  v200 = -8589940800.0;
                  while (1)
                  {
                    if ((*(v8 + 308) & 0x20) != 0)
                    {
                      v204 = *(v8 + 81);
                      if ((v204 - 65) <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v580.mSampleTime) = 136315394;
                          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                          WORD2(v580.mHostTime) = 1024;
                          *(&v580.mHostTime + 6) = 549;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                        }

                        v529 = __cxa_allocate_exception(0x10uLL);
                        *v529 = &unk_2881B25F8;
                        v529[2] = -50;
                      }

                      MEMORY[0x28223BE20](v180);
                      v203 = (&v545 - v205);
                      bzero(&v545 - v205, v206 + 24);
                      v202 = v565;
                    }

                    else
                    {
                      v201 = MEMORY[0x28223BE20](v180);
                      v203 = &v542;
                      v542 = 0;
                      v543 = 0uLL;
                      v204 = 1;
                    }

                    *v203 = v204;
                    if (v202)
                    {
                      mNumberBuffers = v202->mNumberBuffers;
                      if (v202->mNumberBuffers - 65 <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v580.mSampleTime) = 136315394;
                          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                          WORD2(v580.mHostTime) = 1024;
                          *(&v580.mHostTime + 6) = 551;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                        }

                        v522 = __cxa_allocate_exception(0x10uLL);
                        *v522 = &unk_2881B25F8;
                        v522[2] = -50;
                      }
                    }

                    else
                    {
                      mNumberBuffers = 1;
                    }

                    MEMORY[0x28223BE20](v201);
                    v209 = (&v545 - v208);
                    bzero(&v545 - v208, v210 + 24);
                    v559 = v209;
                    *v209 = mNumberBuffers;
                    if (v563)
                    {
                      v212 = v563->mNumberBuffers;
                      if (v563->mNumberBuffers - 65 <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v580.mSampleTime) = 136315394;
                          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                          WORD2(v580.mHostTime) = 1024;
                          *(&v580.mHostTime + 6) = 554;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                        }

                        v524 = __cxa_allocate_exception(0x10uLL);
                        *v524 = &unk_2881B25F8;
                        v524[2] = -50;
                      }
                    }

                    else
                    {
                      v212 = 1;
                    }

                    v557 = v198;
                    MEMORY[0x28223BE20](v211);
                    v214 = (&v545 - v213);
                    bzero(&v545 - v213, v215 + 24);
                    v562 = v214;
                    *v214 = v212;
                    if (v564)
                    {
                      v217 = v564->mNumberBuffers;
                      if (v564->mNumberBuffers - 65 <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v580.mSampleTime) = 136315394;
                          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                          WORD2(v580.mHostTime) = 1024;
                          *(&v580.mHostTime + 6) = 557;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                        }

                        v526 = __cxa_allocate_exception(0x10uLL);
                        *v526 = &unk_2881B25F8;
                        v526[2] = -50;
                      }
                    }

                    else
                    {
                      v217 = 1;
                    }

                    MEMORY[0x28223BE20](v216);
                    v219 = (&v545 - v218);
                    bzero(&v545 - v218, v220 + 24);
                    *v219 = v217;
                    v222 = *(v8 + 2260);
                    v223 = *(v8 + 204);
                    v566 = v203;
                    if (v222 != 1)
                    {
                      goto LABEL_419;
                    }

                    if (!v223)
                    {
                      goto LABEL_422;
                    }

                    if (*v223)
                    {
                      break;
                    }

LABEL_420:
                    v226 = *v223;
                    if ((*v223 - 65) <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v580.mSampleTime) = 136315394;
                        *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                        WORD2(v580.mHostTime) = 1024;
                        *(&v580.mHostTime + 6) = 562;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                      }

                      v528 = __cxa_allocate_exception(0x10uLL);
                      *v528 = &unk_2881B25F8;
                      v528[2] = -50;
                    }

LABEL_423:
                    MEMORY[0x28223BE20](v221);
                    v228 = (&v545 - v227);
                    bzero(&v545 - v227, v229 + 24);
                    v560 = v228;
                    *v228 = v226;
                    v231 = v7->mNumberBuffers;
                    if ((v231 - 65) <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v580.mSampleTime) = 136315394;
                        *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                        WORD2(v580.mHostTime) = 1024;
                        *(&v580.mHostTime + 6) = 564;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                      }

                      v518 = __cxa_allocate_exception(0x10uLL);
                      *v518 = &unk_2881B25F8;
                      v518[2] = -50;
                    }

                    v232 = v7;
                    MEMORY[0x28223BE20](v230);
                    v234 = (&v545 - v233);
                    bzero(&v545 - v233, v235 + 24);
                    v570 = v234;
                    *v234 = v231;
                    v236 = *v566;
                    if (v236)
                    {
                      v237 = 4 * *(v8 + 131);
                      v238 = v567;
                      v239 = v566 + 4;
                      v240 = v553;
                      do
                      {
                        *(v239 - 2) = 1;
                        *(v239 - 1) = v237;
                        v241 = *v240;
                        v240 += 2;
                        *v239 = v241 + 4 * v238;
                        v239 += 2;
                        --v236;
                      }

                      while (v236);
                    }

                    v242 = v559;
                    v243 = *v559;
                    v244 = v563;
                    v245 = v564;
                    v246 = v565;
                    if (v243)
                    {
                      v247 = 4 * *(v8 + 131);
                      v248 = v567;
                      v249 = (v559 + 4);
                      v250 = v552;
                      do
                      {
                        *(v249 - 2) = 1;
                        *(v249 - 1) = v247;
                        if (v246)
                        {
                          v251 = *v250 + 4 * v248;
                        }

                        else
                        {
                          v251 = 0;
                        }

                        *v249 = v251;
                        v249 += 2;
                        v250 += 2;
                        --v243;
                      }

                      while (v243);
                    }

                    v252 = *v562;
                    if (v252)
                    {
                      v253 = 4 * *(v8 + 131);
                      v254 = v567;
                      v255 = (v562 + 4);
                      v256 = v551;
                      do
                      {
                        *(v255 - 2) = 1;
                        *(v255 - 1) = v253;
                        if (v244)
                        {
                          v257 = *v256 + 4 * v254;
                        }

                        else
                        {
                          v257 = 0;
                        }

                        *v255 = v257;
                        v255 += 2;
                        v256 += 2;
                        --v252;
                      }

                      while (v252);
                    }

                    v258 = *v219;
                    if (v258)
                    {
                      v259 = 4 * *(v8 + 131);
                      v260 = v567;
                      v261 = (v219 + 4);
                      v262 = v554;
                      do
                      {
                        *(v261 - 2) = 1;
                        *(v261 - 1) = v259;
                        if (v245)
                        {
                          v263 = *v262 + 4 * v260;
                        }

                        else
                        {
                          v263 = 0;
                        }

                        *v261 = v263;
                        v261 += 2;
                        v262 += 2;
                        --v258;
                      }

                      while (v258);
                    }

                    if (v231)
                    {
                      v264 = 4 * *(v8 + 131);
                      v265 = v567;
                      v266 = (v570 + 4);
                      v267 = v550;
                      do
                      {
                        *(v266 - 2) = 1;
                        *(v266 - 1) = v264;
                        if (v232)
                        {
                          v268 = *v267 + 4 * v265;
                        }

                        else
                        {
                          v268 = 0;
                        }

                        *v266 = v268;
                        v266 += 2;
                        v267 += 2;
                        --v231;
                      }

                      while (v231);
                    }

                    if (v226)
                    {
                      v269 = 4 * *(v8 + 131);
                      v270 = v567;
                      v271 = v226;
                      v272 = v223 + 4;
                      v273 = (v560 + 4);
                      do
                      {
                        *(v273 - 2) = 1;
                        *(v273 - 1) = v269;
                        if (v223)
                        {
                          v274 = *v272 + 4 * v270;
                        }

                        else
                        {
                          v274 = 0;
                        }

                        *v273 = v274;
                        v273 += 2;
                        v272 += 2;
                        --v271;
                      }

                      while (v271);
                    }

                    if (v245 && (*(v8 + 2260) & 1) != 0)
                    {
                      v275 = v564->mNumberBuffers >= v226 ? v226 : v564->mNumberBuffers;
                      if (v275)
                      {
                        v276 = (v560 + 4);
                        v277 = v554;
                        do
                        {
                          v278 = *(v277 - 1);
                          v279 = *(v276 - 1);
                          if (v278 >= v279)
                          {
                            v280 = v279;
                          }

                          else
                          {
                            v280 = v278;
                          }

                          memcpy(*v276, *v277, v280);
                          v277 += 2;
                          v276 += 2;
                          --v275;
                        }

                        while (v275);
                      }
                    }

                    if (v565)
                    {
                      v281 = v242;
                    }

                    else
                    {
                      v281 = 0;
                    }

                    MonoABL = GetMonoABL(v281, &v585, *(v8 + 131));
                    if (v563)
                    {
                      v283 = v562;
                    }

                    else
                    {
                      v283 = 0;
                    }

                    v284 = GetMonoABL(v283, &v584, *(v8 + 131));
                    if (v564)
                    {
                      v285 = v219;
                    }

                    else
                    {
                      v285 = 0;
                    }

                    v286 = GetMonoABL(v285, &v573, *(v8 + 131));
                    if (v568[3928] == 1)
                    {
                      v287 = *(v8 + 1108);
                      if ((v287 & 0x400) != 0)
                      {
                        v288 = *(v8 + 1109);
                        if ((v288 & 0x400) != 0)
                        {
                          if (*(v8 + 449))
                          {
                            if ((v287 & v288 & 2) != 0)
                            {
                              v289 = *(v8 + 440);
                              if (v289)
                              {
                                LODWORD(v580.mSampleTime) = 0;
                                AudioUnitGetParameter(v289, 0x73707062u, 0, 0, &v580);
                                AudioUnitSetParameter(*(v8 + 449), 0x22u, 0, 0, *&v580.mSampleTime, 0);
                              }
                            }
                          }
                        }
                      }
                    }

                    v290 = 0;
                    *&v580.mSampleTime = 10;
                    v580.mHostTime = v566;
                    *&v580.mRateScalar = 11;
                    v558 = v286;
                    v580.mWordClockTime = v286;
                    *&v580.mSMPTETime.mSubframes = 12;
                    *&v580.mSMPTETime.mType = MonoABL;
                    *&v580.mSMPTETime.mHours = 13;
                    *&v580.mFlags = v284;
                    do
                    {
                      v291 = *(&v580.mSampleTime + v290);
                      v292 = *(&v580.mHostTime + v290);
                      if (!v292)
                      {
                        v292 = *(v8 + 203);
                        if (v292->mNumberBuffers)
                        {
                          v293 = v199;
                          v294 = 0;
                          v295 = &v292->mBuffers[0].mData;
                          do
                          {
                            bzero(*v295, *(v295 - 1));
                            ++v294;
                            v295 += 2;
                          }

                          while (v294 < v292->mNumberBuffers);
                          v292 = v569[203];
                          v199 = v293;
                          v8 = v569;
                        }
                      }

                      v296 = VoiceProcessorV2::VPUseAUInProcess(v8, v291, 0);
                      if (v292)
                      {
                        v297 = v296;
                      }

                      else
                      {
                        v297 = 0;
                      }

                      if (v297)
                      {
                        v583 = v586;
                        LODWORD(v582[0]) = 512;
                        AudioUnitProcess(*&v199[8 * v291], v582, &v583, *(v8 + 131), v292);
                      }

                      v290 += 16;
                    }

                    while (v290 != 64);
                    v298 = *(v8 + 1108);
                    if ((v298 & 0x40000000) != 0)
                    {
                      v302 = *(v8 + 1109);
                      v300 = v570;
                      nn = v566;
                      if ((v302 & 0x40000000) == 0)
                      {
                        goto LABEL_499;
                      }

                      v299 = 0;
                      if (!*(v8 + 469) || (v298 & v302 & 0x80000000) == 0)
                      {
                        goto LABEL_500;
                      }

                      if (*(v8 + 470) && *v549 && *(*v549 + 80))
                      {
                        vp::Audio_Buffer::prepare(v549, *(v8 + 131));
                        v316 = *(v8 + 345);
                        if (v316)
                        {
                          v317 = *(v316 + 80);
                        }

                        else
                        {
                          v317 = 0;
                        }

                        if (*v317)
                        {
                          v360 = 0;
                          v361 = (v317 + 4);
                          do
                          {
                            bzero(*v361, *(v361 - 1));
                            ++v360;
                            v361 += 2;
                          }

                          while (v360 < *v317);
                          v316 = *v549;
                          v300 = v570;
                        }

                        if (v316)
                        {
                          v299 = *(v316 + 80);
                        }

                        else
                        {
                          v299 = 0;
                        }

                        LODWORD(v583.mSampleTime) = 512;
                        v580 = v586;
                        AudioUnitProcess(*(v8 + 469), &v583, &v580, *(v8 + 131), v299);
                        v362 = *(v8 + 131);
                        if ((v568[3249] & 1) != 0 || v568[3250] == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Du, *(v8 + 131), v299, &v586);
                          v362 = *(v8 + 131);
                        }

                        v580 = v586;
                        LODWORD(v583.mSampleTime) = 512;
                        AudioUnitProcess(*(v8 + 470), &v583, &v580, v362, v299);
                        v363 = *(v8 + 131);
                        if ((v568[3249] & 1) != 0 || v568[3250] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Eu, v363, v299, &v580), v363 = *(v8 + 131), (v568[3249]) || v568[3250] == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Fu, v363, v299, &v580);
                        }

                        v298 = *(v8 + 1108);
                      }

                      else
                      {
LABEL_499:
                        v299 = 0;
                      }
                    }

                    else
                    {
                      v299 = 0;
                      v300 = v570;
                      nn = v566;
                    }

LABEL_500:
                    if (*(v8 + 2260))
                    {
                      v303 = v300;
                    }

                    else
                    {
                      v303 = nn;
                    }

                    if (*(v8 + 2260))
                    {
                      v304 = v560;
                    }

                    else
                    {
                      v304 = v558;
                    }

                    if (v304)
                    {
                      v305 = v304;
                    }

                    else
                    {
                      v305 = v299;
                    }

                    v561 = v305;
                    if ((v298 & 0x8000000) != 0 && ((*(v8 + 8875) & 8) != 0 || *(v8 + 480) == 1) && v304)
                    {
                      v306 = VoiceProcessorV2::CalculateDownlinkMixGainDB(v8);
                      *(v8 + 1121) = v306;
                      LODWORD(v580.mSampleTime) = __exp10f(v306 / 20.0);
                      v307 = *v304;
                      v304 += 8;
                      for (mm = 16 * v307; mm; mm -= 16)
                      {
                        MEMORY[0x2743CCE20](*(v304 + 8), 1, &v580, *(v304 + 8), 1, *(v8 + 131));
                        v304 += 16;
                      }

                      v298 = *(v8 + 1108);
                      nn = v566;
                    }

                    if ((v298 & 0x10000000) != 0 && (*(v8 + 8875) & 0x10) != 0)
                    {
                      (*(*v8 + 688))(v8, nn, v560);
                      v298 = *(v8 + 1108);
                    }

                    if ((v298 & 0x8000) != 0 && (v309 = *(v8 + 1109), (v309 & 0x8000) != 0) && (v310 = *(v8 + 454)) != 0)
                    {
                      v311 = *(v8 + 2260);
                      v580 = v586;
                      v572 = 512;
                      v312 = v559;
                      if (((v565 != 0) & v311) == 0)
                      {
                        v312 = MonoABL;
                      }

                      *&v583.mSampleTime = nn;
                      v583.mHostTime = v312;
                      v313 = *&v562;
                      if (((v563 != 0) & v311) == 0)
                      {
                        v313 = *&v284;
                      }

                      v314 = v560;
                      if (((v564 != 0) & v311) == 0)
                      {
                        v314 = v558;
                      }

                      v583.mRateScalar = v313;
                      v583.mWordClockTime = v314;
                      *&v583.mSMPTETime.mSubframes = v299;
                      if ((v298 & v309 & 2) != 0)
                      {
                        v318 = *(v8 + 440);
                        v315 = v568;
                        if (v318 && ((v311 & 1) != 0 || v568[3929] == 1))
                        {
                          LODWORD(v582[0]) = 0;
                          Parameter = AudioUnitGetParameter(v318, 0x73707062u, 0, 0, v582);
                          v321 = *v582 == 1.0 && Parameter == 0;
                          v571 = v321;
                          AudioUnitSetProperty(*(v8 + 454), 0x6164756Bu, 0, 0, &v571, 4u);
                          v310 = *(v8 + 454);
                        }
                      }

                      else
                      {
                        v315 = v568;
                      }

                      v582[0] = v303;
                      v582[1] = v561;
                      AudioUnitProcessMultiple(v310, &v572, &v580, *(v8 + 131), 5u, &v583, 2u, v582);
                      v322 = *(v8 + 131);
                      if ((v315[3249] & 1) != 0 || v315[3250] == 1) && (VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x5Bu, v322, v303, &v580), v322 = *(v8 + 131), (v315[3249]) || v315[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x78u, v322, v561, &v580);
                      }
                    }

                    else
                    {
                      if (MonoABL)
                      {
                        LODWORD(v580.mSampleTime) = 1055175620;
                        v304 = v303->mBuffers;
                        for (nn = 16 * v303->mNumberBuffers; nn; nn -= 16)
                        {
                          MEMORY[0x2743CCE10](MonoABL->mBuffers[0].mData, 1, &v580, *(v304 + 8), 1, *(v304 + 8), 1, *(v8 + 131));
                          v304 += 16;
                        }
                      }

                      if (v284)
                      {
                        v304 = v303->mBuffers;
                        for (nn = 16 * v303->mNumberBuffers; nn; nn -= 16)
                        {
                          MEMORY[0x2743CCD80](v284->mBuffers[0].mData, 1, *(v304 + 8), 1, *(v304 + 8), 1, *(v8 + 131));
                          v304 += 16;
                        }
                      }

                      v315 = v568;
                      if (v299)
                      {
                        if (v299 != v561)
                        {
                          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v580, v561);
                          v304 = *&v580.mSampleTime + 8;
                          for (nn = 16 * **&v580.mSampleTime; nn; nn -= 16)
                          {
                            MEMORY[0x2743CCD80](*(v299 + 16), 1, *(v304 + 8), 1, *(v304 + 8), 1, *(v8 + 131));
                            v304 += 16;
                          }
                        }
                      }
                    }

                    v323 = *(v8 + 1108);
                    if ((v323 & 0x8000) != 0 && (*(v8 + 8873) & 0x80) != 0 && *(v8 + 454) && *(v8 + 2260) == 1)
                    {
                      (*(*v8 + 664))(v8, v303, &v586);
                      v323 = *(v8 + 1108);
                      v315 = v568;
                    }

                    if ((v323 & 0x800000) != 0)
                    {
                      v7 = v555;
                      if ((*(v8 + 8874) & 0x80) != 0)
                      {
                        v324 = *(v8 + 462);
                        if (v324)
                        {
                          v580 = v586;
                          LODWORD(v583.mSampleTime) = 512;
                          AudioUnitProcess(v324, &v583, &v580, *(v8 + 131), v303);
                          if ((v315[3249] & 1) != 0 || v315[3250] == 1)
                          {
                            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, *(v8 + 131), v303, &v580);
                          }

                          v323 = *(v8 + 1108);
                        }
                      }
                    }

                    else
                    {
                      v7 = v555;
                    }

                    if (v323 & 0x10000000000) != 0 && (*(v8 + 8877))
                    {
                      v325 = *(v8 + 479);
                      if (v325)
                      {
                        v326 = *(v8 + 580);
                        if (v326 != *(v8 + 582))
                        {
                          AudioUnitSetParameter(v325, 0, 0, 0, v326, 0);
                          v325 = *(v8 + 479);
                          v7 = v555;
                          v315 = v568;
                        }

                        *&v583.mSampleTime = v303;
                        v582[0] = v303;
                        v580 = v586;
                        v572 = 512;
                        AudioUnitProcessMultiple(v325, &v572, &v580, *(v8 + 131), 1u, &v583, 1u, v582);
                        if ((v315[3249] & 1) != 0 || v315[3250] == 1)
                        {
                          VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, *(v8 + 131), v303, &v580);
                        }

                        v323 = *(v8 + 1108);
                      }
                    }

                    if (v323 & 0x1000000) != 0 && (*(v8 + 8875))
                    {
                      v327 = *(v8 + 463);
                      if (v327)
                      {
                        v328 = *(v8 + 580);
                        if (v328 != *(v8 + 582))
                        {
                          AudioUnitSetParameter(v327, 1u, 0, 0, v328, 0);
                          v327 = *(v8 + 463);
                        }

                        v580 = v586;
                        LODWORD(v583.mSampleTime) = 512;
                        AudioUnitProcess(v327, &v583, &v580, *(v8 + 131), v303);
                        v323 = *(v8 + 1108);
                      }
                    }

                    if ((v323 & 0x2000000) != 0 && (*(v8 + 8875) & 2) != 0 && (v329 = *(v8 + 464)) != 0)
                    {
                      v580 = v586;
                      LODWORD(v583.mSampleTime) = 512;
                      AudioUnitProcess(v329, &v583, &v580, *(v8 + 131), v303);
                    }

                    else if ((v323 & 0x4000000) != 0 && (*(v8 + 8875) & 4) != 0 && (v330 = *(v8 + 465)) != 0)
                    {
                      v331 = *(v8 + 199);
                      if (v331->mNumberBuffers)
                      {
                        v332 = 0;
                        v304 = (*(v8 + 81) - 1);
                        v333 = v303->mBuffers;
                        nn = 16;
                        do
                        {
                          if (v304 >= v332)
                          {
                            v334 = v332;
                          }

                          else
                          {
                            v334 = v304;
                          }

                          memcpy(*(&v331->mNumberBuffers + nn), v333[v334].mData, 4 * *(v8 + 131));
                          ++v332;
                          v331 = *(v8 + 199);
                          nn += 16;
                        }

                        while (v332 < v331->mNumberBuffers);
                        v330 = *(v8 + 465);
                      }

                      v580 = v586;
                      LODWORD(v583.mSampleTime) = 512;
                      AudioUnitProcess(v330, &v583, &v580, *(v8 + 131), v331);
                      v303 = *(v8 + 199);
                      if (!v303)
                      {
                        v582[0] = 0;
                        v581 = 0u;
                        memset(&v580, 0, sizeof(v580));
                        v517 = MEMORY[0x277D86220];
                        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
                        LODWORD(v583.mSampleTime) = 134217984;
                        *(&v583.mSampleTime + 4) = 0.0;
                        LODWORD(v544) = 12;
                        *(&v543 + 1) = &v583;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_1014;
                      }
                    }

                    else
                    {
                      v335 = 1.0;
                      if ((*(v8 + 2260) & 1) == 0)
                      {
                        v335 = *(v8 + 3155);
                      }

                      LODWORD(v580.mSampleTime) = __exp10f(((v335 * 32.0) + -32.0) / 20.0);
                      v336 = v303->mBuffers;
                      for (i1 = 16 * v303->mNumberBuffers; i1; i1 -= 16)
                      {
                        MEMORY[0x2743CCE20](v336->mData, 1, &v580, v336->mData, 1, *(v8 + 131));
                        ++v336;
                      }

                      if ((v315[3249] & 1) != 0 || v315[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x37u, *(v8 + 131), v303, &v586);
                      }
                    }

                    if (!v561 || (*(v8 + 8867) & 0x20) == 0 || (*(v8 + 8875) & 0x20) == 0 && *(v8 + 480) != 1)
                    {
                      v338 = v570;
                      if (v303->mNumberBuffers)
                      {
                        v339 = 0;
                        v340 = 4;
                        do
                        {
                          memcpy(*&v338[v340], *(&v303->mNumberBuffers + v340 * 4), 4 * *(v8 + 131));
                          ++v339;
                          v340 += 4;
                        }

                        while (v339 < v303->mNumberBuffers);
                      }

                      goto LABEL_619;
                    }

                    v348 = *(v8 + 2260);
                    if (v348 == 1)
                    {
                      v349 = *(v8 + 91);
                      v350 = v303->mNumberBuffers;
LABEL_633:
                      v351 = v570;
                      if (v350)
                      {
                        v352 = 0;
                        v353 = v349 - 1;
                        v354 = v561->mBuffers;
                        v355 = 4;
                        do
                        {
                          if (v353 >= v352)
                          {
                            v356 = v352;
                          }

                          else
                          {
                            v356 = v353;
                          }

                          MEMORY[0x2743CCD80](*(&v303->mNumberBuffers + v355 * 4), 1, v354[v356].mData, 1, *&v351[v355], 1, *(v8 + 131));
                          ++v352;
                          v355 += 4;
                          v351 = v570;
                        }

                        while (v352 < v303->mNumberBuffers);
                      }

                      goto LABEL_619;
                    }

                    v350 = v303->mNumberBuffers;
                    v349 = 1;
                    if ((v348 & 1) != 0 || v350 == 1)
                    {
                      goto LABEL_633;
                    }

                    v357 = v303->mBuffers;
                    v358 = v561->mBuffers;
                      ;
                    }

LABEL_619:
                    DynamicsDSPChannelCount = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
                    if ((DynamicsDSPChannelCount - 65) <= 0xFFFFFFBF)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v580.mSampleTime) = 136315394;
                        *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                        WORD2(v580.mHostTime) = 1024;
                        *(&v580.mHostTime + 6) = 879;
                        _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                      }

                      v519 = __cxa_allocate_exception(0x10uLL);
                      *v519 = &unk_2881B25F8;
                      v519[2] = -50;
                    }

                    v342 = DynamicsDSPChannelCount;
                    MEMORY[0x28223BE20](DynamicsDSPChannelCount);
                    v344 = (&v545 - v343);
                    bzero(&v545 - v343, v345 + 24);
                    v344->mNumberBuffers = v342;
                    v180 = memcpy(v344->mBuffers, v570 + 2, 16 * v342);
                    v9 = v568;
                    v174 = v556;
                    if ((v568[3249] & 1) != 0 || v568[3250] == 1)
                    {
                      v180 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x35u, *(v8 + 131), v344, &v586);
                    }

                    v346 = v557;
                    if (*(v8 + 8868) & 1) != 0 && (*(v8 + 8876))
                    {
                      v180 = *(v8 + 471);
                      if (v180)
                      {
                        v580 = v586;
                        LODWORD(v583.mSampleTime) = 512;
                        v180 = AudioUnitProcess(v180, &v583, &v580, *(v8 + 131), v344);
                      }
                    }

                    v347 = *(v8 + 131);
                    v586.mSampleTime = v586.mSampleTime + v347;
                    LODWORD(v567) = v347 + v567;
                    v198 = v346 + 1;
                    if (v198 >= *(v8 + 132))
                    {
                      goto LABEL_662;
                    }
                  }

                  v224 = 0;
                  v225 = (v223 + 4);
                  do
                  {
                    bzero(*v225, *(v225 - 1));
                    ++v224;
                    v225 += 2;
                  }

                  while (v224 < *v223);
                  v223 = *(v8 + 204);
LABEL_419:
                  if (!v223)
                  {
LABEL_422:
                    v226 = 1;
                    goto LABEL_423;
                  }

                  goto LABEL_420;
                }

LABEL_662:
                v364 = VoiceProcessorV2::GetDynamicsDSPChannelCount(v8);
                v365 = v364;
                v366 = *(v8 + 1108);
                if ((v366 & 0x400000000) != 0 && (*(v8 + 8876) & 4) != 0)
                {
                  v367 = *(v8 + 473);
                  if (v367)
                  {
                    if ((v364 - 65) <= 0xFFFFFFBF)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_1059;
                      }

                      LODWORD(v580.mSampleTime) = 136315394;
                      *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                      WORD2(v580.mHostTime) = 1024;
                      *(&v580.mHostTime + 6) = 903;
                      v533 = MEMORY[0x277D86220];
                      goto LABEL_1058;
                    }

                    MEMORY[0x28223BE20](v364);
                    v369 = (&v545 - v368);
                    bzero(&v545 - v368, v370 + 24);
                    v369->mNumberBuffers = v365;
                    memcpy(v369->mBuffers, mBuffers, 16 * v365);
                    LODWORD(v580.mSampleTime) = 512;
                    v364 = AudioUnitProcess(v367, &v580, &v579, *(v8 + 123), v369);
                    if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                    {
                      v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x40u, v174, v369, &v579);
                    }

                    v366 = *(v8 + 1108);
                  }
                }

                if ((v366 & 0x2000000000) != 0 && (*(v8 + 8876) & 0x20) != 0 && *(v8 + 476) || (v366 & 0x800000000) != 0 && (*(v8 + 8876) & 8) != 0 && *(v8 + 474))
                {
                  if ((v366 & 0x2000000000) != 0)
                  {
                    v371 = 37;
                  }

                  else
                  {
                    v371 = 35;
                  }

                  if (v365 == v7->mNumberBuffers)
                  {
                    v580 = v579;
                    LODWORD(v583.mSampleTime) = 512;
                    v364 = AudioUnitProcess(*(v8 + v371 + 439), &v583, &v580, *(v8 + 123), v7);
                  }

                  else
                  {
                    v406 = *(v8 + 26);
                    if (v406->mNumberBuffers)
                    {
                      v407 = 0;
                      v408 = 16;
                      do
                      {
                        memcpy(*(&v406->mNumberBuffers + v408), v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
                        ++v407;
                        v406 = *(v8 + 26);
                        v408 += 16;
                      }

                      while (v407 < v406->mNumberBuffers);
                    }

                    v580 = v579;
                    v573.mNumberBuffers = 512;
                    v364 = AudioUnitProcess(*(v8 + v371 + 439), &v573.mNumberBuffers, &v580, *(v8 + 123), v406);
                    if ((*(v8 + 8868) & 0x40) != 0 && (*(v8 + 8876) & 0x40) != 0 && (v364 = *(v8 + 477)) != 0)
                    {
                      v409 = *(v8 + 580);
                      if (v409 != *(v8 + 582))
                      {
                        AudioUnitSetParameter(v364, 0, 0, 0, v409, 0);
                        v364 = *(v8 + 477);
                      }

                      *&v585.mNumberBuffers = *(v8 + 26);
                      *&v584.mNumberBuffers = v7;
                      v583 = v579;
                      LODWORD(v582[0]) = 512;
                      v364 = AudioUnitProcessMultiple(v364, v582, &v583, *(v8 + 123), 1u, &v585, 1u, &v584);
                      if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                      {
                        v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v174, v7, &v579);
                      }
                    }

                    else if (v7->mNumberBuffers)
                    {
                      v413 = 0;
                      v414 = &v7->mBuffers[0].mData;
                      do
                      {
                        v415 = *(v8 + 26);
                        if (v413 >= *v415)
                        {
                          v416 = 0;
                        }

                        else
                        {
                          v416 = v413;
                        }

                        v364 = memcpy(*v414, *&v415[4 * v416 + 4], *(v414 - 1));
                        ++v413;
                        v414 += 2;
                      }

                      while (v413 < v7->mNumberBuffers);
                    }
                  }

                  goto LABEL_762;
                }

                if ((v366 & 0x8000000000) == 0 || (*(v8 + 8876) & 0x80) == 0 || (v364 = *(v8 + 478)) == 0)
                {
                  if ((v366 & 0x20000000000) != 0 && (v385 = *(v8 + 1109), (v385 & 0x20000000000) != 0) && *(v8 + 480))
                  {
                    if ((v366 & v385 & 0x40000000000) != 0 && *(v8 + 481))
                    {
                      if (v365 - 65 <= 0xFFFFFFBF)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v580.mSampleTime) = 136315394;
                          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                          WORD2(v580.mHostTime) = 1024;
                          *(&v580.mHostTime + 6) = 985;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                        }

                        v540 = __cxa_allocate_exception(0x10uLL);
                        *v540 = &unk_2881B25F8;
                        v540[2] = -50;
                      }

                      MEMORY[0x28223BE20](v364);
                      v387 = (&v545 - v386);
                      bzero(&v545 - v386, v388 + 24);
                      v389 = 0;
                      *v387 = v365;
                      v390 = *(v8 + 26);
                      v391 = 16 * v365;
                      do
                      {
                        v392 = memcpy(*(v390 + v389 + 16), v7->mBuffers[v389 / 0x10].mData, *(v390 + v389 + 12));
                        v390 = *(v8 + 26);
                        *&v387[v389 / 4 + 2] = *(v390 + v389 + 8);
                        v389 += 16;
                      }

                      while (v391 != v389);
                      *&v583.mSampleTime = v387;
                      v393 = *(v8 + 1081);
                      if ((v393 - 65) < 0xFFFFFFC0)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v580.mSampleTime) = 136315394;
                          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                          WORD2(v580.mHostTime) = 1024;
                          *(&v580.mHostTime + 6) = 997;
                          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                        }

                        v541 = __cxa_allocate_exception(0x10uLL);
                        *v541 = &unk_2881B25F8;
                        v541[2] = -50;
                      }

                      MEMORY[0x28223BE20](v392);
                      v395 = (&v545 - v394);
                      bzero(&v545 - v394, v396 + 24);
                      v395->mNumberBuffers = v393;
                      v397 = v7 + 1;
                      v398 = 8;
                      v399 = v393;
                      do
                      {
                        v400 = *&v397->mNumberBuffers;
                        v397 = (v397 + 32);
                        *(&v395->mNumberBuffers + v398) = v400;
                        v398 += 16;
                        --v399;
                      }

                      while (v399);
                      *&v585.mNumberBuffers = v395;
                      if ((*(v8 + 2261) & 1) != 0 || !*(v8 + 20) && *(v8 + 61) == 2)
                      {
                        v401 = *(v8 + 580);
                        if (v401 != *(v8 + 582))
                        {
                          AudioUnitSetParameter(*(v8 + 481), 0, 0, 0, v401, 0);
                        }
                      }

                      v580 = v579;
                      v584.mNumberBuffers = 512;
                      AudioUnitProcessMultiple(*(v8 + 481), &v584.mNumberBuffers, &v580, *(v8 + 123), 1u, &v583, 1u, &v585);
                      if (v9[3249] & 1) != 0 || (v9[3250])
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x80u, v174, v395, &v580);
                      }

                      v422 = &v7->mBuffers[0].mData;
                      do
                      {
                        memcpy(*v422, v422[2], *(v422 - 1));
                        v422 += 4;
                        --v393;
                      }

                      while (v393);
                    }

                    else if ((*(v8 + 2260) & 1) == 0 && v7->mNumberBuffers >= 2)
                    {
                      v420 = v7[1].mBuffers;
                      v421 = 1;
                      do
                      {
                        memcpy(*v420, v7->mBuffers[0].mData, *(v420 - 1));
                        ++v421;
                        v420 += 2;
                      }

                      while (v421 < v7->mNumberBuffers);
                    }

                    v580 = v579;
                    LODWORD(v583.mSampleTime) = 512;
                    v364 = AudioUnitProcess(*(v8 + 480), &v583, &v580, *(v8 + 123), v7);
                  }

                  else if (v366 < 0 && (*(v8 + 1109) & 0x8000000000000000) != 0)
                  {
                    v417 = v7->mNumberBuffers;
                    if (v7->mNumberBuffers >= 2)
                    {
                      if (*(v8 + 81) == 1)
                      {
                        v364 = memcpy(*&v7[1].mBuffers[0].mNumberChannels, v7->mBuffers[0].mData, v7->mBuffers[0].mDataByteSize);
                        v417 = v7->mNumberBuffers;
                      }

                      if (v417 >= 3)
                      {
                        v418 = &v7[2];
                        v419 = 2;
                        do
                        {
                          bzero(*v418, *(v418 - 1));
                          ++v419;
                          v418 += 2;
                        }

                        while (v419 < v7->mNumberBuffers);
                      }
                    }
                  }

                  else if ((*(v8 + 2260) & 1) == 0)
                  {
                    v402 = *(v8 + 81);
                    v403 = v402 <= 1 ? 1 : v402;
                    if (v403 < v7->mNumberBuffers)
                    {
                      v404 = &mBuffers[(v403 - 1)];
                      v405 = 16 * v403 + 16;
                      do
                      {
                        v364 = memcpy(*(&v7->mNumberBuffers + v405), v404[1], *(v404 + 1));
                        ++v403;
                        v405 += 16;
                      }

                      while (v403 < v7->mNumberBuffers);
                    }
                  }

LABEL_762:
                  v423 = *(v8 + 1108);
                  if ((v423 & 0x80000000000) == 0)
                  {
                    p_mSampleTime = &v548->mSampleTime;
                    goto LABEL_797;
                  }

                  p_mSampleTime = &v548->mSampleTime;
                  if ((*(v8 + 8877) & 8) == 0 || !*(v8 + 482))
                  {
LABEL_797:
                    if ((v423 & 0x100000000000) != 0 && (*(v8 + 8877) & 0x10) != 0)
                    {
                      v364 = *(v8 + 483);
                      if (v364)
                      {
                        v440 = p_mSampleTime[1];
                        *&v580.mSampleTime = *p_mSampleTime;
                        *&v580.mRateScalar = v440;
                        v441 = p_mSampleTime[3];
                        *&v580.mSMPTETime.mSubframes = p_mSampleTime[2];
                        *&v580.mSMPTETime.mHours = v441;
                        LODWORD(v583.mSampleTime) = 512;
                        v364 = AudioUnitProcess(v364, &v583, &v580, *(v8 + 123), v7);
                        v423 = *(v8 + 1108);
                      }
                    }

                    if ((v423 & 0x200000000000) != 0 && (*(v8 + 8877) & 0x20) != 0)
                    {
                      v364 = *(v8 + 484);
                      if (v364)
                      {
                        *&v583.mSampleTime = v7;
                        *&v585.mNumberBuffers = v7;
                        v442 = p_mSampleTime[1];
                        *&v580.mSampleTime = *p_mSampleTime;
                        *&v580.mRateScalar = v442;
                        v443 = p_mSampleTime[3];
                        *&v580.mSMPTETime.mSubframes = p_mSampleTime[2];
                        *&v580.mSMPTETime.mHours = v443;
                        v584.mNumberBuffers = 512;
                        v364 = AudioUnitProcessMultiple(v364, &v584.mNumberBuffers, &v580, *(v8 + 123), 1u, &v583, 1u, &v585);
                        v423 = *(v8 + 1108);
                      }
                    }

                    if ((v423 & 0x100000000000000) == 0 || (v444 = *(v8 + 1109), (v444 & 0x100000000000000) == 0) || !*(v8 + 495))
                    {
                      if ((v423 & 0x200000000000000) == 0 || (v444 = *(v8 + 1109), (v444 & 0x200000000000000) == 0) || !*(v8 + 496))
                      {
                        if ((v423 & 0x400000000000000) == 0 || (v444 = *(v8 + 1109), (v444 & 0x400000000000000) == 0) || !*(v8 + 497))
                        {
                          if ((v423 & 0x1000000000000000) == 0 || (v444 = *(v8 + 1109), (v444 & 0x1000000000000000) == 0) || !*(v8 + 499))
                          {
                            v461 = 0;
LABEL_845:
                            if ((v423 & 0x40000000000000) != 0 && (*(v8 + 8878) & 0x40) != 0)
                            {
                              v364 = *(v8 + 493);
                              if (v364)
                              {
                                v580 = v579;
                                LODWORD(v583.mSampleTime) = 512;
                                v364 = AudioUnitProcess(v364, &v583, &v580, *(v8 + 123), v7);
                                v423 = *(v8 + 1108);
                              }
                            }

                            if ((v423 & 0x2000000000000000) != 0 && ((*(v8 + 8879) & 0x20) != 0 || *(v8 + 480) == 1))
                            {
                              LODWORD(v580.mSampleTime) = 1065353216;
                              LODWORD(v583.mSampleTime) = 1065353216;
                              if (((*(v8 + 2091) & 1) != 0 || *(v8 + 480) == 1) && (v462 = *(v8 + 1139), v462 != 0.0))
                              {
                                v463 = __exp10f(v462 / 20.0);
                                *&v583.mSampleTime = v463;
                                *&v580.mSampleTime = v463;
                              }

                              else
                              {
                                v464 = *(v8 + 1137);
                                if (v464 >= -300.0)
                                {
                                  if (v464 == 0.0)
                                  {
                                    v463 = 1.0;
                                  }

                                  else
                                  {
                                    if (v464 > 60.0)
                                    {
                                      v464 = 60.0;
                                    }

                                    v463 = __exp10f(v464 / 20.0);
                                    *&v580.mSampleTime = v463;
                                  }
                                }

                                else
                                {
                                  LODWORD(v580.mSampleTime) = 0;
                                  v463 = 0.0;
                                }

                                v465 = *(v8 + 1138);
                                if (v465 >= -300.0)
                                {
                                  if (v465 != 0.0)
                                  {
                                    if (v465 > 60.0)
                                    {
                                      v465 = 60.0;
                                    }

                                    LODWORD(v583.mSampleTime) = __exp10f(v465 / 20.0);
                                  }
                                }

                                else
                                {
                                  LODWORD(v583.mSampleTime) = 0;
                                }
                              }

                              if (v463 == 0.0)
                              {
                                bzero(v7->mBuffers[0].mData, 4 * *(v8 + 123));
                              }

                              else if (v463 != 1.0)
                              {
                                v364 = MEMORY[0x2743CCE20](v7->mBuffers[0].mData, 1, &v580, v7->mBuffers[0].mData, 1, *(v8 + 123));
                              }

                              if (v7->mNumberBuffers >= 2)
                              {
                                v466 = 1;
                                v467 = 32;
                                do
                                {
                                  if (*&v583.mSampleTime == 0.0)
                                  {
                                    bzero(*(&v7->mNumberBuffers + v467), 4 * *(v8 + 123));
                                  }

                                  else if (*&v583.mSampleTime != 1.0)
                                  {
                                    v364 = MEMORY[0x2743CCE20](*(&v7->mNumberBuffers + v467), 1, &v583, *(&v7->mNumberBuffers + v467), 1, *(v8 + 123), *&v583.mSampleTime);
                                  }

                                  ++v466;
                                  v467 += 16;
                                }

                                while (v466 < v7->mNumberBuffers);
                              }

                              v423 = *(v8 + 1108);
                            }

                            if ((v423 & 0x80000000000000) != 0 && (*(v8 + 8878) & 0x80) != 0)
                            {
                              v364 = *(v8 + 494);
                              if (v364)
                              {
                                v580 = v579;
                                LODWORD(v583.mSampleTime) = 512;
                                v364 = AudioUnitProcess(v364, &v583, &v580, *(v8 + 123), v7);
                                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                                {
                                  v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x79u, *(v8 + 123), v7, &v580);
                                }

                                v423 = *(v8 + 1108);
                              }
                            }

                            if (v423 & 0x100000000000000) != 0 && (*(v8 + 8879))
                            {
                              v364 = *(v8 + 495);
                              if (v364)
                              {
                                if (*(v8 + 1136) == 1 && (v468 = *(v8 + 198)) != 0)
                                {
                                  ABLRingBuffer<float>::ReadFrom(v8 + 386, *(v8 + 123), v468);
                                  v364 = *(v8 + 495);
                                  v469 = 2;
                                }

                                else
                                {
                                  v469 = 1;
                                }

                                v470 = *(v8 + 198);
                                *&v583.mSampleTime = v7;
                                v583.mHostTime = v470;
                                *&v585.mNumberBuffers = v7;
                                v580 = v579;
                                v584.mNumberBuffers = 512;
                                v364 = AudioUnitProcessMultiple(v364, &v584.mNumberBuffers, &v580, *(v8 + 123), v469, &v583, 1u, &v585);
                                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                                {
                                  v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x41u, v174, v7, &v580);
                                }

                                v423 = *(v8 + 1108);
                              }
                            }

                            if ((v423 & 0x200000000000000) != 0 && (*(v8 + 8879) & 2) != 0)
                            {
                              v471 = *(v8 + 496);
                              if (v471)
                              {
                                v472 = *(v8 + 1081);
                                if ((v472 - 65) <= 0xFFFFFFBF)
                                {
                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                  {
                                    LODWORD(v580.mSampleTime) = 136315394;
                                    *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                                    WORD2(v580.mHostTime) = 1024;
                                    *(&v580.mHostTime + 6) = 1316;
                                    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                                  }

                                  v534 = __cxa_allocate_exception(0x10uLL);
                                  *v534 = &unk_2881B25F8;
                                  v534[2] = -50;
                                }

                                MEMORY[0x28223BE20](v364);
                                v474 = (&v545 - v473);
                                bzero(&v545 - v473, v475 + 24);
                                v474->mNumberBuffers = v472;
                                v476 = 8;
                                v477 = mBuffers;
                                do
                                {
                                  v478 = *v477;
                                  v477 += 2;
                                  *(&v474->mNumberBuffers + v476) = v478;
                                  v476 += 16;
                                  --v472;
                                }

                                while (v472);
                                v479 = *(v8 + 198);
                                *&v583.mSampleTime = v474;
                                v583.mHostTime = v479;
                                *&v585.mNumberBuffers = v474;
                                v580 = v579;
                                v584.mNumberBuffers = 512;
                                v364 = AudioUnitProcessMultiple(v471, &v584.mNumberBuffers, &v580, *(v8 + 123), 1u, &v583, 1u, &v585);
                                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                                {
                                  v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x42u, v174, v474, &v580);
                                }

                                v423 = *(v8 + 1108);
                              }
                            }

                            if ((v423 & 0x400000000000000) != 0 && (*(v8 + 8879) & 4) != 0 && *(v8 + 497))
                            {
                              if (*(v8 + 1136) == 1 && (v480 = *(v8 + 198)) != 0)
                              {
                                v364 = ABLRingBuffer<float>::ReadFrom(v8 + 386, *(v8 + 123), v480);
                                v481 = 2;
                              }

                              else
                              {
                                v481 = 1;
                              }

                              v482 = *(v8 + 1081);
                              if ((v482 - 65) <= 0xFFFFFFBF)
                              {
                                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                                {
                                  LODWORD(v580.mSampleTime) = 136315394;
                                  *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                                  WORD2(v580.mHostTime) = 1024;
                                  *(&v580.mHostTime + 6) = 1343;
                                  _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                                }

                                v535 = __cxa_allocate_exception(0x10uLL);
                                *v535 = &unk_2881B25F8;
                                v535[2] = -50;
                              }

                              MEMORY[0x28223BE20](v364);
                              v484 = (&v545 - v483);
                              bzero(&v545 - v483, v485 + 24);
                              v484->mNumberBuffers = v482;
                              v486 = v7 + 1;
                              v487 = 8;
                              do
                              {
                                v488 = *&v486->mNumberBuffers;
                                v486 = (v486 + 32);
                                *(&v484->mNumberBuffers + v487) = v488;
                                v487 += 16;
                                --v482;
                              }

                              while (v482);
                              v489 = *(v8 + 198);
                              *&v583.mSampleTime = v484;
                              v583.mHostTime = v489;
                              *&v585.mNumberBuffers = v484;
                              v580 = v579;
                              v584.mNumberBuffers = 512;
                              AudioUnitProcessMultiple(*(v8 + 497), &v584.mNumberBuffers, &v580, *(v8 + 123), v481, &v583, 1u, &v585);
                              if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x43u, v174, v484, &v580);
                              }

                              v423 = *(v8 + 1108);
                            }

                            if ((v423 & 0x800000000000000) != 0 && (*(v8 + 8879) & 8) != 0)
                            {
                              if (*(v8 + 498))
                              {
                                if (*(v8 + 1136) == 1)
                                {
                                  v490 = *(v8 + 198);
                                  if (v490)
                                  {
                                    ABLRingBuffer<float>::ReadFrom(v8 + 386, *(v8 + 123), v490);
                                    v580 = v579;
                                    LODWORD(v583.mSampleTime) = 512;
                                    AudioUnitProcess(*(v8 + 498), &v583, &v580, *(v8 + 123), *(v8 + 198));
                                    v491 = *(v8 + 2219);
                                    if (v491)
                                    {
                                      v492 = v546 + 154;
                                      AudioUnitGetProperty(*(v8 + 498), 0x19E6u, 0, 0, v491, v546 + 154);
                                      AudioUnitSetProperty(*(v8 + 499), 0x19E6u, 0, 0, *(v8 + 2219), *v492);
                                    }

                                    if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x44u, v174, *(v8 + 198), &v580);
                                    }

                                    v423 = *(v8 + 1108);
                                  }
                                }
                              }
                            }

                            if ((v423 & 0x1000000000000000) != 0 && (*(v8 + 8879) & 0x10) != 0)
                            {
                              v493 = *(v8 + 499);
                              if (v493)
                              {
                                *&v583.mSampleTime = v7;
                                *&v585.mNumberBuffers = v7;
                                v580 = v579;
                                v584.mNumberBuffers = 512;
                                AudioUnitProcessMultiple(v493, &v584.mNumberBuffers, &v580, *(v8 + 123), 1u, &v583, 1u, &v585);
                                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x45u, v174, v7, &v580);
                                }

                                v423 = *(v8 + 1108);
                              }
                            }

                            if ((v423 & 0x400000000000) != 0 && (*(v8 + 8877) & 0x40) != 0)
                            {
                              v494 = *(v8 + 485);
                              if (v494)
                              {
                                v580 = v579;
                                LODWORD(v583.mSampleTime) = 512;
                                AudioUnitProcess(v494, &v583, &v580, *(v8 + 123), v7);
                                v423 = *(v8 + 1108);
                              }
                            }

                            if ((v423 & 0x800000000000) != 0)
                            {
                              v495 = v461;
                            }

                            else
                            {
                              v495 = 1;
                            }

                            if (v495)
                            {
                              v496 = &unk_28133C000;
                            }

                            else
                            {
                              v496 = &unk_28133C000;
                              if ((*(v8 + 8877) & 0x80) != 0)
                              {
                                v497 = *(v8 + 486);
                                if (v497)
                                {
                                  v580 = v579;
                                  LODWORD(v583.mSampleTime) = 512;
                                  AudioUnitProcess(v497, &v583, &v580, *(v8 + 123), v7);
                                  if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                                  {
                                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, *(v8 + 123), v7, &v580);
                                  }

                                  v423 = *(v8 + 1108);
                                }
                              }
                            }

                            if ((v423 & 0x4000000000000) != 0 && (*(v8 + 8878) & 4) != 0)
                            {
                              v498 = *(v8 + 489);
                              if (v498)
                              {
                                v580 = v579;
                                LODWORD(v583.mSampleTime) = 512;
                                AudioUnitProcess(v498, &v583, &v580, *(v8 + 123), v7);
                                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x77u, *(v8 + 123), v7, &v580);
                                }

                                v423 = *(v8 + 1108);
                              }
                            }

                            if ((v423 & 0x8000000000000) != 0 && (*(v8 + 8878) & 8) != 0)
                            {
                              v499 = *(v8 + 490);
                              if (v499)
                              {
                                v500 = *(v8 + 19);
                                if (v500 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v500) & 1) != 0)
                                {
                                  v580 = v579;
                                  LODWORD(v583.mSampleTime) = 512;
                                  AudioUnitProcess(v499, &v583, &v580, *(v8 + 123), v7);
                                  if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                                  {
                                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x75u, *(v8 + 123), v7, &v580);
                                  }
                                }
                              }
                            }

                            if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v174, v7), (v9[3249] & 1) != 0) || v9[3250] == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v174, v7, &v579);
                            }

                            v501 = *(v8 + 1993);
                            if (AudioIssueDetectorLibraryLoader(void)::once != -1)
                            {
                              dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3169);
                            }

                            if (v496[85])
                            {
                              v496[85](v501, 70, 0, v7, v174, &v579);
                            }

                            if (*(v8 + 1135) == 1 && (v9[3528] & 1) == 0)
                            {
                              VoiceProcessorV2::AppendReferenceSignal(v8, v7, &v579, 0);
                            }

                            if (v9[3249] == 1)
                            {
                              VoiceProcessorV2::LoopBackRead(v8, v174, v7);
                            }

                            goto LABEL_984;
                          }
                        }
                      }
                    }

                    if ((v423 & v444 & 0x800000000000) != 0)
                    {
                      v364 = *(v8 + 486);
                      if (v364)
                      {
                        v580 = v579;
                        LODWORD(v583.mSampleTime) = 512;
                        v364 = AudioUnitProcess(v364, &v583, &v580, *(v8 + 123), v7);
                        if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                        {
                          v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x39u, *(v8 + 123), v7, &v580);
                        }

                        v423 = *(v8 + 1108);
                      }
                    }

                    if (v423 & 0x1000000000000) != 0 && (*(v8 + 8878))
                    {
                      v445 = *(v8 + 487);
                      if (v445)
                      {
                        v446 = *(v8 + 1081);
                        if ((v446 - 65) <= 0xFFFFFFBF)
                        {
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_1068;
                          }

                          LODWORD(v580.mSampleTime) = 136315394;
                          *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                          WORD2(v580.mHostTime) = 1024;
                          *(&v580.mHostTime + 6) = 1195;
                          v538 = MEMORY[0x277D86220];
                          goto LABEL_1067;
                        }

                        MEMORY[0x28223BE20](v364);
                        v448 = (&v545 - v447);
                        bzero(&v545 - v447, v449 + 24);
                        v448->mNumberBuffers = v446;
                        v450 = 8;
                        v451 = mBuffers;
                        do
                        {
                          v452 = *v451;
                          v451 += 2;
                          *(&v448->mNumberBuffers + v450) = v452;
                          v450 += 16;
                          --v446;
                        }

                        while (v446);
                        v580 = v579;
                        LODWORD(v583.mSampleTime) = 512;
                        v364 = AudioUnitProcess(v445, &v583, &v580, *(v8 + 123), v448);
                        if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                        {
                          v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Au, *(v8 + 123), v448, &v580);
                        }

                        v423 = *(v8 + 1108);
                      }
                    }

                    if ((v423 & 0x2000000000000) == 0 || (*(v8 + 8878) & 2) == 0 || (v453 = *(v8 + 488)) == 0)
                    {
LABEL_843:
                      v461 = 1;
                      goto LABEL_845;
                    }

                    v454 = *(v8 + 1081);
                    if ((v454 - 65) > 0xFFFFFFBF)
                    {
                      MEMORY[0x28223BE20](v364);
                      v456 = (&v545 - v455);
                      bzero(&v545 - v455, v457 + 24);
                      v456->mNumberBuffers = v454;
                      v458 = v7 + 1;
                      v459 = 8;
                      do
                      {
                        v460 = *&v458->mNumberBuffers;
                        v458 = (v458 + 32);
                        *(&v456->mNumberBuffers + v459) = v460;
                        v459 += 16;
                        --v454;
                      }

                      while (v454);
                      v580 = v579;
                      LODWORD(v583.mSampleTime) = 512;
                      v364 = AudioUnitProcess(v453, &v583, &v580, *(v8 + 123), v456);
                      if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                      {
                        v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x3Bu, *(v8 + 123), v456, &v580);
                      }

                      v423 = *(v8 + 1108);
                      goto LABEL_843;
                    }

                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
LABEL_1068:
                      v539 = __cxa_allocate_exception(0x10uLL);
                      *v539 = &unk_2881B25F8;
                      v539[2] = -50;
                    }

                    LODWORD(v580.mSampleTime) = 136315394;
                    *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                    WORD2(v580.mHostTime) = 1024;
                    *(&v580.mHostTime + 6) = 1212;
                    v538 = MEMORY[0x277D86220];
LABEL_1067:
                    _os_log_impl(&dword_2724B4000, v538, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                    goto LABEL_1068;
                  }

                  v425 = *(v8 + 2140);
                  v426 = *(v425 + 16);
                  v584.mNumberBuffers = *(v8 + 129);
                  v427 = *(v8 + 50);
                  if (v427)
                  {
                    v584.mNumberBuffers = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v427);
                    v425 = *(v8 + 1986);
                    if (v584.mNumberBuffers <= *(v425 + 12) >> 2)
                    {
                      VoiceProcessor::SampleRateConverter::Convert(*(v8 + 50), v8 + 129, &v584.mNumberBuffers, *(v8 + 2140), v425);
                      v425 = *(v8 + 1986);
                    }

                    else
                    {
                      *v546 = 0;
                    }

                    v426 = *(v425 + 16);
                  }

                  v428 = *(v425 + 12) >> 2;
                  if (*v546 == 1)
                  {
                    v429 = 0.0;
                    if (v428 > v584.mNumberBuffers)
                    {
                      vDSP_vclr(&v426[v584.mNumberBuffers], 1, (v428 - v584.mNumberBuffers));
                    }
                  }

                  else
                  {
                    v429 = 1.0;
                    vDSP_vclr(v426, 1, v428);
                  }

                  AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, v429, 0);
                  if ((*(v8 + 4694) & 0x80) != 0 && (*(v8 + 4710) & 0x80) != 0)
                  {
                    v430 = *(v8 + 404);
                    if (v430)
                    {
                      LODWORD(v580.mSampleTime) = 0;
                      AudioUnitGetParameter(v430, 9u, 0, 0, &v580);
                      AudioUnitSetParameter(*(v8 + 482), 0x17u, 0, 0, *&v580.mSampleTime, 0);
                    }
                  }

                  v431 = *(v8 + 482);
                  v432 = atomic_load(VoiceProcessorV4::mIsOnEar);
                  AudioUnitSetParameter(v431, 0x16u, 0, 0, v432, 0);
                  v433 = *(v8 + 50);
                  v434 = 17120;
                  if (v433)
                  {
                    v434 = 15888;
                  }

                  v435 = *(v8 + v434);
                  *&v583.mSampleTime = v7;
                  v583.mHostTime = v435;
                  v580 = v579;
                  v573.mNumberBuffers = 512;
                  *&v585.mNumberBuffers = v7;
                  v436 = *(v8 + 131);
                  if (v9[3249] & 1) != 0 || (v9[3250])
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x71u, v436, v7, &v580);
                    v436 = *(v8 + 131);
                    v437 = 15888;
                    if (!*(v8 + 50))
                    {
                      v437 = 17120;
                    }

                    v438 = *(v8 + v437);
                    if (v9[3249])
                    {
LABEL_792:
                      VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x72u, v436, v438, &v580);
LABEL_793:
                      AudioUnitProcessMultiple(*(v8 + 482), &v573.mNumberBuffers, &v580, *(v8 + 123), 2u, &v583, 1u, &v585);
                      if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                      {
                        VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x73u, *(v8 + 131), v7, &v580);
                      }

                      v364 = AudioUnitSetParameter(*(v8 + 482), 0x15u, 0, 0, 0.0, 0);
                      v423 = *(v8 + 1108);
                      goto LABEL_797;
                    }
                  }

                  else
                  {
                    if (v433)
                    {
                      v439 = (v8 + 15888);
                    }

                    else
                    {
                      v439 = (v8 + 17120);
                    }

                    v438 = *v439;
                  }

                  if (v9[3250] != 1)
                  {
                    goto LABEL_793;
                  }

                  goto LABEL_792;
                }

                v372 = *(v8 + 580);
                if (v372 != *(v8 + 582))
                {
                  v364 = AudioUnitSetParameter(v364, 0, 0, 0, v372, 0);
                }

                if (v365 - 65 > 0xFFFFFFBF)
                {
                  MEMORY[0x28223BE20](v364);
                  v374 = (&v545 - v373);
                  bzero(&v545 - v373, v375 + 24);
                  *v374 = v365;
                  v376 = memcpy(v374 + 2, mBuffers, 16 * v365);
                  v377 = v7->mNumberBuffers;
                  if ((v377 - 65) <= 0xFFFFFFBF)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(v580.mSampleTime) = 136315394;
                      *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                      WORD2(v580.mHostTime) = 1024;
                      *(&v580.mHostTime + 6) = 969;
                      _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                    }

                    v537 = __cxa_allocate_exception(0x10uLL);
                    *v537 = &unk_2881B25F8;
                    v537[2] = -50;
                  }

                  v378 = v377 - 1;
                  MEMORY[0x28223BE20](v376);
                  v380 = (&v545 - v379);
                  bzero(&v545 - v379, v381 + 24);
                  *v380 = v377;
                  v382 = 16 * v377;
                  v383 = 2;
                  v384 = mBuffers;
                  do
                  {
                    *&v380[v383] = v384[v378];
                    v383 += 4;
                    --v378;
                    v382 -= 16;
                  }

                  while (v382);
                  *&v583.mSampleTime = v374;
                  *&v585.mNumberBuffers = v380;
                  v580 = v579;
                  v584.mNumberBuffers = 512;
                  v364 = AudioUnitProcessMultiple(*(v8 + 478), &v584.mNumberBuffers, &v580, *(v8 + 123), 1u, &v583, 1u, &v585);
                  if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                  {
                    v364 = VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x7Fu, v174, v7, &v580);
                  }

                  goto LABEL_762;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
LABEL_1059:
                  v536 = __cxa_allocate_exception(0x10uLL);
                  *v536 = &unk_2881B25F8;
                  v536[2] = -50;
                }

                LODWORD(v580.mSampleTime) = 136315394;
                *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                WORD2(v580.mHostTime) = 1024;
                *(&v580.mHostTime + 6) = 966;
                v533 = MEMORY[0x277D86220];
LABEL_1058:
                _os_log_impl(&dword_2724B4000, v533, OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", &v580, 0x12u);
                goto LABEL_1059;
              }

              NumberOfSourceFrames = *(v8 + 123);
              goto LABEL_230;
            }

            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v70 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v71 = (*v70 ? *v70 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                mDataByteSize = v7->mBuffers[0].mDataByteSize;
                v73 = *(v8 + 90) * v14;
                LODWORD(v580.mSampleTime) = 136315906;
                *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                WORD2(v580.mHostTime) = 1024;
                *(&v580.mHostTime + 6) = 210;
                WORD1(v580.mRateScalar) = 1024;
                HIDWORD(v580.mRateScalar) = mDataByteSize;
                LOWORD(v580.mWordClockTime) = 1024;
                *(&v580.mWordClockTime + 2) = v73;
                _os_log_impl(&dword_2724B4000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", &v580, 0x1Eu);
              }
            }

            v74 = *(v8 + 1588);
            v75 = v9[3249];
            if (v74)
            {
              if ((v9[3249] & 1) == 0 && v9[3250] != 1)
              {
                goto LABEL_152;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v74, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 210, "ProcessDownlinkAudio", "processdownlinkaudio: SERIOUS ERROR: ioOutputData->mBuffers[0].mDataByteSize = %u, expected = %u", v7->mBuffers[0].mDataByteSize, *(v8 + 90) * v14);
              v75 = v9[3249];
            }

            if (v75)
            {
              VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v14, v7);
              if (v9[3249])
              {
LABEL_153:
                VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v14, v7, &v579);
LABEL_154:
                v76 = *(v8 + 1993);
                if (AudioIssueDetectorLibraryLoader(void)::once != -1)
                {
                  dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3169);
                }

                if (!AudioIssueDetectorLibraryLoader(void)::libSym)
                {
                  goto LABEL_984;
                }

                goto LABEL_199;
              }
            }

LABEL_152:
            if (v9[3250] != 1)
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          if (v9[3171])
          {
            v55 = (mach_absolute_time() - *(v8 + 1978)) * 0.0000000416666667;
            v56 = *(v8 + 1981);
            if (v55 > v56)
            {
              *(v8 + 1981) = v56 + 10.0;
              VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), v14, "processdownlinkaudio: <block size mismatch>");
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v57 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
              if (v57)
              {
                v58 = v57;
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v580.mSampleTime) = 136315650;
                  *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                  WORD2(v580.mHostTime) = 1024;
                  *(&v580.mHostTime + 6) = 186;
                  WORD1(v580.mRateScalar) = 2048;
                  *(&v580.mRateScalar + 4) = v55;
                  _os_log_impl(&dword_2724B4000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", &v580, 0x1Cu);
                }
              }

              v59 = *(v8 + 1588);
              if (v59 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v59, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 186, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESSDLAUDIO BAD BLOCK CONFIG for over %.6f seconds *****\n", v55);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v60 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
              if (v60)
              {
                v61 = v60;
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v62 = v7->mBuffers[0].mDataByteSize;
                  v63 = *(v8 + 123);
                  CAFormatter::CAFormatter(&inInputBufferLists, v29);
                  v64 = *(v8 + 3150);
                  LODWORD(v580.mSampleTime) = 136316674;
                  *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                  WORD2(v580.mHostTime) = 1024;
                  *(&v580.mHostTime + 6) = 192;
                  WORD1(v580.mRateScalar) = 1024;
                  HIDWORD(v580.mRateScalar) = v556;
                  LOWORD(v580.mWordClockTime) = 1024;
                  *(&v580.mWordClockTime + 2) = v62;
                  HIWORD(v580.mWordClockTime) = 1024;
                  *&v580.mSMPTETime.mSubframes = v63;
                  LOWORD(v580.mSMPTETime.mCounter) = 2080;
                  *(&v580.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
                  HIWORD(v580.mSMPTETime.mFlags) = 1024;
                  *&v580.mSMPTETime.mHours = v64;
                  _os_log_impl(&dword_2724B4000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", &v580, 0x34u);
                  if (*&inInputBufferLists.mSampleTime)
                  {
                    free(*&inInputBufferLists.mSampleTime);
                  }

                  v9 = v568;
                  v14 = v556;
                }
              }

              v65 = *(v8 + 1588);
              if (v65)
              {
                if ((v9[3249] & 1) != 0 || v9[3250] == 1)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v66 = VPLogScope(void)::scope;
                  v67 = v7->mBuffers[0].mDataByteSize;
                  v68 = *(v8 + 123);
                  CAFormatter::CAFormatter(&v580, v29);
                  v69 = *(v8 + 3150);
                  LODWORD(v542) = v68;
                  v14 = v556;
                  CALegacyLog::log(v65, 1, v66, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 192, "ProcessDownlinkAudio", "processdownlinkaudio: <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\tdl mix blk size = %u\n\tdl mix asbd = %s\n\t process dl callcount = %u\n", v556, v67, v542, *&v580.mSampleTime, v69);
LABEL_190:
                  if (*&v580.mSampleTime)
                  {
                    free(*&v580.mSampleTime);
                  }
                }
              }
            }
          }

          else
          {
            v9[3171] = 1;
            *(v8 + 1978) = mach_absolute_time();
            *(v8 + 1981) = 0x3FF0000000000000;
            VoiceProcessorV2::LogIOError(v8, 23.002, *(v8 + 3150), *(v8 + 123), v14, "processdl: <block size mismatch>");
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v77 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
            {
              v78 = (*v77 ? *v77 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v580.mSampleTime) = 136315394;
                *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                WORD2(v580.mHostTime) = 1024;
                *(&v580.mHostTime + 6) = 163;
                _os_log_impl(&dword_2724B4000, v78, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG", &v580, 0x12u);
              }
            }

            v79 = *(v8 + 1588);
            if (v79 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v79, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 163, "ProcessDownlinkAudio", "CoreAudio: ***** VP BLOCK WARNING: PROCESSDLAUDIO TRANSIENT INCORRECT BLOCK CONFIG");
            }

            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v80 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
            {
              v81 = (*v80 ? *v80 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = v7->mBuffers[0].mDataByteSize;
                v83 = *(v8 + 123);
                CAFormatter::CAFormatter(&inInputBufferLists, v29);
                v84 = *(v8 + 3150);
                LODWORD(v580.mSampleTime) = 136316674;
                *(&v580.mSampleTime + 4) = "vpProcessDownlink_v9.cpp";
                WORD2(v580.mHostTime) = 1024;
                *(&v580.mHostTime + 6) = 169;
                WORD1(v580.mRateScalar) = 1024;
                HIDWORD(v580.mRateScalar) = v556;
                LOWORD(v580.mWordClockTime) = 1024;
                *(&v580.mWordClockTime + 2) = v82;
                HIWORD(v580.mWordClockTime) = 1024;
                *&v580.mSMPTETime.mSubframes = v83;
                LOWORD(v580.mSMPTETime.mCounter) = 2080;
                *(&v580.mSMPTETime.mCounter + 2) = inInputBufferLists.mSampleTime;
                HIWORD(v580.mSMPTETime.mFlags) = 1024;
                *&v580.mSMPTETime.mHours = v84;
                _os_log_impl(&dword_2724B4000, v81, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", &v580, 0x34u);
                if (*&inInputBufferLists.mSampleTime)
                {
                  free(*&inInputBufferLists.mSampleTime);
                }

                v9 = v568;
                v14 = v556;
              }
            }

            v85 = *(v8 + 1588);
            if (v85 && ((v9[3249] & 1) != 0 || v9[3250] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v86 = VPLogScope(void)::scope;
              v87 = v7->mBuffers[0].mDataByteSize;
              v88 = *(v8 + 123);
              CAFormatter::CAFormatter(&v580, v29);
              v89 = *(v8 + 3150);
              LODWORD(v542) = v88;
              v14 = v556;
              CALegacyLog::log(v85, 2, v86, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 169, "ProcessDownlinkAudio", "warning: processdownlinkaudio: <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t dl mix buff size = %u\n\tdlmix asbd = %s\n\tprocess dl callcount = %u\n", v556, v87, v542, *&v580.mSampleTime, v89);
              goto LABEL_190;
            }
          }

          if (v9[3249] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(v8, 2, v14, v7), (v9[3249] & 1) != 0) || v9[3250] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v8, 0x46u, v14, v7, &v579);
          }

          v76 = *(v8 + 1993);
          if (AudioIssueDetectorLibraryLoader(void)::once != -1)
          {
            dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3169);
          }

          if (!AudioIssueDetectorLibraryLoader(void)::libSym)
          {
            goto LABEL_984;
          }

LABEL_199:
          AudioIssueDetectorLibraryLoader(void)::libSym(v76, 70, 0, v7, v14, &v579);
          goto LABEL_984;
        }

LABEL_62:
        if (v9[3250] != 1)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

LABEL_56:
      v30 = *(v8 + 200);
      v31 = v30->mNumberBuffers;
      v564 = v30;
      if (v31)
      {
        v32 = v13;
        v33 = 0;
        v34 = &v30->mBuffers[0].mData;
        do
        {
          bzero(*v34, *(v34 - 1));
          ++v33;
          v34 += 2;
        }

        while (v33 < v30->mNumberBuffers);
        v28 = v9[3249];
        v13 = v32;
      }

      if ((v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }
  }

  else if (v7->mNumberBuffers == *(v8 + 91))
  {
    v29 = (v8 + 336);
    if ((v9[3250] & 1) == 0)
    {
      goto LABEL_83;
    }

    if (v564)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_984:
  if (v578 == 1)
  {
    (*(*v577 + 24))(v577);
  }

  v11 = 1;
LABEL_987:
  if (v9[3249] == 1 && *(v8 + 1589))
  {
    v502 = mach_absolute_time();
    v503 = *(v8 + 1589);
    v304 = 0x280898000uLL;
    if (VPTimestampLogScope(void)::once != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    nn = 0x280898000uLL;
    v200 = v502 * 0.0000000416666667 - v12;
    CALegacyLog::log(v503, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 1466, "ProcessDownlinkAudio", "DL %f %f %f", v579.mSampleTime, v12, v200);
    v504 = *(v8 + 123);
    v505 = *(v8 + 42);
    if (v200 >= v504 / v505)
    {
      v517 = *(v8 + 1589);
      if (VPTimestampLogScope(void)::once != -1)
      {
LABEL_1014:
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      CALegacyLog::log(v517, 5, *(nn + 3392), "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 1469, "ProcessDownlinkAudio", "DL ERROR, processing slower than RT - %f", v200);
      v504 = *(v8 + 123);
      v505 = *(v8 + 42);
    }

    if (v12 - *(v8 + 1984) > (*(v8 + 296) + v504) / v505)
    {
      v506 = *(v8 + 1589);
      if (*(v304 + 3384) != -1)
      {
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      CALegacyLog::log(v506, 5, *(nn + 3392), "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessDownlink_v9.cpp", 1472, "ProcessDownlinkAudio", "DL ERROR, not being called in a timely manner - %f", v12 - *(v8 + 1984));
    }

    *(v8 + 1984) = v12;
  }

  if (v11)
  {
    if (*(v8 + 1656) & 1) != 0 || (v507 = FadeInOverFewFrames(*(v8 + 205), v7, *(v8 + 412), *(v8 + 413)), *(v8 + 1656) = v507, *(v8 + 412) = HIDWORD(v507), (v507))
    {
      v508 = *(v8 + 205);
      v509 = v7->mNumberBuffers >= *v508 ? *v508 : v7->mNumberBuffers;
      if (v509)
      {
        v510 = &v7->mBuffers[0].mData;
        v511 = (v508 + 4);
        do
        {
          v512 = *(v510 - 1);
          v513 = *(v511 - 1);
          if (v512 >= v513)
          {
            v514 = v513;
          }

          else
          {
            v514 = v512;
          }

          memcpy(*v511, *v510, v514);
          v510 += 2;
          v511 += 2;
          --v509;
        }

        while (v509);
      }
    }
  }

  else
  {
    *(v8 + 412) = 0;
    *(v8 + 1656) = 0;
    FadeOutOverOneFrame(*(v8 + 205), v7);
  }

  atomic_fetch_add(v8 + 625, 0xFFFFFFFF);
  v515 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_27255D4A8(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::Locker::~Locker((v1 + 256));
  atomic_fetch_add((v2 + 2500), 0xFFFFFFFF);
  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV9::ProcessDownlinkAudio(AudioBufferList *,AudioBufferList *,AudioBufferList *,AudioBufferList *,unsigned int,AudioTimeStamp const&)::$_0>(uint64_t **a1, void *inData, UInt32 inDataSize)
{
  v4 = **a1;
  if (*(v4 + 16752))
  {
    v5 = 1733326433;
  }

  else
  {
    v5 = 1936747876;
  }

  if (*(v4 + 16752))
  {
    v6 = 1936747876;
  }

  else
  {
    v6 = 0;
  }

  return AudioUnitSetProperty(*(v4 + 3512), v5, 0, v6, inData, inDataSize);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3240()
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

uint64_t VoiceProcessorV2::ReadBuffer(uint64_t a1, int a2, _DWORD *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16161) == 1)
  {
    result = 1651532146;
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v21 = *(a1 + 1432);
        if (*v21 && *a3)
        {
          v22 = 0;
          v23 = (a3 + 4);
          do
          {
            v24 = *v21;
            if (v22 >= v24)
            {
              v25 = v24 - 1;
            }

            else
            {
              v25 = v22;
            }

            memcpy(*v23, *&v21[4 * v25 + 4], *(v23 - 1));
            ++v22;
            v23 += 2;
          }

          while (v22 < *a3);
          goto LABEL_39;
        }

LABEL_44:
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (a2 == 6)
      {
        v11 = *(a1 + 1096);
        if (*v11 && *a3)
        {
          v12 = 0;
          v13 = (a3 + 4);
          do
          {
            v14 = *v11;
            if (v12 >= v14)
            {
              v15 = v14 - 1;
            }

            else
            {
              v15 = v12;
            }

            memcpy(*v13, *&v11[4 * v15 + 4], *(v13 - 1));
            ++v12;
            v13 += 2;
          }

          while (v12 < *a3);
          goto LABEL_39;
        }

LABEL_42:
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_43:
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      if (!a2)
      {
        v16 = *(a1 + 1056);
        if (*v16 && *a3)
        {
          v17 = 0;
          v18 = (a3 + 4);
          do
          {
            v19 = *v16;
            if (v17 >= v19)
            {
              v20 = v19 - 1;
            }

            else
            {
              v20 = v17;
            }

            memcpy(*v18, *&v16[4 * v20 + 4], *(v18 - 1));
            ++v17;
            v18 += 2;
          }

          while (v17 < *a3);
          goto LABEL_39;
        }

        goto LABEL_43;
      }

      if (a2 == 1)
      {
        v6 = *(a1 + 1048);
        if (*v6 && *a3)
        {
          v7 = 0;
          v8 = (a3 + 4);
          do
          {
            v9 = *v6;
            if (v7 >= v9)
            {
              v10 = v9 - 1;
            }

            else
            {
              v10 = v7;
            }

            memcpy(*v8, *&v6[4 * v10 + 4], *(v8 - 1));
            ++v7;
            v8 += 2;
          }

          while (v7 < *a3);
LABEL_39:
          result = 0;
          goto LABEL_40;
        }

        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_42;
      }
    }
  }

  else
  {
    result = 1937006964;
  }

LABEL_40:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VoiceProcessorV2::WriteBuffer(uint64_t a1, int a2, _DWORD *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16161) == 1)
  {
    if (a2 == 5)
    {
      v16 = *(a1 + 1452);
      if ((v16 - 65) <= 0xFFFFFFBF)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "vpProcessUplink_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 82;
          _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  STACK_ABL: invalid number of buffers", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &unk_2881B25F8;
        exception[2] = -50;
      }

      MEMORY[0x28223BE20](a1);
      v18 = &v45 - v17;
      bzero(&v45 - v17, v19 + 24);
      v20 = *a3;
      if (v20)
      {
        v21 = 0;
        v22 = v18 + 8;
        do
        {
          if (v21 >= v20)
          {
            v23 = v20 - 1;
          }

          else
          {
            v23 = v21;
          }

          *v22++ = *&a3[4 * v23 + 2];
          ++v21;
        }

        while (v16 != v21);
        v24 = *(a1 + 516);
        v25 = *(a1 + 1448);
        v26 = *(a1 + 1456);
        if (v24)
        {
          v27 = v25 == v26;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          v28 = 0;
          v29 = v25 - v26;
          if (v29 >= v24)
          {
            v30 = *(a1 + 516);
          }

          else
          {
            v30 = v29;
          }

          v31 = v25 - *(a1 + 1464);
          if (v31 >= v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = v31;
          }

          v33 = (v18 + 16);
          do
          {
            v34 = *v33;
            v33 += 2;
            memcpy((*(a1 + 1472) + 4 * (*(a1 + 1464) + *(a1 + 1448) * v28++)), v34, 4 * v32);
            v35 = *(a1 + 1452);
          }

          while (v28 < v35);
          if (v31 < v30 && v35)
          {
            v36 = 0;
            v37 = (v18 + 16);
            do
            {
              v38 = *v37;
              v37 += 2;
              memcpy((*(a1 + 1472) + 4 * (*(a1 + 1448) * v36++)), (v38 + 4 * v32), 4 * (v30 - v32));
            }

            while (v36 < *(a1 + 1452));
          }

          *(a1 + 1456) += v30;
          v39 = *(a1 + 1464) + v30;
          *(a1 + 1464) = v39;
          v40 = *(a1 + 1448);
          v41 = v39 >= v40;
          v42 = v39 - v40;
          if (v41)
          {
            result = 0;
            *(a1 + 1464) = v42;
            goto LABEL_48;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (a2 == 4)
      {
        if (*a3)
        {
          v11 = *(a1 + 1080);
          if (*v11)
          {
            v12 = 0;
            v13 = (v11 + 4);
            do
            {
              v14 = *a3;
              if (v12 >= v14)
              {
                v15 = v14 - 1;
              }

              else
              {
                v15 = v12;
              }

              memcpy(*v13, *&a3[4 * v15 + 4], *(v13 - 1));
              ++v12;
              v13 += 2;
            }

            while (v12 < *v11);
            goto LABEL_46;
          }
        }

        v46 = 0;
        v51 = 0u;
        v52 = 0u;
        v50 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        v47 = 134217984;
        v48 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        if (a2 != 3)
        {
          result = 1651532146;
          goto LABEL_48;
        }

        if (*a3)
        {
          v5 = *(a1 + 1088);
          if (*v5)
          {
            v6 = 0;
            v7 = (v5 + 4);
            do
            {
              v8 = *a3;
              if (v6 >= v8)
              {
                v9 = v8 - 1;
              }

              else
              {
                v9 = v6;
              }

              memcpy(*v7, *&a3[4 * v9 + 4], *(v7 - 1));
              ++v6;
              v7 += 2;
            }

            while (v6 < *v5);
LABEL_46:
            result = 0;
            goto LABEL_48;
          }
        }
      }

      v46 = 0;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v47 = 134217984;
      v48 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v46 = 0;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v47 = 134217984;
    v48 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  result = 1937006964;
LABEL_48:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VoiceProcessorV2::RunUplinkHardwareDSP(VoiceProcessorV2 *this, AudioBufferList *a2, AudioTimeStamp *a3)
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
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3274);
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
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3274);
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
          *&buf[4] = "vpProcessUplink_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 255;
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
        CALegacyLog::log(v46, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 255, "RunUplinkHardwareDSP", "mic sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", v47, a3->mSampleTime, a3->mHostTime, a3->mRateScalar, a3->mFlags);
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

void VoiceProcessorV2::LoadMatchingReferenceForMicSignalAndFillTsMic(VoiceProcessorV2 *this, const AudioTimeStamp *a2, double a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = this + 12288;
  if ((*(this + 12604) & 1) == 0)
  {
    v6 = a3 - *(this + 298);
    v7 = *(this + 131);
    mNumberBuffers = v7->mNumberBuffers;
    if (mNumberBuffers)
    {
      v9 = *(this + 125);
      v10 = v9 * *(this + 184);
      p_mDataByteSize = &v7->mBuffers[0].mDataByteSize;
      do
      {
        if (*p_mDataByteSize != v10)
        {
          *p_mDataByteSize = v10;
        }

        p_mDataByteSize += 4;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    else
    {
      v9 = *(this + 125);
    }

    v12 = CADeprecated::AudioRingBuffer::Fetch(*(this + 151), v7, v9, v6);
    if (!v12)
    {
      goto LABEL_112;
    }

    v13 = v12;
    v14 = *(this + 131);
    if (*v14)
    {
      v15 = 0;
      v16 = (v14 + 4);
      do
      {
        bzero(*v16, *(v16 - 1));
        ++v15;
        v16 += 2;
      }

      while (v15 < *v14);
    }

    v17 = *(this + 151);
    v18 = *(v17 + 904);
    v19 = v17 + 24 * (v18 & 0x1F);
    v20 = 7;
    do
    {
      v21 = *(v19 + 136);
      v22 = *(v19 + 144);
    }

    while (*(v19 + 152) != v18 && v20-- != 0);
    v24 = *(this + 125);
    v25 = v6 + v24 + -1.0;
    if (v13 == -1)
    {
      v32 = v25 - v21 + 1.0;
      v33 = v32;
      if (v32 >= 1 && v24 > v33)
      {
        v47 = *(this + 152);
        v48 = v47->mNumberBuffers;
        if (v48)
        {
          v49 = *(this + 184) * v24;
          v50 = &v47->mBuffers[0].mDataByteSize;
          do
          {
            if (*v50 != v49)
            {
              *v50 = v49;
            }

            v50 += 4;
            --v48;
          }

          while (v48);
        }

        v51 = CADeprecated::AudioRingBuffer::Fetch(v17, v47, v32, v21);
        if (v51)
        {
          v52 = v51;
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v53 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
          {
            v54 = (*v53 ? *v53 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316930;
              v72 = "vpProcessUplink_v2.cpp";
              v73 = 1024;
              v74 = 614;
              v75 = 1024;
              v76 = v33;
              v77 = 1024;
              *v78 = v52;
              *&v78[4] = 2048;
              *&v78[6] = v21;
              *&v78[14] = 2048;
              *&v78[16] = v22;
              *&v78[24] = 2048;
              *&v78[26] = v6;
              *&v78[34] = 2048;
              *&v78[36] = v25;
              _os_log_impl(&dword_2724B4000, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: tsref ring buffer: <slightly behind> couldn't read required %d samples, err %d, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", buf, 0x46u);
            }
          }

          v55 = *(this + 1588);
          if (v55 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v55, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 614, "LoadMatchingReferenceForMicSignalAndFillTsMic", "warning: tsref ring buffer: <slightly behind> couldn't read required %d samples, err %d, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", v33, v52, v21, v22, v6, v25);
          }

          VoiceProcessorV2::LogIOError(this, 21.01, *(this + 3148), v52, v33, "warning: tsref ring buffer: <slightly behind> couldn't read required");
        }

        v56 = *(this + 131);
        if (*v56)
        {
          v57 = 0;
          v58 = 4;
          do
          {
            memcpy((*&v56[v58] + 4 * (*(this + 125) - v33)), *(*(this + 152) + v58 * 4), 4 * v33);
            ++v57;
            v56 = *(this + 131);
            v58 += 4;
          }

          while (v57 < *v56);
        }

        goto LABEL_112;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v35 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v36 = (*v35 ? *v35 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v72 = "vpProcessUplink_v2.cpp";
          v73 = 1024;
          v74 = 631;
          v75 = 1024;
          v76 = v33;
          v77 = 2048;
          *v78 = v21;
          *&v78[8] = 2048;
          *&v78[10] = v22;
          *&v78[18] = 2048;
          *&v78[20] = v6;
          *&v78[28] = 2048;
          *&v78[30] = v25;
          _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> tsref ring buffer: <slightly behind> the calculated samples in range is %d?!, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", buf, 0x40u);
        }
      }

      v37 = *(this + 1588);
      if (v37 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v37, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 631, "LoadMatchingReferenceForMicSignalAndFillTsMic", "tsref ring buffer: <slightly behind> the calculated samples in range is %d?!, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", v33, v21, v22, v6, v25);
      }

      VoiceProcessorV2::LogIOError(this, 21.01, *(this + 3148), v33, v21, "tsref ring buffer: <slightly behind> the calculated samples in range issue");
    }

    else if (v13 == 1)
    {
      v26 = (v22 - 1) - v6 + 1.0;
      v27 = v26;
      if (v26 >= 1 && v24 > v27)
      {
        v38 = *(this + 131);
        v39 = v38->mNumberBuffers;
        if (v39)
        {
          v40 = *(this + 184) * v24;
          v41 = &v38->mBuffers[0].mDataByteSize;
          do
          {
            if (*v41 != v40)
            {
              *v41 = v40;
            }

            v41 += 4;
            --v39;
          }

          while (v39);
        }

        v42 = CADeprecated::AudioRingBuffer::Fetch(v17, v38, v26, v6);
        if (v42)
        {
          v43 = v42;
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v44 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
          {
            v45 = (*v44 ? *v44 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316930;
              v72 = "vpProcessUplink_v2.cpp";
              v73 = 1024;
              v74 = 575;
              v75 = 1024;
              v76 = v27;
              v77 = 1024;
              *v78 = v43;
              *&v78[4] = 2048;
              *&v78[6] = v21;
              *&v78[14] = 2048;
              *&v78[16] = v22;
              *&v78[24] = 2048;
              *&v78[26] = v6;
              *&v78[34] = 2048;
              *&v78[36] = v25;
              _os_log_impl(&dword_2724B4000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: tsref ring buffer: <slightly ahead> couldn't read required %d samples, err %d, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", buf, 0x46u);
            }
          }

          v46 = *(this + 1588);
          if (v46 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v46, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 575, "LoadMatchingReferenceForMicSignalAndFillTsMic", "warning: tsref ring buffer: <slightly ahead> couldn't read required %d samples, err %d, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", v27, v43, v21, v22, v6, v25);
          }

          VoiceProcessorV2::LogIOError(this, 21.01, *(this + 3148), v43, v27, "warning: tsref ring buffer: <slightly ahead> couldn't read required samples");
        }

LABEL_112:
        v5 = 0;
        v4[3021] = 0;
        goto LABEL_113;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v29 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v30 = (*v29 ? *v29 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v72 = "vpProcessUplink_v2.cpp";
          v73 = 1024;
          v74 = 589;
          v75 = 1024;
          v76 = v27;
          v77 = 2048;
          *v78 = v21;
          *&v78[8] = 2048;
          *&v78[10] = v22;
          *&v78[18] = 2048;
          *&v78[20] = v6;
          *&v78[28] = 2048;
          *&v78[30] = v25;
          _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> tsref ring buffer: <slightly ahead> the calculated samples in range is %d?!, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", buf, 0x40u);
        }
      }

      v31 = *(this + 1588);
      if (v31 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v31, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 589, "LoadMatchingReferenceForMicSignalAndFillTsMic", "tsref ring buffer: <slightly ahead> the calculated samples in range is %d?!, buf time bounds [%ld, %ld], required sample bounds [%.2lf, %.2lf]", v27, v21, v22, v6, v25);
      }

      VoiceProcessorV2::LogIOError(this, 21.01, *(this + 3148), v27, v21, "warning: tsref ring buffer: <slightly ahead> the calculated samples range issue");
    }

    v5 = 1;
    goto LABEL_113;
  }

  v5 = 0;
LABEL_113:
  if ((v4[316] & 1) != 0 || v5 && (v4[3021] & 1) == 0)
  {
    v59 = *(this + 132);
    if (*v59)
    {
      v60 = 0;
      v61 = (v59 + 4);
      do
      {
        bzero(*v61, *(v61 - 1));
        ++v60;
        v61 += 2;
      }

      while (v60 < *v59);
    }
  }

  else
  {
    v62 = *(this + 132);
    v63 = *(this + 130);
    if (*v63 >= *v62)
    {
      v64 = *v62;
    }

    else
    {
      v64 = *v63;
    }

    if (v64)
    {
      v65 = (v63 + 4);
      v66 = (v62 + 4);
      do
      {
        v67 = *(v65 - 1);
        v68 = *(v66 - 1);
        if (v67 >= v68)
        {
          v69 = v68;
        }

        else
        {
          v69 = v67;
        }

        memcpy(*v66, *v65, v69);
        v65 += 2;
        v66 += 2;
        --v64;
      }

      while (v64);
    }
  }

  v70 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV2::PreSRCMicClipDetection(VoiceProcessorV2 *this)
{
  v1 = *(this + 132);
  if (*v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      __C = 0.0;
      vDSP_maxmgv(*&v1[v3 + 4], 1, &__C, *(this + 126));
      v5 = __C <= 0.999;
      *(*(this + 177) + v4) = __C > 0.999;
      v6 = *(*(this + 179) + v3 * 4 + 16);
      v7 = *(this + 132) + v3 * 4;
      if (v5)
      {
        bzero(v6, *(v7 + 12));
      }

      else
      {
        memcpy(v6, *(v7 + 16), *(v7 + 12));
        ++*(this + 372);
      }

      ++v4;
      v1 = *(this + 132);
      v3 += 4;
    }

    while (v4 < *v1);
  }
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_3294()
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

uint64_t VoiceProcessorV2::RunUplinkDynamicsDSP(VoiceProcessorV2 *this, AudioBufferList *ioData, AudioTimeStamp *a3, const AudioTimeStamp *a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
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
    *&ioActionFlags.mNumberBuffers = 1;
    *&ioActionFlags.mBuffers[0].mNumberChannels = 0x800000001;
    ioActionFlags.mBuffers[0].mData = v13;
    v13[0] = 0;
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Cu, 2, &ioActionFlags, a3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t VoiceProcessorV2::Process(VoiceProcessorV2 *this, const AudioBufferList *a2, AudioTimeStamp *a3, AudioBufferList *a4, AudioTimeStamp *a5, unsigned int *a6, void *a7, unsigned int *a8, AudioStreamPacketDescription *a9)
{
  v10 = a3;
  v212 = *MEMORY[0x277D85DE8];
  v12 = this + 12288;
  atomic_fetch_add(this + 625, 1u);
  if (*(this + 624))
  {
    if (*(this + 484))
    {
      v13 = a5;
      VoiceProcessorV2::LogIOError(this, 21.006, *(this + 3148), *(this + 3149), 0.0, "process: tryer acquire failed", a3, a4, a5, a6, a7, a8);
LABEL_109:
      CADeprecated::CAMutex::Lock((this + 2592));
      ++*(this + 3148);
      CADeprecated::CAMutex::Unlock((this + 2592));
      if (*(this + 3148) == 1)
      {
        VoiceProcessorV2::LogNonTransientErrors(this, 1);
      }

      LODWORD(v9) = *(this + 130);
      v80 = *(this + 84);
      if (*(this + 109) <= 0.0)
      {
        v81 = 24000.0;
      }

      else
      {
        v81 = *(this + 109);
      }

      *a6 = a4->mBuffers[0].mDataByteSize >> 2;
      *(this + 321) = 0;
      *(this + 1280) = 0;
      FadeOutOverOneFrame(*(this + 159), a4);
      v82 = v80 * v9 / v81;
      if (*(this + 1864) == 1)
      {
        *(this + 225) = v82 + *(this + 225);
      }

      v83 = *&v10->mSampleTime;
      v84 = *&v10->mRateScalar;
      v85 = *&v10->mSMPTETime.mHours;
      *&v13->mSMPTETime.mSubframes = *&v10->mSMPTETime.mSubframes;
      *&v13->mSMPTETime.mHours = v85;
      *&v13->mSampleTime = v83;
      *&v13->mRateScalar = v84;
      *&v83 = *(this + 217);
      v86 = v82 + *&v83;
      *(this + 217) = v86;
      v13->mSampleTime = v86;
      v13->mFlags |= 1u;
      LODWORD(v83) = *(this + 126);
      *(this + 214) = v10->mSampleTime + v83;
      if (v12[3593] == 1 && *(this + 1589))
      {
        v87 = mach_absolute_time();
        v88 = *(this + 1589);
        if (VPTimestampLogScope(void)::once != -1)
        {
          dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
        }

        CALegacyLog::log(v88, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 486, "Process", "Bailed UL %f %f %f", v10->mSampleTime, *(this + 1982), v87 * 0.0000000416666667 - *(this + 1982));
      }

      goto LABEL_304;
    }

LABEL_108:
    v13 = a5;
    VoiceProcessorV2::LogIOError(this, 21.005, *(this + 3148), *(this + 3149), 0.0, "process: not ok to process?!", a3, a4, a5, a6, a7, a8);
    goto LABEL_109;
  }

  if (!*(this + 484))
  {
    goto LABEL_108;
  }

  (*(*this + 192))(this, a2, a3, a4, a5, a6, a7);
  VoiceProcessorV2::SrcAndAppendToRingBuffer(this, 1, *(this + 125), *(this + 131), *(this + 131), 0, v10, v14);
  VoiceProcessorV2::SrcAndAppendToRingBuffer(this, 0, *(this + 126), *(this + 132), *(this + 179), *(this + 1412), v10, v15);
  if ((*(this + 1864) & 1) == 0)
  {
    *(this + 1832) = 0u;
    *(this + 1848) = 0u;
    *(this + 1800) = 0u;
    *(this + 1816) = 0u;
    *(this + 1864) = 1;
    *(this + 225) = v10->mSampleTime * *(this + 104) / *(this + 79);
    *(this + 481) = 0;
  }

  *(this + 226) = v10->mHostTime;
  v16 = *(this + 215);
  if (v16 > 0.0)
  {
    v17 = v16 * *(this + 104) / *(this + 79);
    v18 = vcvtmd_u64_f64(v17);
    v19 = v17 - v18 + *(this + 481);
    if (v19 > 1.0)
    {
      v19 = v19 + -1.0;
      ++v18;
    }

    *(this + 481) = v19;
    *(this + 225) = *(this + 225) + v18;
  }

  v20 = *(this + 129);
  p_mSampleTime = &v10->mSampleTime;
  v204 = v12;
  if (*(this + 336) >= v20)
  {
    do
    {
      if (!*(this + 1135) && *(this + 326) < v20)
      {
        break;
      }

      if (v20)
      {
        v21 = *(this + 135);
        if (*v21 == *(this + 325))
        {
          v22 = *(this + 326);
          if (v22)
          {
            if (v22 >= v20)
            {
              v23 = v20;
            }

            else
            {
              v23 = *(this + 326);
            }

            v24 = *(this + 324) - *(this + 327);
            if (v24 >= v23)
            {
              v25 = v23;
            }

            else
            {
              v25 = v24;
            }

            if (*v21)
            {
              v26 = 0;
              v27 = (v21 + 4);
              v28 = (v21 + 4);
              do
              {
                v29 = *v28;
                v28 += 2;
                memcpy(v29, (*(this + 165) + 4 * (*(this + 327) + *(this + 324) * v26++)), 4 * v25);
                v30 = *(this + 325);
              }

              while (v26 < v30);
              v10 = p_mSampleTime;
              if (v24 < v23)
              {
                if (v30)
                {
                  v31 = 0;
                  do
                  {
                    v32 = *v27;
                    v27 += 2;
                    memcpy((v32 + 4 * v25), (*(this + 165) + 4 * (*(this + 324) * v31++)), 4 * (v23 - v25));
                  }

                  while (v31 < *(this + 325));
                }
              }
            }

            *(this + 326) -= v23;
            v33 = *(this + 327) + v23;
            *(this + 327) = v33;
            v34 = *(this + 324);
            v35 = v33 >= v34;
            v36 = v33 - v34;
            v12 = v204;
            if (v35)
            {
              *(this + 327) = v36;
            }
          }
        }
      }

      v37 = *(this + 129);
      v38 = *(this + 136);
      v39 = *v38;
      if (v37)
      {
        v40 = v39 == *(this + 335);
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        v41 = *(this + 336);
        if (v41)
        {
          if (v41 >= v37)
          {
            v42 = *(this + 129);
          }

          else
          {
            v42 = *(this + 336);
          }

          v43 = *(this + 334) - *(this + 337);
          if (v43 >= v42)
          {
            v44 = v42;
          }

          else
          {
            v44 = v43;
          }

          if (v39)
          {
            v45 = 0;
            v46 = (v38 + 4);
            v47 = (v38 + 4);
            do
            {
              v48 = *v47;
              v47 += 2;
              memcpy(v48, (*(this + 170) + 4 * (*(this + 337) + *(this + 334) * v45++)), 4 * v44);
              v49 = *(this + 335);
            }

            while (v45 < v49);
            v10 = p_mSampleTime;
            if (v43 < v42)
            {
              if (v49)
              {
                v50 = 0;
                do
                {
                  v51 = *v46;
                  v46 += 2;
                  memcpy((v51 + 4 * v44), (*(this + 170) + 4 * (*(this + 334) * v50++)), 4 * (v42 - v44));
                }

                while (v50 < *(this + 335));
              }
            }
          }

          *(this + 336) -= v42;
          v52 = *(this + 337) + v42;
          *(this + 337) = v52;
          v53 = *(this + 334);
          v35 = v52 >= v53;
          v54 = v52 - v53;
          v12 = v204;
          if (v35)
          {
            *(this + 337) = v54;
          }
        }
      }

      if ((*(this + 1864) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      (*(*this + 200))(this, this + 1800);
      if ((v12[3873] & 1) == 0)
      {
        if ((*(this + 1864) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v55 = *(this + 1994);
        v56 = *(this + 137);
        v57 = *(this + 129);
        if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_51);
        }

        if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
        {
          AudioDataAnalysisManagerLibraryLoader(void)::libSym(v55, 42, v56, v57, this + 1800);
        }
      }

      if ((*(this + 1864) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v58 = *(this + 250);
      v59 = *(this + 129);
      if (v58)
      {
        v60 = *(this + 138);
        v61 = *(this + 129);
        NumberOfOutputFrames = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v58);
        VoiceProcessor::SampleRateConverter::Convert(*(this + 250), this + 129, &NumberOfOutputFrames, *(this + 137), *(this + 138));
        v59 = NumberOfOutputFrames;
      }

      else
      {
        v60 = *(this + 137);
        NumberOfOutputFrames = *(this + 129);
      }

      if ((v12[3593] & 1) != 0 || v12[3594] == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(this, 0x2Fu, v59, v60, v10);
      }

      (*(*this + 208))(this, v60, this + 1800, v59);
      if (v60->mNumberBuffers == *(this + 307))
      {
        v62 = 0;
        if (v59)
        {
          v63 = *(this + 306);
          v64 = v63 - *(this + 308);
          if (v64)
          {
            if (v64 >= v59)
            {
              v62 = v59;
            }

            else
            {
              v62 = v63 - *(this + 308);
            }

            v65 = v63 - *(this + 310);
            if (v65 >= v62)
            {
              v66 = v62;
            }

            else
            {
              v66 = v65;
            }

            if (v60->mNumberBuffers)
            {
              v67 = 0;
              p_mData = &v60->mBuffers[0].mData;
              v69 = &v60->mBuffers[0].mData;
              do
              {
                v70 = *v69;
                v69 += 2;
                memcpy((*(this + 156) + 4 * (*(this + 310) + *(this + 306) * v67++)), v70, 4 * v66);
                v71 = *(this + 307);
              }

              while (v67 < v71);
              v10 = p_mSampleTime;
              if (v65 < v62)
              {
                if (v71)
                {
                  v72 = 0;
                  do
                  {
                    v73 = *p_mData;
                    p_mData += 2;
                    memcpy((*(this + 156) + 4 * (*(this + 306) * v72++)), &v73[4 * v66], 4 * (v62 - v66));
                  }

                  while (v72 < *(this + 307));
                }
              }
            }

            *(this + 308) += v62;
            v74 = *(this + 310) + v62;
            *(this + 310) = v74;
            v75 = *(this + 306);
            v35 = v74 >= v75;
            v76 = v74 - v75;
            if (v35)
            {
              *(this + 310) = v76;
            }

            v12 = v204;
          }
        }
      }

      else
      {
        v62 = 0;
      }

      if (v62 != v59)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v77 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v78 = (*v77 ? *v77 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            buf.mNumberBuffers = 136315906;
            *(&buf.mNumberBuffers + 1) = "vpProcessUplink_v2.cpp";
            LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
            *(&buf.mBuffers[0].mDataByteSize + 2) = 411;
            WORD1(buf.mBuffers[0].mData) = 1024;
            HIDWORD(buf.mBuffers[0].mData) = v59;
            v208 = 1024;
            LODWORD(v209) = v62;
            _os_log_impl(&dword_2724B4000, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> mNewOutRingBuff has encountered an overrun: tried to write %u but only had space for %u samples", &buf, 0x1Eu);
          }
        }

        v79 = *(this + 1588);
        if (v79 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v79, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 411, "Process", "mNewOutRingBuff has encountered an overrun: tried to write %u but only had space for %u samples", v59, v62);
        }
      }

      v20 = *(this + 129);
      *(this + 225) = *(this + 225) + v20;
      *(this + 2089) = *(this + 2088);
    }

    while (*(this + 336) >= v20);
    v16 = *(this + 215);
  }

  v89 = *(this + 236);
  v90 = *(this + 235);
  v91 = *(this + 234) * *(this + 126) * v89 / v90;
  v92 = *(this + 237);
  *(this + 237) = v91;
  *(this + 236) = ++v89;
  v93 = v89 > v90;
  v94 = v89 - v90;
  if (v93)
  {
    *(this + 236) = v94;
    *(this + 237) = 0;
  }

  v95 = v91 - v92;
  *(this + 476) = v91 - v92;
  v96 = *(this + 158);
  v97 = *v96;
  if (v95)
  {
    v98 = v97 == *(this + 307);
  }

  else
  {
    v98 = 0;
  }

  if (v98 && (v99 = *(this + 308)) != 0)
  {
    if (v99 >= v95)
    {
      v100 = v95;
    }

    else
    {
      v100 = *(this + 308);
    }

    v101 = *(this + 306) - *(this + 309);
    if (v101 >= v100)
    {
      v102 = v100;
    }

    else
    {
      v102 = v101;
    }

    if (v97)
    {
      v103 = 0;
      v104 = (v96 + 4);
      do
      {
        v105 = *v104;
        v104 += 2;
        memcpy(v105, (*(this + 156) + 4 * (*(this + 309) + *(this + 306) * v103++)), 4 * v102);
        v106 = *(this + 307);
      }

      while (v103 < v106);
      v10 = p_mSampleTime;
      if (v101 < v100)
      {
        if (v106)
        {
          v107 = 0;
          v108 = (v96 + 4);
          do
          {
            v109 = *v108;
            v108 += 2;
            memcpy((v109 + 4 * v102), (*(this + 156) + 4 * (*(this + 306) * v107++)), 4 * (v100 - v102));
          }

          while (v107 < *(this + 307));
        }
      }
    }

    *(this + 308) -= v100;
    v110 = *(this + 309) + v100;
    *(this + 309) = v110;
    v111 = *(this + 306);
    v35 = v110 >= v111;
    v112 = v110 - v111;
    v12 = v204;
    if (v35)
    {
      *(this + 309) = v112;
    }
  }

  else
  {
    v100 = 0;
  }

  if (v100 != v95)
  {
    VoiceProcessorV2::LogIOError(this, 21.0, *(this + 3148), v95, v100, "process: ERROR output buffer has encountered an underrun");
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
        buf.mNumberBuffers = 136315906;
        *(&buf.mNumberBuffers + 1) = "vpProcessUplink_v2.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 666;
        WORD1(buf.mBuffers[0].mData) = 1024;
        HIDWORD(buf.mBuffers[0].mData) = v95;
        v208 = 1024;
        LODWORD(v209) = v100;
        _os_log_impl(&dword_2724B4000, v114, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> process: ERROR output buffer has encountered an underrun, need %d, have %d samples", &buf, 0x1Eu);
      }
    }

    v115 = *(this + 1588);
    if (v115 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v115, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 666, "HandleUplinkOutputTimeStamps", "process: ERROR output buffer has encountered an underrun, need %d, have %d samples", v95, v100);
    }
  }

  if (v12[3593] == 1)
  {
    v116 = *(this + 158);
    NumberOfOutputFrames = v95;
    if (v12[3440] == 1)
    {
      v117 = *(this + 1967);
      if (v117)
      {
        v118 = VoiceProcessor::SampleRateConverter::GetNumberOfOutputFrames(*v117);
      }

      else
      {
        v118 = v95;
        if (*(this + 91) == *(this + 245))
        {
          v205 = v95;
          if (*v116 == *(this + 3941))
          {
            v119 = 0;
            if (v95)
            {
              v120 = *(this + 3940);
              v118 = v95;
              v121 = v120 - *(this + 3942);
              if (v121)
              {
                if (v121 >= v95)
                {
                  v119 = v95;
                }

                else
                {
                  v119 = v120 - *(this + 3942);
                }

                v122 = v120 - *(this + 3944);
                if (v122 >= v119)
                {
                  v123 = v119;
                }

                else
                {
                  v123 = v122;
                }

                if (*v116)
                {
                  v124 = 0;
                  v125 = (v116 + 16);
                  do
                  {
                    v126 = *v125;
                    v125 += 2;
                    memcpy((*(this + 1973) + 4 * (*(this + 3944) + *(this + 3940) * v124++)), v126, 4 * v123);
                    v127 = *(this + 3941);
                  }

                  while (v124 < v127);
                  if (v122 < v119 && v127)
                  {
                    v128 = 0;
                    v129 = (v116 + 16);
                    do
                    {
                      v130 = *v129;
                      v129 += 2;
                      memcpy((*(this + 1973) + 4 * (*(this + 3940) * v128++)), (v130 + 4 * v123), 4 * (v119 - v123));
                    }

                    while (v128 < *(this + 3941));
                  }
                }

                *(this + 3942) += v119;
                v131 = *(this + 3944) + v119;
                *(this + 3944) = v131;
                v132 = *(this + 3940);
                v35 = v131 >= v132;
                v133 = v131 - v132;
                if (v35)
                {
                  *(this + 3944) = v133;
                }

                v118 = v95;
                v12 = v204;
              }

              goto LABEL_233;
            }
          }

          else
          {
            v119 = 0;
          }

          v118 = v95;
          goto LABEL_233;
        }
      }

      v205 = v118;
      if (v118 <= *(this + 3936) && (v134 = *(this + 1969)) != 0)
      {
        v135 = *(this + 1967);
        if (v135)
        {
          *&buf.mNumberBuffers = 1;
          buf.mBuffers[0] = *(v116 + 8);
          VoiceProcessor::SampleRateConverter::Convert(v135, &NumberOfOutputFrames, &v205, &buf, v134);
          v118 = v205;
        }

        else
        {
          memcpy(*(v134 + 16), *(v116 + 16), 4 * v118);
        }

        v141 = *(this + 1969);
        LODWORD(v142) = *v141;
        if (*v141 >= 2u)
        {
          v143 = 1;
          v144 = 4;
          do
          {
            memcpy(v141[v144], v141[2], 4 * v118);
            ++v143;
            v141 = *(this + 1969);
            v142 = *v141;
            v144 += 2;
          }

          while (v143 < v142);
          v12 = v204;
        }

        if (v142 == *(this + 3941))
        {
          v119 = 0;
          if (v118)
          {
            v145 = *(this + 3940);
            v146 = v145 - *(this + 3942);
            if (v146)
            {
              if (v146 >= v118)
              {
                v119 = v118;
              }

              else
              {
                v119 = v145 - *(this + 3942);
              }

              v147 = v145 - *(this + 3944);
              if (v147 >= v119)
              {
                v148 = v119;
              }

              else
              {
                v148 = v147;
              }

              if (v142)
              {
                v149 = 0;
                v198 = v148;
                v150 = 4 * v148;
                v151 = v141 + 2;
                do
                {
                  v152 = *v151;
                  v151 += 2;
                  memcpy((*(this + 1973) + 4 * (*(this + 3944) + *(this + 3940) * v149++)), v152, v150);
                  v153 = *(this + 3941);
                }

                while (v149 < v153);
                if (v147 < v119 && v153)
                {
                  v154 = 0;
                  v155 = (v141 + 2);
                  do
                  {
                    v156 = *v155;
                    v155 += 2;
                    memcpy((*(this + 1973) + 4 * (*(this + 3940) * v154++)), (v156 + 4 * v198), 4 * (v119 - v198));
                  }

                  while (v154 < *(this + 3941));
                }
              }

              *(this + 3942) += v119;
              v157 = *(this + 3944) + v119;
              *(this + 3944) = v157;
              v158 = *(this + 3940);
              v35 = v157 >= v158;
              v159 = v157 - v158;
              v12 = v204;
              if (v35)
              {
                *(this + 3944) = v159;
              }
            }
          }

          goto LABEL_233;
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v136 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v137 = (*v136 ? *v136 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
          {
            v138 = *(this + 1969);
            v139 = *(this + 3936);
            buf.mNumberBuffers = 136316162;
            *(&buf.mNumberBuffers + 1) = "vpDebug_Loopback.cpp";
            LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
            *(&buf.mBuffers[0].mDataByteSize + 2) = 75;
            WORD1(buf.mBuffers[0].mData) = 1024;
            HIDWORD(buf.mBuffers[0].mData) = v118;
            v208 = 2048;
            v209 = v138;
            v210 = 1024;
            v211 = v139;
            _os_log_impl(&dword_2724B4000, v137, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> loopbackwrite: ERROR can't write %d frames to loopbackABL ABL=%p, capacity=%d", &buf, 0x28u);
          }
        }

        v140 = *(this + 1588);
        if (v140 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v140, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Loopback.cpp", 75, "LoopBackWrite", "loopbackwrite: ERROR can't write %d frames to loopbackABL ABL=%p, capacity=%d", v118, *(this + 1969), *(this + 3936));
        }
      }

      v119 = 0;
LABEL_233:
      if (v119 != v118)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v160 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v161 = (*v160 ? *v160 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
          {
            buf.mNumberBuffers = 136315906;
            *(&buf.mNumberBuffers + 1) = "vpDebug_Loopback.cpp";
            LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
            *(&buf.mBuffers[0].mDataByteSize + 2) = 84;
            WORD1(buf.mBuffers[0].mData) = 1024;
            HIDWORD(buf.mBuffers[0].mData) = v119;
            v208 = 1024;
            LODWORD(v209) = v118;
            _os_log_impl(&dword_2724B4000, v161, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> loopbackwrite ERROR wrote %d (requested %d) frames", &buf, 0x1Eu);
          }
        }

        v162 = *(this + 1588);
        if (v162 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v162, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Loopback.cpp", 84, "LoopBackWrite", "loopbackwrite ERROR wrote %d (requested %d) frames", v119, v118);
        }
      }
    }
  }

  v163 = a4;
  if (*(this + 254) * v95 > a4->mBuffers[0].mDataByteSize)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v164 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v165 = (*v164 ? *v164 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
      {
        mDataByteSize = a4->mBuffers[0].mDataByteSize;
        v167 = *(this + 254) * v95;
        buf.mNumberBuffers = 136315906;
        *(&buf.mNumberBuffers + 1) = "vpProcessUplink_v2.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 675;
        WORD1(buf.mBuffers[0].mData) = 1024;
        HIDWORD(buf.mBuffers[0].mData) = mDataByteSize;
        v208 = 1024;
        LODWORD(v209) = v167;
        _os_log_impl(&dword_2724B4000, v165, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESS - ioOutData buffer (%d bytes) smaller than what VP is configured to output (%d bytes)!\n", &buf, 0x1Eu);
      }
    }

    v168 = *(this + 1588);
    if (v168 && ((v12[3593] & 1) != 0 || v12[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v168, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 675, "HandleUplinkOutputTimeStamps", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: PROCESS - ioOutData buffer (%d bytes) smaller than what VP is configured to output (%d bytes)!\n", a4->mBuffers[0].mDataByteSize, *(this + 254) * v95);
    }

    v163 = a4;
    v95 = a4->mBuffers[0].mDataByteSize / *(this + 254);
  }

  memcpy(v163->mBuffers[0].mData, *(*(this + 158) + 16), 4 * v95);
  *a6 = v95;
  v163->mBuffers[0].mDataByteSize = *(this + 252) * v95;
  v169 = *a6;
  if (v12[3593] == 1 && (VoiceProcessorV2::InjectionFilesReadSignal(this, 9, v169, v163), v169 = *a6, (v12[3593] & 1) != 0) || v12[3594] == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(this, 0x31u, v169, a4, v10);
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (v16 > 0.0)
  {
    v170 = *(this + 124) * v16 / *(this + 79);
    v171 = vcvtmd_u64_f64(v170);
    v172 = v170 - v171 + *(this + 480);
    if (v172 > 1.0)
    {
      v172 = v172 + -1.0;
      ++v171;
    }

    *(this + 480) = v172;
    *(this + 217) = *(this + 217) + v171;
  }

  v173 = *&v10->mSampleTime;
  v174 = *&v10->mRateScalar;
  v175 = *&v10->mSMPTETime.mHours;
  *&a5->mSMPTETime.mSubframes = *&v10->mSMPTETime.mSubframes;
  *&a5->mSMPTETime.mHours = v175;
  *&a5->mSampleTime = v173;
  *&a5->mRateScalar = v174;
  *&v173 = *(this + 217);
  *&a5->mSampleTime = v173;
  a5->mFlags |= 1u;
  *(this + 217) = *&v173 + v95;
  v176 = *(this + 1992);
  v177 = *(this + 2088);
  v178 = *a6;
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_3274);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v176, 49, v177, a4, v178, this + 1736);
  }

  *(this + 130) = *(this + 129);
  *(this + 88) = *(this + 83);
  v179 = *(this + 648);
  *(this + 42) = *(this + 632);
  *(this + 43) = v179;
  v180 = *(this + 53);
  *(this + 872) = *(this + 52);
  *(this + 888) = v180;
  *(this + 113) = *(this + 108);
  *(this + 21) = *(this + 20);
  if (*(this + 1280) & 1) != 0 || (v181 = FadeInOverFewFrames(*(this + 159), a4, *(this + 321), *(this + 322)), *(this + 1280) = v181, *(this + 321) = HIDWORD(v181), (v181))
  {
    v182 = *(this + 159);
    v183 = a4->mNumberBuffers >= *v182 ? *v182 : a4->mNumberBuffers;
    if (v183)
    {
      v184 = &a4->mBuffers[0].mData;
      v185 = (v182 + 4);
      do
      {
        v186 = *(v184 - 1);
        v187 = *(v185 - 1);
        if (v186 >= v187)
        {
          v188 = v187;
        }

        else
        {
          v188 = v186;
        }

        memcpy(*v185, *v184, v188);
        v184 += 2;
        v185 += 2;
        --v183;
      }

      while (v183);
    }
  }

  if (v204[3593] == 1 && *(this + 1589))
  {
    v189 = mach_absolute_time() * 0.0000000416666667;
    v190 = *(this + 1589);
    if (VPTimestampLogScope(void)::once != -1)
    {
      dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
    }

    CALegacyLog::log(v190, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 448, "Process", "UL %f %f %f", *p_mSampleTime, *(this + 1982), v189 - *(this + 1982));
    v191 = *(this + 1982);
    v192 = *(this + 129);
    v193 = *(this + 104);
    if (v189 - v191 >= v192 / v193)
    {
      v194 = *(this + 1589);
      if (VPTimestampLogScope(void)::once != -1)
      {
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      CALegacyLog::log(v194, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 451, "Process", "UL ERROR, processing slower than RT - %f", v189 - *(this + 1982));
      v191 = *(this + 1982);
      v192 = *(this + 129);
      v193 = *(this + 104);
    }

    if (v191 - *(this + 1983) > (*(this + 295) + v192) / v193)
    {
      v195 = *(this + 1589);
      if (VPTimestampLogScope(void)::once != -1)
      {
        dispatch_once(&VPTimestampLogScope(void)::once, &__block_literal_global_6);
      }

      CALegacyLog::log(v195, 5, VPTimestampLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v2.cpp", 454, "Process", "UL ERROR, not being called in a timely manner - %f", *(this + 1982) - *(this + 1983));
      v191 = *(this + 1982);
    }

    *(this + 1983) = v191;
  }

LABEL_304:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  v196 = *MEMORY[0x277D85DE8];
  return 0;
}