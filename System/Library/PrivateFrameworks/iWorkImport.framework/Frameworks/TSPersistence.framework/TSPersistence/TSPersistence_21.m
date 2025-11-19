unsigned int *sub_276B7F96C(unsigned int *a1, uint64_t a2, _BYTE **a3)
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
  return sub_276B80C04(a1, a3);
}

unsigned int *sub_276B7F9D4(unsigned int *result, uint64_t a2, _BYTE **a3)
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
      result = sub_276B80C04((*(v5 + 1) + 4 * v6++), a3);
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_276B7FA98(int *result, uint64_t a2, _BYTE **a3)
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
      v17 = 0;
      do
      {
        result = sub_276B80C04((*(v4 + 1) + v16), a3);
        ++v17;
        v16 += 4;
      }

      while (v17 < *v4);
    }
  }

  return result;
}

_BYTE *sub_276B7FBC0(int *a1, uint64_t a2, _BYTE **a3)
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
  result = sub_276B80EE8(a1, v6);
  *a3 = result;
  return result;
}

int *sub_276B7FC48(int *result, uint64_t a2, int **a3)
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
      result = sub_276B80EE8((*(v5 + 1) + 4 * v6), v9);
      v7 = result;
      *a3 = result;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_276B7FD10(int *result, uint64_t a2, int **a3)
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
      v17 = 0;
      do
      {
        result = sub_276B80EE8((*(v4 + 1) + v16), v12);
        v12 = result;
        *a3 = result;
        ++v17;
        v16 += 4;
      }

      while (v17 < *v4);
    }
  }

  return result;
}

_BYTE *sub_276B7FE3C(uint64_t *a1, uint64_t a2, _BYTE **a3)
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
  result = sub_276B80F50(a1, v6);
  *a3 = result;
  return result;
}

int *sub_276B7FEC4(int *result, uint64_t a2, int **a3)
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
      result = sub_276B80F50((*(v5 + 1) + 8 * v6), v9);
      v7 = result;
      *a3 = result;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_276B7FF8C(int *result, uint64_t a2, int **a3)
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
      v17 = 0;
      do
      {
        result = sub_276B80F50((*(v4 + 1) + v16), v12);
        v12 = result;
        *a3 = result;
        ++v17;
        v16 += 8;
      }

      while (v17 < *v4);
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ExtensionSerializer(google::protobuf::internal *this, const unsigned __int8 *a2, int a3, signed int a4, unsigned __int8 **a5, google::protobuf::io::CodedOutputStream *a6)
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

uint64_t google::protobuf::internal::DuplicateIfNonNullInternal(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (*(*a1 + 24))(a1);
  (*(*v2 + 64))(v2, a1);
  return v2;
}

uint64_t google::protobuf::internal::GenericSwap(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  (*(*v4 + 64))(v4, a1);
  (*(*a1 + 40))(a1);
  (*(*a1 + 64))(a1, a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 64))(a2, v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

google::protobuf::Arena *google::protobuf::internal::GetOwnedMessageInternal(google::protobuf::internal *this, google::protobuf::Arena *a2, google::protobuf::MessageLite *a3, google::protobuf::Arena *a4)
{
  v4 = a2;
  if (!this || a3)
  {
    v5 = (*(*a2 + 32))(a2, this, a3, a4);
    (*(*v5 + 64))(v5, v4);
    return v5;
  }

  else
  {
    sub_276B58EC4(this, a2);
  }

  return v4;
}

void google::protobuf::internal::InitSCCImpl(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_2812FE400, memory_order_acquire) & 1) == 0)
  {
    sub_276BD929C();
  }

  v2 = pthread_self();
  v3 = v2;
  if (qword_2812FE408 == v2)
  {
    if (*a1 != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_util.cc", 785);
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

    std::mutex::lock(&stru_2812FC758);
    qword_2812FE408 = v3;
    sub_276B8056C(a1);
    qword_2812FE408 = 0;

    std::mutex::unlock(&stru_2812FC758);
  }
}

void sub_276B80550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_276B8056C(_DWORD *result)
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
          sub_276B8056C();
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
          sub_276B8056C();
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

unsigned __int8 *sub_276B80624(unsigned __int8 *result, google::protobuf::io::EpsCopyOutputStream *this)
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

unsigned __int8 *sub_276B806C0(unsigned __int8 *result, google::protobuf::io::EpsCopyOutputStream *this)
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

unsigned __int8 *sub_276B8075C(unsigned __int8 *result, google::protobuf::io::EpsCopyOutputStream *this)
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

unsigned __int8 *sub_276B807F8(uint64_t a1, unsigned __int8 **a2)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
  }

  v5 = a2[8];
  if (*a2 <= v5)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a2, a2[8]);
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

  a2[8] = v6;
  v10 = *(v3 + 23);
  if (v10 < 0)
  {
    v11 = v3;
    v3 = *v3;
    v10 = v11[1];
  }

  result = sub_276B808C8(a2, v3, v10, v6);
  a2[8] = result;
  return result;
}

unsigned __int8 *sub_276B808C8(google::protobuf::io::EpsCopyOutputStream *a1, void *a2, uint64_t a3, unsigned __int8 *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

uint64_t sub_276B80958(uint64_t a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
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

uint64_t sub_276B809DC(uint64_t a1, uint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (a2)
  {
    v6 = *(a2 + 8);
    v9 = *(a1 + *v6);
    sub_276B80624(&v9, this);
    return google::protobuf::internal::SerializeInternal(a1, v6 + 24, *a2 - 1, this);
  }

  else
  {
    v8 = (*(*a1 + 80))(a1);
    sub_276B80624(&v8, this);
    result = (*(*a1 + 96))(a1, *(this + 8), this);
    *(this + 8) = result;
  }

  return result;
}

unsigned __int8 *sub_276B80ABC(unsigned __int8 *result, google::protobuf::io::EpsCopyOutputStream *this)
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

unsigned __int8 *sub_276B80B60(unsigned __int8 *result, google::protobuf::io::EpsCopyOutputStream *this)
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

unsigned int *sub_276B80C04(unsigned int *result, _BYTE **a2)
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

unint64_t *sub_276B80C68(unint64_t *result, _BYTE **a2)
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

int *sub_276B80CCC(int *result, _BYTE **a2)
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

void sub_276B80D30(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_276B80D94(uint64_t a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_276B80EE8(int *a1, _BYTE *a2)
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

_BYTE *sub_276B80F50(uint64_t *a1, _BYTE *a2)
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

void google::protobuf::Message::MergeFrom(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  v4 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 83);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (from.GetDescriptor()) == (descriptor): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ": Tried to merge from a message with a different type.  to: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *(v4 + 8));
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, ", from: ");
    v10 = (*(*a2 + 152))(a2);
    v11 = google::protobuf::internal::LogMessage::operator<<(v9, *(v10 + 8));
    google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ReflectionOps::Merge(a2, this, v5);
}

void sub_276B810E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Message::CopyFrom(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  v4 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 99);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (from.GetDescriptor()) == (descriptor): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ": Tried to copy from a message with a different type. to: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *(v4 + 8));
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, ", from: ");
    v10 = (*(*a2 + 152))(a2);
    v11 = google::protobuf::internal::LogMessage::operator<<(v9, *(v10 + 8));
    google::protobuf::internal::LogFinisher::operator=(&v12, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::ReflectionOps::Copy(a2, this, v5);
}

void sub_276B8124C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Message::GetTypeName@<X0>(google::protobuf::Message *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(*this + 152))(this);
  v4 = result[1];
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 1);

    return sub_276A07B90(a2, v6, v7);
  }

  else
  {
    v5 = *v4;
    *(a2 + 16) = *(v4 + 2);
    *a2 = v5;
  }

  return result;
}

void google::protobuf::Message::FindInitializationErrors(const google::protobuf::Message *a1, uint64_t a2)
{
  v3 = 0;
  LOBYTE(__p) = 0;
  google::protobuf::internal::ReflectionOps::FindInitializationErrors(a1, &__p, a2);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_276B81338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Message::InitializationErrorString(google::protobuf::Message *this@<X0>, std::string *a2@<X8>)
{
  memset(v3, 0, sizeof(v3));
  google::protobuf::Message::FindInitializationErrors(this, v3);
  sub_276B276BC(", ", v3, a2);
  v4 = v3;
  sub_276B281C8(&v4);
}

void sub_276B813BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276B281C8(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Message::CheckInitialized(google::protobuf::Message *this)
{
  if (((*(*this + 48))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 130);
    v2 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: IsInitialized(): ");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "Message of type ");
    v4 = (*(*this + 152))(this);
    v5 = google::protobuf::internal::LogMessage::operator<<(v3, *(v4 + 8));
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " is missing required fields: ");
    (*(*this + 56))(__p, this);
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, __p);
    google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }
}

void sub_276B814FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Message::ByteSizeLong(google::protobuf::Message *this, const google::protobuf::Message *a2)
{
  v3 = google::protobuf::internal::WireFormat::ByteSize(this, a2);
  (*(*this + 144))(this, v3);
  return v3;
}

void google::protobuf::Message::SetCachedSize(google::protobuf::Message *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 156);
  v2 = google::protobuf::internal::LogMessage::operator<<(v7, "Message class ");
  v3 = (*(*this + 152))(this);
  v4 = google::protobuf::internal::LogMessage::operator<<(v2, *(v3 + 8));
  v5 = google::protobuf::internal::LogMessage::operator<<(v4, " implements neither SetCachedSize() nor ByteSize().  Must implement one or the other.");
  google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
}

void sub_276B8163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Message::SpaceUsedLong(google::protobuf::Message *this)
{
  (*(*this + 152))(this);

  return google::protobuf::Reflection::SpaceUsedLong(v2, this);
}

uint64_t sub_276B816C4()
{
  if ((atomic_load_explicit(&qword_2812FE418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2812FE418))
  {
    operator new();
  }

  return qword_2812FE410;
}

void google::protobuf::MessageFactory::InternalRegisterGeneratedFile(std::string::size_type a1)
{
  v2 = sub_276B816C4();
  sub_276B262D8(&v7, *(a1 + 16));
  *&v6[0].__r_.__value_.__l.__data_ = v7;
  v6[0].__r_.__value_.__r.__words[2] = a1;
  sub_276B2A374((v2 + 8), &v6[0].__r_.__value_.__l.__data_);
  if ((v3 & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 211);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "File is already registered: ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, *(a1 + 16));
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }
}

void google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(const std::string::value_type **this, const google::protobuf::Descriptor *a2, const google::protobuf::Message *a3)
{
  v5 = sub_276B816C4();
  v10[0].__r_.__value_.__r.__words[0] = this;
  v10[0].__r_.__value_.__l.__size_ = a2;
  sub_276B82108((v5 + 112), v10);
  if ((v6 & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 226);
    v7 = google::protobuf::internal::LogMessage::operator<<(v10, "Type is already registered: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, this[1]);
    google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }
}

void sub_276B81904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::Reflection::RepeatedFieldAccessor(google::protobuf::Reflection *this, const google::protobuf::FieldDescriptor *a2)
{
  if (*(a2 + 15) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 298);
    v3 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: field->is_repeated(): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v4, memory_order_acquire) != -1)
    {
      v10[0].__r_.__value_.__r.__words[0] = &v12;
      v10[0].__r_.__value_.__l.__size_ = &v11;
      v13 = v10;
      std::__call_once(v4, &v13, sub_2769C149C);
    }
  }

  v5 = *(a2 + 14);
  v6 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v5];
  if (v6 <= 5)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        result = &qword_280A52F90;
        if ((atomic_load_explicit(&qword_280A52F98, memory_order_acquire) & 1) == 0)
        {
          sub_276BD9630(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      else if (v6 == 4)
      {
        result = &qword_280A52FB0;
        if ((atomic_load_explicit(&qword_280A52FB8, memory_order_acquire) & 1) == 0)
        {
          sub_276BD9570(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        result = &qword_280A52FD0;
        if ((atomic_load_explicit(&qword_280A52FD8, memory_order_acquire) & 1) == 0)
        {
          sub_276BD94B0(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }
      }

      return result;
    }

    if (v6 != 1)
    {
      if (v6 == 2)
      {
        result = &qword_280A52FA0;
        if ((atomic_load_explicit(&qword_280A52FA8, memory_order_acquire) & 1) == 0)
        {
          sub_276BD95D0(v10);
          return v10[0].__r_.__value_.__r.__words[0];
        }

        return result;
      }

LABEL_40:
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 326);
      v9 = google::protobuf::internal::LogMessage::operator<<(v10, "Should not reach here.");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_31:
    sub_276B81C54();
    return &qword_280A52F80;
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      result = &qword_280A52FC0;
      if ((atomic_load_explicit(&qword_280A52FC8, memory_order_acquire) & 1) == 0)
      {
        sub_276BD9510(v10);
        return v10[0].__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      result = &qword_280A52FE0;
      if ((atomic_load_explicit(&qword_280A52FE8, memory_order_acquire) & 1) == 0)
      {
        sub_276BD9450(v10);
        return v10[0].__r_.__value_.__r.__words[0];
      }
    }

    return result;
  }

  if (v6 == 8)
  {
    goto LABEL_31;
  }

  if (v6 == 9)
  {
    result = &qword_280A52FF0;
    if ((atomic_load_explicit(&qword_280A52FF8, memory_order_acquire) & 1) == 0)
    {
      sub_276BD93F0(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }

    return result;
  }

  if (v6 != 10)
  {
    goto LABEL_40;
  }

  v8 = *(a2 + 6);
  if (v8)
  {
    v11 = a2;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v10[0].__r_.__value_.__r.__words[0] = &v12;
      v10[0].__r_.__value_.__l.__size_ = &v11;
      v13 = v10;
      std::__call_once(v8, &v13, sub_2769C149C);
    }

    LODWORD(v5) = *(a2 + 14);
  }

  if (v5 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a2))
  {
    result = &qword_280A53000;
    if ((atomic_load_explicit(&qword_280A53008, memory_order_acquire) & 1) == 0)
    {
      sub_276BD9364(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    result = &qword_280A53010;
    if ((atomic_load_explicit(&qword_280A53018, memory_order_acquire) & 1) == 0)
    {
      sub_276BD9304(v10);
      return v10[0].__r_.__value_.__r.__words[0];
    }
  }

  return result;
}

void sub_276B81C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B81C54()
{
  if ((atomic_load_explicit(&qword_280A52F88, memory_order_acquire) & 1) == 0)
  {
    sub_276BD9690();
  }
}

uint64_t google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::GetArena(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return *(result & 0xFFFFFFFFFFFFFFFELL);
  }

  return result;
}

void *sub_276B81CC8(uint64_t a1, char *a2)
{
  v3 = (*(*a1 + 24))(a1);
  if (a2)
  {
    sub_276A08058(a2, v3);
  }

  return v3;
}

uint64_t sub_276B81D24(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_276B81D50(uint64_t a1)
{
  *a1 = &unk_2885C7F60;
  v2 = a1 + 8;
  sub_2769BB184(a1 + 112);
  std::mutex::~mutex((a1 + 48));
  sub_2769BB184(v2);
  return a1;
}

void sub_276B81DAC(uint64_t a1)
{
  *a1 = &unk_2885C7F60;
  v2 = a1 + 8;
  sub_2769BB184(a1 + 112);
  std::mutex::~mutex((a1 + 48));
  sub_2769BB184(v2);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276B81E28(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  std::mutex::lock((a1 + 48));
  v3 = sub_276B8201C((a1 + 112), &v20);
  if (v3)
  {
    v4 = v3[3];
    std::mutex::unlock((a1 + 48));
    if (v4)
    {
      return v4;
    }
  }

  else
  {
    std::mutex::unlock((a1 + 48));
  }

  v6 = *(*(v20 + 16) + 16);
  if (v6 != google::protobuf::DescriptorPool::generated_pool(v5))
  {
    return 0;
  }

  v7 = **(v20 + 16);
  if (v7[23] < 0)
  {
    v7 = *v7;
  }

  sub_276B262D8(v19, v7);
  v8 = sub_276B29248((a1 + 8), &v19[0].__r_.__value_.__l.__data_);
  if (!v8 || (v9 = v8[4]) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 246);
    v15 = google::protobuf::internal::LogMessage::operator<<(v19, "File appears to be in generated pool but wasn't registered: ");
    v16 = google::protobuf::internal::LogMessage::operator<<(v15, **(v20 + 16));
    google::protobuf::internal::LogFinisher::operator=(&v18, &v16->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    return 0;
  }

  std::mutex::lock((a1 + 48));
  v10 = sub_276B8201C((a1 + 112), &v20);
  if (!v10 || (v4 = v10[3]) == 0)
  {
    google::protobuf::internal::RegisterFileLevelMetadata(v9);
    v11 = sub_276B8201C((a1 + 112), &v20);
    if (!v11 || (v4 = v11[3]) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message.cc", 264);
      v12 = google::protobuf::internal::LogMessage::operator<<(v19, "Type appears to be in generated pool but wasn't ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, "registered: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(v20 + 8));
      google::protobuf::internal::LogFinisher::operator=(&v18, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
      v4 = 0;
    }
  }

  std::mutex::unlock((a1 + 48));
  return v4;
}

void sub_276B81FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  std::mutex::unlock((v2 + 48));
  _Unwind_Resume(a1);
}

void *sub_276B8201C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_276B82108(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_276B823BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + 4 * a3) = result;
  return result;
}

uint64_t sub_276B82410(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = (*(*a1 + 128))(a1, a3);
  v5 = *a2;
  if (v5 == a2[1])
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(*(a2 + 1) + 4 * v5) = result;
  *a2 = v5 + 1;
  return result;
}

void sub_276B824AC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = *(v4 + 4 * a4);
  *(v4 + 4 * a4) = v5;
}

void sub_276B824C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<int>::Swap();
}

void sub_276B82540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B82614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + 4 * a3) = result;
  return result;
}

uint64_t sub_276B82668(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = (*(*a1 + 128))(a1, a3);
  v5 = *a2;
  if (v5 == a2[1])
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(*(a2 + 1) + 4 * v5) = result;
  *a2 = v5 + 1;
  return result;
}

void sub_276B826F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<unsigned int>::Swap();
}

void sub_276B82770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B827B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + 8 * a3) = result;
  return result;
}

uint64_t sub_276B8280C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = (*(*a1 + 128))(a1, a3);
  v5 = *a2;
  if (v5 == a2[1])
  {
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  *(*(a2 + 1) + 8 * v5) = result;
  *a2 = v5 + 1;
  return result;
}

void sub_276B82898(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = v5;
}

void sub_276B828B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<long long>::Swap();
}

void sub_276B8292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B8297C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + 8 * a3) = result;
  return result;
}

uint64_t sub_276B829D0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = (*(*a1 + 128))(a1, a3);
  v5 = *a2;
  if (v5 == a2[1])
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *(*(a2 + 1) + 8 * v5) = result;
  *a2 = v5 + 1;
  return result;
}

void sub_276B82A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<unsigned long long>::Swap();
}

void sub_276B82AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B82B74(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = *a2;
  if (v5 == a2[1])
  {
    google::protobuf::RepeatedField<float>::Reserve();
  }

  *(*(a2 + 1) + 4 * v5) = v4;
  *a2 = v5 + 1;
}

float sub_276B82C08(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  result = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = *(v4 + 4 * a4);
  *(v4 + 4 * a4) = result;
  return result;
}

void sub_276B82C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<float>::Swap();
}

void sub_276B82C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B82D40(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = (*(*a1 + 128))(a1, a3);
  v5 = *a2;
  if (v5 == a2[1])
  {
    google::protobuf::RepeatedField<double>::Reserve();
  }

  *(*(a2 + 1) + 8 * v5) = v4;
  *a2 = v5 + 1;
}

double sub_276B82DD4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  result = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = result;
  return result;
}

void sub_276B82DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<double>::Swap();
}

void sub_276B82E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B82EB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = (*(*a1 + 128))(a1, a4);
  *(*(a2 + 8) + a3) = result;
  return result;
}

uint64_t sub_276B82F0C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = (*(*a1 + 128))(a1, a3);
  v5 = *a2;
  if (v5 == a2[1])
  {
    google::protobuf::RepeatedField<BOOL>::Reserve();
  }

  *(*(a2 + 1) + v5) = result;
  *a2 = v5 + 1;
  return result;
}

void sub_276B82F98(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + a3);
  *(v4 + a3) = *(v4 + a4);
  *(v4 + a4) = v5;
}

void sub_276B82FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 279);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::RepeatedField<BOOL>::Swap();
}

void sub_276B8302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *sub_276B830D4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = (*(*a1 + 128))(a1, a3);
  (*(*a1 + 136))(a1, a3, v6);

  return google::protobuf::RepeatedPtrField<std::string>::AddAllocated(a2, v6);
}

void sub_276B83178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  v3 = *(a2 + 16) + 8 * v2;
  *(a2 + 8) = v2;
  v4 = *(v3 + 8);
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
  }
}

void sub_276B831B4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 16) + 8;
  v5 = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = *(v4 + 8 * a4);
  *(v4 + 8 * a4) = v5;
}

__n128 sub_276B831D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      if (*a4 == *a2)
      {
        v13 = a2[1];
        v14 = a2[2];
        result = *(a4 + 8);
        *(a2 + 1) = result;
        *(a4 + 8) = v13;
        *(a4 + 16) = v14;
      }

      else
      {

        sub_276B837D8(a2, a4);
      }
    }
  }

  else
  {
    v17 = 0;
    v18 = 0uLL;
    if (&v17 != a2)
    {
      if (*a2)
      {
        sub_276B837D8(&v17, a2);
      }

      else
      {
        v18 = *(a2 + 1);
        a2[1] = 0;
        a2[2] = 0;
      }
    }

    v9 = (*(*a3 + 8))(a3, a4);
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        sub_276B8372C(a3, a4, v10, __p);
        sub_276B8367C(a1, a2, __p);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = (v10 + 1);
      }

      while (v9 != v10);
    }

    v11 = *(a2 + 2);
    (*(*a3 + 24))(a3, a4);
    if (v11 >= 1)
    {
      v12 = 8;
      do
      {
        sub_276B8367C(a3, a4, *(*(&v18 + 1) + v12));
        v12 += 8;
        --v11;
      }

      while (v11);
    }

    sub_276B4A5CC(&v17);
  }

  return result;
}

void sub_276B83390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276B4A5CC(va);
  _Unwind_Resume(a1);
}

void sub_276B833B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x276B833A4);
}

unsigned int *google::protobuf::RepeatedPtrField<std::string>::AddAllocated(unsigned int *result, uint64_t a2)
{
  if (*result)
  {
    return sub_276B83468(result, a2, 0, *result);
  }

  v2 = *(result + 2);
  if (!v2)
  {
    return sub_276B83468(result, a2, 0, *result);
  }

  v3 = *v2;
  if (v3 >= result[3])
  {
    return sub_276B83468(result, a2, 0, *result);
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

unsigned int *sub_276B83468(unsigned int *a1, uint64_t a2, char *a3, char *a4)
{
  if (!a3 && a4)
  {
    sub_276B83518(a4, a2);
LABEL_9:
    v7 = a2;
    goto LABEL_10;
  }

  if (a4 == a3)
  {
    goto LABEL_9;
  }

  v7 = sub_2769C64F4(a4);
  std::string::operator=(v7, a2);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    MEMORY[0x277C9F670](a2, 0x1012C40EC159624);
  }

LABEL_10:

  return google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaAddAllocated(a1, v7);
}

char *sub_276B83518(char *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, sub_276B83620);
  }

  return result;
}

unsigned int *google::protobuf::RepeatedPtrField<std::string>::UnsafeArenaAddAllocated(unsigned int *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = this[3];
    goto LABEL_13;
  }

  v5 = this[2];
  v6 = this[3];
  if (v5 == v6)
  {
LABEL_13:
    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v5 + 1);
    goto LABEL_14;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v10 = v7 + 1;
      goto LABEL_15;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_14:
    v4 = *(v3 + 2);
    v10 = *v4 + 1;
LABEL_15:
    *v4 = v10;
    goto LABEL_16;
  }

  v8 = *&v4[2 * v5 + 2];
  if (v8)
  {
    v9 = *this == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    this = MEMORY[0x277C9F670](v8, 0x1012C40EC159624);
    v4 = *(v3 + 2);
  }

LABEL_16:
  v11 = v3[2];
  v3[2] = v11 + 1;
  *&v4[2 * v11 + 2] = a2;
  return this;
}

uint64_t sub_276B83620(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void sub_276B8367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_276A07B90(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  (*(*a1 + 40))(a1, a2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276B83710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B8372C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __p[1] = 0;
  v8 = 0;
  __p[0] = 0;
  v5 = (*(*a1 + 16))(a1, a2, a3, __p);
  if (*(v5 + 23) < 0)
  {
    sub_276A07B90(a4, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    *(a4 + 16) = *(v5 + 16);
    *a4 = v6;
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276B837BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B837D8(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v17.__r_.__value_.__r.__words[2] = 0;
  *&v17.__r_.__value_.__l.__data_ = v4;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v17, v5);
    sub_276B4A878(&v17, v7, (v6 + 8), v5, *v17.__r_.__value_.__r.__words[2] - LODWORD(v17.__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v17.__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v17.__r_.__value_.__r.__words[1]) = v8;
    if (*v17.__r_.__value_.__r.__words[2] < v8)
    {
      *v17.__r_.__value_.__r.__words[2] = v8;
    }
  }

  google::protobuf::RepeatedPtrField<std::string>::Clear(a1);
  v10 = a2 + 1;
  v9 = *(a2 + 2);
  if (v9)
  {
    v11 = a2[2];
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v9);
    sub_276B4A878(a1, v12, (v11 + 8), v9, **(a1 + 16) - *(a1 + 8));
    v13 = *(a1 + 8) + v9;
    *(a1 + 8) = v13;
    v14 = *(a1 + 16);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *v10;
  v16 = v10[1];
  *v10 = *&v17.__r_.__value_.__r.__words[1];
  v17.__r_.__value_.__l.__size_ = v15;
  v17.__r_.__value_.__r.__words[2] = v16;
  sub_276B4A5CC(&v17);
}

uint64_t sub_276B8397C(int a1, google::protobuf::internal::MapFieldBase *this)
{
  result = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v3 = *(result + 8);
  if (v3 >= 1)
  {
    v4 = result;
    v5 = (*(result + 16) + 8);
    do
    {
      v6 = *v5++;
      result = (*(*v6 + 40))(v6);
      --v3;
    }

    while (v3);
    *(v4 + 8) = 0;
  }

  return result;
}

uint64_t sub_276B839F4(int a1, google::protobuf::internal::MapFieldBase *this, int a3)
{
  v3 = *(**(*(google::protobuf::internal::MapFieldBase::MutableRepeatedField(this) + 16) + 8 * a3 + 8) + 112);

  return v3();
}

unsigned int *sub_276B83A60(uint64_t a1, google::protobuf::internal::MapFieldBase *a2, uint64_t a3)
{
  v5 = (*(*a3 + 24))(a3);
  (*(*v5 + 112))(v5, a3);
  v6 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a2);

  return sub_276B693D8(v6, v5);
}

uint64_t sub_276B83AFC(int a1, google::protobuf::internal::MapFieldBase *this)
{
  v2 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v3 = *(v2 + 8) - 1;
  v4 = *(v2 + 16) + 8 * v3;
  *(v2 + 8) = v3;
  v5 = *(**(v4 + 8) + 40);

  return v5();
}

uint64_t sub_276B83B60(int a1, google::protobuf::internal::MapFieldBase *this, int a3, int a4)
{
  result = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v7 = *(result + 16) + 8;
  v8 = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = *(v7 + 8 * a4);
  *(v7 + 8 * a4) = v8;
  return result;
}

__n128 sub_276B83BA4(uint64_t a1, google::protobuf::internal::MapFieldBase *this, uint64_t a3, google::protobuf::internal::MapFieldBase *a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 235);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v7 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(this);
  v8 = google::protobuf::internal::MapFieldBase::MutableRepeatedField(a4);
  if (v7 != v8)
  {
    if (*v8 == *v7)
    {
      v10 = v7[1];
      v11 = v7[2];
      result = *(v8 + 8);
      *(v7 + 1) = result;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
    }

    else
    {
      sub_276B83CDC(v7, v8);
    }
  }

  return result;
}

void sub_276B83C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B83CDC(google::protobuf::internal::RepeatedPtrFieldBase *this, void *a2)
{
  v4 = *a2;
  v21 = 0uLL;
  v20 = v4;
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v20, v5);
    sub_276B83E44(&v20, v7, (v6 + 8), v5, **(&v21 + 1) - v21);
    v8 = v21 + v5;
    LODWORD(v21) = v8;
    if (**(&v21 + 1) < v8)
    {
      **(&v21 + 1) = v8;
    }

    v9 = *(this + 2);
    if (v9 >= 1)
    {
      v10 = (*(this + 2) + 8);
      do
      {
        v11 = *v10++;
        (*(*v11 + 40))(v11);
        --v9;
      }

      while (v9);
      *(this + 2) = 0;
    }
  }

  v13 = a2 + 1;
  v12 = *(a2 + 2);
  if (v12)
  {
    v14 = a2[2];
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v12);
    sub_276B83E44(this, v15, (v14 + 8), v12, **(this + 2) - *(this + 2));
    v16 = *(this + 2) + v12;
    *(this + 2) = v16;
    v17 = *(this + 2);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *v13;
  v19 = v13[1];
  *v13 = v21;
  *&v21 = v18;
  *(&v21 + 1) = v19;
  sub_276B55D34(&v20);
}

uint64_t sub_276B83E44(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276B69550(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = (*(*v21 + 32))(v21, v18);
      result = sub_276B69550(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276B83F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 1)
  {
    v4 = (*(a2 + 16) + 8);
    do
    {
      v5 = *v4++;
      result = (*(*v5 + 40))(v5);
      --v2;
    }

    while (v2);
    *(a2 + 8) = 0;
  }

  return result;
}

unsigned int *sub_276B83FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 128))(a1, a3);
  (*(*a1 + 136))(a1, a3, v6);

  return sub_276B693D8(a2, v6);
}

uint64_t sub_276B84094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  v3 = *(a2 + 16) + 8 * v2;
  *(a2 + 8) = v2;
  return (*(**(v3 + 8) + 40))();
}

__n128 sub_276B840D0(uint64_t a1, google::protobuf::internal::RepeatedPtrFieldBase *this, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/reflection_internal.h", 343);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: this == other_mutator: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (this != a4)
  {
    if (*a4 == *this)
    {
      v8 = *(this + 1);
      v9 = *(this + 2);
      result = *(a4 + 8);
      *(this + 8) = result;
      *(a4 + 8) = v8;
      *(a4 + 16) = v9;
    }

    else
    {
      sub_276B83CDC(this, a4);
    }
  }

  return result;
}

void sub_276B84178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    google::protobuf::internal::LogMessage::LogMessage(v39, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/int128.cc", 86);
    v8 = google::protobuf::internal::LogMessage::operator<<(v39, "Division or mod by zero: dividend.hi=");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, v6);
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, ", lo=");
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, v7);
    google::protobuf::internal::LogFinisher::operator=(&v38, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v39[0].__r_.__value_.__l.__data_);
    return;
  }

  v12 = a1 < a3;
  if (a2 != a4)
  {
    v12 = a2 < a4;
  }

  if (!v12)
  {
    if (a2)
    {
      v13 = HIDWORD(a2);
      if (!HIDWORD(a2))
      {
        v13 = a2;
      }

      if (v13 >> 16)
      {
        v14 = (32 * (HIDWORD(a2) != 0)) | 0x10;
      }

      else
      {
        v14 = 32 * (HIDWORD(a2) != 0);
      }

      if (v13 >> 16)
      {
        LODWORD(v13) = WORD1(v13);
      }

      if (v13 > 0xFF)
      {
        v14 |= 8u;
        LODWORD(v13) = v13 >> 8;
      }

      if (v13 > 0xF)
      {
        v14 |= 4u;
        LOBYTE(v13) = v13 >> 4;
      }

      v15 = v14 + ((0x3333333322221100uLL >> (4 * v13)) & 3) + 64;
      if (a4)
      {
LABEL_20:
        v16 = HIDWORD(a4);
        if (!HIDWORD(a4))
        {
          v16 = a4;
        }

        if (v16 >> 16)
        {
          v17 = (32 * (HIDWORD(a4) != 0)) | 0x10;
        }

        else
        {
          v17 = 32 * (HIDWORD(a4) != 0);
        }

        if (v16 >> 16)
        {
          LODWORD(v16) = WORD1(v16);
        }

        if (v16 > 0xFF)
        {
          v17 |= 8u;
          LODWORD(v16) = v16 >> 8;
        }

        if (v16 > 0xF)
        {
          v17 |= 4u;
          LOBYTE(v16) = v16 >> 4;
        }

        v18 = v17 + ((0x3333333322221100uLL >> (4 * v16)) & 3) + 64;
LABEL_56:
        v23 = (v15 - v18);
        if ((v23 & 0x80000000) != 0)
        {
          v25 = 0;
          v24 = 0;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = v23 + 1;
          do
          {
            *(&v27 + 1) = v24;
            *&v27 = v25;
            v24 = v27 >> 63;
            v25 *= 2;
            v28 = a3 << v23;
            if (v23 <= 0x7F)
            {
              v29 = a3 << v23;
            }

            else
            {
              v29 = 0;
            }

            v30 = (a4 << v23) | (a3 >> 1 >> ~v23);
            if (!v23)
            {
              v30 = a4;
              v28 = a3;
            }

            if (v23 > 0x3F)
            {
              v28 = 0;
            }

            else
            {
              v29 = v30;
            }

            v31 = v7 >= v28;
            v32 = v6 >= v29;
            v33 = v6 - v29;
            v34 = v32;
            if (v33)
            {
              v31 = v34;
            }

            v32 = v7 >= v28;
            v35 = v7 - v28;
            v36 = !v32;
            v37 = v33 - v36;
            if (v31)
            {
              v25 |= 1uLL;
              v7 = v35;
              v6 = v37;
            }

            --v23;
            --v26;
          }

          while (v26 > 0);
        }

        *a5 = v25;
        a5[1] = v24;
        goto LABEL_80;
      }
    }

    else
    {
      v19 = HIDWORD(a1);
      if (!HIDWORD(a1))
      {
        v19 = a1;
      }

      if (v19 >> 16)
      {
        v20 = (32 * (HIDWORD(a1) != 0)) | 0x10;
      }

      else
      {
        v20 = 32 * (HIDWORD(a1) != 0);
      }

      if (v19 >> 16)
      {
        LODWORD(v19) = WORD1(v19);
      }

      if (v19 > 0xFF)
      {
        v20 |= 8u;
        LODWORD(v19) = v19 >> 8;
      }

      if (v19 > 0xF)
      {
        v20 |= 4u;
        LOBYTE(v19) = v19 >> 4;
      }

      v15 = ((0x3333333322221100uLL >> (4 * v19)) & 3) + v20;
      if (a4)
      {
        goto LABEL_20;
      }
    }

    v21 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v21 = a3;
    }

    if (v21 >> 16)
    {
      v22 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    else
    {
      v22 = 32 * (HIDWORD(a3) != 0);
    }

    if (v21 >> 16)
    {
      LODWORD(v21) = WORD1(v21);
    }

    if (v21 > 0xFF)
    {
      v22 |= 8u;
      LODWORD(v21) = v21 >> 8;
    }

    if (v21 > 0xF)
    {
      v22 |= 4u;
      LOBYTE(v21) = v21 >> 4;
    }

    v18 = ((0x3333333322221100uLL >> (4 * v21)) & 3) + v22;
    goto LABEL_56;
  }

  *a5 = 0;
  a5[1] = 0;
LABEL_80:
  *a6 = v7;
  a6[1] = v6;
}

void sub_276B844B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

  sub_276B84AAC(&v28);
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
    MEMORY[0x277C9F550](&v28);
    *(&v28 + *(v28 - 24) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v7 = sub_276B84C18(&v28, &v24);
    *(v7 + *(*v7 - 24) + 24) = v6;
    MEMORY[0x277C9F550](&v28, v25[0]);
    v8 = &v28 + *(v28 - 24);
  }

  else
  {
    if (!v25[0])
    {
      goto LABEL_11;
    }

    MEMORY[0x277C9F550](&v28);
    *(&v28 + *(v28 - 24) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v9 = sub_276B84C18(&v28, &v24);
    v8 = v9 + *(*v9 - 24);
  }

  *(v8 + 3) = v6;
LABEL_11:
  MEMORY[0x277C9F550](&v28, v26[0]);
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

  v22 = sub_276B84FC0(a1, v20, v21);
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
  MEMORY[0x277C9F600](&v32);
  return v22;
}

void sub_276B84A48(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::locale::~locale((v28 - 72));
  if (a8 < 0)
  {
    operator delete(__p);
  }

  sub_276B84CE0(&a15, MEMORY[0x277D82828]);
  MEMORY[0x277C9F600](va);
  _Unwind_Resume(a1);
}

uint64_t *sub_276B84AAC(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_276B84DFC((a1 + 1), 16);
  return a1;
}

void sub_276B84BF0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x277C9F600](v1);
  _Unwind_Resume(a1);
}

void *sub_276B84C18(void *a1, char *a2)
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

uint64_t sub_276B84CE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_276B84DFC(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x277C9F5B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_276B84EB8(a1);
  return a1;
}

void sub_276B84E90(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_276B84EB8(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_276B84FC0(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277C9F520](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_276B85168(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x277C9F530](v13);
  return a1;
}

void sub_276B85100(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x277C9F530](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x276B850E0);
}

uint64_t sub_276B85168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2769DD7D8();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_276B85334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
  google::protobuf::internal::LogMessage::LogMessage(v8, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message_lite.cc", 133);
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "Can't ");
  std::string::append(&__p, "parse");
  std::string::append(&__p, " message of type ");
  (*(*this + 16))(&v9, this);
  if ((v11 & 0x80u) == 0)
  {
    v2 = &v9;
  }

  else
  {
    v2 = v9;
  }

  if ((v11 & 0x80u) == 0)
  {
    v3 = v11;
  }

  else
  {
    v3 = v10;
  }

  std::string::append(&__p, v2, v3);
  if (v11 < 0)
  {
    operator delete(v9);
  }

  std::string::append(&__p, " because it is missing required fields: ");
  (*(*this + 56))(&v9, this);
  if ((v11 & 0x80u) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9;
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = v10;
  }

  std::string::append(&__p, v4, v5);
  if (v11 < 0)
  {
    operator delete(v9);
  }

  v6 = google::protobuf::internal::LogMessage::operator<<(v8, &__p);
  google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
}

void sub_276B855B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a15);
  _Unwind_Resume(a1);
}

void *google::protobuf::MessageLite::New(google::protobuf::MessageLite *this, google::protobuf::Arena *a2)
{
  v3 = (*(*this + 24))(this);
  if (a2)
  {
    sub_276B58EC4(a2, v3);
  }

  return v3;
}

void google::protobuf::MessageLite::ParseFromFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileInputStream::FileInputStream(&v3, a2, -1);
  (*(*this + 40))(this);
  google::protobuf::internal::MergeFromImpl<false>();
}

void *sub_276B856F4(void *a1)
{
  *a1 = &unk_2885C92D0;
  v2 = (a1 + 1);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((a1 + 4));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v2);
  return a1;
}

void google::protobuf::MessageLite::ParsePartialFromFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileInputStream::FileInputStream(&v3, a2, -1);
  (*(*this + 40))(this);
  google::protobuf::internal::MergeFromImpl<false>();
}

void google::protobuf::MessageLite::ParseFromIstream(uint64_t a1, uint64_t a2)
{
  google::protobuf::io::IstreamInputStream::IstreamInputStream(v3, a2, -1);
  (*(*a1 + 40))(a1);
  google::protobuf::internal::MergeFromImpl<false>();
}

void sub_276B85860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B85874(va);
  _Unwind_Resume(a1);
}

void *sub_276B85874(void *a1)
{
  *a1 = &unk_2885C93B0;
  v2 = (a1 + 1);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((a1 + 3));
  google::protobuf::io::IstreamInputStream::CopyingIstreamInputStream::~CopyingIstreamInputStream(v2);
  return a1;
}

void google::protobuf::MessageLite::ParsePartialFromIstream(uint64_t a1, uint64_t a2)
{
  google::protobuf::io::IstreamInputStream::IstreamInputStream(v3, a2, -1);
  (*(*a1 + 40))(a1);
  google::protobuf::internal::MergeFromImpl<false>();
}

void sub_276B8594C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B85874(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeWithCachedSizesToArray(google::protobuf::MessageLite *this, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = &a2[(*(*this + 80))(this)];
  v6[1] = 0;
  v6[6] = 0;
  v7 = 0;
  v8 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  result = (*(*this + 96))(this, a2, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t google::protobuf::MessageLite::SerializePartialToCodedStream(google::protobuf::MessageLite *this, unsigned __int8 **a2)
{
  v4 = (*(*this + 72))(this);
  if (v4 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v25, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message_lite.cc", 380);
    (*(*this + 16))(__p, this);
    v5 = google::protobuf::internal::LogMessage::operator<<(v25, __p);
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " exceeded maximum protobuf size of 2GB: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, v4);
    google::protobuf::internal::LogFinisher::operator=(&v22, &v7->__r_.__value_.__l.__data_);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    return 0;
  }

  else
  {
    v9 = google::protobuf::io::EpsCopyOutputStream::ByteCount(a2, a2[8]);
    v10 = a2[9];
    v11 = (*(*this + 96))(this, a2[8], a2);
    a2[8] = v11;
    v12 = google::protobuf::io::EpsCopyOutputStream::FlushAndResetBuffer(a2, v11);
    a2[8] = v12;
    v13 = *(a2 + 56);
    if ((v13 & 1) == 0 && v4 != v10 + google::protobuf::io::EpsCopyOutputStream::ByteCount(a2, v12) - (v9 + *(a2 + 18)))
    {
      if (v4 != (*(*this + 72))(this))
      {
        google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message_lite.cc", 84);
        v14 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
        (*(*this + 16))(__p, this);
        v15 = google::protobuf::internal::LogMessage::operator<<(v14, __p);
        v16 = google::protobuf::internal::LogMessage::operator<<(v15, " was modified concurrently during serialization.");
        google::protobuf::internal::LogFinisher::operator=(&v22, &v16->__r_.__value_.__l.__data_);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
      }

      google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message_lite.cc", 87);
      v17 = google::protobuf::internal::LogMessage::operator<<(v25, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
      v18 = google::protobuf::internal::LogMessage::operator<<(v17, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of ");
      (*(*this + 16))(__p, this);
      v19 = google::protobuf::internal::LogMessage::operator<<(v18, __p);
      v20 = google::protobuf::internal::LogMessage::operator<<(v19, ".");
      google::protobuf::internal::LogFinisher::operator=(&v22, &v20->__r_.__value_.__l.__data_);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::LogMessage(v25, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message_lite.cc", 92);
      v21 = google::protobuf::internal::LogMessage::operator<<(v25, "This shouldn't be called if all the sizes are equal.");
      google::protobuf::internal::LogFinisher::operator=(__p, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v25[0].__r_.__value_.__l.__data_);
    }

    return v13 ^ 1u;
  }
}

void sub_276B85D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToZeroCopyStream(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 72))(a1);
  if (v4 >> 31)
  {
    v5 = v4;
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message_lite.cc", 410);
    (*(*a1 + 16))(__p, a1);
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
    v10 = (*(*a1 + 96))(a1);
    google::protobuf::io::EpsCopyOutputStream::Trim(v16, v10);
    v9 = v18 ^ 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void sub_276B85F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
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

void sub_276B85FE4(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_276B8605C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::FileOutputStream::~FileOutputStream(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToOstream(uint64_t a1, void *a2)
{
  google::protobuf::io::OstreamOutputStream::OstreamOutputStream(v5, a2, -1);
  LODWORD(a1) = google::protobuf::MessageLite::SerializePartialToZeroCopyStream(a1, v5);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(v5);
  return a1 && *(a2 + *(*a2 - 24) + 32) == 0;
}

void sub_276B860F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToOstream(uint64_t a1, uint64_t a2)
{
  google::protobuf::io::OstreamOutputStream::OstreamOutputStream(v5, a2, -1);
  v3 = google::protobuf::MessageLite::SerializePartialToZeroCopyStream(a1, v5);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(v5);
  return v3;
}

void sub_276B86154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::io::OstreamOutputStream::~OstreamOutputStream(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v20 = *MEMORY[0x277D85DE8];
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
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v8 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " exceeded maximum protobuf size of 2GB: ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, v6);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  else
  {
    std::string::resize(v2, v5 + size, 0);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      v2 = v2->__r_.__value_.__r.__words[0];
    }

    *&v16[0].__r_.__value_.__l.__data_ = v2 + size + v6;
    v17 = 0;
    v18 = 0;
    v19 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
    (*(*a1 + 96))(a1);
  }

  result = v7 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276B86318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a17);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeToString(uint64_t a1, std::string *a2)
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

uint64_t google::protobuf::MessageLite::SerializePartialToArray(google::protobuf::MessageLite *this, void *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (*(*this + 72))(this);
  v7 = v6;
  if (v6 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/message_lite.cc", 487);
    (*(*this + 16))(__p, this);
    v8 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " exceeded maximum protobuf size of 2GB: ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, v7);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v10->__r_.__value_.__l.__data_);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  else if (v6 <= a3)
  {
    *&v16[0].__r_.__value_.__l.__data_ = a2 + v6;
    v17 = 0;
    v18 = 0;
    v19 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
    (*(*this + 96))(this, a2, v16);
    result = 1;
    goto LABEL_8;
  }

  result = 0;
LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276B86524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a17);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
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

void sub_276B865B0(_Unwind_Exception *exception_object)
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

void sub_276B86620(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  v5 = sub_276B867C8();
  std::mutex::lock((v5 + 24));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_2769BA860();
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
      sub_276B86AA0(v5, v12);
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

uint64_t sub_276B867C8()
{
  {
    operator new();
  }

  return google::protobuf::internal::ShutdownData::get(void)::data;
}

void google::protobuf::ShutdownProtobufLibrary(google::protobuf *this)
{
  if ((byte_280A53020 & 1) == 0)
  {
    v1 = sub_276B867C8();
    if (v1)
    {
      v2 = sub_276B86984(v1);
      MEMORY[0x277C9F670](v2, 0x1020C40A0054943);
    }

    byte_280A53020 = 1;
  }
}

uint64_t sub_276B868C4(uint64_t a1, const void **a2, int *a3)
{
  DirectBufferPointer = google::protobuf::io::CodedInputStream::GetDirectBufferPointer(*(a1 + 8), a2, a3);
  if (DirectBufferPointer)
  {
    v6 = *a3;
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *(a1 + 8);
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

uint64_t sub_276B8694C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(v2 + 2) - *v2;
  if (v3 < a2)
  {
    return google::protobuf::io::CodedInputStream::SkipFallback(v2, a2, v3);
  }

  *v2 += a2;
  return 1;
}

uint64_t sub_276B86984(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - 2;
  if (*a1 != v3 && v4 > v2)
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
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  while (v2 != v3)
  {
    (*v2)(v2[1]);
    v2 += 2;
  }

  std::mutex::~mutex((a1 + 24));
  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

char *sub_276B86A2C(google::protobuf::internal::EpsCopyInputStream *this, ZeroCopyInputStream *a2, int a3)
{
  if (a3 == -1)
  {

    return google::protobuf::internal::EpsCopyInputStream::InitFrom(this, a2);
  }

  else
  {
    *(this + 21) = a3;
    result = google::protobuf::internal::EpsCopyInputStream::InitFrom(this, a2);
    v6 = *(this + 1);
    v7 = result - v6 + a3;
    *(this + 7) = v7;
    *this = v6 + (v7 & (v7 >> 31));
  }

  return result;
}

void sub_276B86AA0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2769ABE6C();
}

void sub_276B86B74(uint64_t a1, char a2, _BYTE *a3)
{
  *a3 = a2 & (*(a1 + 24) == 0);
  *a1 = &unk_2885C92D0;
  v4 = (a1 + 32);

  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(v4);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (this + 40);
    if (v2 == (this + 40))
    {
      *v3 = **(this + 1);
      if (*(this + 21) < 1)
      {
LABEL_15:
        if (*(this + 9) == 2)
        {
          *(this + 9) = *(this + 1) - v2;
        }

        v4 = this + 56;
        *(this + 1) = this + 56;
        *(this + 2) = 0;
        *(this + 6) = 0;
      }

      else
      {
        __src = 0;
        while (1)
        {
          if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
          {
            *(this + 21) = 0;
            goto LABEL_15;
          }

          v5 = *(this + 6);
          *(this + 21) -= v5;
          if (v5 >= 17)
          {
            break;
          }

          if (v5 >= 1)
          {
            memcpy(this + 56, __src, v5);
            v6 = (this + 72);
            v7 = *(this + 9);
            v4 = v3 + v5;
            *(this + 1) = v3 + v5;
            *(this + 2) = v3;
            if (v7 < 2)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        v6 = (this + 72);
        v8 = *(this + 9);
        v4 = this + 56;
        v9 = __src;
        *(this + 56) = *__src;
        *(this + 1) = this + 56;
        *(this + 2) = v9;
        if (v8 <= 1)
        {
          goto LABEL_20;
        }

LABEL_19:
        *v6 = 1;
      }
    }

    else
    {
      v4 = v2 + *(this + 6) - 16;
      *(this + 1) = v4;
      *(this + 2) = v3;
      if (*(this + 9) == 1)
      {
        *(this + 9) = 2;
      }

      v3 = v2;
    }

LABEL_20:
    v10 = *(this + 7) + v3 - v4;
    *(this + 7) = v10;
    *this = &v4[v10 & (v10 >> 31)];
  }

  else
  {
    v3 = 0;
    *this = *(this + 1);
    *(this + 20) = 1;
  }

  return v3;
}

_OWORD *sub_276B86DD4(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a1 + 40);
  if (v3 == a1 + 40)
  {
    *v5 = **(a1 + 8);
    if (*(a1 + 84) < 1)
    {
LABEL_46:
      if (*(a1 + 72) == 2)
      {
        *(a1 + 72) = *(a1 + 8) - v3;
      }

      *(a1 + 8) = a1 + 56;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      v6 = a3;
      if ((a3 & 0x80000000) == 0 && a2 <= 15)
      {
        v7 = a1 + 56;
        v8 = v5 + a2;
        v9 = v8;
        do
        {
          v10 = *v9++;
          v11 = v10;
          if (v10 < 0)
          {
            v11 = v11 + (*v9 << 7) - 128;
            if (*v9 < 0)
            {
              v9 = v8 + 3;
              v16 = -21;
              while (1)
              {
                v11 += (*(v9 - 1) - 1) << (v16 + 35);
                if ((*(v9 - 1) & 0x80000000) == 0)
                {
                  break;
                }

                ++v9;
                v16 += 7;
                if (!v16)
                {
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v9 = v8 + 2;
            }
          }

          if (v9 > v7)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_46;
          }

          v12 = v11 & 7;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                ++v6;
                break;
              case 4:
                v15 = __OFSUB__(v6--, 1);
                if (v6 < 0 != v15)
                {
                  goto LABEL_46;
                }

                break;
              case 5:
                v9 += 4;
                break;
              default:
                goto LABEL_39;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              v9 += 8;
            }

            else
            {
              v13 = *v9;
              if (*v9 < 0)
              {
                SizeFallback = google::protobuf::internal::ReadSizeFallback(v9, v13);
                if (!SizeFallback)
                {
                  break;
                }
              }

              else
              {
                SizeFallback = v9 + 1;
              }

              if ((v7 - SizeFallback) < v13)
              {
                break;
              }

              v9 = &SizeFallback[v13];
            }
          }

          else
          {
            __src = 0;
            v9 = sub_276B87B94(v9, &__src);
            if (!v9)
            {
              break;
            }
          }

          v8 = v9;
        }

        while (v9 < v7);
      }

LABEL_39:
      __src = 0;
      while (1)
      {
        if (!(*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24))
        {
          *(a1 + 84) = 0;
          goto LABEL_46;
        }

        v17 = *(a1 + 24);
        *(a1 + 84) -= v17;
        if (v17 >= 17)
        {
          break;
        }

        if (v17 >= 1)
        {
          memcpy((a1 + 56), __src, v17);
          v19 = *(a1 + 72);
          v18 = (a1 + 72);
          *(v18 - 8) = v5 + v17;
          *(v18 - 7) = v5;
          if (v19 < 2)
          {
            return v5;
          }

          goto LABEL_50;
        }
      }

      v20 = *(a1 + 72);
      v18 = (a1 + 72);
      v21 = __src;
      *(v18 - 1) = *__src;
      *(v18 - 8) = v18 - 2;
      *(v18 - 7) = v21;
      if (v20 <= 1)
      {
        return v5;
      }

LABEL_50:
      *v18 = 1;
    }
  }

  else
  {
    *(a1 + 8) = v3 + *(a1 + 24) - 16;
    *(a1 + 16) = v5;
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 2;
    }

    return v3;
  }

  return v5;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::SkipFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v5 = *(this + 2) - a2 + 16;
  while (*(this + 2) && *(this + 7) >= 17)
  {
    result = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!result)
    {
      return result;
    }

    a3 -= v5;
    v5 = *(this + 2) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

char *google::protobuf::internal::EpsCopyInputStream::InitFrom(google::protobuf::internal::EpsCopyInputStream *this, ZeroCopyInputStream *a2)
{
  *(this + 4) = a2;
  __src = 0;
  v7 = 0;
  *(this + 7) = 0x7FFFFFFF;
  if ((*(a2->var0 + 2))(a2, &__src, &v7))
  {
    v3 = v7;
    *(this + 21) -= v7;
    if (v3 < 17)
    {
      *this = this + 56;
      *(this + 1) = this + 56;
      *(this + 2) = this + 40;
      v4 = this - v3 + 72;
      memcpy(v4, __src, v3);
    }

    else
    {
      v4 = __src;
      *(this + 7) = *(this + 7) - v3 + 16;
      v5 = &v4[v3 - 16];
      *this = v5;
      *(this + 1) = v5;
      *(this + 2) = this + 40;
      if (*(this + 9) == 1)
      {
        *(this + 9) = 2;
      }
    }
  }

  else
  {
    *(this + 21) = 0;
    *(this + 6) = 0;
    v4 = this + 40;
    *(this + 1) = this + 40;
    *(this + 2) = 0;
    *this = this + 40;
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

  return sub_276B62314(a3, v6, v5, a1);
}

char *sub_276B8760C(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v6 = result;
    v5 = v8;
LABEL_3:

    sub_276B889D0(a3, v6, v5, a1);
  }

  return result;
}

char *sub_276B87688(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v6 = result;
    v5 = v8;
LABEL_3:

    sub_276B88AD8(a3, v6, v5, a1);
  }

  return result;
}

char *sub_276B87704(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v6 = result;
    v5 = v8;
LABEL_3:

    sub_276B88BE0(a3, v6, v5, a1);
  }

  return result;
}

char *sub_276B87780(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v6 = result;
    v5 = v8;
LABEL_3:

    sub_276B88CE8(a3, v6, v5, a1);
  }

  return result;
}

char *sub_276B877FC(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v6 = result;
    v5 = v8;
LABEL_3:

    sub_276B88DF0(a3, v6, v5, a1);
  }

  return result;
}

char *sub_276B87878(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    v6 = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v6 = result;
    v5 = v8;
LABEL_3:

    sub_276B88EF8(a3, v6, v5, a1);
  }

  return result;
}

google::protobuf::internal *sub_276B87918(int a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_2769F6104(a3, &v10, *(a3 + 92)))
    {
      return v10;
    }

    v5 = (v10 + 1);
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = (v10 + 3);
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          v5 = (v5 + 1);
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = (v10 + 2);
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = sub_276B87A30(v6, a1, v5);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

google::protobuf::internal *sub_276B87A30(unint64_t a1, std::string *a2, google::protobuf::internal *this, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = this;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/parse_context.h", 758);
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

        v5 = (this + 4);
        sub_276B893FC(a2, v4, *this);
      }

      return v5;
    }

    result = sub_276B89308(a2, v4, this, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = sub_276B87B94(this, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_276B89000(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = (this + 8);
    sub_276B890C8(a2, v4, *this);
    return v5;
  }

  result = sub_276B89188(a2, v4, this, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_276B87B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *sub_276B87B94(char *a1, unint64_t *a2)
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

char *sub_276B87C04(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v14;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_276B87D50(result, v12, a3);
        if (v12 != result)
        {
          result = 0;
        }

        goto LABEL_14;
      }

      result = sub_276B87D50(result, v7, a3);
      if (!result)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_13;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_14;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v17 = 0;
    v16 = 0;
    v15 = *v9;
    if (sub_276B87D50(&v15 + v10, &v15 + v11, a3) != &v15 + v11)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    result = (*(a1 + 8) + v11);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_276B87D50(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v6 + 1)
  {
    v8 = 0;
    i = sub_276B87B94(i, &v8);
    if (!i)
    {
      break;
    }

    v6 = *a3;
    if (v6 == a3[1])
    {
      google::protobuf::RepeatedField<int>::Reserve();
    }

    *(*(a3 + 1) + 4 * v6) = v8;
  }

  return i;
}

char *sub_276B87DF8(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v14;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_276B87F44(result, v12, a3);
        if (v12 != result)
        {
          result = 0;
        }

        goto LABEL_14;
      }

      result = sub_276B87F44(result, v7, a3);
      if (!result)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_13;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_14;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v17 = 0;
    v16 = 0;
    v15 = *v9;
    if (sub_276B87F44(&v15 + v10, &v15 + v11, a3) != &v15 + v11)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    result = (*(a1 + 8) + v11);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_276B87F44(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v6 + 1)
  {
    v8 = 0;
    i = sub_276B87B94(i, &v8);
    if (!i)
    {
      break;
    }

    v6 = *a3;
    if (v6 == a3[1])
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve();
    }

    *(*(a3 + 1) + 4 * v6) = v8;
  }

  return i;
}

char *sub_276B87FEC(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v14;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_276B88138(result, v12, a3);
        if (v12 != result)
        {
          result = 0;
        }

        goto LABEL_14;
      }

      result = sub_276B88138(result, v7, a3);
      if (!result)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_13;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_14;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v17 = 0;
    v16 = 0;
    v15 = *v9;
    if (sub_276B88138(&v15 + v10, &v15 + v11, a3) != &v15 + v11)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    result = (*(a1 + 8) + v11);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_276B88138(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v6 + 1)
  {
    v8 = 0;
    i = sub_276B87B94(i, &v8);
    if (!i)
    {
      break;
    }

    v6 = *a3;
    if (v6 == a3[1])
    {
      google::protobuf::RepeatedField<long long>::Reserve();
    }

    *(*(a3 + 1) + 8 * v6) = v8;
  }

  return i;
}

char *sub_276B881E0(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v14;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_276B8832C(result, v12, a3);
        if (v12 != result)
        {
          result = 0;
        }

        goto LABEL_14;
      }

      result = sub_276B8832C(result, v7, a3);
      if (!result)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_13;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_14;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v17 = 0;
    v16 = 0;
    v15 = *v9;
    if (sub_276B8832C(&v15 + v10, &v15 + v11, a3) != &v15 + v11)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    result = (*(a1 + 8) + v11);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_276B8832C(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v6 + 1)
  {
    v8 = 0;
    i = sub_276B87B94(i, &v8);
    if (!i)
    {
      break;
    }

    v6 = *a3;
    if (v6 == a3[1])
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve();
    }

    *(*(a3 + 1) + 8 * v6) = v8;
  }

  return i;
}

char *sub_276B883D4(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v14;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_276B88520(result, v12, a3);
        if (v12 != result)
        {
          result = 0;
        }

        goto LABEL_14;
      }

      result = sub_276B88520(result, v7, a3);
      if (!result)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_13;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_14;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v17 = 0;
    v16 = 0;
    v15 = *v9;
    if (sub_276B88520(&v15 + v10, &v15 + v11, a3) != &v15 + v11)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    result = (*(a1 + 8) + v11);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_276B88520(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v6 + 1)
  {
    v8 = 0;
    i = sub_276B87B94(i, &v8);
    if (!i)
    {
      break;
    }

    v6 = *a3;
    if (v6 == a3[1])
    {
      google::protobuf::RepeatedField<int>::Reserve();
    }

    *(*(a3 + 1) + 4 * v6) = -(v8 & 1) ^ (v8 >> 1);
  }

  return i;
}

char *sub_276B885D4(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v14;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_276B88720(result, v12, a3);
        if (v12 != result)
        {
          result = 0;
        }

        goto LABEL_14;
      }

      result = sub_276B88720(result, v7, a3);
      if (!result)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_13;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_14;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v17 = 0;
    v16 = 0;
    v15 = *v9;
    if (sub_276B88720(&v15 + v10, &v15 + v11, a3) != &v15 + v11)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    result = (*(a1 + 8) + v11);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_276B88720(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v6 + 1)
  {
    v8 = 0;
    i = sub_276B87B94(i, &v8);
    if (!i)
    {
      break;
    }

    v6 = *a3;
    if (v6 == a3[1])
    {
      google::protobuf::RepeatedField<long long>::Reserve();
    }

    *(*(a3 + 1) + 8 * v6) = -(v8 & 1) ^ (v8 >> 1);
  }

  return i;
}

char *sub_276B887D4(uint64_t a1, google::protobuf::internal *this, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_3;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v14;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_276B88920(result, v12, a3);
        if (v12 != result)
        {
          result = 0;
        }

        goto LABEL_14;
      }

      result = sub_276B88920(result, v7, a3);
      if (!result)
      {
        goto LABEL_14;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_13;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_14;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v17 = 0;
    v16 = 0;
    v15 = *v9;
    if (sub_276B88920(&v15 + v10, &v15 + v11, a3) != &v15 + v11)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    result = (*(a1 + 8) + v11);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_276B88920(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v6 + 1)
  {
    v8 = 0;
    i = sub_276B87B94(i, &v8);
    if (!i)
    {
      break;
    }

    v6 = *a3;
    if (v6 == a3[1])
    {
      google::protobuf::RepeatedField<BOOL>::Reserve();
    }

    *(*(a3 + 1) + v6) = v8 != 0;
  }

  return i;
}

void sub_276B889D0(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  if (*(a1 + 8) - a2 + 16 < a3)
  {
    v4 = *a4;
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v5 = *a4;
  google::protobuf::RepeatedField<unsigned int>::Reserve();
}

void sub_276B88AD8(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  if (*(a1 + 8) - a2 + 16 < a3)
  {
    v4 = *a4;
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v5 = *a4;
  google::protobuf::RepeatedField<int>::Reserve();
}

void sub_276B88BE0(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  if (*(a1 + 8) - a2 + 16 < a3)
  {
    v4 = *a4;
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  v5 = *a4;
  google::protobuf::RepeatedField<unsigned long long>::Reserve();
}

void sub_276B88CE8(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  if (*(a1 + 8) - a2 + 16 < a3)
  {
    v4 = *a4;
    google::protobuf::RepeatedField<long long>::Reserve();
  }

  v5 = *a4;
  google::protobuf::RepeatedField<long long>::Reserve();
}

void sub_276B88DF0(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  if (*(a1 + 8) - a2 + 16 < a3)
  {
    v4 = *a4;
    google::protobuf::RepeatedField<float>::Reserve();
  }

  v5 = *a4;
  google::protobuf::RepeatedField<float>::Reserve();
}

void sub_276B88EF8(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  if (*(a1 + 8) - a2 + 16 < a3)
  {
    v4 = *a4;
    google::protobuf::RepeatedField<double>::Reserve();
  }

  v5 = *a4;
  google::protobuf::RepeatedField<double>::Reserve();
}

void sub_276B89000(std::string **a1, int a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1)
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
    v9 = *a1;
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

std::string *sub_276B890C8(std::string *result, int a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
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
    result = std::string::append(*v5, v10, 8uLL);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

google::protobuf::internal::EpsCopyInputStream *sub_276B89188(std::string **a1, int a2, std::string::value_type *this, google::protobuf::internal::EpsCopyInputStream *a4)
{
  v7 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = this + 1;
  }

  v9 = *a1;
  if (*a1)
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
    v15 = *a1;
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
    v18 = *a1;

    return sub_276B89490(a4, v8, v7, v18);
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

google::protobuf::internal *sub_276B89308(std::string **a1, int a2, char *a3, int32x2_t *a4)
{
  v7 = *a1;
  v8 = 8 * a2;
  v9 = (8 * a2) | 3;
  if (*a1)
  {
    if (v8 < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 3;
    }

    else
    {
      v10 = (8 * a2) | 3u;
      do
      {
        std::string::push_back(v7, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v7, v11);
  }

  v13 = sub_276B894FC(a4, a1, a3, v9);
  if (v13)
  {
    v14 = *a1;
    if (v14)
    {
      v15 = v8 | 4;
      if (v8 < 0x80)
      {
        LOBYTE(v16) = v8 | 4;
      }

      else
      {
        do
        {
          std::string::push_back(v14, v15 | 0x80);
          v16 = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }

      std::string::push_back(v14, v16);
    }
  }

  return v13;
}

std::string *sub_276B893FC(std::string *result, int a2, int a3)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
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

  return result;
}

google::protobuf::internal::EpsCopyInputStream *sub_276B89490(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
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

google::protobuf::internal *sub_276B894FC(int32x2_t *a1, int a2, char *a3, int a4)
{
  v4 = a1[11].i32[0];
  v5 = __OFSUB__(v4--, 1);
  a1[11].i32[0] = v4;
  if (v4 < 0 != v5)
  {
    return 0;
  }

  ++a1[11].i32[1];
  result = sub_276B87918(a2, a3, a1);
  a1[11] = vadd_s32(a1[11], 0xFFFFFFFF00000001);
  v9 = a1[10].i32[0];
  a1[10].i32[0] = 0;
  if (v9 != a4)
  {
    return 0;
  }

  return result;
}

void sub_276B89598(uint64_t a1@<X8>)
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

std::string *sub_276B895D4(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

double google::protobuf::io::Printer::Printer(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

double google::protobuf::io::Printer::Printer(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a4;
  return result;
}

{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a4;
  return result;
}

void google::protobuf::io::Printer::~Printer(google::protobuf::io::Printer *this)
{
  if (*(this + 6) >= 1 && (*(this + 65) & 1) == 0)
  {
    (*(**(this + 1) + 24))(*(this + 1));
  }

  v2 = (this + 96);
  sub_276B281C8(&v2);
  sub_276B2AD2C(this + 72, *(this + 10));
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

uint64_t google::protobuf::io::Printer::GetSubstitutionRange(uint64_t a1, char *__s, unint64_t *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst[0].__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
  }

  __dst[0].__r_.__value_.__s.__data_[v7] = 0;
  v8 = sub_276B27C88(a1 + 72, &__dst[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

  if (a1 + 80 == v8)
  {
    google::protobuf::internal::LogMessage::LogMessage(__dst, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 80);
    v13 = google::protobuf::internal::LogMessage::operator<<(__dst, " Undefined variable in annotation: ");
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, __s);
    google::protobuf::internal::LogFinisher::operator=(&v16, &v14->__r_.__value_.__l.__data_);
    goto LABEL_13;
  }

  v9 = *(v8 + 56);
  v10 = *(v8 + 64);
  if (v9 > v10)
  {
    google::protobuf::internal::LogMessage::LogMessage(__dst, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 84);
    v11 = google::protobuf::internal::LogMessage::operator<<(__dst, " Variable used for annotation used multiple times: ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, __s);
    google::protobuf::internal::LogFinisher::operator=(&v16, &v12->__r_.__value_.__l.__data_);
LABEL_13:
    google::protobuf::internal::LogMessage::~LogMessage(&__dst[0].__r_.__value_.__l.__data_);
    return 0;
  }

  *a3 = v9;
  a3[1] = v10;
  return 1;
}

void sub_276B898EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B8990C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x276B89904);
}

void google::protobuf::io::Printer::Annotate(uint64_t a1, std::string::value_type *a2, std::string::value_type *a3)
{
  if (*(a1 + 120))
  {
    v14[0] = 0;
    v14[1] = 0;
    v12 = 0;
    v13 = 0;
    if (google::protobuf::io::Printer::GetSubstitutionRange(a1, a2, v14))
    {
      if (google::protobuf::io::Printer::GetSubstitutionRange(a1, a3, &v12))
      {
        if (v14[0] <= v13)
        {
          (***(a1 + 120))(*(a1 + 120));
        }

        else
        {
          google::protobuf::internal::LogMessage::LogMessage(v11, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 105);
          v6 = google::protobuf::internal::LogMessage::operator<<(v11, "  Annotation has negative length from ");
          v7 = google::protobuf::internal::LogMessage::operator<<(v6, a2);
          v8 = google::protobuf::internal::LogMessage::operator<<(v7, " to ");
          v9 = google::protobuf::internal::LogMessage::operator<<(v8, a3);
          google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_276B89A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::Printer::Print(char *a1, uint64_t a2, char *__s)
{
  v6 = strlen(__s);
  sub_276B2AD2C((a1 + 72), *(a1 + 10));
  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  *(a1 + 9) = a1 + 80;
  sub_276B2740C(a1 + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = __s[v8];
      if (v9 == 10)
      {
        break;
      }

      if (v9 == *a1)
      {
        google::protobuf::io::Printer::WriteRaw(a1, &__s[v7], v8 - v7);
        v10 = v8 + 1;
        v11 = &__s[v8 + 1];
        v12 = strchr(v11, *a1);
        if (!v12)
        {
          google::protobuf::internal::LogMessage::LogMessage(&__dst, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 142);
          v13 = google::protobuf::internal::LogMessage::operator<<(&__dst, " Unclosed variable name.");
          google::protobuf::internal::LogFinisher::operator=(&__p, &v13->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__dst.__r_.__value_.__l.__data_);
          LODWORD(v12) = v11;
        }

        v14 = v12 - __s;
        sub_276B264D0(&__p, v11, v12 - __s - v10);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v16 = sub_276B27C88(a2, &__p.__r_.__value_.__l.__data_);
          v17 = v16;
          if (a2 + 8 == v16)
          {
            google::protobuf::internal::LogMessage::LogMessage(&__dst, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 156);
            v18 = google::protobuf::internal::LogMessage::operator<<(&__dst, " Undefined variable: ");
            v19 = google::protobuf::internal::LogMessage::operator<<(v18, &__p);
            google::protobuf::internal::LogFinisher::operator=(&v28, &v19->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&__dst.__r_.__value_.__l.__data_);
          }

          else
          {
            if (a1[64] == 1)
            {
              if ((*(v16 + 79) & 0x8000000000000000) != 0)
              {
                if (!*(v16 + 64))
                {
                  goto LABEL_20;
                }
              }

              else if (!*(v16 + 79))
              {
LABEL_20:
                sub_276B18B90(a1 + 12, &__p);
              }
            }

            v20 = *(v17 + 79);
            if (v20 < 0)
            {
              v21 = *(v17 + 56);
              v20 = *(v17 + 64);
            }

            else
            {
              v21 = (v17 + 56);
            }

            google::protobuf::io::Printer::WriteRaw(a1, v21, v20);
            v22 = *(v17 + 79);
            if (v22 < 0)
            {
              v22 = *(v17 + 64);
            }

            v23 = *(a1 + 4);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_276A07B90(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = __p;
            }

            v31 = v23 - v22;
            v32 = v23;
            v25 = sub_276B8ADF0((a1 + 72), &__dst.__r_.__value_.__l.__data_);
            v26 = v24;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
              if ((v26 & 1) == 0)
              {
LABEL_31:
                *(v25 + 56) = xmmword_276C1A6F0;
              }
            }

            else if ((v24 & 1) == 0)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          google::protobuf::io::Printer::WriteRaw(a1, a1, 1);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = v14 + 1;
LABEL_35:
        v7 = v8;
        goto LABEL_36;
      }

      ++v8;
LABEL_36:
      if (v8 >= v6)
      {
        return google::protobuf::io::Printer::WriteRaw(a1, &__s[v7], v6 - v7);
      }
    }

    google::protobuf::io::Printer::WriteRaw(a1, &__s[v7], ++v8 - v7);
    a1[64] = 1;
    sub_276B2740C(a1 + 12);
    goto LABEL_35;
  }

  v7 = 0;
  return google::protobuf::io::Printer::WriteRaw(a1, &__s[v7], v6 - v7);
}

void sub_276B89D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Printer::WriteRaw(uint64_t this, const char *a2, int a3)
{
  if (a3)
  {
    v3 = this;
    if ((*(this + 65) & 1) == 0)
    {
      if (a3 < 1 || (*(this + 64) & 1) == 0 || *a2 == 10)
      {
LABEL_16:
        sub_276B2740C((v3 + 96));
        return google::protobuf::io::Printer::CopyToBuffer(v3, a2, a3);
      }

      *(this + 64) = 0;
      v6 = *(this + 63);
      if (v6 < 0)
      {
        v7 = *(this + 40);
        v6 = *(this + 48);
      }

      else
      {
        v7 = (this + 40);
      }

      this = google::protobuf::io::Printer::CopyToBuffer(this, v7, v6);
      if ((*(v3 + 65) & 1) == 0)
      {
        for (i = *(v3 + 96); i != *(v3 + 104); i += 3)
        {
          v9 = *(v3 + 63);
          if (v9 < 0)
          {
            v9 = *(v3 + 48);
          }

          v10 = sub_276B8AE9C(v3 + 72, i);
          *(v10 + 56) += v9;
          v11 = *(v3 + 63);
          if (v11 < 0)
          {
            v11 = *(v3 + 48);
          }

          v12 = sub_276B8AE9C(v3 + 72, i);
          *(v12 + 64) += v11;
        }

        goto LABEL_16;
      }
    }
  }

  return this;
}

void google::protobuf::io::Printer::Outdent(google::protobuf::io::Printer *this)
{
  v1 = *(this + 63);
  if (v1 < 0)
  {
    v1 = *(this + 6);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    google::protobuf::internal::LogMessage::LogMessage(v5, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 190);
    v3 = google::protobuf::internal::LogMessage::operator<<(v5, " Outdent() without matching Indent().");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
    return;
  }

  if (!*(this + 63))
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = (this + 40);

  std::string::resize(v2, v1 - 2, 0);
}

void sub_276B89FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::Printer::PrintRaw(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a2 + 2);
  if (v2 >= 0)
  {
    v4 = v2;
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  return google::protobuf::io::Printer::WriteRaw(a1, a2, v4);
}

uint64_t google::protobuf::io::Printer::PrintRaw(uint64_t this, const char *__s)
{
  if ((*(this + 65) & 1) == 0)
  {
    v4 = this;
    v5 = strlen(__s);

    return google::protobuf::io::Printer::WriteRaw(v4, __s, v5);
  }

  return this;
}

uint64_t google::protobuf::io::Printer::CopyToBuffer(uint64_t this, const char *__src, int a3)
{
  if (a3)
  {
    v3 = this;
    if ((*(this + 65) & 1) == 0)
    {
      v4 = a3;
      v6 = *(this + 24);
      if (v6 >= v4)
      {
        v8 = *(this + 16);
LABEL_10:
        this = memcpy(v8, __src, v4);
        *(v3 + 16) += v4;
        *(v3 + 24) -= v4;
        *(v3 + 32) += v4;
      }

      else
      {
        while (1)
        {
          if (v6 >= 1)
          {
            memcpy(*(v3 + 16), __src, v6);
            v7 = *(v3 + 24);
            *(v3 + 32) += v7;
            __src += v7;
            v4 -= v7;
          }

          v9 = 0;
          this = (*(**(v3 + 8) + 16))(*(v3 + 8), &v9, v3 + 24);
          *(v3 + 65) = this ^ 1;
          if ((this & 1) == 0)
          {
            break;
          }

          v8 = v9;
          *(v3 + 16) = v9;
          v6 = *(v3 + 24);
          if (v4 <= v6)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return this;
}

uint64_t google::protobuf::io::Printer::Next(google::protobuf::io::Printer *this)
{
  while (1)
  {
    v3 = 0;
    result = (*(**(this + 1) + 16))(*(this + 1), &v3, this + 24);
    if ((result & 1) == 0)
    {
      break;
    }

    *(this + 2) = v3;
    if (*(this + 6))
    {
      return result;
    }
  }

  *(this + 65) = 1;
  return result;
}

void google::protobuf::io::Printer::FormatInternal(uint64_t a1, void *a2, uint64_t a3, const std::string::value_type *a4)
{
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v6 = *a4;
  if (*a4)
  {
    v9 = (a1 + 40);
    v10 = a4;
    while (1)
    {
      ++v10;
      if (v6 == 10)
      {
        break;
      }

      if (v6 != 36)
      {
        if (*(a1 + 64) == 1)
        {
          v11 = *(a1 + 63);
          if (v11 < 0)
          {
            v12 = *(a1 + 40);
            v11 = *(a1 + 48);
          }

          else
          {
            v12 = v9;
          }

          google::protobuf::io::Printer::CopyToBuffer(a1, v12, v11);
          *(a1 + 64) = 0;
        }

        goto LABEL_12;
      }

      v10 = google::protobuf::io::Printer::WriteVariable(a1, a2, a3, v10, &v23, &v20);
LABEL_13:
      v6 = *v10;
      if (!*v10)
      {
        v13 = v23;
        goto LABEL_16;
      }
    }

    *(a1 + 64) = 1;
    sub_276B2740C((a1 + 96));
LABEL_12:
    sub_276B8AD84(a1, v6);
    goto LABEL_13;
  }

  v13 = 0;
LABEL_16:
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) != v13)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 300);
    v14 = google::protobuf::internal::LogMessage::operator<<(v19, " Unused arguments. ");
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, a4);
    google::protobuf::internal::LogFinisher::operator=(&v18, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  if (v20 != v21)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 303);
    v16 = google::protobuf::internal::LogMessage::operator<<(v19, " Annotation range is not-closed, expect $}$. ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, a4);
    google::protobuf::internal::LogFinisher::operator=(&v18, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  v19[0].__r_.__value_.__r.__words[0] = &v20;
  sub_276B539F4(v19);
}

void sub_276B8A380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a11);
  a11 = &a17;
  sub_276B539F4(&a11);
  _Unwind_Resume(a1);
}

char *google::protobuf::io::Printer::WriteVariable(uint64_t a1, void *a2, uint64_t a3, char *__s, int *a5, uint64_t a6)
{
  v12 = strchr(__s, 36);
  if (!v12)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 314);
    v13 = google::protobuf::internal::LogMessage::operator<<(&v96, " Unclosed variable name.");
    google::protobuf::internal::LogFinisher::operator=(__p, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
  }

  if (v12 == __s)
  {
    if (*(a1 + 64) == 1)
    {
      v20 = *(a1 + 63);
      if (v20 < 0)
      {
        v21 = *(a1 + 40);
        v20 = *(a1 + 48);
      }

      else
      {
        v21 = (a1 + 40);
      }

      google::protobuf::io::Printer::CopyToBuffer(a1, v21, v20);
      *(a1 + 64) = 0;
    }

    sub_276B8AD84(a1, 36);
  }

  else
  {
    v14 = *__s;
    if (v14 == 123)
    {
      v22 = __s[1];
      if (v22 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x400) == 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 324);
        v23 = google::protobuf::internal::LogMessage::operator<<(&v96, "CHECK failed: std::isdigit(start[1]): ");
        google::protobuf::internal::LogFinisher::operator=(__p, &v23->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
      }

      if (v12 - __s != 2)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 325);
        v24 = google::protobuf::internal::LogMessage::operator<<(&v96, "CHECK failed: (end - start) == (2): ");
        google::protobuf::internal::LogFinisher::operator=(__p, &v24->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
      }

      v25 = __s[1];
      v26 = v25 - 49;
      if (v25 < 49 || 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v26)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 328);
        v27 = google::protobuf::internal::LogMessage::operator<<(&v96, "Annotation ${");
        v28 = google::protobuf::internal::LogMessage::operator<<(v27, v25 - 48);
        v29 = google::protobuf::internal::LogMessage::operator<<(v28, "$ is out of bounds.");
        google::protobuf::internal::LogFinisher::operator=(__p, &v29->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
      }

      if (v26 <= *a5)
      {
        if (v26 == *a5)
        {
          *a5 = v25 - 48;
        }
      }

      else
      {
        google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 331);
        v30 = google::protobuf::internal::LogMessage::operator<<(&v96, "Annotation arg must be in correct order as given. Expected");
        v31 = google::protobuf::internal::LogMessage::operator<<(v30, " ${");
        v32 = google::protobuf::internal::LogMessage::operator<<(v31, *a5 + 1);
        v33 = google::protobuf::internal::LogMessage::operator<<(v32, "$ got ${");
        v34 = google::protobuf::internal::LogMessage::operator<<(v33, v25 - 48);
        v35 = google::protobuf::internal::LogMessage::operator<<(v34, "$.");
        google::protobuf::internal::LogFinisher::operator=(__p, &v35->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 64) == 1)
      {
        v51 = *(a1 + 63);
        if (v51 < 0)
        {
          v52 = *(a1 + 40);
          v51 = *(a1 + 48);
        }

        else
        {
          v52 = (a1 + 40);
        }

        google::protobuf::io::Printer::CopyToBuffer(a1, v52, v51);
        *(a1 + 64) = 0;
      }

      v66 = *a2 + 24 * v26;
      __p[0] = *(a1 + 32);
      __p[1] = 0;
      if (*(v66 + 23) < 0)
      {
        sub_276A07B90(&v94, *v66, *(v66 + 8));
      }

      else
      {
        v67 = *v66;
        v95 = *(v66 + 16);
        v94 = v67;
      }

      v68 = *(a6 + 8);
      v69 = *(a6 + 16);
      if (v68 < v69)
      {
        *v68 = *__p;
        v70 = v94;
        *(v68 + 32) = v95;
        *(v68 + 16) = v70;
        v19 = v68 + 40;
LABEL_73:
        *(a6 + 8) = v19;
        return v12 + 1;
      }

      v71 = 0xCCCCCCCCCCCCCCCDLL * ((v68 - *a6) >> 3);
      v72 = v71 + 1;
      if (v71 + 1 > 0x666666666666666)
      {
        sub_2769BA860();
      }

      v73 = 0xCCCCCCCCCCCCCCCDLL * ((v69 - *a6) >> 3);
      if (2 * v73 > v72)
      {
        v72 = 2 * v73;
      }

      if (v73 >= 0x333333333333333)
      {
        v74 = 0x666666666666666;
      }

      else
      {
        v74 = v72;
      }

      v98 = a6;
      if (v74)
      {
        sub_276B8AFEC(a6, v74);
      }

      v75 = 40 * v71;
      *v75 = *__p;
      v76 = v94;
      *(v75 + 32) = v95;
      *(v75 + 16) = v76;
      v95 = 0;
      v94 = 0uLL;
      v77 = 40 * v71 + 40;
      v78 = *(a6 + 8) - *a6;
      v79 = (40 * v71 - v78);
      memcpy(v79, *a6, v78);
      v80 = *a6;
      *a6 = v79;
      *(a6 + 8) = v77;
      v81 = *(a6 + 16);
      *(a6 + 16) = 0;
      v96.__r_.__value_.__r.__words[2] = v80;
      v97 = v81;
      v96.__r_.__value_.__r.__words[0] = v80;
      v96.__r_.__value_.__l.__size_ = v80;
      sub_276B51DE4(&v96);
      v82 = SHIBYTE(v95);
      *(a6 + 8) = v77;
      if (v82 < 0)
      {
        v83 = v94;
LABEL_106:
        operator delete(v83);
      }
    }

    else
    {
      if (v14 == 125)
      {
        if (!a6)
        {
          google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 340);
          v15 = google::protobuf::internal::LogMessage::operator<<(&v96, "CHECK failed: annotations: ");
          google::protobuf::internal::LogFinisher::operator=(__p, &v15->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
        }

        v16 = *(a6 + 8);
        if (*a6 == v16)
        {
          google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 342);
          v17 = google::protobuf::internal::LogMessage::operator<<(&v96, "Unexpected end of annotation found.");
          google::protobuf::internal::LogFinisher::operator=(__p, &v17->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
          v16 = *(a6 + 8);
        }

        *(v16 - 32) = *(a1 + 32);
        v18 = *(a1 + 120);
        if (v18)
        {
          (*(*v18 + 8))(v18, v16 - 40);
          v16 = *(a6 + 8);
        }

        if (*(v16 - 1) < 0)
        {
          operator delete(*(v16 - 24));
        }

        v19 = v16 - 40;
        goto LABEL_73;
      }

      v36 = __s;
      if (v12 > __s)
      {
        v36 = __s;
        while (*v36 == 32)
        {
          if (++v36 == v12)
          {
            v36 = v12;
            break;
          }
        }
      }

      if (v36 == v12)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 353);
        v37 = google::protobuf::internal::LogMessage::operator<<(&v96, " Empty variable.");
        google::protobuf::internal::LogFinisher::operator=(__p, &v37->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
      }

      v38 = 0;
      v39 = v12;
      do
      {
        v40 = v39;
        v41 = v38;
        if (v36 >= v39)
        {
          break;
        }

        --v39;
        ++v38;
      }

      while (*(v40 - 1) == 32);
      sub_276B264D0(__p, v36, v12 - v36 - v41);
      memset(&v92, 0, sizeof(v92));
      v42 = BYTE7(v94);
      v43 = BYTE7(v94);
      v44 = __p[0];
      if ((SBYTE7(v94) & 0x80u) == 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = __p[0];
      }

      v46 = *v45;
      if ((v46 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v46 + 60) & 0x400) != 0)
      {
        if (SBYTE7(v94) < 0)
        {
          v42 = __p[1];
        }

        if (v42 != 1)
        {
          google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 361);
          v53 = google::protobuf::internal::LogMessage::operator<<(&v96, "CHECK failed: (var_name.size()) == (1): ");
          google::protobuf::internal::LogFinisher::operator=(&v91, &v53->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
          v43 = BYTE7(v94);
          v44 = __p[0];
        }

        if (v43 >= 0)
        {
          v44 = __p;
        }

        v54 = *v44;
        v55 = v54 - 48;
        if (v54 <= 48)
        {
          google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 363);
          v56 = google::protobuf::internal::LogMessage::operator<<(&v96, "CHECK failed: (idx) >= (0): ");
          google::protobuf::internal::LogFinisher::operator=(&v91, &v56->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
        }

        v57 = v54 - 49;
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v57)
        {
          google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 365);
          v58 = google::protobuf::internal::LogMessage::operator<<(&v96, "Argument $");
          v59 = google::protobuf::internal::LogMessage::operator<<(v58, v55);
          v60 = google::protobuf::internal::LogMessage::operator<<(v59, "$ is out of bounds.");
          google::protobuf::internal::LogFinisher::operator=(&v91, &v60->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
        }

        if (v57 <= *a5)
        {
          if (v57 == *a5)
          {
            *a5 = v55;
          }
        }

        else
        {
          google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 368);
          v61 = google::protobuf::internal::LogMessage::operator<<(&v96, "Arguments must be used in same order as given. Expected $");
          v62 = google::protobuf::internal::LogMessage::operator<<(v61, *a5 + 1);
          v63 = google::protobuf::internal::LogMessage::operator<<(v62, "$ got $");
          v64 = google::protobuf::internal::LogMessage::operator<<(v63, v55);
          v65 = google::protobuf::internal::LogMessage::operator<<(v64, "$.");
          google::protobuf::internal::LogFinisher::operator=(&v91, &v65->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
        }

        std::string::operator=(&v92, (*a2 + 24 * v57));
      }

      else
      {
        v47 = sub_276B27C88(a3, __p);
        if (a3 + 8 == v47)
        {
          google::protobuf::internal::LogMessage::LogMessage(&v96, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/io/printer.cc", 377);
          v48 = google::protobuf::internal::LogMessage::operator<<(&v96, " Unknown variable: ");
          v49 = google::protobuf::internal::LogMessage::operator<<(v48, __p);
          v50 = google::protobuf::internal::LogMessage::operator<<(v49, ".");
          google::protobuf::internal::LogFinisher::operator=(&v91, &v50->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v96.__r_.__value_.__l.__data_);
        }

        std::string::operator=(&v92, (v47 + 56));
      }

      size = HIBYTE(v92.__r_.__value_.__r.__words[2]);
      v85 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v92.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (*(a1 + 64) == 1)
        {
          v86 = *(a1 + 63);
          if (v86 < 0)
          {
            v87 = *(a1 + 40);
            v86 = *(a1 + 48);
          }

          else
          {
            v87 = (a1 + 40);
          }

          google::protobuf::io::Printer::CopyToBuffer(a1, v87, v86);
          *(a1 + 64) = 0;
        }

        google::protobuf::io::Printer::CopyToBuffer(a1, __s, v36 - __s);
        if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v88 = &v92;
        }

        else
        {
          v88 = v92.__r_.__value_.__r.__words[0];
        }

        if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v89 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v89 = v92.__r_.__value_.__r.__words[1];
        }

        google::protobuf::io::Printer::CopyToBuffer(a1, v88, v89);
        google::protobuf::io::Printer::CopyToBuffer(a1, v40, v41);
        v85 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
      }

      if (v85 < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v94) < 0)
      {
        v83 = __p[0];
        goto LABEL_106;
      }
    }
  }

  return v12 + 1;
}

void sub_276B8ACA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a28);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276B8AD84(uint64_t this, char a2)
{
  if ((*(this + 65) & 1) == 0)
  {
    v3 = this;
    if (*(this + 24) || (this = google::protobuf::io::Printer::Next(this), this))
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = v4 + 1;
      *v4 = a2;
      --*(v3 + 24);
      ++*(v3 + 32);
    }
  }

  return this;
}

uint64_t sub_276B8ADF0(uint64_t a1, const void **a2)
{
  v2 = *sub_276B27B1C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_276B8AE9C(uint64_t a1, const void **a2)
{
  result = *sub_276B27B1C(a1, &v3, a2);
  if (!result)
  {
    sub_276B8AF34();
  }

  return result;
}

void sub_276B8AFD0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_276B27C24(v3, v2);
  _Unwind_Resume(a1);
}

void sub_276B8AFEC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_2769ABE6C();
}

void google::protobuf::internal::InitImplicitWeakMessageDefaultInstance(google::protobuf::internal *this)
{
  qword_280A53108 = 0;
  unk_280A53110 = 0;
  google::protobuf::internal::implicit_weak_message_default_instance = &unk_2885C88E0;
  qword_280A53118 = 0;
  unk_280A53120 = 0;
}

uint64_t *google::protobuf::internal::ImplicitWeakMessage::default_instance(google::protobuf::internal::ImplicitWeakMessage *this)
{
  if (atomic_load_explicit(&google::protobuf::internal::implicit_weak_message_once_init_, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v4 = v5;
    v5[0] = google::protobuf::internal::InitImplicitWeakMessageDefaultInstance;
    std::__call_once(&google::protobuf::internal::implicit_weak_message_once_init_, &v4, sub_276B8B4DC);
  }

  return &google::protobuf::internal::implicit_weak_message_default_instance;
}

uint64_t sub_276B8B118(uint64_t a1)
{
  *a1 = &unk_2885C88E0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_276B8B168(uint64_t a1)
{
  *a1 = &unk_2885C88E0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276B8B23C(uint64_t result)
{
  if (*(result + 39) < 0)
  {
    **(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    *(result + 16) = 0;
    *(result + 39) = 0;
  }

  return result;
}

std::string *sub_276B8B268(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v2 = a2 + 16;
  v3 = v4;
  v5 = *(v2 + 8);
  if (*(v2 + 23) >= 0)
  {
    v6 = *(v2 + 23);
  }

  else
  {
    v2 = v3;
    v6 = v5;
  }

  return std::string::append((a1 + 16), v2, v6);
}

uint64_t sub_276B8B28C(uint64_t a1)
{
  result = *(a1 + 39);
  if (result < 0)
  {
    return *(a1 + 24);
  }

  return result;
}

unsigned __int8 *sub_276B8B2A4(uint64_t a1, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = *(a1 + 39);
  if (v4 < 0)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    v5 = (a1 + 16);
  }

  if (*this - __dst < v4)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, v5, v4, __dst);
  }

  else
  {
    v6 = v4;
    memcpy(__dst, v5, v4);
    return &__dst[v6];
  }
}

uint64_t sub_276B8B324(uint64_t a1, const std::string::value_type *a2, std::string **a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 28);
  if (&a2[-v3] > v4)
  {
    return 0;
  }

  if (v4 < 17)
  {
LABEL_7:
    v5 = v3 + v4;
    std::string::append(*a3, a2, v3 + v4 - a2);
  }

  else
  {
    while (1)
    {
      std::string::append(*a3, a2, *(a1 + 8) - a2 + 16);
      v8 = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!v8)
      {
        return *a1;
      }

      a2 = v8 + 16;
      v4 = *(a1 + 28);
      if (v4 < 17)
      {
        v3 = *(a1 + 8);
        goto LABEL_7;
      }
    }
  }

  return v5;
}

void *sub_276B8B3C0(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276B8B430(this, 0);
  *result = &unk_2885C88E0;
  result[1] = this;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_276B8B430(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BDA784(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_276B8B4B8);
}

void google::protobuf::internal::ReflectionOps::Copy(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  if (this != a2)
  {
    google::protobuf::internal::ReflectionOps::Clear(a2, a2);

    google::protobuf::internal::ReflectionOps::Merge(this, a2, v6);
  }
}

void google::protobuf::internal::ReflectionOps::Clear(google::protobuf::internal::ReflectionOps *this, google::protobuf::Message *a2)
{
  v3 = sub_276B8BFBC(this);
  __p = 0;
  v8 = 0;
  v9 = 0;
  google::protobuf::Reflection::ListFieldsOmitStripped(v3, this, &__p);
  v4 = __p;
  v5 = v8;
  while (v4 != v5)
  {
    google::protobuf::Reflection::ClearField(v3, this, *v4++);
  }

  v6 = google::protobuf::Reflection::MutableUnknownFields(v3, this);
  if (*v6 != *(v6 + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_276B8B5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::ReflectionOps::Merge(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  if (this == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v66, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/reflection_ops.cc", 71);
    v5 = google::protobuf::internal::LogMessage::operator<<(v66, "CHECK failed: (&from) != (to): ");
    google::protobuf::internal::LogFinisher::operator=(&v70, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v66[0].__r_.__value_.__l.__data_);
  }

  v6 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v66, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/reflection_ops.cc", 74);
    v7 = google::protobuf::internal::LogMessage::operator<<(v66, "CHECK failed: (to->GetDescriptor()) == (descriptor): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Tried to merge messages of different types ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "(merge ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, *(v6 + 8));
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " to ");
    v12 = (*(*a2 + 152))(a2);
    v13 = google::protobuf::internal::LogMessage::operator<<(v11, *(v12 + 8));
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, ")");
    google::protobuf::internal::LogFinisher::operator=(&v70, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v66[0].__r_.__value_.__l.__data_);
  }

  v15 = sub_276B8BFBC(this);
  v16 = sub_276B8BFBC(a2);
  MessageFactory = google::protobuf::Reflection::GetMessageFactory(v15);
  v18 = google::protobuf::MessageFactory::generated_factory(MessageFactory);
  v19 = google::protobuf::Reflection::GetMessageFactory(v16);
  v20 = google::protobuf::MessageFactory::generated_factory(v19);
  memset(v66, 0, 24);
  google::protobuf::Reflection::ListFieldsOmitStripped(v15, this, &v66[0].__r_.__value_.__l.__data_);
  size = v66[0].__r_.__value_.__l.__size_;
  v21 = v66[0].__r_.__value_.__r.__words[0];
  if (v66[0].__r_.__value_.__r.__words[0] != v66[0].__r_.__value_.__l.__size_)
  {
    v60 = (MessageFactory == v18) ^ (v19 != v20);
    do
    {
      v22 = *v21;
      if (*(*v21 + 60) == 3)
      {
        if (!v60)
        {
          goto LABEL_25;
        }

        v23 = *(v22 + 48);
        if (v23)
        {
          v67 = *v21;
          v68 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v23, memory_order_acquire) != -1)
          {
            v70 = &v68;
            v71 = &v67;
            v69 = &v70;
            std::__call_once(v23, &v69, sub_2769C149C);
          }
        }

        if (*(v22 + 56) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(v22) && (MapData = google::protobuf::Reflection::GetMapData(v15, this, v22), v25 = google::protobuf::Reflection::MutableMapData(v16, a2, v22), google::protobuf::internal::MapFieldBase::IsMapValid(v25)) && google::protobuf::internal::MapFieldBase::IsMapValid(MapData))
        {
          (*(*v25 + 72))(v25, MapData);
        }

        else
        {
LABEL_25:
          v29 = google::protobuf::Reflection::FieldSize(v15, this, v22);
          if (v29 >= 1)
          {
            for (i = 0; i != v29; ++i)
            {
              v31 = *(v22 + 48);
              if (v31)
              {
                v67 = v22;
                v68 = google::protobuf::FieldDescriptor::TypeOnceInit;
                if (atomic_load_explicit(v31, memory_order_acquire) != -1)
                {
                  v70 = &v68;
                  v71 = &v67;
                  v69 = &v70;
                  std::__call_once(v31, &v69, sub_2769C149C);
                }
              }

              v32 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v22 + 56)];
              if (v32 > 5)
              {
                if (v32 <= 7)
                {
                  if (v32 == 6)
                  {
                    RepeatedFloat = google::protobuf::Reflection::GetRepeatedFloat(v15, this, v22, i);
                    google::protobuf::Reflection::AddFloat(v16, a2, v22, RepeatedFloat);
                  }

                  else
                  {
                    RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(v15, this, v22, i);
                    google::protobuf::Reflection::AddBool(v16, a2, v22, RepeatedBool);
                  }
                }

                else
                {
                  switch(v32)
                  {
                    case 8:
                      RepeatedEnum = google::protobuf::Reflection::GetRepeatedEnum(v15, this, v22, i);
                      google::protobuf::Reflection::AddEnum(v16, a2, v22, RepeatedEnum);
                      break;
                    case 9:
                      google::protobuf::Reflection::GetRepeatedString(v15, this, v22, i, __p);
                      google::protobuf::Reflection::AddString(v16, a2, v22, __p);
                      if (v65 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      break;
                    case 10:
                      RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v15, this, v22, i);
                      v35 = RepeatedMessage;
                      if (v15 == v16)
                      {
                        (*(*RepeatedMessage + 152))(RepeatedMessage);
                        v36 = google::protobuf::Reflection::GetMessageFactory(v44);
                      }

                      else
                      {
                        v36 = 0;
                      }

                      v45 = google::protobuf::Reflection::AddMessage(v16, a2, v22, v36);
                      (*(*v45 + 120))(v45, v35);
                      break;
                  }
                }
              }

              else if (v32 <= 2)
              {
                if (v32 == 1)
                {
                  RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(v15, this, v22, i);
                  google::protobuf::Reflection::AddInt32(v16, a2, v22, RepeatedInt32);
                }

                else if (v32 == 2)
                {
                  RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(v15, this, v22, i);
                  google::protobuf::Reflection::AddInt64(v16, a2, v22, RepeatedInt64);
                }
              }

              else if (v32 == 3)
              {
                RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(v15, this, v22, i);
                google::protobuf::Reflection::AddUInt32(v16, a2, v22, RepeatedUInt32);
              }

              else if (v32 == 4)
              {
                RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(v15, this, v22, i);
                google::protobuf::Reflection::AddUInt64(v16, a2, v22, RepeatedUInt64);
              }

              else
              {
                RepeatedDouble = google::protobuf::Reflection::GetRepeatedDouble(v15, this, v22, i);
                google::protobuf::Reflection::AddDouble(v16, a2, v22, RepeatedDouble);
              }
            }
          }
        }
      }

      else
      {
        v26 = *(v22 + 48);
        if (v26)
        {
          v67 = *v21;
          v68 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v26, memory_order_acquire) != -1)
          {
            v70 = &v68;
            v71 = &v67;
            v69 = &v70;
            std::__call_once(v26, &v69, sub_2769C149C);
          }
        }

        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v22 + 56)];
        if (v27 > 5)
        {
          if (v27 <= 7)
          {
            if (v27 == 6)
            {
              Float = google::protobuf::Reflection::GetFloat(v15, this, v22);
              google::protobuf::Reflection::SetFloat(v16, a2, v22, Float);
            }

            else
            {
              Bool = google::protobuf::Reflection::GetBool(v15, this, v22);
              google::protobuf::Reflection::SetBool(v16, a2, v22, Bool);
            }
          }

          else
          {
            switch(v27)
            {
              case 8:
                Enum = google::protobuf::Reflection::GetEnum(v15, this, v22);
                google::protobuf::Reflection::SetEnum(v16, a2, v22, Enum);
                break;
              case 9:
                google::protobuf::Reflection::GetString(v15, this, v22, v62);
                google::protobuf::Reflection::SetString(v16, a2, v22, v62);
                if (v63 < 0)
                {
                  operator delete(v62[0]);
                }

                break;
              case 10:
                Message = google::protobuf::Reflection::GetMessage(v15, this, v22, 0);
                v47 = Message;
                if (v15 == v16)
                {
                  (*(*Message + 152))(Message);
                  v48 = google::protobuf::Reflection::GetMessageFactory(v56);
                }

                else
                {
                  v48 = 0;
                }

                v57 = google::protobuf::Reflection::MutableMessage(v16, a2, v22, v48);
                (*(*v57 + 120))(v57, v47);
                break;
            }
          }
        }

        else if (v27 <= 2)
        {
          if (v27 == 1)
          {
            Int32 = google::protobuf::Reflection::GetInt32(v15, this, v22);
            google::protobuf::Reflection::SetInt32(v16, a2, v22, Int32);
          }

          else if (v27 == 2)
          {
            Int64 = google::protobuf::Reflection::GetInt64(v15, this, v22);
            google::protobuf::Reflection::SetInt64(v16, a2, v22, Int64);
          }
        }

        else if (v27 == 3)
        {
          UInt32 = google::protobuf::Reflection::GetUInt32(v15, this, v22);
          google::protobuf::Reflection::SetUInt32(v16, a2, v22, UInt32);
        }

        else if (v27 == 4)
        {
          UInt64 = google::protobuf::Reflection::GetUInt64(v15, this, v22);
          google::protobuf::Reflection::SetUInt64(v16, a2, v22, UInt64);
        }

        else
        {
          Double = google::protobuf::Reflection::GetDouble(v15, this, v22);
          google::protobuf::Reflection::SetDouble(v16, a2, v22, Double);
        }
      }

      v21 += 8;
    }

    while (v21 != size);
  }

  v58 = google::protobuf::Reflection::MutableUnknownFields(v16, a2);
  UnknownFields = google::protobuf::Reflection::GetUnknownFields(v15, this);
  google::protobuf::UnknownFieldSet::MergeFrom(v58, UnknownFields);
  if (v66[0].__r_.__value_.__r.__words[0])
  {
    v66[0].__r_.__value_.__l.__size_ = v66[0].__r_.__value_.__r.__words[0];
    operator delete(v66[0].__r_.__value_.__l.__data_);
  }
}

uint64_t sub_276B8BFBC(uint64_t a1)
{
  (*(*a1 + 152))(a1);
  v3 = v2;
  if (!v2)
  {
    v4 = (*(*a1 + 152))(a1);
    if (v4)
    {
      v5 = *v4;
      if (*(*v4 + 23) < 0)
      {
        sub_276A07B90(&__dst, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        v14 = *(v5 + 2);
        __dst = v6;
      }
    }

    else
    {
      sub_276A4D46C(&__dst, "unknown");
    }

    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/reflection_ops.cc", 59);
    v7 = google::protobuf::internal::LogMessage::operator<<(v12, "Message does not support reflection (type ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, &__dst);
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, ").");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__dst);
    }
  }

  return v3;
}

void sub_276B8C0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  if (*(v3 - 25) < 0)
  {
    operator delete(*(v3 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ReflectionOps::IsInitialized(Message *this, const google::protobuf::Message *a2, int a3)
{
  v4 = a2;
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = (*(this->var0 + 19))(this);
  v7 = sub_276B8BFBC(this);
  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_31:
    if (a3)
    {
      if (*(v7 + 10) != -1)
      {
        ExtensionSet = google::protobuf::Reflection::GetExtensionSet(v7, this);
        result = google::protobuf::internal::ExtensionSet::IsInitialized(ExtensionSet);
        if (!result)
        {
          goto LABEL_37;
        }
      }
    }

    goto LABEL_34;
  }

  v9 = *(v6 + 40);
  if (v4)
  {
    v10 = 152 * v8;
    v11 = v9;
    do
    {
      if (*(v11 + 15) == 2)
      {
        result = google::protobuf::Reflection::HasField(v7, this, v11);
        if (!result)
        {
          goto LABEL_37;
        }
      }

      v11 = (v11 + 152);
      v10 -= 152;
    }

    while (v10);
  }

  if (!a3)
  {
LABEL_34:
    result = 1;
    goto LABEL_37;
  }

  v13 = v9 + 152 * v8;
  while (1)
  {
    v14 = *(v9 + 48);
    if (v14)
    {
      v24 = v9;
      v25 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v14, memory_order_acquire) != -1)
      {
        v27 = &v25;
        v28 = &v24;
        v26[0] = &v27;
        std::__call_once(v14, v26, sub_2769C149C);
      }
    }

    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + 56)] != 10)
    {
      goto LABEL_22;
    }

    v15 = google::protobuf::FieldDescriptor::message_type(v9);
    if (*(*(v15 + 32) + 75) == 1)
    {
      break;
    }

    if (*(v9 + 60) == 3)
    {
      v16 = google::protobuf::Reflection::FieldSize(v7, this, v9);
      if (v16 >= 1)
      {
        v17 = 0;
        do
        {
          RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v7, this, v9, v17);
          if (((*(*RepeatedMessage + 48))(RepeatedMessage) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        while (v16 != ++v17);
      }
    }

    else if (google::protobuf::Reflection::HasField(v7, this, v9))
    {
      Message = google::protobuf::Reflection::GetMessage(v7, this, v9, 0);
      result = (*(*Message + 48))(Message);
      if (!result)
      {
        goto LABEL_37;
      }
    }

LABEL_22:
    v9 += 152;
    if (v9 == v13)
    {
      goto LABEL_31;
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[sub_276B0C1A4(*(v15 + 40) + 152)] != 10)
  {
    goto LABEL_22;
  }

  MapData = google::protobuf::Reflection::GetMapData(v7, this, v9);
  if (!google::protobuf::internal::MapFieldBase::IsMapValid(MapData))
  {
    goto LABEL_22;
  }

  sub_276B792E4(&v27, this, v9);
  sub_276B792E4(v26, this, v9);
  (*(*MapData + 56))(MapData, &v27);
  (*(*MapData + 64))(MapData, v26);
  while (1)
  {
    if ((*(*v28 + 48))(v28, &v27, v26))
    {
      sub_276B7951C(v26);
      sub_276B7951C(&v27);
      goto LABEL_22;
    }

    v21 = sub_276B65570(v29);
    if (((*(*v21 + 48))(v21) & 1) == 0)
    {
      break;
    }

    (*(*v28 + 152))(v28, &v27);
  }

  sub_276B7951C(v26);
  sub_276B7951C(&v27);
LABEL_36:
  result = 0;
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276B8C504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_276B7951C(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ReflectionOps::IsInitialized(google::protobuf::internal::ReflectionOps *this, const google::protobuf::Message *a2)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v3 = (*(*this + 152))(this, a2);
  v4 = sub_276B8BFBC(this);
  v5 = *(v3 + 104);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 152 * v5;
    do
    {
      v8 = (*(v3 + 40) + v6);
      if (*(v8 + 15) == 2 && !google::protobuf::Reflection::HasField(v4, this, v8))
      {
        v23 = 0;
        goto LABEL_42;
      }

      v6 += 152;
    }

    while (v7 != v6);
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  google::protobuf::Reflection::ListFieldsOmitStripped(v4, this, &__p);
  v9 = __p;
  v10 = v27;
  if (__p == v27)
  {
LABEL_36:
    v23 = 1;
    goto LABEL_40;
  }

  while (1)
  {
    v11 = *v9;
    v12 = *(*v9 + 48);
    if (v12)
    {
      v29 = *v9;
      v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v32 = &v30;
        v33 = &v29;
        v31[0] = &v32;
        std::__call_once(v12, v31, sub_2769C149C);
      }
    }

    v13 = *(v11 + 56);
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v13] != 10)
    {
      goto LABEL_33;
    }

    v14 = *(v11 + 48);
    if (v14)
    {
      v29 = v11;
      v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v14, memory_order_acquire) != -1)
      {
        v32 = &v30;
        v33 = &v29;
        v31[0] = &v32;
        std::__call_once(v14, v31, sub_2769C149C);
      }

      LODWORD(v13) = *(v11 + 56);
    }

    if (v13 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(v11))
    {
      v15 = *(google::protobuf::FieldDescriptor::message_type(v11) + 40);
      v16 = *(v15 + 200);
      if (v16)
      {
        v29 = v15 + 152;
        v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v16, memory_order_acquire) != -1)
        {
          v32 = &v30;
          v33 = &v29;
          v31[0] = &v32;
          std::__call_once(v16, v31, sub_2769C149C);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v15 + 208)] != 10)
      {
        goto LABEL_33;
      }

      MapData = google::protobuf::Reflection::GetMapData(v4, this, v11);
      if (google::protobuf::internal::MapFieldBase::IsMapValid(MapData))
      {
        sub_276B792E4(&v32, this, v11);
        sub_276B792E4(v31, this, v11);
        (*(*MapData + 56))(MapData, &v32);
        (*(*MapData + 64))(MapData, v31);
        while (1)
        {
          if ((*(*v33 + 48))(v33, &v32, v31))
          {
            sub_276B7951C(v31);
            sub_276B7951C(&v32);
            goto LABEL_33;
          }

          v18 = sub_276B65570(v34);
          if (((*(*v18 + 48))(v18) & 1) == 0)
          {
            break;
          }

          (*(*v33 + 152))(v33, &v32);
        }

        sub_276B7951C(v31);
        sub_276B7951C(&v32);
        goto LABEL_39;
      }
    }

    if (*(v11 + 60) == 3)
    {
      break;
    }

    Message = google::protobuf::Reflection::GetMessage(v4, this, v11, 0);
    if (((*(*Message + 48))(Message) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_33:
    v9 += 8;
    if (v9 == v10)
    {
      goto LABEL_36;
    }
  }

  v19 = google::protobuf::Reflection::FieldSize(v4, this, v11);
  if (v19 < 1)
  {
    goto LABEL_33;
  }

  v20 = 0;
  while (1)
  {
    RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v4, this, v11, v20);
    if (((*(*RepeatedMessage + 48))(RepeatedMessage) & 1) == 0)
    {
      break;
    }

    if (v19 == ++v20)
    {
      goto LABEL_33;
    }
  }

LABEL_39:
  v23 = 0;
LABEL_40:
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_276B8C9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_276B7951C(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::internal::ReflectionOps::DiscardUnknownFields(google::protobuf::internal::ReflectionOps *this, google::protobuf::Message *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = sub_276B8BFBC(this);
  v4 = google::protobuf::Reflection::MutableUnknownFields(v3, this);
  if (*v4 != *(v4 + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  google::protobuf::Reflection::ListFields(v3, this, &v20);
  v5 = v20;
  v6 = v21;
  if (v20 != v21)
  {
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 48);
      if (v8)
      {
        v23 = *v5;
        v24 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v8, memory_order_acquire) != -1)
        {
          v26 = &v24;
          v27 = &v23;
          v25[0] = &v26;
          std::__call_once(v8, v25, sub_2769C149C);
        }
      }

      v9 = *(v7 + 56);
      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v9] == 10)
      {
        v10 = *(v7 + 48);
        if (v10)
        {
          v23 = v7;
          v24 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v10, memory_order_acquire) != -1)
          {
            v26 = &v24;
            v27 = &v23;
            v25[0] = &v26;
            std::__call_once(v10, v25, sub_2769C149C);
          }

          LODWORD(v9) = *(v7 + 56);
        }

        if (v9 != 11 || !google::protobuf::FieldDescriptor::is_map_message_type(v7))
        {
          goto LABEL_22;
        }

        v11 = *(google::protobuf::FieldDescriptor::message_type(v7) + 40);
        v12 = *(v11 + 200);
        if (v12)
        {
          v23 = v11 + 152;
          v24 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v12, memory_order_acquire) != -1)
          {
            v26 = &v24;
            v27 = &v23;
            v25[0] = &v26;
            std::__call_once(v12, v25, sub_2769C149C);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v11 + 208)] == 10)
        {
          v13 = google::protobuf::Reflection::MutableMapData(v3, this, v7);
          if (google::protobuf::internal::MapFieldBase::IsMapValid(v13))
          {
            sub_276B792E4(&v26, this, v7);
            sub_276B792E4(v25, this, v7);
            (*(*v13 + 56))(v13, &v26);
            (*(*v13 + 64))(v13, v25);
            while (((*(*v27 + 48))(v27, &v26, v25) & 1) == 0)
            {
              google::protobuf::internal::MapFieldBase::SetMapDirty(v27);
              v14 = sub_276B65478(v28);
              (*(*v14 + 128))(v14);
              (*(*v27 + 152))(v27, &v26);
            }

            sub_276B7951C(v25);
            sub_276B7951C(&v26);
          }
        }

        else
        {
LABEL_22:
          if (*(v7 + 60) == 3)
          {
            v15 = google::protobuf::Reflection::FieldSize(v3, this, v7);
            if (v15 >= 1)
            {
              v16 = 0;
              do
              {
                v17 = google::protobuf::Reflection::MutableRepeatedMessage(v3, this, v7, v16);
                (*(*v17 + 128))(v17);
                ++v16;
              }

              while (v15 != v16);
            }
          }

          else
          {
            v18 = google::protobuf::Reflection::MutableMessage(v3, this, v7, 0);
            (*(*v18 + 128))(v18);
          }
        }
      }

      v5 += 8;
    }

    while (v5 != v6);
    v5 = v20;
  }

  if (v5)
  {
    v21 = v5;
    operator delete(v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_276B8CE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_276B7951C(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::internal::ReflectionOps::FindInitializationErrors(const google::protobuf::Message *a1, const void **a2, uint64_t a3)
{
  v6 = (*(*a1 + 152))(a1);
  v7 = sub_276B8BFBC(a1);
  v8 = *(v6 + 104);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 152 * v8;
    do
    {
      v11 = (*(v6 + 40) + v9);
      if (*(v11 + 15) == 2 && (google::protobuf::Reflection::HasField(v7, a1, v11) & 1) == 0)
      {
        sub_276B50A78(a2, *(*(v6 + 40) + v9), &__p);
        v13 = *(a3 + 8);
        v12 = *(a3 + 16);
        if (v13 >= v12)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a3) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_2769BA860();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v16;
          }

          v40 = a3;
          if (v18)
          {
            sub_276B275D0(a3, v18);
          }

          v19 = 24 * v15;
          v20 = *&__p.__r_.__value_.__l.__data_;
          *(v19 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v19 = v20;
          memset(&__p, 0, sizeof(__p));
          v21 = 24 * v15 + 24;
          v22 = *(a3 + 8) - *a3;
          v23 = 24 * v15 - v22;
          memcpy((v19 - v22), *a3, v22);
          v24 = *a3;
          *a3 = v23;
          *(a3 + 8) = v21;
          v25 = *(a3 + 16);
          *(a3 + 16) = 0;
          v38 = v24;
          v39 = v25;
          v36 = v24;
          v37 = v24;
          sub_276B27628(&v36);
          v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a3 + 8) = v21;
          if (v26 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v14 = *&__p.__r_.__value_.__l.__data_;
          *(v13 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v13 = v14;
          *(a3 + 8) = v13 + 24;
        }
      }

      v9 += 152;
    }

    while (v10 != v9);
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  google::protobuf::Reflection::ListFieldsOmitStripped(v7, a1, &v36);
  v27 = v36;
  v28 = v37;
  if (v36 != v37)
  {
    do
    {
      v29 = *v27;
      v30 = *(*v27 + 6);
      if (v30)
      {
        v41 = *v27;
        v42 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v30, memory_order_acquire) != -1)
        {
          __p.__r_.__value_.__r.__words[0] = &v42;
          __p.__r_.__value_.__l.__size_ = &v41;
          p_p = &__p;
          std::__call_once(v30, &p_p, sub_2769C149C);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v29[14]] == 10)
      {
        if (v29[15] == 3)
        {
          v31 = google::protobuf::Reflection::FieldSize(v7, a1, v29);
          if (v31 >= 1)
          {
            v32 = 0;
            do
            {
              RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v7, a1, v29, v32);
              sub_276B8D248(a2, v29, v32, &__p);
              google::protobuf::internal::ReflectionOps::FindInitializationErrors(RepeatedMessage, &__p, a3);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v32 = (v32 + 1);
            }

            while (v31 != v32);
          }
        }

        else
        {
          Message = google::protobuf::Reflection::GetMessage(v7, a1, v29, 0);
          sub_276B8D248(a2, v29, 0xFFFFFFFFLL, &__p);
          google::protobuf::internal::ReflectionOps::FindInitializationErrors(Message, &__p, a3);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      ++v27;
    }

    while (v27 != v28);
    v27 = v36;
  }

  if (v27)
  {
    v37 = v27;
    operator delete(v27);
  }
}

void sub_276B8D1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_276B8D248@<X0>(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, google::protobuf *a3@<X2>, std::string *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    sub_276A07B90(a4, *a1, *(a1 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a1;
    a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  if (*(a2 + 67) == 1)
  {
    std::string::append(a4, "(");
    v7 = a2[1];
    v8 = v7[23];
    if (v8 >= 0)
    {
      v9 = a2[1];
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 1);
    }

    std::string::append(a4, v9, v10);
    std::string::append(a4, ")");
  }

  else
  {
    v11 = (*a2)[23];
    if (v11 >= 0)
    {
      v12 = *a2;
    }

    else
    {
      v12 = **a2;
    }

    if (v11 >= 0)
    {
      v13 = *(*a2 + 23);
    }

    else
    {
      v13 = *(*a2 + 1);
    }

    std::string::append(a4, v12, v13);
  }

  if (a3 != -1)
  {
    std::string::append(a4, "[");
    __src = v25;
    v15 = google::protobuf::FastInt32ToBufferLeft(a3, v25, v14);
    v16 = v15 - v25;
    v24 = v15 - v25;
    if ((v15 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2769DD7D8();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    v22 = v15 - v25;
    if (v15 != v25)
    {
      memmove(__p, __src, v16);
    }

    *(__p + v16) = 0;
    if ((v22 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v18 = v22;
    }

    else
    {
      v18 = __p[1];
    }

    std::string::append(a4, v17, v18);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::append(a4, "]");
  }

  result = std::string::append(a4, ".");
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276B8D460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *google::protobuf::internal::GenericSwap(google::protobuf::internal *this, google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = (*(*a2 + 32))(a2, v5, a3);
  v7 = v6;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  (*(*v6 + 64))(v6, this);
  (*(*this + 40))(this);
  (*(*this + 64))(this, a2);
  (*(*a2 + 152))(a2);
  result = google::protobuf::Reflection::Swap(v9, v7, a2);
  if (v8)
  {
    v11 = *(*v8 + 8);

    return v11(v8);
  }

  return result;
}

void sub_276B8D60C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_276BD4DB0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *google::protobuf::RepeatedField<BOOL>::RepeatedField(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

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

{
  *result = 0;
  result[1] = a2;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<BOOL>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  v2 = (a2 + 8);
  if (*(a2 + 4))
  {
    v2 = (*(a2 + 8) - 8);
  }

  if (*v2)
  {
    if (a2 != result)
    {
      if (*a2)
      {
        google::protobuf::RepeatedField<BOOL>::Reserve();
      }
    }
  }

  else
  {
    *result = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

void *google::protobuf::RepeatedField<BOOL>::RepeatedField(void *result, _DWORD *a2)
{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve();
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*a2)
  {
    google::protobuf::RepeatedField<BOOL>::Reserve();
  }

  return result;
}

void google::protobuf::RepeatedField<BOOL>::Reserve(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  if (v4)
  {
    v8 = sub_2769B0A98(v4, v6 + 8);
  }

  else
  {
    v8 = operator new(v6 + 8);
  }

  *v8 = v4;
  v9 = v8 + 1;
  a1[1] = v6;
  *(a1 + 1) = v9;
  v10 = *a1;
  if (v10 >= 1)
  {
    memcpy(v9, v5 + 1, v10);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(int *a1, int a2)
{
  v2 = *(a1 + 1);
  v3 = *a1;
  *a1 = v3 + a2;
  return v2 + v3;
}

uint64_t google::protobuf::RepeatedField<BOOL>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
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

_DWORD *google::protobuf::RepeatedField<BOOL>::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<BOOL>::Reserve();
    }
  }

  return result;
}

_DWORD *google::protobuf::RepeatedField<BOOL>::CopyFrom(_DWORD *result, _DWORD *a2)
{
  if (a2 != result)
  {
    *result = 0;
    if (*a2)
    {
      google::protobuf::RepeatedField<BOOL>::Reserve();
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::GetArena(uint64_t a1)
{
  v1 = a1 + 8;
  if (*(a1 + 4))
  {
    v1 = *v1 - 8;
  }

  return *v1;
}

__n128 google::protobuf::RepeatedField<BOOL>::InternalSwap(unint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v2;
  a2->n128_u64[1] = v3;
  return result;
}

uint64_t *google::protobuf::RepeatedField<BOOL>::operator=(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (*(result + 1))
    {
      v2 = (*v2 - 8);
    }

    v3 = *v2;
    v4 = (a2 + 8);
    if (*(a2 + 4))
    {
      v4 = (*(a2 + 8) - 8);
    }

    if (v3 == *v4)
    {
      v5 = *result;
      v6 = result[1];
      *result = *a2;
      *a2 = v5;
      *(a2 + 8) = v6;
    }

    else
    {
      *result = 0;
      if (*a2)
      {
        google::protobuf::RepeatedField<BOOL>::Reserve();
      }
    }
  }

  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::operator[](uint64_t a1, int a2)
{
  return *(a1 + 8) + a2;
}

{
  return *(a1 + 8) + a2;
}

uint64_t google::protobuf::RepeatedField<BOOL>::at(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1308);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1309);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + a2;
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1315);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/repeated_field.h", 1316);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8) + a2;
}

void sub_276B8DCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B8DDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::RepeatedField<BOOL>::Add(unsigned int *result, _BYTE *a2)
{
  v2 = *result;
  if (v2 == result[1])
  {
    google::protobuf::RepeatedField<BOOL>::Reserve();
  }

  *(*(result + 1) + v2) = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t google::protobuf::RepeatedField<BOOL>::Add(unsigned int *a1)
{
  v1 = *a1;
  if (v1 == a1[1])
  {
    google::protobuf::RepeatedField<BOOL>::Reserve();
  }

  v2 = *(a1 + 1);
  *a1 = v1 + 1;
  return v2 + v1;
}

int *google::protobuf::RepeatedField<BOOL>::ExtractSubrange(int *result, int a2, int a3, _BYTE *a4)
{
  if (a4 && a3 >= 1)
  {
    v4 = a3;
    v5 = (*(result + 1) + a2);
    do
    {
      v6 = *v5++;
      *a4++ = v6;
      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    LODWORD(v7) = a3 + a2;
    v8 = *result;
    if (a3 + a2 < v8)
    {
      v9 = *(result + 1);
      v7 = v7;
      do
      {
        *(v9 - a3 + v7) = *(v9 + v7);
        ++v7;
      }

      while (v7 < v8);
    }

    if (v8 >= 1)
    {
      *result = v8 - a3;
    }
  }

  return result;
}