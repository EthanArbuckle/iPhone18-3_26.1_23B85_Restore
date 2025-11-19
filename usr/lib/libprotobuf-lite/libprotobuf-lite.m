uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString(int a1, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/wire_format_lite.cc", 285);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
}

void sub_233498A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(uint64_t this, unsigned int a2)
{
  if (*(this + 16) < 5)
  {
    v9 = v2;
    v10 = v3;
    if (a2 < 0x80)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v8[v6++] = a2 | 0x80;
        v7 = a2 >> 14;
        a2 >>= 7;
      }

      while (v7);
    }

    v8[v6] = a2;
    return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(this, v8, v6 + 1);
  }

  else
  {
    v4 = *(this + 8);
    *v4 = a2 | 0x80;
    if (a2 < 0x80)
    {
      *v4 = a2;
      v5 = 1;
    }

    else
    {
      v4[1] = (a2 >> 7) | 0x80;
      if (a2 < 0x4000)
      {
        v4[1] = a2 >> 7;
        v5 = 2;
      }

      else
      {
        v4[2] = (a2 >> 14) | 0x80;
        if (a2 < 0x200000)
        {
          v4[2] = a2 >> 14;
          v5 = 3;
        }

        else
        {
          v4[3] = (a2 >> 21) | 0x80;
          if (a2 >> 28)
          {
            v4[4] = a2 >> 28;
            v5 = 5;
          }

          else
          {
            v4[3] = a2 >> 21;
            v5 = 4;
          }
        }
      }
    }

    *(this + 8) += v5;
    *(this + 16) -= v5;
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, uint64_t a2, const wireless_diagnostics::google::protobuf::MessageLite *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 2);
  v6 = (*(*a2 + 96))(a2);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v6);
  v7 = *(*a2 + 80);

  return v7(a2, a3);
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, char *__src, int a3)
{
  while (1)
  {
    v6 = *(this + 4);
    v7 = *(this + 1);
    if (v6 >= a3)
    {
      break;
    }

    memcpy(v7, __src, v6);
    v8 = *(this + 4);
    a3 -= v8;
    __src += v8;
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::Refresh(this);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  result = memcpy(v7, __src, a3);
  *(this + 1) += a3;
  *(this + 4) -= a3;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, signed int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);
  if (a2 < 0)
  {

    return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
  }

  else
  {

    return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
  }
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(wireless_diagnostics::google::protobuf::internal::ExtensionSet **this)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::Free(v3 + 10);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::destroy(this, this[1]);
}

void std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet(void *this)
{
  this[2] = 0;
  this[1] = 0;
  *this = this + 1;
  return this;
}

{
  this[2] = 0;
  this[1] = 0;
  *this = this + 1;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::SerializeToString(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  wireless_diagnostics::google::protobuf::MessageLite::AppendPartialToString(a1, a2);
  return 1;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    if (v2->__r_.__value_.__l.__size_)
    {
      v2 = v2->__r_.__value_.__r.__words[0];
      goto LABEL_9;
    }
  }

  else if (*(&v2->__r_.__value_.__s + 23))
  {
    goto LABEL_9;
  }

  v2 = 0;
LABEL_9:
  v6 = (*(*a1 + 88))(a1, v2 + size) - (v2 + size);
  if (v6 != v5)
  {
    v7 = (*(*a1 + 72))(a1);
  }

  return 1;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::ByteSize(wireless_diagnostics::google::protobuf::internal::ExtensionSet **this)
{
  v1 = this + 1;
  v2 = *this;
  if (*this == (this + 1))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::ByteSize((v2 + 40), *(v2 + 8));
    v5 = *(v2 + 1);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = *(v2 + 2);
        v7 = *v6 == v2;
        v2 = v6;
      }

      while (!v7);
    }

    v3 = (v4 + v3);
    v2 = v6;
  }

  while (v6 != v1);
  return v3;
}

uint64_t wireless_diagnostics::google::protobuf::io::ArrayOutputStream::ArrayOutputStream(uint64_t this, void *a2, int a3, int a4)
{
  *this = &unk_2848CF7D8;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_2848CF7D8;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

unsigned __int8 *wireless_diagnostics::google::protobuf::MessageLite::SerializeWithCachedSizesToArray(wireless_diagnostics::google::protobuf::MessageLite *this, unsigned __int8 *a2)
{
  v4 = (*(*this + 96))(this);
  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v10, a2, v4, -1);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(v9, v10);
  (*(*this + 80))(this, v9);
  if (v9[24] == 1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/message_lite.cc", 225);
    v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !coded_out.HadError(): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v9);
  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(v10);
  return &a2[v4];
}

void sub_2334990D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(va1);
  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream((v3 - 64));
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedOutputStream *wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::ZeroCopyOutputStream *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 24) = 0;
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::Refresh(this);
  *(this + 24) = 0;
  return this;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 24) = 0;
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::Refresh(this);
  *(this + 24) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::Refresh(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this)
{
  v4 = 0;
  result = (*(**this + 16))(*this, &v4, this + 16);
  if (result)
  {
    v3 = v4;
    *(this + 5) += *(this + 4);
  }

  else
  {
    v3 = 0;
    *(this + 4) = 0;
    *(this + 24) = 1;
  }

  *(this + 1) = v3;
  return result;
}

void wireless_diagnostics::google::protobuf::internal::OnShutdown(wireless_diagnostics::google::protobuf::internal *this, void (*a2)(void))
{
  v3 = wireless_diagnostics::google::protobuf::internal::shutdown_functions_init;
  __dmb(0xBu);
  if (v3 != 2)
  {
    v17[0] = &unk_2848CFE18;
    v17[1] = wireless_diagnostics::google::protobuf::internal::InitShutdownFunctions;
    v18 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl(&wireless_diagnostics::google::protobuf::internal::shutdown_functions_init, v17);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::shutdown_functions_mutex;
  wireless_diagnostics::google::protobuf::internal::Mutex::Lock(wireless_diagnostics::google::protobuf::internal::shutdown_functions_mutex);
  v5 = wireless_diagnostics::google::protobuf::internal::shutdown_functions;
  v7 = *(wireless_diagnostics::google::protobuf::internal::shutdown_functions + 8);
  v6 = *(wireless_diagnostics::google::protobuf::internal::shutdown_functions + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *wireless_diagnostics::google::protobuf::internal::shutdown_functions) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<void (*)(void)>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 - *wireless_diagnostics::google::protobuf::internal::shutdown_functions;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void (*)(void)>>(wireless_diagnostics::google::protobuf::internal::shutdown_functions, v12);
    }

    v13 = (8 * v9);
    *v13 = this;
    v8 = 8 * v9 + 8;
    v14 = *(v5 + 8) - *v5;
    v15 = v13 - v14;
    memcpy(v13 - v14, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = this;
    v8 = (v7 + 1);
  }

  *(v5 + 8) = v8;
  wireless_diagnostics::google::protobuf::internal::Mutex::Unlock(v4);
}

uint64_t _GLOBAL__sub_I_generated_message_util_cc()
{
  wireless_diagnostics::google::protobuf::internal::kEmptyString = 0;
  *algn_280AC09A8 = 0;
  qword_280AC09B0 = 0;
  return __cxa_atexit(MEMORY[0x277D82640], &wireless_diagnostics::google::protobuf::internal::kEmptyString, &dword_233498000);
}

void wireless_diagnostics::google::protobuf::internal::Mutex::Mutex(wireless_diagnostics::google::protobuf::internal::Mutex *this)
{
  operator new();
}

{
  operator new();
}

atomic_ullong *wireless_diagnostics::google::protobuf::GoogleOnceInitImpl(atomic_ullong *result, uint64_t a2)
{
  v2 = *result;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3 = result;
    do
    {
      v4 = 0;
      atomic_compare_exchange_strong(result, &v4, 1uLL);
      if (!v4)
      {
        result = (*(*a2 + 16))(a2);
        __dmb(0xBu);
        *v3 = 2;
        return result;
      }
    }

    while (!*result);
    if (*result == 1)
    {
      do
      {
        result = sched_yield();
        v5 = *v3;
        __dmb(0xBu);
      }

      while (v5 == 1);
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::FunctionClosure0::Run(wireless_diagnostics::google::protobuf::internal::FunctionClosure0 *this)
{
  v2 = *(this + 16);
  result = (*(this + 1))();
  if (this && (v2 & 1) != 0)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::Mutex::Lock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_lock(*this);
  if (v1)
  {
    v2 = v1;
    v4 = 3;
    v5 = "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/stubs/common.cc";
    v6 = 305;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_lock: ");
    v3 = strerror(v2);
    std::string::append(&__p, v3);
    wireless_diagnostics::google::protobuf::internal::LogMessage::Finish(&v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23349960C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::internal::Mutex::Unlock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_unlock(*this);
  if (v1)
  {
    v2 = v1;
    v4 = 3;
    v5 = "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/stubs/common.cc";
    v6 = 312;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_unlock: ");
    v3 = strerror(v2);
    std::string::append(&__p, v3);
    wireless_diagnostics::google::protobuf::internal::LogMessage::Finish(&v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2334996C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void (*)(void)>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(wireless_diagnostics::google::protobuf::MessageLite *this, char *a2, int a3)
{
  v7[0] = 0;
  v7[1] = a2;
  v7[2] = &a2[a3];
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = a3;
  v12 = xmmword_2334AA590;
  v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  if (!(*(*this + 64))(this, v7))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (((*(*this + 40))(this) & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v18, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/message_lite.cc", 124);
    v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v18, &__p);
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v16, v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    goto LABEL_7;
  }

  v4 = v10;
LABEL_8:
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return v4 & 1;
}

void sub_23349987C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage((v25 - 64));
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a9);
  _Unwind_Resume(a1);
}

BOOL wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString(uint64_t a1, std::string *this)
{
  v10 = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 < v4)
  {
    v6 = *v5;
    if ((v6 & 0x80000000) == 0)
    {
      v10 = *v5;
      v7 = v5 + 1;
      *(a1 + 8) = v7;
      goto LABEL_7;
    }
  }

  v8 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a1, &v10);
  result = 0;
  if (v8)
  {
    v6 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      v7 = *(a1 + 8);
      v4 = *(a1 + 16);
LABEL_7:
      if (v6 > v4 - v7)
      {
        return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadStringFallback(a1, this, v6);
      }

      std::string::resize(this, v6, 0);
      if (!v6)
      {
        return 1;
      }

      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        if (!this->__r_.__value_.__l.__size_)
        {
LABEL_15:
          this = 0;
          goto LABEL_16;
        }

        this = this->__r_.__value_.__r.__words[0];
      }

      else if (!*(&this->__r_.__value_.__s + 23))
      {
        goto LABEL_15;
      }

LABEL_16:
      memcpy(this, *(a1 + 8), v6);
      *(a1 + 8) += v6;
      return 1;
    }
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(uint64_t *this, int a2)
{
  v2 = *(this + 4);
  if (v2 < a2)
  {
    v3 = *this;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(this + 4) = v4;
    operator new[]();
  }

  return this;
}

void wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  if (*this)
  {
    wireless_diagnostics::google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(this);
  }

  if (*(this + 13) == -2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v5, 1, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/coded_stream.cc", 79);
    v2 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v5, "The total number of bytes read was ");
    v3 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v2, *(this + 6));
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v4, v3);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(uint64_t this, int a2)
{
  if (*(this + 16) < 4u)
  {
    v5 = v2;
    v6 = v3;
    v4 = a2;
    return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(this, &v4, 4);
  }

  else
  {
    **(this + 8) = a2;
    *(this + 8) += 4;
    *(this + 16) -= 4;
  }

  return this;
}

BOOL wireless_diagnostics::google::protobuf::io::ArrayOutputStream::Next(wireless_diagnostics::google::protobuf::io::ArrayOutputStream *this, void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 5))
    {
      v5 = *(this + 5);
    }

    *(this + 7) = v5;
    *a2 = (*(this + 1) + v3);
    *a3 = v5;
    *(this + 6) += *(this + 7);
  }

  return v3 < v4;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, double a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * this) | 1);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *&a3);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizes(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (v4)
  {
    v8 = this + 8;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v8 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v8 != v5)
    {
      do
      {
        v9 = *(v8 + 8);
        if (v9 >= a3)
        {
          break;
        }

        wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::SerializeFieldWithCachedSizes((v8 + 40), v9, a4, a4);
        v10 = *(v8 + 1);
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = *(v8 + 2);
            v12 = *v11 == v8;
            v8 = v11;
          }

          while (!v12);
        }

        v8 = v11;
      }

      while (v11 != v5);
    }
  }
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(uint64_t this, uint64_t a2)
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (*(this + 16) < 8u)
  {
    v3[0] = a2;
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(this, v3, 8);
  }

  else
  {
    **(this + 8) = a2;
    *(this + 8) += 8;
    *(this + 16) -= 8;
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, signed int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);
  if (a2 < 0)
  {

    return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
  }

  else
  {

    return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
  }
}

void wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this)
{
  if (*(this + 4) >= 1)
  {
    v2 = *this;
    (*(**this + 24))();
  }
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(uint64_t this, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(this + 16) >= 10)
  {
    v2 = *(this + 8);
    v3 = a2 >> 28;
    if (HIBYTE(a2))
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        v2[9] = -127;
        v4 = 10;
      }

      else
      {
        v4 = 9;
      }

      v2[8] = HIBYTE(a2) | 0x80;
    }

    else
    {
      if (!v3)
      {
        if (!(a2 >> 14))
        {
          if (a2 < 0x80)
          {
            v4 = 1;
LABEL_27:
            *v2 = a2 | 0x80;
            v2[v4 - 1] &= ~0x80u;
            *(this + 8) += v4;
            *(this + 16) -= v4;
            goto LABEL_28;
          }

          v4 = 2;
LABEL_26:
          v2[1] = (a2 >> 7) | 0x80;
          goto LABEL_27;
        }

        if (a2 < 0x200000)
        {
          v4 = 3;
          goto LABEL_25;
        }

        v4 = 4;
LABEL_24:
        v2[3] = (a2 >> 21) | 0x80;
LABEL_25:
        v2[2] = (a2 >> 14) | 0x80;
        goto LABEL_26;
      }

      if (!(v3 >> 14))
      {
        if (v3 < 0x80)
        {
          v4 = 5;
LABEL_23:
          v2[4] = v3 | 0x80;
          goto LABEL_24;
        }

        v4 = 6;
LABEL_22:
        v2[5] = (a2 >> 35) | 0x80;
        goto LABEL_23;
      }

      if (v3 < 0x200000)
      {
        v4 = 7;
        goto LABEL_21;
      }

      v4 = 8;
    }

    v2[7] = (a2 >> 49) | 0x80;
LABEL_21:
    v2[6] = (a2 >> 42) | 0x80;
    goto LABEL_22;
  }

  if (a2 < 0x80)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      __src[v5++] = a2 | 0x80;
      v6 = a2 >> 14;
      a2 >>= 7;
    }

    while (v6);
  }

  __src[v5] = a2;
  this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(this, __src, v5 + 1);
LABEL_28:
  v7 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this)
{
  if (this >> 28)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (this >= 0x200000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (this >= 0x4000)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (this >= 0x80)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, float a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, (8 * this) | 5);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a2, SLODWORD(a3));
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(uint64_t this, int a2)
{
  *(this + 40) = a2;
  v2 = *(this + 48);
  v3 = *(this + 16) + *(this + 44);
  *(this + 16) = v3;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(this + 24);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    v7 = 0;
  }

  else
  {
    *(this + 16) = v3 - v7;
  }

  *(this + 44) = v7;
  *(this + 36) = 0;
  return this;
}

BOOL wireless_diagnostics::google::protobuf::MessageLite::SerializePartialToArray(wireless_diagnostics::google::protobuf::MessageLite *this, void *a2, int a3)
{
  v6 = (*(*this + 72))(this);
  if (v6 <= a3)
  {
    v7 = (*(*this + 88))(this, a2) - a2;
    if (v7 != v6)
    {
      v8 = (*(*this + 72))(this);
    }
  }

  return v6 <= a3;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(uint64_t this)
{
  if (!*(this + 32))
  {
    v1 = *(this + 40);
    operator new[]();
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::Next(wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor *this, const void **a2, int *a3)
{
  if (*(this + 17))
  {
    return 0;
  }

  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(this);
  v7 = *(this + 12);
  if (v7 >= 1)
  {
    *a2 = (*(this + 4) + *(this + 11) - v7);
    *a3 = v7;
    *(this + 12) = 0;
    return 1;
  }

  v8 = (*(**(this + 1) + 16))(*(this + 1), *(this + 4), *(this + 10));
  *(this + 11) = v8;
  if (v8 > 0)
  {
    v9 = *(this + 4);
    *(this + 3) += v8;
    *a3 = v8;
    *a2 = v9;
    return 1;
  }

  if (v8 < 0)
  {
    *(this + 17) = 1;
  }

  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::FreeBuffer(this);
  return 0;
}

ssize_t wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::Read(wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream *this, void *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl.cc", 139);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: !is_closed_: ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    v7 = read(*(this + 2), a2, a3);
    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      *(this + 4) = *__error();
      return v7;
    }
  }

  return v7;
}

void sub_23349A44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::FileInputStream *wireless_diagnostics::google::protobuf::io::FileInputStream::FileInputStream(wireless_diagnostics::google::protobuf::io::FileInputStream *this, int a2, int a3)
{
  *this = &unk_2848CFA48;
  *(this + 1) = &unk_2848CFA88;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(this + 32, this + 8, a3);
  return this;
}

void sub_23349A4E8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v2);
  wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream::~ZeroCopyInputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_2848CF848;
  *(result + 8) = a2;
  *(result + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 44) = 0;
  *(result + 48) = 0;
  *(result + 40) = v3;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, signed int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 2);
  v4 = *(this + 10);
  v5 = *(this + 11);
  v6 = v2 - v5 + *(this + 2) - v3;
  v7 = (v6 ^ 0x7FFFFFFFu) < a2 || a2 < 0;
  v8 = v6 + a2;
  if (v7)
  {
    v8 = 0x7FFFFFFF;
  }

  if (v4 < v8)
  {
    v8 = *(this + 10);
  }

  *(this + 10) = v8;
  v9 = v3 + v5;
  *(this + 2) = v9;
  if (*(this + 12) < v8)
  {
    v8 = *(this + 12);
  }

  v10 = __OFSUB__(v2, v8);
  v11 = v2 - v8;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    v11 = 0;
  }

  else
  {
    *(this + 2) = v9 - v11;
  }

  *(this + 11) = v11;
  return v4;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(unint64_t this)
{
  if ((this & 0x8000000000000000) == 0)
  {
    v1 = 9;
  }

  else
  {
    v1 = 10;
  }

  if (HIBYTE(this))
  {
    v2 = v1;
  }

  else
  {
    v2 = 8;
  }

  if (this >> 49)
  {
    v3 = v2;
  }

  else
  {
    v3 = 7;
  }

  if (this >> 42)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (this >> 28)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  if (this >= 0x200000)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (this >= 0x4000)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if (this >= 0x80)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (this >> 35)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t wireless_diagnostics::google::protobuf::io::ArrayInputStream::ArrayInputStream(uint64_t this, const void *a2, int a3, int a4)
{
  *this = &unk_2848CF798;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_2848CF798;
  *(this + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(this + 16) = a3;
  *(this + 20) = v4;
  *(this + 24) = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 11);
  if (v2 > 0 || *(this + 7) > 0 || (v3 = *(this + 6), v3 == *(this + 10)))
  {
    v4 = *(this + 6) - v2;
    v5 = *(this + 12);
    if (v4 >= v5 && v5 != *(this + 10))
    {
      wireless_diagnostics::google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(this);
    }

    return 0;
  }

  else
  {
    v8 = *(this + 13);
    if ((v8 & 0x80000000) == 0 && v3 >= v8)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v28, 1, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/coded_stream.cc", 506);
      v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v28, "Reading dangerously large protocol message.  If the message turns out to be larger than ");
      v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, *(this + 12));
      v11 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, " bytes, parsing will be halted for security reasons.  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h.");
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v27, v11);
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
      *(this + 13) = -2;
    }

    v27 = 0;
    v26 = 0;
    v12 = *this;
    do
    {
      v6 = (*(*v12 + 16))(v12, &v27, &v26);
      if (!v6)
      {
        *(this + 1) = 0;
        *(this + 2) = 0;
        return v6;
      }

      v13 = v26;
    }

    while (!v26);
    v14 = v27 + v26;
    *(this + 1) = v27;
    *(this + 2) = v14;
    if (v13 < 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/coded_stream.cc", 523);
      v15 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (buffer_size) >= (0): ");
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v25, v15);
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
      v13 = v26;
    }

    v16 = *(this + 6);
    v17 = v16 - (v13 ^ 0x7FFFFFFF);
    if (v16 <= (v13 ^ 0x7FFFFFFF))
    {
      v19 = v13 + v16;
      v18 = *(this + 2);
    }

    else
    {
      *(this + 7) = v17;
      v18 = *(this + 2) - v17;
      *(this + 2) = v18;
      v19 = 0x7FFFFFFF;
    }

    *(this + 6) = v19;
    v20 = *(this + 10);
    v21 = v18 + *(this + 11);
    *(this + 2) = v21;
    v22 = *(this + 12);
    if (v22 >= v20)
    {
      v22 = v20;
    }

    v23 = __OFSUB__(v19, v22);
    v24 = v19 - v22;
    if ((v24 < 0) ^ v23 | (v24 == 0))
    {
      v24 = 0;
    }

    else
    {
      *(this + 2) = v21 - v24;
    }

    *(this + 11) = v24;
  }

  return v6;
}

void sub_23349A87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, a2);
}

BOOL wireless_diagnostics::google::protobuf::io::ArrayInputStream::Next(wireless_diagnostics::google::protobuf::io::ArrayInputStream *this, const void **a2, int *a3)
{
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (v3 >= v4)
  {
    *(this + 7) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(this + 5))
    {
      v5 = *(this + 5);
    }

    *(this + 7) = v5;
    *a2 = (*(this + 1) + v3);
    *a3 = v5;
    *(this + 6) += *(this + 7);
  }

  return v3 < v4;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = v1 - v2;
  if (v1 - v2 > 9)
  {
    goto LABEL_4;
  }

  if (v3 >= 1)
  {
    if ((*(v1 - 1) & 0x80000000) == 0)
    {
LABEL_4:
      v4 = v2 + 1;
      v5 = *v2 & 0x7F;
      if ((*v2 & 0x80) != 0)
      {
        v6 = v2[1];
        v5 = *v2 & 0x7F | ((v6 & 0x7F) << 7);
        if (v6 < 0)
        {
          v8 = v2[2];
          v5 = v5 & 0xFFE03FFF | ((v8 & 0x7F) << 14);
          if (v8 < 0)
          {
            v12 = v2[3];
            v5 = v5 & 0xF01FFFFF | ((v12 & 0x7F) << 21);
            if (v12 < 0)
            {
              v13 = v2[4];
              v5 = v5 | (v13 << 28);
              if (v13 < 0)
              {
                v4 = v2 + 6;
                v14 = 5;
                v11 = 0;
                while (*(v4 - 1) < 0)
                {
                  ++v4;
                  if (!--v14)
                  {
                    return v11;
                  }
                }
              }

              else
              {
                v4 = v2 + 5;
              }
            }

            else
            {
              v4 = v2 + 4;
            }
          }

          else
          {
            v4 = v2 + 3;
          }
        }

        else
        {
          v4 = v2 + 2;
        }
      }

      *(this + 1) = v4;
      return v5;
    }

    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v3)
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v9 = *(this + 11);
  v10 = *(this + 6);
  if (v9 <= 0 && v10 != *(this + 10))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v10 - v9 >= *(this + 12))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v11 = 0;
  *(this + 36) = 1;
  return v11;
}

_DWORD *wireless_diagnostics::google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(_DWORD *this)
{
  if (this[7] + this[11] + this[4] - this[2] >= 1)
  {
    v1 = this;
    this = (*(**this + 24))(*this);
    v2 = *(v1 + 1);
    v3 = v1[6] - v1[11] + v2 - v1[4];
    *(v1 + 2) = v2;
    v1[11] = 0;
    *(v1 + 3) = v3;
  }

  return this;
}

void wireless_diagnostics::google::protobuf::io::ArrayInputStream::BackUp(wireless_diagnostics::google::protobuf::io::ArrayInputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 80);
    v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 82);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v7);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 83);
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_23349ABE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v3 - v2 <= 9 && (v3 <= v2 || *(v3 - 1) < 0))
  {
    return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Slow(this, a2);
  }

  v4 = v2 + 1;
  v5 = *v2 & 0x7F;
  if ((*v2 & 0x80) == 0)
  {
    v6 = 0;
    v7 = 0;
LABEL_25:
    *(this + 1) = &v2[v4 - v2];
    *a2 = v5 | (v6 << 28) | (v7 << 56);
    return 1;
  }

  v9 = v2[1];
  v5 = *v2 & 0x7F | ((v9 & 0x7F) << 7);
  if ((v9 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 2;
    goto LABEL_25;
  }

  v10 = v2[2];
  v5 = v5 & 0xFFE03FFF | ((v10 & 0x7F) << 14);
  if ((v10 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 3;
    goto LABEL_25;
  }

  v11 = v2[3];
  v5 = v5 & 0xF01FFFFF | ((v11 & 0x7F) << 21);
  if ((v11 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 4;
    goto LABEL_25;
  }

  v6 = v2[4] & 0x7F;
  if ((v2[4] & 0x80) == 0)
  {
    v7 = 0;
    v4 = v2 + 5;
    goto LABEL_25;
  }

  v12 = v2[5];
  v6 = v2[4] & 0x7F | ((v12 & 0x7F) << 7);
  if ((v12 & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 6;
    goto LABEL_25;
  }

  v13 = v2[6];
  v6 = v6 & 0xFFE03FFF | ((v13 & 0x7F) << 14);
  if ((v13 & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 7;
    goto LABEL_25;
  }

  v14 = v2[7];
  v6 = v6 & 0xF01FFFFF | ((v14 & 0x7F) << 21);
  if ((v14 & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 8;
    goto LABEL_25;
  }

  v7 = v2[8] & 0x7F;
  if ((v2[8] & 0x80) == 0)
  {
    v4 = v2 + 9;
    goto LABEL_25;
  }

  v15 = v2[9];
  if ((v15 & 0x80000000) == 0)
  {
    v4 = v2 + 10;
    v7 = v2[8] & 0x7F | ((v15 & 0x7F) << 7);
    goto LABEL_25;
  }

  return 0;
}

void wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::BackUp(wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (*(this + 12) || !*(this + 4))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 257);
    v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: backup_bytes_ == 0 && buffer_.get() != NULL: ");
    v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v4, " BackUp() can only be called after Next().");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v5);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 11) < a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 259);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) <= (buffer_used_): ");
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v6, " Can't back up over more bytes than were returned by the last call to Next().");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v7);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl_lite.cc", 262);
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v8, " Parameter to BackUp() can't be negative.");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v9);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  *(this + 12) = a2;
}

void sub_23349AE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x23839FAC0);
  }

  return result;
}

BOOL wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  if (((*(this + 4) - v3) & 0xFFFFFFF8) != 0)
  {
    *(this + 1) = v3 + 1;
LABEL_4:
    *a2 = *v3;
    result = 1;
    goto LABEL_5;
  }

  v3 = v6;
  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v6, 8);
  if (result)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, char *__dst, int a3)
{
  while (1)
  {
    v6 = a3;
    v7 = *(this + 1);
    v8 = *(this + 2) - v7;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *(this + 1) += v8;
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *(this + 1) += v6;
  return v6 <= v8;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Slow(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v4 = 0;
  v5 = 0;
  while (v4 != 10)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 != *(this + 2))
      {
        break;
      }

      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
      {
        return 0;
      }
    }

    v7 = *v6;
    v5 |= (*v6 & 0x7F) << (7 * v4);
    *(this + 1) = v6 + 1;
    ++v4;
    if ((v7 & 0x80) == 0)
    {
      *a2 = v5;
      return 1;
    }
  }

  return 0;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 10);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 4) - *(this + 2));
  }
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 - v3 <= 9 && (v4 <= v3 || *(v4 - 1) < 0))
  {
    v14 = 0;
    v8 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v14);
    if (v8)
    {
      *a2 = v14;
    }
  }

  else
  {
    v5 = v3 + 1;
    v6 = *v3 & 0x7F;
    if ((*v3 & 0x80) != 0)
    {
      v7 = v3[1];
      v6 = *v3 & 0x7F | ((v7 & 0x7F) << 7);
      if (v7 < 0)
      {
        v9 = v3[2];
        v6 = v6 & 0xFFE03FFF | ((v9 & 0x7F) << 14);
        if (v9 < 0)
        {
          v10 = v3[3];
          v6 = v6 & 0xF01FFFFF | ((v10 & 0x7F) << 21);
          if (v10 < 0)
          {
            v11 = v3[4];
            v6 |= v11 << 28;
            if (v11 < 0)
            {
              v5 = v3 + 6;
              v13 = 5;
              while (*(v5 - 1) < 0)
              {
                v8 = 0;
                ++v5;
                if (!--v13)
                {
                  return v8;
                }
              }
            }

            else
            {
              v5 = v3 + 5;
            }
          }

          else
          {
            v5 = v3 + 4;
          }
        }

        else
        {
          v5 = v3 + 3;
        }
      }

      else
      {
        v5 = v3 + 2;
      }
    }

    *a2 = v6;
    *(this + 1) = v5;
    return 1;
  }

  return v8;
}

BOOL wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadStringFallback(wireless_diagnostics::google::protobuf::io::CodedInputStream *a1, std::string *this, int a3)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  while (1)
  {
    v6 = a3;
    v7 = *(a1 + 1);
    v8 = *(a1 + 2) - v7;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    if (v8)
    {
      v10 = v8;
      std::string::append(this, v7, v8);
      v7 = *(a1 + 1);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 1) = &v7[v10];
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(a1) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  std::string::append(this, v7, v6);
  *(a1 + 1) += v6;
  return v6 <= v8;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::GetDirectBufferPointer(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, const void **a2, int *a3)
{
  v6 = *(this + 1);
  if (*(this + 4) == v6)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(this);
    if (!result)
    {
      return result;
    }

    v6 = *(this + 1);
  }

  *a2 = v6;
  *a3 = *(this + 4) - *(this + 2);
  return 1;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = *(this + 1);
  v4 = (this + 8);
  v6 = *(this + 2) - v5;
  v7 = __OFSUB__(a2, v6);
  v8 = a2 - v6;
  if ((v8 < 0) ^ v7 | (v8 == 0))
  {
    *v4 = v5 + a2;
    return 1;
  }

  if (*(this + 11) >= 1)
  {
    result = 0;
    *v4 = v5 + v6;
    return result;
  }

  *v4 = 0;
  *(this + 2) = 0;
  v10 = *(this + 10);
  if (*(this + 12) < v10)
  {
    v10 = *(this + 12);
  }

  v11 = *(this + 6);
  v12 = (v10 - v11);
  if (v12 < v8)
  {
    if (v12 >= 1)
    {
      *(this + 6) = v10;
      (*(**this + 32))(*this, v12);
      return 0;
    }

    return 0;
  }

  *(this + 6) = v11 + v8;
  v13 = *(**this + 32);

  return v13();
}

BOOL wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = __n;
  v4 = this;
  if (*(a1 + 16) - *(a1 + 8) >= __n)
  {
    std::string::resize(this, __n, 0);
    if (!v3)
    {
      return 1;
    }

    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v4->__r_.__value_.__l.__size_)
      {
LABEL_13:
        v4 = 0;
        goto LABEL_14;
      }

      v4 = v4->__r_.__value_.__r.__words[0];
    }

    else if (!*(&v4->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

LABEL_14:
    memcpy(v4, *(a1 + 8), v3);
    *(a1 + 8) += v3;
    return 1;
  }

  return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadStringFallback(a1, this, __n);
}

BOOL wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  if (((*(this + 4) - v3) & 0xFFFFFFFC) != 0)
  {
    *(this + 1) = v3 + 1;
  }

  else
  {
    v3 = __dst;
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, __dst, 4);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagSlow(wireless_diagnostics::google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
LABEL_4:
    v7 = 0;
    if (v2 >= v3 || (result = *v2, (result & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v7);
      if (result)
      {
        return v7;
      }
    }

    else
    {
      *(this + 1) = v2 + 1;
    }

    return result;
  }

  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(this))
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    goto LABEL_4;
  }

  v5 = *(this + 12);
  result = 0;
  v6 = *(this + 6) - *(this + 11) < v5 || *(this + 10) == v5;
  *(this + 36) = v6;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes(int a1, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, (8 * a1) | 2);
  v5 = *(a2 + 23);
  if (v5 < 0 && *(a2 + 8) >> 31)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/wire_format_lite.cc", 292);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: value.size() <= kint32max: ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    LOBYTE(v5) = *(a2 + 23);
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, v7);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRaw(this, v9, v10);
}

void sub_23349B71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(wireless_diagnostics::google::protobuf::io::FileInputStream *this)
{
  *this = &unk_2848CFA48;
  v2 = (this + 8);
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v2);

  wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream::~ZeroCopyInputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(this);

  JUMPOUT(0x23839FAC0);
}

BOOL wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes(uint64_t a1, std::string *this)
{
  v10 = 0;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 < v4)
  {
    v6 = *v5;
    if ((v6 & 0x80000000) == 0)
    {
      v10 = *v5;
      v7 = v5 + 1;
      *(a1 + 8) = v7;
      goto LABEL_7;
    }
  }

  v8 = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a1, &v10);
  result = 0;
  if (v8)
  {
    v6 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      v7 = *(a1 + 8);
      v4 = *(a1 + 16);
LABEL_7:
      if (v6 > v4 - v7)
      {
        return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadStringFallback(a1, this, v6);
      }

      std::string::resize(this, v6, 0);
      if (!v6)
      {
        return 1;
      }

      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        if (!this->__r_.__value_.__l.__size_)
        {
LABEL_15:
          this = 0;
          goto LABEL_16;
        }

        this = this->__r_.__value_.__r.__words[0];
      }

      else if (!*(&this->__r_.__value_.__s + 23))
      {
        goto LABEL_15;
      }

LABEL_16:
      memcpy(this, *(a1 + 8), v6);
      *(a1 + 8) += v6;
      return 1;
    }
  }

  return result;
}

void wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  *this = &unk_2848CF848;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x23839FAA0](v3, 0x1000C8077774924);
  }

  wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream::~ZeroCopyInputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(this);

  JUMPOUT(0x23839FAC0);
}

void wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  *this = &unk_2848CFA88;
  if (*(this + 12) == 1 && !wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(this))
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/io/zero_copy_stream_impl.cc", 118);
    v2 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v6, "close() failed: ");
    v3 = strerror(*(this + 4));
    v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v2, v3);
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v5, v4);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  wireless_diagnostics::google::protobuf::io::CopyingInputStream::~CopyingInputStream(this);
}

{
  wireless_diagnostics::google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(this);

  JUMPOUT(0x23839FAC0);
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::ParseFromCodedStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  (*(*this + 32))(this);
  result = (*(*this + 64))(this, a2);
  if (result)
  {
    if ((*(*this + 40))(this))
    {
      return 1;
    }

    else
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v8, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/message_lite.cc", 124);
      v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v8, &__p);
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v6, v5);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
      return 0;
    }
  }

  return result;
}

void sub_23349BB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, a2);
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::SerializePartialToCodedStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(*this + 72))(this);
  v5 = v4;
  v6 = *(a2 + 4);
  if (v6 >= v4)
  {
    v7 = *(a2 + 1);
    *(a2 + 1) = v7 + v4;
    *(a2 + 4) = v6 - v4;
    if (v7)
    {
      v8 = (*(*this + 88))(this, v7);
      v9 = v8 - v7;
      if (v8 - v7 != v5)
      {
        v10 = (*(*this + 72))(this);
      }

      return 1;
    }

    v6 -= v4;
  }

  v12 = *(a2 + 5);
  (*(*this + 80))(this, a2);
  v13 = *(a2 + 24);
  if ((v13 & 1) == 0)
  {
    v14 = *(a2 + 5) - *(a2 + 4) + v6 - v12;
    if (v14 != v5)
    {
      v15 = (*(*this + 72))(this);
    }
  }

  return v13 ^ 1u;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::ParseFromString(wireless_diagnostics::google::protobuf::_anonymous_namespace_ *a1, uint64_t *a2)
{
  LODWORD(v3) = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v8[0] = 0;
  v8[1] = v4;
  v8[2] = v4 + v3;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  v12 = v3;
  v13 = xmmword_2334AA590;
  v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v15 = 0;
  v16 = 0;
  (*(*a1 + 32))(a1);
  if (!(*(*a1 + 64))(a1, v8))
  {
    goto LABEL_12;
  }

  if (((*(*a1 + 40))(a1) & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v19, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/message_lite.cc", 124);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v19, &__p);
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v17, v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = v11;
LABEL_13:
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v8);
  return v5 & 1;
}

void sub_23349BEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage((v25 - 64));
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a9);
  _Unwind_Resume(a1);
}

void *wireless_diagnostics::google::protobuf::internal::ExtensionSet::MergeFrom(void *this, const wireless_diagnostics::google::protobuf::internal::ExtensionSet **a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != (a2 + 1))
  {
    v4 = this;
    while (*(v3 + 49) != 1)
    {
      if ((*(v3 + 50) & 1) == 0)
      {
        v13 = *(v3 + 48);
        v14 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v13];
        if (v14 > 5)
        {
          if (v14 <= 7)
          {
            if (v14 == 6)
            {
              v50 = *(v3 + 8);
              v51 = *(v3 + 10);
              v52 = *(v3 + 7);
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v68 = v50;
              this = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(v4, &v68);
              this[7] = v52;
              if (v53)
              {
                *(this + 48) = v13;
                *(this + 49) = 0;
              }

              *(this + 50) &= 0xF0u;
              *(this + 10) = v51;
            }

            else
            {
              this = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetBool(v4, *(v3 + 8), *(v3 + 48), *(v3 + 40), *(v3 + 7));
            }

            goto LABEL_80;
          }

          switch(v14)
          {
            case 8:
LABEL_62:
              v43 = *(v3 + 8);
              v44 = *(v3 + 10);
              v45 = *(v3 + 7);
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v68 = v43;
              this = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(v4, &v68);
              this[7] = v45;
              if (v46)
              {
                *(this + 48) = v13;
                *(this + 49) = 0;
              }

              *(this + 50) &= 0xF0u;
              *(this + 10) = v44;
              break;
            case 9:
              v54 = *(v3 + 5);
              v55 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableString(v4, *(v3 + 8), *(v3 + 48), *(v3 + 7));
              this = std::string::operator=(v55, v54);
              break;
            case 10:
              v26 = *(v3 + 8);
              v27 = *(v3 + 7);
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v68 = v26;
              v28 = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(v4, &v68);
              v29 = v28;
              v28[7] = v27;
              if (v30)
              {
                *(v28 + 48) = *(v3 + 48);
                *(v28 + 51) = *(v3 + 51);
                *(v28 + 49) = 0;
                v31 = *(v28 + 50) & 0xF;
                if ((*(v3 + 50) & 0x10) == 0)
                {
                  *(v28 + 50) = v31;
                  v32 = (*(**(v3 + 5) + 24))(*(v3 + 5));
                  v29[5] = v32;
                  goto LABEL_105;
                }

                *(v28 + 50) = v31 | 0x10;
                v67 = (*(**(v3 + 5) + 16))(*(v3 + 5));
                v29[5] = v67;
                this = (*(*v67 + 80))(v67, *(v3 + 5));
LABEL_111:
                *(v29 + 50) &= 0xF0u;
                break;
              }

              v63 = *(v28 + 50);
              v64 = v28[5];
              v65 = *(v3 + 5);
              if ((*(v3 + 50) & 0x10) != 0)
              {
                if ((*(v28 + 50) & 0x10) != 0)
                {
                  this = (*(*v64 + 80))(v28[5], v65);
                  goto LABEL_111;
                }

                v65 = (*(*v65 + 24))(*(v3 + 5), v28[5]);
                v66 = *v64;
              }

              else
              {
                v66 = *v64;
                if ((*(v28 + 50) & 0x10) != 0)
                {
                  v32 = (*(v66 + 32))(v28[5], v65);
LABEL_105:
                  this = (*(*v32 + 56))(v32, *(v3 + 5));
                  goto LABEL_111;
                }
              }

              this = (*(v66 + 56))(v64, v65);
              goto LABEL_111;
          }
        }

        else if (v14 <= 2)
        {
          if (v14 == 1)
          {
            goto LABEL_62;
          }

          if (v14 == 2)
          {
LABEL_59:
            v39 = *(v3 + 8);
            v40 = *(v3 + 5);
            v41 = *(v3 + 7);
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v68 = v39;
            this = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(v4, &v68);
            this[7] = v41;
            if (v42)
            {
              *(this + 48) = v13;
              *(this + 49) = 0;
            }

            *(this + 50) &= 0xF0u;
            this[5] = v40;
          }
        }

        else
        {
          if (v14 == 3)
          {
            goto LABEL_62;
          }

          if (v14 == 4)
          {
            goto LABEL_59;
          }

          v15 = *(v3 + 8);
          v16 = *(v3 + 5);
          v17 = *(v3 + 7);
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v68 = v15;
          this = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(v4, &v68);
          this[7] = v17;
          if (v18)
          {
            *(this + 48) = v13;
            *(this + 49) = 0;
          }

          *(this + 50) &= 0xF0u;
          this[5] = v16;
        }
      }

LABEL_80:
      v47 = *(v3 + 1);
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = *(v3 + 2);
          v49 = *v48 == v3;
          v3 = v48;
        }

        while (!v49);
      }

      v3 = v48;
      if (v48 == v2)
      {
        return this;
      }
    }

    v5 = *(v3 + 8);
    v6 = *(v3 + 7);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v68 = v5;
    this = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(v4, &v68);
    v8 = this;
    this[7] = v6;
    v9 = *(v3 + 48);
    if (v7)
    {
      *(this + 48) = v9;
      *(this + 51) = *(v3 + 51);
      *(this + 49) = 1;
    }

    v10 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9];
    if (v10 > 5)
    {
      if (v10 <= 7)
      {
        if (v10 != 6)
        {
          if (v7)
          {
            operator new();
          }

          v11 = *(v3 + 5);
          v33 = *(v11 + 8);
          if (!v33)
          {
            goto LABEL_80;
          }

          v34 = this[5];
          wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(v34, *(v34 + 8) + v33);
          v35 = *v11;
          v36 = *(v11 + 8);
          v37 = (*v34 + *(v34 + 8));
          goto LABEL_79;
        }

        if (v7)
        {
          operator new();
        }

        v11 = *(v3 + 5);
        v38 = *(v11 + 8);
        if (!v38)
        {
          goto LABEL_80;
        }

        goto LABEL_74;
      }

      if (v10 != 8)
      {
        if (v10 == 9)
        {
          if (v7)
          {
            operator new();
          }

          v56 = this[5];
          v57 = *(v3 + 5);
          this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v56, *(v57 + 8) + *(v56 + 8));
          if (*(v57 + 8) >= 1)
          {
            v58 = 0;
            do
            {
              v59 = *(*v57 + 8 * v58);
              v60 = *(v56 + 12);
              v61 = *(v56 + 8);
              if (v61 >= v60)
              {
                if (v60 == *(v56 + 16))
                {
                  this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v56, v60 + 1);
                  v60 = *(v56 + 12);
                }

                *(v56 + 12) = v60 + 1;
                wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
              }

              v62 = *v56;
              *(v56 + 8) = v61 + 1;
              this = std::string::operator=(*(v62 + 8 * v61), v59);
              ++v58;
            }

            while (v58 < *(v57 + 8));
          }
        }

        else if (v10 == 10)
        {
          if (v7)
          {
            operator new();
          }

          v19 = *(v3 + 5);
          if (*(v19 + 8) >= 1)
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 8 * v20);
              v22 = *(v8 + 5);
              v23 = *(v22 + 2);
              if (v23 >= *(v22 + 3) || (v24 = *v22, *(v22 + 2) = v23 + 1, (v25 = *(v24 + 8 * v23)) == 0))
              {
                v25 = (*(*v21 + 24))(v21);
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::MessageLite>::TypeHandler>(*(v8 + 5), v25);
              }

              this = (*(*v25 + 56))(v25, v21);
              ++v20;
            }

            while (v20 < *(v19 + 8));
          }
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (v10 > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            if (v7)
            {
              operator new();
            }

            v11 = *(v3 + 5);
            v12 = *(v11 + 8);
            if (!v12)
            {
              goto LABEL_80;
            }
          }

          else
          {
            if (v7)
            {
              operator new();
            }

            v11 = *(v3 + 5);
            v12 = *(v11 + 8);
            if (!v12)
            {
              goto LABEL_80;
            }
          }

          goto LABEL_78;
        }

        if (v7)
        {
          operator new();
        }

        v11 = *(v3 + 5);
        v38 = *(v11 + 8);
        if (!v38)
        {
          goto LABEL_80;
        }

LABEL_74:
        v34 = this[5];
        wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v34, *(v34 + 8) + v38);
        v37 = (*v34 + 4 * *(v34 + 8));
        v35 = *v11;
        v36 = 4 * *(v11 + 8);
LABEL_79:
        this = memcpy(v37, v35, v36);
        *(v34 + 8) += *(v11 + 8);
        goto LABEL_80;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_80;
        }

        if (v7)
        {
          operator new();
        }

        v11 = *(v3 + 5);
        v12 = *(v11 + 8);
        if (!v12)
        {
          goto LABEL_80;
        }

LABEL_78:
        v34 = this[5];
        wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(v34, *(v34 + 8) + v12);
        v37 = (*v34 + 8 * *(v34 + 8));
        v35 = *v11;
        v36 = 8 * *(v11 + 8);
        goto LABEL_79;
      }
    }

    if (v7)
    {
      operator new();
    }

    v11 = *(v3 + 5);
    v38 = *(v11 + 8);
    if (!v38)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::IsInitialized(wireless_diagnostics::google::protobuf::internal::ExtensionSet **this)
{
  v1 = this + 1;
  v2 = *this;
  if (*this == (this + 1))
  {
    return 1;
  }

  while (1)
  {
    if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(v2 + 48)] != 10)
    {
      goto LABEL_14;
    }

    if (*(v2 + 49) == 1)
    {
      break;
    }

    if ((*(v2 + 50) & 1) == 0)
    {
      v5 = **(v2 + 5);
      if ((*(v2 + 50) & 0x10) != 0)
      {
        if (((*(v5 + 56))() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = (*(v5 + 40))();
        if (!result)
        {
          return result;
        }
      }
    }

LABEL_14:
    v7 = *(v2 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v2 + 2);
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }

    v2 = v8;
    if (v8 == v1)
    {
      return 1;
    }
  }

  v3 = *(v2 + 5);
  if (*(v3 + 8) < 1)
  {
    goto LABEL_14;
  }

  v4 = 0;
  while (((*(**(*v3 + 8 * v4) + 40))(*(*v3 + 8 * v4)) & 1) != 0)
  {
    ++v4;
    v3 = *(v2 + 5);
    if (v4 >= *(v3 + 8))
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * this) | 1);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, a2);
}

uint64_t wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, const void *a2, void *__dst, unsigned __int8 *a4)
{
  v5 = a2;
  memcpy(__dst, this, a2);
  return __dst + v5;
}

_BYTE *wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(unint64_t this, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = this >> 28;
  if (HIBYTE(this))
  {
    if ((this & 0x8000000000000000) != 0)
    {
      a2[9] = -127;
      v4 = 10;
    }

    else
    {
      v4 = 9;
    }

    a2[8] = HIBYTE(this) | 0x80;
    goto LABEL_13;
  }

  if (v3)
  {
    if (!(v3 >> 14))
    {
      if (v3 < 0x80)
      {
        v4 = 5;
LABEL_16:
        a2[4] = v3 | 0x80;
        goto LABEL_17;
      }

      v4 = 6;
LABEL_15:
      a2[5] = (this >> 35) | 0x80;
      goto LABEL_16;
    }

    if (v3 < 0x200000)
    {
      v4 = 7;
      goto LABEL_14;
    }

    v4 = 8;
LABEL_13:
    a2[7] = (this >> 49) | 0x80;
LABEL_14:
    a2[6] = (this >> 42) | 0x80;
    goto LABEL_15;
  }

  if (this >> 14)
  {
    if (this < 0x200000)
    {
      v4 = 3;
      goto LABEL_18;
    }

    v4 = 4;
LABEL_17:
    a2[3] = (this >> 21) | 0x80;
LABEL_18:
    a2[2] = (this >> 14) | 0x80;
LABEL_19:
    a2[1] = (this >> 7) | 0x80;
    goto LABEL_20;
  }

  if (this >= 0x80)
  {
    v4 = 2;
    goto LABEL_19;
  }

  v4 = 1;
LABEL_20:
  *a2 = this | 0x80;
  result = &a2[v4];
  a2[v4 - 1] &= ~0x80u;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, 8 * this);

  return wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (2 * a2) ^ (a2 >> 31));
}

uint64_t wireless_diagnostics::google::protobuf::internal::GeneratedExtensionFinder::Find(uint64_t a1, int a2, _OWORD *a3)
{
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = a2;
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 3);
  *a3 = *(v4 + 2);
  a3[1] = v5;
  return 1;
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterExtension(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, const wireless_diagnostics::google::protobuf::MessageLite *a2, int a3, std::string::value_type a4, std::string::value_type a5)
{
  v7 = a3;
  v8 = a2;
  switch(a3)
  {
    case 14:
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 116);
      v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_ENUM): ");
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v13, v10);
LABEL_7:
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v14.__r_.__value_.__l.__data_);
      break;
    case 11:
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 117);
      v11 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_MESSAGE): ");
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v13, v11);
      goto LABEL_7;
    case 10:
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 118);
      v12 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_GROUP): ");
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v13, v12);
      goto LABEL_7;
  }

  v14.__r_.__value_.__s.__data_[0] = v7;
  v14.__r_.__value_.__s.__data_[1] = a4;
  v14.__r_.__value_.__s.__data_[2] = a5;
  v15 = 0;
}

void sub_23349CF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::anonymous namespace::Register(void *a1, int a2, __int128 *a3)
{
  __dmb(0xBu);
  if (v6 != 2)
  {
    v17 = &unk_2848CFE18;
    LOBYTE(v19) = 0;
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(&v17);
  }

  v17 = a1;
  LODWORD(v18) = a2;
  v7 = a3[1];
  v19 = *a3;
  v20 = v7;
  if ((v8 & 1) == 0)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 86);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(&v17, "Multiple extension registrations for type ");
    (*(*a1 + 16))(__p, a1);
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, __p);
    v11 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, ", field number ");
    v12 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, a2);
    v13 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, ".");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v14, v13);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v17);
  }
}

void sub_23349D0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterEnumExtension(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, const wireless_diagnostics::google::protobuf::MessageLite *a2, int a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, BOOL (*a7)(int))
{
  v10 = a3;
  v11 = a2;
  if (a3 != 14)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 140);
    v13 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: (type) == (WireFormatLite::TYPE_ENUM): ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v14, v13);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = v10;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = wireless_diagnostics::google::protobuf::internal::CallNoArgValidityFunc;
  v15.__r_.__value_.__r.__words[2] = a6;
  v16 = 0;
}

void sub_23349D1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::RegisterMessageExtension(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, const wireless_diagnostics::google::protobuf::MessageLite *a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, const wireless_diagnostics::google::protobuf::MessageLite *a7)
{
  v11 = a2;
  if ((a3 & 0xFE) != 0xA)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 153);
    v13 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP: ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v14, v13);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = a3;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = a6;
  v16 = 0;
}

void sub_23349D2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::Free(int *this)
{
  v1 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (*(this + 9) == 1)
  {
    if (v1 <= 5)
    {
      if (v1 <= 2)
      {
        if (v1 != 1)
        {
          if (v1 != 2)
          {
            return this;
          }

LABEL_28:
          if (!*this)
          {
            return this;
          }

          if (!**this)
          {
            goto LABEL_49;
          }

          goto LABEL_37;
        }
      }

      else if (v1 != 3)
      {
        if (v1 != 4)
        {
          if (*this)
          {
            if (!**this)
            {
              goto LABEL_49;
            }

LABEL_45:
            MEMORY[0x23839FAA0]();
            goto LABEL_49;
          }

          return this;
        }

        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (v1 > 7)
    {
      if (v1 != 8)
      {
        if (v1 == 9)
        {
          if (*this)
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(*this);
            goto LABEL_49;
          }
        }

        else if (v1 == 10 && *this)
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::MessageLite>::TypeHandler>(*this);
          goto LABEL_49;
        }

        return this;
      }

LABEL_31:
      if (!*this)
      {
        return this;
      }

      if (!**this)
      {
        goto LABEL_49;
      }

      goto LABEL_37;
    }

    if (v1 != 6)
    {
      if (!*this)
      {
        return this;
      }

      if (!**this)
      {
        goto LABEL_49;
      }

LABEL_37:
      MEMORY[0x23839FAA0]();
      goto LABEL_49;
    }

    if (*this)
    {
      if (!**this)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (v1 == 10)
    {
      v3 = *(this + 10);
      this = *this;
      if ((v3 & 0x10) != 0)
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      else
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      return v4();
    }

    if (v1 == 9)
    {
      v2 = *this;
      if (*this)
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

LABEL_49:

        JUMPOUT(0x23839FAC0);
      }
    }
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::Has(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 8) <= a2)
  {
    v6 = v5[50] ^ 1;
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::NumExtensions(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this)
{
  v3 = *this;
  v1 = this + 8;
  v2 = v3;
  if (v3 == v1)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  do
  {
    v5 = *(v2 + 1);
    v6 = v2;
    if (v5)
    {
      do
      {
        v7 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v7 = *(v6 + 2);
        v8 = *v7 == v6;
        v6 = v7;
      }

      while (!v8);
    }

    v4 = v4 + ((v2[50] & 1) == 0);
    v2 = v7;
  }

  while (v7 != v1);
  return v4;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSize(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 8) <= a2)
  {
    return wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::GetSize((v5 + 40));
  }

  else
  {
    return 0;
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::GetSize(wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension *this)
{
  v1 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (v1 > 5)
  {
    if (v1 <= 10)
    {
      return *(*this + 8);
    }
  }

  else if (v1 > 2 || v1 == 1 || v1 == 2)
  {
    return *(*this + 8);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 1415);
  v3 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v5, "Can't get here.");
  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v4, v3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_23349D76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionType(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2)
{
  v4 = *(this + 1);
  v2 = this + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 8) <= a2)
  {
    if (v5[50])
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 208);
      v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "Don't lookup extension types if they aren't present (2). ");
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v8);
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    return v5[48];
  }

  else
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v10, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 204);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v10, "Don't lookup extension types if they aren't present (1). ");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v9, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    return 0;
  }
}

void sub_23349D86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *wireless_diagnostics::google::protobuf::internal::ExtensionSet::ClearExtension(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2)
{
  v4 = *(this + 1);
  result = this + 8;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2)
    {
      return wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::Clear((v5 + 40));
    }
  }

  return result;
}

unsigned __int8 *wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::Clear(unsigned __int8 *this)
{
  v1 = this;
  if (this[9] == 1)
  {
    v2 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
    if (v2 > 5)
    {
      if (v2 <= 8)
      {
LABEL_18:
        *(*this + 8) = 0;
        return this;
      }

      if (v2 == 9)
      {
        v9 = *this;

        return wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v9);
      }

      else if (v2 == 10)
      {
        v6 = *this;

        return wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::MessageLite>::TypeHandler>(v6);
      }
    }

    else if (v2 > 2 || v2 == 1 || v2 == 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v3 = this[10];
    if ((v3 & 1) == 0)
    {
      v4 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
      if (v4 == 10)
      {
        v7 = *this;
        v8 = **v1;
        if ((v3 & 0x10) != 0)
        {
          this = (*(v8 + 88))();
        }

        else
        {
          this = (*(v8 + 32))();
        }
      }

      else if (v4 == 9)
      {
        v5 = *this;
        if (*(*this + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }

      *(v1 + 10) = *(v1 + 10) & 0xF0 | 1;
    }
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetInt32(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      return *(v6 + 10);
    }
  }

  return a3;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetInt32(uint64_t a1, int a2, char a3, int a4, uint64_t a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 10) = a4;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::MaybeNewExtension(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v9 = a2;
  v6 = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v9);
  *a4 = v6 + 5;
  v6[7] = a3;
  return v7 & 1;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedInt32(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 298);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 4 * a3);
}

void sub_23349DC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetRepeatedInt32(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 298);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v11, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 4 * a3) = a4;
}

void sub_23349DD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt32(uint64_t a1, int a2, char a3, char a4, int a5, uint64_t a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = *(v12 + 8);
  if (v13 == *(v12 + 12))
  {
    result = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v12, v13 + 1);
    v13 = *(v12 + 8);
  }

  v14 = *v12;
  *(v12 + 8) = v13 + 1;
  *(v14 + 4 * v13) = a5;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetInt64(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      return *(v6 + 5);
    }
  }

  return a3;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetInt64(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  result[5] = a4;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedInt64(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 299);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_23349DF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetRepeatedInt64(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 299);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v11, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 8 * a3) = a4;
}

void sub_23349E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt64(uint64_t a1, int a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = *(v12 + 8);
  if (v13 == *(v12 + 12))
  {
    result = wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(v12, v13 + 1);
    v13 = *(v12 + 8);
  }

  v14 = *v12;
  *(v12 + 8) = v13 + 1;
  *(v14 + 8 * v13) = a5;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetUInt32(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      return *(v6 + 10);
    }
  }

  return a3;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetUInt32(uint64_t a1, int a2, char a3, int a4, uint64_t a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 10) = a4;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedUInt32(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 300);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 4 * a3);
}

void sub_23349E2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetRepeatedUInt32(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 300);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v11, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 4 * a3) = a4;
}

void sub_23349E3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddUInt32(uint64_t a1, int a2, char a3, char a4, int a5, uint64_t a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = *(v12 + 8);
  if (v13 == *(v12 + 12))
  {
    result = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v12, v13 + 1);
    v13 = *(v12 + 8);
  }

  v14 = *v12;
  *(v12 + 8) = v13 + 1;
  *(v14 + 4 * v13) = a5;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetUInt64(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      return *(v6 + 5);
    }
  }

  return a3;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetUInt64(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  result[5] = a4;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedUInt64(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 301);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_23349E604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetRepeatedUInt64(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 301);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v11, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 8 * a3) = a4;
}

void sub_23349E6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddUInt64(uint64_t a1, int a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = *(v12 + 8);
  if (v13 == *(v12 + 12))
  {
    result = wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(v12, v13 + 1);
    v13 = *(v12 + 8);
  }

  v14 = *v12;
  *(v12 + 8) = v13 + 1;
  *(v14 + 8 * v13) = a5;
  return result;
}

float wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetFloat(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, float a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[2 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (*(v6 + 50) & 1) == 0)
    {
      return v6[10];
    }
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetFloat(uint64_t a1, int a2, char a3, uint64_t a4, float a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  result[7] = a4;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 10) = a5;
  return result;
}

float wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedFloat(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 302);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 4 * a3);
}

void sub_23349E940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetRepeatedFloat(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, float a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 302);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v11, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 4 * a3) = a4;
}

void sub_23349EA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddFloat(uint64_t a1, int a2, char a3, char a4, uint64_t a5, float a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v15);
  result[7] = a5;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = *(v12 + 8);
  if (v13 == *(v12 + 12))
  {
    result = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v12, v13 + 1);
    v13 = *(v12 + 8);
  }

  v14 = *v12;
  *(v12 + 8) = v13 + 1;
  *(v14 + 4 * v13) = a6;
  return result;
}

double wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetDouble(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, double a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[*(v4 + 8) < a2];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (*(v6 + 50) & 1) == 0)
    {
      return v6[5];
    }
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetDouble(uint64_t a1, int a2, char a3, uint64_t a4, double a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  result[7] = a4;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 5) = a5;
  return result;
}

double wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedDouble(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 303);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_23349EC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetRepeatedDouble(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, double a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 303);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v11, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 8 * a3) = a4;
}

void sub_23349ED5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddDouble(uint64_t a1, int a2, char a3, char a4, uint64_t a5, double a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v15);
  result[7] = a5;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = *(v12 + 8);
  if (v13 == *(v12 + 12))
  {
    result = wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(v12, v13 + 1);
    v13 = *(v12 + 8);
  }

  v14 = *v12;
  *(v12 + 8) = v13 + 1;
  *(v14 + 8 * v13) = a6;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetBool(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, char a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      a3 = v6[40];
    }
  }

  return a3 & 1;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetBool(uint64_t a1, int a2, char a3, char a4, uint64_t a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 40) = a4;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedBool(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 304);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + a3);
}

void sub_23349EFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetRepeatedBool(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, char a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 304);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v11, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + a3) = a4;
}

void sub_23349F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddBool(uint64_t a1, int a2, char a3, char a4, char a5, uint64_t a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = *(v12 + 8);
  if (v13 == *(v12 + 12))
  {
    result = wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(v12, v13 + 1);
    v13 = *(v12 + 8);
  }

  v14 = *v12;
  *(v12 + 8) = v13 + 1;
  *(v14 + v13) = a5;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2)
{
  v4 = this + 8;
  v3 = *(this + 1);
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = this + 8;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 == v4 || *(v5 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 312);
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v6, "no extension numbered ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, a2);
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = v4;
  }

  return *(v5 + 5);
}

void sub_23349F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetEnum(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, uint64_t a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 8) >= a2)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * (*(v4 + 8) < a2)];
    }

    while (v4);
    if (v6 != v3 && *(v6 + 8) <= a2 && (v6[50] & 1) == 0)
    {
      return *(v6 + 10);
    }
  }

  return a3;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetEnum(uint64_t a1, int a2, char a3, int a4, uint64_t a5)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  result[7] = a5;
  if (v9)
  {
    *(result + 48) = a3;
    *(result + 49) = 0;
  }

  *(result + 50) &= 0xF0u;
  *(result + 10) = a4;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedEnum(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 346);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 4 * a3);
}

void sub_23349F3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetRepeatedEnum(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 353);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v11, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  *(**(v8 + 5) + 4 * a3) = a4;
}

void sub_23349F4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddEnum(uint64_t a1, int a2, char a3, char a4, int a5, uint64_t a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = a2;
  result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v15);
  result[7] = a6;
  if (v11)
  {
    *(result + 48) = a3;
    *(result + 49) = 1;
    *(result + 51) = a4;
    operator new();
  }

  v12 = result[5];
  v13 = *(v12 + 8);
  if (v13 == *(v12 + 12))
  {
    result = wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(v12, v13 + 1);
    v13 = *(v12 + 8);
  }

  v14 = *v12;
  *(v12 + 8) = v13 + 1;
  *(v14 + 4 * v13) = a5;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetString(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != v3 && *(v6 + 32) <= a2 && (*(v6 + 50) & 1) == 0)
    {
      return *(v6 + 40);
    }
  }

  return a3;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableString(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = a2;
  v6 = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v10);
  v7 = v6;
  v6[7] = a4;
  if (v8)
  {
    *(v6 + 48) = a3;
    *(v6 + 49) = 0;
    operator new();
  }

  result = v6[5];
  *(v7 + 50) &= 0xF0u;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedString(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 407);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_23349F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableRepeatedString(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 414);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_23349F80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddString(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v13 = a2;
  v6 = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v13);
  v6[7] = a4;
  if (v7)
  {
    *(v6 + 48) = a3;
    *(v6 + 49) = 1;
    *(v6 + 51) = 0;
    operator new();
  }

  v8 = v6[5];
  v9 = *(v8 + 12);
  v10 = *(v8 + 8);
  if (v10 >= v9)
  {
    if (v9 == *(v8 + 16))
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v8, v9 + 1);
      v9 = *(v8 + 12);
    }

    *(v8 + 12) = v9 + 1;
    wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v6);
  }

  v11 = *v8;
  *(v8 + 8) = v10 + 1;
  return *(v11 + 8 * v10);
}

const wireless_diagnostics::google::protobuf::MessageLite *wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetMessage(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, const wireless_diagnostics::google::protobuf::MessageLite *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (!v5)
  {
    return a3;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v3 || *(v6 + 8) > a2)
  {
    return a3;
  }

  if ((v6[50] & 0x10) == 0)
  {
    return *(v6 + 5);
  }

  return (*(**(v6 + 5) + 24))(*(v6 + 5), a3);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableMessage(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v13 = a2;
  v8 = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v13);
  v9 = v8;
  v8[7] = a5;
  if (v10)
  {
    *(v8 + 48) = a3;
    *(v8 + 49) = 0;
    *(v8 + 50) &= 0xFu;
    result = (*(*a4 + 24))(a4);
    v9[5] = result;
    *(v9 + 50) &= 0xF0u;
  }

  else
  {
    v12 = *(v8 + 50);
    *(v8 + 50) = v12 & 0xF0;
    result = v8[5];
    if ((v12 & 0x10) != 0)
    {
      return (*(*result + 32))(result, a4);
    }
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetAllocatedMessage(wireless_diagnostics::google::protobuf::internal::ExtensionSet *a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v13 = a2;
    result = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v13);
    v10 = result;
    result[7] = a4;
    if (v11)
    {
      *(result + 48) = a3;
      *(result + 49) = 0;
      *(result + 50) &= 0xFu;
    }

    else
    {
      v12 = *(result + 50);
      result = result[5];
      if ((v12 & 0x10) != 0)
      {
        result = (*(*result + 40))(result, a5);
        goto LABEL_12;
      }

      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    v10[5] = a5;
LABEL_12:
    *(v10 + 50) &= 0xF0u;
    return result;
  }

  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::ClearExtension(a1, a2);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::ReleaseMessage(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, const wireless_diagnostics::google::protobuf::MessageLite *a3)
{
  v9 = a2;
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  v5 = this + 8;
  do
  {
    if (*(v3 + 8) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 8) < a2)];
  }

  while (v3);
  if (v5 == this + 8 || *(v5 + 8) > a2)
  {
    return 0;
  }

  v6 = *(v5 + 5);
  if ((v5[50] & 0x10) != 0)
  {
    v6 = (*(*v6 + 48))(*(v5 + 5), a3);
    v8 = *(v5 + 5);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__erase_unique<int>(this, &v9);
  return v6;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::GetRepeatedMessage(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 539);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_23349FD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableRepeatedMessage(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v5 = this + 8;
  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = this + 8;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * (*(v4 + 8) < a2)];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 546);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: iter != extensions_.end(): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = v5;
  }

  return *(**(v6 + 5) + 8 * a3);
}

void sub_23349FDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddMessage(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = a2;
  v8 = std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(a1, &v16);
  v9 = v8;
  v8[7] = a5;
  if (v10)
  {
    *(v8 + 48) = a3;
    *(v8 + 49) = 1;
    operator new();
  }

  v11 = v8[5];
  v12 = *(v11 + 8);
  if (v12 >= *(v11 + 12) || (v13 = *v11, *(v11 + 8) = v12 + 1, (v14 = *(v13 + 8 * v12)) == 0))
  {
    v14 = (*(*a4 + 24))(a4);
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::MessageLite>::TypeHandler>(v9[5], v14);
  }

  return v14;
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::RemoveLast(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2)
{
  v3 = this + 8;
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = this + 8;
  do
  {
    if (*(v2 + 8) >= a2)
    {
      v4 = v2;
    }

    v2 = *&v2[8 * (*(v2 + 8) < a2)];
  }

  while (v2);
  if (v4 == v3 || *(v4 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 585);
    v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: iter != extensions_.end(): ");
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v15, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    v4 = v3;
  }

  v7 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v4[48]];
  if (v7 > 5)
  {
    if (v7 <= 8)
    {
LABEL_18:
      --*(*(v4 + 5) + 8);
      return;
    }

    if (v7 == 9)
    {
      v11 = *(v4 + 5);
      v12 = *v11;
      v13 = *(v11 + 2) - 1;
      *(v11 + 2) = v13;
      v14 = *(v12 + 8 * v13);
      if (*(v14 + 23) < 0)
      {
        **v14 = 0;
        *(v14 + 8) = 0;
      }

      else
      {
        *v14 = 0;
        *(v14 + 23) = 0;
      }
    }

    else if (v7 == 10)
    {
      v8 = *(v4 + 5);
      v9 = *v8;
      v10 = *(v8 + 2) - 1;
      *(v8 + 2) = v10;
      (*(**(v9 + 8 * v10) + 32))(*(v9 + 8 * v10));
    }
  }

  else if (v7 > 2 || v7 == 1 || v7 == 2)
  {
    goto LABEL_18;
  }
}

void sub_2334A00B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::ReleaseLast(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2)
{
  v3 = this + 8;
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = this + 8;
  do
  {
    if (*(v2 + 8) >= a2)
    {
      v4 = v2;
    }

    v2 = *&v2[8 * (*(v2 + 8) < a2)];
  }

  while (v2);
  if (v4 == v3 || *(v4 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 626);
    v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: iter != extensions_.end(): ");
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v4 = v3;
  }

  v7 = *(v4 + 5);
  v8 = *v7;
  v9 = *(v7 + 3);
  v10 = *(v7 + 2);
  result = *(*v7 + 8 * (v10 - 1));
  *(v7 + 2) = v10 - 1;
  *(v7 + 3) = v9 - 1;
  if (v10 < v9)
  {
    *(v8 + 8 * (v10 - 1)) = *(v8 + 8 * (v9 - 1));
  }

  return result;
}

void sub_2334A01AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float wireless_diagnostics::google::protobuf::internal::ExtensionSet::SwapElements(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, int a2, int a3, int a4)
{
  v7 = this + 8;
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = this + 8;
  do
  {
    if (*(v6 + 8) >= a2)
    {
      v8 = v6;
    }

    v6 = *&v6[8 * (*(v6 + 8) < a2)];
  }

  while (v6);
  if (v8 == v7 || *(v8 + 8) > a2)
  {
LABEL_8:
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 636);
    v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: iter != extensions_.end(): ");
    v10 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v9, "Index out-of-bounds (field is empty).");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v21, v10);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    v8 = v7;
  }

  v12 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8[48]];
  if (v12 <= 5)
  {
    if (v12 <= 2)
    {
      if (v12 != 1)
      {
        if (v12 != 2)
        {
          return *&v11;
        }

        goto LABEL_21;
      }
    }

    else if (v12 != 3)
    {
      if (v12 != 4)
      {
        v13 = **(v8 + 5);
        v11 = *(v13 + 8 * a3);
        *(v13 + 8 * a3) = *(v13 + 8 * a4);
        *(v13 + 8 * a4) = v11;
        return *&v11;
      }

LABEL_21:
      v14 = **(v8 + 5);
      v15 = *(v14 + 8 * a3);
      *(v14 + 8 * a3) = *(v14 + 8 * a4);
      *(v14 + 8 * a4) = v15;
      return *&v11;
    }

LABEL_22:
    v16 = **(v8 + 5);
    v17 = *(v16 + 4 * a3);
    *(v16 + 4 * a3) = *(v16 + 4 * a4);
    *(v16 + 4 * a4) = v17;
    return *&v11;
  }

  if (v12 <= 7)
  {
    v18 = **(v8 + 5);
    if (v12 == 6)
    {
      LODWORD(v11) = *(v18 + 4 * a3);
      *(v18 + 4 * a3) = *(v18 + 4 * a4);
      *(v18 + 4 * a4) = v11;
    }

    else
    {
      v19 = *(v18 + a3);
      *(v18 + a3) = *(v18 + a4);
      *(v18 + a4) = v19;
    }
  }

  else
  {
    if (v12 == 8)
    {
      goto LABEL_22;
    }

    if (v12 == 9 || v12 == 10)
    {
      goto LABEL_21;
    }
  }

  return *&v11;
}

void sub_2334A0384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *wireless_diagnostics::google::protobuf::internal::ExtensionSet::Clear(unsigned __int8 *this)
{
  v1 = this + 8;
  v2 = *this;
  if (*this != this + 8)
  {
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::Clear(v2 + 40);
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::FindExtensionInfoFromTag(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4, unsigned __int8 *a5)
{
  v6 = a2;
  *a4 = a2 >> 3;
  if ((*(*a3 + 16))(a3))
  {
    v7 = v6 & 7;
    if (a5[2] == 1)
    {
      v8 = v7 == 2;
    }

    else
    {
      v8 = v7 == wireless_diagnostics::google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[*a5];
    }

    v9 = !v8;
  }

  else
  {
    v9 = 1;
  }

  return v9 ^ 1u;
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *a3, wireless_diagnostics::google::protobuf::internal::ExtensionFinder *a4, wireless_diagnostics::google::protobuf::internal::FieldSkipper *a5)
{
  v9 = a2 >> 3;
  if (!(*(*a4 + 16))(a4, v9, v12))
  {
    return (*(*a5 + 16))(a5, a3, a2);
  }

  v10 = a2 & 7;
  if (v12[2] == 1)
  {
    if (v10 != 2)
    {
      return (*(*a5 + 16))(a5, a3, a2);
    }
  }

  else if (v10 != wireless_diagnostics::google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[v12[0]])
  {
    return (*(*a5 + 16))(a5, a3, a2);
  }

  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(this, v9, v12, a3, a5);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(uint64_t a1, uint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a5)
{
  if (*(a3 + 2) != 1)
  {
    switch(*a3)
    {
      case 1:
        v90[0].__r_.__value_.__r.__words[0] = 0;
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v90);
        if (!result)
        {
          return result;
        }

        if (*(a3 + 1) == 1)
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddDouble(a1, a2, 1, 0, *(a3 + 24), *&v90[0].__r_.__value_.__l.__data_);
        }

        else
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetDouble(a1, a2, 1, *(a3 + 24), *&v90[0].__r_.__value_.__l.__data_);
        }

        return 1;
      case 2:
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v90);
        if (!result)
        {
          return result;
        }

        if (*(a3 + 1) == 1)
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddFloat(a1, a2, 2, 0, *(a3 + 24), *&v90[0].__r_.__value_.__l.__data_);
        }

        else
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetFloat(a1, a2, 2, *(a3 + 24), *&v90[0].__r_.__value_.__l.__data_);
        }

        return 1;
      case 3:
        v90[0].__r_.__value_.__r.__words[0] = 0;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || (v30 = *v29, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v90);
          if (!result)
          {
            return result;
          }

          v30 = v90[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          *(this + 1) = v29 + 1;
        }

        v31 = *(a3 + 1);
        v32 = *(a3 + 24);
        v33 = a1;
        v34 = a2;
        v35 = 3;
        goto LABEL_195;
      case 4:
        v90[0].__r_.__value_.__r.__words[0] = 0;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || (*v36 & 0x8000000000000000) != 0)
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v90);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v90[0].__r_.__value_.__r.__words[0] = *v36;
          *(this + 1) = v36 + 1;
        }

        v41 = *(a3 + 1);
        v42 = v90[0].__r_.__value_.__r.__words[0];
        v43 = *(a3 + 24);
        v44 = a1;
        v45 = a2;
        v46 = 4;
LABEL_184:
        if (v41 == 1)
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddUInt64(v44, v45, v46, 0, v42, v43);
        }

        else
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetUInt64(v44, v45, v46, v42, v43);
        }

        return 1;
      case 5:
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || (data = *v24, data < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90);
          if (!result)
          {
            return result;
          }

          data = v90[0].__r_.__value_.__l.__data_;
        }

        else
        {
          *(this + 1) = v24 + 1;
        }

        v17 = *(a3 + 1);
        v18 = *(a3 + 24);
        v19 = a1;
        v20 = a2;
        v21 = 5;
        goto LABEL_171;
      case 6:
        v90[0].__r_.__value_.__r.__words[0] = 0;
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v90);
        if (!result)
        {
          return result;
        }

        v41 = *(a3 + 1);
        v42 = v90[0].__r_.__value_.__r.__words[0];
        v43 = *(a3 + 24);
        v44 = a1;
        v45 = a2;
        v46 = 6;
        goto LABEL_184;
      case 7:
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v90);
        if (!result)
        {
          return result;
        }

        v50 = *(a3 + 1);
        v51 = v90[0].__r_.__value_.__l.__data_;
        v52 = *(a3 + 24);
        v53 = a1;
        v54 = a2;
        v55 = 7;
        goto LABEL_176;
      case 8:
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || (v38 = *v37, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90);
          if (!result)
          {
            return result;
          }

          v38 = v90[0].__r_.__value_.__l.__data_;
        }

        else
        {
          *(this + 1) = v37 + 1;
        }

        if (*(a3 + 1) == 1)
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddBool(a1, a2, 8, 0, v38 != 0, *(a3 + 24));
        }

        else
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetBool(a1, a2, 8, v38 != 0, *(a3 + 24));
        }

        return 1;
      case 9:
        v59 = *(a3 + 24);
        if (*(a3 + 1) == 1)
        {
          v60 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddString(a1, a2, 9, v59);
        }

        else
        {
          v60 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableString(a1, a2, 9, v59);
        }

        return wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString(this, v60);
      case 0xA:
        v26 = *(a3 + 8);
        v27 = *(a3 + 24);
        if (*(a3 + 1) == 1)
        {
          v28 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddMessage(a1, a2, 10, v26, v27);
        }

        else
        {
          v28 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableMessage(a1, a2, 10, v26, v27);
        }

        v77 = *(this + 14);
        v78 = *(this + 15);
        *(this + 14) = v77 + 1;
        if (v77 >= v78)
        {
          return 0;
        }

        result = (*(*v28 + 64))(v28, this);
        if (!result)
        {
          return result;
        }

        v79 = *(this + 14);
        v80 = __OFSUB__(v79, 1);
        v81 = v79 - 1;
        if (v81 < 0 == v80)
        {
          *(this + 14) = v81;
        }

        return *(this + 8) == ((8 * a2) | 4);
      case 0xB:
        v56 = *(a3 + 8);
        v57 = *(a3 + 24);
        if (*(a3 + 1) == 1)
        {
          v58 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddMessage(a1, a2, 11, v56, v57);
        }

        else
        {
          v58 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableMessage(a1, a2, 11, v56, v57);
        }

        v82 = v58;
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        v83 = *(this + 1);
        if (v83 >= *(this + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90))
          {
            return 0;
          }
        }

        else
        {
          LODWORD(v90[0].__r_.__value_.__l.__data_) = *v83;
          *(this + 1) = v83 + 1;
        }

        v84 = *(this + 14);
        v85 = *(this + 15);
        *(this + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        v86 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v90[0].__r_.__value_.__l.__data_);
        if (!(*(*v82 + 64))(v82, this) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v86);
        v87 = *(this + 14);
        v80 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v80)
        {
          *(this + 14) = v88;
        }

        return 1;
      case 0xC:
        v22 = *(a3 + 24);
        if (*(a3 + 1) == 1)
        {
          v23 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddString(a1, a2, 12, v22);
        }

        else
        {
          v23 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::MutableString(a1, a2, 12, v22);
        }

        return wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes(this, v23);
      case 0xD:
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 < 0)
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          LODWORD(v90[0].__r_.__value_.__l.__data_) = *v25;
          *(this + 1) = v25 + 1;
        }

        v50 = *(a3 + 1);
        v51 = v90[0].__r_.__value_.__l.__data_;
        v52 = *(a3 + 24);
        v53 = a1;
        v54 = a2;
        v55 = 13;
LABEL_176:
        if (v50 == 1)
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddUInt32(v53, v54, v55, 0, v51, v52);
        }

        else
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetUInt32(v53, v54, v55, v51, v52);
        }

        return 1;
      case 0xE:
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        v48 = *(this + 1);
        if (v48 >= *(this + 2) || (data_low = *v48, (data_low & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90);
          if (!result)
          {
            return result;
          }

          data_low = LODWORD(v90[0].__r_.__value_.__l.__data_);
        }

        else
        {
          *(this + 1) = v48 + 1;
        }

        if ((*(a3 + 8))(*(a3 + 16), data_low))
        {
          if (*(a3 + 1) == 1)
          {
            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddEnum(a1, a2, 14, 0, data_low, *(a3 + 24));
          }

          else
          {
            wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetEnum(a1, a2, 14, data_low, *(a3 + 24));
          }
        }

        else
        {
          (*(*a5 + 32))(a5, a2, data_low);
        }

        return 1;
      case 0xF:
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v90);
        if (!result)
        {
          return result;
        }

        data = v90[0].__r_.__value_.__l.__data_;
        v17 = *(a3 + 1);
        v18 = *(a3 + 24);
        v19 = a1;
        v20 = a2;
        v21 = 15;
        goto LABEL_171;
      case 0x10:
        v90[0].__r_.__value_.__r.__words[0] = 0;
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v90);
        if (!result)
        {
          return result;
        }

        v30 = v90[0].__r_.__value_.__r.__words[0];
        v31 = *(a3 + 1);
        v32 = *(a3 + 24);
        v33 = a1;
        v34 = a2;
        v35 = 16;
        goto LABEL_195;
      case 0x11:
        LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
        v14 = *(this + 1);
        if (v14 >= *(this + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90);
          if (!result)
          {
            return result;
          }

          v15 = v90[0].__r_.__value_.__l.__data_;
        }

        else
        {
          *(this + 1) = v14 + 1;
        }

        data = -(v15 & 1) ^ (v15 >> 1);
        v17 = *(a3 + 1);
        v18 = *(a3 + 24);
        v19 = a1;
        v20 = a2;
        v21 = 17;
LABEL_171:
        if (v17 == 1)
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt32(v19, v20, v21, 0, data, v18);
        }

        else
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetInt32(v19, v20, v21, data, v18);
        }

        return 1;
      case 0x12:
        v90[0].__r_.__value_.__r.__words[0] = 0;
        v39 = *(this + 1);
        if (v39 >= *(this + 2) || (v40 = *v39, (v40 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v90);
          if (!result)
          {
            return result;
          }

          v40 = v90[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          *(this + 1) = v39 + 1;
        }

        v30 = -(v40 & 1) ^ (v40 >> 1);
        v31 = *(a3 + 1);
        v32 = *(a3 + 24);
        v33 = a1;
        v34 = a2;
        v35 = 18;
LABEL_195:
        if (v31 == 1)
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt64(v33, v34, v35, 0, v30, v32);
        }

        else
        {
          wireless_diagnostics::google::protobuf::internal::ExtensionSet::SetInt64(v33, v34, v35, v30, v32);
        }

        break;
      default:
        return 1;
    }

    return 1;
  }

  v91 = 0;
  v9 = *(this + 1);
  if (v9 < *(this + 2))
  {
    v10 = *v9;
    if ((v10 & 0x80000000) == 0)
    {
      v91 = *v9;
      *(this + 1) = v9 + 1;
LABEL_11:
      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v10);
      switch(*a3)
      {
        case 1:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            v90[0].__r_.__value_.__r.__words[0] = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v90))
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddDouble(a1, a2, 1, 1, *(a3 + 24), *&v90[0].__r_.__value_.__l.__data_);
          }

          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_13;
        case 2:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v90))
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddFloat(a1, a2, 2, 1, *(a3 + 24), *&v90[0].__r_.__value_.__l.__data_);
            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 3:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            v90[0].__r_.__value_.__r.__words[0] = 0;
            v67 = *(this + 1);
            if (v67 >= *(this + 2) || (v68 = *v67, v68 < 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v90))
              {
                return 0;
              }

              v68 = v90[0].__r_.__value_.__r.__words[0];
            }

            else
            {
              *(this + 1) = v67 + 1;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 3, 1, v68, *(a3 + 24));
          }

          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_13;
        case 4:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            v90[0].__r_.__value_.__r.__words[0] = 0;
            v69 = *(this + 1);
            if (v69 >= *(this + 2) || (v70 = *v69, v70 < 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v90))
              {
                return 0;
              }

              v70 = v90[0].__r_.__value_.__r.__words[0];
            }

            else
            {
              v90[0].__r_.__value_.__r.__words[0] = *v69;
              *(this + 1) = v69 + 1;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddUInt64(a1, a2, 4, 1, v70, *(a3 + 24));
          }

          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_13;
        case 5:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
            v63 = *(this + 1);
            if (v63 >= *(this + 2) || (v64 = *v63, v64 < 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90))
              {
                return 0;
              }

              v64 = v90[0].__r_.__value_.__l.__data_;
            }

            else
            {
              *(this + 1) = v63 + 1;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 5, 1, v64, *(a3 + 24));
          }

          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_13;
        case 6:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            v90[0].__r_.__value_.__r.__words[0] = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v90))
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddUInt64(a1, a2, 6, 1, v90[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 7:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v90))
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddUInt32(a1, a2, 7, 1, v90[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 8:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
            v71 = *(this + 1);
            if (v71 >= *(this + 2) || (v72 = *v71, v72 < 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90))
              {
                return 0;
              }

              v72 = v90[0].__r_.__value_.__l.__data_;
            }

            else
            {
              *(this + 1) = v71 + 1;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddBool(a1, a2, 8, 1, v72 != 0, *(a3 + 24));
          }

          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_13;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v90, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 943);
          v13 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v90, "Non-primitive types can't be packed.");
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v89, v13);
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v90[0].__r_.__value_.__l.__data_);
          goto LABEL_13;
        case 0xD:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
            v65 = *(this + 1);
            if (v65 >= *(this + 2) || (v66 = *v65, v66 < 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90))
              {
                return 0;
              }

              v66 = v90[0].__r_.__value_.__l.__data_;
            }

            else
            {
              LODWORD(v90[0].__r_.__value_.__l.__data_) = *v65;
              *(this + 1) = v65 + 1;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddUInt32(a1, a2, 13, 1, v66, *(a3 + 24));
          }

          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_13;
        case 0xE:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
            v75 = *(this + 1);
            if (v75 >= *(this + 2) || (v76 = *v75, (v76 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90))
              {
                return 0;
              }

              v76 = LODWORD(v90[0].__r_.__value_.__l.__data_);
            }

            else
            {
              *(this + 1) = v75 + 1;
            }

            if ((*(a3 + 8))(*(a3 + 16), v76))
            {
              wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddEnum(a1, a2, 14, 1, v76, *(a3 + 24));
            }
          }

          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_13;
        case 0xF:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v90))
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 15, 1, v90[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 0x10:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            v90[0].__r_.__value_.__r.__words[0] = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v90))
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 16, 1, v90[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 0x11:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v90[0].__r_.__value_.__l.__data_) = 0;
            v61 = *(this + 1);
            if (v61 >= *(this + 2) || (v62 = *v61, (v62 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v90))
              {
                return 0;
              }

              v62 = v90[0].__r_.__value_.__l.__data_;
            }

            else
            {
              *(this + 1) = v61 + 1;
            }

            wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 17, 1, -(v62 & 1) ^ (v62 >> 1), *(a3 + 24));
          }

          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_13;
        case 0x12:
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_13;
          }

          break;
        default:
          goto LABEL_13;
      }

      do
      {
        v90[0].__r_.__value_.__r.__words[0] = 0;
        v73 = *(this + 1);
        if (v73 >= *(this + 2) || (v74 = *v73, (v74 & 0x8000000000000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v90))
          {
            return 0;
          }

          v74 = v90[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          *(this + 1) = v73 + 1;
        }

        wireless_diagnostics::google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 18, 1, -(v74 & 1) ^ (v74 >> 1), *(a3 + 24));
      }

      while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
LABEL_13:
      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      return 1;
    }
  }

  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v91))
  {
    v10 = v91;
    goto LABEL_11;
  }

  return 0;
}

void sub_2334A13CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField(wireless_diagnostics::google::protobuf::internal::ExtensionSet *this, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *a3, const wireless_diagnostics::google::protobuf::MessageLite *a4)
{
  v6 = &unk_2848CFD58;
  v5[0] = &unk_2848CF6D0;
  v5[1] = a4;
  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, v5, &v6);
}

void wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::SerializeFieldWithCachedSizes(wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension *this, wireless_diagnostics::google::protobuf::internal::WireFormatLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      if (*(this + 3))
      {
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (8 * a2) | 2);
        wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, *(this + 3));
        switch(*(this + 8))
        {
          case 1:
            v79 = *this;
            if (*(*this + 8) >= 1)
            {
              v80 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, *(*v79 + 8 * v80++));
                v79 = *this;
              }

              while (v80 < *(*this + 8));
            }

            break;
          case 2:
            v81 = *this;
            if (*(*this + 8) >= 1)
            {
              v82 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, *(*v81 + 4 * v82++));
                v81 = *this;
              }

              while (v82 < *(*this + 8));
            }

            break;
          case 3:
            v71 = *this;
            if (*(*this + 8) >= 1)
            {
              v72 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, *(*v71 + 8 * v72++));
                v71 = *this;
              }

              while (v72 < *(*this + 8));
            }

            break;
          case 4:
            v75 = *this;
            if (*(*this + 8) >= 1)
            {
              v76 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, *(*v75 + 8 * v76++));
                v75 = *this;
              }

              while (v76 < *(*this + 8));
            }

            break;
          case 5:
            v66 = *this;
            if (*(*this + 8) >= 1)
            {
              v67 = 0;
              do
              {
                v68 = *(*v66 + 4 * v67);
                if ((v68 & 0x80000000) != 0)
                {
                  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, v68);
                }

                else
                {
                  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v68);
                }

                ++v67;
                v66 = *this;
              }

              while (v67 < *(*this + 8));
            }

            break;
          case 6:
            v88 = *this;
            if (*(*this + 8) >= 1)
            {
              v89 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, *(*v88 + 8 * v89++));
                v88 = *this;
              }

              while (v89 < *(*this + 8));
            }

            break;
          case 7:
            v90 = *this;
            if (*(*this + 8) >= 1)
            {
              v91 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, *(*v90 + 4 * v91++));
                v90 = *this;
              }

              while (v91 < *(*this + 8));
            }

            break;
          case 8:
            v77 = *this;
            if (*(*this + 8) >= 1)
            {
              v78 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, *(*v77 + v78++));
                v77 = *this;
              }

              while (v78 < *(*this + 8));
            }

            break;
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v95, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 1182);
            v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v95, "Non-primitive types can't be packed.");
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v94, v7);
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v95[0].__r_.__value_.__l.__data_);
            break;
          case 0xD:
            v69 = *this;
            if (*(*this + 8) >= 1)
            {
              v70 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, *(*v69 + 4 * v70++));
                v69 = *this;
              }

              while (v70 < *(*this + 8));
            }

            break;
          case 0xE:
            v85 = *this;
            if (*(*this + 8) >= 1)
            {
              v86 = 0;
              do
              {
                v87 = *(*v85 + 4 * v86);
                if ((v87 & 0x80000000) != 0)
                {
                  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, v87);
                }

                else
                {
                  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, v87);
                }

                ++v86;
                v85 = *this;
              }

              while (v86 < *(*this + 8));
            }

            break;
          case 0xF:
            v64 = *this;
            if (*(*this + 8) >= 1)
            {
              v65 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(a3, *(*v64 + 4 * v65++));
                v64 = *this;
              }

              while (v65 < *(*this + 8));
            }

            break;
          case 0x10:
            v73 = *this;
            if (*(*this + 8) >= 1)
            {
              v74 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a3, *(*v73 + 8 * v74++));
                v73 = *this;
              }

              while (v74 < *(*this + 8));
            }

            break;
          case 0x11:
            v62 = *this;
            if (*(*this + 8) >= 1)
            {
              v63 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a3, (2 * *(*v62 + 4 * v63)) ^ (*(*v62 + 4 * v63) >> 31));
                ++v63;
                v62 = *this;
              }

              while (v63 < *(*this + 8));
            }

            break;
          case 0x12:
            v83 = *this;
            if (*(*this + 8) >= 1)
            {
              v84 = 0;
              do
              {
                wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a3, (2 * *(*v83 + 8 * v84)) ^ (*(*v83 + 8 * v84) >> 63));
                ++v84;
                v83 = *this;
              }

              while (v84 < *(*this + 8));
            }

            break;
          default:
            return;
        }
      }
    }

    else
    {
      switch(*(this + 8))
      {
        case 1:
          v8 = *this;
          if (*(*this + 8) >= 1)
          {
            v9 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(a2, a3, *(*v8 + 8 * v9++), a3);
              v8 = *this;
            }

            while (v9 < *(*this + 8));
          }

          break;
        case 2:
          v41 = *this;
          if (*(*this + 8) >= 1)
          {
            v42 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(a2, a3, *(*v41 + 4 * v42++), a3);
              v41 = *this;
            }

            while (v42 < *(*this + 8));
          }

          break;
        case 3:
          v29 = *this;
          if (*(*this + 8) >= 1)
          {
            v30 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(a2, *(*v29 + 8 * v30++), a3, a4);
              v29 = *this;
            }

            while (v30 < *(*this + 8));
          }

          break;
        case 4:
          v35 = *this;
          if (*(*this + 8) >= 1)
          {
            v36 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(a2, *(*v35 + 8 * v36++), a3, a4);
              v35 = *this;
            }

            while (v36 < *(*this + 8));
          }

          break;
        case 5:
          v20 = *this;
          if (*(*this + 8) >= 1)
          {
            v21 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(a2, *(*v20 + 4 * v21++), a3, a4);
              v20 = *this;
            }

            while (v21 < *(*this + 8));
          }

          break;
        case 6:
          v47 = *this;
          if (*(*this + 8) >= 1)
          {
            v48 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(a2, *(*v47 + 8 * v48++), a3, a4);
              v47 = *this;
            }

            while (v48 < *(*this + 8));
          }

          break;
        case 7:
          v53 = *this;
          if (*(*this + 8) >= 1)
          {
            v54 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(a2, *(*v53 + 4 * v54++), a3, a4);
              v53 = *this;
            }

            while (v54 < *(*this + 8));
          }

          break;
        case 8:
          v38 = *this;
          if (*(*this + 8) >= 1)
          {
            v39 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(a2, *(*v38 + v39++), a3, a4);
              v38 = *this;
            }

            while (v39 < *(*this + 8));
          }

          break;
        case 9:
          v59 = *this;
          if (*(*this + 8) >= 1)
          {
            v60 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString(a2, *(*v59 + 8 * v60++), a3);
              v59 = *this;
            }

            while (v60 < *(*this + 8));
          }

          break;
        case 0xA:
          v26 = *this;
          if (*(*this + 8) >= 1)
          {
            v27 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteGroup(a2, *(*v26 + 8 * v27++), a3, a4);
              v26 = *this;
            }

            while (v27 < *(*this + 8));
          }

          break;
        case 0xB:
          v56 = *this;
          if (*(*this + 8) >= 1)
          {
            v57 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(a2, *(*v56 + 8 * v57++), a3, a4);
              v56 = *this;
            }

            while (v57 < *(*this + 8));
          }

          break;
        case 0xC:
          v17 = *this;
          if (*(*this + 8) >= 1)
          {
            v18 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes(a2, *(*v17 + 8 * v18++), a3);
              v17 = *this;
            }

            while (v18 < *(*this + 8));
          }

          break;
        case 0xD:
          v23 = *this;
          if (*(*this + 8) >= 1)
          {
            v24 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(a2, *(*v23 + 4 * v24++), a3, a4);
              v23 = *this;
            }

            while (v24 < *(*this + 8));
          }

          break;
        case 0xE:
          v50 = *this;
          if (*(*this + 8) >= 1)
          {
            v51 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(a2, *(*v50 + 4 * v51++), a3, a4);
              v50 = *this;
            }

            while (v51 < *(*this + 8));
          }

          break;
        case 0xF:
          v14 = *this;
          if (*(*this + 8) >= 1)
          {
            v15 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSFixed32(a2, *(*v14 + 4 * v15++), a3, a4);
              v14 = *this;
            }

            while (v15 < *(*this + 8));
          }

          break;
        case 0x10:
          v32 = *this;
          if (*(*this + 8) >= 1)
          {
            v33 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSFixed64(a2, *(*v32 + 8 * v33++), a3, a4);
              v32 = *this;
            }

            while (v33 < *(*this + 8));
          }

          break;
        case 0x11:
          v11 = *this;
          if (*(*this + 8) >= 1)
          {
            v12 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(a2, *(*v11 + 4 * v12++), a3, a4);
              v11 = *this;
            }

            while (v12 < *(*this + 8));
          }

          break;
        case 0x12:
          v44 = *this;
          if (*(*this + 8) >= 1)
          {
            v45 = 0;
            do
            {
              wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt64(a2, *(*v44 + 8 * v45++), a3, a4);
              v44 = *this;
            }

            while (v45 < *(*this + 8));
          }

          break;
        default:
          return;
      }
    }
  }

  else if ((*(this + 10) & 1) == 0)
  {
    switch(*(this + 8))
    {
      case 1:
        v10 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(a2, a3, v10, a3);
        break;
      case 2:
        v43 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(a2, a3, v43, a3);
        break;
      case 3:
        v31 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(a2, v31, a3, a4);
        break;
      case 4:
        v37 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(a2, v37, a3, a4);
        break;
      case 5:
        v22 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(a2, v22, a3, a4);
        break;
      case 6:
        v49 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(a2, v49, a3, a4);
        break;
      case 7:
        v55 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed32(a2, v55, a3, a4);
        break;
      case 8:
        v40 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(a2, v40, a3, a4);
        break;
      case 9:
        v61 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString(a2, v61, a3);
        break;
      case 0xA:
        v28 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteGroup(a2, v28, a3, a4);
        break;
      case 0xB:
        v58 = *this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v92 = *(*v58 + 104);
          v93 = *this;

          v92(v93, a2);
        }

        else
        {

          wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(a2, v58, a3, a4);
        }

        break;
      case 0xC:
        v19 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes(a2, v19, a3);
        break;
      case 0xD:
        v25 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(a2, v25, a3, a4);
        break;
      case 0xE:
        v52 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(a2, v52, a3, a4);
        break;
      case 0xF:
        v16 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSFixed32(a2, v16, a3, a4);
        break;
      case 0x10:
        v34 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSFixed64(a2, v34, a3, a4);
        break;
      case 0x11:
        v13 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(a2, v13, a3, a4);
        break;
      case 0x12:
        v46 = *this;

        wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt64(a2, v46, a3, a4);
        break;
      default:
        return;
    }
  }
}

void sub_2334A2148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension::ByteSize(wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension *this, const wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  v2 = a2;
  if (*(this + 9) == 1)
  {
    v4 = *(this + 8);
    if (*(this + 11) == 1)
    {
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v6 = (8 * *(*this + 8));
          goto LABEL_136;
        case 2:
        case 7:
        case 0xF:
          v6 = (4 * *(*this + 8));
          goto LABEL_136;
        case 3:
          v73 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v74 = 0;
          LODWORD(v6) = 0;
          do
          {
            v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*v73 + 8 * v74++)) + v6;
            v73 = *this;
          }

          while (v74 < *(*this + 8));
          goto LABEL_136;
        case 4:
          v75 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v76 = 0;
          LODWORD(v6) = 0;
          do
          {
            v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*v75 + 8 * v76++)) + v6;
            v75 = *this;
          }

          while (v76 < *(*this + 8));
          goto LABEL_136;
        case 5:
          v58 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v59 = 0;
          LODWORD(v6) = 0;
          do
          {
            v60 = *(*v58 + 4 * v59);
            if ((v60 & 0x80000000) != 0)
            {
              v61 = 10;
            }

            else if (v60 >= 0x80)
            {
              v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
              v58 = *this;
            }

            else
            {
              v61 = 1;
            }

            v6 = (v61 + v6);
            ++v59;
          }

          while (v59 < *(v58 + 8));
          goto LABEL_136;
        case 8:
          v6 = *(*this + 8);
          goto LABEL_136;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v104, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/extension_set.cc", 1294);
          v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v104, "Non-primitive types can't be packed.");
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v103, v5);
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v104[0].__r_.__value_.__l.__data_);
          goto LABEL_5;
        case 0xD:
          v26 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v27 = 0;
          LODWORD(v6) = 0;
          do
          {
            v28 = *(*v26 + 4 * v27);
            if (v28 >= 0x80)
            {
              v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
              v26 = *this;
            }

            else
            {
              v29 = 1;
            }

            v6 = (v29 + v6);
            ++v27;
          }

          while (v27 < *(v26 + 8));
          goto LABEL_136;
        case 0xE:
          v44 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v45 = 0;
          LODWORD(v6) = 0;
          do
          {
            v46 = *(*v44 + 4 * v45);
            if ((v46 & 0x80000000) != 0)
            {
              v47 = 10;
            }

            else if (v46 >= 0x80)
            {
              v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
              v44 = *this;
            }

            else
            {
              v47 = 1;
            }

            v6 = (v47 + v6);
            ++v45;
          }

          while (v45 < *(v44 + 8));
          goto LABEL_136;
        case 0x11:
          v17 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v18 = 0;
          LODWORD(v6) = 0;
          do
          {
            v19 = ((2 * *(*v17 + 4 * v18)) ^ (*(*v17 + 4 * v18) >> 31));
            if (v19 >= 0x80)
            {
              v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
              v17 = *this;
            }

            else
            {
              v20 = 1;
            }

            v6 = (v20 + v6);
            ++v18;
          }

          while (v18 < *(v17 + 8));
          goto LABEL_136;
        case 0x12:
          v62 = *this;
          if (*(*this + 8) < 1)
          {
            goto LABEL_5;
          }

          v63 = 0;
          LODWORD(v6) = 0;
          do
          {
            v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64((2 * *(*v62 + 8 * v63)) ^ (*(*v62 + 8 * v63) >> 63)) + v6;
            ++v63;
            v62 = *this;
          }

          while (v63 < *(*this + 8));
LABEL_136:
          *(this + 3) = v6;
          if (v6 >= 1)
          {
            if (v6 >= 0x80)
            {
              v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
            }

            else
            {
              v77 = 1;
            }

            v78 = v77 + v6;
            if ((8 * v2) >= 0x80)
            {
              v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(((8 * v2) | 2u));
            }

            else
            {
              v79 = 1;
            }

            v6 = (v78 + v79);
          }

          break;
        default:
LABEL_5:
          v6 = 0;
          *(this + 3) = 0;
          break;
      }
    }

    else
    {
      v7 = (8 * a2);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v8 = 1;
      }

      v12 = v8 << (v4 == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v13 = v12 + 8;
          goto LABEL_19;
        case 2:
        case 7:
        case 0xF:
          v13 = v12 + 4;
LABEL_19:
          v6 = (*(*this + 8) * v13);
          break;
        case 3:
          v67 = *this;
          v68 = *(*this + 8);
          v6 = (v68 * v12);
          if (v68 >= 1)
          {
            v69 = 0;
            do
            {
              v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*v67 + 8 * v69++)) + v6;
              v67 = *this;
            }

            while (v69 < *(*this + 8));
          }

          break;
        case 4:
          v70 = *this;
          v71 = *(*this + 8);
          v6 = (v71 * v12);
          if (v71 >= 1)
          {
            v72 = 0;
            do
            {
              v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*v70 + 8 * v72++)) + v6;
              v70 = *this;
            }

            while (v72 < *(*this + 8));
          }

          break;
        case 5:
          v53 = *this;
          v54 = *(*this + 8);
          v6 = (v54 * v12);
          if (v54 >= 1)
          {
            v55 = 0;
            do
            {
              v56 = *(*v53 + 4 * v55);
              if ((v56 & 0x80000000) != 0)
              {
                v57 = 10;
              }

              else if (v56 >= 0x80)
              {
                v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
                v53 = *this;
              }

              else
              {
                v57 = 1;
              }

              v6 = (v57 + v6);
              ++v55;
            }

            while (v55 < *(v53 + 8));
          }

          break;
        case 8:
          v6 = (*(*this + 8) + *(*this + 8) * v12);
          break;
        case 9:
          v91 = *this;
          v92 = *(*this + 8);
          v6 = (v92 * v12);
          if (v92 >= 1)
          {
            v93 = 0;
            do
            {
              v94 = *(*v91 + 8 * v93);
              v95 = *(v94 + 23);
              v96 = v95;
              v97 = *(v94 + 8);
              if ((v95 & 0x80u) == 0)
              {
                v98 = *(v94 + 23);
              }

              else
              {
                v98 = v97;
              }

              if (v98 >= 0x80)
              {
                v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98);
                v95 = *(v94 + 23);
                v97 = *(v94 + 8);
                v91 = *this;
                v96 = *(v94 + 23);
              }

              else
              {
                v99 = 1;
              }

              if (v96 < 0)
              {
                v95 = v97;
              }

              v6 = (v99 + v6 + v95);
              ++v93;
            }

            while (v93 < *(v91 + 8));
          }

          break;
        case 0xA:
          v35 = *this;
          v36 = *(*this + 8);
          v6 = (v36 * v12);
          if (v36 >= 1)
          {
            v37 = 0;
            do
            {
              v6 = (*(**(*v35 + 8 * v37) + 72))(*(*v35 + 8 * v37)) + v6;
              ++v37;
              v35 = *this;
            }

            while (v37 < *(*this + 8));
          }

          break;
        case 0xB:
          v38 = *this;
          v39 = *(*this + 8);
          v6 = (v39 * v12);
          if (v39 >= 1)
          {
            v40 = 0;
            do
            {
              v41 = (*(**(*v38 + 8 * v40) + 72))(*(*v38 + 8 * v40));
              v42 = v41;
              if (v41 >= 0x80)
              {
                v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
              }

              else
              {
                v43 = 1;
              }

              v6 = (v42 + v6 + v43);
              ++v40;
              v38 = *this;
            }

            while (v40 < *(*this + 8));
          }

          break;
        case 0xC:
          v81 = *this;
          v82 = *(*this + 8);
          v6 = (v82 * v12);
          if (v82 >= 1)
          {
            v83 = 0;
            do
            {
              v84 = *(*v81 + 8 * v83);
              v85 = *(v84 + 23);
              v86 = v85;
              v87 = *(v84 + 8);
              if ((v85 & 0x80u) == 0)
              {
                v88 = *(v84 + 23);
              }

              else
              {
                v88 = v87;
              }

              if (v88 >= 0x80)
              {
                v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88);
                v85 = *(v84 + 23);
                v87 = *(v84 + 8);
                v81 = *this;
                v86 = *(v84 + 23);
              }

              else
              {
                v89 = 1;
              }

              if (v86 < 0)
              {
                v85 = v87;
              }

              v6 = (v89 + v6 + v85);
              ++v83;
            }

            while (v83 < *(v81 + 8));
          }

          break;
        case 0xD:
          v30 = *this;
          v31 = *(*this + 8);
          v6 = (v31 * v12);
          if (v31 >= 1)
          {
            v32 = 0;
            do
            {
              v33 = *(*v30 + 4 * v32);
              if (v33 >= 0x80)
              {
                v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
                v30 = *this;
              }

              else
              {
                v34 = 1;
              }

              v6 = (v34 + v6);
              ++v32;
            }

            while (v32 < *(v30 + 8));
          }

          break;
        case 0xE:
          v48 = *this;
          v49 = *(*this + 8);
          v6 = (v49 * v12);
          if (v49 >= 1)
          {
            v50 = 0;
            do
            {
              v51 = *(*v48 + 4 * v50);
              if ((v51 & 0x80000000) != 0)
              {
                v52 = 10;
              }

              else if (v51 >= 0x80)
              {
                v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
                v48 = *this;
              }

              else
              {
                v52 = 1;
              }

              v6 = (v52 + v6);
              ++v50;
            }

            while (v50 < *(v48 + 8));
          }

          break;
        case 0x11:
          v21 = *this;
          v22 = *(*this + 8);
          v6 = (v22 * v12);
          if (v22 >= 1)
          {
            v23 = 0;
            do
            {
              v24 = ((2 * *(*v21 + 4 * v23)) ^ (*(*v21 + 4 * v23) >> 31));
              if (v24 >= 0x80)
              {
                v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
                v21 = *this;
              }

              else
              {
                v25 = 1;
              }

              v6 = (v25 + v6);
              ++v23;
            }

            while (v23 < *(v21 + 8));
          }

          break;
        case 0x12:
          v64 = *this;
          v65 = *(*this + 8);
          v6 = (v65 * v12);
          if (v65 >= 1)
          {
            v66 = 0;
            do
            {
              v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64((2 * *(*v64 + 8 * v66)) ^ (*(*v64 + 8 * v66) >> 63)) + v6;
              ++v66;
              v64 = *this;
            }

            while (v66 < *(*this + 8));
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(this + 10))
  {
    return 0;
  }

  else
  {
    v9 = *(this + 8);
    v10 = (8 * a2);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v11 = 1;
    }

    v6 = (v11 << (v9 == 10));
    switch(*(this + 8))
    {
      case 1:
      case 6:
      case 0x10:
        return (v6 + 8);
      case 2:
      case 7:
      case 0xF:
        return (v6 + 4);
      case 3:
      case 4:
        v14 = *this;
        goto LABEL_119;
      case 5:
      case 0xE:
        v15 = *this;
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_89;
        }

        v16 = 10;
        goto LABEL_120;
      case 8:
        return (v6 + 1);
      case 9:
      case 0xC:
        v16 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::StringSize(*this);
        goto LABEL_120;
      case 0xA:
        v16 = (*(**this + 72))();
        goto LABEL_120;
      case 0xB:
        v90 = *this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v100 = (*(*v90 + 64))(v90);
          v101 = v100;
          if (v100 >= 0x80)
          {
            v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100);
          }

          else
          {
            v102 = 1;
          }

          v6 = (v101 + v6 + v102);
        }

        else
        {
          v16 = wireless_diagnostics::google::protobuf::internal::WireFormatLite::MessageSize(v90, a2);
LABEL_120:
          v6 = (v16 + v6);
        }

        break;
      case 0xD:
        v15 = *this;
        goto LABEL_89;
      case 0x11:
        v15 = ((2 * *this) ^ (*this >> 31));
LABEL_89:
        if (v15 >= 0x80)
        {
          v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        }

        else
        {
          v16 = 1;
        }

        goto LABEL_120;
      case 0x12:
        v14 = (2 * *this) ^ (*this >> 63);
LABEL_119:
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v14);
        goto LABEL_120;
      default:
        return v6;
    }
  }

  return v6;
}

void sub_2334A2AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::StringSize(uint64_t a1)
{
  v2 = *(a1 + 23);
  v3 = v2;
  v4 = *(a1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = v4;
  }

  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    v2 = *(a1 + 23);
    v4 = *(a1 + 8);
    v3 = *(a1 + 23);
  }

  else
  {
    v6 = 1;
  }

  if (v3 < 0)
  {
    v2 = v4;
  }

  return (v6 + v2);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::MessageSize(wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, const wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  v2 = (*(*this + 72))(this, a2);
  v3 = v2;
  if (v2 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v2);
  }

  else
  {
    v4 = 1;
  }

  return (v4 + v3);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>>>::find<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = v3 - *a2 + (*a2 << 16);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 - *a2 + (*a2 << 16);
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v4 == v9)
    {
      if (result[2] == *a2 && *(result + 6) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::anonymous namespace::DeleteRegistry(wireless_diagnostics::google::protobuf::internal::_anonymous_namespace_ *this)
{
  {
    result = MEMORY[0x23839FAC0](v2, 0x10A0C408EF24B1CLL);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>>>::__emplace_unique_key_args<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::pair<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int> const,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 - *a2 + (*a2 << 16);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 - *a2 + (*a2 << 16);
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || *(v8 + 6) != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__hash_table<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>>>::__rehash<true>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,wireless_diagnostics::google::protobuf::hash<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<wireless_diagnostics::google::protobuf::MessageLite const*,int>,wireless_diagnostics::google::protobuf::internal::ExtensionInfo>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<long long>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = result;
    v4 = *result;
    v5 = 2 * v2;
    if (v5 <= a2)
    {
      v5 = a2;
    }

    if (v5 <= 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    *(v3 + 3) = v6;
    operator new[]();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::AddAllocated<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::MessageLite>::TypeHandler>(uint64_t *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  v5 = *(this + 4);
  if (v4 == v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v4 + 1);
    v6 = *(v3 + 3) + 1;
LABEL_9:
    *(v3 + 3) = v6;
    goto LABEL_10;
  }

  v7 = *(this + 3);
  if (v7 != v5)
  {
    if (v4 < v7)
    {
      *(*this + 8 * v7) = *(*this + 8 * v4);
    }

    v6 = v7 + 1;
    goto LABEL_9;
  }

  this = *(*this + 8 * v4);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

LABEL_10:
  v8 = *v3;
  v9 = *(v3 + 2);
  *(v3 + 2) = v9 + 1;
  *(v8 + 8 * v9) = a2;
  return this;
}

uint64_t *std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::swap(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t *std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,wireless_diagnostics::google::protobuf::internal::ExtensionSet::Extension>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::MessageLite>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete(*(*a1 + 8 * v2++));
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x23839FAA0);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<wireless_diagnostics::google::protobuf::MessageLite>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x23839FAA0);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::MergeFromCodedStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  result = (*(*this + 64))(this, a2);
  if (result)
  {
    if ((*(*this + 40))(this))
    {
      return 1;
    }

    else
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v7, 2, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/message_lite.cc", 124);
      v4 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, &__p);
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v5, v4);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
      return 0;
    }
  }

  return result;
}

void sub_2334A3FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::ParsePartialFromCodedStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  (*(*this + 32))(this);
  v4 = *(*this + 64);

  return v4(this, a2);
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::ParseFromZeroCopyStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream *a2)
{
  v5[0] = a2;
  memset(&v5[1], 0, 30);
  v6 = xmmword_2334AA580;
  v7 = 0;
  v8 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v9 = 0;
  v10 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(v5);
  LODWORD(this) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromCodedStream(this, v5);
  v3 = BYTE4(v5[4]);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v5);
  return this & v3;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::ParsePartialFromZeroCopyStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream *a2)
{
  v5[0] = a2;
  memset(&v5[1], 0, 30);
  v6 = xmmword_2334AA580;
  v7 = 0;
  v8 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v9 = 0;
  v10 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(v5);
  (*(*this + 32))(this);
  LODWORD(this) = (*(*this + 64))(this, v5);
  v3 = BYTE4(v5[4]);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v5);
  return this & v3;
}

BOOL wireless_diagnostics::google::protobuf::MessageLite::ParseFromBoundedZeroCopyStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream *a2, signed int a3)
{
  v7[0] = a2;
  memset(&v7[1], 0, 30);
  v8 = xmmword_2334AA580;
  v9 = 0;
  v10 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v11 = 0;
  v12 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(v7);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(v7, a3);
  v5 = wireless_diagnostics::google::protobuf::MessageLite::ParseFromCodedStream(this, v7) && BYTE4(v7[4]) == 1 && wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(v7) == 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return v5;
}

BOOL wireless_diagnostics::google::protobuf::MessageLite::ParsePartialFromBoundedZeroCopyStream(wireless_diagnostics::google::protobuf::MessageLite *this, wireless_diagnostics::google::protobuf::io::ZeroCopyInputStream *a2, signed int a3)
{
  v7[0] = a2;
  memset(&v7[1], 0, 30);
  v8 = xmmword_2334AA580;
  v9 = 0;
  v10 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v11 = 0;
  v12 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(v7);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(v7, a3);
  (*(*this + 32))(this);
  v5 = (*(*this + 64))(this, v7) && BYTE4(v7[4]) == 1 && wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(v7) == 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return v5;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::ParsePartialFromString(uint64_t a1, uint64_t *a2)
{
  LODWORD(v3) = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v8[0] = 0;
  v8[1] = v4;
  v8[2] = v4 + v3;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  v12 = v3;
  v13 = xmmword_2334AA590;
  v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v15 = 0;
  v16 = 0;
  (*(*a1 + 32))(a1);
  v5 = (*(*a1 + 64))(a1, v8);
  v6 = v11;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v8);
  return v5 & v6;
}

uint64_t wireless_diagnostics::google::protobuf::MessageLite::ParsePartialFromArray(wireless_diagnostics::google::protobuf::MessageLite *this, char *a2, int a3)
{
  v3 = this;
  v6[0] = 0;
  v6[1] = a2;
  v6[2] = &a2[a3];
  v7 = a3;
  v8 = 0;
  v9 = 0;
  v10 = a3;
  v11 = xmmword_2334AA590;
  v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v13 = 0;
  v14 = 0;
  (*(*this + 32))(this);
  LODWORD(v3) = (*(*v3 + 64))(v3, v6);
  v4 = v9;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v6);
  return v3 & v4;
}

void wireless_diagnostics::google::protobuf::anonymous namespace::InitializationErrorMessage(wireless_diagnostics::google::protobuf::_anonymous_namespace_ *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "Can't ");
  std::string::append(a2, "parse");
  std::string::append(a2, " message of type ");
  (*(*this + 16))(&__p, this);
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v11;
  }

  std::string::append(a2, p_p, v7);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a2, " because it is missing required fields: ");
  (*(*this + 48))(&__p, this);
  if ((v12 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

  std::string::append(a2, v8, v9);
  if (v12 < 0)
  {
    operator delete(__p);
  }
}

void sub_2334A46D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void wireless_diagnostics::google::protobuf::anonymous namespace::ByteSizeConsistencyError(wireless_diagnostics::google::protobuf::_anonymous_namespace_ *this, int a2, int a3)
{
  v4 = this;
  if (this != a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/message_lite.cc", 64);
    v5 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
    v6 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v5, "Protocol message was modified concurrently during serialization.");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v6);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (a3 != v4)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/message_lite.cc", 66);
    v7 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
    v8 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v7, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of the message.");
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v8);
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/AWDMetrics_protobuf/google/protobuf/message_lite.cc", 70);
  v9 = wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<(v11, "This shouldn't be called if all the sizes are equal.");
  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=(&v10, v9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
}