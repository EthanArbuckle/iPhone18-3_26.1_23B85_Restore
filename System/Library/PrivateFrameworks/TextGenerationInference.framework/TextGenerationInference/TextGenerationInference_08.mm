uint64_t google::protobuf::RepeatedField<double>::Add(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<double>::Reserve(a1, v2 + 1);
  }

  result = google::protobuf::RepeatedField<double>::elements(a1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

void google::protobuf::RepeatedField<double>::RemoveLast(int *a1)
{
  v2 = *a1;
  if (*a1 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
    v2 = *a1;
  }

  *a1 = v2 - 1;
}

void sub_26D433E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::ExtractSubrange(int *a1, int a2, int a3, void *a4)
{
  v6 = a2;
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1391);
    v8 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1392);
  v9 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v16, &v9->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
LABEL_6:
  v10 = a3 + v6;
  if (a3 + v6 > *a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1393);
    v11 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (start + num) <= (this->current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (a4 && a3 >= 1)
  {
    v12 = a3;
    v13 = v6;
    do
    {
      *a4++ = *google::protobuf::RepeatedField<double>::Get(a1, v13++);
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *a1;
    while (v10 < v14)
    {
      v15 = google::protobuf::RepeatedField<double>::Get(a1, v10);
      google::protobuf::RepeatedField<double>::Set(a1, v6, v15);
      ++v10;
      v14 = *a1;
      ++v6;
    }

    if (v14 >= 1)
    {
      *a1 = v14 - a3;
    }
  }
}

void sub_26D433FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::Truncate(int *a1, int a2)
{
  v4 = *a1;
  if (*a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (new_size) <= (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  if (v4 >= 1)
  {
    *a1 = a2;
  }
}

void sub_26D434080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<double>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<double>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<double>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_26D4341A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::AddAlreadyReserved(int *a1, uint64_t *a2)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  result = google::protobuf::RepeatedField<double>::elements(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 8 * v7) = v5;
  return result;
}

void sub_26D434260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::AddAlreadyReserved(int *a1)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v3 = google::protobuf::RepeatedField<double>::elements(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 8 * v4;
}

void sub_26D434300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::Resize(int *a1, int a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (new_size) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (*a1 < a2)
  {
    google::protobuf::RepeatedField<double>::Reserve(a1, a2);
    v7 = google::protobuf::RepeatedField<double>::elements(a1) + 8 * *a1;
    v8 = (google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2 - v7) >> 3;
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = *a3;
      v12 = (v8 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v9);
      v14 = (v7 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_26D448240)));
        if (v15.i8[0])
        {
          *(v14 - 1) = v11;
        }

        if (v15.i8[4])
        {
          *v14 = v11;
        }

        v10 += 2;
        v14 += 2;
      }

      while (v12 != v10);
    }
  }

  *a1 = a2;
}

void sub_26D434430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::Swap(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<double>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<double>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      google::protobuf::RepeatedField<double>::InternalSwap(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (google::protobuf::RepeatedField<double>::elements(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      google::protobuf::RepeatedField<double>::MergeFrom(&v9, a1);
      *a1 = 0;
      google::protobuf::RepeatedField<double>::MergeFrom(a1, a2);
      if (&v9 != a2)
      {
        google::protobuf::RepeatedField<double>::InternalSwap(a2, &v9);
      }

      google::protobuf::RepeatedField<double>::~RepeatedField(&v9);
    }
  }
}

double google::protobuf::RepeatedField<double>::UnsafeArenaSwap(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = google::protobuf::RepeatedField<double>::InternalSwap(a1, a2).n128_u64[0];
  }

  return result;
}

double google::protobuf::RepeatedField<double>::SwapElements(uint64_t a1, int a2, int a3)
{
  v6 = google::protobuf::RepeatedField<double>::elements(a1);
  v7 = google::protobuf::RepeatedField<double>::elements(a1);
  result = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = result;
  return result;
}

unint64_t google::protobuf::RepeatedField<double>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 8 * v1 + 8;
  }

  if (v2 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_26D43464C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 8 * v7);
  v9 = v5 + 8 * (v6 >> 3);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 8 * (v6 >> 3)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 3;
  if (v7 < v11)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v12 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) <= (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v11;
  }

  return *(a1 + 1) + 8 * (v6 >> 3);
}

void sub_26D43473C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 3);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 8 * v6);
    v8 = v4 + 8 * (v5 >> 3);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 8 * (v5 >> 3)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 3;
    if (v6 < v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) <= (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 3);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 8 * v12;
}

void sub_26D434838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::RepeatedPtrField<std::string>::RepeatedPtrField(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = a2;
  return result;
}

void *google::protobuf::RepeatedPtrField<std::string>::RepeatedPtrField(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, a2);
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, a2);
  return a1;
}

void google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x26D6BF040](v5, 0x1012C40EC159624);
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

uint64_t google::protobuf::RepeatedPtrField<std::string>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedPtrField<std::string>::CopyFrom(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1);

    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, a2);
  }
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<std::string>::RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (*a2)
  {
    if (a2 != this)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this);
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this, a2);
    }
  }

  else
  {
    google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(this, a2);
  }

  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (*a2)
  {
    if (a2 != this)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this);
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this, a2);
    }
  }

  else
  {
    google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(this, a2);
  }

  return this;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<std::string>::operator=(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (this != a2)
  {
    if (*this == *a2)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(this, a2);
    }

    else
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this);
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this, a2);
    }
  }

  return this;
}

void *google::protobuf::RepeatedPtrField<std::string>::Add(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  if (!v4)
  {
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
LABEL_6:
    v8 = __OFSUB__(v6, v5);
    v9 = v6 - v5;
    if (v9 < 0 == v8)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v9 + 1);
      v4 = a1[2];
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 2);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(a1 + 2) = v5 + 1;
    return *&v4[2 * v5 + 2];
  }

  if (v6 == *(a1 + 3))
  {
    goto LABEL_6;
  }

LABEL_8:
  ++*v4;
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*(v10 + 24))
  {
    google::protobuf::RepeatedPtrField<std::string>::Add(*a1, a2, a3);
  }

  result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v10, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v11 = *(a1 + 2);
  v12 = a1[2] + 8 * v11;
  *(a1 + 2) = v11 + 1;
  *(v12 + 8) = result;
  return result;
}

__n128 google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(uint64_t *a1, __n128 *a2, uint64_t a3)
{
  v5 = a1[2];
  if (!v5)
  {
    v6 = *(a1 + 2);
    v7 = *(a1 + 3);
LABEL_8:
    if (v6 <= v7)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v7 - v6 + 1);
      v5 = a1[2];
    }

    goto LABEL_10;
  }

  v6 = *(a1 + 2);
  v7 = *v5;
  if (v6 < *v5)
  {
    *(a1 + 2) = v6 + 1;
    v8 = *&v5[2 * v6 + 2];
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = *a2;
    *(v8 + 16) = a2[1].n128_u64[0];
    *v8 = result;
    a2[1].n128_u8[7] = 0;
    a2->n128_u8[0] = 0;
    return result;
  }

  if (v7 == *(a1 + 3))
  {
    goto LABEL_8;
  }

LABEL_10:
  ++*v5;
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*(v10 + 24))
  {
    google::protobuf::RepeatedPtrField<std::string>::Add(*a1, a2, a3);
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v10, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  result = *a2;
  AlignedAndAddCleanup[1].n128_u64[0] = a2[1].n128_u64[0];
  *AlignedAndAddCleanup = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  v12 = *(a1 + 2);
  v13 = a1[2] + 8 * v12;
  *(a1 + 2) = v12 + 1;
  *(v13 + 8) = AlignedAndAddCleanup;
  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::at<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1713);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1714);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1720);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1721);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_26D434EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26D434FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<std::string>::RemoveLast(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1773);
    v3 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    v2 = *(a1 + 8);
  }

  v4 = v2 - 1;
  v5 = *(a1 + 16) + 8 * v4;
  *(a1 + 8) = v4;
  v6 = *(v5 + 8);
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
  }
}

void sub_26D435070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<std::string>::DeleteSubrange(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2, int a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2209);
    v6 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2210);
  v7 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v11, &v7->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
LABEL_6:
  if (a3 + a2 > *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2211);
    v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (start + num) <= (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  if (a3 >= 1)
  {
    v9 = a2;
    v10 = a3;
    do
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Delete<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this, v9++);
      --v10;
    }

    while (v10);
  }

  google::protobuf::RepeatedPtrField<std::string>::ExtractSubrangeInternal(this, a2, a3, 0);
}

void sub_26D4351D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Delete<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1734);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1735);
    v5 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v6 = *(*(a1 + 16) + 8 * a2 + 8);
  if (v6)
  {
    v7 = *a1 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x26D6BF040](v6, 0x1012C40EC159624);
  }
}

void sub_26D4352F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::RepeatedPtrField<std::string>::Reserve(unsigned int *result, int a2)
{
  v2 = result[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(result, v4);
  }

  return result;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::mutable_data(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

double google::protobuf::RepeatedPtrField<std::string>::Swap(void *a1, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a1 != a2)
  {
    if (*a2 == *a1)
    {
      *&result = google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(a1, a2).n128_u64[0];
    }

    else
    {
      google::protobuf::internal::RepeatedPtrFieldBase::SwapFallback<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, a2);
    }
  }

  return result;
}

double google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaSwap(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (this != a2)
  {
    *&result = google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(this, a2).n128_u64[0];
  }

  return result;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::SwapElements(uint64_t result, int a2, int a3)
{
  v3 = *(result + 16) + 8;
  v4 = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = v4;
  return result;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::end(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::rbegin(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::rend(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = 8 * *(a1 + 12);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 >= 1)
    {
      v4 = 0;
      do
      {
        v1 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(*&v2[2 * v4++ + 2]) + 24;
        v2 = *(a1 + 16);
      }

      while (v4 < *v2);
    }

    v1 += 8;
  }

  return v1;
}

unint64_t google::protobuf::RepeatedPtrField<std::string>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = 8 * *(a1 + 12);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 >= 1)
    {
      v4 = 0;
      do
      {
        v1 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(*&v2[2 * v4++ + 2]) + 24;
        v2 = *(a1 + 16);
      }

      while (v4 < *v2);
    }

    v1 += 8;
  }

  if (v1 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_26D435530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::ReleaseLast(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2040);
    v3 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    v2 = *(a1 + 8);
  }

  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *v4 - 1;
  *v4 = v6;
  v7 = v4 + 2;
  v8 = v2 - 1;
  *(a1 + 8) = v8;
  v9 = *&v7[2 * v8];
  if (v2 < v5)
  {
    *&v7[2 * v8] = *&v7[2 * v6];
  }

  if (*a1)
  {
    operator new();
  }

  return v9;
}

void sub_26D43562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (!v4)
  {
    v7 = result[2];
    v5 = result[3];
    goto LABEL_13;
  }

  v5 = result[2];
  v6 = result[3];
  v7 = v5;
  if (v5 == v6)
  {
LABEL_13:
    result = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(result, v5 - v7 + 1);
    goto LABEL_14;
  }

  v8 = *v4;
  if (v8 != v6)
  {
    if (v5 >= v8)
    {
      v11 = v8 + 1;
      goto LABEL_15;
    }

    *&v4[2 * v8 + 2] = *&v4[2 * v5 + 2];
LABEL_14:
    v4 = *(v3 + 2);
    v11 = *v4 + 1;
LABEL_15:
    *v4 = v11;
    goto LABEL_16;
  }

  v9 = *&v4[2 * v5 + 2];
  if (v9)
  {
    v10 = *result == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    result = MEMORY[0x26D6BF040](v9, 0x1012C40EC159624);
    v4 = *(v3 + 2);
  }

LABEL_16:
  v12 = v3[2];
  v3[2] = v12 + 1;
  *&v4[2 * v12 + 2] = a2;
  return result;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaReleaseLast(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2040);
    v3 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v2 = *(a1 + 8);
  }

  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *v4 - 1;
  *v4 = v6;
  v7 = v4 + 2;
  v8 = v2 - 1;
  *(a1 + 8) = v8;
  result = *&v7[2 * v8];
  if (v2 < v5)
  {
    *&v7[2 * v8] = *&v7[2 * v6];
  }

  return result;
}

void sub_26D4357E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<std::string>::ExtractSubrangeInternal(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2, int a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2231);
    v8 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2232);
  v9 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
LABEL_6:
  if (a3 + a2 > *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2233);
    v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (start + num) <= (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (a3 >= 1)
  {
    if (a4)
    {
      v11 = a3;
      if (*this)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this, a2);
        operator new();
      }

      v12 = a2;
      do
      {
        *a4++ = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this, v12++);
        --v11;
      }

      while (v11);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, a2, a3);
  }
}

{
  if (*this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2268);
    v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: GetArena() == NULL: ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "ExtractSubrange() when arena is non-NULL is only supported when ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "the Element type supplies a MergeFrom() operation to make copies.");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaExtractSubrange(this, a2, a3, a4);
}

void sub_26D4359C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaExtractSubrange(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2, int a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2277);
    v8 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2278);
  v9 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
LABEL_6:
  if (a3 + a2 > *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2279);
    v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (start + num) <= (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (a3 >= 1)
  {
    if (a4)
    {
      v11 = a3;
      v12 = a2;
      do
      {
        *a4++ = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this, v12++);
        --v11;
      }

      while (v11);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, a2, a3);
  }
}

void sub_26D435B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(uint64_t this, int a2, int a3)
{
  v3 = *(this + 16);
  if (v3)
  {
    v4 = a3 + a2;
    LODWORD(v5) = *v3;
    if (a3 + a2 < *v3)
    {
      v6 = v4;
      v7 = 8 * v4 - 8 * a3 + 8;
      do
      {
        *(v3 + v7) = *&v3[2 * v6++ + 2];
        v3 = *(this + 16);
        v5 = *v3;
        v7 += 8;
      }

      while (v6 < v5);
    }

    *(this + 8) -= a3;
    *v3 = v5 - a3;
  }

  return this;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::ClearedCount(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (*v1 - *(a1 + 8));
  }

  else
  {
    return 0;
  }
}

void google::protobuf::internal::RepeatedPtrFieldBase::AddCleared<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2059);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: GetArena() == NULL: ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "AddCleared() can only be used on a RepeatedPtrField not on an arena.");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *v6;
    if (*v6 != *(a1 + 12))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *(a1 + 12);
  }

  v8 = *(a1 + 8);
  if (v8 <= v7)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v7 - v8 + 1);
    v6 = *(a1 + 16);
  }

LABEL_9:
  v9 = *v6;
  *v6 = v9 + 1;
  *&v6[2 * v9 + 2] = a2;
}

void sub_26D435CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::ReleaseCleared<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1)
{
  if (*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2071);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == NULL: ");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "ReleaseCleared() can only be used on a RepeatedPtrField not on ");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "an arena.");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    if (*a1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2074);
      v5 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == NULL: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2075);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: rep_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v6 = *(a1 + 16);
  }

  v8 = *v6;
  if (*v6 <= *(a1 + 8))
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2076);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (rep_->allocated_size) > (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v6 = *(a1 + 16);
    v8 = *v6;
  }

  v10 = v8 - 1;
  *v6 = v10;
  return *&v6[2 * v10 + 2];
}

void sub_26D435E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::erase(google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v3 + 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = a2 - v4;
  google::protobuf::RepeatedPtrField<std::string>::DeleteSubrange(a1, (a2 - v4) >> 3, ((a2 - v4 + 8) >> 3) - ((a2 - v4) >> 3));
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v6 + 8;
  }

  else
  {
    v7 = 0;
  }

  return v7 + (v5 << 29 >> 29);
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::erase(google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = v4 + 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = a2 - v5;
  google::protobuf::RepeatedPtrField<std::string>::DeleteSubrange(a1, (a2 - v5) >> 3, ((a3 - v5) >> 3) - ((a2 - v5) >> 3));
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  return v8 + (v6 << 29 >> 29);
}

void sub_26D435FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(*this);
      }

      AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      AlignedNoHook = operator new(v10 + 8);
    }

    *(this + 2) = AlignedNoHook;
    *(this + 3) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(AlignedNoHook + 2, v5 + 2, 8 * v13);
      AlignedNoHook = *(this + 2);
      *AlignedNoHook = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *AlignedNoHook = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        AlignedNoHook = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = AlignedNoHook;
  }

  return &v5[2 * v2 + 2];
}

void *google::protobuf::internal::RepeatedPtrFieldBase::AddWeak(google::protobuf::internal::RepeatedPtrFieldBase *this, const google::protobuf::MessageLite *a2)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = *(this + 2);
    v6 = *(this + 3);
LABEL_6:
    if (v5 <= v6)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v6 - v5 + 1);
      v4 = *(this + 2);
    }

    goto LABEL_8;
  }

  v5 = *(this + 2);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(this + 2) = v5 + 1;
    return *&v4[2 * v5 + 2];
  }

  if (v6 == *(this + 3))
  {
    goto LABEL_6;
  }

LABEL_8:
  ++*v4;
  v8 = *this;
  if (a2)
  {
    result = (*(*a2 + 32))(a2, *this);
  }

  else
  {
    if (!v8)
    {
      operator new();
    }

    if (*(v8 + 24))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::AddWeak(*this);
    }

    result = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v8, 0x28, google::protobuf::internal::arena_destruct_object<google::protobuf::internal::ImplicitWeakMessage>);
    *result = &unk_287EBCBD8;
    result[1] = v8;
    result[4] = 0;
    result[2] = 0;
    result[3] = 0;
  }

  v9 = *(this + 2);
  v10 = *(this + 2) + 8 * v9;
  *(this + 2) = v9 + 1;
  *(v10 + 8) = result;
  return result;
}

void google::protobuf::internal::RepeatedPtrFieldBase::SwapFallback<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(void *a1, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  v4 = *a2;
  if (*a2 == *a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1685);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: other->GetArena() != GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
    v4 = *a2;
  }

  v7[0].__r_.__value_.__r.__words[2] = 0;
  *&v7[0].__r_.__value_.__l.__data_ = v4;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v7, a1);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, a2);
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(a2, v7);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v7);
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v7);
}

void sub_26D436348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedInternal<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(unsigned int *result, uint64_t a2)
{
  if (*result)
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(result, a2, 0, *result);
  }

  v2 = *(result + 2);
  if (!v2)
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(result, a2, 0, *result);
  }

  v3 = *v2;
  if (v3 >= result[3])
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(result, a2, 0, *result);
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

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(unsigned int *a1, uint64_t a2, google::protobuf::internal::ArenaImpl *a3, atomic_ullong *this)
{
  if (!a3 && this)
  {
    google::protobuf::Arena::Own<std::string>(this, a2);
LABEL_9:
    AlignedAndAddCleanup = a2;
    goto LABEL_15;
  }

  if (this == a3)
  {
    goto LABEL_9;
  }

  if (!this)
  {
    operator new();
  }

  if (this[3])
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18, google::protobuf::internal::arena_destruct_object<std::string>);
  AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
  AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
  AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
  std::string::operator=(AlignedAndAddCleanup, a2);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    MEMORY[0x26D6BF040](a2, 0x1012C40EC159624);
  }

LABEL_15:

  return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, AlignedAndAddCleanup);
}

atomic_ullong *google::protobuf::Arena::Own<std::string>(atomic_ullong *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, google::protobuf::internal::arena_delete_object<std::string>);
  }

  return result;
}

uint64_t google::protobuf::internal::arena_delete_object<std::string>(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x26D6BF040);
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_0_5(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

uint64_t google::protobuf::util::Status::Status(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t google::protobuf::util::Status::Status(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    google::protobuf::StringPiece::ToString(v9, &v7);
    if (*(a1 + 31) < 0)
    {
      operator delete(*v5);
    }

    *v5 = v7;
    *(v5 + 16) = v8;
  }

  return a1;
}

void sub_26D4366F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::util::Status *google::protobuf::util::Status::Status(google::protobuf::util::Status *this, const google::protobuf::util::Status *a2)
{
  *this = *a2;
  v3 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    v3->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return this;
}

uint64_t google::protobuf::util::Status::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  return a1;
}

BOOL google::protobuf::util::Status::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void google::protobuf::util::Status::ToString(google::protobuf::util::Status *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v5 = *(this + 31);
    if (v5 < 0)
    {
      v5 = *(this + 2);
    }

    if (v5)
    {
      if (v3 > 0x10)
      {
        v6 = "UNKNOWN";
      }

      else
      {
        v6 = off_279D9CA10[v3 - 1];
      }

      std::string::basic_string[abi:ne200100]<0>(&v15, v6);
      v8 = std::string::append(&v15, ":");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = *(this + 31);
      if (v10 >= 0)
      {
        v11 = this + 8;
      }

      else
      {
        v11 = *(this + 1);
      }

      if (v10 >= 0)
      {
        v12 = *(this + 31);
      }

      else
      {
        v12 = *(this + 2);
      }

      v13 = std::string::append(&v16, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v13->__r_.__value_.__l + 2);
      *a2 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      return;
    }

    if (v3 > 0x10)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = off_279D9CA10[v3 - 1];
    }
  }

  else
  {
    v7 = "OK";
  }

  std::string::basic_string[abi:ne200100]<0>(a2, v7);
}

void sub_26D436960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *google::protobuf::util::operator<<(void *a1, google::protobuf::util::Status *this)
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_26D436A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::StringAppendV(std::string *a1, char *__format, va_list a3)
{
  v7 = *MEMORY[0x277D85DE8];
  result = vsnprintf(__str, 0x400uLL, __format, a3);
  if (result > 1023)
  {
    operator new[]();
  }

  if ((result & 0x80000000) == 0)
  {
    result = std::string::append(a1, __str, result);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *google::protobuf::StringPrintf@<X0>(google::protobuf *this@<X0>, std::string *a2@<X8>, ...)
{
  va_start(va, a2);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return google::protobuf::StringAppendV(a2, this, va);
}

void sub_26D436B6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::SStringPrintf(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  google::protobuf::StringAppendV(a1, a2, &a9);
  return a1;
}

std::string *google::protobuf::StringPrintfVector@<X0>(google::protobuf *this@<X0>, uint64_t **a2@<X1>, std::string *a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a2);
  if (v7 >= 0x21)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringprintf.cc", 149);
    v9 = google::protobuf::internal::LogMessage::operator<<(&v20, "CHECK failed: (v.size()) <= (kStringPrintfVectorMaxArgs): ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "StringPrintfVector currently only supports up to ");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, 32);
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, " arguments. ");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, "Feel free to add support for more if you need it.");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20);
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a2);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (v6 != v5)
  {
    if (v7 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v7;
    }

    v15 = &v20;
    do
    {
      v16 = v5;
      if (*(v5 + 23) < 0)
      {
        v16 = *v5;
      }

      *v15 = v16;
      v15 = (v15 + 8);
      v5 += 3;
      --v14;
    }

    while (v14);
  }

  if ((v7 & 0xFFFFFFE0) == 0)
  {
    memset_pattern16(&v20 + ((8 * v7) & 0xF8), &off_279D9CA90, ((-8 - 8 * v7) & 0xF8) + 8);
  }

  result = google::protobuf::StringPrintf(this, a3, v20, v21, v22, v23, v24, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1));
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void google::protobuf::StringPiece::LogFatalSizeTooBig(google::protobuf::StringPiece *this, const std::string::value_type *a2, const char *a3)
{
  google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 49);
  v5 = google::protobuf::internal::LogMessage::operator<<(v10, "size too big: ");
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, this);
  v7 = google::protobuf::internal::LogMessage::operator<<(v6, " details: ");
  v8 = google::protobuf::internal::LogMessage::operator<<(v7, a2);
  google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
}

void sub_26D436EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::StringPiece::StringPiece(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2 + a4;
  a1[1] = a3 - a4;
  if (a4 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 54);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (0) <= (pos): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (a3 < a4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 55);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (pos) <= (x.length_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_26D436FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::StringPiece::StringPiece(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3 - a4;
  if (a3 - a4 >= a5)
  {
    v9 = a5;
  }

  *a1 = a2 + a4;
  a1[1] = v9;
  if (a4 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 62);
    v10 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (0) <= (pos): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (a3 < a4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 63);
    v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (pos) <= (x.length_): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (a5 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 64);
    v12 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (len) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_26D4370E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::StringPiece::CopyToString(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  JUMPOUT(0x26D6BECE0);
}

uint64_t google::protobuf::StringPiece::Consume(const void **a1, const void *a2, int64_t a3)
{
  v3 = a1[1];
  v4 = &v3[-a3];
  if (v3 < a3)
  {
    return 0;
  }

  v7 = *a1;
  if (memcmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v7[a3];
  a1[1] = v4;
  return 1;
}

uint64_t google::protobuf::StringPiece::ConsumeFromEnd(void *a1, const void *a2, int64_t a3)
{
  v3 = a1[1];
  v4 = v3 - a3;
  if (v3 < a3 || memcmp((*a1 + v4), a2, a3))
  {
    return 0;
  }

  a1[1] = v4;
  return 1;
}

size_t google::protobuf::StringPiece::copy(google::protobuf::StringPiece *this, char *__dst, size_t a3, uint64_t a4)
{
  if (*(this + 1) - a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(this + 1) - a4;
  }

  memcpy(__dst, (*this + a4), v4);
  return v4;
}

uint64_t google::protobuf::StringPiece::find(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  if (v4 >= 1 && v4 >= a4)
  {
    v8 = std::__search_impl[abi:ne200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>((*a1 + a4), *a1 + v4, a2, &a2[a3]);
    if ((*a1 + a1[1]) == v8)
    {
      return -1;
    }

    else
    {
      return &v8[-*a1];
    }
  }

  else if (v4 | a4 | a3)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::StringPiece::find(google::protobuf::StringPiece *this, int a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 < 1 || v3 <= a3)
  {
    return -1;
  }

  v6 = *this;
  v7 = memchr((*this + a3), a2, v3 - a3);
  if (v7)
  {
    return v7 - v6;
  }

  else
  {
    return -1;
  }
}

uint64_t google::protobuf::StringPiece::rfind(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  v5 = &v4[-a3];
  if (v4 < a3)
  {
    return -1;
  }

  if (a3)
  {
    v7 = *a1;
    if (v5 >= a4)
    {
      v5 = a4;
    }

    v8 = &v7[a3 + v5];
    if (v7 == v8)
    {
      return -1;
    }

    v11 = *a2;
    v9 = a2 + 1;
    v10 = v11;
    v12 = *a1;
    v13 = v8;
    do
    {
      v14 = v12 + 1;
      while (*v12 != v10)
      {
        ++v12;
        ++v14;
        if (v12 == v8)
        {
          goto LABEL_19;
        }
      }

      v15 = a3 - 1;
      v16 = v9;
      while (v15)
      {
        if (v14 == v8)
        {
          goto LABEL_19;
        }

        v18 = *v14++;
        v17 = v18;
        v19 = *v16++;
        --v15;
        if (v17 != v19)
        {
          goto LABEL_18;
        }
      }

      v13 = v12;
LABEL_18:
      ++v12;
    }

    while (v12 != v8);
LABEL_19:
    v20 = (v13 - v7);
    if (v13 == v8)
    {
      return -1;
    }

    else
    {
      return v20;
    }
  }

  else if (v4 >= a4)
  {
    return a4;
  }

  else
  {
    return a1[1];
  }
}

uint64_t google::protobuf::StringPiece::rfind(google::protobuf::StringPiece *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 < 1)
  {
    return -1;
  }

  if (v3 - 1 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v3 - 1;
  }

  v6 = *this;
  while (*(v6 + result) != a2)
  {
    if (result-- <= 0)
    {
      return -1;
    }
  }

  return result;
}

uint64_t google::protobuf::StringPiece::find_first_of(google::protobuf::StringPiece *a1, unsigned __int8 *a2, uint64_t a3, int64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 < 1 || a3 < 1)
  {
    goto LABEL_6;
  }

  if (a3 != 1)
  {
    memset(v11, 0, sizeof(v11));
    do
    {
      v10 = *a2++;
      *(v11 + v10) = 1;
      --a3;
    }

    while (a3);
    if (v4 > a4)
    {
      while ((*(v11 + *(*a1 + a4)) & 1) == 0)
      {
        if (v4 == ++a4)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_7;
    }

LABEL_6:
    a4 = -1;
LABEL_7:
    v6 = *MEMORY[0x277D85DE8];
    return a4;
  }

  v8 = *a2;
  v9 = *MEMORY[0x277D85DE8];

  return google::protobuf::StringPiece::find(a1, v8, a4);
}

uint64_t google::protobuf::StringPiece::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  if (v4 < 1)
  {
    goto LABEL_14;
  }

  if (a3 < 1)
  {
    a4 = 0;
    goto LABEL_15;
  }

  if (a3 != 1)
  {
    memset(v8, 0, sizeof(v8));
    do
    {
      v5 = *a2++;
      *(v8 + v5) = 1;
      --a3;
    }

    while (a3);
    if (v4 > a4)
    {
      while (*(v8 + *(*a1 + a4)) == 1)
      {
        if (v4 == ++a4)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_15;
    }

LABEL_14:
    a4 = -1;
    goto LABEL_15;
  }

  if (v4 <= a4)
  {
    goto LABEL_14;
  }

  while (*(*a1 + a4) == *a2)
  {
    if (v4 == ++a4)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v6 = *MEMORY[0x277D85DE8];
  return a4;
}

unint64_t google::protobuf::StringPiece::find_first_not_of(google::protobuf::StringPiece *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 < 1 || v3 <= a3)
  {
    return -1;
  }

  while (*(*this + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

uint64_t google::protobuf::StringPiece::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v6 = v4 < 1;
  v5 = v4 - 1;
  v6 = v6 || a3 < 1;
  if (v6)
  {
LABEL_6:
    v5 = -1;
  }

  else if (a3 == 1)
  {
    if (v5 >= a4)
    {
      v5 = a4;
    }

    while (*(*a1 + v5) != *a2)
    {
      v6 = v5-- < 1;
      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    do
    {
      v9 = *a2++;
      *(v10 + v9) = 1;
      --a3;
    }

    while (a3);
    if (v5 >= a4)
    {
      v5 = a4;
    }

    while ((*(v10 + *(*a1 + v5)) & 1) == 0)
    {
      v6 = v5-- <= 0;
      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t google::protobuf::StringPiece::find_last_not_of(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = v4 < 1;
  v6 = v4 - 1;
  if (v5)
  {
    goto LABEL_19;
  }

  if (v6 >= a4)
  {
    result = a4;
  }

  else
  {
    result = v6;
  }

  if (a3 < 1)
  {
    goto LABEL_20;
  }

  if (a3 != 1)
  {
    memset(v13, 0, sizeof(v13));
    do
    {
      v10 = *a2++;
      *(v13 + v10) = 1;
      --a3;
    }

    while (a3);
    if ((result & 0x8000000000000000) == 0)
    {
      v11 = *a1;
      while (*(v13 + *(v11 + result)) == 1)
      {
        v5 = result-- <= 0;
        if (v5)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_20;
    }

LABEL_19:
    result = -1;
    goto LABEL_20;
  }

  v9 = *a1;
  while (*(v9 + result) == *a2)
  {
    v5 = result-- < 1;
    if (v5)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t google::protobuf::StringPiece::find_last_not_of(google::protobuf::StringPiece *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 < 1)
  {
    return -1;
  }

  if (v3 - 1 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v3 - 1;
  }

  v6 = *this;
  while (*(v6 + result) == a2)
  {
    if (result-- <= 0)
    {
      return -1;
    }
  }

  return result;
}

unint64_t google::protobuf::StringPiece::substr(google::protobuf::StringPiece *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(this + 1);
  }

  v5 = v3 - v4;
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    google::protobuf::MessageLite::ParseFromArray();
  }

  return *this + v4;
}

unsigned __int8 *std::__search_impl[abi:ne200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 == a3)
  {
    return a1;
  }

  v5 = a2;
  if (a2 - a1 >= v4)
  {
    v6 = a2 - v4 + 1;
    if (v6 != a1)
    {
      v9 = *a3;
      v7 = a3 + 1;
      v8 = v9;
      while (*a1 != v8)
      {
LABEL_9:
        if (++a1 == v6)
        {
          return v5;
        }
      }

      v10 = a1 + 1;
      v11 = v7;
      while (v11 != a4)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = *v11++;
        if (v12 != v14)
        {
          goto LABEL_9;
        }
      }

      return a1;
    }
  }

  return v5;
}

uint64_t google::protobuf::internal::UTF8GenericScan(unsigned int *a1, _BYTE *a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v4 = &a2[a3];
  if (a3 >= 7)
  {
    v5 = v4 - 7;
  }

  else
  {
    v5 = a2;
  }

  v6 = *(a1 + 4) + *a1;
  v7 = *(a1 + 7);
  v8 = a2;
  while (2)
  {
    v9 = v8 & 7;
    if ((v8 & 7) != 0 && v8 < v4)
    {
      v10 = v8 + 1;
      while (!*(v7 + *v8))
      {
        ++v8;
        v9 = v10 & 7;
        if ((v10 & 7) != 0)
        {
          ++v10;
          if (v8 < v4)
          {
            continue;
          }
        }

        goto LABEL_12;
      }

LABEL_20:
      v11 = v8;
      goto LABEL_21;
    }

LABEL_12:
    if (v9 || v8 >= v5)
    {
      goto LABEL_20;
    }

    v11 = v8 + 4;
    while (1)
    {
      v12 = *(v11 - 1);
      if ((((v12 - a1[6]) | (v12 + a1[7]) | (*v11 - a1[6]) | (*v11 + a1[7])) & 0x80808080) != 0)
      {
        break;
      }

LABEL_18:
      v13 = v11 + 2;
      v14 = v11 + 1;
      v11 += 2;
      if (v14 >= v5)
      {
        v11 = v13 - 1;
        goto LABEL_21;
      }
    }

    if (!(*(v7 + BYTE1(v12)) | *(v7 + v12) | *(v7 + BYTE2(v12)) | *(v7 + (v12 >> 24))))
    {
      if (*(v7 + BYTE1(*v11)) | *(v7 + *v11) | *(v7 + BYTE2(*v11)) | *(v7 + (*v11 >> 24)))
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    --v11;
LABEL_21:
    if (v11 < v4)
    {
      v15 = v4 - v11;
      v16 = v11 - 1;
      v17 = *(a1 + 4) + *a1;
      v8 = v11;
      while (1)
      {
        v18 = *(v17 + *v8);
        if (v18 > 0xEF)
        {
          break;
        }

        ++v8;
        v17 = v6 + (v18 << a1[4]);
        ++v16;
        if (!--v15)
        {
          LODWORD(v8) = v4;
          goto LABEL_32;
        }
      }

      if (a1[1] <= v17 - v6)
      {
        do
        {
          v8 = v16;
          if (v16 <= a2)
          {
            break;
          }

          --v16;
        }

        while ((*v8 & 0xC0) == 0x80);
      }

      if (v18 != 253)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  LODWORD(v8) = v11;
  LODWORD(v17) = a1[8] + *a1;
LABEL_32:
  if (a1[1] <= v17 - v6)
  {
    if (v11 <= v4)
    {
      v19 = v4;
    }

    else
    {
      v19 = v11;
    }

    v20 = v19 - 1;
    do
    {
      v8 = v20;
      if (v20 <= a2)
      {
        break;
      }

      --v20;
    }

    while ((*v8 & 0xC0) == 0x80);
    v18 = 240;
  }

  else
  {
    v18 = 241;
  }

LABEL_42:
  *a4 = v8 - a2;
  return v18;
}

uint64_t google::protobuf::internal::UTF8GenericScanFastAscii(unsigned int *a1, char *a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v8 = &a2[a3];
  if (a3 >= 7)
  {
    v9 = (v8 - 7);
  }

  else
  {
    v9 = a2;
  }

  v15 = 0;
  v10 = a2;
  do
  {
    v11 = v10 & 7;
    if ((v10 & 7) != 0 && v10 < v8)
    {
      v12 = v10 + 1;
      while ((*v10 & 0x80000000) == 0)
      {
        ++v10;
        v11 = v12 & 7;
        if ((v12 & 7) != 0)
        {
          ++v12;
          if (v10 < v8)
          {
            continue;
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
LABEL_12:
      if (!v11)
      {
        while (v10 < v9 && ((*(v10 + 1) | *v10) & 0x80808080) == 0)
        {
          v10 += 8;
        }
      }
    }

    if (v10 < v8)
    {
      v13 = v8 - v10;
      while ((*v10 & 0x80000000) == 0)
      {
        ++v10;
        if (!--v13)
        {
          v10 = v8;
          break;
        }
      }
    }

    result = google::protobuf::internal::UTF8GenericScan(a1, &a2[v10 - a2], a3 - (v10 - a2), &v15);
    v10 += v15;
  }

  while (result == 253);
  *a4 = v10 - a2;
  return result;
}

BOOL google::protobuf::internal::IsStructurallyValidUTF8(google::protobuf::internal *this, const char *a2)
{
  v2 = a2;
  v4 = 0;
  google::protobuf::internal::UTF8GenericScanFastAscii(google::protobuf::internal::utf8acceptnonsurrogates_obj, this, a2, &v4);
  return v4 == v2;
}

uint64_t google::protobuf::internal::UTF8SpnStructurallyValid(char *a1, int a2)
{
  v3 = 0;
  google::protobuf::internal::UTF8GenericScanFastAscii(google::protobuf::internal::utf8acceptnonsurrogates_obj, a1, a2, &v3);
  return v3;
}

char *google::protobuf::internal::UTF8CoerceToStructurallyValid(char *a1, int a2, char *a3, char a4)
{
  v7 = a1;
  __len = 0;
  google::protobuf::internal::UTF8GenericScanFastAscii(google::protobuf::internal::utf8acceptnonsurrogates_obj, a1, a2, &__len);
  v8 = __len;
  if (__len != a2)
  {
    memmove(a3, v7, __len);
    if (a2 > v8)
    {
      v9 = &v7[a2];
      v10 = &v7[v8];
      v11 = &a3[v8];
      do
      {
        *v11 = a4;
        v12 = v10 + 1;
        if (v9 - (v10 + 1) < 0)
        {
          google::protobuf::MessageLite::ParseFromArray();
        }

        v13 = v11 + 1;
        __len_4 = 0;
        google::protobuf::internal::UTF8GenericScanFastAscii(google::protobuf::internal::utf8acceptnonsurrogates_obj, v10 + 1, v9 - (v10 + 1), &__len_4);
        v14 = __len_4;
        memmove(v13, v12, __len_4);
        v10 = &v12[v14];
        v11 = &v13[v14];
      }

      while (&v12[v14] < v9);
    }

    return a3;
  }

  return v7;
}

char *google::protobuf::ReplaceCharacters(char *__s1, char *__s2, char a3)
{
  v6 = __s1;
  if (__s1[23] < 0)
  {
    v6 = *__s1;
  }

  for (i = v6; ; i = result + 1)
  {
    result = strpbrk(i, __s2);
    if (!result)
    {
      break;
    }

    v9 = __s1;
    if (__s1[23] < 0)
    {
      v9 = *__s1;
    }

    v9[result - v6] = a3;
  }

  return result;
}

std::string *google::protobuf::StripWhitespace(std::string *this)
{
  v1 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size < 1)
  {
    if (size)
    {
      return this;
    }

    goto LABEL_24;
  }

  v3 = 0;
  while (1)
  {
    this = std::string::at(v1, v3);
    v4 = this->__r_.__value_.__s.__data_[0];
    if ((v4 - 9) >= 5 && v4 != 32)
    {
      break;
    }

    if ((size & 0x7FFFFFFF) == ++v3)
    {
      goto LABEL_24;
    }
  }

  if (size == v3)
  {
LABEL_24:
    if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
    {
      *v1->__r_.__value_.__l.__data_ = 0;
      v1->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v1->__r_.__value_.__s.__data_[0] = 0;
      *(&v1->__r_.__value_.__s + 23) = 0;
    }

    return this;
  }

  if (v3)
  {
    this = std::string::erase(v1, 0, v3);
    LODWORD(size) = size - v3;
  }

  v5 = (size - 1);
  if (size >= 1)
  {
    for (i = 0; ; ++i)
    {
      this = std::string::at(v1, v5);
      v7 = this->__r_.__value_.__s.__data_[0];
      if ((v7 - 9) >= 5 && v7 != 32)
      {
        break;
      }

      if (v5-- <= 0)
      {
        return this;
      }
    }

    if (i)
    {

      return std::string::erase(v1, (v5 + 1), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return this;
}

std::string *google::protobuf::StringReplace(std::string *__str, uint64_t a2, uint64_t a3, char a4, std::string *this)
{
  v5 = this;
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v13 = v12;
      size = __str->__r_.__value_.__l.__size_;
      v15 = (v12 & 0x80u) == 0 ? __str : __str->__r_.__value_.__r.__words[0];
      v16 = (v12 & 0x80u) == 0 ? HIBYTE(__str->__r_.__value_.__r.__words[2]) : __str->__r_.__value_.__l.__size_;
      v17 = (v7 & 0x80u) == 0 ? a2 : *a2;
      v18 = (v7 & 0x80u) == 0 ? v7 : v8;
      v19 = v16 - v11;
      if (v16 < v11)
      {
        break;
      }

      v20 = v11;
      if (v18)
      {
        if (v19 < v18)
        {
          break;
        }

        v37 = __str->__r_.__value_.__l.__size_;
        v21 = v15 + v16;
        v22 = v15 + v11;
        v23 = *v17;
        while (1)
        {
          v24 = v19 - v18;
          if (v24 == -1 || (v25 = memchr(v22, v23, v24 + 1)) == 0)
          {
LABEL_41:
            v5 = this;
            size = v37;
            v13 = v12;
            goto LABEL_42;
          }

          v26 = v25;
          if (!memcmp(v25, v17, v18))
          {
            break;
          }

          v22 = v26 + 1;
          v19 = v21 - (v26 + 1);
          if (v19 < v18)
          {
            goto LABEL_41;
          }
        }

        v5 = this;
        size = v37;
        v13 = v12;
        if (v26 == v21)
        {
          break;
        }

        v20 = v26 - v15;
      }

      if (v20 == -1)
      {
        break;
      }

      std::string::append(v5, __str, v11, v20 - v11);
      v27 = *(a3 + 23);
      if (v27 >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = *a3;
      }

      if (v27 >= 0)
      {
        v29 = *(a3 + 23);
      }

      else
      {
        v29 = *(a3 + 8);
      }

      std::string::append(v5, v28, v29);
      v7 = *(a2 + 23);
      v8 = *(a2 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v30 = *(a2 + 23);
      }

      else
      {
        v30 = *(a2 + 8);
      }

      v11 = v30 + v20;
      if ((a4 & 1) == 0)
      {
        v12 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        size = __str->__r_.__value_.__l.__size_;
        v13 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        break;
      }
    }

LABEL_42:
    if (v13 >= 0)
    {
      v31 = v12;
    }

    else
    {
      v31 = size;
    }

    return std::string::append(v5, __str, v11, v31 - v11);
  }

  else
  {
    v33 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v33 >= 0)
    {
      v34 = __str;
    }

    else
    {
      v34 = __str->__r_.__value_.__r.__words[0];
    }

    if (v33 >= 0)
    {
      v35 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = __str->__r_.__value_.__l.__size_;
    }

    return std::string::append(this, v34, v35);
  }
}

std::string *google::protobuf::StringReplace@<X0>(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  return google::protobuf::StringReplace(a1, a2, a3, a4, a5);
}

void sub_26D43826C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::SplitStringUsing(unsigned __int8 *__src, uint64_t a2, char *__s, std::allocator<std::string> *a4)
{
  v34[0] = __src;
  v34[1] = a2;
  v7 = *__s;
  if (*__s && !__s[1])
  {
    if (a2)
    {
      v23 = __src;
      v24 = &__src[a2];
      v25 = &__src[a2];
      do
      {
        if (*v23 == v7)
        {
          v26 = v23 + 1;
        }

        else
        {
          v27 = (v23 + 1);
          while (v27 != v24)
          {
            v28 = *v27++;
            if (v28 == v7)
            {
              v26 = (v27 - 1);
              goto LABEL_27;
            }
          }

          v26 = v25;
LABEL_27:
          std::string::basic_string[abi:ne200100](__p, v23, v26 - v23);
          v30 = a4;
          std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v30, __p);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v23 = v26;
      }

      while (v26 != v24);
    }
  }

  else
  {
    v8 = strlen(__s);
    v10 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v8, "size_t to int conversion", v9);
    }

    first_not_of = google::protobuf::StringPiece::find_first_not_of(v34, __s, v10, 0);
    if (first_not_of != -1)
    {
      v12 = first_not_of;
      while (1)
      {
        v13 = strlen(__s);
        v15 = v13;
        if ((v13 & 0x8000000000000000) != 0)
        {
          google::protobuf::StringPiece::LogFatalSizeTooBig(v13, "size_t to int conversion", v14);
        }

        first_of = google::protobuf::StringPiece::find_first_of(v34, __s, v15, v12);
        if (first_of == -1)
        {
          break;
        }

        v17 = first_of;
        v30 = google::protobuf::StringPiece::substr(v34, v12, first_of - v12);
        v31 = v18;
        google::protobuf::StringPiece::ToString(&v30, __p);
        v29 = a4;
        std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v29, __p);
        if (v33 < 0)
        {
          operator delete(__p[0]);
        }

        v19 = strlen(__s);
        v21 = v19;
        if ((v19 & 0x8000000000000000) != 0)
        {
          google::protobuf::StringPiece::LogFatalSizeTooBig(v19, "size_t to int conversion", v20);
        }

        v12 = google::protobuf::StringPiece::find_first_not_of(v34, __s, v21, v17);
        if (v12 == -1)
        {
          return;
        }
      }

      v30 = google::protobuf::StringPiece::substr(v34, v12, 0xFFFFFFFFFFFFFFFFLL);
      v31 = v22;
      google::protobuf::StringPiece::ToString(&v30, __p);
      v29 = a4;
      std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v29, __p);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_26D4384AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::SplitStringAllowEmpty(uint64_t a1, uint64_t a2, char *__s, std::allocator<std::string> *a4)
{
  v16[0] = a1;
  v16[1] = a2;
  google::protobuf::StringPiece::StringPiece(__p, __s);
  first_of = google::protobuf::StringPiece::find_first_of(v16, __p[0], __p[1], 0);
  if (first_of == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = first_of;
    v8 = 0;
    do
    {
      v12 = google::protobuf::StringPiece::substr(v16, v8, v7 - v8);
      v13 = v9;
      google::protobuf::StringPiece::ToString(&v12, __p);
      v11 = a4;
      std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v11, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = v7 + 1;
      google::protobuf::StringPiece::StringPiece(__p, __s);
      v7 = google::protobuf::StringPiece::find_first_of(v16, __p[0], __p[1], v7 + 1);
    }

    while (v7 != -1);
  }

  v12 = google::protobuf::StringPiece::substr(v16, v8, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v10;
  google::protobuf::StringPiece::ToString(&v12, __p);
  v11 = a4;
  std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](&v11, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26D4385F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::JoinStrings(uint64_t *a1, char *__s, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (!a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 264);
    v7 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: result != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  v8 = strlen(__s);
  if (v6 == v5)
  {
    std::string::reserve(a3, 0);
  }

  else
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = v5;
    do
    {
      if (v10)
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v12 + 23);
      if (v14 < 0)
      {
        v14 = *(v5 + 8 + v10);
      }

      v11 += v13 + v14;
      v12 += 24;
      v10 += 24;
    }

    while (v12 != v6);
    std::string::reserve(a3, v11);
    v15 = 0;
    do
    {
      if (v15)
      {
        std::string::append(a3, __s, v9);
      }

      v16 = *(v5 + 23);
      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = *v5;
        v16 = *(v5 + 8);
      }

      else
      {
        v17 = v5;
      }

      std::string::append(a3, v17, v16);
      v5 += 24;
      v15 -= 24;
    }

    while (v5 != v6);
  }
}

void sub_26D438764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::UnescapeCEscapeSequences(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: errors == nullptr: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "Error reporting not implemented.");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }

  if (a1 != a2)
  {
    v7 = a2;
LABEL_11:
    v9 = a1;
    goto LABEL_12;
  }

  v8 = a2;
  do
  {
    if (!*a1 || *a1 == 92)
    {
      v7 = v8;
      goto LABEL_11;
    }

    v9 = a1 + 1;
    v7 = v8 + 1;
    v22 = v8++ == a1++;
  }

  while (v22);
  while (1)
  {
LABEL_12:
    v10 = *v9;
    if (v10 != 92)
    {
      if (!*v9)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v11 = v9 + 1;
    v10 = v9[1];
    if (v10 <= 0x3E)
    {
      break;
    }

    if (v9[1] <= 0x65u)
    {
      if (v9[1] > 0x5Bu)
      {
        if (v10 != 92)
        {
          if (v10 == 97)
          {
            LOBYTE(v10) = 7;
          }

          else
          {
            if (v10 != 98)
            {
              goto LABEL_63;
            }

            LOBYTE(v10) = 8;
          }
        }

LABEL_61:
        v9 = v11;
LABEL_62:
        *v7++ = v10;
        v11 = v9;
        goto LABEL_63;
      }

      if (v10 == 63)
      {
        goto LABEL_61;
      }

      if (v10 != 88)
      {
        goto LABEL_63;
      }

LABEL_44:
      if ((v9[2] - 48) < 0xAu || (v18 = v9[2] - 65, v18 <= 0x25) && ((1 << v18) & 0x3F0000003FLL) != 0)
      {
        LOBYTE(v10) = 0;
        v19 = v9 + 1;
        while (1)
        {
          v21 = *++v19;
          v20 = v21;
          if ((v21 - 48) >= 0xAu)
          {
            v22 = v20 - 65 > 0x25 || ((1 << (v20 - 65)) & 0x3F0000003FLL) == 0;
            if (v22)
            {
              break;
            }
          }

          v23 = v20;
          v24 = v20 + 9;
          if (v23 <= 0x39)
          {
            v24 = v23;
          }

          v11 = v19;
          LOBYTE(v10) = v24 & 0xF | (16 * v10);
        }

        goto LABEL_61;
      }

      goto LABEL_63;
    }

    if (v9[1] <= 0x73u)
    {
      switch(v10)
      {
        case 'f':
          LOBYTE(v10) = 12;
          break;
        case 'n':
          LOBYTE(v10) = 10;
          break;
        case 'r':
          LOBYTE(v10) = 13;
          break;
        default:
          goto LABEL_63;
      }

      goto LABEL_61;
    }

    switch(v10)
    {
      case 't':
        LOBYTE(v10) = 9;
        goto LABEL_61;
      case 'v':
        LOBYTE(v10) = 11;
        goto LABEL_61;
      case 'x':
        goto LABEL_44;
    }

LABEL_63:
    v9 = v11 + 1;
  }

  if (v9[1] > 0x2Fu)
  {
    v10 -= 48;
    if (v10 >= 8)
    {
      goto LABEL_63;
    }

    v13 = v9[2];
    v12 = v9 + 2;
    v14 = v13 + 8 * v10 - 48;
    if ((v13 & 0xF8) == 0x30)
    {
      v11 = v12;
      LOBYTE(v10) = v14;
    }

    v9 = v11 + 1;
    v15 = v11[1];
    v16 = v15 & 0xF8;
    v17 = v15 + 8 * v10 - 48;
    if (v16 == 48)
    {
      LOBYTE(v10) = v17;
    }

    else
    {
      v9 = v11;
    }

    goto LABEL_62;
  }

  if (v10 == 34 || v10 == 39)
  {
    goto LABEL_61;
  }

  if (v9[1])
  {
    goto LABEL_63;
  }

LABEL_64:
  *v7 = 0;
  return (v7 - a2);
}

void sub_26D438A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::UnescapeCEscapeString(uint64_t a1)
{
  google::protobuf::UnescapeCEscapeString(a1);
}

{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

void sub_26D438B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  MEMORY[0x26D6BF010](v4, v3);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::CEscapeInternal(google::protobuf *this, const char *a2, uint64_t a3, char *a4, int a5, char a6)
{
  v6 = a4;
  if (a2 >= 1)
  {
    v9 = a5;
    v10 = this;
    v11 = 0;
    LODWORD(v12) = 0;
    if (a5)
    {
      v13 = "\\x%02x";
    }

    else
    {
      v13 = "\\%03o";
    }

    v14 = this + a2;
    while (1)
    {
      if (v6 - v12 < 2)
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      if (v15 > 0x21)
      {
        switch(v15)
        {
          case '""':
            v11 = 0;
            *(a3 + v12) = 8796;
            goto LABEL_23;
          case '\'':
            v11 = 0;
            *(a3 + v12) = 10076;
            goto LABEL_23;
          case '\\':
            v11 = 0;
            *(a3 + v12) = 23644;
            goto LABEL_23;
        }
      }

      else
      {
        switch(v15)
        {
          case 9u:
            v11 = 0;
            *(a3 + v12) = 29788;
            goto LABEL_23;
          case 0xAu:
            v11 = 0;
            *(a3 + v12) = 28252;
            goto LABEL_23;
          case 0xDu:
            v11 = 0;
            *(a3 + v12) = 29276;
LABEL_23:
            v12 = (v12 + 2);
            goto LABEL_24;
        }
      }

      if ((v15 & 0x80) != 0 && (a6 & 1) != 0 || v15 - 32 <= 0x5E && ((v11 & 1) == 0 || v15 - 48 >= 0xA && (v15 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0)))
      {
        v11 = 0;
        *(a3 + v12) = v15;
        v12 = (v12 + 1);
      }

      else
      {
        if ((v6 - v12) < 4)
        {
          return 0xFFFFFFFFLL;
        }

        sprintf((a3 + v12), v13, *v10);
        v12 = (v12 + 4);
        v11 = v9;
      }

LABEL_24:
      if (++v10 >= v14)
      {
        goto LABEL_34;
      }
    }
  }

  v12 = 0;
LABEL_34:
  if (v12 >= v6)
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + v12) = 0;
  return v12;
}

void google::protobuf::CEscapeAndAppend(const std::string::value_type *a1, int64_t a2, std::string *a3)
{
  v12 = a1;
  v13 = a2;
  v14 = a1;
  v15 = a2;
  if (a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 += google::protobuf::CEscapedLength(google::protobuf::StringPiece)::c_escaped_len[google::protobuf::StringPiece::operator[](&v14, v6++)];
    }

    while (v15 > v6);
  }

  if (v7 == a2)
  {
    std::string::append(a3, a1, a2);
    return;
  }

  size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  std::string::resize(a3, size + v7, 0);
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    a3 = a3->__r_.__value_.__r.__words[0];
  }

  if (a2 >= 1)
  {
    v9 = 0;
    v10 = a3 + size;
    do
    {
      v11 = google::protobuf::StringPiece::operator[](&v12, v9);
      if (v11 > 0x21u)
      {
        switch(v11)
        {
          case '""':
            *v10 = 8796;
            v10 += 2;
            break;
          case '\'':
            *v10 = 10076;
            v10 += 2;
            break;
          case '\\':
            *v10 = 23644;
            v10 += 2;
            break;
          default:
LABEL_25:
            if (v11 - 32 >= 0x5F)
            {
              *v10 = 92;
              v10[1] = (v11 >> 6) | 0x30;
              v10[2] = (v11 >> 3) & 7 | 0x30;
              v10[3] = v11 & 7 | 0x30;
              v10 += 4;
            }

            else
            {
              *v10++ = v11;
            }

            break;
        }
      }

      else
      {
        switch(v11)
        {
          case 9u:
            *v10 = 29788;
            v10 += 2;
            break;
          case 0xAu:
            *v10 = 28252;
            v10 += 2;
            break;
          case 0xDu:
            *v10 = 29276;
            v10 += 2;
            break;
          default:
            goto LABEL_25;
        }
      }

      ++v9;
    }

    while (v13 > v9);
  }
}

uint64_t google::protobuf::StringPiece::operator[](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    google::protobuf::StringPiece::operator[]();
  }

  if (a1[1] <= a2)
  {
    google::protobuf::StringPiece::operator[]();
  }

  return *(*a1 + a2);
}

void google::protobuf::CEscape(uint64_t *a1@<X0>, const char *a2@<X2>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v4, a1, a2);
  google::protobuf::CEscapeAndAppend(v4[0], v4[1], a3);
}

void sub_26D439054(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::strings::Utf8SafeCEscape(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

void sub_26D439178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  MEMORY[0x26D6BF010](v4, v3);
  _Unwind_Resume(a1);
}

void google::protobuf::strings::CHexEscape(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

void sub_26D4392B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  MEMORY[0x26D6BF010](v4, v3);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::strto32_adaptor(google::protobuf *this, char **a2, char **a3)
{
  v3 = a3;
  v6 = *__error();
  *__error() = 0;
  v7 = strtol(this, a2, v3);
  if (*__error() == 34 && v7 == 0x8000000000000000)
  {
    return 0x80000000;
  }

  if (*__error() == 34 && v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFLL;
  }

  v10 = *__error();
  v11 = __error();
  if (!v10 && v7 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    *v11 = 34;
    return 0x80000000;
  }

  v12 = *v11;
  v13 = __error();
  if (!v12 && v7 >= 0x80000000)
  {
    *v13 = 34;
    return 0x7FFFFFFFLL;
  }

  if (!*v13)
  {
    *__error() = v6;
  }

  return v7;
}

unint64_t google::protobuf::strtou32_adaptor(google::protobuf *this, char **a2, char **a3)
{
  v3 = a3;
  v6 = *__error();
  *__error() = 0;
  v7 = strtoul(this, a2, v3);
  if (*__error() == 34 && v7 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *__error();
  v10 = __error();
  if (!v9 && HIDWORD(v7))
  {
    *v10 = 34;
    return 0xFFFFFFFFLL;
  }

  if (!*v10)
  {
    *__error() = v6;
  }

  return v7;
}

_BYTE *google::protobuf::FastInt64ToBuffer(unint64_t this, _BYTE *a2, char *a3)
{
  v3 = this;
  a2[21] = 0;
  if ((this & 0x8000000000000000) != 0)
  {
    if (this < 0xFFFFFFFFFFFFFFF7)
    {
      v7 = -10 - this;
      result = a2 + 19;
      a2[20] = (v7 % 0xA) | 0x30;
      v8 = v7 / 0xA + 1;
      do
      {
        *result-- = (v8 % 0xA) | 0x30;
        v9 = v8 > 9;
        v8 /= 0xAuLL;
      }

      while (v9);
    }

    else
    {
      v6 = 48 - this;
      result = a2 + 19;
      a2[20] = v6;
    }

    *result = 45;
  }

  else
  {
    result = a2 + 21;
    do
    {
      *--result = (v3 % 0xA) | 0x30;
      v5 = v3 >= 0xA;
      v3 /= 0xAuLL;
    }

    while (v5);
  }

  return result;
}

_BYTE *google::protobuf::FastInt32ToBuffer(google::protobuf *this, _BYTE *a2, char *a3)
{
  v3 = this;
  a2[11] = 0;
  if ((this & 0x80000000) != 0)
  {
    if (this < 0xFFFFFFF7)
    {
      v7 = -10 - this;
      v8 = (-10 - this) / 0xAu;
      result = a2 + 9;
      a2[10] = (v7 % 0xA) | 0x30;
      v9 = v8 + 1;
      do
      {
        *result-- = (v9 % 0xA) | 0x30;
        v10 = v9 > 9;
        v9 /= 0xAu;
      }

      while (v10);
    }

    else
    {
      v6 = 48 - this;
      result = a2 + 9;
      a2[10] = v6;
    }

    *result = 45;
  }

  else
  {
    result = a2 + 11;
    do
    {
      *--result = (v3 % 0xA) | 0x30;
      v5 = v3 >= 0xA;
      v3 /= 0xAu;
    }

    while (v5);
  }

  return result;
}

uint64_t google::protobuf::FastHexToBuffer(google::protobuf *this, uint64_t a2, char *a3)
{
  v4 = this;
  if ((this & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 887);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: i >= 0: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "FastHexToBuffer() wants non-negative integers, not ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, v4);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  *(a2 + 21) = 0;
  v8 = a2 + 21;
  do
  {
    *--v8 = google::protobuf::strings::AlphaNum::AlphaNum(google::protobuf::strings::Hex)::hexdigits[v4 & 0xF];
    v4 >>= 4;
  }

  while (v4 > 0);
  return v8;
}

void sub_26D439688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::InternalFastHexToBuffer(unint64_t this, uint64_t a2, char *a3)
{
  *(a2 + a3) = 0;
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      *(a2 - 1 + v3) = google::protobuf::strings::AlphaNum::AlphaNum(google::protobuf::strings::Hex)::hexdigits[this & 0xF];
      this >>= 4;
    }

    while (v3-- > 1);
  }

  return a2;
}

uint64_t google::protobuf::FastHex64ToBuffer(unint64_t this, uint64_t a2, char *a3)
{
  *(a2 + 16) = 0;
  v3 = 15;
  do
  {
    *(a2 + v3) = google::protobuf::strings::AlphaNum::AlphaNum(google::protobuf::strings::Hex)::hexdigits[this & 0xF];
    this >>= 4;
    v4 = v3-- + 1;
  }

  while (v4 > 1);
  return a2;
}

uint64_t google::protobuf::FastHex32ToBuffer(google::protobuf *this, uint64_t a2, char *a3)
{
  v3 = this;
  *(a2 + 8) = 0;
  v4 = 7;
  do
  {
    *(a2 + v4) = google::protobuf::strings::AlphaNum::AlphaNum(google::protobuf::strings::Hex)::hexdigits[v3 & 0xF];
    v3 >>= 4;
    v5 = v4-- + 1;
  }

  while (v5 > 1);
  return a2;
}

_BYTE *google::protobuf::FastUInt32ToBufferLeft(google::protobuf *this, _BYTE *a2, char *a3)
{
  if (this >= 0x3B9ACA00)
  {
    v3 = this / 0x5F5E100uLL;
    *a2 = google::protobuf::two_ASCII_digits[v3];
    a2 += 2;
    goto LABEL_3;
  }

  if (this > 0x63)
  {
    if (this >> 4 <= 0x270)
    {
      if (this <= 0x3E7)
      {
        LODWORD(v6) = this / 0x64u;
        *a2++ = v6 | 0x30;
        goto LABEL_9;
      }

LABEL_8:
      v6 = this / 0x64uLL;
      *a2 = google::protobuf::two_ASCII_digits[v6];
      a2 += 2;
LABEL_9:
      LODWORD(this) = this - 100 * v6;
      goto LABEL_10;
    }

    if (this <= 0xF423F)
    {
      if (this >> 5 <= 0xC34)
      {
        LODWORD(v5) = this / 0x2710;
        *a2++ = (this / 0x2710) | 0x30;
        goto LABEL_7;
      }

LABEL_6:
      v5 = this / 0x2710uLL;
      *a2 = google::protobuf::two_ASCII_digits[v5];
      a2 += 2;
LABEL_7:
      LODWORD(this) = this - 10000 * v5;
      goto LABEL_8;
    }

    if (this <= 0x5F5E0FF)
    {
      if (this <= 0x98967F)
      {
        LODWORD(v4) = this / 0xF4240;
        *a2++ = this / 0xF4240 + 48;
        goto LABEL_5;
      }

LABEL_4:
      v4 = this / 0xF4240uLL;
      *a2 = google::protobuf::two_ASCII_digits[v4];
      a2 += 2;
LABEL_5:
      LODWORD(this) = this - 1000000 * v4;
      goto LABEL_6;
    }

    LODWORD(v3) = this / 0x5F5E100;
    *a2++ = (this / 0x5F5E100) | 0x30;
LABEL_3:
    LODWORD(this) = this - 100000000 * v3;
    goto LABEL_4;
  }

  if (this <= 9)
  {
    *a2 = this | 0x30;
    v7 = a2 + 1;
    goto LABEL_11;
  }

LABEL_10:
  *a2 = google::protobuf::two_ASCII_digits[this];
  v7 = a2 + 2;
LABEL_11:
  *v7 = 0;
  return v7;
}

_BYTE *google::protobuf::FastInt32ToBufferLeft(google::protobuf *this, _BYTE *a2, char *a3)
{
  if ((this & 0x80000000) != 0)
  {
    *a2++ = 45;
    this = -this;
  }

  return google::protobuf::FastUInt32ToBufferLeft(this, a2, a3);
}

_BYTE *google::protobuf::FastUInt64ToBufferLeft(google::protobuf *this, _BYTE *a2, char *a3)
{
  v3 = this;
  if (this >> 32)
  {
    v5 = this / 0x3B9ACA00;
    v6 = google::protobuf::FastUInt64ToBufferLeft((this / 0x3B9ACA00), a2, a3);
    v7 = v3 - 1000000000 * v5;
    if (v7 >= 0x3B9ACA00)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1068);
      v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (digits) < (100): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    *v6 = google::protobuf::two_ASCII_digits[v7 / 0x989680];
    v6[1] = google::protobuf::two_ASCII_digits[v7 % 0x989680 / 0x186A0uLL];
    v9 = v7 % 0x989680 % 0x186A0;
    v6[2] = google::protobuf::two_ASCII_digits[v9 / 0x3E8uLL];
    v9 %= 0x3E8u;
    v6[3] = google::protobuf::two_ASCII_digits[v9 / 0xAuLL];
    v6[4] = (v9 % 0xA + 48);
    return v6 + 9;
  }

  else
  {

    return google::protobuf::FastUInt32ToBufferLeft(this, a2, a3);
  }
}

void sub_26D439A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *google::protobuf::FastInt64ToBufferLeft(uint64_t this, _BYTE *a2, char *a3)
{
  if (this < 0)
  {
    *a2++ = 45;
    this = -this;
  }

  return google::protobuf::FastUInt64ToBufferLeft(this, a2, a3);
}

_BYTE *google::protobuf::SimpleItoa@<X0>(google::protobuf *this@<X0>, char *a2@<X2>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastInt32ToBuffer(this, v7, a2);
  result = std::string::basic_string[abi:ne200100]<0>(a3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastUInt32ToBufferLeft(this, __src, a2);
  result = std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a3, __src, v4, v4 - __src);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastInt64ToBuffer(this, v7, a2);
  result = std::string::basic_string[abi:ne200100]<0>(a3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastUInt64ToBufferLeft(this, __src, a2);
  result = std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a3, __src, v4, v4 - __src);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *google::protobuf::SimpleDtoa@<X0>(double a1@<D0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  google::protobuf::DoubleToBuffer(&__s, a1, a2);
  result = std::string::basic_string[abi:ne200100]<0>(a3, &__s);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

std::string *google::protobuf::DoubleToBuffer(std::string *this, double a2, char *a3)
{
  if (a2 == INFINITY)
  {
    v5 = 6712937;
LABEL_5:
    LODWORD(this->__r_.__value_.__l.__data_) = v5;
    return this;
  }

  if (a2 == -INFINITY)
  {
    this->__r_.__value_.__s.__data_[4] = 0;
    v5 = 1718511917;
    goto LABEL_5;
  }

  if ((snprintf(this, 0x20uLL, "%.*g", 15, a2) - 32) <= 0xFFFFFFE0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1265);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: snprintf_result > 0 && snprintf_result < kDoubleToBufferSize: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v12 = google::protobuf::internal::NoLocaleStrtod(this, 0, v7);
  if (v12 != a2 && (snprintf(this, 0x20uLL, "%.*g", 17, a2) - 32) <= 0xFFFFFFE0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1279);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: snprintf_result > 0 && snprintf_result < kDoubleToBufferSize: ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::DelocalizeRadix(this, v9);
  return this;
}

void sub_26D439E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *google::protobuf::SimpleFtoa@<X0>(float a1@<S0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  google::protobuf::FloatToBuffer(v7, a1, a2);
  result = std::string::basic_string[abi:ne200100]<0>(a3, v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

google::protobuf *google::protobuf::FloatToBuffer(google::protobuf *this, float a2, char *a3)
{
  if (a2 == INFINITY)
  {
    v5 = 6712937;
LABEL_5:
    *this = v5;
    return this;
  }

  if (a2 == -INFINITY)
  {
    *(this + 4) = 0;
    v5 = 1718511917;
    goto LABEL_5;
  }

  if ((snprintf(this, 0x18uLL, "%.*g", 6, a2) - 24) <= 0xFFFFFFE8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1383);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: snprintf_result > 0 && snprintf_result < kFloatToBufferSize: ");
    google::protobuf::internal::LogFinisher::operator=(v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  *v12 = 0.0;
  if ((!google::protobuf::safe_strtof(this, v12, v7) || *v12 != a2) && (snprintf(this, 0x18uLL, "%.*g", 9, a2) - 24) <= 0xFFFFFFE8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1391);
    v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: snprintf_result > 0 && snprintf_result < kFloatToBufferSize: ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::DelocalizeRadix(this, v9);
  return this;
}

void sub_26D43A05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::DelocalizeRadix(google::protobuf *this, char *a2)
{
  result = strchr(this, 46);
  if (!result)
  {
    for (i = this + 2; ; ++i)
    {
      v5 = *(i - 2);
      if ((v5 - 48) >= 0xA && ((v5 - 43) > 0x3A || ((1 << (v5 - 43)) & 0x400000004000005) == 0))
      {
        break;
      }
    }

    if (*(i - 2))
    {
      v8 = (i - 1);
      v7 = *(i - 1);
      *(i - 2) = 46;
      if ((v7 - 48) >= 0xA && ((v7 - 43) > 0x3A || ((1 << (v7 - 43)) & 0x400000004000005) == 0))
      {
        if (v7)
        {
          do
          {
            v9 = i;
            v10 = *i;
            if ((v10 - 48) < 0xA)
            {
              break;
            }

            ++i;
            v11 = (v10 - 43) > 0x3A || ((1 << (v10 - 43)) & 0x400000004000005) == 0;
          }

          while (v11 && v10 != 0);
          v13 = strlen(v9) + 1;

          return memmove(v8, v9, v13);
        }
      }
    }
  }

  return result;
}

double google::protobuf::internal::NoLocaleStrtod(std::string *this, char *a2, char **a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v5 = strtod(this, &v19);
  v6 = v19;
  if (a2)
  {
    *a2 = v19;
  }

  if (v6->__r_.__value_.__s.__data_[0] == 46)
  {
    v7 = snprintf(&__str, 0x10uLL, "%.1f", 1.5);
    if (__str != 49)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2425);
      v8 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (temp[0]) == ('1'): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    if (v23[v7 - 2] != 53)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2426);
      v9 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (temp[size - 1]) == ('5'): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    if (v7 >= 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2427);
      v10 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (size) <= (6): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    memset(&v18, 0, sizeof(v18));
    v11 = strlen(this);
    std::string::reserve(&v18, v11 + v7 - 3);
    std::string::append[abi:ne200100]<char const*,0>(&v18, this, v6);
    std::string::append(&v18, v23, v7 - 2);
    std::string::append(&v18, &v6->__r_.__value_.__s.__data_[1]);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v18;
    }

    else
    {
      v12 = v18.__r_.__value_.__r.__words[0];
    }

    v21[0].__r_.__value_.__r.__words[0] = 0;
    v5 = strtod(v12, &v21[0].__r_.__value_.__l.__data_);
    v13 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    if (a2 && (v21[0].__r_.__value_.__r.__words[0] - v12) > v19 - this)
    {
      v14 = strlen(this);
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v18.__r_.__value_.__r.__words[1];
      }

      *a2 = this + v21[0].__r_.__value_.__r.__words[0] - (v12 + v15 - v14);
    }

    if (v13 < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t google::protobuf::safe_strtob(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  if (!a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1305);
    v6 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: value != nullptr: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "nullptr output BOOLean given.");
    google::protobuf::internal::LogFinisher::operator=(&v33, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
  }

  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v23 = 0;
      while (1)
      {
        v24 = a1[v23];
        v25 = aTrue[v23];
        if ((v24 - 65) < 0x1A)
        {
          v24 += 32;
        }

        if ((v25 - 65) < 0x1A)
        {
          v25 += 32;
        }

        if (v24 != v25)
        {
          break;
        }

        if (++v23 == 4)
        {
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 5)
    {
      v11 = "false";
      v12 = a1;
      v13 = 5;
      while (1)
      {
        v15 = *v12++;
        v14 = v15;
        v16 = v15 + 32;
        v17 = (v15 - 65) >= 0x1A;
        v19 = *v11++;
        v18 = v19;
        if (!v17)
        {
          v14 = v16;
        }

        if ((v18 - 65) < 0x1A)
        {
          v18 += 32;
        }

        if (v14 != v18)
        {
          break;
        }

        if (!--v13)
        {
          goto LABEL_56;
        }
      }
    }
  }

  else if (a2 == 1)
  {
    v20 = 0;
    while (1)
    {
      v21 = a1[v20];
      v22 = aT[v20];
      if ((v21 - 65) < 0x1A)
      {
        v21 += 32;
      }

      if ((v22 - 65) < 0x1A)
      {
        v22 += 32;
      }

      if (v21 != v22)
      {
        break;
      }

      if (++v20 == 1)
      {
        goto LABEL_48;
      }
    }

    v26 = 0;
    while (1)
    {
      v27 = a1[v26];
      v28 = aY[v26];
      if ((v27 - 65) < 0x1A)
      {
        v27 += 32;
      }

      if ((v28 - 65) < 0x1A)
      {
        v28 += 32;
      }

      if (v27 != v28)
      {
        break;
      }

      if (++v26 == 1)
      {
        goto LABEL_48;
      }
    }

    v30 = *a1;
    if ((v30 - 65) < 0x1A)
    {
      v30 += 32;
    }

    if (v30 == 49)
    {
LABEL_48:
      v29 = 1;
LABEL_57:
      *a3 = v29;
      return 1;
    }
  }

  else if (a2 == 3)
  {
    v8 = 0;
    while (1)
    {
      v9 = a1[v8];
      v10 = aYes[v8];
      if ((v9 - 65) < 0x1A)
      {
        v9 += 32;
      }

      if ((v10 - 65) < 0x1A)
      {
        v10 += 32;
      }

      if (v9 != v10)
      {
        break;
      }

      if (++v8 == 3)
      {
        goto LABEL_48;
      }
    }
  }

  google::protobuf::StringPiece::StringPiece(v34, "f");
  if (google::protobuf::CaseEqual(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_) & 1) != 0 || (google::protobuf::StringPiece::StringPiece(v34, "no"), (google::protobuf::CaseEqual(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_)) || (google::protobuf::StringPiece::StringPiece(v34, "n"), (google::protobuf::CaseEqual(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_)) || (google::protobuf::StringPiece::StringPiece(v34, "0"), v31 = google::protobuf::CaseEqual(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_), result = 0, v31))
  {
LABEL_56:
    v29 = 0;
    goto LABEL_57;
  }

  return result;
}

void sub_26D43A784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::CaseEqual(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = a2 - 1;
  do
  {
    v6 = *a1++;
    v5 = v6;
    v7 = v6 + 32;
    if ((v6 - 65) < 0x1A)
    {
      v5 = v7;
    }

    v9 = *a3++;
    v8 = v9;
    v10 = v9 + 32;
    if ((v9 - 65) >= 0x1A)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    v13 = v4-- != 0;
    v14 = v5 == v11;
    v15 = v5 == v11;
  }

  while (v14 && v13);
  return v15;
}

BOOL google::protobuf::safe_strtof(google::protobuf *this, float *a2, float *a3)
{
  v6 = 0;
  *__error() = 0;
  *a2 = strtof(this, &v6);
  return *this && !*v6 && *__error() == 0;
}

BOOL google::protobuf::safe_strtod(std::string *this, double *a2, char **a3)
{
  *v7 = 0;
  *a2 = google::protobuf::internal::NoLocaleStrtod(this, v7, a3);
  v4 = *v7;
  if (*v7 != this)
  {
    while (1)
    {
      v5 = *v4;
      if ((v5 - 9) >= 5 && v5 != 32)
      {
        break;
      }

      *v7 = ++v4;
    }
  }

  return this->__r_.__value_.__s.__data_[0] && *v4 == 0;
}

uint64_t google::protobuf::safe_strto32(uint64_t a1, int *a2)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = google::protobuf::safe_int_internal<int>(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_26D43A974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::safe_int_internal<int>(std::string *__str, int *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v16, __str, v8 - v12, v9 - v8, &v17);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v16;
  if (v11 == 45)
  {
    return google::protobuf::safe_parse_negative_int<int>(__str, a2);
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  v13 = google::protobuf::safe_parse_positive_int<int>(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_26D43AB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::safe_strtou32(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = google::protobuf::safe_uint_internal<unsigned int>(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_26D43AB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::safe_uint_internal<unsigned int>(std::string *__str, unsigned int *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v16, __str, v8 - v12, v9 - v8, &v17);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v16;
  if (v11 == 45)
  {
    return 0;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  v13 = google::protobuf::safe_parse_positive_int<unsigned int>(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_26D43AD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::safe_strto64(uint64_t a1, int64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = google::protobuf::safe_int_internal<long long>(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_26D43ADA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::safe_int_internal<long long>(std::string *__str, int64_t *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v16, __str, v8 - v12, v9 - v8, &v17);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v16;
  if (v11 == 45)
  {
    return google::protobuf::safe_parse_negative_int<long long>(__str, a2);
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  v13 = google::protobuf::safe_parse_positive_int<long long>(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_26D43AF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::safe_strtou64(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = google::protobuf::safe_uint_internal<unsigned long long>(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_26D43AFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::safe_uint_internal<unsigned long long>(std::string *__str, unint64_t *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v16, __str, v8 - v12, v9 - v8, &v17);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v16;
  if (v11 == 45)
  {
    return 0;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  v13 = google::protobuf::safe_parse_positive_int<unsigned long long>(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_26D43B13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *google::protobuf::strings::AlphaNum::AlphaNum(void *result, unint64_t a2, char a3)
{
  v3 = 0;
  v4 = (1 << (4 * a3 - 4)) | a2;
  do
  {
    *(result + v3 + 47) = google::protobuf::strings::AlphaNum::AlphaNum(google::protobuf::strings::Hex)::hexdigits[a2 & 0xF];
    a2 >>= 4;
    --v3;
    v5 = v4 > 0xF;
    v4 >>= 4;
  }

  while (v5);
  *result = result + v3 + 48;
  result[1] = -v3;
  return result;
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a3, *(a2 + 8) + *(a1 + 8), 0);
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    memcpy(v6, *a1, v7);
    v8 = v6 + *(a1 + 8);
  }

  else
  {
    v8 = v6;
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    memcpy(v8, *a2, v9);
    v8 += *(a2 + 8);
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (v8 != v6 + size)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1477);
    v11 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (out) == (begin + result.size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43B2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a4, *(a2 + 8) + *(a1 + 8) + *(a3 + 8), 0);
  if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4->__r_.__value_.__r.__words[0];
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    memcpy(v8, *a1, v9);
    v10 = v8 + *(a1 + 8);
  }

  else
  {
    v10 = v8;
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    memcpy(v10, *a2, v11);
    v10 += *(a2 + 8);
  }

  v12 = *(a3 + 8);
  if (v12)
  {
    memcpy(v10, *a3, v12);
    v10 += *(a3 + 8);
  }

  size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a4->__r_.__value_.__l.__size_;
  }

  if (v10 != v8 + size)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1487);
    v14 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (out) == (begin + result.size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43B420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  std::string::resize(a5, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8), 0);
  if (*(a5 + 23) >= 0)
  {
    v10 = a5;
  }

  else
  {
    v10 = *a5;
  }

  v11 = google::protobuf::Append4(v10, a1, a2, a3, a4);
  v12 = *(a5 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a5 + 8);
  }

  if (v11 != &v10[v12])
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1497);
    v13 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (out) == (begin + result.size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43B550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

char *google::protobuf::Append4(char *__dst, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __dst;
  v9 = *(a2 + 8);
  if (v9)
  {
    memcpy(__dst, *a2, v9);
    v8 += *(a2 + 8);
  }

  v11 = *(a3 + 8);
  if (v11)
  {
    memcpy(v8, *a3, v11);
    v8 += *(a3 + 8);
  }

  v12 = *(a4 + 8);
  if (v12)
  {
    memcpy(v8, *a4, v12);
    v8 += *(a4 + 8);
  }

  v13 = *(a5 + 8);
  if (v13)
  {
    memcpy(v8, *a5, v13);
    v8 += *(a5 + 8);
  }

  return v8;
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  std::string::resize(a6, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8), 0);
  if (*(a6 + 23) >= 0)
  {
    v12 = a6;
  }

  else
  {
    v12 = *a6;
  }

  v13 = google::protobuf::Append4(v12, a1, a2, a3, a4);
  v14 = v13;
  v15 = *(a5 + 8);
  if (v15)
  {
    memcpy(v13, *a5, v15);
    v14 += *(a5 + 8);
  }

  v16 = *(a6 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a6 + 8);
  }

  if (v14 != &v12[v16])
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1508);
    v17 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (out) == (begin + result.size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43B768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  std::string::resize(a7, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8), 0);
  if (*(a7 + 23) >= 0)
  {
    v14 = a7;
  }

  else
  {
    v14 = *a7;
  }

  v15 = google::protobuf::Append4(v14, a1, a2, a3, a4);
  v16 = v15;
  v17 = *(a5 + 8);
  if (v17)
  {
    memcpy(v15, *a5, v17);
    v16 += *(a5 + 8);
  }

  v18 = *(a6 + 8);
  if (v18)
  {
    memcpy(v16, *a6, v18);
    v16 += *(a6 + 8);
  }

  v19 = *(a7 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a7 + 8);
  }

  if (v16 != &v14[v19])
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1520);
    v20 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (out) == (begin + result.size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v20->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43B8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  std::string::resize(a8, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8) + *(a7 + 8), 0);
  if (*(a8 + 23) >= 0)
  {
    v16 = a8;
  }

  else
  {
    v16 = *a8;
  }

  v17 = google::protobuf::Append4(v16, a1, a2, a3, a4);
  v18 = v17;
  v19 = *(a5 + 8);
  if (v19)
  {
    memcpy(v17, *a5, v19);
    v18 += *(a5 + 8);
  }

  v20 = *(a6 + 8);
  if (v20)
  {
    memcpy(v18, *a6, v20);
    v18 += *(a6 + 8);
  }

  v21 = *(a7 + 8);
  if (v21)
  {
    memcpy(v18, *a7, v21);
    v18 += *(a7 + 8);
  }

  v22 = *(a8 + 23);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a8 + 8);
  }

  if (v18 != &v16[v22])
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1534);
    v23 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (out) == (begin + result.size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v24, &v23->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43BAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  std::string::resize(a9, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8) + *(a7 + 8) + *(a8 + 8), 0);
  if (*(a9 + 23) >= 0)
  {
    v18 = a9;
  }

  else
  {
    v18 = *a9;
  }

  v19 = google::protobuf::Append4(v18, a1, a2, a3, a4);
  v20 = google::protobuf::Append4(v19, a5, a6, a7, a8);
  v21 = *(a9 + 23);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a9 + 8);
  }

  if (v20 != &v18[v21])
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1547);
    v22 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (out) == (begin + result.size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v22->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43BC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  std::string::resize(a9, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8) + *(a7 + 8) + *(a8 + 8) + *(a10 + 8), 0);
  if (*(a9 + 23) >= 0)
  {
    v18 = a9;
  }

  else
  {
    v18 = *a9;
  }

  v19 = google::protobuf::Append4(v18, a1, a2, a3, a4);
  v20 = google::protobuf::Append4(v19, a5, a6, a7, a8);
  v21 = v20;
  v22 = *(a10 + 8);
  if (v22)
  {
    memcpy(v20, *a10, v22);
    v21 += *(a10 + 8);
  }

  v23 = *(a9 + 23);
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a9 + 8);
  }

  if (v21 != &v18[v23])
  {
    google::protobuf::internal::LogMessage::LogMessage(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1561);
    v24 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (out) == (begin + result.size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v26, &v24->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v27[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43BDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

std::string *google::protobuf::StrAppend(std::string *this, uint64_t a2)
{
  v4 = *a2;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v6 = &v4[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v6 = (v4 - this);
  }

  if (v6 <= size)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1574);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (uintptr_t((a).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *a2;
  }

  return std::string::append(this, v4, *(a2 + 8));
}

void sub_26D43BEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::StrAppend(std::string *this, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v8 = &v6[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v8 = v6 - this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v8 <= size)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1579);
    v10 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (uintptr_t((a).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
  }

  v11 = *a3;
  if ((v7 & 0x80) != 0)
  {
    v13 = this->__r_.__value_.__l.__size_;
    v12 = &v11[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v12 = v11 - this;
    v13 = v7;
  }

  if (v12 <= v13)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1580);
    v14 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (uintptr_t((b).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v7 & 0x80) != 0)
  {
    v15 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v15 = v7;
  }

  std::string::resize(this, *(a2 + 8) + *(a3 + 8) + v15, 0);
  v16 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = this->__r_.__value_.__r.__words[0];
  }

  v17 = v16 + v15;
  v18 = *(a2 + 8);
  if (v18)
  {
    memcpy(v17, *a2, v18);
    v17 += *(a2 + 8);
  }

  v19 = *(a3 + 8);
  if (v19)
  {
    memcpy(v17, *a3, v19);
    v17 += *(a3 + 8);
  }

  v20 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v20 = this->__r_.__value_.__l.__size_;
  }

  if (v17 != v16 + v20)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1585);
    v21 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (out) == (begin + result->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v21->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43C0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::StrAppend(std::string *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v9 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = &v8[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v10 = v8 - this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v10 <= size)
  {
    google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1590);
    v12 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (uintptr_t((a).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
  }

  v13 = *a3;
  if ((v9 & 0x80) != 0)
  {
    v15 = this->__r_.__value_.__l.__size_;
    v14 = &v13[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v14 = v13 - this;
    v15 = v9;
  }

  if (v14 <= v15)
  {
    google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1591);
    v16 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (uintptr_t((b).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v16->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
  }

  v17 = *a4;
  if ((v9 & 0x80) != 0)
  {
    v19 = this->__r_.__value_.__l.__size_;
    v18 = &v17[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v18 = v17 - this;
    v19 = v9;
  }

  if (v18 <= v19)
  {
    google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1592);
    v20 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (uintptr_t((c).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v20->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v9 & 0x80) != 0)
  {
    v21 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v21 = v9;
  }

  std::string::resize(this, *(a2 + 8) + *(a3 + 8) + v21 + *(a4 + 8), 0);
  v22 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v22 = this->__r_.__value_.__r.__words[0];
  }

  v23 = v22 + v21;
  v24 = *(a2 + 8);
  if (v24)
  {
    memcpy(v23, *a2, v24);
    v23 += *(a2 + 8);
  }

  v25 = *(a3 + 8);
  if (v25)
  {
    memcpy(v23, *a3, v25);
    v23 += *(a3 + 8);
  }

  v26 = *(a4 + 8);
  if (v26)
  {
    memcpy(v23, *a4, v26);
    v23 += *(a4 + 8);
  }

  v27 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v27 & 0x8000000000000000) != 0)
  {
    v27 = this->__r_.__value_.__l.__size_;
  }

  if (v23 != v22 + v27)
  {
    google::protobuf::internal::LogMessage::LogMessage(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1598);
    v28 = google::protobuf::internal::LogMessage::operator<<(v30, "CHECK failed: (out) == (begin + result->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v28->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v30[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43C33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::StrAppend(std::string *this, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a2;
  v11 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v11 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v12 = v10 - this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = v10 - this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v12 <= size)
  {
    google::protobuf::internal::LogMessage::LogMessage(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1603);
    v14 = google::protobuf::internal::LogMessage::operator<<(v33, "CHECK failed: (uintptr_t((a).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v32, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v33[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(&this->__r_.__value_.__s + 23);
  }

  v15 = *a3;
  if ((v11 & 0x80) != 0)
  {
    v17 = this->__r_.__value_.__l.__size_;
    v16 = v15 - this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v16 = v15 - this;
    v17 = v11;
  }

  if (v16 <= v17)
  {
    google::protobuf::internal::LogMessage::LogMessage(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1604);
    v18 = google::protobuf::internal::LogMessage::operator<<(v33, "CHECK failed: (uintptr_t((b).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v32, &v18->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v33[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(&this->__r_.__value_.__s + 23);
  }

  v19 = *a4;
  if ((v11 & 0x80) != 0)
  {
    v21 = this->__r_.__value_.__l.__size_;
    v20 = v19 - this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v20 = v19 - this;
    v21 = v11;
  }

  if (v20 <= v21)
  {
    google::protobuf::internal::LogMessage::LogMessage(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1605);
    v22 = google::protobuf::internal::LogMessage::operator<<(v33, "CHECK failed: (uintptr_t((c).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v32, &v22->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v33[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(&this->__r_.__value_.__s + 23);
  }

  v23 = *a5;
  if ((v11 & 0x80) != 0)
  {
    v25 = this->__r_.__value_.__l.__size_;
    v24 = v23 - this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v24 = v23 - this;
    v25 = v11;
  }

  if (v24 <= v25)
  {
    google::protobuf::internal::LogMessage::LogMessage(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1606);
    v26 = google::protobuf::internal::LogMessage::operator<<(v33, "CHECK failed: (uintptr_t((d).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    google::protobuf::internal::LogFinisher::operator=(&v32, &v26->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v33[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v11 & 0x80) != 0)
  {
    v27 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v27 = v11;
  }

  std::string::resize(this, a2[1] + a3[1] + v27 + a4[1] + a5[1], 0);
  v28 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = this->__r_.__value_.__r.__words[0];
  }

  v29 = google::protobuf::Append4(v28 + v27, a2, a3, a4, a5);
  v30 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v30 & 0x8000000000000000) != 0)
  {
    v30 = this->__r_.__value_.__l.__size_;
  }

  if (v29 != v28 + v30)
  {
    google::protobuf::internal::LogMessage::LogMessage(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1611);
    v31 = google::protobuf::internal::LogMessage::operator<<(v33, "CHECK failed: (out) == (begin + result->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v32, &v31->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v33[0].__r_.__value_.__l.__data_);
  }
}

void sub_26D43C614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::GlobalReplaceSubstring(uint64_t a1, uint64_t a2, std::string *this)
{
  if (!this)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1616);
    v6 = google::protobuf::internal::LogMessage::operator<<(&v24, "CHECK failed: s != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!this->__r_.__value_.__l.__size_)
    {
      return 0;
    }
  }

  else if (!*(&this->__r_.__value_.__s + 23))
  {
    return 0;
  }

  v7 = *(a1 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      memset(&v24, 0, sizeof(v24));
      v8 = *a1;
      goto LABEL_12;
    }

    return 0;
  }

  if (!*(a1 + 23))
  {
    return 0;
  }

  memset(&v24, 0, sizeof(v24));
  v8 = a1;
LABEL_12:
  v9 = std::string::find(this, v8, 0, v7);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v11 = 0;
    LODWORD(v10) = 0;
    do
    {
      std::string::append(&v24, this, v11, v9 - v11);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(&v24, v13, (v13 + v12));
      v14 = *(a1 + 23);
      if (v14 >= 0)
      {
        v15 = *(a1 + 23);
      }

      else
      {
        v15 = *(a1 + 8);
      }

      if (v14 >= 0)
      {
        v16 = a1;
      }

      else
      {
        v16 = *a1;
      }

      v17 = v15 + v9;
      v18 = v15 + v9;
      v9 = std::string::find(this, v16, v18, v15);
      v10 = (v10 + 1);
      v11 = v17;
    }

    while (v9 != -1);
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::string::append(&v24, this, v18, size - v18);
    v20 = this->__r_.__value_.__r.__words[2];
    v21 = *&this->__r_.__value_.__l.__data_;
    *this = v24;
    *&v24.__r_.__value_.__l.__data_ = v21;
    v24.__r_.__value_.__r.__words[2] = v20;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_26D43C81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<std::__wrap_iter<char const*>,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_26D43C9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::CalculateBase64EscapedLen(google::protobuf *this, int a2)
{
  v2 = (4 * (this / 3));
  if (this % 3)
  {
    v3 = v2 | 3;
    v4 = v2 + 4;
    if (a2)
    {
      v3 = v2 + 4;
    }

    LODWORD(v2) = v2 | 2;
    if (a2)
    {
      LODWORD(v2) = v4;
    }

    if (this % 3 == 1)
    {
      v2 = v2;
    }

    else
    {
      v2 = v3;
    }
  }

  if (v2 < this)
  {
    google::protobuf::CalculateBase64EscapedLen();
  }

  return v2;
}

uint64_t google::protobuf::Base64UnescapeInternal(google::protobuf *this, const char *a2, uint64_t a3, char *a4, uint64_t a5, const signed __int8 *a6)
{
  if (!a3)
  {
    if (a2 >= 4)
    {
      v7 = 0;
      LODWORD(v24) = 0;
      while (*this)
      {
        if (!*(this + 1))
        {
          break;
        }

        if (!*(this + 2))
        {
          break;
        }

        v7 = (*(a5 + *(this + 1)) << 12) | (*(a5 + *this) << 18) | (*(a5 + *(this + 2)) << 6) | *(a5 + *(this + 3));
        if ((v7 & 0x80000000) != 0)
        {
          break;
        }

        LODWORD(v8) = 0;
        LODWORD(a2) = a2 - 4;
        this = (this + 4);
        v9 = -1;
LABEL_75:
        v25 = 0;
        LODWORD(v24) = v24 + 3;
        if (a2 <= 3)
        {
          goto LABEL_112;
        }
      }

      v27 = a2 + 1;
      v28 = (this + 1);
      v29 = (this + 2);
      v30 = a2 - 1;
      v31 = (this + 3);
      v32 = a2 - 2;
      v33 = (this + 4);
      while (1)
      {
        v17 = *(v28 - 1);
        v9 = *(a5 + v17);
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }

        this = v28;
        if ((v17 - 9) >= 5 && v17 != 32)
        {
          LODWORD(a2) = v27 - 2;
LABEL_101:
          v25 = 0;
LABEL_102:
          LODWORD(v8) = v17;
          goto LABEL_112;
        }

        v28 = (v28 + 1);
        --v27;
        LODWORD(a2) = a2 - 1;
        v29 = (v29 + 1);
        --v30;
        v31 = (v31 + 1);
        --v32;
        v33 = (v33 + 1);
        if (v27 <= 4)
        {
          LODWORD(a2) = 3;
          goto LABEL_101;
        }
      }

      while (1)
      {
        v35 = *(v29 - 1);
        v9 = *(a5 + v35);
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }

        v34 = a2;
        this = v29;
        if ((v35 - 9) < 5 || v35 == 32)
        {
          v29 = (v29 + 1);
          LODWORD(a2) = a2 - 1;
          --v30;
          v31 = (v31 + 1);
          --v32;
          v33 = (v33 + 1);
          if (a2 > 3)
          {
            continue;
          }
        }

        LODWORD(a2) = v34 - 2;
        v25 = 1;
        LODWORD(v8) = v35;
        goto LABEL_112;
      }

      while (1)
      {
        v21 = *(v31 - 1);
        v9 = *(a5 + v21);
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }

        v36 = v30;
        this = v31;
        if ((v21 - 9) < 5 || v21 == 32)
        {
          v31 = (v31 + 1);
          --v30;
          --v32;
          v33 = (v33 + 1);
          if (v30 > 2)
          {
            continue;
          }
        }

        LODWORD(a2) = v36 - 2;
        v25 = 2;
LABEL_109:
        LODWORD(v8) = v21;
        goto LABEL_112;
      }

      do
      {
        v37 = v32;
        this = v33;
        v8 = *(v33 - 1);
        v9 = *(a5 + v8);
        if ((v9 & 0x80000000) == 0)
        {
          LODWORD(a2) = v32 - 2;
          goto LABEL_75;
        }

        if ((v8 - 9) >= 5 && v8 != 32)
        {
          break;
        }

        v33 = (v33 + 1);
        --v32;
      }

      while (v32 > 1);
      LODWORD(a2) = v37 - 2;
      v25 = 3;
      goto LABEL_112;
    }

LABEL_77:
    v7 = 0;
    v25 = 0;
    LODWORD(v24) = 0;
    goto LABEL_78;
  }

  if (a2 < 4)
  {
    goto LABEL_77;
  }

  v6 = 0;
  v7 = 0;
  while (*this)
  {
    if (!*(this + 1))
    {
      break;
    }

    if (!*(this + 2))
    {
      break;
    }

    v7 = (*(a5 + *(this + 1)) << 12) | (*(a5 + *this) << 18) | (*(a5 + *(this + 2)) << 6) | *(a5 + *(this + 3));
    if ((v7 & 0x80000000) != 0)
    {
      break;
    }

    LODWORD(v8) = 0;
    LODWORD(a2) = a2 - 4;
    this = (this + 4);
    v9 = -1;
LABEL_37:
    v24 = v6 + 3;
    if (v6 + 3 > a4)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
    v26 = &v6[a3];
    *(v26 + 1) = bswap32(v7) >> 16;
    v7 >>= 16;
    *v26 = v7;
    v6 = v24;
    if (a2 <= 3)
    {
      goto LABEL_112;
    }
  }

  v10 = a2 + 1;
  v11 = (this + 1);
  v12 = (this + 2);
  v13 = a2 - 1;
  v14 = (this + 3);
  v15 = a2 - 2;
  v16 = (this + 4);
  while (1)
  {
    v17 = *(v11 - 1);
    v18 = *(a5 + v17);
    if ((v18 & 0x80000000) == 0)
    {
      break;
    }

    this = v11;
    if ((v17 - 9) >= 5 && v17 != 32)
    {
      LODWORD(a2) = v10 - 2;
      goto LABEL_97;
    }

    v11 = (v11 + 1);
    --v10;
    LODWORD(a2) = a2 - 1;
    v12 = (v12 + 1);
    --v13;
    v14 = (v14 + 1);
    --v15;
    v16 = (v16 + 1);
    if (v10 <= 4)
    {
      LODWORD(a2) = 3;
LABEL_97:
      v25 = 0;
      v9 = *(a5 + v17);
      LODWORD(v24) = v6;
      goto LABEL_102;
    }
  }

  while (1)
  {
    v20 = *(v12 - 1);
    v9 = *(a5 + v20);
    if ((v9 & 0x80000000) == 0)
    {
      break;
    }

    v19 = a2;
    this = v12;
    if ((v20 - 9) < 5 || v20 == 32)
    {
      v12 = (v12 + 1);
      LODWORD(a2) = a2 - 1;
      --v13;
      v14 = (v14 + 1);
      --v15;
      v16 = (v16 + 1);
      if (a2 > 3)
      {
        continue;
      }
    }

    LODWORD(a2) = v19 - 2;
    v25 = 1;
    LODWORD(v24) = v6;
    LODWORD(v8) = v20;
    v7 = v18;
    goto LABEL_112;
  }

  v7 = v9 | (v18 << 6);
  while (1)
  {
    v21 = *(v14 - 1);
    v9 = *(a5 + v21);
    if ((v9 & 0x80000000) == 0)
    {
      break;
    }

    v22 = v13;
    this = v14;
    if ((v21 - 9) < 5 || v21 == 32)
    {
      v14 = (v14 + 1);
      --v13;
      --v15;
      v16 = (v16 + 1);
      if (v13 > 2)
      {
        continue;
      }
    }

    LODWORD(a2) = v22 - 2;
    v25 = 2;
    LODWORD(v24) = v6;
    goto LABEL_109;
  }

  v7 = v9 | (v7 << 6);
  do
  {
    v23 = v15;
    this = v16;
    v8 = *(v16 - 1);
    v9 = *(a5 + v8);
    if ((v9 & 0x80000000) == 0)
    {
      v7 = v9 | (v7 << 6);
      LODWORD(a2) = v15 - 2;
      goto LABEL_37;
    }

    if ((v8 - 9) >= 5 && v8 != 32)
    {
      break;
    }

    v16 = (v16 + 1);
    --v15;
  }

  while (v15 > 1);
  LODWORD(a2) = v23 - 2;
  v25 = 3;
  LODWORD(v24) = v6;
LABEL_112:
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_113;
  }

  if (v8 == 61 || v8 == 46)
  {
    goto LABEL_122;
  }

  if (v8)
  {
    if ((v8 - 9) >= 5 && v8 != 32)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_113:
    if (v8 != 61 && v8 != 46)
    {
      goto LABEL_78;
    }

LABEL_122:
    v38 = a2 + 1;
    v39 = (this - 1);
    goto LABEL_123;
  }

LABEL_78:
  if (a2 >= 1)
  {
LABEL_79:
    v38 = a2;
    while (1)
    {
      v39 = this;
      LODWORD(a2) = v38 - 1;
      v41 = *this;
      this = (this + 1);
      v40 = v41;
      v42 = *(a5 + v41);
      if ((v42 & 0x80000000) == 0)
      {
        v44 = v42 | (v7 << 6);
        if (++v25 == 4)
        {
          v45 = v24 + 3;
          if (a3)
          {
            if (v45 > a4)
            {
              return 0xFFFFFFFFLL;
            }

            v25 = 0;
            v46 = v7 << 6;
            v24 = (a3 + v24);
            v24[2] = v44;
            v24[1] = BYTE1(v46);
            *v24 = BYTE2(v46);
            LODWORD(v24) = v45;
            v7 = 0;
          }

          else
          {
            v25 = 0;
            v7 = 0;
            LODWORD(v24) = v24 + 3;
          }
        }

        else
        {
          v7 = v44;
        }

        this = (v39 + 1);
        if (v38 < 2)
        {
          v39 = (v39 + 1);
          --v38;
          goto LABEL_123;
        }

        goto LABEL_79;
      }

      if ((v40 - 9) >= 5)
      {
        if (v40 > 45)
        {
          if (v40 == 46 || v40 == 61)
          {
            goto LABEL_123;
          }

          return 0xFFFFFFFFLL;
        }

        if (v40 != 32)
        {
          if (!v40)
          {
            --v38;
            goto LABEL_96;
          }

          return 0xFFFFFFFFLL;
        }
      }

      v43 = v38--;
      if (v43 <= 1)
      {
        v38 = 0;
LABEL_96:
        v39 = (v39 + 1);
        goto LABEL_123;
      }
    }
  }

  v38 = a2;
  v39 = this;
LABEL_123:
  if (v25 > 1)
  {
    if (v25 == 3)
    {
      v48 = v24 + 2;
      if (a3)
      {
        if (v48 > a4)
        {
          return 0xFFFFFFFFLL;
        }

        v49 = (a3 + v24);
        v49[1] = v7 >> 2;
        *v49 = v7 >> 10;
      }

      LODWORD(result) = -2;
      LODWORD(v24) = v48;
    }

    else
    {
      if (a3)
      {
        if (v24 >= a4)
        {
          return 0xFFFFFFFFLL;
        }

        *(a3 + v24) = v7 >> 4;
      }

      LODWORD(v24) = v24 + 1;
      LODWORD(result) = -3;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (v25)
    {
      return result;
    }
  }

  if (v38 >= 1)
  {
    v50 = 0;
    v51 = v38 + 1;
    while (1)
    {
      v52 = *v39;
      if (v52 > 0x3D)
      {
        return 0xFFFFFFFFLL;
      }

      if (((1 << v52) & 0x100003E00) == 0)
      {
        if (((1 << v52) & 0x2000400000000000) == 0)
        {
          if (!*v39)
          {
            goto LABEL_144;
          }

          return 0xFFFFFFFFLL;
        }

        ++v50;
      }

      v39 = (v39 + 1);
      if (--v51 <= 1)
      {
        goto LABEL_144;
      }
    }
  }

  v50 = 0;
LABEL_144:
  if ((v50 & result) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v24;
  }
}

BOOL google::protobuf::Base64UnescapeInternal(google::protobuf *a1, const char *a2, std::string *this, uint64_t a4)
{
  v8 = (a2 - a2 / 4);
  std::string::resize(this, v8, 0);
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      v10 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v10 = this;
    if (*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = google::protobuf::Base64UnescapeInternal(a1, a2, v10, v8, a4, v9);
  v12 = v11;
  if (v11 < 0)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else
  {
    if (v11 > v8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2073);
      v13 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (len) <= (dest_len): ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    std::string::erase(this, v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v12 >= 0;
}

void sub_26D43D20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Base64EscapeInternal(google::protobuf *this, const unsigned __int8 *a2, _BYTE *a3, char *a4, uint64_t a5, const char *a6)
{
  if (a2 < 1 || 3 * a4 < 4 * a2)
  {
    return 0;
  }

  v7 = a3;
  v8 = this + a2;
  for (i = a3; this < (v8 - 3); i += 4)
  {
    v10 = *this;
    this = (this + 3);
    v11 = bswap32(v10);
    *i = *(a5 + (v11 >> 26));
    i[1] = *(a5 + ((v11 >> 20) & 0x3F));
    i[2] = *(a5 + ((v11 >> 14) & 0x3F));
    i[3] = *(a5 + ((v11 >> 8) & 0x3F));
  }

  v12 = a3 + a4 - i;
  v13 = v8 - this;
  if (v8 - this > 1)
  {
    if (v13 == 2)
    {
      if (v12 < 3)
      {
        return 0;
      }

      v20 = bswap32(*this);
      *i = *(a5 + (WORD1(v20) >> 10));
      i[1] = *(a5 + ((v20 >> 20) & 0x3F));
      i[2] = *(a5 + ((v20 >> 14) & 0x3CLL));
      if (!a6)
      {
        LODWORD(i) = i + 3;
        return (i - v7);
      }

      if (v12 == 3)
      {
        return 0;
      }

      v17 = 61;
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_19;
      }

      if (v12 < 4)
      {
        return 0;
      }

      v15 = *this;
      v16 = bswap32(*(this + 1));
      *i = *(a5 + (v15 >> 2));
      i[1] = *(a5 + (((__PAIR64__(v15, v16) >> 16) & 0x3F000) >> 12));
      i[2] = *(a5 + ((v16 >> 22) & 0x3F));
      v17 = *(a5 + ((v16 >> 16) & 0x3F));
    }

    i[3] = v17;
    goto LABEL_18;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      if (v12 >= 2)
      {
        v14 = *this;
        *i = *(a5 + (v14 >> 2));
        i[1] = *(a5 + 16 * (v14 & 3));
        if (!a6)
        {
          LODWORD(i) = i + 2;
          return (i - v7);
        }

        if (v12 >= 4)
        {
          *(i + 1) = 15677;
LABEL_18:
          LODWORD(i) = i + 4;
          return (i - v7);
        }
      }

      return 0;
    }

LABEL_19:
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2181);
    v18 = google::protobuf::internal::LogMessage::operator<<(v22, "Logic problem? szsrc = ");
    v19 = google::protobuf::internal::LogMessage::operator<<(v18, v13);
    google::protobuf::internal::LogFinisher::operator=(&v21, &v19->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  return (i - v7);
}

void sub_26D43D43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::Base64EscapeInternal(google::protobuf *a1, google::protobuf *this, uint64_t a3, const char *a4, uint64_t a5)
{
  v10 = google::protobuf::CalculateBase64EscapedLen(this, a4);
  std::string::resize(a3, v10, 0);
  v11 = *(a3 + 23);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = *(a3 + 8);
    if (v11)
    {
      v12 = *a3;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (*(a3 + 23))
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = google::protobuf::Base64EscapeInternal(a1, this, v12, v11, a5, a4);
  if (v10 != v13)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2213);
    v14 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (calc_escaped_size) == (escaped_len): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  return std::string::erase(a3, v13, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_26D43D570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::EncodeAsUTF8Char(unint64_t this, void *a2, char *a3)
{
  if (this >= 0x80)
  {
    if (WORD1(this))
    {
      v5 = (16 * this) & 0x3F0000 | this & 0x3F | (((this >> 18) & 7) << 24) | (((this >> 6) & 0x3F) << 8) | 0xF0808080;
    }

    else
    {
      v5 = (4 * this) & 0x3F00 | this & 0x3F | (this >> 12 << 16) | 0xE08080;
    }

    if (WORD1(this))
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    v7 = this > 0x7FF;
    if (this <= 0x7FF)
    {
      this = (4 * this) & 0x1F00 | this & 0x3F | 0xC080;
    }

    else
    {
      this = v5;
    }

    if (v7)
    {
      v4 = v6;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  v9 = google::protobuf::ghtonl(this);
  memcpy(a2, &v9 - v4 + 4, v4);
  return v4;
}

uint64_t google::protobuf::UTF8FirstLetterNumBytes(google::protobuf *this, const char *a2)
{
  if (a2)
  {
    return google::protobuf::kUTF8LenTbl[*this];
  }

  else
  {
    return 0;
  }
}

void google::protobuf::CleanStringLineEndings(uint64_t a1, std::string *this, int a3)
{
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      goto LABEL_3;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
LABEL_3:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    google::protobuf::CleanStringLineEndings(&__p, a3);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(this, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  std::string::append(this, v6, v7);

  google::protobuf::CleanStringLineEndings(this, a3);
}

void sub_26D43D7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::CleanStringLineEndings(std::string *this, int a2)
{
  v2 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v4 = this;
  if (size < 0)
  {
    v4 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if (v6)
      {
        v8 = v4 + v7;
        v9 = v4->__r_.__value_.__s.__data_[v7];
        if (v9 == 10)
        {
          goto LABEL_18;
        }

        if (v9 == 13)
        {
          v4->__r_.__value_.__s.__data_[v5++] = 10;
LABEL_17:
          v6 = 1;
          goto LABEL_26;
        }

        v4->__r_.__value_.__s.__data_[v5++] = 10;
      }

      else
      {
        v8 = v4 + v7;
        if (v7 + 8 >= size)
        {
          LOBYTE(v10) = *v8;
        }

        else
        {
          v10 = *v8;
          if ((~((0xE0E0E0E0E0E0E0DLL - *v8) | *v8) & 0x8080808080808080) == 0)
          {
            if (v5 != v7)
            {
              *(v4->__r_.__value_.__r.__words + v5) = v10;
            }

            v6 = 0;
            v5 += 8;
            v7 += 8;
            goto LABEL_27;
          }
        }

        if (v10 == 10)
        {
LABEL_18:
          if (v7 != v5)
          {
            v4->__r_.__value_.__s.__data_[v5] = 10;
          }

          v6 = 0;
          goto LABEL_25;
        }

        if (v10 == 13)
        {
          goto LABEL_17;
        }
      }

      if (v7 != v5)
      {
        v6 = 0;
        v4->__r_.__value_.__s.__data_[v5] = *v8;
LABEL_25:
        ++v5;
        goto LABEL_26;
      }

      v6 = 0;
      v5 = v7 + 1;
LABEL_26:
      ++v7;
LABEL_27:
      if (v7 >= size)
      {
        if ((v6 & 1) == 0 && (!a2 || v5 < 1 || v4->__r_.__value_.__s.__data_[v5 - 1] == 10))
        {
          goto LABEL_33;
        }

        std::string::resize(this, v5 + 1, 0);
        if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
        {
          v2 = v2->__r_.__value_.__r.__words[0];
        }

        v2->__r_.__value_.__s.__data_[v5] = 10;
        return;
      }
    }
  }

  v5 = 0;
LABEL_33:
  if (v5 < size)
  {

    std::string::resize(this, v5, 0);
  }
}

google::protobuf::StringPiece *google::protobuf::StringPiece::StringPiece(google::protobuf::StringPiece *this, const char *__s)
{
  *this = __s;
  *(this + 1) = 0;
  if (__s)
  {
    v3 = strlen(__s);
    v5 = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v3, "size_t to int conversion", v4);
    }

    *(this + 1) = v5;
  }

  return this;
}

std::allocator<std::string> **std::back_insert_iterator<std::vector<std::string>>::operator=[abi:ne200100](std::allocator<std::string> **a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 1);
  v6 = *(*a1 + 2);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v20.__end_cap_.__value_ = *a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 8) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20.__first_ = v17;
    v20.__begin_ = v17;
    *(v4 + 8) = v8;
    v20.__end_ = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20.__end_cap_.__value_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 8) = v8;
  return a1;
}

uint64_t google::protobuf::safe_parse_positive_int<int>(unsigned __int8 *a1, int *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 214748364 || (v7 = 10 * v4, v7 > -2147483601 - v6))
      {
        result = 0;
        v4 = 0x7FFFFFFF;
        goto LABEL_14;
      }

      v4 = v7 + v6 - 48;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t google::protobuf::safe_parse_negative_int<int>(unsigned __int8 *a1, int *a2)
{
  v2 = a1[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3)
  {
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = a1[23];
  }

  if (v5 < 1)
  {
    v6 = 0;
LABEL_15:
    result = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v4[v5];
    while (1)
    {
      v8 = *v4;
      if ((v8 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v6 < -214748364 || (v9 = 10 * v6, v9 < v8 + 2147483600))
      {
        result = 0;
        v6 = 0x80000000;
        goto LABEL_18;
      }

      v6 = v9 - v8 + 48;
      if (++v4 >= v7)
      {
        goto LABEL_15;
      }
    }

    result = 0;
  }

LABEL_18:
  *a2 = v6;
  return result;
}

uint64_t google::protobuf::safe_parse_positive_int<unsigned int>(unsigned __int8 *a1, unsigned int *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 0x19999999 || (v7 = 10 * v4, v7 > 47 - v6))
      {
        result = 0;
        v4 = -1;
        goto LABEL_14;
      }

      v4 = v7 + v6 - 48;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t google::protobuf::safe_parse_positive_int<long long>(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 0xCCCCCCCCCCCCCCCLL || (v7 = 10 * v4, v8 = v6 & 0xF, v7 > (v8 ^ 0x7FFFFFFFFFFFFFFFLL)))
      {
        result = 0;
        v4 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_14;
      }

      v4 = v7 + v8;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t google::protobuf::safe_parse_negative_int<long long>(unsigned __int8 *a1, int64_t *a2)
{
  v2 = a1[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3)
  {
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = a1[23];
  }

  if (v5 < 1)
  {
    v6 = 0;
LABEL_15:
    result = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v4[v5];
    while (1)
    {
      v8 = *v4;
      if ((v8 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v6 < 0xF333333333333334 || (v9 = 10 * v6, v9 < (v8 & 0xF | 0x8000000000000000)))
      {
        result = 0;
        v6 = 0x8000000000000000;
        goto LABEL_18;
      }

      v6 = v9 - (v8 & 0xF);
      if (++v4 >= v7)
      {
        goto LABEL_15;
      }
    }

    result = 0;
  }

LABEL_18:
  *a2 = v6;
  return result;
}

uint64_t google::protobuf::safe_parse_positive_int<unsigned long long>(unsigned __int8 *a1, unint64_t *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 0x1999999999999999 || (v7 = 5 * v4, v8 = v6 & 0xF, __CFADD__(v8, 2 * v7)))
      {
        result = 0;
        v4 = -1;
        goto LABEL_14;
      }

      v4 = 2 * v7 + v8;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

void google::protobuf::StringPiece::operator[]()
{
  __assert_rtn("operator[]", "stringpiece.h", 277, "i < length_");
}

{
  __assert_rtn("operator[]", "stringpiece.h", 276, "0 <= i");
}

uint64_t google::protobuf::internal::WireFormatLite::SkipField(char **this, google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  if (a2 < 8)
  {
    return 0;
  }

  v4 = a2;
  v3 = 0;
  v6 = v4 & 7;
  if (v6 <= 1)
  {
    if ((v4 & 7) == 0)
    {
      v16 = *this;
      if (*this >= this[1] || *v16 < 0)
      {
        google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
        return v3;
      }

      v7 = (v16 + 1);
      goto LABEL_29;
    }

    if (v6 != 1)
    {
      return v3;
    }

    v20 = 0;
    if ((*(this + 2) - *this) >= 8)
    {
      v7 = (*this + 8);
      goto LABEL_29;
    }

    return google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20);
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v13 = *(this + 13);
      v14 = __OFSUB__(v13--, 1);
      *(this + 13) = v13;
      if (v13 < 0 == v14 && google::protobuf::internal::WireFormatLite::SkipMessage(this, 0, a3))
      {
        v15 = *(this + 13);
        if (v15 < *(this + 14))
        {
          *(this + 13) = v15 + 1;
        }

        return *(this + 8) == (v4 & 0xFFFFFFF8 | 4);
      }

      return 0;
    }

    if (v6 != 5)
    {
      return v3;
    }

    v19 = 0;
    if ((*(this + 2) - *this) >= 4)
    {
      v7 = (*this + 4);
LABEL_29:
      *this = v7;
      return 1;
    }

    return google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v19);
  }

  v9 = *this;
  v8 = this[1];
  if (*this >= v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9;
    if ((*v9 & 0x80000000) == 0)
    {
      v11 = v9 + 1;
      *this = v11;
      goto LABEL_16;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v10);
  if ((Varint32Fallback & 0x8000000080000000) != 0)
  {
    return 0;
  }

  v10 = Varint32Fallback;
  v11 = *this;
  v8 = this[1];
LABEL_16:
  if (v10 <= v8 - v11)
  {
    v7 = &v11[v10];
    goto LABEL_29;
  }

  return google::protobuf::io::CodedInputStream::SkipFallback(this, v10, v8 - v11);
}

uint64_t google::protobuf::internal::WireFormatLite::SkipMessage(char **this, google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    v4 = *this;
    if (*this >= this[1])
    {
      LODWORD(TagFallback) = 0;
    }

    else
    {
      TagFallback = *v4;
      if ((*v4 & 0x80000000) == 0)
      {
        *this = v4 + 1;
        goto LABEL_6;
      }
    }

    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
LABEL_6:
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      v6 = (TagFallback & 7) == 4;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
  }

  while (!v6 && (google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return v7;
}

BOOL google::protobuf::internal::WireFormatLite::SkipField(unint64_t **this, google::protobuf::io::CodedInputStream *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (a2 < 8)
  {
    return 0;
  }

  v6 = a2;
  v4 = 0;
  v8 = a2 & 7;
  if (v8 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      if (v8 != 1)
      {
        return v4;
      }

      __p.__r_.__value_.__r.__words[0] = 0;
      v12 = *this;
      if ((*(this + 2) - *this) < 8)
      {
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__p))
        {
          return 0;
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = *v12;
        *this = v12 + 1;
      }

      v13 = *(a3 + 8);
      if (*a3 <= v13)
      {
        v13 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v13);
      }

      if (v6 > 0x7F)
      {
        *v13 = v6 | 0x80;
        v23 = v6 >> 7;
        if (v6 >> 14)
        {
          v14 = v13 + 2;
          do
          {
            *(v14 - 1) = v23 | 0x80;
            v38 = v23 >> 7;
            ++v14;
            v39 = v23 >> 14;
            v23 >>= 7;
          }

          while (v39);
          *(v14 - 1) = v38;
        }

        else
        {
          v13[1] = v23;
          v14 = v13 + 2;
        }
      }

      else
      {
        *v13 = v6;
        v14 = v13 + 1;
      }

      *(a3 + 8) = v14;
      v40 = __p.__r_.__value_.__r.__words[0];
      if (*a3 <= v14)
      {
        v14 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v14);
      }

      *v14 = v40;
      v37 = v14 + 8;
      goto LABEL_77;
    }

    v19 = *this;
    if (*this >= this[1] || (v20 = *v19, (v20 & 0x8000000000000000) != 0))
    {
      Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      v20 = Varint64Fallback;
    }

    else
    {
      *this = (v19 + 1);
    }

    v26 = *(a3 + 8);
    if (*a3 <= v26)
    {
      v26 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v26);
    }

    if (v6 > 0x7F)
    {
      *v26 = v6 | 0x80;
      v28 = v6 >> 7;
      if (v6 >> 14)
      {
        v27 = v26 + 2;
        do
        {
          *(v27 - 1) = v28 | 0x80;
          v41 = v28 >> 7;
          ++v27;
          v42 = v28 >> 14;
          v28 >>= 7;
        }

        while (v42);
        *(v27 - 1) = v41;
      }

      else
      {
        v26[1] = v28;
        v27 = v26 + 2;
      }
    }

    else
    {
      *v26 = v6;
      v27 = v26 + 1;
    }

    *(a3 + 8) = v27;
    if (*a3 <= v27)
    {
      v27 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v27);
    }

    if (v20 > 0x7F)
    {
      *v27 = v20 | 0x80;
      v43 = v20 >> 7;
      if (v20 >> 14)
      {
        v37 = v27 + 2;
        do
        {
          *(v37 - 1) = v43 | 0x80;
          v44 = v43 >> 7;
          ++v37;
          v45 = v43 >> 14;
          v43 >>= 7;
        }

        while (v45);
        *(v37 - 1) = v44;
      }

      else
      {
        v27[1] = v43;
        v37 = v27 + 2;
      }
    }

    else
    {
      *v27 = v20;
      v37 = v27 + 1;
    }

    goto LABEL_77;
  }

  if (v8 == 2)
  {
    v15 = *this;
    if (*this >= this[1])
    {
      LODWORD(Varint32Fallback) = 0;
    }

    else
    {
      Varint32Fallback = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        *this = (v15 + 1);
LABEL_81:
        v47 = *(a3 + 8);
        if (*a3 <= v47)
        {
          v61 = Varint32Fallback;
          v62 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v47);
          Varint32Fallback = v61;
          v47 = v62;
        }

        if (v6 > 0x7F)
        {
          *v47 = v6 | 0x80;
          v49 = v6 >> 7;
          if (v6 >> 14)
          {
            v48 = v47 + 2;
            do
            {
              *(v48 - 1) = v49 | 0x80;
              v50 = v49 >> 7;
              ++v48;
              v51 = v49 >> 14;
              v49 >>= 7;
            }

            while (v51);
            *(v48 - 1) = v50;
          }

          else
          {
            v47[1] = v49;
            v48 = v47 + 2;
          }
        }

        else
        {
          *v47 = v6;
          v48 = v47 + 1;
        }

        *(a3 + 8) = v48;
        if (*a3 <= v48)
        {
          v63 = Varint32Fallback;
          v64 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v48);
          Varint32Fallback = v63;
          v48 = v64;
        }

        if (Varint32Fallback > 0x7F)
        {
          *v48 = Varint32Fallback | 0x80;
          v53 = Varint32Fallback >> 7;
          if (Varint32Fallback >> 14)
          {
            v52 = v48 + 2;
            do
            {
              *(v52 - 1) = v53 | 0x80;
              v54 = v53 >> 7;
              ++v52;
              v55 = v53 >> 14;
              v53 >>= 7;
            }

            while (v55);
            *(v52 - 1) = v54;
          }

          else
          {
            v48[1] = v53;
            v52 = v48 + 2;
          }
        }

        else
        {
          *v48 = Varint32Fallback;
          v52 = v48 + 1;
        }

        *(a3 + 8) = v52;
        memset(&__p, 0, sizeof(__p));
        v4 = google::protobuf::io::CodedInputStream::ReadString(this, &__p, Varint32Fallback);
        if (v4)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = __p.__r_.__value_.__r.__words[1];
          }

          v58 = *(a3 + 8);
          if (*a3 - v58 < v57)
          {
            v60 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, p_p, v57, *(a3 + 8));
          }

          else
          {
            v59 = v57;
            memcpy(*(a3 + 8), p_p, v57);
            v60 = (v58 + v59);
          }

          *(a3 + 8) = v60;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return v4;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, Varint32Fallback);
    if (Varint32Fallback < 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  if (v8 != 3)
  {
    if (v8 != 5)
    {
      return v4;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    v9 = *this;
    if ((*(this + 2) - *this) >= 4)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = *v9;
      *this = (v9 + 4);
LABEL_9:
      v10 = *(a3 + 8);
      if (*a3 <= v10)
      {
        v10 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v10);
      }

      if (v6 > 0x7F)
      {
        *v10 = v6 | 0x80;
        v22 = v6 >> 7;
        if (v6 >> 14)
        {
          v11 = v10 + 2;
          do
          {
            *(v11 - 1) = v22 | 0x80;
            v34 = v22 >> 7;
            ++v11;
            v35 = v22 >> 14;
            v22 >>= 7;
          }

          while (v35);
          *(v11 - 1) = v34;
        }

        else
        {
          v10[1] = v22;
          v11 = v10 + 2;
        }
      }

      else
      {
        *v10 = v6;
        v11 = v10 + 1;
      }

      *(a3 + 8) = v11;
      data = __p.__r_.__value_.__l.__data_;
      if (*a3 <= v11)
      {
        v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v11);
      }

      *v11 = data;
      v37 = v11 + 4;
LABEL_77:
      *(a3 + 8) = v37;
      return 1;
    }

    if (google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &__p))
    {
      goto LABEL_9;
    }

    return 0;
  }

  v17 = *(a3 + 8);
  if (*a3 <= v17)
  {
    v17 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v17);
  }

  if (v6 > 0x7F)
  {
    *v17 = v6 | 0x80;
    v21 = v6 >> 7;
    if (v6 >> 14)
    {
      v18 = v17 + 2;
      do
      {
        *(v18 - 1) = v21 | 0x80;
        v29 = v21 >> 7;
        ++v18;
        v30 = v21 >> 14;
        v21 >>= 7;
      }

      while (v30);
      *(v18 - 1) = v29;
    }

    else
    {
      v17[1] = v21;
      v18 = v17 + 2;
    }
  }

  else
  {
    *v17 = v6;
    v18 = v17 + 1;
  }

  *(a3 + 8) = v18;
  v31 = *(this + 13);
  v32 = __OFSUB__(v31--, 1);
  *(this + 13) = v31;
  if (v31 < 0 != v32 || !google::protobuf::internal::WireFormatLite::SkipMessage(this, a3, a3, a4))
  {
    return 0;
  }

  v33 = *(this + 13);
  if (v33 < *(this + 14))
  {
    *(this + 13) = v33 + 1;
  }

  return *(this + 8) == (v6 & 0xFFFFFFF8 | 4);
}

void sub_26D43E730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::WireFormatLite::SkipMessage(char **this, char **a2, google::protobuf::io::CodedOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  while (1)
  {
    v6 = *this;
    if (*this >= this[1])
    {
      LODWORD(TagFallback) = 0;
    }

    else
    {
      TagFallback = *v6;
      if ((*v6 & 0x80000000) == 0)
      {
        *this = v6 + 1;
        goto LABEL_6;
      }
    }

    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
LABEL_6:
    *(this + 8) = TagFallback;
    v8 = TagFallback == 0;
    if (!TagFallback)
    {
      return v8;
    }

    if ((TagFallback & 7) == 4)
    {
      break;
    }

    if ((google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a2, a4) & 1) == 0)
    {
      return v8;
    }
  }

  v9 = a2[8];
  if (*a2 <= v9)
  {
    v9 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a2, v9);
  }

  if (TagFallback > 0x7F)
  {
    *v9 = TagFallback | 0x80;
    v11 = TagFallback >> 7;
    if (TagFallback >> 14)
    {
      v10 = v9 + 2;
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
      v9[1] = v11;
      v10 = v9 + 2;
    }
  }

  else
  {
    *v9 = TagFallback;
    v10 = v9 + 1;
  }

  a2[8] = v10;
  return 1;
}

char *google::protobuf::internal::CodedOutputStreamFieldSkipper::SkipUnknownEnum(char *this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 1);
  v7 = v6[8];
  if (*v6 <= v7)
  {
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(*(this + 1), v7);
    v7 = this;
  }

  if (a2 > 0x7F)
  {
    *v7 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v7 + 2;
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
      v7[1] = v9;
      v8 = v7 + 2;
    }
  }

  else
  {
    *v7 = a2;
    v8 = v7 + 1;
  }

  v6[8] = v8;
  v12 = *(v5 + 1);
  v13 = *(v12 + 8);
  if (*v12 <= v13)
  {
    this = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(v12, v13);
    v13 = this;
  }

  if (a3 > 0x7F)
  {
    *v13 = a3 | 0x80;
    v15 = a3 >> 7;
    if (a3 >> 14)
    {
      v14 = v13 + 2;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      v13[1] = v15;
      v14 = v13 + 2;
    }
  }

  else
  {
    *v13 = a3;
    v14 = v13 + 1;
  }

  *(v12 + 8) = v14;
  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::ReadPackedEnumPreserveUnknowns(char **this, unsigned int a2, unsigned int (*a3)(uint64_t), char **a4, int *a5)
{
  v10 = *this;
  if (*this >= this[1])
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10;
    if ((*v10 & 0x80000000) == 0)
    {
      *this = v10 + 1;
      goto LABEL_6;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v11);
  v11 = Varint32Fallback;
  if (Varint32Fallback < 0)
  {
    return 0;
  }

LABEL_6:
  v30 = google::protobuf::io::CodedInputStream::PushLimit(this, v11);
  if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    v13 = 8 * a2;
    v14 = (8 * a2) | 0x80;
    v15 = (a2 >> 4) & 0x1FFFFFF;
    while (1)
    {
      v16 = *this;
      if (*this >= this[1])
      {
        break;
      }

      v17 = *v16;
      if (*v16 < 0)
      {
        goto LABEL_12;
      }

      *this = v16 + 1;
LABEL_13:
      if (a3 && !a3(v17))
      {
        v20 = a4[8];
        if (*a4 <= v20)
        {
          v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a4[8]);
        }

        if (v13 > 0x7F)
        {
          *v20 = v14;
          if (v13 >= 0x4000)
          {
            v21 = v20 + 2;
            v22 = v15;
            do
            {
              *(v21 - 1) = v22 | 0x80;
              v23 = v22 >> 7;
              ++v21;
              v24 = v22 >> 14;
              v22 >>= 7;
            }

            while (v24);
            *(v21 - 1) = v23;
          }

          else
          {
            v20[1] = v13 >> 7;
            v21 = v20 + 2;
          }
        }

        else
        {
          v21 = v20 + 1;
          *v20 = v13;
        }

        a4[8] = v21;
        if (*a4 <= v21)
        {
          v21 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v21);
        }

        if (v17 > 0x7F)
        {
          *v21 = v17 | 0x80;
          v26 = v17 >> 7;
          if (v17 >> 14)
          {
            v25 = v21 + 2;
            do
            {
              *(v25 - 1) = v26 | 0x80;
              v27 = v26 >> 7;
              ++v25;
              v28 = v26 >> 14;
              v26 >>= 7;
            }

            while (v28);
            *(v25 - 1) = v27;
          }

          else
          {
            v21[1] = v26;
            v25 = v21 + 2;
          }
        }

        else
        {
          *v21 = v17;
          v25 = v21 + 1;
        }

        a4[8] = v25;
      }

      else
      {
        v18 = *a5;
        if (v18 == a5[1])
        {
          v19 = v18 + 1;
          google::protobuf::RepeatedField<int>::Reserve(a5, v18 + 1);
          *(google::protobuf::RepeatedField<int>::elements(a5) + 4 * v18) = v17;
        }

        else
        {
          *(google::protobuf::RepeatedField<int>::elements(a5) + 4 * v18) = v17;
          v19 = v18 + 1;
        }

        *a5 = v19;
      }

      if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v17) = 0;
LABEL_12:
    v17 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v17);
    if (v17 < 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

LABEL_39:
  google::protobuf::io::CodedInputStream::PopLimit(this, v30);
  return 1;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteFloatArray(google::protobuf::internal::WireFormatLite *this, const float *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = *(a3 + 8);
  v6 = 4 * a2;
  if (*a3 - v5 < v6)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, this, v6, v5);
  }

  else
  {
    memcpy(*(a3 + 8), this, v6);
    result = &v5[v6];
  }

  *(a3 + 8) = result;
  return result;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteDoubleArray(google::protobuf::internal::WireFormatLite *this, const double *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = *(a3 + 8);
  v6 = 8 * a2;
  if (*a3 - v5 < v6)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, this, v6, v5);
  }

  else
  {
    memcpy(*(a3 + 8), this, v6);
    result = &v5[v6];
  }

  *(a3 + 8) = result;
  return result;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteBoolArray(google::protobuf::internal::WireFormatLite *this, const BOOL *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = *(a3 + 8);
  if (*a3 - v5 < a2)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, this, a2, *(a3 + 8));
  }

  else
  {
    v6 = a2;
    memcpy(*(a3 + 8), this, a2);
    result = (v5 + v6);
  }

  *(a3 + 8) = result;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteInt32(char *result, unsigned int a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * result;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
    v6 = result;
  }

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

  *(this + 8) = v7;
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  if (a2 > 0x7F)
  {
    *v7 = a2 | 0x80;
    v12 = a2 >> 7;
    if (a2 >> 14)
    {
      v11 = v7 + 2;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v11;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v11 - 1) = v13;
    }

    else
    {
      v7[1] = v12;
      v11 = v7 + 2;
    }
  }

  else
  {
    *v7 = a2;
    v11 = v7 + 1;
  }

  *(this + 8) = v11;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteInt64(char *result, unint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * result;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
    v6 = result;
  }

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

  *(this + 8) = v7;
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  if (a2 > 0x7F)
  {
    *v7 = a2 | 0x80;
    v12 = a2 >> 7;
    if (a2 >> 14)
    {
      v11 = v7 + 2;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v11;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v11 - 1) = v13;
    }

    else
    {
      v7[1] = v12;
      v11 = v7 + 2;
    }
  }

  else
  {
    *v7 = a2;
    v11 = v7 + 1;
  }

  *(this + 8) = v11;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteUInt32(char *result, unsigned int a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * result;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
    v6 = result;
  }

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

  *(this + 8) = v7;
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  if (a2 > 0x7F)
  {
    *v7 = a2 | 0x80;
    v12 = a2 >> 7;
    if (a2 >> 14)
    {
      v11 = v7 + 2;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v11;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v11 - 1) = v13;
    }

    else
    {
      v7[1] = v12;
      v11 = v7 + 2;
    }
  }

  else
  {
    *v7 = a2;
    v11 = v7 + 1;
  }

  *(this + 8) = v11;
  return result;
}