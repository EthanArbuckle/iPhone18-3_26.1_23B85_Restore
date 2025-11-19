char *google::protobuf::internal::WireFormatLite::WriteSInt32(char *result, int a2, google::protobuf::io::EpsCopyOutputStream *this)
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
  v11 = (2 * a2) ^ (a2 >> 31);
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

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

  *(this + 8) = v12;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteSInt64(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
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
  v11 = (2 * a2) ^ (a2 >> 63);
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

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

  *(this + 8) = v12;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteFixed32(char *result, int a2, google::protobuf::io::EpsCopyOutputStream *this)
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
    *v6 = v5 | 0x85;
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
    *v6 = v5 | 5;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = a2;
  *(this + 8) = v7 + 4;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteFixed64(char *result, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
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
    *v6 = v5 | 0x81;
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
    *v6 = v5 | 1;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = a2;
  *(this + 8) = v7 + 8;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteFloat(char *result, google::protobuf::io::EpsCopyOutputStream *this, float a3)
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
    *v6 = v5 | 0x85;
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
    *v6 = v5 | 5;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = a3;
  *(this + 8) = v7 + 4;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteDouble(char *result, google::protobuf::io::EpsCopyOutputStream *this, double a3)
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
    *v6 = v5 | 0x81;
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
    *v6 = v5 | 1;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  if (*this <= v7)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
    v7 = result;
  }

  *v7 = a3;
  *(this + 8) = v7 + 8;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteBool(char *result, char a2, google::protobuf::io::EpsCopyOutputStream *this)
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

  *v7 = a2;
  *(this + 8) = v7 + 1;
  return result;
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteString(int a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * a1;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, *(this + 8));
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 482);
    v12 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (value.size()) <= (kint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(a2 + 23);
    v7 = *(this + 8);
  }

  if ((v11 & 0x80u) == 0)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*this <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
  }

  if (v13 > 0x7F)
  {
    *v7 = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = (v7 + 2);
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
      v7[1] = v15;
      v14 = (v7 + 2);
    }
  }

  else
  {
    *v7 = v13;
    v14 = (v7 + 1);
  }

  *(this + 8) = v14;
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    LODWORD(v20) = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  if (*this - v14 < v20)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, v19, v20, v14);
  }

  else
  {
    v21 = v20;
    memcpy(v14, v19, v20);
    result = &v14[v21];
  }

  *(this + 8) = result;
  return result;
}

void sub_26D43F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(int a1, void **a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * a1;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, *(this + 8));
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  v11 = *(a2 + 23);
  if (v11 < 0 && a2[1] >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 491);
    v12 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (value.size()) <= (kint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(a2 + 23);
    v7 = *(this + 8);
  }

  if ((v11 & 0x80u) == 0)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    v13 = a2[1];
  }

  if (*this <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
  }

  if (v13 > 0x7F)
  {
    *v7 = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = v7 + 2;
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
      v7[1] = v15;
      v14 = v7 + 2;
    }
  }

  else
  {
    *v7 = v13;
    v14 = v7 + 1;
  }

  *(this + 8) = v14;
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 2);
  }

  result = google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(this, v19, v20, v14);
  *(this + 8) = result;
  return result;
}

void sub_26D43FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteBytes(int a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * a1;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, *(this + 8));
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 498);
    v12 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (value.size()) <= (kint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(a2 + 23);
    v7 = *(this + 8);
  }

  if ((v11 & 0x80u) == 0)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*this <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
  }

  if (v13 > 0x7F)
  {
    *v7 = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = (v7 + 2);
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
      v7[1] = v15;
      v14 = (v7 + 2);
    }
  }

  else
  {
    *v7 = v13;
    v14 = (v7 + 1);
  }

  *(this + 8) = v14;
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    LODWORD(v20) = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  if (*this - v14 < v20)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, v19, v20, v14);
  }

  else
  {
    v21 = v20;
    memcpy(v14, v19, v20);
    result = &v14[v21];
  }

  *(this + 8) = result;
  return result;
}

void sub_26D43FD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(int a1, void **a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * a1;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, *(this + 8));
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  v11 = *(a2 + 23);
  if (v11 < 0 && a2[1] >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 506);
    v12 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: (value.size()) <= (kint32max): ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
    LOBYTE(v11) = *(a2 + 23);
    v7 = *(this + 8);
  }

  if ((v11 & 0x80u) == 0)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    v13 = a2[1];
  }

  if (*this <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v7);
  }

  if (v13 > 0x7F)
  {
    *v7 = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = v7 + 2;
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
      v7[1] = v15;
      v14 = v7 + 2;
    }
  }

  else
  {
    *v7 = v13;
    v14 = v7 + 1;
  }

  *(this + 8) = v14;
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 2);
  }

  result = google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(this, v19, v20, v14);
  *(this + 8) = result;
  return result;
}

void sub_26D43FF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::WireFormatLite::WriteGroup(int a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * a1;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
  }

  v7 = v5 >> 7;
  v8 = v5 >> 14;
  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x83;
    if (v8)
    {
      v9 = v6 + 2;
      v10 = v5 >> 7;
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
      v6[1] = v7;
      v9 = v6 + 2;
    }
  }

  else
  {
    *v6 = v5 | 3;
    v9 = v6 + 1;
  }

  *(this + 8) = v9;
  result = (*(*a2 + 96))(a2);
  v14 = result;
  *(this + 8) = result;
  if (*this <= result)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, result);
    v14 = result;
  }

  if (v5 > 0x7F)
  {
    *v14 = v5 | 0x84;
    if (v8)
    {
      v15 = v14 + 2;
      do
      {
        *(v15 - 1) = v7 | 0x80;
        v16 = v7 >> 7;
        ++v15;
        v17 = v7 >> 14;
        v7 >>= 7;
      }

      while (v17);
      *(v15 - 1) = v16;
    }

    else
    {
      v14[1] = v7;
      v15 = v14 + 2;
    }
  }

  else
  {
    *v14 = v5 | 4;
    v15 = v14 + 1;
  }

  *(this + 8) = v15;
  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteMessage(int a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * a1;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(this + 8) = v7;
  v11 = (*(*a2 + 80))(a2);
  v12 = *(this + 8);
  if (*this <= v12)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v12);
  }

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

  *(this + 8) = v13;
  result = (*(*a2 + 96))(a2);
  *(this + 8) = result;
  return result;
}

uint64_t google::protobuf::internal::WireFormatLite::WriteSubMessageMaybeToArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a2 + 96))(a2, *(a3 + 64));
  *(a3 + 64) = result;
  return result;
}

char *google::protobuf::internal::WireFormatLite::WriteGroupMaybeToArray(int a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = 8 * a1;
  v6 = *(this + 8);
  if (*this <= v6)
  {
    v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v6);
  }

  v7 = v5 >> 7;
  v8 = v5 >> 14;
  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x83;
    if (v8)
    {
      v9 = v6 + 2;
      v10 = v5 >> 7;
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
      v6[1] = v7;
      v9 = v6 + 2;
    }
  }

  else
  {
    *v6 = v5 | 3;
    v9 = v6 + 1;
  }

  *(this + 8) = v9;
  (*(*a2 + 80))(a2);
  result = (*(*a2 + 96))(a2, *(this + 8), this);
  v14 = result;
  *(this + 8) = result;
  if (*this <= result)
  {
    result = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, result);
    v14 = result;
  }

  if (v5 > 0x7F)
  {
    *v14 = v5 | 0x84;
    if (v8)
    {
      v15 = v14 + 2;
      do
      {
        *(v15 - 1) = v7 | 0x80;
        v16 = v7 >> 7;
        ++v15;
        v17 = v7 >> 14;
        v7 >>= 7;
      }

      while (v17);
      *(v15 - 1) = v16;
    }

    else
    {
      v14[1] = v7;
      v15 = v14 + 2;
    }
  }

  else
  {
    *v14 = v5 | 4;
    v15 = v14 + 1;
  }

  *(this + 8) = v15;
  return result;
}

BOOL google::protobuf::internal::WireFormatLite::ReadBytes(char **this, std::string *a2)
{
  v4 = *this;
  if (*this >= this[1])
  {
    LODWORD(Varint32Fallback) = 0;
  }

  else
  {
    Varint32Fallback = *v4;
    if ((*v4 & 0x80000000) == 0)
    {
      *this = v4 + 1;
      goto LABEL_6;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, Varint32Fallback);
  if (Varint32Fallback < 0)
  {
    return 0;
  }

LABEL_6:

  return google::protobuf::io::CodedInputStream::ReadString(this, a2, Varint32Fallback);
}

BOOL google::protobuf::internal::WireFormatLite::ReadBytes(char **this, std::string **a2)
{
  v3 = *a2;
  if (*a2 == &google::protobuf::internal::fixed_address_empty_string)
  {
    operator new();
  }

  v4 = *this;
  if (*this >= this[1])
  {
    LODWORD(Varint32Fallback) = 0;
  }

  else
  {
    Varint32Fallback = *v4;
    if ((*v4 & 0x80000000) == 0)
    {
      *this = v4 + 1;
      goto LABEL_8;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, Varint32Fallback);
  if (Varint32Fallback < 0)
  {
    return 0;
  }

LABEL_8:

  return google::protobuf::io::CodedInputStream::ReadString(this, v3, Varint32Fallback);
}

void google::protobuf::internal::PrintUTF8ErrorLog(google::protobuf::internal *this, const char *a2, const char *a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (this)
  {
    google::protobuf::StringPrintf(" '%s'", v14, this);
    __p = v14[0];
  }

  google::protobuf::internal::LogMessage::LogMessage(v14, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 577);
  v4 = google::protobuf::internal::LogMessage::operator<<(v14, "String field");
  v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, " contains invalid ");
  v7 = google::protobuf::internal::LogMessage::operator<<(v6, "UTF-8 data when ");
  v8 = google::protobuf::internal::LogMessage::operator<<(v7, a2);
  v9 = google::protobuf::internal::LogMessage::operator<<(v8, " a protocol ");
  v10 = google::protobuf::internal::LogMessage::operator<<(v9, "buffer. Use the 'bytes' type if you intend to send raw ");
  v11 = google::protobuf::internal::LogMessage::operator<<(v10, "bytes. ");
  v12 = google::protobuf::internal::LogMessage::operator<<(v11, v16);
  google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_26D440644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::WireFormatLite::VerifyUtf8String(google::protobuf::internal *a1, const char *a2, int a3, google::protobuf::internal *a4)
{
  IsStructurallyValidUTF8 = google::protobuf::internal::IsStructurallyValidUTF8(a1, a2);
  if (!IsStructurallyValidUTF8)
  {
    v7 = "serializing";
    if (a3 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = "parsing";
    }

    google::protobuf::internal::PrintUTF8ErrorLog(a4, v8, 0);
  }

  return IsStructurallyValidUTF8;
}

uint64_t google::protobuf::internal::WireFormatLite::Int32Size(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *google::protobuf::RepeatedField<int>::Get(a1, v3);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    v4 += v6;
    ++v3;
  }

  while (v1 != v3);
  return v4;
}

uint64_t google::protobuf::internal::WireFormatLite::UInt32Size(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned int>::Get(a1, v3++) | 1) ^ 0x1F) + 73) >> 6;
  }

  while (v1 != v3);
  return v4;
}

uint64_t google::protobuf::internal::WireFormatLite::SInt32Size(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = google::protobuf::RepeatedField<int>::Get(a1, v3);
    v4 += (9 * (__clz((2 * *v5) ^ (*v5 >> 31) | 1) ^ 0x1F) + 73) >> 6;
    ++v3;
  }

  while (v1 != v3);
  return v4;
}

uint64_t google::protobuf::internal::WireFormatLite::Int64Size(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 += (9 * (__clz(*google::protobuf::RepeatedField<long long>::Get(a1, v3++) | 1) ^ 0x3F) + 73) >> 6;
  }

  while (v1 != v3);
  return v4;
}

uint64_t google::protobuf::internal::WireFormatLite::UInt64Size(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned long long>::Get(a1, v3++) | 1) ^ 0x3F) + 73) >> 6;
  }

  while (v1 != v3);
  return v4;
}

uint64_t google::protobuf::internal::WireFormatLite::SInt64Size(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = google::protobuf::RepeatedField<long long>::Get(a1, v3);
    v4 += (9 * (__clz((2 * *v5) ^ (*v5 >> 63) | 1) ^ 0x3F) + 73) >> 6;
    ++v3;
  }

  while (v1 != v3);
  return v4;
}

uint64_t google::protobuf::io::ArrayInputStream::ArrayInputStream(uint64_t this, const void *a2, int a3, int a4)
{
  *this = &unk_287EBCE00;
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

BOOL google::protobuf::io::ArrayInputStream::Next(google::protobuf::io::ArrayInputStream *this, const void **a2, int *a3)
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

void google::protobuf::io::ArrayInputStream::BackUp(google::protobuf::io::ArrayInputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 80);
    v5 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 82);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 83);
    v8 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_26D440BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::ArrayInputStream::Skip(google::protobuf::io::ArrayInputStream *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 89);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 4);
  v6 = *(this + 6);
  v7 = v5 - v6;
  result = v5 - v6 >= a2;
  v9 = v6 + a2;
  if (v7 >= a2)
  {
    v5 = v9;
  }

  *(this + 6) = v5;
  *(this + 7) = 0;
  return result;
}

void sub_26D440C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::ArrayOutputStream::ArrayOutputStream(uint64_t this, void *a2, int a3, int a4)
{
  *this = &unk_287EBCE40;
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

BOOL google::protobuf::io::ArrayOutputStream::Next(google::protobuf::io::ArrayOutputStream *this, void **a2, int *a3)
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

void google::protobuf::io::ArrayOutputStream::BackUp(google::protobuf::io::ArrayOutputStream *this, int a2)
{
  v4 = *(this + 7);
  if (v4 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 127);
    v5 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BackUp() can only be called after a successful Next().");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v4 = *(this + 7);
  }

  if (v4 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 129);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 130);
    v8 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  *(this + 3) = (*(this + 6) - a2);
}

void sub_26D440E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::StringOutputStream::StringOutputStream(void *result, uint64_t a2)
{
  *result = &unk_287EBCE88;
  result[1] = a2;
  return result;
}

uint64_t google::protobuf::io::StringOutputStream::Next(google::protobuf::io::StringOutputStream *this, void **a2, int *a3)
{
  v6 = *(this + 1);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 142);
    v7 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: target_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    v6 = *(this + 1);
  }

  v8 = *(v6 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v6 + 8);
    v9 = (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < v9)
    {
      goto LABEL_8;
    }
  }

  else if (v8 < 0x16)
  {
    v9 = 22;
    goto LABEL_8;
  }

  v9 = 2 * v8;
LABEL_8:
  if (v8 + 0x7FFFFFFF < v9)
  {
    v9 = v8 + 0x7FFFFFFF;
  }

  if (v9 <= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v9;
  }

  std::string::resize(v6, v10, 0);
  v11 = *(this + 1);
  if (*(v11 + 23) < 0)
  {
    v11 = *v11;
  }

  *a2 = v11 + v8;
  v12 = *(this + 1);
  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    v13 = *(v12 + 8);
  }

  *a3 = v13 - v8;
  return 1;
}

void sub_26D440F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::StringOutputStream::BackUp(google::protobuf::io::StringOutputStream *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 169);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 1);
  if (!v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 170);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: target_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = *(this + 1);
  }

  v7 = *(v5 + 23);
  if (v7 < 0)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v8 = *(v5 + 23);
  }

  if (v8 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 171);
    v9 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) <= (target_->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = *(this + 1);
    LOBYTE(v7) = *(v5 + 23);
  }

  if ((v7 & 0x80) != 0)
  {
    v7 = *(v5 + 8);
  }

  else
  {
    v7 = v7;
  }

  std::string::resize(v5, v7 - a2, 0);
}

void sub_26D4410DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::StringOutputStream::ByteCount(google::protobuf::io::StringOutputStream *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 176);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: target_ != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    v1 = *(this + 1);
  }

  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_26D441180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CopyingInputStream::Skip(google::protobuf::io::CopyingInputStream *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4 = v1;
  v5 = 0;
  v14 = *MEMORY[0x277D85DE8];
  do
  {
    v6 = v5;
    v7 = __OFSUB__(v3, v5);
    v8 = v3 - v5;
    if ((v8 < 0) ^ v7 | (v8 == 0))
    {
      break;
    }

    v9 = v8 >= 4096 ? 4096 : v8;
    v10 = (*(*v4 + 16))(v4, v13, v9);
    v5 = (v10 + v6);
  }

  while (v10 > 0);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_287EBCED0;
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

void google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  *this = &unk_287EBCED0;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    MEMORY[0x26D6BF010](v3, 0x1000C8077774924);
  }
}

{
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(this);

  JUMPOUT(0x26D6BF040);
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::Next(google::protobuf::io::CopyingInputStreamAdaptor *this, const void **a2, int *a3)
{
  if (*(this + 17))
  {
    return 0;
  }

  google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(this);
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

  google::protobuf::io::CopyingInputStreamAdaptor::FreeBuffer(this);
  return 0;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(uint64_t this)
{
  if (!*(this + 32))
  {
    v1 = *(this + 40);
    operator new[]();
  }

  return this;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::FreeBuffer(google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  if (*(this + 12))
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 292);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (backup_bytes_) == (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  *(this + 11) = 0;
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    return MEMORY[0x26D6BF010](result, 0x1000C8077774924);
  }

  return result;
}

void sub_26D44156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::CopyingInputStreamAdaptor::BackUp(google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (*(this + 12) || !*(this + 4))
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 248);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: backup_bytes_ == 0 && buffer_.get() != NULL: ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, " BackUp() can only be called after Next().");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 11) < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 250);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) <= (buffer_used_): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, " Can't back up over more bytes than were returned by the last call to Next().");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 253);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " Parameter to BackUp() can't be negative.");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  *(this + 12) = a2;
}

void sub_26D4416B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CopyingInputStreamAdaptor::Skip(google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 259);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 17))
  {
    return 0;
  }

  v6 = *(this + 12);
  if (v6 >= a2)
  {
    *(this + 12) = v6 - a2;
    return 1;
  }

  else
  {
    v7 = (a2 - v6);
    *(this + 12) = 0;
    v8 = (*(**(this + 1) + 24))(*(this + 1), v7);
    *(this + 3) += v8;
    return v8 == v7;
  }
}

void sub_26D4417B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_287EBCF10;
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
  *(result + 40) = v3;
  *(result + 44) = 0;
  return result;
}

void google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  *this = &unk_287EBCF10;
  google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this);
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    MEMORY[0x26D6BF010](v3, 0x1000C8077774924);
  }
}

{
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);

  JUMPOUT(0x26D6BF040);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    return 1;
  }

  if ((*(**(this + 1) + 16))(*(this + 1), *(this + 4)))
  {
    *(this + 3) += *(this + 11);
    *(this + 11) = 0;
    return 1;
  }

  *(this + 17) = 1;
  *(this + 11) = 0;
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    MEMORY[0x26D6BF010](result, 0x1000C8077774924);
    return 0;
  }

  return result;
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::Next(google::protobuf::io::CopyingOutputStreamAdaptor *this, void **a2, int *a3)
{
  if (*(this + 11) != *(this + 10) || (result = google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this), result))
  {
    google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(this);
    v7 = *(this + 10);
    v8 = *(this + 11);
    *a2 = (*(this + 4) + v8);
    *a3 = v7 - v8;
    *(this + 11) = *(this + 10);
    return 1;
  }

  return result;
}

void google::protobuf::io::CopyingOutputStreamAdaptor::BackUp(google::protobuf::io::CopyingOutputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 331);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 11);
  if (v5 != *(this + 10))
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 332);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (buffer_used_) == (buffer_size_): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, " BackUp() can only be called after Next().");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = *(this + 11);
  }

  if (v5 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 334);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) <= (buffer_used_): ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " Can't back up over more bytes than were returned by the last call to Next().");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = *(this + 11);
  }

  *(this + 11) = v5 - a2;
}

void sub_26D441B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::WriteAliasedRaw(google::protobuf::io::CopyingOutputStreamAdaptor *this, char *a2, uint64_t a3)
{
  v3 = a3;
  if (*(this + 10) > a3)
  {
    __n_4[0].__r_.__value_.__r.__words[0] = 0;
    __n = 0;
    result = (*(*this + 16))(this, __n_4, &__n);
    if (!result)
    {
      return result;
    }

    while (v3 > __n)
    {
      memcpy(__n_4[0].__r_.__value_.__l.__data_, a2, __n);
      a2 += __n;
      LODWORD(v3) = v3 - __n;
      if (((*(*this + 16))(this, __n_4, &__n) & 1) == 0)
      {
        return 0;
      }
    }

    memcpy(__n_4[0].__r_.__value_.__l.__data_, a2, v3);
    (*(*this + 24))(this, (__n - v3));
    return 1;
  }

  result = google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this);
  if (result)
  {
    result = (*(**(this + 1) + 16))(*(this + 1), a2, v3);
    if (result)
    {
      if (*(this + 11))
      {
        google::protobuf::internal::LogMessage::LogMessage(__n_4, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 350);
        v7 = google::protobuf::internal::LogMessage::operator<<(__n_4, "CHECK failed: (buffer_used_) == (0): ");
        google::protobuf::internal::LogFinisher::operator=(&__n, &v7->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__n_4[0].__r_.__value_.__l.__data_);
      }

      *(this + 3) += v3;
      return 1;
    }
  }

  return result;
}

void sub_26D441D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::FreeBuffer(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  *(this + 11) = 0;
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    JUMPOUT(0x26D6BF010);
  }

  return result;
}

void *google::protobuf::io::LimitingInputStream::LimitingInputStream(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_287EBCF58;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = (*(*a2 + 40))(a2);
  return a1;
}

void google::protobuf::io::LimitingInputStream::~LimitingInputStream(google::protobuf::io::LimitingInputStream *this)
{
  *this = &unk_287EBCF58;
  if ((*(this + 2) & 0x8000000000000000) != 0)
  {
    (*(**(this + 1) + 24))(*(this + 1), -*(this + 4));
  }
}

{
  google::protobuf::io::LimitingInputStream::~LimitingInputStream(this);

  JUMPOUT(0x26D6BF040);
}

uint64_t google::protobuf::io::LimitingInputStream::Next(google::protobuf::io::LimitingInputStream *this, const void **a2, int *a3)
{
  if (*(this + 2) < 1)
  {
    return 0;
  }

  result = (*(**(this + 1) + 16))(*(this + 1), a2);
  if (result)
  {
    v6 = *a3;
    v7 = *(this + 2) - v6;
    *(this + 2) = v7;
    if (v7 < 0)
    {
      *a3 = v6 + v7;
    }

    return 1;
  }

  return result;
}

uint64_t google::protobuf::io::LimitingInputStream::BackUp(google::protobuf::io::LimitingInputStream *this, uint64_t a2)
{
  v2 = a2;
  v6 = this + 8;
  v4 = *(this + 1);
  v5 = *(v6 + 1);
  if (v5 < 0)
  {
    v8 = a2;
    result = (*(*v4 + 24))(v4, (a2 - v5));
  }

  else
  {
    result = (*(*v4 + 24))(v4, a2);
    v8 = *(this + 2) + v2;
  }

  *(this + 2) = v8;
  return result;
}

BOOL google::protobuf::io::LimitingInputStream::Skip(google::protobuf::io::LimitingInputStream *this, uint64_t a2)
{
  v4 = *(this + 2);
  v5 = v4 >= a2;
  if (v4 < a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      (*(**(this + 1) + 32))(*(this + 1));
      v6 = 0;
      goto LABEL_6;
    }

    return 0;
  }

  if (!(*(**(this + 1) + 32))(*(this + 1), a2))
  {
    return 0;
  }

  v6 = *(this + 2) - a2;
LABEL_6:
  *(this + 2) = v6;
  return v5;
}

uint64_t google::protobuf::io::LimitingInputStream::ByteCount(google::protobuf::io::LimitingInputStream *this)
{
  v2 = *(this + 2);
  v3 = (*(**(this + 1) + 40))(*(this + 1));
  if (v2 < 0)
  {
    v3 += *(this + 2);
  }

  return v3 - *(this + 3);
}

uint64_t sentencepiece::MemoryMappedNormalizerSpec::SetFlag(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  v4 = v3 & ~a2;
  v5 = v3 | a2;
  if (!a3)
  {
    v5 = v4;
  }

  *(result + 8) = v5;
  return result;
}

uint64_t sentencepiece::MemoryMappedNormalizerSpec::MemoryMappedNormalizerSpec(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287EBD068;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFE | (*(*a2 + 16))(a2);
  if ((*(*a2 + 24))(a2))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFD | v4;
  if ((*(*a2 + 32))(a2))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFB | v5;
  if ((*(*a2 + 40))(a2))
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFF7 | v6;
  return a1;
}

void sentencepiece::MemoryMappedNormalizerSpec::Serialize(sentencepiece::MemoryMappedNormalizerSpec *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 4uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *v4 = v3;
}

void sub_26D4422E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::PieceTypeInfo::Serialize(sentencepiece::PieceTypeInfo *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 1uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *v4 = v3;
}

void sub_26D442350(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::MemoryMappedModelProto::MemoryMappedModelProto(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_287EBD0A8;
  *(a1 + 16) = &unk_287EBD068;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_287EBD068;
  *(a1 + 40) = 0;
  sentencepiece::util::Status::Status((a1 + 88));
  sentencepiece::MemoryMappedModelProto::Init(a1, a2, a3, &v7);
  sentencepiece::util::Status::operator=((a1 + 88), &v7);
  sentencepiece::util::Status::~Status(&v7);
  return a1;
}

void sub_26D44243C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v2 + 88));
  _Unwind_Resume(a1);
}

void *sentencepiece::MemoryMappedModelProto::Init@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(a2, a3, &v12, a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v13, v14, &v11, a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v13, v14, &v10, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sentencepiece::mmap_util::DecodePrefix<int>(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sentencepiece::util::Status::~Status(a4);
                result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sentencepiece::util::Status::~Status(a4);
                  *(a1 + 56) = v13;
                  v8 = sentencepiece::mmap_util::RoundUp(*(a1 + 48), 4uLL);
                  result = sentencepiece::mmap_util::RemovePrefix(&v13, v8, a4);
                  if (!*a4)
                  {
                    sentencepiece::util::Status::~Status(a4);
                    *(a1 + 64) = v13;
                    result = sentencepiece::mmap_util::RemovePrefix(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sentencepiece::util::Status::~Status(a4);
                      *(a1 + 72) = v13;
                      result = sentencepiece::mmap_util::RemovePrefix(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        sentencepiece::util::Status::~Status(a4);
                        *(a1 + 80) = v13;
                        return sentencepiece::util::Status::Status(v9);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sentencepiece::GetPieceTypeInfo(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 104))(a1))
  {
    return 1;
  }

  if ((*(*a1 + 112))(a1, a2))
  {
    return 2;
  }

  if ((*(*a1 + 120))(a1, a2))
  {
    return 3;
  }

  if ((*(*a1 + 128))(a1, a2))
  {
    return 4;
  }

  if ((*(*a1 + 136))(a1, a2))
  {
    return 5;
  }

  v5 = (*(*a1 + 144))(a1, a2);
  if ((v5 & 1) == 0)
  {
    if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
    {
      v16 = 0;
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "mmap_model_proto.cc", 19);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
      v8 = MEMORY[0x26D6BEE80](v7, 95);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unknown piece type: ", 20);
      v14 = (*(*a1 + 88))(a1, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
      sentencepiece::error::Die::~Die(&v16);
    }

    return 1;
  }

  return 6;
}

void sentencepiece::GetMemoryMappableString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = (*(*a1 + 64))(a1);
  v5 = (*(*a1 + 72))(a1);
  v6 = (*(*a1 + 80))(a1);
  memset(&v118, 0, sizeof(v118));
  std::string::resize(&v118, 4uLL, 0);
  v7 = v4 | 2;
  if (!v5)
  {
    v7 = v4;
  }

  v8 = v7 | (v6 << 30);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v118;
  }

  else
  {
    v9 = v118.__r_.__value_.__r.__words[0];
  }

  LODWORD(v9->__r_.__value_.__l.__data_) = v8;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v118;
  }

  else
  {
    v10 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, size);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v12 = (*(*a1 + 152))(a1);
  sentencepiece::MemoryMappedNormalizerSpec::MemoryMappedNormalizerSpec(v117, v12);
  sentencepiece::MemoryMappedNormalizerSpec::Serialize(v117, &v118);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v118;
  }

  else
  {
    v13 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v13, v14);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v15 = (*(*a1 + 160))(a1);
  sentencepiece::MemoryMappedNormalizerSpec::MemoryMappedNormalizerSpec(v116, v15);
  sentencepiece::MemoryMappedNormalizerSpec::Serialize(v116, &v118);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v118;
  }

  else
  {
    v16 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v18 = (*(*a1 + 16))(a1);
  memset(&v118, 0, sizeof(v118));
  std::string::resize(&v118, 4uLL, 0);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v118;
  }

  else
  {
    v19 = v118.__r_.__value_.__r.__words[0];
  }

  LODWORD(v19->__r_.__value_.__l.__data_) = v18;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v118;
  }

  else
  {
    v20 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v20, v21);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v22 = v18;
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      LOBYTE(__src) = sentencepiece::GetPieceTypeInfo(a1, i);
      sentencepiece::PieceTypeInfo::Serialize(&__src, &v118);
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v118;
      }

      else
      {
        v24 = v118.__r_.__value_.__r.__words[0];
      }

      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v118.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v24, v25);
      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }
    }
  }

  sentencepiece::mmap_util::Padding(a2);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      v27 = (*(*a1 + 96))(a1, j);
      memset(&v118, 0, sizeof(v118));
      std::string::resize(&v118, 4uLL, 0);
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v118;
      }

      else
      {
        v28 = v118.__r_.__value_.__r.__words[0];
      }

      *&v28->__r_.__value_.__l.__data_ = v27;
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v118;
      }

      else
      {
        v29 = v118.__r_.__value_.__r.__words[0];
      }

      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v118.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v29, v30);
      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }
    }
  }

  memset(&v118, 0, sizeof(v118));
  __src = 0;
  v114 = 0;
  v115 = 0;
  v31 = (*(*a1 + 24))(a1);
  v33 = v32;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v118.__r_.__value_.__r.__words[1];
  }

  v35 = v114;
  if (v114 >= v115)
  {
    v37 = __src;
    v38 = v114 - __src;
    v39 = (v114 - __src) >> 2;
    v40 = v39 + 1;
    if ((v39 + 1) >> 62)
    {
      goto LABEL_165;
    }

    v41 = v115 - __src;
    if ((v115 - __src) >> 1 > v40)
    {
      v40 = v41 >> 1;
    }

    v42 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
    v43 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v42)
    {
      v43 = v40;
    }

    if (v43)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v43);
    }

    *(4 * v39) = v34;
    v36 = 4 * v39 + 4;
    memcpy(0, v37, v38);
    v44 = __src;
    __src = 0;
    v114 = v36;
    v115 = 0;
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    *v114 = v34;
    v36 = (v35 + 4);
  }

  v114 = v36;
  std::string::append(&v118, v31, v33);
  std::string::push_back(&v118, 0);
  v45 = (*(*a1 + 32))(a1);
  v47 = v46;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = v118.__r_.__value_.__r.__words[1];
  }

  v49 = v114;
  if (v114 >= v115)
  {
    v51 = __src;
    v52 = v114 - __src;
    v53 = (v114 - __src) >> 2;
    v54 = v53 + 1;
    if ((v53 + 1) >> 62)
    {
      goto LABEL_165;
    }

    v55 = v115 - __src;
    if ((v115 - __src) >> 1 > v54)
    {
      v54 = v55 >> 1;
    }

    v42 = v55 >= 0x7FFFFFFFFFFFFFFCLL;
    v56 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v42)
    {
      v56 = v54;
    }

    if (v56)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v56);
    }

    *(4 * v53) = v48;
    v50 = 4 * v53 + 4;
    memcpy(0, v51, v52);
    v57 = __src;
    __src = 0;
    v114 = v50;
    v115 = 0;
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    *v114 = v48;
    v50 = (v49 + 4);
  }

  v114 = v50;
  std::string::append(&v118, v45, v47);
  std::string::push_back(&v118, 0);
  v58 = (*(*a1 + 40))(a1);
  v60 = v59;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v61 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v61 = v118.__r_.__value_.__r.__words[1];
  }

  v62 = v114;
  if (v114 >= v115)
  {
    v64 = __src;
    v65 = v114 - __src;
    v66 = (v114 - __src) >> 2;
    v67 = v66 + 1;
    if ((v66 + 1) >> 62)
    {
      goto LABEL_165;
    }

    v68 = v115 - __src;
    if ((v115 - __src) >> 1 > v67)
    {
      v67 = v68 >> 1;
    }

    v42 = v68 >= 0x7FFFFFFFFFFFFFFCLL;
    v69 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v42)
    {
      v69 = v67;
    }

    if (v69)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v69);
    }

    *(4 * v66) = v61;
    v63 = 4 * v66 + 4;
    memcpy(0, v64, v65);
    v70 = __src;
    __src = 0;
    v114 = v63;
    v115 = 0;
    if (v70)
    {
      operator delete(v70);
    }
  }

  else
  {
    *v114 = v61;
    v63 = (v62 + 4);
  }

  v114 = v63;
  std::string::append(&v118, v58, v60);
  std::string::push_back(&v118, 0);
  v71 = (*(*a1 + 48))(a1);
  v73 = v72;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v74 = v118.__r_.__value_.__r.__words[1];
  }

  v75 = v114;
  if (v114 >= v115)
  {
    v77 = __src;
    v78 = v114 - __src;
    v79 = (v114 - __src) >> 2;
    v80 = v79 + 1;
    if ((v79 + 1) >> 62)
    {
      goto LABEL_165;
    }

    v81 = v115 - __src;
    if ((v115 - __src) >> 1 > v80)
    {
      v80 = v81 >> 1;
    }

    v42 = v81 >= 0x7FFFFFFFFFFFFFFCLL;
    v82 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v42)
    {
      v82 = v80;
    }

    if (v82)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v82);
    }

    *(4 * v79) = v74;
    v76 = 4 * v79 + 4;
    memcpy(0, v77, v78);
    v83 = __src;
    __src = 0;
    v114 = v76;
    v115 = 0;
    if (v83)
    {
      operator delete(v83);
    }
  }

  else
  {
    *v114 = v74;
    v76 = (v75 + 4);
  }

  v114 = v76;
  std::string::append(&v118, v71, v73);
  std::string::push_back(&v118, 0);
  v84 = (*(*a1 + 56))(a1);
  v86 = v85;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v87 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v87 = v118.__r_.__value_.__r.__words[1];
  }

  v88 = v114;
  if (v114 < v115)
  {
    *v114 = v87;
    v89 = (v88 + 4);
    goto LABEL_136;
  }

  v90 = __src;
  v91 = v114 - __src;
  v92 = (v114 - __src) >> 2;
  v93 = v92 + 1;
  if ((v92 + 1) >> 62)
  {
LABEL_165:
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v94 = v115 - __src;
  if ((v115 - __src) >> 1 > v93)
  {
    v93 = v94 >> 1;
  }

  v42 = v94 >= 0x7FFFFFFFFFFFFFFCLL;
  v95 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v42)
  {
    v95 = v93;
  }

  if (v95)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v95);
  }

  *(4 * v92) = v87;
  v89 = 4 * v92 + 4;
  memcpy(0, v90, v91);
  v96 = __src;
  __src = 0;
  v114 = v89;
  v115 = 0;
  if (v96)
  {
    operator delete(v96);
  }

LABEL_136:
  v114 = v89;
  std::string::append(&v118, v84, v86);
  std::string::push_back(&v118, 0);
  if (v18)
  {
    v97 = 0;
    do
    {
      v98 = (*(*a1 + 88))(a1, v97);
      v100 = v99;
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = v118.__r_.__value_.__r.__words[1];
      }

      v102 = v114;
      if (v114 >= v115)
      {
        v104 = __src;
        v105 = v114 - __src;
        v106 = (v114 - __src) >> 2;
        v107 = v106 + 1;
        if ((v106 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v108 = v115 - __src;
        if ((v115 - __src) >> 1 > v107)
        {
          v107 = v108 >> 1;
        }

        v42 = v108 >= 0x7FFFFFFFFFFFFFFCLL;
        v109 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v42)
        {
          v109 = v107;
        }

        if (v109)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v109);
        }

        *(4 * v106) = v101;
        v103 = 4 * v106 + 4;
        memcpy(0, v104, v105);
        v110 = __src;
        __src = 0;
        v114 = v103;
        v115 = 0;
        if (v110)
        {
          operator delete(v110);
        }
      }

      else
      {
        *v114 = v101;
        v103 = (v102 + 4);
      }

      v114 = v103;
      std::string::append(&v118, v98, v100);
      std::string::push_back(&v118, 0);
      ++v97;
    }

    while (v22 != v97);
  }

  std::string::append(a2, __src, v114 - __src);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v111 = &v118;
  }

  else
  {
    v111 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v112 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v112 = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v111, v112);
  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }
}

void sub_26D443364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sentencepiece::MemoryMappedModelProto::~MemoryMappedModelProto(sentencepiece::MemoryMappedModelProto *this)
{
  *this = &unk_287EBD0A8;
  sentencepiece::util::Status::~Status((this + 88));
}

{
  *this = &unk_287EBD0A8;
  sentencepiece::util::Status::~Status((this + 88));

  JUMPOUT(0x26D6BF040);
}

uint64_t sentencepiece::MemoryMappedModelProto::UnkSurface(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = **(this + 9);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::UnkPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::BosPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::EosPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::PadPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::IdToPiece(sentencepiece::MemoryMappedModelProto *this, int a2)
{
  v2 = *(this + 10);
  v3 = *(*(this + 9) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

google::protobuf::io::FileInputStream *google::protobuf::io::FileInputStream::FileInputStream(google::protobuf::io::FileInputStream *this, int a2, int a3)
{
  *this = &unk_287EBD190;
  *(this + 1) = &unk_287EBD1D0;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(this + 32, this + 8, a3);
  return this;
}

uint64_t google::protobuf::io::FileInputStream::CopyingFileInputStream::CopyingFileInputStream(uint64_t this, int a2)
{
  *this = &unk_287EBD1D0;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  return this;
}

BOOL google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 117);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  *(this + 13) = 1;
  if (v3)
  {
    *(this + 4) = *__error();
  }

  return v3 == 0;
}

void sub_26D443850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  *this = &unk_287EBD1D0;
  if (*(this + 12) == 1 && !google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(this))
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 111);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "close() failed: ");
    v3 = strerror(*(this + 4));
    v4 = google::protobuf::internal::LogMessage::operator<<(v2, v3);
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }
}

{
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(this);

  JUMPOUT(0x26D6BF040);
}

uint64_t google::protobuf::io::anonymous namespace::close_no_eintr(google::protobuf::io::_anonymous_namespace_ *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while ((v2 & 0x80000000) != 0 && *__error() == 4);
  return v2;
}

ssize_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Read(google::protobuf::io::FileInputStream::CopyingFileInputStream *this, void *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 132);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
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

void sub_26D443A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Skip(google::protobuf::io::FileInputStream::CopyingFileInputStream *this, uint64_t a2)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 148);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  if ((*(this + 20) & 1) != 0 || lseek(*(this + 2), a2, 1) == -1)
  {
    *(this + 20) = 1;
    return google::protobuf::io::CopyingInputStream::Skip(this);
  }

  return a2;
}

void sub_26D443B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::FileOutputStream::FileOutputStream(google::protobuf::io::FileOutputStream *this, int a2)
{
  *this = &unk_287EBD200;
  result = google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(this, this + 48, -1);
  *result = &unk_287EBD200;
  *(result + 48) = &unk_287EBD248;
  *(result + 56) = a2;
  *(result + 60) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t google::protobuf::io::FileOutputStream::CopyingFileOutputStream::CopyingFileOutputStream(uint64_t this, int a2)
{
  *this = &unk_287EBD248;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  return this;
}

BOOL google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 194);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  *(this + 13) = 1;
  if (v3)
  {
    *(this + 4) = *__error();
  }

  return v3 == 0;
}

void sub_26D443CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileOutputStream::~FileOutputStream(google::protobuf::io::FileOutputStream *this)
{
  *this = &unk_287EBD200;
  google::protobuf::io::CopyingOutputStreamAdaptor::Flush(this);
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream((this + 48));

  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);
}

{
  google::protobuf::io::FileOutputStream::~FileOutputStream(this);

  JUMPOUT(0x26D6BF040);
}

void google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  *this = &unk_287EBD248;
  if (*(this + 12) == 1 && !google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(this))
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 188);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "close() failed: ");
    v3 = strerror(*(this + 4));
    v4 = google::protobuf::internal::LogMessage::operator<<(v2, v3);
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }
}

{
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(this);

  JUMPOUT(0x26D6BF040);
}

BOOL google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Write(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this, char *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 210);
    v6 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (a3 < 1)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    while (1)
    {
      v8 = write(*(this + 2), &a2[v7], a3 - v7);
      v9 = v8;
      if (v8 < 0)
      {
        break;
      }

      result = v8 != 0;
      v7 += v9;
      if (v9)
      {
        v10 = v7 < a3;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        return result;
      }
    }
  }

  while (*__error() == 4);
  v11 = __error();
  result = 0;
  *(this + 4) = *v11;
  return result;
}

void sub_26D443F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::IstreamInputStream::IstreamInputStream(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_287EBD270;
  a1[1] = &unk_287EBD2B0;
  a1[2] = a2;
  google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor((a1 + 3), (a1 + 1), a3);
  return a1;
}

void *google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::CopyingIstreamInputStream(void *result, uint64_t a2)
{
  *result = &unk_287EBD2B0;
  result[1] = a2;
  return result;
}

uint64_t google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::Read(google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream *this, void *a2)
{
  v3 = *(this + 1);
  std::istream::read();
  v4 = *(this + 1);
  result = *(v4 + 8);
  if (!result)
  {
    v6 = *(v4 + *(*v4 - 24) + 32);
    v7 = v6 & 5;
    v8 = v6 & 2;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *google::protobuf::io::OstreamOutputStream::OstreamOutputStream(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_287EBD2E0;
  a1[1] = &unk_287EBD328;
  a1[2] = a2;
  google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor((a1 + 3), (a1 + 1), a3);
  return a1;
}

void *google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::CopyingOstreamOutputStream(void *result, uint64_t a2)
{
  *result = &unk_287EBD328;
  result[1] = a2;
  return result;
}

void google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(google::protobuf::io::OstreamOutputStream *this)
{
  *this = &unk_287EBD2E0;
  v1 = (this + 24);
  google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 24));
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(v1);
}

{
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(this);

  JUMPOUT(0x26D6BF040);
}

BOOL google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::Write(google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream *this, const void *a2)
{
  v3 = *(this + 1);
  std::ostream::write();
  return *(*(this + 1) + *(**(this + 1) - 24) + 32) == 0;
}

uint64_t google::protobuf::io::ConcatenatingInputStream::ConcatenatingInputStream(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_287EBD350;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

uint64_t google::protobuf::io::ConcatenatingInputStream::Next(google::protobuf::io::ConcatenatingInputStream *this, const void **a2, int *a3)
{
  if (*(this + 4) < 1)
  {
    return 0;
  }

  v6 = *(this + 1);
  do
  {
    v7 = (*(**v6 + 16))(*v6, a2, a3);
    if (v7)
    {
      break;
    }

    *(this + 3) += (*(***(this + 1) + 40))(**(this + 1));
    v6 = (*(this + 1) + 8);
    *(this + 1) = v6;
    v8 = *(this + 4);
    v9 = __OFSUB__(v8--, 1);
    *(this + 4) = v8;
  }

  while (!((v8 < 0) ^ v9 | (v8 == 0)));
  return v7;
}

void google::protobuf::io::ConcatenatingInputStream::BackUp(google::protobuf::io::ConcatenatingInputStream *this)
{
  if (*(this + 4) < 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v4, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 327);
    v2 = google::protobuf::internal::LogMessage::operator<<(v4, "Can't BackUp() after failed Next().");
    google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v4[0].__r_.__value_.__l.__data_);
  }

  else
  {
    v1 = *(***(this + 1) + 24);

    v1();
  }
}

void sub_26D444424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::ConcatenatingInputStream::Skip(google::protobuf::io::ConcatenatingInputStream *this, uint64_t a2)
{
  if (*(this + 4) < 1)
  {
    return 0;
  }

  v4 = *(this + 1);
  do
  {
    v5 = (*(**v4 + 40))();
    v6 = (*(***(this + 1) + 32))(**(this + 1), a2);
    if (v6)
    {
      break;
    }

    v7 = v5 + a2;
    v8 = (*(***(this + 1) + 40))(**(this + 1));
    if (v7 <= v8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 341);
      v9 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (final_byte_count) < (target_byte_count): ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    }

    a2 = (v7 - v8);
    *(this + 3) += v8;
    v4 = *(this + 1) + 8;
    *(this + 1) = v4;
    v10 = *(this + 4);
    v11 = __OFSUB__(v10--, 1);
    *(this + 4) = v10;
  }

  while (!((v10 < 0) ^ v11 | (v10 == 0)));
  return v6;
}

void sub_26D4445A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::ConcatenatingInputStream::ByteCount(google::protobuf::io::ConcatenatingInputStream *this)
{
  v1 = *(this + 3);
  if (*(this + 4))
  {
    v1 += (*(***(this + 1) + 40))(**(this + 1));
  }

  return v1;
}

uint64_t google::protobuf::io::ZeroCopyOutputStream::WriteAliasedRaw(google::protobuf::io::ZeroCopyOutputStream *this, const void *a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream.cc", 47);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_26D44476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void TGITextGenerationInferenceModel::createWithConfiguration(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 16))(a1);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_26D3C1000, a2, OS_LOG_TYPE_ERROR, "Failed to create text generator model: %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

void TGITextGenerationInferenceUtils::sliceAtIndex<unsigned char>()
{
  __assert_rtn("sliceAtIndex", "TGITextGenerationInferenceUtils.hpp", 113, "size > 0 && nSlices > 0 && size % nSlices == 0");
}

{
  __assert_rtn("sliceAtIndex", "TGITextGenerationInferenceUtils.hpp", 114, "index < nSlices");
}

void TGITextGenerationInferenceModel::setModelStepStateForIndex()
{
  __assert_rtn("setModelStepStateForIndex", "TGITextGenerationInferenceModel.cpp", 227, "numTokens < maxStateLength");
}

{
  __assert_rtn("setModelStepStateForIndex", "TGITextGenerationInferenceModel.cpp", 231, "isSpanEqualToVector(Span<TGDTokenIDType>(modelStepState.m_tokenIDs.Data(), lastTokenIndex), m_tokenIDs)");
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText_SentencePiece>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SentencePieceText_SentencePiece *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SentencePieceText_SentencePiece::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SentencePieceText *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SentencePieceText::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void sentencepiece::TrainerSpec::_InternalParse(sentencepiece::TrainerSpec *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v322 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v322, *(a3 + 23));
  v6 = v322;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = (v6 + 1);
    LODWORD(v8) = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = (v8 + (*v7 << 7) - 128);
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v6 + 2);
LABEL_6:
      v322 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v6, v8);
    v322 = TagFallback;
    if (!TagFallback)
    {
      return;
    }

    v7 = TagFallback;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v322 = (v9 + 1);
          v10 = *(this + 9);
          if (!v10)
          {
            v13 = *(this + 17);
LABEL_16:
            google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 14, v13 + 1);
            v12 = *(this + 9);
            v20 = *v12;
            goto LABEL_17;
          }

          v11 = *(this + 16);
          OUTLINED_FUNCTION_15(v10);
          if (v14 != v15)
          {
            OUTLINED_FUNCTION_13();
            *(this + 16) = v17;
            v19 = *(v18 + 8);
            goto LABEL_22;
          }

          if (v13 == *(this + 17))
          {
            goto LABEL_16;
          }

LABEL_17:
          OUTLINED_FUNCTION_20(v12);
          v21 = *(this + 7);
          if (!v21)
          {
            OUTLINED_FUNCTION_21();
          }

          if (*(v21 + 24))
          {
            v29 = OUTLINED_FUNCTION_8();
          }

          v22 = OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_17(v22);
          v23 = *(this + 9);
          v24 = *(this + 16);
          OUTLINED_FUNCTION_16();
          *(this + 16) = v25;
          v19 = OUTLINED_FUNCTION_14(v26, v27);
LABEL_22:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v19, v16, a3);
          if (v322)
          {
            OUTLINED_FUNCTION_12();
            if (!(!v257 & v28) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 1);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v127, v56);
        }

        v57 = (this + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v186 = v7 + 1;
        v185 = *v7;
        if ((v185 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_0_0(v185, v186);
        if (v188 < 0)
        {
          v322 = google::protobuf::internal::VarintParseSlow64(v187, v185);
          if (!v322)
          {
            return;
          }
        }

        else
        {
          v186 = v187 + 2;
LABEL_183:
          v322 = v186;
        }

        if ((v185 - 1) > 3)
        {
          v316 = *(this + 1);
          if (v316)
          {
            v317 = ((v316 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v320 = v185;
            v321 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            v185 = v320;
            v317 = v321;
          }

          google::protobuf::internal::WriteVarint(3, v185, v317);
        }

        else
        {
          *(this + 10) |= 0x800000u;
          *(this + 68) = v185;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x1000000);
        if ((v123 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_1(v123, v124);
        if (v126 < 0)
        {
          v284 = google::protobuf::internal::VarintParseSlow64(v125, v123);
          v322 = v284;
          *(this + 69) = v285;
          if (!v284)
          {
            return;
          }
        }

        else
        {
          v124 = v125 + 2;
LABEL_122:
          v322 = v124;
          *(this + 69) = v123;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v152 = v7 - 1;
        while (1)
        {
          v322 = (v152 + 1);
          v153 = *(this + 12);
          if (!v153)
          {
            break;
          }

          v154 = *(this + 22);
          OUTLINED_FUNCTION_15(v153);
          if (v14 == v15)
          {
            if (v156 == *(this + 23))
            {
LABEL_154:
              google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 20, v156 + 1);
              v155 = *(this + 12);
              v161 = *v155;
            }

            OUTLINED_FUNCTION_20(v155);
            v162 = *(this + 10);
            if (!v162)
            {
              OUTLINED_FUNCTION_21();
            }

            if (*(v162 + 24))
            {
              v169 = OUTLINED_FUNCTION_8();
            }

            v163 = OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_17(v163);
            v164 = *(this + 12);
            v165 = *(this + 22);
            OUTLINED_FUNCTION_16();
            *(this + 22) = v166;
            v160 = OUTLINED_FUNCTION_14(v167, v168);
            goto LABEL_160;
          }

          OUTLINED_FUNCTION_13();
          *(this + 22) = v158;
          v160 = *(v159 + 8);
LABEL_160:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v160, v157, a3);
          if (!v322)
          {
            return;
          }

          OUTLINED_FUNCTION_12();
          if (!(!v257 & v28) || *v152 != 42)
          {
            goto LABEL_267;
          }
        }

        v156 = *(this + 23);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x200);
        if ((v181 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        OUTLINED_FUNCTION_1(v181, v182);
        if (v184 < 0)
        {
          v298 = google::protobuf::internal::VarintParseSlow64(v183, v181);
          v322 = v298;
          *(this + 56) = v299;
          if (!v298)
          {
            return;
          }
        }

        else
        {
          v182 = v183 + 2;
LABEL_178:
          v322 = v182;
          *(this + 56) = v181;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 2);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v219, v56);
        }

        v57 = (this + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x2000000u;
        v221 = *v7;
        v144 = (v7 + 4);
        *(this + 70) = v221;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x800);
        if ((v97 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_0_0(v97, v98);
        if (v100 < 0)
        {
          v274 = google::protobuf::internal::VarintParseSlow64(v99, v97);
          v322 = v274;
          *(this + 29) = v275;
          if (!v274)
          {
            return;
          }
        }

        else
        {
          v98 = v99 + 2;
LABEL_100:
          v322 = v98;
          *(this + 29) = v97;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x400);
        if ((v222 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        OUTLINED_FUNCTION_1(v222, v223);
        if (v225 < 0)
        {
          v304 = google::protobuf::internal::VarintParseSlow64(v224, v222);
          v322 = v304;
          *(this + 57) = v305;
          if (!v304)
          {
            return;
          }
        }

        else
        {
          v223 = v224 + 2;
LABEL_234:
          v322 = v223;
          *(this + 57) = v222;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x1000);
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_1(v113, v114);
        if (v116 < 0)
        {
          v280 = google::protobuf::internal::VarintParseSlow64(v115, v113);
          v322 = v280;
          *(this + 60) = v281;
          if (!v280)
          {
            return;
          }
        }

        else
        {
          v114 = v115 + 2;
LABEL_113:
          v322 = v114;
          *(this + 60) = v113;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x4000000);
        if ((v171 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        OUTLINED_FUNCTION_1(v171, v172);
        if (v174 < 0)
        {
          v294 = google::protobuf::internal::VarintParseSlow64(v173, v171);
          v322 = v294;
          *(this + 71) = v295;
          if (!v294)
          {
            return;
          }
        }

        else
        {
          v172 = v173 + 2;
LABEL_169:
          v322 = v172;
          *(this + 71) = v171;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x8000000u;
        v145 = *v7;
        v144 = (v7 + 4);
        *(this + 72) = v145;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x10000000);
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_1(v74, v75);
        if (v77 < 0)
        {
          v272 = google::protobuf::internal::VarintParseSlow64(v76, v74);
          v322 = v272;
          *(this + 73) = v273;
          if (!v272)
          {
            return;
          }
        }

        else
        {
          v75 = v76 + 2;
LABEL_76:
          v322 = v75;
          *(this + 73) = v74;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x20000000);
        if ((v211 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        OUTLINED_FUNCTION_1(v211, v212);
        if (v214 < 0)
        {
          v300 = google::protobuf::internal::VarintParseSlow64(v213, v211);
          v322 = v300;
          *(this + 74) = v301;
          if (!v300)
          {
            return;
          }
        }

        else
        {
          v212 = v213 + 2;
LABEL_217:
          v322 = v212;
          *(this + 74) = v211;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x40000000);
        if ((v215 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        OUTLINED_FUNCTION_1(v215, v216);
        if (v218 < 0)
        {
          v302 = google::protobuf::internal::VarintParseSlow64(v217, v215);
          v322 = v302;
          *(this + 75) = v303;
          if (!v302)
          {
            return;
          }
        }

        else
        {
          v216 = v217 + 2;
LABEL_222:
          v322 = v216;
          *(this + 75) = v215;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 1);
        if (v234 < 0 && (OUTLINED_FUNCTION_0_0(v234, v235), v238 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v237, v236);
          OUTLINED_FUNCTION_3();
          *(this + 308) = v310;
          if (!v311)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 308) = v239;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x80000000);
        if ((v230 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        OUTLINED_FUNCTION_1(v230, v231);
        if (v233 < 0)
        {
          v308 = google::protobuf::internal::VarintParseSlow64(v232, v230);
          v322 = v308;
          *(this + 76) = v309;
          if (!v308)
          {
            return;
          }
        }

        else
        {
          v231 = v232 + 2;
LABEL_244:
          v322 = v231;
          *(this + 76) = v230;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 2);
        if (v58 < 0 && (OUTLINED_FUNCTION_0_0(v58, v59), v62 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v61, v60);
          OUTLINED_FUNCTION_3();
          *(this + 309) = v266;
          if (!v267)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 309) = v63;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 8);
        if (v146 < 0 && (OUTLINED_FUNCTION_0_0(v146, v147), v150 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v149, v148);
          OUTLINED_FUNCTION_3();
          *(this + 311) = v292;
          if (!v293)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 311) = v151;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 4);
        if (v241 < 0 && (OUTLINED_FUNCTION_0_0(v241, v242), v245 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v244, v243);
          OUTLINED_FUNCTION_3();
          *(this + 310) = v312;
          if (!v313)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 310) = v246;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x4000);
        if (v68 < 0 && (OUTLINED_FUNCTION_0_0(v68, v69), v72 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v71, v70);
          OUTLINED_FUNCTION_3();
          *(this + 245) = v270;
          if (!v271)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 245) = v73;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x10000);
        if (v138 < 0 && (OUTLINED_FUNCTION_0_0(v138, v139), v142 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v141, v140);
          OUTLINED_FUNCTION_3();
          *(this + 247) = v290;
          if (!v291)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 247) = v143;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x8000);
        if (v101 < 0 && (OUTLINED_FUNCTION_0_0(v101, v102), v105 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v104, v103);
          OUTLINED_FUNCTION_3();
          *(this + 246) = v276;
          if (!v277)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 246) = v106;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v189 = (v7 - 2);
        while (1)
        {
          v322 = (v189 + 1);
          v190 = *(this + 15);
          if (!v190)
          {
            break;
          }

          v191 = *(this + 28);
          OUTLINED_FUNCTION_15(v190);
          if (v14 == v15)
          {
            if (v193 == *(this + 29))
            {
LABEL_194:
              google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 26, v193 + 1);
              v192 = *(this + 15);
              v198 = *v192;
            }

            OUTLINED_FUNCTION_20(v192);
            v199 = *(this + 13);
            if (!v199)
            {
              OUTLINED_FUNCTION_21();
            }

            if (*(v199 + 24))
            {
              v206 = OUTLINED_FUNCTION_8();
            }

            v200 = OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_17(v200);
            v201 = *(this + 15);
            v202 = *(this + 28);
            OUTLINED_FUNCTION_16();
            *(this + 28) = v203;
            v197 = OUTLINED_FUNCTION_14(v204, v205);
            goto LABEL_200;
          }

          OUTLINED_FUNCTION_13();
          *(this + 28) = v195;
          v197 = *(v196 + 8);
LABEL_200:
          v322 = google::protobuf::internal::InlineGreedyStringParser(v197, v194, a3);
          if (!v322)
          {
            return;
          }

          OUTLINED_FUNCTION_12();
          if (!(!v257 & v28) || *v189 != 498)
          {
            goto LABEL_267;
          }
        }

        v193 = *(this + 29);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v78 = (v7 - 2);
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 0x10);
        if (v49 < 0 && (OUTLINED_FUNCTION_0_0(v49, v50), v53 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v52, v51);
          OUTLINED_FUNCTION_3();
          *(this + 312) = v264;
          if (!v265)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 312) = v54;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(v7, *(this + 11) | 0x20);
        if (v247 < 0 && (OUTLINED_FUNCTION_0_0(v247, v248), v251 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v250, v249);
          OUTLINED_FUNCTION_3();
          *(this + 313) = v314;
          if (!v315)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 313) = v252;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x40000);
        if (v117 < 0 && (OUTLINED_FUNCTION_0_0(v117, v118), v121 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v120, v119);
          OUTLINED_FUNCTION_3();
          *(this + 249) = v282;
          if (!v283)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 249) = v122;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x20000);
        if (v128 < 0 && (OUTLINED_FUNCTION_0_0(v128, v129), v132 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v131, v130);
          OUTLINED_FUNCTION_3();
          *(this + 248) = v286;
          if (!v287)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 248) = v133;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 4);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v210, v56);
        }

        v57 = (this + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(v7, *(this + 10) | 0x100000);
        if ((v134 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        OUTLINED_FUNCTION_1(v134, v135);
        if (v137 < 0)
        {
          v288 = google::protobuf::internal::VarintParseSlow64(v136, v134);
          v322 = v288;
          *(this + 63) = v289;
          if (!v288)
          {
            return;
          }
        }

        else
        {
          v135 = v136 + 2;
LABEL_135:
          v322 = v135;
          *(this + 63) = v134;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x40);
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_1(v36, v37);
        if (v39 < 0)
        {
          v262 = google::protobuf::internal::VarintParseSlow64(v38, v36);
          v322 = v262;
          *(this + 79) = v263;
          if (!v262)
          {
            return;
          }
        }

        else
        {
          v37 = v38 + 2;
LABEL_38:
          v322 = v37;
          *(this + 79) = v36;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x80);
        if ((v64 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_1(v64, v65);
        if (v67 < 0)
        {
          v268 = google::protobuf::internal::VarintParseSlow64(v66, v64);
          v322 = v268;
          *(this + 80) = v269;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          v65 = v66 + 2;
LABEL_67:
          v322 = v65;
          *(this + 80) = v64;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(v7, *(this + 11) | 0x100);
        if ((v226 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        OUTLINED_FUNCTION_1(v226, v227);
        if (v229 < 0)
        {
          v306 = google::protobuf::internal::VarintParseSlow64(v228, v226);
          v322 = v306;
          *(this + 81) = v307;
          if (!v306)
          {
            return;
          }
        }

        else
        {
          v227 = v228 + 2;
LABEL_239:
          v322 = v227;
          *(this + 81) = v226;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 8);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v253, v254, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_;
        v44 = (this + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x10);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v47, v48, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_;
        v44 = (this + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x20);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v208, v209, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_;
        v44 = (this + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x40);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v45, v46, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_;
        v44 = (this + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x80);
        if (v42)
        {
          OUTLINED_FUNCTION_11(v40, v41, v42);
        }

        v43 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_;
        v44 = (this + 208);
LABEL_264:
        v220 = google::protobuf::internal::ArenaStringPtr::Mutable(v44, v43, v42);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x80000);
        if (v107 < 0 && (OUTLINED_FUNCTION_0_0(v107, v108), v111 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v110, v109);
          OUTLINED_FUNCTION_3();
          *(this + 250) = v278;
          if (!v279)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 250) = v112;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x2000);
        if (v175 < 0 && (OUTLINED_FUNCTION_0_0(v175, v176), v179 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v178, v177);
          OUTLINED_FUNCTION_3();
          *(this + 244) = v296;
          if (!v297)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 244) = v180;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x200000u;
        v240 = *v7;
        v144 = (v7 + 4);
        *(this + 64) = v240;
LABEL_251:
        v322 = v144;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(v7, *(this + 10) | 0x400000);
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_0_0(v32, v33);
        if (v35 < 0)
        {
          v260 = google::protobuf::internal::VarintParseSlow64(v34, v32);
          v322 = v260;
          *(this + 33) = v261;
          if (!v260)
          {
            return;
          }
        }

        else
        {
          v33 = v34 + 2;
LABEL_33:
          v322 = v33;
          *(this + 33) = v32;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 0x100);
        if (v56)
        {
          OUTLINED_FUNCTION_18(v55, v56);
        }

        v57 = (this + 216);
LABEL_227:
        v220 = google::protobuf::internal::ArenaStringPtr::Mutable(v57, v56);
LABEL_265:
        v255 = google::protobuf::internal::InlineGreedyStringParser(v220, v322, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v257 = (v8 & 7) == 4;
        }

        else
        {
          v257 = 1;
        }

        if (v257)
        {
          *(a3 + 20) = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v258 = *(this + 1);
          if (v258)
          {
            v259 = (v258 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v318 = v8;
            v319 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            LODWORD(v8) = v318;
            v259 = v319;
            v7 = v322;
          }

          v255 = google::protobuf::internal::UnknownFieldParse(v8, v259, v7, a3);
        }

        else
        {
          v255 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, &sentencepiece::_TrainerSpec_default_instance_, this + 1, a3);
        }

LABEL_266:
        v322 = v255;
        if (!v255)
        {
          return;
        }

LABEL_267:
        v256 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v322, *(a3 + 23));
        v6 = v322;
        if (v256)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v322 = (v78 + 1);
    v79 = *(this + 18);
    if (!v79)
    {
      break;
    }

    v80 = *(this + 34);
    OUTLINED_FUNCTION_15(v79);
    if (v14 == v15)
    {
      if (v82 == *(this + 35))
      {
LABEL_85:
        google::protobuf::RepeatedPtrField<std::string>::Reserve(this + 32, v82 + 1);
        v81 = *(this + 18);
        v87 = *v81;
      }

      OUTLINED_FUNCTION_20(v81);
      v88 = *(this + 16);
      if (!v88)
      {
        OUTLINED_FUNCTION_21();
      }

      if (*(v88 + 24))
      {
        v95 = OUTLINED_FUNCTION_8();
      }

      v89 = OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_17(v89);
      v90 = *(this + 18);
      v91 = *(this + 34);
      OUTLINED_FUNCTION_16();
      *(this + 34) = v92;
      v86 = OUTLINED_FUNCTION_14(v93, v94);
      goto LABEL_91;
    }

    OUTLINED_FUNCTION_13();
    *(this + 34) = v84;
    v86 = *(v85 + 8);
LABEL_91:
    v322 = google::protobuf::internal::InlineGreedyStringParser(v86, v83, a3);
    if (!v322)
    {
      return;
    }

    OUTLINED_FUNCTION_12();
    if (!(!v257 & v28) || *v78 != 506)
    {
      goto LABEL_267;
    }
  }

  v82 = *(this + 35);
  goto LABEL_85;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData_Sample>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SelfTestData_Sample *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SelfTestData_Sample::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::ModelProto_SentencePiece>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::ModelProto_SentencePiece *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::ModelProto_SentencePiece::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::TrainerSpec>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::TrainerSpec *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    SizeFallback = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!SizeFallback)
    {
      return;
    }

    v8 = SizeFallback;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sentencepiece::TrainerSpec::_InternalParse(a2, v8, this);
    if (v15)
    {
      ++*(this + 22);
      if (!*(this + 20))
      {
        v16 = *(this + 7) + v14;
        *(this + 7) = v16;
        *this = *(this + 1) + (v16 & (v16 >> 31));
      }
    }
  }
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::NormalizerSpec>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::NormalizerSpec *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::NormalizerSpec::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SelfTestData *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SelfTestData::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

uint64_t google::protobuf::io::CodedInputStream::PushLimit(google::protobuf::io::CodedInputStream *this, unsigned int a2)
{
  result = *(this + 10);
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 6);
    v5 = *(this + 1);
    v6 = *(this + 11);
    v7 = v4 - v6 + *this - v5;
    if ((v7 ^ 0x7FFFFFFFu) >= a2 && result - v7 > a2)
    {
      v9 = v7 + a2;
      *(this + 10) = v9;
      v10 = v5 + v6;
      *(this + 1) = v10;
      v11 = *(this + 12);
      if (v11 >= v9)
      {
        v11 = v9;
      }

      v12 = __OFSUB__(v4, v11);
      v13 = v4 - v11;
      if ((v13 < 0) ^ v12 | (v13 == 0))
      {
        v13 = 0;
      }

      else
      {
        *(this + 1) = v10 - v13;
      }

      *(this + 11) = v13;
    }
  }

  return result;
}

unint64_t google::protobuf::io::CodedInputStream::IncrementRecursionDepthAndPushLimit(google::protobuf::io::CodedInputStream *this, unsigned int a2)
{
  v3 = google::protobuf::io::CodedInputStream::PushLimit(this, a2);
  v4 = (*(this + 13) - 1);
  *(this + 13) = v4;
  return v3 | (v4 << 32);
}

uint64_t google::protobuf::io::CodedInputStream::ReadLengthAndPushLimit(char **this)
{
  v2 = *this;
  if (*this >= this[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
    if ((*v2 & 0x80000000) == 0)
    {
      *this = v2 + 1;
      goto LABEL_7;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v3);
  v3 = Varint32Fallback;
  if (Varint32Fallback < 0)
  {
    v3 = 0;
  }

LABEL_7:

  return google::protobuf::io::CodedInputStream::PushLimit(this, v3);
}

void google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet *this, const google::protobuf::internal::ExtensionSet *a2)
{
  if (*(this + 4) <= 0x100u)
  {
    v4 = *(a2 + 4);
    v5 = *(this + 2);
    v6 = &v5[32 * *(this + 5)];
    v7 = *(a2 + 2);
    if (v4 > 0x100)
    {
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 5);
      if (*(this + 5) && *(a2 + 5))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v12);
  }

  v13 = *(a2 + 2);
  if (*(a2 + 4) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet const&)::$_0>(v17, v18, this);
  }

  else if (*(a2 + 5))
  {
    v14 = &v13[8 * *(a2 + 5)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, v16, (v13 + 2));
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t google::protobuf::internal::MergeFromImpl<false>()
{
  OUTLINED_FUNCTION_4_0();
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v2, v3, v4);
  OUTLINED_FUNCTION_3_0();
  v6 = *(v5 + 88);
  v7 = OUTLINED_FUNCTION_8_0();
  v9 = v8(v7);
  result = 0;
  if (v9)
  {
    if (v1 & 2) != 0 || (OUTLINED_FUNCTION_6_0(), ((*(v11 + 48))(v0)))
    {
      result = 1;
    }

    else
    {
      google::protobuf::MessageLite::LogInitializationErrorMessage(v0);
      result = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v0, v1);
  OUTLINED_FUNCTION_3_0();
  v3 = *(v2 + 88);
  v4 = OUTLINED_FUNCTION_8_0();
  v5(v4);
  result = 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

{
  OUTLINED_FUNCTION_4_0();
  v16 = *MEMORY[0x277D85DE8];
  *&v2 = OUTLINED_FUNCTION_2_0();
  v14 = v2;
  v15 = 0x7FFFFFFF00000000;
  OUTLINED_FUNCTION_1_1();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v3, v4, v5);
  OUTLINED_FUNCTION_3_0();
  v7 = *(v6 + 88);
  v8 = OUTLINED_FUNCTION_8_0();
  result = v9(v8);
  if (result)
  {
    google::protobuf::internal::EpsCopyInputStream::BackUp(v13, result);
    if (!v15)
    {
      if (v1 & 2) != 0 || (OUTLINED_FUNCTION_6_0(), ((*(v11 + 48))(v0)))
      {
        result = 1;
        goto LABEL_8;
      }

      google::protobuf::MessageLite::LogInitializationErrorMessage(v0);
    }

    result = 0;
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t google::protobuf::internal::MergeFromImpl<true>()
{
  OUTLINED_FUNCTION_4_0();
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v2, v3, v4);
  OUTLINED_FUNCTION_3_0();
  v6 = *(v5 + 88);
  v7 = OUTLINED_FUNCTION_8_0();
  v9 = v8(v7);
  result = 0;
  if (v9 && !v13)
  {
    if (v1 & 2) != 0 || (OUTLINED_FUNCTION_6_0(), ((*(v11 + 48))(v0)))
    {
      result = 1;
    }

    else
    {
      google::protobuf::MessageLite::LogInitializationErrorMessage(v0);
      result = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

{
  OUTLINED_FUNCTION_4_0();
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v2, v3, v4);
  OUTLINED_FUNCTION_3_0();
  v6 = *(v5 + 88);
  v7 = OUTLINED_FUNCTION_8_0();
  result = v8(v7);
  if (result)
  {
    google::protobuf::internal::EpsCopyInputStream::BackUp(v12, result);
    if (!v13)
    {
      if (v1 & 2) != 0 || (OUTLINED_FUNCTION_6_0(), ((*(v10 + 48))(v0)))
      {
        result = 1;
        goto LABEL_8;
      }

      google::protobuf::MessageLite::LogInitializationErrorMessage(v0);
    }

    result = 0;
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t google::protobuf::internal::MergeFromImpl<true>(uint64_t a1, google::protobuf::MessageLite *a2, char a3)
{
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v5, v6);
  OUTLINED_FUNCTION_3_0();
  v8 = *(v7 + 88);
  v9 = OUTLINED_FUNCTION_8_0();
  if (v10(v9))
  {
    v11 = v15 == 1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  if ((a3 & 2) == 0)
  {
    OUTLINED_FUNCTION_6_0();
    if (((*(v12 + 48))(a2) & 1) == 0)
    {
      google::protobuf::MessageLite::LogInitializationErrorMessage(a2);
LABEL_10:
      result = 0;
      goto LABEL_11;
    }
  }

  result = 1;
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t google::protobuf::MessageLite::ParseFromZeroCopyStream(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_11_0(a1);
  (*(v2 + 40))(v1);

  return google::protobuf::internal::MergeFromImpl<false>();
}

uint64_t google::protobuf::MessageLite::ParsePartialFromZeroCopyStream(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_11_0(a1);
  (*(v2 + 40))(v1);

  return google::protobuf::internal::MergeFromImpl<false>();
}

uint64_t google::protobuf::MessageLite::ParseFromBoundedZeroCopyStream(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_10_0(a1);
  (*(v2 + 40))(v1);

  return google::protobuf::internal::MergeFromImpl<false>();
}

uint64_t google::protobuf::MessageLite::ParsePartialFromBoundedZeroCopyStream(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_10_0(a1);
  (*(v2 + 40))(v1);

  return google::protobuf::internal::MergeFromImpl<false>();
}

uint64_t google::protobuf::MessageLite::ParseFrom<(google::protobuf::MessageLite::ParseFlags)1,std::string>(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 40))(a1);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v5, a2, v3);
  return google::protobuf::internal::MergeFromImpl<false>();
}

uint64_t google::protobuf::MessageLite::ParseFrom<(google::protobuf::MessageLite::ParseFlags)3,std::string>(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 40))(a1);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v5, a2, v3);
  return google::protobuf::internal::MergeFromImpl<false>();
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadStringFallback()
{
  OUTLINED_FUNCTION_2_1();
  if (*(v6 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v7 = *(v2 + 8);
  if (v7 - v3 + *(v2 + 28) >= v0)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    OUTLINED_FUNCTION_0_4(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      OUTLINED_FUNCTION_3_1(v4, v5);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_1(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(v2);
    if (!result)
    {
      return result;
    }

    v4 = OUTLINED_FUNCTION_1_2(result);
    if (v14 ^ v10 | v13)
    {
      OUTLINED_FUNCTION_4_1(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_26D446D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::AppendStringFallback()
{
  OUTLINED_FUNCTION_2_1();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    OUTLINED_FUNCTION_0_4(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      OUTLINED_FUNCTION_3_1(v4, v5);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_1(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(v2);
    if (!result)
    {
      return result;
    }

    v4 = OUTLINED_FUNCTION_1_2(result);
    if (v14 ^ v10 | v13)
    {
      OUTLINED_FUNCTION_4_1(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_26D446E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ParseContext::ParseMessage<google::protobuf::MessageLite>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v15;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v10 = *(this + 22);
  v11 = __OFSUB__(v10--, 1);
  *(this + 22) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, this);
    if (!result)
    {
      return result;
    }

    ++*(this + 22);
    if (!*(this + 20))
    {
      v14 = *(this + 7) + v12;
      *(this + 7) = v14;
      *this = *(this + 1) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

char *google::protobuf::internal::ReadSizeFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 2;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 28)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(this + 4);
      v6 = this + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t E5RT::TensorDataType::TensorDataType()
{
  return MEMORY[0x28215CB38]();
}

{
  return MEMORY[0x28215CB40]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}