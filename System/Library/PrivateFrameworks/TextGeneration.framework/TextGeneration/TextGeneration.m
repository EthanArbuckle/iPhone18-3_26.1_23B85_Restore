uint64_t _nlpDefaultLog()
{
  if (_nlpDefaultLog::token != -1)
  {
    _nlpDefaultLog_cold_1();
  }

  return _nlpDefaultLog::log;
}

os_log_t ___nlpDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.TextGeneration", "TextGenerationDefaultLog");
  _nlpDefaultLog::log = result;
  return result;
}

uint64_t _nlpSignpostLog()
{
  if (_nlpSignpostLog::token != -1)
  {
    _nlpSignpostLog_cold_1();
  }

  return _nlpSignpostLog::log;
}

os_log_t ___nlpSignpostLog_block_invoke()
{
  result = os_log_create("com.apple.TextGeneration", "TextGenerationSignposts");
  _nlpSignpostLog::log = result;
  return result;
}

uint64_t TGTextGenerationEqualAllowingNil(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else if (v3)
  {
    v6 = [v4 isEqual:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_26D3B9C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTGITextGenerationInferenceClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!TextGenerationInferenceLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __TextGenerationInferenceLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279D9BFB8;
    v7 = 0;
    TextGenerationInferenceLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (TextGenerationInferenceLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("TGITextGenerationInference");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTGITextGenerationInferenceClass_block_invoke_cold_1();
  }

  getTGITextGenerationInferenceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TextGenerationInferenceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TextGenerationInferenceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_26D3BC27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void TGITextGenerationInferenceModelConfiguration::~TGITextGenerationInferenceModelConfiguration(TGITextGenerationInferenceModelConfiguration *this)
{
  if (*(&this[2].var0.var0.var1 + 23) < 0)
  {
    operator delete(this[2].var0.var0.var1.var0);
  }

  if (*(&this[1].var0.var0.var1 + 23) < 0)
  {
    operator delete(this[1].var0.var0.var1.var0);
  }

  if (*(&this->var0.var0.var1 + 23) < 0)
  {
    operator delete(this->var0.var0.var1.var0);
  }
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void operator delete(void *__p)
{
    ;
  }
}