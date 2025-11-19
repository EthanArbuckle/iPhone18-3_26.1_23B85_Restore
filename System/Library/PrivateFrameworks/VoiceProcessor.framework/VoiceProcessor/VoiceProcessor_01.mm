void sub_2724CC954(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl]", 39);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CC904);
  }

  _Unwind_Resume(a1);
}

void vp::services::Audio_Issue_Detector_Impl::set_uplink_mute(vp::services::Audio_Issue_Detector_Impl *this, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(a2);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2724CCB48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl]", 39);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CCAFCLL);
  }

  _Unwind_Resume(a1);
}

void sub_2724CCDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, __int16 a27, uint64_t a28)
{
  if (a2)
  {
    if (__p)
    {
      a24 = __p;
      operator delete(__p);
    }

    v30 = __cxa_begin_catch(exception_object);
    v31 = vp::get_log(v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

    if (v32)
    {
      log_context_info = vp::get_log_context_info(&a17, v28, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
      v34 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CCD54);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::services::Audio_Issue_Detector_Impl::Client::analyze(vp *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v33 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) > 2)
  {
    v11 = 51;
  }

  else
  {
    v11 = dword_272756978[a2 - 1];
  }

  v12 = *(a1 + 1);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    a1 = AudioIssueDetectorLibraryLoader(void)::libSym(v12, v11, a3, a4, a5, a6);
    v13 = a1;
    if (!a1)
    {
      result = 1;
      goto LABEL_24;
    }
  }

  else
  {
    v13 = -1;
  }

  v15 = vp::get_log(a1);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

  if (v16)
  {
    log_context_info = vp::get_log_context_info(__p, v10, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
    v18 = v26;
    v19 = __p[1];
    v20 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if ((v18 & 0x80u) == 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = v19;
      }

      v22 = __p[0];
      if ((v18 & 0x80u) == 0)
      {
        v22 = __p;
      }

      *buf = 136315650;
      v28 = v22;
      if (v21)
      {
        v23 = " ";
      }

      else
      {
        v23 = "";
      }

      v29 = 2080;
      v30 = v23;
      v31 = 1024;
      v32 = v13;
      _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_ERROR, "%s%sfailed to analyze buffer due to error - %u", buf, 0x1Cu);
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0;
LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CD114(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CD0C0);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Audio_Issue_Detector_Impl::Client::initialize(vp::services::Audio_Issue_Detector_Impl::Client *this)
{
  v1 = this;
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    this = AudioIssueDetectorLibraryLoader(void)::libSym(v2);
    v3 = this;
    if (!this)
    {
      result = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v3 = -1;
  }

  v5 = vp::get_log(this);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    log_context_info = vp::get_log_context_info(__p, v1, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
    v8 = v16;
    v9 = __p[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      v12 = __p[0];
      if ((v8 & 0x80u) == 0)
      {
        v12 = __p;
      }

      *buf = 136315650;
      v18 = v12;
      if (v11)
      {
        v13 = " ";
      }

      else
      {
        v13 = "";
      }

      v19 = 2080;
      v20 = v13;
      v21 = 1024;
      v22 = v3;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%s%sfailed to initialize due to error - %u", buf, 0x1Cu);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0;
LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CD404(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CD3B4);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Audio_Issue_Detector_Impl::Client::set_reporter_ids(vp *a1, uint64_t a2)
{
  v3 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    a1 = AudioIssueDetectorLibraryLoader(void)::libSym(v4, a2);
    v5 = a1;
    if (!a1)
    {
      result = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v5 = -1;
  }

  v7 = vp::get_log(a1);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    log_context_info = vp::get_log_context_info(__p, v3, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
    v10 = v18;
    v11 = __p[1];
    v12 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if ((v10 & 0x80u) == 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      v14 = __p[0];
      if ((v10 & 0x80u) == 0)
      {
        v14 = __p;
      }

      *buf = 136315650;
      v20 = v14;
      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      v21 = 2080;
      v22 = v15;
      v23 = 1024;
      v24 = v5;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%s%sfailed to set reporter IDs due to error - %u", buf, 0x1Cu);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0;
LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CD6FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CD6ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Audio_Issue_Detector_Impl::Client::set_node_format(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8);
  v9 = std::string::basic_string[abi:ne200100]<0>(__p, off_279E48C18[a2]);
  if ((a2 - 1) > 2)
  {
    v10 = 51;
  }

  else
  {
    v10 = dword_272756978[a2 - 1];
  }

  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v9 = AudioIssueDetectorLibraryLoader(void)::libSym(v8, __p, v10, a3, a4);
    v11 = v9;
  }

  else
  {
    v11 = -1;
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*__p);
  }

  if (v11)
  {
    v14 = vp::get_log(v9);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      log_context_info = vp::get_log_context_info(v23, a1, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
      v17 = v24;
      v18 = v23[1];
      v19 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if ((v17 & 0x80u) == 0)
        {
          v20 = v17;
        }

        else
        {
          v20 = v18;
        }

        v21 = v23[0];
        if ((v17 & 0x80u) == 0)
        {
          v21 = v23;
        }

        *__p = 136315650;
        *&__p[4] = v21;
        if (v20)
        {
          v22 = " ";
        }

        else
        {
          v22 = "";
        }

        v26 = 2080;
        v27 = v22;
        v28 = 1024;
        v29 = v11;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%s%sfailed to set node format due to error - %u", __p, 0x1Cu);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CDA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, int a24, __int16 a25, uint64_t a26, char a27, char a28, uint64_t a29)
{
  if (a2)
  {
    if (SHIBYTE(a26) < 0)
    {
      operator delete(__p);
    }

    v31 = __cxa_begin_catch(exception_object);
    v32 = vp::get_log(v31);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

    if (v33)
    {
      log_context_info = vp::get_log_context_info(&a17, v29, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
      v35 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CDA44);
  }

  _Unwind_Resume(exception_object);
}

void vp::services::Audio_Issue_Detector_Impl::Client::~Client(vp::services::Audio_Issue_Detector_Impl::Client *this)
{
  vp::services::Audio_Issue_Detector_Impl::Client::~Client(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_181);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_2724CDCAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Issue_Detector_Impl::Client]", 47);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CDC5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Audio_Hardware_Impl::audio_object_get_property_data(vp::services::Audio_Hardware_Impl *this, AudioObjectID inObjectID, const AudioObjectPropertyAddress *inAddress, UInt32 inQualifierDataSize, const void *inQualifierData, unsigned int *a6, void *outData)
{
  v8 = *a6;
  v9 = a6;
  result = AudioObjectGetPropertyData(inObjectID, inAddress, inQualifierDataSize, inQualifierData, &v8, outData);
  *v9 = v8;
  return result;
}

void sub_2724CDFB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  MEMORY[0x2743CBFA0](v7, 0x81C40803F642BLL);
  __clang_call_terminate(a1);
}

void ___ZL19getADASManagerClassv_block_invoke(uint64_t a1)
{
  AudioDataAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ADASManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getADASManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getADASManagerClass()_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"Audio_Data_Analysis_Impl.hpp" lineNumber:35 description:{@"Unable to find class %s", "ADASManager"}];

    __break(1u);
  }
}

void *AudioDataAnalysisLibrary(void)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AudioDataAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = ___ZL28AudioDataAnalysisLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279E48BE8;
    v7 = 0;
    AudioDataAnalysisLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = AudioDataAnalysisLibraryCore(char **)::frameworkLibrary;
  if (!AudioDataAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AudioDataAnalysisLibrary()"];
    [v0 handleFailureInFunction:v4 file:@"Audio_Data_Analysis_Impl.hpp" lineNumber:34 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t ___ZL28AudioDataAnalysisLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AudioDataAnalysisLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void vp::services::Audio_Data_Analysis_Impl::Settings_Manager::get_volume_limit_threshold(vp::services::Audio_Data_Analysis_Impl::Settings_Manager *this)
{
  v1 = *(this + 1);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr;
  v11 = getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr;
  if (!getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr)
  {
    v3 = AudioDataAnalysisLibrary();
    v9[3] = dlsym(v3, "ADAFPreferenceKeyVolumeLimitThreshold");
    getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;
    v5 = [v1 getPreferenceFor:v4];
    [v5 floatValue];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const ADAFPreferenceKey getADAFPreferenceKeyVolumeLimitThreshold()"];
    [v6 handleFailureInFunction:v7 file:@"Audio_Data_Analysis_Impl.hpp" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_2724CE448(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  __clang_call_terminate(a1);
}

void *___ZL49getADAFPreferenceKeyVolumeLimitThresholdSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFPreferenceKeyVolumeLimitThreshold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFPreferenceKeyVolumeLimitThresholdSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void vp::services::Audio_Data_Analysis_Impl::Settings_Manager::is_volume_limit_enabled(vp::services::Audio_Data_Analysis_Impl::Settings_Manager *this)
{
  v1 = *(this + 1);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr;
  v11 = getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr;
  if (!getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr)
  {
    v3 = AudioDataAnalysisLibrary();
    v9[3] = dlsym(v3, "ADAFPreferenceKeyVolumeLimitEnabled");
    getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;
    v5 = [v1 getPreferenceFor:v4];
    [v5 BOOLValue];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const ADAFPreferenceKey getADAFPreferenceKeyVolumeLimitEnabled()"];
    [v6 handleFailureInFunction:v7 file:@"Audio_Data_Analysis_Impl.hpp" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_2724CE648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  __clang_call_terminate(a1);
}

void *___ZL47getADAFPreferenceKeyVolumeLimitEnabledSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFPreferenceKeyVolumeLimitEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFPreferenceKeyVolumeLimitEnabledSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void vp::services::Audio_Data_Analysis_Impl::Settings_Manager::~Settings_Manager(id *this)
{

  JUMPOUT(0x2743CBFA0);
}

{
}

void sub_2724CE8EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Data_Analysis_Impl::Client]", 46);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    v25 = *(v19 + 8);
    JUMPOUT(0x2724CE814);
  }

  _Unwind_Resume(a1);
}

void vp::services::Audio_Data_Analysis_Impl::Client::~Client(vp::services::Audio_Data_Analysis_Impl::Client *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (v2 != 560033897 && v2 != 561211748)
  {
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      AudioDataAnalysisManagerLibraryLoader(void)::libSym(v2);
    }
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

{
  vp::services::Audio_Data_Analysis_Impl::Client::~Client(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_2724CEB14(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Data_Analysis_Impl::Client]", 46);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CEAB8);
  }

  _Unwind_Resume(a1);
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = dlerror();
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v0)
  {
LABEL_5:
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreate");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerDispose");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerReset");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerUpdateReportingSessions");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodePCM");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerRemoveNode");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerInitialize");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerIsSessionInitialized");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessAudio");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerCreateNodeMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessEnvSPL");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessEnvSoundClass");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerProcessMicLevel");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerRegisterDeviceInfo");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetDeviceConnectionState");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerStartServices");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    AudioDataAnalysisManagerLibraryLoader(void)::libSym = dlsym(v0, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = dlerror();
    v3 = 136315138;
    v4 = v2;
    _os_log_error_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v3, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t vp::services::Audio_Data_Analysis_Impl::Client::initialize(vp::services::Audio_Data_Analysis_Impl::Client *this)
{
  v1 = this;
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    this = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v2);
    v3 = this;
    if (!this)
    {
      result = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v3 = 560033897;
  }

  v5 = vp::get_log(this);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    log_context_info = vp::get_log_context_info(__p, v1, "vp::services::Audio_Data_Analysis_Impl::Client]", 46);
    v8 = v16;
    v9 = __p[1];
    v10 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if ((v8 & 0x80u) == 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      v12 = __p[0];
      if ((v8 & 0x80u) == 0)
      {
        v12 = __p;
      }

      *buf = 136315650;
      v18 = v12;
      if (v11)
      {
        v13 = " ";
      }

      else
      {
        v13 = "";
      }

      v19 = 2080;
      v20 = v13;
      v21 = 1024;
      v22 = v3;
      _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%s%sfailed to initialize due to error - %u", buf, 0x1Cu);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0;
LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CF160(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = vp::get_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

    if (v22)
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::services::Audio_Data_Analysis_Impl::Client]", 46);
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CF110);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Audio_Data_Analysis_Impl::Client::process(vp::services::Audio_Data_Analysis_Impl::Client *this, uint64_t a2, const AudioBufferList *a3, uint64_t a4, const AudioTimeStamp *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = *(this + 1);
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v11 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v10, a2, a3, a4, a5);
    if (!v11)
    {
      result = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 560033897;
  }

  v13 = _os_log_pack_size();
  result = caulk::deferred_logger::create_message(*(this + 2), v13 + 88, 16);
  if (result)
  {
    v14 = result;
    v15 = _os_log_pack_fill();
    *v15 = 67109120;
    v15[1] = v11;
    caulk::concurrent::messenger::enqueue(*(*(this + 2) + 16), v14);
    result = 0;
  }

LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CF3EC(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    v4 = vp::get_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      vp::get_log_exception_info(va);
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CF39CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Audio_Data_Analysis_Impl::Client::create_pcm_node(uint64_t a1, uint64_t a2, const __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 8);
  v12 = applesauce::CF::convert_to<std::string,0>(__p, *a3);
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v12 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v11, a2, __p, a4, a5, a6);
    v13 = v12;
  }

  else
  {
    v13 = 560033897;
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(*__p);
  }

  if (v13)
  {
    v16 = vp::get_log(v12);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      log_context_info = vp::get_log_context_info(v25, a1, "vp::services::Audio_Data_Analysis_Impl::Client]", 46);
      v19 = v26;
      v20 = v25[1];
      v21 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if ((v19 & 0x80u) == 0)
        {
          v22 = v19;
        }

        else
        {
          v22 = v20;
        }

        v23 = v25[0];
        if ((v19 & 0x80u) == 0)
        {
          v23 = v25;
        }

        *__p = 136315650;
        *&__p[4] = v23;
        if (v22)
        {
          v24 = " ";
        }

        else
        {
          v24 = "";
        }

        v28 = 2080;
        v29 = v24;
        v30 = 1024;
        v31 = v13;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_ERROR, "%s%sfailed to create PCM node due to error - %u", __p, 0x1Cu);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CF690(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t buf, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a20 < 0)
    {
      operator delete(__p);
    }

    v21 = __cxa_begin_catch(a1);
    v22 = vp::get_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      vp::get_log_exception_info(&a10);
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CF684);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Audio_Data_Analysis_Impl::Client::set_application_bundle_id(vp *a1, uint64_t *a2)
{
  v2 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1);
  v4 = *a2;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    a1 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v3, v4);
    v5 = a1;
    if (!a1)
    {
      result = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v5 = 560033897;
  }

  v7 = vp::get_log(a1);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    log_context_info = vp::get_log_context_info(__p, v2, "vp::services::Audio_Data_Analysis_Impl::Client]", 46);
    v10 = v18;
    v11 = __p[1];
    v12 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if ((v10 & 0x80u) == 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      v14 = __p[0];
      if ((v10 & 0x80u) == 0)
      {
        v14 = __p;
      }

      *buf = 136315650;
      v20 = v14;
      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      v21 = 2080;
      v22 = v15;
      v23 = 1024;
      v24 = v5;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%s%sfailed to set application bundle ID due to error - %u", buf, 0x1Cu);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0;
LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CF928(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    v4 = vp::get_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      vp::get_log_exception_info(va);
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CF8D8);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::services::Audio_Data_Analysis_Impl::Client::set_reporter_ids(vp *a1, uint64_t a2)
{
  v3 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    a1 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v4, a2);
    v5 = a1;
    if (!a1)
    {
      result = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v5 = 560033897;
  }

  v7 = vp::get_log(a1);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    log_context_info = vp::get_log_context_info(__p, v3, "vp::services::Audio_Data_Analysis_Impl::Client]", 46);
    v10 = v18;
    v11 = __p[1];
    v12 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if ((v10 & 0x80u) == 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      v14 = __p[0];
      if ((v10 & 0x80u) == 0)
      {
        v14 = __p;
      }

      *buf = 136315650;
      v20 = v14;
      if (v13)
      {
        v15 = " ";
      }

      else
      {
        v15 = "";
      }

      v21 = 2080;
      v22 = v15;
      v23 = 1024;
      v24 = v5;
      _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%s%sfailed to set reporter IDs due to error - %u", buf, 0x1Cu);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = 0;
LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724CFB8C(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    v4 = vp::get_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      vp::get_log_exception_info(va);
    }

    __cxa_end_catch();
    JUMPOUT(0x2724CFB3CLL);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count ***std::unique_ptr<vp::Service_Provider>::~unique_ptr[abi:ne200100](std::__shared_weak_count ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vp::Service_Provider::~Service_Provider(v2);
    MEMORY[0x2743CBFA0]();
  }

  return a1;
}

void vp::Service_Provider::~Service_Provider(std::__shared_weak_count **this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = vp::get_log(this);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::Service_Provider]", 20);
    v5 = v17;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((v5 & 0x80u) == 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if ((v5 & 0x80u) == 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v19 = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[4];
  if (v11)
  {
    p_shared_owners = &this[3]->__shared_owners_;
    do
    {
      v13 = *p_shared_owners;
      *p_shared_owners = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      p_shared_owners += 2;
      v11 = (v11 - 1);
    }

    while (v11);
  }

  if (this[5])
  {
    boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,vp::Allocator<void>,void>::deallocate(this + 2, this[3]);
  }

  v14 = this[1];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

std::__shared_weak_count **std::__shared_ptr_pointer<vp::Service_Provider *,std::shared_ptr<vp::Service_Provider>::__shared_ptr_default_delete<vp::Service_Provider,vp::Service_Provider>,std::allocator<vp::Service_Provider>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    vp::Service_Provider::~Service_Provider(result);

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::__shared_ptr_pointer<vp::Service_Provider *,std::shared_ptr<vp::Service_Provider>::__shared_ptr_default_delete<vp::Service_Provider,vp::Service_Provider>,std::allocator<vp::Service_Provider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VoiceProcessorV2::SetChatFlavor(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v2 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
  {
    v3 = (*v2 ? *v2 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VoiceProcessor_v2.h";
      v9 = 1024;
      v10 = 2181;
      _os_log_impl(&dword_2724B4000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Chat flavor not supported in this vp version", &v7, 0x12u);
    }
  }

  v4 = *(a1 + 12704);
  if (v4 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v4, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.h", 2181, "SetChatFlavor", "Chat flavor not supported in this vp version");
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

void CALegacyLog::log(int *a1, int a2, uint64_t a3, char *a4, uint64_t a5, const char *a6, char *__format, ...)
{
  va_start(va, __format);
  v34 = *MEMORY[0x277D85DE8];
  v12 = vsnprintf(__str, 0x400uLL, __format, va);
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  if (!a3)
  {
    LOBYTE(v13) = 31;
LABEL_7:
    CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(v12);
    v17 = snprintf(v33, 0x400uLL, "%.2d:%.2d:%.2d.%.3d ", (CurrentGregorianDate >> 24) >> 24, CurrentGregorianDate >> 56, v16, ((v16 - v16) * 1000.0));
    v14 = v17 & ~(v17 >> 31);
    if ((v13 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = *(a3 + 48);
  if (v13)
  {
    goto LABEL_7;
  }

  v14 = 0;
  if ((v13 & 2) != 0)
  {
LABEL_8:
    v18 = snprintf(&v33[v14], 1024 - v14, "%s", gPriorityStrings[a2 - 1]);
    v14 += v18 & ~(v18 >> 31);
  }

LABEL_9:
  if ((v13 & 4) != 0)
  {
    v32[0] = 0;
    v19 = pthread_self();
    pthread_getname_np(v19, v32, 0x40uLL);
    if (v32[0])
    {
      v20 = snprintf(&v33[v14], 1024 - v14, "[%s] ");
    }

    else
    {
      pthread_self();
      v20 = snprintf(&v33[v14], 1024 - v14, "[%p] ");
    }

    v14 += v20 & ~(v20 >> 31);
    if (!a3)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (*(a3 + 24))
    {
      v21 = &v33[v14];
      v22 = 1024 - v14;
      if (a2 >= 3)
      {
        v23 = snprintf(v21, v22, "<%s> ");
      }

      else
      {
        v23 = snprintf(v21, v22, ">%s> ");
      }

      v14 += v23 & ~(v23 >> 31);
    }

    goto LABEL_21;
  }

  if (a3)
  {
    goto LABEL_16;
  }

LABEL_21:
  if ((v13 & 8) != 0)
  {
    if (a4)
    {
      strrchr(a4, 47);
      v24 = snprintf(&v33[v14], 1024 - v14, "%s:%d: ");
    }

    else
    {
      v24 = snprintf(&v33[v14], 1024 - v14, "%d: ");
    }

    v14 += v24 & ~(v24 >> 31);
  }

  if (a6 && (v13 & 0x10) != 0)
  {
    v25 = snprintf(&v33[v14], 1024 - v14, "%s: ", a6);
    v14 += v25 & ~(v25 >> 31);
  }

  snprintf(&v33[v14], 1024 - v14, "%s", __str);
  if (!a3 || (v26 = *(a3 + 56)) == 0 || (fprintf(v26, "%s\n", v33), fflush(*(a3 + 56)), (*(a3 + 64) & 1) == 0))
  {
    v27 = *(a1 + 1);
    if (v27)
    {
      fprintf(v27, "%s\n", v33);
      fflush(*(a1 + 1));
    }

    else
    {
      if (a2 >= 3)
      {
        v29 = 3;
      }

      else
      {
        v29 = a2;
      }

      v30 = *a1;
      if (*a1 == 3)
      {
        puts(v33);
      }

      else if (v30 == 2)
      {
        syslog(v29 + 2, "%s", v33);
      }

      else if (v30 == 1)
      {
        CFLog();
      }
    }
  }

LABEL_34:
  v28 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV2::MitigateFrontCameraNoise(VoiceProcessorV2 *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(this + 20);
  if (v1 == 3 || v1 == 0)
  {
    v4 = *(this + 294);
    if (v4 != *(this + 295) && *v4 == 1886613611 && FigCaptureSpeakerInterferenceMitigationIsSupported())
    {
      *(this + 1108) |= 0x80000000000000uLL;
      if (FigCaptureSpeakerInterferenceMitigationIsRequired())
      {
        v5 = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      AUPropAndParamHelper::AddItemToAUParamList(this + 1275, 5, v5);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v6 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v12 = "VoiceProcessor_v2.cpp";
          v13 = 1024;
          v14 = 3044;
          v15 = 2048;
          v16 = v5;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> mitigate front camera noise; value = %f", buf, 0x1Cu);
        }
      }

      v8 = *(this + 1588);
      if (v8 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          v10 = *(this + 1588);
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v8 = v10;
        }

        CALegacyLog::log(v8, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 3044, "MitigateFrontCameraNoise", "mitigate front camera noise; value = %f", v5);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t *AUPropAndParamHelper::AddItemToAUParamList(uint64_t *result, int a2, float a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 3;
  v6 = 0;
  if (v3 != *result)
  {
    v7 = 1;
    while (1)
    {
      v8 = v4 + 8 * v6;
      if (*v8 == a2 && *(v8 + 4) != a3)
      {
        break;
      }

      v6 = v7;
      if (v5 <= v7++)
      {
        goto LABEL_8;
      }
    }

    *v8 = a2;
    *(v8 + 4) = a3;
  }

LABEL_8:
  if (v5 == v6)
  {
    v10 = result[2];
    if (v3 >= v10)
    {
      v11 = v10 - v4;
      if (v11 >> 2 <= v5 + 1)
      {
        v12 = v5 + 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::allocator<std::pair<unsigned int,float>>::allocate_at_least[abi:ne200100](v13);
    }

    *v3 = a2;
    *(v3 + 4) = a3;
    result[1] = v3 + 8;
  }

  return result;
}

void std::allocator<std::pair<unsigned int,float>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void VoiceProcessorV2::ScaleHardwareOutputPresentationLatency(VoiceProcessorV2 *this, AudioObjectID inObjectID)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(this + 2260) == 1)
  {
    outData = 0.0;
    *&inAddress.mSelector = 0x6F7574706E737274;
    inAddress.mElement = 0;
    ioDataSize = 8;
    PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v5 = this + 12288;
    v6 = VPLogScope(void)::scope;
    if (PropertyData)
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          inAddress.mSelector = 136315650;
          *&inAddress.mScope = "VoiceProcessor_v2.cpp";
          v30 = 1024;
          v31 = 2029;
          v32 = 1024;
          LODWORD(v33) = PropertyData;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting ref physical device nominal sample rate", &inAddress, 0x18u);
        }
      }

      v8 = *(this + 1588);
      if (v8 && ((v5[3593] & 1) != 0 || v5[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2029, "ScaleHardwareOutputPresentationLatency", "error %d getting ref physical device nominal sample rate", PropertyData);
      }
    }

    else
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v9 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(this + 89);
          v11 = *(this + 294);
          inAddress.mSelector = 136316162;
          *&inAddress.mScope = "VoiceProcessor_v2.cpp";
          v30 = 1024;
          v31 = 2033;
          v32 = 2048;
          v33 = outData;
          v34 = 2048;
          v35 = v10;
          v36 = 1024;
          v37 = v11;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ref nominal sample rate = %lf; ref sample rate = %lf; output latency before scaling = %u", &inAddress, 0x2Cu);
        }
      }

      v12 = *(this + 1588);
      if (v12 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v12, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2033, "ScaleHardwareOutputPresentationLatency", "ref nominal sample rate = %lf; ref sample rate = %lf; output latency before scaling = %u", outData, *(this + 89), *(this + 294));
      }

      if (outData > 0.0)
      {
        LODWORD(v4) = *(this + 294);
        v13 = *(this + 74) * v4 / outData;
        *(this + 294) = v13;
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v14 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(this + 294);
            inAddress.mSelector = 136315650;
            *&inAddress.mScope = "VoiceProcessor_v2.cpp";
            v30 = 1024;
            v31 = 2037;
            v32 = 1024;
            LODWORD(v33) = v16;
            _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> output latency after scaling = %u", &inAddress, 0x18u);
          }
        }

        v17 = *(this + 1588);
        if (v17 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v17, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2037, "ScaleHardwareOutputPresentationLatency", "output latency after scaling = %u", *(this + 294));
        }

        if (!*(this + 1135))
        {
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
              v20 = *(this + 289);
              inAddress.mSelector = 136315650;
              *&inAddress.mScope = "VoiceProcessor_v2.cpp";
              v30 = 1024;
              v31 = 2040;
              v32 = 1024;
              LODWORD(v33) = v20;
              _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> tap stream input latency before scaling = %u", &inAddress, 0x18u);
            }
          }

          v21 = *(this + 1588);
          if (v21 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v21, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2040, "ScaleHardwareOutputPresentationLatency", "tap stream input latency before scaling = %u", *(this + 289));
          }

          LODWORD(v13) = *(this + 289);
          *(this + 289) = (*(this + 74) * *&v13 / outData);
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v22 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
          {
            v23 = (*v22 ? *v22 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v24 = *(this + 289);
              inAddress.mSelector = 136315650;
              *&inAddress.mScope = "VoiceProcessor_v2.cpp";
              v30 = 1024;
              v31 = 2043;
              v32 = 1024;
              LODWORD(v33) = v24;
              _os_log_impl(&dword_2724B4000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> tap stream input latency after scaling = %u", &inAddress, 0x18u);
            }
          }

          v25 = *(this + 1588);
          if (v25 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v25, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2043, "ScaleHardwareOutputPresentationLatency", "tap stream input latency after scaling = %u", *(this + 289));
          }
        }

        VoiceProcessorV2::PListWriteRefPhysicalDevSR(this, &outData);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void VoiceProcessorV2::ScaleHardwareOutputSafetyOffsets(VoiceProcessorV2 *this, AudioObjectID inObjectID)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = this + 12288;
  if ((*(this + 16161) & 1) == 0 && *(this + 2260) == 1)
  {
    outData = 0.0;
    *&inAddress.mSelector = 0x6F7574706E737274;
    inAddress.mElement = 0;
    ioDataSize = 8;
    PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v6 = VPLogScope(void)::scope;
    if (PropertyData)
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          inAddress.mSelector = 136315650;
          *&inAddress.mScope = "VoiceProcessor_v2.cpp";
          v31 = 1024;
          v32 = 1997;
          v33 = 1024;
          LODWORD(v34) = PropertyData;
          _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting ref physical device nominal sample rate", &inAddress, 0x18u);
        }
      }

      v8 = *(this + 1588);
      if (v8 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v8, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1997, "ScaleHardwareOutputSafetyOffsets", "error %d getting ref physical device nominal sample rate");
      }
    }

    else
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v9 = (*v6 ? *v6 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(this + 89);
          v11 = *(this + 296);
          inAddress.mSelector = 136316162;
          *&inAddress.mScope = "VoiceProcessor_v2.cpp";
          v31 = 1024;
          v32 = 2001;
          v33 = 2048;
          v34 = outData;
          v35 = 2048;
          v36 = v10;
          v37 = 1024;
          v38 = v11;
          _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ref nominal sample rate = %lf; ref sample rate = %lf; output safety offset before scaling = %u", &inAddress, 0x2Cu);
        }
      }

      v12 = *(this + 1588);
      if (v12 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v12, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2001, "ScaleHardwareOutputSafetyOffsets", "ref nominal sample rate = %lf; ref sample rate = %lf; output safety offset before scaling = %u", outData, *(this + 89), *(this + 296));
      }

      if (outData > 0.0)
      {
        LODWORD(v5) = *(this + 296);
        *(this + 296) = (*(this + 74) * v5 / outData);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v13 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v14 = (*v13 ? *v13 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(this + 296);
            inAddress.mSelector = 136315650;
            *&inAddress.mScope = "VoiceProcessor_v2.cpp";
            v31 = 1024;
            v32 = 2005;
            v33 = 1024;
            LODWORD(v34) = v15;
            _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> output safety offset after scaling = %u", &inAddress, 0x18u);
          }
        }

        v16 = *(this + 1588);
        if (v16 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v16, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2005, "ScaleHardwareOutputSafetyOffsets", "output safety offset after scaling = %u", *(this + 296));
        }

        if (!*(this + 1135))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v18 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
          if (v18)
          {
            v20 = v18;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v21 = *(this + 290);
              inAddress.mSelector = 136315650;
              *&inAddress.mScope = "VoiceProcessor_v2.cpp";
              v31 = 1024;
              v32 = 2008;
              v33 = 1024;
              LODWORD(v34) = v21;
              _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> tap stream input safety offset before scaling = %u", &inAddress, 0x18u);
            }
          }

          v22 = *(this + 1588);
          if (v22 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v22, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2008, "ScaleHardwareOutputSafetyOffsets", "tap stream input safety offset before scaling = %u", *(this + 290));
          }

          LODWORD(v19) = *(this + 290);
          *(this + 290) = (*(this + 74) * v19 / outData);
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v23 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
          if (v23)
          {
            v24 = v23;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v25 = *(this + 290);
              inAddress.mSelector = 136315650;
              *&inAddress.mScope = "VoiceProcessor_v2.cpp";
              v31 = 1024;
              v32 = 2011;
              v33 = 1024;
              LODWORD(v34) = v25;
              _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> tap stream input safety offset after scaling = %u", &inAddress, 0x18u);
            }
          }

          v26 = *(this + 1588);
          if (v26 && ((v2[3593] & 1) != 0 || v2[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v27 = *(this + 290);
            CALegacyLog::log(v26, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 2011, "ScaleHardwareOutputSafetyOffsets", "tap stream input safety offset after scaling = %u");
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t CALog::LogObjIfEnabled(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!CALegacyLog::LogEnabled(a1, a2, 0))
  {
    return 0;
  }

  if (*a2)
  {
    return *a2;
  }

  return MEMORY[0x277D86220];
}

void VoiceProcessorV2::UpdateHardwareOutputPresentationLatency(VoiceProcessorV2 *this)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = this + 12288;
  if ((*(this + 16161) & 1) == 0)
  {
    v46 = 1869968496;
    v3 = *(this + 294);
    if (v3 != *(this + 295))
    {
      v4 = (this + 1144);
      if (*v3 == 1885433971)
      {
        outData = 0;
        v5 = *v4;
        *&inAddress.mSelector = 0x6F75747064616373;
        inAddress.mElement = 0;
        valuePtr = 0;
        ioDataSize = 8;
        PropertyData = AudioObjectGetPropertyData(v5, &inAddress, 4u, v3, &ioDataSize, &outData);
        if (PropertyData)
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v7 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v9 = *v4;
              inAddress.mSelector = 136315906;
              *&inAddress.mScope = "VoiceProcessor_v2.cpp";
              v51 = 1024;
              v52 = 1968;
              v53 = 1024;
              v54 = PropertyData;
              v55 = 1024;
              v56 = v9;
              _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting streams from ref %u", &inAddress, 0x1Eu);
            }
          }

          v10 = *(this + 1588);
          if (v10 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              v45 = *(this + 1588);
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              v10 = v45;
            }

            CALegacyLog::log(v10, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1968, "getStreamID", "error %d getting streams from ref %u", PropertyData, *v4);
          }
        }

        v11 = outData;
        if (outData)
        {
          if (CFArrayGetCount(outData) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(outData, 0);
            CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v13 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
            {
              v14 = (*v13 ? *v13 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                inAddress.mSelector = 136315650;
                *&inAddress.mScope = "VoiceProcessor_v2.cpp";
                v51 = 1024;
                v52 = 1975;
                v53 = 1024;
                v54 = valuePtr;
                _os_log_impl(&dword_2724B4000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> stream ID = %u", &inAddress, 0x18u);
              }
            }

            v15 = *(this + 1588);
            if (v15 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v15, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1975, "getStreamID", "stream ID = %u", valuePtr);
            }
          }

          CFRelease(outData);
          v11 = valuePtr;
        }

        if (!PropertyData)
        {
          *&inAddress.mSelector = 0x6F757470736C6174;
          inAddress.mElement = 0;
          LODWORD(outData) = 4;
          v16 = AudioObjectGetPropertyData(v11, &inAddress, 0, 0, &outData, this + 1176);
          if (v16)
          {
            v17 = v16;
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
                inAddress.mSelector = 136315650;
                *&inAddress.mScope = "VoiceProcessor_v2.cpp";
                v51 = 1024;
                v52 = 1862;
                v53 = 1024;
                v54 = v17;
                _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting stream output latency", &inAddress, 0x18u);
              }
            }

            v20 = *(this + 1588);
            if (v20 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1862, "UpdateHardwareOutputPresentationLatency", "error %d getting stream output latency", v17);
            }
          }
        }
      }

      else
      {
        PortID = VoiceProcessorV2::getPortID(this, this + 286, &v46);
        if (!PortID)
        {
          ioDataSize = 0;
          *&inAddress.mSelector = 0x676C6F62706F776ELL;
          inAddress.mElement = 0;
          LODWORD(outData) = 4;
          v22 = AudioObjectGetPropertyData(HIDWORD(PortID), &inAddress, 0, 0, &outData, &ioDataSize);
          if (v22)
          {
            v23 = v22;
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
                inAddress.mSelector = 136315650;
                *&inAddress.mScope = "VoiceProcessor_v2.cpp";
                v51 = 1024;
                v52 = 1879;
                v53 = 1024;
                v54 = v23;
                _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting owning device ID for the ref port", &inAddress, 0x18u);
              }
            }

            v26 = *(this + 1588);
            if (v26 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v26, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1879, "UpdateHardwareOutputPresentationLatency", "error %d getting owning device ID for the ref port", v23);
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
              inAddress.mSelector = 136315650;
              *&inAddress.mScope = "VoiceProcessor_v2.cpp";
              v51 = 1024;
              v52 = 1880;
              v53 = 1024;
              v54 = ioDataSize;
              _os_log_impl(&dword_2724B4000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ref physical dev ID = %u", &inAddress, 0x18u);
            }
          }

          v29 = *(this + 1588);
          if (v29 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v29, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1880, "UpdateHardwareOutputPresentationLatency", "ref physical dev ID = %u", ioDataSize);
          }

          *&inAddress.mSelector = 0x6F7574706C746E63;
          inAddress.mElement = 0;
          LODWORD(outData) = 4;
          v30 = AudioObjectGetPropertyData(ioDataSize, &inAddress, 0, 0, &outData, this + 1176);
          if (v30)
          {
            v31 = v30;
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v32 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v33 = (*v32 ? *v32 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                inAddress.mSelector = 136315650;
                *&inAddress.mScope = "VoiceProcessor_v2.cpp";
                v51 = 1024;
                v52 = 1886;
                v53 = 1024;
                v54 = v31;
                _os_log_impl(&dword_2724B4000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting physical device output latency", &inAddress, 0x18u);
              }
            }

            v34 = *(this + 1588);
            if (v34 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v34, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1886, "UpdateHardwareOutputPresentationLatency", "error %d getting physical device output latency", v31);
            }
          }

          if (!*(this + 1135))
          {
            *&inAddress.mSelector = 0x696E70746C746E63;
            inAddress.mElement = 0;
            LODWORD(outData) = 4;
            v40 = AudioObjectGetPropertyData(ioDataSize, &inAddress, 0, 0, &outData, this + 1156);
            if (v40)
            {
              v41 = v40;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v42 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
              if (v42)
              {
                v43 = v42;
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  inAddress.mSelector = 136315650;
                  *&inAddress.mScope = "VoiceProcessor_v2.cpp";
                  v51 = 1024;
                  v52 = 1893;
                  v53 = 1024;
                  v54 = v41;
                  _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting tap stream input latency", &inAddress, 0x18u);
                }
              }

              v44 = *(this + 1588);
              if (v44 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v44, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1893, "UpdateHardwareOutputPresentationLatency", "error %d getting tap stream input latency", v41);
              }
            }
          }

          (*(*this + 304))(this, ioDataSize);
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
          v37 = *(this + 294);
          inAddress.mSelector = 136315650;
          *&inAddress.mScope = "VoiceProcessor_v2.cpp";
          v51 = 1024;
          v52 = 1903;
          v53 = 1024;
          v54 = v37;
          _os_log_impl(&dword_2724B4000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Override aggregate device output latency with stream/physical device output latency= %u", &inAddress, 0x18u);
        }
      }

      v38 = *(this + 1588);
      if (v38 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v38, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1903, "UpdateHardwareOutputPresentationLatency", "Override aggregate device output latency with stream/physical device output latency= %u", *(this + 294));
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

unint64_t VoiceProcessorV2::getPortID(VoiceProcessorV2 *this, AudioObjectID *a2, const unsigned int *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v6 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
  {
    v7 = (*v6 ? *v6 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a2;
      buf.mSelector = 136315650;
      *&buf.mScope = "VoiceProcessor_v2.cpp";
      v37 = 1024;
      v38 = 1915;
      v39 = 1024;
      v40 = v8;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> device ID = %u", &buf, 0x18u);
    }
  }

  v9 = this + 12288;
  v10 = *(this + 1588);
  if (v10 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v10, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1915, "getPortID", "device ID = %u", *a2);
  }

  outData = 0;
  if (*a3 == 1768845428)
  {
    v11 = *a2;
    strcpy(&buf, "spcdtpni");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v12 = *(this + 297);
  }

  else
  {
    if (*a3 != 1869968496)
    {
      PropertyData = 0;
      goto LABEL_54;
    }

    v11 = *a2;
    strcpy(&buf, "spcdptuo");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v12 = *(this + 294);
  }

  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(v11, &buf, 4u, v12, &ioDataSize, &outData);
  if (PropertyData)
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
        v16 = *(this + 286);
        buf.mSelector = 136315906;
        *&buf.mScope = "VoiceProcessor_v2.cpp";
        v37 = 1024;
        v38 = 1928;
        v39 = 1024;
        v40 = PropertyData;
        v41 = 1024;
        v42 = v16;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting connected ports %u", &buf, 0x1Eu);
      }
    }

    v17 = *(this + 1588);
    if (v17 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v17, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1928, "getPortID", "error %d getting connected ports %u", PropertyData, *(this + 286));
    }
  }

  if (outData)
  {
    Count = CFArrayGetCount(outData);
    if (Count < 1)
    {
      v27 = Count;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v28 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v29 = (*v28 ? *v28 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315650;
          *&buf.mScope = "VoiceProcessor_v2.cpp";
          v37 = 1024;
          v38 = 1938;
          v39 = 1024;
          v40 = v27;
          _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Size of portsArray = %u", &buf, 0x18u);
        }
      }

      v30 = *(this + 1588);
      if (v30 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v30, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1938, "getPortID", "Size of portsArray = %u");
      }
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(outData, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
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
          buf.mSelector = 136315650;
          *&buf.mScope = "VoiceProcessor_v2.cpp";
          v37 = 1024;
          v38 = 1936;
          v39 = 1024;
          v40 = valuePtr;
          _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> port ID = %u", &buf, 0x18u);
        }
      }

      v22 = *(this + 1588);
      if (v22 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v22, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1936, "getPortID", "port ID = %u");
      }
    }

    CFRelease(outData);
    v26 = valuePtr << 32;
    goto LABEL_86;
  }

LABEL_54:
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
      buf.mSelector = 136315394;
      *&buf.mScope = "VoiceProcessor_v2.cpp";
      v37 = 1024;
      v38 = 1942;
      _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Array of ports is empty", &buf, 0x12u);
    }
  }

  v25 = *(this + 1588);
  if (v25 && ((v9[3593] & 1) != 0 || v9[3594] == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v25, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1942, "getPortID", "Array of ports is empty");
  }

  v26 = 0;
LABEL_86:
  v31 = *MEMORY[0x277D85DE8];
  return v26 | PropertyData;
}

_BYTE *VoiceProcessorV2::CorrectHardwareOutputPresentationLatency(_BYTE *this)
{
  if ((this[16161] & 1) == 0 && this[2260] == 1)
  {
    return (*(*this + 288))();
  }

  return this;
}

void VoiceProcessorV2::UpdateHardwareOutputSafetyOffsets(VoiceProcessorV2 *this)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = this + 12288;
  if ((*(this + 16161) & 1) == 0 && *(this + 294) != *(this + 295))
  {
    v3 = *(this + 296);
    v36 = 1869968496;
    PortID = VoiceProcessorV2::getPortID(this, this + 286, &v36);
    if (!PortID)
    {
      outData = 0;
      *&inAddress.mSelector = 0x676C6F62706F776ELL;
      inAddress.mElement = 0;
      ioDataSize = 4;
      PropertyData = AudioObjectGetPropertyData(HIDWORD(PortID), &inAddress, 0, 0, &ioDataSize, &outData);
      if (PropertyData)
      {
        v6 = PropertyData;
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v7 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            inAddress.mSelector = 136315650;
            *&inAddress.mScope = "VoiceProcessor_v2.cpp";
            v39 = 1024;
            v40 = 1781;
            v41 = 1024;
            v42 = v6;
            _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting owning device ID for the ref port", &inAddress, 0x18u);
          }
        }

        v9 = *(this + 1588);
        if (v9 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v9, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1781, "UpdateHardwareOutputSafetyOffsets", "error %d getting owning device ID for the ref port", v6);
        }
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v10 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v11 = (*v10 ? *v10 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          inAddress.mSelector = 136315650;
          *&inAddress.mScope = "VoiceProcessor_v2.cpp";
          v39 = 1024;
          v40 = 1783;
          v41 = 1024;
          v42 = outData;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> ref physical dev ID = %u", &inAddress, 0x18u);
        }
      }

      v12 = (this + 1184);
      v13 = *(this + 1588);
      if (v13 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v13, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1783, "UpdateHardwareOutputSafetyOffsets", "ref physical dev ID = %u", outData);
      }

      *&inAddress.mSelector = 0x6F75747073616674;
      inAddress.mElement = 0;
      ioDataSize = 4;
      v14 = AudioObjectGetPropertyData(outData, &inAddress, 0, 0, &ioDataSize, this + 1184);
      if (v14)
      {
        v15 = v14;
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v16 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v17 = (*v16 ? *v16 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            inAddress.mSelector = 136315650;
            *&inAddress.mScope = "VoiceProcessor_v2.cpp";
            v39 = 1024;
            v40 = 1791;
            v41 = 1024;
            v42 = v15;
            _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting physical output device safety offset", &inAddress, 0x18u);
          }
        }

        v18 = *(this + 1588);
        if (v18 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            v33 = *(this + 1588);
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            v18 = v33;
          }

          CALegacyLog::log(v18, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1791, "UpdateHardwareOutputSafetyOffsets", "error %d getting physical output device safety offset", v15);
        }
      }

      if (!*(this + 1135))
      {
        *&inAddress.mSelector = 0x696E707473616674;
        inAddress.mElement = 0;
        ioDataSize = 4;
        v28 = AudioObjectGetPropertyData(outData, &inAddress, 0, 0, &ioDataSize, this + 1160);
        if (v28)
        {
          v29 = v28;
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v30 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v31 = (*v30 ? *v30 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              inAddress.mSelector = 136315650;
              *&inAddress.mScope = "VoiceProcessor_v2.cpp";
              v39 = 1024;
              v40 = 1800;
              v41 = 1024;
              v42 = v29;
              _os_log_impl(&dword_2724B4000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> error %d getting tap stream input safety offset", &inAddress, 0x18u);
            }
          }

          v32 = *(this + 1588);
          if (v32 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              v34 = *(this + 1588);
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              v32 = v34;
            }

            CALegacyLog::log(v32, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1800, "UpdateHardwareOutputSafetyOffsets", "error %d getting tap stream input safety offset", v29);
          }
        }
      }

      (*(*this + 296))(this, outData);
      *(this + 297) = *(this + 296) - v3;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v19 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v20 = (*v19 ? *v19 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *v12;
          inAddress.mSelector = 136315650;
          *&inAddress.mScope = "VoiceProcessor_v2.cpp";
          v39 = 1024;
          v40 = 1809;
          v41 = 1024;
          v42 = v21;
          _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Override aggregate device output safety offset with physical device output safety offset= %u", &inAddress, 0x18u);
        }
      }

      v22 = *(this + 1588);
      if (v22 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v22, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1809, "UpdateHardwareOutputSafetyOffsets", "Override aggregate device output safety offset with physical device output safety offset= %u", *v12);
      }

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
          v25 = *(this + 297);
          inAddress.mSelector = 136315650;
          *&inAddress.mScope = "VoiceProcessor_v2.cpp";
          v39 = 1024;
          v40 = 1811;
          v41 = 1024;
          v42 = v25;
          _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Output safety offset correction= %d", &inAddress, 0x18u);
        }
      }

      v26 = *(this + 1588);
      if (v26 && ((v1[3593] & 1) != 0 || v1[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v26, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1811, "UpdateHardwareOutputSafetyOffsets", "Output safety offset correction= %d", *(this + 297));
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

_BYTE *VoiceProcessorV2::CorrectHardwareOutputSafetyOffsets(_BYTE *this)
{
  if ((this[16161] & 1) == 0 && this[2260] == 1)
  {
    return (*(*this + 272))();
  }

  return this;
}

uint64_t VoiceProcessorV2::RemovePropertyListenerBlock(VoiceProcessorV2 *this, unsigned int a2, uint64_t a3)
{
  v31 = a2;
  std::mutex::lock((this + 2680));
  if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(this + 542, a2))
  {
    v32 = &v31;
    v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 542, a2);
    v7 = v6;
    v8 = v6[3];
    v9 = v6[4];
    if (v9 != v8)
    {
      v10 = 0;
      v11 = (v9 - v8) >> 4;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v12 = v6[3];
      while (1)
      {
        v13 = *v12;
        v12 += 2;
        if (v13 == a3)
        {
          break;
        }

        if (v11 == ++v10)
        {
          goto LABEL_43;
        }
      }

      v15 = (v8 + 16 * v10);
      v16 = v15 + 2;
      if (v15 + 2 != v9)
      {
        do
        {
          v15 = v16;
          *(v16 - 2) = *v16;
          std::__destroy_at[abi:ne200100]<vp::Block<void ()>,0>(v16 - 1);
          v17 = v15[1];
          v15[1] = 0;
          *(v15 - 1) = v17;
          v16 = v15 + 2;
        }

        while (v15 + 2 != v9);
        v9 = v7[4];
      }

      while (v9 != v15)
      {
        v9 -= 16;
        std::__destroy_at[abi:ne200100]<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo,0>(v9);
      }

      v7[4] = v15;
      if (v7[3] == v15)
      {
        v18 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(this + 542, v31);
        v19 = v18;
        v20 = *(this + 4344);
        v21 = v18[1];
        v22 = vcnt_s8(v20);
        v22.i16[0] = vaddlv_u8(v22);
        if (v22.u32[0] > 1uLL)
        {
          if (v21 >= *&v20)
          {
            v21 %= *&v20;
          }
        }

        else
        {
          v21 &= *&v20 - 1;
        }

        v23 = *(this + 542);
        v24 = *(v23 + 8 * v21);
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24 != v18);
        if (v25 == (this + 4352))
        {
          goto LABEL_33;
        }

        v26 = v25[1];
        if (v22.u32[0] > 1uLL)
        {
          if (v26 >= *&v20)
          {
            v26 %= *&v20;
          }
        }

        else
        {
          v26 &= *&v20 - 1;
        }

        if (v26 != v21)
        {
LABEL_33:
          if (!*v18)
          {
            goto LABEL_34;
          }

          v27 = *(*v18 + 8);
          if (v22.u32[0] > 1uLL)
          {
            if (v27 >= *&v20)
            {
              v27 %= *&v20;
            }
          }

          else
          {
            v27 &= *&v20 - 1;
          }

          if (v27 != v21)
          {
LABEL_34:
            *(v23 + 8 * v21) = 0;
          }
        }

        v28 = *v18;
        if (*v18)
        {
          v29 = *(v28 + 8);
          if (v22.u32[0] > 1uLL)
          {
            if (v29 >= *&v20)
            {
              v29 %= *&v20;
            }
          }

          else
          {
            v29 &= *&v20 - 1;
          }

          if (v29 != v21)
          {
            *(*(this + 542) + 8 * v29) = v25;
            v28 = *v18;
          }
        }

        *v25 = v28;
        *v18 = 0;
        --*(this + 545);
        v32 = (v18 + 3);
        std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>::__destroy_vector::operator()[abi:ne200100](&v32);
        operator delete(v19);
      }
    }

LABEL_43:
    v14 = 0;
  }

  else
  {
    v14 = 4294956417;
  }

  std::mutex::unlock((this + 2680));
  return v14;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__destroy_at[abi:ne200100]<vp::Block<void ()(unsigned int)>,0>(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }
}

void std::__destroy_at[abi:ne200100]<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
    *(a1 + 8) = 0;
  }
}

void std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::__destroy_at[abi:ne200100]<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t VoiceProcessorV2::AddPropertyListenerBlock(uint64_t a1, unsigned int a2, const void *a3, uint64_t *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v47 = a2;
  std::mutex::lock((a1 + 2680));
  if (a2 != 1885957987)
  {
    v11 = 4294956417;
    goto LABEL_62;
  }

  if (std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::find<unsigned int>((a1 + 4336), 0x70696F63u))
  {
    goto LABEL_22;
  }

  v44 = 0;
  aBlock = 0;
  v46 = 0;
  *buf = 1885957987;
  v50 = 0;
  *&buf[8] = 0uLL;
  v8 = *(a1 + 4344);
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = 1885957987;
    if (*&v8 <= 0x70696F63uLL)
    {
      v10 = 0x70696F63u % v8.i32[0];
    }
  }

  else
  {
    v10 = (v8.i32[0] - 1) & 0x70696F63;
  }

  v12 = *(*(a1 + 4336) + 8 * v10);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == 1885957987)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (*(v13 + 4) != 1885957987)
  {
    goto LABEL_20;
  }

  v48 = &buf[8];
  std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>::__destroy_vector::operator()[abi:ne200100](&v48);
  *buf = &v44;
  std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_22:
  v15 = *(a1 + 4376) + 1;
  *(a1 + 4376) = v15;
  v44 = v15;
  if (a3)
  {
    v16 = _Block_copy(a3);
  }

  else
  {
    v16 = 0;
  }

  aBlock = v16;
  *buf = &v47;
  v17 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 4336), v47);
  v18 = v17[4];
  v19 = v17[5];
  if (v18 >= v19)
  {
    v21 = v17[3];
    v22 = (v18 - v21) >> 4;
    if ((v22 + 1) >> 60)
    {
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
    }

    v23 = v19 - v21;
    v24 = v23 >> 3;
    if (v23 >> 3 <= (v22 + 1))
    {
      v24 = v22 + 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFF0)
    {
      v25 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      if (!(v25 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = (16 * v22);
    std::construct_at[abi:ne200100]<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo,VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo&,VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo*>(v26, v15, v16);
    v20 = v26 + 2;
    v27 = v17[3];
    v28 = v17[4];
    v29 = (v26 + v27 - v28);
    if (v28 != v27)
    {
      v30 = v17[3];
      v31 = v29;
      do
      {
        *v31 = *v30;
        v32 = *(v30 + 1);
        *(v30 + 1) = 0;
        v31[1] = v32;
        v30 += 16;
        v31 += 2;
      }

      while (v30 != v28);
      do
      {
        std::__destroy_at[abi:ne200100]<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo,0>(v27);
        v27 += 16;
      }

      while (v27 != v28);
      v27 = v17[3];
    }

    v17[3] = v29;
    v17[4] = v20;
    v17[5] = 0;
    if (v27)
    {
      operator delete(v27);
    }

    v15 = v44;
  }

  else
  {
    v20 = std::construct_at[abi:ne200100]<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo,VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo&,VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo*>(v18, v15, v16) + 2;
  }

  v17[4] = v20;
  *a4 = v15;
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
      v35 = v47;
      v48 = &v47;
      v36 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 4336), v47);
      v37 = (v36[4] - v36[3]) >> 4;
      *buf = 136315906;
      *&buf[4] = "VoiceProcessor_v2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1083;
      *&buf[18] = 1024;
      *&buf[20] = v35;
      LOWORD(v50) = 1024;
      *(&v50 + 2) = v37;
      _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Successfully added property listener for property ID %d! listener list size: %d", buf, 0x1Eu);
    }
  }

  v38 = *(a1 + 12704);
  if (v38 && ((*(a1 + 15881) & 1) != 0 || *(a1 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v39 = VPLogScope(void)::scope;
    v40 = v47;
    *buf = &v47;
    v41 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 4336), v47);
    CALegacyLog::log(v38, 5, v39, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1083, "AddPropertyListenerBlock", "Successfully added property listener for property ID %d! listener list size: %d", v40, (v41[4] - v41[3]) >> 4);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v11 = 0;
LABEL_62:
  std::mutex::unlock((a1 + 2680));
  v42 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2724D4180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo::~VoiceProcessorPropertyListenerBlockInfo(va);
  std::mutex::unlock((v4 + 2680));
  _Unwind_Resume(a1);
}

void *std::construct_at[abi:ne200100]<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo,VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo&,VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo*>(void *a1, uint64_t a2, void *aBlock)
{
  *a1 = a2;
  if (aBlock)
  {
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  a1[1] = v4;
  return a1;
}

void VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo::~VoiceProcessorPropertyListenerBlockInfo(VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    _Block_release(v2);
    *(this + 1) = 0;
  }
}

uint64_t VoiceProcessorV2::AppendReferenceSignal(VoiceProcessorV2 *this, AudioBufferList *a2, AudioBufferList *a3, int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  atomic_fetch_add(this + 625, 1u);
  if (!*(this + 624))
  {
    v8 = *(this + 1135);
    if (a4)
    {
      if (v8 && *(this + 16160) != 1)
      {
        goto LABEL_41;
      }
    }

    else if (v8 != 1 || (*(this + 16160) & 1) != 0)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v9 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1031;
          *&buf[18] = 2080;
          *&buf[20] = "internal";
          _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> %s reference signal was not expected!", buf, 0x1Cu);
        }
      }

      v11 = *(this + 1588);
      if (v11 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v11, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1031, "AppendReferenceSignal", "%s reference signal was not expected!", "internal");
      }

      goto LABEL_41;
    }

    v12 = *(this + 3149) + 1;
    *(this + 3149) = v12;
    if (*(this + 484) != 1)
    {
      VoiceProcessorV2::LogIOError(this, 11.005, *(this + 3148), v12, 0.0, "appendreferencesignal: not OK to process");
      goto LABEL_3;
    }

    if (*(this + 15881) == 1)
    {
      v13 = *(this + 1914);
      if (!v13)
      {
LABEL_41:
        v5 = 0;
        goto LABEL_42;
      }

      VoiceProcessorV2::InjectionOrAdditionFilesCopyPreInjectionABL(v13, a2, a3);
      v14 = *(this + 1914);
      v31 = 0;
      v15 = *(v14 + 12);
      v16 = v15 / *(this + 154);
      v5 = VoiceProcessorV2::FrontEndBlockSizeCheck(this, 1, v15 / *(this + 154), *(this + 125), v14, &v31);
      if (v5)
      {
        goto LABEL_42;
      }

      v17 = v31;
      if (*(this + 15881) == 1)
      {
        v18 = v31;
        if (!v31)
        {
          v18 = *(this + 125);
        }

        VoiceProcessorV2::InjectionFilesReadSignal(this, 3, v18, v14);
      }

      if (v17)
      {
        if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0, v17, v14, a3);
        }

        v19 = *(this + 129);
        if (*v19)
        {
          v20 = 0;
          v21 = (v19 + 4);
          do
          {
            bzero(*v21, *(v21 - 1));
            ++v20;
            v21 += 2;
          }

          while (v20 < *v19);
        }
      }

      else
      {
        if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0, *(this + 125), v14, a3);
        }

        v30 = *(this + 38);
        *buf = *(this + 37);
        *&buf[16] = v30;
        v33 = *(this + 78);
        VoiceProcessorV2::FrontEndFormatConverter(this, buf, *(this + 102), v14, v16, *(this + 129), 0);
      }
    }

    else
    {
      v31 = 0;
      mDataByteSize = a2->mBuffers[0].mDataByteSize;
      v25 = mDataByteSize / *(this + 154);
      v5 = VoiceProcessorV2::FrontEndBlockSizeCheck(this, 1, mDataByteSize / *(this + 154), *(this + 125), a2, &v31);
      if (v5)
      {
        goto LABEL_42;
      }

      if (v31)
      {
        if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0, v31, a2, a3);
        }

        v26 = *(this + 129);
        if (*v26)
        {
          v27 = 0;
          v28 = (v26 + 4);
          do
          {
            bzero(*v28, *(v28 - 1));
            ++v27;
            v28 += 2;
          }

          while (v27 < *v26);
        }
      }

      else
      {
        if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0, *(this + 125), a2, a3);
        }

        v29 = *(this + 38);
        *buf = *(this + 37);
        *&buf[16] = v29;
        v33 = *(this + 78);
        VoiceProcessorV2::FrontEndFormatConverter(this, buf, *(this + 102), a2, v25, *(this + 129), 0);
      }
    }

    VoiceProcessorV2::FrontEndRefTimeStampHandler(this, &a3->mNumberBuffers, *(this + 125));
    goto LABEL_42;
  }

  VoiceProcessorV2::LogIOError(this, 11.006, *(this + 3148), *(this + 3149), 0.0, "appendreferencesignal: failed to acquire uplink reader lock");
LABEL_3:
  v5 = 4294956433;
LABEL_42:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t VoiceProcessorV2::FrontEndBlockSizeCheck(VoiceProcessorV2 *this, int a2, unsigned int a3, unsigned int a4, const AudioBufferList *a5, unsigned int *a6)
{
  v102 = *MEMORY[0x277D85DE8];
  v8 = this + 12288;
  if (a2)
  {
    v9 = "ref";
  }

  else
  {
    v9 = "mic";
  }

  if (a2)
  {
    v10 = 12.0;
  }

  else
  {
    v10 = 22.0;
  }

  v11 = (this + 592);
  v12 = (this + 632);
  if (a2)
  {
    v13 = this + 592;
  }

  else
  {
    v13 = this + 632;
  }

  if (a3)
  {
    if (a3 == a4 && *(v13 + 6) * a3 <= a5->mBuffers[0].mDataByteSize)
    {
      if (*(this + 15801) == 1 && (a2 & 1) != 0 || (v24 = 0, *(this + 15802) == 1) && (a2 & 1) == 0)
      {
        if (a2)
        {
          *(this + 15801) = 0;
          v39 = mach_absolute_time();
          v40 = 15808;
        }

        else
        {
          *(this + 15802) = 0;
          v39 = mach_absolute_time();
          v40 = 15816;
        }

        v44 = (v39 - *(this + v40)) * 0.0000000416666667;
        VoiceProcessorV2::LogIOError(this, v10 + 0.002, *(this + 3148), *(this + 3149), a3, "append signal (%s): <block size no longer mismatched>", v9);
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v45 = VPLogScope(void)::scope;
        if (v44 <= 1.0)
        {
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
          {
            v51 = (*v45 ? *v45 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              v84 = 1024;
              v85 = 1325;
              v86 = 2048;
              v87 = v44;
              _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", buf, 0x1Cu);
            }
          }

          v52 = *(this + 1588);
          if (v52 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v52, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1325, "FrontEndBlockSizeCheck", "CoreAudio: ***** VP BLOCK WARNING: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v44);
          }

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
              *buf = 136316162;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              v84 = 1024;
              v85 = 1329;
              v86 = 2080;
              v87 = *&v9;
              v88 = 1024;
              v89 = a3;
              v90 = 1024;
              v91 = a3;
              _os_log_impl(&dword_2724B4000, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> append signal (%s): <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", buf, 0x28u);
            }
          }

          v55 = *(this + 1588);
          if (v55 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v55, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1329, "FrontEndBlockSizeCheck", "append signal (%s): <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", v9, a3, a3);
          }
        }

        else
        {
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v46 = (*v45 ? *v45 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              v84 = 1024;
              v85 = 1317;
              v86 = 2048;
              v87 = v44;
              _os_log_impl(&dword_2724B4000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", buf, 0x1Cu);
            }
          }

          v47 = *(this + 1588);
          if (v47 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v47, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1317, "FrontEndBlockSizeCheck", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG CORRECTED after %.6f seconds *****\n", v44);
          }

          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v48 = VPLogScope(void)::scope;
          if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
          {
            v49 = (*v48 ? *v48 : MEMORY[0x277D86220]);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              v84 = 1024;
              v85 = 1321;
              v86 = 2080;
              v87 = *&v9;
              v88 = 1024;
              v89 = a3;
              v90 = 1024;
              v91 = a3;
              _os_log_impl(&dword_2724B4000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> append signal (%s): <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", buf, 0x28u);
            }
          }

          v50 = *(this + 1588);
          if (v50 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v50, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1321, "FrontEndBlockSizeCheck", "append signal (%s): <block size no longer mismatched between expected and actual> num frames received = %u. hwio buff size = %u\n", v9, a3, a3);
          }
        }

        v24 = 0;
      }
    }

    else if (((a2 ^ 1) & 1) != 0 || *(this + 15801)) && ((v16 = *(this + 15802), (v16) || (a2))
    {
      v24 = 1718772077;
      if ((a2 ^ 1 | *(this + 15801) ^ 1) != 1 || ((v16 ^ 1 | a2) & 1) == 0)
      {
        if (a2)
        {
          v41 = (mach_absolute_time() - *(this + 1976)) * 0.0000000416666667;
          v42 = *(this + 1979);
          if (v41 <= v42)
          {
            goto LABEL_145;
          }

          v80 = a5;
          v43 = 15832;
        }

        else
        {
          v41 = (mach_absolute_time() - *(this + 1977)) * 0.0000000416666667;
          v42 = *(this + 1980);
          if (v41 <= v42)
          {
            goto LABEL_145;
          }

          v80 = a5;
          v43 = 15840;
        }

        *(this + v43) = v42 + 10.0;
        VoiceProcessorV2::LogIOError(this, v10 + 0.002, *(this + 3148), *(this + 3149), a3, "append signal (%s): <block size mismatch>", v9);
        v79 = v9;
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v77 = a4;
        v58 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v59 = (*v58 ? *v58 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "VoiceProcessor_v2.cpp";
            v84 = 1024;
            v85 = 1283;
            v86 = 2048;
            v87 = v41;
            _os_log_impl(&dword_2724B4000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG for over %.6f seconds *****\n", buf, 0x1Cu);
          }
        }

        v60 = *(this + 1588);
        if (v60 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v60, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1283, "FrontEndBlockSizeCheck", "CoreAudio: ***** VP BLOCK SERIOUS ERROR: BAD BLOCK CONFIG for over %.6f seconds *****\n", v41);
        }

        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v61 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
        {
          v62 = (*v61 ? *v61 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            mDataByteSize = v80->mBuffers[0].mDataByteSize;
            v73 = *(this + 125);
            v75 = *(this + 126);
            CAFormatter::CAFormatter(&v82, v12);
            v63 = v82;
            CAFormatter::CAFormatter(&v81, v11);
            v64 = *(this + 3148);
            *buf = 136317698;
            *&buf[4] = "VoiceProcessor_v2.cpp";
            v84 = 1024;
            v85 = 1291;
            v86 = 2080;
            v87 = *&v9;
            v88 = 1024;
            v89 = a3;
            v90 = 1024;
            v91 = mDataByteSize;
            v92 = 1024;
            *v93 = v77;
            *&v93[4] = 1024;
            *&v93[6] = v73;
            v94 = 1024;
            v95 = v75;
            v96 = 2080;
            v97 = v63;
            v98 = 2080;
            v99 = v81;
            v100 = 1024;
            v101 = v64;
            _os_log_impl(&dword_2724B4000, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> append signal (%s): <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t hwio buff size = %u\n\t\thwio ref buff size  = %u.\t hwio mic buff size = %u\n\tmic asbd = %s, ref asbd = %s\n\t\t process callcount = %u\n", buf, 0x54u);
            if (v81)
            {
              free(v81);
            }

            if (v82)
            {
              free(v82);
            }
          }
        }

        v65 = *(this + 1588);
        if (v65)
        {
          if ((v8[3593] & 1) != 0 || v8[3594] == 1)
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v66 = VPLogScope(void)::scope;
            v67 = v80->mBuffers[0].mDataByteSize;
            v68 = *(this + 125);
            v69 = *(this + 126);
            CAFormatter::CAFormatter(buf, v12);
            v70 = *buf;
            CAFormatter::CAFormatter(&v82, v11);
            CALegacyLog::log(v65, 1, v66, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1291, "FrontEndBlockSizeCheck", "append signal (%s): <block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t hwio buff size = %u\n\t\thwio ref buff size  = %u.\t hwio mic buff size = %u\n\tmic asbd = %s, ref asbd = %s\n\t\t process callcount = %u\n", v79, a3, v67, v77, v68, v69, v70, v82, *(this + 3148));
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      if (a2)
      {
        *(this + 15801) = 1;
        v17 = mach_absolute_time();
        v18 = 15832;
        v19 = 15808;
      }

      else
      {
        *(this + 15802) = 1;
        v17 = mach_absolute_time();
        v18 = 15840;
        v19 = 15816;
      }

      *(this + v19) = v17;
      *(this + v18) = 0x3FF0000000000000;
      v78 = v9;
      VoiceProcessorV2::LogIOError(this, v10 + 0.002, *(this + 3148), *(this + 3149), a3, "append signal (%s): <block size mismatch>", v9);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v76 = a4;
      v25 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v26 = (*v25 ? *v25 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          v84 = 1024;
          v85 = 1247;
          _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> CoreAudio: ***** VP BLOCK WARNING: TRANSIENT INCORRECT BLOCK CONFIG", buf, 0x12u);
        }
      }

      v27 = *(this + 1588);
      if (v27 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v27, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1247, "FrontEndBlockSizeCheck", "CoreAudio: ***** VP BLOCK WARNING: TRANSIENT INCORRECT BLOCK CONFIG");
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v28 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
      {
        v29 = (*v28 ? *v28 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = a5->mBuffers[0].mDataByteSize;
          v72 = *(this + 125);
          v74 = *(this + 126);
          CAFormatter::CAFormatter(&v82, v12);
          v31 = v82;
          CAFormatter::CAFormatter(&v81, v11);
          v32 = *(this + 3148);
          *buf = 136317698;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          v84 = 1024;
          v85 = 1255;
          v86 = 2080;
          v87 = *&v9;
          v88 = 1024;
          v89 = a3;
          v90 = 1024;
          v91 = v30;
          v92 = 1024;
          *v93 = v76;
          *&v93[4] = 1024;
          *&v93[6] = v72;
          v94 = 1024;
          v95 = v74;
          v96 = 2080;
          v97 = v31;
          v98 = 2080;
          v99 = v81;
          v100 = 1024;
          v101 = v32;
          _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> warning: append signal (%s): <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t hwio buff size = %u\n\t\thwio ref buff size  = %u.\t hwio mic buff size = %u\n\tmic asbd = %s, ref asbd = %s\n\t\t process callcount = %u\n", buf, 0x54u);
          if (v81)
          {
            free(v81);
          }

          if (v82)
          {
            free(v82);
          }
        }
      }

      v24 = 1718772077;
      v33 = *(this + 1588);
      if (v33 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v34 = VPLogScope(void)::scope;
        v35 = a5->mBuffers[0].mDataByteSize;
        v36 = *(this + 125);
        v37 = *(this + 126);
        CAFormatter::CAFormatter(buf, v12);
        v38 = *buf;
        CAFormatter::CAFormatter(&v82, v11);
        CALegacyLog::log(v33, 2, v34, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1255, "FrontEndBlockSizeCheck", "warning: append signal (%s): <transient block size mismatch btwn expected and actual> num frames received  = %u (data byte size = %u).\t hwio buff size = %u\n\t\thwio ref buff size  = %u.\t hwio mic buff size = %u\n\tmic asbd = %s, ref asbd = %s\n\t\t process callcount = %u\n", v78, a3, v35, v76, v36, v37, v38, v82, *(this + 3148));
LABEL_69:
        if (v82)
        {
          free(v82);
        }

        if (*buf)
        {
          free(*buf);
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

    if (VPLogScope(void)::scope && *(VPLogScope(void)::scope + 8) >= 6)
    {
      v21 = *VPLogScope(void)::scope ? *VPLogScope(void)::scope : MEMORY[0x277D86220];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(this + 3148);
        *buf = 136316418;
        *&buf[4] = "VoiceProcessor_v2.cpp";
        v84 = 1024;
        v85 = 1229;
        v86 = 2080;
        v87 = *&v9;
        v88 = 1024;
        v89 = 0;
        v90 = 1024;
        v91 = a4;
        v92 = 2048;
        *v93 = v22;
        _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> append signal (%s): <silence optimization, generating zeroes> num frames received = %u.\t hwio buff size = %u\t process callcount = %lu", buf, 0x32u);
      }
    }

    v23 = *(this + 1588);
    if (v23 && ((v8[3593] & 1) != 0 || v8[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v23, 6, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1229, "FrontEndBlockSizeCheck", "append signal (%s): <silence optimization, generating zeroes> num frames received = %u.\t hwio buff size = %u\t process callcount = %lu", v9, 0, a4, *(this + 3148));
    }

    v24 = 0;
    *a6 = a4;
  }

LABEL_145:
  v56 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_2724D574C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a24)
  {
    free(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoiceProcessorV2::FrontEndFormatConverter(VoiceProcessorV2 *this, const CAStreamBasicDescription *a2, unsigned int a3, AudioBuffer *a4, uint64_t a5, AudioBufferList *a6, int a7)
{
  v7 = a6;
  v89 = a2;
  v98 = *MEMORY[0x277D85DE8];
  v91 = a7;
  if (a7)
  {
    v10 = 5;
  }

  else
  {
    v10 = 8;
  }

  mNumberChannels = a4->mNumberChannels;
  v86 = a5;
  if (mNumberChannels != 1)
  {
    v88 = a6;
    v82 = v81;
    v84 = a5;
    v12 = 4 * a5;
    v90 = a4;
    v13 = (MEMORY[0x28223BE20])();
    v14 = v81 - ((v12 + 15) & 0x7FFFFFFF0);
    MEMORY[0x28223BE20](v13);
    v16 = (v81 - v15);
    bzero(v14, v12);
    v83 = v16;
    bzero(v16, v12);
    p_mNumberChannels = &v90->mNumberChannels;
    v18 = v86;
    v19 = v90->mNumberChannels;
    if (!v19)
    {
LABEL_25:
      v7 = v88;
      if (!a3)
      {
        *buf = 1.0 / *p_mNumberChannels;
        MEMORY[0x2743CCE20](v83, 1, buf, v88->mBuffers[0].mData, 1, v84);
      }

      goto LABEL_27;
    }

    v20 = 0;
    v21 = 0;
    LODWORD(v85) = ((2 * a3) | (a3 >> 1)) & 3;
    p_mData = &v90->mData;
    mBuffers = v88->mBuffers;
    while (1)
    {
      if (v91 && **(this + 297) == 1886216809 && (*(this + 19) - 27) <= 6)
      {
        if (v85 && ((1 << v20) & v85) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (a3 && ((1 << v20) & a3) == 0)
      {
        goto LABEL_24;
      }

      if (v21 >= v88->mNumberBuffers)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          p_mNumberChannels = &v90->mNumberChannels;
        }

        v49 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope)
        {
          v50 = CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0);
          p_mNumberChannels = &v90->mNumberChannels;
          if (v50)
          {
            v51 = (*v49 ? *v49 : MEMORY[0x277D86220]);
            v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
            p_mNumberChannels = &v90->mNumberChannels;
            if (v52)
            {
              mNumberBuffers = v88->mNumberBuffers;
              *buf = 136315906;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1473;
              *&buf[18] = 1024;
              *&buf[20] = v21;
              v96 = 1024;
              v97 = mNumberBuffers;
              _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d frontendformatconverter : error dst channel index (%d) goes beyond number of channels in out ABL (%d)", buf, 0x1Eu);
              p_mNumberChannels = &v90->mNumberChannels;
            }
          }
        }

        goto LABEL_25;
      }

      ConvertBufferToFloat32(v89, &p_mData[2 * v20], 0, v14, v18);
      if (a3)
      {
        memcpy(mBuffers[2 * v21 + 1], v14, v12);
      }

      else if (v18)
      {
        v23 = v83;
        v24 = v84;
        v25 = (v81 - ((v12 + 15) & 0x7FFFFFFF0));
        do
        {
          v26 = *v25++;
          *v23 = *v23 + v26;
          ++v23;
          --v24;
        }

        while (v24);
      }

      v21 += a3 != 0;
      p_mNumberChannels = &v90->mNumberChannels;
      v19 = v90->mNumberChannels;
LABEL_24:
      if (++v20 >= v19)
      {
        goto LABEL_25;
      }
    }
  }

  if (LODWORD(a4->mData) == 1)
  {
    ConvertBufferToFloat32(v89, &a4->mData, 0, a6->mBuffers[0].mData, v86);
    goto LABEL_27;
  }

  if (LODWORD(a4->mData) <= v10)
  {
    v81[1] = v81;
    v83 = a5;
    v30 = 4 * a5;
    v90 = &a4->mData;
    v31 = MEMORY[0x28223BE20](this);
    v32 = v81 - ((v30 + 15) & 0x7FFFFFFF0);
    MEMORY[0x28223BE20](v31);
    v34 = (v81 - v33);
    bzero(v32, v30);
    v82 = v34;
    v85 = v30;
    bzero(v34, v30);
    v35 = v90;
    v36 = v86;
    v37 = v90->mNumberChannels;
    if (!v90->mNumberChannels)
    {
      goto LABEL_61;
    }

    v38 = 0;
    v39 = 0;
    LODWORD(v88) = a3 != 0;
    LODWORD(v84) = ((2 * a3) | (a3 >> 1)) & 3;
    mBuffers = &v7->mBuffers[0].mData;
    v40 = v7->mBuffers;
    while (1)
    {
      v41 = 1 << v39;
      if (v91 && **(this + 297) == 1886216809 && (*(this + 19) - 27) <= 6)
      {
        if (v84 && (v41 & v84) == 0)
        {
          goto LABEL_60;
        }
      }

      else if (a3 && (v41 & a3) == 0)
      {
        goto LABEL_60;
      }

      if (v38 >= v7->mNumberBuffers)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          v35 = v90;
        }

        v73 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope)
        {
          v74 = CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0);
          v35 = v90;
          if (v74)
          {
            v75 = (*v73 ? *v73 : MEMORY[0x277D86220]);
            v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
            v35 = v90;
            if (v76)
            {
              v77 = v7->mNumberBuffers;
              *buf = 136315906;
              *&buf[4] = "VoiceProcessor_v2.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1410;
              *&buf[18] = 1024;
              *&buf[20] = v38;
              v96 = 1024;
              v97 = v77;
              _os_log_impl(&dword_2724B4000, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d frontendformatconverter : error dst channel index (%d) goes beyond number of channels in out ABL (%d)", buf, 0x1Eu);
              v35 = v90;
            }
          }
        }

LABEL_61:
        if (!a3)
        {
          *buf = 1.0 / v35->mNumberChannels;
          MEMORY[0x2743CCE20](v82, 1, buf, v7->mBuffers[0].mData, 1, v83);
        }

LABEL_27:
        if (v91)
        {
          if (**(this + 297) == 1886216809)
          {
            v27 = 0;
            if ((*(this + 19) - 27) <= 6 && v7->mNumberBuffers == 2)
            {
              v27 = 0;
              v28 = v7->mBuffers[0];
              v7->mBuffers[0] = *&v7[1].mNumberBuffers;
              *&v7[1].mNumberBuffers = v28;
            }

            goto LABEL_92;
          }
        }

        else if (*(this + 2072) == 1)
        {
          v29 = (this + 2008);
          if (*(this + 580) != *(this + 582))
          {
            (*(*this + 480))(this, this + 2008, this + 2080);
          }

          if (*(this + 2260) == 1 && *(this + 19) == 19)
          {
            v94 = xmmword_272756300;
            *&buf[8] = 0;
            *&buf[16] = 0;
            *buf = &buf[8];
            operator new();
          }

          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(buf, v7);
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v94, v7);
          v54 = *buf;
          if (**buf == *v29 && (v55 = v94, v56 = *v94, *v94 == *(this + 503)) && *(this + 504) >= v86)
          {
            v93 = 1065353216;
            if (v56)
            {
              v57 = 0;
              v58 = 0;
              v59 = v86;
              do
              {
                vDSP_vfill(&v93 + 1, *(*(this + 253) + v57), 1, v59);
                ++v58;
                v60 = *(this + 503);
                v57 += 24;
              }

              while (v58 < v60);
              if (*(this + 503))
              {
                v61 = 0;
                v62 = *(this + 502);
                v63 = (v54 + 16);
                v64 = v62;
                do
                {
                  if (v64)
                  {
                    v65 = 0;
                    v66 = v63;
                    do
                    {
                      v92 = *(*(*(this + 256) + 24 * v61) + 4 * v65);
                      if (v92 != 0.0)
                      {
                        v67 = *(*(this + 253) + 24 * v61);
                        MEMORY[0x2743CCE10](*v66, *(v66 - 2), &v92, v67, 1, v67, 1, v59);
                        v62 = *v29;
                      }

                      ++v65;
                      v66 += 2;
                    }

                    while (v65 < v62);
                    v60 = *(this + 503);
                    v64 = v62;
                  }

                  ++v61;
                }

                while (v61 < v60);
                if (v60)
                {
                  v68 = 0;
                  v69 = 0;
                  v70 = (v55 + 16);
                  do
                  {
                    MEMORY[0x2743CCE20](*(*(this + 253) + v68), 1, &v93, *v70, *(v70 - 2), v59);
                    ++v69;
                    v70 += 2;
                    v68 += 24;
                  }

                  while (v69 < *(this + 503));
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

            v78 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
            {
              v79 = (*v78 ? *v78 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                v80 = v7->mNumberBuffers;
                *buf = 136315650;
                *&buf[4] = "VoiceProcessor_v2.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1545;
                *&buf[18] = 1024;
                *&buf[20] = v80;
                _os_log_impl(&dword_2724B4000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to downmix %u reference signals", buf, 0x18u);
              }
            }
          }
        }

        v27 = 0;
        goto LABEL_92;
      }

      v42 = v7;
      v43 = &v40[v38].mData;
      if (!a3)
      {
        v43 = mBuffers;
      }

      v44 = *v43;
      ConvertBufferToFloat32(v89, v35, v39, v32, v36);
      if (a3)
      {
        memcpy(v44, v32, v85);
      }

      else if (v36)
      {
        v45 = v82;
        v46 = v83;
        v47 = v32;
        do
        {
          v48 = *v47++;
          *v45 = *v45 + v48;
          ++v45;
          v46 = (v46 - 1);
        }

        while (v46);
      }

      v38 += v88;
      v35 = v90;
      v37 = v90->mNumberChannels;
      v7 = v42;
LABEL_60:
      if (++v39 >= v37)
      {
        goto LABEL_61;
      }
    }
  }

  v27 = 593717363;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "VoiceProcessor_v2.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1442;
    _os_log_impl(&dword_2724B4000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  appendsignal: ERROR too many interleaved channels?! data disagrees with ASBD set during InitializeHWInput", buf, 0x12u);
  }

LABEL_92:
  v71 = *MEMORY[0x277D85DE8];
  return v27;
}

double VoiceProcessorV2::FrontEndRefTimeStampHandler(VoiceProcessorV2 *this, double *a2, UInt32 inNumberPCMFrames)
{
  v4 = a2;
  v106 = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  v7 = *a2;
  if ((*(this + 1696) & 1) == 0)
  {
    *(this + 1696) = 1;
    *(this + 213) = v7;
    if ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::WriteTSOverload(this, 0.0, v7, 0);
      v7 = *v4;
    }
  }

  v8 = *(this + 213);
  if (v8 != v7)
  {
    if ((v6[3593] & 1) != 0 || v6[3594] == 1)
    {
      VoiceProcessorV2::WriteTSOverload(this, v8, v7, 0);
      v7 = *v4;
      v8 = *(this + 213);
    }

    if (v7 < v8)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v9 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v10 = (*v9 ? *v9 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *(this + 213);
          v12 = *v4;
          v13 = *(v4 + 1);
          v14 = *(v4 + 2);
          v15 = *(v4 + 14);
          *buf = 136316674;
          v93 = "VoiceProcessor_v2.cpp";
          v94 = 1024;
          v95 = 1583;
          v96 = 2048;
          v97 = v11;
          v98 = 2048;
          v99 = v12;
          v100 = 2048;
          v101 = v13;
          v102 = 2048;
          v103 = v14;
          v104 = 1024;
          v105 = v15;
          _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ref sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", buf, 0x40u);
        }
      }

      v16 = *(this + 1588);
      if (v16 && ((v6[3593] & 1) != 0 || v6[3594] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v17 = *(this + 213);
        CALegacyLog::log(v16, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 1583, "FrontEndRefTimeStampHandler", "ref sample time jumped backwards, expected sample time: %.2lf, input sample time: %.2lf, input host time: %lld, input rate scalar: %.2lf, input flag: %d", v17, *v4, *(v4 + 1), v4[2], *(v4 + 14));
      }

      VoiceProcessorV2::LogIOError(this, 12.008, *(this + 3148), *(this + 3149), 0.0, "ref sample time jumped backwards");
      v7 = *v4;
    }
  }

  if (inNumberPCMFrames)
  {
    v18 = *(this + 151);
    v19 = *(v18 + 120);
    if (v19 < inNumberPCMFrames)
    {
      v20 = 3;
LABEL_29:
      VoiceProcessorV2::LogIOError(this, 12.001, *(this + 3148), *(this + 3149), v20, "frontendreftshandler: ERROR: Ring Buffer error! %d", v20);
      goto LABEL_61;
    }

    v90 = *(this + 129);
    v21 = v7;
    v22 = v7 + inNumberPCMFrames;
    v23 = v18 + 136;
    v24 = *(v18 + 904);
    v25 = v18 + 136 + 24 * (v24 & 0x1F);
    v27 = *(v25 + 8);
    v26 = (v25 + 8);
    if (v27 > v7 || *(v18 + 908) == 1 && *(v18 + 909) == 1)
    {
      v28 = v23 + 24 * ((v24 + 1) & 0x1F);
      *v28 = v21;
      *(v28 + 8) = v21;
      *(v28 + 16) = v24 + 1;
      v29 = v24;
      atomic_compare_exchange_strong((v18 + 904), &v29, v24 + 1);
      if (v29 != v24)
      {
        *(v18 + 904) = v29;
      }

      *(v18 + 908) = 0;
    }

    else if (v22 - *(v23 + 24 * (v24 & 0x1F)) > v19)
    {
      v30 = v22 - v19;
      v31 = *v26;
      if (v30 > v31)
      {
        v31 = v30;
      }

      v32 = v23 + 24 * ((v24 + 1) & 0x1F);
      *v32 = v30;
      *(v32 + 8) = v31;
      *(v32 + 16) = v24 + 1;
      v33 = v24;
      atomic_compare_exchange_strong((v18 + 904), &v33, v24 + 1);
      if (v33 != v24)
      {
        *(v18 + 904) = v33;
      }
    }

    v34 = *(v18 + 104);
    v35 = *(v23 + 24 * (*(v18 + 904) & 0x1F) + 8);
    v36 = *(v18 + 120);
    v38 = *(v18 + 112);
    v37 = *(v18 + 116);
    v91 = v7 + inNumberPCMFrames;
    v89 = v18 + 136;
    if (v35 >= v21)
    {
      v40 = ((((v21 % v36) >> 63) & v36) + v21 % v36) * v37;
    }

    else
    {
      v39 = ((((v35 % v36) >> 63) & v36) + v35 % v36) * v37;
      v40 = ((((v21 % v36) >> 63) & v36) + v21 % v36) * v37;
      if (v40 <= v39)
      {
        if (v38 >= 1)
        {
          v87 = inNumberPCMFrames;
          v84 = v4;
          v46 = v39;
          v47 = *(v18 + 124) - v39;
          v48 = v38 + 1;
          v49 = *(v18 + 104);
          do
          {
            v50 = *v49++;
            bzero((v50 + v46), v47);
            --v48;
          }

          while (v48 > 1);
          v51 = v38 + 1;
          v52 = v34;
          v4 = v84;
          v22 = v91;
          do
          {
            v53 = *v52++;
            bzero(v53, v40);
            --v51;
          }

          while (v51 > 1);
          inNumberPCMFrames = v87;
        }
      }

      else if (v38 >= 1)
      {
        v86 = inNumberPCMFrames;
        v41 = v39;
        v42 = v40 - v39;
        v43 = v38 + 1;
        v44 = *(v18 + 104);
        do
        {
          v45 = *v44++;
          bzero((v45 + v41), v42);
          --v43;
        }

        while (v43 > 1);
        inNumberPCMFrames = v86;
        v22 = v91;
      }
    }

    v54 = *(v18 + 120);
    v55 = ((((v22 % v54) >> 63) & v54) + v22 % v54) * *(v18 + 116);
    v56 = *(v18 + 128);
    v57 = v55 - v40;
    if (v55 <= v40)
    {
      if (v56)
      {
        v58 = v54 - v21 % v54 - (((v21 % v54) >> 63) & v54);
        CADeprecated::AudioRingBuffer::ConvertAndStore(v18, v40, v90, 0, v58);
        CADeprecated::AudioRingBuffer::ConvertAndStore(v18, 0, v90, v58 * *(v18 + 72), (((v22 % *(v18 + 120)) >> 63) & *(v18 + 120)) + v22 % *(v18 + 120));
      }

      else if (v90->mNumberBuffers >= 1)
      {
        v88 = inNumberPCMFrames;
        v85 = v4;
        v69 = *(v18 + 124) - v40;
        v70 = v40;
        v71 = v69;
        v72 = v90->mNumberBuffers + 1;
        p_mData = &v90->mBuffers[0].mData;
        v74 = v34;
        do
        {
          if (v69 > *(p_mData - 1))
          {
            v20 = 5;
            v4 = v85;
            inNumberPCMFrames = v88;
            goto LABEL_29;
          }

          v76 = *p_mData;
          p_mData += 2;
          v75 = v76;
          v77 = *v74++;
          memcpy((v77 + v70), v75, v69);
          --v72;
        }

        while (v72 > 1);
        v4 = v85;
        inNumberPCMFrames = v88;
        if (v90->mNumberBuffers < 1)
        {
          goto LABEL_59;
        }

        v78 = v69 + v55;
        v79 = v90->mNumberBuffers + 1;
        v80 = &v90->mBuffers[0].mData;
        while (v78 <= *(v80 - 1))
        {
          v82 = *v80;
          v80 += 2;
          v81 = v82;
          v83 = *v34++;
          memcpy(v83, &v81[v71], v55);
          if (--v79 <= 1)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_76;
      }
    }

    else
    {
      if (v56)
      {
        CADeprecated::AudioRingBuffer::ConvertAndStore(v18, v40, v90, 0, inNumberPCMFrames);
        goto LABEL_59;
      }

      if (v90->mNumberBuffers >= 1)
      {
        v64 = v90->mNumberBuffers + 1;
        v65 = &v90->mBuffers[0].mData;
        while (v57 <= *(v65 - 1))
        {
          v67 = *v65;
          v65 += 2;
          v66 = v67;
          v68 = *v34++;
          memcpy((v68 + v40), v66, v57);
          if (--v64 <= 1)
          {
            goto LABEL_59;
          }
        }

LABEL_76:
        v20 = 5;
        goto LABEL_29;
      }
    }

LABEL_59:
    v59 = *(v18 + 904);
    v60 = v89 + 24 * ((v59 + 1) & 0x1F);
    *v60 = *(v89 + 24 * (v59 & 0x1F));
    *(v60 + 8) = v91;
    *(v60 + 16) = v59 + 1;
    v61 = v59;
    atomic_compare_exchange_strong((v18 + 904), &v61, v59 + 1);
    if (v61 != v59)
    {
      *(v18 + 904) = v61;
    }
  }

LABEL_61:
  result = *v4 + inNumberPCMFrames;
  *(this + 213) = result;
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

void ConvertBufferToFloat32(const CAStreamBasicDescription *a1, const AudioBuffer *a2, unsigned int a3, float *a4, unsigned int a5)
{
  v6 = a4;
  v38 = *MEMORY[0x277D85DE8];
  mData = a2->mData;
  if (mData)
  {
    v8 = a2->mDataByteSize == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *MEMORY[0x277D85DE8];

    bzero(a4, 4 * a5);
  }

  else
  {
    *buf = 0;
    v13 = CAStreamBasicDescription::IdentifyCommonPCMFormat(a1, buf);
    if (v13 && *buf == 2)
    {
      MEMORY[0x28223BE20]();
      v15 = &buf[-v14];
      if (a5)
      {
        v16 = a5;
        v17 = a2->mData + 2 * a3;
        v18 = 2 * a2->mNumberChannels;
        v19 = v15;
        do
        {
          *v19 = *v17;
          v19 += 2;
          v17 = (v17 + v18);
          --v16;
        }

        while (v16);
      }

      NativeInt16ToFloat32Scaled_ARM();
LABEL_21:
      v26 = *MEMORY[0x277D85DE8];
      return;
    }

    *buf = 0;
    if (CAStreamBasicDescription::IdentifyCommonPCMFormat(a1, buf) && *buf == 3)
    {
      MEMORY[0x28223BE20]();
      v21 = &buf[-v20];
      if (a5)
      {
        v22 = a5;
        v23 = a2->mData + 4 * a3;
        v24 = 4 * a2->mNumberChannels;
        v25 = v21;
        do
        {
          *v25 = *v23;
          v25 += 4;
          v23 = (v23 + v24);
          --v22;
        }

        while (v22);
      }

      NativeInt32ToFloat32Scaled_ARM();
      goto LABEL_21;
    }

    *buf = 0;
    if (!CAStreamBasicDescription::IdentifyCommonPCMFormat(a1, buf) || *buf != 1)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v30 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v31 = (*v30 ? *v30 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v35 = "VoiceProcessor_v2.cpp";
          v36 = 1024;
          v37 = 1364;
          _os_log_impl(&dword_2724B4000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d invalid format", buf, 0x12u);
        }
      }

      goto LABEL_21;
    }

    v27 = &mData[4 * a3];
    mNumberChannels = a2->mNumberChannels;
    if (mNumberChannels != 1)
    {
      if (a5)
      {
        v32 = 4 * mNumberChannels;
        v33 = a5;
        do
        {
          *v6++ = *v27;
          v27 = (v27 + v32);
          --v33;
        }

        while (v33);
      }

      goto LABEL_21;
    }

    v29 = *MEMORY[0x277D85DE8];

    memcpy(v6, v27, 4 * a5);
  }
}

void std::__tree<unsigned int>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned int>::destroy(*a1);
    std::__tree<unsigned int>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t CAStreamBasicDescription::IdentifyCommonPCMFormat(_DWORD *a1, int *a2)
{
  if (a1[2] != 1819304813)
  {
    return 0;
  }

  if (a1[5] != 1)
  {
    return 0;
  }

  v2 = a1[6];
  if (v2 != a1[4])
  {
    return 0;
  }

  v3 = a1[8];
  if (v2 < v3 >> 3)
  {
    return 0;
  }

  v4 = a1[7];
  if (!v4)
  {
    return 0;
  }

  v5 = a1[3];
  if ((v5 & 0x20) == 0)
  {
    v9 = v2 == v2 / v4 * v4;
    v2 /= v4;
    if (!v9)
    {
      return 0;
    }
  }

  v6 = 0;
  if ((v5 & 2) == 0 && 8 * v2 == v3)
  {
    if (v5)
    {
      if ((v5 & 0x1F84) != 0)
      {
        return 0;
      }

      if (v2 == 4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4 * (v2 == 8);
      }
    }

    else if ((v5 & 4) != 0)
    {
      v8 = (v5 >> 7) & 0x3F;
      if (v8 == 24 && v2 == 4)
      {
        v6 = 3;
      }

      else if (v8 || v2 != 4)
      {
        v9 = v2 == 2 && v8 == 0;
        if (v9)
        {
          v6 = 2;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return 1;
}

void VoiceProcessorV2::DumpState(VoiceProcessorV2 *this, __sFILE *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = (*(*this + 112))(this);
    fprintf(a2, "VoiceProcessor version = %u \n", v4);
    if (*(this + 2091))
    {
      v5 = "TRUE";
    }

    else
    {
      v5 = "FALSE";
    }

    fprintf(a2, "VP Disabled = %s.  \n", v5);
    if (*(this + 2093))
    {
      v6 = "TRUE";
    }

    else
    {
      v6 = "FALSE";
    }

    fprintf(a2, "HW has vp = %s.  \n", v6);
    v7 = this + 32;
    if (*(this + 55) < 0)
    {
      v7 = *v7;
    }

    fprintf(a2, "Product: %s\n", v7);
    CAX4CCString::CAX4CCString(buf, *(this + 553));
    fprintf(a2, "Primary audio vocoder type = %s(%d) \n", buf, *(this + 553));
    fprintf(a2, "Driver-prescribed postprocessing input gain  = %f dB.  \n", *(this + 1099));
    fprintf(a2, "Beam direction = %d \n", *(this + 688));
    CAFormatter::CAFormatter(buf, (this + 592));
    fprintf(a2, "HW Format REF: %s \n", *buf);
    if (*buf)
    {
      free(*buf);
    }

    CAFormatter::CAFormatter(buf, (this + 632));
    fprintf(a2, "HW Format MIC: %s \n", *buf);
    if (*buf)
    {
      free(*buf);
    }

    fprintf(a2, "HW Block Size REF: %d \n", *(this + 125));
    fprintf(a2, "HW Block Size MIC: %d \n", *(this + 126));
    v8 = *(this + 263);
    if (*(this + 264) != v8)
    {
      v9 = 0;
      do
      {
        fprintf(a2, "    HW Trim Gain MIC(ch-%lu): %f dB \n", v9, *(v8 + 4 * v9));
        ++v9;
        v8 = *(this + 263);
      }

      while (v9 < (*(this + 264) - v8) >> 2);
    }

    v10 = *(this + 267);
    if (*(this + 268) != v10)
    {
      v11 = 0;
      do
      {
        fprintf(a2, "    HW Trim Gain REF(ch-%lu): %f dB \n", v11, *(v10 + 4 * v11));
        ++v11;
        v10 = *(this + 267);
      }

      while (v11 < (*(this + 268) - v10) >> 2);
    }

    CAFormatter::CAFormatter(buf, (this + 992));
    fprintf(a2, "VP Output Format: %s \n", *buf);
    if (*buf)
    {
      free(*buf);
    }

    fprintf(a2, "REF Channel BitMap: %x, OUT Channel BitMap: %x \n", *(this + 102), *(this + 103));
    fprintf(a2, "HW MIC Channels: %s, BitMap: %x \n", *(this + 55), *(this + 108));
    fprintf(a2, "EP MIC Channels: %s, BitMap: %x \n", *(this + 58), *(this + 114));
    v12 = 0;
    while (((*(this + 118) >> v12) & 1) == 0)
    {
      if (++v12 == 32)
      {
        v12 = 33;
        break;
      }
    }

    fprintf(a2, "Primary epmic index: %d \n", v12);
    fprintf(a2, "SRC Quality: 0x%x (0:min, 0x20:low, 0x40:med, 0x60:hig, 0x7f:max) \n", *(this + 1120));
    fprintf(a2, "Hw real-world correction: %f samples \n", *(this + 1119));
    fprintf(a2, "Ref-Mic Delay: %f msec \n", *(this + 1100));
    fprintf(a2, "    Pre-echo-processing Digital Input Gain: %f dB \n", *(this + 1098));
    fprintf(a2, "Post-echo-processing Digital Input Gain: %f dB \n", *(this + 1099));
    fprintf(a2, "Downlink Mix Gain: %f dB \n", *(this + 1121));
    fprintf(a2, "Downlink Final Gain Chn 0: %f dB \n", *(this + 1137));
    fprintf(a2, "Downlink Final Gain Chn 1: %f dB \n", *(this + 1138));
    CAFormatter::CAFormatter(buf, (this + 216));
    fprintf(a2, "DL Format FEV: %s \n", *buf);
    if (*buf)
    {
      free(*buf);
    }

    CAFormatter::CAFormatter(buf, (this + 296));
    fprintf(a2, "DL Format FEV Process: %s \n", *buf);
    if (*buf)
    {
      free(*buf);
    }

    CAFormatter::CAFormatter(buf, (this + 336));
    fprintf(a2, "DL Format MIX: %s \n", *buf);
    if (*buf)
    {
      free(*buf);
    }

    fprintf(a2, "DL Block Size MIX: %d \n", *(this + 123));
    fprintf(a2, "calcblkzsizes: mHwRefBlkSz = %lu, mHwMicBlkSz = %lu \n", *(this + 125), *(this + 126));
    fprintf(a2, "calcblkzsizes: mDsRefBlkSz = %lu, mDsMicBlkSz = %lu \n", *(this + 127), *(this + 128));
    fprintf(a2, "calcblkzsizes: mEpIoBlkSz  = %lu, mUsOutBlkSz = %lu \n", *(this + 129), *(this + 133));
    CAFormatter::CAFormatter(buf, (this + 832));
    fprintf(a2, "calcasbds: mEpMicASBD (ignore the # of channels) format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }

    CAFormatter::CAFormatter(buf, (this + 912));
    fprintf(a2, "calcasbds: mEpOutASBD format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }

    CAFormatter::CAFormatter(buf, (this + 952));
    fprintf(a2, "calcasbds: mUsOutASBD format: %s", *buf);
    if (*buf)
    {
      free(*buf);
    }

    fprintf(a2, "HW preslatency & ref to mic delay: input {deviceID=%d, latency=%u, safety offset=%u}, output {deviceID=%d, latency=%u, safety offset=%u} \n", *(this + 287), *(this + 293), *(this + 295), *(this + 286), *(this + 294), *(this + 296));
    fprintf(a2, "Num Ref Ports = %u, Num Mic Ports = %u \n", (*(this + 295) - *(this + 294)) >> 2, (*(this + 298) - *(this + 297)) >> 2);
    v13 = *(this + 294);
    if (*(this + 295) != v13)
    {
      v14 = 0;
      do
      {
        CAX4CCString::CAX4CCString(buf, *(v13 + 4 * v14));
        fprintf(a2, "      : Ref Port #%lu=%s \n", v14++, buf);
        v13 = *(this + 294);
      }

      while (v14 < (*(this + 295) - v13) >> 2);
    }

    v15 = *(this + 297);
    if (*(this + 298) != v15)
    {
      v16 = 0;
      do
      {
        CAX4CCString::CAX4CCString(buf, *(v15 + 4 * v16));
        fprintf(a2, "      : Mic Port #%lu=%s \n", v16++, buf);
        v15 = *(this + 297);
      }

      while (v16 < (*(this + 298) - v15) >> 2);
    }
  }

  else
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(2, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "VoiceProcessor_v2.cpp";
        v22 = 1024;
        v23 = 6426;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> VoiceProcessorV2::DumpToFile() - Dump file is not available", buf, 0x12u);
      }
    }

    v19 = *(this + 1588);
    if (v19 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v19, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 6426, "DumpState", "VoiceProcessorV2::DumpToFile() - Dump file is not available");
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void CAX4CCString::CAX4CCString(CAX4CCString *this, unsigned int a2)
{
  v4 = bswap32(a2);
  *(this + 1) = v4;
  v5 = MEMORY[0x277D85DE0];
  if ((v4 & 0x80) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(this + 2);
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
  {
    goto LABEL_17;
  }

  v7 = *(this + 3);
  if ((v7 & 0x80000000) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_13:
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v5 + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    *(this + 5) = 39;
    *this = 39;
    return;
  }

  if ((*(v5 + 4 * v7 + 60) & 0x40000) != 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (a2 + 199999 > 0x61A7E)
  {
    snprintf(this, 0x10uLL, "0x%x");
  }

  else
  {
    snprintf(this, 0x10uLL, "%d");
  }
}

uint64_t VoiceProcessorV2::SetMode(VoiceProcessorV2 *this, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = this + 2408;
  v24 = (*(*(this + 301) + 16))();
  atomic_fetch_add(this + 624, 1u);
  while (*(this + 625))
  {
    usleep(0x1F4u);
  }

  v4 = this + 15881;
  if (*(this + 20) != a2)
  {
    *(this + 20) = a2;
    if ((*v4 & 1) != 0 || *(this + 15882) == 1)
    {
      VoiceProcessorV2::PListWriteSetModeParameters(this);
    }

    if (VoiceProcessorV2::ShouldInteractWithControlCenter(this))
    {
      v7 = (*(*this + 584))(this);
      *(this + 4134) = v7;
      if (*v4 == 1)
      {
        VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1718384242);
        v7 = *(this + 4134);
      }

      if (v7)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v8 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
        {
          v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "VoiceProcessor_v2.cpp";
            v27 = 1024;
            v28 = 732;
            _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Forcing bypass to false due to chat flavor", buf, 0x12u);
          }
        }

        v10 = *(this + 1588);
        if (v10 && ((*v4 & 1) != 0 || *(this + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v10, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 732, "SetMode", "Forcing bypass to false due to chat flavor");
        }

        *(this + 480) = 0;
      }
    }

    if ((*(this + 16161) & 1) == 0)
    {
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
          *buf = 136315394;
          v26 = "VoiceProcessor_v2.cpp";
          v27 = 1024;
          v28 = 747;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (SetMode)", buf, 0x12u);
        }
      }

      v13 = *(this + 1588);
      if (v13 && ((*v4 & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v13, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 747, "SetMode", "Begin self-reinit (SetMode)");
      }

      VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 1, v5, v6);
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
          *buf = 136315394;
          v26 = "VoiceProcessor_v2.cpp";
          v27 = 1024;
          v28 = 749;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (SetMode)", buf, 0x12u);
        }
      }

      v16 = *(this + 1588);
      if (v16 && ((*v4 & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v16, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 749, "SetMode", "End self-reinit (SetMode)");
      }
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v17 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(this + 20);
      *buf = 136315650;
      v26 = "VoiceProcessor_v2.cpp";
      v27 = 1024;
      v28 = 752;
      v29 = 1024;
      v30 = v19;
      _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> operation mode = %i", buf, 0x18u);
    }
  }

  v20 = *(this + 1588);
  if (v20 && ((*v4 & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v20, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 752, "SetMode", "operation mode = %i", *(this + 20));
  }

  atomic_fetch_add(this + 624, 0xFFFFFFFF);
  if (v24 == 1)
  {
    (*(*v23 + 24))(v23);
  }

  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2724D8124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VoiceProcessorV2::ShouldInteractWithControlCenter(VoiceProcessorV2 *this)
{
  v2 = _os_feature_enabled_impl();
  if (v2 && VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(v2))
  {
    v3 = *(this + 16161) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void VoiceProcessorV2::ResetTimestampsAndInitializeVP(VoiceProcessorV2 *this, int a2, double a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = this + 12288;
  if (*(this + 484) == 1)
  {
    if (a2)
    {
      if (*(this + 15881) == 1)
      {
        if (*(this + 1696) == 1)
        {
          LODWORD(a4) = *(this + 125);
          VoiceProcessorV2::WriteTSOverload(this, *(this + 213) - *&a4, *(this + 213) - *&a4, 0);
        }

        if (*(this + 1697) == 1 && ((v6[3593] & 1) != 0 || v6[3594] == 1))
        {
          LODWORD(a4) = *(this + 126);
          VoiceProcessorV2::WriteTSOverload(this, *(this + 214) - *&a4, *(this + 214) - *&a4, 1);
        }
      }

      *(this + 848) = 0;
      v7 = *(this + 1864);
      if (v7 == 1)
      {
        *(this + 1864) = 0;
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    *(this + 2263) = v7;
    (*(*this + 240))(this);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v8 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v9 = (*v8 ? *v8 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "VoiceProcessor_v2.cpp";
        v18 = 1024;
        v19 = 3245;
        _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> called initialize", &v16, 0x12u);
      }
    }

    v10 = *(this + 1588);
    if (v10 && ((v6[3593] & 1) != 0 || v6[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        v15 = *(this + 1588);
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        v10 = v15;
      }

      CALegacyLog::log(v10, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 3245, "ResetTimestampsAndInitializeVP", "called initialize");
    }

    if ((v6[3593] & 1) != 0 || v6[3594] == 1)
    {
      VoiceProcessorV2::PListWriteInitializeHwInputParameters(this);
    }
  }

  if (*(this + 485) == 1)
  {
    if (a2 && v6[3593] == 1)
    {
      if (v6[344] == 1)
      {
        LODWORD(a4) = *(this + 123);
        VoiceProcessorV2::WriteTSOverload(this, *(this + 1578) - *&a4, *(this + 1578) - *&a4, 2);
      }

      v6[344] = 0;
    }

    VoiceProcessorV2::InitializeDLP(this);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v11 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "VoiceProcessor_v2.cpp";
        v18 = 1024;
        v19 = 3261;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> called initializedlp", &v16, 0x12u);
      }
    }

    v13 = *(this + 1588);
    if (v13 && ((v6[3593] & 1) != 0 || v6[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v13, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 3261, "ResetTimestampsAndInitializeVP", "called initializedlp");
    }

    if ((v6[3593] & 1) != 0 || v6[3594] == 1)
    {
      VoiceProcessorV2::PListWriteInitializeDLPParameters(this);
    }
  }

  *(this + 568) = 0;
  *(this + 573) = 0;
  *(this + 571) = 0;
  v14 = *MEMORY[0x277D85DE8];
}

void CADeprecated::CAMutex::Locker::~Locker(CADeprecated::CAMutex::Locker *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

uint64_t VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(VoiceProcessorV2 *this)
{
  {
    VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(void)const::isDeviceSupported = MGGetBoolAnswer();
  }

  return VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(void)const::isDeviceSupported;
}

uint64_t VoiceProcessorV2::SetDownLinkVolume(VoiceProcessorV2 *this, float a2)
{
  v36 = *MEMORY[0x277D85DE8];
  CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v28, this + 2496, 400000);
  v4 = this + 12288;
  if (*v28)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v5 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v6 = (*v5 ? *v5 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v2.cpp";
        v32 = 1024;
        v33 = 765;
        v34 = 1024;
        LODWORD(v35) = 400000;
        _os_log_impl(&dword_2724B4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> setdownlinkvolume failed because mSignaler can't be acquired within %u microseconds", buf, 0x18u);
      }
    }

    v7 = *(this + 1588);
    if (v7 && ((v4[3593] & 1) != 0 || v4[3594] == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v7, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 765, "SetDownLinkVolume", "setdownlinkvolume failed because mSignaler can't be acquired within %u microseconds", 400000);
    }

    result = 4294956433;
  }

  else
  {
    v9 = (*(*(this + 313) + 16))(this + 2504);
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v10 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
    {
      v11 = (*v10 ? *v10 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "VoiceProcessor_v2.cpp";
        v32 = 1024;
        v33 = 773;
        v34 = 2048;
        v35 = a2;
        _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setdownlinkvolume called with: user volume = %f", buf, 0x1Cu);
      }
    }

    v12 = *(this + 1588);
    if (v12 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v12, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 773, "SetDownLinkVolume", "setdownlinkvolume called with: user volume = %f", a2);
    }

    if (*(this + 15881) == 1)
    {
      valuePtr = a2;
      if (*(this + 1906))
      {
        *buf = 0;
        VoiceProcessorV2::PListCopyDictionaryForWrite(this, buf);
        v13 = *buf;
        if (*buf)
        {
          VPGetPropsPListStringForKey(&cf, 21);
          WriteItemToDictionary(buf, &cf, 2, 4uLL, &valuePtr);
          if (cf)
          {
            CFRelease(cf);
          }

          CFRelease(v13);
        }
      }
    }

    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_97);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      AudioIssueDetectorLibraryLoader(void)::libSym(a2);
    }

    *(this + 3152) = a2;
    if (*(this + 3155) == a2)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v14 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(this + 3152);
          *buf = 136315650;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          v32 = 1024;
          v33 = 783;
          v34 = 2048;
          v35 = v16;
          _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> setdownlinkvolume: no need to change volume = %f", buf, 0x1Cu);
        }
      }

      v17 = *(this + 1588);
      if (v17 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v17, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 783, "SetDownLinkVolume", "setdownlinkvolume: no need to change volume = %f", *(this + 3152));
      }
    }

    else
    {
      *(this + 3155) = a2;
      AUPropAndParamHelper::AddItemToAUParamList(this + 1134, 5, a2);
      if (*(this + 8865))
      {
        v18 = *(this + 447);
        if (v18)
        {
          AudioUnitSetParameter(v18, 5u, 0, 0, *(this + 3155), 0);
        }
      }

      AUPropAndParamHelper::AddItemToAUParamList(this + 1173, 0, *(this + 3155));
      if ((*(this + 8866) & 0x20) != 0)
      {
        v19 = *(this + 460);
        if (v19)
        {
          AudioUnitSetParameter(v19, 0, 0, 0, *(this + 3155), 0);
        }
      }

      AUPropAndParamHelper::AddItemToAUParamList(this + 1176, 0, *(this + 3155));
      if ((*(this + 8866) & 0x40) != 0)
      {
        v20 = *(this + 461);
        if (v20)
        {
          AudioUnitSetParameter(v20, 0, 0, 0, *(this + 3155), 0);
        }
      }

      AUPropAndParamHelper::AddItemToAUParamList(this + 1122, 1937141612, *(this + 3155));
      if ((*(this + 8864) & 0x10) != 0)
      {
        v21 = *(this + 443);
        if (v21)
        {
          AudioUnitSetParameter(v21, 0x73766F6Cu, 0, 0, *(this + 3155), 0);
        }
      }

      v22 = VoiceProcessorV2::DetermineRouteBasedPreGain(this);
      AUPropAndParamHelper::AddItemToAUParamList(this + 1179, 7, v22);
      AUPropAndParamHelper::AddItemToAUParamList(this + 1179, 5, *(this + 3155));
      AUPropAndParamHelper::AddItemToAUParamList(this + 1131, 26, v22);
      v23 = *(this + 1108);
      if ((v23 & 0x800000) != 0)
      {
        v24 = *(this + 462);
        if (v24)
        {
          AudioUnitSetParameter(v24, 7u, 0, 0, v22, 0);
          AudioUnitSetParameter(*(this + 462), 5u, 0, 0, *(this + 3155), 0);
          v23 = *(this + 1108);
        }
      }

      if ((v23 & 0x80) != 0)
      {
        v25 = *(this + 446);
        if (v25)
        {
          AudioUnitSetParameter(v25, 0x1Au, 0, 0, v22, 0);
        }
      }

      if (*(this + 15881) == 1)
      {
        v26 = *(this + 447);
        operator new();
      }
    }

    if (v9)
    {
      (*(*(this + 313) + 24))(this + 2504);
    }

    result = 0;
  }

  atomic_fetch_add(v28 + 1, 0xFFFFFFFF);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2724D8F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(uint64_t *a1, uint64_t a2, int a3)
{
  *a1 = a2;
  atomic_fetch_add((a2 + 4), 1u);
  v4 = *a1;
  if (**a1)
  {
    v5 = a3 - 1;
    v6 = 500;
    do
    {
      atomic_fetch_add((v4 + 4), 0xFFFFFFFF);
      usleep(0x1F4u);
      atomic_fetch_add((*a1 + 4), 1u);
      v4 = *a1;
      if (**a1)
      {
        v7 = v5 >= v6;
      }

      else
      {
        v7 = 0;
      }

      v6 += 500;
    }

    while (v7);
  }

  return a1;
}

float VoiceProcessorV2::DetermineRouteBasedPreGain(VoiceProcessorV2 *this)
{
  v1 = *(this + 294);
  if (v1 == *(this + 295))
  {
    v3 = 38.0;
  }

  else
  {
    v2 = *v1;
    v3 = 38.0;
    if (v2 <= 1886152046)
    {
      if (v2 == 1885892706)
      {
        v3 = 32.0;
      }

      if (v2 == 1885888867)
      {
        v3 = 24.0;
      }
    }

    else
    {
      if (v2 == 1886545251)
      {
        v3 = 24.0;
      }

      if (v2 == 1886613611)
      {
        v3 = 30.0;
      }

      if (v2 == 1886152047)
      {
        v3 = 32.0;
      }
    }
  }

  result = fminf(0.0 - ((1.0 - *(this + 3155)) * v3), 0.0);
  v5 = *(this + 267);
  v6 = *(this + 268);
  if (v5 != v6)
  {
    v7 = v5 + 1;
    if (v5 + 1 != v6)
    {
      v8 = *v5;
      v9 = v5 + 1;
      do
      {
        v10 = *v9++;
        v11 = v10;
        if (v10 < v8)
        {
          v8 = v11;
          v5 = v7;
        }

        v7 = v9;
      }

      while (v9 != v6);
    }

    return result + *v5;
  }

  return result;
}

void std::allocator<OpaqueRemoteAudioUnit *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke_102()
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

uint64_t VoiceProcessorV2::AppendSpeakerTelemetryData(atomic_uint *this, const AudioBufferList *a2, const AudioTimeStamp *a3, AudioTimeStamp *a4)
{
  atomic_fetch_add(this + 625, 1u);
  if (this[624])
  {
    VoiceProcessorV2::LogIOError(this, 24.006, 0.0, 0.0, 0.0, "appspkrtel: tryer failed to acquire lock", a3, a4);
    goto LABEL_10;
  }

  if (this[384] != a3)
  {
    VoiceProcessorV2::LogIOError(this, 24.002, 0.0, 0.0, 0.0, "appspkrtel: received %d samples, expected = %d", a3, a4);
    goto LABEL_10;
  }

  if (this[1136] == 1)
  {
    if (*(this + 15881))
    {
      *(this + 13018) = 1;
      if (*(this + 12648))
      {
        v8 = *(this + 1580);
        mSampleTime = a4->mSampleTime;
        if (v8 == a4->mSampleTime)
        {
          *(this + 1580) = mSampleTime + a3;
LABEL_18:
          VoiceProcessorV2::SaveFilesWriteSignal(this, 0x47u, a3, a2, a4);
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if ((*(this + 15882) & 1) == 0)
      {
        goto LABEL_19;
      }

      *(this + 13018) = 1;
      if (this[3162])
      {
        v8 = *(this + 1580);
        mSampleTime = a4->mSampleTime;
        if (v8 == a4->mSampleTime)
        {
          *(this + 1580) = mSampleTime + a3;
LABEL_17:
          if (*(this + 15882) == 1)
          {
            goto LABEL_18;
          }

LABEL_19:
          if (a2->mNumberBuffers == this[387])
          {
            v13 = 0;
            if (a3)
            {
              v14 = this[386];
              v15 = v14 - this[388];
              if (v15)
              {
                if (v15 >= a3)
                {
                  v13 = a3;
                }

                else
                {
                  v13 = v14 - this[388];
                }

                v16 = v14 - this[390];
                if (v16 >= v13)
                {
                  v17 = v13;
                }

                else
                {
                  v17 = v16;
                }

                if (a2->mNumberBuffers)
                {
                  v18 = 0;
                  p_mData = &a2->mBuffers[0].mData;
                  do
                  {
                    v20 = *p_mData;
                    p_mData += 2;
                    memcpy((*(this + 196) + 4 * (this[390] + this[386] * v18++)), v20, 4 * v17);
                    v21 = this[387];
                  }

                  while (v18 < v21);
                  if (v16 < v13 && v21)
                  {
                    v22 = 0;
                    v23 = &a2->mBuffers[0].mData;
                    do
                    {
                      v24 = *v23;
                      v23 += 2;
                      memcpy((*(this + 196) + 4 * (this[386] * v22++)), &v24[4 * v17], 4 * (v13 - v17));
                    }

                    while (v22 < this[387]);
                  }
                }

                this[388] += v13;
                v25 = this[390] + v13;
                this[390] = v25;
                v26 = this[386];
                v27 = v25 >= v26;
                v28 = v25 - v26;
                if (v27)
                {
                  this[390] = v28;
                }
              }
            }
          }

          else
          {
            v13 = 0;
          }

          if (v13 != a3)
          {
            VoiceProcessorV2::LogIOError(this, 24.001, 0.0, 0.0, 0.0, "appspkrtel: ring buffer write error %d", a3, a4);
          }

          goto LABEL_10;
        }

LABEL_16:
        VoiceProcessorV2::WriteTSOverload(this, v8, mSampleTime, 3);
        v11 = *(this + 15881);
        LODWORD(v12) = this[384];
        *(this + 1580) = a4->mSampleTime + v12;
        if (v11)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    *(this + 12648) = 1;
    mSampleTime = a4->mSampleTime;
    v8 = 0.0;
    goto LABEL_16;
  }

LABEL_10:
  atomic_fetch_add(this + 625, 0xFFFFFFFF);
  return 0;
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,__CFString const*,0>(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    CFRelease(v4);
    if (cf)
    {
LABEL_9:
      v6 = kCFCompareGreaterThan;
LABEL_13:
      CFRelease(cf);
      return v6;
    }

    return 0;
  }

  if (cf)
  {
    v6 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v6 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_13;
  }

  return v6;
}

PListLogger ***std::unique_ptr<TuningPListMgr>::reset[abi:ne200100](PListLogger ***result, PListLogger **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = 2;
    while (1)
    {
      v4 = v2[v3];
      if (v4)
      {
        CFRelease(v4);
        v2[v3] = 0;
      }

      if (++v3 == 6)
      {
        v5 = v2[6];
        if (v5)
        {
          if (*v5 != -1)
          {
            PListLogger::log(v2[6], "*** done.\n");
            close(*v5);
            *v5 = -1;
          }

          MEMORY[0x2743CBFA0](v5, 0x1000C4005A209FELL);
        }

        CACFString::~CACFString(v2);

        JUMPOUT(0x2743CBFA0);
      }
    }
  }

  return result;
}

char *VPChannelConfig::SetChConfig(VPChannelConfig *this, int a2, const char *__s1, unsigned int a4)
{
  *this = a2;
  v7 = *(this + 1);
  if (v7)
  {
    free(v7);
  }

  *(this + 1) = 0;
  result = strdup(__s1);
  *(this + 1) = result;
  if (a4 <= 3)
  {
    v9 = 1 << a4;
    if ((*this & (1 << a4)) == 0)
    {
      v10 = 0;
      while (((*this >> v10) & 1) == 0)
      {
        if (++v10 == 32)
        {
          LOBYTE(v10) = 33;
          break;
        }
      }

      v9 = 1 << v10;
    }
  }

  else
  {
    v9 = 0;
  }

  *(this + 4) = v9;
  return result;
}

void ___ZN16VoiceProcessorV2C2ERKN2vp7ContextE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v34 = 0;
  VoiceProcessorV2::ReadDefaultsOverride(@"EnableVPTelephonyMonitor", 0, &v34, 0, a5);
  v33 = 0;
  VoiceProcessorV2::ReadDefaultsOverride(@"EnableTelephonyMonitor", 0, &v33, 0, v6);
  v7 = v34 && v33;
  v32 = 0;
  VoiceProcessorV2::ReadDefaultsOverride(@"vp_enable_debug_features", 0, &v32, 0, v8);
  if (*(v5 + 68))
  {
    v10 = 1;
  }

  else
  {
    v10 = *(v5 + 69);
  }

  v35 = v10 & (v32 || v7);
  if (!v35)
  {
    goto LABEL_24;
  }

  if ((*(v5 + 15882) & 1) == 0)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v11 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
    {
      v12 = (*v11 ? *v11 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "vpDebug_FileSaving.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1010;
        _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> File-Saving switch turned on", buf, 0x12u);
      }
    }

    v13 = *(v5 + 12704);
    if (v13 && ((*(v5 + 15881) & 1) != 0 || *(v5 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v13, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 1010, "RereadSaveFilesDefaults", "File-Saving switch turned on");
    }

    v9 = v5 + 15912;
    *buf = v5;
    *&buf[8] = &v35;
    if (atomic_load_explicit((v5 + 15912), memory_order_acquire) != -1)
    {
      v37 = buf;
      v36 = &v37;
      std::__call_once(v9, &v36, std::__call_once_proxy[abi:ne200100]<std::tuple<VoiceProcessorV2::RereadSaveFilesDefaults(void)::$_0 &&>>);
    }

    if ((v35 & 1) == 0)
    {
LABEL_24:
      if (*(v5 + 15882) == 1)
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v14 = VPLogScope(void)::scope;
        if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
        {
          v15 = (*v14 ? *v14 : MEMORY[0x277D86220]);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "vpDebug_FileSaving.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1029;
            _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> File-Saving switch turned off", buf, 0x12u);
          }
        }

        v16 = *(v5 + 12704);
        if (v16 && ((*(v5 + 15881) & 1) != 0 || *(v5 + 15882) == 1))
        {
          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          CALegacyLog::log(v16, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 1029, "RereadSaveFilesDefaults", "File-Saving switch turned off");
        }

        v9 = v5 + 15920;
        *buf = v5;
        *&buf[8] = &v35;
        if (atomic_load_explicit((v5 + 15920), memory_order_acquire) != -1)
        {
          v37 = buf;
          v36 = &v37;
          std::__call_once(v9, &v36, std::__call_once_proxy[abi:ne200100]<std::tuple<VoiceProcessorV2::RereadSaveFilesDefaults(void)::$_1 &&>>);
        }
      }
    }
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v17 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope)
  {
    v9 = CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0);
    if (v9)
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      v9 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        v19 = "disabled";
        v20 = *(v5 + 15882);
        *&buf[4] = "vpDebug_FileSaving.cpp";
        *buf = 136315650;
        if (v20)
        {
          v19 = "enabled";
        }

        *&buf[12] = 1024;
        *&buf[14] = 1044;
        v39 = 2080;
        v40 = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> vp debug features (HUP) are %s", buf, 0x1Cu);
      }
    }
  }

  v21 = *(v5 + 12704);
  if (v21 && ((*(v5 + 15881) & 1) != 0 || *(v5 + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    if (*(v5 + 15882))
    {
      v22 = "enabled";
    }

    else
    {
      v22 = "disabled";
    }

    CALegacyLog::log(v21, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 1044, "RereadSaveFilesDefaults", "vp debug features (HUP) are %s", v22);
  }

  if (((*(v5 + 68) & 1) != 0 || *(v5 + 69) == 1) && *(v5 + 12720) <= 1u)
  {
    if (PlatformUtilities_iOS::IsTelephonyCaptureAllowed(v9))
    {
      *(v5 + 12720) = 1;
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v23 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v24 = (*v23 ? *v23 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(v5 + 12720);
          *buf = 136315650;
          *&buf[4] = "vpDebug_FileSaving.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1054;
          v39 = 1024;
          LODWORD(v40) = v25;
          _os_log_impl(&dword_2724B4000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> master default exists, enabling file saving level %d", buf, 0x18u);
        }
      }

      v26 = *(v5 + 12704);
      if (v26 && ((*(v5 + 15881) & 1) != 0 || *(v5 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v27 = *(v5 + 12720);
        CALegacyLog::log(v26, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 1054, "RereadSaveFilesDefaults", "master default exists, enabling file saving level %d");
      }
    }

    else
    {
      *(v5 + 12720) = 0;
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
          *buf = 136315394;
          *&buf[4] = "vpDebug_FileSaving.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1059;
          _os_log_impl(&dword_2724B4000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> master default does not exist, disabling file saving level", buf, 0x12u);
        }
      }

      v30 = *(v5 + 12704);
      if (v30 && ((*(v5 + 15881) & 1) != 0 || *(v5 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v30, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpDebug_FileSaving.cpp", 1059, "RereadSaveFilesDefaults", "master default does not exist, disabling file saving level");
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t caulk::details::lifetime_guard_base<VoiceProcessorV2>::~lifetime_guard_base(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 40) == 1)
  {
    MEMORY[0x2743CB750](a1 + 24);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2724DA258(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::~Block(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::~lf_read_synchronized_write(uint64_t a1)
{
  if (*(a1 + 8) == 1 && *(a1 + 40) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 9) == 1 && *(a1 + 72) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      *(a1 + 56) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

void VoiceProcessor::ConfigInfo::~ConfigInfo(VoiceProcessor::ConfigInfo *this)
{
  if (*(this + 72) == 1)
  {
    v2 = *(this + 6);
    if (v2)
    {
      *(this + 7) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 40) == 1)
  {
    v3 = *(this + 2);
    if (v3)
    {
      *(this + 3) = v3;
      operator delete(v3);
    }
  }
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t ABLRingBuffer<float>::~ABLRingBuffer(uint64_t a1)
{
  v3 = (a1 + 24);
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = v3[1];
    if (v4 != v2)
    {
      *(a1 + 32) = &v4[(v2 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *v3 = 0;
    v3[1] = 0;
  }

  return a1;
}

uint64_t **std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    AudioSampleRateConverterDispose();

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::vector<std::vector<std::unique_ptr<VPTimeFreqConverter>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *CADeprecated::CAAutoDelete<CALegacyLog>::set(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result != a2)
  {
    v4 = result;
    if (v2)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        fclose(v5);
        *(v2 + 8) = 0;
      }

      result = MEMORY[0x2743CBFA0](v2, 0x1020C40D5A9D86FLL);
    }

    *v4 = a2;
  }

  return result;
}

void VoiceProcessorV2::VPEchoProcessingParams::~VPEchoProcessingParams(VoiceProcessorV2::VPEchoProcessingParams *this)
{
  v2 = (this + 8128);
  v3 = -1536;
  do
  {
    v14 = v2;
    std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100](&v14);
    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  CACFString::~CACFString((this + 6600));
  v4 = *(this + 821);
  if (v4)
  {
    *(this + 822) = v4;
    operator delete(v4);
  }

  v14 = (this + 6544);
  std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100](&v14);
  for (i = 0; i != -1536; i -= 24)
  {
    v6 = *(this + i + 6008);
    if (v6)
    {
      *(this + i + 6016) = v6;
      operator delete(v6);
    }
  }

  v7 = (this + 4456);
  v8 = -96;
  do
  {
    CACFString::~CACFString(v7);
    v7 = (v9 - 24);
    v8 += 24;
  }

  while (v8);
  for (j = 4360; j != 2656; j -= 24)
  {
    v14 = (this + j);
    std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  CACFString::~CACFString((this + 2664));
  v11 = *(this + 329);
  if (v11)
  {
    *(this + 330) = v11;
    operator delete(v11);
  }

  v14 = (this + 2608);
  std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100](&v14);
  v12 = 1704;
  do
  {
    v13 = *(this + v12 + 312);
    if (v13)
    {
      *(this + v12 + 320) = v13;
      operator delete(v13);
    }

    v12 -= 24;
  }

  while (v12);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 264);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 224);
  CACFString::~CACFString((this + 200));
  CACFString::~CACFString((this + 184));
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::optional<vp::utility::Audio_Buffer_Mixer>::~optional(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v3 = (a1 + 40);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 16);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(void **a1, void *a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2)
    {
      v5 = v2[1];
      if (v5)
      {
        MEMORY[0x2743CBF70](v5, 0x1000C8077774924);
      }

      operator delete(v2);
    }

    *a1 = a2;
  }
}

const void **vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>::~Block(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<AUPropertyItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<AUPropertyItem>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void CACFString::~CACFString(CACFString *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<AUPropertyItem>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {
    v5 = *(i - 8);
    if (v5)
    {
      free(v5);
      *(i - 8) = 0;
    }

    *(i - 24) = 0;
    *(i - 16) = 0;
  }

  *(a1 + 8) = a2;
}

void std::vector<std::unique_ptr<VPTimeFreqConverter>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          VPTimeFreqConverter::~VPTimeFreqConverter(v6);
          MEMORY[0x2743CBFA0]();
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__function::__func<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0,std::allocator<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_store(v4, (v6 + 16576));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void std::__function::__func<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0,std::allocator<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0,std::allocator<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0,std::allocator<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B0390;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0,std::allocator<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_2881B0390;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0,std::allocator<VoiceProcessorV2::VoiceProcessorV2(vp::Context const&)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_2881B0390;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<VoiceProcessorV2>::control_block,std::allocator<caulk::details::lifetime_guard_base<VoiceProcessorV2>::control_block>>::__on_zero_shared(uint64_t a1)
{
  __dmb(0xBu);
  caulk::semaphore::signal((*(a1 + 40) + 24));
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<caulk::details::lifetime_guard_base<VoiceProcessorV2>::control_block,std::allocator<caulk::details::lifetime_guard_base<VoiceProcessorV2>::control_block>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881B0358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t VoiceProcessorV2::VPEchoProcessingParams::Reset(VoiceProcessorV2::VPEchoProcessingParams *this)
{
  *this = 0;
  if ((*(this + 216) & 1) == 0)
  {
    *(this + 164) = 0;
    *(this + 1) = 0;
    *(this + 4) = 0;
    v2 = this + 24;
    v3 = &dword_272758F80;
    v4 = 9;
    do
    {
      v5 = *v3;
      v3 += 2;
      *(v2 - 4) = v5;
      v2 += 8;
      --v4;
    }

    while (v4);
    *(this + 92) = 0x2000000000;
    *(this + 29) = 0;
    *(this + 100) = xmmword_272756310;
    *(this + 140) = xmmword_272756320;
  }

  *(this + 216) = 0;
  *(this + 88) = 0;
  *(this + 156) = 0;
  *(this + 178) = 0;
  v12 = this + 304;
  v13 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(&v12);
  v6 = *(this + 41) | 0x7FLL;
  *(this + 40) = -1;
  *(this + 41) = v6;
  v7 = 71;
  v8 = this;
  do
  {
    *(v8 + 43) = *(v8 + 42);
    std::vector<AUPropertyItem>::__base_destruct_at_end[abi:ne200100](v8 + 2680, *(v8 + 335));
    v8 = (v8 + 24);
    --v7;
  }

  while (v7);
  std::vector<AUPropertyItem>::__base_destruct_at_end[abi:ne200100](this + 2608, *(this + 326));
  *(this + 330) = *(this + 329);
  CACFString::operator=(this + 2664, @"(UL)-AuxVP");
  v12 = this + 4480;
  v13 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(&v12);
  *(this + 561) = -1;
  v9 = (this + 4496);
  v10 = 64;
  do
  {
    v9[1] = *v9;
    std::vector<AUPropertyItem>::__base_destruct_at_end[abi:ne200100]((v9 + 265), v9[265]);
    v9 += 3;
    --v10;
  }

  while (v10);
  std::vector<AUPropertyItem>::__base_destruct_at_end[abi:ne200100](this + 6544, *(this + 818));
  *(this + 822) = *(this + 821);

  return CACFString::operator=(this + 6600, @"(DL)-AuxVP");
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<2ul,71ul>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (!v2)
  {
    v6 = 71;
    v7 = 1;
LABEL_8:
    bzero(v3, 8 * v7);
    goto LABEL_9;
  }

  v4 = (64 - v2);
  if (v4 >= 0x47)
  {
    v5 = 71;
  }

  else
  {
    v5 = (64 - v2);
  }

  *v3++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v2 - v5)) & (-1 << v2));
  v6 = 71 - v5;
  *a1 = v3;
  v7 = (71 - v5) >> 6;
  if (v4 <= 7)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v6 & 0x3F) != 0)
  {
    v8 = &v3[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v6 & 0x3F));
  }
}

uint64_t CACFString::operator=(uint64_t a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 == cf)
  {
    v4 = v3;
  }

  else
  {
    v4 = cf;
    if (v3 && (*(a1 + 8) & 1) != 0)
    {
      CFRelease(v3);
    }

    *a1 = v4;
  }

  *(a1 + 8) = 1;
  if (v4)
  {
    CFRetain(v4);
  }

  return a1;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,64ul>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (!v2)
  {
    v5 = 1;
LABEL_10:
    bzero(v3, 8 * v5);
    return;
  }

  if ((64 - v2) >= 0x40uLL)
  {
    v4 = 64;
  }

  else
  {
    v4 = (64 - v2);
  }

  *v3++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v2 - v4)) & (-1 << v2));
  *a1 = v3;
  v5 = (64 - v4) >> 6;
  if (v2 == 64)
  {
    goto LABEL_10;
  }

  if (((64 - v4) & 0x3F) != 0)
  {
    v6 = &v3[v5];
    *a1 = v6;
    *v6 &= ~(0xFFFFFFFFFFFFFFFFLL >> -((64 - v4) & 0x3F));
  }
}

void VoiceProcessorV2::~VoiceProcessorV2(VoiceProcessorV2 *this)
{
  v132 = *MEMORY[0x277D85DE8];
  *this = &unk_2881AFFE8;
  v2 = *(this + 2074);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate(this + 16616);
  if (*(this + 15800) == 1)
  {
    fflush(*MEMORY[0x277D85DF8]);
  }

  dispatch_source_cancel(*(this + 1991));
  dispatch_release(*(this + 1991));
  *(this + 1991) = 0;
  if ((*(this + 16161) & 1) == 0)
  {
    v3 = *(this + 1987);
    if (v3)
    {
      PowerLogManager::EndPowerTracking(v3);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v4 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v5 = (*v4 ? *v4 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 269;
          _os_log_impl(&dword_2724B4000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Waiting for power log tasks to complete (thread join)", buf, 0x12u);
        }
      }

      v6 = *(this + 1588);
      if (v6 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v6, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 269, "~VoiceProcessorV2", "Waiting for power log tasks to complete (thread join)");
      }

      PowerLogManager::SetPowerVendor(*(this + 1987), 0, 0);
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v7 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(5, VPLogScope(void)::scope, 0))
      {
        v8 = (*v7 ? *v7 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VoiceProcessor_v2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 271;
          _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> Power log tasks complete", buf, 0x12u);
        }
      }

      v9 = *(this + 1588);
      if (v9 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v9, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 271, "~VoiceProcessorV2", "Power log tasks complete");
      }
    }
  }

  v10 = *(this + 2025);
  if (v10)
  {
    caulk::concurrent::messenger::drain(v10);
  }

  myFreeABLDynamic(this + 14);
  myFreeABLDynamic(this + 23);
  myFreeABLDynamic(this + 24);
  myFreeABLDynamic(this + 25);
  myFreeABLDynamic(this + 26);
  myFreeABLDynamic(this + 1986);
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 48, 0);
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 49, 0);
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 50, 0);
  if (*(this + 1960) == 1)
  {
    *buf = this + 1936;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(this + 1960) = 0;
  }

  if (*(this + 1992) == 1)
  {
    *buf = this + 1968;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(this + 1992) = 0;
  }

  if (*(this + 1400) == 1)
  {
    *buf = this + 1376;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
    *(this + 1400) = 0;
  }

  myFreeABLDynamic(this + 179);
  myFreeABLDynamic(this + 180);
  myFreeABLDynamic(this + 178);
  free(*(this + 177));
  v11 = *(this + 372);
  if (v11 || *(this + 373))
  {
    *&buf[8] = 0uLL;
    *buf = &buf[8];
    std::to_string(&v129, v11);
    std::string::basic_string[abi:ne200100]<0>(__p, "vp_mic_clip_detection_presrc_frames");
    v130 = __p;
    v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p);
    v13 = v12;
    if (*(v12 + 79) < 0)
    {
      operator delete(*(v12 + 56));
    }

    *(v13 + 56) = v129;
    *(&v129.__r_.__value_.__s + 23) = 0;
    v129.__r_.__value_.__s.__data_[0] = 0;
    if (v128 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v129.__r_.__value_.__l.__data_);
      }
    }

    std::to_string(&v129, *(this + 373));
    std::string::basic_string[abi:ne200100]<0>(__p, "vp_mic_clip_detection_postsrc_frames");
    v130 = __p;
    v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(buf, __p);
    v15 = v14;
    if (*(v14 + 79) < 0)
    {
      operator delete(*(v14 + 56));
    }

    *(v15 + 56) = v129;
    *(&v129.__r_.__value_.__s + 23) = 0;
    v129.__r_.__value_.__s.__data_[0] = 0;
    if (v128 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v129.__r_.__value_.__l.__data_);
      }
    }

    CAAudioStatisticsSendMessage(*(this + 271), *(this + 544), buf, 6);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*&buf[8]);
  }

  myFreeABLDynamic(this + 129);
  myFreeABLDynamic(this + 130);
  myFreeABLDynamic(this + 131);
  myFreeABLDynamic(this + 132);
  myFreeABLDynamic(this + 133);
  myFreeABLDynamic(this + 134);
  myFreeABLDynamic(this + 135);
  myFreeABLDynamic(this + 136);
  myFreeABLDynamic(this + 137);
  myFreeABLDynamic(this + 138);
  myFreeABLDynamic(this + 152);
  myFreeABLDynamic(this + 158);
  myFreeABLDynamic(this + 159);
  myFreeABLDynamic(this + 2055);
  myFreeABLDynamic(this + 208);
  v17 = *(this + 209);
  if (v17)
  {
    free(v17);
  }

  *(this + 295) = *(this + 294);
  *(this + 298) = *(this + 297);
  v18 = *(this + 278);
  if (v18)
  {
    CFRelease(v18);
    *(this + 278) = 0;
  }

  v19 = *(this + 279);
  if (v19)
  {
    CFRelease(v19);
    *(this + 279) = 0;
  }

  v20 = *(this + 280);
  if (v20)
  {
    CFRelease(v20);
    *(this + 280) = 0;
  }

  if (*(this + 15800) == 1)
  {
    fflush(*MEMORY[0x277D85DF8]);
  }

  if (*(this + 15881))
  {
    if ((*(this + 1696) & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (*(this + 15882))
  {
    if (*(this + 1696) != 1)
    {
LABEL_71:
      if (*(this + 1697) == 1 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        LODWORD(v16) = *(this + 126);
        VoiceProcessorV2::WriteTSOverload(this, *(this + 214) - v16, *(this + 214) - v16, 1);
      }

      if (*(this + 12632) == 1 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        LODWORD(v16) = *(this + 123);
        VoiceProcessorV2::WriteTSOverload(this, *(this + 1578) - v16, *(this + 1578) - v16, 2);
      }

      if (*(this + 12648) == 1 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
      {
        LODWORD(v16) = *(this + 384);
        VoiceProcessorV2::WriteTSOverload(this, *(this + 1580) - v16, *(this + 1580) - v16, 3);
      }

      goto LABEL_86;
    }

LABEL_70:
    LODWORD(v16) = *(this + 125);
    VoiceProcessorV2::WriteTSOverload(this, *(this + 213) - v16, *(this + 213) - v16, 0);
    goto LABEL_71;
  }

LABEL_86:
  VoiceProcessorV2::SaveFilesCleanup(this);
  if (*(this + 15881) == 1)
  {
    v21 = (this + 15336);
    v22 = 12;
    do
    {
      if (*v21)
      {
        myFreeABLDynamic(v21);
        *v21 = 0;
      }

      v23 = v21[25];
      v21[1] = 0;
      if (v23)
      {
        myFreeABLDynamic(v21 + 25);
        v21[25] = 0;
      }

      v21[26] = 0;
      v21 += 2;
      --v22;
    }

    while (v22);
    if (*(this + 1914))
    {
      myFreeABLDynamic(this + 1914);
      *(this + 1914) = 0;
    }

    if (*(this + 1915))
    {
      myFreeABLDynamic(this + 1915);
      *(this + 1915) = 0;
    }

    if (*(this + 15881))
    {
      std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 1967, 0);
      myFreeABLDynamic(this + 1969);
    }
  }

  for (i = 0; i != 71; ++i)
  {
    v25 = 71;
    v26 = &VoiceProcessorV2::VPUplinkIndexToSubTypeArray;
    while (i != *v26)
    {
      v26 += 18;
      if (!--v25)
      {
        v27 = 0;
        goto LABEL_105;
      }
    }

    v27 = v26[1];
LABEL_105:
    VoiceProcessorV2::DisposeAU(this, 1635083896, v27, this + i + 349, 1);
  }

  VoiceProcessorV2::DisposeAU(this, 1635082616, 1635284597, this + 1568, 1);
  myFreeABLDynamic(this + 420);
  myFreeABLDynamic(this + 421);
  myFreeABLDynamic(this + 423);
  myFreeABLDynamic(this + 422);
  myFreeABLDynamic(this + 424);
  myFreeABLDynamic(this + 425);
  myFreeABLDynamic(this + 426);
  myFreeABLDynamic(this + 427);
  myFreeABLDynamic(this + 428);
  myFreeABLDynamic(this + 429);
  myFreeABLDynamic(this + 438);
  myFreeABLDynamic(this + 430);
  myFreeABLDynamic(this + 431);
  myFreeABLDynamic(this + 432);
  myFreeABLDynamic(this + 433);
  myFreeABLDynamic(this + 437);
  myFreeABLDynamic(this + 436);
  myFreeABLDynamic(this + 434);
  myFreeABLDynamic(this + 435);
  myFreeABLDynamic(this + 541);
  myFreeABLDynamic(this + 503);
  myFreeABLDynamic(this + 504);
  myFreeABLDynamic(this + 506);
  myFreeABLDynamic(this + 507);
  myFreeABLDynamic(this + 505);
  myFreeABLDynamic(this + 508);
  myFreeABLDynamic(this + 511);
  myFreeABLDynamic(this + 513);
  myFreeABLDynamic(this + 514);
  myFreeABLDynamic(this + 515);
  myFreeABLDynamic(this + 509);
  myFreeABLDynamic(this + 510);
  v28 = *(this + 516);
  if (v28)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v28);
    MEMORY[0x2743CBFA0]();
    *(this + 516) = 0;
  }

  v29 = *(this + 517);
  if (v29)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v29);
    MEMORY[0x2743CBFA0]();
    *(this + 517) = 0;
  }

  v30 = *(this + 518);
  if (v30)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v30);
    MEMORY[0x2743CBFA0]();
    *(this + 518) = 0;
  }

  v31 = *(this + 519);
  if (v31)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v31);
    MEMORY[0x2743CBFA0]();
    *(this + 519) = 0;
  }

  v32 = *(this + 520);
  if (v32)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v32);
    MEMORY[0x2743CBFA0]();
    *(this + 520) = 0;
  }

  v33 = *(this + 521);
  if (v33)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v33);
    MEMORY[0x2743CBFA0]();
    *(this + 521) = 0;
  }

  v34 = *(this + 522);
  if (v34)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v34);
    MEMORY[0x2743CBFA0]();
    *(this + 522) = 0;
  }

  v35 = *(this + 523);
  if (v35)
  {
    VPTimeFreqConverter::~VPTimeFreqConverter(v35);
    MEMORY[0x2743CBFA0]();
    *(this + 523) = 0;
  }

  for (j = 0; j != 64; ++j)
  {
    v37 = 64;
    v38 = &VoiceProcessorV2::VPDownlinkIndexToSubTypeArray;
    while (j != *v38)
    {
      v38 += 18;
      if (!--v37)
      {
        v39 = 0;
        goto LABEL_128;
      }
    }

    v39 = v38[1];
LABEL_128:
    VoiceProcessorV2::DisposeAU(this, 1635083896, v39, this + j + 439, 1);
  }

  VoiceProcessorV2::DisposeAU(this, 1635082616, 1635284580, this + 1569, 1);
  myFreeABLDynamic(this + 198);
  myFreeABLDynamic(this + 199);
  myFreeABLDynamic(this + 200);
  myFreeABLDynamic(this + 201);
  myFreeABLDynamic(this + 202);
  myFreeABLDynamic(this + 203);
  myFreeABLDynamic(this + 204);
  myFreeABLDynamic(this + 205);
  v40 = *(this + 1582);
  if (v40)
  {
    (*(*v40 + 8))(v40);
    *(this + 1582) = 0;
  }

  v41 = *(this + 1583);
  if (v41)
  {
    (*(*v41 + 8))(v41);
    *(this + 1583) = 0;
  }

  if (VPLogScope(void)::once != -1)
  {
    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
  }

  v42 = VPLogScope(void)::scope;
  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
  {
    v43 = (*v42 ? *v42 : MEMORY[0x277D86220]);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VoiceProcessor_v2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 477;
      _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> VoiceProcessorV2 destroyed!", buf, 0x12u);
    }
  }

  v44 = *(this + 1588);
  if (v44 && ((*(this + 15881) & 1) != 0 || *(this + 15882) == 1))
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    CALegacyLog::log(v44, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/VoiceProcessor_v2.cpp", 477, "~VoiceProcessorV2", "VoiceProcessorV2 destroyed!");
  }

  *buf = 0;
  v45 = std::system_category();
  *&buf[8] = v45;
  if (!*(this + 3180))
  {
    v48 = v45;
    std::__fs::filesystem::__status((this + 12680), buf);
    if (v129.__r_.__value_.__s.__data_[0])
    {
      *buf = 0;
      *&buf[8] = v48;
      if (v129.__r_.__value_.__s.__data_[0] != 255)
      {
        std::__fs::filesystem::__remove((this + 12680), buf);
      }
    }
  }

  v46 = *(this + 1992);
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_97);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v46);
    v47 = *(this + 1993);
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global_97);
    }
  }

  else
  {
    v47 = *(this + 1993);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    AudioIssueDetectorLibraryLoader(void)::libSym(v47);
  }

  if ((*(this + 16161) & 1) == 0)
  {
    v49 = *(this + 1994);
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_399);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      AudioDataAnalysisManagerLibraryLoader(void)::libSym(v49);
    }
  }

  v50 = *(this + 2093);
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = *(this + 2092);
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = *(this + 2091);
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *(this + 2090);
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = *(this + 2089);
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = *(this + 2088);
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(this + 2087);
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = *(this + 2086);
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = *(this + 2085);
  if (v58)
  {
    CFRelease(v58);
  }

  v59 = *(this + 2084);
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = *(this + 2083);
  if (v60)
  {
    CFRelease(v60);
  }

  caulk::details::lifetime_guard_base<VoiceProcessorV2>::~lifetime_guard_base(this + 16616);
  v61 = *(this + 2075);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v62 = *(this + 2073);
  *(this + 2073) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *(this + 2069);
  if (v63)
  {
    CFRelease(v63);
  }

  v64 = *(this + 2065);
  if (v64)
  {
    CFRelease(v64);
  }

  v65 = *(this + 2064);
  if (v65)
  {
    CFRelease(v65);
  }

  v66 = *(this + 2063);
  if (v66)
  {
    CFRelease(v66);
  }

  v67 = *(this + 2062);
  if (v67)
  {
    CFRelease(v67);
  }

  v68 = *(this + 2061);
  if (v68)
  {
    CFRelease(v68);
  }

  v69 = *(this + 2060);
  if (v69)
  {
    CFRelease(v69);
  }

  v70 = *(this + 2059);
  if (v70)
  {
    CFRelease(v70);
  }

  v71 = *(this + 2058);
  if (v71)
  {
    CFRelease(v71);
  }

  v72 = *(this + 2057);
  if (v72)
  {
    CFRelease(v72);
  }

  v73 = *(this + 2056);
  if (v73)
  {
    CFRelease(v73);
  }

  v74 = *(this + 2053);
  if (v74)
  {
    _Block_release(v74);
    *(this + 2053) = 0;
  }

  v75 = *(this + 2052);
  if (v75)
  {
    CFRelease(v75);
  }

  v76 = *(this + 2051);
  if (v76)
  {
    CFRelease(v76);
  }

  v77 = *(this + 2050);
  if (v77)
  {
    CFRelease(v77);
  }

  v78 = *(this + 2049);
  if (v78)
  {
    CFRelease(v78);
  }

  caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::~lf_read_synchronized_write(this + 16296);
  v79 = *(this + 2034);
  if (v79)
  {
    CFRelease(v79);
  }

  v80 = *(this + 2033);
  if (v80)
  {
    CFRelease(v80);
  }

  v81 = *(this + 2032);
  if (v81)
  {
    CFRelease(v81);
  }

  v82 = *(this + 2031);
  if (v82)
  {
    CFRelease(v82);
  }

  v83 = *(this + 2030);
  if (v83)
  {
    CFRelease(v83);
  }

  v84 = *(this + 2029);
  if (v84)
  {
    CFRelease(v84);
  }

  v85 = *(this + 2028);
  if (v85)
  {
    CFRelease(v85);
  }

  v86 = *(this + 2027);
  if (v86)
  {
    CFRelease(v86);
  }

  v87 = *(this + 2026);
  if (v87)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
  }

  if (*(this + 16191) < 0)
  {
    operator delete(*(this + 2021));
  }

  if (*(this + 16128) == 1)
  {
    v88 = *(this + 2013);
    if (v88)
    {
      *(this + 2014) = v88;
      operator delete(v88);
    }
  }

  if (*(this + 16096) == 1)
  {
    v89 = *(this + 2009);
    if (v89)
    {
      *(this + 2010) = v89;
      operator delete(v89);
    }
  }

  *buf = this + 16032;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = this + 16008;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = this + 15984;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = this + 15960;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  v90 = *(this + 1988);
  if (v90)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
  }

  v91 = *(this + 1973);
  if (v91)
  {
    v92 = *(this + 1974);
    if (v92 != v91)
    {
      *(this + 1974) = &v92[(v91 - v92 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v91);
    *(this + 1973) = 0;
    *(this + 1974) = 0;
  }

  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 1967, 0);
  v93 = (this + 15712);
  v94 = -192;
  do
  {
    myFreeABLDynamic(v93);
    *v93 = 0;
    v93 -= 2;
    v94 += 16;
  }

  while (v94);
  v95 = (this + 15512);
  v96 = -192;
  do
  {
    myFreeABLDynamic(v95);
    *v95 = 0;
    v95 -= 2;
    v96 += 16;
  }

  while (v96);
  v97 = *(this + 1903);
  *(this + 1903) = 0;
  if (v97)
  {
    MEMORY[0x2743CBFA0](v97, 0x1000C4089CA3EB1);
  }

  *buf = this + 14112;
  std::vector<std::vector<std::unique_ptr<VPTimeFreqConverter>>>::__destroy_vector::operator()[abi:ne200100](buf);
  for (k = 0; k != -1088; k -= 8)
  {
    v99 = *(this + k + 14104);
    *(this + k + 14104) = 0;
    if (v99)
    {
      (*(*v99 + 8))(v99);
    }
  }

  CADeprecated::CAAutoDelete<CALegacyLog>::set(this + 1589, 0);
  CADeprecated::CAAutoDelete<CALegacyLog>::set(this + 1588, 0);
  if (*(this + 12703) < 0)
  {
    operator delete(*(this + 1585));
  }

  VoiceProcessorV2::VPEchoProcessingParams::~VPEchoProcessingParams((this + 4384));
  std::__hash_table<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<VoiceProcessorV2::VoiceProcessorPropertyListenerBlockInfo>>>>::~__hash_table(this + 4336);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 348, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 347, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 346, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 345, 0);
  std::unique_ptr<TuningPListMgr>::reset[abi:ne200100](this + 343, 0);
  std::mutex::~mutex((this + 2680));
  CADeprecated::CAMutex::~CAMutex((this + 2592));
  CADeprecated::CAMutex::~CAMutex((this + 2504));
  CADeprecated::CAMutex::~CAMutex((this + 2408));
  v100 = *(this + 297);
  if (v100)
  {
    *(this + 298) = v100;
    operator delete(v100);
  }

  v101 = *(this + 294);
  if (v101)
  {
    *(this + 295) = v101;
    operator delete(v101);
  }

  CAAudioChannelLayout::~CAAudioChannelLayout(this + 289);
  v102 = *(this + 281);
  if (v102)
  {
    CFRelease(v102);
  }

  v103 = *(this + 275);
  if (v103)
  {
    free(v103);
    *(this + 275) = 0;
  }

  v104 = *(this + 274);
  if (v104)
  {
    CFRelease(v104);
  }

  v105 = *(this + 273);
  if (v105)
  {
    CFRelease(v105);
  }

  v106 = *(this + 271);
  if (v106)
  {
    free(v106);
    *(this + 271) = 0;
  }

  v107 = *(this + 270);
  if (v107)
  {
    CFRelease(v107);
  }

  v108 = *(this + 267);
  if (v108)
  {
    *(this + 268) = v108;
    operator delete(v108);
  }

  v109 = *(this + 266);
  if (v109)
  {
    CFRelease(v109);
  }

  v110 = *(this + 263);
  if (v110)
  {
    *(this + 264) = v110;
    operator delete(v110);
  }

  v111 = *(this + 262);
  if (v111)
  {
    CFRelease(v111);
  }

  if (*(this + 2072) == 1)
  {
    *buf = this + 2048;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = this + 2024;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 250, 0);
  if (*(this + 1992) == 1)
  {
    *buf = this + 1968;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  if (*(this + 1960) == 1)
  {
    *buf = this + 1936;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v112 = *(this + 196);
  if (v112)
  {
    v113 = *(this + 197);
    if (v113 != v112)
    {
      *(this + 197) = &v113[(v112 - v113 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v112);
    *(this + 196) = 0;
    *(this + 197) = 0;
  }

  v114 = *(this + 184);
  if (v114)
  {
    v115 = *(this + 185);
    if (v115 != v114)
    {
      *(this + 185) = &v115[(v114 - v115 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v114);
    *(this + 184) = 0;
    *(this + 185) = 0;
  }

  if (*(this + 1400) == 1)
  {
    *buf = this + 1376;
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v116 = *(this + 170);
  if (v116)
  {
    v117 = *(this + 171);
    if (v117 != v116)
    {
      *(this + 171) = &v117[(v116 - v117 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v116);
    *(this + 170) = 0;
    *(this + 171) = 0;
  }

  v118 = *(this + 165);
  if (v118)
  {
    v119 = *(this + 166);
    if (v119 != v118)
    {
      *(this + 166) = &v119[(v118 - v119 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v118);
    *(this + 165) = 0;
    *(this + 166) = 0;
  }

  v120 = *(this + 156);
  if (v120)
  {
    v121 = *(this + 157);
    if (v121 != v120)
    {
      *(this + 157) = &v121[(v120 - v121 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v120);
    *(this + 156) = 0;
    *(this + 157) = 0;
  }

  v122 = *(this + 151);
  if (v122)
  {
    (*(*v122 + 8))(v122);
    *(this + 151) = 0;
  }

  CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 142, 0);
  CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 141, 0);
  CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 140, 0);
  CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 139, 0);
  v123 = *(this + 58);
  if (v123)
  {
    free(v123);
  }

  v124 = *(this + 55);
  if (v124)
  {
    free(v124);
  }

  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 50, 0);
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 49, 0);
  std::unique_ptr<VoiceProcessor::SampleRateConverter>::reset[abi:ne200100](this + 48, 0);
  v125 = *(this + 13);
  if (v125)
  {
    _Block_release(v125);
    *(this + 13) = 0;
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  v126 = *MEMORY[0x277D85DE8];
}

void sub_2724DC800(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::details::lifetime_guard_base<VoiceProcessorV2>::invalidate(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    _ZNSt3__18optionalIN5caulk9semaphoreEE7emplaceB8ne200100IJEvEERS2_DpOT_((result + 24));
    v2 = v1[2];
    v1[1] = 0;
    v1[2] = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    result = caulk::semaphore::timed_wait((v1 + 3), -1.0);
    __dmb(9u);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

OpaqueAudioComponentInstance *VoiceProcessorV2::DisposeAU(VoiceProcessorV2 *this, int a2, int a3, OpaqueAudioComponentInstance **a4, int a5)
{
  result = *a4;
  if (*a4)
  {
    if (*(this + 15881) == 1 && a5 != 0)
    {
      v13[0] = a2;
      v13[1] = a3;
      v14 = 1634758764;
      v15 = result;
      v9 = VoiceProcessorV2::AUIsInDownLinkProcessingChain(this, v13);
      v10 = 12656;
      if (v9)
      {
        v10 = 12664;
      }

      v11 = *(this + v10);
      Index = VoiceProcessorV2::VPAUProcessingBlock::FindIndex(v11[3], v11[4], v13);
      if ((Index & 0x80000000) == 0)
      {
        (*(*v11 + 88))(v11, Index);
      }

      result = *a4;
    }

    result = AudioComponentInstanceDispose(result);
    *a4 = 0;
  }

  return result;
}

void ___Z37AudioDataAnalysisManagerLibraryLoaderv_block_invoke_143()
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

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}