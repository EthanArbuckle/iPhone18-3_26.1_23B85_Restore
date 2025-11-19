BOOL google::protobuf::MessageLite::SerializeAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendToString(this, a2);
  if (!result)
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
  }

  return result;
}

void sub_26D426508(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::MessageLite::SerializePartialAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendPartialToString(this, a2);
  if (!result)
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
  }

  return result;
}

void sub_26D426578(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  v5 = google::protobuf::internal::ShutdownData::get(this);
  std::mutex::lock((v5 + 24));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - *v5;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(v5, v12);
    }

    v13 = (16 * v9);
    *v13 = this;
    v13[1] = a2;
    v8 = 16 * v9 + 16;
    v14 = *(v5 + 8) - *v5;
    v15 = (16 * v9 - v14);
    memcpy(v15, *v5, v14);
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
    v7[1] = a2;
    v8 = (v7 + 2);
  }

  *(v5 + 8) = v8;

  std::mutex::unlock((v5 + 24));
}

uint64_t google::protobuf::internal::ShutdownData::get(google::protobuf::internal::ShutdownData *this)
{
  {
    operator new();
  }

  return google::protobuf::internal::ShutdownData::get(void)::data;
}

google::protobuf::internal::ShutdownData *google::protobuf::ShutdownProtobufLibrary(google::protobuf::internal::ShutdownData *this)
{
  if ((google::protobuf::ShutdownProtobufLibrary(void)::is_shutdown & 1) == 0)
  {
    this = google::protobuf::internal::ShutdownData::get(this);
    if (this)
    {
      google::protobuf::internal::ShutdownData::~ShutdownData(this);
      this = MEMORY[0x26D6BF040]();
    }

    google::protobuf::ShutdownProtobufLibrary(void)::is_shutdown = 1;
  }

  return this;
}

uint64_t google::protobuf::ZeroCopyCodedInputStream::Next(google::protobuf::io::CodedInputStream **this, const void **a2, int *a3)
{
  DirectBufferPointer = google::protobuf::io::CodedInputStream::GetDirectBufferPointer(this[1], a2, a3);
  if (DirectBufferPointer)
  {
    v6 = *a3;
    if ((v6 & 0x80000000) == 0)
    {
      v7 = this[1];
      v8 = *(v7 + 2) - *v7;
      if (v6 <= v8)
      {
        *v7 += v6;
      }

      else
      {
        google::protobuf::io::CodedInputStream::SkipFallback(v7, v6, v8);
      }
    }
  }

  return DirectBufferPointer;
}

uint64_t google::protobuf::ZeroCopyCodedInputStream::Skip(google::protobuf::ZeroCopyCodedInputStream *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(this + 1);
  v3 = *(v2 + 2) - *v2;
  if (v3 < a2)
  {
    return google::protobuf::io::CodedInputStream::SkipFallback(v2, a2, v3);
  }

  *v2 += a2;
  return 1;
}

void google::protobuf::internal::ShutdownData::~ShutdownData(google::protobuf::internal::ShutdownData *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = v3 - 2;
  if (*this != v3 && v4 > v2)
  {
    do
    {
      v6 = *v2;
      *v2 = *v4;
      *v4 = v6;
      v7 = v2[1];
      v2[1] = v4[1];
      v4[1] = v7;
      v2 += 2;
      v4 -= 2;
    }

    while (v2 < v4);
    v2 = *this;
    v3 = *(this + 1);
  }

  while (v2 != v3)
  {
    (*v2)(v2[1]);
    v2 += 2;
  }

  std::mutex::~mutex((this + 24));
  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -1)
  {

    return google::protobuf::internal::EpsCopyInputStream::InitFrom(a1, a2);
  }

  else
  {
    *(a1 + 84) = a3;
    result = google::protobuf::internal::EpsCopyInputStream::InitFrom(a1, a2);
    v6 = *(a1 + 8);
    v7 = result - v6 + a3;
    *(a1 + 28) = v7;
    *a1 = v6 + (v7 & (v7 >> 31));
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, char a2, _BYTE *a3)
{
  *a3 = a2 & (*(a1 + 24) == 0);
  *a1 = &unk_287EBD190;
  v4 = (a1 + 32);

  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(v4);
}

void google::protobuf::MessageLite::ParseFromIstream(char a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a1)
  {
    v5 = (*(a2 + *(*a2 - 24) + 32) >> 1) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  OUTLINED_FUNCTION_7_0(a4, v5);
  *v4 = v6;
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((v7 + 24));
  google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::~CopyingIstreamInputStream((v4 + 1));
}

uint64_t google::protobuf::MessageLite::ParseFromArray(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = google::protobuf::internal::MergeFromImpl<false>();
  *v3 = result;
  return result;
}

uint64_t google::protobuf::MessageLite::ParsePartialFromArray(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = google::protobuf::internal::MergeFromImpl<false>();
  *v3 = result;
  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this)
{
  if (*(this + 7) <= 16)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: limit_ > kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::EpsCopyInputStream::NextBuffer(this, 0, -1);
  v4 = *(this + 1);
  if (result)
  {
    v5 = *(this + 7) + result - v4;
    *(this + 7) = v5;
    v4 += v5 & (v5 >> 31);
  }

  else
  {
    *(this + 20) = 1;
  }

  *this = v4;
  return result;
}

void sub_26D426DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::NextBuffer(google::protobuf::internal::EpsCopyInputStream *this, unsigned int a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v5 = (this + 40);
  if (v3 != (this + 40))
  {
    v6 = *(this + 6);
    if (v6 <= 16)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ > kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&__src, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
      v3 = *(this + 2);
      v6 = *(this + 6);
    }

    *(this + 1) = v3 + v6 - 16;
    *(this + 2) = v5;
    if (*(this + 9) == 1)
    {
      *(this + 9) = 2;
    }

    return v3;
  }

  *v5 = **(this + 1);
  if (*(this + 21) < 1)
  {
    goto LABEL_23;
  }

  v8 = a3;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun >= 0: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
LABEL_27:
    v16 = this + 56;
    v17 = v5 + a2;
    v18 = v17;
    while (1)
    {
      v19 = *v18++;
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v20 + (*v18 << 7) - 128;
        if (*v18 < 0)
        {
          v18 = v17 + 3;
          v25 = -21;
          while (1)
          {
            v20 += (*(v18 - 1) - 1) << (v25 + 35);
            if ((*(v18 - 1) & 0x80000000) == 0)
            {
              break;
            }

            ++v18;
            v25 += 7;
            if (!v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v18 = v17 + 2;
        }
      }

      if (v18 > v16)
      {
        goto LABEL_16;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20 & 7;
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            ++v8;
            break;
          case 4:
            v24 = __OFSUB__(v8--, 1);
            if (v8 < 0 != v24)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            v18 += 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v18 += 8;
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            SizeFallback = google::protobuf::internal::ReadSizeFallback(v18, v22);
            if (!SizeFallback)
            {
              goto LABEL_16;
            }
          }

          else
          {
            SizeFallback = v18 + 1;
          }

          if (v16 - SizeFallback < v22)
          {
            goto LABEL_16;
          }

          v18 = &SizeFallback[v22];
        }
      }

      else
      {
        v34[0].__r_.__value_.__r.__words[0] = 0;
        v18 = google::protobuf::internal::VarintParse<unsigned long long>(v18, v34);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= 0x11)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun <= kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  if (a2 != 16)
  {
    goto LABEL_27;
  }

LABEL_16:
  __src = 0;
  if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
  {
LABEL_22:
    *(this + 21) = 0;
LABEL_23:
    if (*(this + 9) == 2)
    {
      *(this + 9) = *(this + 1) - v3;
    }

    *(this + 1) = this + 56;
    *(this + 2) = 0;
    *(this + 6) = 0;
    return v5;
  }

  while (1)
  {
    v12 = *(this + 6);
    *(this + 21) -= v12;
    if (v12 >= 17)
    {
      v28 = *(this + 9);
      v27 = (this + 72);
      v26 = v28;
      v29 = (v27 - 2);
      v30 = __src;
      *(v27 - 1) = *__src;
      *(v27 - 7) = v30;
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      break;
    }

    if (v12)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ == 0: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(this + 6));
      google::protobuf::internal::LogFinisher::operator=(&v32, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    }

    if (((*(**(this + 4) + 16))(*(this + 4), &__src, this + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy(this + 56, __src, v12);
  v31 = *(this + 9);
  v27 = (this + 72);
  v26 = v31;
  v29 = v5 + v12;
  *(v27 - 7) = v5;
LABEL_59:
  *(v27 - 8) = v29;
  if (v26 > 1)
  {
    *v27 = 1;
  }

  return v5;
}

void sub_26D4271DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneFallback(google::protobuf::internal::EpsCopyInputStream *this, signed int a2, int a3)
{
  v3 = *(this + 7);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun != limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (v3 <= v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun < limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (*this != *(this + 1) + (v3 & (v3 >> 31)))
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (v3 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  if (*this != *(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    if (v5 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun >= 0: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    Buffer = google::protobuf::internal::EpsCopyInputStream::NextBuffer(this, v5, a3);
    if (!Buffer)
    {
      break;
    }

    v14 = *(this + 1);
    v15 = *(this + 7) + Buffer - v14;
    *(this + 7) = v15;
    result = Buffer + v5;
    v5 = result - v14;
    if (result - v14 < 0)
    {
      *this = v14 + (v15 & (v15 >> 31));
      return result;
    }
  }

  if (v5)
  {
    return 0;
  }

  if (*(this + 7) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  result = *(this + 1);
  *this = result;
  *(this + 20) = 1;
  return result;
}

void sub_26D4274BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::SkipFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v5 = *(this + 2) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    if (!*(this + 2) || *(this + 7) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!result)
    {
      return result;
    }

    v5 = *(this + 2) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

void sub_26D4275D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  __src = 0;
  v7 = 0;
  *(a1 + 28) = 0x7FFFFFFF;
  if ((*(*a2 + 16))(a2, &__src, &v7))
  {
    v3 = v7;
    *(a1 + 84) -= v7;
    if (v3 < 17)
    {
      *a1 = a1 + 56;
      *(a1 + 8) = a1 + 56;
      *(a1 + 16) = a1 + 40;
      v4 = (a1 - v3 + 72);
      memcpy(v4, __src, v3);
    }

    else
    {
      v4 = __src;
      *(a1 + 28) = *(a1 + 28) - v3 + 16;
      v5 = v4 + v3 - 16;
      *a1 = v5;
      *(a1 + 8) = v5;
      *(a1 + 16) = a1 + 40;
      if (*(a1 + 72) == 1)
      {
        *(a1 + 72) = 2;
      }
    }
  }

  else
  {
    *(a1 + 84) = 0;
    *(a1 + 24) = 0;
    v4 = (a1 + 40);
    *(a1 + 8) = a1 + 40;
    *(a1 + 16) = 0;
    *a1 = a1 + 40;
  }

  return v4;
}

void google::protobuf::internal::WriteVarint(int a1, unint64_t a2, std::string *this)
{
  v5 = (8 * a1);
  if (v5 < 0x80)
  {
    LOBYTE(v6) = 8 * a1;
  }

  else
  {
    do
    {
      std::string::push_back(this, v5 | 0x80);
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  std::string::push_back(this, v6);
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      std::string::push_back(this, a2 | 0x80);
      v8 = a2 >> 7;
      v9 = a2 >> 14;
      a2 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
}

std::string *google::protobuf::internal::WriteLengthDelimited(int a1, const std::string::value_type *a2, std::string::size_type a3, std::string *this)
{
  v7 = (8 * a1) | 2u;
  if ((8 * a1) < 0x80)
  {
    LOBYTE(v8) = (8 * a1) | 2;
  }

  else
  {
    do
    {
      std::string::push_back(this, v7 | 0x80);
      v8 = v7 >> 7;
      v9 = v7 >> 14;
      v7 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
  LOBYTE(v10) = a3;
  if (a3 >= 0x80)
  {
    v11 = a3;
    do
    {
      std::string::push_back(this, v11 | 0x80);
      v10 = v11 >> 7;
      v12 = v11 >> 14;
      v11 >>= 7;
    }

    while (v12);
  }

  std::string::push_back(this, v10);

  return std::string::append(this, a2, a3);
}

char *google::protobuf::internal::VarintParseSlow32(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 35)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = this + 6;
      v6 = 5;
      result = 0;
      while (*(v5 - 1) < 0)
      {
        ++v5;
        if (!--v6)
        {
          return result;
        }
      }

      return v5;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::VarintParseSlow64(google::protobuf::internal *this, unint64_t a2)
{
  a2 = a2;
  result = this + 3;
  v4 = this + 2;
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::ReadTagFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = this + 2;
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    LODWORD(a2) = ((v6 - 1) << (v5 + 35)) + a2;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

BOOL google::protobuf::internal::VerifyUTF8(google::protobuf::internal *a1, const char *a2, google::protobuf::internal *a3)
{
  IsStructurallyValidUTF8 = google::protobuf::internal::IsStructurallyValidUTF8(a1, a2);
  if (!IsStructurallyValidUTF8)
  {
    google::protobuf::internal::PrintUTF8ErrorLog(a3, "parsing", 0);
  }

  return IsStructurallyValidUTF8;
}

char *google::protobuf::internal::InlineGreedyStringParser(uint64_t a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<unsigned int>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<int>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<unsigned long long>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<long long>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<float>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<double>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(a3, v6, v5, a1);
}

char *google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(google::protobuf::internal::UnknownFieldLiteParserHelper *a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v10 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v10, *(this + 23)))
    {
      return v10;
    }

    v5 = v10 + 1;
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = v10 + 3;
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          ++v5;
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = v10 + 2;
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, a1, v5);
    if (!v10)
    {
      return 0;
    }
  }

  *(this + 20) = v6 - 1;
  return v5;
}

google::protobuf::internal *google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(unint64_t a1, std::string *this, google::protobuf::internal *a3, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = a3;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = google::protobuf::internal::LogMessage::operator<<(v12, "Can't happen");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = (a3 + 4);
        google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(this, v4, *a3);
      }

      return v5;
    }

    result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(this, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = google::protobuf::internal::VarintParse<unsigned long long>(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(this, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = (a3 + 8);
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(this, v4, *a3);
    return v5;
  }

  result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(this, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_26D428064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::VarintParse<unsigned long long>(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D4282E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D4285B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<unsigned int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<unsigned int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D428884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D428B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<unsigned long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<unsigned long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D428E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D429100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v17, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v17.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26D4293DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<BOOL>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<BOOL>::elements(a3) + v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<BOOL>::elements(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

void google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(std::string **this, int a2, unint64_t a3)
{
  v3 = *this;
  if (*this)
  {
    v6 = (8 * a2);
    if (v6 < 0x80)
    {
      LOBYTE(v7) = 8 * a2;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9 = *this;
    if (a3 < 0x80)
    {
      LOBYTE(v10) = a3;
    }

    else
    {
      do
      {
        std::string::push_back(v9, a3 | 0x80);
        v10 = a3 >> 7;
        v11 = a3 >> 14;
        a3 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v9, v10);
  }
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(std::string *this, int a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 1u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v10[0] = a3;
    this = std::string::append(*v5, v10, 8uLL);
  }

  v9 = *MEMORY[0x277D85DE8];
  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(std::string **this, int a2, std::string::value_type *a3, google::protobuf::internal::ParseContext *a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, *a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = *this;
  if (*this)
  {
    v10 = (8 * a2) | 2u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v9, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v9, v11);
    v14 = v7;
    v15 = *this;
    if (v7 < 0x80)
    {
      LOBYTE(v16) = v7;
    }

    else
    {
      do
      {
        std::string::push_back(v15, v14 | 0x80);
        v16 = v14 >> 7;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
    }

    std::string::push_back(v15, v16);
    v18 = *this;

    return google::protobuf::internal::EpsCopyInputStream::AppendString(a4, v8, v7, v18);
  }

  else if (*(a4 + 1) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::SkipFallback(a4, v8, v7);
  }
}

char *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(std::string **this, int a2, char *a3, int32x2_t *a4)
{
  v7 = *this;
  v8 = 8 * a2;
  if (*this)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  v14 = google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(this, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *this;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(std::string *this, int a2, int a3)
{
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::AppendString(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return google::protobuf::internal::EpsCopyInputStream::AppendStringFallback();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void OUTLINED_FUNCTION_0_4(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return google::protobuf::internal::LogMessage::LogMessage(va, 3, v2, 323);
}

std::string *OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void *google::protobuf::RepeatedField<BOOL>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *google::protobuf::RepeatedField<BOOL>::RepeatedField(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, v4);
    google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<BOOL>::elements(a2);
    memcpy(v6, v8, *a2);
  }

  return a1;
}

void sub_26D42A1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::Reserve(int *a1, int a2)
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
      v6 = *(google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
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
    v5 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
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
  if (v6)
  {
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v3 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<BOOL>::elements(a1);
  if (*a1 >= 1)
  {
    v11 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    memcpy(v11, v5 + 1, *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_26D42A370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(uint64_t a1, int a2)
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

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_26D42A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Mutable(_DWORD *a1, int a2)
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

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_26D42A524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Get(_DWORD *a1, int a2)
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

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_26D42A604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<BOOL>::InternalDeallocate(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

int *google::protobuf::RepeatedField<BOOL>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<BOOL>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<BOOL>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
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
      google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
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
      google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<BOOL>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<BOOL>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<BOOL>::InternalSwap(uint64_t a1, __n128 *a2)
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
    v5 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
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

void sub_26D42A8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<BOOL>::operator=(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2);
    }

    else
    {
      *a1 = 0;
      google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<BOOL>::elements(uint64_t a1)
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

void sub_26D42AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::at(_DWORD *a1, int a2)
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

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
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

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_26D42AB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26D42AC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Set(_DWORD *a1, int a2, char *a3)
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
  result = google::protobuf::RepeatedField<BOOL>::elements(a1);
  *(result + a2) = v8;
  return result;
}

void sub_26D42AD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Add(int *a1, char *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, v3 + 1);
    result = google::protobuf::RepeatedField<BOOL>::elements(a1);
    *(result + v3) = v4;
  }

  else
  {
    result = google::protobuf::RepeatedField<BOOL>::elements(a1);
    *(result + v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::Add(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, v2 + 1);
  }

  v3 = google::protobuf::RepeatedField<BOOL>::elements(a1);
  *a1 = v2 + 1;
  return v3 + v2;
}

void google::protobuf::RepeatedField<BOOL>::RemoveLast(int *a1)
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

void sub_26D42AE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::ExtractSubrange(int *a1, int a2, int a3, _BYTE *a4)
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
      *a4++ = *google::protobuf::RepeatedField<BOOL>::Get(a1, v13++);
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *a1;
    while (v10 < v14)
    {
      v15 = google::protobuf::RepeatedField<BOOL>::Get(a1, v10);
      google::protobuf::RepeatedField<BOOL>::Set(a1, v6, v15);
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

void sub_26D42B038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::Truncate(int *a1, int a2)
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

void sub_26D42B0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::MergeFrom(int *a1, int *a2)
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
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<BOOL>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<BOOL>::elements(a2);
    memcpy(v6, v8, *a2);
  }
}

void sub_26D42B210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddAlreadyReserved(int *a1, char *a2)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *a2;
  result = google::protobuf::RepeatedField<BOOL>::elements(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + v7) = v5;
  return result;
}

void sub_26D42B2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddAlreadyReserved(int *a1)
{
  if (*a1 >= a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (current_size_) < (total_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  v3 = google::protobuf::RepeatedField<BOOL>::elements(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + v4;
}

void sub_26D42B360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::Resize(int *a1, int a2, unsigned __int8 *a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (new_size) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a1 < a2)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, a2);
    v7 = (google::protobuf::RepeatedField<BOOL>::elements(a1) + *a1);
    v8 = google::protobuf::RepeatedField<BOOL>::elements(a1) + a2 - v7;
    if (v8 >= 1)
    {
      memset(v7, *a3, v8);
    }
  }

  *a1 = a2;
}

void sub_26D42B448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::Swap(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (google::protobuf::RepeatedField<BOOL>::elements(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      google::protobuf::RepeatedField<BOOL>::MergeFrom(&v9, a1);
      *a1 = 0;
      google::protobuf::RepeatedField<BOOL>::MergeFrom(a1, a2);
      if (&v9 != a2)
      {
        google::protobuf::RepeatedField<BOOL>::InternalSwap(a2, &v9);
      }

      google::protobuf::RepeatedField<BOOL>::~RepeatedField(&v9);
    }
  }
}

double google::protobuf::RepeatedField<BOOL>::UnsafeArenaSwap(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = google::protobuf::RepeatedField<BOOL>::InternalSwap(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::SwapElements(uint64_t a1, int a2, int a3)
{
  v6 = google::protobuf::RepeatedField<BOOL>::elements(a1);
  result = google::protobuf::RepeatedField<BOOL>::elements(a1);
  v8 = *(v6 + a2);
  *(v6 + a2) = *(result + a3);
  *(result + a3) = v8;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::SpaceUsedExcludingSelfLong(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (v1 + 8);
  }
}

uint64_t google::protobuf::RepeatedField<BOOL>::SpaceUsedExcludingSelf(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = (v1 + 8);
  }

  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_26D42B6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::erase(int *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 + 1);
  v5 = *(a1 + 1);
  v6 = v2 - v5;
  v7 = *a1;
  v8 = v5 + v6;
  v9 = v5 + v7 - v4;
  if ((v5 + v7) != v4)
  {
    memmove((v5 + v6), v4, v5 + v7 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v10 = v8 + v9 - v5;
  if (v7 < v10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v11 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (new_size) <= (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v10;
  }

  return *(a1 + 1) + v6;
}

void sub_26D42B788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::erase(int *a1, void *a2, void *__src)
{
  v4 = *(a1 + 1);
  v5 = a2 - v4;
  if (a2 == __src)
  {
    v11 = v5;
  }

  else
  {
    v6 = *a1;
    v7 = a2;
    v8 = v4 + v6 - __src;
    if ((v4 + v6) != __src)
    {
      memmove((v4 + v5), __src, v4 + v6 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v9 = v7 + v8 - v4;
    if (v6 < v9)
    {
      google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (new_size) <= (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
      LODWORD(v6) = *a1;
    }

    v11 = v5;
    if (v6 >= 1)
    {
      *a1 = v9;
    }
  }

  return *(a1 + 1) + v11;
}

void sub_26D42B87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<int>::Reserve(a1, v4);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<int>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_26D42B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Reserve(int *a1, int a2)
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
      v6 = *(google::protobuf::RepeatedField<int>::elements(a1) - 8);
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
    v5 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
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
  google::protobuf::RepeatedField<int>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<int>::elements(a1);
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

void sub_26D42BB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::AddNAlreadyReserved(uint64_t a1, int a2)
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

void sub_26D42BC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Mutable(_DWORD *a1, int a2)
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

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_26D42BCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Get(_DWORD *a1, int a2)
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

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_26D42BDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<int>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *google::protobuf::RepeatedField<int>::operator=(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
  }

  return a1;
}

void google::protobuf::RepeatedField<int>::CopyFrom(int *a1, int *a2)
{
  if (a2 != a1)
  {
    *a1 = 0;
    google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
  }
}

uint64_t google::protobuf::RepeatedField<int>::RepeatedField(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
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
      google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<int>::InternalSwap(a1, a2);
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
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
      google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
    }
  }

  else
  {
    google::protobuf::RepeatedField<int>::InternalSwap(a1, a2);
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<int>::GetArena(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = google::protobuf::RepeatedField<int>::elements(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<int>::InternalSwap(uint64_t a1, __n128 *a2)
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
    v5 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
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

void sub_26D42C06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *google::protobuf::RepeatedField<int>::operator=(int *a1, __n128 *a2)
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
      *a1 = 0;
      google::protobuf::RepeatedField<int>::MergeFrom(a1, a2);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<int>::elements(uint64_t a1)
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

void sub_26D42C220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

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

void sub_26D42C300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26D42C3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42C4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42C894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42C9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42CA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_26D448240)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v10;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = v10;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_26D448230)))).i32[1])
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

void sub_26D42CC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42CED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42CFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42D0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42D1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42D390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42D450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42D528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42D608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42D898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42DA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42DB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26D42DC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42DCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42DE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_26D448240)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v10;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = v10;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_26D448230)))).i32[1])
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

void sub_26D42E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42E9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42EB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42ED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42EE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42F330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26D42F410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42F500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42F65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42F818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42F8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42FA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42FB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42FC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42FEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D42FFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4300B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4301D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D430384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D430444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D43051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4305FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D43088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D430A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D430B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26D430C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D430CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D430E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D431008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4310B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4311DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D43128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D43132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D43145C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D431678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D431768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D431864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D43198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D431B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D431BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D431CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D431DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D432040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4321F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4322D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26D4323B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4324AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D432610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4327CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D432878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4329A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D432A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D432AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_26D448240)));
        if (vuzp1_s16(v15, v9).u8[0])
        {
          *(v13 - 2) = v9.i32[0];
        }

        if (vuzp1_s16(v15, v9).i8[2])
        {
          *(v13 - 1) = v9.i32[0];
        }

        if (vuzp1_s16(v9, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_26D448230)))).i32[1])
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

void sub_26D432C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D432E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D432F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D43306C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D433194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D433340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D433400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4334D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4335B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D433848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D4339FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D433ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_26D433BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_26D433CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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