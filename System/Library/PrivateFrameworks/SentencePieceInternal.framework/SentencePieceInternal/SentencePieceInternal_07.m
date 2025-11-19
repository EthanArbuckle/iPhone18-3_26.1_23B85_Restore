uint64_t google::protobuf::RepeatedField<int>::at(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_26569E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26569E228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Set(_DWORD *a1, int a2, int *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v8 = *a3;
  result = google::protobuf::RepeatedField<int>::elements(a1);
  *(result + 4 * a2) = v8;
  return result;
}

void sub_26569E318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Add(int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<int>::Reserve(a1, v3 + 1);
    result = google::protobuf::RepeatedField<int>::elements(a1);
    *(result + 4 * v3) = v4;
  }

  else
  {
    result = google::protobuf::RepeatedField<int>::elements(a1);
    *(result + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t google::protobuf::RepeatedField<int>::Add(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<int>::Reserve(a1, v2 + 1);
  }

  result = google::protobuf::RepeatedField<int>::elements(a1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

void google::protobuf::RepeatedField<int>::RemoveLast(int *a1)
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

void sub_26569E474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::ExtractSubrange(int *a1, int a2, int a3, _DWORD *a4)
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
      *a4++ = *google::protobuf::RepeatedField<int>::Get(a1, v13++);
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *a1;
    while (v10 < v14)
    {
      v15 = google::protobuf::RepeatedField<int>::Get(a1, v10);
      google::protobuf::RepeatedField<int>::Set(a1, v6, v15);
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

void sub_26569E630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Truncate(int *a1, int a2)
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

void sub_26569E6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::MergeFrom(int *a1, int *a2)
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
    google::protobuf::RepeatedField<int>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<int>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_26569E804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::AddAlreadyReserved(int *a1, int *a2)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  result = google::protobuf::RepeatedField<int>::elements(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 4 * v7) = v5;
  return result;
}

void sub_26569E8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::AddAlreadyReserved(int *a1)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v3 = google::protobuf::RepeatedField<int>::elements(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 4 * v4;
}

void sub_26569E954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Resize(int *a1, int a2, int *a3)
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
    google::protobuf::RepeatedField<int>::Reserve(a1, a2);
    v7 = google::protobuf::RepeatedField<int>::elements(a1) + 4 * *a1;
    v8 = (google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2 - v7) >> 2;
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *a3;
      v11 = vdupq_n_s64(v8 - 1);
      v12 = (v8 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v7 + 8);
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_2656B9670)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v10;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = v10;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_2656B9660)))).i32[1])
        {
          *v13 = v10;
          v13[1] = v10;
        }

        v9 += 4;
        v13 += 4;
      }

      while (v12 != v9);
    }
  }

  *a1 = a2;
}

void sub_26569EAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Swap(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      google::protobuf::RepeatedField<int>::InternalSwap(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      google::protobuf::RepeatedField<int>::MergeFrom(&v9, a1);
      *a1 = 0;
      google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
      if (&v9 != a2)
      {
        google::protobuf::RepeatedField<int>::InternalSwap(a2, &v9);
      }

      google::protobuf::RepeatedField<int>::~RepeatedField(&v9);
    }
  }
}

double google::protobuf::RepeatedField<int>::UnsafeArenaSwap(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = google::protobuf::RepeatedField<int>::InternalSwap(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<int>::SwapElements(uint64_t a1, int a2, int a3)
{
  v6 = google::protobuf::RepeatedField<int>::elements(a1);
  result = google::protobuf::RepeatedField<int>::elements(a1);
  v8 = *(v6 + 4 * a2);
  *(v6 + 4 * a2) = *(result + 4 * a3);
  *(result + 4 * a3) = v8;
  return result;
}

uint64_t google::protobuf::RepeatedField<int>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 4 * v1 + 8;
  }
}

unint64_t google::protobuf::RepeatedField<int>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4 * v1 + 8;
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

void sub_26569ED18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 2;
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

  return *(a1 + 1) + 4 * (v6 >> 2);
}

void sub_26569EE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 4 * v6);
    v8 = v4 + 4 * (v5 >> 2);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 4 * (v5 >> 2)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 2;
    if (v6 < v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) <= (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 2);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 4 * v12;
}

void sub_26569EF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, v4);
    google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<unsigned int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_26569F02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<unsigned int>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_26569F1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_26569F298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2;
}

void sub_26569F370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2;
}

void sub_26569F450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *google::protobuf::RepeatedField<unsigned int>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<unsigned int>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<unsigned int>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<unsigned int>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<unsigned int>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<unsigned int>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<unsigned int>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<unsigned int>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<unsigned int>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<unsigned int>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<unsigned int>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<unsigned int>::InternalSwap(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 4))
  {
    v5 = (google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<unsigned int>::elements(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_26569F6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<unsigned int>::operator=(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<unsigned int>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      google::protobuf::RepeatedField<unsigned int>::InternalSwap(a1, a2);
    }

    else
    {
      *a1 = 0;
      google::protobuf::RepeatedField<unsigned int>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_26569F894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::at(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2;
}

void sub_26569F974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26569FA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Set(_DWORD *a1, int a2, int *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v8 = *a3;
  result = google::protobuf::RepeatedField<unsigned int>::elements(a1);
  *(result + 4 * a2) = v8;
  return result;
}

void sub_26569FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Add(int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, v3 + 1);
    result = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    *(result + 4 * v3) = v4;
  }

  else
  {
    result = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    *(result + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Add(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, v2 + 1);
  }

  result = google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

void google::protobuf::RepeatedField<unsigned int>::RemoveLast(int *a1)
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

void sub_26569FCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::ExtractSubrange(int *a1, int a2, int a3, _DWORD *a4)
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
      *a4++ = *google::protobuf::RepeatedField<unsigned int>::Get(a1, v13++);
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *a1;
    while (v10 < v14)
    {
      v15 = google::protobuf::RepeatedField<unsigned int>::Get(a1, v10);
      google::protobuf::RepeatedField<unsigned int>::Set(a1, v6, v15);
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

void sub_26569FE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::Truncate(int *a1, int a2)
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

void sub_26569FF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::MergeFrom(int *a1, int *a2)
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
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<unsigned int>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<unsigned int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_2656A0030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::AddAlreadyReserved(int *a1, int *a2)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  result = google::protobuf::RepeatedField<unsigned int>::elements(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 4 * v7) = v5;
  return result;
}

void sub_2656A00E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::AddAlreadyReserved(int *a1)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v3 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 4 * v4;
}

void sub_2656A0180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::Resize(int *a1, int a2, int *a3)
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
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, a2);
    v7 = google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * *a1;
    v8 = (google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2 - v7) >> 2;
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *a3;
      v11 = vdupq_n_s64(v8 - 1);
      v12 = (v8 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v7 + 8);
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_2656B9670)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v10;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = v10;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_2656B9660)))).i32[1])
        {
          *v13 = v10;
          v13[1] = v10;
        }

        v9 += 4;
        v13 += 4;
      }

      while (v12 != v9);
    }
  }

  *a1 = a2;
}

void sub_2656A02EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::Swap(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<unsigned int>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      google::protobuf::RepeatedField<unsigned int>::InternalSwap(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (google::protobuf::RepeatedField<unsigned int>::elements(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      google::protobuf::RepeatedField<unsigned int>::MergeFrom(&v9, a1);
      *a1 = 0;
      google::protobuf::RepeatedField<unsigned int>::MergeFrom(a1, a2);
      if (&v9 != a2)
      {
        google::protobuf::RepeatedField<unsigned int>::InternalSwap(a2, &v9);
      }

      google::protobuf::RepeatedField<unsigned int>::~RepeatedField(&v9);
    }
  }
}

double google::protobuf::RepeatedField<unsigned int>::UnsafeArenaSwap(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = google::protobuf::RepeatedField<unsigned int>::InternalSwap(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::SwapElements(uint64_t a1, int a2, int a3)
{
  v6 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
  result = google::protobuf::RepeatedField<unsigned int>::elements(a1);
  v8 = *(v6 + 4 * a2);
  *(v6 + 4 * a2) = *(result + 4 * a3);
  *(result + 4 * a3) = v8;
  return result;
}

unint64_t google::protobuf::RepeatedField<unsigned int>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4 * v1 + 8;
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

void sub_2656A0508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 2;
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

  return *(a1 + 1) + 4 * (v6 >> 2);
}

void sub_2656A05F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 4 * v6);
    v8 = v4 + 4 * (v5 >> 2);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 4 * (v5 >> 2)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 2;
    if (v6 < v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) <= (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 2);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 4 * v12;
}

void sub_2656A06F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<long long>::Reserve(a1, v4);
    google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<long long>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<long long>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }

  return a1;
}

void sub_2656A081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<long long>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<long long>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<long long>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<long long>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2656A09C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_2656A0A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2;
}

void sub_2656A0B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2;
}

void sub_2656A0C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<long long>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *google::protobuf::RepeatedField<long long>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<long long>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<long long>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<long long>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<long long>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<long long>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<long long>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<long long>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<long long>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<long long>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<long long>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<long long>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<long long>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<long long>::InternalSwap(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 4))
  {
    v5 = (google::protobuf::RepeatedField<long long>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<long long>::elements(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_2656A0EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<long long>::operator=(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<long long>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<long long>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      google::protobuf::RepeatedField<long long>::InternalSwap(a1, a2);
    }

    else
    {
      *a1 = 0;
      google::protobuf::RepeatedField<long long>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<long long>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_2656A1098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::at(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2;
}

void sub_2656A1178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2656A1258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::Set(_DWORD *a1, int a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v8 = *a3;
  result = google::protobuf::RepeatedField<long long>::elements(a1);
  *(result + 8 * a2) = v8;
  return result;
}

void sub_2656A1348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::Add(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<long long>::Reserve(a1, v3 + 1);
    result = google::protobuf::RepeatedField<long long>::elements(a1);
    *(result + 8 * v3) = v4;
  }

  else
  {
    result = google::protobuf::RepeatedField<long long>::elements(a1);
    *(result + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::Add(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<long long>::Reserve(a1, v2 + 1);
  }

  result = google::protobuf::RepeatedField<long long>::elements(a1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

void google::protobuf::RepeatedField<long long>::RemoveLast(int *a1)
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

void sub_2656A14A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::ExtractSubrange(int *a1, int a2, int a3, void *a4)
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
      *a4++ = *google::protobuf::RepeatedField<long long>::Get(a1, v13++);
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *a1;
    while (v10 < v14)
    {
      v15 = google::protobuf::RepeatedField<long long>::Get(a1, v10);
      google::protobuf::RepeatedField<long long>::Set(a1, v6, v15);
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

void sub_2656A1660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::Truncate(int *a1, int a2)
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

void sub_2656A170C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::MergeFrom(int *a1, int *a2)
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
    google::protobuf::RepeatedField<long long>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<long long>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<long long>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_2656A1834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::AddAlreadyReserved(int *a1, uint64_t *a2)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  result = google::protobuf::RepeatedField<long long>::elements(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 8 * v7) = v5;
  return result;
}

void sub_2656A18E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::AddAlreadyReserved(int *a1)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v3 = google::protobuf::RepeatedField<long long>::elements(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 8 * v4;
}

void sub_2656A1984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::Resize(int *a1, int a2, uint64_t *a3)
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
    google::protobuf::RepeatedField<long long>::Reserve(a1, a2);
    v7 = google::protobuf::RepeatedField<long long>::elements(a1) + 8 * *a1;
    v8 = (google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2 - v7) >> 3;
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
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_2656B9670)));
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

void sub_2656A1AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::Swap(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<long long>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<long long>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      google::protobuf::RepeatedField<long long>::InternalSwap(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (google::protobuf::RepeatedField<long long>::elements(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      google::protobuf::RepeatedField<long long>::MergeFrom(&v9, a1);
      *a1 = 0;
      google::protobuf::RepeatedField<long long>::MergeFrom(a1, a2);
      if (&v9 != a2)
      {
        google::protobuf::RepeatedField<long long>::InternalSwap(a2, &v9);
      }

      google::protobuf::RepeatedField<long long>::~RepeatedField(&v9);
    }
  }
}

double google::protobuf::RepeatedField<long long>::UnsafeArenaSwap(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = google::protobuf::RepeatedField<long long>::InternalSwap(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::SwapElements(uint64_t a1, int a2, int a3)
{
  v6 = google::protobuf::RepeatedField<long long>::elements(a1);
  result = google::protobuf::RepeatedField<long long>::elements(a1);
  v8 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = *(result + 8 * a3);
  *(result + 8 * a3) = v8;
  return result;
}

uint64_t google::protobuf::RepeatedField<long long>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 8 * v1 + 8;
  }
}

unint64_t google::protobuf::RepeatedField<long long>::SpaceUsedExcludingSelf(uint64_t a1)
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

void sub_2656A1D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::erase(int *a1, uint64_t a2)
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

void sub_2656A1DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::erase(int *a1, _BYTE *a2, _BYTE *__src)
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

void sub_2656A1EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, v4);
    google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<unsigned long long>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }

  return a1;
}

void sub_2656A2020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<unsigned long long>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2656A21CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_2656A228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2;
}

void sub_2656A2364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2;
}

void sub_2656A2444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *google::protobuf::RepeatedField<unsigned long long>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<unsigned long long>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<unsigned long long>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<unsigned long long>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<unsigned long long>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<unsigned long long>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<unsigned long long>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<unsigned long long>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<unsigned long long>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<unsigned long long>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<unsigned long long>::InternalSwap(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 4))
  {
    v5 = (google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<unsigned long long>::elements(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_2656A26D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<unsigned long long>::operator=(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<unsigned long long>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      google::protobuf::RepeatedField<unsigned long long>::InternalSwap(a1, a2);
    }

    else
    {
      *a1 = 0;
      google::protobuf::RepeatedField<unsigned long long>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_2656A2888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::at(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2;
}

void sub_2656A2968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2656A2A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Set(_DWORD *a1, int a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v8 = *a3;
  result = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
  *(result + 8 * a2) = v8;
  return result;
}

void sub_2656A2B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Add(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, v3 + 1);
    result = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    *(result + 8 * v3) = v4;
  }

  else
  {
    result = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    *(result + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Add(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, v2 + 1);
  }

  result = google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

void google::protobuf::RepeatedField<unsigned long long>::RemoveLast(int *a1)
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

void sub_2656A2C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::ExtractSubrange(int *a1, int a2, int a3, void *a4)
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
      *a4++ = *google::protobuf::RepeatedField<unsigned long long>::Get(a1, v13++);
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *a1;
    while (v10 < v14)
    {
      v15 = google::protobuf::RepeatedField<unsigned long long>::Get(a1, v10);
      google::protobuf::RepeatedField<unsigned long long>::Set(a1, v6, v15);
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

void sub_2656A2E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::Truncate(int *a1, int a2)
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

void sub_2656A2EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::MergeFrom(int *a1, int *a2)
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
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<unsigned long long>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<unsigned long long>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_2656A3024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::AddAlreadyReserved(int *a1, uint64_t *a2)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  result = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 8 * v7) = v5;
  return result;
}

void sub_2656A30D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::AddAlreadyReserved(int *a1)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v3 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 8 * v4;
}

void sub_2656A3174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::Resize(int *a1, int a2, uint64_t *a3)
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
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, a2);
    v7 = google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * *a1;
    v8 = (google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2 - v7) >> 3;
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
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_2656B9670)));
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

void sub_2656A32A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::Swap(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<unsigned long long>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      google::protobuf::RepeatedField<unsigned long long>::InternalSwap(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (google::protobuf::RepeatedField<unsigned long long>::elements(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      google::protobuf::RepeatedField<unsigned long long>::MergeFrom(&v9, a1);
      *a1 = 0;
      google::protobuf::RepeatedField<unsigned long long>::MergeFrom(a1, a2);
      if (&v9 != a2)
      {
        google::protobuf::RepeatedField<unsigned long long>::InternalSwap(a2, &v9);
      }

      google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(&v9);
    }
  }
}

double google::protobuf::RepeatedField<unsigned long long>::UnsafeArenaSwap(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = google::protobuf::RepeatedField<unsigned long long>::InternalSwap(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::SwapElements(uint64_t a1, int a2, int a3)
{
  v6 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
  result = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
  v8 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = *(result + 8 * a3);
  *(result + 8 * a3) = v8;
  return result;
}

unint64_t google::protobuf::RepeatedField<unsigned long long>::SpaceUsedExcludingSelf(uint64_t a1)
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

void sub_2656A34C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::erase(int *a1, uint64_t a2)
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

void sub_2656A35B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::erase(int *a1, _BYTE *a2, _BYTE *__src)
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

void sub_2656A36AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<float>::Reserve(a1, v4);
    google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<float>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<float>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_2656A37D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<float>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<float>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<float>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<float>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2656A3980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_2656A3A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2;
}

void sub_2656A3B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2;
}

void sub_2656A3BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<float>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *google::protobuf::RepeatedField<float>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<float>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<float>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<float>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<float>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<float>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<float>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<float>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<float>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<float>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<float>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<float>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<float>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<float>::InternalSwap(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 4))
  {
    v5 = (google::protobuf::RepeatedField<float>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<float>::elements(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_2656A3E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<float>::operator=(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<float>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<float>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      google::protobuf::RepeatedField<float>::InternalSwap(a1, a2);
    }

    else
    {
      *a1 = 0;
      google::protobuf::RepeatedField<float>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<float>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_2656A403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::at(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2;
}

void sub_2656A411C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2656A41FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::Set(_DWORD *a1, int a2, int *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v8 = *a3;
  result = google::protobuf::RepeatedField<float>::elements(a1);
  *(result + 4 * a2) = v8;
  return result;
}

void sub_2656A42F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::Add(int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<float>::Reserve(a1, v3 + 1);
    result = google::protobuf::RepeatedField<float>::elements(a1);
    *(result + 4 * v3) = v4;
  }

  else
  {
    result = google::protobuf::RepeatedField<float>::elements(a1);
    *(result + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t google::protobuf::RepeatedField<float>::Add(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<float>::Reserve(a1, v2 + 1);
  }

  result = google::protobuf::RepeatedField<float>::elements(a1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

void google::protobuf::RepeatedField<float>::RemoveLast(int *a1)
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

void sub_2656A4458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::ExtractSubrange(int *a1, int a2, int a3, _DWORD *a4)
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
      *a4++ = *google::protobuf::RepeatedField<float>::Get(a1, v13++);
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *a1;
    while (v10 < v14)
    {
      v15 = google::protobuf::RepeatedField<float>::Get(a1, v10);
      google::protobuf::RepeatedField<float>::Set(a1, v6, v15);
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

void sub_2656A4614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::Truncate(int *a1, int a2)
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

void sub_2656A46C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::MergeFrom(int *a1, int *a2)
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
    google::protobuf::RepeatedField<float>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<float>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<float>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_2656A47E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::AddAlreadyReserved(int *a1, int *a2)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  result = google::protobuf::RepeatedField<float>::elements(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 4 * v7) = v5;
  return result;
}

void sub_2656A48A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::AddAlreadyReserved(int *a1)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v3 = google::protobuf::RepeatedField<float>::elements(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 4 * v4;
}

void sub_2656A4940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::Resize(int *a1, int a2, __int32 *a3)
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
    google::protobuf::RepeatedField<float>::Reserve(a1, a2);
    v7 = google::protobuf::RepeatedField<float>::elements(a1) + 4 * *a1;
    v8 = (google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2 - v7) >> 2;
    if (v8 >= 1)
    {
      v10 = 0;
      v9.i32[0] = *a3;
      v11 = vdupq_n_s64(v8 - 1);
      v12 = (v8 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v7 + 8);
      do
      {
        v14 = vdupq_n_s64(v10);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_2656B9670)));
        if (vuzp1_s16(v15, v9).u8[0])
        {
          *(v13 - 2) = v9.i32[0];
        }

        if (vuzp1_s16(v15, v9).i8[2])
        {
          *(v13 - 1) = v9.i32[0];
        }

        if (vuzp1_s16(v9, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_2656B9660)))).i32[1])
        {
          *v13 = v9.i32[0];
          v13[1] = v9.i32[0];
        }

        v10 += 4;
        v13 += 4;
      }

      while (v12 != v10);
    }
  }

  *a1 = a2;
}

void sub_2656A4AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::Swap(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<float>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<float>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      google::protobuf::RepeatedField<float>::InternalSwap(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (google::protobuf::RepeatedField<float>::elements(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      google::protobuf::RepeatedField<float>::MergeFrom(&v9, a1);
      *a1 = 0;
      google::protobuf::RepeatedField<float>::MergeFrom(a1, a2);
      if (&v9 != a2)
      {
        google::protobuf::RepeatedField<float>::InternalSwap(a2, &v9);
      }

      google::protobuf::RepeatedField<float>::~RepeatedField(&v9);
    }
  }
}

double google::protobuf::RepeatedField<float>::UnsafeArenaSwap(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = google::protobuf::RepeatedField<float>::InternalSwap(a1, a2).n128_u64[0];
  }

  return result;
}

float google::protobuf::RepeatedField<float>::SwapElements(uint64_t a1, int a2, int a3)
{
  v6 = google::protobuf::RepeatedField<float>::elements(a1);
  v7 = google::protobuf::RepeatedField<float>::elements(a1);
  result = *(v6 + 4 * a2);
  *(v6 + 4 * a2) = *(v7 + 4 * a3);
  *(v7 + 4 * a3) = result;
  return result;
}

unint64_t google::protobuf::RepeatedField<float>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4 * v1 + 8;
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

void sub_2656A4CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::erase(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 2;
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

  return *(a1 + 1) + 4 * (v6 >> 2);
}

void sub_2656A4DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::erase(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 4 * v6);
    v8 = v4 + 4 * (v5 >> 2);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 4 * (v5 >> 2)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 2;
    if (v6 < v10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) <= (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 2);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 4 * v12;
}

void sub_2656A4EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<double>::Reserve(a1, v4);
    google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<double>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<double>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }

  return a1;
}

void sub_2656A4FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<double>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<double>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<double>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<double>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_2656A5188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_2656A5248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2;
}

void sub_2656A5320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2;
}

void sub_2656A5400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<double>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *google::protobuf::RepeatedField<double>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<double>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<double>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<double>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<double>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<double>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<double>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<double>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<double>::elements(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      google::protobuf::RepeatedField<double>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<double>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<double>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<double>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<double>::InternalSwap(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 4))
  {
    v5 = (google::protobuf::RepeatedField<double>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<double>::elements(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_2656A5690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<double>::operator=(int *a1, __n128 *a2)
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
      *a1 = 0;
      google::protobuf::RepeatedField<double>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<double>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_2656A5844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::at(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2;
}

void sub_2656A5924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2656A5A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::Set(_DWORD *a1, int a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v8 = *a3;
  result = google::protobuf::RepeatedField<double>::elements(a1);
  *(result + 8 * a2) = v8;
  return result;
}

void sub_2656A5AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::Add(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<double>::Reserve(a1, v3 + 1);
    result = google::protobuf::RepeatedField<double>::elements(a1);
    *(result + 8 * v3) = v4;
  }

  else
  {
    result = google::protobuf::RepeatedField<double>::elements(a1);
    *(result + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

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

void sub_2656A5C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A5E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A5EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A5FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A60A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A6148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_2656B9670)));
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

void sub_2656A6278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A6494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A6584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A6680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

          MEMORY[0x26675B300](v5, 0x1012C40EC159624);
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

void sub_2656A6D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2656A6DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A6EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A7020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

    MEMORY[0x26675B300](v6, 0x1012C40EC159624);
  }
}

void sub_2656A7140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A7378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A7474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

    result = MEMORY[0x26675B300](v9, 0x1012C40EC159624);
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

void sub_2656A7628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A7808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A7988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A7B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A7C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A7E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    *result = &unk_287704C98;
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

void sub_2656A8190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

    MEMORY[0x26675B300](a2, 0x1012C40EC159624);
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

    JUMPOUT(0x26675B300);
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_0_4(uint64_t a1)
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

void sub_2656A853C(_Unwind_Exception *exception_object)
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
        v6 = off_279B9AF80[v3 - 1];
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
      v7 = off_279B9AF80[v3 - 1];
    }
  }

  else
  {
    v7 = "OK";
  }

  std::string::basic_string[abi:ne200100]<0>(a2, v7);
}

void sub_2656A87A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_2656A8848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_2656A89B4(_Unwind_Exception *exception_object)
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
    memset_pattern16(&v20 + ((8 * v7) & 0xF8), &off_279B9B000, ((-8 - 8 * v7) & 0xF8) + 8);
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

void sub_2656A8D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A8DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656A8F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::StringPiece::CopyToString(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  JUMPOUT(0x26675AFD0);
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

void sub_2656AA0B4(_Unwind_Exception *exception_object)
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

void sub_2656AA2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_2656AA438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

void sub_2656AA5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AA86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AA980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  MEMORY[0x26675B2D0](v4, v3);
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

void sub_2656AAE9C(_Unwind_Exception *exception_object)
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

void sub_2656AAFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  MEMORY[0x26675B2D0](v4, v3);
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

void sub_2656AB0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  MEMORY[0x26675B2D0](v4, v3);
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