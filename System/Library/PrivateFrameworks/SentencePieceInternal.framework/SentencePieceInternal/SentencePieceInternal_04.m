google::protobuf::internal::SerialArena::Block *google::protobuf::internal::SerialArena::Block::Block(google::protobuf::internal::SerialArena::Block *this, uint64_t a2, unint64_t a3, unsigned int a4, int a5)
{
  v6 = 2;
  if (!a5)
  {
    v6 = 0;
  }

  *this = v6 | a4 | a3;
  *(this + 1) = 24;
  *(this + 2) = a2;
  if ((a3 & 3) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 107);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (reinterpret_cast<uintptr_t>(next) & 3) == (0u): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_2656780CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Delete(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x26675B2F0);
  }

  return result;
}

atomic_ullong *google::protobuf::internal::LazyString::Init(atomic_ullong *this)
{
  {
    google::protobuf::internal::LazyString::Init();
  }

  std::mutex::lock(&google::protobuf::internal::LazyString::Init(void)const::mu);
  explicit = atomic_load_explicit(this + 3, memory_order_acquire);
  if (!explicit)
  {
    v3 = this[1];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = *this;
    if (v3 >= 0x17)
    {
      operator new();
    }

    *(this + 23) = v3;
    if (v3)
    {
      memmove(this, v4, v3);
    }

    *(this + v3) = 0;
    atomic_store(this, this + 3);
    explicit = this;
  }

  std::mutex::unlock(&google::protobuf::internal::LazyString::Init(void)const::mu);
  return explicit;
}

void google::protobuf::internal::ArenaStringPtr::Set(google::protobuf::internal::ArenaStringPtr *this, uint64_t a2, __int128 *a3, google::protobuf::internal::ArenaImpl *a4)
{
  if (*this != a2)
  {
    google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
    if (*(a3 + 23) >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v6 = *a3;
      v7 = *(a3 + 1);
    }

    JUMPOUT(0x26675AFD0);
  }

  if (!a4)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
    google::protobuf::internal::ArenaStringPtr::Set(a4);
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a4, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  v10 = AlignedAndAddCleanup;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(AlignedAndAddCleanup, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&AlignedAndAddCleanup->__r_.__value_.__l.__data_ = v11;
  }

  *this = v10;
}

{
  if (*this == a2)
  {
    if (!a4)
    {
      operator new();
    }

    if (*(a4 + 24))
    {
      v11 = a4;
      google::protobuf::internal::ArenaStringPtr::Set(a4);
      a4 = v11;
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a4, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
    v10 = *(a3 + 2);
    *AlignedAndAddCleanup = *a3;
    AlignedAndAddCleanup[2] = v10;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    *this = AlignedAndAddCleanup;
  }

  else
  {
    v6 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void google::protobuf::internal::ArenaStringPtr::Set(google::protobuf::internal::ArenaStringPtr *a1, __int128 *a2, google::protobuf::internal::ArenaImpl *a3)
{
  google::protobuf::internal::ArenaStringPtr::Set(a1, &google::protobuf::internal::fixed_address_empty_string, a2, a3);
}

{
  google::protobuf::internal::ArenaStringPtr::Set(a1, &google::protobuf::internal::fixed_address_empty_string, a2, a3);
}

{
  google::protobuf::internal::ArenaStringPtr::Set(a1, 0, a2, a3);
}

{
  google::protobuf::internal::ArenaStringPtr::Set(a1, 0, a2, a3);
}

uint64_t *google::protobuf::internal::ArenaStringPtr::Mutable(uint64_t **a1, google::protobuf::internal::ArenaImpl *a2)
{
  if (*a1 == &google::protobuf::internal::fixed_address_empty_string)
  {
    return google::protobuf::internal::ArenaStringPtr::MutableSlow<>(a1, a2);
  }

  else
  {
    return google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(a1);
  }
}

uint64_t *google::protobuf::internal::ArenaStringPtr::MutableSlow<>(uint64_t **a1, google::protobuf::internal::ArenaImpl *this)
{
  if (*a1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: IsDefault(default_value): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
    google::protobuf::internal::ArenaStringPtr::MutableSlow<>(this);
  }

  result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

void sub_26567856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::ArenaStringPtr::Mutable(google::protobuf::internal::ArenaStringPtr *this, atomic_ullong *a2, google::protobuf::Arena *a3)
{
  if (*this)
  {
    return google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
  }

  else
  {
    return google::protobuf::internal::ArenaStringPtr::MutableSlow<google::protobuf::internal::LazyString>(this, a3, a2);
  }
}

std::string *google::protobuf::internal::ArenaStringPtr::MutableSlow<google::protobuf::internal::LazyString>(std::string **a1, google::protobuf::internal::ArenaImpl *this, atomic_ullong *a3)
{
  if (*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: IsDefault(default_value): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  explicit = atomic_load_explicit(a3 + 3, memory_order_acquire);
  if (explicit)
  {
    if (this)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator new();
  }

  explicit = google::protobuf::internal::LazyString::Init(a3);
  if (!this)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(this + 24))
  {
    google::protobuf::internal::ArenaStringPtr::MutableSlow<>(this);
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  v9 = AlignedAndAddCleanup;
  if (*(explicit + 23) < 0)
  {
    std::string::__init_copy_ctor_external(AlignedAndAddCleanup, *explicit, explicit[1]);
  }

  else
  {
    v10 = *explicit;
    AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = explicit[2];
    *&AlignedAndAddCleanup->__r_.__value_.__l.__data_ = v10;
  }

  *a1 = v9;
  return v9;
}

void *google::protobuf::internal::ArenaStringPtr::MutableNoCopy(google::protobuf::internal::ArenaStringPtr *this, uint64_t a2, google::protobuf::internal::ArenaImpl *a3)
{
  if (*this == a2)
  {
    if (!a3)
    {
      operator new();
    }

    if (*(a3 + 24))
    {
      v5 = a3;
      google::protobuf::internal::ArenaStringPtr::Set(a3);
      a3 = v5;
    }

    result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a3, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *this = result;
  }

  else
  {

    return google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
  }

  return result;
}

uint64_t google::protobuf::internal::ArenaStringPtr::Release(google::protobuf::internal::ArenaStringPtr *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2)
  {
    return 0;
  }

  else
  {
    return google::protobuf::internal::ArenaStringPtr::ReleaseNonDefault(a1, a2, a3);
  }
}

uint64_t google::protobuf::internal::ArenaStringPtr::ReleaseNonDefault(google::protobuf::internal::ArenaStringPtr *this, uint64_t a2, uint64_t a3)
{
  if (*this == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 165);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: !IsDefault(default_value): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    if (a3)
    {
LABEL_3:
      operator new();
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  v7 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
  *this = a2;
  return v7;
}

void sub_2656788B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::ArenaStringPtr *google::protobuf::internal::ArenaStringPtr::SetAllocated(google::protobuf::internal::ArenaStringPtr *this, std::string *a2, __int128 *a3, google::protobuf::internal::ArenaImpl *a4)
{
  v5 = a2;
  v6 = this;
  if (a4)
  {
    if (a3)
    {
      if (*(a4 + 24))
      {
        google::protobuf::internal::ArenaStringPtr::Set(a4);
      }

      AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a4, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
      v5 = AlignedAndAddCleanup;
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(AlignedAndAddCleanup, *a3, *(a3 + 1));
      }

      else
      {
        v9 = *a3;
        AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = *(a3 + 2);
        *&AlignedAndAddCleanup->__r_.__value_.__l.__data_ = v9;
      }

      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      this = MEMORY[0x26675B300](a3, 0x1012C40EC159624);
    }
  }

  else
  {
    if (*this != a2)
    {
      v10 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(this);
      v11 = v10;
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      this = MEMORY[0x26675B300](v11, 0x1012C40EC159624);
    }

    if (a3)
    {
      operator new();
    }
  }

  *v6 = v5;
  return this;
}

google::protobuf::internal::ArenaStringPtr *google::protobuf::internal::ArenaStringPtr::Destroy(google::protobuf::internal::ArenaStringPtr *result, uint64_t a2, uint64_t a3)
{
  if (!a3 && *result != a2)
  {
    v4 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    JUMPOUT(0x26675B300);
  }

  return result;
}

google::protobuf::internal::ArenaStringPtr *google::protobuf::internal::ArenaStringPtr::Destroy(google::protobuf::internal::ArenaStringPtr *a1, uint64_t a2)
{
  return google::protobuf::internal::ArenaStringPtr::Destroy(a1, &google::protobuf::internal::fixed_address_empty_string, a2);
}

{
  return google::protobuf::internal::ArenaStringPtr::Destroy(a1, 0, a2);
}

void *google::protobuf::internal::ArenaStringPtr::ClearToEmpty(void *this)
{
  if (*this != &google::protobuf::internal::fixed_address_empty_string)
  {
    v1 = *this & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  return this;
}

std::string *google::protobuf::internal::ArenaStringPtr::ClearToDefault(std::string *result, atomic_ullong *a2)
{
  if (result->__r_.__value_.__r.__words[0])
  {
    v3 = google::protobuf::internal::ArenaStringPtr::UnsafeMutablePointer(result);
    explicit = atomic_load_explicit(a2 + 3, memory_order_acquire);
    if (!explicit)
    {
      explicit = google::protobuf::internal::LazyString::Init(a2);
    }

    return std::string::operator=(v3, explicit);
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_1_0(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void google::protobuf::internal::LazyString::Init()
{
  {
    __cxa_atexit(google::protobuf::internal::WrappedMutex::~WrappedMutex, &google::protobuf::internal::LazyString::Init(void)const::mu, &dword_26563A000);
  }
}

void google::protobuf::io::CodedInputStream::~CodedInputStream(google::protobuf::io::CodedInputStream *this)
{
  if (*(this + 2))
  {
    google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(this);
  }
}

uint64_t google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(uint64_t this)
{
  if (*(this + 28) + *(this + 44) + *(this + 8) - *this >= 1)
  {
    v1 = this;
    this = (*(**(this + 16) + 24))(*(this + 16));
    v2 = *(v1 + 24) - *(v1 + 44) + *v1 - *(v1 + 8);
    *(v1 + 8) = *v1;
    *(v1 + 44) = 0;
    *(v1 + 24) = v2;
  }

  return this;
}

uint64_t google::protobuf::io::CodedInputStream::PopLimit(uint64_t this, int a2)
{
  *(this + 40) = a2;
  v2 = *(this + 48);
  v3 = *(this + 8) + *(this + 44);
  *(this + 8) = v3;
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
    *(this + 8) = v3 - v7;
  }

  *(this + 44) = v7;
  *(this + 36) = 0;
  return this;
}

uint64_t google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(google::protobuf::io::CodedInputStream *this, int a2)
{
  v3 = *(this + 36);
  *(this + 10) = a2;
  v4 = *(this + 12);
  v5 = *(this + 1) + *(this + 11);
  *(this + 1) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(this + 6);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 1) = v5 - v9;
  }

  *(this + 11) = v9;
  *(this + 36) = 0;
  v10 = *(this + 13);
  if (v10 >= *(this + 14))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 161);
    v11 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (recursion_budget_) < (recursion_limit_): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v10 = *(this + 13);
  }

  *(this + 13) = v10 + 1;
  return v3;
}

void sub_265678E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::CheckEntireMessageConsumedAndPopLimit(google::protobuf::io::CodedInputStream *this, int a2)
{
  result = *(this + 36);
  *(this + 10) = a2;
  v4 = *(this + 12);
  v5 = *(this + 1) + *(this + 11);
  *(this + 1) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(this + 6);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 1) = v5 - v9;
  }

  *(this + 11) = v9;
  *(this + 36) = 0;
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::BytesUntilLimit(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 10);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 2) - *this);
  }
}

uint64_t google::protobuf::io::CodedInputStream::SetTotalBytesLimit(uint64_t this, int a2)
{
  v2 = *(this + 24);
  v3 = *(this + 8);
  v4 = *(this + 40);
  v5 = *(this + 44);
  v6 = v2 - v5 + *this - v3;
  if (v6 <= a2)
  {
    v6 = a2;
  }

  *(this + 48) = v6;
  v7 = v3 + v5;
  *(this + 8) = v7;
  if (v6 >= v4)
  {
    v6 = v4;
  }

  v8 = __OFSUB__(v2, v6);
  v9 = v2 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(this + 8) = v7 - v9;
  }

  *(this + 44) = v9;
  return this;
}

uint64_t google::protobuf::io::CodedInputStream::BytesUntilTotalBytesLimit(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 12);
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - *(this + 6) + *(this + 11) + *(this + 2) - *this);
  }
}

void google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(google::protobuf::io::CodedInputStream *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 193);
  v2 = google::protobuf::internal::LogMessage::operator<<(v6, "A protocol message was rejected because it was too big (more than ");
  v3 = google::protobuf::internal::LogMessage::operator<<(v2, *(this + 12));
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in third_party/protobuf/src/google/protobuf/io/coded_stream.h.");
  google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
}

void sub_265678FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::SkipFallback(google::protobuf::io::CodedInputStream *this, int a2, int a3)
{
  if (*(this + 11) < 1)
  {
    v5 = (a2 - a3);
    *this = 0;
    *(this + 1) = 0;
    v6 = *(this + 12);
    if (v6 >= *(this + 10))
    {
      v6 = *(this + 10);
    }

    v7 = v6 - *(this + 6);
    if (v7 >= v5)
    {
      if ((*(**(this + 2) + 32))(*(this + 2), v5))
      {
        *(this + 6) += v5;
        return 1;
      }

      else
      {
        v8 = (*(**(this + 2) + 40))(*(this + 2));
        result = 0;
        *(this + 6) = v8;
      }
    }

    else
    {
      if (v7 >= 1)
      {
        *(this + 6) = v6;
        (*(**(this + 2) + 32))(*(this + 2));
      }

      return 0;
    }
  }

  else
  {
    result = 0;
    *this += a3;
  }

  return result;
}

uint64_t google::protobuf::io::CodedInputStream::GetDirectBufferPointer(google::protobuf::io::CodedInputStream *this, const void **a2, int *a3)
{
  v6 = *this;
  if (*(this + 2) == *this)
  {
    result = google::protobuf::io::CodedInputStream::Refresh(this);
    if (!result)
    {
      return result;
    }

    v6 = *this;
  }

  *a2 = v6;
  *a3 = *(this + 2) - *this;
  return 1;
}

uint64_t google::protobuf::io::CodedInputStream::Refresh(google::protobuf::io::CodedInputStream *this)
{
  if (*(this + 2) != *this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 617);
    v2 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (0) == (BufferSize()): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  v3 = *(this + 11);
  if (v3 > 0 || *(this + 7) > 0 || *(this + 6) == *(this + 10))
  {
    v4 = *(this + 6) - v3;
    v5 = *(this + 12);
    if (v4 >= v5 && v5 != *(this + 10))
    {
      google::protobuf::io::CodedInputStream::PrintTotalBytesLimitError(this);
    }

    return 0;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v8 = *(this + 2);
    do
    {
      v6 = (*(*v8 + 16))(v8, &v23, &v22);
      if (!v6)
      {
        *this = 0;
        *(this + 1) = 0;
        return v6;
      }

      v9 = v22;
    }

    while (!v22);
    v10 = v23 + v22;
    *this = v23;
    *(this + 1) = v10;
    if (v9 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 638);
      v11 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (buffer_size) >= (0): ");
      google::protobuf::internal::LogFinisher::operator=(&v21, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
      v9 = v22;
    }

    v12 = *(this + 6);
    v13 = v12 - (v9 ^ 0x7FFFFFFF);
    if (v12 <= (v9 ^ 0x7FFFFFFF))
    {
      v15 = v9 + v12;
      v14 = *(this + 1);
    }

    else
    {
      *(this + 7) = v13;
      v14 = *(this + 1) - v13;
      *(this + 1) = v14;
      v15 = 0x7FFFFFFF;
    }

    *(this + 6) = v15;
    v16 = *(this + 10);
    v17 = v14 + *(this + 11);
    *(this + 1) = v17;
    v18 = *(this + 12);
    if (v18 >= v16)
    {
      v18 = v16;
    }

    v19 = __OFSUB__(v15, v18);
    v20 = v15 - v18;
    if ((v20 < 0) ^ v19 | (v20 == 0))
    {
      v20 = 0;
    }

    else
    {
      *(this + 1) = v17 - v20;
    }

    *(this + 11) = v20;
  }

  return v6;
}

void sub_265679378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadRaw(google::protobuf::io::CodedInputStream *this, char *__dst, int a3)
{
  while (1)
  {
    v6 = a3;
    v7 = *this;
    v8 = *(this + 1) - *this;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *this += v8;
    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *this += v6;
  return v6 <= v8;
}

BOOL google::protobuf::io::CodedInputStream::ReadString(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = this;
  if (*(a1 + 8) - *a1 >= __n)
  {
    v6 = __n;
    std::string::resize(this, __n, 0);
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = v3->__r_.__value_.__r.__words[0];
      if (!v3)
      {
        google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 267);
        v7 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: z.first != NULL: ");
        google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
        v3 = 0;
      }
    }

    memcpy(v3, *a1, v6);
    *a1 += v6;
    return 1;
  }

  else
  {

    return google::protobuf::io::CodedInputStream::ReadStringFallback(a1, this, __n);
  }
}

void sub_265679534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadStringFallback(_DWORD *a1, std::string *this, std::string::size_type __requested_capacity)
{
  v3 = __requested_capacity;
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

  v6 = a1[12];
  if (v6 >= a1[10])
  {
    v6 = a1[10];
  }

  if (v6 != 0x7FFFFFFF)
  {
    v7 = v6 - a1[6] + a1[11] + a1[2] - *a1;
    v8 = v7 < __requested_capacity || __requested_capacity < 1;
    if (!v8 && v7 >= 1)
    {
      std::string::reserve(this, __requested_capacity);
    }
  }

  while (1)
  {
    v10 = v3;
    v11 = *a1;
    v12 = *(a1 + 1) - *a1;
    v13 = __OFSUB__(v3, v12);
    v3 -= v12;
    if ((v3 < 0) ^ v13 | (v3 == 0))
    {
      break;
    }

    if (v12)
    {
      v14 = v12;
      std::string::append(this, v11, v12);
      v11 = *a1;
    }

    else
    {
      v14 = 0;
    }

    *a1 = &v11[v14];
    if ((google::protobuf::io::CodedInputStream::Refresh(a1) & 1) == 0)
    {
      return v10 <= v12;
    }
  }

  std::string::append(this, v11, v10);
  *a1 += v10;
  return v10 <= v12;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(unsigned int **this, unsigned int *a2)
{
  v3 = *this;
  if (((*(this + 2) - *this) & 0xFFFFFFFC) != 0)
  {
    *this = v3 + 1;
  }

  else
  {
    v3 = __dst;
    result = google::protobuf::io::CodedInputStream::ReadRaw(this, __dst, 4);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(unint64_t **this, unint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (((*(this + 2) - *this) & 0xFFFFFFF8) != 0)
  {
    *this = v3 + 1;
LABEL_4:
    *a2 = *v3;
    result = 1;
    goto LABEL_5;
  }

  v3 = v6;
  result = google::protobuf::io::CodedInputStream::ReadRaw(this, v6, 8);
  if (result)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarint64Fallback(char **this)
{
  v3 = *this;
  v2 = this[1];
  if ((v2 - *this) <= 9 && (v2 <= v3 || *(v2 - 1) < 0))
  {
    v38[0].__r_.__value_.__r.__words[0] = 0;
    google::protobuf::io::CodedInputStream::ReadVarint64Slow(this, v38);
    return v38[0].__r_.__value_.__r.__words[0];
  }

  if ((*v3 & 0x80000000) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v38, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 417);
    v4 = google::protobuf::internal::LogMessage::operator<<(v38, "CHECK failed: (buffer[0]) >= (128): ");
    google::protobuf::internal::LogFinisher::operator=(&v37, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v38[0].__r_.__value_.__l.__data_);
  }

  v5 = v3[1];
  if ((v5 & 0x8000000000000000) == 0)
  {
    result = *v3 + (v5 << 7) - 128;
    v7 = 2;
LABEL_38:
    *this = &v3[v7];
    return result;
  }

  v8 = v3[2];
  if ((v8 & 0x8000000000000000) == 0)
  {
    result = (v3[1] << 7) + (v8 << 14) + *v3 - 16512;
    v7 = 3;
    goto LABEL_38;
  }

  v9 = v3[3];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    result = v9 << 21;
    v7 = 4;
    v11 = v3;
    do
    {
      v12 = *v11++;
      result += (v12 - 128) << v10;
      v10 += 7;
    }

    while (v10 != 21);
    goto LABEL_38;
  }

  v13 = v3[4];
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    result = v13 << 28;
    v7 = 5;
    v15 = v3;
    do
    {
      v16 = *v15++;
      result += (v16 - 128) << v14;
      v14 += 7;
    }

    while (v14 != 28);
    goto LABEL_38;
  }

  v17 = v3[5];
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    result = v17 << 35;
    v7 = 6;
    v19 = v3;
    do
    {
      v20 = *v19++;
      result += (v20 - 128) << v18;
      v18 += 7;
    }

    while (v18 != 35);
    goto LABEL_38;
  }

  v21 = v3[6];
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    result = v21 << 42;
    v7 = 7;
    v23 = v3;
    do
    {
      v24 = *v23++;
      result += (v24 - 128) << v22;
      v22 += 7;
    }

    while (v22 != 42);
    goto LABEL_38;
  }

  v25 = v3[7];
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    result = v25 << 49;
    v7 = 8;
    v27 = v3;
    do
    {
      v28 = *v27++;
      result += (v28 - 128) << v26;
      v26 += 7;
    }

    while (v26 != 49);
    goto LABEL_38;
  }

  v29 = v3[8];
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    result = v29 << 56;
    v7 = 9;
    v31 = v3;
    do
    {
      v32 = *v31++;
      result += (v32 - 128) << v30;
      v30 += 7;
    }

    while (v30 != 56);
    goto LABEL_38;
  }

  v33 = v3[9];
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    result = v33 << 63;
    v7 = 10;
    v35 = v3;
    do
    {
      v36 = *v35++;
      result += (v36 - 128) << v34;
      v34 += 7;
    }

    while (v34 != 63);
    goto LABEL_38;
  }

  return 0;
}

void sub_265679A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint32Fallback(google::protobuf::io::CodedInputStream *this, int a2)
{
  v5 = *this;
  v4 = *(this + 1);
  if ((v4 - *this) <= 9 && (v4 <= v5 || *(v4 - 1) < 0))
  {
    LODWORD(result) = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
    if (v14)
    {
      return result;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    if (!a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 462);
      v6 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (first_byte_or_zero) != (0): ");
      v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Caller should provide us with *buffer_ when buffer is non-empty");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
      v5 = *this;
    }

    if (*v5 != a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 373);
      v8 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (*buffer) == (first_byte): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if ((a2 & 0x80) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 374);
      v9 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (first_byte & 0x80) == (0x80): ");
      v10 = google::protobuf::internal::LogMessage::operator<<(v9, a2);
      google::protobuf::internal::LogFinisher::operator=(&v17, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v11 = a2 + (v5[1] << 7) - 128;
    if (v5[1] < 0)
    {
      v11 = v11 + (v5[2] << 14) - 0x4000;
      if (v5[2] < 0)
      {
        v11 = v11 + (v5[3] << 21) - 0x200000;
        if (v5[3] < 0)
        {
          v15 = v5[4];
          v11 = v11 + (v15 << 28) - 0x10000000;
          if (v15 < 0)
          {
            v12 = v5 + 6;
            v16 = 5;
            result = -1;
            while (*(v12 - 1) < 0)
            {
              ++v12;
              if (!--v16)
              {
                return result;
              }
            }
          }

          else
          {
            v12 = v5 + 5;
          }
        }

        else
        {
          v12 = v5 + 4;
        }
      }

      else
      {
        v12 = v5 + 3;
      }
    }

    else
    {
      v12 = v5 + 2;
    }

    result = v11;
    *this = v12;
  }

  return result;
}

void sub_265679C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntSlow(char **this)
{
  result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
  if ((v2 & (result >> 31 == 0)) != 0)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(char **this)
{
  v3 = *this;
  v2 = this[1];
  if ((v2 - *this) > 9 || v2 > v3 && (*(v2 - 1) & 0x80000000) == 0)
  {
    if ((*v3 & 0x80000000) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v39, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 417);
      v4 = google::protobuf::internal::LogMessage::operator<<(v39, "CHECK failed: (buffer[0]) >= (128): ");
      google::protobuf::internal::LogFinisher::operator=(&v38, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v39[0].__r_.__value_.__l.__data_);
    }

    v5 = v3[1];
    if (v5 < 0)
    {
      v9 = v3[2];
      if (v9 < 0)
      {
        v10 = v3[3];
        if (v10 < 0)
        {
          v14 = v3[4];
          if (v14 < 0)
          {
            v18 = v3[5];
            if (v18 < 0)
            {
              v22 = v3[6];
              if (v22 < 0)
              {
                v26 = v3[7];
                if (v26 < 0)
                {
                  v30 = v3[8];
                  if (v30 < 0)
                  {
                    v34 = v3[9];
                    if (v34 < 0)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v35 = 0;
                    result = v34 << 63;
                    v7 = 10;
                    v36 = v3;
                    do
                    {
                      v37 = *v36++;
                      result += (v37 - 128) << v35;
                      v35 += 7;
                    }

                    while (v35 != 63);
                  }

                  else
                  {
                    v31 = 0;
                    result = v30 << 56;
                    v7 = 9;
                    v32 = v3;
                    do
                    {
                      v33 = *v32++;
                      result += (v33 - 128) << v31;
                      v31 += 7;
                    }

                    while (v31 != 56);
                  }
                }

                else
                {
                  v27 = 0;
                  result = v26 << 49;
                  v7 = 8;
                  v28 = v3;
                  do
                  {
                    v29 = *v28++;
                    result += (v29 - 128) << v27;
                    v27 += 7;
                  }

                  while (v27 != 49);
                }
              }

              else
              {
                v23 = 0;
                result = v22 << 42;
                v7 = 7;
                v24 = v3;
                do
                {
                  v25 = *v24++;
                  result += (v25 - 128) << v23;
                  v23 += 7;
                }

                while (v23 != 42);
              }
            }

            else
            {
              v19 = 0;
              result = v18 << 35;
              v7 = 6;
              v20 = v3;
              do
              {
                v21 = *v20++;
                result += (v21 - 128) << v19;
                v19 += 7;
              }

              while (v19 != 35);
            }
          }

          else
          {
            v15 = 0;
            result = v14 << 28;
            v7 = 5;
            v16 = v3;
            do
            {
              v17 = *v16++;
              result += (v17 - 128) << v15;
              v15 += 7;
            }

            while (v15 != 28);
          }
        }

        else
        {
          v11 = 0;
          result = v10 << 21;
          v7 = 4;
          v12 = v3;
          do
          {
            v13 = *v12++;
            result += (v13 - 128) << v11;
            v11 += 7;
          }

          while (v11 != 21);
        }
      }

      else
      {
        result = (v3[1] << 7) + (v9 << 14) + *v3 - 16512;
        v7 = 3;
      }
    }

    else
    {
      result = *v3 + (v5 << 7) - 128;
      v7 = 2;
    }

    if (!(result >> 31))
    {
      *this = &v3[v7];
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
  if ((v8 & (result >> 31 == 0)) != 0)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_265679F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::io::CodedInputStream::ReadTagSlow(google::protobuf::io::CodedInputStream *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
LABEL_4:
    if (v2 >= v3 || (result = *v2, (result & 0x80000000) != 0))
    {
      result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *this = v2 + 1;
    }

    return result;
  }

  if (google::protobuf::io::CodedInputStream::Refresh(this))
  {
    v2 = *this;
    v3 = *(this + 1);
    goto LABEL_4;
  }

  v6 = *(this + 12);
  result = 0;
  v7 = *(this + 6) - *(this + 11) < v6 || *(this + 10) == v6;
  *(this + 36) = v7;
  return result;
}

unint64_t google::protobuf::io::CodedInputStream::ReadTagFallback(google::protobuf::io::CodedInputStream *this, int a2)
{
  v4 = *(this + 1);
  v5 = v4 - *this;
  if (v5 <= 9)
  {
    if (v5 < 1)
    {
      if (!v5)
      {
        v14 = *(this + 11);
        v15 = *(this + 6);
        if ((v14 > 0 || v15 == *(this + 10)) && v15 - v14 < *(this + 12))
        {
          result = 0;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    else if ((*(v4 - 1) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

LABEL_4:
  if (**this != a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 537);
    v6 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (first_byte_or_zero) == (buffer_[0]): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  v7 = *this;
  if (a2)
  {
    if (*v7 != a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 373);
      v8 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (*buffer) == (first_byte): ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    if ((a2 & 0x80) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 374);
      v9 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (first_byte & 0x80) == (0x80): ");
      v10 = google::protobuf::internal::LogMessage::operator<<(v9, a2);
      google::protobuf::internal::LogFinisher::operator=(&v18, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    v11 = a2 + (v7[1] << 7) - 128;
    if (v7[1] < 0)
    {
      v11 = v11 + (v7[2] << 14) - 0x4000;
      if (v7[2] < 0)
      {
        v11 = v11 + (v7[3] << 21) - 0x200000;
        if (v7[3] < 0)
        {
          v16 = v7[4];
          v11 = (v11 + (v16 << 28) - 0x10000000);
          if (v16 < 0)
          {
            v12 = v7 + 6;
            v17 = 5;
            result = 0;
            while (*(v12 - 1) < 0)
            {
              ++v12;
              if (!--v17)
              {
                return result;
              }
            }
          }

          else
          {
            v12 = v7 + 5;
          }
        }

        else
        {
          v12 = v7 + 4;
        }
      }

      else
      {
        v12 = v7 + 3;
      }
    }

    else
    {
      v12 = v7 + 2;
    }

    *this = v12;
    return v11;
  }

  else
  {
    result = 0;
    *this = v7 + 1;
  }

  return result;
}

void sub_26567A208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadVarint64Slow(char **this, unint64_t *a2)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v4 != 10;
    if (v4 == 10)
    {
      break;
    }

    while (1)
    {
      v7 = *this;
      if (*this != this[1])
      {
        break;
      }

      if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_7;
      }
    }

    v8 = *v7;
    v5 |= (*v7 & 0x7F) << (7 * v4);
    *this = v7 + 1;
    ++v4;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *a2 = v5;
  return v6;
}

uint64_t google::protobuf::io::EpsCopyOutputStream::EnableAliasing(google::protobuf::io::EpsCopyOutputStream *this, int a2)
{
  if (a2)
  {
    result = (*(**(this + 6) + 48))(*(this + 6));
  }

  else
  {
    result = 0;
  }

  *(this + 57) = result;
  return result;
}

unint64_t google::protobuf::io::EpsCopyOutputStream::Flush(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  while (1)
  {
    v5 = *this;
    v4 = *(this + 1);
    if (!v4)
    {
      v10 = v5 - a2;
      v9 = v10 + 16;
      *(this + 1) = a2;
      if (((v10 + 16) & 0x80000000) == 0)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      break;
    }

    if (*(this + 56) == 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 685);
      v7 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !had_error_: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    if (v6 >= 17)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 686);
      v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: overrun <= kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    a2 = &google::protobuf::io::EpsCopyOutputStream::Next(this)[v6];
    if (*(this + 56))
    {
      return 0;
    }
  }

  memcpy(v4, this + 16, a2 - (this + 16));
  v11 = *this;
  *(this + 1) += a2 - (this + 16);
  v9 = v11 - a2;
  if (((v11 - a2) & 0x80000000) == 0)
  {
    return v9;
  }

LABEL_12:
  google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 700);
  v12 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: s >= 0: ");
  google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  return v9;
}

void sub_26567A500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::io::EpsCopyOutputStream::Next(google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(this + 56) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 788);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !had_error_: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 6))
  {
    v3 = this + 16;
    v5 = *this;
    v4 = *(this + 1);
    if (v4)
    {
      memcpy(v4, this + 16, v5 - v3);
      v12 = 0;
      do
      {
        v13[0].__r_.__value_.__r.__words[0] = 0;
        if (((*(**(this + 6) + 16))(*(this + 6), v13, &v12) & 1) == 0)
        {
          *(this + 56) = 1;
          goto LABEL_14;
        }

        v6 = v12;
      }

      while (!v12);
      v5 = v13[0].__r_.__value_.__r.__words[0];
      if (v12 >= 17)
      {
        *v13[0].__r_.__value_.__l.__data_ = **this;
        *this = &v5[v6 - 16];
        *(this + 1) = 0;
        return v5;
      }

      if (v12 <= 0)
      {
        v10 = v13[0].__r_.__value_.__r.__words[0];
        google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 810);
        v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: size > 0: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
        LODWORD(v6) = v12;
        v5 = v10;
      }

      *v3 = **this;
      v7 = &v3[v6];
    }

    else
    {
      *v3 = *v5;
      v7 = this + 32;
    }

    *this = v7;
    *(this + 1) = v5;
  }

  else
  {
    *(this + 56) = 1;
    v3 = this + 16;
LABEL_14:
    *this = this + 32;
  }

  return v3;
}

void sub_26567A6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::io::EpsCopyOutputStream::Trim(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  if ((*(this + 56) & 1) == 0)
  {
    v3 = google::protobuf::io::EpsCopyOutputStream::Flush(this, a2);
    if (v3)
    {
      (*(**(this + 6) + 24))(*(this + 6), v3);
    }

    a2 = this + 16;
    *this = this + 16;
    *(this + 1) = this + 16;
  }

  return a2;
}

uint64_t google::protobuf::io::EpsCopyOutputStream::FlushAndResetBuffer(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  if (*(this + 56) == 1)
  {
    return this + 16;
  }

  v3 = google::protobuf::io::EpsCopyOutputStream::Flush(this, a2);
  if (*(this + 56) == 1)
  {
    return this + 16;
  }

  v5 = (*(this + 1) + v3 - 16);
  if (v3 > 16)
  {
    v6 = 0;
  }

  else
  {
    v5 = this + v3 + 16;
    v6 = *(this + 1);
  }

  if (v3 <= 16)
  {
    result = this + 16;
  }

  else
  {
    result = *(this + 1);
  }

  *this = v5;
  *(this + 1) = v6;
  return result;
}

BOOL google::protobuf::io::EpsCopyOutputStream::Skip(google::protobuf::io::EpsCopyOutputStream *this, int a2, char **a3)
{
  if (a2 < 0)
  {
    return 0;
  }

  if (*(this + 56) == 1 || (v5 = a2, v13 = google::protobuf::io::EpsCopyOutputStream::Flush(this, *a3), *(this + 56) == 1))
  {
    v6 = 0;
    v7 = this + 16;
  }

  else
  {
    v12 = *(this + 1);
    while (1)
    {
      v6 = v5 <= v13;
      if (v5 <= v13)
      {
        break;
      }

      v5 -= v13;
      if (((*(**(this + 6) + 16))(*(this + 6), &v12, &v13) & 1) == 0)
      {
        *(this + 56) = 1;
        v7 = this + 16;
        *this = this + 32;
        goto LABEL_5;
      }
    }

    v9 = v13 - v5;
    v10 = (v12 + v5 + v9 - 16);
    if (v9 > 16)
    {
      v11 = 0;
    }

    else
    {
      v10 = this + v9 + 16;
      v11 = v12 + v5;
    }

    if (v9 <= 16)
    {
      v7 = this + 16;
    }

    else
    {
      v7 = (v12 + v5);
    }

    *this = v10;
    *(this + 1) = v11;
  }

LABEL_5:
  *a3 = v7;
  return v6;
}

uint64_t google::protobuf::io::EpsCopyOutputStream::GetDirectBufferPointer(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 **a2, unsigned int *a3, char **a4)
{
  if (*(this + 56) == 1 || (*a3 = google::protobuf::io::EpsCopyOutputStream::Flush(this, *a4), *(this + 56) == 1))
  {
    result = 0;
    v9 = this + 16;
  }

  else
  {
    *a2 = *(this + 1);
    while (1)
    {
      v10 = *a3;
      if (v10)
      {
        break;
      }

      if (((*(**(this + 6) + 16))(*(this + 6), a2, a3) & 1) == 0)
      {
        result = 0;
        *(this + 56) = 1;
        v9 = this + 16;
        *this = this + 32;
        goto LABEL_4;
      }
    }

    v11 = &(*a2)[v10 - 16];
    if (v10 > 16)
    {
      v12 = 0;
    }

    else
    {
      v11 = this + v10 + 16;
      v12 = *a2;
    }

    if (v10 <= 16)
    {
      v9 = this + 16;
    }

    else
    {
      v9 = *a2;
    }

    *this = v11;
    *(this + 1) = v12;
    result = 1;
  }

LABEL_4:
  *a4 = v9;
  return result;
}

uint64_t google::protobuf::io::EpsCopyOutputStream::GetDirectBufferForNBytesAndAdvance(google::protobuf::io::EpsCopyOutputStream *this, int a2, char **a3)
{
  if (*(this + 56) == 1 || (v6 = google::protobuf::io::EpsCopyOutputStream::Flush(this, *a3), *(this + 56) == 1))
  {
    result = 0;
    v8 = this + 16;
  }

  else
  {
    v9 = v6;
    result = *(this + 1);
    if (v9 >= a2)
    {
      v12 = v9 - a2;
      v13 = (result + a2 + v12 - 16);
      if (v12 > 16)
      {
        v14 = 0;
      }

      else
      {
        v13 = this + v12 + 16;
        v14 = result + a2;
      }

      if (v12 <= 16)
      {
        v8 = this + 16;
      }

      else
      {
        v8 = (result + a2);
      }

      *this = v13;
      *(this + 1) = v14;
    }

    else
    {
      v10 = (result + v9 - 16);
      if (v9 > 16)
      {
        v11 = 0;
      }

      else
      {
        v10 = this + v9 + 16;
        v11 = *(this + 1);
      }

      if (v9 <= 16)
      {
        v8 = this + 16;
      }

      else
      {
        v8 = *(this + 1);
      }

      *this = v10;
      *(this + 1) = v11;
      result = 0;
    }
  }

  *a3 = v8;
  return result;
}

char *google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  while (*(this + 56) != 1)
  {
    v3 = &a2[-*this];
    if ((v3 & 0x80000000) != 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 829);
      v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: overrun >= 0: ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 830);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: overrun <= kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    a2 = &google::protobuf::io::EpsCopyOutputStream::Next(this)[v3];
    if (a2 < *this)
    {
      return a2;
    }
  }

  return this + 16;
}

void sub_26567AB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(google::protobuf::io::EpsCopyOutputStream *this, char *a2, int a3, unsigned __int8 *a4)
{
  v4 = a4;
  for (i = google::protobuf::io::EpsCopyOutputStream::GetSize(this, a4); a3 > i; i = google::protobuf::io::EpsCopyOutputStream::GetSize(this, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

uint64_t google::protobuf::io::EpsCopyOutputStream::GetSize(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 *a2)
{
  v3 = *this;
  if (*this + 16 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 838);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    v3 = *this;
  }

  return v3 - a2 + 16;
}

void sub_26567ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(google::protobuf::io::EpsCopyOutputStream *this, void *a2, uint64_t a3, char *a4)
{
  if (google::protobuf::io::EpsCopyOutputStream::GetSize(this, a4) <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::Trim(this, a4);
    if (((*(**(this + 6) + 40))(*(this + 6), a2, a3) & 1) == 0)
    {
      *(this + 56) = 1;
      v8 = this + 16;
      *this = this + 32;
    }

    return v8;
  }

  if (*this - a4 >= a3)
  {
    memcpy(a4, a2, a3);
    return &a4[a3];
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a2, a3, a4);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(google::protobuf::io::EpsCopyOutputStream *this, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *this;
  if (*this <= a4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    v8 = *this;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  if (v8 <= v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ptr < end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(this, v18, v9, v17);
}

void sub_26567AF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(google::protobuf::io::EpsCopyOutputStream *this, void *a2, uint64_t a3, char *a4)
{
  if (*(this + 57) == 1)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(this, a2, a3, a4);
  }

  else if (*this - a4 < a3)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a2, a3, a4);
  }

  else
  {
    v6 = a3;
    memcpy(a4, a2, a3);
    return &a4[v6];
  }
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(google::protobuf::io::EpsCopyOutputStream *this, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *this;
  if (*this <= a4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    v8 = *this;
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v9) = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v8 <= v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ptr < end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (*this - v17 < v9)
  {
    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_26567B1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedOutputStream::CodedOutputStream(uint64_t a1, uint64_t a2, int a3)
{
  v6 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  v7 = a1 + 16;
  *a1 = a1 + 16;
  *(a1 + 8) = a1 + 16;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 58) = v6;
  *(a1 + 64) = a1 + 16;
  *(a1 + 72) = (*(*a2 + 32))(a2);
  if (a3)
  {
    v14 = 0;
    v13 = 0;
    if ((*(*a2 + 16))(a2, &v14, &v13) && v13 != 0)
    {
      v9 = v14;
      if (v13 <= 16)
      {
        v10 = v7 + v13;
      }

      else
      {
        v10 = v14 + v13 - 16;
      }

      if (v13 <= 16)
      {
        v11 = v14;
      }

      else
      {
        v11 = 0;
      }

      if (v13 <= 16)
      {
        v9 = v7;
      }

      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 64) = v9;
    }
  }

  return a1;
}

char *google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0 && *(a1 + 12))
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 949);
    v5 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (str.size()) <= (kuint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    LOBYTE(v4) = *(v3 + 23);
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 2);
  }

  if (v6 > 0x7F)
  {
    *a2 = v6 | 0x80;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      v7 = a2 + 2;
      do
      {
        *(v7 - 1) = v8 | 0x80;
        v9 = v8 >> 7;
        ++v7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
      *(v7 - 1) = v9;
    }

    else
    {
      a2[1] = v8;
      v7 = a2 + 2;
    }
  }

  else
  {
    *a2 = v6;
    v7 = a2 + 1;
  }

  v11 = *(v3 + 23);
  if (v11 >= 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = *v3;
  }

  if (v11 >= 0)
  {
    LODWORD(v3) = *(v3 + 23);
  }

  else
  {
    v3 = v3[1];
  }

  memcpy(v7, v12, v3);
  return &v7[v3];
}

void sub_26567B410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::VerifyVersion(google::protobuf::internal *this, google::protobuf::internal *a2, const std::string::value_type *a3, const char *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2 > 3014000)
  {
    LODWORD(v22) = 3;
    v23 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v24 = 76;
    memset(&v25, 0, sizeof(v25));
    std::string::append(&v25, "This program requires version ");
    google::protobuf::internal::VersionString(a2, &v19);
    if ((v21 & 0x80u) == 0)
    {
      v7 = &v19;
    }

    else
    {
      v7 = v19;
    }

    if ((v21 & 0x80u) == 0)
    {
      v8 = v21;
    }

    else
    {
      v8 = v20;
    }

    std::string::append(&v25, v7, v8);
    std::string::append(&v25, " of the Protocol Buffer runtime library, but the installed version is ");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v27 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, __str);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v10 = v18;
    }

    else
    {
      v10 = v17;
    }

    std::string::append(&v25, p_p, v10);
    std::string::append(&v25, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v25, a3);
    std::string::append(&v25, ".)");
    google::protobuf::internal::LogMessage::Finish(&v22);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  if (this < 3014000)
  {
    LODWORD(v22) = 3;
    v23 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v24 = 87;
    memset(&v25, 0, sizeof(v25));
    std::string::append(&v25, "This program was compiled against version ");
    google::protobuf::internal::VersionString(this, &v19);
    if ((v21 & 0x80u) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v19;
    }

    if ((v21 & 0x80u) == 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v20;
    }

    std::string::append(&v25, v11, v12);
    std::string::append(&v25, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v27 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, __str);
    if ((v18 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }

    std::string::append(&v25, v13, v14);
    std::string::append(&v25, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v25, a3);
    std::string::append(&v25, ".)");
    google::protobuf::internal::LogMessage::Finish(&v22);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_26567B71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::LogMessage::LogMessage(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, const std::string::value_type *a2)
{
  std::string::append(a1 + 1, a2);
  return a1;
}

{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

_BYTE *google::protobuf::internal::VersionString@<X0>(google::protobuf::internal *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", this / 1000000, this / 1000 % 1000, this % 1000);
  __str[127] = 0;
  result = std::string::basic_string[abi:ne200100]<0>(a2, __str);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void google::protobuf::internal::LogMessage::~LogMessage(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t google::protobuf::internal::DefaultLogHandler(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x277D85DF8];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", google::protobuf::internal::DefaultLogHandler(google::protobuf::LogLevel,char const*,int,std::string const&)::level_names[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, google::protobuf::StringPiece *this)
{
  google::protobuf::StringPiece::ToString(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append(a1 + 1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_26567BA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *google::protobuf::StringPiece::ToString@<X0>(_BYTE *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = *(this + 1);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    a2[v4] = 0;
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  return this;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, google::protobuf::util::Status *this)
{
  google::protobuf::util::Status::ToString(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append(a1 + 1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_26567BB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, __int128 *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  google::protobuf::operator<<(&v9, a2);
  std::stringbuf::str();
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1 + 1, v4, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x26675B290](&v13);
  return a1;
}

void sub_26567BD10(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8, MEMORY[0x277D82828]);
  MEMORY[0x26675B290](va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, std::string::value_type a2)
{
  v6 = *MEMORY[0x277D85DE8];
  __s[0] = a2;
  __s[1] = 0;
  __s[127] = 0;
  std::string::append(a1 + 1, __s);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%u", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%ld", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lld", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%llu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, double a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%g", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, const void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%p", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

const char **google::protobuf::internal::LogMessage::Finish(const char **this)
{
  v1 = this;
  if (*this == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(google::protobuf::internal::log_silencer_count_);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *this;
  }

  this = google::protobuf::internal::log_handler_(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    google::protobuf::FatalException::FatalException(exception, v1[1], *(v1 + 4), v1 + 3);
  }

  return this;
}

uint64_t (*google::protobuf::SetLogHandler(uint64_t (*a1)()))()
{
  v1 = google::protobuf::internal::log_handler_;
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = google::protobuf::internal::NullLogHandler;
  }

  google::protobuf::internal::log_handler_ = v2;
  if (v1 == google::protobuf::internal::NullLogHandler)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_2877049D8;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x26675B300);
}

uint64_t google::protobuf::FatalException::what(google::protobuf::FatalException *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t google::protobuf::internal::FunctionClosure0::Run(google::protobuf::internal::FunctionClosure0 *this)
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

uint64_t google::protobuf::FatalException::FatalException(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_2877049D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t google::protobuf::internal::GeneratedExtensionFinder::Find(uint64_t a1, int a2, _OWORD *a3)
{
  {
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
      v7 = (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))) ^ a2;
      v8 = vcnt_s8(v3);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v7;
        if (v7 >= *&v3)
        {
          v9 = v7 % *&v3;
        }
      }

      else
      {
        v9 = (*&v3 - 1) & v7;
      }

      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v7 == v12)
          {
            if (i[2] == v4 && *(i + 6) == a2)
            {
              v14 = *(i + 3);
              *a3 = *(i + 2);
              a3[1] = v14;
              return 1;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v3)
              {
                v12 %= *&v3;
              }
            }

            else
            {
              v12 &= *&v3 - 1;
            }

            if (v12 != v9)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 0;
}

void google::protobuf::internal::ExtensionSet::RegisterExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, int a3, std::string::value_type a4, std::string::value_type a5)
{
  v7 = a3;
  v8 = a2;
  switch(a3)
  {
    case 14:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 140);
      v10 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
LABEL_7:
      google::protobuf::internal::LogMessage::~LogMessage(&v14.__r_.__value_.__l.__data_);
      break;
    case 11:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 141);
      v11 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v11->__r_.__value_.__l.__data_);
      goto LABEL_7;
    case 10:
      google::protobuf::internal::LogMessage::LogMessage(&v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 142);
      v12 = google::protobuf::internal::LogMessage::operator<<(&v14, "CHECK failed: (type) != (WireFormatLite::TYPE_GROUP): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
      goto LABEL_7;
  }

  v14.__r_.__value_.__s.__data_[0] = v7;
  v14.__r_.__value_.__s.__data_[1] = a4;
  v14.__r_.__value_.__s.__data_[2] = a5;
  v15 = 0;
}

void sub_26567C6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::anonymous namespace::Register(unint64_t a1, int a2, _OWORD *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  v6 = a3[1];
  v26[0] = *a3;
  v26[1] = v6;
  v7 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v7 >> 47) ^ v7);
  v9 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ a2;
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ a2;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v9;
  }

  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (v14[2] != a1 || *(v14 + 6) != a2)
  {
    goto LABEL_22;
  }

  google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 108);
  v18 = google::protobuf::internal::LogMessage::operator<<(v26, "Multiple extension registrations for type ");
  (*(*a1 + 16))(__p, a1);
  v19 = google::protobuf::internal::LogMessage::operator<<(v18, __p);
  v20 = google::protobuf::internal::LogMessage::operator<<(v19, ", field number ");
  v21 = google::protobuf::internal::LogMessage::operator<<(v20, a2);
  v22 = google::protobuf::internal::LogMessage::operator<<(v21, ".");
  google::protobuf::internal::LogFinisher::operator=(&v23, &v22->__r_.__value_.__l.__data_);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  google::protobuf::internal::LogMessage::~LogMessage(v26);
  v17 = *MEMORY[0x277D85DE8];
}

void google::protobuf::internal::ExtensionSet::RegisterEnumExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, int a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, BOOL (*a7)(int))
{
  v10 = a3;
  v11 = a2;
  if (a3 != 14)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 164);
    v13 = google::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: (type) == (WireFormatLite::TYPE_ENUM): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = v10;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = google::protobuf::internal::CallNoArgValidityFunc;
  v15.__r_.__value_.__r.__words[2] = a6;
  v16 = 0;
}

void sub_26567CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::RegisterMessageExtension(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, const google::protobuf::MessageLite *a7)
{
  v11 = a2;
  if ((a3 & 0xFE) != 0xA)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 177);
    v13 = google::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = a3;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = a6;
  v16 = 0;
}

void sub_26567CED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSet(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void google::protobuf::internal::ExtensionSet::~ExtensionSet(google::protobuf::internal::ExtensionSet *this)
{
  if (!*this)
  {
    v2 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::~()::$_0>(*v2, (v2 + 8));
    }

    else if (*(this + 5))
    {
      v3 = 32 * *(this + 5);
      v4 = (v2 + 8);
      do
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(v4);
        v4 = (v4 + 32);
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(this + 2);
    if (*(this + 4) >= 0x101u)
    {
      google::protobuf::internal::ExtensionSet::~ExtensionSet(v5 == 0, *(this + 2));
    }

    else if (v5)
    {
      MEMORY[0x26675B2D0](*(this + 2), 0x1062C802AB6010CLL);
    }
  }
}

uint64_t google::protobuf::internal::ExtensionSet::DeleteFlatMap(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x26675B2D0);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Has(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 9) == 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 231);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !ext->is_repeated: ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    v5 = *(v3 + 10) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_26567D060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *google::protobuf::internal::ExtensionSet::FindOrNull(int **this, int a2)
{
  if (*(this + 4) >= 0x101u)
  {
    return google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
  }

  v2 = this[2];
  v3 = *(this + 5);
  v4 = &v2[8 * v3];
  while (v3)
  {
    v5 = v3 >> 1;
    v6 = &v2[8 * (v3 >> 1)];
    v8 = *v6;
    v7 = v6 + 8;
    v3 += ~(v3 >> 1);
    v10 = __OFSUB__(v8, a2);
    v9 = v8 - a2 < 0;
    if (v8 >= a2)
    {
      v3 = v5;
    }

    if (v9 != v10)
    {
      v2 = v7;
    }
  }

  if (v2 == v4)
  {
    return 0;
  }

  v12 = *v2;
  v11 = v2 + 2;
  if (v12 == a2)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

{
  if (*(this + 4) >= 0x101u)
  {
    return google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
  }

  v2 = this[2];
  v3 = *(this + 5);
  v4 = &v2[8 * v3];
  while (v3)
  {
    v5 = v3 >> 1;
    v6 = &v2[8 * (v3 >> 1)];
    v8 = *v6;
    v7 = v6 + 8;
    v3 += ~(v3 >> 1);
    v10 = __OFSUB__(v8, a2);
    v9 = v8 - a2 < 0;
    if (v8 >= a2)
    {
      v3 = v5;
    }

    if (v9 != v10)
    {
      v2 = v7;
    }
  }

  if (v2 == v4)
  {
    return 0;
  }

  v12 = *v2;
  v11 = v2 + 2;
  if (v12 == a2)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::ExtensionSet::NumExtensions(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::NumExtensions(void)::$_0>(*v1, (v1 + 8), &v7);
    return v7;
  }

  else
  {
    v2 = *(this + 5);
    if (*(this + 5))
    {
      LODWORD(result) = 0;
      v4 = 32 * v2;
      v5 = (v1 + 18);
      do
      {
        v6 = *v5;
        v5 += 32;
        result = result + ((v6 & 1) == 0);
        v4 -= 32;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::internal::ExtensionSet::ExtensionSize(int **this, int a2)
{
  result = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (result)
  {

    return google::protobuf::internal::ExtensionSet::Extension::GetSize(result);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::GetSize(google::protobuf::internal::ExtensionSet::Extension *this)
{
  if ((*(this + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1700);
    v2 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: is_repeated: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v3 = *(this + 8);
  if ((v3 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v3];
  if (v5 > 5)
  {
    if (v5 <= 8)
    {
      return **this;
    }

    if (v5 == 9 || v5 == 10)
    {
      return *(*this + 8);
    }
  }

  else if (v5 > 2 || v5 == 1 || v5 == 2)
  {
    return **this;
  }

  google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1719);
  v7 = google::protobuf::internal::LogMessage::operator<<(v9, "Can't get here.");
  google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_26567D318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionType(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 10))
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 257);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "Don't lookup extension types if they aren't present (2). ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    return *(v3 + 8);
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 253);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "Don't lookup extension types if they aren't present (1). ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    return 0;
  }
}

void sub_26567D3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::ClearExtension(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v2)
  {

    google::protobuf::internal::ExtensionSet::Extension::Clear(v2);
  }
}

void google::protobuf::internal::ExtensionSet::Extension::Clear(google::protobuf::internal::ExtensionSet::Extension *this)
{
  if (*(this + 9) == 1)
  {
    v2 = *(this + 8);
    if ((v2 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v3 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v3->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v4 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2];
    if (v4 > 5)
    {
      if (v4 <= 8)
      {
LABEL_20:
        **this = 0;
        return;
      }

      if (v4 == 9)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(*this);
      }

      else if (v4 == 10)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*this);
      }
    }

    else if (v4 > 2 || v4 == 1 || v4 == 2)
    {
      goto LABEL_20;
    }
  }

  else if ((*(this + 10) & 1) == 0)
  {
    v5 = *(this + 8);
    if ((v5 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v7 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v5];
    if (v7 == 10)
    {
      v9 = **this;
      if ((*(this + 10) & 0x10) != 0)
      {
        (*(v9 + 112))();
      }

      else
      {
        (*(v9 + 40))();
      }
    }

    else if (v7 == 9)
    {
      v8 = *this;
      if (*(*this + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
      }
    }

    *(this + 10) = *(this + 10) & 0xF0 | 1;
  }
}

void sub_26567D6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetInt32(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 1)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26567D818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetInt32(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_26567DA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MaybeNewExtension(google::protobuf::internal::ExtensionSet *a1, int a2, uint64_t a3, uint64_t **a4)
{
  v6 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  *a4 = v6;
  v6[2] = a3;
  return v7 & 1;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt32(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<int>::Get(*v4, a3);
}

void sub_26567DBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedInt32(int **this, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::Set(*v5, a3, &v13);
}

void sub_26567DDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddInt32(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddInt32(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<int>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<int>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<int>::elements(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<int>::elements(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_26567E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetInt64(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 2)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26567E208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetInt64(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_26567E40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt64(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<long long>::Get(*v4, a3);
}

void sub_26567E5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedInt64(int **this, int a2, int a3, uint64_t a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::Set(*v5, a3, &v13);
}

void sub_26567E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddInt64(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddInt64(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<long long>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<long long>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<long long>::elements(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<long long>::elements(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_26567EA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetUInt32(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 3)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26567EBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetUInt32(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_26567EDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt32(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<unsigned int>::Get(*v4, a3);
}

void sub_26567EF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedUInt32(int **this, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::Set(*v5, a3, &v13);
}

void sub_26567F11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddUInt32(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddUInt32(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned int>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<unsigned int>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<unsigned int>::elements(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<unsigned int>::elements(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_26567F41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetUInt64(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26567F580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetUInt64(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_26567F784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt64(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<unsigned long long>::Get(*v4, a3);
}

void sub_26567F930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedUInt64(int **this, int a2, int a3, uint64_t a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::Set(*v5, a3, &v13);
}

void sub_26567FAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddUInt64(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddUInt64(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned long long>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<unsigned long long>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<unsigned long long>::elements(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<unsigned long long>::elements(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_26567FDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float google::protobuf::internal::ExtensionSet::GetFloat(int **this, int a2, float a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 6)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_26567FF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetFloat(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, float a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a4;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
}

void sub_265680150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float google::protobuf::internal::ExtensionSet::GetRepeatedFloat(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<float>::Get(*v4, a3);
}

void sub_2656802FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedFloat(int **this, int a2, int a3, float a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::Set(*v5, a3, &v13);
}

void sub_2656804A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddFloat(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5, float a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddFloat(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<float>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<float>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<float>::elements(v23);
    *(result + 4 * v24) = a6;
  }

  else
  {
    result = google::protobuf::RepeatedField<float>::elements(v23);
    *(result + 4 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2656807AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double google::protobuf::internal::ExtensionSet::GetDouble(int **this, int a2, double a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_265680918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetDouble(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, double a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a4;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
}

void sub_265680B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double google::protobuf::internal::ExtensionSet::GetRepeatedDouble(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<double>::Get(*v4, a3);
}

void sub_265680CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedDouble(int **this, int a2, int a3, double a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::Set(*v5, a3, &v13);
}

void sub_265680E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddDouble(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5, double a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddDouble(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<double>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<double>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<double>::elements(v23);
    *(result + 8 * v24) = a6;
  }

  else
  {
    result = google::protobuf::RepeatedField<double>::elements(v23);
    *(result + 8 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_265681180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetBool(int **this, int a2, char a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 7)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      a3 = *v5;
    }
  }

  return a3 & 1;
}

void sub_2656812E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetBool(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, char a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_2656814E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedBool(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<BOOL>::Get(*v4, a3);
}

void sub_265681694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedBool(int **this, int a2, int a3, char a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::Set(*v5, a3, &v13);
}

void sub_26568183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddBool(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, char a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddBool(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<BOOL>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<BOOL>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<BOOL>::elements(v23);
    *(result + v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<BOOL>::elements(v23);
    *(result + v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_265681B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const void *google::protobuf::internal::ExtensionSet::GetRawRepeatedField(int **this, int a2, const void *a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    return *v4;
  }

  return a3;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, char a4, uint64_t a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3];
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
          }

          v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<float>>;
          goto LABEL_48;
        }
      }

      else
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
          }

          v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<BOOL>>;
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    switch(v12)
    {
      case 8:
        v13 = *a1;
        if (!v13)
        {
          goto LABEL_49;
        }

        if (*(v13 + 24))
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 9:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v15);
          }

          v16 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<std::string>>;
          goto LABEL_54;
        }

        break;
      case 10:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v15);
          }

          v16 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>;
LABEL_54:
          AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v15, 0x18, v16);
          AlignedAndAddCleanup[2] = 0;
          *AlignedAndAddCleanup = v15;
          AlignedAndAddCleanup[1] = 0;
          goto LABEL_56;
        }

        break;
      default:
        return *v10;
    }

    operator new();
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
        }

        v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned int>>;
        goto LABEL_48;
      }
    }

    else if (v12 == 4)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
        }

        v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned long long>>;
        goto LABEL_48;
      }
    }

    else
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
        }

        v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<double>>;
        goto LABEL_48;
      }
    }

LABEL_49:
    operator new();
  }

  if (v12 == 1)
  {
    v13 = *a1;
    if (!v13)
    {
      goto LABEL_49;
    }

    if (*(v13 + 24))
    {
LABEL_42:
      google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
    }

LABEL_43:
    v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<int>>;
LABEL_48:
    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v13, 0x10, v14);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v13;
LABEL_56:
    *v10 = AlignedAndAddCleanup;
    return *v10;
  }

  if (v12 == 2)
  {
    v13 = *a1;
    if (v13)
    {
      if (*(v13 + 24))
      {
        google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(v13);
      }

      v14 = google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<long long>>;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  return *v10;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 435);
    v3 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Extension not found.");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  return *v2;
}

void sub_265681F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetEnum(int **this, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 450);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 8)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 450);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_265682054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetEnum(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, uint64_t a5)
{
  v8 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v9 = v8;
  v8[2] = a5;
  if (v10)
  {
    *(v8 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 460);
      v12 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(v8 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v14] != 8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
}

void sub_265682258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedEnum(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 471);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 472);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 472);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *google::protobuf::RepeatedField<int>::Get(*v4, a3);
}

void sub_265682404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SetRepeatedEnum(int **this, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 478);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: extension != NULL: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 479);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 479);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::Set(*v5, a3, &v13);
}

void sub_2656825AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddEnum(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 488);
      v15 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddInt32(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<int>>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = v16;
    *v12 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v18 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v19] != 8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v21 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }

    if (*(v12 + 11) != a4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 495);
      v22 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v27, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    google::protobuf::RepeatedField<int>::Reserve(v23, v24 + 1);
    result = google::protobuf::RepeatedField<int>::elements(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = google::protobuf::RepeatedField<int>::elements(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2656828AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetString(int **a1, int a2, uint64_t a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((v4[10] & 1) == 0)
    {
      if (v4[9])
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 510);
        v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 9)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 510);
        v9 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_265682A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableString(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 520);
      v11 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    v8[9] = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      google::protobuf::internal::ArenaStringPtr::MutableSlow<>(v12);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v12, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
    *AlignedAndAddCleanup = 0;
    AlignedAndAddCleanup[1] = 0;
    AlignedAndAddCleanup[2] = 0;
    *v8 = AlignedAndAddCleanup;
  }

  else
  {
    if (*(v7 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v14 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    v15 = v8[8];
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v15] != 9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v17 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    }
  }

  v8[10] &= 0xF0u;
  return *v8;
}

void sub_265682C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedString(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 533);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 534);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 534);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(*v4, a3);
}

void sub_265682E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRepeatedString(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 540);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 541);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 541);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(*v4, a3);
}

void sub_265682FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ExtensionSet::AddString(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 550);
      v11 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }

    *(v8 + 9) = 1;
    *(v8 + 11) = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddString(v12);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v12, 0x18, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<std::string>>);
    AlignedAndAddCleanup[2] = 0;
    *AlignedAndAddCleanup = v12;
    AlignedAndAddCleanup[1] = 0;
    *v8 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v7 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v14 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }

    v15 = *(v8 + 8);
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v15] != 9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v17 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      google::protobuf::internal::LogFinisher::operator=(&v26, &v17->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
    }
  }

  v18 = *v8;
  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = *(v18 + 12);
LABEL_22:
    google::protobuf::RepeatedPtrField<std::string>::Reserve(v18, v21 + 1);
    v19 = *(v18 + 16);
    v21 = *v19;
    goto LABEL_23;
  }

  v20 = *(v18 + 8);
  v21 = *v19;
  if (v20 < *v19)
  {
    *(v18 + 8) = v20 + 1;
    return *&v19[2 * v20 + 2];
  }

  if (v21 == *(v18 + 12))
  {
    goto LABEL_22;
  }

LABEL_23:
  *v19 = v21 + 1;
  v23 = *v18;
  if (!*v18)
  {
    operator new();
  }

  if (*(v23 + 24))
  {
    google::protobuf::internal::ArenaStringPtr::MutableSlow<>(*v18);
  }

  result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v23, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v24 = *(v18 + 8);
  v25 = *(v18 + 16) + 8 * v24;
  *(v18 + 8) = v24 + 1;
  *(v25 + 8) = result;
  return result;
}

void sub_265683300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const google::protobuf::MessageLite *google::protobuf::internal::ExtensionSet::GetMessage(int **this, int a2, const google::protobuf::MessageLite *a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 571);
      v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    v7 = *(v5 + 8);
    if ((v7 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v7] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 571);
      v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    v10 = *v5;
    if ((*(v5 + 10) & 0x10) != 0)
    {
      return (*(*v10 + 24))(v10, a3);
    }

    return v10;
  }

  return a3;
}

void sub_265683490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableMessage(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 591);
      v13 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    *(v10 + 9) = 0;
    *(v10 + 10) &= 0xFu;
    result = (*(*a4 + 32))(a4, *a1);
    *v10 = result;
    *(v10 + 10) &= 0xF0u;
  }

  else
  {
    if (*(v9 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v15 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    v16 = *(v10 + 8);
    if ((v16 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v17 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v17->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v16] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v18 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    v19 = *(v10 + 10);
    *(v10 + 10) = v19 & 0xF0;
    result = *v10;
    if ((v19 & 0x10) != 0)
    {
      return (*(*result + 32))(result, a4);
    }
  }

  return result;
}

void sub_265683714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SetAllocatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v9 = a5[1];
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v11 = v10;
    v10[2] = a4;
    if (v12)
    {
      *(v10 + 8) = a3;
      if ((a3 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v13 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 624);
        v14 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v14->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      v11[9] = 0;
      v11[10] &= 0xFu;
      if (v9 != *this)
      {
        if (v9)
        {
LABEL_11:
          v15 = (*(*a5 + 32))(a5);
          *v11 = v15;
          (*(*v15 + 64))(v15, a5);
LABEL_32:
          v11[10] &= 0xF0u;
          return;
        }

LABEL_30:
        *v11 = a5;
        google::protobuf::Arena::Own<google::protobuf::MessageLite>(*this, a5);
        goto LABEL_32;
      }
    }

    else
    {
      if (*(v10 + 9))
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 637);
        v17 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v17->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      v18 = v11[8];
      if ((v18 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v19 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v19->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v18] != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 637);
        v20 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v20->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      if ((v11[10] & 0x10) != 0)
      {
        (*(**v11 + 40))(*v11, a5);
        goto LABEL_32;
      }

      v21 = *this;
      if (!*this)
      {
        if (*v11)
        {
          (*(**v11 + 8))(*v11);
          v21 = *this;
        }

        else
        {
          v21 = 0;
        }
      }

      if (v9 != v21)
      {
        if (v9)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }
    }

    *v11 = a5;
    goto LABEL_32;
  }

  v16 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v16)
  {

    google::protobuf::internal::ExtensionSet::Extension::Clear(v16);
  }
}

void sub_265683A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

atomic_ullong *google::protobuf::Arena::Own<google::protobuf::MessageLite>(atomic_ullong *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>);
  }

  return result;
}

void google::protobuf::internal::ExtensionSet::UnsafeArenaSetAllocatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v10 = v9;
    v9[2] = a4;
    if (v11)
    {
      *(v9 + 8) = a3;
      if ((a3 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 668);
        v13 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      v10[9] = 0;
      v10[10] &= 0xFu;
    }

    else
    {
      if (*(v9 + 9))
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 673);
        v15 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v15->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      v16 = v10[8];
      if ((v16 - 19) <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v16] != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 673);
        v18 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        google::protobuf::internal::LogFinisher::operator=(&v19, &v18->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      }

      if ((v10[10] & 0x10) != 0)
      {
        (*(**v10 + 48))(*v10, a5);
        goto LABEL_24;
      }

      if (!*this && *v10)
      {
        (*(**v10 + 8))(*v10);
      }
    }

    *v10 = a5;
LABEL_24:
    v10[10] &= 0xF0u;
    return;
  }

  v14 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (v14)
  {

    google::protobuf::internal::ExtensionSet::Extension::Clear(v14);
  }
}

void sub_265683D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ReleaseMessage(int **this, int a2, const google::protobuf::MessageLite *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (v6[9])
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 693);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = v7[8];
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 693);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if ((v7[10] & 0x10) != 0)
  {
    v12 = (*(**v7 + 56))(*v7, a3);
    if (!*this && *v7)
    {
      (*(**v7 + 8))(*v7);
    }
  }

  else
  {
    v12 = *v7;
    if (*this)
    {
      v12 = (*(*v12 + 24))(*v7);
      (*(*v12 + 64))(v12, *v7);
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(this, a2);
  return v12;
}

void sub_265683FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::Erase(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v12 = a2;
  v3 = *(this + 4);
  result = *(this + 2);
  if (v3 >= 0x101)
  {
    return std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__erase_unique<int>(result, &v12);
  }

  v5 = *(this + 5);
  v6 = &result[32 * v5];
  if (*(this + 5))
  {
    v7 = *(this + 5);
    do
    {
      v8 = v7 >> 1;
      v9 = &result[32 * (v7 >> 1)];
      v11 = *v9;
      v10 = (v9 + 8);
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        result = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  if (result != v6 && *result == a2)
  {
    if (v6 != result + 32)
    {
      result = memmove(result, result + 32, v6 - (result + 32));
      LOWORD(v5) = *(this + 5);
    }

    *(this + 5) = v5 - 1;
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::UnsafeArenaReleaseMessage(int **this, int a2, const google::protobuf::MessageLite *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (*(v6 + 9))
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 722);
    v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v9 = v7[8];
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v9] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 722);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v12 = *v7;
  if ((v7[10] & 0x10) != 0)
  {
    v12 = (*(*v12 + 64))(*v7, a3);
    if (!*this)
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(this, a2);
  return v12;
}

void sub_265684254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedMessage(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 744);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 745);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 745);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v4, a3);
}

void sub_2656843EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRepeatedMessage(int **this, int a2, int a3)
{
  v4 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 751);
    v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: extension != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 752);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v8] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 752);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v4, a3);
}

void sub_26568458C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::AddMessage(google::protobuf::internal::ExtensionSet *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 762);
      v13 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }

    v10[9] = 1;
    v14 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v14 + 24))
    {
      google::protobuf::internal::ExtensionSet::AddMessage(*a1);
    }

    AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v14, 0x18, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>);
    AlignedAndAddCleanup[2] = 0;
    *AlignedAndAddCleanup = v14;
    AlignedAndAddCleanup[1] = 0;
    *v10 = AlignedAndAddCleanup;
  }

  else
  {
    if ((*(v9 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v16 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }

    v17 = v10[8];
    if ((v17 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v18 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }

    if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v17] != 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v19 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      google::protobuf::internal::LogFinisher::operator=(&v25, &v19->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    }
  }

  v20 = *v10;
  v21 = *(*v10 + 16);
  if (!v21 || (v22 = *(v20 + 8), v22 >= *v21) || (*(v20 + 8) = v22 + 1, (v23 = *&v21[2 * v22 + 2]) == 0))
  {
    v23 = (*(*a4 + 32))(a4, *a1);
    google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v10, v23);
  }

  return v23;
}

void sub_265684874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::RemoveLast(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 791);
    v3 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  if ((*(v2 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 792);
    v5 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: extension->is_repeated: ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  v6 = *(v2 + 8);
  if ((v6 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v7 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  v8 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v6];
  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          return;
        }

        v9 = *v2;
        v10 = *v9;
        if (*v9 > 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v9 = *v2;
      v10 = *v9;
      if (*v9 > 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v8 == 3)
      {
        v9 = *v2;
        v10 = *v9;
        if (*v9 <= 0)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if (v8 != 4)
      {
        v9 = *v2;
        v10 = *v9;
        if (*v9 <= 0)
        {
          goto LABEL_36;
        }

LABEL_37:
        *v9 = v10 - 1;
        return;
      }

      v9 = *v2;
      v10 = *v9;
      if (*v9 > 0)
      {
        goto LABEL_37;
      }
    }

LABEL_36:
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v16 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v16->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
    v10 = *v9;
    goto LABEL_37;
  }

  if (v8 <= 7)
  {
    if (v8 == 6)
    {
      v9 = *v2;
      v10 = *v9;
      if (*v9 <= 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v9 = *v2;
      v10 = *v9;
      if (*v9 <= 0)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_37;
  }

  switch(v8)
  {
    case 8:
      v9 = *v2;
      v10 = *v9;
      if (*v9 <= 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    case 9:
      v17 = *v2;
      v18 = *(v17 + 8);
      if (v18 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1773);
        v19 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (current_size_) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v23, &v19->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
        v18 = *(v17 + 8);
      }

      v20 = v18 - 1;
      v21 = *(v17 + 16) + 8 * v20;
      *(v17 + 8) = v20;
      v22 = *(v21 + 8);
      if (*(v22 + 23) < 0)
      {
        **v22 = 0;
        *(v22 + 8) = 0;
      }

      else
      {
        *v22 = 0;
        *(v22 + 23) = 0;
      }

      break;
    case 10:
      v11 = *v2;
      v12 = *(v11 + 8);
      if (v12 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1773);
        v13 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (current_size_) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v23, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
        v12 = *(v11 + 8);
      }

      v14 = v12 - 1;
      v15 = *(v11 + 16) + 8 * v14;
      *(v11 + 8) = v14;
      (*(**(v15 + 8) + 40))(*(v15 + 8));
      break;
  }
}

void sub_265684D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ReleaseLast(int **this, int a2)
{
  v2 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 830);
    v3 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: extension != NULL: ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if ((*(v2 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 831);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: extension->is_repeated: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v6 = *(v2 + 8);
  if ((v6 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v6] != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 832);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: cpp_type(extension->type) == WireFormatLite::CPPTYPE_MESSAGE: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::ReleaseLastInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v2);
}

void sub_265684F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SwapElements(int **this, int a2, int a3, int a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 838);
    v7 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: extension != NULL: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Index out-of-bounds (field is empty).");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 839);
    v9 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: extension->is_repeated: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v10 = *(v6 + 8);
  if ((v10 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v10];
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        google::protobuf::RepeatedField<unsigned int>::SwapElements(*v6, a3, a4);
      }

      else if (v12 == 4)
      {
        google::protobuf::RepeatedField<unsigned long long>::SwapElements(*v6, a3, a4);
      }

      else
      {
        google::protobuf::RepeatedField<double>::SwapElements(*v6, a3, a4);
      }

      return;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        google::protobuf::RepeatedField<long long>::SwapElements(*v6, a3, a4);
      }

      return;
    }

LABEL_22:
    google::protobuf::RepeatedField<int>::SwapElements(*v6, a3, a4);
    return;
  }

  if (v12 <= 7)
  {
    if (v12 == 6)
    {
      google::protobuf::RepeatedField<float>::SwapElements(*v6, a3, a4);
    }

    else
    {
      google::protobuf::RepeatedField<BOOL>::SwapElements(*v6, a3, a4);
    }

    return;
  }

  if (v12 == 8)
  {
    goto LABEL_22;
  }

  if (v12 == 9 || v12 == 10)
  {
    v13 = *(*v6 + 16) + 8;
    v14 = *(v13 + 8 * a3);
    *(v13 + 8 * a3) = *(v13 + 8 * a4);
    *(v13 + 8 * a4) = v14;
  }
}

void sub_2656851D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::Clear(google::protobuf::internal::ExtensionSet *this)
{
  v2 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = v2 + 1;
    v5 = v7;

    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::Clear(void)::$_0>(v5, v6);
  }

  else if (*(this + 5))
  {
    v3 = 32 * *(this + 5);
    v4 = (v2 + 1);
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Clear(v4);
      v4 = (v4 + 32);
      v3 -= 32;
    }

    while (v3);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::GrowCapacity(uint64_t this, size_t __sz)
{
  v2 = *(this + 8);
  if (v2 <= 0x100 && v2 < __sz)
  {
    v4 = this;
    do
    {
      if (v2)
      {
        LOWORD(v2) = 4 * v2;
      }

      else
      {
        LOWORD(v2) = 1;
      }
    }

    while (v2 < __sz);
    v5 = *(this + 16);
    v6 = *(this + 10);
    v7 = *this;
    if (v2 < 0x101u)
    {
      v8 = 32 * v2;
      if (v7)
      {
        if (*(v7 + 24))
        {
          google::protobuf::internal::ExtensionSet::GrowCapacity(*this);
          v8 = 32 * v2;
        }

        this = google::protobuf::Arena::AllocateAlignedNoHook(v7, v8);
      }

      else
      {
        this = operator new[](32 * v2);
      }

      v9 = this;
      if (v6)
      {
        this = memmove(this, v5, 32 * v6);
      }
    }

    else
    {
      if (!v7)
      {
        operator new();
      }

      if (*(v7 + 24))
      {
        google::protobuf::internal::ExtensionSet::GrowCapacity(*this);
      }

      this = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v7, 0x18, google::protobuf::internal::arena_destruct_object<std::map<int,google::protobuf::internal::ExtensionSet::Extension>>);
      v9 = this;
      *(this + 8) = 0;
      v10 = (this + 8);
      *(this + 16) = 0;
      *this = this + 8;
      if (v6)
      {
        v11 = &v5[32 * v6];
        v12 = v5;
        do
        {
          v15 = *v12;
          v13 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = v13;
          this = std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_hint_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(v9, v10, &v15);
          v10 = this;
          v12 += 32;
        }

        while (v12 != v11);
      }
    }

    if (*v4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v5 == 0;
    }

    if (!v14)
    {
      this = MEMORY[0x26675B2D0](v5, 0x1062C802AB6010CLL);
    }

    *(v4 + 8) = v2;
    *(v4 + 16) = v9;
    if (v2 >= 0x101u)
    {
      *(v4 + 10) = 0;
    }
  }

  return this;
}

uint64_t google::protobuf::internal::anonymous namespace::SizeOfUnion<google::protobuf::internal::ExtensionSet::KeyValue *,std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>>(char *a1, char *a2, void *a3, void *a4)
{
  v4 = 0;
  if (a1 != a2 && a3 != a4)
  {
    v4 = 0;
    do
    {
      v5 = *(a3 + 8);
      if (*a1 >= v5)
      {
        if (*a1 == v5)
        {
          a1 += 32;
          v6 = a3[1];
          if (v6)
          {
            do
            {
              a3 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = a3;
              a3 = a3[2];
            }

            while (*a3 != v7);
          }
        }

        else
        {
          v8 = a3[1];
          if (v8)
          {
            do
            {
              a3 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = a3;
              a3 = a3[2];
            }

            while (*a3 != v9);
          }
        }
      }

      else
      {
        a1 += 32;
      }

      ++v4;
    }

    while (a1 != a2 && a3 != a4);
  }

  if (a3 == a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v13 = *v12 == a3;
          a3 = v12;
        }

        while (!v13);
      }

      ++v10;
      a3 = v12;
    }

    while (v12 != a4);
  }

  return v4 + ((a2 - a1) >> 5) + v10;
}

void google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::internal::ExtensionSet::Extension *a3)
{
  if (*(a3 + 9) != 1)
  {
    if (*(a3 + 10))
    {
      return;
    }

    v11 = *(a3 + 8);
    if ((v11 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    v13 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v11];
    if (v13 <= 5)
    {
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          google::protobuf::internal::ExtensionSet::SetInt32(this, a2, *(a3 + 8), *a3, *(a3 + 2));
        }

        else if (v13 == 2)
        {
          google::protobuf::internal::ExtensionSet::SetInt64(this, a2, *(a3 + 8), *a3, *(a3 + 2));
        }
      }

      else if (v13 == 3)
      {
        google::protobuf::internal::ExtensionSet::SetUInt32(this, a2, *(a3 + 8), *a3, *(a3 + 2));
      }

      else if (v13 == 4)
      {
        google::protobuf::internal::ExtensionSet::SetUInt64(this, a2, *(a3 + 8), *a3, *(a3 + 2));
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetDouble(this, a2, *(a3 + 8), *(a3 + 2), *a3);
      }

      return;
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        google::protobuf::internal::ExtensionSet::SetFloat(this, a2, *(a3 + 8), *(a3 + 2), *a3);
      }

      else
      {
        google::protobuf::internal::ExtensionSet::SetBool(this, a2, *(a3 + 8), *a3, *(a3 + 2));
      }

      return;
    }

    if (v13 == 8)
    {
      google::protobuf::internal::ExtensionSet::SetEnum(this, a2, *(a3 + 8), *a3, *(a3 + 2));
      return;
    }

    if (v13 == 9)
    {
      v44 = *(a3 + 8);
      v45 = *a3;
      if (*(*a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v66, *v45, *(v45 + 1));
      }

      else
      {
        v46 = *v45;
        v66.__r_.__value_.__r.__words[2] = *(v45 + 2);
        *&v66.__r_.__value_.__l.__data_ = v46;
      }

      v54 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, v44, *(a3 + 2));
      v55 = v54;
      if (*(v54 + 23) < 0)
      {
        operator delete(*v54);
      }

      v56 = *&v66.__r_.__value_.__l.__data_;
      *(v55 + 16) = *(&v66.__r_.__value_.__l + 2);
      *v55 = v56;
      return;
    }

    if (v13 != 10)
    {
      return;
    }

    v24 = *(a3 + 2);
    v25 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    v26 = v25;
    v25[2] = v24;
    if (v27)
    {
      *(v25 + 8) = *(a3 + 8);
      *(v25 + 11) = *(a3 + 11);
      *(v25 + 9) = 0;
      v28 = *(v25 + 10) & 0xF;
      if ((*(a3 + 10) & 0x10) != 0)
      {
        *(v25 + 10) = v28 | 0x10;
        v65 = (*(**a3 + 16))(*a3, *this);
        *v26 = v65;
        (*(*v65 + 104))(v65, *a3);
        goto LABEL_151;
      }

      *(v25 + 10) = v28;
      v29 = (*(**a3 + 32))(*a3, *this);
      *v26 = v29;
LABEL_118:
      (*(*v29 + 64))(v29, *a3);
LABEL_151:
      *(v26 + 10) &= 0xF0u;
      return;
    }

    if (*(v25 + 8) != *(a3 + 8))
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1026);
      v47 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: (extension->type) == (other_extension.type): ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v47->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    if (*(v26 + 11) != *(a3 + 11))
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1027);
      v48 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v48->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    if (*(v26 + 9) == 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1028);
      v49 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: !extension->is_repeated: ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v49->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    v50 = *(v26 + 10);
    v51 = *v26;
    v52 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((*(v26 + 10) & 0x10) != 0)
      {
        (*(*v51 + 104))(*v26, v52);
        goto LABEL_151;
      }

      v52 = (*(*v52 + 24))(*a3, *v26);
      v53 = *v51;
    }

    else
    {
      v53 = *v51;
      if ((*(v26 + 10) & 0x10) != 0)
      {
        v29 = (*(v53 + 32))(*v26, v52);
        goto LABEL_118;
      }
    }

    (*(v53 + 64))(v51, v52);
    goto LABEL_151;
  }

  v6 = *(a3 + 2);
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  v10 = v9;
  v7[2] = v6;
  if (v9)
  {
    *(v7 + 8) = *(a3 + 8);
    *(v7 + 11) = *(a3 + 11);
    *(v7 + 9) = 1;
  }

  else
  {
    if (*(v7 + 8) != *(a3 + 8))
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 931);
      v14 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: (extension->type) == (other_extension.type): ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    if (*(v8 + 11) != *(a3 + 11))
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 932);
      v15 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }

    if ((*(v8 + 9) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 933);
      v16 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: extension->is_repeated: ");
      google::protobuf::internal::LogFinisher::operator=(&v67, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
    }
  }

  v17 = *(a3 + 8);
  if ((v17 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v18 = google::protobuf::internal::LogMessage::operator<<(v68, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v67, &v18->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v68[0].__r_.__value_.__l.__data_);
  }

  v19 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v17];
  if (v19 <= 5)
  {
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        if (v10)
        {
          v37 = *this;
          if (!v37)
          {
            operator new();
          }

          if (*(v37 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddUInt32(v37);
          }

          AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v37, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned int>>);
          *AlignedAndAddCleanup = 0;
          *(AlignedAndAddCleanup + 1) = v37;
          *v8 = AlignedAndAddCleanup;
        }

        else
        {
          AlignedAndAddCleanup = *v8;
        }

        google::protobuf::RepeatedField<unsigned int>::MergeFrom(AlignedAndAddCleanup, *a3);
      }

      else if (v19 == 4)
      {
        if (v10)
        {
          v40 = *this;
          if (!v40)
          {
            operator new();
          }

          if (*(v40 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddUInt64(v40);
          }

          v41 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v40, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<unsigned long long>>);
          *v41 = 0;
          *(v41 + 1) = v40;
          *v8 = v41;
        }

        else
        {
          v41 = *v8;
        }

        google::protobuf::RepeatedField<unsigned long long>::MergeFrom(v41, *a3);
      }

      else
      {
        if (v10)
        {
          v20 = *this;
          if (!v20)
          {
            operator new();
          }

          if (*(v20 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddDouble(v20);
          }

          v21 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v20, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<double>>);
          *v21 = 0;
          *(v21 + 1) = v20;
          *v8 = v21;
        }

        else
        {
          v21 = *v8;
        }

        google::protobuf::RepeatedField<double>::MergeFrom(v21, *a3);
      }

      return;
    }

    if (v19 != 1)
    {
      if (v19 == 2)
      {
        if (v10)
        {
          v30 = *this;
          if (!v30)
          {
            operator new();
          }

          if (*(v30 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddInt64(v30);
          }

          v31 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v30, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<long long>>);
          *v31 = 0;
          *(v31 + 1) = v30;
          *v8 = v31;
        }

        else
        {
          v31 = *v8;
        }

        google::protobuf::RepeatedField<long long>::MergeFrom(v31, *a3);
      }

      return;
    }

    if (v10)
    {
      v34 = *this;
      if (v34)
      {
        if (*(v34 + 24))
        {
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      goto LABEL_107;
    }

    goto LABEL_82;
  }

  if (v19 <= 7)
  {
    if (v19 == 6)
    {
      if (v10)
      {
        v35 = *this;
        if (!v35)
        {
          operator new();
        }

        if (*(v35 + 24))
        {
          google::protobuf::internal::ExtensionSet::AddFloat(v35);
        }

        v36 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v35, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<float>>);
        *v36 = 0;
        *(v36 + 1) = v35;
        *v8 = v36;
      }

      else
      {
        v36 = *v8;
      }

      google::protobuf::RepeatedField<float>::MergeFrom(v36, *a3);
    }

    else
    {
      if (v10)
      {
        v32 = *this;
        if (!v32)
        {
          operator new();
        }

        if (*(v32 + 24))
        {
          google::protobuf::internal::ExtensionSet::AddBool(v32);
        }

        v33 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v32, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<BOOL>>);
        *v33 = 0;
        *(v33 + 1) = v32;
        *v8 = v33;
      }

      else
      {
        v33 = *v8;
      }

      google::protobuf::RepeatedField<BOOL>::MergeFrom(v33, *a3);
    }
  }

  else
  {
    switch(v19)
    {
      case 8:
        if (v10)
        {
          v34 = *this;
          if (v34)
          {
            if (*(v34 + 24))
            {
LABEL_80:
              google::protobuf::internal::ExtensionSet::AddInt32(v34);
            }

LABEL_81:
            v39 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v34, 0x10, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedField<int>>);
            *v39 = 0;
            *(v39 + 1) = v34;
            *v8 = v39;
LABEL_108:
            google::protobuf::RepeatedField<int>::MergeFrom(v39, *a3);
            return;
          }

LABEL_107:
          operator new();
        }

LABEL_82:
        v39 = *v8;
        goto LABEL_108;
      case 9:
        if (v10)
        {
          v42 = *this;
          if (!v42)
          {
            operator new();
          }

          if (*(v42 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddString(v42);
          }

          v43 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v42, 0x18, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<std::string>>);
          *(v43 + 2) = 0;
          *v43 = v42;
          *(v43 + 1) = 0;
          *v8 = v43;
        }

        else
        {
          v43 = *v8;
        }

        google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v43, *a3);
        break;
      case 10:
        if (v10)
        {
          v22 = *this;
          if (!*this)
          {
            operator new();
          }

          if (*(v22 + 24))
          {
            google::protobuf::internal::ExtensionSet::AddMessage(*this);
          }

          v23 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v22, 0x18, google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>);
          *(v23 + 2) = 0;
          *v23 = v22;
          *(v23 + 1) = 0;
          *v8 = v23;
        }

        v57 = *a3;
        if (*(v57 + 8) >= 1)
        {
          v58 = 0;
          do
          {
            v59 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v57, v58);
            v60 = v59;
            v61 = *v8;
            v62 = *(*v8 + 2);
            if (!v62 || (v63 = v61[2], v63 >= *v62) || (v61[2] = v63 + 1, (v64 = *&v62[2 * v63 + 2]) == 0))
            {
              v64 = (*(*v59 + 32))(v59, *this);
              google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(*v8, v64);
            }

            (*(*v64 + 64))(v64, v60);
            ++v58;
          }

          while (v58 < *(v57 + 8));
        }

        break;
    }
  }
}

void google::protobuf::internal::ExtensionSet::Swap(google::protobuf::internal::ExtensionSet *this, google::protobuf::internal::ExtensionSet *a2)
{
  if (*this == *a2)
  {
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    google::protobuf::internal::ExtensionSet::MergeFrom(&v7, a2);
    google::protobuf::internal::ExtensionSet::Clear(a2);
    google::protobuf::internal::ExtensionSet::MergeFrom(a2, this);
    google::protobuf::internal::ExtensionSet::Clear(this);
    google::protobuf::internal::ExtensionSet::MergeFrom(this, &v7);
    google::protobuf::internal::ExtensionSet::~ExtensionSet(&v7);
  }
}

void sub_265686250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::SwapExtension(int **this, int **a2, int a3)
{
  if (this != a2)
  {
    v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a3);
    v7 = google::protobuf::internal::ExtensionSet::FindOrNull(a2, a3);
    if (v6 | v7)
    {
      v8 = v7;
      if (v6 && v7)
      {
        if (*this == *a2)
        {
          v10 = *(v6 + 16);
          v11 = *v6;
          v12 = *(v7 + 16);
          *v6 = *v7;
          *(v6 + 16) = v12;
          *v7 = v11;
          *(v7 + 16) = v10;
        }

        else
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(&v18, a3, v7);
          v9 = google::protobuf::internal::ExtensionSet::FindOrNull(&v18, a3);
          google::protobuf::internal::ExtensionSet::Extension::Clear(v8);
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(a2, a3, v6);
          google::protobuf::internal::ExtensionSet::Extension::Clear(v6);
          google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, a3, v9);
          google::protobuf::internal::ExtensionSet::~ExtensionSet(&v18);
        }
      }

      else
      {
        if (v6)
        {
          if (v7)
          {
            return;
          }

          if (*this == *a2)
          {
            v16 = google::protobuf::internal::ExtensionSet::Insert(a2, a3);
            v17 = *(v6 + 16);
            *v16 = *v6;
            v16[2] = v17;
          }

          else
          {
            google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(a2, a3, v6);
          }

          v15 = this;
        }

        else
        {
          if (*this == *a2)
          {
            v13 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
            v14 = *(v8 + 2);
            *v13 = *v8;
            v13[2] = v14;
          }

          else
          {
            google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, a3, v7);
          }

          v15 = a2;
        }

        google::protobuf::internal::ExtensionSet::Erase(v15, a3);
      }
    }
  }
}

void sub_265686420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::ExtensionSet::Insert(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v3 = *(this + 4);
  v4 = *(this + 2);
  if (v3 >= 0x101)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = a2;
    return std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(v4, &v14) + 5;
  }

  else
  {
    v6 = *(this + 5);
    v7 = &v4[32 * v6];
    if (*(this + 5))
    {
      v8 = *(this + 5);
      do
      {
        v9 = v8 >> 1;
        v10 = &v4[32 * (v8 >> 1)];
        v12 = *v10;
        v11 = (v10 + 8);
        v8 += ~(v8 >> 1);
        if (v12 < a2)
        {
          v4 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    if (v4 == v7)
    {
      if (v6 < v3)
      {
LABEL_15:
        *(this + 5) = v6 + 1;
        *v4 = a2;
        *(v4 + 1) = 0;
        result = (v4 + 8);
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v4 == a2)
      {
        return (v4 + 8);
      }

      if (v6 < v3)
      {
        memmove(v4 + 32, v4, v7 - v4);
        LOWORD(v6) = *(this + 5);
        goto LABEL_15;
      }
    }

    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v6 + 1);
    return google::protobuf::internal::ExtensionSet::Insert(this, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::IsInitialized(google::protobuf::internal::ExtensionSet *this)
{
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v8 = *v1;
    v7 = v1 + 1;
    v6 = v8;
    if (v8 == v7)
    {
      return 1;
    }

    else
    {
      do
      {
        IsInitialized = google::protobuf::internal::ExtensionSet::Extension::IsInitialized((v6 + 5));
        if (!IsInitialized)
        {
          break;
        }

        v9 = v6[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v7);
    }
  }

  else
  {
    while (1)
    {
      v3 = *(this + 2) + 32 * *(this + 5);
      IsInitialized = v1 == v3;
      if (v1 == v3)
      {
        break;
      }

      v5 = (v1 + 1);
      if (!google::protobuf::internal::ExtensionSet::Extension::IsInitialized(v5))
      {
        break;
      }

      v1 = (v5 + 24);
      if (*(this + 4) > 0x100u)
      {
        google::protobuf::internal::ExtensionSet::IsInitialized();
      }
    }
  }

  return IsInitialized;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::IsInitialized(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v2 = *(this + 8);
  if ((v2 - 19) <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v3 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2] != 10)
  {
    return 1;
  }

  if (*(this + 9) == 1)
  {
    v4 = *this;
    if (*(*this + 8) >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v4, v5);
        if (((*(*v6 + 48))(v6) & 1) == 0)
        {
          break;
        }

        ++v5;
        v4 = *this;
        if (v5 >= *(*this + 8))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (*(this + 10))
  {
    return 1;
  }

  v8 = **this;
  if ((*(this + 10) & 0x10) != 0)
  {
    return ((*(v8 + 72))() & 1) != 0;
  }

  result = (*(v8 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_26568678C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::FindExtensionInfoFromTag(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, unsigned __int8 *a5, _BYTE *a6)
{
  v7 = a2 >> 3;
  *a4 = v7;
  return google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(a1, a2 & 7, v7, a3, a5, a6);
}

uint64_t google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = *a5;
    if ((v10 - 19) <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    v12 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[v10];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v12 > 5)
      {
        google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 82);
        v13 = google::protobuf::internal::LogMessage::operator<<(v15, "can't reach here.");
        google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
      }

      else
      {
        result = 1;
        if (((1 << v12) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v12 == a2;
  }

  return result;
}

void sub_2656868F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, google::protobuf::internal::ExtensionFinder *a4, google::protobuf::internal::FieldSkipper *a5)
{
  LOBYTE(v12) = 0;
  v9 = a2 >> 3;
  if (google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(this, a2 & 7, v9, a4, v11, &v12))
  {
    return google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(this, v9, v12, v11, a3, a5);
  }

  else
  {
    return (*(*a5 + 16))(a5, a3, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(google::protobuf::internal::ExtensionSet *a1, uint64_t a2, int a3, uint64_t a4, google::protobuf::io::CodedInputStream *this, uint64_t a6)
{
  if (a3)
  {
    v11 = *this;
    if (*this >= *(this + 1))
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11;
      if ((*v11 & 0x80000000) == 0)
      {
        *this = v11 + 1;
        goto LABEL_110;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v12);
    v12 = Varint32Fallback;
    if ((Varint32Fallback & 0x8000000000000000) == 0)
    {
LABEL_110:
      v106 = google::protobuf::io::CodedInputStream::PushLimit(this, v12);
      switch(*a4)
      {
        case 1:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v132 = *this;
            if ((*(this + 2) - *this) >= 8)
            {
              v133 = *v132;
              *this = v132 + 1;
              goto LABEL_179;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
            if (result)
            {
              v133 = *&v149[0].__r_.__value_.__l.__data_;
LABEL_179:
              google::protobuf::internal::ExtensionSet::AddDouble(a1, a2, 1, *(a4 + 2), *(a4 + 24), v133);
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 2:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v134 = *this;
            if ((*(this + 2) - *this) >= 4)
            {
              v135 = *v134;
              *this = v134 + 1;
              goto LABEL_186;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
            if (result)
            {
              v135 = *&v149[0].__r_.__value_.__l.__data_;
LABEL_186:
              google::protobuf::internal::ExtensionSet::AddFloat(a1, a2, 2, *(a4 + 2), *(a4 + 24), v135);
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 3:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v119 = *this;
            if (*this >= *(this + 1) || (v120 = *v119, v120 < 0))
            {
              Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
              if ((v122 & 1) == 0)
              {
                return 0;
              }

              v120 = Varint64Fallback;
            }

            else
            {
              *this = v119 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 3, *(a4 + 2), v120, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_112;
        case 4:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v125 = *this;
            if (*this >= *(this + 1) || (v126 = *v125, v126 < 0))
            {
              v127 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
              if ((v128 & 1) == 0)
              {
                return 0;
              }

              v126 = v127;
            }

            else
            {
              *this = v125 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddUInt64(a1, a2, 4, *(a4 + 2), v126, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_112;
        case 5:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v113 = *this;
            if (*this >= *(this + 1))
            {
              break;
            }

            v114 = *v113;
            if (*v113 < 0)
            {
              goto LABEL_135;
            }

            *this = v113 + 1;
LABEL_136:
            google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 5, *(a4 + 2), v114, *(a4 + 24));
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_112;
            }
          }

          v114 = 0;
LABEL_135:
          v115 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v114);
          v114 = v115;
          if (v115 < 0)
          {
            return 0;
          }

          goto LABEL_136;
        case 6:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v141 = *this;
            if ((*(this + 2) - *this) >= 8)
            {
              v142 = *v141;
              v149[0].__r_.__value_.__r.__words[0] = *v141;
              *this = v141 + 1;
              goto LABEL_211;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
            if (result)
            {
              v142 = v149[0].__r_.__value_.__r.__words[0];
LABEL_211:
              google::protobuf::internal::ExtensionSet::AddUInt64(a1, a2, 6, *(a4 + 2), v142, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 7:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v143 = *this;
            if ((*(this + 2) - *this) >= 4)
            {
              data = *v143;
              LODWORD(v149[0].__r_.__value_.__l.__data_) = *v143;
              *this = v143 + 1;
              goto LABEL_218;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
            if (result)
            {
              data = v149[0].__r_.__value_.__l.__data_;
LABEL_218:
              google::protobuf::internal::ExtensionSet::AddUInt32(a1, a2, 7, *(a4 + 2), data, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 8:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v129 = *this;
            if (*this >= *(this + 1) || (v130 = *v129, (v130 & 0x8000000000000000) != 0))
            {
              v130 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
              if ((v131 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *this = v129 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddBool(a1, a2, 8, *(a4 + 2), v130 != 0, *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
          goto LABEL_112;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          google::protobuf::internal::LogMessage::LogMessage(v149, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1277);
          v107 = google::protobuf::internal::LogMessage::operator<<(v149, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v148, &v107->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v149[0].__r_.__value_.__l.__data_);
          goto LABEL_112;
        case 0xD:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v116 = *this;
            if (*this >= *(this + 1))
            {
              break;
            }

            v117 = *v116;
            if (*v116 < 0)
            {
              goto LABEL_143;
            }

            *this = v116 + 1;
LABEL_144:
            google::protobuf::internal::ExtensionSet::AddUInt32(a1, a2, 13, *(a4 + 2), v117, *(a4 + 24));
            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_112;
            }
          }

          v117 = 0;
LABEL_143:
          v118 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v117);
          v117 = v118;
          if (v118 < 0)
          {
            return 0;
          }

          goto LABEL_144;
        case 0xE:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (1)
          {
            v139 = *this;
            if (*this >= *(this + 1))
            {
              break;
            }

            v140 = *v139;
            if (*v139 < 0)
            {
              goto LABEL_202;
            }

            *this = v139 + 1;
LABEL_203:
            if ((*(a4 + 8))(*(a4 + 16), v140))
            {
              google::protobuf::internal::ExtensionSet::AddEnum(a1, a2, 14, *(a4 + 2), v140, *(a4 + 24));
            }

            else
            {
              (*(*a6 + 32))(a6, a2, v140);
            }

            if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
            {
              goto LABEL_112;
            }
          }

          LODWORD(v140) = 0;
LABEL_202:
          v140 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v140);
          if (v140 < 0)
          {
            return 0;
          }

          goto LABEL_203;
        case 0xF:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
            v111 = *this;
            if ((*(this + 2) - *this) >= 4)
            {
              v112 = *v111;
              *this = v111 + 1;
              goto LABEL_126;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
            if (result)
            {
              v112 = v149[0].__r_.__value_.__l.__data_;
LABEL_126:
              google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 15, *(a4 + 2), v112, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 0x10:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          while (2)
          {
            v149[0].__r_.__value_.__r.__words[0] = 0;
            v123 = *this;
            if ((*(this + 2) - *this) >= 8)
            {
              v124 = *v123;
              *this = v123 + 1;
              goto LABEL_157;
            }

            result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
            if (result)
            {
              v124 = v149[0].__r_.__value_.__r.__words[0];
LABEL_157:
              google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 16, *(a4 + 2), v124, *(a4 + 24));
              if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_112;
              }

              continue;
            }

            return result;
          }

        case 0x11:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          break;
        case 0x12:
          if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            goto LABEL_112;
          }

          do
          {
            v136 = *this;
            if (*this >= *(this + 1) || (v137 = *v136, (v137 & 0x8000000000000000) != 0))
            {
              v137 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
              if ((v138 & 1) == 0)
              {
                return 0;
              }
            }

            else
            {
              *this = v136 + 1;
            }

            google::protobuf::internal::ExtensionSet::AddInt64(a1, a2, 18, *(a4 + 2), -(v137 & 1) ^ (v137 >> 1), *(a4 + 24));
          }

          while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
LABEL_112:
          google::protobuf::io::CodedInputStream::PopLimit(this, v106);
          return 1;
        default:
          goto LABEL_112;
      }

      while (1)
      {
        v108 = *this;
        if (*this >= *(this + 1))
        {
          break;
        }

        v109 = *v108;
        if (*v108 < 0)
        {
          goto LABEL_120;
        }

        *this = v108 + 1;
LABEL_121:
        google::protobuf::internal::ExtensionSet::AddInt32(a1, a2, 17, *(a4 + 2), -(v109 & 1) ^ (v109 >> 1), *(a4 + 24));
        if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
        {
          goto LABEL_112;
        }
      }

      v109 = 0;
LABEL_120:
      v110 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v109);
      v109 = v110;
      if (v110 < 0)
      {
        return 0;
      }

      goto LABEL_121;
    }

    return 0;
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v13 = *this;
        if ((*(this + 2) - *this) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
          if (!result)
          {
            return result;
          }

          v14 = *&v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v14 = *v13;
          *this = v13 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(a1, a2, 1, *(a4 + 2), *(a4 + 24), v14);
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetDouble(a1, a2, 1, *(a4 + 24), v14);
        }

        return 1;
      case 2:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v47 = *this;
        if ((*(this + 2) - *this) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
          if (!result)
          {
            return result;
          }

          v48 = *&v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v48 = *v47;
          *this = v47 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(a1, a2, 2, *(a4 + 2), *(a4 + 24), v48);
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetFloat(a1, a2, 2, *(a4 + 24), v48);
        }

        return 1;
      case 3:
        v35 = *this;
        if (*this >= *(this + 1) || (v36 = *v35, v36 < 0))
        {
          v97 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
          if ((v98 & 1) == 0)
          {
            return 0;
          }

          v36 = v97;
        }

        else
        {
          *this = v35 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 3;
          goto LABEL_100;
        }

        v83 = *(a4 + 24);
        v84 = a1;
        v85 = a2;
        v86 = 3;
        goto LABEL_102;
      case 4:
        v43 = *this;
        if (*this >= *(this + 1) || (v44 = *v43, (v44 & 0x8000000000000000) != 0))
        {
          v99 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
          if ((v100 & 1) == 0)
          {
            return 0;
          }

          v44 = v99;
        }

        else
        {
          *this = v43 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v52 = *(a4 + 2);
          v54 = *(a4 + 24);
          v55 = a1;
          v56 = a2;
          v57 = 4;
          v53 = v44;
          goto LABEL_90;
        }

        v88 = *(a4 + 24);
        v89 = a1;
        v90 = a2;
        v91 = 4;
        v87 = v44;
        goto LABEL_92;
      case 5:
        v27 = *this;
        if (*this >= *(this + 1))
        {
          LODWORD(v28) = 0;
        }

        else
        {
          LODWORD(v28) = *v27;
          if ((*v27 & 0x80000000) == 0)
          {
            *this = v27 + 1;
            goto LABEL_233;
          }
        }

        v28 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28);
        if (v28 < 0)
        {
          return 0;
        }

LABEL_233:
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 5;
          v146 = v28;
          goto LABEL_235;
        }

        v79 = *(a4 + 24);
        v80 = a1;
        v81 = a2;
        v82 = 5;
        v147 = v28;
        goto LABEL_237;
      case 6:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v51 = *this;
        if ((*(this + 2) - *this) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v149[0].__r_.__value_.__r.__words[0] = *v51;
          *this = v51 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v52 = *(a4 + 2);
          v53 = v149[0].__r_.__value_.__r.__words[0];
          v54 = *(a4 + 24);
          v55 = a1;
          v56 = a2;
          v57 = 6;
LABEL_90:
          google::protobuf::internal::ExtensionSet::AddUInt64(v55, v56, v57, v52, v53, v54);
        }

        else
        {
          v87 = v149[0].__r_.__value_.__r.__words[0];
          v88 = *(a4 + 24);
          v89 = a1;
          v90 = a2;
          v91 = 6;
LABEL_92:
          google::protobuf::internal::ExtensionSet::SetUInt64(v89, v90, v91, v87, v88);
        }

        return 1;
      case 7:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v60 = *this;
        if ((*(this + 2) - *this) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          LODWORD(v149[0].__r_.__value_.__l.__data_) = *v60;
          *this = v60 + 4;
        }

        if (*(a4 + 1) == 1)
        {
          v61 = *(a4 + 2);
          v62 = v149[0].__r_.__value_.__l.__data_;
          v63 = *(a4 + 24);
          v64 = a1;
          v65 = a2;
          v66 = 7;
          goto LABEL_242;
        }

        v92 = v149[0].__r_.__value_.__l.__data_;
        v93 = *(a4 + 24);
        v94 = a1;
        v95 = a2;
        v96 = 7;
        goto LABEL_244;
      case 8:
        v45 = *this;
        if (*this >= *(this + 1) || (v46 = *v45, (v46 & 0x8000000000000000) != 0))
        {
          v46 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
          if ((v101 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v45 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddBool(a1, a2, 8, *(a4 + 2), v46 != 0, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetBool(a1, a2, 8, v46 != 0, *(a4 + 24));
        }

        return 1;
      case 9:
        v24 = *(a4 + 1);
        v25 = *(a4 + 24);
        v26 = 9;
        goto LABEL_60;
      case 0xA:
        v31 = *(a4 + 1);
        v32 = *(a4 + 8);
        v33 = *(a4 + 24);
        if (v31 == 1)
        {
          v34 = google::protobuf::internal::ExtensionSet::AddMessage(a1, a2, 10, v32, v33);
        }

        else
        {
          v34 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, a2, 10, v32, v33);
        }

        v72 = *(this + 13);
        v73 = __OFSUB__(v72--, 1);
        *(this + 13) = v72;
        if (v72 < 0 != v73)
        {
          return 0;
        }

        result = google::protobuf::MessageLite::MergePartialFromCodedStream(v34, this);
        if (!result)
        {
          return result;
        }

        v75 = *(this + 13);
        if (v75 >= *(this + 14))
        {
          google::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo();
        }

        *(this + 13) = v75 + 1;
        return *(this + 8) == ((8 * a2) | 4);
      case 0xB:
        v67 = *(a4 + 1);
        v68 = *(a4 + 8);
        v69 = *(a4 + 24);
        if (v67 == 1)
        {
          v70 = google::protobuf::internal::ExtensionSet::AddMessage(a1, a2, 11, v68, v69);
        }

        else
        {
          v70 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, a2, 11, v68, v69);
        }

        v76 = v70;
        v77 = *this;
        if (*this >= *(this + 1) || (VarintSizeAsIntFallback = *v77, (VarintSizeAsIntFallback & 0x80000000) != 0))
        {
          VarintSizeAsIntFallback = google::protobuf::io::CodedInputStream::ReadVarintSizeAsIntFallback(this);
          if ((VarintSizeAsIntFallback & 0x80000000) != 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v77 + 1;
        }

        v103 = google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(this, VarintSizeAsIntFallback);
        if ((v103 & 0x8000000000000000) != 0)
        {
          return 0;
        }

        v104 = v103;
        result = google::protobuf::MessageLite::MergePartialFromCodedStream(v76, this);
        if (!result)
        {
          return result;
        }

        result = google::protobuf::io::CodedInputStream::DecrementRecursionDepthAndPopLimit(this, v104);
        if (!result)
        {
          return result;
        }

        return 1;
      case 0xC:
        v24 = *(a4 + 1);
        v25 = *(a4 + 24);
        v26 = 12;
LABEL_60:
        if (v24 == 1)
        {
          v71 = google::protobuf::internal::ExtensionSet::AddString(a1, a2, v26, v25);
        }

        else
        {
          v71 = google::protobuf::internal::ExtensionSet::MutableString(a1, a2, v26, v25);
        }

        return google::protobuf::internal::WireFormatLite::ReadBytes(this, v71);
      case 0xD:
        v29 = *this;
        if (*this >= *(this + 1))
        {
          LODWORD(v30) = 0;
        }

        else
        {
          LODWORD(v30) = *v29;
          if ((*v29 & 0x80000000) == 0)
          {
            *this = v29 + 1;
            goto LABEL_240;
          }
        }

        v30 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v30);
        if (v30 < 0)
        {
          return 0;
        }

LABEL_240:
        if (*(a4 + 1) == 1)
        {
          v61 = *(a4 + 2);
          v63 = *(a4 + 24);
          v64 = a1;
          v65 = a2;
          v66 = 13;
          v62 = v30;
LABEL_242:
          google::protobuf::internal::ExtensionSet::AddUInt32(v64, v65, v66, v61, v62, v63);
        }

        else
        {
          v93 = *(a4 + 24);
          v94 = a1;
          v95 = a2;
          v96 = 13;
          v92 = v30;
LABEL_244:
          google::protobuf::internal::ExtensionSet::SetUInt32(v94, v95, v96, v92, v93);
        }

        return 1;
      case 0xE:
        v58 = *this;
        if (*this >= *(this + 1))
        {
          LODWORD(v59) = 0;
        }

        else
        {
          v59 = *v58;
          if ((*v58 & 0x80000000) == 0)
          {
            *this = v58 + 1;
            goto LABEL_255;
          }
        }

        v59 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v59);
        if (v59 < 0)
        {
          return 0;
        }

LABEL_255:
        if ((*(a4 + 8))(*(a4 + 16), v59))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(a1, a2, 14, *(a4 + 2), v59, *(a4 + 24));
          }

          else
          {
            google::protobuf::internal::ExtensionSet::SetEnum(a1, a2, 14, v59, *(a4 + 24));
          }
        }

        else
        {
          (*(*a6 + 32))(a6, a2, v59);
        }

        return 1;
      case 0xF:
        LODWORD(v149[0].__r_.__value_.__l.__data_) = 0;
        v17 = *this;
        if ((*(this + 2) - *this) < 4)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v149);
          if (!result)
          {
            return result;
          }

          v18 = v149[0].__r_.__value_.__l.__data_;
        }

        else
        {
          v18 = *v17;
          *this = v17 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 15;
          goto LABEL_226;
        }

        v79 = *(a4 + 24);
        v80 = a1;
        v81 = a2;
        v82 = 15;
        goto LABEL_228;
      case 0x10:
        v149[0].__r_.__value_.__r.__words[0] = 0;
        v37 = *this;
        if ((*(this + 2) - *this) < 8)
        {
          result = google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v149);
          if (!result)
          {
            return result;
          }

          v36 = v149[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          v36 = *v37;
          *this = v37 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 16;
          goto LABEL_100;
        }

        v83 = *(a4 + 24);
        v84 = a1;
        v85 = a2;
        v86 = 16;
        goto LABEL_102;
      case 0x11:
        v15 = *this;
        if (*this >= *(this + 1))
        {
          v16 = 0;
        }

        else
        {
          v16 = *v15;
          if ((*v15 & 0x80000000) == 0)
          {
            *this = v15 + 1;
            goto LABEL_224;
          }
        }

        v145 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
        v16 = v145;
        if (v145 < 0)
        {
          return 0;
        }

LABEL_224:
        v18 = -(v16 & 1) ^ (v16 >> 1);
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = *(a4 + 24);
          v21 = a1;
          v22 = a2;
          v23 = 17;
LABEL_226:
          v146 = v18;
LABEL_235:
          google::protobuf::internal::ExtensionSet::AddInt32(v21, v22, v23, v19, v146, v20);
        }

        else
        {
          v79 = *(a4 + 24);
          v80 = a1;
          v81 = a2;
          v82 = 17;
LABEL_228:
          v147 = v18;
LABEL_237:
          google::protobuf::internal::ExtensionSet::SetInt32(v80, v81, v82, v147, v79);
        }

        return 1;
      case 0x12:
        v49 = *this;
        if (*this >= *(this + 1) || (v50 = *v49, (v50 & 0x8000000000000000) != 0))
        {
          v50 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
          if ((v102 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          *this = v49 + 1;
        }

        v36 = -(v50 & 1) ^ (v50 >> 1);
        if (*(a4 + 1) == 1)
        {
          v38 = *(a4 + 2);
          v39 = *(a4 + 24);
          v40 = a1;
          v41 = a2;
          v42 = 18;
LABEL_100:
          google::protobuf::internal::ExtensionSet::AddInt64(v40, v41, v42, v38, v36, v39);
        }

        else
        {
          v83 = *(a4 + 24);
          v84 = a1;
          v85 = a2;
          v86 = 18;
LABEL_102:
          google::protobuf::internal::ExtensionSet::SetInt64(v84, v85, v86, v36, v83);
        }

        break;
      default:
        return 1;
    }

    return 1;
  }
}