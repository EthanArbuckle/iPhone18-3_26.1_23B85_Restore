float kaldi::ReadBasicType<float>(void *a1, int a2, float *a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_20.filesize + 2, "f != NULL", a5);
  }

  if (a2)
  {
    v13 = 0.0;
    v7 = std::istream::peek();
    if (v7 == 8)
    {
      kaldi::ReadBasicType<double>(a1, 1, &v13, v8, v9);
      result = v13;
      *a3 = result;
    }

    else
    {
      if (v7 != 4)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 93);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadBasicType: expected float, saw ", 35);
        std::istream::peek();
        v11 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", at file position ", 19);
        std::istream::tellg();
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      std::istream::get();
      std::istream::read();
    }
  }

  else
  {
    std::istream::operator>>();
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadBasicType: failed to read, at file position ", 48);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  return result;
}

void sub_BB2AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

double kaldi::ReadBasicType<double>(void *a1, int a2, double *a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_68.sectname[3], "d != NULL", a5);
  }

  if (a2)
  {
    v11 = 0.0;
    v7 = std::istream::peek();
    if (v7 == 4)
    {
      kaldi::ReadBasicType<float>(a1, 1, &v11);
      result = v11;
      *a3 = v11;
    }

    else
    {
      if (v7 != 8)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 118);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ReadBasicType: expected float, saw ", 35);
        std::istream::peek();
        v9 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", at file position ", 19);
        std::istream::tellg();
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
      }

      std::istream::get();
      std::istream::read();
    }
  }

  else
  {
    std::istream::operator>>();
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 125);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ReadBasicType: failed to read, at file position ", 48);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return result;
}

void sub_BB4BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::CheckToken(kaldi *this, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *this;
  if (!*this)
  {
    kaldi::KaldiAssertFailure_("CheckToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_68.nreloc + 2, "*token != '\\0'", a5);
  }

  v6 = this + 1;
  do
  {
    if (v5 < 0)
    {
      result = __maskrune(v5, 0x4000uLL);
      if (result)
      {
LABEL_9:
        kaldi::KaldiAssertFailure_("CheckToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_68.flags, "!::isspace(*token)", a5);
      }
    }

    else
    {
      result = _DefaultRuneLocale.__runetype[v5] & 0x4000;
      if (result)
      {
        goto LABEL_9;
      }
    }

    v8 = *v6++;
    v5 = v8;
  }

  while (v8);
  return result;
}

void *kaldi::WriteToken(void *a1, const char *a2, kaldi *this, uint64_t a4, const char *a5)
{
  if (!this)
  {
    kaldi::KaldiAssertFailure_("WriteToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_68.reserved2, "token != NULL", a5);
  }

  kaldi::CheckToken(this, a2, this, a4, a5);
  v7 = strlen(this);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, this, v7);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteToken.");
  }

  return result;
}

uint64_t kaldi::Peek(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  return std::istream::peek();
}

void *kaldi::WriteToken(void *a1, uint64_t a2, char *a3, uint64_t a4, const char *a5)
{
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  return kaldi::WriteToken(a1, 0, a3, a4, a5);
}

uint64_t kaldi::ReadToken(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_B8.sectname[10], "str != NULL", a5);
  }

  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3);
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 198);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadToken, failed to read token at file position ", 49);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v7 = std::istream::peek();
  if (v7 <= 0x7F)
  {
    v8 = _DefaultRuneLocale.__runetype[v7] & 0x4000;
  }

  else
  {
    v8 = __maskrune(v7, 0x4000uLL);
  }

  if (!v8)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 202);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadToken, expected space after token, saw instead ", 51);
    v13[0] = std::istream::peek();
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v13, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", at file position ", 19);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  return std::istream::get();
}

void sub_BB8B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::PeekToken(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  if (std::istream::peek() == 60)
  {
    std::istream::get();
    v2 = std::istream::peek();
    v3 = std::istream::unget();
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v6, "PeekToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 221);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Error ungetting '<' in PeekToken", 32);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v6);
    }

    return v2;
  }

  else
  {

    return std::istream::peek();
  }
}

void kaldi::ExpectToken(uint64_t *a1, char a2, kaldi *a3)
{
  std::istream::tellg();
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_B8.size + 5, "token != NULL", v9);
  }

  kaldi::CheckToken(a3, v6, v7, v8, v9);
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  __s1 = 0;
  v22 = 0;
  v23 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &__s1);
  std::istream::get();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 236);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Failed to read token [started at file position ", 47);
    v11 = std::ostream::operator<<();
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "], expected ", 12);
    v13 = strlen(a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, a3, v13);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }

  if (SHIBYTE(v23) < 0)
  {
    v10 = __s1;
    if (strcmp(__s1, a3))
    {
      goto LABEL_13;
    }

    operator delete(v10);
  }

  else if (strcmp(&__s1, a3))
  {
LABEL_13:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 240);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Expected token ", 16);
    v15 = strlen(a3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, a3, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", got instead ", 16);
    if (v23 >= 0)
    {
      p_s1 = &__s1;
    }

    else
    {
      p_s1 = __s1;
    }

    if (v23 >= 0)
    {
      v19 = HIBYTE(v23);
    }

    else
    {
      v19 = v22;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_s1, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ".", 2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }
}

void sub_BBC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::StandardErrorLogger(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(__stderrp, "%s\n", v1);
}

uint64_t kaldi::StandardErrorVLogger(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  return fprintf(__stderrp, "%s\n", v1);
}

void kaldi::KaldiGetStackTrace(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  memset(v10, 0, sizeof(v10));
  v3 = backtrace(v10, 50);
  v4 = backtrace_symbols(v10, v3);
  v5 = v4;
  v6 = v3;
  if (v3 >= 0x33)
  {
    for (i = 0; i != 25; ++i)
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, v5[i]);
      std::string::append(a1, "\n");
    }

    std::string::append(a1, ".\n.\n.\n");
    v9 = v3 - 25;
    do
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, v5[v9]);
      std::string::append(a1, "\n");
      ++v9;
    }

    while (v9 < v3);
  }

  else if (v3)
  {
    v7 = v4;
    do
    {
      kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(a1, *v7);
      std::string::append(a1, "\n");
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v5);
}

void sub_BBE7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::KALDI_APPEND_POSSIBLY_DEMANGLED_STRING(std::string *a1, char *__s)
{
  v4 = strchr(__s, 40);
  if (v4 && (v5 = v4, (v6 = strchr(v4, 43)) != 0))
  {
    v7 = v5 + 1;
    v8 = v6 - (v5 + 1);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    status = 0;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v12 = v8;
    if (v6 != v7)
    {
      memmove(&__p, v7, v8);
    }

    *(&__p + v8) = 0;
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = __cxa_demangle(p_p, 0, 0, &status);
    if (v10)
    {
      std::string::append(a1, v10);
      free(v10);
    }

    else
    {
      std::string::append(a1, __s);
    }

    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {

    std::string::append(a1, __s);
  }
}

void sub_BC018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::KaldiAssertFailure_(kaldi *this, char *a2, const char *a3, const char *a4, const char *a5)
{
  v8 = fst::cerr(this);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "KALDI_ASSERT: at ", 17);
  if (kaldi::g_program_name)
  {
    v10 = kaldi::g_program_name;
  }

  else
  {
    v10 = "";
  }

  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = strlen(this);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, this, v13);
  v28.__r_.__value_.__s.__data_[0] = 58;
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v28, 1);
  v16 = strrchr(a2, 47);
  if (v16)
  {
    do
    {
      v17 = v16;
      if (v16 <= a2)
      {
        break;
      }

      --v16;
    }

    while (*(v17 - 1) != 47);
  }

  else
  {
    v17 = a2;
  }

  v18 = strlen(v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  v28.__r_.__value_.__s.__data_[0] = 58;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v28, 1);
  v20 = std::ostream::operator<<();
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", failed: ", 10);
  v22 = strlen(a4);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, a4, v22);
  v28.__r_.__value_.__s.__data_[0] = 10;
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, &v28, 1);
  v25 = fst::cerr(v24);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Stack trace is:\n", 16);
  kaldi::KaldiGetStackTrace(&v28);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v26, &v28);
  std::string::~string(&v28);
  fst::cerr(v27);
  std::ostream::flush();
  abort();
}

void sub_BC1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void (__cdecl ***kaldi::KaldiWarnMessage::KaldiWarnMessage(void (__cdecl ***this)(std::ostringstream *__hidden this), const char *a2, char *a3))(std::ostringstream *__hidden this)
{
  v7 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  v7[33] = v3;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "WARNING (", 9);
  if (kaldi::g_program_name)
  {
    v9 = kaldi::g_program_name;
  }

  else
  {
    v9 = "";
  }

  v10 = strlen(v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v12 = strlen(a2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "():", 3);
  v15 = strrchr(a3, 47);
  if (v15)
  {
    do
    {
      v16 = v15;
      if (v15 <= a3)
      {
        break;
      }

      --v15;
    }

    while (*(v16 - 1) != 47);
  }

  else
  {
    v16 = a3;
  }

  v17 = strlen(v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  v21 = 58;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v21, 1);
  v19 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ") ", 2);
  return this;
}

void kaldi::KaldiWarnMessage::~KaldiWarnMessage(std::locale *this)
{
  v2 = kaldi::KaldiWarnMessage::g_logger[0];
  std::stringbuf::str();
  locale = this[33].__locale_;
  v2(&v18);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (getenv("QSR_CRASH_ON_WARN"))
  {
    if (std::uncaught_exception())
    {
      abort();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    v6 = std::string::append(&v15, "\n\n[stack trace: ]\n");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    kaldi::KaldiGetStackTrace(&v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v16, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v17, "\n");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v18);
  }

  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_BC594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v35 & 1) == 0)
    {
LABEL_14:
      std::ostringstream::~ostringstream(v33);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

void (__cdecl ***kaldi::KaldiLogMessage::KaldiLogMessage(void (__cdecl ***this)(std::ostringstream *__hidden this), const char *a2, char *a3))(std::ostringstream *__hidden this)
{
  v7 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  v7[33] = v3;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LOG (", 5);
  if (kaldi::g_program_name)
  {
    v9 = kaldi::g_program_name;
  }

  else
  {
    v9 = "";
  }

  v10 = strlen(v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v12 = strlen(a2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "():", 3);
  v15 = strrchr(a3, 47);
  if (v15)
  {
    do
    {
      v16 = v15;
      if (v15 <= a3)
      {
        break;
      }

      --v15;
    }

    while (*(v16 - 1) != 47);
  }

  else
  {
    v16 = a3;
  }

  v17 = strlen(v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  v21 = 58;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v21, 1);
  v19 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ") ", 2);
  return this;
}

void (__cdecl ***kaldi::KaldiVlogMessage::KaldiVlogMessage(void (__cdecl ***this)(std::ostringstream *__hidden this), const char *a2, char *a3, int a4, int a5))(std::ostringstream *__hidden this)
{
  v10 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  *(v10 + 66) = a5;
  v10[34] = v5;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "VLOG[", 5);
  v11 = std::ostream::operator<<();
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] (", 3);
  if (kaldi::g_program_name)
  {
    v13 = kaldi::g_program_name;
  }

  else
  {
    v13 = "";
  }

  v14 = strlen(v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  v16 = strlen(a2);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, a2, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "():", 3);
  v19 = strrchr(a3, 47);
  if (v19)
  {
    do
    {
      v20 = v19;
      if (v19 <= a3)
      {
        break;
      }

      --v19;
    }

    while (*(v20 - 1) != 47);
  }

  else
  {
    v20 = a3;
  }

  v21 = strlen(v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v25 = 58;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v25, 1);
  v23 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ") ", 2);
  return this;
}

void (__cdecl ***kaldi::KaldiErrorMessage::KaldiErrorMessage(void (__cdecl ***this)(std::ostringstream *__hidden this), const char *a2, char *a3))(std::ostringstream *__hidden this)
{
  v7 = std::ostringstream::basic_ostringstream[abi:ne200100](this);
  v7[33] = v3;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ERROR (", 7);
  if (kaldi::g_program_name)
  {
    v9 = kaldi::g_program_name;
  }

  else
  {
    v9 = "";
  }

  v10 = strlen(v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  v12 = strlen(a2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "():", 3);
  v15 = strrchr(a3, 47);
  if (v15)
  {
    do
    {
      v16 = v15;
      if (v15 <= a3)
      {
        break;
      }

      --v15;
    }

    while (*(v16 - 1) != 47);
  }

  else
  {
    v16 = a3;
  }

  v17 = strlen(v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  v21 = 58;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v21, 1);
  v19 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ") ", 2);
  return this;
}

void kaldi::KaldiErrorMessage::~KaldiErrorMessage(kaldi::KaldiErrorMessage *this)
{
  v2 = kaldi::KaldiErrorMessage::g_logger[0];
  std::stringbuf::str();
  v3 = *(this + 33);
  v2(&v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (std::uncaught_exception())
  {
    abort();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  v5 = std::string::append(&v14, "\n\n[stack trace: ]\n");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  kaldi::KaldiGetStackTrace(&v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v13;
  }

  else
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v15, v7, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v16, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, &v17);
}

{
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(this);
}

void sub_BCBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 57) < 0)
  {
    operator delete(*(v36 - 80));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v35 & 1) == 0)
    {
LABEL_14:
      if (*(v33 + 95) < 0)
      {
        operator delete(*(v33 + 72));
      }

      std::locale::~locale((v33 + 16));
      std::ostream::~ostream();
      std::ios::~ios();
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v34);
  goto LABEL_14;
}

uint64_t kaldi::RoundUpToNearestPowerOfTwo(kaldi *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this <= 0)
  {
    kaldi::KaldiAssertFailure_("RoundUpToNearestPowerOfTwo", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/kaldi-math.cc", &dword_1C + 2, "n > 0", a5);
  }

  v5 = (this - 1) | ((this - 1) >> 1) | (((this - 1) | ((this - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  return (v6 | HIWORD(v6)) + 1;
}

uint64_t kaldi::Rand(unsigned int *a1)
{
  if (a1)
  {

    return rand_r(a1);
  }

  else
  {
    if (pthread_mutex_lock(&kaldi::_RandMutex))
    {
      kaldi::KaldiAssertFailure_("Rand", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/kaldi-math.cc", &stru_20.nsects + 3, "rs == 0", v2);
    }

    if ((kaldi::_SrandCalled & 1) == 0)
    {
      kaldi::_RandSeed = 1;
      srand(1u);
      kaldi::_SrandCalled = 1;
    }

    v3 = rand_r(&kaldi::_RandSeed);
    if (pthread_mutex_unlock(&kaldi::_RandMutex))
    {
      kaldi::KaldiAssertFailure_("Rand", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/kaldi-math.cc", &stru_68.sectname[5], "rs == 0", v4);
    }

    return v3;
  }
}

unint64_t kaldi::CharToString@<X0>(kaldi *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = *this;
  if (v5 < 0)
  {
    v6 = __maskrune(v5, 0x40000uLL);
  }

  else
  {
    v6 = _DefaultRuneLocale.__runetype[v5] & 0x40000;
  }

  v7 = *this;
  if (v6)
  {
    snprintf(__str, 0x14uLL, "'%c'");
  }

  else
  {
    snprintf(__str, 0x14uLL, "[character %d]");
  }

  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v9] = 0;
  return result;
}

uint64_t kaldi::UniformRandomNumber::SetRandomSeeds(kaldi::UniformRandomNumber *this, int a2)
{
  v5 = *(this + 3);
  result = this + 24;
  v4 = v5;
  *(result + 8) = v5;
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = v6 - v4;
    v8 = v7 >> 1;
    if ((v7 >> 1) <= 1)
    {
      v8 = 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, v9);
  }

  *v4 = a2;
  *(this + 4) = v4 + 1;
  *this = 1;
  return result;
}

float kaldi::UniformRandomNumber::RandUniform(kaldi::UniformRandomNumber *this, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this <= a2)
  {
    kaldi::KaldiAssertFailure_("RandUniform", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/random-number.cc", &stru_68.reserved1 + 2, "sequence_id < num_sequences_", a5);
  }

  return vcvts_n_f32_s32(rand_r((*(this + 3) + 4 * a2)), 0x1FuLL);
}

kaldi::GaussRandomNumber *kaldi::GaussRandomNumber::GaussRandomNumber(kaldi::GaussRandomNumber *this, const kaldi::UniformRandomNumber *a2)
{
  v4 = *a2;
  *this = a2;
  *(this + 1) = v4;
  v5 = (this + 16);
  std::vector<std::vector<float>>::vector[abi:ne200100](this + 2, v4);
  std::vector<short>::vector[abi:ne200100](this + 5, *a2);
  *(this + 16) = 2;
  if (*(this + 1))
  {
    v6 = 0;
    v7 = 0;
    v8 = 2;
    do
    {
      std::vector<int>::resize((*v5 + v6), v8);
      v8 = *(this + 16);
      *(*(this + 5) + 2 * v7++) = v8;
      v6 += 24;
    }

    while (*(this + 1) > v7);
  }

  return this;
}

void sub_BD1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void kaldi::GaussRandomNumber::Rand(kaldi::GaussRandomNumber *this, unsigned int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((a2 & 0x80000000) != 0 || *(this + 1) <= a2)
  {
    kaldi::KaldiAssertFailure_("Rand", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/random-number.cc", &stru_B8.segname[1], "sequence_id >= 0 && sequence_id < num_sequences_", a5);
  }

  v6 = a2;
  v7 = *(this + 5);
  v8 = *(v7 + 2 * a2);
  if (*(this + 16) <= v8)
  {
    __asm
    {
      FMOV            V1.2D, #2.0
      FMOV            V0.2D, #-1.0
    }

    v20 = _Q0;
    v21 = _Q1;
    do
    {
      v22 = kaldi::UniformRandomNumber::RandUniform(*this, v6, a3, a4, a5);
      v17 = vcvt_f32_f64(vmlaq_f64(v20, v21, vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(kaldi::UniformRandomNumber::RandUniform(*this, v6, a3, a4, a5)), LODWORD(v22)))));
      v18 = COERCE_FLOAT(vmul_f32(v17, v17).i32[1]) + (v17.f32[0] * v17.f32[0]);
    }

    while (v18 >= 1.0);
    v23 = v17;
    v19 = logf(v18) * -2.0 / v18;
    **(*(this + 2) + 24 * v6) = vmul_n_f32(v23, sqrtf(v19));
    *(*(this + 5) + 2 * v6) = 1;
  }

  else
  {
    v9 = *(this + 2);
    *(v7 + 2 * a2) = v8 + 1;
    v10 = *(*(v9 + 24 * a2) + 4 * v8);
  }
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void *std::vector<short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_BD494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::SimplerSimpleRecurrentUnit(kaldi::nnet1::SimplerSimpleRecurrentUnit *this, const kaldi::nnet1::SimplerSimpleRecurrentUnit *a2)
{
  *(this + 7) = *(a2 + *(*a2 - 40) + 8);
  *(this + 32) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = off_2829A0;
  *(this + 36) = 1;
  *(this + 6) = off_277568;
  *this = off_277418;
  *(this + 12) = off_277638;
  *(this + 13) = off_2776B8;
  *(this + 14) = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = off_277020;
  *(this + 3) = 0;
  operator new();
}

void sub_BD630(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v6);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](v5, 0);
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent(v4);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SimplerSimpleRecurrentUnit::PropagateFnc(uint64_t **a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *a1;
  if (v5 != *(a1 + *(*a1 - 8) + 40))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &dword_14 + 1, "batch_size == num_utts", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v44, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 23, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "Running forward propagation for batch size = ", 45);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v44);
    v6 = *a1;
  }

  (v6[18])(a1);
  v15 = &(*(a1 + *(*a1 - 8) + 8))[6 * a4];
  if (!*(v15 + 20))
  {
    v16 = ((*a1)[9])(a1);
    kaldi::CuMatrix<float>::Resize(v15, v5, v16, 0, 0);
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v15, (a1 + 2));
  }

  v46 = 0u;
  v45 = 0u;
  v44.__locale_ = off_276F88;
  v47 = 0;
  kaldi::nnet1::Nnet::Propagate<kaldi::CuMatrixBase<float>>(a1[1], a2, &v44, a4, v14);
  kaldi::CuMatrix<float>::CuMatrix(v43, v5, *(a1 + *(*a1 - 5) + 12), 1u, 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v37, &v44, 0, SHIDWORD(v45), 0, *(a1 + *(*a1 - 5) + 12));
  kaldi::CuMatrixBase<float>::Sigmoid(v43, &v37, v17, v18, v19);
  v37 = off_276F40;
  v38 = 0u;
  v39 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v37);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v40, &v44, 0, SHIDWORD(v45), *(a1 + *(*a1 - 5) + 12), *(a1 + *(*a1 - 5) + 12));
  kaldi::CuMatrix<float>::CuMatrix(&v37, v5, *(a1 + *(*a1 - 5) + 12), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::Set(&v37, v20, v21, v22, v23, 1.0);
  kaldi::CuMatrixBase<float>::AddMat(&v37, v43, 111, v24, v25, -1.0, 1.0);
  kaldi::CuMatrixBase<float>::MulElements(&v37, &v40, v26, v27, v28);
  kaldi::CuMatrixBase<float>::MulElements(v15, v43, v29, v30, v31);
  kaldi::CuMatrixBase<float>::AddMat(v15, &v37, 111, v32, v33, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v15, 111, v34, v35);
  kaldi::CuMatrix<float>::~CuMatrix(&v37);
  v40 = off_276F40;
  v41 = 0u;
  v42 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v40);
  kaldi::CuMatrix<float>::~CuMatrix(v43);
  return kaldi::CuMatrix<float>::~CuMatrix(&v44);
}

void sub_BDA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (**a15)(), __int128 a16, __int128 a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a15 = off_276F40;
  a16 = 0u;
  a17 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a15);
  kaldi::CuMatrix<float>::~CuMatrix(&a18);
  kaldi::CuMatrix<float>::~CuMatrix(&a24);
  _Unwind_Resume(a1);
}

unsigned int *kaldi::nnet1::Nnet::Propagate<kaldi::CuMatrixBase<float>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-nnet.h", &stru_68.size + 7, "NULL != out", a5);
  }

  if (((a1[1] - *a1) & 0x7FFFFFFF8) != 0)
  {
    v6 = (a1[9] + 24 * a4);
    v8 = *v6;
    v7 = v6[1];
    if (*v6 != v7)
    {
      v9 = 0;
      v10 = *(a3 + 32);
      v11 = v7 - v8 - 48;
      v12 = vdupq_n_s64(v11 / 0x30);
      v13 = (v8 + 80);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v9), xmmword_212100)));
        if (v14.i8[0])
        {
          *(v13 - 6) = v10;
        }

        if (v14.i8[4])
        {
          *v13 = v10;
        }

        v9 += 2;
        v13 += 12;
      }

      while (((v11 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v9);
    }

    v15 = kaldi::nnet1::Nnet::Propagate<kaldi::CuMatrixBase<float>>(a1, a2, a4, a4, a5);
    kaldi::CuMatrix<float>::Resize(a3, *(v15 + 20), *(v15 + 16), 1u, 0);

    return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v15, 111, v16, v17);
  }

  else
  {

    return kaldi::CuMatrix<float>::operator=(a3, a2);
  }
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 70, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Reading SimplerSimpleRecurrentUnit component", 44);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v38);
  }

  __p = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, a3, &__p, v6, v7);
    if (SHIBYTE(v37) < 0)
    {
      break;
    }

    if (HIBYTE(v37) != 5)
    {
      if (HIBYTE(v37) != 16)
      {
        goto LABEL_54;
      }

      if (__p != 0x72547475706E493CLL || v36 != 0x3E6D726F66736E61)
      {
        goto LABEL_54;
      }

LABEL_13:
      operator new();
    }

    p_p = &__p;
LABEL_23:
    v12 = *p_p;
    v13 = p_p[4];
    if (v12 != 811557692 || v13 != 62)
    {
      goto LABEL_29;
    }

    kaldi::CuVector<float>::Read(a1 + 16, a2, a3, v8, v7);
  }

  if (v36 == 5)
  {
    p_p = __p;
    goto LABEL_23;
  }

  if (v36 == 16 && *__p == 0x72547475706E493CLL && *(__p + 1) == 0x3E6D726F66736E61)
  {
    goto LABEL_13;
  }

LABEL_29:
  if ((v37 & 0x8000000000000000) == 0 || v36 != 29 || (*__p == 0x656C706D69532F3CLL ? (v15 = *(__p + 1) == 0x52656C706D695372) : (v15 = 0), v15 ? (v16 = *(__p + 2) == 0x746E657272756365) : (v16 = 0), v16 ? (v17 = *(__p + 21) == 0x3E74696E55746E65) : (v17 = 0), !v17))
  {
LABEL_54:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 87);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Unrecognized token ", 19);
    if (v37 >= 0)
    {
      v31 = &__p;
    }

    else
    {
      v31 = __p;
    }

    if (v37 >= 0)
    {
      v32 = HIBYTE(v37);
    }

    else
    {
      v32 = v36;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

LABEL_42:
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 90, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "done", 4);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v38);
  }

  v18 = *(a1 + 8);
  if (!v18)
  {
    v33 = "input_transform_";
    v34 = (&stru_20 + 60);
    goto LABEL_66;
  }

  kaldi::nnet1::Nnet::GetHistoricalComponents(v18, &v38);
  locale = v38.__locale_;
  v24 = v39;
  if (v38.__locale_)
  {
    v39 = v38.__locale_;
    operator delete(v38.__locale_);
  }

  if (locale != v24)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 94);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Another recurrent neural networks are not supported inside SSRU component.", 74);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
  }

  v25 = *(a1 + *(*a1 - 40) + 12);
  if (kaldi::nnet1::Nnet::OutputDim(*(a1 + 8), v19, v20, v21, v22) != 2 * v25)
  {
    v33 = "OutputDim()*2 == input_transform_->OutputDim()";
    v34 = (&stru_20 + 65);
    goto LABEL_66;
  }

  v29 = *(a1 + *(*a1 - 40) + 8);
  if (v29 != kaldi::nnet1::Nnet::InputDim(*(a1 + 8), v26, v27, v28, v7))
  {
    v33 = "InputDim() == input_transform_->InputDim()";
    v34 = (&stru_20 + 66);
    goto LABEL_66;
  }

  if (*(a1 + 32) != *(a1 + *(*a1 - 40) + 12))
  {
    v33 = "hidden_init_.Dim() == OutputDim()";
    v34 = &stru_20.nsects + 3;
LABEL_66:
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", v34, v33, v7);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }
}

void sub_BE334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::SimplerSimpleRecurrentUnit::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  if (!*(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("WriteData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_20.flags + 3, "input_transform_", a5);
  }

  kaldi::WriteToken(a2, a3, "<InputTransform>", a4, a5);
  kaldi::nnet1::Nnet::Write(*(a1 + 8), a2, a3, a4, v9);
  kaldi::WriteToken(a2, a3, "<c_0>", v10, v11);
  kaldi::CuVectorBase<float>::Write((a1 + 16), a2, a3, v12, v13);

  return kaldi::WriteToken(a2, a3, "</SimplerSimpleRecurrentUnit>", v14, v15);
}

uint64_t kaldi::nnet1::SimplerSimpleRecurrentUnit::ResetHistoryState(uint64_t *a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 144))(a1);
  if (a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.sectname[13], "batch_idx == 0", v8);
  }

  v9 = a2[1];
  v10 = *a1;
  v11 = a1 + *(*a1 - 64);
  if (v9 != *(v11 + 40))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.sectname[14], "sequence_idx.size() == hopts_.num_sequences", v8);
  }

  *(*(v11 + 8) + 32) = a3;
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (((*(*a2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v14, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", 123);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v14, "ResetHistoryState for SimplerSimpleRecurrentUnit makes only sense if all utterances get reset at the same time");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v14);
      }
    }
  }

  v16 = 0u;
  v15 = 0u;
  v14 = off_276F88;
  v17 = 0;
  kaldi::CuMatrix<float>::operator=(*(a1 + *(v10 - 64) + 8), &v14);
  return kaldi::CuMatrix<float>::~CuMatrix(&v14);
}

uint64_t kaldi::nnet1::SimplerSimpleRecurrentUnit::ResetHistoryState(kaldi::nnet1::SimplerSimpleRecurrentUnit *this)
{
  v2 = *this;
  v3 = this + *(*this - 64);
  v5 = *(v3 + 1);
  v4 = *(v3 + 2);
  if (v4 != v5)
  {
    v6 = v4 - 6;
    v7 = v4 - 6;
    v8 = v4 - 6;
    do
    {
      v9 = *v8;
      v8 -= 6;
      (*(v9 + 16))(v7);
      v6 -= 6;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
    v2 = *this;
  }

  *(v3 + 2) = v5;
  v11 = *(v2 + 144);

  return v11(this);
}

unsigned int *kaldi::nnet1::SimplerSimpleRecurrentUnit::GetHistoryState(void *a1, unsigned int *a2, int a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.addr, "batch_idx == 0", a5);
  }

  v7 = *(a1 + *(*a1 - 64) + 8);
  kaldi::CuMatrix<float>::Resize(a2, *(v7 + 20), *(v7 + 16), 0, 0);
  v10 = *(a1 + *(*a1 - 64) + 8);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v10, 111, v8, v9);
}

_DWORD *kaldi::nnet1::SimplerSimpleRecurrentUnit::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, const char *a5)
{
  if (a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.addr + 6, "batch_idx == 0", a5);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + *(*a1 - 64) + 40) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.addr + 7, "sequence_idx >= 0 && sequence_idx < hopts_.num_sequences", a5);
  }

  v8 = (*(*a1 + 72))(a1);
  kaldi::CuVector<float>::Resize(a2, v8, 0, v9, v10);
  v14 = *(a1 + *(*a1 - 64) + 8);
  v15 = *(v14 + 20);
  if (v15 < 1)
  {

    return kaldi::CuVectorBase<float>::CopyFromVec(a2, a1 + 16, v11, v12, v13);
  }

  else
  {
    if (v15 <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v13);
    }

    v16 = *(v14 + 8) + 4 * (*(v14 + 24) * a3);
    v17 = *(v14 + 16);
    v18 = *(v14 + 32);
    v20[1] = v16;
    v20[0] = &off_276FE0;
    v20[2] = v17;
    v20[3] = v18;
    return kaldi::CuVectorBase<float>::CopyFromVec(a2, v20, v11, v12, v13);
  }
}

unsigned int *kaldi::nnet1::SimplerSimpleRecurrentUnit::SetHistoryState(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a1 + 144))(a1);
  if (a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.offset + 2, "batch_idx == 0", v6);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + *(*a1 - 64) + 8), *(a2 + 20), *(a2 + 16), 0, 0);
  v9 = *(a1 + *(*a1 - 64) + 8);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v9, a2, 111, v7, v8);
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::SetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  (*(*a1 + 144))(a1);
  if (a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.reloff + 1, "batch_idx == 0", v8);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + *(*a1 - 64) + 40) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.reloff + 2, "sequence_idx >= 0 && sequence_idx < hopts_.num_sequences", v8);
  }

  v9 = *(a2 + 16);
  if (v9 != (*(*a1 + 72))(a1))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-ssru.cc", &stru_68.reloff + 3, "history.Dim() == HistoryStateSize()", v10);
  }

  v11 = *(a2 + 16);
  v12 = a1 + *(*a1 - 64);
  v13 = *(v12 + 8);
  if (v11 < 1)
  {

    kaldi::CuMatrix<float>::Resize(v13, 0, 0, 0, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(v13, *(v12 + 40), v11, 2u, 0);
    v17 = *(a1 + *(*a1 - 64) + 8);
    if (*(v17 + 20) <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v16);
    }

    v18 = *(v17 + 8) + 4 * (*(v17 + 24) * a3);
    v19 = *(v17 + 16);
    v20 = *(v17 + 32);
    v21[1] = v18;
    v21[0] = &off_276FE0;
    v21[2] = v19;
    v21[3] = v20;
    kaldi::CuVectorBase<float>::CopyFromVec(v21, a2, v14, v15, v16);
  }
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(kaldi::nnet1::SimplerSimpleRecurrentUnit *this)
{
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent((v2 + 104));
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this + 96);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
  kaldi::nnet1::Component::~Component((this + 48));
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(this);

  operator delete();
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-ssru.h", 54);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void virtual thunk tokaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(kaldi::nnet1::SimplerSimpleRecurrentUnit *this)
{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((this + *(*this - 24)));
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((this + *(*this - 24)));

  operator delete();
}

void kaldi::nnet1::Component::VectorizeWeightsCorrs(uint64_t a1)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "VectorizeWeightsCorrs", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 274);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "VectorizeWeightsCorrs", 21);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

uint64_t kaldi::nnet1::Component::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 8);
  v11 = off_276F40;
  *&v12 = v4;
  *(&v12 + 1) = v3 | 0x100000000;
  LODWORD(v13) = v3;
  DWORD1(v13) = v3;
  *(&v13 + 1) = *(a2 + 24);
  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  v8 = off_276F40;
  *&v9 = v6;
  *(&v9 + 1) = v5 | 0x100000000;
  LODWORD(v10) = v5;
  DWORD1(v10) = v5;
  *(&v10 + 1) = *(a3 + 24);
  (*(*a1 + 112))(a1, &v11, &v8, 0);
  v8 = off_276F40;
  v9 = 0u;
  v10 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v8);
  v11 = off_276F40;
  v12 = 0u;
  v13 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v11);
}

void sub_BF204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16)
{
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  a15 = 0u;
  a16 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a14);
  _Unwind_Resume(a1);
}

char **kaldi::nnet1::Component::SetWorkspace(uint64_t a1, char **a2)
{
  result = (a1 + 24);
  if (result != a2)
  {
    return std::vector<kaldi::CuWorkspace *>::__assign_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

void kaldi::nnet1::Component::GetUnitOutputFnc(uint64_t a1)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "GetUnitOutputFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 359);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetUnitOutputFnc", 16);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "GetUnitOutputFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 363);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetUnitOutputFnc", 16);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void virtual thunk tokaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(void *a1)
{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((a1 + *(*a1 - 24)));

  operator delete();
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit((a1 + *(*a1 - 24)));

  operator delete();
}

void kaldi::nnet1::Nnet::Nnet(kaldi::nnet1::Nnet *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  operator new();
}

void sub_BF6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 352);
  if (v14)
  {
    *(v10 + 360) = v14;
    operator delete(v14);
  }

  kaldi::nnet1::Nnet::Nnet(v10);
  v15 = *(v10 + 280);
  if (v15)
  {
    *(v10 + 288) = v15;
    operator delete(v15);
  }

  a10 = (v10 + 256);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  kaldi::CuVector<float>::~CuVector(v12);
  kaldi::CuVector<float>::~CuVector(v11);
  v16 = *(v10 + 168);
  if (v16)
  {
    operator delete(v16);
  }

  a10 = (v10 + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v17 = *(v10 + 48);
  if (v17)
  {
    *(v10 + 56) = v17;
    operator delete(v17);
  }

  v18 = *(v10 + 24);
  if (v18)
  {
    *(v10 + 32) = v18;
    operator delete(v18);
  }

  v19 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*(v9 + 8))(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void kaldi::nnet1::SimplerSimpleRecurrentUnit::~SimplerSimpleRecurrentUnit(kaldi::nnet1::SimplerSimpleRecurrentUnit *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  *(this + *(*this - 48)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  *(this + *(*this - 64)) = a2[4];
  kaldi::CuVector<float>::~CuVector(this + 2);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 1, 0);
}

void *std::vector<kaldi::CuWorkspace *>::__assign_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::EventMap *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

kaldi::nnet1::Nnet *std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](kaldi::nnet1::Nnet **a1, kaldi::nnet1::Nnet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::nnet1::Nnet::~Nnet(result);

    operator delete();
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::Propagate<kaldi::CuMatrixBase<float>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = (a1[1] - *a1) >> 3;
  if (v5 <= 0)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-nnet.h", &stru_68.reserved1 + 3, "NumComponents() > 0", a5);
  }

  if ((a3 & 0x80000000) != 0 || *(a1[18] + 32) <= a3)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-nnet.h", &stru_68.reserved2, "batch_idx >= 0 && batch_idx < opts_->num_subbatches", a5);
  }

  v8 = (a1[9] + 24 * a3);
  if (v5 >= (-1431655765 * ((v8[1] - *v8) >> 4)))
  {
    kaldi::KaldiAssertFailure_("Propagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-nnet.h", &stru_68.reserved2 + 3, "(int32)propagate_buf_[batch_idx].size() >= NumComponents() + 1", a5);
  }

  v10 = a3;
  kaldi::CuMatrix<float>::Resize(*v8, *(a2 + 20), *(a2 + 16), 1u, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(*(a1[9] + 24 * v10), a2, 111, v11, v12);
  v13 = *a1;
  v14 = (a1[1] - *a1) >> 3;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(v13 + 8 * v16++);
      v18 = *(a1[9] + 24 * v10) + v15;
      kaldi::nnet1::Component::Propagate(v17, v18, v18 + 48, a3);
      v13 = *a1;
      v19 = a1[1] - *a1;
      v15 += 48;
    }

    while (v16 < (v19 >> 3));
    v14 = v19 >> 3;
  }

  return *(a1[9] + 24 * v10) + 48 * v14;
}

uint64_t kaldi::nnet1::Component::Propagate(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[2] != *(a2 + 16))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v20, "Propagate", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 683);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Non-matching dims! ", 19);
    v12 = (*(*a1 + 24))(a1);
    kaldi::nnet1::Component::TypeToMarker(v12, &v19);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v19;
    }

    else
    {
      v13 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " input-dim : ", 13);
    v16 = a1[2];
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " data : ", 8);
    v18 = *(a2 + 16);
    std::ostream::operator<<();
    std::string::~string(&v19);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v8 = (*(*a1 + 56))(a1, *(a2 + 20));
  kaldi::CuMatrix<float>::Resize(a3, v8, a1[3], 0, 0);
  v9 = *(*a1 + 112);

  return v9(a1, a2, a3, a4);
}

void kaldi::nnet1::Nnet::Nnet(void *a1)
{
  v2 = a1[40];
  if (v2)
  {
    free(v2);
  }

  a1[39] = 0;
  a1[40] = 0;
  a1[41] = 0;
}

void kaldi::nnet1::AffineTransform::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v8 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, v8, v9, v10, v11, 1.0, 0.0);
  v12 = *(a1 + 352);
  if (v12 == *(a1 + 360) || !*(v12 + 48 * a4 + 20))
  {
    v17 = kaldi::nnet1::AffineTransform::Linearity(a1);
    kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, CblasNoTrans, v17, &stru_68.sectname[8], 1.0, 1.0);
  }

  else
  {
    v13 = kaldi::nnet1::AffineTransform::Linearity(a1);
    kaldi::CuMatrixBase<float>::AddMatMatMasked(a3, a2, CblasNoTrans, v13, &stru_68.sectname[8], *(a1 + 352) + 48 * a4, 1.0);
  }

  if (*(a1 + 128) == 1)
  {

    kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(a3, a3, v14, v15, v16);
  }
}

uint64_t kaldi::nnet1::AffineTransform::Bias(kaldi::nnet1::AffineTransform *this)
{
  result = *(this + 15);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 712);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::Linearity(kaldi::nnet1::AffineTransform *this)
{
  result = *(this + 14);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 708);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "linearity_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

float kaldi::nnet1::AffineTransform::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuVectorBase<float>::CopyFromVec(a3, v6, v7, v8, v9);
  v10 = *(a1 + 352);
  if (v10 == *(a1 + 360) || !*(v10 + 20))
  {
    v12 = kaldi::nnet1::AffineTransform::Linearity(a1);
    kaldi::CuVectorBase<float>::AddMatVec(a3, v12, CblasNoTrans, a2, v13, 1.0, 1.0);
  }

  else
  {
    kaldi::nnet1::Component::PropagateFnc(a1, a2, a3);
  }

  if (*(a1 + 128) == 1)
  {

    *&v11 = kaldi::CuVectorBase<float>::ApplySoftMax(a3, v11);
  }

  return *&v11;
}

void kaldi::nnet1::AffineTransform::~AffineTransform(kaldi::nnet1::AffineTransform *this)
{
  kaldi::nnet1::AffineTransform::~AffineTransform(this);

  operator delete();
}

{
  *this = off_2777A8;
  v2 = this + 88;
  *(this + 11) = off_2778E8;
  v3 = this + 96;
  *(this + 12) = off_277910;
  v4 = this + 104;
  *(this + 13) = off_277938;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(this + 47);
  v9 = (this + 352);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::CuMatrix<float>::~CuMatrix(this + 304);
  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  v9 = (this + 208);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 184);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 160);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (this + 136);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(this + 15);
  *(this + 15) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(this + 14);
  *(this + 14) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v4);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

uint64_t kaldi::nnet1::AffineTransform::CountZeroCorr(kaldi::nnet1::AffineTransform *this, int *a2, int *a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = *(kaldi::nnet1::AffineTransform::Bias(this) + 16);
  v7 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
  result = kaldi::nnet1::AffineTransform::Linearity(this);
  *a3 = v6 + *(result + 16) * v7;
  v9 = *(this + 18) - *(this + 17);
  if (v9)
  {
    v10 = *(this + 21) - *(this + 20);
    if (v10)
    {
      v11 = v9 >> 3;
      v12 = v10 >> 3;
      if (*(this + 20) == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(this + 20);
      }

      v14 = v12 - 1;
      if (v11 - 1 != v13 || v14 != v13)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "CountZeroCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 646);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Unexpected mismatch in indexes: ", 32);
        v23 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "  ", 2);
        v24 = (*(this + 18) - *(this + 17)) >> 3;
        v25 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "  ", 2);
        v26 = (*(this + 21) - *(this + 20)) >> 3;
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
      }

      v16 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
      v21 = kaldi::CuMatrixBase<float>::CountZeros(v16, v17, v18, v19, v20);
      v22 = kaldi::nnet1::AffineTransform::BiasCorr(this, v13);
      result = kaldi::CuVectorBase<float>::CountZeros(v22);
      LODWORD(v9) = result + v21;
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  *a2 = v9;
  return result;
}

void kaldi::nnet1::AffineTransform::VectorizeWeightsCorrs(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "VectorizeWeightsCorrs", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 541);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "Weights are already vectorized");
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v3, "VectorizeWeightsCorrs", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 544);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Performing vectorization of affine transform component", 54);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v3);
    }

    v2 = *(*(a1 + 120) + 16) + *(*(a1 + 112) + 16) * *(*(a1 + 112) + 20);
    if (v2 == (*(*a1 + 176))(a1))
    {
      kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub((a1 + 112));
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "VectorizeWeightsCorrs", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 547);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "(nlinparams + bias_->Dim()) == NumParams()");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
}

uint64_t kaldi::nnet1::AffineTransform::Info(kaldi::nnet1::AffineTransform *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  (*(*this + 168))(this, &v21, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "\n linearity", 11);
  v4 = *(this + 14);
  if (!v4)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", v2);
  }

  kaldi::nnet1::MomentStatistics<float>(v4);
  if ((v20 & 0x80u) == 0)
  {
    v5 = v19;
  }

  else
  {
    v5 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v6 = v20;
  }

  else
  {
    v6 = v19[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n bias", 6);
  v13 = *(this + 15);
  if (!v13)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", v11);
  }

  kaldi::nnet1::MomentStatistics<float>(v13, v8, v9, v10, v11);
  if ((v18 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::stringbuf::str();
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_C0D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::InfoGradient(kaldi::nnet1::AffineTransform *this@<X0>, boost::filesystem::path *a2@<X8>)
{
  if (*(this + 232))
  {
    boost::filesystem::path::path(&v50, "\n  linearity_grad");
    kaldi::nnet1::MomentStatistics<float>(this + 17, v4, v5, v6, v7);
    if ((v49 & 0x80u) == 0)
    {
      v8 = v48;
    }

    else
    {
      v8 = v48[0];
    }

    if ((v49 & 0x80u) == 0)
    {
      v9 = v49;
    }

    else
    {
      v9 = v48[1];
    }

    v10 = std::string::append(&v50, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v51, ", lr-coef ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 59);
    if ((v47 & 0x80u) == 0)
    {
      v14 = v46;
    }

    else
    {
      v14 = v46[0];
    }

    if ((v47 & 0x80u) == 0)
    {
      v15 = v47;
    }

    else
    {
      v15 = v46[1];
    }

    v16 = std::string::append(&v52, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v53, ", max-norm ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 63);
    if ((v45 & 0x80u) == 0)
    {
      v20 = v44;
    }

    else
    {
      v20 = v44[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v21 = v45;
    }

    else
    {
      v21 = v44[1];
    }

    v22 = std::string::append(&v54, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v55, "\n  bias_grad");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::MomentStatistics<float>(this + 20, v26, v27, v28, v29);
    if ((v43 & 0x80u) == 0)
    {
      v30 = v42;
    }

    else
    {
      v30 = v42[0];
    }

    if ((v43 & 0x80u) == 0)
    {
      v31 = v43;
    }

    else
    {
      v31 = v42[1];
    }

    v32 = std::string::append(&v56, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v57, ", lr-coef ");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>(this + 60);
    if ((v41 & 0x80u) == 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    if ((v41 & 0x80u) == 0)
    {
      v37 = v41;
    }

    else
    {
      v37 = __p[1];
    }

    v38 = std::string::append(&v58, v36, v37);
    v39 = *&v38->__r_.__value_.__l.__data_;
    *(a2 + 2) = *(&v38->__r_.__value_.__l + 2);
    *a2 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    boost::filesystem::path::path(a2, "\n  linearity_grad is uninitialized\n  bias_grad is uninitialized");
  }
}

void sub_C1124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 41) < 0)
  {
    operator delete(*(v64 - 64));
  }

  if (*(v64 - 73) < 0)
  {
    operator delete(*(v64 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v64 - 105) < 0)
  {
    operator delete(*(v64 - 128));
  }

  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v64 - 169) < 0)
  {
    operator delete(*(v64 - 192));
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v103 = 2.0;
  v104 = -1073741824;
  v102 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v101);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 244), &v100);
  v99 = -1;
  memset(v98, 0, sizeof(v98));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_158;
    }

    kaldi::ReadToken(a2, 0, v98, v6, v7);
    if ((SHIBYTE(v98[2]) & 0x80000000) == 0)
    {
      break;
    }

    if (v98[1] <= 12)
    {
      if (v98[1] <= 10)
      {
        if (v98[1] == &dword_8 + 1)
        {
          v27 = v98[0];
          v32 = *v98[0] == 0x6D726F4E78614D3CLL && *(v98[0] + 8) == 62;
          v12 = (a1 + 252);
          if (!v32)
          {
            v33 = *v98[0] == 0x6461724778614D3CLL && *(v98[0] + 8) == 62;
            v12 = (a1 + 248);
            if (!v33)
            {
              goto LABEL_120;
            }
          }

          goto LABEL_138;
        }

        if (v98[1] != &dword_8 + 2)
        {
          goto LABEL_206;
        }

        if (*v98[0] != 0x61654D736169423CLL || *(v98[0] + 4) != 15982)
        {
          goto LABEL_206;
        }

        goto LABEL_22;
      }

      if (v98[1] != &dword_8 + 3)
      {
        if (*v98[0] != 0x536D6F646E61523CLL || *(v98[0] + 2) != 1046766949)
        {
          goto LABEL_152;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v99, v8, v9);
        goto LABEL_149;
      }

      if (*v98[0] != 0x6E6152736169423CLL || *(v98[0] + 3) != 0x3E65676E61527361)
      {
        goto LABEL_206;
      }

LABEL_137:
      v12 = &v103;
      goto LABEL_138;
    }

    if (v98[1] <= 17)
    {
      if (v98[1] != &dword_C + 1)
      {
        if (v98[1] != &dword_C + 3)
        {
          goto LABEL_206;
        }

        v13 = *v98[0] == 0x61526E7261654C3CLL && *(v98[0] + 7) == 0x3E66656F43657461;
        goto LABEL_35;
      }

      if (*v98[0] != 0x74536D617261503CLL || *(v98[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_206;
      }

LABEL_131:
      v12 = &v102;
      goto LABEL_138;
    }

    if (v98[1] == &dword_10 + 2)
    {
      if (*v98[0] != 0x6E6569646172473CLL || *(v98[0] + 1) != 0x7079546D726F4E74 || *(v98[0] + 8) != 15973)
      {
        goto LABEL_151;
      }

      goto LABEL_147;
    }

    if (v98[1] != &dword_10 + 3)
    {
      goto LABEL_206;
    }

    v21 = *v98[0] == 0x61654C736169423CLL && *(v98[0] + 1) == 0x6F43657461526E72 && *(v98[0] + 11) == 0x3E66656F43657461;
    v12 = (a1 + 240);
    if (v21)
    {
      goto LABEL_138;
    }

    if (*v98[0] != 0x61725474696E493CLL || *(v98[0] + 1) != 0x79546D726F66736ELL || *(v98[0] + 11) != 0x3E657079546D726FLL)
    {
      goto LABEL_151;
    }

LABEL_84:
    v24 = &v101;
LABEL_148:
    kaldi::ReadToken(a2, 0, v24, v8, v9);
LABEL_149:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v98[2]) > 0xCu)
  {
    if (HIBYTE(v98[2]) <= 0x11u)
    {
      if (HIBYTE(v98[2]) == 13)
      {
        if (v98[0] != 0x74536D617261503CLL || *(v98 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_206;
        }

        goto LABEL_131;
      }

      if (HIBYTE(v98[2]) != 15)
      {
        goto LABEL_206;
      }

      v13 = v98[0] == 0x61526E7261654C3CLL && *(v98 + 7) == 0x3E66656F43657461;
LABEL_35:
      v12 = (a1 + 236);
      if (!v13)
      {
        goto LABEL_206;
      }

LABEL_138:
      kaldi::ReadBasicType<float>(a2, 0, v12, v8, v9);
      goto LABEL_149;
    }

    if (HIBYTE(v98[2]) == 18)
    {
      if (v98[0] != 0x6E6569646172473CLL || v98[1] != 0x7079546D726F4E74 || LOWORD(v98[2]) != 15973)
      {
        goto LABEL_206;
      }

LABEL_147:
      v24 = &v100;
      goto LABEL_148;
    }

    if (HIBYTE(v98[2]) != 19)
    {
      goto LABEL_206;
    }

    v16 = v98[0] == 0x61654C736169423CLL && v98[1] == 0x6F43657461526E72 && *(&v98[1] + 3) == 0x3E66656F43657461;
    v12 = (a1 + 240);
    if (v16)
    {
      goto LABEL_138;
    }

    if (v98[0] != 0x61725474696E493CLL || v98[1] != 0x79546D726F66736ELL || *(&v98[1] + 3) != 0x3E657079546D726FLL)
    {
      goto LABEL_206;
    }

    goto LABEL_84;
  }

  if (HIBYTE(v98[2]) > 0xAu)
  {
    if (HIBYTE(v98[2]) != 11)
    {
      if (v98[0] != 0x536D6F646E61523CLL || LODWORD(v98[1]) != 1046766949)
      {
        v41 = v98;
        goto LABEL_153;
      }

      goto LABEL_66;
    }

    if (v98[0] != 0x6E6152736169423CLL || *(v98 + 3) != 0x3E65676E61527361)
    {
      goto LABEL_206;
    }

    goto LABEL_137;
  }

  if (HIBYTE(v98[2]) != 9)
  {
    if (HIBYTE(v98[2]) != 10)
    {
      goto LABEL_206;
    }

    if (v98[0] != 0x61654D736169423CLL || LOWORD(v98[1]) != 15982)
    {
      goto LABEL_206;
    }

LABEL_22:
    v12 = &v104;
    goto LABEL_138;
  }

  v25 = v98[0] == 0x6D726F4E78614D3CLL && LOBYTE(v98[1]) == 62;
  v12 = (a1 + 252);
  if (v25)
  {
    goto LABEL_138;
  }

  v26 = v98[0] == 0x6461724778614D3CLL && LOBYTE(v98[1]) == 62;
  v12 = (a1 + 248);
  if (v26)
  {
    goto LABEL_138;
  }

  v27 = v98;
LABEL_120:
  v34 = *v27;
  v35 = *(v27 + 8);
  if (v34 == 0x78616D74666F533CLL && v35 == 62)
  {
    *(a1 + 128) = 1;
    goto LABEL_149;
  }

  if ((HIBYTE(v98[2]) & 0x80) == 0)
  {
    goto LABEL_206;
  }

LABEL_151:
  if (v98[1] != &dword_C)
  {
LABEL_206:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v97, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 171);
    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Unknown token ", 14);
    if (SHIBYTE(v98[2]) >= 0)
    {
      v82 = v98;
    }

    else
    {
      v82 = v98[0];
    }

    if (SHIBYTE(v98[2]) >= 0)
    {
      v83 = HIBYTE(v98[2]);
    }

    else
    {
      v83 = v98[1];
    }

    v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v82, v83);
    v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " (ParamStddev|BiasMean|BiasRange|LearnRateCoef|BiasLearnRateCoef|MaxNorm|InitTransformType|GradientNormType|MaxGrad|RandomSeed)", 127);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v97);
  }

LABEL_152:
  v41 = v98[0];
LABEL_153:
  v42 = *v41;
  v43 = *(v41 + 2);
  if (v42 != 0x6E6F706D6F432F3CLL || v43 != 1047817829)
  {
    goto LABEL_206;
  }

LABEL_158:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v101);
  *(a1 + 244) = kaldi::nnet1::Component::MarkerToGradientNormType(&v100);
  if (v99 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v99);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v93, a3);
  kaldi::Matrix<float>::Matrix(&v89, *(a1 + 12), *(a1 + 8), 0, 0);
  v49 = *(a1 + 12);
  if (v49 < 1)
  {
    goto LABEL_186;
  }

  v50 = 0;
  LODWORD(v51) = *(a1 + 8);
  while (2)
  {
    if (v51 < 1)
    {
      goto LABEL_185;
    }

    v52 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v50 >= v91 || v52 >= v90)
          {
LABEL_204:
            kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v48);
          }

          v55 = v89 + 4 * v50 * v92;
          if (v50 == v52)
          {
            v56 = 1.0;
          }

          else
          {
            v56 = 0.0;
          }

          goto LABEL_182;
        case 2:
          v57 = *&v102;
          kaldi::GaussRandomNumber::Rand(v93, 0, v46, v47, v48);
          if (v50 >= v91 || v52 >= v90)
          {
            goto LABEL_204;
          }

          v55 = v89 + 4 * v50 * v92;
          v56 = v57 * v58;
LABEL_182:
          *(v55 + 4 * v52) = v56;
          break;
        case 1:
          v53 = *&v102;
          v54 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v46, v47, v48);
          if (v50 >= v91 || v52 >= v90)
          {
            goto LABEL_204;
          }

          v55 = v89 + 4 * v50 * v92;
          v56 = (v54 + -0.5) * (v53 + v53);
          goto LABEL_182;
      }

      ++v52;
      v51 = *(a1 + 8);
      if (v52 < v51)
      {
        continue;
      }

      break;
    }

    v49 = *(a1 + 12);
LABEL_185:
    if (++v50 < v49)
    {
      continue;
    }

    break;
  }

LABEL_186:
  v61 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20);
  if (v61 != kaldi::ContextDependency::CentralPosition(&v89) || (v62 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16), v62 != kaldi::ContextDependency::ContextWidth(&v89)))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v97, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 197);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v97);
  }

  v63 = kaldi::nnet1::AffineTransform::Linearity(a1);
  kaldi::CuMatrixBase<float>::CopyFromMat(v63, &v89, 111, v64, v65);
  v66 = *(a1 + 12);
  v87 = 0;
  v88 = 0;
  v86 = 0;
  kaldi::Vector<float>::Resize(&v86, v66, 0, v67, v68);
  if (*(a1 + 12) >= 1)
  {
    v72 = 0;
    do
    {
      v73 = *&v104;
      v74 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v69, v70, v71);
      if (v72 >= v87)
      {
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v71);
      }

      v75 = v73 + (v74 + -0.5) * v103;
      v86[v72++] = v75;
    }

    while (v72 < *(a1 + 12));
  }

  v76 = kaldi::nnet1::AffineTransform::Bias(a1);
  if (*(v76 + 16) != v87)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v97, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 207);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Bias().Dim() == vec.Dim()", 25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v97);
  }

  v77 = kaldi::nnet1::AffineTransform::Bias(a1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(v77, &v86, v78, v79, v80);
  kaldi::Vector<float>::Destroy(&v86);
  kaldi::Matrix<float>::~Matrix(&v89);
  if (__p)
  {
    v96 = __p;
    operator delete(__p);
  }

  v97[0] = &v94;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v97);
  if (SHIBYTE(v98[2]) < 0)
  {
    operator delete(v98[0]);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }
}

void sub_C1D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  if (*(v6 - 193) < 0)
  {
    operator delete(*(v6 - 216));
  }

  if (*(v6 - 161) < 0)
  {
    operator delete(*(v6 - 184));
  }

  if (*(v6 - 137) < 0)
  {
    operator delete(*(v6 - 160));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::AffineTransform::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v9 = a1[14];
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", v8);
  }

  kaldi::CuMatrixBase<float>::Write(v9, a2, a3, a4);
  v12 = a1[15];
  if (!v12)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", v11);
  }

  kaldi::CuVectorBase<float>::Write(v12, a2, a3, v10, v11);
}

void kaldi::nnet1::AffineTransform::BackpropagateFnc(kaldi::nnet1::AffineTransform *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(this + 44);
  if (v9 == *(this + 45) || !*(v9 + 48 * a6 + 20))
  {
    v13 = kaldi::nnet1::AffineTransform::Linearity(this);

    kaldi::CuMatrixBase<float>::AddMatMat(a5, a4, CblasNoTrans, v13, &stru_68.sectname[7], 1.0, 0.0);
  }

  else
  {
    v11 = kaldi::nnet1::AffineTransform::Linearity(this);
    v12 = *(this + 44) + 48 * a6;

    kaldi::CuMatrixBase<float>::AddMatMatMasked(a5, a4, CblasNoTrans, v11, &stru_68.sectname[7], v12, 1.0);
  }
}

void kaldi::nnet1::AffineTransform::GetUnitOutputFnc(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, const char *a5, int16x4_t a6)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", a5);
  }

  if (*(v6 + 16) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
  }

  a6.i32[0] = *(*(v6 + 8) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a6);
  v12 = *(a1 + 112);
  if (!v12)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", v11);
  }

  if (*(v12 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v11);
  }

  v13 = *(v12 + 8) + 4 * (*(v12 + 24) * a3);
  v14 = *(v12 + 16);
  v15 = *(v12 + 32);
  v16[1] = v13;
  v16[0] = &off_276FE0;
  v16[2] = v14;
  v16[3] = v15;
  kaldi::CuVectorBase<float>::AddMatVec(a4, a2, CblasNoTrans, v16, v11, 1.0, 1.0);
}

float kaldi::nnet1::AffineTransform::GetUnitOutputFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 120);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", a5);
  }

  if (*(v5 + 16) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
  }

  v6 = *(a1 + 112);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", a5);
  }

  if (*(v6 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
  }

  v7 = *(*(v5 + 8) + 4 * a3);
  v8 = *(v6 + 8) + 4 * *(v6 + 24) * a3;
  v9 = *(v6 + 16);
  v10 = *(v6 + 32);
  v12[1] = v8;
  v12[0] = &off_276FE0;
  v12[2] = v9;
  v12[3] = v10;
  return v7 + kaldi::VecVec<float>(a2, v12, a3, a4, a5);
}

uint64_t kaldi::nnet1::AffineTransform::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v40, 0, 24);
    kaldi::ReadToken(a2, a3, v40, v7, v8);
    if (SHIBYTE(v40[2]) < 0)
    {
      if (v40[1] != &dword_C + 3 || (*v40[0] == 0x61526E7261654C3CLL ? (v13 = *(v40[0] + 7) == 0x3E66656F43657461) : (v13 = 0), v12 = (a1 + 236), !v13))
      {
        if (v40[1] != &dword_10 + 3 || (*v40[0] == 0x61654C736169423CLL ? (v14 = *(v40[0] + 1) == 0x6F43657461526E72) : (v14 = 0), v14 ? (v15 = *(v40[0] + 11) == 0x3E66656F43657461) : (v15 = 0), v12 = (a1 + 240), !v15))
        {
          if (v40[1] == &dword_10 + 2)
          {
            if (*v40[0] == 0x6E6569646172473CLL && *(v40[0] + 1) == 0x7079546D726F4E74 && *(v40[0] + 8) == 15973)
            {
              goto LABEL_83;
            }

LABEL_38:
            if (v40[1] != &dword_8 + 1)
            {
              goto LABEL_89;
            }

            v19 = v40[0];
            v20 = *v40[0] == 0x6461724778614D3CLL && *(v40[0] + 8) == 62;
            v12 = (a1 + 248);
            if (!v20)
            {
              goto LABEL_64;
            }

            goto LABEL_70;
          }

          if (v40[1] != &dword_8 + 1)
          {
            goto LABEL_38;
          }

          v16 = *v40[0] == 0x6D726F4E78614D3CLL && *(v40[0] + 8) == 62;
          v12 = (a1 + 252);
          if (!v16)
          {
            goto LABEL_38;
          }
        }
      }
    }

    else if (HIBYTE(v40[2]) > 0x11u)
    {
      if (HIBYTE(v40[2]) == 18)
      {
        if (v40[0] != 0x6E6569646172473CLL || v40[1] != 0x7079546D726F4E74 || LOWORD(v40[2]) != 15973)
        {
LABEL_89:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 231);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (SHIBYTE(v40[2]) >= 0)
          {
            v35 = v40;
          }

          else
          {
            v35 = v40[0];
          }

          if (SHIBYTE(v40[2]) >= 0)
          {
            v36 = HIBYTE(v40[2]);
          }

          else
          {
            v36 = v40[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

LABEL_83:
        __p[0] = 0;
        __p[1] = 0;
        v39 = 0;
        kaldi::ReadToken(a2, a3, __p, v9, v10);
        *(a1 + 244) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_71;
      }

      if (HIBYTE(v40[2]) != 19)
      {
        goto LABEL_89;
      }

      v21 = v40[0] == 0x61654C736169423CLL && v40[1] == 0x6F43657461526E72;
      v22 = v21 && *(&v40[1] + 3) == 0x3E66656F43657461;
      v12 = (a1 + 240);
      if (!v22)
      {
        goto LABEL_89;
      }
    }

    else if (HIBYTE(v40[2]) == 9)
    {
      v23 = v40[0] == 0x6D726F4E78614D3CLL && LOBYTE(v40[1]) == 62;
      v12 = (a1 + 252);
      if (!v23)
      {
        v24 = v40[0] == 0x6461724778614D3CLL && LOBYTE(v40[1]) == 62;
        v12 = (a1 + 248);
        if (!v24)
        {
          v19 = v40;
LABEL_64:
          v25 = *v19;
          v26 = *(v19 + 8);
          if (v25 != 0x78616D74666F533CLL || v26 != 62)
          {
            goto LABEL_89;
          }

          *(a1 + 128) = 1;
          goto LABEL_71;
        }
      }
    }

    else
    {
      if (HIBYTE(v40[2]) != 15)
      {
        goto LABEL_89;
      }

      v11 = v40[0] == 0x61526E7261654C3CLL && *(v40 + 7) == 0x3E66656F43657461;
      v12 = (a1 + 236);
      if (!v11)
      {
        goto LABEL_89;
      }
    }

LABEL_70:
    kaldi::ReadBasicType<float>(a2, a3, v12, v9, v10);
LABEL_71:
    if (SHIBYTE(v40[2]) < 0)
    {
      operator delete(v40[0]);
    }
  }

  (***(a1 + 112))(*(a1 + 112), a2, a3, a4);
  (***(a1 + 120))();
  *(a1 + 16) = 0;
  if (*(kaldi::nnet1::AffineTransform::Linearity(a1) + 20) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_B8.reloff + 2, "Linearity().NumRows() == output_dim_", v30);
  }

  if (*(kaldi::nnet1::AffineTransform::Linearity(a1) + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_B8.reloff + 3, "Linearity().NumCols() == input_dim_", v31);
  }

  result = kaldi::nnet1::AffineTransform::Bias(a1);
  if (*(result + 16) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_B8.nreloc, "Bias().Dim() == output_dim_", v33);
  }

  return result;
}

void sub_C273C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::AffineTransform::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = *(a1 + 236);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v9, v10);
  v11 = *(a1 + 240);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v12, v13);
  v14 = *(a1 + 252);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v15, v16);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 244), &__p);
  kaldi::WriteToken(a2, a3, &__p, v17, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v19, v20);
  v21 = *(a1 + 248);
  result = kaldi::WriteBasicType<float>(a2, a3);
  if (*(a1 + 128) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<Softmax>", v23, v24);
  }

  return result;
}

void sub_C289C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::AffineTransform::NumParams(kaldi::nnet1::AffineTransform *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 14);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", a5);
  }

  v6 = *(this + 15);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", a5);
  }

  return (*(v6 + 16) + *(v5 + 16) * *(v5 + 20));
}

_DWORD *kaldi::nnet1::AffineTransform::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v10 = a1[14];
  if (!v10)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", v9);
  }

  v11 = v10[4] * v10[5];
  v18 = 0;
  v19 = 0;
  if (v11 > *(a2 + 8))
  {
    goto LABEL_6;
  }

  v17 = *a2;
  LODWORD(v18) = v11;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v17, v10, v7, v8, v9);
  v14 = a1[15];
  if (!v14)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", v9);
  }

  v15 = v14[4];
  v18 = 0;
  v19 = 0;
  if ((v15 + v11) > *(a2 + 8))
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v17 = (*a2 + 4 * v11);
  LODWORD(v18) = v15;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v14, &v17, v12, v13, v9);
}

_DWORD *kaldi::nnet1::AffineTransform::SetParams(kaldi::nnet1::AffineTransform *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_108.addr + 1, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20);
  v7 = *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16) * v6;
  v8 = kaldi::nnet1::AffineTransform::Linearity(a1);
  v16 = 0;
  v17 = 0;
  if (v7 > *(a2 + 8) || (v15 = *a2, LODWORD(v16) = v7, kaldi::CuMatrixBase<float>::CopyRowsFromVec(v8, &v15), v10 = kaldi::nnet1::AffineTransform::Bias(a1), v13 = *(kaldi::nnet1::AffineTransform::Bias(a1) + 16), v16 = 0, v17 = 0, (v13 + v7) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v15 = (*a2 + 4 * v7);
  LODWORD(v16) = v13;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v10, &v15, v11, v12, v9);
}

float kaldi::nnet1::AffineTransform::GetNormalizedLearningRate(kaldi::nnet1::AffineTransform *this, int a2)
{
  if ((*(this + 84) & 1) == 0)
  {
    return *(this + 14);
  }

  v2 = *(this + 35);
  v3 = *(this + 36) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

float kaldi::nnet1::AffineTransform::SumParams(kaldi::nnet1::AffineTransform *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 14);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", a5);
  }

  v8 = kaldi::CuMatrixBase<float>::Sum(v6, a2, a3, a4, a5);
  v9 = *(this + 15);
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", v7);
  }

  v10 = v8;
  v11 = kaldi::CuVectorBase<float>::Sum(v9);
  return v10 + *&v11;
}

uint64_t kaldi::nnet1::AffineTransform::PerturbParams(kaldi::nnet1::AffineTransform *this, float a2)
{
  v4 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
  v5 = kaldi::nnet1::AffineTransform::Linearity(this);
  kaldi::CuMatrix<float>::CuMatrix(v18, v4, *(v5 + 16), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v18);
  v6 = kaldi::nnet1::AffineTransform::Linearity(this);
  kaldi::CuMatrixBase<float>::AddMat(v6, v18, 111, v7, v8, a2, 1.0);
  v9 = *(kaldi::nnet1::AffineTransform::Bias(this) + 16);
  memset(&v17[1], 0, 24);
  v17[0] = off_277020;
  kaldi::CuVector<float>::Resize(v17, v9, 1u, v10, v11);
  kaldi::CuVectorBase<float>::SetRandn(v17);
  v12 = kaldi::nnet1::AffineTransform::Bias(this);
  kaldi::CuVectorBase<float>::AddVec(v12, v17, v13, v14, v15, a2, 1.0);
  kaldi::CuVector<float>::~CuVector(v17);
  return kaldi::CuMatrix<float>::~CuMatrix(v18);
}

void sub_C2D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::AffineTransform::GetGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v10 = a1[14];
  if (!v10)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", v9);
  }

  v11 = *(v10 + 16) * *(v10 + 20);
  v12 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v12, 0, v13, v14);
  v28 = 0;
  v29 = 0;
  if (v11 > *(a4 + 8))
  {
    goto LABEL_6;
  }

  v27 = *a4;
  LODWORD(v28) = v11;
  v16 = kaldi::nnet1::AffineTransform::LinearityCorr(v8, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v27, v16, v17, v18, v19);
  v20 = a1[15];
  if (!v20)
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", v15);
  }

  v21 = *(v20 + 16);
  v28 = 0;
  v29 = 0;
  if ((v21 + v11) > *(a4 + 8))
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v27 = (*a4 + 4 * v11);
  LODWORD(v28) = v21;
  v22 = kaldi::nnet1::AffineTransform::BiasCorr(v8, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v22, &v27, v23, v24, v25);
  return (*(*v8 + 8))(v8);
}

void kaldi::nnet1::AffineTransform::AccumGradients(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, int a5)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(a1);
  *(kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5) + 32) = a4;
  *(kaldi::nnet1::AffineTransform::BiasCorr(a1, a5) + 24) = a4;
  v10 = *(a1 + 60);
  *(*(a1 + 256) + 4 * a5) = *(a2 + 20);
  v11 = *(a1 + 352);
  if (v11 == *(a1 + 360) || !*(v11 + 48 * a5 + 20))
  {
    v13 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMat(v13, a3, CblasTrans, a2, &stru_68.sectname[7], 1.0, v10);
  }

  else
  {
    v12 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    if (v10 == 0.0)
    {
      kaldi::CuMatrixBase<float>::SetZero(v12);
    }

    else
    {
      kaldi::CuMatrixBase<float>::Scale(v12, v10);
    }

    v14 = kaldi::nnet1::AffineTransform::LinearityCorr(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMatMasked(v14, a3, CblasTrans, a2, &stru_68.sectname[7], *(a1 + 352) + 48 * a5, 1.0);
  }

  v15 = kaldi::nnet1::AffineTransform::BiasCorr(a1, a5);

  kaldi::CuVectorBase<float>::AddRowSumMat(v15, a3, 1.0, v10, v16, v17, v18);
}

uint64_t kaldi::nnet1::AffineTransform::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 248) = a3;
  *(result + 244) = a2;
  *(result + 232) = 0;
  return result;
}

void kaldi::nnet1::AffineTransform::NormalizeGradients(kaldi::nnet1::AffineTransform *this, float a2, int a3)
{
  v4 = a2;
  v6 = *(this + 61);
  if (v6 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      v11 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(this + 23) + 48 * a3, v4);
      v12 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);
      v16 = *(this + 26) + 32 * a3;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, v16, v4, v13, v14, v15);
    }
  }

  else if (v6 == 2)
  {
    if (a2 > 0.0)
    {
      v9 = a3;
      if (*(this + 84))
      {
        v4 = *(*(this + 32) + 4 * a3) * a2;
      }

      v17 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v17, (*(this + 23) + 48 * v9), v4, v18, v19, v20);
      v21 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);
      v25 = (*(this + 26) + 32 * v9);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, v25, v22, v23, v24, v4);
    }
  }

  else if (v6 == 1 && a2 > 0.0)
  {
    if (*(this + 84) == 1)
    {
      v4 = *(*(this + 32) + 4 * a3) * a2;
    }

    v7 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
    kaldi::nnet1::UpdatableComponent::ClipGradient(v7, v4);
    v8 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v8, v4);
  }
}

void kaldi::nnet1::AffineTransform::UpdateWeights(kaldi::nnet1::AffineTransform *this, void *a2, int a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = *(this + 16);
  v7 = *(this + 17);
  v8 = *(this + 18);
  v9 = *(this + 19);
  *(kaldi::nnet1::AffineTransform::Linearity(this) + 32) = a2;
  *(kaldi::nnet1::AffineTransform::Bias(this) + 24) = a2;
  v11 = *(this + 20);
  if (a3 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *(this + 20);
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > v11)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_1A8.segname[1], "batch_idx <= opts_.num_subbatches", v10);
  }

  *(kaldi::nnet1::AffineTransform::LinearityCorr(this, v13) + 32) = a2;
  *(kaldi::nnet1::AffineTransform::BiasCorr(this, v13) + 24) = a2;
  *(*(this + 23) + 48 * v13 + 32) = a2;
  *(*(this + 26) + 32 * v13 + 24) = a2;
  if (v13 == *(this + 20))
  {
    v18 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
    v19 = kaldi::nnet1::AffineTransform::LinearityCorr(this, 0);
    kaldi::CuMatrixBase<float>::AddMat(v18, v19, 111, v20, v21, 1.0, 0.0);
    v22 = kaldi::nnet1::AffineTransform::BiasCorr(this, v13);
    v23 = kaldi::nnet1::AffineTransform::BiasCorr(this, 0);
    kaldi::CuVectorBase<float>::AddVec(v22, v23, v24, v25, v26, 1.0, 0.0);
    if (*(this + 20) > 1)
    {
      v27 = 1;
      do
      {
        v28 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
        v29 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v27);
        kaldi::CuMatrixBase<float>::AddMat(v28, v29, 111, v30, v31, 1.0, 1.0);
        v32 = kaldi::nnet1::AffineTransform::BiasCorr(this, v13);
        v33 = kaldi::nnet1::AffineTransform::BiasCorr(this, v27);
        kaldi::CuVectorBase<float>::AddVec(v32, v33, v34, v35, v36, 1.0, 1.0);
        ++v27;
      }

      while (v27 < *(this + 20));
    }

    v37 = *(this + 32);
    v37[v13] = 0;
    if (v13 >= 1)
    {
      v38 = 0;
      v39 = v13;
      v40 = v37;
      do
      {
        v41 = *v40++;
        v38 += v41;
        v37[v13] = v38;
        --v39;
      }

      while (v39);
    }
  }

  v42 = *(this + 14);
  if (*(this + 84) == 1)
  {
    *v17.i32 = *(*(this + 32) + 4 * v13);
    v42 = v42 / *v17.i32;
  }

  v43 = *(this + 35);
  if (v13 >= ((*(this + 36) - v43) >> 2))
  {
    LODWORD(v82[0]) = 2143289344;
    std::vector<float>::resize(this + 35, v13 + 1, v82, v17);
    v43 = *(this + 35);
  }

  *(v43 + 4 * v13) = v42;
  if (*(this + 62) >= 0.0)
  {
    (*(*this + 248))(this, v13);
  }

  if (v6 != 0.0)
  {
    v44 = kaldi::nnet1::AffineTransform::Linearity(this);
    v45 = -(v42 * v6) * *(*(this + 32) + 4 * v13);
    v46 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::AddMat(v44, v46, 111, v47, v48, v45, 1.0);
  }

  if (v7 != 0.0)
  {
    v49 = kaldi::nnet1::AffineTransform::Linearity(this);
    v50 = kaldi::nnet1::AffineTransform::LinearityCorr(this, v13);
    kaldi::cu::RegularizeL1<float>(v49, v50, (v7 * v42) * *(*(this + 32) + 4 * v13), v42, v51, v52, v53);
  }

  if (v8 > 0.0)
  {
    if (*(this + 20) >= 2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v82, "UpdateWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 480);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v82, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v82);
    }

    if (*(this + 48) == *(this + 47))
    {
      kaldi::nnet1::AffineTransform::InitResidualAggregator(this, (this + 376));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((this + 376), v9, v8, v14, v15, v16);
  }

  kaldi::nnet1::AffineTransform::ApplyCorr(this, v42, v13);
  if (*(this + 63) > 0.0)
  {
    *(this + 42) = a2;
    v54 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(this + 76, v54, 111, v55, v56);
    v57 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::MulElements(this + 304, v57, v58, v59, v60);
    v61 = *(this + 3);
    v82[2] = 0;
    v83 = 0;
    v82[0] = off_277020;
    v82[1] = 0;
    kaldi::CuVector<float>::Resize(v82, v61, 0, v62, v63);
    v83 = a2;
    kaldi::CuVectorBase<float>::AddColSumMat(v82, this + 76, 1.0, 0.0, v64, v65, v66);
    kaldi::CuVectorBase<float>::ApplyPow(v82, 0.5);
    kaldi::CuVector<float>::CuVector(v81, v82, v67, v68, v69);
    kaldi::CuVectorBase<float>::Scale(v81, 1.0 / *(this + 63));
    kaldi::CuVectorBase<float>::ApplyFloor(v81, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(v81);
    v70 = kaldi::nnet1::AffineTransform::Linearity(this);
    kaldi::CuMatrixBase<float>::MulRowsVec(v70, v81, v71, v72, v73);
    v74 = kaldi::nnet1::AffineTransform::Bias(this);
    kaldi::CuVectorBase<float>::ApplyMaxNorm(v74, *(this + 63), v75, v76, v77, v78);
    kaldi::CuVector<float>::~CuVector(v81);
    kaldi::CuVector<float>::~CuVector(v82);
  }

  v79 = *(this + 32);
  if (v13 == *(this + 20))
  {
    v80 = *(this + 33);
    if (v79 != v80)
    {
      bzero(v79, v80 - v79);
    }
  }

  else
  {
    *&v79[4 * v13] = 0;
  }
}

void sub_C3764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

__n128 kaldi::nnet1::UpdatableComponent::SetTrainOptions(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 71) = *(a2 + 23);
  *(a1 + 56) = result;
  return result;
}

void non-virtual thunk tokaldi::nnet1::AffineTransform::~AffineTransform(kaldi::nnet1::AffineTransform *this)
{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 88));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 88));

  operator delete();
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 96));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 96));

  operator delete();
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 104));
}

{
  kaldi::nnet1::AffineTransform::~AffineTransform((this - 104));

  operator delete();
}

void kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(void **this)
{
  v2 = this + 6;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      v8 = v4 - 40;
      do
      {
        v9 = *v8;
        v8 -= 40;
        (*(v9 + 16))(v7);
        v6 -= 40;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 16))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 24))(result);
    }
  }

  v1[1] = v2;
  return result;
}

kaldi::nnet1::AffineTransform *kaldi::nnet1::AffineTransform::AffineTransform(kaldi::nnet1::AffineTransform *this, const kaldi::nnet1::AffineTransform *a2)
{
  *this = off_279038;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = off_27A660;
  *(this + 6) = off_282980;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = off_2777A8;
  *(this + 11) = off_2778E8;
  *(this + 12) = off_277910;
  *(this + 13) = off_277938;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = *(a2 + 128);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100](this + 17, (*(a2 + 18) - *(a2 + 17)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100](this + 20, (*(a2 + 21) - *(a2 + 20)) >> 3);
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 184, *(a2 + 23), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 23)) >> 4));
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 208, *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 5);
  *(this + 232) = *(a2 + 232);
  *(this + 236) = *(a2 + 236);
  *(this + 61) = *(a2 + 61);
  *(this + 31) = *(a2 + 31);
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 256, *(a2 + 32), *(a2 + 33), (*(a2 + 33) - *(a2 + 32)) >> 2);
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 280, *(a2 + 35), *(a2 + 36), (*(a2 + 36) - *(a2 + 35)) >> 2);
  kaldi::CuMatrix<float>::CuMatrix(this + 304, a2 + 304, 111);
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 352, *(a2 + 44), *(a2 + 45), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 45) - *(a2 + 44)) >> 4));
  *(this + 55) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  if (*(this + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "AffineTransform", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 106);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    kaldi::NewCuSubOrMat<float>(v6, 0);
  }

  if (*(a2 + 15))
  {
    v7 = *(this + 16);
    kaldi::NewCuSubOrVec<float>();
  }

  v9 = *(this + 17);
  v8 = *(this + 18);
  if (v8 != v9)
  {
    v10 = 0;
    do
    {
      if (*(*(a2 + 17) + 8 * v10))
      {
        v11 = kaldi::nnet1::AffineTransform::LinearityCorr(a2, v10);
        kaldi::NewCuSubOrMat<float>(v11, *(this + 16));
      }

      ++v10;
    }

    while (v10 < (v8 - v9) >> 3);
  }

  v13 = *(this + 20);
  v12 = *(this + 21);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 20) + 8 * v14))
      {
        kaldi::nnet1::AffineTransform::BiasCorr(a2, v14);
        v15 = *(this + 16);
        kaldi::NewCuSubOrVec<float>();
      }

      ++v14;
    }

    while (v14 < (v12 - v13) >> 3);
  }

  if (*(a2 + 48) != *(a2 + 47))
  {
    kaldi::nnet1::AffineTransform::InitResidualAggregator(this, (this + 376));
  }

  return this;
}

void sub_C4228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v13);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  kaldi::CuMatrix<float>::~CuMatrix(v12 + 304);
  v16 = *(v12 + 35);
  if (v16)
  {
    *(v12 + 36) = v16;
    operator delete(v16);
  }

  v17 = *(v12 + 32);
  if (v17)
  {
    *(v12 + 33) = v17;
    operator delete(v17);
  }

  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v18 = *(v12 + 15);
  *(v12 + 15) = 0;
  if (v18)
  {
    (*(*v18 + 16))(v18);
  }

  v19 = *v14;
  *v14 = 0;
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a9);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a10);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

void kaldi::NewCuSubOrMat<float>(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t kaldi::nnet1::AffineTransform::LinearityCorr(kaldi::nnet1::AffineTransform *this, int a2)
{
  v2 = *(this + 17);
  if (a2 >= ((*(this + 18) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "LinearityCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 717);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "LinearityCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 718);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(this + 17);
  if (a2 >= ((*(this + 18) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "LinearityCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 722);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "LinearityCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 723);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "linearity_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::BiasCorr(kaldi::nnet1::AffineTransform *this, int a2)
{
  v2 = *(this + 20);
  if (a2 >= ((*(this + 21) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 727);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 728);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(this + 20);
  if (a2 >= ((*(this + 21) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 732);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_.size() > batch_idx");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", 733);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_corr_[batch_idx]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::AffineTransform::InitResidualAggregator(kaldi::nnet1::AffineTransform *this, kaldi::nnet1::QuantizerResidualAggregator *a2)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v4 = kaldi::nnet1::AffineTransform::LinearityCorr(this, ((*(this + 18) - *(this + 17)) >> 3) - 1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
  v5 = kaldi::nnet1::AffineTransform::BiasCorr(this, ((*(this + 21) - *(this + 20)) >> 3) - 1);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
}

void *std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::EventMap *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::EventMap *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_C4848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::CuMatrix<float>::CuMatrix(a4 + v7, v6, 111);
      v6 += 48;
      v7 += 48;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_C4918(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuVector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_C499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::CuVector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    v8 = 0;
    do
    {
      kaldi::CuVector<float>::CuVector(v5 + v8, v7, a3, a4, a5);
      v7 += 32;
      v8 += 32;
    }

    while (v7 != a3);
    v5 += v8;
  }

  return v5;
}

void sub_C4AA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>();
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::AffineTransform::EnsureCorrs(kaldi::nnet1::AffineTransform *this)
{
  if ((*(this + 232) & 1) == 0)
  {
    v2 = *(this + 61);
    v3 = *(this + 20);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(this + 17, v4);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize(this + 20, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 23, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 26, v4, v5, v6, v7);
    if (v4 >= 1)
    {
      operator new();
    }

    std::vector<int>::resize((this + 256), v4);
    if (*(this + 63) > 0.0)
    {
      v8 = *(kaldi::nnet1::AffineTransform::Linearity(this) + 20);
      v9 = kaldi::nnet1::AffineTransform::Linearity(this);
      kaldi::CuMatrix<float>::Resize(this + 304, v8, *(v9 + 16), 1u, 0);
    }

    *(this + 232) = 1;
  }
}

uint64_t kaldi::nnet1::QuantizerResidualAggregator::PushSetup(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v9 = 0u;
  v8 = 0u;
  v7 = off_276F88;
  v10 = 0;
  std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](a1, &v7);
  kaldi::CuMatrix<float>::~CuMatrix(&v7);
  kaldi::CuMatrix<float>::Resize(*a1 + v4 - v5, *(a2 + 20), *(a2 + 16), 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v7, a2, 0, *(a2 + 20), 0, *(a2 + 16));
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 3, &v7);
  v7 = off_276F40;
  v8 = 0u;
  v9 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v7);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v7, a2, 0, *(a2 + 20), 0, *(a2 + 16));
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 6, &v7);
  v7 = off_276F40;
  v8 = 0u;
  v9 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v7);
}

{
  v5 = *a1;
  v4 = a1[1];
  v13 = 0u;
  v12 = 0u;
  v11 = off_276F88;
  v14 = 0;
  std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](a1, &v11);
  kaldi::CuMatrix<float>::~CuMatrix(&v11);
  kaldi::CuMatrix<float>::Resize(*a1 + v4 - v5, 1, *(a2 + 16), 0, 0);
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  v11 = off_276F40;
  *&v12 = v7;
  *(&v12 + 1) = v6 | 0x100000000;
  LODWORD(v13) = v6;
  DWORD1(v13) = v6;
  *(&v13 + 1) = *(a2 + 24);
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 3, &v11);
  v11 = off_276F40;
  v12 = 0u;
  v13 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v11);
  v8 = *(a2 + 16);
  v9 = *(a2 + 8);
  v11 = off_276F40;
  *&v12 = v9;
  *(&v12 + 1) = v8 | 0x100000000;
  LODWORD(v13) = v8;
  DWORD1(v13) = v8;
  *(&v13 + 1) = *(a2 + 24);
  std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](a1 + 6, &v11);
  v11 = off_276F40;
  v12 = 0u;
  v13 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v11);
}

void sub_C4EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11)
{
  a9 = off_276F40;
  a10 = 0u;
  a11 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  _Unwind_Resume(a1);
}

void sub_C514C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 24))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__append(a1, v5);
  }
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 16))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__append(a1, v5);
  }
}

uint64_t *std::vector<kaldi::CuVector<float>>::resize(uint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = result;
  v6 = result[1];
  v7 = (v6 - *result) >> 5;
  if (a2 <= v7)
  {
    if (a2 < v7)
    {
      v9 = *result + 32 * a2;
      if (v6 != v9)
      {
        v10 = v6 - 32;
        v11 = (v6 - 32);
        v12 = (v6 - 32);
        do
        {
          v13 = *v12;
          v12 -= 4;
          result = (*(v13 + 8))(v11);
          v10 -= 32;
          v14 = v11 == v9;
          v11 = v12;
        }

        while (!v14);
      }

      v5[1] = v9;
    }
  }

  else
  {
    v8 = a2 - v7;

    return std::vector<kaldi::CuVector<float>>::__append(result, v8, a3, a4, a5);
  }

  return result;
}

void std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 24))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 16))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::vector<kaldi::CuVector<float>>::__append(uint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = result;
  v7 = result[1];
  v8 = result[2];
  if (a2 <= (v8 - v7) >> 5)
  {
    if (a2)
    {
      v14 = 32 * a2;
      v15 = (v7 + 8);
      v16 = v7 + 32 * a2;
      do
      {
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        *(v15 - 1) = off_277020;
        v15 += 4;
        v7 += 32;
        v14 -= 32;
      }

      while (v14);
      v7 = v16;
    }

    result[1] = v7;
  }

  else
  {
    v9 = v7 - *result;
    v10 = a2 + (v9 >> 5);
    if (v10 >> 59)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v11 = v9 >> 5;
    v12 = v8 - *result;
    if (v12 >> 4 > v10)
    {
      v10 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    v28 = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(result, v13);
    }

    v17 = 32 * v11;
    v25 = 0;
    v26 = 32 * v11;
    *(&v27 + 1) = 0;
    v18 = 32 * a2;
    v19 = (32 * v11 + 8);
    v20 = 32 * v11;
    do
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 0;
      *(v19 - 1) = off_277020;
      v19 += 4;
      v20 += 32;
      v18 -= 32;
    }

    while (v18);
    *&v27 = v17 + 32 * a2;
    v21 = result[1];
    v22 = v17 + *result - v21;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*>(result, *result, v21, v22, a5);
    v23 = *v6;
    *v6 = v22;
    v24 = v6[2];
    *(v6 + 1) = v27;
    *&v27 = v23;
    *(&v27 + 1) = v24;
    v25 = v23;
    v26 = v23;
    return std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(&v25);
  }

  return result;
}

void sub_C5998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 != a3)
  {
    v7 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      result = kaldi::CuVector<float>::CuVector(a4 + v8, v9, a3, a4, a5);
      v9 += 32;
      v8 += 32;
    }

    while (v9 != a3);
    if (v7 != a3)
    {
      v11 = v7;
      v12 = v7;
      do
      {
        v13 = *v12;
        v12 += 4;
        result = (*(v13 + 8))(v7);
        v11 += 4;
        v7 = v12;
      }

      while (v12 != a3);
    }
  }

  return result;
}

void sub_C5A58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::CuVector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*(v4 + 8))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(a1, a2);
  }

  else
  {
    kaldi::CuMatrix<float>::CuMatrix(*(a1 + 8), a2, 111);
    result = v3 + 48;
    *(a1 + 8) = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::CuSubMatrix<float>>::__emplace_back_slow_path<kaldi::CuSubMatrix<float>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 32);
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = v4;
    *v3 = off_276F40;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__emplace_back_slow_path<kaldi::CuMatrix<float>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  kaldi::CuMatrix<float>::CuMatrix(48 * v2, a2, 111);
  v15 = 48 * v2 + 48;
  v7 = *(a1 + 8);
  v8 = 48 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(&v13);
  return v12;
}

void sub_C5CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::CuMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::__emplace_back_slow_path<kaldi::CuSubMatrix<float>>(uint64_t *a1, uint64_t a2)
{
  v3 = 0x666666666666666;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3) + 1;
  if (v7 > 0x666666666666666)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x999999999999999ALL * ((a1[2] - v4) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - v4) >> 3) < 0x333333333333333)
  {
    v3 = v7;
  }

  v19 = a1;
  if (v3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(a1, v3);
  }

  v9 = 8 * (v6 >> 3);
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  v10 = *(a2 + 32);
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v10;
  *v9 = off_276F40;
  *&v18 = v9 + 40;
  v11 = v9 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*>(a1, v4, v5, v9 - v6);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(&v16);
  return v15;
}

void sub_C5E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      v8 = v7[4];
      *(v6 - 8) = v7[1];
      *v6 = *(v7 + 1);
      *(v6 + 16) = v8;
      *(v6 - 16) = off_276F40;
      v7 += 5;
      v6 += 40;
      a4 += 40;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 5;
        (*(v11 + 16))(v5);
        v9 += 5;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<kaldi::CuSubMatrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*(v4 + 16))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t kaldi::CuSubMatrix<float>::CuSubMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = off_276F40;
  v7 = *(a2 + 16) * *(a2 + 20);
  if (*(a3 + 16) < v7)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CuSubMatrix", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 1006);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Insufficient storage area: ", 27);
    v13 = *(a3 + 16);
    v14 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " needed: ", 9);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  kaldi::CuSubVector<float>::CuSubVector(v15, a3, 0, v7, a5);
  kaldi::CuSubMatrix<float>::CuSubMatrix(v16, v15, *(a2 + 20));
  if (v16 != a1)
  {
    *(a1 + 8) = *(&v16[0] + 1);
    *(a1 + 16) = v16[1];
    *(a1 + 32) = *&v16[2];
  }

  *&v16[0] = off_276F40;
  memset(v16 + 8, 0, 32);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v16);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a1, a2, 111, v9, v10);
  v11 = *(a3 + 16) - v7;
  *(a3 + 8) += 4 * v7;
  *(a3 + 16) = v11;
  *(a3 + 24) = 0;
  return a1;
}

void *kaldi::CuSubVector<float>::CuSubVector(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &off_276FE0;
  v7 = *(a2 + 16);
  if (*(a3 + 16) < v7)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", 524);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Insufficient storage area: ", 27);
    v15 = *(a3 + 16);
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " needed: ", 9);
    v17 = *(a2 + 16);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  kaldi::CuSubVector<float>::CuSubVector(v18, a3, 0, v7, a5);
  if (v18 != a1)
  {
    a1[1] = v18[1];
    *(a1 + 4) = v19;
    a1[3] = v20;
  }

  kaldi::CuVectorBase<float>::CopyFromVec(a1, a2, v9, v10, v11);
  v12 = *(a2 + 16);
  v13 = *(a3 + 16) - v12;
  *(a3 + 8) += 4 * v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = 0;
  return a1;
}

uint64_t kaldi::nnet1::MomentStatistics<float>(uint64_t a1)
{
  kaldi::Matrix<float>::Matrix(v5, *(a1 + 20), *(a1 + 16), 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(a1, v5, 111, v2, v3);
  kaldi::nnet1::MomentStatistics<float>(v5);
  return kaldi::Matrix<float>::~Matrix(v5);
}

void sub_C64C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<float>(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[4];
  memset(v14, 0, sizeof(v14));
  kaldi::Vector<float>::Resize(v14, v6, 0, a4, a5);
  kaldi::CuVectorBase<float>::CopyToVec<float>(a1, v14, v7, v8, v9);
  kaldi::nnet1::MomentStatistics<float>(v14, v10, v11, v12, v13);
  kaldi::Vector<float>::Destroy(v14);
}

void sub_C6544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<float>(kaldi::ContextDependency *a1)
{
  v2 = kaldi::ContextDependency::CentralPosition(a1);
  v3 = kaldi::ContextDependency::ContextWidth(a1);
  memset(v10, 0, sizeof(v10));
  kaldi::Vector<float>::Resize(v10, (v3 * v2), 0, v4, v5);
  kaldi::VectorBase<float>::CopyRowsFromMat(v10, a1);
  kaldi::nnet1::MomentStatistics<float>(v10, v6, v7, v8, v9);
  kaldi::Vector<float>::Destroy(v10);
}

void sub_C65DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MomentStatistics<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  kaldi::Vector<float>::Resize(&v47, *(a1 + 8), 1, a4, a5);
  kaldi::VectorBase<float>::CopyFromVec(&v47, a1, v6, v7, v8);
  memset(v46, 0, sizeof(v46));
  kaldi::Vector<float>::Resize(v46, *(a1 + 8), 1, v9, v10);
  kaldi::VectorBase<float>::CopyFromVec(v46, a1, v11, v12, v13);
  v14 = kaldi::VectorBase<float>::Sum(a1);
  kaldi::VectorBase<float>::Add(&v47, -(*&v14 / *(a1 + 8)));
  kaldi::Vector<float>::Resize(v46, v48, 1, v15, v16);
  kaldi::VectorBase<float>::CopyFromVec(v46, &v47, v17, v18, v19);
  kaldi::VectorBase<float>::MulElements(&v47, v46, v20, v21, v22);
  v23 = kaldi::VectorBase<float>::Sum(&v47);
  v24 = *&v23;
  v25 = *(a1 + 8);
  kaldi::VectorBase<float>::MulElements(&v47, v46, v26, v27, v28);
  kaldi::VectorBase<float>::Sum(&v47);
  pow((v24 / v25), 1.5);
  v29 = *(a1 + 8);
  kaldi::VectorBase<float>::MulElements(&v47, v46, v30, v31, v32);
  kaldi::VectorBase<float>::Sum(&v47);
  v33 = *(a1 + 8);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "(min ", 7);
  kaldi::VectorBase<float>::Min(a1, v34);
  v35 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", max ", 6);
  kaldi::VectorBase<float>::Max(a1, v36);
  v37 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", mean ", 7);
  v38 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", variance ", 11);
  v39 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", skewness ", 11);
  v40 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", kurtosis ", 11);
  v41 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ") ", 3);
  std::stringbuf::str();
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  std::locale::~locale(v44);
  std::ostream::~ostream();
  std::ios::~ios();
  kaldi::Vector<float>::Destroy(v46);
  kaldi::Vector<float>::Destroy(&v47);
}

void sub_C6940(_Unwind_Exception *a1)
{
  kaldi::Vector<float>::Destroy(v1 - 144);
  kaldi::Vector<float>::Destroy(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MomentStatistics<float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[1] == *a1)
  {
    kaldi::KaldiAssertFailure_("MomentStatistics", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_B8.sectname[12], "mats.size() > 0", a5);
  }

  kaldi::CuMatrix<float>::CuMatrix(v13, *(**a1 + 20), *(**a1 + 16), 0, 0, 0);
  v8 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 8 * v9);
      if (*(v10 + 20) != v15 || *(v10 + 16) != v14)
      {
        kaldi::KaldiAssertFailure_("MomentStatistics", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_B8.sectname[15], "mats[i]->NumRows() == mat.NumRows() && mats[i]->NumCols() == mat.NumCols()", v7);
      }

      kaldi::CuMatrixBase<float>::AddMat(v13, v10, 111, v6, v7, 1.0, 1.0);
      ++v9;
      v8 = *a1;
    }

    while (v9 < (a1[1] - *a1) >> 3);
  }

  kaldi::Matrix<float>::Matrix<float>(v12, v13, 111, v6, v7);
  kaldi::nnet1::MomentStatistics<float>(v12);
  kaldi::Matrix<float>::~Matrix(v12);
  return kaldi::CuMatrix<float>::~CuMatrix(v13);
}

{
  if (a1[1] == *a1)
  {
    kaldi::KaldiAssertFailure_("MomentStatistics", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_68.reserved2 + 3, "mats.size() > 0", a5);
  }

  kaldi::CuMatrix<float>::CuMatrix(v14, *(*a1 + 20), *(*a1 + 16), 0, 0, 0);
  v8 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v8 + v9;
      if (*(v8 + v9 + 20) != v16 || *(v11 + 16) != v15)
      {
        kaldi::KaldiAssertFailure_("MomentStatistics", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_68.reserved3 + 3, "mats[i].NumRows() == mat.NumRows() && mats[i].NumCols() == mat.NumCols()", v7);
      }

      kaldi::CuMatrixBase<float>::AddMat(v14, v11, 111, v6, v7, 1.0, 1.0);
      ++v10;
      v8 = *a1;
      v9 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) > v10);
  }

  kaldi::Matrix<float>::Matrix<float>(v13, v14, 111, v6, v7);
  kaldi::nnet1::MomentStatistics<float>(v13);
  kaldi::Matrix<float>::~Matrix(v13);
  return kaldi::CuMatrix<float>::~CuMatrix(v14);
}

void sub_C6AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ToString<float>(int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  v2 = *a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_C6C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::MomentStatistics<float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1[1] == *a1)
  {
    kaldi::KaldiAssertFailure_("MomentStatistics", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_68.reloff + 3, "vecs.size() > 0", a5);
  }

  v6 = *(**a1 + 16);
  v22[1] = 0;
  v23 = 0;
  v22[0] = off_277020;
  v24 = 0;
  kaldi::CuVector<float>::Resize(v22, v6, 0, a4, a5);
  v10 = *a1;
  if (a1[1] != *a1)
  {
    v11 = 0;
    do
    {
      v12 = *(v10 + 8 * v11);
      if (*(v12 + 16) != v23)
      {
        kaldi::KaldiAssertFailure_("MomentStatistics", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_68.nreloc + 2, "vecs[i]->Dim() == vec.Dim()", v9);
      }

      kaldi::CuVectorBase<float>::AddVec(v22, v12, v7, v8, v9, 1.0, 1.0);
      ++v11;
      v10 = *a1;
    }

    while (v11 < (a1[1] - *a1) >> 3);
  }

  memset(v21, 0, sizeof(v21));
  kaldi::Vector<float>::Init(v21, v23, v7, v8, v9);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v22, v21, v13, v14, v15);
  kaldi::nnet1::MomentStatistics<float>(v21, v16, v17, v18, v19);
  kaldi::Vector<float>::Destroy(v21);
  return kaldi::CuVector<float>::~CuVector(v22);
}

{
  if (a1[1] == *a1)
  {
    kaldi::KaldiAssertFailure_("MomentStatistics", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_68.size + 2, "vecs.size() > 0", a5);
  }

  v6 = *(*a1 + 16);
  v22[1] = 0;
  v23 = 0;
  v22[0] = off_277020;
  v24 = 0;
  kaldi::CuVector<float>::Resize(v22, v6, 0, a4, a5);
  v10 = *a1;
  if (a1[1] != *a1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(v10 + v11 + 16) != v23)
      {
        kaldi::KaldiAssertFailure_("MomentStatistics", "../subproject/libquasar/libkaldi/src/nnet/nnet-various.h", &stru_68.size + 5, "vecs[i].Dim() == vec.Dim()", v9);
      }

      kaldi::CuVectorBase<float>::AddVec(v22, v10 + v11, v7, v8, v9, 1.0, 1.0);
      ++v12;
      v10 = *a1;
      v11 += 32;
    }

    while (v12 < (a1[1] - *a1) >> 5);
  }

  memset(v21, 0, sizeof(v21));
  kaldi::Vector<float>::Init(v21, v23, v7, v8, v9);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v22, v21, v13, v14, v15);
  kaldi::nnet1::MomentStatistics<float>(v21, v16, v17, v18, v19);
  kaldi::Vector<float>::Destroy(v21);
  return kaldi::CuVector<float>::~CuVector(v22);
}

void sub_C6D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::CuVector<float>::~CuVector(va1);
  _Unwind_Resume(a1);
}

void kaldi::GaussRandomNumber::~GaussRandomNumber(kaldi::GaussRandomNumber *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 16);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

float *kaldi::nnet1::QuantizerResidualAggregator::Quantize(kaldi::nnet1::QuantizerResidualAggregator *this, int a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *this;
  v7 = *(this + 1) - *this;
  if (!v7 || (v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4), v9 != 0xCCCCCCCCCCCCCCCDLL * ((*(this + 4) - *(this + 3)) >> 3)) || v9 != 0xCCCCCCCCCCCCCCCDLL * ((*(this + 7) - *(this + 6)) >> 3))
  {
    kaldi::KaldiAssertFailure_("Quantize", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", &stru_20.vmsize + 4, "residuals_.size() != 0 && residuals_.size() == orig_corrs_.size() && residuals_.size() == dest_corrs_.size()", a6);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    result = kaldi::nnet1::QuantizerResidualAggregator::AddCorrectionToResidualAndQuantize(a2, *(this + 3) + v13, v6 + v12, *(this + 6) + v13, a6, a3);
    ++v14;
    v6 = *this;
    v13 += 40;
    v12 += 48;
  }

  while (v14 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4));
  return result;
}

void kaldi::nnet1::AffineTransform::ApplyCorr(kaldi::nnet1::AffineTransform *this, float a2, int a3)
{
  kaldi::nnet1::AffineTransform::EnsureCorrs(this);
  v6 = kaldi::nnet1::AffineTransform::Linearity(this);
  v7 = -(a2 * *(this + 59));
  v8 = kaldi::nnet1::AffineTransform::LinearityCorr(this, a3);
  kaldi::CuMatrixBase<float>::AddMat(v6, v8, 111, v9, v10, v7, 1.0);
  v11 = kaldi::nnet1::AffineTransform::Bias(this);
  v12 = -(a2 * *(this + 60));
  v13 = kaldi::nnet1::AffineTransform::BiasCorr(this, a3);

  kaldi::CuVectorBase<float>::AddVec(v11, v13, v14, v15, v16, v12, 1.0);
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_212100)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_2120F0)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_212100)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_2120F0)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

float *kaldi::nnet1::QuantizerResidualAggregator::AddCorrectionToResidualAndQuantize(int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  kaldi::CuMatrixBase<float>::AddMat(a3, a2, 111, a4, a5, 1.0, 1.0);
  if (a1)
  {
    if (a1 != 3)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "AddCorrectionToResidualAndQuantize", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 117);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Wrong quantizer type (neither ", 30);
      v14 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " nor ", 5);
      v15 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "): ", 4);
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    return kaldi::Quant3Levels<float>(a3, a4, v10, v11, v12, a6);
  }

  else
  {

    return kaldi::ZeroSmallValues<float>(a3, a4, v10, v11, v12, a6);
  }
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<signed char>::QuantizedAffineTransform(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 8) = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = off_2779B8;
  v7 = a2[14];
  if (!v7)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", a5);
  }

  kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1 + 48, v7);
  if (!a2[15])
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", v8);
  }

  kaldi::CuVector<float>::CuVector(a1 + 96);
  return a1;
}

void sub_C7434(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::~QuantizedAffineTransform(kaldi::nnet1::Component *a1)
{
  kaldi::nnet1::QuantizedAffineTransform<signed char>::~QuantizedAffineTransform(a1);

  operator delete();
}

{
  *a1 = off_2779B8;
  v2 = a1 + 48;
  kaldi::CuVector<float>::~CuVector(a1 + 12);
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v2);

  kaldi::nnet1::Component::~Component(a1);
}

void sub_C7558()
{
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v1);
  kaldi::nnet1::Component::~Component(v0);
  operator delete();
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v15, "\n  linearity is quantized");
  v4 = std::string::append(&v15, "\n  bias");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 96), v6, v7, v8, v9);
  if ((v14 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v16, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_C767C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::QuantizedMatrix<signed char>::Write((a1 + 48), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write((a1 + 96), a2, a3, v7, v8);
}

uint64_t *kaldi::nnet1::QuantizedAffineTransform<signed char>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a3, a2, 111, (a1 + 48), &stru_68.sectname[8], 1.0, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 96, v5, v6, v7, 1.0, 1.0);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "BackpropagateFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", 71);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, const char *a5, int16x4_t a6)
{
  if (*(a1 + 112) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
  }

  a6.i32[0] = *(*(a1 + 104) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a6);
  kaldi::QuantizedMatrixBase<signed char>::Row(a1 + 48, a3, v11);
  kaldi::CuVectorBase<float>::AddMatVec<signed char>(a4, a2, 111, v11, v10, 1.0, 1.0);
}

float kaldi::nnet1::QuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 112) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
  }

  v6 = *(*(a1 + 104) + 4 * a3);
  kaldi::QuantizedMatrixBase<signed char>::Row(a1 + 48, a3, v11);
  return v6 + kaldi::VecVec<float,signed char>(a2, v11, v7, v8, v9);
}

double kaldi::nnet1::QuantizedAffineTransform<signed char>::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::QuantizedMatrix<signed char>::Read(a1 + 12, a2, a3, a4, a5);
  result = kaldi::CuVector<float>::Read((a1 + 24), a2, a3, v8, v9);
  if (a1[28] != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", &stru_20.segname[4], "bias_.Dim() == output_dim_", v10);
  }

  return result;
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<short>::QuantizedAffineTransform(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 8) = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = off_277A90;
  v7 = a2[14];
  if (!v7)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", a5);
  }

  kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1 + 48, v7);
  if (!a2[15])
  {
    kaldi::KaldiAssertFailure_("Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[13], "bias_", v8);
  }

  kaldi::CuVector<float>::CuVector(a1 + 96);
  return a1;
}

void sub_C7AA8(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::~QuantizedAffineTransform(kaldi::nnet1::Component *a1)
{
  kaldi::nnet1::QuantizedAffineTransform<short>::~QuantizedAffineTransform(a1);

  operator delete();
}

{
  *a1 = off_277A90;
  v2 = a1 + 48;
  kaldi::CuVector<float>::~CuVector(a1 + 12);
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v2);

  kaldi::nnet1::Component::~Component(a1);
}

void sub_C7BCC()
{
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v1);
  kaldi::nnet1::Component::~Component(v0);
  operator delete();
}

void kaldi::nnet1::QuantizedAffineTransform<short>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::QuantizedMatrix<short>::Write((a1 + 48), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write((a1 + 96), a2, a3, v7, v8);
}

uint64_t *kaldi::nnet1::QuantizedAffineTransform<short>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddMatMat<short>(a3, a2, 111, (a1 + 48), &stru_68.sectname[8], 1.0, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 96, v5, v6, v7, 1.0, 1.0);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, const char *a5, int16x4_t a6)
{
  if (*(a1 + 112) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
  }

  a6.i32[0] = *(*(a1 + 104) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a6);
  kaldi::QuantizedMatrixBase<short>::Row(a1 + 48, a3, v11);
  kaldi::CuVectorBase<float>::AddMatVec<short>(a4, a2, 111, v11, v10, 1.0, 1.0);
}

float kaldi::nnet1::QuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 112) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
  }

  v6 = *(*(a1 + 104) + 4 * a3);
  kaldi::QuantizedMatrixBase<short>::Row(a1 + 48, a3, v11);
  return v6 + kaldi::VecVec<float,short>(a2, v11, v7, v8, v9);
}

double kaldi::nnet1::QuantizedAffineTransform<short>::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::QuantizedMatrix<short>::Read(a1 + 12, a2, a3, a4, a5);
  result = kaldi::CuVector<float>::Read((a1 + 24), a2, a3, v8, v9);
  if (a1[28] != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-quantized-affine-transform.h", &stru_20.segname[4], "bias_.Dim() == output_dim_", v10);
  }

  return result;
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::VectorwiseQuantizedAffineTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = off_277B68;
  v5 = *(a2 + 112);
  if (v5)
  {
    kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, v5);
  }

  kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", a5);
}

void sub_C7F84(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::~VectorwiseQuantizedAffineTransform(kaldi::nnet1::Component *a1)
{
  kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::~VectorwiseQuantizedAffineTransform(a1);

  operator delete();
}

{
  *a1 = off_277B68;
  kaldi::CuVector<float>::~CuVector(a1 + 11);
  v2 = *(a1 + 9);
  *(a1 + 9) = 0;
  if (v2)
  {
    operator delete();
  }

  v3 = *(a1 + 7);
  *(a1 + 7) = 0;
  if (v3)
  {
    operator delete();
  }

  kaldi::nnet1::Component::~Component(a1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v15, "\n  linearity is vectorwise quantized");
  v4 = std::string::append(&v15, "\n  bias");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 88), v6, v7, v8, v9);
  if ((v14 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v16, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_C813C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::Write((a1 + 48), a2, a3);

  kaldi::CuVectorBase<float>::Write((a1 + 88), a2, a3, v6, v7);
}

uint64_t *kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a3, a2, 111, (a1 + 48), &stru_68.sectname[8], 1.0, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, v5, v6, v7, 1.0, 1.0);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "BackpropagateFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-vectorwise-quantized-affine-transform.h", 74);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, int16x4_t a6)
{
  if (*(a1 + 104) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
  }

  a6.i32[0] = *(*(a1 + 96) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a6);
  kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1 + 48, a3, v12);
  kaldi::QuantizedVectorBase<signed char>::AddMatVec(v12, a2 + 8, a4 + 8, 1.0, v10, v11);
}

float kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 104) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_108.sectname[6], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
  }

  v6 = *(*(a1 + 96) + 4 * a3);
  kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1 + 48, a3, v11);
  return v6 + kaldi::VecVec<float,signed char>(a2, v11, v7, v8, v9);
}

double kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::Read(a1 + 12, a2, a3, a4);
  result = kaldi::CuVector<float>::Read((a1 + 22), a2, a3, v7, v8);
  if (a1[26] != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-vectorwise-quantized-affine-transform.h", &stru_20.segname[7], "bias_.Dim() == output_dim_", v9);
  }

  return result;
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::VectorwiseQuantizedAffineTransform(uint64_t a1, uint64_t a2)
{
  *a1 = off_279038;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = off_277B68;
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, a2 + 48);
  kaldi::CuVector<float>::CuVector(a1 + 88, a2 + 88, v5, v6, v7);
  return a1;
}

void sub_C8574(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>()
{
  OUTLINED_FUNCTION_1_0();
  do
  {
    v4 = *v3;
    v3 -= 4;
    result = (*(v4 + 8))(v1);
    v2 -= 32;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

double kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(kaldi::nnet1::RecurrentBaseComponent *this, uint64_t *a2)
{
  *this = off_2797A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = off_2829A0;
  *(this + 10) = 1;
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[1];
  *(this + 56) = xmmword_21A620;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *(this + 6) = off_2829C0;
  *(this + 11) = off_2829E0;
  *(this + 12) = 0x100000001;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  return result;
}

double kaldi::nnet1::BidirectionalRecurrentComponent::BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, int a2, int a3)
{
  *(this + 94) = a2;
  *(this + 95) = a3;
  *(this + 192) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 46) = off_27A660;
  *(this + 52) = off_282980;
  *(this + 424) = xmmword_21A620;
  *(this + 55) = 0x3BF800000;
  *(this + 112) = 1;
  *(this + 226) = 0;
  *(this + 454) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_278028);
  *v3 = off_277C48;
  *(v3 + 368) = off_277F08;
  *(v3 + 160) = off_277DA8;
  *(v3 + 168) = off_277DD0;
  result = 0.0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 345) = 0u;
  return result;
}

kaldi::nnet1::BidirectionalRecurrentComponent *kaldi::nnet1::BidirectionalRecurrentComponent::BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, const std::string *a2)
{
  *(this + 47) = *(&a2->__r_.__value_.__l.__size_ + *(a2->__r_.__value_.__r.__words[0] - 24));
  *(this + 192) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 46) = off_27A660;
  *(this + 52) = off_282980;
  *(this + 424) = xmmword_21A620;
  *(this + 110) = -1082130432;
  *(this + 444) = 0x100000003;
  *(this + 226) = 0;
  *(this + 454) = 0;
  v4 = a2 + *(a2->__r_.__value_.__r.__words[0] - 24);
  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_278028);
  *this = off_277C48;
  *(this + 46) = off_277F08;
  *(this + 20) = off_277DA8;
  *(this + 12) = 0u;
  *(this + 21) = off_277DD0;
  *(this + 15) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 44) = 0;
  std::string::operator=(this + 8, a2 + 8);
  size = a2[7].__r_.__value_.__l.__size_;
  if (!size)
  {
    v15 = "src.forward_rnn_";
    v16 = (&stru_20 + 2);
    goto LABEL_10;
  }

  if (!a2[7].__r_.__value_.__r.__words[2])
  {
    v15 = "src.backward_rnn_";
    v16 = &stru_20.cmd + 3;
LABEL_10:
    kaldi::KaldiAssertFailure_("BidirectionalRecurrentComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", v16, v15, v7);
  }

  v9 = (*(*&size[*(*size - 24)] + 16))(&size[*(*size - 24)]);
  if (v9)
  {
    v10 = **v9;
  }

  *(this + 22) = v9;
  v11 = a2[7].__r_.__value_.__r.__words[2] + *(*a2[7].__r_.__value_.__r.__words[2] - 24);
  v12 = (*(*v11 + 16))(v11);
  if (v12)
  {
    v13 = **v12;
  }

  *(this + 23) = v12;
  *(this + 360) = 0;
  return this;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::CopyQuantized<kaldi::nnet1::Quantizable8BitComponentItf>(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = **v2;
    v5 = *(a1 + 184);
    if (!v5)
    {
      if (v4)
      {
LABEL_11:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v8, "CopyQuantized", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 63);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Backward RNN is not quantizable");
LABEL_12:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v8);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(a1 + 184);
    if (!v5)
    {
      goto LABEL_10;
    }

    v4 = 0;
  }

  v6 = **v5;
  if (v4)
  {
    if (v7)
    {
      operator new();
    }

    goto LABEL_11;
  }

LABEL_10:
  kaldi::KaldiErrorMessage::KaldiErrorMessage(&v8, "CopyQuantized", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 60);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Forward RNN is not quantizable");
  goto LABEL_12;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::CopyQuantized<kaldi::nnet1::Quantizable16BitComponentItf>(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = **v2;
    v5 = *(a1 + 184);
    if (!v5)
    {
      if (v4)
      {
LABEL_11:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v8, "CopyQuantized", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 63);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Backward RNN is not quantizable");
LABEL_12:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v8);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(a1 + 184);
    if (!v5)
    {
      goto LABEL_10;
    }

    v4 = 0;
  }

  v6 = **v5;
  if (v4)
  {
    if (v7)
    {
      operator new();
    }

    goto LABEL_11;
  }

LABEL_10:
  kaldi::KaldiErrorMessage::KaldiErrorMessage(&v8, "CopyQuantized", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 60);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Forward RNN is not quantizable");
  goto LABEL_12;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = a2 + 4;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v8 = (a1 + 192);
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_24;
    }

    kaldi::ReadToken(a2, 0, &v48, a4, a5);
    if ((SHIBYTE(v50) & 0x80000000) == 0 || v49 != 24)
    {
      break;
    }

    if (*v48 != 0x657272756365523CLL || v48[1] != 0x6E6F706D6F43746ELL || v48[2] != 0x3E65707954746E65)
    {
      goto LABEL_38;
    }

    kaldi::ReadToken(a2, 0, v8, v9, v10);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (SHIBYTE(v50) < 0)
  {
    if (v49 != 12)
    {
      goto LABEL_38;
    }

    v13 = v48;
  }

  else
  {
    if (SHIBYTE(v50) != 12)
    {
      goto LABEL_38;
    }

    v13 = &v48;
  }

  v14 = *v13;
  v15 = *(v13 + 2);
  if (v14 == 0x6E6F706D6F432F3CLL && v15 == 1047817829)
  {
LABEL_24:
    v17 = kaldi::nnet1::Component::MarkerToComponentType(v8);
    __p = 0;
    v45 = 0;
    v46 = 0;
    kaldi::ReadToken(a2, 0, &__p, v18, v19);
    v43 = 0;
    if (v46 >= 0)
    {
      v20 = HIBYTE(v46);
    }

    else
    {
      v20 = v45;
    }

    v21 = *(a1 + 215);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 200);
    }

    if (v20 == v21)
    {
      v23 = v46 >= 0 ? &__p : __p;
      v24 = *v8;
      v25 = v22 >= 0 ? v8 : *v8;
      if (!memcmp(v23, v25, v20))
      {
        kaldi::ExpectToken(a2, 0, "<InputDim>");
        kaldi::ReadBasicType<int>(a2, 0, &v43 + 4, v26, v27);
        kaldi::ExpectToken(a2, 0, "<OutputDim>");
        kaldi::ReadBasicType<int>(a2, 0, &v43, v28, v29);
        kaldi::nnet1::Component::NewComponentOfType(v17);
      }
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v47, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 106);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "you defined two different recurrent component types ", 52);
    v36 = *(a1 + 215);
    if (v36 >= 0)
    {
      v37 = v8;
    }

    else
    {
      v37 = *(a1 + 192);
    }

    if (v36 >= 0)
    {
      v38 = *(a1 + 215);
    }

    else
    {
      v38 = *(a1 + 200);
    }

    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " vs ", 4);
    if (v46 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v46 >= 0)
    {
      v42 = HIBYTE(v46);
    }

    else
    {
      v42 = v45;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, p_p, v42);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v47);
  }

LABEL_38:
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v47, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 94);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Unknown token ", 14);
  if (v50 >= 0)
  {
    v31 = &v48;
  }

  else
  {
    v31 = v48;
  }

  if (v50 >= 0)
  {
    v32 = HIBYTE(v50);
  }

  else
  {
    v32 = v49;
  }

  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", a typo in config?", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " (RecurrentComponentType)", 25);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v47);
}

void sub_C9A54(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::ReadData(void *a1, uint64_t *a2, int a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_24;
    }

    kaldi::ReadToken(a2, a3, &v26, v6, v7);
    if ((SHIBYTE(v28) & 0x80000000) == 0 || v27 != 24)
    {
      break;
    }

    if (*v26 != 0x657272756365523CLL || v26[1] != 0x6E6F706D6F43746ELL || v26[2] != 0x3E65707954746E65)
    {
      goto LABEL_31;
    }

    kaldi::ReadToken(a2, a3, (a1 + 24), v8, v9);
  }

  if (SHIBYTE(v28) < 0)
  {
    if (v27 != 12)
    {
      goto LABEL_31;
    }

    v12 = v26;
  }

  else
  {
    if (SHIBYTE(v28) != 12)
    {
      goto LABEL_31;
    }

    v12 = &v26;
  }

  v13 = *v12;
  v14 = *(v12 + 2);
  if (v13 != 0x6E6F706D6F432F3CLL || v14 != 1047817829)
  {
LABEL_31:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 150);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unrecognized token ", 19);
    if (v28 >= 0)
    {
      v23 = &v26;
    }

    else
    {
      v23 = v26;
    }

    if (v28 >= 0)
    {
      v24 = HIBYTE(v28);
    }

    else
    {
      v24 = v27;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

LABEL_24:
  v16 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v16)
  {
    a1[22] = 0;
LABEL_39:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 153);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "forward component is not an RNN", 31);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  v17 = **v16;
  a1[22] = v18;
  if (!v18)
  {
    goto LABEL_39;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  v19 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v19)
  {
    a1[23] = 0;
LABEL_41:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 156);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "backward component is not an RNN", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  v20 = **v19;
  a1[23] = v21;
  if (!v21)
  {
    goto LABEL_41;
  }

  (*(*a1 + 128))(a1);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }
}

void sub_C9DC8(_Unwind_Exception *a1)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::BidirectionalRecurrentComponent::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<RecurrentComponentType>", a4, a5);
  kaldi::WriteToken(a2, a3, (a1 + 192), v8, v9);

  return kaldi::WriteToken(a2, a3, "</Component>", v10, v11);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::WriteData(void *a1, void *a2, const char *a3, uint64_t a4)
{
  (*(*a1 + 184))(a1);
  kaldi::nnet1::Component::Write((a1[22] + *(*a1[22] - 24)), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>", v8, v9);
  v10 = (a1[23] + *(*a1[23] - 24));

  return kaldi::nnet1::Component::Write(v10, a2, a3, a4);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::NumParams(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  v3 = (*(*v2 + 176))(v2);
  v4 = *(this + 23) + *(**(this + 23) - 24);
  return (*(*v4 + 176))(v4) + v3;
}

void kaldi::nnet1::BidirectionalRecurrentComponent::GetParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  v5 = (*(*v4 + 176))(v4);
  v6 = *(a1 + 184) + *(**(a1 + 184) - 24);
  v7 = (*(*v6 + 176))(v6);
  v8 = v7 + v5;
  kaldi::Vector<float>::Resize(a2, v8, 1, v9, v10);
  memset(v22, 0, sizeof(v22));
  v11 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v11 + 184))(v11, v22);
  v20 = 0;
  v21 = 0;
  if (v5 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
  }

  v19 = *a2;
  LODWORD(v20) = v5;
  kaldi::VectorBase<float>::CopyFromVec(&v19, v22, v12, v13, v14);
  v15 = *(a1 + 184) + *(**(a1 + 184) - 24);
  (*(*v15 + 184))(v15, v22);
  v20 = 0;
  v21 = 0;
  if (v8 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v18);
  }

  v19 = (*a2 + 4 * v5);
  LODWORD(v20) = v7;
  kaldi::VectorBase<float>::CopyFromVec(&v19, v22, v16, v17, v18);
  kaldi::Vector<float>::Destroy(v22);
}

void sub_CA254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  v5 = (*(*v4 + 176))(v4);
  v6 = *(a1 + 184) + *(**(a1 + 184) - 24);
  v7 = (*(*v6 + 176))(v6);
  v9 = *(a2 + 8);
  if (v9 != v7 + v5)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_B8.sectname[5], "wei_src.Dim() == forward_params + backward_params", v8);
  }

  v10 = *(a1 + 176);
  v11 = *(*v10 - 24);
  v17 = 0;
  v18 = 0;
  if (v5 > v9)
  {
    goto LABEL_5;
  }

  v12 = v7;
  v16 = *a2;
  LODWORD(v17) = v5;
  (*(*&v10[v11] + 192))(&v10[v11], &v16);
  v13 = *(a1 + 184);
  v14 = *(*v13 - 24);
  v17 = 0;
  v18 = 0;
  if (v9 > *(a2 + 8))
  {
LABEL_5:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v8);
  }

  v16 = *a2 + 4 * v5;
  LODWORD(v17) = v12;
  return (*(*&v13[v14] + 192))(&v13[v14], &v16);
}

float kaldi::nnet1::BidirectionalRecurrentComponent::SumParams(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  v3 = (*(*v2 + 208))(v2);
  v4 = *(this + 23) + *(**(this + 23) - 24);
  return v3 + (*(*v4 + 208))(v4);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::GetGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
    v9 = **v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = a1[22] + *(*a1[22] - 24);
  v12 = (*(*v11 + 176))(v11);
  v13 = a1[23] + *(*a1[23] - 24);
  v14 = (*(*v13 + 176))(v13);
  v15 = *(a2 + 20);
  v16 = v14 + v12;
  kaldi::Vector<float>::Resize(a4, v16, 1, v17, v18);
  memset(v40, 0, sizeof(v40));
  ((*v10)[3].__end_cap_.__value_)(v10);
  std::vector<int>::resize(v10[27], v15);
  if (v15 >= 1)
  {
    v19 = 0;
    v20 = vdupq_n_s64(v15 - 1);
    v21 = xmmword_2120F0;
    v22 = xmmword_212100;
    v23 = vdupq_n_s64(4uLL);
    v24 = v15 - 1;
    v25 = v10[27]->__begin_ + 2;
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v20, v22));
      if (vuzp1_s16(v26, *v20.i8).u8[0])
      {
        *(v25 - 2) = v24;
      }

      if (vuzp1_s16(v26, *&v20).i8[2])
      {
        *(v25 - 1) = v15 + (v19 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v21))).i32[1])
      {
        *v25 = v15 + (v19 ^ 0xFFFFFFFD);
        v25[1] = v15 + (v19 ^ 0xFFFFFFFC);
      }

      v19 += 4;
      v21 = vaddq_s64(v21, v23);
      v22 = vaddq_s64(v22, v23);
      v24 -= 4;
      v25 += 4;
    }

    while (((v15 + 3) & 0xFFFFFFFC) != v19);
  }

  kaldi::CuMatrix<float>::Resize(v10[30], v15, *(a2 + 16), 1u, 0);
  kaldi::CuMatrixBase<float>::CopyRows(v10[30], a2, v10[27], v27, v28);
  v29 = v10[22] + *(v10[22]->__begin_ - 3);
  (*(*v29 + 224))(v29, a2, a3, v40);
  v38 = 0;
  v39 = 0;
  if (v12 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v32);
  }

  v37 = *a4;
  LODWORD(v38) = v12;
  kaldi::VectorBase<float>::CopyFromVec(&v37, v40, v30, v31, v32);
  v33 = v10[23] + *(v10[23]->__begin_ - 3);
  (*(*v33 + 224))(v33, v10[30], a3, v40);
  v38 = 0;
  v39 = 0;
  if (v16 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v36);
  }

  v37 = (*a4 + 4 * v12);
  LODWORD(v38) = v14;
  kaldi::VectorBase<float>::CopyFromVec(&v37, v40, v34, v35, v36);
  ((*v10)->__end_)(v10);
  kaldi::Vector<float>::Destroy(v40);
}

void sub_CA948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::PerturbParams(kaldi::nnet1::BidirectionalRecurrentComponent *this, float a2)
{
  v4 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v4 + 216))(v4);
  v5 = *(*(*(this + 23) + *(**(this + 23) - 24)) + 216);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::Info(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  (*(*this + 184))(this, &v22, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "\n## Forward RNN: input-dim ", 27);
  v2 = *(*(this + 22) + *(**(this + 22) - 24) + 8);
  v3 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", output-dim ", 13);
  v4 = *(*(this + 22) + *(**(this + 22) - 24) + 12);
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 64))(v20);
  if ((v21 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v20[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n## Backward RNN: input-dim ", 28);
  v10 = *(*(this + 23) + *(**(this + 23) - 24) + 8);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
  v12 = *(*(this + 23) + *(**(this + 23) - 24) + 12);
  v13 = std::ostream::operator<<();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 64))(__p);
  if ((v19 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v16 = v19;
  }

  else
  {
    v16 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  std::stringbuf::str();
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  std::locale::~locale(v24);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_CADCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoGradient(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 72))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 72))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_CAFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoPropagate(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 80))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 80))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_CB1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::InfoBackPropagate(kaldi::nnet1::BidirectionalRecurrentComponent *this@<X0>, std::string *a2@<X8>)
{
  (*(*(*(this + 22) + *(**(this + 22) - 24)) + 88))(&v13);
  (*(*(*(this + 23) + *(**(this + 23) - 24)) + 88))(__p);
  if ((v12 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v5 = v12;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *v14 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  boost::filesystem::path::path(&v13, "\n");
  if (v15 >= 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = v14[0];
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14[1];
  }

  v10 = std::string::insert(&v13, 0, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_CB3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::GetInternalMemory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v21, a2, 0, *(a2 + 20), 0, *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12));
  (*(**(a1 + 176) + 112))(*(a1 + 176), &v21, a3);
  v6 = *(a2 + 20);
  std::vector<int>::resize((*(a1 + 216) + 24 * a3), v6);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_2120F0;
    v10 = xmmword_212100;
    v11 = vdupq_n_s64(4uLL);
    v12 = v6 - 1;
    v13 = (*(*(a1 + 216) + 24 * a3) + 8);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v14, *v8.i8).u8[0])
      {
        *(v13 - 2) = v12;
      }

      if (vuzp1_s16(v14, *&v8).i8[2])
      {
        *(v13 - 1) = v6 + (v7 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v13 = v6 + (v7 ^ 0xFFFFFFFD);
        v13[1] = v6 + (v7 ^ 0xFFFFFFFC);
      }

      v7 += 4;
      v9 = vaddq_s64(v9, v11);
      v10 = vaddq_s64(v10, v11);
      v12 -= 4;
      v13 += 4;
    }

    while (((v6 + 3) & 0xFFFFFFFC) != v7);
  }

  (*(**(a1 + 184) + 112))(*(a1 + 184), *(a1 + 264) + 48 * a3, a3);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, a2, 0, *(a2 + 20), *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12), *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12));
  kaldi::CuMatrixBase<float>::CopyRows(&v18, *(a1 + 264) + 48 * a3, (*(a1 + 216) + 24 * a3), v15, v16);
  v18 = off_276F40;
  v19 = 0u;
  v20 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v18);
  v21 = off_276F40;
  v22 = 0u;
  v23 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v21);
}

void sub_CB6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11, void (**a12)(), __int128 a13, __int128 a14)
{
  a9 = off_276F40;
  a10 = 0u;
  a11 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  a12 = off_276F40;
  a13 = 0u;
  a14 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 88))(a1);
  v9 = *(a2 + 20);
  if (v9 % *(a1 + 96))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_108.sectname[8], "batch_size % num_utts == 0", v8);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v31, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 274, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Running forward propagation for batch size = ", 45);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", which contains ", 17);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " frames each from ", 18);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v31);
  }

  std::vector<int>::resize((*(a1 + 216) + 24 * a4), v9);
  if (v9 >= 1)
  {
    v13 = 0;
    v14 = vdupq_n_s64(v9 - 1);
    v15 = xmmword_2120F0;
    v16 = xmmword_212100;
    v17 = vdupq_n_s64(4uLL);
    v18 = v9 - 1;
    v19 = (*(*(a1 + 216) + 24 * a4) + 8);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v14, v16));
      if (vuzp1_s16(v20, *v14.i8).u8[0])
      {
        *(v19 - 2) = v18;
      }

      if (vuzp1_s16(v20, *&v14).i8[2])
      {
        *(v19 - 1) = v9 + (v13 ^ 0xFFFFFFFE);
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
      {
        *v19 = v9 + (v13 ^ 0xFFFFFFFD);
        v19[1] = v9 + (v13 ^ 0xFFFFFFFC);
      }

      v13 += 4;
      v15 = vaddq_s64(v15, v17);
      v16 = vaddq_s64(v16, v17);
      v18 -= 4;
      v19 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFC) != v13);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 240) + 48 * a4, v9, *(a2 + 16), 1u, 0);
  kaldi::CuMatrixBase<float>::CopyRows(*(a1 + 240) + 48 * a4, a2, (*(a1 + 216) + 24 * a4), v21, v22);
  kaldi::CuMatrix<float>::Resize(*(a1 + 264) + 48 * a4, v9, *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12), 1u, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v31, a3, 0, *(a3 + 20), 0, *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12));
  v23 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v23 + 112))(v23, a2, &v31, a4);
  v24 = *(a1 + 184) + *(**(a1 + 184) - 24);
  (*(*v24 + 112))(v24, *(a1 + 240) + 48 * a4, *(a1 + 264) + 48 * a4, a4);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v28, a3, 0, *(a3 + 20), *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12), *(*(a1 + 184) + *(**(a1 + 184) - 24) + 12));
  kaldi::CuMatrixBase<float>::CopyRows(&v28, *(a1 + 264) + 48 * a4, (*(a1 + 216) + 24 * a4), v25, v26);
  v28 = off_276F40;
  v29 = 0u;
  v30 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v28);
  v31.__locale_ = off_276F40;
  v32 = 0u;
  v33 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v31);
}

void sub_CBBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11, void (**a12)(), __int128 a13, __int128 a14)
{
  a9 = off_276F40;
  a10 = 0u;
  a11 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  a12 = off_276F40;
  a13 = 0u;
  a14 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a12);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*a1 + 88))(a1);
  v12 = *(a2 + 20);
  v13 = *(a1 + 96);
  v14 = *(*(a1 + 176) + *(**(a1 + 176) - 24) + 12);
  v15 = *(a1 + 184);
  v16 = *v15;
  if (v12 % v13)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_108.addr + 5, "batch_size % num_utts == 0", v11);
  }

  v17 = *(v15 + *(*v15 - 24) + 12);
  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v41, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 303, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Running backward propagation for batch size = ", 46);
    v18 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", which contains ", 17);
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " frames each from ", 18);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v41);
  }

  if (v12 / v13 < 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_108.size + 2, "frames_in_batch > 1 && Bidirectional recurrent component backprop will not work with batches of single frames.", v11);
  }

  if (v12 != (*(*(a1 + 216) + 24 * a6 + 8) - *(*(a1 + 216) + 24 * a6)) >> 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_108.size + 3, "reversed_indices_[batch_index].size() == batch_size", v11);
  }

  v36 = a6;
  v21 = a6;
  v22 = *(a1 + 240) + 48 * a6;
  if (*(v22 + 20) != v12 || *(v22 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_108.size + 5, "reversed_input_[batch_index].NumRows() == batch_size && reversed_input_[batch_index].NumCols() == in.NumCols()", v11);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 288) + 48 * a6, v12, *(a1 + *(*a1 - 24) + 8), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 312) + 48 * a6, v12, *(a1 + *(*a1 - 24) + 8), 0, 0);
  v23 = *(a1 + 176);
  v24 = *(*v23 - 24);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, a3, 0, *(a3 + 20), 0, v14);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v38, a4, 0, *(a4 + 20), 0, v14);
  (*(*&v23[v24] + 128))(&v23[v24], a2, &v41, &v38, *(a1 + 288) + 48 * v21, v36);
  v38 = off_276F40;
  v39 = 0u;
  v40 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v38);
  v41.__locale_ = off_276F40;
  v42 = 0u;
  v43 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v41);
  kaldi::CuMatrix<float>::Resize(*(a1 + 336) + 48 * v21, v12, v17, 1u, 0);
  v25 = *(a1 + 336) + 48 * v21;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, a4, 0, *(a4 + 20), v14, v17);
  kaldi::CuMatrixBase<float>::CopyRows(v25, &v41, (*(a1 + 216) + 24 * v21), v26, v27);
  v41.__locale_ = off_276F40;
  v42 = 0u;
  v43 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v41);
  kaldi::CuMatrix<float>::Resize(*(a1 + 264) + 48 * v21, v12, v17, 1u, 0);
  v28 = *(a1 + 264) + 48 * v21;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, a3, 0, *(a3 + 20), v14, v17);
  kaldi::CuMatrixBase<float>::CopyRows(v28, &v41, (*(a1 + 216) + 24 * v21), v29, v30);
  v41.__locale_ = off_276F40;
  v42 = 0u;
  v43 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v41);
  v31 = *(a1 + 184) + *(**(a1 + 184) - 24);
  (*(*v31 + 128))(v31, *(a1 + 240) + 48 * v21, *(a1 + 264) + 48 * v21, *(a1 + 336) + 48 * v21, *(a1 + 312) + 48 * v21, v36);
  if (a5)
  {
    kaldi::CuMatrixBase<float>::CopyRows(a5, *(a1 + 312) + 48 * v21, (*(a1 + 216) + 24 * v21), v32, v33);
    kaldi::CuMatrixBase<float>::AddMat(a5, *(a1 + 288) + 48 * v21, 111, v34, v35, 1.0, 1.0);
  }
}

void sub_CC1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(), __int128 a18, __int128 a19)
{
  a17 = off_276F40;
  a18 = 0u;
  a19 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a17);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::AccumGradients(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a1[22] + *(*a1[22] - 24);
  (*(*v7 + 232))(v7);
  v8 = a1[30] + 48 * a5;
  v9 = *(*(a1[23] + *(*a1[23] - 24)) + 232);

  return v9();
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::UpdateWeights(kaldi::nnet1::BidirectionalRecurrentComponent *this, void *a2, uint64_t a3)
{
  v6 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v6 + 256))(v6);
  v7 = *(this + 23);
  v8 = *(*v7 - 24);
  v9 = *(*&v7[v8] + 256);

  return v9(&v7[v8], a2, a3);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetGradientNormalization(uint64_t a1, float a2)
{
  v4 = *(a1 + 176) + *(**(a1 + 176) - 24);
  (*(*v4 + 240))(v4);
  v5 = *(*(*(a1 + 184) + *(**(a1 + 184) - 24)) + 240);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::NormalizeGradients(kaldi::nnet1::BidirectionalRecurrentComponent *this, float a2)
{
  v4 = *(this + 22) + *(**(this + 22) - 24);
  (*(*v4 + 248))(v4);
  v5 = *(*(*(this + 23) + *(**(this + 23) - 24)) + 248);
  v6.n128_f32[0] = a2;

  return v5(v6);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::Check(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = *(this + 22) + *(**(this + 22) - 24);
  if ((*(*v2 + 24))(v2) == 280 || (v3 = *(this + 23) + *(**(this + 23) - 24), (*(*v3 + 24))(v3) == 280))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 368);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "no recursive recurrent definition");
    goto LABEL_10;
  }

  v4 = *(this + 22);
  v5 = v4 + *(*v4 - 24);
  v6 = *(v5 + 8);
  v7 = this + *(*this - 24);
  if (v6 != *(v7 + 2))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 371);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the forward RNN's input dimension does not match the component's input dimension ", 81);
    v11 = *(*(this + 22) + *(**(this + 22) - 24) + 8);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " vs ", 4);
    v13 = *(this + *(*this - 24) + 8);
    std::ostream::operator<<();
    goto LABEL_10;
  }

  v8 = *(this + 23) + *(**(this + 23) - 24);
  if (*(v8 + 8) != v6)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 375);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the backward RNN's input dimension does not match the component's input dimension ", 82);
    v14 = *(*(this + 23) + *(**(this + 23) - 24) + 8);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " vs ", 4);
    v16 = *(this + *(*this - 24) + 8);
    std::ostream::operator<<();
    goto LABEL_10;
  }

  if (*(v8 + 12) + *(v5 + 12) != *(v7 + 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 379);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the component has output dimension ", 35);
    v17 = *(this + *(*this - 24) + 12);
    v18 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " , doesn't equal the sum of individual RNN ", 43);
    v19 = *(*(this + 22) + *(**(this + 22) - 24) + 12);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " and ", 5);
    v21 = *(*(this + 23) + *(**(this + 23) - 24) + 12);
    std::ostream::operator<<();
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  (*(*v4 + 128))();
  v9 = *(**(this + 23) + 128);

  return v9();
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::GetHistoryState(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (a3 < 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_158.size + 7, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  v7 = *(*(a1 + 176) + 8) + 48 * a3;
  v8 = *(v7 + 20);
  v9 = *(*(a1 + 184) + 8) + 48 * a3;
  if (*(v9 + 20) != v8)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_158.offset, "backward_rnn_->history_state_[batch_index].NumRows() == history_num_seqs", a5);
  }

  v11 = *(v7 + 16);
  v12 = *(v9 + 16);
  kaldi::CuMatrix<float>::Resize(a2, v8, (v12 + v11), 1u, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, a2, 0, *(a2 + 20), 0, v11);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v18, *(*(a1 + 176) + 8) + 48 * a3, 111, v13, v14);
  v18 = off_276F40;
  v19 = 0u;
  v20 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v18);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, a2, 0, *(a2 + 20), v11, v12);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v18, *(*(a1 + 184) + 8) + 48 * a3, 111, v15, v16);
  v18 = off_276F40;
  v19 = 0u;
  v20 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v18);
}

void sub_CCBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (**a10)(), __int128 a11, __int128 a12)
{
  a10 = off_276F40;
  a11 = 0u;
  a12 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a10);
  _Unwind_Resume(a1);
}

_DWORD *kaldi::nnet1::BidirectionalRecurrentComponent::GetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_158.nreloc + 1, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if ((a3 & 0x80000000) != 0 || (v7 = *(*(a1 + 176) + 8) + 48 * a4, v8 = *(v7 + 20), v8 <= a3))
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_158.nreloc + 2, "sequence_idx >= 0 && sequence_idx < history_num_seqs", a5);
  }

  v9 = *(*(a1 + 184) + 8) + 48 * a4;
  if (*(v9 + 20) != v8)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_158.nreloc + 3, "backward_rnn_->history_state_[batch_index].NumRows() == history_num_seqs", a5);
  }

  v11 = a4;
  v12 = *(v7 + 16);
  v13 = *(v9 + 16);
  kaldi::CuVector<float>::Resize(a2, (v13 + v12), 1u, a4, a5);
  kaldi::CuSubVector<float>::CuSubVector(v35, a2, 0, v12, v14);
  v18 = *(*(a1 + 176) + 8) + 48 * v11;
  if (*(v18 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v17);
  }

  v19 = *(v18 + 8) + 4 * (*(v18 + 24) * a3);
  v20 = *(v18 + 16);
  v21 = *(v18 + 32);
  v32 = v19;
  v31 = &off_276FE0;
  v33 = v20;
  v34 = v21;
  kaldi::CuVectorBase<float>::CopyFromVec(v35, &v31, v15, v16, v17);
  kaldi::CuSubVector<float>::CuSubVector(v35, a2, v12, v13, v22);
  v26 = *(*(a1 + 184) + 8) + 48 * v11;
  if (*(v26 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
  }

  v27 = *(v26 + 8) + 4 * (*(v26 + 24) * a3);
  v28 = *(v26 + 16);
  v29 = *(v26 + 32);
  v32 = v27;
  v31 = &off_276FE0;
  v33 = v28;
  v34 = v29;
  return kaldi::CuVectorBase<float>::CopyFromVec(v35, &v31, v23, v24, v25);
}

float kaldi::nnet1::BidirectionalRecurrentComponent::SetInternalBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v8 = *(a1 + 176);
  v10 = *(v8 + 104);
  v11 = *(v8 + 112);
  v9 = (v8 + 104);
  if (v10 == v11)
  {
    std::vector<kaldi::CuVector<float>>::resize(v9, *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((*(a1 + 176) + 128), *(a1 + 80));
  }

  v12 = *(a1 + 184);
  v14 = *(v12 + 104);
  v15 = *(v12 + 112);
  v13 = (v12 + 104);
  if (v14 == v15)
  {
    std::vector<kaldi::CuVector<float>>::resize(v13, *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((*(a1 + 184) + 128), *(a1 + 80));
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    if (((v16 + (v16 >> 31)) & 0xFFFFFFFE) != v16)
    {
      kaldi::KaldiAssertFailure_("SetInternalBoundary", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", &stru_1A8.sectname[8], "actual_boundary_dim * 2 == boundary.Dim()", a5);
    }

    v17 = (v16 / 2);
    kaldi::CuSubVector<float>::CuSubVector(v36, a2, 0, v16 / 2, a5);
    kaldi::CuSubVector<float>::CuSubVector(v35, a2, v17, v17, v18);
    v21 = kaldi::CuVectorBase<float>::Sum(v36);
    v22 = *(*(a1 + 176) + 104) + 32 * v5;
    if (*&v21 <= 0.0)
    {
      kaldi::CuVector<float>::Resize(v22, 0, 1u, v19, v20);
    }

    else
    {
      kaldi::CuVector<float>::Resize(v22, v17, 1u, v19, v20);
      kaldi::CuVectorBase<float>::CopyFromVec((*(*(a1 + 176) + 104) + 32 * v5), v36, v23, v24, v25);
    }

    kaldi::CuVector<float>::Resize(*(*(a1 + 184) + 104) + 32 * v5, v17, 1u, v26, v27);
    return kaldi::CuVectorBase<float>::ReverseCopyFromVec(*(*(a1 + 184) + 104) + 32 * v5, v35, v32, v33, v34);
  }

  else
  {
    kaldi::CuVector<float>::Resize(*(*(a1 + 176) + 104) + 32 * v5, 0, 1u, a4, a5);
    v30 = *(*(a1 + 184) + 104) + 32 * v5;

    kaldi::CuVector<float>::Resize(v30, 0, 1u, v28, v29);
  }

  return result;
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::SetTrainOptions(kaldi::nnet1::BidirectionalRecurrentComponent *this, char **a2)
{
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(this, a2);
  (*(**(this + 22) + 104))(*(this + 22), a2);
  v4 = *(**(this + 23) + 104);

  return v4();
}

void kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(kaldi::nnet1::RecurrentBaseComponent *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {
    v6 = *(v5 + 8);
    *(this + 71) = *(v5 + 23);
    *(this + 56) = v6;
    *(this + 12) = *(v5 + 6);
    v7 = this + *(*this - 24);
    v8 = *(lpsrc + 1);
    *(v7 + 71) = *(lpsrc + 23);
    *(v7 + 56) = v8;
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v9, "SetTrainOptions", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 572);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "need RecurrentNnetTrainOptions in recurrent style component, ignoring SetTrainOptions", 85);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v9);
  }
}

void kaldi::nnet1::BidirectionalRecurrentComponent::SetHistoryState()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 457);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 463);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::ResetHistoryState()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-birnn.cc", 469);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "This function is probably not meaningful for bidirectional RNNs.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::BidirectionalRecurrentComponent::ResetHistoryState(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  (*(**(this + 22) + 32))(*(this + 22));
  v2 = *(**(this + 23) + 32);

  return v2();
}

_BYTE *kaldi::nnet1::BidirectionalRecurrentComponent::EnsureBuffers(_BYTE *this)
{
  if ((this[360] & 1) == 0)
  {
    v1 = this;
    (*(*this + 128))(this);
    v2 = *(v1 + 20);
    std::vector<std::vector<int>>::resize(v1 + 27, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 30, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 33, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 36, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 39, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 42, v2);
    (*(**(v1 + 22) + 88))(*(v1 + 22));
    this = (*(**(v1 + 23) + 88))(*(v1 + 23));
    v1[360] = 1;
  }

  return this;
}

void kaldi::nnet1::RecurrentBaseComponent::SetHistoryOptions(kaldi::nnet1::RecurrentBaseComponent *this, const kaldi::nnet1::HistoryOptions *a2)
{
  v4 = (*(*this + 120))(this);
  v5 = **v4;
  if (v6)
  {
    v7 = *(v6 + 8);
    *&v10[15] = *(v6 + 23);
    *v10 = v7;
    v9 = off_2829C0;
    v11 = off_2829E0;
    v8 = *(v6 + 13);
    v12 = *(a2 + 2);
    v13 = v8;
    (*(*this + 104))(this, &v9);
    kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions(&v9);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9, "SetHistoryOptions", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 591);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v9);
  }
}

void kaldi::nnet1::UpdatableComponent::GetNormalizedLearningRate(kaldi::nnet1::UpdatableComponent *this)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "GetNormalizedLearningRate", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 417);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetNormalizedLearningRate", 25);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*this + 24))(this);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::UpdatableComponent::PerturbParams(kaldi::nnet1::UpdatableComponent *this, float a2)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "PerturbParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 437);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "PerturbParams", 13);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " is not implemented for ", 24);
  v5 = (*(*this + 24))(this);
  kaldi::nnet1::Component::TypeToMarker(v5, &v9);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v9;
  }

  else
  {
    v6 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, " component.");
  std::string::~string(&v9);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
}

void kaldi::nnet1::UpdatableComponent::GetGradient(uint64_t a1)
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "GetGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 448);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "GetGradient", 11);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 368));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 368));

  operator delete();
}

void kaldi::nnet1::BidirectionalRecurrentComponent::PropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "PropagateFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-birnn.h", 78);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Running on single input doesn't make sense for bidirectional RNNs, since history state is not saved.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void non-virtual thunk tokaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 208));
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this - 160));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 200));
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this - 168));
}

void virtual thunk tokaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this)
{
  v2 = (v1 + 368);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent((this + *(*this - 24)));
}

void kaldi::nnet1::BidirectionalRecurrentComponent::~BidirectionalRecurrentComponent(kaldi::nnet1::BidirectionalRecurrentComponent *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 20) = off_277DA8;
  *(this + 21) = off_277DD0;
  v5 = *(this + 22);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = (this + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 312);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 288);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 264);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 240);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 216);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this + 168);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(this, a2 + 1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearTransform(uint64_t a1, uint64_t a2)
{
  *a1 = off_279038;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = off_27A660;
  *(a1 + 48) = off_282980;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = off_278370;
  *(a1 + 88) = off_2784A8;
  *(a1 + 96) = off_2784D0;
  *(a1 + 104) = 0;
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 112), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 136, *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  *(a1 + 176) = 0;
  *(a1 + 160) = v6;
  *(a1 + 164) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 200, *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 2);
  v11 = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 224) = v11;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "LinearTransform", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  v12 = *(a2 + 104);
  if (v12)
  {
    kaldi::NewCuSubOrMat<float>(v12, 0);
  }

  v14 = *(a1 + 112);
  v13 = *(a1 + 120);
  if (v13 != v14)
  {
    v15 = 0;
    do
    {
      if (*(*(a2 + 112) + 8 * v15))
      {
        v16 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a2, v15, v8, v9, v10);
        kaldi::NewCuSubOrMat<float>(v16, *(a1 + 16));
      }

      ++v15;
    }

    while (v15 < (v13 - v14) >> 3);
  }

  if (*(a2 + 240) != *(a2 + 232))
  {
    kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 232));
  }

  return a1;
}

void sub_CE1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v15);
  v17 = *v14;
  if (*v14)
  {
    *(v10 + 26) = v17;
    operator delete(v17);
  }

  v18 = *v13;
  if (*v13)
  {
    *(v10 + 23) = v18;
    operator delete(v18);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v19 = *(v10 + 13);
  *(v10 + 13) = 0;
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v12);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 112);
  if (a2 >= ((*(a1 + 120) - v5) >> 3))
  {
    kaldi::KaldiAssertFailure_("LinearityCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_158.reserved2 + 1, "linearity_corr_.size() > batch_idx", a5);
  }

  result = *(v5 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiAssertFailure_("LinearityCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_158.reserved2 + 2, "linearity_corr_[batch_idx]", a5);
  }

  return result;
}

{
  v5 = *(a1 + 112);
  if (a2 >= ((*(a1 + 120) - v5) >> 3))
  {
    kaldi::KaldiAssertFailure_("LinearityCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_158.reserved3 + 2, "linearity_corr_.size() > batch_idx", a5);
  }

  result = *(v5 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiAssertFailure_("LinearityCorr", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_158.reserved3 + 3, "linearity_corr_[batch_idx]", a5);
  }

  return result;
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v7 = kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::LinearityCorr(a1, ((*(a1 + 120) - *(a1 + 112)) >> 3) - 1, v4, v5, v6);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(uint64_t a1)
{
  *a1 = off_278370;
  v2 = a1 + 88;
  *(a1 + 88) = off_2784A8;
  v3 = a1 + 96;
  *(a1 + 96) = off_2784D0;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 232));
  v4 = *(a1 + 200);
  if (v4)
  {
    *(a1 + 208) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v7 = (a1 + 136);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (a1 + 112);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v3);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(uint64_t a1)
{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 88);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 96);
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 88);

  operator delete();
}

{
  kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::~LinearTransform(a1 - 96);

  operator delete();
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v74 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v73);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 160), &v72);
  v71 = -1;
  memset(v70, 0, sizeof(v70));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_98;
    }

    kaldi::ReadToken(a2, 0, v70, v6, v7);
    if (SHIBYTE(v70[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v70[2]) <= 0xEu)
    {
      if (HIBYTE(v70[2]) == 9)
      {
        v19 = v70;
        goto LABEL_78;
      }

      if (HIBYTE(v70[2]) == 12)
      {
        if (v70[0] != 0x536D6F646E61523CLL || LODWORD(v70[1]) != 1046766949)
        {
          v30 = v70;
          goto LABEL_93;
        }

LABEL_66:
        kaldi::ReadBasicType<int>(a2, 0, &v71, v8, v9);
        goto LABEL_89;
      }

      if (HIBYTE(v70[2]) != 13)
      {
        goto LABEL_142;
      }

      if (v70[0] != 0x74536D617261503CLL || *(v70 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_142;
      }

      goto LABEL_60;
    }

    if (HIBYTE(v70[2]) != 15)
    {
      if (HIBYTE(v70[2]) == 18)
      {
        if (v70[0] != 0x6E6569646172473CLL || v70[1] != 0x7079546D726F4E74 || LOWORD(v70[2]) != 15973)
        {
          goto LABEL_142;
        }

        goto LABEL_75;
      }

      if (HIBYTE(v70[2]) != 19)
      {
        goto LABEL_142;
      }

      v20 = v70[0] == 0x61725474696E493CLL && v70[1] == 0x79546D726F66736ELL;
      if (!v20 || *(&v70[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_142;
      }

LABEL_59:
      v22 = &v73;
LABEL_76:
      kaldi::ReadToken(a2, 0, v22, v8, v9);
      goto LABEL_89;
    }

    v29 = v70[0] == 0x61526E7261654C3CLL && *(v70 + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (!v29)
    {
      goto LABEL_142;
    }

LABEL_88:
    kaldi::ReadBasicType<float>(a2, 0, v13, v8, v9);
LABEL_89:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v70[1] == &dword_C + 1 && *v70[0] == 0x74536D617261503CLL && *(v70[0] + 5) == 0x3E7665646474536DLL)
  {
LABEL_60:
    v13 = &v74;
    goto LABEL_88;
  }

  if (v70[1] == &dword_C + 3)
  {
    v12 = *v70[0] == 0x61526E7261654C3CLL && *(v70[0] + 7) == 0x3E66656F43657461;
    v13 = (a1 + 168);
    if (v12)
    {
      goto LABEL_88;
    }
  }

  if (v70[1] == &dword_10 + 3)
  {
    if (*v70[0] == 0x61725474696E493CLL && *(v70[0] + 1) == 0x79546D726F66736ELL && *(v70[0] + 11) == 0x3E657079546D726FLL)
    {
      goto LABEL_59;
    }
  }

  else if (v70[1] == &dword_C && *v70[0] == 0x536D6F646E61523CLL && *(v70[0] + 2) == 1046766949)
  {
    goto LABEL_66;
  }

  if (v70[1] != &dword_8 + 1)
  {
    if (v70[1] != &dword_10 + 2)
    {
      goto LABEL_91;
    }

    v17 = *v70[0] == 0x6E6569646172473CLL && *(v70[0] + 1) == 0x7079546D726F4E74;
    if (!v17 || *(v70[0] + 8) != 15973)
    {
      goto LABEL_91;
    }

LABEL_75:
    v22 = &v72;
    goto LABEL_76;
  }

  v19 = v70[0];
LABEL_78:
  v26 = *v19;
  v27 = *(v19 + 8);
  v28 = v26 == 0x6461724778614D3CLL && v27 == 62;
  v13 = (a1 + 164);
  if (v28)
  {
    goto LABEL_88;
  }

  if ((HIBYTE(v70[2]) & 0x80) == 0)
  {
    goto LABEL_142;
  }

LABEL_91:
  if (v70[1] != &dword_C)
  {
    goto LABEL_142;
  }

  v30 = v70[0];
LABEL_93:
  v31 = *v30;
  v32 = *(v30 + 2);
  if (v31 != 0x6E6F706D6F432F3CLL || v32 != 1047817829)
  {
LABEL_142:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v69, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 140);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Unknown token ", 14);
    if (SHIBYTE(v70[2]) >= 0)
    {
      v57 = v70;
    }

    else
    {
      v57 = v70[0];
    }

    if (SHIBYTE(v70[2]) >= 0)
    {
      v58 = HIBYTE(v70[2]);
    }

    else
    {
      v58 = v70[1];
    }

    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " (ParamStddev|LearnRateCoef|InitTransformType|RandomSeed|GradientNormType|MaxGrad)", 82);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v69);
  }

LABEL_98:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v73);
  *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(&v72);
  if (v71 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v71);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v65, a3);
  kaldi::Matrix<float>::Matrix(&v61, *(a1 + 12), *(a1 + 8), 0, 0);
  v38 = *(a1 + 12);
  if (v38 < 1)
  {
    goto LABEL_126;
  }

  v39 = 0;
  LODWORD(v40) = *(a1 + 8);
  while (2)
  {
    if (v40 < 1)
    {
      goto LABEL_125;
    }

    v41 = 0;
    while (2)
    {
      switch(inited)
      {
        case 0:
          if (v39 >= v63 || v41 >= v62)
          {
LABEL_141:
            kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v37);
          }

          v44 = v61 + 4 * v39 * v64;
          if (v39 == v41)
          {
            v45 = 1.0;
          }

          else
          {
            v45 = 0.0;
          }

          goto LABEL_122;
        case 2:
          v46 = *&v74;
          kaldi::GaussRandomNumber::Rand(v65, 0, v35, v36, v37);
          if (v39 >= v63 || v41 >= v62)
          {
            goto LABEL_141;
          }

          v44 = v61 + 4 * v39 * v64;
          v45 = v46 * v47;
LABEL_122:
          *(v44 + 4 * v41) = v45;
          break;
        case 1:
          v42 = *&v74;
          v43 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v35, v36, v37);
          if (v39 >= v63 || v41 >= v62)
          {
            goto LABEL_141;
          }

          v44 = v61 + 4 * v39 * v64;
          v45 = (v43 + -0.5) * (v42 + v42);
          goto LABEL_122;
      }

      ++v41;
      v40 = *(a1 + 8);
      if (v41 < v40)
      {
        continue;
      }

      break;
    }

    v38 = *(a1 + 12);
LABEL_125:
    if (++v39 < v38)
    {
      continue;
    }

    break;
  }

LABEL_126:
  v50 = *(a1 + 104);
  if (!v50)
  {
    goto LABEL_149;
  }

  v51 = *(v50 + 20);
  if (v51 != kaldi::ContextDependency::CentralPosition(&v61))
  {
    goto LABEL_140;
  }

  v52 = *(a1 + 104);
  if (!v52)
  {
    goto LABEL_149;
  }

  v53 = *(v52 + 16);
  if (v53 != kaldi::ContextDependency::ContextWidth(&v61))
  {
LABEL_140:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v69, "InitData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 163);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Linearity().NumRows() == mat.NumRows() && Linearity().NumCols() == mat.NumCols()", 80);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v69);
  }

  v55 = *(a1 + 104);
  if (!v55)
  {
LABEL_149:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v37);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat(v55, &v61, 111, v54, v37);
  kaldi::Matrix<float>::~Matrix(&v61);
  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  v69[0] = &v66;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](v69);
  if (SHIBYTE(v70[2]) < 0)
  {
    operator delete(v70[0]);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }
}

void sub_CEE28(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(&v3);
  kaldi::GaussRandomNumber::~GaussRandomNumber(&v4);
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v31 = 0uLL;
    v32 = 0;
    kaldi::ReadToken(a2, a3, &v31, v7, v8);
    if (SHIBYTE(v32) < 0)
    {
      if (*(&v31 + 1) != 15 || (*v31 == 0x61526E7261654C3CLL ? (v13 = *(v31 + 7) == 0x3E66656F43657461) : (v13 = 0), v14 = (a1 + 168), !v13))
      {
        if (*(&v31 + 1) == 18)
        {
          v15 = *v31 == 0x6E6569646172473CLL && *(v31 + 8) == 0x7079546D726F4E74;
          if (v15 && *(v31 + 16) == 15973)
          {
            goto LABEL_29;
          }
        }

        if (*(&v31 + 1) != 9)
        {
          goto LABEL_51;
        }

        v17 = v31;
        goto LABEL_37;
      }
    }

    else
    {
      if (HIBYTE(v32) == 9)
      {
        v17 = &v31;
LABEL_37:
        v19 = *v17;
        v20 = *(v17 + 8);
        v21 = v19 == 0x6461724778614D3CLL && v20 == 62;
        v14 = (a1 + 164);
        if (!v21)
        {
LABEL_51:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", 181);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v32 >= 0)
          {
            v26 = &v31;
          }

          else
          {
            v26 = v31;
          }

          if (v32 >= 0)
          {
            v27 = HIBYTE(v32);
          }

          else
          {
            v27 = *(&v31 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_42;
      }

      if (HIBYTE(v32) != 15)
      {
        if (HIBYTE(v32) != 18)
        {
          goto LABEL_51;
        }

        v11 = v31 == 0x6E6569646172473CLL && *(&v31 + 1) == 0x7079546D726F4E74;
        if (!v11 || v32 != 15973)
        {
          goto LABEL_51;
        }

LABEL_29:
        __p[0] = 0;
        __p[1] = 0;
        v30 = 0;
        kaldi::ReadToken(a2, a3, __p, v9, v10);
        *(a1 + 160) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_43;
      }

      v18 = v31 == 0x61526E7261654C3CLL && *(&v31 + 7) == 0x3E66656F43657461;
      v14 = (a1 + 168);
      if (!v18)
      {
        goto LABEL_51;
      }
    }

LABEL_42:
    kaldi::ReadBasicType<float>(a2, a3, v14, v9, v10);
LABEL_43:
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }
  }

  v22 = *(a1 + 104);
  if (!v22 || (result = (**v22)(v22, a2, a3, a4), *(a1 + 16) = 0, (v24 = *(a1 + 104)) == 0))
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v8);
  }

  if (*(v24 + 20) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.sectname[7], "Linearity().NumRows() == output_dim_", v8);
  }

  if (*(v24 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.sectname[8], "Linearity().NumCols() == input_dim_", v8);
  }

  return result;
}

void sub_CF1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[42];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v9, v10);
  kaldi::nnet1::Component::TypeToMarker(a1[40], &__p);
  kaldi::WriteToken(a2, a3, &__p, v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v13, v14);
  v15 = a1[41];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_CF2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::WriteData(void *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  v9 = a1[13];
  if (!v9)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", v8);
  }

  return kaldi::CuMatrixBase<float>::Write(v9, a2, a3, a4);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::NumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  return (*(v5 + 16) * *(v5 + 20));
}

void *kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::GetParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  if (!v5)
  {
    goto LABEL_5;
  }

  v8 = *(v5 + 16) * *(v5 + 20);
  kaldi::Vector<float>::Resize(a2, v8, 0, a4, a5);
  v14 = 0;
  v15 = 0;
  if (v8 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", a5);
  }

  v13 = *a2;
  LODWORD(v14) = v8;
  v11 = *(a1 + 104);
  if (!v11)
  {
LABEL_5:
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  return kaldi::VectorBase<float>::CopyRowsFromMat(&v13, v11, v9, v10, a5);
}

void **kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_B8.addr + 2, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[13];
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v5);
  }

  return kaldi::CuMatrixBase<float>::CopyRowsFromVec(v6, a2);
}

float kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", a5);
  }

  return kaldi::CuMatrixBase<float>::Sum(v6, a2, a3, a4, a5);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a6);
  }

  kaldi::CuMatrix<float>::CuMatrix(v13, *(v6 + 20), *(v6 + 16), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v13);
  v11 = *(a1 + 104);
  if (!v11)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v10);
  }

  kaldi::CuMatrixBase<float>::AddMat(v11, v13, 111, v9, v10, a2, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(v13);
}

uint64_t kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  (*(*a1 + 168))(a1, &v10, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "\n linearity", 11);
  v4 = a1[13];
  if (!v4)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved2 + 3, "linearity_", v2);
  }

  kaldi::nnet1::MomentStatistics<float>(v4);
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_CF860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  boost::filesystem::path::path(&v21, "\n  linearity_grad");
  kaldi::nnet1::MomentStatistics<float>((a1 + 112), v4, v5, v6, v7);
  if ((v20 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v19[1];
  }

  v10 = std::string::append(&v21, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v22, ", lr-coef ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 168));
  if ((v18 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v15 = v18;
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::string::append(&v23, v14, v15);
  *a2 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_CF9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
  }

  kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, CblasNoTrans, v6, &stru_68.sectname[8], 1.0, 0.0);
}

{
  v7 = *(a1 + 104);
  if (!v7)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
  }

  kaldi::CuVectorBase<float>::AddMatVec(a3, v7, CblasNoTrans, a2, a5, 1.0, 0.0);
}

void kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", a5);
  }

  kaldi::CuMatrixBase<float>::AddMatMat(a5, a4, CblasNoTrans, v6, &stru_68.sectname[7], 1.0, 0.0);
}