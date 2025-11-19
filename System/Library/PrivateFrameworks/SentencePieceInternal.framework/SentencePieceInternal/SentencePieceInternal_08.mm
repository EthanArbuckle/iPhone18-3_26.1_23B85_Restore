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

void sub_2656AB4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AB8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656ABC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_2656ABEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_2656AC5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AC7BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656AC94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656AC9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656ACB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656ACBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656ACD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656ACE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656ACF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656AD100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AD268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AD398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AD5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AD73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AD8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656ADA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656ADC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656ADCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656ADEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AE184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AE45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AE664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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

void sub_2656AE7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_2656AF054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AF284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AF3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656AF610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2656B0578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_2656B1784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B1964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B1B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B1D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B248C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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
  *this = &unk_287704EC0;
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

void sub_2656B2A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B2AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::ArrayOutputStream::ArrayOutputStream(uint64_t this, void *a2, int a3, int a4)
{
  *this = &unk_287704F00;
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

void sub_2656B2C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::StringOutputStream::StringOutputStream(void *result, uint64_t a2)
{
  *result = &unk_287704F48;
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

void sub_2656B2DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B2F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B2FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  *result = &unk_287704F90;
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
  *this = &unk_287704F90;
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
    MEMORY[0x26675B2D0](v3, 0x1000C8077774924);
  }
}

{
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(this);

  JUMPOUT(0x26675B300);
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
    return MEMORY[0x26675B2D0](result, 0x1000C8077774924);
  }

  return result;
}

void sub_2656B33B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B34F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B35FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_287704FD0;
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
  *this = &unk_287704FD0;
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
    MEMORY[0x26675B2D0](v3, 0x1000C8077774924);
  }
}

{
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);

  JUMPOUT(0x26675B300);
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
    MEMORY[0x26675B2D0](result, 0x1000C8077774924);
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

void sub_2656B398C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B3B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    JUMPOUT(0x26675B2D0);
  }

  return result;
}

void *google::protobuf::io::LimitingInputStream::LimitingInputStream(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_287705018;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = (*(*a2 + 40))(a2);
  return a1;
}

void google::protobuf::io::LimitingInputStream::~LimitingInputStream(google::protobuf::io::LimitingInputStream *this)
{
  *this = &unk_287705018;
  if ((*(this + 2) & 0x8000000000000000) != 0)
  {
    (*(**(this + 1) + 24))(*(this + 1), -*(this + 4));
  }
}

{
  google::protobuf::io::LimitingInputStream::~LimitingInputStream(this);

  JUMPOUT(0x26675B300);
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
  *a1 = &unk_287705128;
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

void sub_2656B412C(_Unwind_Exception *exception_object)
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

void sub_2656B4198(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::MemoryMappedModelProto::MemoryMappedModelProto(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_287705168;
  *(a1 + 16) = &unk_287705128;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_287705128;
  *(a1 + 40) = 0;
  sentencepiece::util::Status::Status((a1 + 88));
  sentencepiece::MemoryMappedModelProto::Init(a1, a2, a3, &v7);
  sentencepiece::util::Status::operator=((a1 + 88), &v7);
  sentencepiece::util::Status::~Status(&v7);
  return a1;
}

void sub_2656B4284(_Unwind_Exception *a1, uint64_t a2, ...)
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
      v8 = MEMORY[0x26675B160](v7, 95);
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

void sub_2656B51AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
  *this = &unk_287705168;
  sentencepiece::util::Status::~Status((this + 88));
}

{
  *this = &unk_287705168;
  sentencepiece::util::Status::~Status((this + 88));

  JUMPOUT(0x26675B300);
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
  *this = &unk_287705250;
  *(this + 1) = &unk_287705290;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(this + 32, this + 8, a3);
  return this;
}

uint64_t google::protobuf::io::FileInputStream::CopyingFileInputStream::CopyingFileInputStream(uint64_t this, int a2)
{
  *this = &unk_287705290;
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

void sub_2656B5698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  *this = &unk_287705290;
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

  JUMPOUT(0x26675B300);
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

void sub_2656B58C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B5988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::FileOutputStream::FileOutputStream(google::protobuf::io::FileOutputStream *this, int a2)
{
  *this = &unk_2877052C0;
  result = google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(this, this + 48, -1);
  *result = &unk_2877052C0;
  *(result + 48) = &unk_287705308;
  *(result + 56) = a2;
  *(result + 60) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t google::protobuf::io::FileOutputStream::CopyingFileOutputStream::CopyingFileOutputStream(uint64_t this, int a2)
{
  *this = &unk_287705308;
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

void sub_2656B5B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileOutputStream::~FileOutputStream(google::protobuf::io::FileOutputStream *this)
{
  *this = &unk_2877052C0;
  google::protobuf::io::CopyingOutputStreamAdaptor::Flush(this);
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream((this + 48));

  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);
}

{
  google::protobuf::io::FileOutputStream::~FileOutputStream(this);

  JUMPOUT(0x26675B300);
}

void google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  *this = &unk_287705308;
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

  JUMPOUT(0x26675B300);
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

void sub_2656B5DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::IstreamInputStream::IstreamInputStream(void *a1, uint64_t a2, int a3)
{
  *a1 = &unk_287705330;
  a1[1] = &unk_287705370;
  a1[2] = a2;
  google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor((a1 + 3), (a1 + 1), a3);
  return a1;
}

void *google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::CopyingIstreamInputStream(void *result, uint64_t a2)
{
  *result = &unk_287705370;
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
  *a1 = &unk_2877053A0;
  a1[1] = &unk_2877053E8;
  a1[2] = a2;
  google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor((a1 + 3), (a1 + 1), a3);
  return a1;
}

void *google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::CopyingOstreamOutputStream(void *result, uint64_t a2)
{
  *result = &unk_2877053E8;
  result[1] = a2;
  return result;
}

void google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(google::protobuf::io::OstreamOutputStream *this)
{
  *this = &unk_2877053A0;
  v1 = (this + 24);
  google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 24));
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(v1);
}

{
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(this);

  JUMPOUT(0x26675B300);
}

BOOL google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream::Write(google::protobuf::io::OstreamOutputStream::CopyingOstreamOutputStream *this, const void *a2)
{
  v3 = *(this + 1);
  std::ostream::write();
  return *(*(this + 1) + *(**(this + 1) - 24) + 32) == 0;
}

uint64_t google::protobuf::io::ConcatenatingInputStream::ConcatenatingInputStream(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_287705410;
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

void sub_2656B626C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B63EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2656B65B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
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

        OUTLINED_FUNCTION_0(v185, v186);
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

        OUTLINED_FUNCTION_0(v97, v98);
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
        if (v234 < 0 && (OUTLINED_FUNCTION_0(v234, v235), v238 < 0))
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
        if (v58 < 0 && (OUTLINED_FUNCTION_0(v58, v59), v62 < 0))
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
        if (v146 < 0 && (OUTLINED_FUNCTION_0(v146, v147), v150 < 0))
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
        if (v241 < 0 && (OUTLINED_FUNCTION_0(v241, v242), v245 < 0))
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
        if (v68 < 0 && (OUTLINED_FUNCTION_0(v68, v69), v72 < 0))
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
        if (v138 < 0 && (OUTLINED_FUNCTION_0(v138, v139), v142 < 0))
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
        if (v101 < 0 && (OUTLINED_FUNCTION_0(v101, v102), v105 < 0))
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
        if (v49 < 0 && (OUTLINED_FUNCTION_0(v49, v50), v53 < 0))
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
        if (v247 < 0 && (OUTLINED_FUNCTION_0(v247, v248), v251 < 0))
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
        if (v117 < 0 && (OUTLINED_FUNCTION_0(v117, v118), v121 < 0))
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
        if (v128 < 0 && (OUTLINED_FUNCTION_0(v128, v129), v132 < 0))
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
        if (v107 < 0 && (OUTLINED_FUNCTION_0(v107, v108), v111 < 0))
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
        if (v175 < 0 && (OUTLINED_FUNCTION_0(v175, v176), v179 < 0))
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

        OUTLINED_FUNCTION_0(v32, v33);
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
  OUTLINED_FUNCTION_0_2();
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
  OUTLINED_FUNCTION_0_2();
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
  OUTLINED_FUNCTION_0_2();
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

    OUTLINED_FUNCTION_0_3(v8);
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

void sub_2656B8774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

    OUTLINED_FUNCTION_0_3(v8);
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

void sub_2656B8880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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