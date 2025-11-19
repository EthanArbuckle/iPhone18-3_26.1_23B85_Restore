void sub_26D41A898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::Extension::Free(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v2 = *(this + 8);
  v3 = v2 - 19;
  if (*(this + 9) != 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v7 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2];
    if (v8 == 10)
    {
      v12 = *this;
      if ((*(this + 10) & 0x10) != 0)
      {
        if (!v12)
        {
          return;
        }
      }

      else if (!v12)
      {
        return;
      }

      (*(*v12 + 8))(v12);
      return;
    }

    if (v8 == 9)
    {
      v9 = *this;
      if (v9)
      {
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v10 = 0x1012C40EC159624;
        v6 = v9;
        goto LABEL_45;
      }
    }

    return;
  }

  if (v3 <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2];
  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedField<float>::~RepeatedField(*this);
      }

      else
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedField<BOOL>::~RepeatedField(*this);
      }

      goto LABEL_44;
    }

    if (v5 != 8)
    {
      if (v5 == 9)
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField();
      }

      else
      {
        if (v5 != 10)
        {
          return;
        }

        v11 = *this;
        if (!v11)
        {
          return;
        }

        google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v11);
        google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v11);
      }

      v10 = 0x1020C4014030ADELL;
      goto LABEL_45;
    }

LABEL_34:
    if (!*this)
    {
      return;
    }

    v6 = google::protobuf::RepeatedField<int>::~RepeatedField(*this);
    goto LABEL_44;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<unsigned int>::~RepeatedField(*this);
    }

    else if (v5 == 4)
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(*this);
    }

    else
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<double>::~RepeatedField(*this);
    }

    goto LABEL_44;
  }

  if (v5 == 1)
  {
    goto LABEL_34;
  }

  if (v5 == 2 && *this)
  {
    v6 = google::protobuf::RepeatedField<long long>::~RepeatedField(*this);
LABEL_44:
    v10 = 0x1080C4057E67DB5;
LABEL_45:
    MEMORY[0x26D6BF040](v6, v10);
  }
}

void sub_26D41AC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(google::protobuf::internal::ExtensionSet *this, int a2)
{
  if (*(this + 4) <= 0x100u)
  {
    google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap();
  }

  v2 = *(this + 2);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

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
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

{
  if (*(this + 4) <= 0x100u)
  {
    google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap();
  }

  v2 = *(this + 2);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

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
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::RepeatedPrimitiveDefaults::default_instance(google::protobuf::internal::RepeatedPrimitiveDefaults *this)
{
  {
    operator new();
  }

  return google::protobuf::internal::RepeatedPrimitiveDefaults::default_instance(void)::instance;
}

uint64_t google::protobuf::internal::RepeatedStringTypeTraits::GetDefaultRepeatedField(google::protobuf::internal::RepeatedStringTypeTraits *this)
{
  {
    operator new();
  }

  return google::protobuf::internal::RepeatedStringTypeTraits::GetDefaultRepeatedField(void)::instance;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray(google::protobuf::internal::ExtensionSet::Extension *this, uint64_t a2, char *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a3;
  if (*(this + 8) == 11 && *(this + 9) != 1)
  {
    if ((*(this + 10) & 1) == 0)
    {
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      *v5 = 4107;
      if (a2 > 0x7F)
      {
        v5[2] = a2 | 0x80;
        v11 = a2 >> 7;
        if (a2 >> 14)
        {
          v10 = v5 + 4;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          v5[3] = v11;
          v10 = v5 + 4;
        }
      }

      else
      {
        v5[2] = a2;
        v10 = v5 + 3;
      }

      v14 = *this;
      if ((*(this + 10) & 0x10) != 0)
      {
        v17 = (*(*v14 + 136))(*this, 3, v10, a4);
      }

      else
      {
        *v10 = 26;
        v15 = (*(*v14 + 80))(v14);
        if (v15 > 0x7F)
        {
          v10[1] = v15 | 0x80;
          v18 = v15 >> 7;
          if (v15 >> 14)
          {
            v16 = v10 + 3;
            do
            {
              *(v16 - 1) = v18 | 0x80;
              v19 = v18 >> 7;
              ++v16;
              v20 = v18 >> 14;
              v18 >>= 7;
            }

            while (v20);
            *(v16 - 1) = v19;
          }

          else
          {
            v10[2] = v18;
            v16 = v10 + 3;
          }
        }

        else
        {
          v10[1] = v15;
          v16 = v10 + 2;
        }

        v17 = (*(*v14 + 96))(v14, v16, a4);
      }

      v21 = v17;
      if (*a4 <= v17)
      {
        v21 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v17);
      }

      *v21 = 12;
      return (v21 + 1);
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 1, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 2076);
    v8 = google::protobuf::internal::LogMessage::operator<<(v23, "Invalid message set extension.");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    return google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(this, a2, v5, a4);
  }

  return v5;
}

void sub_26D41B110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(uint64_t **this, int a2)
{
  if (*(this + 8) == 11 && *(this + 9) != 1)
  {
    if (*(this + 10))
    {
      return 0;
    }

    else
    {
      v4 = ((9 * (__clz(a2 | 1) ^ 0x1F) + 73) >> 6) + 4;
      v5 = **this;
      if ((*(this + 10) & 0x10) != 0)
      {
        v6 = (*(v5 + 88))();
      }

      else
      {
        v6 = (*(v5 + 72))();
      }

      return v4 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
    }
  }

  else
  {

    return google::protobuf::internal::ExtensionSet::Extension::ByteSize(this, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::MessageSetByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MessageSetByteSize(void)::$_0>(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(this + 5))
  {
    v2 = 0;
    v3 = &v1[8 * *(this + 5)];
    v4 = *(this + 2);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t google::protobuf::internal::ExtensionSet::LazyMessageExtension::ByteSize(google::protobuf::internal::ExtensionSet::LazyMessageExtension *this)
{
  v1 = (*(*this + 88))(this);
  if (v1 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_26D41B354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::OnShutdownDelete<std::unordered_map<std::pair<google::protobuf::MessageLite const*,int>,google::protobuf::internal::ExtensionInfo,google::protobuf::internal::anonymous namespace::ExtensionHasher,std::equal_to<std::pair<google::protobuf::MessageLite const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::MessageLite const*,int> const,google::protobuf::internal::ExtensionInfo>>>>(std::unordered_map<std::pair<google::protobuf::MessageLite const*,int>,google::protobuf::internal::ExtensionInfo,google::protobuf::internal::anonymous namespace::ExtensionHasher,std::equal_to<std::pair<google::protobuf::MessageLite const*,int>>,std::allocator<std::pair<std::pair<google::protobuf::MessageLite const*,int> const,google::protobuf::internal::ExtensionInfo>>> *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
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

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    JUMPOUT(0x26D6BF040);
  }

  return result;
}

void google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::~()::$_0>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Free((v3 + 5));
      v4 = v3[1];
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
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }
}

_DWORD *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::NumExtensions(void)::$_0>(void *a1, void *a2, _DWORD *a3)
{
  if (a1 != a2)
  {
    do
    {
      if ((*(a1 + 50) & 1) == 0)
      {
        ++*a3;
      }

      v3 = a1[1];
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
          v4 = a1[2];
          v5 = *v4 == a1;
          a1 = v4;
        }

        while (!v5);
      }

      a1 = v4;
    }

    while (v4 != a2);
  }

  return a3;
}

void google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26D41B5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::arena_delete_object<google::protobuf::MessageLite>(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26D41B6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26D41B7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(unsigned int *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(result, a2);
  }

  v3 = *v2;
  if (v3 >= result[3])
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(result, a2);
  }

  v4 = v2 + 2;
  v5 = result[2];
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  result[2] = v5 + 1;
  ++**(result + 2);
  return result;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (!v4)
  {
    v5 = result[3];
    goto LABEL_11;
  }

  v5 = result[2];
  v6 = result[3];
  if (v5 == v6)
  {
LABEL_11:
    result = google::protobuf::RepeatedPtrField<std::string>::Reserve(result, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 2);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  result = *&v4[2 * v5 + 2];
  if (result)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = (*(*result + 8))(result);
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = v3[2];
  v3[2] = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::ReleaseLastInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1)
{
  if (*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2030);
    v2 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: GetArena() == NULL: ");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "ReleaseLast() called on a RepeatedPtrField that is on an arena, ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "with a type that does not implement MergeFrom. This is unsafe; ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "please implement MergeFrom for your type.");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  if (v6 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2040);
    v7 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    v6 = *(a1 + 8);
  }

  v8 = *(a1 + 16);
  v9 = *v8;
  v10 = *v8 - 1;
  *v8 = v10;
  v11 = v8 + 2;
  v12 = v6 - 1;
  *(a1 + 8) = v12;
  result = *&v11[2 * v12];
  if (v6 < v9)
  {
    *&v11[2 * v12] = *&v11[2 * v10];
  }

  return result;
}

void sub_26D41BA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::Clear(void)::$_0>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Clear((v3 + 5));
      v4 = v3[1];
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
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet const&)::$_0>(void *a1, void *a2, google::protobuf::internal::ExtensionSet *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, *(v5 + 8), (v5 + 5));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadString(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x26D6BECE0](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
  }
}

google::protobuf::internal *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_20;
    }

    v5 = v7;
  }

  else
  {
    result = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v8 - result;
  if (v5 <= v8 - result)
  {
LABEL_15:
    v15 = result + v5;
    v16 = a3[1];
    v19 = *a3;
    v20 = v16;
    v21 = *(a3 + 4);
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(result, v15, &v19);
    if (v15 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      v10 = a3[1];
      v19 = *a3;
      v20 = v10;
      v21 = *(a3 + 4);
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(result, v8, &v19);
      if (!result)
      {
        break;
      }

      v11 = result - *(a1 + 8);
      if (v11 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v19, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v19);
      }

      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        v24 = 0;
        v23 = 0;
        v22 = **(a1 + 8);
        v17 = a3[1];
        v19 = *a3;
        v20 = v17;
        v21 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>((&v22 + v11), &v22 + v13, &v19) != (&v22 + v13))
        {
LABEL_19:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v13);
        break;
      }

      v5 = v5 - v9 - v11;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v14 = google::protobuf::internal::LogMessage::operator<<(&v19, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v14->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v19);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_19;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result = (result + v11);
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
{
  v3 = this;
  if (this < a2)
  {
    do
    {
      v6 = *v3;
      if ((v6 & 0x8000000000000000) != 0)
      {
        v7 = (v3[1] << 7) + v6;
        v6 = (v7 - 128);
        if (v3[1] < 0)
        {
          v3 = google::protobuf::internal::VarintParseSlow64(v3, (v7 - 128));
          if (!v3)
          {
            return v3;
          }

          v6 = v8;
        }

        else
        {
          v3 += 2;
        }
      }

      else
      {
        ++v3;
      }

      if ((a3[1])(a3[2], v6))
      {
        v9 = *a3;
        v10 = **a3;
        if (v10 == (*a3)[1])
        {
          v11 = v10 + 1;
          google::protobuf::RepeatedField<int>::Reserve(*a3, v10 + 1);
          *(google::protobuf::RepeatedField<int>::elements(v9) + 4 * v10) = v6;
        }

        else
        {
          *(google::protobuf::RepeatedField<int>::elements(*a3) + 4 * v10) = v6;
          v11 = v10 + 1;
        }

        *v9 = v11;
      }

      else
      {
        v12 = *(a3 + 8);
        v13 = a3[3];
        if (*v13)
        {
          v14 = ((*v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v14 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v13);
        }

        google::protobuf::internal::WriteVarint(v12, v6, v14);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

uint64_t google::protobuf::internal::ParseContext::ParseContext<std::string &>(uint64_t a1, int a2, const char *a3, char **a4, uint64_t *a5)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  *(a1 + 80) = -NAN;
  *(a1 + 88) = a2;
  *(a1 + 92) = 0x80000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v8, a5, a3);
  *a4 = google::protobuf::internal::EpsCopyInputStream::InitFrom(a1, v8[0], v8[1]);
  return a1;
}

char *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

unsigned __int8 **google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::InternalSerializeMessageSetWithCachedSizesToArray(unsigned char *,google::protobuf::io::EpsCopyOutputStream *)::$_0>(void *a1, void *a2, unsigned __int8 **a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    v8 = *a3;
    do
    {
      v8 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray((v7 + 5), *(v7 + 8), v8, a4);
      *a3 = v8;
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != a2);
  }

  return a3;
}

void *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::ByteSize(void)::$_0>(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_26D41C210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(uint64_t a1, int *a2)
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

uint64_t std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_hint_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__erase_unique<int>(uint64_t a1, int *a2)
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

  std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
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

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::internal::RepeatedPrimitiveDefaults>(google::protobuf::internal::RepeatedPrimitiveDefaults *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    google::protobuf::RepeatedField<BOOL>::~RepeatedField(result + 96);
    google::protobuf::RepeatedField<float>::~RepeatedField(v1 + 80);
    google::protobuf::RepeatedField<double>::~RepeatedField(v1 + 64);
    google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(v1 + 48);
    google::protobuf::RepeatedField<unsigned int>::~RepeatedField(v1 + 32);
    google::protobuf::RepeatedField<long long>::~RepeatedField(v1 + 16);
    google::protobuf::RepeatedField<int>::~RepeatedField(v1);

    JUMPOUT(0x26D6BF040);
  }

  return result;
}

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::RepeatedPtrField<std::string>>(google::protobuf::RepeatedPtrField<std::string> *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField();

    JUMPOUT(0x26D6BF040);
  }

  return result;
}

void *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MessageSetByteSize(void)::$_0>(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t google::protobuf::internal::ExtensionSet::~ExtensionSet(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    std::__tree<std::__value_type<std::string_view,int>,std::__map_value_compare<std::string_view,std::__value_type<std::string_view,int>,std::less<std::string_view>,true>,std::allocator<std::__value_type<std::string_view,int>>>::destroy(a2, *(a2 + 8));

    JUMPOUT(0x26D6BF040);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GrowCapacity(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_0(a1);
}

void google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap()
{
  __assert_rtn("FindOrNullInLargeMap", "extension_set.cc", 1805, "is_large()");
}

{
  __assert_rtn("FindOrNullInLargeMap", "extension_set.cc", 1827, "is_large()");
}

uint64_t google::protobuf::internal::LookUpEnumValue(uint64_t a1, unint64_t a2, void *__s2, int64_t __n, _DWORD *a5)
{
  v8 = a1;
  v9 = a1 + 24 * a2;
  if (a2)
  {
    v10 = a2;
    do
    {
      v11 = v10 >> 1;
      v12 = v8 + 24 * (v10 >> 1);
      v13 = *(v12 + 8);
      if (v13 >= __n)
      {
        v14 = __n;
      }

      else
      {
        v14 = *(v12 + 8);
      }

      v15 = memcmp(*v12, __s2, v14);
      if (v15 < 0 || (!v15 ? (v16 = v13 < __n) : (v16 = 0), v16))
      {
        v11 = v10 + ~v11;
        v8 = v12 + 24;
      }

      v10 = v11;
    }

    while (v11);
  }

  if (v8 == v9 || *(v8 + 8) != __n || __n >= 1 && *v8 != __s2 && memcmp(*v8, __s2, __n))
  {
    return 0;
  }

  *a5 = *(v8 + 16);
  return 1;
}

uint64_t google::protobuf::internal::LookUpEnumName(uint64_t a1, int *a2, unint64_t a3, int a4)
{
  v4 = &a2[a3];
  v5 = a2;
  if (a3)
  {
    v5 = a2;
    do
    {
      v6 = &v5[a3 >> 1];
      v7 = a4;
      if (*v6 != -1)
      {
        v7 = *(a1 + 24 * *v6 + 16);
      }

      v8 = v6 + 1;
      if (v7 >= a4)
      {
        a3 >>= 1;
      }

      else
      {
        a3 += ~(a3 >> 1);
      }

      if (v7 < a4)
      {
        v5 = v8;
      }
    }

    while (a3);
  }

  if (v5 == v4 || *(a1 + 24 * *v5 + 16) != a4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v5 - a2) >> 2;
  }
}

uint64_t google::protobuf::internal::InitializeEnumStrings(uint64_t a1, int *a2, uint64_t a3, void (*a4)(const void *))
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = *a2++;
      google::protobuf::StringPiece::ToString((a1 + 24 * v8), a4);
      google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, a4, v9);
      a4 = (a4 + 24);
      --v5;
    }

    while (v5);
  }

  return 1;
}

void google::protobuf::internal::DestroyString(void **this, const void *a2)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void google::protobuf::internal::InitProtobufDefaultsSlow(google::protobuf::internal *this)
{
  {
    google::protobuf::internal::fixed_address_empty_string = 0;
    unk_280500BD0 = 0;
    qword_280500BD8 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v1);
    atomic_store(1u, google::protobuf::internal::init_protobuf_defaults_state);
  }
}

uint64_t google::protobuf::internal::StringSpaceUsedExcludingSelfLong(unint64_t a1)
{
  if (*(a1 + 23) < 0 && (*a1 >= a1 ? (v1 = *a1 >= a1 + 24) : (v1 = 1), v1))
  {
    return (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::SerializeMessageNoTable(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 96))(a1, *(a2 + 64), a2);
  *(a2 + 64) = result;
  return result;
}

void google::protobuf::internal::SerializeMessageNoTable(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v6, *a2, 0x7FFFFFFF, -1);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v7, v6, 1);
  v7[58] = *(a2 + 8);
  v8 = (*(*a1 + 96))(a1, v8, v7);
  v4 = google::protobuf::io::EpsCopyOutputStream::ByteCount(v7, v8);
  *a2 += v4 - v9;
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v7);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_26D41D564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::SerializeInternal(uint64_t a1, unsigned int *a2, int a3, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (a3 >= 1)
  {
    v24 = v4;
    v25 = v5;
    v9 = a3;
    do
    {
      v10 = a2[3];
      v11 = *a2;
      v12 = (a1 + v11);
      switch(v10)
      {
        case 0:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 1:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 2:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_124;
          }

          break;
        case 3:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_80;
          }

          break;
        case 4:
        case 13:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_14;
          }

          break;
        case 5:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 6:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 7:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_71;
          }

          break;
        case 8:
        case 11:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_12;
          }

          break;
        case 9:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_90;
          }

          break;
        case 10:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_103;
          }

          break;
        case 12:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_75;
          }

          break;
        case 14:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_134;
          }

          break;
        case 15:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_108;
          }

          break;
        case 16:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_119;
          }

          break;
        case 17:
          if ((*(a1 + ((a2[2] >> 3) & 0x1FFFFFFC)) >> a2[2]))
          {
            goto LABEL_128;
          }

          break;
        case 20:
          if (*v12 != 0.0)
          {
            goto LABEL_108;
          }

          break;
        case 21:
          if (*v12 != 0.0)
          {
            goto LABEL_134;
          }

          break;
        case 22:
          if (*v12)
          {
LABEL_124:
            v21 = a2[1];
            goto LABEL_81;
          }

          break;
        case 23:
          if (*v12)
          {
LABEL_80:
            v21 = a2[1];
            goto LABEL_81;
          }

          break;
        case 24:
        case 33:
          if (*v12)
          {
LABEL_14:
            v16 = a2[1];
            goto LABEL_19;
          }

          break;
        case 25:
          if (*v12)
          {
            goto LABEL_108;
          }

          break;
        case 26:
          if (*v12)
          {
            goto LABEL_134;
          }

          break;
        case 27:
          if (*v12)
          {
            goto LABEL_71;
          }

          break;
        case 28:
        case 31:
          v13 = *v12 & 0xFFFFFFFFFFFFFFFELL;
          v14 = *(v13 + 23);
          if (v14 < 0)
          {
            v14 = *(v13 + 8);
          }

          if (v14)
          {
LABEL_12:
            v15 = a2[1];
            goto LABEL_17;
          }

          break;
        case 29:
          if (*v12)
          {
            goto LABEL_90;
          }

          break;
        case 30:
          if (*v12)
          {
LABEL_103:
            google::protobuf::internal::SingularFieldHelper<11>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 32:
          if (*v12)
          {
LABEL_75:
            v17 = a2[1];
            goto LABEL_76;
          }

          break;
        case 34:
          if (*v12)
          {
            goto LABEL_134;
          }

          break;
        case 35:
          if (*v12)
          {
            goto LABEL_108;
          }

          break;
        case 36:
          if (*v12)
          {
LABEL_119:
            v20 = a2[1];
            goto LABEL_120;
          }

          break;
        case 37:
          if (*v12)
          {
LABEL_128:
            v22 = a2[1];
            goto LABEL_129;
          }

          break;
        case 40:
          google::protobuf::internal::RepeatedFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 41:
          google::protobuf::internal::RepeatedFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 42:
          google::protobuf::internal::RepeatedFieldHelper<3>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 43:
          google::protobuf::internal::RepeatedFieldHelper<4>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 44:
        case 53:
          google::protobuf::internal::RepeatedFieldHelper<5>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 45:
          google::protobuf::internal::RepeatedFieldHelper<6>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 46:
          google::protobuf::internal::RepeatedFieldHelper<7>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 47:
          google::protobuf::internal::RepeatedFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 48:
        case 51:
          google::protobuf::internal::RepeatedFieldHelper<9>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 49:
          google::protobuf::internal::RepeatedFieldHelper<10>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 50:
          google::protobuf::internal::RepeatedFieldHelper<11>::Serialize<google::protobuf::io::CodedOutputStream>(a1 + v11, a2, this);
          break;
        case 52:
          google::protobuf::internal::RepeatedFieldHelper<13>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 54:
          google::protobuf::internal::RepeatedFieldHelper<15>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 55:
          google::protobuf::internal::RepeatedFieldHelper<16>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 56:
          google::protobuf::internal::RepeatedFieldHelper<17>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 57:
          google::protobuf::internal::RepeatedFieldHelper<18>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 60:
          google::protobuf::internal::PackedFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 61:
          google::protobuf::internal::PackedFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 62:
          google::protobuf::internal::PackedFieldHelper<3>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 63:
          google::protobuf::internal::PackedFieldHelper<4>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 64:
        case 73:
          google::protobuf::internal::PackedFieldHelper<5>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 65:
          google::protobuf::internal::PackedFieldHelper<6>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 66:
          google::protobuf::internal::PackedFieldHelper<7>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 67:
          google::protobuf::internal::PackedFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 68:
        case 69:
        case 70:
        case 71:
          google::protobuf::internal::PackedFieldHelper<9>::Serialize<google::protobuf::io::CodedOutputStream>(a1 + v11, a2);
          break;
        case 72:
          google::protobuf::internal::PackedFieldHelper<13>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 74:
          google::protobuf::internal::PackedFieldHelper<15>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 75:
          google::protobuf::internal::PackedFieldHelper<16>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 76:
          google::protobuf::internal::PackedFieldHelper<17>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 77:
          google::protobuf::internal::PackedFieldHelper<18>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          break;
        case 80:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_108;
          }

          break;
        case 81:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_134;
          }

          break;
        case 82:
          v21 = a2[1];
          if (*(a1 + a2[2]) == v21 >> 3)
          {
            goto LABEL_81;
          }

          break;
        case 83:
          v21 = a2[1];
          if (*(a1 + a2[2]) == v21 >> 3)
          {
LABEL_81:
            v23 = v21;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v12, this);
          }

          break;
        case 84:
        case 93:
          v16 = a2[1];
          if (*(a1 + a2[2]) == v16 >> 3)
          {
LABEL_19:
            v23 = v16;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::PrimitiveTypeHelper<5>::Serialize(v12, this);
          }

          break;
        case 85:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_108;
          }

          break;
        case 86:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            goto LABEL_134;
          }

          break;
        case 87:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_71:
            google::protobuf::internal::SingularFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 88:
        case 91:
          v15 = a2[1];
          if (*(a1 + a2[2]) == v15 >> 3)
          {
LABEL_17:
            v23 = v15;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::PrimitiveTypeHelper<9>::Serialize((*v12 & 0xFFFFFFFFFFFFFFFELL), this);
          }

          break;
        case 89:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_90:
            google::protobuf::internal::SingularFieldHelper<10>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 90:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
            v23 = a2[1];
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeMessageTo<google::protobuf::io::CodedOutputStream>(*v12, *(a2 + 2), this);
          }

          break;
        case 92:
          v17 = a2[1];
          if (*(a1 + a2[2]) == v17 >> 3)
          {
LABEL_76:
            v23 = v17;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(v12, this);
          }

          break;
        case 94:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_134:
            google::protobuf::internal::SingularFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 95:
          if (*(a1 + a2[2]) == a2[1] >> 3)
          {
LABEL_108:
            google::protobuf::internal::SingularFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>((a1 + v11), a2, this);
          }

          break;
        case 96:
          v20 = a2[1];
          if (*(a1 + a2[2]) == v20 >> 3)
          {
LABEL_120:
            v23 = v20;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeTo<17,google::protobuf::io::CodedOutputStream>(v12, this);
          }

          break;
        case 97:
          v22 = a2[1];
          if (*(a1 + a2[2]) == v22 >> 3)
          {
LABEL_129:
            v23 = v22;
            google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v23, this);
            google::protobuf::internal::SerializeTo<18,google::protobuf::io::CodedOutputStream>(v12, this);
          }

          break;
        case 100:
          v18 = a2[1];
          v19 = a2[2];
          (*(a2 + 2))(a1);
          break;
        default:
          google::protobuf::internal::SerializeNotImplemented(v10);
          break;
      }

      a2 += 6;
      --v9;
    }

    while (v9);
  }
}

void *google::protobuf::internal::SerializeMessageDispatch(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = google::protobuf::internal::SerializeInternalToArray(a1, a2, a3, *(a5 + 8), *a5);
  *a5 = result;
  return result;
}

void *google::protobuf::internal::SerializeInternalToArray(uint64_t a1, uint64_t a2, int a3, unsigned __int8 a4, void *a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v55[0] = a5;
  v55[1] = a4;
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = (a2 + 24 * v8);
      v11 = (a1 + *v10);
      switch(v10[3])
      {
        case 0u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v17 = v14 >> 14;
                v14 >>= 7;
              }

              while (v17);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 1u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v43 = v29 >> 14;
                v29 >>= 7;
              }

              while (v43);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 2u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_202;
          }

          break;
        case 3u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_202;
          }

          break;
        case 4u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_219;
          }

          break;
        case 5u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v41 = v14 >> 14;
                v14 >>= 7;
              }

              while (v41);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 6u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v42 = v29 >> 14;
                v29 >>= 7;
              }

              while (v42);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 7u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v18 = v10[1];
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
              goto LABEL_113;
            }

            *v55[0] = v18 | 0x80;
            v20 = v18 >> 7;
            if (v18 >> 14)
            {
              v21 = v19 + 2;
              do
              {
                *(v21 - 1) = v20 | 0x80;
                v22 = v20 >> 7;
                ++v21;
                v48 = v20 >> 14;
                v20 >>= 7;
              }

              while (v48);
              goto LABEL_233;
            }

            goto LABEL_226;
          }

          break;
        case 8u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_224;
          }

          break;
        case 9u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_206;
          }

          break;
        case 0xAu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_174;
          }

          break;
        case 0xBu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_224;
          }

          break;
        case 0xCu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_179;
          }

          break;
        case 0xDu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_219;
          }

          break;
        case 0xEu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v47 = v29 >> 14;
                v29 >>= 7;
              }

              while (v47);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0xFu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v50 = v14 >> 14;
                v14 >>= 7;
              }

              while (v50);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x10u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_197;
          }

          break;
        case 0x11u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_209;
          }

          break;
        case 0x14u:
          if (*v11 != 0.0)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v35 = v14 >> 14;
                v14 >>= 7;
              }

              while (v35);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x15u:
          if (*v11 != 0.0)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v45 = v29 >> 14;
                v29 >>= 7;
              }

              while (v45);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x16u:
          if (*v11)
          {
            goto LABEL_202;
          }

          break;
        case 0x17u:
          if (*v11)
          {
            goto LABEL_202;
          }

          break;
        case 0x18u:
          if (*v11)
          {
            goto LABEL_219;
          }

          break;
        case 0x19u:
          if (*v11)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v40 = v14 >> 14;
                v14 >>= 7;
              }

              while (v40);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x1Au:
          if (*v11)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v46 = v29 >> 14;
                v29 >>= 7;
              }

              while (v46);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x1Bu:
          if (*v11)
          {
            v18 = v10[1];
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
              goto LABEL_113;
            }

            *v55[0] = v18 | 0x80;
            v20 = v18 >> 7;
            if (v18 >> 14)
            {
              v21 = v19 + 2;
              do
              {
                *(v21 - 1) = v20 | 0x80;
                v22 = v20 >> 7;
                ++v21;
                v39 = v20 >> 14;
                v20 >>= 7;
              }

              while (v39);
              goto LABEL_233;
            }

            goto LABEL_226;
          }

          break;
        case 0x1Cu:
          v33 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          if ((*(v33 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v33 + 8))
            {
              goto LABEL_224;
            }
          }

          else if (*(v33 + 23))
          {
            goto LABEL_224;
          }

          break;
        case 0x1Du:
          if (*v11)
          {
            goto LABEL_206;
          }

          break;
        case 0x1Eu:
          if (*v11)
          {
            goto LABEL_174;
          }

          break;
        case 0x1Fu:
          v44 = *v11 & 0xFFFFFFFFFFFFFFFELL;
          if ((*(v44 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v44 + 8))
            {
              goto LABEL_224;
            }
          }

          else if (*(v44 + 23))
          {
            goto LABEL_224;
          }

          break;
        case 0x20u:
          if (*v11)
          {
            goto LABEL_179;
          }

          break;
        case 0x21u:
          if (*v11)
          {
            goto LABEL_219;
          }

          break;
        case 0x22u:
          if (*v11)
          {
            v27 = v10[1];
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v32 = v29 >> 14;
                v29 >>= 7;
              }

              while (v32);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x23u:
          if (*v11)
          {
            v12 = v10[1];
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v38 = v14 >> 14;
                v14 >>= 7;
              }

              while (v38);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x24u:
          if (*v11)
          {
            goto LABEL_197;
          }

          break;
        case 0x25u:
          if (*v11)
          {
            goto LABEL_209;
          }

          break;
        case 0x28u:
          google::protobuf::internal::RepeatedFieldHelper<1>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x29u:
          google::protobuf::internal::RepeatedFieldHelper<2>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Au:
          google::protobuf::internal::RepeatedFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Bu:
          google::protobuf::internal::RepeatedFieldHelper<4>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Cu:
        case 0x35u:
          google::protobuf::internal::RepeatedFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Du:
          google::protobuf::internal::RepeatedFieldHelper<6>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Eu:
          google::protobuf::internal::RepeatedFieldHelper<7>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x2Fu:
          google::protobuf::internal::RepeatedFieldHelper<8>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x30u:
        case 0x33u:
          google::protobuf::internal::RepeatedFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x31u:
          google::protobuf::internal::RepeatedFieldHelper<10>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x32u:
          google::protobuf::internal::RepeatedFieldHelper<11>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x34u:
          google::protobuf::internal::RepeatedFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x36u:
          google::protobuf::internal::RepeatedFieldHelper<15>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x37u:
          google::protobuf::internal::RepeatedFieldHelper<16>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x38u:
          google::protobuf::internal::RepeatedFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x39u:
          google::protobuf::internal::RepeatedFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Cu:
          google::protobuf::internal::PackedFieldHelper<1>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Du:
          google::protobuf::internal::PackedFieldHelper<2>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Eu:
          google::protobuf::internal::PackedFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x3Fu:
          google::protobuf::internal::PackedFieldHelper<4>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x40u:
        case 0x49u:
          google::protobuf::internal::PackedFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x41u:
          google::protobuf::internal::PackedFieldHelper<6>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x42u:
          google::protobuf::internal::PackedFieldHelper<7>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x43u:
          google::protobuf::internal::PackedFieldHelper<8>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x44u:
        case 0x45u:
        case 0x46u:
        case 0x47u:
          google::protobuf::internal::PackedFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8);
          break;
        case 0x48u:
          google::protobuf::internal::PackedFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Au:
          google::protobuf::internal::PackedFieldHelper<15>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Bu:
          google::protobuf::internal::PackedFieldHelper<16>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Cu:
          google::protobuf::internal::PackedFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x4Du:
          google::protobuf::internal::PackedFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          break;
        case 0x50u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v26 = v14 >> 14;
                v14 >>= 7;
              }

              while (v26);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x51u:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v34 = v29 >> 14;
                v29 >>= 7;
              }

              while (v34);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x52u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_202;
          }

          break;
        case 0x53u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_202:
            google::protobuf::internal::SingularFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x54u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_219;
          }

          break;
        case 0x55u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
              goto LABEL_188;
            }

            *v55[0] = v12 | 0x80;
            v14 = v12 >> 7;
            if (v12 >> 14)
            {
              v15 = v13 + 2;
              do
              {
                *(v15 - 1) = v14 | 0x80;
                v16 = v14 >> 7;
                v15 = (v15 + 1);
                v25 = v14 >> 14;
                v14 >>= 7;
              }

              while (v25);
              goto LABEL_237;
            }

            goto LABEL_228;
          }

          break;
        case 0x56u:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 <= 0x7F)
            {
              goto LABEL_214;
            }

            *v55[0] = v27 | 0x80;
            v29 = v27 >> 7;
            if (v27 >> 14)
            {
              v30 = (v28 + 2);
              do
              {
                *(v30 - 1) = v29 | 0x80;
                v31 = v29 >> 7;
                v30 = (v30 + 1);
                v37 = v29 >> 14;
                v29 >>= 7;
              }

              while (v37);
              goto LABEL_241;
            }

            goto LABEL_230;
          }

          break;
        case 0x57u:
          v18 = v10[1];
          if (*(a1 + v10[2]) == v18 >> 3)
          {
            v19 = v55[0];
            if (v18 <= 0x7F)
            {
LABEL_113:
              *v19 = v18;
              v21 = v19 + 1;
            }

            else
            {
              *v55[0] = v18 | 0x80;
              v20 = v18 >> 7;
              if (v18 >> 14)
              {
                v21 = v19 + 2;
                do
                {
                  *(v21 - 1) = v20 | 0x80;
                  v22 = v20 >> 7;
                  ++v21;
                  v23 = v20 >> 14;
                  v20 >>= 7;
                }

                while (v23);
LABEL_233:
                *(v21 - 1) = v22;
              }

              else
              {
LABEL_226:
                v19[1] = v20;
                v21 = v19 + 2;
              }
            }

            *v21 = *v11;
            v49 = v21 + 1;
            goto LABEL_243;
          }

          break;
        case 0x58u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
            goto LABEL_224;
          }

          break;
        case 0x59u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_206:
            google::protobuf::internal::SingularFieldHelper<10>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Au:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_174:
            google::protobuf::internal::SingularFieldHelper<11>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Bu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_224:
            google::protobuf::internal::SingularFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Cu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_179:
            google::protobuf::internal::SingularFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Du:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_219:
            google::protobuf::internal::SingularFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x5Eu:
          v27 = v10[1];
          if (*(a1 + v10[2]) == v27 >> 3)
          {
            v28 = v55[0];
            if (v27 > 0x7F)
            {
              *v55[0] = v27 | 0x80;
              v29 = v27 >> 7;
              if (v27 >> 14)
              {
                v30 = (v28 + 2);
                do
                {
                  *(v30 - 1) = v29 | 0x80;
                  v31 = v29 >> 7;
                  v30 = (v30 + 1);
                  v51 = v29 >> 14;
                  v29 >>= 7;
                }

                while (v51);
LABEL_241:
                *(v30 - 1) = v31;
              }

              else
              {
LABEL_230:
                v28[1] = v29;
                v30 = (v28 + 2);
              }
            }

            else
            {
LABEL_214:
              *v28 = v27;
              v30 = (v28 + 1);
            }

            *v30 = *v11;
            v49 = v30 + 1;
            goto LABEL_243;
          }

          break;
        case 0x5Fu:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v55[0];
            if (v12 <= 0x7F)
            {
LABEL_188:
              *v13 = v12;
              v15 = v13 + 1;
            }

            else
            {
              *v55[0] = v12 | 0x80;
              v14 = v12 >> 7;
              if (v12 >> 14)
              {
                v15 = v13 + 2;
                do
                {
                  *(v15 - 1) = v14 | 0x80;
                  v16 = v14 >> 7;
                  v15 = (v15 + 1);
                  v36 = v14 >> 14;
                  v14 >>= 7;
                }

                while (v36);
LABEL_237:
                *(v15 - 1) = v16;
              }

              else
              {
LABEL_228:
                v13[1] = v14;
                v15 = v13 + 2;
              }
            }

            *v15 = *v11;
            v49 = v15 + 1;
LABEL_243:
            v55[0] = v49;
          }

          break;
        case 0x60u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_197:
            google::protobuf::internal::SingularFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x61u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_209:
            google::protobuf::internal::SingularFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(v11, a2 + 24 * v8, v55);
          }

          break;
        case 0x64u:
          google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v54, v55[0], 0x7FFFFFFF, -1);
          google::protobuf::io::CodedOutputStream::CodedOutputStream(v56, v54, 1);
          v56[58] = a4;
          (*(v10 + 2))(a1, *v10, v10[1], v10[2], v56);
          v24 = google::protobuf::io::EpsCopyOutputStream::ByteCount(v56, v57);
          v55[0] = v55[0] + v24 - v58;
          google::protobuf::io::CodedOutputStream::~CodedOutputStream(v56);
          break;
        default:
          google::protobuf::internal::SerializeNotImplemented(v10[3]);
          break;
      }

      ++v8;
    }

    while (v8 != v9);
    a5 = v55[0];
  }

  v52 = *MEMORY[0x277D85DE8];
  return a5;
}

void sub_26D41EF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::SerializeNotImplemented(google::protobuf::internal *this)
{
  v1 = this;
  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 534);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, "Not implemented field number ");
  v3 = google::protobuf::internal::LogMessage::operator<<(v2, v1);
  google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
}

void sub_26D41F170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::internal::IsNull<9>(void *a1)
{
  v1 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    v2 = *(v1 + 8);
  }

  return v2 == 0;
}

char *google::protobuf::internal::SingularFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t *a1, uint64_t a2, char **this)
{
  v8 = *(a2 + 4);
  result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 8;
  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<double>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<1>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<double>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::SingularFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>(int *a1, uint64_t a2, char **this)
{
  v8 = *(a2 + 4);
  result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 4;
  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<float>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<2>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<float>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<3>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<long long>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<3>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<long long>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<4>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<unsigned long long>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<4>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<unsigned long long>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<5>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<int>::Get(v7, v8);
      result = google::protobuf::internal::PrimitiveTypeHelper<5>::Serialize(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<5>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<int>::Get(v4, v5);
        result = google::protobuf::internal::PrimitiveTypeHelper<5>::Serialize(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<6>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<unsigned long long>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<6>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<unsigned long long>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<7>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<unsigned int>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<7>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<unsigned int>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::SingularFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>(char *a1, uint64_t a2, char **this)
{
  v8 = *(a2 + 4);
  result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
  v6 = *a1;
  v7 = this[8];
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = v6;
  this[8] = v7 + 1;
  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<BOOL>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 1;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<8>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<BOOL>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 1;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::RepeatedFieldHelper<9>::Serialize<google::protobuf::io::CodedOutputStream>(unsigned __int8 *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 2) >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      result = google::protobuf::internal::PrimitiveTypeHelper<9>::Serialize(*(v10 + 8 * v8++), this);
    }

    while (v8 < *(v7 + 2));
  }

  return result;
}

void google::protobuf::internal::PackedFieldHelper<9>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t a1, uint64_t a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 509);
  v3 = google::protobuf::internal::LogMessage::operator<<(v8, "Not implemented field number ");
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, *(a2 + 4));
  v5 = google::protobuf::internal::LogMessage::operator<<(v4, " with type ");
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a2 + 12));
  google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
}

void sub_26D41FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::SingularFieldHelper<10>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t *a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v7 = *(a2 + 4);
  google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
  google::protobuf::internal::SerializeGroupTo<google::protobuf::io::CodedOutputStream>(*a1, *(a2 + 16), this);
  v8 = *(a2 + 4) + 1;
  return google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
}

char *google::protobuf::internal::RepeatedFieldHelper<10>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 2) >= 1)
  {
    v13 = v3;
    v14 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      google::protobuf::internal::SerializeGroupTo<google::protobuf::io::CodedOutputStream>(*(v10 + 8 * v8), *(a2 + 16), this);
      v12 = *(a2 + 4) + 1;
      result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v12, this);
      ++v8;
    }

    while (v8 < *(v7 + 2));
  }

  return result;
}

uint64_t google::protobuf::internal::SingularFieldHelper<11>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t *a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v7 = *(a2 + 4);
  google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
  return google::protobuf::internal::SerializeMessageTo<google::protobuf::io::CodedOutputStream>(*a1, *(a2 + 16), this);
}

uint64_t google::protobuf::internal::RepeatedFieldHelper<11>::Serialize<google::protobuf::io::CodedOutputStream>(uint64_t result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(result + 8) >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      result = google::protobuf::internal::SerializeMessageTo<google::protobuf::io::CodedOutputStream>(*(v10 + 8 * v8++), *(a2 + 16), this);
    }

    while (v8 < *(v7 + 8));
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<13>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<unsigned int>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<13>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<unsigned int>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<15>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<int>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<15>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<int>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<16>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v11, this);
      result = google::protobuf::RepeatedField<long long>::Get(v7, v8);
      v9 = *result;
      v10 = this[8];
      if (*this <= v10)
      {
        result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v10);
        v10 = result;
      }

      *v10 = v9;
      this[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<16>::Serialize<google::protobuf::io::CodedOutputStream>(int *result, uint64_t a2, char **this)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    v9 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = google::protobuf::RepeatedField<long long>::Get(v4, v5);
        v6 = *result;
        v7 = this[8];
        if (*this <= v7)
        {
          result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
          v7 = result;
        }

        *v7 = v6;
        this[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<17>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<int>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<17,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<17>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<int>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<17,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<18>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v10, this);
      v9 = google::protobuf::RepeatedField<long long>::Get(v7, v8);
      result = google::protobuf::internal::SerializeTo<18,google::protobuf::io::CodedOutputStream>(v9, this);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *google::protobuf::internal::PackedFieldHelper<18>::Serialize<google::protobuf::io::CodedOutputStream>(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v7, this);
    v8 = v4[4];
    result = google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = google::protobuf::RepeatedField<long long>::Get(v4, v5);
        result = google::protobuf::internal::SerializeTo<18,google::protobuf::io::CodedOutputStream>(v6, this);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<1>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<double>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t google::protobuf::internal::PackedFieldHelper<1>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<double>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<2>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            v9 = (v9 + 1);
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<float>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<2>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<float>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

unint64_t *google::protobuf::internal::SingularFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(unint64_t *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(a1, a3);
}

unint64_t *google::protobuf::internal::RepeatedFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(unint64_t *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = google::protobuf::RepeatedField<long long>::Get(v5, v6);
      result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<3>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<long long>::Get(v4, v16);
        result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

unint64_t *google::protobuf::internal::RepeatedFieldHelper<4>::Serialize<google::protobuf::internal::ArrayOutput>(unint64_t *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = google::protobuf::RepeatedField<unsigned long long>::Get(v5, v6);
      result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<4>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<unsigned long long>::Get(v4, v16);
        result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::SingularFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(int *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,5>::Serialize(a1, a3);
}

int *google::protobuf::internal::RepeatedFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = google::protobuf::RepeatedField<int>::Get(v5, v6);
      result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,5>::Serialize(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<5>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<int>::Get(v4, v16);
        result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,5>::Serialize(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<6>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<unsigned long long>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t google::protobuf::internal::PackedFieldHelper<6>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<unsigned long long>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<7>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            v9 = (v9 + 1);
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<unsigned int>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<7>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<unsigned int>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<8>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<BOOL>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t google::protobuf::internal::PackedFieldHelper<8>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<BOOL>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

char *google::protobuf::internal::SingularFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(void *a1, uint64_t a2, char **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(*a1 & 0xFFFFFFFFFFFFFFFELL, v6);
  *a3 = result;
  return result;
}

char *google::protobuf::internal::RepeatedFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(char *result, uint64_t a2, char **a3)
{
  if (*(result + 2) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      v13 = *(v5 + 2);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      result = google::protobuf::io::CodedOutputStream::WriteStringWithSizeToArray(*(v14 + 8 * v6), v9);
      v7 = result;
      *a3 = result;
      ++v6;
    }

    while (v6 < *(v5 + 2));
  }

  return result;
}

void google::protobuf::internal::PackedFieldHelper<9>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 509);
  v3 = google::protobuf::internal::LogMessage::operator<<(v8, "Not implemented field number ");
  v4 = google::protobuf::internal::LogMessage::operator<<(v3, *(a2 + 4));
  v5 = google::protobuf::internal::LogMessage::operator<<(v4, " with type ");
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a2 + 12));
  google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
}

void sub_26D4219A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::SingularFieldHelper<10>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 4);
  v6 = *a3;
  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x80;
    v8 = v5 >> 7;
    if (v5 >> 14)
    {
      v7 = v6 + 2;
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
      v6[1] = v8;
      v7 = v6 + 2;
    }
  }

  else
  {
    *v6 = v5;
    v7 = v6 + 1;
  }

  *a3 = v7;
  google::protobuf::internal::SerializeGroupTo<google::protobuf::internal::ArrayOutput>(*a1, *(a2 + 16), a3);
  v11 = *(a2 + 4) + 1;
  v12 = *a3;
  if (v11 > 0x7F)
  {
    *v12 = v11 | 0x80;
    v14 = v11 >> 7;
    if (v11 >> 14)
    {
      v13 = v12 + 2;
      do
      {
        *(v13 - 1) = v14 | 0x80;
        v15 = v14 >> 7;
        ++v13;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
      *(v13 - 1) = v15;
    }

    else
    {
      v12[1] = v14;
      v13 = v12 + 2;
    }
  }

  else
  {
    *v12 = v11;
    v13 = v12 + 1;
  }

  *a3 = v13;
}

void google::protobuf::internal::RepeatedFieldHelper<10>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8) >= 1)
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      google::protobuf::internal::SerializeGroupTo<google::protobuf::internal::ArrayOutput>(*(v14 + 8 * v6), *(a2 + 16), a3);
      v15 = *(a2 + 4) + 1;
      v16 = *a3;
      if (v15 > 0x7F)
      {
        *v16 = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v7 = v16 + 2;
          do
          {
            *(v7 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v7;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v7 - 1) = v18;
        }

        else
        {
          v16[1] = v17;
          v7 = v16 + 2;
        }
      }

      else
      {
        *v16 = v15;
        v7 = v16 + 1;
      }

      *a3 = v7;
      ++v6;
    }

    while (v6 < *(a1 + 8));
  }
}

void google::protobuf::internal::SingularFieldHelper<11>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  google::protobuf::internal::SerializeMessageTo<google::protobuf::internal::ArrayOutput>(*a1, *(a2 + 16), a3);
}

void google::protobuf::internal::RepeatedFieldHelper<11>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      google::protobuf::internal::SerializeMessageTo<google::protobuf::internal::ArrayOutput>(*(v14 + 8 * v6++), *(a2 + 16), a3);
    }

    while (v6 < *(a1 + 8));
  }
}

unsigned int *google::protobuf::internal::SingularFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(unsigned int *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,13>::Serialize(a1, a3);
}

unsigned int *google::protobuf::internal::RepeatedFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(unsigned int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = google::protobuf::RepeatedField<unsigned int>::Get(v5, v6);
      result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,13>::Serialize(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<13>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<unsigned int>::Get(v4, v16);
        result = google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,13>::Serialize(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<15>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            v9 = (v9 + 1);
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<int>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<15>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<int>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *google::protobuf::internal::RepeatedFieldHelper<16>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = google::protobuf::RepeatedField<long long>::Get(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t google::protobuf::internal::PackedFieldHelper<16>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = google::protobuf::RepeatedField<long long>::Get(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

_BYTE *google::protobuf::internal::SingularFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(int *a1, uint64_t a2, _BYTE **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = google::protobuf::internal::PrimitiveTypeHelper<17>::SerializeToArray(a1, v6);
  *a3 = result;
  return result;
}

_BYTE *google::protobuf::internal::RepeatedFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(_BYTE *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    result = *a3;
    do
    {
      v7 = *(a2 + 4);
      if (v7 > 0x7F)
      {
        *result = v7 | 0x80;
        v9 = v7 >> 7;
        if (v7 >> 14)
        {
          v8 = result + 2;
          do
          {
            *(v8 - 1) = v9 | 0x80;
            v10 = v9 >> 7;
            ++v8;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
          *(v8 - 1) = v10;
        }

        else
        {
          result[1] = v9;
          v8 = result + 2;
        }
      }

      else
      {
        *result = v7;
        v8 = result + 1;
      }

      *a3 = v8;
      v12 = google::protobuf::RepeatedField<int>::Get(v5, v6);
      result = google::protobuf::internal::PrimitiveTypeHelper<17>::SerializeToArray(v12, *a3);
      *a3 = result;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<17>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<int>::Get(v4, v16);
        result = google::protobuf::internal::PrimitiveTypeHelper<17>::SerializeToArray(v17, *a3);
        *a3 = result;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

_BYTE *google::protobuf::internal::SingularFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(uint64_t *a1, uint64_t a2, _BYTE **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = google::protobuf::internal::PrimitiveTypeHelper<18>::SerializeToArray(a1, v6);
  *a3 = result;
  return result;
}

_BYTE *google::protobuf::internal::RepeatedFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(_BYTE *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    result = *a3;
    do
    {
      v7 = *(a2 + 4);
      if (v7 > 0x7F)
      {
        *result = v7 | 0x80;
        v9 = v7 >> 7;
        if (v7 >> 14)
        {
          v8 = result + 2;
          do
          {
            *(v8 - 1) = v9 | 0x80;
            v10 = v9 >> 7;
            ++v8;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
          *(v8 - 1) = v10;
        }

        else
        {
          result[1] = v9;
          v8 = result + 2;
        }
      }

      else
      {
        *result = v7;
        v8 = result + 1;
      }

      *a3 = v8;
      v12 = google::protobuf::RepeatedField<long long>::Get(v5, v6);
      result = google::protobuf::internal::PrimitiveTypeHelper<18>::SerializeToArray(v12, *a3);
      *a3 = result;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *google::protobuf::internal::PackedFieldHelper<18>::Serialize<google::protobuf::internal::ArrayOutput>(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = google::protobuf::RepeatedField<long long>::Get(v4, v16);
        result = google::protobuf::internal::PrimitiveTypeHelper<18>::SerializeToArray(v17, *a3);
        *a3 = result;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSerializer(google::protobuf::internal *this, const unsigned __int8 *a2, signed int a3, int a4, unsigned __int8 **a5, google::protobuf::io::CodedOutputStream *a6)
{
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + a2), a3, a4, a5[8], a5);
  a5[8] = result;
  return result;
}

unsigned __int8 *google::protobuf::internal::UnknownFieldSerializerLite(google::protobuf::internal *this, const unsigned __int8 *a2, unsigned int a3, unsigned int a4, google::protobuf::io::EpsCopyOutputStream *a5, google::protobuf::io::CodedOutputStream *a6)
{
  v7 = *(this + a2);
  if (v7)
  {
    v8 = ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::internal::InitProtobufDefaultsSlow(this);
    }

    v8 = &google::protobuf::internal::fixed_address_empty_string;
  }

  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  if (v9 >= 0)
  {
    LODWORD(v11) = *(v8 + 23);
  }

  else
  {
    v11 = v8[1];
  }

  v12 = *(a5 + 8);
  if (*a5 - v12 < v11)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a5, v10, v11, *(a5 + 8));
  }

  else
  {
    v13 = v11;
    memcpy(*(a5 + 8), v10, v11);
    result = (v12 + v13);
  }

  *(a5 + 8) = result;
  return result;
}

uint64_t google::protobuf::internal::DuplicateIfNonNullInternal(google::protobuf::internal *this, google::protobuf::MessageLite *a2)
{
  if (!this)
  {
    return 0;
  }

  v3 = (*(*this + 24))(this, a2);
  (*(*v3 + 64))(v3, this);
  return v3;
}

uint64_t google::protobuf::internal::GenericSwap(google::protobuf::internal *this, google::protobuf::MessageLite *a2, google::protobuf::MessageLite *a3)
{
  v5 = (*(*this + 24))(this, a2, a3);
  (*(*v5 + 64))(v5, this);
  (*(*this + 40))(this);
  (*(*this + 64))(this, a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 64))(a2, v5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

google::protobuf::Arena *google::protobuf::internal::GetOwnedMessageInternal(atomic_ullong *this, google::protobuf::Arena *a2, atomic_ullong *a3, google::protobuf::Arena *a4)
{
  v5 = a2;
  v7 = *(a2 + 1);
  if (v7)
  {
    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (v7 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 722);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: submessage->GetArena() == submessage_arena: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (this == a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 723);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: message_arena != submessage_arena: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    if (!this)
    {
LABEL_11:
      v10 = (*(*v5 + 32))(v5, this);
      (*(*v10 + 64))(v10, v5);
      return v10;
    }
  }

  else if (!this)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    goto LABEL_11;
  }

  google::protobuf::Arena::Own<google::protobuf::MessageLite>(this, v5);
  return v5;
}

void sub_26D422CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::InitSCCImpl(_DWORD *a1)
{
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2 = pthread_self();
  v3 = v2;
  if (google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner == v2)
  {
    if (*a1 != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::internal::InitProtobufDefaultsSlow(v2);
    }

    std::mutex::lock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = v3;
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = 0;

    std::mutex::unlock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
  }
}

void sub_26D422DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *google::protobuf::internal::anonymous namespace::InitSCC_DFS(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[2 * i])
        {
          v3 = *(v1 + 1);
        }
      }
    }

    v5 = v3;
    v6 = *(v1 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &v2[2 * v5];
      do
      {
        if (**&v8[2 * v7])
        {
          v6 = *(v1 + 2);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

char *google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = *result;
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

char *google::protobuf::internal::SerializeTo<3,google::protobuf::io::CodedOutputStream>(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = *result;
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

char *google::protobuf::internal::PrimitiveTypeHelper<5>::Serialize(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = *result;
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

unsigned __int8 *google::protobuf::internal::PrimitiveTypeHelper<9>::Serialize(void **a1, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = a1[1];
  }

  v5 = *(this + 8);
  if (*this <= v5)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, *(this + 8));
  }

  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *(this + 8) = v6;
  v10 = *(v3 + 23);
  if (v10 < 0)
  {
    v11 = v3;
    v3 = *v3;
    v10 = v11[1];
  }

  result = google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(this, v3, v10, v6);
  *(this + 8) = result;
  return result;
}

uint64_t google::protobuf::internal::SerializeGroupTo<google::protobuf::io::CodedOutputStream>(uint64_t a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (a2)
  {
    v4 = *a2 - 1;
    v5 = *(a2 + 8) + 24;

    return google::protobuf::internal::SerializeInternal(a1, v5, v4, this);
  }

  else
  {
    result = (*(*a1 + 96))(a1, *(this + 8), this);
    *(this + 8) = result;
  }

  return result;
}

uint64_t google::protobuf::internal::SerializeMessageTo<google::protobuf::io::CodedOutputStream>(uint64_t a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (a2)
  {
    v6 = *(a2 + 8);
    v9 = *(a1 + *v6);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v9, this);
    return google::protobuf::internal::SerializeInternal(a1, v6 + 24, *a2 - 1, this);
  }

  else
  {
    v8 = (*(*a1 + 80))(a1);
    google::protobuf::internal::SerializeTo<13,google::protobuf::io::CodedOutputStream>(&v8, this);
    result = (*(*a1 + 96))(a1, *(this + 8), this);
    *(this + 8) = result;
  }

  return result;
}

char *google::protobuf::internal::SerializeTo<17,google::protobuf::io::CodedOutputStream>(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = (2 * *result) ^ (*result >> 31);
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

char *google::protobuf::internal::SerializeTo<18,google::protobuf::io::CodedOutputStream>(char *result, google::protobuf::io::EpsCopyOutputStream *this)
{
  v3 = (2 * *result) ^ (*result >> 63);
  v4 = *(this + 8);
  if (*this <= v4)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *(this + 8) = v5;
  return result;
}

unsigned int *google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,13>::Serialize(unsigned int *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (*result > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

unint64_t *google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,3>::Serialize(unint64_t *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (*result > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

int *google::protobuf::internal::OutputHelper<google::protobuf::internal::ArrayOutput,5>::Serialize(int *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (v3 > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

void google::protobuf::internal::SerializeGroupTo<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *a3 = google::protobuf::internal::SerializeInternalToArray(a1, *(a2 + 8) + 24, (*a2 - 1), *(a3 + 8), *a3);
  }

  else
  {

    google::protobuf::internal::SerializeMessageNoTable(a1, a3);
  }
}

void google::protobuf::internal::SerializeMessageTo<google::protobuf::internal::ArrayOutput>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a2 + 8);
    v6 = *(a1 + *v5);
    v7 = *a3;
    if (v6 > 0x7F)
    {
      *v7 = v6 | 0x80;
      v12 = v6 >> 7;
      if (v6 >> 14)
      {
        v8 = v7 + 2;
        do
        {
          *(v8 - 1) = v12 | 0x80;
          v14 = v12 >> 7;
          ++v8;
          v15 = v12 >> 14;
          v12 >>= 7;
        }

        while (v15);
        *(v8 - 1) = v14;
      }

      else
      {
        v7[1] = v12;
        v8 = v7 + 2;
      }
    }

    else
    {
      *v7 = v6;
      v8 = v7 + 1;
    }

    *a3 = v8;
    *a3 = google::protobuf::internal::SerializeInternalToArray(a1, v5 + 6, (*a2 - 1), *(a3 + 8), v8);
  }

  else
  {
    v9 = (*(*a1 + 80))(a1);
    v10 = *a3;
    if (v9 > 0x7F)
    {
      *v10 = v9 | 0x80;
      v13 = v9 >> 7;
      if (v9 >> 14)
      {
        v11 = v10 + 2;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v16 = v13 >> 7;
          ++v11;
          v17 = v13 >> 14;
          v13 >>= 7;
        }

        while (v17);
        *(v11 - 1) = v16;
      }

      else
      {
        v10[1] = v13;
        v11 = v10 + 2;
      }
    }

    else
    {
      *v10 = v9;
      v11 = v10 + 1;
    }

    *a3 = v11;

    google::protobuf::internal::SerializeMessageNoTable(a1, a3);
  }
}

_BYTE *google::protobuf::internal::PrimitiveTypeHelper<17>::SerializeToArray(int *a1, _BYTE *a2)
{
  v2 = (2 * *a1) ^ (*a1 >> 31);
  if (v2 > 0x7F)
  {
    *a2 = v2 | 0x80;
    v4 = v2 >> 7;
    if (v2 >> 14)
    {
      v3 = a2 + 2;
      do
      {
        *(v3 - 1) = v4 | 0x80;
        v5 = v4 >> 7;
        ++v3;
        v6 = v4 >> 14;
        v4 >>= 7;
      }

      while (v6);
      *(v3 - 1) = v5;
    }

    else
    {
      a2[1] = v4;
      return a2 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a2 + 1;
  }

  return v3;
}

_BYTE *google::protobuf::internal::PrimitiveTypeHelper<18>::SerializeToArray(uint64_t *a1, _BYTE *a2)
{
  v2 = (2 * *a1) ^ (*a1 >> 63);
  if (v2 > 0x7F)
  {
    *a2 = v2 | 0x80;
    v4 = v2 >> 7;
    if (v2 >> 14)
    {
      v3 = a2 + 2;
      do
      {
        *(v3 - 1) = v4 | 0x80;
        v5 = v4 >> 7;
        ++v3;
        v6 = v4 >> 14;
        v4 >>= 7;
      }

      while (v6);
      *(v3 - 1) = v5;
    }

    else
    {
      a2[1] = v4;
      return a2 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a2 + 1;
  }

  return v3;
}

void google::protobuf::internal::InitSCCImpl()
{
  {
    __cxa_atexit(google::protobuf::internal::WrappedMutex::~WrappedMutex, &google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu, &dword_26D3C1000);
  }
}

void google::protobuf::internal::InitImplicitWeakMessageDefaultInstance(google::protobuf::internal *this)
{
  qword_280500BF0 = 0;
  unk_280500BF8 = 0;
  google::protobuf::internal::implicit_weak_message_default_instance = &unk_287EBCBD8;
  qword_280500C00 = 0;
  unk_280500C08 = 0;
}

uint64_t *google::protobuf::internal::ImplicitWeakMessage::default_instance(google::protobuf::internal::ImplicitWeakMessage *this)
{
  if (atomic_load_explicit(&google::protobuf::internal::implicit_weak_message_once_init_, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v4 = v5;
    v5[0] = google::protobuf::internal::InitImplicitWeakMessageDefaultInstance;
    std::__call_once(&google::protobuf::internal::implicit_weak_message_once_init_, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  return &google::protobuf::internal::implicit_weak_message_default_instance;
}

void google::protobuf::internal::ImplicitWeakMessage::~ImplicitWeakMessage(void **this)
{
  *this = &unk_287EBCBD8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_287EBCBD8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x26D6BF040);
}

void *google::protobuf::internal::ImplicitWeakMessage::New(google::protobuf::internal::ImplicitWeakMessage *this, google::protobuf::Arena *a2)
{
  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    google::protobuf::internal::ImplicitWeakMessage::New(a2);
  }

  result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(a2, 0x28, google::protobuf::internal::arena_destruct_object<google::protobuf::internal::ImplicitWeakMessage>);
  *result = &unk_287EBCBD8;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t google::protobuf::internal::ImplicitWeakMessage::Clear(uint64_t this)
{
  if (*(this + 39) < 0)
  {
    **(this + 16) = 0;
    *(this + 24) = 0;
  }

  else
  {
    *(this + 16) = 0;
    *(this + 39) = 0;
  }

  return this;
}

std::string *google::protobuf::internal::ImplicitWeakMessage::CheckTypeAndMergeFrom(google::protobuf::internal::ImplicitWeakMessage *this, const google::protobuf::MessageLite *a2)
{
  v4 = *(a2 + 2);
  v2 = a2 + 16;
  v3 = v4;
  v5 = *(v2 + 1);
  if (v2[23] >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v2 = v3;
    v6 = v5;
  }

  return std::string::append((this + 16), v2, v6);
}

uint64_t google::protobuf::internal::ImplicitWeakMessage::ByteSizeLong(google::protobuf::internal::ImplicitWeakMessage *this)
{
  result = *(this + 39);
  if (result < 0)
  {
    return *(this + 3);
  }

  return result;
}

uint64_t google::protobuf::internal::ImplicitWeakMessage::GetCachedSize(google::protobuf::internal::ImplicitWeakMessage *this)
{
  result = *(this + 39);
  if (result < 0)
  {
    return *(this + 3);
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ImplicitWeakMessage::_InternalSerialize(google::protobuf::internal::ImplicitWeakMessage *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = *(this + 39);
  if (v4 < 0)
  {
    v5 = *(this + 2);
    v4 = *(this + 3);
  }

  else
  {
    v5 = this + 16;
  }

  if (*a3 - a2 < v4)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v5, v4, a2);
  }

  else
  {
    v6 = v4;
    memcpy(a2, v5, v4);
    return &a2[v6];
  }
}

uint64_t google::protobuf::internal::EpsCopyInputStream::AppendUntilEnd<google::protobuf::internal::EpsCopyInputStream::AppendString(char const*,std::string *)::{lambda(char const*,long)#1}>(uint64_t a1, std::string::value_type *__s, std::string **a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 28);
  if (&__s[-v3] > v4)
  {
    return 0;
  }

  v7 = __s;
  if (v4 < 17)
  {
LABEL_9:
    v5 = v3 + v4;
    v12 = v3 + v4 - v7;
    if (v3 + v4 < v7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 358);
      v13 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: end >= ptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    std::string::append(*a3, v7, v12);
  }

  else
  {
    while (1)
    {
      v9 = *(a1 + 8) - v7 + 16;
      if (v9 < 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 351);
        v10 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (chunk_size) >= (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
      }

      std::string::append(*a3, v7, v9);
      v11 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v11)
      {
        return *a1;
      }

      v7 = v11 + 16;
      v4 = *(a1 + 28);
      if (v4 < 17)
      {
        v3 = *(a1 + 8);
        goto LABEL_9;
      }
    }
  }

  return v5;
}

void sub_26D423CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::uint128::DivModImpl(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5, unint64_t *a6)
{
  v6 = a2;
  v7 = a1;
  if (!(a3 | a4))
  {
    google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 86);
    v8 = google::protobuf::internal::LogMessage::operator<<(v45, "Division or mod by zero: dividend.hi=");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, v6);
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, ", lo=");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, v7);
    google::protobuf::internal::LogFinisher::operator=(&v44, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
    return;
  }

  v16 = a1 < a3;
  if (a2 != a4)
  {
    v16 = a2 < a4;
  }

  if (!v16)
  {
    if (a2)
    {
      v17 = HIDWORD(a2);
      if (!HIDWORD(a2))
      {
        v17 = a2;
      }

      if (v17 >> 16)
      {
        v18 = (32 * (HIDWORD(a2) != 0)) | 0x10;
      }

      else
      {
        v18 = 32 * (HIDWORD(a2) != 0);
      }

      if (v17 >> 16)
      {
        LODWORD(v17) = WORD1(v17);
      }

      if (v17 > 0xFF)
      {
        v18 |= 8u;
        LODWORD(v17) = v17 >> 8;
      }

      if (v17 > 0xF)
      {
        v18 |= 4u;
        LOBYTE(v17) = v17 >> 4;
      }

      v19 = v18 + ((0x3333333322221100uLL >> (4 * v17)) & 3) + 64;
      if (a4)
      {
LABEL_20:
        v20 = HIDWORD(a4);
        if (!HIDWORD(a4))
        {
          v20 = a4;
        }

        if (v20 >> 16)
        {
          v21 = (32 * (HIDWORD(a4) != 0)) | 0x10;
        }

        else
        {
          v21 = 32 * (HIDWORD(a4) != 0);
        }

        if (v20 >> 16)
        {
          LODWORD(v20) = WORD1(v20);
        }

        if (v20 > 0xFF)
        {
          v21 |= 8u;
          LODWORD(v20) = v20 >> 8;
        }

        if (v20 > 0xF)
        {
          v21 |= 4u;
          LOBYTE(v20) = v20 >> 4;
        }

        v22 = v21 + ((0x3333333322221100uLL >> (4 * v20)) & 3) + 64;
LABEL_60:
        v29 = (v19 - v22);
        if (v19 - v22 < 0)
        {
          v31 = 0;
          v30 = 0;
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = v29 + 1;
          do
          {
            *(&v33 + 1) = v30;
            *&v33 = v31;
            v30 = v33 >> 63;
            v31 *= 2;
            v34 = a3 << v29;
            if (v29 <= 0x7F)
            {
              v35 = a3 << v29;
            }

            else
            {
              v35 = 0;
            }

            v36 = (a4 << v29) | (a3 >> 1 >> ~v29);
            if (!v29)
            {
              v36 = a4;
              v34 = a3;
            }

            if (v29 > 0x3F)
            {
              v34 = 0;
            }

            else
            {
              v35 = v36;
            }

            v37 = v7 >= v34;
            v38 = v6 >= v35;
            v39 = v6 - v35;
            v40 = v38;
            if (v39)
            {
              v37 = v40;
            }

            v38 = v7 >= v34;
            v41 = v7 - v34;
            v42 = !v38;
            v43 = v39 - v42;
            if (v37)
            {
              v31 |= 1uLL;
              v7 = v41;
              v6 = v43;
            }

            --v29;
            --v32;
          }

          while (v32 > 0);
        }

        *a5 = v31;
        a5[1] = v30;
        goto LABEL_84;
      }
    }

    else
    {
      if (!a1)
      {
        google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 63);
        v23 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: (0) != (n): ");
        google::protobuf::internal::LogFinisher::operator=(&v44, &v23->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
      }

      v24 = HIDWORD(v7);
      if (!HIDWORD(v7))
      {
        v24 = v7;
      }

      if (v24 >> 16)
      {
        v25 = (32 * (HIDWORD(v7) != 0)) | 0x10;
      }

      else
      {
        v25 = 32 * (HIDWORD(v7) != 0);
      }

      if (v24 >> 16)
      {
        LODWORD(v24) = WORD1(v24);
      }

      if (v24 > 0xFF)
      {
        v25 |= 8u;
        LODWORD(v24) = v24 >> 8;
      }

      if (v24 > 0xF)
      {
        v25 |= 4u;
        LOBYTE(v24) = v24 >> 4;
      }

      v19 = ((0x3333333322221100uLL >> (4 * v24)) & 3) + v25;
      if (a4)
      {
        goto LABEL_20;
      }
    }

    if (!a3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 63);
      v26 = google::protobuf::internal::LogMessage::operator<<(v45, "CHECK failed: (0) != (n): ");
      google::protobuf::internal::LogFinisher::operator=(&v44, &v26->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v45[0].__r_.__value_.__l.__data_);
    }

    v27 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v27 = a3;
    }

    if (v27 >> 16)
    {
      v28 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    else
    {
      v28 = 32 * (HIDWORD(a3) != 0);
    }

    if (v27 >> 16)
    {
      LODWORD(v27) = WORD1(v27);
    }

    if (v27 > 0xFF)
    {
      v28 |= 8u;
      LODWORD(v27) = v27 >> 8;
    }

    if (v27 > 0xF)
    {
      v28 |= 4u;
      LOBYTE(v27) = v27 >> 4;
    }

    v22 = ((0x3333333322221100uLL >> (4 * v27)) & 3) + v28;
    goto LABEL_60;
  }

  *a5 = 0;
  a5[1] = 0;
LABEL_84:
  *a6 = v7;
  a6[1] = v6;
}

void sub_26D42414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t *google::protobuf::uint128::operator/=(unint64_t *a1, unint64_t *a2)
{
  v5 = 0uLL;
  google::protobuf::uint128::DivModImpl(*a1, a1[1], *a2, a2[1], &v5, &v4);
  *a1 = v5;
  return a1;
}

unint64_t *google::protobuf::uint128::operator%=(unint64_t *a1, unint64_t *a2)
{
  v4 = 0uLL;
  google::protobuf::uint128::DivModImpl(*a1, a1[1], *a2, a2[1], &v5, &v4);
  *a1 = v4;
  return a1;
}

void *google::protobuf::operator<<(uint64_t *a1, __int128 *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  if ((v4 & 0x4A) == 8)
  {
    v5 = 0x1000000000000000;
    v6 = 15;
  }

  else if ((v4 & 0x4A) == 0x40)
  {
    v5 = 0x8000000000000000;
    v6 = 21;
  }

  else
  {
    v5 = 0x8AC7230489E80000;
    v6 = 19;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  *(&v28 + *(v28 - 24) + 8) = *(&v28 + *(v28 - 24) + 8) & 0xFFFFBDB5 | v4 & 0x424A;
  v27 = *a2;
  v26[0] = 0;
  v26[1] = 0;
  google::protobuf::uint128::DivModImpl(v27, *(&v27 + 1), v5, 0, &v27, v26);
  v25[0] = 0;
  v25[1] = 0;
  google::protobuf::uint128::DivModImpl(v27, *(&v27 + 1), v5, 0, &v27, v25);
  if (v27)
  {
    MEMORY[0x26D6BEEB0](&v28);
    *(&v28 + *(v28 - 24) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v28, &v24);
    *(v7 + *(*v7 - 24) + 24) = v6;
    MEMORY[0x26D6BEEB0](&v28, v25[0]);
    v8 = &v28 + *(v28 - 24);
  }

  else
  {
    if (!v25[0])
    {
      goto LABEL_11;
    }

    MEMORY[0x26D6BEEB0](&v28);
    *(&v28 + *(v28 - 24) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v28, &v24);
    v8 = v9 + *(*v9 - 24);
  }

  *(v8 + 3) = v6;
LABEL_11:
  MEMORY[0x26D6BEEB0](&v28, v26[0]);
  std::stringbuf::str();
  v10 = *a1;
  v11 = a1 + *(*a1 - 24);
  v12 = *(v11 + 3);
  *(v11 + 3) = 0;
  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v14 = v12 - size;
  if (v12 > size)
  {
    v15 = v4 & 0xB0;
    v16 = (a1 + *(v10 - 24));
    fmtflags = v16[1].__fmtflags_;
    if (v15 == 32)
    {
      if (fmtflags == -1)
      {
        std::ios_base::getloc(v16);
        v18 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
        fmtflags = (v18->__vftable[2].~facet_0)(v18, 32);
        std::locale::~locale(&v33);
        v16[1].__fmtflags_ = fmtflags;
      }

      std::string::append(&v24, v14, fmtflags);
    }

    else
    {
      if (fmtflags == -1)
      {
        std::ios_base::getloc(v16);
        v19 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
        fmtflags = (v19->__vftable[2].~facet_0)(v19, 32);
        std::locale::~locale(&v33);
        v16[1].__fmtflags_ = fmtflags;
      }

      std::string::insert(&v24, 0, v14, fmtflags);
    }
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v24;
  }

  else
  {
    v20 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v24.__r_.__value_.__l.__size_;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v20, v21);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x277D82828];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x277D82828] + 24);
  v29 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  MEMORY[0x26D6BEFC0](&v32);
  return v22;
}

void sub_26D4246EC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale((v28 - 72));
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15, MEMORY[0x277D82828]);
  MEMORY[0x26D6BEFC0](va);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void google::protobuf::internal::EpsCopyInputStream::BackUp(google::protobuf::internal::EpsCopyInputStream *this, const char *a2)
{
  v2 = a2;
  if (*(this + 1) + 16 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 116);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: ptr <= buffer_end_ + kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 2) == (this + 40))
  {
    v5 = (*(this + 2) - v2 + 16);
  }

  else
  {
    v5 = (*(this + 6) + *(this + 2) - v2);
  }

  if (v5 >= 1)
  {
    (*(**(this + 4) + 24))(*(this + 4), v5);
    *(this + 21) += v5;
  }
}

void sub_26D424900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::MessageLite::DebugString(google::protobuf::MessageLite *this@<X0>, std::string *a2@<X8>)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = "MessageLite at 0x";
  v5[1] = 17;
  google::protobuf::strings::AlphaNum::AlphaNum(v4, this, 1);
  google::protobuf::StrCat(v5, v4, a2);
  v3 = *MEMORY[0x277D85DE8];
}

void google::protobuf::MessageLite::LogInitializationErrorMessage(google::protobuf::MessageLite *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, &__p);
  google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
}

void sub_26D424A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::InitializationErrorMessage(const std::string::value_type *this@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, this);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  std::string::append(a3, p_p, v8);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 56))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12;
  }

  std::string::append(a3, v9, v10);
  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_26D424BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *google::protobuf::MessageLite::New(google::protobuf::MessageLite *this, atomic_ullong *a2)
{
  v3 = (*(*this + 24))(this);
  if (a2)
  {
    google::protobuf::Arena::Own<google::protobuf::MessageLite>(a2, v3);
  }

  return v3;
}

uint64_t google::protobuf::MessageLite::MergeFromImpl(google::protobuf::MessageLite *a1, uint64_t a2, char a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v15[0] = &unk_287EBCD00;
  v15[1] = a2;
  v6 = *(a2 + 52);
  v7 = *(a2 + 37);
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = v7;
  v22 = -NAN;
  v23 = v6;
  v24 = 0x80000000;
  v25 = 0uLL;
  v8 = google::protobuf::internal::EpsCopyInputStream::InitFrom(v16, v15);
  v24 = 0;
  v25 = *(a2 + 64);
  v9 = (*(*a1 + 88))(a1, v8, v16);
  if (!v9)
  {
    goto LABEL_14;
  }

  google::protobuf::internal::EpsCopyInputStream::BackUp(v16, v9);
  if (LODWORD(v22) == 1)
  {
    *(a2 + 36) = 1;
    if ((a3 & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    if ((*(*a1 + 48))(a1))
    {
      goto LABEL_12;
    }

    google::protobuf::MessageLite::LogInitializationErrorMessage(a1);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (!LODWORD(v22))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 240);
    v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: ctx.LastTag() != 1: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (v16[0] < v9 && (!v16[2] || &v9[-v16[1]] > v17))
  {
    goto LABEL_14;
  }

  *(a2 + 32) = LODWORD(v22) + 1;
  if ((a3 & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  result = 1;
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D424E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParseFromCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedInputStream *a2)
{
  (*(*this + 40))(this);

  return google::protobuf::MessageLite::MergeFromImpl(this, a2, 1);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromCodedStream(google::protobuf::MessageLite *this, google::protobuf::io::CodedInputStream *a2)
{
  (*(*this + 40))(this);

  return google::protobuf::MessageLite::MergeFromImpl(this, a2, 3);
}

uint64_t google::protobuf::MessageLite::ParseFromFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileInputStream::FileInputStream(v5, a2, -1);
  (*(*this + 40))(this);
  v3 = google::protobuf::internal::MergeFromImpl<false>();
  google::protobuf::MessageLite::ParseFromFileDescriptor(v5, v3, &v6);
  return v6;
}

void google::protobuf::io::FileInputStream::~FileInputStream(google::protobuf::io::FileInputStream *this)
{
  *this = &unk_287EBD190;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v1);
}

{
  *this = &unk_287EBD190;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v1);

  JUMPOUT(0x26D6BF040);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileInputStream::FileInputStream(v5, a2, -1);
  (*(*this + 40))(this);
  v3 = google::protobuf::internal::MergeFromImpl<false>();
  google::protobuf::MessageLite::ParseFromFileDescriptor(v5, v3, &v6);
  return v6;
}

uint64_t google::protobuf::MessageLite::ParseFromIstream(uint64_t a1, void *a2)
{
  google::protobuf::io::IstreamInputStream::IstreamInputStream(v6, a2, -1);
  (*(*a1 + 40))(a1);
  v4 = google::protobuf::internal::MergeFromImpl<false>();
  google::protobuf::MessageLite::ParseFromIstream(v4, a2, v6, &v7);
  return v7;
}

void sub_26D42517C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::IstreamInputStream::~IstreamInputStream(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::IstreamInputStream::~IstreamInputStream(google::protobuf::io::IstreamInputStream *this)
{
  *this = &unk_287EBD270;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 24));
  google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::~CopyingIstreamInputStream(v1);
}

{
  *this = &unk_287EBD270;
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 24));

  JUMPOUT(0x26D6BF040);
}

uint64_t google::protobuf::MessageLite::ParsePartialFromIstream(uint64_t a1, void *a2)
{
  google::protobuf::io::IstreamInputStream::IstreamInputStream(v6, a2, -1);
  (*(*a1 + 40))(a1);
  v4 = google::protobuf::internal::MergeFromImpl<false>();
  google::protobuf::MessageLite::ParseFromIstream(v4, a2, v6, &v7);
  return v7;
}

void sub_26D425268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::IstreamInputStream::~IstreamInputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::ParseFromArray(google::protobuf::MessageLite *this, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    google::protobuf::MessageLite::ParseFromArray();
  }

  google::protobuf::MessageLite::ParseFromArray(a3, a2, this);
  return v4;
}

uint64_t google::protobuf::MessageLite::ParsePartialFromArray(google::protobuf::MessageLite *this, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    google::protobuf::MessageLite::ParseFromArray();
  }

  google::protobuf::MessageLite::ParsePartialFromArray(a3, a2, this);
  return v4;
}

uint64_t google::protobuf::MessageLite::SerializeWithCachedSizesToArray(google::protobuf::MessageLite *this, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = &a2[(*(*this + 80))(this)];
  v11[0] = v4;
  v11[1] = 0;
  v11[6] = 0;
  v12 = 0;
  v13 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  v5 = (*(*this + 96))(this, a2, v11);
  if (v4 != v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_26D425420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeToCodedStream(google::protobuf::MessageLite *this, unsigned __int8 **a2)
{
  if (((*(*this + 48))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 372);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToCodedStream(this, a2);
}

void sub_26D425518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToCodedStream(google::protobuf::MessageLite *this, unsigned __int8 **a2)
{
  v4 = (*(*this + 72))(this);
  if (v4 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 380);
    (*(*this + 16))(__p, this);
    v5 = google::protobuf::internal::LogMessage::operator<<(v23, __p);
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " exceeded maximum protobuf size of 2GB: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, v4);
    google::protobuf::internal::LogFinisher::operator=(&v20, &v7->__r_.__value_.__l.__data_);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    return 0;
  }

  else
  {
    v9 = google::protobuf::io::EpsCopyOutputStream::ByteCount(a2, a2[8]);
    v10 = a2[9];
    a2[8] = (*(*this + 96))(this, a2[8], a2);
    v11 = google::protobuf::io::CodedOutputStream::HadError(a2);
    if ((v11 & 1) == 0 && v4 != v10 + google::protobuf::io::EpsCopyOutputStream::ByteCount(a2, a2[8]) - (v9 + *(a2 + 18)))
    {
      if (v4 != (*(*this + 72))(this))
      {
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 84);
        v12 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
        (*(*this + 16))(__p, this);
        v13 = google::protobuf::internal::LogMessage::operator<<(v12, __p);
        v14 = google::protobuf::internal::LogMessage::operator<<(v13, " was modified concurrently during serialization.");
        google::protobuf::internal::LogFinisher::operator=(&v20, &v14->__r_.__value_.__l.__data_);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      }

      google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 87);
      v15 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
      v16 = google::protobuf::internal::LogMessage::operator<<(v15, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of ");
      (*(*this + 16))(__p, this);
      v17 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
      v18 = google::protobuf::internal::LogMessage::operator<<(v17, ".");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v18->__r_.__value_.__l.__data_);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 92);
      v19 = google::protobuf::internal::LogMessage::operator<<(v23, "This shouldn't be called if all the sizes are equal.");
      google::protobuf::internal::LogFinisher::operator=(__p, &v19->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    }

    return v11 ^ 1u;
  }
}

void sub_26D425864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedOutputStream::HadError(char **this)
{
  v2 = google::protobuf::io::EpsCopyOutputStream::FlushAndResetBuffer(this, this[8]);
  this[8] = v2;
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 1062);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: cur_: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  return *(this + 56);
}

void sub_26D425934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  if (((*(*this + 48))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 402);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToZeroCopyStream(this, a2);
}

void sub_26D425A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 72))(this);
  if (v4 >> 31)
  {
    v5 = v4;
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 410);
    (*(*this + 16))(__p, this);
    v6 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, " exceeded maximum protobuf size of 2GB: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, v5);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v8->__r_.__value_.__l.__data_);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    v9 = 0;
  }

  else
  {
    v16[0].__r_.__value_.__r.__words[0] = &v16[0].__r_.__value_.__r.__words[2];
    v16[0].__r_.__value_.__l.__size_ = &v16[0].__r_.__value_.__r.__words[2];
    v17 = a2;
    v18 = 0;
    v19 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
    v10 = (*(*this + 96))(this);
    google::protobuf::io::EpsCopyOutputStream::Trim(v16, v10);
    v9 = v18 ^ 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void sub_26D425BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a17);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeToFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileOutputStream::FileOutputStream(v5, a2);
  if (google::protobuf::MessageLite::SerializeToZeroCopyStream(this, v5))
  {
    v3 = google::protobuf::io::CopyingOutputStreamAdaptor::Flush(v5);
  }

  else
  {
    v3 = 0;
  }

  google::protobuf::io::FileOutputStream::~FileOutputStream(v5);
  return v3;
}

void sub_26D425C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::FileOutputStream::~FileOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileOutputStream::FileOutputStream(v5, a2);
  if (google::protobuf::MessageLite::SerializePartialToZeroCopyStream(this, v5))
  {
    v3 = google::protobuf::io::CopyingOutputStreamAdaptor::Flush(v5);
  }

  else
  {
    v3 = 0;
  }

  google::protobuf::io::FileOutputStream::~FileOutputStream(v5);
  return v3;
}

void sub_26D425CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::FileOutputStream::~FileOutputStream(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToOstream(google::protobuf::MessageLite *a1, void *a2)
{
  google::protobuf::io::OstreamOutputStream::OstreamOutputStream(v5, a2, -1);
  LODWORD(a1) = google::protobuf::MessageLite::SerializeToZeroCopyStream(a1, v5);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(v5);
  return a1 && *(a2 + *(*a2 - 24) + 32) == 0;
}

void sub_26D425D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToOstream(google::protobuf::MessageLite *a1, uint64_t a2)
{
  google::protobuf::io::OstreamOutputStream::OstreamOutputStream(v5, a2, -1);
  v3 = google::protobuf::MessageLite::SerializePartialToZeroCopyStream(a1, v5);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(v5);
  return v3;
}

void sub_26D425DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendToString(const char *a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

void sub_26D425EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v17, __p);
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, v6);
    google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v17;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v17[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v18 = 0;
  v19 = 0;
  v20 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  if (v17[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    google::protobuf::internal::LogMessage::~LogMessage(&v9->__r_.__value_.__l.__data_);
  }

  result = v7 == 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL google::protobuf::MessageLite::SerializeToString(const char *a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return google::protobuf::MessageLite::AppendToString(a1, a2);
}

BOOL google::protobuf::MessageLite::SerializePartialToString(uint64_t a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

uint64_t google::protobuf::MessageLite::SerializeToArray(google::protobuf::MessageLite *this, char *a2, int a3)
{
  if (((*(*this + 48))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 480);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: IsInitialized(): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToArray(this, a2, a3);
}

void sub_26D42626C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToArray(google::protobuf::MessageLite *this, char *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (*(*this + 72))(this);
  v7 = v6;
  if (v6 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 487);
    (*(*this + 16))(__p, this);
    v8 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " exceeded maximum protobuf size of 2GB: ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, v7);
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    goto LABEL_6;
  }

  if (v6 > a3)
  {
LABEL_6:
    result = 0;
    goto LABEL_10;
  }

  *&v16[0].__r_.__value_.__l.__data_ = &a2[v6];
  v17 = 0;
  v18 = 0;
  v19 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  if (&a2[v6] != (*(*this + 96))(this, a2, v16))
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v12 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
  }

  result = 1;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}