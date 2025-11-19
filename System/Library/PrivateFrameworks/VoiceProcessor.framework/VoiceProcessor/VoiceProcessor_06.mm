void VoiceProcessorV2::CreateSignalSaveFiles(VoiceProcessorV2 *this, int a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = this + 12288;
  if (a2 == 1)
  {
    if (*(this + 13016) != 1)
    {
      goto LABEL_14;
    }

    v5 = *(this + 3251) + 1;
    *(this + 3251) = v5;
    *(this + 13016) = 0;
    v6 = *(this + 3250);
    if (v6 >= v5)
    {
      if (v5 < v6)
      {
        *(this + 3251) = v6;
      }

      goto LABEL_14;
    }
  }

  else if (a2 == 2)
  {
    if (*(this + 13017) != 1)
    {
      goto LABEL_14;
    }

    v5 = *(this + 3252) + 1;
    *(this + 3252) = v5;
    *(this + 13017) = 0;
    v7 = *(this + 3250);
    if (v7 >= v5)
    {
      if (v5 < v7)
      {
        *(this + 3252) = v7;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (*(this + 13018) != 1)
    {
      goto LABEL_14;
    }

    v5 = *(this + 3253) + 1;
    *(this + 3253) = v5;
    *(this + 13018) = 0;
    v8 = *(this + 3250);
    if (v8 >= v5)
    {
      if (v5 < v8)
      {
        *(this + 3253) = v8;
      }

      goto LABEL_14;
    }
  }

  *(this + 3250) = v5;
LABEL_14:
  memset(__str, 0, 64);
  snprintf(__str, 0x40uLL, "%d%02d%02d.%02d%02d%02d.%03u", *(this + 3246), *(this + 12988), *(this + 12989), *(this + 12990), *(this + 12991), *(this + 1624), *(this + 3250));
  memset(&v46, 0, sizeof(v46));
  std::__fs::filesystem::path::path[abi:ne200100]<char [256],void>(&v45, (this + 12728));
  std::__fs::filesystem::path::append[abi:ne200100]<char [8]>(&v45, "vp.");
  v9 = (&v48.mBuffers[0].mData + 7);
  do
  {
    v10 = v9->__r_.__value_.__s.__data_[1];
    v9 = (v9 + 1);
  }

  while (v10);
  std::string::append[abi:ne200100]<char const*,0>(&v45, __str, v9);
  std::string::append(&v45, ".", 1uLL);
  v11 = 0;
  v42 = this + 13024;
  do
  {
    if ((v11 & 0xFC) == 0x48 || v11 - 41 <= 0x35 && ((1 << (v11 - 41)) & 0x30000000000801) != 0)
    {
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      if (v11 == 71 || (VoiceProcessorV2::SaveFileAtIndexIsDLPSignalFile(v11) & 1) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }

    if (a2 != 2)
    {
      if (a2 == 3 && v11 != 71)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }

    if (v11 == 71)
    {
      goto LABEL_20;
    }

    v12 = *(this + 1135);
    if (v12 == 1)
    {
      IsDLPSignalFile = VoiceProcessorV2::SaveFileAtIndexIsDLPSignalFile(v11);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    else if (!v12)
    {
      IsDLPSignalFile = VoiceProcessorV2::SaveFileAtIndexIsDLPSignalFile(v11);
LABEL_35:
      if ((IsDLPSignalFile & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_36:
    if (*(this + 3180) && VoiceProcessorV2::QuerySaveFileAtIndexthroughFileSavingKey(this, v11))
    {
      VoiceProcessorV2::GetSignalSaveFileFormatForIndex(&buf, this, v11, v14, v15);
      *&v44.mSampleRate = *&buf.mSampleTime;
      *&v44.mBytesPerPacket = *&buf.mRateScalar;
      *&v44.mBitsPerChannel = *&buf.mSMPTETime.mSubframes;
      std::string::operator=(&v46, &v45);
      if (a2 == 1)
      {
        p_buf = &v48;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&v48, **(this + 297));
      }

      else
      {
        p_buf = &buf;
        CAX4CCStringNoQuote::CAX4CCStringNoQuote(&buf, **(this + 294));
      }

      v17 = strlen(p_buf);
      std::string::append(&v46, p_buf, v17);
      std::string::append(&v46, ".", 1uLL);
      v18 = 136;
      v19 = &kVPSaveFileIndexToCodeArray_v2;
      while (v11 != *v19)
      {
        v19 += 4;
        if (!--v18)
        {
          v20 = "badsavefile";
          goto LABEL_46;
        }
      }

      v20 = *(v19 + 1);
LABEL_46:
      v21 = strlen(v20);
      std::string::append(&v46, v20, v21);
      if (v11 == 71)
      {
        v22 = ".caf";
      }

      else
      {
        v22 = ".wav";
      }

      std::string::append(&v46, v22, 4uLL);
      v23 = *&v42[8 * v11];
      *&v42[8 * v11] = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      if (v44.mChannelsPerFrame)
      {
        v24 = *(this + 3180) - 8;
        if (v24 > 0xB)
        {
          v25 = 0;
        }

        else
        {
          v25 = dword_27275A690[v24];
        }

        vp::Audio_Capture::create(&buf, &v46, &v44, v25);
        mSampleTime = buf.mSampleTime;
        v32 = *&v42[8 * v11];
        *&v42[8 * v11] = buf.mSampleTime;
        if (v32)
        {
          (*(*v32 + 8))(v32);
          mSampleTime = *&v42[8 * v11];
        }

        if (mSampleTime == 0.0)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v37 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v38 = (*v37 ? *v37 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = &v46;
              if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v39 = v46.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.mSampleTime) = 136315650;
              *(&buf.mSampleTime + 4) = "vpDebug_FileSaving.cpp";
              WORD2(buf.mHostTime) = 1024;
              *(&buf.mHostTime + 6) = 1309;
              WORD1(buf.mRateScalar) = 2080;
              *(&buf.mRateScalar + 4) = v39;
              _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> failed to create %s audio capture", &buf, 0x1Cu);
            }
          }

          v40 = *(this + 1588);
          if (v40 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v40, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 1309, "CreateSignalSaveFiles", "failed to create %s audio capture");
          }
        }

        else
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v33 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v34 = (*v33 ? *v33 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v35 = &v46;
              if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v35 = v46.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.mSampleTime) = 136315650;
              *(&buf.mSampleTime + 4) = "vpDebug_FileSaving.cpp";
              WORD2(buf.mHostTime) = 1024;
              *(&buf.mHostTime + 6) = 1305;
              WORD1(buf.mRateScalar) = 2080;
              *(&buf.mRateScalar + 4) = v35;
              _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> created %s audio capture", &buf, 0x1Cu);
            }
          }

          v36 = *(this + 1588);
          if (v36 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v36, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 1305, "CreateSignalSaveFiles", "created %s audio capture");
          }
        }

        if (VoiceProcessorV2::SignalIsInFrequencyDomain(this, v11))
        {
          if (v44.mChannelsPerFrame == (*(*(this + 1764) + 24 * v11 + 8) - *(*(this + 1764) + 24 * v11)) >> 3 && v44.mChannelsPerFrame)
          {
            operator new();
          }

          myAllocABLDynamic(&v44, *(this + 129), this + v11 + 1767);
        }

        if (v11 == 92)
        {
          v43 = 0x40000000;
          *&v48.mNumberBuffers = 1;
          *&v48.mBuffers[0].mNumberChannels = 0x400000001;
          v48.mBuffers[0].mData = &v43;
          memset(&buf, 0, 56);
          buf.mFlags = 1;
          if ((v4[3593] & 1) != 0 || v4[3594] == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(this, 0x5Cu, 1, &v48, &buf);
          }
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v26 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v27 = (*v26 ? *v26 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = &v46;
            if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v28 = v46.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.mSampleTime) = 136315906;
            *(&buf.mSampleTime + 4) = "vpDebug_FileSaving.cpp";
            WORD2(buf.mHostTime) = 1024;
            *(&buf.mHostTime + 6) = 1273;
            WORD1(buf.mRateScalar) = 2080;
            *(&buf.mRateScalar + 4) = v28;
            WORD2(buf.mWordClockTime) = 1024;
            *(&buf.mWordClockTime + 6) = v44.mChannelsPerFrame;
            _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Skipping file capture for %s due to unsupported format, theFileFormat.mChannelsPerFrame=%u", &buf, 0x22u);
          }
        }

        v29 = *(this + 1588);
        if (v29 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v30 = &v46;
          if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v30 = v46.__r_.__value_.__r.__words[0];
          }

          CALegacyLog::log(v29, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 1273, "CreateSignalSaveFiles", "Skipping file capture for %s due to unsupported format, theFileFormat.mChannelsPerFrame=%u", v30, v44.mChannelsPerFrame);
        }
      }
    }

LABEL_20:
    ++v11;
  }

  while (v11 != 136);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_272526AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [256],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_272526B60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoiceProcessorV2::SaveFileAtIndexIsDLPSignalFile(VoiceProcessorV2 *this)
{
  result = 1;
  if (this - 50 > 0x29 || ((1 << (this - 50)) & 0x3F8001BFFFBLL) == 0)
  {
    v3 = this - 113;
    if (v3 > 0xF || ((1 << v3) & 0xD7F7) == 0)
    {
      return 0;
    }
  }

  return result;
}

VPTimeFreqConverter *std::unique_ptr<VPTimeFreqConverter>::reset[abi:ne200100](VPTimeFreqConverter **a1, VPTimeFreqConverter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void VoiceProcessorV2::SaveFilesInitializeDLP(VoiceProcessorV2 *this)
{
  if (*(this + 3180))
  {
    if (*(this + 485) == 1)
    {
      VoiceProcessorV2::CreateSignalSaveFiles(this, 2);
      if (*(this + 3180))
      {
        if (!*(this + 1912))
        {
          v2 = malloc_type_malloc(0x30D40uLL, 0x2365AC71uLL);
          if (!v2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v5 = std::bad_alloc::bad_alloc(exception);
          }

          v3 = v2;
          bzero(v2, 0x30D40uLL);
          *(this + 1912) = v3;
        }
      }
    }
  }
}

void VoiceProcessorV2::SaveFilesCleanup(VoiceProcessorV2 *this)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3180);
  if (v2)
  {
    if (*(this + 1906))
    {
      VPGetSaveFileNameForIndex(&__p, (this + 12728), 73, 3, this + 12984);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v3 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v4 = (*v3 ? *v3 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "vpDebug_FileSaving.cpp";
          v81 = 1024;
          v82 = 786;
          v83 = 2080;
          v84 = p_p;
          _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> writing properties plist file: %s ...", buf, 0x1Cu);
        }
      }

      v6 = *(this + 1588);
      if (v6 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v7 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v7 = __p.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v6, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 786, "SaveFilesCleanup", "writing properties plist file: %s ...", v7);
      }

      *buf = *(this + 1906);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = __p.__r_.__value_.__r.__words[0];
      }

      WritePropertyListToFile(buf, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      CFRelease(*(this + 1906));
      *(this + 1906) = 0;
      v2 = *(this + 3180);
    }

    v9 = *(this + 1905);
    if (v9)
    {
      if (v2)
      {
        v10 = *(this + 3808);
        if (v10)
        {
          v11 = 0;
          v12 = 0;
          while (!*(this + 1905))
          {
LABEL_47:
            ++v12;
            v11 += 32;
            if (v12 >= v10)
            {
              goto LABEL_48;
            }
          }

          v13 = *(this + 1903) + v11;
          v14 = *v13;
          snprintf(buf, 0x100uLL, "%f, %f, %llu", *(v13 + 8), *(v13 + 16), *(v13 + 24));
          if (v14 > 1)
          {
            if (v14 != 2)
            {
              if (v14 != 3)
              {
                goto LABEL_46;
              }

              VPGetPropsPListStringForKey(&__p, 52);
              v17 = strlen(buf);
              WriteItemToDictionary(this + 1905, &__p.__r_.__value_.__l.__data_, 0, v17 + 1, buf);
              v16 = __p.__r_.__value_.__r.__words[0];
              if (!__p.__r_.__value_.__r.__words[0])
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }

            VPGetPropsPListStringForKey(&__p, 50);
            v19 = strlen(buf);
            WriteItemToDictionary(this + 1905, &__p.__r_.__value_.__l.__data_, 0, v19 + 1, buf);
            v16 = __p.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__r.__words[0])
            {
LABEL_45:
              CFRelease(v16);
            }
          }

          else
          {
            if (v14)
            {
              if (v14 != 1)
              {
                goto LABEL_46;
              }

              VPGetPropsPListStringForKey(&__p, 49);
              v15 = strlen(buf);
              WriteItemToDictionary(this + 1905, &__p.__r_.__value_.__l.__data_, 0, v15 + 1, buf);
              v16 = __p.__r_.__value_.__r.__words[0];
              if (!__p.__r_.__value_.__r.__words[0])
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }

            VPGetPropsPListStringForKey(&__p, 48);
            v18 = strlen(buf);
            WriteItemToDictionary(this + 1905, &__p.__r_.__value_.__l.__data_, 0, v18 + 1, buf);
            v16 = __p.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__r.__words[0])
            {
              goto LABEL_45;
            }
          }

LABEL_46:
          v10 = *(this + 3808);
          goto LABEL_47;
        }

LABEL_48:
        VPGetSaveFileNameForIndex(&__p, (this + 12728), 72, 3, this + 12984);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v20 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v21 = (*v20 ? *v20 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v22 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpDebug_FileSaving.cpp";
            v81 = 1024;
            v82 = 802;
            v83 = 2080;
            v84 = v22;
            _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> writing time stamps plist file: %s ...", buf, 0x1Cu);
          }
        }

        v23 = *(this + 1588);
        if (v23 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v24 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          CALegacyLog::log(v23, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 802, "SaveFilesCleanup", "writing time stamps plist file: %s ...", v24);
        }

        *buf = *(this + 1905);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &__p;
        }

        else
        {
          v25 = __p.__r_.__value_.__r.__words[0];
        }

        WritePropertyListToFile(buf, v25);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v9 = *(this + 1905);
      }

      CFRelease(v9);
      *(this + 1905) = 0;
      v2 = *(this + 3180);
    }

    if (v2)
    {
      if (!*(this + 1908))
      {
        goto LABEL_254;
      }

      VPGetSaveFileNameForIndex(&__p, (this + 12728), 74, 1, this + 12984);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v26 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v27 = (*v26 ? *v26 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "vpDebug_FileSaving.cpp";
          v81 = 1024;
          v82 = 813;
          v83 = 2080;
          v84 = v28;
          _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> writing error log file: %s  ... ", buf, 0x1Cu);
        }
      }

      v29 = *(this + 1588);
      if (v29 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v30 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = __p.__r_.__value_.__r.__words[0];
        }

        CALegacyLog::log(v29, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 813, "SaveFilesCleanup", "writing error log file: %s  ... ", v30);
      }

      v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v32 = fopen(v31, "wt");
      if (v32)
      {
        if (*(this + 3818))
        {
          v33 = 0;
          do
          {
            if ((v33 & 3) == 0)
            {
              fputc(10, v32);
            }

            fprintf(v32, "%.4f\t", *(*(this + 1908) + 4 * v33++));
          }

          while (v33 < *(this + 3818));
        }

        else
        {
          fwrite("no errors occurred on the I/O thread.\n", 0x26uLL, 1uLL, v32);
        }

        fputc(10, v32);
        fflush(v32);
        fclose(v32);
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v34 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v35 = (*v34 ? *v34 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v36 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpDebug_FileSaving.cpp";
            v81 = 1024;
            v82 = 825;
            v83 = 2080;
            v84 = v36;
            _os_log_impl(&dword_2724B4000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't open file to write: %s  ... ", buf, 0x1Cu);
          }
        }

        v37 = *(this + 1588);
        if (v37 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v38 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v38 = __p.__r_.__value_.__r.__words[0];
          }

          CALegacyLog::log(v37, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 825, "SaveFilesCleanup", "couldn't open file to write: %s  ... ", v38);
        }
      }

      free(*(this + 1908));
      *(this + 1908) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (*(this + 3180))
      {
LABEL_254:
        if (!*(this + 1910))
        {
          goto LABEL_255;
        }

        VPGetSaveFileNameForIndex(&__p, (this + 12728), 41, 3, this + 12984);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v39 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v40 = (*v39 ? *v39 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v41 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v41 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "vpDebug_FileSaving.cpp";
            v81 = 1024;
            v82 = 876;
            v83 = 2080;
            v84 = v41;
            _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> writing gating control data file: %s ... ", buf, 0x1Cu);
          }
        }

        v42 = *(this + 1588);
        if (v42 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v43 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v43 = __p.__r_.__value_.__r.__words[0];
          }

          CALegacyLog::log(v42, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 876, "SaveFilesCleanup", "writing gating control data file: %s ... ", v43);
        }

        v44 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v45 = fopen(v44, "wt");
        if (v45)
        {
          v46 = *(this + 1910);
          if (v46)
          {
            if (*(this + 15292) == 1)
            {
              v47 = *(this + 3822);
              if (v47 != 200000)
              {
                fwrite((v46 + v47), 1uLL, (200000 - v47), v45);
              }
            }

            v48 = *(this + 3822);
            if (v48)
            {
              fwrite(*(this + 1910), 1uLL, v48, v45);
            }
          }

          fputc(10, v45);
          fflush(v45);
          fclose(v45);
        }

        else
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v49 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v50 = (*v49 ? *v49 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v51 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v51 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315650;
              *&buf[4] = "vpDebug_FileSaving.cpp";
              v81 = 1024;
              v82 = 896;
              v83 = 2080;
              v84 = v51;
              _os_log_impl(&dword_2724B4000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't open file to write: %s  ... ", buf, 0x1Cu);
            }
          }

          v52 = *(this + 1588);
          if (v52 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v53 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v53 = __p.__r_.__value_.__r.__words[0];
            }

            CALegacyLog::log(v52, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 896, "SaveFilesCleanup", "couldn't open file to write: %s  ... ", v53);
          }
        }

        free(*(this + 1910));
        *(this + 1910) = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*(this + 3180))
        {
LABEL_255:
          if (*(this + 1912))
          {
            VPGetSaveFileNameForIndex(&__p, (this + 12728), 52, 3, this + 12984);
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v54 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
            {
              v55 = (*v54 ? *v54 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                v56 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v56 = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "vpDebug_FileSaving.cpp";
                v81 = 1024;
                v82 = 907;
                v83 = 2080;
                v84 = v56;
                _os_log_impl(&dword_2724B4000, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> writing dlp control data file: %s ... ", buf, 0x1Cu);
              }
            }

            v57 = *(this + 1588);
            if (v57 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v58 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v58 = __p.__r_.__value_.__r.__words[0];
              }

              CALegacyLog::log(v57, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 907, "SaveFilesCleanup", "writing dlp control data file: %s ... ", v58);
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = &__p;
            }

            else
            {
              v59 = __p.__r_.__value_.__r.__words[0];
            }

            v60 = fopen(v59, "wt");
            if (v60)
            {
              v61 = *(this + 1912);
              if (v61)
              {
                if (*(this + 15308) == 1)
                {
                  v62 = *(this + 3826);
                  if (v62 != 200000)
                  {
                    fwrite((v61 + v62), 1uLL, (200000 - v62), v60);
                  }
                }

                v63 = *(this + 3826);
                if (v63)
                {
                  fwrite(*(this + 1912), 1uLL, v63, v60);
                }
              }

              fputc(10, v60);
              fflush(v60);
              fclose(v60);
            }

            else
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v64 = VPLogScope(void)::scope;
              if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
              {
                v65 = (*v64 ? *v64 : MEMORY[0x277D86220]);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  v66 = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v66 = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315650;
                  *&buf[4] = "vpDebug_FileSaving.cpp";
                  v81 = 1024;
                  v82 = 927;
                  v83 = 2080;
                  v84 = v66;
                  _os_log_impl(&dword_2724B4000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> couldn't open file to write: %s  ... ", buf, 0x1Cu);
                }
              }

              v67 = *(this + 1588);
              if (v67 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v68 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v68 = __p.__r_.__value_.__r.__words[0];
                }

                CALegacyLog::log(v67, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 927, "SaveFilesCleanup", "couldn't open file to write: %s  ... ", v68);
              }
            }

            free(*(this + 1912));
            *(this + 1912) = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }

  v69 = *(this + 1765);
  v70 = *(this + 1764);
  while (v69 != v70)
  {
    v69 -= 24;
    *buf = v69;
    std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  *(this + 1765) = v70;
  v71 = (this + 14136);
  v72 = 136;
  do
  {
    if (*v71)
    {
      myFreeABLDynamic(v71);
      *v71 = 0;
    }

    ++v71;
    --v72;
  }

  while (v72);
  v73 = *(this + 1906);
  if (v73)
  {
    CFRelease(v73);
    *(this + 1906) = 0;
  }

  v74 = *(this + 1905);
  if (v74)
  {
    CFRelease(v74);
    *(this + 1905) = 0;
  }

  v75 = *(this + 1908);
  if (v75)
  {
    free(v75);
    *(this + 1908) = 0;
  }

  v76 = *(this + 1910);
  if (v76)
  {
    free(v76);
    *(this + 1910) = 0;
  }

  v77 = *(this + 1912);
  if (v77)
  {
    free(v77);
    *(this + 1912) = 0;
  }

  v78 = *MEMORY[0x277D85DE8];
}

void sub_272527DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<VoiceProcessorV2::RereadSaveFilesDefaults(void)::$_1 &&>>(uint64_t **a1, double a2, double a3)
{
  v3 = **a1;
  v4 = *v3;
  v5 = (*v3 + 12288);
  if (*(*v3 + 1696) == 1 && ((*(*v3 + 15881) & 1) != 0 || *(*v3 + 15882) == 1))
  {
    LODWORD(a3) = *(v4 + 500);
    VoiceProcessorV2::WriteTSOverload(*v3, *(v4 + 1704) - *&a3, *(v4 + 1704) - *&a3, 0);
  }

  if (*(v4 + 1697) == 1 && ((v5[3593] & 1) != 0 || v5[3594] == 1))
  {
    LODWORD(a3) = *(v4 + 504);
    VoiceProcessorV2::WriteTSOverload(v4, *(v4 + 1712) - *&a3, *(v4 + 1712) - *&a3, 1);
  }

  if (v5[344] == 1 && ((v5[3593] & 1) != 0 || v5[3594] == 1))
  {
    LODWORD(a3) = *(v4 + 492);
    VoiceProcessorV2::WriteTSOverload(v4, *(v4 + 12624) - *&a3, *(v4 + 12624) - *&a3, 2);
  }

  if (v5[360] == 1 && ((v5[3593] & 1) != 0 || v5[3594] == 1))
  {
    LODWORD(a3) = *(v4 + 1536);
    VoiceProcessorV2::WriteTSOverload(v4, *(v4 + 12640) - *&a3, *(v4 + 12640) - *&a3, 3);
  }

  VoiceProcessorV2::SaveFilesCleanup(v4);
  v5[3594] = **(v3 + 8);
}

std::chrono::duration<long long, std::ratio<1, 1000000>>::rep VoiceProcessorV2::WriteTSOverload(std::chrono::duration<long long, std::ratio<1, 1000000>>::rep this, double a2, double a3, int a4)
{
  if (*(this + 12720))
  {
    v4 = this;
    if (!(*(this + 15232) >> 13))
    {
      this = std::chrono::system_clock::now().__d_.__rep_;
      v8 = *(v4 + 15224) + 32 * *(v4 + 15232);
      *v8 = a4;
      *(v8 + 8) = a2;
      *(v8 + 16) = a3;
      *(v8 + 24) = this / 1000000;
      ++*(v4 + 15232);
    }
  }

  return this;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<VoiceProcessorV2::RereadSaveFilesDefaults(void)::$_0 &&>>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = *v1 + 12288;
  VoiceProcessorV2::SaveFilesPrepare(*v1);
  VoiceProcessorV2::SaveFilesInitialize(v2);
  VoiceProcessorV2::SaveFilesInitializeDLP(v2);
  if (*(v2 + 3180) && *(v2 + 486) == 1)
  {
    VoiceProcessorV2::CreateSignalSaveFiles(v2, 3);
  }

  v4 = **(v1 + 8);
  *(v3 + 3594) = v4;
  if ((*(v3 + 3593) & 1) != 0 || v4)
  {
    VoiceProcessorV2::PListWriteInitializeHwInputParameters(v2);
    if (*(v3 + 3593) & 1) != 0 || (*(v3 + 3594))
    {
      VoiceProcessorV2::PListWriteInitializeDLPParameters(v2);
      if (*(v3 + 3593) & 1) != 0 || (*(v3 + 3594))
      {
        VoiceProcessorV2::PListWriteInitializeOutputParameters(v2);
        if (*(v3 + 3593) & 1) != 0 || (*(v3 + 3594))
        {
          VoiceProcessorV2::PListWriteInitializeSpkrTelParameters(v2);
          if (*(v3 + 3593) & 1) != 0 || (*(v3 + 3594))
          {

            VoiceProcessorV2::PListWriteSetModeParameters(v2);
          }
        }
      }
    }
  }
}

uint64_t VoiceProcessorV2::WriteControlDataToFile(uint64_t this, char *a2, unsigned int a3, unsigned int a4)
{
  if (*(this + 12720))
  {
    v7 = this;
    this = VoiceProcessorV2::QuerySaveFileAtIndexthroughFileSavingKey(this, a4);
    if (this)
    {
      if (a4 == 41)
      {
        v8 = 15292;
        v9 = 15288;
        v10 = 15280;
      }

      else
      {
        if (a4 != 52)
        {
          return this;
        }

        v8 = 15308;
        v9 = 15304;
        v10 = 15296;
      }

      v11 = *(v7 + v10);
      if (v11)
      {
        v12 = *(v7 + v9);
        if (v12 < 0x30D41)
        {
          v13 = 200000 - v12;
          if (200000 - v12 >= a3)
          {
            v14 = a3;
          }

          else
          {
            v14 = v13;
          }

          if (a3 >= v13)
          {
            v15 = a3 - v13;
          }

          else
          {
            v15 = 0;
          }

          if (v14)
          {
            this = memcpy(&v11[v12], a2, v14);
            *(v7 + v9) += v14;
          }

          if (v13 < a3)
          {
            this = memcpy(v11, &a2[v14], v15);
            *(v7 + v9) = v15;
            *(v7 + v8) = 1;
          }
        }
      }
    }
  }

  return this;
}

uint64_t VoiceProcessorV2::EchoGateV3ReadWriteControlDataCallback(uint64_t this, char *a2, void *a3, int a4)
{
  if (!a4)
  {
    return VoiceProcessorV2::WriteControlDataToFile(this, a2, a3, 0x29u);
  }

  return this;
}

uint64_t VoiceProcessorV2::LogIOError(uint64_t this, float a2, float a3, float a4, float a5, const char *a6, ...)
{
  va_start(va, a6);
  v10 = *MEMORY[0x277D85DE8];
  if (*(this + 12720))
  {
    v6 = *(this + 15264);
    if (v6)
    {
      v7 = *(this + 15272);
      if (v7 < (*(this + 15256) - 1) * *(this + 15260))
      {
        *(v6 + 4 * v7) = a2;
        *(v6 + 4 * (v7 + 1)) = a3;
        *(v6 + 4 * (v7 + 2)) = a4;
        *(this + 15272) = v7 + 4;
        *(v6 + 4 * (v7 + 3)) = a5;
      }
    }
  }

  else
  {
    this = vsnprintf(__str, 0x100uLL, a6, va);
  }

  v8 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t std::vector<std::pair<unsigned int,float>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned int,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_272528368(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::LogNonTransientErrors(VoiceProcessorV2 *this, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = this + 12288;
  if (a2)
  {
    v4 = *(this + 1995);
    for (i = *(this + 1996); v4 != i; v4 += 24)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v6 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = v4;
          if (v4[23] < 0)
          {
            v8 = *v4;
          }

          *buf = 136315650;
          *&buf[4] = "vpDebug_Logging.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 96;
          *&buf[18] = 2080;
          *&buf[20] = v8;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> %s\n", buf, 0x1Cu);
        }
      }

      v9 = *(this + 1588);
      if (v9 && ((v3[3593] & 1) != 0 || v3[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v10 = v4;
        if (v4[23] < 0)
        {
          v10 = *v4;
        }

        CALegacyLog::log(v9, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 96, "LogNonTransientErrors", "%s\n", v10);
      }
    }

    v18 = *(this + 2001);
    for (j = *(this + 2002); v18 != j; v18 = &v21[1])
    {
      *&buf[8] = 0uLL;
      *buf = &buf[8];
      v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(buf, v18);
      v21 = v18 + 1;
      std::string::operator=((v20 + 56), v21);
      CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
    }
  }

  else
  {
    v11 = *(this + 1998);
    for (k = *(this + 1999); v11 != k; v11 += 24)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v13 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v14 = (*v13 ? *v13 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = v11;
          if (v11[23] < 0)
          {
            v15 = *v11;
          }

          *buf = 136315650;
          *&buf[4] = "vpDebug_Logging.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 111;
          *&buf[18] = 2080;
          *&buf[20] = v15;
          _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> %s\n", buf, 0x1Cu);
        }
      }

      v16 = *(this + 1588);
      if (v16 && ((v3[3593] & 1) != 0 || v3[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v17 = v11;
        if (v11[23] < 0)
        {
          v17 = *v11;
        }

        CALegacyLog::log(v16, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 111, "LogNonTransientErrors", "%s\n", v17);
      }
    }

    v22 = *(this + 2004);
    for (m = *(this + 2005); v22 != m; v22 = &v25[1])
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(buf, v22);
      v25 = v22 + 1;
      std::string::operator=((v24 + 56), v25);
      CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void VoiceProcessorV2::LogVPParams(VoiceProcessorV2 *this)
{
  v163 = *MEMORY[0x277D85DE8];
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v2 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v3 = (*v2 ? *v2 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 126;
      _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> ____________logparams:begin___________", buf, 0x12u);
    }
  }

  v4 = this + 12288;
  v5 = *(this + 1588);
  if (v5 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v5, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 126, "LogVPParams", "____________logparams:begin___________");
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v6 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (this + 32);
      if (*(this + 55) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 127;
      *&buf[18] = 2080;
      *&buf[20] = v8;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     PRODUCT: %s", buf, 0x1Cu);
    }
  }

  v9 = *(this + 1588);
  if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v10 = this + 32;
    if (*(this + 55) < 0)
    {
      v10 = *v10;
    }

    CALegacyLog::log(v9, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 127, "LogVPParams", "    PRODUCT: %s", v10);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v11 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (*(this + 295) - *(this + 294)) >> 2;
      v14 = (*(this + 298) - *(this + 297)) >> 2;
      *buf = 136315906;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 129;
      *&buf[18] = 2048;
      *&buf[20] = v13;
      *&buf[28] = 2048;
      *&buf[30] = v14;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Num Ref Ports = %lu, Num Mic Ports = %lu ", buf, 0x26u);
    }
  }

  v15 = *(this + 1588);
  if (v15 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v15, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 129, "LogVPParams", "    Num Ref Ports = %lu, Num Mic Ports = %lu ", (*(this + 295) - *(this + 294)) >> 2, (*(this + 298) - *(this + 297)) >> 2);
  }

  if (*(this + 295) != *(this + 294))
  {
    v16 = 0;
    v17 = MEMORY[0x277D86220];
    do
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v18 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v19 = (*v18 ? *v18 : v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          CAX4CCString::CAX4CCString(v158, *(*(this + 294) + 4 * v16));
          *buf = 136315906;
          *&buf[4] = "vpDebug_Logging.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 133;
          *&buf[18] = 2048;
          *&buf[20] = v16;
          *&buf[28] = 2080;
          *&buf[30] = v158;
          _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>       : Ref Port #%lu=%s", buf, 0x26u);
        }
      }

      v20 = *(this + 1588);
      if (v20 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v21 = VPLogScope(void)::scope;
        CAX4CCString::CAX4CCString(buf, *(*(this + 294) + 4 * v16));
        CALegacyLog::log(v20, 3, v21, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 133, "LogVPParams", "      : Ref Port #%lu=%s", v16, buf);
      }

      ++v16;
    }

    while (v16 < (*(this + 295) - *(this + 294)) >> 2);
  }

  if (*(this + 298) != *(this + 297))
  {
    v22 = 0;
    v23 = MEMORY[0x277D86220];
    do
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v24 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v25 = (*v24 ? *v24 : v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          CAX4CCString::CAX4CCString(v158, *(*(this + 297) + 4 * v22));
          *buf = 136315906;
          *&buf[4] = "vpDebug_Logging.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 137;
          *&buf[18] = 2048;
          *&buf[20] = v22;
          *&buf[28] = 2080;
          *&buf[30] = v158;
          _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>       : Mic Port #%lu=%s", buf, 0x26u);
        }
      }

      v26 = *(this + 1588);
      if (v26 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v27 = VPLogScope(void)::scope;
        CAX4CCString::CAX4CCString(buf, *(*(this + 297) + 4 * v22));
        CALegacyLog::log(v26, 3, v27, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 137, "LogVPParams", "      : Mic Port #%lu=%s", v22, buf);
      }

      ++v22;
    }

    while (v22 < (*(this + 298) - *(this + 297)) >> 2);
  }

  v28 = *(this + 60);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v29 = VPLogScope(void)::scope;
  if (v28)
  {
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v30 = (*v29 ? *v29 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(this + 60) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v31 = *(this + 14);
        *buf = 136315650;
        *&buf[4] = "vpDebug_Logging.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 188;
        *&buf[18] = 1024;
        *&buf[20] = v31;
        _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Acoustic ID: %d", buf, 0x18u);
      }
    }

    v32 = *(this + 1588);
    if (v32 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      if ((*(this + 60) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      CALegacyLog::log(v32, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 188, "LogVPParams", "    Acoustic ID: %d", *(this + 14));
    }
  }

  else
  {
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v33 = (*v29 ? *v29 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "vpDebug_Logging.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 192;
        _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     This product does not have a valid Acoustic ID", buf, 0x12u);
      }
    }

    v34 = *(this + 1588);
    if (v34 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v34, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 192, "LogVPParams", "    This product does not have a valid Acoustic ID");
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v35 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v36 = (*v35 ? *v35 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(v158, (this + 592));
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 195;
      *&buf[18] = 2080;
      *&buf[20] = *v158;
      _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     HW Format REF: %s", buf, 0x1Cu);
      if (*v158)
      {
        free(*v158);
      }
    }
  }

  v37 = *(this + 1588);
  if (v37 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v38 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, (this + 592));
    CALegacyLog::log(v37, 3, v38, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 195, "LogVPParams", "    HW Format REF: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v39 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v40 = (*v39 ? *v39 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(v158, (this + 632));
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 196;
      *&buf[18] = 2080;
      *&buf[20] = *v158;
      _os_log_impl(&dword_2724B4000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     HW Format MIC: %s", buf, 0x1Cu);
      if (*v158)
      {
        free(*v158);
      }
    }
  }

  v41 = *(this + 1588);
  if (v41 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v42 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, (this + 632));
    CALegacyLog::log(v41, 3, v42, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 196, "LogVPParams", "    HW Format MIC: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v43 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v44 = (*v43 ? *v43 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(this + 125);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 197;
      *&buf[18] = 1024;
      *&buf[20] = v45;
      _os_log_impl(&dword_2724B4000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     HW Block Size REF: %d", buf, 0x18u);
    }
  }

  v46 = *(this + 1588);
  if (v46 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v46, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 197, "LogVPParams", "    HW Block Size REF: %d", *(this + 125));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v47 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v48 = (*v47 ? *v47 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(this + 126);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 198;
      *&buf[18] = 1024;
      *&buf[20] = v49;
      _os_log_impl(&dword_2724B4000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     HW Block Size MIC: %d", buf, 0x18u);
    }
  }

  v50 = *(this + 1588);
  if (v50 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v50, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 198, "LogVPParams", "    HW Block Size MIC: %d", *(this + 126));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v51 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v52 = (*v51 ? *v51 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = "internal";
      v54 = *(this + 288);
      v55 = "enabled";
      if (!*(this + 1135))
      {
        v53 = "external";
      }

      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 200;
      *buf = 136315906;
      *&buf[18] = 2080;
      *&buf[20] = v53;
      if (!v54)
      {
        v55 = "n/a";
      }

      *&buf[28] = 2080;
      *&buf[30] = v55;
      _os_log_impl(&dword_2724B4000, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     REF Signal: %s, Hw tap stream: %s", buf, 0x26u);
    }
  }

  v56 = *(this + 1588);
  if (v56 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v57 = "internal";
    if (!*(this + 1135))
    {
      v57 = "external";
    }

    if (*(this + 288))
    {
      v58 = "enabled";
    }

    else
    {
      v58 = "n/a";
    }

    CALegacyLog::log(v56, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 200, "LogVPParams", "    REF Signal: %s, Hw tap stream: %s", v57, v58);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v59 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v60 = (*v59 ? *v59 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = *(this + 568);
      *buf = *(this + 552);
      *&buf[16] = v61;
      *&buf[32] = *(this + 73);
      CA::StreamDescription::AsString(__p, buf, *buf, *&v61);
      v62 = v156 >= 0 ? __p : __p[0];
      *v158 = 136315650;
      *&v158[4] = "vpDebug_Logging.cpp";
      v159 = 1024;
      v160 = 201;
      v161 = 2080;
      v162 = v62;
      _os_log_impl(&dword_2724B4000, v60, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     HW Format EXT REF: %s", v158, 0x1Cu);
      if (v156 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v63 = *(this + 1588);
  if (v63 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v64 = VPLogScope(void)::scope;
    v65 = *(this + 568);
    *buf = *(this + 552);
    *&buf[16] = v65;
    *&buf[32] = *(this + 73);
    CA::StreamDescription::AsString(v158, buf, *buf, *&v65);
    if (SBYTE3(v162) >= 0)
    {
      v66 = v158;
    }

    else
    {
      v66 = *v158;
    }

    CALegacyLog::log(v63, 3, v64, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 201, "LogVPParams", "    HW Format EXT REF: %s", v66);
    if (SBYTE3(v162) < 0)
    {
      operator delete(*v158);
    }
  }

  if (*(this + 264) != *(this + 263))
  {
    v67 = 0;
    v68 = 1;
    do
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v69 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v70 = (*v69 ? *v69 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v71 = *(*(this + 263) + 4 * v67);
          *buf = 136315906;
          *&buf[4] = "vpDebug_Logging.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 208;
          *&buf[18] = 1024;
          *&buf[20] = v68 - 1;
          *&buf[24] = 2048;
          *&buf[26] = v71;
          _os_log_impl(&dword_2724B4000, v70, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp>     HW Trim Gain MIC(ch-%d): %f dB", buf, 0x22u);
        }
      }

      v72 = *(this + 1588);
      if (v72 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v72, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 208, "LogVPParams", "    HW Trim Gain MIC(ch-%d): %f dB", v68 - 1, *(*(this + 263) + 4 * v67));
      }

      v67 = v68++;
    }

    while (v67 < (*(this + 264) - *(this + 263)) >> 2);
  }

  if (*(this + 268) != *(this + 267))
  {
    v73 = 0;
    v74 = 1;
    do
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v75 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v76 = (*v75 ? *v75 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          v77 = *(*(this + 267) + 4 * v73);
          *buf = 136315906;
          *&buf[4] = "vpDebug_Logging.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 212;
          *&buf[18] = 1024;
          *&buf[20] = v74 - 1;
          *&buf[24] = 2048;
          *&buf[26] = v77;
          _os_log_impl(&dword_2724B4000, v76, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp>     HW Trim Gain REF(ch-%d): %f dB", buf, 0x22u);
        }
      }

      v78 = *(this + 1588);
      if (v78 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v78, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 212, "LogVPParams", "    HW Trim Gain REF(ch-%d): %f dB", v74 - 1, *(*(this + 267) + 4 * v73));
      }

      v73 = v74++;
    }

    while (v73 < (*(this + 268) - *(this + 267)) >> 2);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v79 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v80 = (*v79 ? *v79 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(v158, (this + 992));
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 214;
      *&buf[18] = 2080;
      *&buf[20] = *v158;
      _os_log_impl(&dword_2724B4000, v80, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     VP Output Format: %s", buf, 0x1Cu);
      if (*v158)
      {
        free(*v158);
      }
    }
  }

  v81 = *(this + 1588);
  if (v81 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v82 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, (this + 992));
    CALegacyLog::log(v81, 3, v82, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 214, "LogVPParams", "    VP Output Format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v83 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v84 = (*v83 ? *v83 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = *(this + 102);
      v86 = *(this + 103);
      *buf = 136315906;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 216;
      *&buf[18] = 1024;
      *&buf[20] = v85;
      *&buf[24] = 1024;
      *&buf[26] = v86;
      _os_log_impl(&dword_2724B4000, v84, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     REF Channel BitMap: %x, OUT Channel BitMap: %x", buf, 0x1Eu);
    }
  }

  v87 = *(this + 1588);
  if (v87 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v87, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 216, "LogVPParams", "    REF Channel BitMap: %x, OUT Channel BitMap: %x", *(this + 102), *(this + 103));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v88 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v89 = (*v88 ? *v88 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = *(this + 55);
      v91 = *(this + 108);
      *buf = 136315906;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 218;
      *&buf[18] = 2080;
      *&buf[20] = v90;
      *&buf[28] = 1024;
      *&buf[30] = v91;
      _os_log_impl(&dword_2724B4000, v89, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     HW MIC Channels: %s, BitMap: %x", buf, 0x22u);
    }
  }

  v92 = *(this + 1588);
  if (v92 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v92, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 218, "LogVPParams", "    HW MIC Channels: %s, BitMap: %x", *(this + 55), *(this + 108));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v93 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v94 = (*v93 ? *v93 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      v95 = *(this + 58);
      v96 = *(this + 114);
      *buf = 136315906;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 220;
      *&buf[18] = 2080;
      *&buf[20] = v95;
      *&buf[28] = 1024;
      *&buf[30] = v96;
      _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     EP MIC Channels: %s, BitMap: %x", buf, 0x22u);
    }
  }

  v97 = *(this + 1588);
  if (v97 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v97, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 220, "LogVPParams", "    EP MIC Channels: %s, BitMap: %x", *(this + 58), *(this + 114));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v98 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v99 = (*v98 ? *v98 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      v100 = 0;
      while (((*(this + 118) >> v100) & 1) == 0)
      {
        if (++v100 == 32)
        {
          v100 = 33;
          break;
        }
      }

      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 222;
      *&buf[18] = 1024;
      *&buf[20] = v100;
      _os_log_impl(&dword_2724B4000, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Primary epmic index: %d", buf, 0x18u);
    }
  }

  v101 = *(this + 1588);
  if (v101 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v102 = 0;
    while (((*(this + 118) >> v102) & 1) == 0)
    {
      if (++v102 == 32)
      {
        v102 = 33;
        break;
      }
    }

    CALegacyLog::log(v101, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 222, "LogVPParams", "    Primary epmic index: %d", v102);
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v103 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v104 = (*v103 ? *v103 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = *(this + 1120);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 224;
      *&buf[18] = 1024;
      *&buf[20] = v105;
      _os_log_impl(&dword_2724B4000, v104, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     SRC Quality: 0x%x (0:min, 0x20:low, 0x40:med, 0x60:hig, 0x7f:max)", buf, 0x18u);
    }
  }

  v106 = *(this + 1588);
  if (v106 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v106, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 224, "LogVPParams", "    SRC Quality: 0x%x (0:min, 0x20:low, 0x40:med, 0x60:hig, 0x7f:max)", *(this + 1120));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v107 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v108 = (*v107 ? *v107 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = *(this + 1119);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 225;
      *&buf[18] = 2048;
      *&buf[20] = v109;
      _os_log_impl(&dword_2724B4000, v108, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Hw real-world correction: %f samples", buf, 0x1Cu);
    }
  }

  v110 = *(this + 1588);
  if (v110 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v110, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 225, "LogVPParams", "    Hw real-world correction: %f samples", *(this + 1119));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v111 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v112 = (*v111 ? *v111 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v113 = *(this + 1100);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 226;
      *&buf[18] = 2048;
      *&buf[20] = v113;
      _os_log_impl(&dword_2724B4000, v112, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Ref-Mic Delay: %f msec", buf, 0x1Cu);
    }
  }

  v114 = *(this + 1588);
  if (v114 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v114, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 226, "LogVPParams", "    Ref-Mic Delay: %f msec", *(this + 1100));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v115 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v116 = (*v115 ? *v115 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = *(this + 1098);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 227;
      *&buf[18] = 2048;
      *&buf[20] = v117;
      _os_log_impl(&dword_2724B4000, v116, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Pre-echo-processing Digital Input Gain: %f dB", buf, 0x1Cu);
    }
  }

  v118 = *(this + 1588);
  if (v118 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v118, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 227, "LogVPParams", "    Pre-echo-processing Digital Input Gain: %f dB", *(this + 1098));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v119 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v120 = (*v119 ? *v119 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      v121 = *(this + 1099);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 228;
      *&buf[18] = 2048;
      *&buf[20] = v121;
      _os_log_impl(&dword_2724B4000, v120, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Post-echo-processing Digital Input Gain: %f dB", buf, 0x1Cu);
    }
  }

  v122 = *(this + 1588);
  if (v122 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v122, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 228, "LogVPParams", "    Post-echo-processing Digital Input Gain: %f dB", *(this + 1099));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v123 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v124 = (*v123 ? *v123 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
    {
      v125 = *(this + 1121);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 232;
      *&buf[18] = 2048;
      *&buf[20] = v125;
      _os_log_impl(&dword_2724B4000, v124, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Downlink Mix Gain: %f dB", buf, 0x1Cu);
    }
  }

  v126 = *(this + 1588);
  if (v126 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v126, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 232, "LogVPParams", "    Downlink Mix Gain: %f dB", *(this + 1121));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v127 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v128 = (*v127 ? *v127 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      v129 = *(this + 1137);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 233;
      *&buf[18] = 2048;
      *&buf[20] = v129;
      _os_log_impl(&dword_2724B4000, v128, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Downlink Final Gain Chn 0: %f dB", buf, 0x1Cu);
    }
  }

  v130 = *(this + 1588);
  if (v130 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v130, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 233, "LogVPParams", "    Downlink Final Gain Chn 0: %f dB", *(this + 1137));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v131 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v132 = (*v131 ? *v131 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      v133 = *(this + 1138);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 234;
      *&buf[18] = 2048;
      *&buf[20] = v133;
      _os_log_impl(&dword_2724B4000, v132, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     Downlink Final Gain Chn 1: %f dB", buf, 0x1Cu);
    }
  }

  v134 = *(this + 1588);
  if (v134 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v134, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 234, "LogVPParams", "    Downlink Final Gain Chn 1: %f dB", *(this + 1138));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v135 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v136 = (*v135 ? *v135 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(v158, (this + 216));
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 235;
      *&buf[18] = 2080;
      *&buf[20] = *v158;
      _os_log_impl(&dword_2724B4000, v136, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     DL Format FEV: %s", buf, 0x1Cu);
      if (*v158)
      {
        free(*v158);
      }
    }
  }

  v137 = *(this + 1588);
  if (v137 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v138 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, (this + 216));
    CALegacyLog::log(v137, 3, v138, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 235, "LogVPParams", "    DL Format FEV: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v139 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v140 = (*v139 ? *v139 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(v158, (this + 296));
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 236;
      *&buf[18] = 2080;
      *&buf[20] = *v158;
      _os_log_impl(&dword_2724B4000, v140, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     DL Format FEV Process: %s", buf, 0x1Cu);
      if (*v158)
      {
        free(*v158);
      }
    }
  }

  v141 = *(this + 1588);
  if (v141 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v142 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, (this + 296));
    CALegacyLog::log(v141, 3, v142, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 236, "LogVPParams", "    DL Format FEV Process: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v143 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v144 = (*v143 ? *v143 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      CAFormatter::CAFormatter(v158, (this + 336));
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 237;
      *&buf[18] = 2080;
      *&buf[20] = *v158;
      _os_log_impl(&dword_2724B4000, v144, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     DL Format MIX: %s", buf, 0x1Cu);
      if (*v158)
      {
        free(*v158);
      }
    }
  }

  v145 = *(this + 1588);
  if (v145 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v146 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, (this + 336));
    CALegacyLog::log(v145, 3, v146, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 237, "LogVPParams", "    DL Format MIX: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v147 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v148 = (*v147 ? *v147 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
    {
      v149 = *(this + 123);
      *buf = 136315650;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 238;
      *&buf[18] = 1024;
      *&buf[20] = v149;
      _os_log_impl(&dword_2724B4000, v148, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp>     DL Block Size MIX: %d", buf, 0x18u);
    }
  }

  v150 = *(this + 1588);
  if (v150 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v150, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 238, "LogVPParams", "    DL Block Size MIX: %d", *(this + 123));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v151 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v152 = (*v151 ? *v151 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "vpDebug_Logging.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 240;
      _os_log_impl(&dword_2724B4000, v152, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> ____________logparams:end___________", buf, 0x12u);
    }
  }

  v153 = *(this + 1588);
  if (v153 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v153, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 240, "LogVPParams", "____________logparams:end___________");
  }

  v154 = *MEMORY[0x277D85DE8];
}

void sub_27252B7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a17)
  {
    free(a17);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::LoopBackInitialize(VoiceProcessorV2 *this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = this + 12288;
  if (*(this + 15728) != 1 || *(this + 484) != 1 || *(this + 485) != 1)
  {
    goto LABEL_37;
  }

  v7 = *(this + 42);
  v8 = *(this + 119);
  if (v7 == v8)
  {
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 1967, 0);
    v12 = 2 * *(this + 133);
    if (*(this + 91) == *(this + 245))
    {
      *(this + 3936) = 0;
LABEL_10:
      myFreeABLDynamic(this + 1969);
      goto LABEL_11;
    }
  }

  else
  {
    VoiceProcessorV2::CreateSRC(buf, v8, v7, this, 1, a4, a5);
    v9 = *buf;
    *buf = 0;
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 1967, v9);
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](buf, 0);
    LODWORD(v10) = *(this + 133);
    v11 = ceil(*(this + 42) * v10 / *(this + 119));
    v12 = (v11 + v11);
  }

  *(this + 3936) = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  myAllocABLDynamic((this + 336), v12, this + 1969);
LABEL_11:
  v13 = *(this + 91);
  *(this + 3940) = v12;
  *(this + 3941) = v13;
  *(this + 3944) = 0;
  *(this + 1971) = 0;
  v14 = *(this + 1974);
  v15 = *(this + 1973);
  v16 = (v14 - v15) >> 2;
  v17 = (v13 * v12);
  if (v16 == v17)
  {
    if (v14 != v15)
    {
      bzero(*(this + 1973), v14 - v15);
    }
  }

  else
  {
    std::valarray<float>::resize(this + 15784, v17);
    v15 = *(this + 1973);
    v16 = (*(this + 1974) - v15) >> 2;
  }

  if (v16 >= 1)
  {
    bzero(v15, 4 * v16);
  }

  *(this + 3942) = 0;
  *(this + 3944) = 0;
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v18 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v19 = (*v18 ? *v18 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = "ON";
      v21 = *(this + 245);
      if (!*(this + 1967))
      {
        v20 = "OFF";
      }

      v22 = *(this + 91);
      *buf = 136316162;
      *&buf[4] = "vpDebug_Loopback.cpp";
      v27 = 1024;
      v28 = 50;
      v29 = 2080;
      v30 = v20;
      v31 = 1024;
      v32 = v21;
      v33 = 1024;
      v34 = v22;
      _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> loopbackinitialize SRC=%s, usOut#chan=%d, dlMix#chan=%d", buf, 0x28u);
    }
  }

  v23 = *(this + 1588);
  if (v23 && ((v5[3593] & 1) != 0 || v5[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (*(this + 1967))
    {
      v24 = "ON";
    }

    else
    {
      v24 = "OFF";
    }

    CALegacyLog::log(v23, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Loopback.cpp", 50, "LoopBackInitialize", "loopbackinitialize SRC=%s, usOut#chan=%d, dlMix#chan=%d", v24, *(this + 245), *(this + 91));
  }

LABEL_37:
  v25 = *MEMORY[0x277D85DE8];
}

void std::valarray<float>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

void VoiceProcessorV2::LoopBackRead(VoiceProcessorV2 *this, unsigned int a2, AudioBufferList *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = this + 12288;
  if (*(this + 15728) == 1)
  {
    if (*(this + 3942) >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(this + 3942);
    }

    mNumberBuffers = a3->mNumberBuffers;
    if (v7)
    {
      v9 = mNumberBuffers == *(this + 3941);
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *(this + 3940) - *(this + 3943);
      if (v10 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      if (mNumberBuffers)
      {
        v12 = 0;
        p_mData = &a3->mBuffers[0].mData;
        do
        {
          v14 = *p_mData;
          p_mData += 2;
          memcpy(v14, (*(this + 1973) + 4 * (*(this + 3943) + *(this + 3940) * v12++)), 4 * v11);
          v15 = *(this + 3941);
        }

        while (v12 < v15);
        if (v10 < v7 && v15)
        {
          v16 = 0;
          v17 = &a3->mBuffers[0].mData;
          do
          {
            v18 = *v17;
            v17 += 2;
            memcpy(&v18[4 * v11], (*(this + 1973) + 4 * (*(this + 3940) * v16++)), 4 * (v7 - v11));
          }

          while (v16 < *(this + 3941));
        }
      }

      *(this + 3942) -= v7;
      v19 = *(this + 3943) + v7;
      *(this + 3943) = v19;
      v20 = *(this + 3940);
      v21 = v19 >= v20;
      v22 = v19 - v20;
      if (v21)
      {
        *(this + 3943) = v22;
      }
    }

    else
    {
      v7 = 0;
    }

    v33 = a2 - v7;
    if (a2 > v7)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v23 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v24 = (*v23 ? *v23 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v35 = "vpDebug_Loopback.cpp";
          v36 = 1024;
          v37 = 100;
          v38 = 1024;
          v39 = v7;
          v40 = 1024;
          v41 = a2;
          _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> loopbackread ERROR read %d (requested %d) frames", buf, 0x1Eu);
        }
      }

      v25 = *(this + 1588);
      if (v25 && ((v3[3593] & 1) != 0 || v3[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v25, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Loopback.cpp", 100, "LoopBackRead", "loopbackread ERROR read %d (requested %d) frames", v7, a2);
      }

      if (a3->mNumberBuffers)
      {
        v26 = 0;
        v27 = 16;
        v28 = v7;
        do
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v29 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v30 = (*v29 ? *v29 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              v35 = "vpDebug_Loopback.cpp";
              v36 = 1024;
              v37 = 102;
              v38 = 1024;
              v39 = v33;
              v40 = 1024;
              v41 = v26;
              _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> loopbackread filled %d zeros in outABL channel %d", buf, 0x1Eu);
            }
          }

          v31 = *(this + 1588);
          if (v31 && ((v3[3593] & 1) != 0 || v3[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v31, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Loopback.cpp", 102, "LoopBackRead", "loopbackread filled %d zeros in outABL channel %d", v33, v26);
          }

          bzero((*(&a3->mNumberBuffers + v27) + 4 * v28), 4 * v33);
          ++v26;
          v27 += 16;
        }

        while (v26 < a3->mNumberBuffers);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV2::PListCopyDictionaryForWrite(VoiceProcessorV2 *this, __CFDictionary **a2)
{
  key[32] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v3 = *(this + 1906);
  if (!v3)
  {
    goto LABEL_28;
  }

  Count = CFArrayGetCount(v3);
  if (Count <= 0)
  {
    v8 = 0;
    v31 = 0;
    goto LABEL_17;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(this + 1906), Count - 1);
  v31 = 0;
  if (!ValueAtIndex)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v7 = ValueAtIndex;
  valuePtr = 0;
  VPGetPropsPListStringForKey(key, 3);
  v8 = key[0];
  v31 = key[0];
  Value = CFDictionaryGetValue(v7, key[0]);
  v10 = CFArrayGetCount(Value);
  v11 = CFArrayGetValueAtIndex(Value, v10 - 1);
  CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
  if (valuePtr != *(this + 3148))
  {
LABEL_17:
    *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    VPGetPropsPListStringForKey(key, 3);
    WriteItemToDictionary(a2, key, 1, 4uLL, this + 12592);
    if (key[0])
    {
      CFRelease(key[0]);
    }

    VPGetPropsPListStringForKey(key, 2);
    WriteItemToDictionary(a2, key, 1, 4uLL, this + 12596);
    if (key[0])
    {
      CFRelease(key[0]);
    }

    VPGetPropsPListStringForKey(key, 17);
    WriteItemToDictionary(a2, key, 1, 4uLL, this + 12600);
    if (key[0])
    {
      CFRelease(key[0]);
    }

    snprintf(key, 0x100uLL, "%s%d%02d%02d.%02d%02d%02d.%03u", "vp.", *(this + 3246), *(this + 12988), *(this + 12989), *(this + 12990), *(this + 12991), *(this + 1624), *(this + 3250));
    VPGetPropsPListStringForKey(&cf, 1);
    v25 = strlen(key);
    WriteItemToDictionary(a2, &cf, 0, v25 + 1, key);
    if (cf)
    {
      CFRelease(cf);
    }

    CFArrayAppendValue(*(this + 1906), *a2);
    v12 = v8;
    goto LABEL_26;
  }

  v29 = 0;
  VPGetPropsPListStringForKey(key, 2);
  v12 = key[0];
  v31 = key[0];
  key[0] = v8;
  if (v8)
  {
    CFRelease(v8);
  }

  v13 = CFDictionaryGetValue(v7, v12);
  v14 = CFArrayGetCount(v13);
  v15 = CFArrayGetValueAtIndex(v13, v14 - 1);
  CFNumberGetValue(v15, kCFNumberIntType, &v29);
  if (v29 != *(this + 3149))
  {
    goto LABEL_14;
  }

  v28 = 0;
  VPGetPropsPListStringForKey(key, 17);
  v8 = key[0];
  v31 = key[0];
  key[0] = v12;
  if (v12)
  {
    CFRelease(v12);
  }

  v16 = CFDictionaryGetValue(v7, v8);
  v17 = CFArrayGetCount(v16);
  v18 = CFArrayGetValueAtIndex(v16, v17 - 1);
  CFNumberGetValue(v18, kCFNumberIntType, &v28);
  if (v28 != *(this + 3150))
  {
    goto LABEL_17;
  }

  snprintf(key, 0x100uLL, "%s%d%02d%02d.%02d%02d%02d.%03u", "vp.", *(this + 3246), *(this + 12988), *(this + 12989), *(this + 12990), *(this + 12991), *(this + 1624), *(this + 3250));
  VPGetPropsPListStringForKey(&cf, 1);
  v12 = cf;
  v31 = cf;
  cf = v8;
  if (v8)
  {
    CFRelease(v8);
  }

  v19 = CFDictionaryGetValue(v7, v12);
  v20 = CFArrayGetCount(v19);
  v21 = CFArrayGetValueAtIndex(v19, v20 - 1);
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(v21, SystemEncoding);
  v24 = strlen(CStringPtr);
  if (strncmp(CStringPtr, key, v24))
  {
LABEL_14:
    v8 = v12;
    goto LABEL_17;
  }

  *a2 = v7;
  CFRetain(v7);
LABEL_26:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_28:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_27252C464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::PListWriteInitializeHwInputParameters(VoiceProcessorV2 *this)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(this + 1906))
  {
    v26 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v26);
    v2 = v26;
    if (v26)
    {
      v3 = this + 32;
      if (*(this + 55) < 0)
      {
        v3 = *v3;
      }

      VPGetPropsPListStringForKey(cf, 0);
      v4 = strlen(v3);
      WriteItemToDictionary(&v26, cf, 0, v4 + 1, v3);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (*(this + 60) == 1)
      {
        v5 = *(this + 14);
      }

      else
      {
        v5 = 0;
      }

      valuePtr = v5;
      VPGetPropsPListStringForKey(cf, 64);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, &valuePtr);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v24 = *(this + 16);
      VPGetPropsPListStringForKey(cf, 77);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, &v24);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (*(this + 294) != *(this + 295))
      {
        VPGetPropsPListStringForKey(cf, 6);
        WriteItemToDictionary(&v26, cf, 1, 4uLL, *(this + 294));
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (*(this + 295) - *(this + 294) >= 5uLL)
        {
          v6 = 1;
          v7 = 4;
          do
          {
            VPGetPropsPListStringForKey(&v22, 6);
            if (!v22)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }

            applesauce::CF::convert_to<std::string,0>(cf, v22);
            if ((SBYTE7(v20) & 0x80u) == 0)
            {
              v8 = cf;
            }

            else
            {
              v8 = cf[0];
            }

            applesauce::CF::make_StringRef(@"%s%lu", &v23, v8, v6);
            if (SBYTE7(v20) < 0)
            {
              operator delete(cf[0]);
            }

            if (v22)
            {
              CFRelease(v22);
            }

            WriteItemToDictionary(&v26, &v23, 1, 4uLL, (*(this + 294) + v7));
            if (v23)
            {
              CFRelease(v23);
            }

            ++v6;
            v7 += 4;
          }

          while (v6 < (*(this + 295) - *(this + 294)) >> 2);
        }
      }

      if (*(this + 297) != *(this + 298))
      {
        VPGetPropsPListStringForKey(cf, 9);
        WriteItemToDictionary(&v26, cf, 1, 4uLL, *(this + 297));
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (*(this + 298) - *(this + 297) >= 5uLL)
        {
          v9 = 1;
          v10 = 4;
          do
          {
            VPGetPropsPListStringForKey(&v22, 9);
            if (!v22)
            {
              v18 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v18, "Could not construct");
            }

            applesauce::CF::convert_to<std::string,0>(cf, v22);
            if ((SBYTE7(v20) & 0x80u) == 0)
            {
              v11 = cf;
            }

            else
            {
              v11 = cf[0];
            }

            applesauce::CF::make_StringRef(@"%s%lu", &v23, v11, v9);
            if (SBYTE7(v20) < 0)
            {
              operator delete(cf[0]);
            }

            if (v22)
            {
              CFRelease(v22);
            }

            WriteItemToDictionary(&v26, &v23, 1, 4uLL, (*(this + 297) + v10));
            if (v23)
            {
              CFRelease(v23);
            }

            ++v9;
            v10 += 4;
          }

          while (v9 < (*(this + 298) - *(this + 297)) >> 2);
        }
      }

      VPGetPropsPListStringForKey(cf, 35);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 2400);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 41);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 2404);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v12 = *(this + 38);
      *cf = *(this + 37);
      v20 = v12;
      v21 = *(this + 78);
      ASBDToText(cf, __s);
      VPGetPropsPListStringForKey(cf, 4);
      v13 = strlen(__s);
      WriteItemToDictionary(&v26, cf, 0, v13 + 1, __s);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v14 = *(this + 648);
      *cf = *(this + 632);
      v20 = v14;
      v21 = *(this + 83);
      ASBDToText(cf, __s);
      VPGetPropsPListStringForKey(cf, 7);
      v15 = strlen(__s);
      WriteItemToDictionary(&v26, cf, 0, v15 + 1, __s);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 5);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 500);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 8);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 504);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 42);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 1156);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 43);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 1160);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 10);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 1176);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 11);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 1172);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 12);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 1184);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 13);
      WriteItemToDictionary(&v26, cf, 1, 4uLL, this + 1180);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 39);
      WriteItemToDictionary(&v26, cf, 2, 4uLL, this + 1164);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      CFRelease(v2);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_27252CBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFTypeID applesauce::CF::make_StringRef@<X0>(CFStringRef format@<X0>, CFStringRef *a2@<X8>, ...)
{
  va_start(va, a2);
  v4 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  *a2 = v4;
  v5 = CFGetTypeID(v4);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
  }

  return result;
}

void sub_27252CDA4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void VoiceProcessorV2::PListWriteInitializeOutputParameters(VoiceProcessorV2 *this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(this + 1906))
  {
    v9 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v9);
    v2 = v9;
    if (v9)
    {
      v3 = *(this + 63);
      *cf = *(this + 62);
      v7 = v3;
      v8 = *(this + 128);
      ASBDToText(cf, __s);
      VPGetPropsPListStringForKey(cf, 14);
      v4 = strlen(__s);
      WriteItemToDictionary(&v9, cf, 0, v4 + 1, __s);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 42);
      WriteItemToDictionary(&v9, cf, 1, 4uLL, this + 1156);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 43);
      WriteItemToDictionary(&v9, cf, 1, 4uLL, this + 1160);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 10);
      WriteItemToDictionary(&v9, cf, 1, 4uLL, this + 1176);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 11);
      WriteItemToDictionary(&v9, cf, 1, 4uLL, this + 1172);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 12);
      WriteItemToDictionary(&v9, cf, 1, 4uLL, this + 1184);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 13);
      WriteItemToDictionary(&v9, cf, 1, 4uLL, this + 1180);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 39);
      WriteItemToDictionary(&v9, cf, 2, 4uLL, this + 1164);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      CFRelease(v2);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_27252D004(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::PListWriteInitializeDLPParameters(VoiceProcessorV2 *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 1906))
  {
    v11 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v11);
    v2 = v11;
    if (v11)
    {
      ASBDToText((this + 336), __s);
      VPGetPropsPListStringForKey(cf, 18);
      v3 = strlen(__s);
      WriteItemToDictionary(&v11, cf, 0, v3 + 1, __s);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      VPGetPropsPListStringForKey(cf, 19);
      WriteItemToDictionary(&v11, cf, 1, 4uLL, this + 492);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      ASBDToText((this + 216), __s);
      VPGetPropsPListStringForKey(cf, 20);
      v4 = strlen(__s);
      WriteItemToDictionary(&v11, cf, 0, v4 + 1, __s);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (*(this + 1135) == 1)
      {
        v5 = *(this + 38);
        *cf = *(this + 37);
        v9 = v5;
        v10 = *(this + 78);
        ASBDToText(cf, __s);
        VPGetPropsPListStringForKey(cf, 4);
        v6 = strlen(__s);
        WriteItemToDictionary(&v11, cf, 0, v6 + 1, __s);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        VPGetPropsPListStringForKey(cf, 5);
        WriteItemToDictionary(&v11, cf, 1, 4uLL, this + 500);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      CFRelease(v2);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_27252D23C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::PListWriteInitializeSpkrTelParameters(VoiceProcessorV2 *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 1906))
  {
    v6 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v6);
    v2 = v6;
    if (v6)
    {
      ASBDToText((this + 1496), __s);
      VPGetPropsPListStringForKey(&cf, 32);
      v3 = strlen(__s);
      WriteItemToDictionary(&v6, &cf, 0, v3 + 1, __s);
      if (cf)
      {
        CFRelease(cf);
      }

      VPGetPropsPListStringForKey(&cf, 33);
      WriteItemToDictionary(&v6, &cf, 1, 4uLL, this + 1536);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v2);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_27252D380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::PListWriteSetPropertyParameters(VoiceProcessorV2 *this, int a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (*(this + 1906))
  {
    cf = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &cf);
    v4 = cf;
    if (cf)
    {
      if (a2 > 1635085676)
      {
        if (a2 > 1868653666)
        {
          if (a2 <= 1937141090)
          {
            switch(a2)
            {
              case 1868653667:
                applesauce::CF::NumberRef::NumberRef<unsigned int,void>(&v19, *(this + 4141));
                applesauce::CF::TypeRef::TypeRef(&v24, "DuckingLevel");
                applesauce::CF::NumberRef::operator applesauce::CF::TypeRef(&v25, v19);
                if (*(this + 16561))
                {
                  v11 = MEMORY[0x277CBED28];
                }

                else
                {
                  v11 = MEMORY[0x277CBED10];
                }

                v18 = *v11;
                applesauce::CF::TypeRef::TypeRef(v26, "EnableAdvancedDucking");
                applesauce::CF::BooleanRef::operator applesauce::CF::TypeRef(v27, v18);
                valuePtr = &v24;
                v21 = 2;
                CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&valuePtr);
                v13 = 0;
                v22 = CFDictionaryRef;
                do
                {
                  v14 = v27[v13];
                  if (v14)
                  {
                    CFRelease(v14);
                  }

                  v15 = *&v26[v13 * 8];
                  if (v15)
                  {
                    CFRelease(v15);
                  }

                  v13 -= 2;
                }

                while (v13 != -4);
                applesauce::CF::BooleanRef::~BooleanRef(&v18);
                applesauce::CF::NumberRef::~NumberRef(&v19);
                v24 = CFDictionaryRef;
                VPGetPropsPListStringForKey(&valuePtr, 75);
                WriteItemToDictionary(&cf, &valuePtr, 4, 8uLL, &v24);
                break;
              case 1936744803:
                LODWORD(valuePtr) = *(this + 2261);
                VPGetPropsPListStringForKey(&v24, 68);
                WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
                goto LABEL_76;
              case 1936746595:
                applesauce::CF::NumberRef::NumberRef<unsigned int,void>(&v19, *(this + 4096));
                applesauce::CF::TypeRef::TypeRef(&v24, "SpatialMode");
                applesauce::CF::NumberRef::operator applesauce::CF::TypeRef(&v25, v19);
                if (*(this + 16388))
                {
                  v6 = MEMORY[0x277CBED28];
                }

                else
                {
                  v6 = MEMORY[0x277CBED10];
                }

                v18 = *v6;
                applesauce::CF::TypeRef::TypeRef(v26, "HeadTracking");
                applesauce::CF::BooleanRef::operator applesauce::CF::TypeRef(v27, v18);
                valuePtr = &v24;
                v21 = 2;
                v7 = applesauce::CF::details::make_CFDictionaryRef(&valuePtr);
                v8 = 0;
                v22 = v7;
                do
                {
                  v9 = v27[v8];
                  if (v9)
                  {
                    CFRelease(v9);
                  }

                  v10 = *&v26[v8 * 8];
                  if (v10)
                  {
                    CFRelease(v10);
                  }

                  v8 -= 2;
                }

                while (v8 != -4);
                applesauce::CF::BooleanRef::~BooleanRef(&v18);
                applesauce::CF::NumberRef::~NumberRef(&v19);
                v24 = v7;
                VPGetPropsPListStringForKey(&valuePtr, 73);
                WriteItemToDictionary(&cf, &valuePtr, 4, 8uLL, &v24);
                break;
              default:
                goto LABEL_78;
            }

            applesauce::CF::StringRef::~StringRef(&valuePtr);
            applesauce::CF::DictionaryRef::~DictionaryRef(&v22);
            goto LABEL_78;
          }

          switch(a2)
          {
            case 1937141091:
              v17 = atomic_load(this + 567);
              LODWORD(valuePtr) = v17;
              VPGetPropsPListStringForKey(&v24, 71);
              WriteItemToDictionary(&cf, &v24, 2, 4uLL, &valuePtr);
              applesauce::CF::StringRef::~StringRef(&v24);
              v4 = cf;
              break;
            case 1953915762:
              VPGetPropsPListStringForKey(&v24, 40);
              WriteItemToDictionary(&cf, &v24, 2, 4uLL, this + 2216);
              goto LABEL_76;
            case 1953915764:
              VPGetPropsPListStringForKey(&v24, 26);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, this + 2212);
              goto LABEL_76;
          }
        }

        else if (a2 > 1768514914)
        {
          switch(a2)
          {
            case 1768514915:
              LODWORD(valuePtr) = *(this + 16568);
              VPGetPropsPListStringForKey(&v24, 76);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
              goto LABEL_76;
            case 1835361379:
              LODWORD(valuePtr) = *(this + 2260);
              VPGetPropsPListStringForKey(&v24, 67);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
              goto LABEL_76;
            case 1836082532:
              LODWORD(valuePtr) = *(this + 2262);
              VPGetPropsPListStringForKey(&v24, 74);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
              goto LABEL_76;
          }
        }

        else
        {
          switch(a2)
          {
            case 1635085677:
              LODWORD(valuePtr) = *(this + 2288);
              VPGetPropsPListStringForKey(&v24, 80);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
              goto LABEL_76;
            case 1718384242:
              LODWORD(valuePtr) = *(this + 4134);
              VPGetPropsPListStringForKey(&v24, 69);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
              goto LABEL_76;
            case 1751933808:
              v24 = *(this + 281);
              VPGetPropsPListStringForKey(&valuePtr, 65);
              WriteItemToDictionary(&cf, &valuePtr, 4, 8uLL, &v24);
              p_valuePtr = &valuePtr;
LABEL_77:
              applesauce::CF::StringRef::~StringRef(p_valuePtr);
              break;
          }
        }
      }

      else if (a2 > 32787)
      {
        if (a2 > 32796)
        {
          switch(a2)
          {
            case 32797:
              VPGetPropsPListStringForKey(&v24, 66);
              WriteItemToDictionary(&cf, &v24, 2, 4uLL, this + 2256);
              goto LABEL_76;
            case 32798:
              VPGetPropsPListStringForKey(&v24, 62);
              WriteItemToDictionary(&cf, &v24, 4, 8uLL, this + 2240);
              goto LABEL_76;
            case 1634758502:
              LODWORD(valuePtr) = *(this + 4152);
              VPGetPropsPListStringForKey(&v24, 79);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
              goto LABEL_76;
          }
        }

        else
        {
          switch(a2)
          {
            case 32788:
              LODWORD(valuePtr) = *(this + 2093);
              VPGetPropsPListStringForKey(&v24, 34);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
              goto LABEL_76;
            case 32792:
              VPGetPropsPListStringForKey(&v24, 44);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, this + 1152);
              goto LABEL_76;
            case 32794:
              LODWORD(valuePtr) = *(this + 2090);
              VPGetPropsPListStringForKey(&v24, 61);
              WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
              goto LABEL_76;
          }
        }
      }

      else if (a2 > 32782)
      {
        switch(a2)
        {
          case 32783:
            VPGetPropsPListStringForKey(&v24, 27);
            WriteItemToDictionary(&cf, &v24, 4, 8uLL, this + 2224);
            goto LABEL_76;
          case 32784:
            VPGetPropsPListStringForKey(&v24, 28);
            WriteItemToDictionary(&cf, &v24, 4, 8uLL, this + 2232);
            goto LABEL_76;
          case 32786:
            VPGetPropsPListStringForKey(&v24, 31);
            WriteItemToDictionary(&cf, &v24, 1, 4uLL, this + 2752);
            goto LABEL_76;
        }
      }

      else
      {
        switch(a2)
        {
          case 32769:
            VPGetPropsPListStringForKey(&v24, 16);
            WriteItemToDictionary(&cf, &v24, 1, 4uLL, this + 2304);
            goto LABEL_76;
          case 32772:
            LODWORD(valuePtr) = *(this + 2088);
            VPGetPropsPListStringForKey(&v24, 60);
            WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
            goto LABEL_76;
          case 32773:
            LODWORD(valuePtr) = *(this + 2091);
            VPGetPropsPListStringForKey(&v24, 29);
            WriteItemToDictionary(&cf, &v24, 1, 4uLL, &valuePtr);
LABEL_76:
            p_valuePtr = &v24;
            goto LABEL_77;
        }
      }

LABEL_78:
      CFRelease(v4);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_27252DBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  applesauce::CF::StringRef::~StringRef(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  _Unwind_Resume(a1);
}

CFNumberRef *applesauce::CF::NumberRef::NumberRef<unsigned int,void>(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void *applesauce::CF::NumberRef::operator applesauce::CF::TypeRef(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

void *applesauce::CF::BooleanRef::operator applesauce::CF::TypeRef(void *result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v3 = cf;
  return result;
}

void applesauce::CF::BooleanRef::~BooleanRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void VoiceProcessorV2::PListWriteSetModeParameters(VoiceProcessorV2 *this)
{
  if (*(this + 1906))
  {
    v4 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v4);
    v2 = v4;
    if (v4)
    {
      VPGetPropsPListStringForKey(&cf, 22);
      WriteItemToDictionary(&v4, &cf, 1, 4uLL, this + 80);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v2);
    }
  }
}

void VoiceProcessorV2::PListWriteSetDeviceOrientationParameters(VoiceProcessorV2 *this, int a2)
{
  valuePtr = a2;
  if (*(this + 1906))
  {
    v4 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v4);
    v2 = v4;
    if (v4)
    {
      VPGetPropsPListStringForKey(&cf, 38);
      WriteItemToDictionary(&v4, &cf, 1, 4uLL, &valuePtr);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v2);
    }
  }
}

void sub_27252DF8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void VoiceProcessorV2::PListWriteSetUIOrientationParameters(VoiceProcessorV2 *this, int a2)
{
  valuePtr = a2;
  if (*(this + 1906))
  {
    v4 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v4);
    v2 = v4;
    if (v4)
    {
      VPGetPropsPListStringForKey(&cf, 54);
      WriteItemToDictionary(&v4, &cf, 1, 4uLL, &valuePtr);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v2);
    }
  }
}

void sub_27252E020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void VoiceProcessorV2::PListWriteMicTrimGainParameters(VoiceProcessorV2 *a1, float **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1906))
  {
    if (*a2 != a2[1])
    {
      v8 = 0;
      VoiceProcessorV2::PListCopyDictionaryForWrite(a1, &v8);
      v3 = v8;
      if (v8)
      {
        snprintf(__str, 0x200uLL, "%f", **a2);
        v4 = *a2;
        if ((a2[1] - *a2) >= 5)
        {
          v5 = 1;
          do
          {
            snprintf(__source, 0x200uLL, ", %f", v4[v5]);
            strlcat(__str, __source, 0x200uLL);
            ++v5;
            v4 = *a2;
          }

          while (v5 < a2[1] - *a2);
        }

        VPGetPropsPListStringForKey(__source, 24);
        v6 = strlen(__str);
        WriteItemToDictionary(&v8, __source, 0, v6 + 1, __str);
        if (*__source)
        {
          CFRelease(*__source);
        }

        CFRelease(v3);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_27252E184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::PListWriteRefTrimGainParameters(VoiceProcessorV2 *a1, float **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1906))
  {
    if (*a2 != a2[1])
    {
      v8 = 0;
      VoiceProcessorV2::PListCopyDictionaryForWrite(a1, &v8);
      v3 = v8;
      if (v8)
      {
        snprintf(__str, 0x200uLL, "%f", **a2);
        v4 = *a2;
        if ((a2[1] - *a2) >= 5)
        {
          v5 = 1;
          do
          {
            snprintf(__source, 0x200uLL, ", %f", v4[v5]);
            strlcat(__str, __source, 0x200uLL);
            ++v5;
            v4 = *a2;
          }

          while (v5 < a2[1] - *a2);
        }

        VPGetPropsPListStringForKey(__source, 25);
        v6 = strlen(__str);
        WriteItemToDictionary(&v8, __source, 0, v6 + 1, __str);
        if (*__source)
        {
          CFRelease(*__source);
        }

        CFRelease(v3);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_27252E300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::PListWriteSpeakerCalibrationParameters(VoiceProcessorV2 *this, const __CFArray *a2)
{
  valuePtr = a2;
  if (a2)
  {
    v4 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v4);
    v2 = v4;
    if (v4)
    {
      VPGetPropsPListStringForKey(&cf, 63);
      WriteItemToDictionary(&v4, &cf, 4, 8uLL, &valuePtr);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v2);
    }
  }
}

void sub_27252E3A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void VoiceProcessorV2::PListWriteSpkInputDataSrcParameters(VoiceProcessorV2 *this, unsigned int *a2, unsigned int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (*(this + 1906))
    {
      v10 = 0;
      VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v10);
      v5 = v10;
      if (v10)
      {
        snprintf(__str, 0x200uLL, "%d", *a2);
        if (a3 >= 2)
        {
          v6 = a3 - 1;
          v7 = a2 + 1;
          do
          {
            snprintf(__source, 0x200uLL, ", %d", *v7);
            strlcat(__str, __source, 0x200uLL);
            ++v7;
            --v6;
          }

          while (v6);
        }

        VPGetPropsPListStringForKey(__source, 57);
        v8 = strlen(__str);
        WriteItemToDictionary(&v10, __source, 0, v8 + 1, __str);
        if (*__source)
        {
          CFRelease(*__source);
        }

        CFRelease(v5);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_27252E4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void VoiceProcessorV2::PListWriteRefPhysicalDevSR(VoiceProcessorV2 *this, double *a2)
{
  if (*(this + 1906))
  {
    v5 = 0;
    VoiceProcessorV2::PListCopyDictionaryForWrite(this, &v5);
    v3 = v5;
    if (v5)
    {
      VPGetPropsPListStringForKey(&cf, 59);
      WriteItemToDictionary(&v5, &cf, 3, 8uLL, a2);
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v3);
    }
  }
}

AUProcessingBlockBase *VoiceProcessorV2::VPAUProcessingBlock::RemoveAUAtIndex(AUProcessingBlockBase *this, unsigned int a2)
{
  if (*(*(this + 3) + 24 * a2 + 16))
  {
    v2 = this;
    v3 = *(this + 2);
    AUPBUnregisterAU();
    AUProcessingBlockBase::RemoveAUAtIndex(v2);
    v4 = *(v2 + 2);
    return AUPBPropertiesChanged();
  }

  return this;
}

OpaqueAudioComponent *VoiceProcessorV2::VPAUProcessingBlock::GetAvailableAUs(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  inDesc.componentFlagsMask = 0;
  *&inDesc.componentType = *"xaua";
  while (1)
  {
    Next = AudioComponentFindNext(v3, &inDesc);
    v3 = Next;
    if (!Next)
    {
      break;
    }

    AudioComponentGetDescription(Next, &outDesc);
    v7 = *&outDesc.componentType;
    componentManufacturer = outDesc.componentManufacturer;
    std::vector<AudioClassDescription>::push_back[abi:ne200100](a2, &v7);
  }

  *&inDesc.componentFlags = 0;
  *&inDesc.componentSubType = 0;
  inDesc.componentType = 1635083896;
  while (1)
  {
    result = AudioComponentFindNext(v3, &inDesc);
    if (!result)
    {
      return result;
    }

    v3 = result;
    AudioComponentGetDescription(result, &outDesc);
    if (outDesc.componentSubType <= 1836280881)
    {
      if (outDesc.componentSubType > 1685677162)
      {
        if (outDesc.componentSubType > 1819502947)
        {
          if (outDesc.componentSubType > 1835298865)
          {
            if (outDesc.componentSubType == 1835298866)
            {
              goto LABEL_50;
            }

            v6 = 1835954996;
          }

          else
          {
            if (outDesc.componentSubType == 1819502948)
            {
              goto LABEL_50;
            }

            v6 = 1819503922;
          }
        }

        else if (outDesc.componentSubType > 1718186597)
        {
          if (outDesc.componentSubType == 1718186598)
          {
            goto LABEL_50;
          }

          v6 = 1818583859;
        }

        else
        {
          if (outDesc.componentSubType == 1685677163)
          {
            goto LABEL_50;
          }

          v6 = 1701278771;
        }
      }

      else if (outDesc.componentSubType > 1651402354)
      {
        if (outDesc.componentSubType > 1668179821)
        {
          if (outDesc.componentSubType == 1668179822)
          {
            goto LABEL_50;
          }

          v6 = 1684366707;
        }

        else
        {
          if (outDesc.componentSubType == 1651402355)
          {
            goto LABEL_50;
          }

          v6 = 1651866219;
        }
      }

      else if (outDesc.componentSubType > 1651323501)
      {
        if (outDesc.componentSubType == 1651323502)
        {
          goto LABEL_50;
        }

        v6 = 1651338854;
      }

      else
      {
        if (outDesc.componentSubType == 1634165554)
        {
          goto LABEL_50;
        }

        v6 = 1635284067;
      }

      goto LABEL_49;
    }

    if (outDesc.componentSubType > 1936089963)
    {
      if (outDesc.componentSubType > 1953330035)
      {
        if (outDesc.componentSubType > 1986159981)
        {
          if (outDesc.componentSubType == 1987211570)
          {
            goto LABEL_50;
          }

          v6 = 1986159982;
        }

        else
        {
          if (outDesc.componentSubType == 1953330036)
          {
            goto LABEL_50;
          }

          v6 = 1953790309;
        }

        goto LABEL_49;
      }

      if (outDesc.componentSubType != 1936089964 && outDesc.componentSubType != 1936745838)
      {
        v6 = 1936748595;
        goto LABEL_49;
      }

LABEL_50:
      v7 = *&outDesc.componentType;
      componentManufacturer = outDesc.componentManufacturer;
      std::vector<AudioClassDescription>::push_back[abi:ne200100](a2, &v7);
    }

    else
    {
      if (outDesc.componentSubType <= 1868787314)
      {
        if (outDesc.componentSubType > 1851942256)
        {
          if (outDesc.componentSubType == 1851942257)
          {
            goto LABEL_50;
          }

          v6 = 1868787301;
        }

        else
        {
          if (outDesc.componentSubType == 1836280882)
          {
            goto LABEL_50;
          }

          v6 = 1836282987;
        }

        goto LABEL_49;
      }

      if (outDesc.componentSubType - 1919251251 < 2 || outDesc.componentSubType == 1868787315)
      {
        goto LABEL_50;
      }

      v6 = 1869509428;
LABEL_49:
      if (outDesc.componentSubType == v6)
      {
        goto LABEL_50;
      }
    }
  }
}

void std::vector<AudioClassDescription>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

void VoiceProcessorV2::VPAUProcessingBlock::~VPAUProcessingBlock(VoiceProcessorV2::VPAUProcessingBlock *this)
{
  AUProcessingBlockBase::~AUProcessingBlockBase(this);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VoiceProcessorV2::VPAUProcessingBlock::FindIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (a2 == a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  result = 0;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
  while (1)
  {
    v8 = a1 + 24 * v5;
    if (*v8 == *a3 && *(v8 + 4) == *(a3 + 4) && *(v8 + 8) == *(a3 + 8) && *(v8 + 16) == *(a3 + 16))
    {
      break;
    }

    v5 = (result + 1);
    result = v5;
    if (v7 <= v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL VoiceProcessorV2::AUIsInDownLinkProcessingChain(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  {
    v21 = a1;
    v18 = a2;
    a2 = v18;
    v20 = v19;
    a1 = v21;
    if (v20)
    {
      memcpy(__dst, "2qrv\b", sizeof(__dst));
      std::multimap<unsigned int,unsigned int>::multimap[abi:ne200100](__dst, 57);
      a1 = v21;
      a2 = v18;
    }
  }

  v2 = qword_280898D10;
  if (!qword_280898D10)
  {
    goto LABEL_9;
  }

  v3 = *(a2 + 4);
  v4 = &qword_280898D10;
  while (1)
  {
    v5 = *(v2 + 28);
    if (v3 >= v5)
    {
      break;
    }

    v4 = v2;
LABEL_8:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if (v5 < v3)
  {
    v2 += 8;
    goto LABEL_8;
  }

  v9 = *v2;
  v10 = v2;
  if (*v2)
  {
    v10 = v2;
    do
    {
      v11 = *(v9 + 28);
      v12 = v11 >= v3;
      v13 = v11 < v3;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
  }

  for (i = *(v2 + 8); i; i = *(i + 8 * (v3 >= *(i + 28))))
  {
    if (v3 < *(i + 28))
    {
      v4 = i;
    }
  }

  if (v10 == v4)
  {
LABEL_9:
    v6 = *(a2 + 16);
LABEL_10:
    result = v6 == *(a1 + 12552);
    goto LABEL_11;
  }

  v6 = *(a2 + 16);
  while (v6 != *(a1 + 3512 + 8 * *(v10 + 8)))
  {
    v15 = v10[1];
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v16 = v10[2];
        v17 = *v16 == v10;
        v10 = v16;
      }

      while (!v17);
    }

    v10 = v16;
    if (v16 == v4)
    {
      goto LABEL_10;
    }
  }

  result = 1;
LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void std::multimap<unsigned int,unsigned int>::multimap[abi:ne200100](uint64_t a1, uint64_t a2)
{
  qword_280898D18 = 0;
  qword_280898D10 = 0;
  VoiceProcessorV2::AUIsInDownLinkProcessingChain(AUPBUnit const&)::downlinkProcessingDB = &qword_280898D10;
  if (a2)
  {
    operator new();
  }
}

id DeviceNameAsString(int a1)
{
  v1 = PlatformUtilities_iOS::CopyProductTypeFilePrefix(a1);
  if (!v1)
  {
    __assert_rtn("DeviceNameAsString", "vpDSPEngineConfiguration.mm", 49, "lowerCaseName != NULL");
  }

  v2 = v1;
  v3 = [(__CFString *)v1 capitalizedString];

  return v3;
}

void DSPEngineConfiguration::DSPEngineConfiguration(DSPEngineConfiguration *this)
{
  v96[3] = *MEMORY[0x277D85DE8];
  GetVoiceProcessorVersion(vp::Context const&,unsigned int,unsigned int,unsigned int,unsigned int)::sDSPEngineConfiguration = 0;
  v1 = MEMORY[0x277CBEB38];
  v95[0] = @"VP configuration info";
  v94[0] = @"ref port subtype";
  v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"b%u", 205];
  v92 = v77;
  v93 = &unk_2881CA8B8;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  v94[1] = v76;
  v91[0] = @"device";
  v75 = DeviceNameAsString(8);
  v89[0] = v75;
  v90[0] = &unk_2881CA8E0;
  v74 = DeviceNameAsString(9);
  v89[1] = v74;
  v90[1] = &unk_2881CA908;
  v73 = DeviceNameAsString(17);
  v89[2] = v73;
  v90[2] = &unk_2881CA930;
  v72 = DeviceNameAsString(7);
  v89[3] = v72;
  v90[3] = &unk_2881CA958;
  v71 = DeviceNameAsString(11);
  v89[4] = v71;
  v90[4] = &unk_2881CA980;
  v70 = DeviceNameAsString(12);
  v89[5] = v70;
  v90[5] = &unk_2881CA9A8;
  v69 = DeviceNameAsString(13);
  v89[6] = v69;
  v90[6] = &unk_2881CA9D0;
  v68 = DeviceNameAsString(14);
  v89[7] = v68;
  v90[7] = &unk_2881CA9F8;
  v67 = DeviceNameAsString(5);
  v89[8] = v67;
  v90[8] = &unk_2881CAA20;
  v66 = DeviceNameAsString(6);
  v89[9] = v66;
  v90[9] = &unk_2881CAA48;
  v65 = DeviceNameAsString(66);
  v89[10] = v65;
  v90[10] = &unk_2881CAA70;
  v64 = DeviceNameAsString(15);
  v89[11] = v64;
  v90[11] = &unk_2881CAA98;
  v63 = DeviceNameAsString(16);
  v89[12] = v63;
  v90[12] = &unk_2881CAAC0;
  v62 = DeviceNameAsString(10);
  v89[13] = v62;
  v90[13] = &unk_2881CAAE8;
  v61 = DeviceNameAsString(1);
  v89[14] = v61;
  v90[14] = &unk_2881CAB10;
  v60 = DeviceNameAsString(3);
  v89[15] = v60;
  v90[15] = &unk_2881CAB38;
  v59 = DeviceNameAsString(4);
  v89[16] = v59;
  v90[16] = &unk_2881CAB60;
  v58 = DeviceNameAsString(18);
  v89[17] = v58;
  v90[17] = &unk_2881CAB88;
  v57 = DeviceNameAsString(19);
  v89[18] = v57;
  v90[18] = &unk_2881CABB0;
  v56 = DeviceNameAsString(29);
  v89[19] = v56;
  v90[19] = &unk_2881CABD8;
  v55 = DeviceNameAsString(30);
  v89[20] = v55;
  v90[20] = &unk_2881CAC00;
  v54 = DeviceNameAsString(33);
  v89[21] = v54;
  v90[21] = &unk_2881CAC28;
  v53 = DeviceNameAsString(34);
  v89[22] = v53;
  v90[22] = &unk_2881CAC50;
  v52 = DeviceNameAsString(35);
  v89[23] = v52;
  v90[23] = &unk_2881CAC78;
  v51 = DeviceNameAsString(36);
  v89[24] = v51;
  v90[24] = &unk_2881CACA0;
  v50 = DeviceNameAsString(37);
  v89[25] = v50;
  v90[25] = &unk_2881CACC8;
  v49 = DeviceNameAsString(38);
  v89[26] = v49;
  v90[26] = &unk_2881CACF0;
  v48 = DeviceNameAsString(21);
  v89[27] = v48;
  v90[27] = &unk_2881CAD18;
  v47 = DeviceNameAsString(22);
  v89[28] = v47;
  v90[28] = &unk_2881CAD40;
  v46 = DeviceNameAsString(25);
  v89[29] = v46;
  v90[29] = &unk_2881CAD68;
  v45 = DeviceNameAsString(27);
  v89[30] = v45;
  v90[30] = &unk_2881CAD90;
  v44 = DeviceNameAsString(31);
  v89[31] = v44;
  v90[31] = &unk_2881CADB8;
  v43 = DeviceNameAsString(23);
  v89[32] = v43;
  v90[32] = &unk_2881CADE0;
  v42 = DeviceNameAsString(39);
  v89[33] = v42;
  v90[33] = &unk_2881CAE08;
  v41 = DeviceNameAsString(41);
  v89[34] = v41;
  v90[34] = &unk_2881CAE30;
  v40 = DeviceNameAsString(44);
  v89[35] = v40;
  v90[35] = &unk_2881CAE58;
  v39 = DeviceNameAsString(46);
  v89[36] = v39;
  v90[36] = &unk_2881CAE80;
  v38 = DeviceNameAsString(47);
  v89[37] = v38;
  v90[37] = &unk_2881CAEA8;
  v37 = DeviceNameAsString(49);
  v89[38] = v37;
  v90[38] = &unk_2881CAED0;
  v36 = DeviceNameAsString(51);
  v89[39] = v36;
  v90[39] = &unk_2881CAEF8;
  v35 = DeviceNameAsString(53);
  v89[40] = v35;
  v90[40] = &unk_2881CAF20;
  v34 = DeviceNameAsString(55);
  v89[41] = v34;
  v90[41] = &unk_2881CAF48;
  v33 = DeviceNameAsString(57);
  v89[42] = v33;
  v90[42] = &unk_2881CAF70;
  v2 = DeviceNameAsString(59);
  v89[43] = v2;
  v90[43] = &unk_2881CAF98;
  v3 = DeviceNameAsString(60);
  v89[44] = v3;
  v90[44] = &unk_2881CAFC0;
  v4 = DeviceNameAsString(62);
  v89[45] = v4;
  v90[45] = &unk_2881CAFE8;
  v5 = DeviceNameAsString(64);
  v89[46] = v5;
  v90[46] = &unk_2881CB010;
  v6 = DeviceNameAsString(65);
  v89[47] = v6;
  v90[47] = &unk_2881CB038;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:48];
  v91[1] = v7;
  v91[2] = &unk_2881CB060;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
  v94[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:3];
  v96[0] = v9;
  v96[1] = &unk_2881CB088;
  v95[1] = @"tree index";
  v95[2] = @"version";
  v96[2] = &unk_2881CB0A0;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:3];
  v11 = [v1 dictionaryWithDictionary:v10];

  [v11 objectForKeyedSubscript:@"tree index"];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v12 = v79 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v78 objects:v88 count:16];
  if (v13)
  {
    v14 = *v79;
    do
    {
      v15 = 0;
      do
      {
        if (*v79 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v78 + 1) + 8 * v15);
        v17 = [v11 objectForKeyedSubscript:v16];
        v18 = v17;
        if (v17)
        {
          if ((LookUpTreeIsValid(v17) & 1) == 0)
          {
            [v11 removeObjectForKey:v16];
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v19 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope)
            {
              if (CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
              {
                v20 = *v19;
                if (!*v19)
                {
                  v20 = MEMORY[0x277D86220];
                }

                v21 = v20;
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v22 = v16;
                  v23 = [v16 UTF8String];
                  *buf = 136315650;
                  v83 = "vpDSPEngineConfiguration.mm";
                  v84 = 1024;
                  v85 = 231;
                  v86 = 2080;
                  v87 = v23;
                  v24 = v21;
                  v25 = OS_LOG_TYPE_ERROR;
                  v26 = "%25s:%-5d DSPEngine configuration file claimed to have tree %s, but it was an a valid tree";
                  goto LABEL_24;
                }

                goto LABEL_25;
              }
            }
          }
        }

        else
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v27 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
          {
            v28 = *v27;
            if (!*v27)
            {
              v28 = MEMORY[0x277D86220];
            }

            v21 = v28;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v16;
              v30 = [v16 UTF8String];
              *buf = 136315650;
              v83 = "vpDSPEngineConfiguration.mm";
              v84 = 1024;
              v85 = 227;
              v86 = 2080;
              v87 = v30;
              v24 = v21;
              v25 = OS_LOG_TYPE_DEFAULT;
              v26 = "%25s:%-5d DSPEngine configuration file claimed to have tree %s, but it was not found";
LABEL_24:
              _os_log_impl(&dword_2724B4000, v24, v25, v26, buf, 0x1Cu);
            }

LABEL_25:
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v78 objects:v88 count:16];
    }

    while (v13);
  }

  v31 = GetVoiceProcessorVersion(vp::Context const&,unsigned int,unsigned int,unsigned int,unsigned int)::sDSPEngineConfiguration;
  GetVoiceProcessorVersion(vp::Context const&,unsigned int,unsigned int,unsigned int,unsigned int)::sDSPEngineConfiguration = v11;

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t GetVoiceProcessorVersion(const vp::Context *a1, AudioObjectID a2, unsigned int a3, AudioObjectID a4, unsigned int a5)
{
  v83 = *MEMORY[0x277D85DE8];
  v74 = 0;
  AppIntegerValue = CACFPreferencesGetAppIntegerValue(@"vp_force_version", @"com.apple.coreaudio", &v74);
  if (!v74)
  {
    if (*(a1 + 47) >= 0)
    {
      v12 = a1 + 24;
    }

    else
    {
      v12 = *(a1 + 3);
    }

    v13 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:1];
    v14 = v13;
    if ((*(a1 + 148) & 0x100000000) != 0)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"AID%u", *(a1 + 148)];
      v17 = [v14 stringByAppendingPathComponent:v16];
    }

    else
    {
      v15 = (a1 + 104);
      if (*(a1 + 127) < 0)
      {
        v15 = *v15;
        if (!v15)
        {
          v18 = v13;
          goto LABEL_12;
        }
      }

      v16 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:1];
      v17 = [v14 stringByAppendingPathComponent:v16];
    }

    v18 = v17;

LABEL_12:
    __dst[0] = 0;
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v18 stringByAppendingPathComponent:@"VPVX"];
    v21 = [v19 fileExistsAtPath:v20 isDirectory:__dst];

    if (v21 && __dst[0] == 1)
    {

      v11 = 10;
      goto LABEL_95;
    }

    {
      if (v73)
      {
        DSPEngineConfiguration::DSPEngineConfiguration(v73);
      }
    }

    if (*(a1 + 140))
    {
      v22 = *(a1 + 34);
    }

    else
    {
      v22 = 0;
    }

    v23 = objc_opt_new();
    GetVPProductFamilyType(v22);
    v24 = DeviceNameAsString(8);
    *__s = 0;
    *v76 = 0;
    v75 = 0;
    if (a2 && a3)
    {
      GetAndPrintPortTypeProperty(0x6F757470u, a3, a2, 0x70737562u, "sub", __s);
      GetAndPrintPortTypeProperty(0x6F757470u, a3, a2, 0x70657074u, "end point", &v76[1]);
    }

    if (a4 && a5)
    {
      GetAndPrintPortTypeProperty(0x696E7074u, a5, a4, 0x70737562u, "sub", v76);
      GetAndPrintPortTypeProperty(0x696E7074u, a5, a4, 0x70657074u, "end point", &v75);
    }

    [(NSDictionary *)v23 setObject:v24 forKeyedSubscript:@"device"];
    v25 = MEMORY[0x277CCACA8];
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__dst, a3);
    v26 = [v25 stringWithUTF8String:__dst];
    [(NSDictionary *)v23 setObject:v26 forKeyedSubscript:@"ref port"];

    v27 = MEMORY[0x277CCACA8];
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__dst, a5);
    v28 = [v27 stringWithUTF8String:__dst];
    [(NSDictionary *)v23 setObject:v28 forKeyedSubscript:@"mic port"];

    v29 = MEMORY[0x277CCACA8];
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__dst, *__s);
    v30 = [v29 stringWithUTF8String:__dst];
    [(NSDictionary *)v23 setObject:v30 forKeyedSubscript:@"ref port subtype"];

    v31 = MEMORY[0x277CCACA8];
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__dst, v76[1]);
    v32 = [v31 stringWithUTF8String:__dst];
    [(NSDictionary *)v23 setObject:v32 forKeyedSubscript:@"ref port endpoint type"];

    v33 = MEMORY[0x277CCACA8];
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__dst, v76[0]);
    v34 = [v33 stringWithUTF8String:__dst];
    [(NSDictionary *)v23 setObject:v34 forKeyedSubscript:@"mic port subtype"];

    v35 = MEMORY[0x277CCACA8];
    CAX4CCStringNoQuote::CAX4CCStringNoQuote(__dst, v75);
    v36 = [v35 stringWithUTF8String:__dst];
    [(NSDictionary *)v23 setObject:v36 forKeyedSubscript:@"mic port endpoint type"];

    v37 = MEMORY[0x277CCACA8];
    strcpy(__s, "j327");
    v38 = strlen(__s);
    if (v38 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v39 = v38;
    if (v38 >= 0x17)
    {
      operator new();
    }

    BYTE3(v82) = v38;
    if (v38)
    {
      memcpy(__dst, __s, v38);
    }

    __dst[v39] = 0;
    if ((v82 & 0x80000000) == 0)
    {
      v40 = __dst;
    }

    else
    {
      v40 = *__dst;
    }

    v41 = [v37 stringWithUTF8String:v40];
    if (SBYTE3(v82) < 0)
    {
      operator delete(*__dst);
    }

    v42 = [(NSDictionary *)v23 objectForKeyedSubscript:@"ref port subtype"];
    if ([v42 isEqualToString:v41])
    {
      v43 = [(NSDictionary *)v23 objectForKeyedSubscript:@"mic port subtype"];
      v44 = [v43 isEqualToString:v41];

      if (v44)
      {
        v11 = 6;
LABEL_94:

        goto LABEL_95;
      }
    }

    else
    {
    }

    v45 = MEMORY[0x277CCACA8];
    strcpy(__s, "j427");
    v46 = strlen(__s);
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v47 = v46;
    if (v46 >= 0x17)
    {
      operator new();
    }

    BYTE3(v82) = v46;
    if (v46)
    {
      memcpy(__dst, __s, v46);
    }

    __dst[v47] = 0;
    if ((v82 & 0x80000000) == 0)
    {
      v48 = __dst;
    }

    else
    {
      v48 = *__dst;
    }

    v49 = [v45 stringWithUTF8String:v48];
    if (SBYTE3(v82) < 0)
    {
      operator delete(*__dst);
    }

    v50 = [(NSDictionary *)v23 objectForKeyedSubscript:@"ref port subtype"];
    if ([v50 isEqualToString:v49])
    {
      v51 = [(NSDictionary *)v23 objectForKeyedSubscript:@"mic port subtype"];
      v52 = [v51 isEqualToString:v49];

      if (v52)
      {
        v11 = 6;
LABEL_93:

        goto LABEL_94;
      }
    }

    else
    {
    }

    v53 = @"VP configuration info";
    v54 = [GetVoiceProcessorVersion(vp::Context const& unsigned int];
    v55 = [v54 containsObject:@"VP configuration info"];

    if (v55)
    {
      v56 = [GetVoiceProcessorVersion(vp::Context const& unsigned int];
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v57 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v58 = *v57;
        if (!*v57)
        {
          v58 = MEMORY[0x277D86220];
        }

        v59 = v58;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = [(__CFString *)@"VP configuration info" UTF8String];
          *__dst = 136315650;
          *&__dst[4] = "vpDSPEngineConfiguration.mm";
          v79 = 1024;
          v80 = 242;
          v81 = 2080;
          v82 = v60;
          _os_log_impl(&dword_2724B4000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't get DSPEngine configuration tree %s", __dst, 0x1Cu);
        }
      }

      v56 = 0;
    }

    v61 = LookUpTreeGet(v23, v56);

    v62 = [v61 objectForKeyedSubscript:@"vp version"];
    v63 = [v61 objectForKeyedSubscript:@"unknown device"];
    v64 = v63;
    if (v63 && [v63 unsignedIntegerValue])
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v65 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v66 = *v65;
        if (!*v65)
        {
          v66 = MEMORY[0x277D86220];
        }

        v67 = v66;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *__dst = 136315394;
          *&__dst[4] = "vpDSPEngineConfiguration.mm";
          v79 = 1024;
          v80 = 461;
          _os_log_impl(&dword_2724B4000, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown or unsupported device!!", __dst, 0x12u);
        }
      }
    }

    if (v62)
    {
      v11 = [v62 unsignedIntegerValue];
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v68 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v69 = *v68;
        if (!*v68)
        {
          v69 = MEMORY[0x277D86220];
        }

        v70 = v69;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *__dst = 136315394;
          *&__dst[4] = "vpDSPEngineConfiguration.mm";
          v79 = 1024;
          v80 = 467;
          _os_log_impl(&dword_2724B4000, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d Couldn't find the VP version in the DSPEngine configuration file!", __dst, 0x12u);
        }
      }

      v11 = 3;
    }

    goto LABEL_93;
  }

  v11 = AppIntegerValue;
LABEL_95:
  v71 = *MEMORY[0x277D85DE8];
  return v11;
}

void ECApplicator::ECApplicator(ECApplicator *this, VoiceProcessorV4 *a2, int a3, int a4)
{
  *this = a2;
  *(this + 2) = a3;
  *(this + 12) = 1;
  *(this + 16) = 2;
  *(this + 17) = a4;
  if ((*(*a2 + 112))(a2) == 6)
  {
    *(this + 1) = xmmword_272756510;
    *(this + 2) = xmmword_272756520;
  }

  (*(*a2 + 112))(a2);
  *(this + 1) = xmmword_272756510;
  *(this + 2) = xmmword_272756520;
  operator new[]();
}

uint64_t ECApplicator::setInputOutputABLs(uint64_t this, AudioBufferList **a2, AudioBufferList ***a3)
{
  v3 = *(this + 64);
  if (v3)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      *(*(this + 48) + v4) = a2[v4 / 8];
      v4 += 8;
    }

    while (v5 != v4);
  }

  v6 = *(this + 68);
  if (v6)
  {
    v7 = 0;
    v8 = 8 * v6;
    do
    {
      v9 = a3[v7 / 8];
      if (v9)
      {
        v9 = *v9;
      }

      *(*(this + 56) + v7) = v9;
      v7 += 8;
    }

    while (v8 != v7);
  }

  return this;
}

uint64_t ECApplicator::apply(AudioUnitParameterID *this, AudioTimeStamp *a2, unsigned int a3, BOOL *a4, float *a5, float *a6, float *a7, float *a8, float *a9, float *a10)
{
  *a4 = 1;
  ioActionFlags = 512;
  v16 = *this;
  if (*(v16[177] + a3))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = (*(*v16 + 112))(v16);
  v19 = *this;
  if (v18 >= 6 && (*(v19 + 2260) & 1) == 0)
  {
    if (v19[1108] & 1) != 0 && (v19[1109])
    {
      v20 = v19[439];
      if (v20)
      {
        if (*(v19 + 16284) == 1 && *(v19 + 4070) >= 2u)
        {
          outValue = 0.0;
          if (!AudioUnitGetParameter(v20, 0x65637232u, 0, 0, &outValue))
          {
            AudioUnitSetParameter(*(*this + 8 * this[2] + 2792), 0x30u, 0, 0, outValue, 0);
          }
        }
      }
    }

    v19 = *this;
    if (*(*this + 8864) & 1) != 0 && (v19[1109])
    {
      v21 = v19[439];
      if (v21)
      {
        if (*(v19 + 16284) == 1 && *(v19 + 4070) >= 2u)
        {
          inValue = 0.0;
          if (!AudioUnitGetParameter(v21, 0x65637233u, 0, 0, &inValue))
          {
            AudioUnitSetParameter(*(*this + 8 * this[2] + 2792), 0x31u, 0, 0, inValue, 0);
          }

          v19 = *this;
        }
      }
    }
  }

  AudioUnitSetParameter(v19[this[2] + 349], this[4], 0, 0, v17, 0);
  AudioUnitSetParameter(*(*this + 8 * this[2] + 2792), this[5], 0, 0, *(*this + 4400), 0);
  AudioUnitProcessMultiple(*(*this + 8 * this[2] + 2792), &ioActionFlags, a2, *(*this + 516), this[16], *(this + 6), this[17], *(this + 7));
  if (*(this + 12) == 1)
  {
    memcpy(*(**(this + 6) + 16), *(**(this + 7) + 16), 4 * *(*this + 516));
  }

  AudioUnitGetParameter(*(*this + 8 * this[2] + 2792), this[6], 0, 0, a5);
  AudioUnitGetParameter(*(*this + 8 * this[2] + 2792), this[7], 0, 0, a6);
  AudioUnitGetParameter(*(*this + 8 * this[2] + 2792), this[8], 0, 0, a7);
  AudioUnitGetParameter(*(*this + 8 * this[2] + 2792), this[9], 0, 0, a8);
  AudioUnitGetParameter(*(*this + 8 * this[2] + 2792), this[10], 0, 0, a9);
  return AudioUnitGetParameter(*(*this + 8 * this[2] + 2792), this[11], 0, 0, a10);
}

void VPGetPropsPListStringForKey(CFStringRef *a1, uint64_t a2)
{
  v3 = 1296;
  for (i = &kVPPropsPListKeyNameTable; *i != a2; i += 4)
  {
    v3 -= 16;
    if (!v3)
    {
      *a1 = 0;
      return;
    }
  }

  v5 = *(i + 1);
  if (v5)
  {
    CFRetain(*(i + 1));
    *a1 = v5;
    v6 = CFGetTypeID(v5);
    if (v6 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v7 = *a1;
  }

  else
  {
    v7 = 0;
    *a1 = 0;
  }

  location = CFStringFind(v7, @".", 0).location;
  if ((location & 0x8000000000000000) == 0)
  {
    Length = CFStringGetLength(*a1);
    v16.location = location + 2;
    v16.length = Length - (location + 2);
    v10 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], *a1, v16);
    v11 = v10;
    if (v10)
    {
      v12 = CFGetTypeID(v10);
      if (v12 != CFStringGetTypeID())
      {
        v15 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v15, "Could not construct");
      }
    }

    v13 = *a1;
    *a1 = v11;
    if (v13)
    {
      CFRelease(v13);
    }
  }
}

void sub_272531354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  applesauce::CF::StringRef::~StringRef(v10);
  _Unwind_Resume(a1);
}

uint64_t myAllocABLDynamic(const AudioStreamBasicDescription *a1, int a2, AudioBufferList **a3)
{
  mFormatFlags = a1->mFormatFlags;
  myFreeABLDynamic(a3);
  if ((mFormatFlags & 0x20) == 0)
  {
    v7 = malloc_type_malloc(0x18uLL, 0x2365AC71uLL);
    if (v7)
    {
      v8 = v7;
      *(v7 + 12) = 0;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *a3 = v7;
      *v7 = 1;
      goto LABEL_6;
    }

LABEL_17:
    exception = __cxa_allocate_exception(8uLL);
    v22 = std::bad_alloc::bad_alloc(exception);
  }

  v9 = 16 * (a1->mChannelsPerFrame - 1);
  v10 = malloc_type_malloc(v9 + 24, 0x2365AC71uLL);
  if (!v10)
  {
    goto LABEL_17;
  }

  v8 = v10;
  bzero(v10, v9 + 24);
  *a3 = v8;
  mChannelsPerFrame = a1->mChannelsPerFrame;
  v8->mNumberBuffers = mChannelsPerFrame;
  if (!mChannelsPerFrame)
  {
    return 0;
  }

LABEL_6:
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = a1->mChannelsPerFrame;
    if ((mFormatFlags & 0x20) != 0)
    {
      v14 = 1;
    }

    v15 = v8 + v12 * 16;
    v16 = a1->mBytesPerFrame * a2;
    *(v15 + 2) = v14;
    *(v15 + 3) = v16;
    v17 = malloc_type_malloc(v16, 0x2365AC71uLL);
    if (v16)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      goto LABEL_17;
    }

    v19 = v17;
    bzero(v17, v16);
    (*a3)->mBuffers[v12].mData = v19;
    v8 = *a3;
    if (!(*a3)->mBuffers[v12].mData)
    {
      return 4294967188;
    }

    ++v13;
    ++v12;
    if (v13 >= v8->mNumberBuffers)
    {
      return 0;
    }
  }
}

void myFreeABLDynamic(AudioBufferList **a1)
{
  v2 = *a1;
  if (v2)
  {
    mNumberBuffers = *v2;
    if (mNumberBuffers)
    {
      v4 = 0;
      v5 = 4;
      do
      {
        if (*&v2[v5])
        {
          free(*&v2[v5]);
          *(&(*a1)->mNumberBuffers + v5 * 4) = 0;
          v2 = *a1;
          mNumberBuffers = (*a1)->mNumberBuffers;
        }

        ++v4;
        v5 += 4;
      }

      while (v4 < mNumberBuffers);
    }

    free(v2);
    *a1 = 0;
  }
}

void WritePropertyListToFile(CFPropertyListRef *a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  errorCode = 0;
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x600u);
  v5 = CFURLCreateWithFileSystemPath(v3, v4, kCFURLPOSIXPathStyle, 0);
  Data = CFPropertyListCreateData(v3, *a1, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!CFURLWriteDataAndPropertiesToResource(v5, Data, 0, &errorCode))
  {
    if (VPGenCppUtilsLogScope(void)::once != -1)
    {
      dispatch_once(&VPGenCppUtilsLogScope(void)::once, &__block_literal_global_2383);
    }

    if (VPGenCppUtilsLogScope(void)::scope)
    {
      v8 = *VPGenCppUtilsLogScope(void)::scope;
      if (!*VPGenCppUtilsLogScope(void)::scope)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v11 = "vpGenCppUtils.cpp";
      v12 = 1024;
      v13 = 284;
      v14 = 1024;
      v15 = errorCode;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d _vp: plist write to file: err-%d writing plist", buf, 0x18u);
    }
  }

LABEL_2:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void WriteItemToDictionary(__CFDictionary **a1, const void **a2, int a3, unint64_t a4, const char *valuePtr)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v10 = *MEMORY[0x277CBECE8];
      SystemEncoding = CFStringGetSystemEncoding();
      v12 = CFStringCreateWithCString(v10, valuePtr, SystemEncoding);
LABEL_16:
      v13 = v12;
      goto LABEL_18;
    }

    if (a4 >= 4)
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = kCFNumberIntType;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (a3 == 2)
  {
    if (a4 >= 4)
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = kCFNumberFloat32Type;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (a3 == 3)
  {
    if (a4 >= 8)
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = kCFNumberFloat64Type;
LABEL_15:
      v12 = CFNumberCreate(v8, v9, valuePtr);
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (a4 < 8)
  {
LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v13 = *valuePtr;
  if (*valuePtr)
  {
    CFRetain(v13);
  }

LABEL_18:
  if (CFDictionaryContainsKey(*a1, *a2))
  {
    Value = CFDictionaryGetValue(*a1, *a2);
    Mutable = Value;
    if (Value)
    {
      CFRetain(Value);
      if (v13)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (v13)
    {
LABEL_21:
      CFArrayAppendValue(Mutable, v13);
    }
  }

  CFDictionarySetValue(*a1, *a2, Mutable);
  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

char *ASBDToText(const CAStreamBasicDescription *a1, char *__str)
{
  v4 = 0;
  v31 = *MEMORY[0x277D85DE8];
  v5 = 0uLL;
  do
  {
    *&__str[v4] = 0uLL;
    v4 += 16;
  }

  while (v4 != 512);
  v6 = *(a1 + 2);
  if (v6 == 1819304813)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      *__str = 70;
      v8 = 1;
    }

    else
    {
      if ((v7 & 2) != 0)
      {
        snprintf(__str, 0x200uLL, "BE");
      }

      else
      {
        snprintf(__str, 0x200uLL, "LE");
      }

      if ((*(a1 + 12) & 4) != 0)
      {
        *(__str + 1) = 73;
        v8 = 3;
      }

      else
      {
        strcpy(__str + 2, "UI");
        v8 = 4;
      }
    }

    v13 = *(a1 + 8);
    if (((*(a1 + 3) >> 7) & 0x3F) != 0)
    {
      snprintf(__source, 0x14uLL, "%d.%d");
    }

    else
    {
      v25 = *(a1 + 8);
      snprintf(__source, 0x14uLL, "%d");
    }

    snprintf(&__str[v8], v8 | 0x200, "%s");
  }

  else
  {
    *__dst = 0;
    v27 = 0;
    v28 = 0;
    LODWORD(v5) = bswap32(v6);
    v9 = vzip1_s8(*&v5, *&v5);
    v10.i64[0] = 0x1F0000001FLL;
    v10.i64[1] = 0x1F0000001FLL;
    v11.i64[0] = 0x5F0000005FLL;
    v11.i64[1] = 0x5F0000005FLL;
    v12 = vbsl_s8(vmovn_s32(vcgtq_u32(v11, vsraq_n_s32(v10, vshlq_n_s32(vmovl_u16(v9), 0x18uLL), 0x18uLL))), v9, 0x2E002E002E002ELL);
    v30 = 4;
    *__source = vuzp1_s8(v12, v12).u32[0];
    __source[4] = 0;
    strlcpy(__dst, __source, 0x18uLL);
    if (v30 < 0)
    {
      operator delete(*__source);
    }

    __dst[5] = 0;
    snprintf(__str, 0x200uLL, "%s");
  }

  v14 = strlen(__str);
  snprintf(&__str[v14], v14 + 512, "@%.0f/%X", *a1, *(a1 + 3));
  v15 = strlen(__str);
  v16 = &__str[v15];
  if (*(a1 + 2) != 1819304813)
  {
    snprintf(v16, v15 + 512, "#%d", *(a1 + 5));
    v16 = &__str[strlen(__str)];
  }

  v17 = *(a1 + 6);
  v18 = *(a1 + 3);
  if (v17)
  {
    if ((v18 & 0x20) != 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = *(a1 + 7);
      if (!v19)
      {
        goto LABEL_38;
      }
    }

    if ((v17 / v19) < 1)
    {
      goto LABEL_38;
    }

    if (*(a1 + 2) != 1819304813)
    {
      CAVerboseAbort();
    }

    if ((v18 & 0x20) != 0)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(a1 + 7);
      if (!v20)
      {
LABEL_33:
        if (v20 != *(a1 + 8))
        {
          if ((v18 & 0x10) != 0)
          {
            v21 = "H";
          }

          else
          {
            v21 = "L";
          }

          snprintf(v16, v16 - __str + 512, ":%s%d", v21, v17);
          v16 = &__str[strlen(__str)];
          v18 = *(a1 + 3);
        }

        goto LABEL_38;
      }
    }

    v20 = 8 * (v17 / v20);
    goto LABEL_33;
  }

LABEL_38:
  if ((v18 & 0x20) != 0)
  {
    v22 = "D";
  }

  else
  {
    v22 = "I";
  }

  snprintf(v16, v16 - __str + 512, ",%d%s", *(a1 + 7), v22);
  v23 = *MEMORY[0x277D85DE8];
  return __str;
}

void sub_272531C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t BlockSizeHelper::GetNextFFTFriendlyBlkSz(unint64_t this)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20[4] = xmmword_27275AA98;
  v20[5] = unk_27275AAA8;
  v20[6] = xmmword_27275AAB8;
  v20[0] = xmmword_27275AA58;
  v20[1] = unk_27275AA68;
  v20[2] = xmmword_27275AA78;
  v20[3] = unk_27275AA88;
  __p = 0;
  v10 = 0;
  v11 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, v20, v21, 0x1CuLL);
  if ((this - 4097) < 0xFFFFF00F)
  {
    if (VPGenCppUtilsLogScope(void)::once != -1)
    {
      dispatch_once(&VPGenCppUtilsLogScope(void)::once, &__block_literal_global_2383);
    }

    if (VPGenCppUtilsLogScope(void)::scope)
    {
      v2 = *VPGenCppUtilsLogScope(void)::scope;
      if (!*VPGenCppUtilsLogScope(void)::scope)
      {
LABEL_18:
        this = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = "large";
      *buf = 136315906;
      v13 = "vpGenCppUtils.cpp";
      v15 = 526;
      v14 = 1024;
      if (this < 0x10)
      {
        v6 = "small";
      }

      v16 = 1024;
      v17 = this;
      v18 = 2080;
      v19 = v6;
      _os_log_impl(&dword_2724B4000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d GetNextFFTFriendlyBlkSz: input block size %d is too %s !!!", buf, 0x22u);
    }

    goto LABEL_18;
  }

  if (((v10 - __p) >> 2) < 1)
  {
LABEL_12:
    v4 = 0;
    v5 = 0;
LABEL_20:
    if (this - v5 >= v4 - this)
    {
      this = v4;
    }

    else
    {
      this = v5;
    }
  }

  else
  {
    v3 = 0;
    while (1)
    {
      v4 = *(__p + v3);
      if (v4 == this)
      {
        break;
      }

      if (v4 > this)
      {
        v5 = *(__p + v3 - 1);
        goto LABEL_20;
      }

      if ((((v10 - __p) >> 2) & 0x7FFFFFFF) == ++v3)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_23:
  if (__p)
  {
    operator delete(__p);
  }

  v7 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_272531EC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

AudioBufferList *GetMonoABL(AudioBufferList *a1, AudioBufferList *a2, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a1->mNumberBuffers < 2)
  {
    return a1;
  }

  v4 = a2;
  *&a2->mNumberBuffers = 0;
  *&a2->mBuffers[0].mNumberChannels = 0;
  a2->mBuffers[0].mData = 0;
  a2->mNumberBuffers = 1;
  a2->mBuffers[0] = a1->mBuffers[0];
  v9 = 1.0 / a1->mNumberBuffers;
  v5 = a3;
  MEMORY[0x2743CCE20](a1->mBuffers[0].mData, 1, &v9, a1->mBuffers[0].mData, 1, a3);
  if (a1->mNumberBuffers >= 2)
  {
    v6 = 1;
    v7 = 32;
    do
    {
      MEMORY[0x2743CCE10](*(&a1->mNumberBuffers + v7), 1, &v9, a1->mBuffers[0].mData, 1, a1->mBuffers[0].mData, 1, v5);
      ++v6;
      v7 += 16;
    }

    while (v6 < a1->mNumberBuffers);
  }

  return v4;
}

UInt32 *FadeSrcAToSrcB(UInt32 *result, const AudioBufferList *a2, AudioBufferList *a3, unsigned int a4, int a5)
{
  mNumberBuffers = a3->mNumberBuffers;
  if (a3->mNumberBuffers <= *result)
  {
    v19 = v8;
    v20 = v7;
    v21 = v5;
    v22 = v6;
    v11 = result;
    v12 = a3->mBuffers[0].mDataByteSize >> 2;
    if (v12 <= result[3] >> 2)
    {
      __Step = 1.0 / (v12 * a5);
      if (mNumberBuffers)
      {
        v14 = 0;
        v15 = a4;
        v16 = 16;
        do
        {
          __Start = (__Step * v15) * v12;
          MEMORY[0x2743CCE30](*&v11[v16 / 4], 1, *(&a2->mNumberBuffers + v16), 1, *(&a3->mNumberBuffers + v16), 1, v12);
          vDSP_vrampmul(*(&a3->mNumberBuffers + v16), 1, &__Start, &__Step, *(&a3->mNumberBuffers + v16), 1, v12);
          result = MEMORY[0x2743CCD80](*&v11[v16 / 4], 1, *(&a3->mNumberBuffers + v16), 1, *(&a3->mNumberBuffers + v16), 1, v12);
          ++v14;
          v16 += 16;
        }

        while (v14 < a3->mNumberBuffers);
      }
    }
  }

  return result;
}

void FadeOutOverOneFrame(AudioBufferList *a1, AudioBufferList *a2)
{
  if (a2->mNumberBuffers)
  {
    v4 = 0;
    p_mData = &a2->mBuffers[0].mData;
    do
    {
      bzero(*p_mData, *(p_mData - 1));
      ++v4;
      p_mData += 2;
    }

    while (v4 < a2->mNumberBuffers);
  }

  FadeSrcAToSrcB(&a1->mNumberBuffers, a2, a2, 0, 1);
  if (a1->mNumberBuffers)
  {
    v6 = 0;
    v7 = a1->mBuffers[0].mDataByteSize >> 2;
    v8 = 16;
    do
    {
      vDSP_vclr(*(&a1->mNumberBuffers + v8), 1, v7);
      ++v6;
      v8 += 16;
    }

    while (v6 < a1->mNumberBuffers);
  }
}

uint64_t FadeInOverFewFrames(AudioBufferList *a1, AudioBufferList *a2, uint64_t a3, int a4)
{
  if (!a2->mNumberBuffers)
  {
    goto LABEL_15;
  }

  v8 = 0;
  v9 = a2->mBuffers[0].mDataByteSize >> 2;
  v10 = 0.0;
  v11 = 16;
  do
  {
    __C = 0.0;
    vDSP_svemg(*(&a2->mNumberBuffers + v11), 1, &__C, v9);
    v10 = v10 + __C;
    if (__C != 0.0)
    {
      break;
    }

    ++v8;
    v11 += 16;
  }

  while (v8 < a2->mNumberBuffers);
  if (!a3 && v10 != 0.0)
  {
    if (a2->mNumberBuffers)
    {
      v12 = 0;
      v13 = 16;
      do
      {
        vDSP_vclr(*(&a2->mNumberBuffers + v13), 1, v9);
        ++v12;
        v13 += 16;
      }

      while (v12 < a2->mNumberBuffers);
      v14 = 0;
      a3 = 1;
    }

    else
    {
      v14 = 0;
      a3 = 1;
    }

    return v14 | (a3 << 32);
  }

  if (v10 == 0.0)
  {
LABEL_15:
    v14 = 0;
    return v14 | (a3 << 32);
  }

  FadeSrcAToSrcB(&a1->mNumberBuffers, a2, a2, a3 - 1, a4);
  v14 = a3 + 1 == a4;
  if (a3 + 1 == a4)
  {
    a3 = 0;
  }

  else
  {
    a3 = (a3 + 1);
  }

  return v14 | (a3 << 32);
}

void VoiceProcessorV2::InitDLSRCs(VoiceProcessorV2 *this)
{
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 48, 0);
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 49, 0);
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 50, 0);
  v2 = *(this + 232);
  *(this + 16) = *(this + 216);
  *(this + 17) = v2;
  *(this + 36) = *(this + 31);
  FarEndVoiceMixChannelCount = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this);
  v4 = *(this + 67);
  if ((v4 & 0x20) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(this + 71);
    if (!v5)
    {
      v6 = (*(this + 72) + 7) >> 3;
      goto LABEL_6;
    }
  }

  v6 = *(this + 70) / v5;
LABEL_6:
  *(this + 71) = FarEndVoiceMixChannelCount;
  *(this + 69) = 1;
  *(this + 70) = v6;
  *(this + 68) = v6;
  *(this + 67) = v4 | 0x20;
  v7 = *(this + 17);
  *(this + 296) = *(this + 16);
  *(this + 312) = v7;
  *(this + 41) = *(this + 36);
  v8 = COERCE_DOUBLE(GetVPPreferredClientSampleRate(*(this + 18), *(this + 20)));
  v10 = *(this + 20);
  if ((v10 - 5) >= 2)
  {
    if (v10 == 1 && *(this + 42) == 48000.0 && *(this + 27) == 48000.0)
    {
      v12 = *(this + 554);
      if (v12 > 0.0)
      {
        v13 = *(this + 294);
        if (v13 != *(this + 295) && *v13 != 1886614639)
        {
          v11 = fmaxf(v12, 16000.0);
          goto LABEL_20;
        }
      }
    }
  }

  else if (v9)
  {
    if (*(this + 42) >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = *(this + 42);
    }

    goto LABEL_20;
  }

  if (*(this + 27) >= *(this + 42))
  {
    v11 = *(this + 42);
  }

  else
  {
    v11 = *(this + 27);
  }

LABEL_20:
  *(this + 37) = v11;
  v14 = *(this + 554);
  if (v14 > 0.0 && v14 <= 16000.0)
  {
    v15 = (*(*this + 232))(this);
    v11 = *(this + 37);
    if (v15)
    {
      v16 = v11;
      if (v16 > 16000.0)
      {
        v16 = 16000.0;
      }

      v11 = v16;
      *(this + 37) = v16;
    }
  }

  v17 = *(this + 27);
  if (v11 != v17)
  {
    v18 = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this);
    VoiceProcessorV2::CreateSRC(__p, v17, v11, this, v18, v19, v20);
    v21 = __p[0];
    __p[0] = 0;
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 48, v21);
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](__p, 0);
    v11 = *(this + 37);
  }

  v22 = *(this + 42);
  if (v22 != v11)
  {
    v23 = VoiceProcessorV2::GetFarEndVoiceMixChannelCount(this);
    VoiceProcessorV2::CreateSRC(__p, v11, v22, this, v23, v24, v25);
    v26 = __p[0];
    __p[0] = 0;
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 49, v26);
    std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](__p, 0);
    myAllocABLDynamic((this + 296), *(this + 123), this + 25);
  }

  v27 = (*(*this + 232))(this);
  v31 = *(this + 42);
  if (v27)
  {
    v30 = *(this + 104);
    if (v31 != v30)
    {
      VoiceProcessorV2::CreateSRC(__p, v30, v31, this, 1, v28, v29);
      v32 = __p[0];
      __p[0] = 0;
      std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 50, v32);
      std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](__p, 0);
      LODWORD(v33) = *(this + 129);
      v34 = vcvtpd_u64_f64(*(this + 42) * v33 / *(this + 104));
      if (*(this + 123) <= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = *(this + 123);
      }

      myAllocABLDynamic((this + 336), v35, this + 1986);
      v31 = *(this + 42);
    }
  }

  LODWORD(v30) = *(this + 123);
  v36 = *(this + 37);
  v37 = vcvtpd_u64_f64(v36 * *&v30 / v31);
  v38 = (ceil(*(this + 27) * v37 / v36) + 1000.0);
  *(this + 94) = v38;
  myAllocABLDynamic((this + 216), v38, this + 14);
  myAllocABLDynamic((this + 256), *(this + 94), this + 23);
  myAllocABLDynamic((this + 256), v37 + 1000, this + 24);
  v39 = *(this + 1993);
  std::string::basic_string[abi:ne200100]<0>(__p, "dlfev");
  v40 = *(this + 94);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2421);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v39, __p, 51, this + 216, v40);
  }

  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  v41 = *(this + 1993);
  std::string::basic_string[abi:ne200100]<0>(__p, "dlout");
  v42 = *(this + 123);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2421);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v41, __p, 70, this + 336, v42);
  }

  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  v43 = *(this + 1993);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_2421);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v43);
  }
}

void sub_2725327C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_2427()
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

uint64_t VoiceProcessorV2::InitializeDownlinkProcessing(std::chrono::duration<long long, std::ratio<1, 1000000>>::rep a1, uint64_t a2, UInt32 a3, uint64_t a4, void *a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v79 = a1 + 2408;
  v80 = (*(*(a1 + 2408) + 16))();
  atomic_fetch_add((a1 + 2496), 1u);
  while (*(a1 + 2500))
  {
    usleep(0x1F4u);
  }

  ++VoiceProcessorV2::InitializeDownlinkProcessing(AudioStreamBasicDescription const&,unsigned int,AudioStreamBasicDescription const&,int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *))::initDownlinkProcessingCallCount;
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v11 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "vpInitializeDownlink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 121;
      *&buf[18] = 1024;
      *&buf[20] = VoiceProcessorV2::InitializeDownlinkProcessing(AudioStreamBasicDescription const&,unsigned int,AudioStreamBasicDescription const&,int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *))::initDownlinkProcessingCallCount;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> initializedlp: call num %u", buf, 0x18u);
    }
  }

  v13 = *(a1 + 12704);
  if (v13 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v13, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 121, "InitializeDownlinkProcessing", "initializedlp: call num %u", VoiceProcessorV2::InitializeDownlinkProcessing(AudioStreamBasicDescription const&,unsigned int,AudioStreamBasicDescription const&,int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *))::initDownlinkProcessingCallCount);
  }

  if (*(a1 + 15881) == 1)
  {
    if (*(a1 + 12632) == 1)
    {
      LODWORD(v10) = *(a1 + 492);
      VoiceProcessorV2::WriteTSOverload(a1, *(a1 + 12624) - v10, *(a1 + 12624) - v10, 2);
    }

    *(a1 + 12632) = 0;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v14 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
  {
    v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      CAFormatter::CAFormatter(v76, a2);
      v16 = v76[0];
      CAFormatter::CAFormatter(&v87, a4);
      *buf = 136316162;
      *&buf[4] = "vpInitializeDownlink.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 133;
      *&buf[18] = 2080;
      *&buf[20] = v16;
      *&buf[28] = 1024;
      *&buf[30] = a3;
      *&buf[34] = 2080;
      *&buf[36] = v87.mSampleRate;
      _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> mix %s (blksz %u), voice %s", buf, 0x2Cu);
      if (*&v87.mSampleRate)
      {
        free(*&v87.mSampleRate);
      }

      if (v76[0])
      {
        free(v76[0]);
      }
    }
  }

  v17 = *(a1 + 12704);
  if (v17 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v18 = a5;
    v19 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(buf, a2);
    v20 = *buf;
    CAFormatter::CAFormatter(v76, a4);
    CALegacyLog::log(v17, 4, v19, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 133, "InitializeDownlinkProcessing", "mix %s (blksz %u), voice %s", v20, a3, v76[0]);
    a5 = v18;
    if (v76[0])
    {
      free(v76[0]);
    }

    if (*buf)
    {
      free(*buf);
    }
  }

  v21 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v21;
  *&buf[32] = *(a2 + 32);
  v22 = *(a4 + 16);
  *v76 = *a4;
  v77 = v22;
  v78 = *(a4 + 32);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v23 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v24 = (*v23 ? *v23 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(&v75, buf);
      LODWORD(v87.mSampleRate) = 136315650;
      *(&v87.mSampleRate + 4) = "vpInitializeDownlink.cpp";
      LOWORD(v87.mFormatFlags) = 1024;
      *(&v87.mFormatFlags + 2) = 138;
      HIWORD(v87.mBytesPerPacket) = 2080;
      *&v87.mFramesPerPacket = v75.mSampleRate;
      _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initializedlp:   mix asbd = %s", &v87, 0x1Cu);
      if (*&v75.mSampleRate)
      {
        free(*&v75.mSampleRate);
      }
    }
  }

  v25 = *(a1 + 12704);
  if (v25 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v26 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(&v87, buf);
    CALegacyLog::log(v25, 5, v26, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 138, "InitializeDownlinkProcessing", "initializedlp:   mix asbd = %s", *&v87.mSampleRate);
    if (*&v87.mSampleRate)
    {
      free(*&v87.mSampleRate);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v27 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v28 = (*v27 ? *v27 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      CAFormatter::CAFormatter(&v75, v76);
      LODWORD(v87.mSampleRate) = 136315650;
      *(&v87.mSampleRate + 4) = "vpInitializeDownlink.cpp";
      LOWORD(v87.mFormatFlags) = 1024;
      *(&v87.mFormatFlags + 2) = 140;
      HIWORD(v87.mBytesPerPacket) = 2080;
      *&v87.mFramesPerPacket = v75.mSampleRate;
      _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initializedlp: voice asbd = %s", &v87, 0x1Cu);
      if (*&v75.mSampleRate)
      {
        free(*&v75.mSampleRate);
      }
    }
  }

  v29 = *(a1 + 12704);
  if (v29 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v30 = VPLogScope(void)::scope;
    CAFormatter::CAFormatter(&v87, v76);
    CALegacyLog::log(v29, 5, v30, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 140, "InitializeDownlinkProcessing", "initializedlp: voice asbd = %s", *&v87.mSampleRate);
    if (*&v87.mSampleRate)
    {
      free(*&v87.mSampleRate);
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v31 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v32 = (*v31 ? *v31 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v87.mSampleRate) = 136315650;
      *(&v87.mSampleRate + 4) = "vpInitializeDownlink.cpp";
      LOWORD(v87.mFormatFlags) = 1024;
      *(&v87.mFormatFlags + 2) = 141;
      HIWORD(v87.mBytesPerPacket) = 1024;
      v87.mFramesPerPacket = a3;
      _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initializedlp: mix blk sz = %d", &v87, 0x18u);
    }
  }

  v33 = *(a1 + 12704);
  if (v33 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v33, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 141, "InitializeDownlinkProcessing", "initializedlp: mix blk sz = %d", a3);
  }

  v34 = *&buf[16];
  *(a1 + 336) = *buf;
  *(a1 + 352) = v34;
  v35 = v77;
  *(a1 + 216) = *v76;
  *(a1 + 368) = *&buf[32];
  *(a1 + 232) = v35;
  *(a1 + 248) = v78;
  *(a1 + 492) = a3;
  *(a1 + 524) = a3;
  *(a1 + 528) = 1;
  if ((a3 & 3) == 0)
  {
    v42 = *(a1 + 76);
    if (v42 <= 0x2A && ((0x5100007FFFEuLL >> v42) & 1) != 0)
    {
      v43 = *(a1 + 2352);
      if (v43 == *(a1 + 2360) || *v43 != 1886614639)
      {
        v44 = *(a1 + 80);
        if ((v44 - 5) >= 2)
        {
          if (v44 != 1)
          {
LABEL_178:
            *(a1 + 528) = *(a1 + 492) / a3;
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v70 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v71 = (*v70 ? *v70 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                v72 = *(a1 + 524);
                v73 = *(a1 + 528);
                LODWORD(v87.mSampleRate) = 136315906;
                *(&v87.mSampleRate + 4) = "vpInitializeDownlink.cpp";
                LOWORD(v87.mFormatFlags) = 1024;
                *(&v87.mFormatFlags + 2) = 601;
                HIWORD(v87.mBytesPerPacket) = 1024;
                v87.mFramesPerPacket = v72;
                LOWORD(v87.mBytesPerFrame) = 1024;
                *(&v87.mBytesPerFrame + 2) = v73;
                _os_log_impl(&dword_2724B4000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> +++ dl io blk size = %u, num dl io cycles = %u", &v87, 0x1Eu);
              }
            }

            v74 = *(a1 + 12704);
            if (v74 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v74, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 601, "CalcDLIoBlkSz", "+++ dl io blk size = %u, num dl io cycles = %u", *(a1 + 524), *(a1 + 528));
            }

            goto LABEL_94;
          }

          ShouldUseOptimizedBlockSizeForFacePlant = VoiceProcessorV2::ShouldUseOptimizedBlockSizeForFacePlant(a1);
          v46 = *(a1 + 524);
          if (ShouldUseOptimizedBlockSizeForFacePlant)
          {
            v68 = *(a1 + 336);
            while (v46 / v68 > 0.01)
            {
              a3 = v46 >> 1;
              *(a1 + 524) = v46 >> 1;
              if (v46 >= 0x82)
              {
                v69 = v46 & 6;
                v46 >>= 1;
                if (!v69)
                {
                  continue;
                }
              }

              goto LABEL_178;
            }
          }
        }

        else
        {
          v45 = *(a1 + 336);
          v46 = a3;
          while (v46 / v45 > 0.016)
          {
            a3 = v46 >> 1;
            *(a1 + 524) = v46 >> 1;
            if (v46 >= 0x82)
            {
              v47 = v46 & 6;
              v46 >>= 1;
              if (!v47)
              {
                continue;
              }
            }

            goto LABEL_178;
          }
        }

        a3 = v46;
        goto LABEL_178;
      }
    }
  }

LABEL_94:
  if (*(a1 + 364) == 1)
  {
    *(a1 + 348) |= 0x20u;
  }

  if (*(a1 + 244) == 1)
  {
    *(a1 + 228) |= 0x20u;
  }

  *(a1 + 12612) = 0;
  VoiceProcessorV2::InitDLSRCs(a1);
  v36 = *(a1 + 352);
  *&v87.mSampleRate = *(a1 + 336);
  *&v87.mBytesPerPacket = v36;
  *&v87.mBitsPerChannel = *(a1 + 368);
  v87.mChannelsPerFrame = 4;
  myAllocABLDynamic(&v87, *(a1 + 492), (a1 + 208));
  if (a5)
  {
    a5 = _Block_copy(a5);
  }

  std::__destroy_at[abi:ne200100]<vp::Block<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,0>((a1 + 104));
  *(a1 + 104) = a5;
  if (!*(a1 + 1640))
  {
    if (*(a1 + 492) <= 0x1000u)
    {
      v37 = 4096;
    }

    else
    {
      v37 = *(a1 + 492);
    }

    v38 = *(a1 + 352);
    *&v75.mSampleRate = *(a1 + 336);
    *&v75.mBytesPerPacket = v38;
    *&v75.mBitsPerChannel = *(a1 + 368);
    v39 = *(a1 + 348) & 0x20;
    if ((v75.mFormatFlags & 0x20) != 0)
    {
      mChannelsPerFrame = 1;
    }

    else
    {
      mChannelsPerFrame = v75.mChannelsPerFrame;
      if (!v75.mChannelsPerFrame)
      {
        v41 = (v75.mBitsPerChannel + 7) >> 3;
LABEL_119:
        v75.mChannelsPerFrame = 8;
        if (v39)
        {
          v48 = 0;
        }

        else
        {
          v48 = 3;
        }

        v75.mFramesPerPacket = 1;
        v75.mBytesPerFrame = v41 << v48;
        v75.mFormatFlags = v75.mFormatFlags & 0xFFFFFFDF | v39;
        v75.mBytesPerPacket = v41 << v48;
        myAllocABLDynamic(&v75, v37, (a1 + 1640));
        v49 = *(a1 + 1640);
        if (*v49)
        {
          v50 = 0;
          v51 = (v49 + 4);
          do
          {
            bzero(*v51, *(v51 - 1));
            ++v50;
            v51 += 2;
          }

          while (v50 < *v49);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v52 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
        {
          v53 = (*v52 ? *v52 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *v81 = 136315650;
            v82 = "vpInitializeDownlink.cpp";
            v83 = 1024;
            v84 = 214;
            v85 = 1024;
            v86 = v37;
            _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> DL Fade data size = %u", v81, 0x18u);
          }
        }

        v54 = *(a1 + 12704);
        if (v54 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v54, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 214, "InitializeDownlinkProcessing", "DL Fade data size = %u", v37);
        }

        goto LABEL_140;
      }
    }

    v41 = v75.mBytesPerFrame / mChannelsPerFrame;
    goto LABEL_119;
  }

LABEL_140:
  VoiceProcessorV2::InitializeDLP(a1);
  AUPropAndParamHelper::AddItemToAUParamList((a1 + 8976), 1937141612, *(a1 + 12608));
  if ((*(a1 + 8864) & 0x10) != 0 && (*(a1 + 8872) & 0x10) != 0)
  {
    v55 = *(a1 + 3544);
    if (v55)
    {
      AudioUnitSetParameter(v55, 0x73766F6Cu, 0, 0, *(a1 + 12608), 0);
    }
  }

  v56 = atomic_load((a1 + 2324));
  *(a1 + 2320) = v56;
  AUPropAndParamHelper::AddItemToAUParamList((a1 + 9792), 0, v56);
  if ((*(a1 + 8868) & 0x40) != 0 && (*(a1 + 8876) & 0x40) != 0)
  {
    v57 = *(a1 + 3816);
    if (v57)
    {
      AudioUnitSetParameter(v57, 0, 0, 0, *(a1 + 2320), 0);
    }
  }

  AUPropAndParamHelper::AddItemToAUParamList((a1 + 9816), 0, *(a1 + 2320));
  if ((*(a1 + 8868) & 0x80) != 0 && (*(a1 + 8876) & 0x80) != 0)
  {
    v58 = *(a1 + 3824);
    if (v58)
    {
      AudioUnitSetParameter(v58, 0, 0, 0, *(a1 + 2320), 0);
    }
  }

  AUPropAndParamHelper::AddItemToAUParamList((a1 + 9840), 0, *(a1 + 2320));
  if (*(a1 + 8869) & 1) != 0 && (*(a1 + 8877))
  {
    v59 = *(a1 + 3832);
    if (v59)
    {
      AudioUnitSetParameter(v59, 0, 0, 0, *(a1 + 2320), 0);
    }
  }

  if ((*(a1 + 2261) & 1) != 0 || !*(a1 + 80) && *(a1 + 244) == 2)
  {
    AUPropAndParamHelper::AddItemToAUParamList((a1 + 9888), 0, *(a1 + 2320));
    if ((*(a1 + 8869) & 4) != 0 && (*(a1 + 8877) & 4) != 0)
    {
      v60 = *(a1 + 3848);
      if (v60)
      {
        AudioUnitSetParameter(v60, 0, 0, 0, *(a1 + 2320), 0);
      }
    }
  }

  if ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1)
  {
    VoiceProcessorV2::PListWriteInitializeDLPParameters(a1);
    if (*(a1 + 15881))
    {
      VoiceProcessorV2::LoopBackInitialize(a1, v61, v62, v63, v64);
    }
  }

  atomic_fetch_add((a1 + 2496), 0xFFFFFFFF);
  if (v80 == 1)
  {
    (*(*v79 + 24))(v79);
  }

  v65 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_272533964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  atomic_fetch_add((v31 + 2496), 0xFFFFFFFF);
  CADeprecated::CAMutex::Locker::~Locker(&a25);
  _Unwind_Resume(a1);
}

void std::__destroy_at[abi:ne200100]<vp::Block<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,0>(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }
}

void VoiceProcessorV2::InitializeDLP(VoiceProcessorV2 *this)
{
  v1 = this;
  v257 = *MEMORY[0x277D85DE8];
  v235 = this + 12288;
  v232 = (this + 592);
  if (VoiceProcessorV2::ShouldGenerateReferenceSignalInternally(this))
  {
    v2 = v1 + 336;
    if (!CAStreamBasicDescription::IsEqual((v1 + 336), (v1 + 592)))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v3 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v4 = (*v3 ? *v3 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(v1 + 38);
          *&block[0].mSelector = *&v232->mSampleRate;
          *&block[1].mScope = v5;
          *&block[2].mElement = *(v1 + 78);
          p_outData = &outData;
          CA::StreamDescription::AsString(&outData, block, *&block[0].mSelector, *&v5);
          if (v246 < 0)
          {
            p_outData = outData;
          }

          v7 = *(v1 + 22);
          *&v241.mSampleRate = *v2;
          *&v241.mBytesPerPacket = v7;
          *&v241.mBitsPerChannel = *(v1 + 46);
          CA::StreamDescription::AsString(&__p, &v241, v241.mSampleRate, *&v7);
          if (v249 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315906;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3284;
          *&buf[18] = 2080;
          *&buf[20] = p_outData;
          v251 = 2080;
          v252 = p_p;
          _os_log_impl(&dword_2724B4000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Updating hwRef to match dlMix format:\n was: %s\n now: %s", buf, 0x26u);
          if (v249 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v246) < 0)
          {
            operator delete(outData);
          }
        }
      }

      v9 = *(v1 + 1588);
      if (!v9 || (v235[3593] & 1) == 0 && v235[3594] != 1)
      {
        goto LABEL_71;
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v10 = VPLogScope(void)::scope;
      v11 = *(v1 + 38);
      *&block[0].mSelector = *&v232->mSampleRate;
      *&block[1].mScope = v11;
      *&block[2].mElement = *(v1 + 78);
      v12 = buf;
      CA::StreamDescription::AsString(buf, block, *&block[0].mSelector, *&v11);
      if (buf[23] < 0)
      {
        v12 = *buf;
      }

      v13 = *(v1 + 22);
      *&v241.mSampleRate = *v2;
      *&v241.mBytesPerPacket = v13;
      *&v241.mBitsPerChannel = *(v1 + 46);
      CA::StreamDescription::AsString(&outData, &v241, v241.mSampleRate, *&v13);
      if (v246 >= 0)
      {
        v14 = &outData;
      }

      else
      {
        v14 = outData;
      }

      CALegacyLog::log(v9, 3, v10, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 3284, "UpdateReferenceSignalFormat", "Updating hwRef to match dlMix format:\n was: %s\n now: %s", v12, v14);
LABEL_67:
      if (SHIBYTE(v246) < 0)
      {
        operator delete(outData);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

LABEL_71:
      v27 = *(v2 + 1);
      *&v232->mSampleRate = *v2;
      *(v1 + 38) = v27;
      *(v1 + 78) = *(v2 + 4);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v28 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v29 = (*v28 ? *v28 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          block[0].mSelector = 136315394;
          *&block[0].mScope = "vpInitializeDownlink.cpp";
          LOWORD(block[1].mSelector) = 1024;
          *(&block[1].mSelector + 2) = 317;
          _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> InitializeDLP: hwref and dlmix formats were mismatched -- calling Initialize again", block, 0x12u);
        }
      }

      v30 = *(v1 + 1588);
      if (v30 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v30, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 317, "InitializeDLP", "InitializeDLP: hwref and dlmix formats were mismatched -- calling Initialize again");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v31 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v32 = (*v31 ? *v31 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          block[0].mSelector = 136315394;
          *&block[0].mScope = "vpInitializeDownlink.cpp";
          LOWORD(block[1].mSelector) = 1024;
          *(&block[1].mSelector + 2) = 318;
          _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (UpdateReferenceSignalFormat)", block, 0x12u);
        }
      }

      v33 = *(v1 + 1588);
      if (v33 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v33, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 318, "InitializeDLP", "Begin self-reinit (UpdateReferenceSignalFormat)");
      }

      (*(*v1 + 240))(v1);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v34 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v35 = (*v34 ? *v34 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          block[0].mSelector = 136315394;
          *&block[0].mScope = "vpInitializeDownlink.cpp";
          LOWORD(block[1].mSelector) = 1024;
          *(&block[1].mSelector + 2) = 320;
          _os_log_impl(&dword_2724B4000, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (UpdateReferenceSignalFormat)", block, 0x12u);
        }
      }

      v36 = *(v1 + 1588);
      if (v36 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v36, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 320, "InitializeDLP", "End self-reinit (UpdateReferenceSignalFormat)");
      }
    }
  }

  else if (*(v1 + 69) != *(v1 + 74) || *(v1 + 140) != *(v1 + 150) || *(v1 + 141) != *(v1 + 151) || *(v1 + 142) != *(v1 + 152) || *(v1 + 143) != *(v1 + 153) || *(v1 + 144) != *(v1 + 154) || *(v1 + 145) != *(v1 + 155) || *(v1 + 146) != *(v1 + 156))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v2 = v1 + 552;
    v15 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v16 = (*v15 ? *v15 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *&v232->mBytesPerPacket;
        *&block[0].mSelector = *&v232->mSampleRate;
        *&block[1].mScope = v17;
        *&block[2].mElement = *&v232->mBitsPerChannel;
        v18 = &outData;
        CA::StreamDescription::AsString(&outData, block, *&block[0].mSelector, *&v17);
        if (v246 < 0)
        {
          v18 = outData;
        }

        v19 = *(v1 + 568);
        *&v241.mSampleRate = *v2;
        *&v241.mBytesPerPacket = v19;
        *&v241.mBitsPerChannel = *(v1 + 73);
        CA::StreamDescription::AsString(&__p, &v241, v241.mSampleRate, *&v19);
        if (v249 >= 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p;
        }

        *buf = 136315906;
        *&buf[4] = "VoiceProcessor_v2.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3292;
        *&buf[18] = 2080;
        *&buf[20] = v18;
        v251 = 2080;
        v252 = v20;
        _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Updating hwRef to match extHwRef format:\n was:%s\n now:%s", buf, 0x26u);
        if (v249 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v246) < 0)
        {
          operator delete(outData);
        }
      }
    }

    v21 = *(v1 + 1588);
    if (!v21 || (v235[3593] & 1) == 0 && v235[3594] != 1)
    {
      goto LABEL_71;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v22 = VPLogScope(void)::scope;
    v23 = *&v232->mBytesPerPacket;
    *&block[0].mSelector = *&v232->mSampleRate;
    *&block[1].mScope = v23;
    *&block[2].mElement = *&v232->mBitsPerChannel;
    v24 = buf;
    CA::StreamDescription::AsString(buf, block, *&block[0].mSelector, *&v23);
    if (buf[23] < 0)
    {
      v24 = *buf;
    }

    v25 = *(v1 + 568);
    *&v241.mSampleRate = *v2;
    *&v241.mBytesPerPacket = v25;
    *&v241.mBitsPerChannel = *(v1 + 73);
    CA::StreamDescription::AsString(&outData, &v241, v241.mSampleRate, *&v25);
    if (v246 >= 0)
    {
      v26 = &outData;
    }

    else
    {
      v26 = outData;
    }

    CALegacyLog::log(v21, 3, v22, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 3292, "UpdateReferenceSignalFormat", "Updating hwRef to match extHwRef format:\n was:%s\n now:%s", v24, v26);
    goto LABEL_67;
  }

  CADeprecated::CAMutex::Lock((v1 + 2592));
  *(v1 + 3150) = 0;
  CADeprecated::CAMutex::Unlock((v1 + 2592));
  std::vector<std::string>::clear[abi:ne200100](v1 + 1998);
  v37 = *(v1 + 2005);
  v38 = *(v1 + 2004);
  while (v37 != v38)
  {
    v37 -= 48;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v37);
  }

  *(v1 + 2005) = v38;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(v1 + 4608);
  if ((v235[3873] & 1) == 0)
  {
    v39 = *(v1 + 1987);
    if (v39)
    {
      PowerLogManager::EndPowerTracking(v39);
    }
  }

  VoiceProcessorV2::InitDLSRCs(v1);
  VoiceProcessorV2::InitializeVPParams(v1);
  if (v235[3873] == 1)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v40 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v41 = (*v40 ? *v40 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        block[0].mSelector = 136315394;
        *&block[0].mScope = "vpInitializeDownlink.cpp";
        LOWORD(block[1].mSelector) = 1024;
        *(&block[1].mSelector + 2) = 351;
        _os_log_impl(&dword_2724B4000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Uplink only mode: disabling all downlink processing", block, 0x12u);
      }
    }

    v42 = *(v1 + 1588);
    if (v42 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v42, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 351, "InitializeDLP", "Uplink only mode: disabling all downlink processing");
    }

    *&block[0].mSelector = v1 + 8864;
    block[0].mElement = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(block);
  }

  v43 = 0;
  v44 = v1 + 3512;
  do
  {
    if ((*(v1 + 1108) >> v43) & 1) != 0 && ((0x5FFFFFFFC7FFFFFFuLL >> v43))
    {
      VoiceProcessorV2::InstantiateAndConfigureEffectAU(v1, v43, 0);
    }

    else
    {
      v46 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
      v47 = 64;
      while (*v46 != v43)
      {
        v46 += 18;
        if (!--v47)
        {
          v48 = 0;
          goto LABEL_148;
        }
      }

      v48 = v46[1];
LABEL_148:
      Parameter = VoiceProcessorV2::DisposeAU(v1, 1635083896, v48, &v44[8 * v43], 1);
    }

    ++v43;
  }

  while (v43 != 64);
  v49 = *(v1 + 1108);
  if ((~*(v1 + 2216) & 0xC0000000) == 0)
  {
    *&block[0].mSelector = *(v1 + 42);
    *&block[0].mElement = xmmword_272756340;
    *&block[2].mSelector = xmmword_272756350;
    v50 = *(v1 + 131);
    default_resource = std::pmr::get_default_resource(Parameter);
    vp::Audio_Buffer::create(&v241, block, v50, default_resource);
    mSampleRate = v241.mSampleRate;
    v241.mSampleRate = 0.0;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 345, *&mSampleRate);
    Parameter = std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v241, 0);
    v49 = *(v1 + 1108);
  }

  if ((v49 & 0x4000) != 0)
  {
    *&block[0].mSelector = *(v1 + 37);
    *&block[0].mElement = xmmword_272756340;
    *&block[2].mSelector = xmmword_272756350;
    v53 = *(v1 + 136);
    v54 = std::pmr::get_default_resource(Parameter);
    vp::Audio_Buffer::create(&v241, block, v53, v54);
    v55 = v241.mSampleRate;
    v241.mSampleRate = 0.0;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 348, *&v55);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v241, 0);
    AudioUnitGetParameter(*(v1 + 453), 8u, 0, 0, v1 + 574);
    Parameter = AudioUnitGetParameter(*(v1 + 453), 0x2Bu, 0, 0, v1 + 575);
    v49 = *(v1 + 1108);
  }

  if ((~v49 & 0x60000) == 0)
  {
    *&block[0].mSelector = *(v1 + 42);
    *&block[0].mElement = xmmword_272756340;
    *&block[2].mSelector = xmmword_272756350;
    v56 = *(v1 + 131);
    v57 = std::pmr::get_default_resource(Parameter);
    vp::Audio_Buffer::create(&v241, block, v56, v57);
    v58 = v241.mSampleRate;
    v241.mSampleRate = 0.0;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 346, *&v58);
    Parameter = std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v241, 0);
    v49 = *(v1 + 1108);
  }

  if ((~v49 & 0x180000) == 0)
  {
    *&block[0].mSelector = *(v1 + 42);
    *&block[0].mElement = xmmword_272756340;
    *&block[2].mSelector = xmmword_272756350;
    v59 = *(v1 + 131);
    v60 = std::pmr::get_default_resource(Parameter);
    vp::Audio_Buffer::create(&v241, block, v59, v60);
    v61 = v241.mSampleRate;
    v241.mSampleRate = 0.0;
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 347, *&v61);
    std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](&v241, 0);
    v49 = *(v1 + 1108);
  }

  if ((v49 & 0x4400000) != 0)
  {
    myAllocABLDynamic((v1 + 336), *(v1 + 131), v1 + 199);
  }

  if (*(v1 + 1135) == 1)
  {
    if (*(v1 + 125) == *(v1 + 123) && CAStreamBasicDescription::IsEqual((v1 + 336), v232))
    {
      if (v235[316] == 1)
      {
        v235[316] = 0;
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v62 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v63 = (*v62 ? *v62 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            block[0].mSelector = 136315394;
            *&block[0].mScope = "vpInitializeDownlink.cpp";
            LOWORD(block[1].mSelector) = 1024;
            *(&block[1].mSelector + 2) = 411;
            _os_log_impl(&dword_2724B4000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initializedlp: ul-dl config no longer out of sync", block, 0x12u);
          }
        }

        v64 = *(v1 + 1588);
        if (v64 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v64, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 411, "InitializeDLP", "initializedlp: ul-dl config no longer out of sync");
        }
      }
    }

    else
    {
      v235[316] = 1;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v65 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v66 = (*v65 ? *v65 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          block[0].mSelector = 136315394;
          *&block[0].mScope = "vpInitializeDownlink.cpp";
          LOWORD(block[1].mSelector) = 1024;
          *(&block[1].mSelector + 2) = 408;
          _os_log_impl(&dword_2724B4000, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> initializedlp: ul-dl config out of sync", block, 0x12u);
        }
      }

      v67 = *(v1 + 1588);
      if (v67 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v67, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 408, "InitializeDLP", "initializedlp: ul-dl config out of sync");
      }
    }
  }

  if (*(v1 + 486) == 1)
  {
    myAllocABLDynamic((v1 + 1496), *(v1 + 384), v1 + 198);
  }

  *(v1 + 485) = 1;
  VoiceProcessorV2::InstantiateAndConfigureAuxAU(v1, 0);
  if ((*(v1 + 2091) & 1) != 0 || *(v1 + 480) == 1)
  {
    (*(v1 + 1573))(*(v1 + 1572), 0, 0, 0, 0, *(v1 + 1139));
    (*(v1 + 1573))(*(v1 + 1572), 8, 0, 0, 0, *(v1 + 1139));
  }

  VoiceProcessorV2::LogVPParams(v1);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v68 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v69 = (*v68 ? *v68 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      block[0].mSelector = 136315394;
      *&block[0].mScope = "vpDebug_Logging.cpp";
      LOWORD(block[1].mSelector) = 1024;
      *(&block[1].mSelector + 2) = 66;
      _os_log_impl(&dword_2724B4000, v69, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ____________logdownlinkchain:begin___________", block, 0x12u);
    }
  }

  v70 = *(v1 + 1588);
  if (v70 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v70, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 66, "LogVPDownlinkChain", "____________logdownlinkchain:begin___________");
  }

  v71 = 0;
  v234 = v1 + 8880;
  v236 = v1;
  v233 = v1 + 3512;
  do
  {
    v72 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
    v73 = 64;
    while (*v72 != v71)
    {
      v72 += 18;
      if (!--v73)
      {
        v74 = 0;
        goto LABEL_220;
      }
    }

    v74 = (v72 + 2);
LABEL_220:
    LODWORD(outData) = 0;
    LODWORD(__p) = 4;
    v75 = *&v44[8 * v71];
    if (v75)
    {
      AudioUnitGetProperty(v75, 0x15u, 0, 0, &outData, &__p);
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v76 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v77 = (*v76 ? *v76 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v78 = "ON";
        if (((*(v1 + 1108) >> v71) & 1) == 0)
        {
          v78 = "OFF";
        }

        v79 = *&v44[8 * v71];
        v80 = "(bypassed)";
        if (!outData)
        {
          v80 = "";
        }

        block[0].mSelector = 136316418;
        *&block[0].mScope = "vpDebug_Logging.cpp";
        LOWORD(block[1].mSelector) = 1024;
        *(&block[1].mSelector + 2) = 77;
        HIWORD(block[1].mScope) = 2080;
        *&block[1].mElement = v74;
        LOWORD(block[2].mScope) = 2080;
        *(&block[2].mScope + 2) = v78;
        HIWORD(block[3].mSelector) = 2080;
        *&block[3].mScope = v80;
        LOWORD(v254) = 2048;
        *(&v254 + 2) = v79;
        _os_log_impl(&dword_2724B4000, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp>     %s: %s %s (%p)", block, 0x3Au);
      }
    }

    v81 = *(v1 + 1588);
    if (v81 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v82 = "ON";
      if (((*(v1 + 1108) >> v71) & 1) == 0)
      {
        v82 = "OFF";
      }

      v83 = "(bypassed)";
      if (!outData)
      {
        v83 = "";
      }

      CALegacyLog::log(v81, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 77, "LogVPDownlinkChain", "    %s: %s %s (%p)", v74, v82, v83, *&v44[8 * v71]);
    }

    memset(&v241, 0, 24);
    std::vector<std::pair<unsigned int,float>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,float>*,std::pair<unsigned int,float>*>(&v241, *&v234[24 * v71], *&v234[24 * v71 + 8], (*&v234[24 * v71 + 8] - *&v234[24 * v71]) >> 3);
    v84 = v241.mSampleRate;
    if (*&v241.mFormatID != *&v241.mSampleRate)
    {
      v85 = 0;
      v86 = (*&v241.mFormatID - *&v241.mSampleRate) >> 3;
      v87 = 1;
      do
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v88 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v89 = (*v88 ? *v88 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            CAX4CCString::CAX4CCString(buf, *(*&v84 + 8 * v85));
            v90 = *(*&v84 + 8 * v85 + 4);
            block[0].mSelector = 136315906;
            *&block[0].mScope = "vpDebug_Logging.cpp";
            LOWORD(block[1].mSelector) = 1024;
            *(&block[1].mSelector + 2) = 81;
            HIWORD(block[1].mScope) = 2080;
            *&block[1].mElement = buf;
            LOWORD(block[2].mScope) = 2048;
            *(&block[2].mScope + 2) = v90;
            _os_log_impl(&dword_2724B4000, v89, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp>          param %s: %f", block, 0x26u);
          }
        }

        v91 = *(v236 + 1588);
        if (v91 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v92 = VPLogScope(void)::scope;
          CAX4CCString::CAX4CCString(block, *(*&v84 + 8 * v85));
          CALegacyLog::log(v91, 5, v92, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 81, "LogVPDownlinkChain", "         param %s: %f", block, *(*&v84 + 8 * v85 + 4));
        }

        v85 = v87;
      }

      while (v86 > v87++);
    }

    if (v84 != 0.0)
    {
      operator delete(*&v84);
    }

    ++v71;
    v1 = v236;
    v44 = v233;
  }

  while (v71 != 64);
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v94 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v95 = (*v94 ? *v94 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
    {
      v96 = *(v236 + 1569);
      block[0].mSelector = 136315906;
      *&block[0].mScope = "vpDebug_Logging.cpp";
      LOWORD(block[1].mSelector) = 1024;
      *(&block[1].mSelector + 2) = 86;
      HIWORD(block[1].mScope) = 2080;
      *&block[1].mElement = "(DL)-AUXVP";
      LOWORD(block[2].mScope) = 2048;
      *(&block[2].mScope + 2) = v96;
      _os_log_impl(&dword_2724B4000, v95, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp>     %s: ON (%p)", block, 0x26u);
    }
  }

  v97 = *(v236 + 1588);
  if (v97 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v97, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 86, "LogVPDownlinkChain", "    %s: ON (%p)", "(DL)-AUXVP", *(v236 + 1569));
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v98 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v99 = (*v98 ? *v98 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
    {
      block[0].mSelector = 136315394;
      *&block[0].mScope = "vpDebug_Logging.cpp";
      LOWORD(block[1].mSelector) = 1024;
      *(&block[1].mSelector + 2) = 87;
      _os_log_impl(&dword_2724B4000, v99, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ____________logdownlinkchain:end___________", block, 0x12u);
    }
  }

  v100 = *(v236 + 1588);
  if (v100 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v100, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_Logging.cpp", 87, "LogVPDownlinkChain", "____________logdownlinkchain:end___________");
  }

  myAllocABLDynamic((v236 + 336), *(v236 + 123), v236 + 200);
  v101 = *(v236 + 200);
  if (*v101)
  {
    v102 = 0;
    v103 = (v101 + 4);
    do
    {
      bzero(*v103, *(v103 - 1));
      ++v102;
      v103 += 2;
    }

    while (v102 < *v101);
  }

  myAllocABLDynamic((v236 + 336), *(v236 + 123), v236 + 201);
  v104 = *(v236 + 201);
  if (*v104)
  {
    v105 = 0;
    v106 = (v104 + 4);
    do
    {
      bzero(*v106, *(v106 - 1));
      ++v105;
      v106 += 2;
    }

    while (v105 < *v104);
  }

  myAllocABLDynamic((v236 + 336), *(v236 + 123), v236 + 202);
  v107 = *(v236 + 202);
  if (*v107)
  {
    v108 = 0;
    v109 = (v107 + 4);
    do
    {
      bzero(*v109, *(v109 - 1));
      ++v108;
      v109 += 2;
    }

    while (v108 < *v107);
  }

  v110 = *(v236 + 22);
  *&v241.mSampleRate = *(v236 + 21);
  *&v241.mBytesPerPacket = v110;
  *&v241.mBitsPerChannel = *(v236 + 46);
  if ((v241.mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  else
  {
    mChannelsPerFrame = v241.mChannelsPerFrame;
    if (!v241.mChannelsPerFrame)
    {
      v112 = (v241.mBitsPerChannel + 7) >> 3;
      goto LABEL_310;
    }
  }

  v112 = v241.mBytesPerFrame / mChannelsPerFrame;
LABEL_310:
  v241.mBytesPerFrame = v112;
  v241.mChannelsPerFrame = 1;
  v241.mBytesPerPacket = v112;
  v241.mFramesPerPacket = 1;
  v241.mFormatFlags |= 0x20u;
  myAllocABLDynamic(&v241, *(v236 + 131), v236 + 203);
  v113 = *(v236 + 203);
  if (*v113)
  {
    v114 = 0;
    v115 = (v113 + 4);
    do
    {
      bzero(*v115, *(v115 - 1));
      ++v114;
      v115 += 2;
    }

    while (v114 < *v113);
  }

  myAllocABLDynamic((v236 + 336), *(v236 + 131), v236 + 204);
  v116 = *(v236 + 204);
  if (*v116)
  {
    v117 = 0;
    v118 = (v116 + 4);
    do
    {
      bzero(*v118, *(v118 - 1));
      ++v117;
      v118 += 2;
    }

    while (v117 < *v116);
  }

  VoiceProcessorV2::SaveFilesInitializeDLP(v236);
  if (v235[3593] == 1)
  {
    if (*(v236 + 155))
    {
      if (*(v236 + 1135) == 1)
      {
        myAllocABLDynamic(v232, *(v236 + 125), v236 + 1914);
      }

      if (*(v236 + 485) == 1)
      {
        VoiceProcessorV2::OpenSignalInjectionFiles(v236, 0);
      }
    }

    else
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v119 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v120 = (*v119 ? *v119 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          v121 = *(v236 + 155);
          block[0].mSelector = 136315650;
          *&block[0].mScope = "vpDebug_FileInjection.cpp";
          LOWORD(block[1].mSelector) = 1024;
          *(&block[1].mSelector + 2) = 110;
          HIWORD(block[1].mScope) = 1024;
          block[1].mElement = v121;
          _os_log_impl(&dword_2724B4000, v120, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Failed to initialize downlink injection files due to unsupported format, mHwRefASBD.mChannelsPerFrame=%u", block, 0x18u);
        }
      }

      v122 = *(v236 + 1588);
      if (v122 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v122, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileInjection.cpp", 110, "InjectionFilesInitializeDLP", "Failed to initialize downlink injection files due to unsupported format, mHwRefASBD.mChannelsPerFrame=%u", *(v236 + 155));
      }
    }
  }

  if ((v235[3873] & 1) == 0)
  {
    v123 = (v235 + 3608);
    if (!*(v235 + 451))
    {
      operator new();
    }

    if (*(v236 + 8871) & 1) != 0 && (*(v236 + 8879))
    {
      v124 = *(v236 + 1987);
      if (*(v236 + 495))
      {
        PowerLogManager::SetPowerVendor(v124, v236 + 495, 1936748595);
LABEL_344:
        v125 = *v123;
        if (PowerLogManagerLogScope(void)::once != -1)
        {
          dispatch_once(&PowerLogManagerLogScope(void)::once, &__block_literal_global_2785);
        }

        if (PowerLogManagerLogScope(void)::scope)
        {
          v126 = *PowerLogManagerLogScope(void)::scope;
          if (!*PowerLogManagerLogScope(void)::scope)
          {
LABEL_352:
            v127 = *(v125 + 2);
            *&block[0].mSelector = MEMORY[0x277D85DD0];
            *&block[0].mElement = 0x40000000;
            *&block[1].mScope = ___ZN15PowerLogManager18BeginPowerTrackingEv_block_invoke;
            *&block[2].mSelector = &__block_descriptor_tmp_9;
            *&block[2].mElement = v125;
            dispatch_sync(v127, block);
            goto LABEL_353;
          }
        }

        else
        {
          v126 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
        {
          block[0].mSelector = 136315394;
          *&block[0].mScope = "vpPowerLogManager.cpp";
          LOWORD(block[1].mSelector) = 1024;
          *(&block[1].mSelector + 2) = 282;
          _os_log_impl(&dword_2724B4000, v126, OS_LOG_TYPE_DEBUG, "%25s:%-5d will begin speaker power tracking...", block, 0x12u);
        }

        goto LABEL_352;
      }
    }

    else
    {
      v124 = *v123;
    }

    PowerLogManager::SetPowerVendor(v124, 0, 0);
    goto LABEL_344;
  }

LABEL_353:
  (*(*v236 + 248))(v236);
  if ((*(v236 + 8870) & 4) == 0)
  {
    goto LABEL_503;
  }

  if (!*(v236 + 489))
  {
    goto LABEL_503;
  }

  HeadsetSensitivity = VoiceProcessorV2::GetHeadsetSensitivity(v236);
  AudioUnitSetParameter(*(v236 + 489), 1u, 0, 0, HeadsetSensitivity, 0);
  RefPortOwningDeviceID = VoiceProcessorV2::GetRefPortOwningDeviceID(v236);
  if (!HIDWORD(RefPortOwningDeviceID))
  {
    goto LABEL_503;
  }

  memset(buf, 0, 24);
  outData = 0;
  v246 = 0uLL;
  v131 = **(v236 + 294);
  if (v131 == 1885892674 || v131 == 1885892706)
  {
    cf = 0;
    ioDataSize[0] = 8;
    __p = 0x676C6F62646F7663;
    LODWORD(v248) = 0;
    if (AudioObjectGetPropertyData(RefPortOwningDeviceID, &__p, 0, 0, ioDataSize, &cf))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v132 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v133 = (*v132 ? *v132 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          block[0].mSelector = 136315394;
          *&block[0].mScope = "vpInitializeDownlink.cpp";
          LOWORD(block[1].mSelector) = 1024;
          *(&block[1].mSelector + 2) = 899;
          _os_log_impl(&dword_2724B4000, v133, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> [VolumeLimit] failed to get volume curve", block, 0x12u);
        }
      }

      v134 = *(v236 + 1588);
      if (v134 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v134, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 899, "SetVolumeCurveForVolumeLimit", "[VolumeLimit] failed to get volume curve");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v135 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v136 = (*v135 ? *v135 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
        {
          block[0].mSelector = 136315394;
          *&block[0].mScope = "vpInitializeDownlink.cpp";
          LOWORD(block[1].mSelector) = 1024;
          *(&block[1].mSelector + 2) = 925;
          _os_log_impl(&dword_2724B4000, v136, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> [VolumeLimit] Creating volume curves", block, 0x12u);
        }
      }

      v137 = *(v236 + 1588);
      if (v137 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v137, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 925, "SetVolumeCurveForVolumeLimit", "[VolumeLimit] Creating volume curves");
      }

      v138 = *(v236 + 600);
      if (v138 != 1634231920 && v138 != 1633759844)
      {
        std::vector<float>::vector[abi:ne200100](block, 2uLL);
        **&block[0].mSelector = 0x40000000C2980000;
        if (*buf)
        {
          operator delete(*buf);
        }

        *buf = *&block[0].mSelector;
        *&buf[8] = *&block[0].mElement;
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&outData, *&block[0].mSelector, *&block[0].mElement, (*&block[0].mElement - *&block[0].mSelector) >> 2);
        goto LABEL_474;
      }

      v255 = 0;
      *&block[0].mSelector = xmmword_27275AAF8;
      *&block[1].mScope = unk_27275AB08;
      *&block[2].mElement = xmmword_27275AB18;
      v254 = unk_27275AB28;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(&outData, block, v256, 0x11uLL);
      v139 = v246 - outData;
      v140 = ((v246 - outData) >> 2);
      std::vector<float>::vector[abi:ne200100](block, v140);
      if ((v139 >> 2))
      {
        v142 = 0;
        *v141.i32 = 78.0 / ((v139 >> 2) - 1);
        v143 = vdupq_n_s64(v140 - 1);
        v144 = xmmword_2727564D0;
        v145 = xmmword_2727564E0;
        v146 = vdupq_n_s32(0xC2980000);
        v147 = vdupq_n_s64(4uLL);
        v148 = vdupq_lane_s32(v141, 0);
        v149 = (*&block[0].mSelector + 8);
        do
        {
          v150 = vmovn_s64(vcgeq_u64(v143, v145));
          v151.i32[0] = v142;
          v151.i32[1] = v142 + 1;
          v151.u64[1] = vorr_s8(vdup_n_s32(v142), 0x300000002);
          v152 = vmlaq_f32(v146, v148, vcvtq_f32_u32(v151));
          if (vuzp1_s16(v150, *v143.i8).u8[0])
          {
            *(v149 - 2) = v152.i32[0];
          }

          if (vuzp1_s16(v150, *&v143).i8[2])
          {
            *(v149 - 1) = v152.i32[1];
          }

          if (vuzp1_s16(*&v143, vmovn_s64(vcgeq_u64(v143, *&v144))).i32[1])
          {
            *v149 = v152.i64[1];
          }

          v142 += 4;
          v144 = vaddq_s64(v144, v147);
          v145 = vaddq_s64(v145, v147);
          v149 += 2;
        }

        while (((v140 + 3) & 0x1FFFFFFFCLL) != v142);
      }

      goto LABEL_468;
    }

    v157 = cf;
    if (cf)
    {
      CFRetain(cf);
      CFArray = v157;
      v158 = CFGetTypeID(v157);
      if (v158 != CFArrayGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      v159 = CFArray;
      if (CFArray)
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v159))
        {
          Count = CFArrayGetCount(v159);
          memset(block, 0, 24);
          std::vector<float>::reserve(block, Count);
          if (Count >= 1)
          {
            v162 = 0;
            v163 = Count & 0x7FFFFFFF;
            v165 = *&block[0].mElement;
            v164 = *&block[1].mScope;
            v166 = *&block[0].mSelector;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v159, v162);
              v168 = applesauce::CF::convert_to<float,0>(ValueAtIndex);
              if (v165 >= v164)
              {
                v169 = v165 - v166;
                v170 = (v165 - v166) >> 2;
                v171 = v170 + 1;
                if ((v170 + 1) >> 62)
                {
                  *&block[1].mScope = v164;
                  *&block[0].mSelector = v166;
                  std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
                }

                if ((v164 - v166) >> 1 > v171)
                {
                  v171 = (v164 - v166) >> 1;
                }

                if (v164 - v166 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v172 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v172 = v171;
                }

                if (v172)
                {
                  std::allocator<float>::allocate_at_least[abi:ne200100](v172);
                }

                v173 = (4 * v170);
                v164 = 0;
                *v173 = v168;
                v165 = v173 + 1;
                memcpy(0, v166, v169);
                if (v166)
                {
                  operator delete(v166);
                }

                v166 = 0;
              }

              else
              {
                *v165++ = v168;
              }

              ++v162;
            }

            while (v163 != v162);
            *&block[0].mElement = v165;
            *&block[1].mScope = v164;
            *&block[0].mSelector = v166;
            if (outData)
            {
              operator delete(outData);
            }
          }

          outData = *&block[0].mSelector;
          v246 = *&block[0].mElement;
          v174 = (*&block[0].mElement - *&block[0].mSelector) >> 2;
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v1 = v236;
          v175 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v176 = (*v175 ? *v175 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
            {
              block[0].mSelector = 136315650;
              *&block[0].mScope = "vpInitializeDownlink.cpp";
              LOWORD(block[1].mSelector) = 1024;
              *(&block[1].mSelector + 2) = 897;
              HIWORD(block[1].mScope) = 1024;
              block[1].mElement = v174;
              _os_log_impl(&dword_2724B4000, v176, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> [VolumeLimit] number of volume map steps: %u", block, 0x18u);
            }
          }

          v177 = *(v236 + 1588);
          if (v177 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v177, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 897, "SetVolumeCurveForVolumeLimit", "[VolumeLimit] number of volume map steps: %u", v174);
          }

          if (CFArray)
          {
            CFRelease(CFArray);
          }

          std::vector<float>::vector[abi:ne200100](block, v174);
          if (v174)
          {
            v179 = 0;
            *v178.i32 = 78.0 / (v174 - 1);
            v180 = vdupq_n_s64(v174 - 1);
            v181 = xmmword_2727564D0;
            v182 = xmmword_2727564E0;
            v183 = vdupq_n_s32(0xC2980000);
            v184 = vdupq_n_s64(4uLL);
            v185 = vdupq_lane_s32(v178, 0);
            v186 = (*&block[0].mSelector + 8);
            do
            {
              v187 = vmovn_s64(vcgeq_u64(v180, v182));
              v188.i32[0] = v179;
              v188.i32[1] = v179 + 1;
              v188.u64[1] = vorr_s8(vdup_n_s32(v179), 0x300000002);
              v189 = vmlaq_f32(v183, v185, vcvtq_f32_u32(v188));
              if (vuzp1_s16(v187, *v180.i8).u8[0])
              {
                *(v186 - 2) = v189.i32[0];
              }

              if (vuzp1_s16(v187, *&v180).i8[2])
              {
                *(v186 - 1) = v189.i32[1];
              }

              if (vuzp1_s16(*&v180, vmovn_s64(vcgeq_u64(v180, *&v181))).i32[1])
              {
                *v186 = v189.i64[1];
              }

              v179 += 4;
              v181 = vaddq_s64(v181, v184);
              v182 = vaddq_s64(v182, v184);
              v186 += 2;
            }

            while (((v174 + 3) & 0x1FFFFFFFCLL) != v179);
          }

LABEL_468:
          if (*buf)
          {
            operator delete(*buf);
          }

          *buf = *&block[0].mSelector;
          *&buf[16] = *&block[1].mScope;
          goto LABEL_474;
        }

        v230 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v230, "Could not convert");
LABEL_612:
      }
    }

    else
    {
      CFArray = 0;
    }

    v230 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v230, "Could not construct");
    goto LABEL_612;
  }

  if (v131 != 1885892727)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v153 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v154 = (*v153 ? *v153 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(&__p, **(v236 + 294));
        block[0].mSelector = 136315650;
        *&block[0].mScope = "vpInitializeDownlink.cpp";
        LOWORD(block[1].mSelector) = 1024;
        *(&block[1].mSelector + 2) = 941;
        HIWORD(block[1].mScope) = 2080;
        *&block[1].mElement = &__p;
        _os_log_impl(&dword_2724B4000, v154, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Unsupported port type: %s", block, 0x1Cu);
      }
    }

    v155 = *(v236 + 1588);
    if (v155 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v156 = VPLogScope(void)::scope;
      CAX4CCString::CAX4CCString(block, **(v236 + 294));
      CALegacyLog::log(v155, 1, v156, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 941, "SetVolumeCurveForVolumeLimit", "Unsupported port type: %s", block);
    }

    goto LABEL_501;
  }

  *&block[0].mSelector = 0x40000000C2980000;
  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(buf, block, &block[0].mElement, 2uLL);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&outData, *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
LABEL_474:
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v190 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v191 = (*v190 ? *v190 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
    {
      block[0].mSelector = 136315394;
      *&block[0].mScope = "vpInitializeDownlink.cpp";
      LOWORD(block[1].mSelector) = 1024;
      *(&block[1].mSelector + 2) = 947;
      _os_log_impl(&dword_2724B4000, v191, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> [VolumeLimit] Setting volume curves", block, 0x12u);
    }
  }

  v192 = *(v1 + 1588);
  if (v192 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v192, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 947, "SetVolumeCurveForVolumeLimit", "[VolumeLimit] Setting volume curves");
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<float>(buf);
  applesauce::CF::TypeRef::TypeRef(block, "InputMap");
  v193 = CFArray;
  if (CFArray)
  {
    CFRetain(CFArray);
  }

  *&block[0].mElement = v193;
  v194 = applesauce::CF::details::make_CFArrayRef<float>(&outData);
  *ioDataSize = v194;
  applesauce::CF::TypeRef::TypeRef(&block[1].mScope, "OutputMap");
  CFRetain(v194);
  *&block[2].mSelector = v194;
  __p = block;
  v248 = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&__p);
  v196 = 0;
  cf = CFDictionaryRef;
  do
  {
    v197 = *(&block[2].mSelector + v196);
    if (v197)
    {
      CFRelease(v197);
    }

    v198 = *(&block[1].mScope + v196);
    if (v198)
    {
      CFRelease(v198);
    }

    v196 -= 16;
  }

  while (v196 != -32);
  CFRelease(v194);
  if (CFArray)
  {
    CFRelease(CFArray);
  }

  *&block[0].mSelector = CFDictionaryRef;
  AudioUnitSetProperty(*(v1 + 489), 0xFA01u, 0, 0, block, 8u);
  CFRelease(CFDictionaryRef);
  if (outData)
  {
    operator delete(outData);
  }

LABEL_501:
  if (*buf)
  {
    operator delete(*buf);
  }

LABEL_503:
  if ((*(v1 + 8869) & 0x20) != 0 && *(v1 + 484))
  {
    v199 = VoiceProcessorV2::GetHeadsetSensitivity(v1);
    AudioUnitSetParameter(*(v1 + 484), 0x18u, 0, 0, v199, 0);
    AudioUnitSetParameter(*(v1 + 484), 0x1Au, 0, 0, 2.0, 0);
    OutputPortProductIDForPME = VoiceProcessorV2::GetOutputPortProductIDForPME(v1);
    if (OutputPortProductIDForPME)
    {
      AudioUnitSetParameter(*(v1 + 484), 0x1Bu, 0, 0, OutputPortProductIDForPME, 0);
    }

    if (v235[3593] == 1)
    {
      VoiceProcessorV2::GetRefPortUIDForPME(&outData, v1);
      v201 = outData;
      if (outData)
      {
        CFRetain(outData);
      }

      v239 = v201;
      if (va::PersonalAudioInterface::isPersonalMediaEnabled(&v239))
      {
        v202 = outData;
        if (outData)
        {
          CFRetain(outData);
        }

        v238 = v202;
        va::PersonalAudioInterface::getPreset(&__p, &v238);
        if (v202)
        {
          CFRelease(v202);
        }
      }

      else
      {
        va::PersonalAudioInterface::getPreset(&__p);
      }

      if (v201)
      {
        CFRelease(v201);
      }

      v203 = __p;
      if (__p)
      {
        CFRetain(__p);
        cf = v203;
        applesauce::CF::TypeRef::TypeRef(block, "hlc_paconfig");
        v204 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        *&block[0].mElement = v204;
        ioDataSize[0] = OutputPortProductIDForPME;
        CFArray = CFNumberCreate(0, kCFNumberIntType, ioDataSize);
        if (!CFArray)
        {
          v227 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v227, "Could not construct");
        }

        v205 = applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,applesauce::CF::NumberRef>(&block[1].mScope, "hlc_headset", &CFArray);
        LODWORD(valuePtr) = va::PersonalAudioInterface::isPersonalMediaEnabled(v205);
        *ioDataSize = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (!*ioDataSize)
        {
          v228 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v228, "Could not construct");
        }

        applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,applesauce::CF::NumberRef>(&block[2].mElement, "hlc_enable", ioDataSize);
        v240 = v199;
        valuePtr = CFNumberCreate(0, kCFNumberFloatType, &v240);
        if (!valuePtr)
        {
          v229 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v229, "Could not construct");
        }

        applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,applesauce::CF::NumberRef>(&v254, "hlc_sensitivity", &valuePtr);
        *buf = block;
        *&buf[8] = 4;
        v206 = applesauce::CF::details::make_CFDictionaryRef(buf);
        v207 = *(v1 + 281);
        *(v1 + 281) = v206;
        if (v207)
        {
          CFRelease(v207);
        }

        for (i = 0; i != -64; i -= 16)
        {
          v209 = *(&v254 + i + 8);
          if (v209)
          {
            CFRelease(v209);
          }

          v210 = *(&block[4].mSelector + i);
          if (v210)
          {
            CFRelease(v210);
          }
        }

        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        if (*ioDataSize)
        {
          CFRelease(*ioDataSize);
        }

        if (CFArray)
        {
          CFRelease(CFArray);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v235[3593] == 1)
        {
          VoiceProcessorV2::PListWriteSetPropertyParameters(v1, 1751933808);
        }

        v211 = *(v1 + 281);
        *(v1 + 281) = 0;
        if (v211)
        {
          CFRelease(v211);
        }

        if (__p)
        {
          CFRelease(__p);
        }
      }

      if (outData)
      {
        CFRelease(outData);
      }
    }
  }

  v212 = *(v1 + 1108);
  if ((v212 & 0x200000000000) != 0 && *(v1 + 484) || (v212 & 0x4000000000000) != 0 && *(v1 + 489))
  {
    v213 = VoiceProcessorV2::GetRefPortOwningDeviceID(v1);
    if (HIDWORD(v213))
    {
      strcpy(buf, "dlovptuo");
      buf[9] = 0;
      *&buf[10] = 0;
      LODWORD(outData) = 4;
      LODWORD(__p) = 0;
      v214 = v213;
      if (AudioObjectGetPropertyData(v213, buf, 0, 0, &outData, &__p) && (**(v1 + 294) != 1885892727 || (*&block[0].mSelector = 0x6F757470766F6C64, block[0].mElement = 1, LODWORD(cf) = 4, LODWORD(CFArray) = 0, AudioObjectGetPropertyData(v214, block, 0, 0, &cf, &CFArray))))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v215 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v216 = (*v215 ? *v215 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
          {
            block[0].mSelector = 136315394;
            *&block[0].mScope = "vpInitializeDownlink.cpp";
            LOWORD(block[1].mSelector) = 1024;
            *(&block[1].mSelector + 2) = 733;
            _os_log_impl(&dword_2724B4000, v216, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Error reading Hardware Volume!", block, 0x12u);
          }
        }

        v217 = *(v1 + 1588);
        if (v217 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v217, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 733, "GetHardwareVolume", "Error reading Hardware Volume!");
        }
      }

      else
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v218 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v219 = (*v218 ? *v218 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
          {
            block[0].mSelector = 136315906;
            *&block[0].mScope = "vpInitializeDownlink.cpp";
            LOWORD(block[1].mSelector) = 1024;
            *(&block[1].mSelector + 2) = 730;
            HIWORD(block[1].mScope) = 2048;
            *&block[1].mElement = *&__p;
            LOWORD(block[2].mScope) = 1024;
            *(&block[2].mScope + 2) = v214;
            _os_log_impl(&dword_2724B4000, v219, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> HW Volume in %f dB from DeviceID %u !", block, 0x22u);
          }
        }

        v220 = *(v1 + 1588);
        if (v220 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v220, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 730, "GetHardwareVolume", "HW Volume in %f dB from DeviceID %u !", *&__p, v214);
        }

        (*(*v1 + 56))(v1, 32797, &__p, 4);
      }
    }
  }

  buf[0] = 0;
  VoiceProcessorV2::ReadDefaultsOverride(@"vp_disable_oaugain", 0, buf, 0, v128);
  if (buf[0] == 1)
  {
    *(v1 + 561) = 3259498496;
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v221 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v222 = (*v221 ? *v221 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
      {
        v223 = *(v1 + 1122);
        v224 = *(v1 + 1123);
        block[0].mSelector = 136315906;
        *&block[0].mScope = "vpInitializeDownlink.cpp";
        LOWORD(block[1].mSelector) = 1024;
        *(&block[1].mSelector + 2) = 541;
        HIWORD(block[1].mScope) = 2048;
        *&block[1].mElement = v223;
        LOWORD(block[2].mScope) = 2048;
        *(&block[2].mScope + 2) = v224;
        _os_log_impl(&dword_2724B4000, v222, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Re-set mix gain range to [%f, %f]dB", block, 0x26u);
      }
    }

    v225 = *(v1 + 1588);
    if (v225 && ((v235[3593] & 1) != 0 || v235[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v225, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 541, "InitializeDLP", "Re-set mix gain range to [%f, %f]dB", *(v1 + 1122), *(v1 + 1123));
    }
  }

  v226 = *MEMORY[0x277D85DE8];
}

void sub_272536FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  v57 = *(v55 - 240);
  if (v57)
  {
    operator delete(v57);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

float VoiceProcessorV2::GetHeadsetSensitivity(int **this)
{
  *&v25[5] = *MEMORY[0x277D85DE8];
  v2 = (this + 1536);
  outData = 105.0;
  RefPortOwningDeviceID = VoiceProcessorV2::GetRefPortOwningDeviceID(this);
  if (!HIDWORD(RefPortOwningDeviceID) || (v4 = RefPortOwningDeviceID, *&inAddress.mSelector = 0x676C6F62646F7365, inAddress.mElement = 0, ioDataSize = 4, AudioObjectGetPropertyData(RefPortOwningDeviceID, &inAddress, 0, 0, &ioDataSize, &outData)) || (outData > 50.0 ? (v5 = outData < 150.0) : (v5 = 0), !v5))
  {
    v6 = *(this + 600);
    if (v6 <= 1647521841)
    {
      if (v6 <= 1633759843)
      {
        if (v6 == 1214329654)
        {
          goto LABEL_23;
        }

        v8 = 1214394677;
      }

      else
      {
        if (v6 == 1633759844 || v6 == 1634231920)
        {
          goto LABEL_23;
        }

        v8 = 1647393080;
      }
    }

    else
    {
      if (v6 <= 1647718502)
      {
        if (v6 == 1647521842)
        {
          goto LABEL_40;
        }

        if (v6 != 1647522096)
        {
          if (v6 == 1647718502)
          {
            v7 = 1120980173;
LABEL_24:
            outData = *&v7;
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v9 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
            {
              v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v21 = "vpInitializeDownlink.cpp";
                v22 = 1024;
                v23 = 861;
                v24 = 2048;
                *v25 = outData;
                _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Unable to read sensitivity from device setting default (%f)", buf, 0x1Cu);
              }
            }

            v11 = this[1588];
            if (v11 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v11, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 861, "GetHeadsetSensitivity", "Unable to read sensitivity from device setting default (%f)");
            }

            goto LABEL_39;
          }

LABEL_40:
          v7 = 1121058816;
          goto LABEL_24;
        }

LABEL_23:
        v7 = 1120403456;
        goto LABEL_24;
      }

      if (v6 == 1647718503)
      {
        v7 = 1121045709;
        goto LABEL_24;
      }

      if (v6 == 1752709424)
      {
        goto LABEL_23;
      }

      v8 = 2003068262;
    }

    if (v6 != v8)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v14 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = "vpInitializeDownlink.cpp";
      v22 = 1024;
      v23 = 812;
      v24 = 1024;
      v25[0] = v4;
      LOWORD(v25[1]) = 2048;
      *(&v25[1] + 2) = outData;
      _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Sensitivity from device(%u) = %f", buf, 0x22u);
    }
  }

  v16 = this[1588];
  if (v16 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v16, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 812, "GetHeadsetSensitivity", "Sensitivity from device(%u) = %f");
  }

LABEL_39:
  result = outData;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VoiceProcessorV2::GetOutputPortProductIDForPME(int **this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(this + 600) >> 1 == 823859251)
  {
    result = 8210;
  }

  else if ((*this[294] | 0x20) == 0x70687062)
  {
    result = VoiceProcessorV2::IsRefPortOwningDeviceBluetoothAppleProduct(this);
    if (result)
    {
      outData = 0;
      RefPortOwningDeviceID = VoiceProcessorV2::GetRefPortOwningDeviceID(this);
      v4 = RefPortOwningDeviceID;
      if (HIDWORD(RefPortOwningDeviceID))
      {
        *&inAddress.mSelector = 0x676C6F6262616964;
        inAddress.mElement = 0;
        ioDataSize = 4;
        PropertyData = AudioObjectGetPropertyData(RefPortOwningDeviceID, &inAddress, 0, 0, &ioDataSize, &outData);
        if (PropertyData)
        {
          v6 = PropertyData;
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v8 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              ioDataSize = 136315906;
              v16 = "vpInitializeDownlink.cpp";
              v17 = 1024;
              v18 = 704;
              v19 = 1024;
              v20 = v6;
              v21 = 1024;
              v22 = v4;
              _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting Bluetooth product ID for reference device %u", &ioDataSize, 0x1Eu);
            }
          }

          v10 = this[1588];
          if (v10 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              v12 = this[1588];
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              v10 = v12;
            }

            CALegacyLog::log(v10, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpInitializeDownlink.cpp", 704, "GetRefPortOwningDeviceBluetoothProductID", "error %d getting Bluetooth product ID for reference device %u", v6, v4);
          }

          v5 = 0;
        }

        else
        {
          v5 = 0x100000000;
          v6 = outData;
        }
      }

      else
      {
        v5 = 0x100000000;
        v6 = RefPortOwningDeviceID;
      }

      if ((v5 & 0x100000000) != 0)
      {
        result = v6 | v5;
      }

      else
      {
        result = 0;
      }
    }
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}