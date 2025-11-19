void sub_276B9AE54(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2769BA860();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_276B9F3CC(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_276B9AF2C(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 < 1)
  {
    v9 = 0;
LABEL_7:

    sub_276B9F414(a1, a2, v5, 0, v9, a3);
  }

  else
  {
    v6 = MEMORY[0x277D826F0];
    v7 = a2 - a1;
    while (1)
    {
      v8 = operator new(16 * v7, v6);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v11 = v8;
    sub_276B9F414(a1, a2, v5, v8, v7, a3);

    operator delete(v11);
  }
}

_DWORD *sub_276B9B008(void *a1, unint64_t a2, int *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v7 = v5 >> 1;
      if (v5 >> 1 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_276B2BC6C(a1, v8);
    }

    sub_2769BA860();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 2;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 2;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_276C19EB0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_276C1A740)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = a2 >= v10;
  v20 = a2 - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v9 + 4 * v20;
    v23 = *a3;
    v24 = (4 * a2 - (v9 - result) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = (v9 + 8);
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_276C19EB0)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_276C1A740)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

uint64_t sub_276B9B2AC(uint64_t a1)
{
  sub_276A579A4(a1 + 40, *(a1 + 48));
  sub_276B9FE6C(a1 + 8);
  return a1;
}

uint64_t sub_276B9B2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_276B9D6A4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t google::protobuf::util::MessageDifferencer::StreamReporter::StreamReporter(uint64_t this, google::protobuf::io::Printer *a2)
{
  *this = &unk_2885C8A50;
  *(this + 8) = a2;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_2885C8A50;
  *(this + 8) = a2;
  *(this + 16) = 0;
  return this;
}

void google::protobuf::util::MessageDifferencer::StreamReporter::~StreamReporter(google::protobuf::util::MessageDifferencer::StreamReporter *this)
{
  *this = &unk_2885C8A50;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 1);
    if (v1)
    {
      google::protobuf::io::Printer::~Printer(v1);
      MEMORY[0x277C9F670]();
    }
  }
}

{
  google::protobuf::util::MessageDifferencer::StreamReporter::~StreamReporter(this);

  JUMPOUT(0x277C9F670);
}

void google::protobuf::util::MessageDifferencer::StreamReporter::PrintPath(uint64_t a1, uint64_t *a2, char *a3)
{
  v24 = a3;
  v32 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v4)
      {
        sub_276B9B998(*(a1 + 8), ".");
        v3 = *a2;
      }

      v6 = (v3 + v4);
      v7 = *v6;
      v8 = *(v6 + 4);
      v9 = *(v6 + 5);
      if (*v6)
      {
        v10 = *(a1 + 8);
        if (*(v7 + 67) == 1)
        {
          sub_276B9B9FC(v10, "($name$)", "name", *(v7 + 8));
        }

        else
        {
          google::protobuf::io::Printer::PrintRaw(v10, *v7);
        }

        v15 = *(v7 + 48);
        if (v15)
        {
          v27 = v7;
          v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v15, memory_order_acquire) != -1)
          {
            __src = &v28;
            v30 = &v27;
            __dst.__r_.__value_.__r.__words[0] = &__src;
            std::__call_once(v15, &__dst, sub_2769C149C);
          }
        }

        if (*(v7 + 56) == 11 && (google::protobuf::FieldDescriptor::is_map_message_type(v7) & 1) != 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v11 = *(v6 + 2);
        v12 = *(a1 + 8);
        __src = v31;
        v13 = google::protobuf::FastInt32ToBufferLeft(v11, v31, a3);
        v14 = v13 - v31;
        v30 = (v13 - v31);
        if ((v13 - v31) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2769DD7D8();
        }

        if (v14 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v13 - v31;
        if (v13 != v31)
        {
          memmove(&__dst, __src, v14);
        }

        __dst.__r_.__value_.__s.__data_[v14] = 0;
        google::protobuf::io::Printer::PrintRaw(v12, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      if (v24 && (v8 & 0x80000000) == 0)
      {
        v16 = *(a1 + 8);
        __src = v31;
        v17 = google::protobuf::FastInt32ToBufferLeft(v8, v31, a3);
        v18 = v17 - v31;
        v30 = (v17 - v31);
        if ((v17 - v31) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2769DD7D8();
        }

        if (v18 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v17 - v31;
        if (v17 != v31)
        {
          memmove(&__dst, __src, v18);
        }

        __dst.__r_.__value_.__s.__data_[v18] = 0;
        sub_276B9B9FC(v16, "[$name$]", "name", &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      if ((v24 & 1) == 0 && (v9 & 0x80000000) == 0)
      {
        v19 = *(a1 + 8);
        __src = v31;
        v20 = google::protobuf::FastInt32ToBufferLeft(v9, v31, a3);
        v21 = v20 - v31;
        v30 = (v20 - v31);
        if ((v20 - v31) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_2769DD7D8();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v20 - v31;
        if (v20 != v31)
        {
          memmove(&__dst, __src, v21);
        }

        __dst.__r_.__value_.__s.__data_[v21] = 0;
        sub_276B9B9FC(v19, "[$name$]", "name", &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

LABEL_43:
      ++v5;
      v3 = *a2;
      v4 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4) > v5);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_276B9B96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B9B998(char *a1, char *__s)
{
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  google::protobuf::io::Printer::Print(a1, &v2, __s);
  sub_276BA0044(&v2, v3[0]);
}

void sub_276B9B9FC(char *a1, char *a2, char *__s, const std::string *a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_276BA00F8(a1, &v4, a2, __s, a4);
  sub_276BA0044(&v4, v5[0]);
}

uint64_t google::protobuf::util::MessageDifferencer::StreamReporter::PrintValue(uint64_t a1, const google::protobuf::Message *a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 8);
  v5 = *(v4 - 48);
  if (v5)
  {
    memset(&v17[3], 0, 24);
    v7 = -28;
    if (a4)
    {
      v7 = -32;
    }

    v8 = *(v4 + v7);
    v9 = *(v5 + 48);
    if (v9)
    {
      v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v18 = v5;
      if (atomic_load_explicit(v9, memory_order_acquire) != -1)
      {
        v17[0] = &v19;
        v17[1] = &v18;
        v20 = v17;
        std::__call_once(v9, &v20, sub_2769C149C);
      }
    }

    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)] == 10)
    {
      (*(*a2 + 152))(a2);
      if (*(v5 + 60) == 3)
      {
        google::protobuf::Reflection::GetRepeatedMessage(v10, a2, v5, v8);
      }

      else
      {
        google::protobuf::Reflection::GetMessage(v10, a2, v5, 0);
      }

      google::protobuf::Message::ShortDebugString(v17);
    }

    google::protobuf::TextFormat::PrintFieldValueToString();
  }

  v11 = -16;
  if (a4)
  {
    v11 = -24;
  }

  v12 = *(v4 + v11);
  v13 = -4;
  if (a4)
  {
    v13 = -8;
  }

  v14 = *v12 + 16 * *(v4 + v13);
  v15 = *(*a1 + 96);

  return v15();
}

void sub_276B9BCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::MessageDifferencer::StreamReporter::PrintUnknownFieldValue(google::protobuf::util::MessageDifferencer::StreamReporter *this, const google::protobuf::UnknownField *a2, char *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(__src, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 1957);
    v5 = google::protobuf::internal::LogMessage::operator<<(__src, "CHECK failed: unknown_field != NULL: ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " Cannot print NULL unknown_field.");
    google::protobuf::internal::LogFinisher::operator=(__dst, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&__src[0].__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  v7 = *(a2 + 1);
  if (v7 <= 1)
  {
    if (!v7)
    {
      v10 = *(a2 + 1);
      __src[0].__r_.__value_.__r.__words[0] = &__src[0].__r_.__value_.__r.__words[2];
      v11 = google::protobuf::FastUInt64ToBufferLeft(v10, &__src[0].__r_.__value_.__s.__data_[16], a3);
      v12 = v11 - &__src[0].__r_.__value_.__r.__words[2];
      __src[0].__r_.__value_.__l.__size_ = v11 - &__src[0].__r_.__value_.__r.__words[2];
      if ((v11 - &__src[0].__r_.__value_.__r.__words[2]) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2769DD7D8();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      *(&__dst[0].__r_.__value_.__s + 23) = v11 - &__src[0].__r_.__value_.__r.__words[2];
      if (v11 != &__src[0].__r_.__value_.__r.__words[2])
      {
        memmove(__dst, __src[0].__r_.__value_.__l.__data_, v12);
      }

      __dst[0].__r_.__value_.__s.__data_[v12] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      *&__p.__r_.__value_.__l.__data_ = *&__dst[0].__r_.__value_.__l.__data_;
      v8 = __dst[0].__r_.__value_.__r.__words[2];
      goto LABEL_31;
    }

    if (v7 != 1)
    {
      goto LABEL_32;
    }

    __src[0].__r_.__value_.__r.__words[0] = "0x";
    __src[0].__r_.__value_.__l.__size_ = 2;
    google::protobuf::strings::AlphaNum::AlphaNum(__dst, *(a2 + 2), 8);
    google::protobuf::StrCat(__src, __dst, &v14);
LABEL_12:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *&__p.__r_.__value_.__l.__data_ = *&v14.__r_.__value_.__l.__data_;
    v8 = v14.__r_.__value_.__r.__words[2];
LABEL_31:
    __p.__r_.__value_.__r.__words[2] = v8;
    goto LABEL_32;
  }

  switch(v7)
  {
    case 2:
      __src[0].__r_.__value_.__r.__words[0] = "0x";
      __src[0].__r_.__value_.__l.__size_ = 2;
      google::protobuf::strings::AlphaNum::AlphaNum(__dst, *(a2 + 1), 16);
      google::protobuf::StrCat(__src, __dst, &v14);
      goto LABEL_12;
    case 3:
      google::protobuf::CEscape(*(a2 + 1), a3, __dst);
      if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = __dst;
      }

      else
      {
        v9 = __dst[0].__r_.__value_.__r.__words[0];
      }

      google::protobuf::StringPrintf("%s", __src, v9);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __src[0];
      *(&__src[0].__r_.__value_.__s + 23) = 0;
      __src[0].__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
      }

      break;
    case 4:
      MEMORY[0x277C9F450](&__p, "{ ... }");
      break;
  }

LABEL_32:
  google::protobuf::io::Printer::PrintRaw(*(this + 1), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_276B9BFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::MessageDifferencer::StreamReporter::Print(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sub_276B9B998(v2, a2);
}

void google::protobuf::util::MessageDifferencer::StreamReporter::ReportAdded(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_276B9B998(a1[1], "added: ");
  (*(*a1 + 9))(a1, a4, 0, a3);
  sub_276B9B998(a1[1], ": ");
  (*(*a1 + 11))(a1, a3, a4, 0);
  v7 = a1[1];

  sub_276B9B998(v7, "\n");
}

void google::protobuf::util::MessageDifferencer::StreamReporter::ReportDeleted(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_276B9B998(a1[1], "deleted: ");
  (*(*a1 + 9))(a1, a4, 1, a2);
  sub_276B9B998(a1[1], ": ");
  (*(*a1 + 11))(a1, a2, a4, 1);
  v7 = a1[1];

  sub_276B9B998(v7, "\n");
}

void google::protobuf::util::MessageDifferencer::StreamReporter::ReportModified(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 17))
  {
    goto LABEL_9;
  }

  v8 = *(a4 + 8);
  v9 = *(v8 - 48);
  if (!v9)
  {
    if (*(v8 - 36) == 4)
    {
      return;
    }

    goto LABEL_9;
  }

  v10 = *(v9 + 48);
  if (v10)
  {
    v11 = *(v8 - 48);
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v10, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + 56)] != 10)
  {
LABEL_9:
    sub_276B9B998(*(a1 + 8), "modified: ");
    (*(*a1 + 72))(a1, a4, 1, a2);
    if (google::protobuf::util::MessageDifferencer::CheckPathChanged(a4))
    {
      sub_276B9B998(*(a1 + 8), " -> ");
      (*(*a1 + 72))(a1, a4, 0, a3);
    }

    sub_276B9B998(*(a1 + 8), ": ");
    (*(*a1 + 88))(a1, a2, a4, 1);
    sub_276B9B998(*(a1 + 8), " -> ");
    (*(*a1 + 88))(a1, a3, a4, 0);
    sub_276B9B998(*(a1 + 8), "\n");
  }
}

void google::protobuf::util::MessageDifferencer::StreamReporter::ReportMoved(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_276B9B998(a1[1], "moved: ");
  (*(*a1 + 9))(a1, a4, 1, a2);
  sub_276B9B998(a1[1], " -> ");
  (*(*a1 + 9))(a1, a4, 0, a3);
  sub_276B9B998(a1[1], " : ");
  (*(*a1 + 11))(a1, a2, a4, 1);
  v8 = a1[1];

  sub_276B9B998(v8, "\n");
}

void google::protobuf::util::MessageDifferencer::StreamReporter::ReportMatched(char **a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  sub_276B9B998(a1[1], "matched: ");
  (*(*a1 + 9))(a1, a4, 1, a2);
  if (google::protobuf::util::MessageDifferencer::CheckPathChanged(a4))
  {
    sub_276B9B998(a1[1], " -> ");
    (*(*a1 + 9))(a1, a4, 0, a3);
  }

  sub_276B9B998(a1[1], " : ");
  (*(*a1 + 11))(a1, a2, a4, 1);
  v8 = a1[1];

  sub_276B9B998(v8, "\n");
}

void google::protobuf::util::MessageDifferencer::StreamReporter::ReportIgnored(char **a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  sub_276B9B998(a1[1], "ignored: ");
  (*(*a1 + 9))(a1, a4, 1, a2);
  if (google::protobuf::util::MessageDifferencer::CheckPathChanged(a4))
  {
    sub_276B9B998(a1[1], " -> ");
    (*(*a1 + 9))(a1, a4, 0, a3);
  }

  v8 = a1[1];

  sub_276B9B998(v8, "\n");
}

void google::protobuf::util::MessageDifferencer::StreamReporter::ReportUnknownFieldIgnored(char **a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  sub_276B9B998(a1[1], "ignored: ");
  (*(*a1 + 9))(a1, a4, 1, a2);
  if (google::protobuf::util::MessageDifferencer::CheckPathChanged(a4))
  {
    sub_276B9B998(a1[1], " -> ");
    (*(*a1 + 9))(a1, a4, 0, a3);
  }

  v8 = a1[1];

  sub_276B9B998(v8, "\n");
}

uint64_t sub_276B9C85C()
{
  google::protobuf::internal::LogMessage::LogMessage(v4, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/util/message_differencer.h", 311);
  v0 = google::protobuf::internal::LogMessage::operator<<(v4, "CHECK failed: false: ");
  v1 = google::protobuf::internal::LogMessage::operator<<(v0, "IsMatch() is not implemented.");
  google::protobuf::internal::LogFinisher::operator=(&v3, &v1->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v4[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_276B9C8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_276B9C8E4(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a3;
  a1[2] = 0;
  v4 = (a1 + 2);
  *a1 = &unk_2885C8B28;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  __p = 0;
  v7 = 0;
  sub_276B23B7C(&__p, &v9);
  sub_276B96848(v4, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_276B9C968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  sub_276B282A4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_276B9C990(uint64_t a1)
{
  *a1 = &unk_2885C8B28;
  v3 = (a1 + 16);
  sub_276B282A4(&v3);
  return a1;
}

uint64_t sub_276B9C9E8(uint64_t a1)
{
  *a1 = &unk_2885C8B28;
  v3 = (a1 + 16);
  sub_276B282A4(&v3);
  return MEMORY[0x277C9F670](a1, 0xA1C40987D6AD5);
}

uint64_t sub_276B9CA54(uint64_t a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v4 == v5)
  {
    return 1;
  }

  do
  {
    result = sub_276B9CAD0(a1, a2, a3, a4, v4, 0);
    if (!result)
    {
      break;
    }

    v4 += 3;
  }

  while (v4 != v5);
  return result;
}

uint64_t sub_276B9CAD0(uint64_t a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3, uint64_t *a4, void *a5, int a6)
{
  v11 = *(*a5 + 8 * a6);
  __p = 0;
  v29 = 0;
  v30 = 0;
  sub_276B9D974(&__p, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4));
  if (((a5[1] - *a5) >> 3) - 1 != a6)
  {
    (*(*a2 + 152))(a2);
    v14 = v13;
    (*(*a3 + 152))(a3);
    v16 = v15;
    HasField = google::protobuf::Reflection::HasField(v14, a2, v11);
    v18 = google::protobuf::Reflection::HasField(v16, a3, v11);
    if ((HasField | v18))
    {
      if (HasField == v18)
      {
        v24 = xmmword_276C1A750;
        v25 = 0;
        v26 = 0;
        v27 = -1;
        v23 = v11;
        sub_276B987FC(&__p, &v23);
        Message = google::protobuf::Reflection::GetMessage(v14, a2, v11, 0);
        v20 = google::protobuf::Reflection::GetMessage(v16, a3, v11, 0);
        v21 = sub_276B9CAD0(a1, Message, v20, &__p, a5, (a6 + 1));
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = *(a1 + 8);
  if (*(v11 + 15) == 3)
  {
    if ((google::protobuf::util::MessageDifferencer::CompareRepeatedField(v12, a2, a3, v11, &__p) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v21 = 1;
    goto LABEL_11;
  }

  if (google::protobuf::util::MessageDifferencer::CompareFieldValueUsingParentFields(v12, a2, a3, v11, 0xFFFFFFFFLL, 0xFFFFFFFFLL, &__p))
  {
    goto LABEL_9;
  }

LABEL_10:
  v21 = 0;
LABEL_11:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_276B9CCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_276B9CD10(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2885C8B28;
  a1[1] = a2;
  a1[2] = 0;
  v4 = (a1 + 2);
  a1[3] = 0;
  a1[4] = 0;
  sub_276B9CE80((a1 + 2), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v5 = *v4;
  v6 = a1[3];
  if (*v4 == v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 114);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: !key_field_paths_.empty(): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = a1[2];
    v6 = a1[3];
  }

  for (; v5 != v6; v5 += 3)
  {
    if (*v5 == v5[1])
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/util/message_differencer.cc", 116);
      v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: !path.empty(): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_276B9CE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  sub_276B282A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B9CE80(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276B9CF08(result, a4);
  }

  return result;
}

void sub_276B9CEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_276B282A4(&a9);
  _Unwind_Resume(a1);
}

void sub_276B9CF08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_276B9CF54(a1, a2);
  }

  sub_2769BA860();
}

void sub_276B9CF54(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2769ABE6C();
}

void *sub_276B9CFAC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_276B9D060(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_276B9D118(v8);
  return v4;
}

uint64_t sub_276B9D060(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276B9D0DC(result, a4);
  }

  return result;
}

void sub_276B9D0C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B9D0DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_276B2A0B4(a1, a2);
  }

  sub_2769BA860();
}

uint64_t sub_276B9D118(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276B9D150(a1);
  }

  return a1;
}

void sub_276B9D150(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t sub_276B9D1C4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_276B9D244(uint64_t a1, int a2, void *a3)
{
  *(*a3 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  v4 = *(a1 + 4);
  if (v4 < 1)
  {
    return 0;
  }

  for (i = 0; i < v4; ++i)
  {
    if (*(**(a1 + 72) + 4 * i) == -1)
    {
      if (sub_276B9D50C(a1, a2, i))
      {
        goto LABEL_15;
      }

      v4 = *(a1 + 4);
    }
  }

  if (v4 < 1)
  {
    return 0;
  }

  i = 0;
  while (1)
  {
    v8 = *(**(a1 + 72) + 4 * i);
    if (v8 != -1 && sub_276B9D50C(a1, a2, i) && ((*(*a3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0 && (sub_276B9D244(a1, v8, a3) & 1) != 0)
    {
      break;
    }

    if (++i >= *(a1 + 4))
    {
      return 0;
    }
  }

LABEL_15:
  *(**(a1 + 72) + 4 * i) = a2;
  return 1;
}

void *sub_276B9D370(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_276B9D418(result, a2);
  }

  return result;
}

void sub_276B9D418(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_2769BAFA4(a1, v2);
  }

  sub_2769BA860();
}

void sub_276B9D45C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_276B9D50C(uint64_t a1, int a2, int a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v6 = sub_276B9D61C(a1 + 40, v9);
  if (a1 + 48 == v6)
  {
    v7 = sub_276B9D5C0(a1 + 8, a2, a3);
    v10 = v9;
    *(sub_276B9D6F0(a1 + 40, v9) + 36) = v7;
    v10 = v9;
    v6 = sub_276B9D6F0(a1 + 40, v9);
  }

  return *(v6 + 36);
}

uint64_t sub_276B9D5C0(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_276B9D6A4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t *sub_276B9D61C(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 7);
    if (v8 >= v6)
    {
      if (v6 >= v8)
      {
        if (*(v3 + 8) >= v5)
        {
          v7 = v3;
        }

        v3 += *(v3 + 8) < v5;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = *(v7 + 7);
  if (v6 < v9 || v9 >= v6 && v5 < *(v7 + 8))
  {
    return v2;
  }

  return v7;
}

void sub_276B9D6A4()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_276B9D6F0(uint64_t a1, int *a2)
{
  v2 = *sub_276B9D78C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_276B9D78C(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 7);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 8);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_276B9D7F0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_276B9D060(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_276B9D844(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2769BA860();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_276B9CF54(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_276B9D060(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_276B29F34(&v14);
  return v8;
}

void sub_276B9D960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B29F34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B9D974(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276B9D9F0(result, a4);
  }

  return result;
}

void sub_276B9D9D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B9D9F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_276B9DA3C(a1, a2);
  }

  sub_2769BA860();
}

void sub_276B9DA3C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276B9DB18(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2885C8BD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_276B9DB54(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C8C58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_276B9DBA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_276B9DC20(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_276B9DCF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_276B9DD8C(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276B9DFE4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_276B7B560(a1);
}

void *sub_276B9DFF0(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *sub_276B9E0C0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_276B9D0DC(result, a2);
  }

  return result;
}

void sub_276B9E11C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B9E138(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v61 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v61;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_276B9E97C(v9, a2, a3);
      }

      else
      {

        return sub_276B9EA44(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_276B9F008(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v48 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v48)
        {
          v47 = v8[v34];
          v8[v13] = v47;
          v8[v34] = v44;
LABEL_58:
          v44 = v47;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = v8[v26];
          v46 = (*a3)();
          v44 = v8[v13];
          if (v46)
          {
            v47 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v47;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v49 = *v8;
      *v8 = v44;
      v8[v13] = v49;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = sub_276B9EAE0(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v50 = sub_276B9EBF0(v8, a2, a3);
    if ((v51 & 1) == 0)
    {
      goto LABEL_64;
    }

    v52 = sub_276B9ED0C(v8, v50, a3);
    v9 = (v50 + 1);
    result = sub_276B9ED0C(v50 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v50;
      if (v52)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v52)
    {
LABEL_64:
      result = sub_276B9E138(v8, v50, a3, -v11, a5 & 1);
      v9 = (v50 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return sub_276B9E828(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      sub_276B9E828(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v55;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v56 = v9[1].i64[0];
      v57 = v9->i64[1];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v56;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v59 = v9->i64[1];
      v58 = v9[1].i64[0];
      v60 = v9->i64[0];
      v9->i64[1] = v58;
      v9[1].i64[0] = v59;
      result = (*a3)(v58, v60);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v53 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v53 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v62 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v62;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v54 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v54;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v54;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v61 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_276B9E828(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t sub_276B9E97C(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t sub_276B9EA44(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *sub_276B9EAE0(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_276B9EBF0(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_276B9ED0C(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (*a3)(a1[1], *a1);
        v16 = (*a3)(*(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_276B9E828(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_276B9E828(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v12 = a1[1];
        v11 = a1[2];
        v13 = *a1;
        a1[1] = v11;
        a1[2] = v12;
        v14 = (*a3)(v11, v13);
        break;
      default:
        goto LABEL_17;
    }

    if (v14)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = (*a3)(a1[1], *a1);
  v19 = a1 + 2;
  v20 = (*a3)(a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v25))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if ((*a3)(*v26, *v19))
    {
      v29 = *v26;
      v30 = v27;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          break;
        }

        v30 -= 8;
        if (((*a3)(v29, *(v31 + 1)) & 1) == 0)
        {
          v32 = (a1 + v30 + 24);
          goto LABEL_40;
        }
      }

      v32 = a1;
LABEL_40:
      *v32 = v29;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v19 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_276B9F008(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_276B9F154(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_276B9F154(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = sub_276B9F27C(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          sub_276B9F328(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_276B9F154(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *sub_276B9F27C(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_276B9F328(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void sub_276B9F3CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2769ABE6C();
}

void sub_276B9F414(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      v8 = a2[-1].n128_u64[1];
      v9 = a1->n128_u64[1];
      if (*v8 < *v9 || *v8 <= *v9 && v8[1] < v9[1])
      {
        v10 = a1->n128_u32[0];
        a1->n128_u32[0] = a2[-1].n128_u32[0];
        a2[-1].n128_u32[0] = v10;
        a1->n128_u64[1] = v8;
        a2[-1].n128_u64[1] = v9;
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v17 = a1 + 1;
        if (&a1[1] != a2)
        {
          v18 = 0;
          v19 = a1;
          do
          {
            v20 = v19;
            v19 = v17;
            v21 = v20[1].n128_u64[1];
            v22 = *v21;
            v23 = v20->n128_u64[1];
            if (*v21 < *v23 || v22 <= *v23 && v21[1] < v23[1])
            {
              v24 = v19->n128_u32[0];
              v19->n128_u32[0] = v20->n128_u32[0];
              v19->n128_u64[1] = v23;
              if (v20 != a1)
              {
                for (i = v18; i; i -= 16)
                {
                  v26 = a1 + i;
                  v27 = *(&a1->n128_u64[-1] + i);
                  if (v22 >= *v27)
                  {
                    if (v22 > *v27)
                    {
                      v20 = (a1 + i);
                      goto LABEL_25;
                    }

                    if (v21[1] >= v27[1])
                    {
                      goto LABEL_25;
                    }
                  }

                  --v20;
                  *v26 = *(v26 - 4);
                  *(v26 + 1) = v27;
                }
              }

              v20 = a1;
LABEL_25:
              v20->n128_u32[0] = v24;
              v20->n128_u64[1] = v21;
            }

            v17 = v19 + 1;
            v18 += 16;
          }

          while (&v19[1] != a2);
        }
      }
    }

    else
    {
      v13 = a4;
      v14 = a3 >> 1;
      v15 = &a1[a3 >> 1];
      v16 = a3 >> 1;
      if (a3 <= a5)
      {
        v28.n128_f64[0] = sub_276B9F704(a1, v15, v16, a4, a6);
        v29 = &v13[v14];
        sub_276B9F704((v7 + 16 * (a3 >> 1)), a2, a3 - (a3 >> 1), v29, v28);
        v30 = &v13[a3];
        v31 = v29;
        while (v31 != v30)
        {
          v32 = v31->n128_u64[1];
          v33 = v13->n128_u64[1];
          if (*v32 < *v33 || *v32 <= *v33 && v32[1] < v33[1])
          {
            v34 = v31->n128_u32[0];
            ++v31;
            *v7 = v34;
            *(v7 + 8) = v32;
          }

          else
          {
            v35 = v13->n128_u32[0];
            ++v13;
            *v7 = v35;
            *(v7 + 8) = v33;
          }

          v7 += 16;
          if (v13 == v29)
          {
            if (v31 != v30)
            {
              v36 = 0;
              do
              {
                v37 = &v31[v36];
                v38 = v7 + v36 * 16;
                *v38 = v31[v36].n128_u32[0];
                *(v38 + 8) = v31[v36++].n128_u64[1];
              }

              while (&v37[1] != v30);
            }

            return;
          }
        }

        if (v13 != v29)
        {
          v39 = 0;
          do
          {
            v40 = &v13[v39];
            v41 = v7 + v39 * 16;
            *v41 = v13[v39].n128_u32[0];
            *(v41 + 8) = v13[v39++].n128_u64[1];
          }

          while (&v40[1] != v29);
        }
      }

      else
      {
        sub_276B9F414(a1, v15, v16, a4, a5);
        sub_276B9F414(v7 + 16 * (a3 >> 1), a2, a3 - (a3 >> 1), v13, a5);

        sub_276B9F974(v7, v7 + 16 * (a3 >> 1), a2, a3 >> 1, a3 - (a3 >> 1), v13, a5);
      }
    }
  }
}

double sub_276B9F704(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v9 = a2 - 1;
      v10 = a2[-1].n128_u64[1];
      v11 = a1->n128_u64[1];
      if (*v10 < *v11 || *v10 <= *v11 && v10[1] < v11[1])
      {
        *a4 = *v9;
        a5 = *a1;
      }

      else
      {
        *a4 = *a1;
        a5 = *v9;
      }

      a4[1] = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v24 = &a1[a3 >> 1];
      sub_276B9F414(a1, v24, a3 >> 1, a4, a3 >> 1);
      sub_276B9F414(&v8[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v25 = &v8[a3 >> 1];
      while (v25 != a2)
      {
        v26 = v25->n128_u64[1];
        v27 = v8->n128_u64[1];
        if (*v26 < *v27 || *v26 <= *v27 && v26[1] < v27[1])
        {
          v28 = *v25++;
          a5 = v28;
        }

        else
        {
          v29 = *v8++;
          a5 = v29;
        }

        *v5++ = a5;
        if (v8 == v24)
        {
          while (v25 != a2)
          {
            v31 = *v25++;
            a5.n128_u64[0] = v31.n128_u64[0];
            *v5++ = v31;
          }

          return a5.n128_f64[0];
        }
      }

      while (v8 != v24)
      {
        v30 = *v8++;
        a5.n128_u64[0] = v30.n128_u64[0];
        *v5++ = v30;
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      v12 = a1 + 1;
      if (&a1[1] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v12;
          v16 = v14 + 1;
          v17 = v8[1].n128_u64[1];
          v18 = v14->n128_u64[1];
          if (*v17 < *v18 || *v17 <= *v18 && v17[1] < v18[1])
          {
            a5 = *v14;
            *v16 = *v14;
            v19 = a4;
            if (v14 != a4)
            {
              v20 = v13;
              while (1)
              {
                v21 = a4 + v20;
                v22 = v8[1].n128_u64[1];
                v23 = *(&a4->n128_u64[-1] + v20);
                if (*v22 >= *v23)
                {
                  if (*v22 > *v23)
                  {
                    v19 = (a4 + v20);
                    goto LABEL_24;
                  }

                  if (v22[1] >= v23[1])
                  {
                    break;
                  }
                }

                --v14;
                *v21 = *(v21 - 4);
                *(v21 + 1) = v23;
                v20 -= 16;
                if (!v20)
                {
                  v19 = a4;
                  goto LABEL_24;
                }
              }

              v19 = v14;
            }

LABEL_24:
            v19->n128_u32[0] = v15->n128_u32[0];
            v19->n128_u64[1] = v8[1].n128_u64[1];
          }

          else
          {
            a5 = *v15;
            *v16 = *v15;
          }

          v12 = v15 + 1;
          v13 += 16;
          v14 = v16;
          v8 = v15;
        }

        while (&v15[1] != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

uint64_t sub_276B9F974(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    v9 = result;
    while (v7 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = *(a2 + 8);
      v12 = *v11;
      v13 = -a4;
      while (1)
      {
        v14 = (v9 + v10);
        v15 = *(v9 + v10 + 8);
        if (v12 < *v15 || v12 <= *v15 && v11[1] < v15[1])
        {
          break;
        }

        v10 += 16;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v17 = -v13;
      if (-v13 >= v7)
      {
        if (v13 == -1)
        {
          v63 = v9 + v10;
          v64 = *(v9 + v10);
          *v63 = *a2;
          *a2 = v64;
          *(v63 + 8) = v11;
          *(a2 + 8) = v15;
          return result;
        }

        v27 = v17 / 2;
        v28 = v9 + 16 * (v17 / 2);
        v19 = a2;
        if (a2 != a3)
        {
          v29 = (a3 - a2) >> 4;
          v30 = *(v28 + v10 + 8);
          v31 = *v30;
          v19 = a2;
          do
          {
            v32 = v29 >> 1;
            v33 = &v19[4 * (v29 >> 1)];
            v34 = *(v33 + 1);
            if (*v34 < v31 || *v34 <= v31 && v34[1] < v30[1])
            {
              v19 = v33 + 4;
              v32 = v29 + ~v32;
            }

            v29 = v32;
          }

          while (v32);
        }

        v18 = (v19 - a2) >> 4;
        v20 = (v28 + v10);
      }

      else
      {
        v18 = v7 / 2;
        v19 = (a2 + 16 * (v7 / 2));
        v20 = a2;
        if (a2 - v9 != v10)
        {
          v21 = (a2 - v9 - v10) >> 4;
          v22 = *(v19 + 1);
          v23 = *v22;
          v20 = (v9 + v10);
          do
          {
            v24 = v21 >> 1;
            v25 = &v20[4 * (v21 >> 1)];
            v26 = *(v25 + 1);
            if (v23 >= *v26 && (v23 > *v26 || v22[1] >= v26[1]))
            {
              v20 = v25 + 4;
              v24 = v21 + ~v24;
            }

            v21 = v24;
          }

          while (v24);
        }

        v27 = (v20 - v9 - v10) >> 4;
      }

      v35 = v19;
      if (v20 != a2)
      {
        v35 = v20;
        if (a2 != v19)
        {
          v68 = a6;
          v69 = a3;
          v36 = a7;
          v37 = v18;
          v38 = v27;
          v39 = sub_276B9FDA8(v20, a2, v19);
          v27 = v38;
          v18 = v37;
          a7 = v36;
          a6 = v68;
          a3 = v69;
          v35 = v39;
        }
      }

      a4 = -v13 - v27;
      v40 = v7 - v18;
      if (v27 + v18 >= v7 - (v27 + v18) - v13)
      {
        v45 = v27;
        v46 = -v13 - v27;
        v47 = v18;
        v43 = a6;
        v44 = a7;
        result = sub_276B9F974(v35, v19, a3, v46, v40);
        v19 = v20;
        v40 = v47;
        a4 = v45;
        a3 = v35;
      }

      else
      {
        v41 = v9 + v10;
        v42 = a3;
        v43 = a6;
        v44 = a7;
        result = sub_276B9F974(v41, v20, v35, v27, v18);
        a3 = v42;
        v14 = v35;
      }

      v7 = v40;
      v9 = v14;
      a2 = v19;
      a6 = v43;
      a7 = v44;
      if (!v40)
      {
        return result;
      }
    }

    if (a4 <= v7)
    {
      if (a2 != v9)
      {
        v55 = a6;
        v56 = v9;
        do
        {
          v57 = *v56++;
          *v55 = v57;
          v55 += 4;
        }

        while (v56 != a2);
        v58 = v55 - 4;
        while (a2 != a3)
        {
          v59 = *(a2 + 8);
          v60 = *(a6 + 1);
          if (*v59 < *v60 || *v59 <= *v60 && v59[1] < v60[1])
          {
            v61 = *a2;
            a2 += 16;
            *v9 = v61;
            *(v9 + 8) = v59;
          }

          else
          {
            v62 = *a6;
            a6 += 4;
            *v9 = v62;
            *(v9 + 8) = v60;
          }

          v9 += 16;
          if (v55 == a6)
          {
            return result;
          }
        }

        v65 = 0;
        do
        {
          v66 = v9 + v65 * 4;
          v67 = &a6[v65];
          *v66 = a6[v65];
          *(v66 + 8) = *&a6[v65 + 2];
          v65 += 4;
        }

        while (v58 != v67);
      }
    }

    else if (a2 != a3)
    {
      v48 = 0;
      do
      {
        *&a6[v48] = *(a2 + v48 * 4);
        v48 += 4;
      }

      while ((a2 + v48 * 4) != a3);
      v49 = a3 - 2;
      v50 = &a6[v48];
      while (a2 != v9)
      {
        v51 = (a2 - 16);
        v52 = *(v50 - 1);
        v53 = *(a2 - 8);
        if (*v52 >= *v53)
        {
          if (*v52 > *v53 || (result = a2 - 16, v52[1] >= v53[1]))
          {
            v51 = v50 - 4;
            v53 = *(v50 - 1);
            result = a2;
            v50 -= 4;
          }
        }

        else
        {
          result = a2 - 16;
        }

        *(v49 - 2) = *v51;
        *v49 = v53;
        v49 -= 4;
        a2 = result;
        if (v50 == a6)
        {
          return result;
        }
      }

      while (v50 != a6)
      {
        v54 = *(v50 - 4);
        v50 -= 4;
        *(v49 - 2) = v54;
        *v49 = *(v50 + 1);
        v49 -= 4;
      }
    }
  }

  return result;
}

int *sub_276B9FDA8(int *a1, int *a2, int *a3)
{
  v3 = *a1;
  *a1 = *a2;
  *a2 = v3;
  v4 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = a1 + 4;
  for (i = a2 + 4; i != a3; i += 4)
  {
    if (result == a2)
    {
      a2 = i;
    }

    v7 = *result;
    *result = *i;
    *i = v7;
    v8 = *(result + 1);
    *(result + 1) = *(i + 1);
    *(i + 1) = v8;
    result += 4;
  }

  if (result != a2)
  {
    v9 = result;
    v10 = a2;
    do
    {
      while (1)
      {
        v11 = *v9;
        *v9 = *v10;
        *v10 = v11;
        v12 = *(v9 + 1);
        *(v9 + 1) = *(v10 + 1);
        *(v10 + 1) = v12;
        v9 += 4;
        v10 += 4;
        if (v10 == a3)
        {
          break;
        }

        if (v9 == a2)
        {
          a2 = v10;
        }
      }

      v10 = a2;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t sub_276B9FE6C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_276B9FF70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2885C8C88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_276B9FFF8(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C8CF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_276BA0044(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276BA0044(a1, *a2);
    sub_276BA0044(a1, a2[1]);
    sub_276BA00A0((a2 + 4));

    operator delete(a2);
  }
}

void sub_276BA00A0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_276BA00F8(char *a1, uint64_t a2, char *a3, char *__s, const std::string *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v15 = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
  }

  *(&__dst + v11) = 0;
  p_dst = &__dst;
  v12 = sub_276BA0234(a2, &__dst);
  std::string::operator=((v12 + 56), a5);
  if (v15 < 0)
  {
    operator delete(__dst);
  }

  return google::protobuf::io::Printer::Print(a1, a2, a3);
}

void sub_276BA0218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BA0234(uint64_t a1, const void **a2)
{
  v2 = *sub_276A9C500(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_276BA0300(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_276BA00A0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
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

void sub_276BA073C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::SplitStringUsing(unsigned __int8 *__src, uint64_t a2, char *__s, unint64_t a4)
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
          sub_276B264D0(__p, v23, v26 - v23);
          v30 = a4;
          sub_276BA527C(&v30, __p);
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
        v30 = google::protobuf::StringPiece::substr(v34, v12);
        v31 = v18;
        sub_276B264AC(&v30, __p);
        v29 = a4;
        sub_276BA527C(&v29, __p);
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

      v30 = google::protobuf::StringPiece::substr(v34, v12);
      v31 = v22;
      sub_276B264AC(&v30, __p);
      v29 = a4;
      sub_276BA527C(&v29, __p);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_276BA097C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::SplitStringAllowEmpty(uint64_t a1, uint64_t a2, char *__s, uint64_t a4)
{
  v16[0] = a1;
  v16[1] = a2;
  sub_276B262D8(__p, __s);
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
      v12 = google::protobuf::StringPiece::substr(v16, v8);
      v13 = v9;
      sub_276B264AC(&v12, __p);
      v11 = a4;
      sub_276BA527C(&v11, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = v7 + 1;
      sub_276B262D8(__p, __s);
      v7 = google::protobuf::StringPiece::find_first_of(v16, __p[0], __p[1], v7 + 1);
    }

    while (v7 != -1);
  }

  v12 = google::protobuf::StringPiece::substr(v16, v8);
  v13 = v10;
  sub_276B264AC(&v12, __p);
  v11 = a4;
  sub_276BA527C(&v11, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BA0AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/strutil.cc", 264);
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

void sub_276BA0C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::UnescapeCEscapeSequences(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    v2 = a2;
LABEL_9:
    v4 = a1;
    goto LABEL_10;
  }

  v3 = a2;
  do
  {
    if (!*a1 || *a1 == 92)
    {
      v2 = v3;
      goto LABEL_9;
    }

    v4 = a1 + 1;
    v2 = v3 + 1;
    v17 = v3++ == a1++;
  }

  while (v17);
  while (1)
  {
LABEL_10:
    v5 = *v4;
    if (v5 != 92)
    {
      if (!*v4)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v6 = v4 + 1;
    v5 = v4[1];
    if (v5 <= 0x3E)
    {
      break;
    }

    if (v4[1] <= 0x65u)
    {
      if (v4[1] > 0x5Bu)
      {
        if (v5 != 92)
        {
          if (v5 == 97)
          {
            LOBYTE(v5) = 7;
          }

          else
          {
            if (v5 != 98)
            {
              goto LABEL_61;
            }

            LOBYTE(v5) = 8;
          }
        }

LABEL_59:
        v4 = v6;
LABEL_60:
        *v2++ = v5;
        v6 = v4;
        goto LABEL_61;
      }

      if (v5 == 63)
      {
        goto LABEL_59;
      }

      if (v5 != 88)
      {
        goto LABEL_61;
      }

LABEL_42:
      if ((v4[2] - 48) < 0xAu || (v13 = v4[2] - 65, v13 <= 0x25) && ((1 << v13) & 0x3F0000003FLL) != 0)
      {
        LOBYTE(v5) = 0;
        v14 = v4 + 1;
        while (1)
        {
          v16 = *++v14;
          v15 = v16;
          if ((v16 - 48) >= 0xAu)
          {
            v17 = v15 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0;
            if (v17)
            {
              break;
            }
          }

          v18 = v15;
          v19 = v15 + 9;
          if (v18 <= 0x39)
          {
            v19 = v18;
          }

          v6 = v14;
          LOBYTE(v5) = v19 & 0xF | (16 * v5);
        }

        goto LABEL_59;
      }

      goto LABEL_61;
    }

    if (v4[1] <= 0x73u)
    {
      switch(v5)
      {
        case 'f':
          LOBYTE(v5) = 12;
          break;
        case 'n':
          LOBYTE(v5) = 10;
          break;
        case 'r':
          LOBYTE(v5) = 13;
          break;
        default:
          goto LABEL_61;
      }

      goto LABEL_59;
    }

    switch(v5)
    {
      case 't':
        LOBYTE(v5) = 9;
        goto LABEL_59;
      case 'v':
        LOBYTE(v5) = 11;
        goto LABEL_59;
      case 'x':
        goto LABEL_42;
    }

LABEL_61:
    v4 = v6 + 1;
  }

  if (v4[1] > 0x2Fu)
  {
    v5 -= 48;
    if (v5 >= 8)
    {
      goto LABEL_61;
    }

    v8 = v4[2];
    v7 = v4 + 2;
    v9 = v8 + 8 * v5 - 48;
    if ((v8 & 0xF8) == 0x30)
    {
      v6 = v7;
      LOBYTE(v5) = v9;
    }

    v4 = v6 + 1;
    v10 = v6[1];
    v11 = v10 & 0xF8;
    v12 = v10 + 8 * v5 - 48;
    if (v11 == 48)
    {
      LOBYTE(v5) = v12;
    }

    else
    {
      v4 = v6;
    }

    goto LABEL_60;
  }

  if (v5 == 34 || v5 == 39)
  {
    goto LABEL_59;
  }

  if (v4[1])
  {
    goto LABEL_61;
  }

LABEL_62:
  *v2 = 0;
  return (v2 - a2);
}

void google::protobuf::UnescapeCEscapeString(uint64_t a1)
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

void sub_276BA0F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  MEMORY[0x277C9F650](v4, v3);
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

void google::protobuf::CEscapeAndAppend(std::string::value_type *__s, int64_t __n, std::string *this)
{
  v3 = this;
  v4 = __n;
  v5 = __s;
  if (__n < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = __s;
    v8 = __n;
    do
    {
      v9 = *v7++;
      v6 += byte_276C1B048[v9];
      --v8;
    }

    while (v8);
  }

  if (v6 == __n)
  {

    std::string::append(this, __s, __n);
    return;
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  std::string::resize(this, size + v6, 0);
  if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = v3->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 1)
  {
    v11 = v3 + size;
    do
    {
      v13 = *v5++;
      v12 = v13;
      if (v13 > 33)
      {
        switch(v12)
        {
          case '""':
            *v11 = 8796;
            v11 += 2;
            break;
          case '\'':
            *v11 = 10076;
            v11 += 2;
            break;
          case '\\':
            *v11 = 23644;
            v11 += 2;
            break;
          default:
LABEL_27:
            if (v12 - 32 >= 0x5F)
            {
              *v11 = 92;
              v11[1] = (v12 >> 6) | 0x30;
              v11[2] = (v12 >> 3) & 7 | 0x30;
              v11[3] = v12 & 7 | 0x30;
              v11 += 4;
            }

            else
            {
              *v11++ = v12;
            }

            break;
        }
      }

      else
      {
        switch(v12)
        {
          case 9u:
            *v11 = 29788;
            v11 += 2;
            break;
          case 0xAu:
            *v11 = 28252;
            v11 += 2;
            break;
          case 0xDu:
            *v11 = 29276;
            v11 += 2;
            break;
          default:
            goto LABEL_27;
        }
      }

      --v4;
    }

    while (v4);
  }
}

void google::protobuf::CEscape(uint64_t *a1@<X0>, const char *a2@<X2>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  sub_276B280C4(v4, a1, a2);
  google::protobuf::CEscapeAndAppend(v4[0], v4[1], a3);
}

void sub_276BA1410(_Unwind_Exception *exception_object)
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

void google::protobuf::strings::CHexEscape(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
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
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/strutil.cc", 887);
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
    *--v8 = a0123456789abcd[v4 & 0xF];
    v4 >>= 4;
  }

  while (v4 > 0);
  return v8;
}

void sub_276BA19B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
      *(a2 - 1 + v3) = a0123456789abcd[this & 0xF];
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
    *(a2 + v3) = a0123456789abcd[this & 0xF];
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
    *(a2 + v4) = a0123456789abcd[v3 & 0xF];
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
    *a2 = word_276C1ABFE[v3];
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
      *a2 = word_276C1ABFE[v6];
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
      *a2 = word_276C1ABFE[v5];
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
      *a2 = word_276C1ABFE[v4];
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
  *a2 = word_276C1ABFE[this];
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
    *v6 = word_276C1ABFE[v7 / 0x989680uLL];
    v7 %= 0x989680u;
    v6[1] = word_276C1ABFE[v7 / 0x186A0uLL];
    v7 %= 0x186A0u;
    v6[2] = word_276C1ABFE[v7 / 0x3E8uLL];
    v7 %= 0x3E8u;
    v6[3] = word_276C1ABFE[v7 / 0xAuLL];
    v6[4] = (v7 % 0xA + 48);
    return v6 + 9;
  }

  else
  {

    return google::protobuf::FastUInt32ToBufferLeft(this, a2, a3);
  }
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
  result = sub_276A4D46C(a3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastUInt32ToBufferLeft(this, __src, a2);
  result = sub_276BA51CC(a3, __src, v4, v4 - __src);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastInt64ToBuffer(this, v7, a2);
  result = sub_276A4D46C(a3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastUInt64ToBufferLeft(this, __src, a2);
  result = sub_276BA51CC(a3, __src, v4, v4 - __src);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastInt64ToBuffer(this, v7, a2);
  result = sub_276A4D46C(a3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v4 = google::protobuf::FastUInt64ToBufferLeft(this, __src, a2);
  result = sub_276BA51CC(a3, __src, v4, v4 - __src);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *google::protobuf::SimpleDtoa@<X0>(double a1@<D0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  google::protobuf::DoubleToBuffer(&__s, a1, a2);
  result = sub_276A4D46C(a3, &__s);
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

  snprintf(this, 0x20uLL, "%.*g", 15, a2);
  if (google::protobuf::internal::NoLocaleStrtod(this, 0, v7) != a2)
  {
    snprintf(this, 0x20uLL, "%.*g", 17, a2);
  }

  google::protobuf::DelocalizeRadix(this, v8);
  return this;
}

_BYTE *google::protobuf::SimpleFtoa@<X0>(float a1@<S0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  google::protobuf::FloatToBuffer(v7, a1, a2);
  result = sub_276A4D46C(a3, v7);
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

  snprintf(this, 0x18uLL, "%.*g", 6, a2);
  *v9 = 0.0;
  if (!google::protobuf::safe_strtof(this, v9, v7) || *v9 != a2)
  {
    snprintf(this, 0x18uLL, "%.*g", 9, a2);
  }

  google::protobuf::DelocalizeRadix(this, v8);
  return this;
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
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/strutil.cc", 2425);
      v8 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (temp[0]) == ('1'): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    if (v23[v7 - 2] != 53)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/strutil.cc", 2426);
      v9 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (temp[size - 1]) == ('5'): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    if (v7 >= 7)
    {
      google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/strutil.cc", 2427);
      v10 = google::protobuf::internal::LogMessage::operator<<(v21, "CHECK failed: (size) <= (6): ");
      google::protobuf::internal::LogFinisher::operator=(&v20, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    }

    memset(&v18, 0, sizeof(v18));
    v11 = strlen(this);
    std::string::reserve(&v18, v11 + v7 - 3);
    sub_276BA40FC(&v18, this, v6);
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
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/strutil.cc", 1305);
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
      v10 = aYes_0[v8];
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

  sub_276B262D8(v34, "f");
  if (sub_276BA29C0(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_) & 1) != 0 || (sub_276B262D8(v34, "no"), (sub_276BA29C0(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_)) || (sub_276B262D8(v34, "n"), (sub_276BA29C0(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_)) || (sub_276B262D8(v34, "0"), v31 = sub_276BA29C0(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_), result = 0, v31))
  {
LABEL_56:
    v29 = 0;
    goto LABEL_57;
  }

  return result;
}

void sub_276BA29A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276BA29C0(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
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
    sub_276A07B90(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_276BA2BB4(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_276BA2B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BA2BB4(std::string *__str, int *a2)
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

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return sub_276BA5458(__str, a2);
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_276A07B90(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_276BA53C4(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

uint64_t google::protobuf::safe_strtou32(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_276A07B90(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_276BA2DB8(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_276BA2D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BA2DB8(std::string *__str, unsigned int *a2)
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

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return 0;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_276A07B90(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_276BA54F8(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

uint64_t google::protobuf::safe_strto64(uint64_t a1, int64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_276A07B90(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_276BA2FA8(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_276BA2F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BA2FA8(std::string *__str, int64_t *a2)
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

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return sub_276BA5614(__str, a2);
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_276A07B90(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_276BA5588(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

uint64_t google::protobuf::safe_strtou64(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_276A07B90(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_276BA31AC(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_276BA3190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BA31AC(std::string *__str, unint64_t *a2)
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

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return 0;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_276A07B90(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_276BA56B0(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void *google::protobuf::strings::AlphaNum::AlphaNum(void *result, unint64_t a2, char a3)
{
  v3 = 0;
  v4 = (1 << (4 * a3 - 4)) | a2;
  do
  {
    *(result + v3 + 47) = a0123456789abcd[a2 & 0xF];
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

{
  v3 = 0;
  v4 = (1 << (4 * a3 - 4)) | a2;
  do
  {
    *(result + v3 + 47) = a0123456789abcd[a2 & 0xF];
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
  v5 = a3;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a3, *(a2 + 8) + *(a1 + 8), 0);
  if ((v5->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v5->__r_.__value_.__r.__words[0];
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    memcpy(v5, *a1, v6);
    v5 = (v5 + *(a1 + 8));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *a2;

    memcpy(v5, v8, v7);
  }
}

void sub_276BA3470(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::StrCat(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = a4;
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a4, *(a2 + 8) + *(a1 + 8) + *(a3 + 8), 0);
  if ((v7->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v7->__r_.__value_.__r.__words[0];
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    memcpy(v7, *a1, v8);
    v7 = (v7 + *(a1 + 8));
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    memcpy(v7, *a2, v9);
    v7 = (v7 + *(a2 + 8));
  }

  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = *a3;

    memcpy(v7, v11, v10);
  }
}

void sub_276BA3560(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *google::protobuf::StrCat@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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

  return sub_276BA3638(v10, a1, a2, a3, a4);
}

void sub_276BA361C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_276BA3638(char *__dst, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

char *google::protobuf::StrCat@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

  result = sub_276BA3638(v12, a1, a2, a3, a4);
  v14 = *(a5 + 8);
  if (v14)
  {
    v15 = *a5;

    return memcpy(result, v15, v14);
  }

  return result;
}

void sub_276BA37BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *google::protobuf::StrCat@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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

  result = sub_276BA3638(v14, a1, a2, a3, a4);
  v16 = result;
  v17 = *(a5 + 8);
  if (v17)
  {
    result = memcpy(result, *a5, v17);
    v16 += *(a5 + 8);
  }

  v18 = *(a6 + 8);
  if (v18)
  {
    v19 = *a6;

    return memcpy(v16, v19, v18);
  }

  return result;
}

void sub_276BA38E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *google::protobuf::StrCat@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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

  result = sub_276BA3638(v16, a1, a2, a3, a4);
  v18 = result;
  v19 = *(a5 + 8);
  if (v19)
  {
    result = memcpy(result, *a5, v19);
    v18 += *(a5 + 8);
  }

  v20 = *(a6 + 8);
  if (v20)
  {
    result = memcpy(v18, *a6, v20);
    v18 += *(a6 + 8);
  }

  v21 = *(a7 + 8);
  if (v21)
  {
    v22 = *a7;

    return memcpy(v18, v22, v21);
  }

  return result;
}

void sub_276BA3A34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *google::protobuf::StrCat@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
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

  v19 = sub_276BA3638(v18, a1, a2, a3, a4);

  return sub_276BA3638(v19, a5, a6, a7, a8);
}

void sub_276BA3B44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *google::protobuf::StrCat@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  std::string::resize(a9, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8) + *(a7 + 8) + *(a8 + 8) + *(a10 + 8), 0);
  if (*(a9 + 23) >= 0)
  {
    v19 = a9;
  }

  else
  {
    v19 = *a9;
  }

  v20 = sub_276BA3638(v19, a1, a2, a3, a4);
  result = sub_276BA3638(v20, a5, a6, a7, a8);
  v22 = *(a10 + 8);
  if (v22)
  {
    v23 = *a10;

    return memcpy(result, v23, v22);
  }

  return result;
}

void sub_276BA3C8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::StrAppend(std::string *this, uint64_t a2, uint64_t a3)
{
  v5 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  std::string::resize(this, *(a2 + 8) + size + *(a3 + 8), 0);
  if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v5->__r_.__value_.__r.__words[0];
  }

  v7 = v5 + size;
  v8 = *(a2 + 8);
  if (v8)
  {
    memcpy(v7, *a2, v8);
    v7 += *(a2 + 8);
  }

  v9 = *(a3 + 8);
  if (v9)
  {
    v10 = *a3;

    memcpy(v7, v10, v9);
  }
}

void google::protobuf::StrAppend(std::string *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  std::string::resize(this, *(a2 + 8) + size + *(a3 + 8) + *(a4 + 8), 0);
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = v7->__r_.__value_.__r.__words[0];
  }

  v9 = v7 + size;
  v10 = *(a2 + 8);
  if (v10)
  {
    memcpy(v9, *a2, v10);
    v9 += *(a2 + 8);
  }

  v11 = *(a3 + 8);
  if (v11)
  {
    memcpy(v9, *a3, v11);
    v9 += *(a3 + 8);
  }

  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = *a4;

    memcpy(v9, v13, v12);
  }
}

char *google::protobuf::StrAppend(std::string *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  std::string::resize(this, *(a2 + 8) + size + *(a3 + 8) + *(a4 + 8) + *(a5 + 8), 0);
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return sub_276BA3638(v9 + size, a2, a3, a4, a5);
}

uint64_t google::protobuf::GlobalReplaceSubstring(uint64_t a1, uint64_t a2, std::string *this)
{
  if (!this)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v24, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/strutil.cc", 1616);
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

      sub_276BA40FC(&v24, v13, (v13 + v12));
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

void sub_276BA40C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_276BA40FC(std::string *this, std::string *__src, std::string *a3)
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
    sub_276BA51CC(__p, __src, a3, v7);
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

void sub_276BA4258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::CalculateBase64EscapedLen(google::protobuf *this, int a2)
{
  v2 = this;
  v3 = this / 3;
  result = (4 * (this / 3));
  v5 = v2 - 3 * v3;
  if (v5)
  {
    v6 = result | 3;
    v7 = result + 4;
    if (a2)
    {
      v6 = result + 4;
    }

    else
    {
      v7 = result | 2;
    }

    if (v5 == 1)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t google::protobuf::CalculateBase64EscapedLen(google::protobuf *this)
{
  v1 = this;
  v2 = this / 3;
  result = (4 * (this / 3));
  if (v1 != 3 * v2)
  {
    return (result + 4);
  }

  return result;
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

BOOL sub_276BA49AC(google::protobuf *a1, const char *a2, std::string *this, uint64_t a4)
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
  if ((v11 & 0x80000000) != 0)
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
    std::string::erase(this, v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v12 >= 0;
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
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/strutil.cc", 2181);
    v18 = google::protobuf::internal::LogMessage::operator<<(v22, "Logic problem? szsrc = ");
    v19 = google::protobuf::internal::LogMessage::operator<<(v18, v13);
    google::protobuf::internal::LogFinisher::operator=(&v21, &v19->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  return (i - v7);
}

void sub_276BA4CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::Base64EscapeInternal(google::protobuf *a1, const unsigned __int8 *a2, std::string *this, const char *a4, uint64_t a5)
{
  v10 = 4 * (a2 / 3);
  if (a2 % 3)
  {
    v11 = v10 | 3;
    v12 = v10 + 4;
    if (a4)
    {
      v11 = v10 + 4;
    }

    v10 |= 2u;
    if (a4)
    {
      v10 = v12;
    }

    if (a2 % 3 != 1)
    {
      v10 = v11;
    }
  }

  std::string::resize(this, v10, 0);
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v14 = 0;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    v14 = this;
  }

  else
  {
    v14 = 0;
  }

  v15 = google::protobuf::Base64EscapeInternal(a1, a2, v14, size, a5, a4);

  return std::string::erase(this, v15, 0xFFFFFFFFFFFFFFFFLL);
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
    return byte_276C1AF48[*this];
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
      sub_276A07B90(&__p, *a1, *(a1 + 8));
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

void sub_276BA5008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

_BYTE *sub_276BA51CC(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t *sub_276BA527C(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2769BA860();
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

    v20[4] = *a1;
    if (v12)
    {
      sub_276B275D0(v4, v12);
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
    v20[0] = v17;
    v20[1] = v17;
    *(v4 + 8) = v8;
    v20[2] = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20[3] = v18;
    sub_276B27628(v20);
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

uint64_t sub_276BA53C4(unsigned __int8 *a1, int *a2)
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

uint64_t sub_276BA5458(unsigned __int8 *a1, int *a2)
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

uint64_t sub_276BA54F8(unsigned __int8 *a1, unsigned int *a2)
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

uint64_t sub_276BA5588(unsigned __int8 *a1, uint64_t *a2)
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

uint64_t sub_276BA5614(unsigned __int8 *a1, int64_t *a2)
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

uint64_t sub_276BA56B0(unsigned __int8 *a1, unint64_t *a2)
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

void google::protobuf::strings::Substitute(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, std::string *a9@<X8>, __int128 a10, uint64_t a11)
{
  a9->__r_.__value_.__r.__words[0] = 0;
  a9->__r_.__value_.__l.__size_ = 0;
  a9->__r_.__value_.__r.__words[2] = 0;
  *(&v11 + 1) = a10;
  *&v11 = a8;
  google::protobuf::strings::SubstituteAndAppend(a9, a1, a2, a3, a4, a5, a6, a7, v11, *(&a10 + 1), a11);
}

void sub_276BA57A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::strings::SubstituteAndAppend(std::string *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v53 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v48[0] = a4;
  v48[1] = a5;
  v48[2] = a6;
  v48[3] = a7;
  v48[4] = a8;
  v49 = a9;
  v50 = a10;
  v51 = a11;
  v52 = 0;
  v11 = *a2;
  if (!*a2)
  {
    goto LABEL_41;
  }

  v12 = a3;
  v14 = this;
  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    if (v11 == 36)
    {
      v16 = v16 + 1;
      v17 = a2[v16];
      v18 = v17 - 48;
      if ((v17 - 48) <= 9)
      {
        v19 = *(v48[v18 - 1] + 8);
        if (v19 != -1)
        {
          v15 += v19;
          goto LABEL_9;
        }

        google::protobuf::internal::LogMessage::LogMessage(v46, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/substitute.cc", 84);
        v25 = google::protobuf::internal::LogMessage::operator<<(v46, "strings::Substitute format string invalid: asked for $");
        v26 = google::protobuf::internal::LogMessage::operator<<(v25, v18);
        v27 = google::protobuf::internal::LogMessage::operator<<(v26, ", but only ");
        v28 = 0;
        while (*(v12 + 8) != -1)
        {
          v29 = v28 + 1;
          v12 = v48[v28++];
          if (!v12)
          {
            goto LABEL_35;
          }
        }

        v29 = v28;
LABEL_35:
        v36 = google::protobuf::internal::LogMessage::operator<<(v27, v29);
        v37 = google::protobuf::internal::LogMessage::operator<<(v36, " args were given.  Full format string was: ");
        sub_276A4D46C(v43, a2);
        google::protobuf::CEscape(v43, v38, &__p);
        v39 = google::protobuf::internal::LogMessage::operator<<(v37, &__p);
        v40 = google::protobuf::internal::LogMessage::operator<<(v39, ".");
        google::protobuf::internal::LogFinisher::operator=(&v42, &v40->__r_.__value_.__l.__data_);
LABEL_36:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        google::protobuf::internal::LogMessage::~LogMessage(&v46[0].__r_.__value_.__l.__data_);
        goto LABEL_41;
      }

      if (v17 != 36)
      {
        google::protobuf::internal::LogMessage::LogMessage(v46, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/substitute.cc", 97);
        v21 = google::protobuf::internal::LogMessage::operator<<(v46, "Invalid strings::Substitute() format string: ");
        sub_276A4D46C(v43, a2);
        google::protobuf::CEscape(v43, v22, &__p);
        v23 = google::protobuf::internal::LogMessage::operator<<(v21, &__p);
        v24 = google::protobuf::internal::LogMessage::operator<<(v23, ".");
        google::protobuf::internal::LogFinisher::operator=(&v42, &v24->__r_.__value_.__l.__data_);
        goto LABEL_36;
      }
    }

    ++v15;
LABEL_9:
    v16 = v16 + 1;
    v11 = a2[v16];
  }

  while (a2[v16]);
  if (v15)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::string::resize(this, v15 + size, 0);
    if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v14->__r_.__value_.__l.__size_)
      {
        goto LABEL_23;
      }

      v14 = v14->__r_.__value_.__r.__words[0];
    }

    else if (!*(&v14->__r_.__value_.__s + 23))
    {
LABEL_23:
      v14 = 0;
    }

    v30 = 0;
    v31 = v14 + size;
    while (2)
    {
      v32 = a2[v30];
      if (v32 == 36)
      {
        v33 = v30 + 1;
        v34 = a2[v33];
        if ((v34 - 48) > 9)
        {
          if (v34 != 36)
          {
            goto LABEL_28;
          }

          *v31++ = 36;
        }

        else
        {
          v35 = v48[(v34 & 0xF) - 1];
          memcpy(v31, *v35, *(v35 + 8));
          v31 += *(v35 + 8);
        }
      }

      else
      {
        if (!a2[v30])
        {
          break;
        }

        *v31++ = v32;
LABEL_28:
        LODWORD(v33) = v30;
      }

      v30 = v33 + 1;
      continue;
    }
  }

LABEL_41:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_276BA5AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a23);
  _Unwind_Resume(a1);
}

void google::protobuf::Message::DebugString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  google::protobuf::TextFormat::Printer::Printer(v2);
}

void sub_276BA5BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B2745C(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

BOOL google::protobuf::TextFormat::Printer::PrintToString(google::protobuf::TextFormat::Printer *a1, const google::protobuf::Message *a2, uint64_t a3)
{
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

  google::protobuf::io::StringOutputStream::StringOutputStream(v6, a3);
  return google::protobuf::TextFormat::Printer::Print(a1, a2, v6);
}

void google::protobuf::Message::ShortDebugString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  google::protobuf::TextFormat::Printer::Printer(v2);
}

void sub_276BA5D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B2745C(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::Message::Utf8DebugString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  google::protobuf::TextFormat::Printer::Printer(v2);
}

void sub_276BA5E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B2745C(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::ParseInfoTree::RecordLocation(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v19[0] = a2;
  v19[2] = v19;
  v4 = sub_276BB1B90(a1, v19);
  v5 = v4;
  v7 = v4[6];
  v6 = v4[7];
  if (v7 >= v6)
  {
    v9 = v4[5];
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v11 = v6 - v9;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      sub_2769BAFA4((v4 + 5), v13);
    }

    v14 = (8 * v10);
    *v14 = a3;
    v8 = 8 * v10 + 8;
    v15 = v4[5];
    v16 = v4[6] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = v5[5];
    v5[5] = v17;
    v5[6] = v8;
    v5[7] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = a3;
    v8 = (v7 + 1);
  }

  v5[6] = v8;
}

void google::protobuf::TextFormat::ParseInfoTree::CreateNested(google::protobuf::TextFormat::ParseInfoTree *this, const google::protobuf::FieldDescriptor *a2)
{
  v2[0] = a2;
  v2[2] = v2;
  sub_276BB1B90(this + 24, v2);
  operator new();
}

void google::protobuf::CheckFieldIndex(google::protobuf *this, const google::protobuf::FieldDescriptor *a2)
{
  if (this)
  {
    v3 = *(this + 15);
    if (a2 == -1 && v3 == 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 147);
      v4 = google::protobuf::internal::LogMessage::operator<<(v11, "Index must be in range of repeated field values. ");
      v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Field: ");
      v6 = google::protobuf::internal::LogMessage::operator<<(v5, *this);
      google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
LABEL_8:
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
      return;
    }

    if (a2 != -1 && v3 != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 150);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "Index must be -1 for singular fields.");
      v8 = google::protobuf::internal::LogMessage::operator<<(v7, "Field: ");
      v9 = google::protobuf::internal::LogMessage::operator<<(v8, *this);
      google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
      goto LABEL_8;
    }
  }
}

void sub_276BA62CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::TextFormat::ParseInfoTree::GetLocation(google::protobuf::TextFormat::ParseInfoTree *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::FieldDescriptor *a3)
{
  v3 = a3;
  google::protobuf::CheckFieldIndex(a2, a3);
  v8 = *(this + 1);
  v7 = this + 8;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 4);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *&v6[8 * v12];
  }

  while (v6);
  if (v9 == v7 || *(v9 + 4) > a2 || (v3 != -1 ? (v13 = v3) : (v13 = 0), v15 = v9 + 40, v14 = *(v9 + 5), v13 >= ((*(v15 + 1) - v14) >> 3)))
  {
LABEL_14:
    v16 = 0xFFFFFFFF00000000;
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = *(v14 + 8 * v13);
    v16 = v17 & 0xFFFFFFFF00000000;
    v17 = v17;
  }

  return v16 | v17;
}

uint64_t google::protobuf::TextFormat::ParseInfoTree::GetTreeForNested(google::protobuf::TextFormat::ParseInfoTree *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::FieldDescriptor *a3)
{
  v3 = a3;
  google::protobuf::CheckFieldIndex(a2, a3);
  v8 = *(this + 4);
  v7 = this + 32;
  v6 = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 4);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *&v6[8 * v12];
  }

  while (v6);
  if (v9 == v7 || *(v9 + 4) > a2)
  {
    return 0;
  }

  v13 = v3 == -1 ? 0 : v3;
  v15 = v9 + 40;
  v14 = *(v9 + 5);
  if (v13 >= ((*(v15 + 1) - v14) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v14 + 8 * v13);
  }
}

uint64_t google::protobuf::TextFormat::Finder::FindExtension(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(*a2 + 152))(a2);
  v5 = *(*(v4 + 16) + 16);

  return google::protobuf::DescriptorPool::FindExtensionByPrintableName(v5, v4, a3);
}

uint64_t sub_276BA64D4(uint64_t a1, const void **a2, uint64_t *a3)
{
  v6 = strlen("type.googleapis.com/");
  v7 = v6;
  v8 = *(a2 + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    if (v7 != v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!memcmp(v9, "type.googleapis.com/", v7))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (v6 == a2[1])
  {
    if (v6 == -1)
    {
      sub_276B28120();
    }

    v9 = *a2;
    goto LABEL_7;
  }

LABEL_8:
  v10 = strlen("type.googleprod.com/");
  if ((v8 & 0x80000000) != 0)
  {
    if (v10 != a2[1])
    {
      return 0;
    }

    if (v10 == -1)
    {
      sub_276B28120();
    }

    a2 = *a2;
  }

  else if (v10 != v8)
  {
    return 0;
  }

  if (memcmp(a2, "type.googleprod.com/", v10))
  {
    return 0;
  }

LABEL_16:
  v12 = *(*((*(*a1 + 152))(a1) + 16) + 16);

  return google::protobuf::DescriptorPool::FindMessageTypeByName(v12, a3, v13);
}

double google::protobuf::TextFormat::Parser::Parser(google::protobuf::TextFormat::Parser *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0x7FFFFFFF;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0x7FFFFFFF;
  return result;
}

uint64_t google::protobuf::TextFormat::Parser::Parse(google::protobuf::TextFormat::Parser *this, ZeroCopyInputStream *a2, google::protobuf::Message *a3)
{
  (*(*a3 + 40))(a3);
  v6 = *(this + 31);
  v7 = (*(*a3 + 152))(a3);
  sub_276BAC3A0(v11, v7, a2, *this, *(this + 1), *(this + 2), v6 ^ 1, *(this + 25), *(this + 26), BYTE1(*(this + 26)), BYTE2(*(this + 26)), HIBYTE(*(this + 26)), *(this + 30), *(this + 24), *(this + 8));
  v9 = google::protobuf::TextFormat::Parser::MergeUsingImpl(this, v8, a3, v11);
  google::protobuf::io::Tokenizer::~Tokenizer(&v13);
  google::protobuf::io::ErrorCollector::~ErrorCollector(&v12);
  return v9;
}

void sub_276BA6748(_Unwind_Exception *a1)
{
  google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Parser::MergeUsingImpl(uint64_t a1, uint64_t a2, google::protobuf::Message *a3, uint64_t a4)
{
  while (*(a4 + 40) != 1)
  {
    if ((sub_276BAC670(a4, a3) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a4 + 244))
  {
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0 && ((*(*a3 + 48))(a3) & 1) == 0)
  {
    memset(v13, 0, sizeof(v13));
    google::protobuf::Message::FindInitializationErrors(a3, v13);
    sub_276B276BC(", ", v13, &v10);
    v8 = std::string::insert(&v10, 0, "Message missing required fields: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_276BA6C78(a4, -1, 0, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    __p[0] = v13;
    sub_276B281C8(__p);
    return 0;
  }

  return 1;
}

void sub_276BA68A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __p = &a22;
  sub_276B281C8(&__p);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Parser::ParseFromString(char **a1, uint64_t a2, char *a3)
{
  sub_276B280C4(v10, a2, a3);
  result = sub_276BA6978(v10[0].var0, v10[1].var0, *a1);
  if (result)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    google::protobuf::io::ArrayInputStream::ArrayInputStream(v10, v8, v9, -1);
    return google::protobuf::TextFormat::Parser::Parse(a1, v10, a3);
  }

  return result;
}

BOOL sub_276BA6978(int a1, uint64_t this, char *a3)
{
  v17[6] = *MEMORY[0x277D85DE8];
  if (this >= 0x80000000)
  {
    v17[0] = "Input size too large: ";
    v17[1] = 22;
    v15[0] = v16;
    v15[1] = google::protobuf::FastInt64ToBufferLeft(this, v16, a3) - v16;
    v14[0] = " bytes";
    v14[1] = 6;
    v13[0] = " > ";
    v13[1] = 3;
    v11[0] = v12;
    v11[1] = google::protobuf::FastInt32ToBufferLeft(0x7FFFFFFF, v12, v5) - v12;
    v10[0] = " bytes.";
    v10[1] = 7;
    google::protobuf::StrCat(v17, v15, v14, v13, v11, v10, __p);
    (*(*a3 + 16))(a3, 0xFFFFFFFFLL, 0, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = this < 0x80000000;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276BA6ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::Parser::Merge(google::protobuf::TextFormat::Parser *this, ZeroCopyInputStream *a2, google::protobuf::Message *a3)
{
  v6 = (*(*a3 + 152))(a3);
  sub_276BAC3A0(v10, v6, a2, *this, *(this + 1), *(this + 2), 0, *(this + 25), *(this + 26), BYTE1(*(this + 26)), BYTE2(*(this + 26)), HIBYTE(*(this + 26)), *(this + 30), *(this + 24), *(this + 8));
  v8 = google::protobuf::TextFormat::Parser::MergeUsingImpl(this, v7, a3, v10);
  google::protobuf::io::Tokenizer::~Tokenizer(&v12);
  google::protobuf::io::ErrorCollector::~ErrorCollector(&v11);
  return v8;
}

void sub_276BA6BD4(_Unwind_Exception *a1)
{
  google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Parser::MergeFromString(char **a1, uint64_t a2, char *a3)
{
  sub_276B280C4(v10, a2, a3);
  result = sub_276BA6978(v10[0].var0, v10[1].var0, *a1);
  if (result)
  {
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    google::protobuf::io::ArrayInputStream::ArrayInputStream(v10, v8, v9, -1);
    return google::protobuf::TextFormat::Parser::Merge(a1, v10, a3);
  }

  return result;
}

void sub_276BA6C78(uint64_t *a1, int a2, int a3, const std::string::value_type *a4)
{
  *(a1 + 244) = 1;
  v8 = *a1;
  if (v8)
  {
    v9 = *(*v8 + 16);

    v9();
  }

  else
  {
    if (a2 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 323);
      v18 = google::protobuf::internal::LogMessage::operator<<(v20, "Error parsing text-format ");
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, *(a1[27] + 8));
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 319);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "Error parsing text-format ");
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1[27] + 8));
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, ": ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2 + 1);
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, ":");
      v15 = google::protobuf::internal::LogMessage::operator<<(v14, a3 + 1);
    }

    v16 = google::protobuf::internal::LogMessage::operator<<(v15, ": ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, a4);
    google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }
}

void sub_276BA6DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Parser::ParseFieldValueFromString(uint64_t a1, _DWORD *a2, uint64_t a3, google::protobuf::Message *a4)
{
  v7 = *(a2 + 23);
  v8 = a2[2];
  if (v7 >= 0)
  {
    v9 = v7;
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  google::protobuf::io::ArrayInputStream::ArrayInputStream(&v16, a2, v9, -1);
  v10 = (*(*a4 + 152))(a4);
  sub_276BAC3A0(v13, v10, &v16, *a1, *(a1 + 8), *(a1 + 16), 0, *(a1 + 25), *(a1 + 26), BYTE1(*(a1 + 26)), BYTE2(*(a1 + 26)), HIBYTE(*(a1 + 26)), *(a1 + 30), *(a1 + 24), *(a1 + 32));
  v11 = sub_276BA6F14(v13, a3, a4);
  google::protobuf::io::Tokenizer::~Tokenizer(&v15);
  google::protobuf::io::ErrorCollector::~ErrorCollector(&v14);
  return v11;
}

void sub_276BA6EF8(_Unwind_Exception *a1)
{
  google::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  google::protobuf::io::ErrorCollector::~ErrorCollector((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_276BA6F14(uint64_t a1, uint64_t a2, google::protobuf::Message *a3)
{
  v6 = *(a2 + 48);
  if (v6)
  {
    v10 = a2;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v6, &v12, sub_2769C149C);
    }
  }

  v7 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 56)];
  (*(*a3 + 152))(a3);
  if (v7 == 10)
  {
    if ((sub_276BAEE90(a1, a3, v8, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_276BAF174(a1, a3, v8, a2);
    if (!result)
    {
      return result;
    }
  }

  return *(a1 + 40) == 1;
}

uint64_t google::protobuf::TextFormat::Parse(ZeroCopyInputStream *this, ZeroCopyInputStream *a2, google::protobuf::Message *a3)
{
  memset(v4, 0, sizeof(v4));
  v5 = 0x7FFFFFFF;
  return google::protobuf::TextFormat::Parser::Parse(v4, this, a2);
}

uint64_t google::protobuf::TextFormat::Merge(ZeroCopyInputStream *this, ZeroCopyInputStream *a2, google::protobuf::Message *a3)
{
  memset(v4, 0, sizeof(v4));
  v5 = 0x7FFFFFFF;
  return google::protobuf::TextFormat::Parser::Merge(v4, this, a2);
}

uint64_t google::protobuf::TextFormat::ParseFromString(uint64_t a1, char *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0x7FFFFFFF;
  return google::protobuf::TextFormat::Parser::ParseFromString(v3, a1, a2);
}

uint64_t google::protobuf::TextFormat::MergeFromString(uint64_t a1, char *a2)
{
  memset(v3, 0, sizeof(v3));
  v4 = 0x7FFFFFFF;
  return google::protobuf::TextFormat::Parser::MergeFromString(v3, a1, a2);
}

void *google::protobuf::TextFormat::FieldValuePrinter::FieldValuePrinter(void *this)
{
  *this = &unk_2885C8D18;
  this[1] = &unk_2885C8DA0;
  return this;
}

{
  *this = &unk_2885C8D18;
  this[1] = &unk_2885C8DA0;
  return this;
}

void *google::protobuf::TextFormat::FastFieldValuePrinter::FastFieldValuePrinter(void *this)
{
  *this = &unk_2885C8DA0;
  return this;
}

{
  *this = &unk_2885C8DA0;
  return this;
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintBool(int a1@<W1>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v4 = a1 == 0;
  if (a1)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  if (v4)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  std::string::append(&__p, v5, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_276A07B90(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }
}

void sub_276BA7288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintBool(google::protobuf::TextFormat::FastFieldValuePrinter *this, int a2, google::protobuf::TextFormat::BaseTextGenerator *a3)
{
  v3 = *(*a3 + 40);
  if (a2)
  {
    return v3(a3, "true", 4);
  }

  else
  {
    return v3(a3, "false", 5);
  }
}

uint64_t sub_276BA72F8(uint64_t a1)
{
  *a1 = &unk_2885C8F40;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintInt32(google::protobuf::TextFormat::FieldValuePrinter *this@<X0>, google::protobuf *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = &unk_2885C8F40;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  google::protobuf::TextFormat::FastFieldValuePrinter::PrintInt32(this, a2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    sub_276A07B90(a3, __p[0], __p[1]);
    v4 = &unk_2885C8F40;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v6;
  }
}

void sub_276BA73E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintInt32(google::protobuf::TextFormat::FastFieldValuePrinter *this, google::protobuf *a2, google::protobuf::TextFormat::BaseTextGenerator *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  __src = v13;
  v4 = google::protobuf::FastInt32ToBufferLeft(a2, v13, a3);
  v5 = v4 - v13;
  v12 = v4 - v13;
  if ((v4 - v13) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v10 = v4 - v13;
  if (v4 != v13)
  {
    memmove(__p, __src, v5);
  }

  *(__p + v5) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a3 + 40))(a3, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_276BA755C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintUInt32(google::protobuf::TextFormat::FieldValuePrinter *this@<X0>, google::protobuf *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = &unk_2885C8F40;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  google::protobuf::TextFormat::FastFieldValuePrinter::PrintUInt32(this, a2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    sub_276A07B90(a3, __p[0], __p[1]);
    v4 = &unk_2885C8F40;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v6;
  }
}

void sub_276BA761C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintUInt32(google::protobuf::TextFormat::FastFieldValuePrinter *this, google::protobuf *a2, google::protobuf::TextFormat::BaseTextGenerator *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  __src = v13;
  v4 = google::protobuf::FastUInt32ToBufferLeft(a2, v13, a3);
  v5 = v4 - v13;
  v12 = v4 - v13;
  if ((v4 - v13) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v10 = v4 - v13;
  if (v4 != v13)
  {
    memmove(__p, __src, v5);
  }

  *(__p + v5) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a3 + 40))(a3, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_276BA7794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintInt64(google::protobuf::TextFormat::FieldValuePrinter *this@<X0>, google::protobuf *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = &unk_2885C8F40;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  google::protobuf::TextFormat::FastFieldValuePrinter::PrintInt64(this, a2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    sub_276A07B90(a3, __p[0], __p[1]);
    v4 = &unk_2885C8F40;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v6;
  }
}

void sub_276BA7854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintInt64(google::protobuf::TextFormat::FastFieldValuePrinter *this, google::protobuf *a2, google::protobuf::TextFormat::BaseTextGenerator *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  __src = v13;
  v4 = google::protobuf::FastInt64ToBufferLeft(a2, v13, a3);
  v5 = v4 - v13;
  v12 = v4 - v13;
  if ((v4 - v13) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v10 = v4 - v13;
  if (v4 != v13)
  {
    memmove(__p, __src, v5);
  }

  *(__p + v5) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a3 + 40))(a3, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_276BA79CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintUInt64(google::protobuf::TextFormat::FieldValuePrinter *this@<X0>, google::protobuf *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = &unk_2885C8F40;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  google::protobuf::TextFormat::FastFieldValuePrinter::PrintUInt64(this, a2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    sub_276A07B90(a3, __p[0], __p[1]);
    v4 = &unk_2885C8F40;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v6;
  }
}

void sub_276BA7A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintUInt64(google::protobuf::TextFormat::FastFieldValuePrinter *this, google::protobuf *a2, google::protobuf::TextFormat::BaseTextGenerator *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  __src = v13;
  v4 = google::protobuf::FastUInt64ToBufferLeft(a2, v13, a3);
  v5 = v4 - v13;
  v12 = v4 - v13;
  if ((v4 - v13) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v10 = v4 - v13;
  if (v4 != v13)
  {
    memmove(__p, __src, v5);
  }

  *(__p + v5) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a3 + 40))(a3, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_276BA7C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintFloat(google::protobuf::TextFormat::FieldValuePrinter *this@<X0>, float a2@<S0>, uint64_t a3@<X8>)
{
  v4 = &unk_2885C8F40;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  google::protobuf::TextFormat::FastFieldValuePrinter::PrintFloat(this, a2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    sub_276A07B90(a3, __p[0], __p[1]);
    v4 = &unk_2885C8F40;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v6;
  }
}

void sub_276BA7CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintFloat(google::protobuf::TextFormat::FastFieldValuePrinter *this, float a2, google::protobuf::TextFormat::BaseTextGenerator *a3)
{
  google::protobuf::SimpleFtoa(a2, a3, __p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BA7D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintDouble(google::protobuf::TextFormat::FieldValuePrinter *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v4 = &unk_2885C8F40;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  google::protobuf::TextFormat::FastFieldValuePrinter::PrintDouble(this, a2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    sub_276A07B90(a3, __p[0], __p[1]);
    v4 = &unk_2885C8F40;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v6;
  }
}

void sub_276BA7E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FastFieldValuePrinter::PrintDouble(google::protobuf::TextFormat::FastFieldValuePrinter *this, double a2, google::protobuf::TextFormat::BaseTextGenerator *a3)
{
  google::protobuf::SimpleDtoa(a2, a3, __p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BA7EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintString(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = &unk_2885C8F40;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  google::protobuf::TextFormat::FastFieldValuePrinter::PrintString(a1, a2, &v4);
  if (SHIBYTE(v6) < 0)
  {
    sub_276A07B90(a3, __p[0], __p[1]);
    v4 = &unk_2885C8F40;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a3 = *__p;
    *(a3 + 16) = v6;
  }
}

void sub_276BA7FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintString(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  (*(*a3 + 40))(a3, "", 1);
  google::protobuf::CEscape(a2, v5, &__p);
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

  (*(*a3 + 40))(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return (*(*a3 + 40))(a3, "", 1);
}

void sub_276BA80D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintEnum(uint64_t a1@<X2>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  std::string::append(&__p, v4, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_276A07B90(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }
}

void sub_276BA81C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintEnum(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  return (*(*a4 + 40))(a4, v5, v6);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintFieldName(google::protobuf::TextFormat::FieldValuePrinter *this@<X0>, const google::protobuf::Message *a2@<X1>, const google::protobuf::Reflection *a3@<X2>, std::once_flag::_State_type **a4@<X3>, uint64_t a5@<X8>)
{
  v6 = &unk_2885C8F40;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  google::protobuf::TextFormat::FastFieldValuePrinter::PrintFieldName(this, a2, a3, a4, &v6);
  if (SHIBYTE(v8) < 0)
  {
    sub_276A07B90(a5, __p[0], __p[1]);
    v6 = &unk_2885C8F40;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a5 = *__p;
    *(a5 + 16) = v8;
  }
}

void sub_276BA82C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintFieldName(google::protobuf::TextFormat::FastFieldValuePrinter *this, const google::protobuf::Message *a2, const google::protobuf::Reflection *a3, std::once_flag::_State_type **a4, google::protobuf::TextFormat::BaseTextGenerator *a5)
{
  if (*(a4 + 67) == 1)
  {
    (*(*a5 + 40))(a5, "[", 1);
    v7 = google::protobuf::FieldDescriptor::PrintableNameForExtension(a4);
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = v7;
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
      v10 = *(v7 + 8);
    }

    (*(*a5 + 40))(a5, v9, v10);
    v11 = *(*a5 + 40);

    return v11(a5, "]", 1);
  }

  else
  {
    v13 = a4[6];
    if (v13)
    {
      v18 = a4;
      v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v21[0] = &v19;
        v21[1] = &v18;
        v20 = v21;
        std::__call_once(v13, &v20, sub_2769C149C);
      }
    }

    if (*(a4 + 14) == 10)
    {
      v14 = *google::protobuf::FieldDescriptor::message_type(a4);
    }

    else
    {
      v14 = *a4;
    }

    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = v14[1];
    }

    return (*(*a5 + 40))(a5, v16, v17);
  }
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintMessageStart(int a1@<W4>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (a1)
  {
    v5 = " { ";
  }

  else
  {
    v5 = " {\n";
  }

  std::string::append(&__p, v5, 3uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_276A07B90(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }
}

void sub_276BA854C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintMessageStart(google::protobuf::TextFormat::FastFieldValuePrinter *this, const google::protobuf::Message *a2, int a3, int a4, int a5, google::protobuf::TextFormat::BaseTextGenerator *a6)
{
  if (a5)
  {
    v6 = " { ";
  }

  else
  {
    v6 = " {\n";
  }

  return (*(*a6 + 40))(a6, v6, 3);
}

void google::protobuf::TextFormat::FieldValuePrinter::PrintMessageEnd(int a1@<W4>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (a1)
  {
    v5 = "} ";
  }

  else
  {
    v5 = "}\n";
  }

  std::string::append(&__p, v5, 2uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_276A07B90(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }
}

void sub_276BA8668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::FastFieldValuePrinter::PrintMessageEnd(google::protobuf::TextFormat::FastFieldValuePrinter *this, const google::protobuf::Message *a2, int a3, int a4, int a5, google::protobuf::TextFormat::BaseTextGenerator *a6)
{
  if (a5)
  {
    v6 = "} ";
  }

  else
  {
    v6 = "}\n";
  }

  return (*(*a6 + 40))(a6, v6, 2);
}

void google::protobuf::TextFormat::Printer::Printer(google::protobuf::TextFormat::Printer *this)
{
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  *this = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 7) = this + 64;
  *(this + 9) = 0;
  *(this + 10) = 0;
  google::protobuf::TextFormat::Printer::SetUseUtf8StringEscaping(this);
}

void sub_276BA87C8(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_276B274C8(v4, *(v1 + 64));
  sub_276B2754C(v2, *(v1 + 40));
  v6 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v6)
  {
    sub_276BDA818(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Printer::SetDefaultFieldValuePrinter(google::protobuf::TextFormat::Printer *this, const google::protobuf::TextFormat::FastFieldValuePrinter *a2)
{
  result = *(this + 3);
  *(this + 3) = a2;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t google::protobuf::TextFormat::Printer::RegisterFieldValuePrinter(google::protobuf::TextFormat::Printer *this, const google::protobuf::FieldDescriptor *a2, const google::protobuf::TextFormat::FieldValuePrinter *a3)
{
  if (a2 && a3)
  {
    operator new();
  }

  return 0;
}

uint64_t google::protobuf::TextFormat::Printer::RegisterFieldValuePrinter(google::protobuf::TextFormat::Printer *this, const google::protobuf::FieldDescriptor *a2, const google::protobuf::TextFormat::FastFieldValuePrinter *a3)
{
  result = 0;
  if (a2 && a3)
  {
    v10[0] = a2;
    v10[1] = 0;
    v6 = sub_276BB1E5C(this + 32, v10);
    if (v7)
    {
      v8 = v6;
      v9 = v6[5];
      v8[5] = a3;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::TextFormat::Printer::RegisterMessagePrinter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2 && a3)
  {
    v10[0] = a2;
    v10[1] = 0;
    v6 = sub_276BB1E5C(a1 + 56, v10);
    if (v7)
    {
      v8 = v6;
      v9 = v6[5];
      v8[5] = a3;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL google::protobuf::TextFormat::Printer::Print(google::protobuf::TextFormat::Printer *this, const google::protobuf::Message *a2, google::protobuf::io::ZeroCopyOutputStream *a3)
{
  v3 = *this;
  v6[0] = &unk_2885C90F8;
  v6[1] = a3;
  v6[2] = 0;
  v7 = 0;
  v8 = 1;
  v9 = v3;
  v10 = v3;
  google::protobuf::TextFormat::Printer::Print(this, a2, v6);
  v4 = HIBYTE(v8);
  sub_276BB1B10(v6);
  return (v4 & 1) == 0;
}

void sub_276BA8BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276BB1B10(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::TextFormat::Printer::PrintUnknownFieldsToString(google::protobuf::TextFormat::Printer *a1, const google::protobuf::UnknownFieldSet *a2, uint64_t a3)
{
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

  google::protobuf::io::StringOutputStream::StringOutputStream(v6, a3);
  return google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, a2, v6);
}

BOOL google::protobuf::TextFormat::Printer::PrintUnknownFields(google::protobuf::TextFormat::Printer *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::ZeroCopyOutputStream *a3)
{
  v3 = *this;
  v6[0] = &unk_2885C90F8;
  v6[1] = a3;
  v6[2] = 0;
  v7 = 0;
  v8 = 1;
  v9 = v3;
  v10 = v3;
  google::protobuf::TextFormat::Printer::PrintUnknownFields(this, a2, v6, 10);
  v4 = HIBYTE(v8);
  sub_276BB1B10(v6);
  return (v4 & 1) == 0;
}

void sub_276BA8CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276BB1B10(va);
  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::Printer::Print(uint64_t a1, const google::protobuf::Message *a2, char *a3)
{
  (*(*a2 + 152))(a2);
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a2 + 152))(a2);
    v9 = v8;
    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = a1 + 64;
      do
      {
        v12 = *(v10 + 32);
        v13 = v12 >= v8;
        v14 = v12 < v8;
        if (v13)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * v14);
      }

      while (v10);
      if (v11 != a1 + 64 && *(v11 + 32) <= v8)
      {
        v27 = *(a1 + 4);
        v28 = *(**(v11 + 40) + 16);

        v28();
        return;
      }
    }

    v15 = *(v8 + 8);
    v16 = strlen("google.protobuf.Any");
    v17 = *(v15 + 23);
    if (v17 < 0)
    {
      if (v16 != v15[1])
      {
        goto LABEL_31;
      }

      if (v16 == -1)
      {
        sub_276B28120();
      }

      v15 = *v15;
    }

    else if (v16 != v17)
    {
LABEL_31:
      v29 = 0;
      v30 = 0;
      v31 = 0;
      if (*(*(v9 + 32) + 75) == 1)
      {
        v35 = *(v9 + 40);
        sub_276B23B7C(&v29, &v35);
        v35 = (*(v9 + 40) + 152);
        sub_276B23B7C(&v29, &v35);
      }

      else
      {
        google::protobuf::Reflection::ListFieldsOmitStripped(v7, a2, &v29);
        (*(*a2 + 152))(a2);
      }

      if (*(a1 + 8) == 1)
      {
        v22 = 126 - 2 * __clz((v30 - v29) >> 3);
        if (v30 == v29)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22;
        }

        sub_276BB1F28(v29, v30, v23, 1);
      }

      v24 = v29;
      v25 = v30;
      while (v24 != v25)
      {
        google::protobuf::TextFormat::Printer::PrintField(a1, a2, v7, *v24++, a3);
      }

      if ((*(a1 + 7) & 1) == 0)
      {
        UnknownFields = google::protobuf::Reflection::GetUnknownFields(v7, a2);
        google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, UnknownFields, a3, 10);
      }

      v20 = v29;
      if (v29)
      {
        v30 = v29;
        goto LABEL_46;
      }

      return;
    }

    if (!memcmp(v15, "google.protobuf.Any", v16) && *(a1 + 9) == 1 && (google::protobuf::TextFormat::Printer::PrintAny(a1, a2, a3, v21) & 1) != 0)
    {
      return;
    }

    goto LABEL_31;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  google::protobuf::MessageLite::SerializeAsString(a2, &__p);
  if ((v34 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v34 & 0x80u) == 0)
  {
    v19 = v34;
  }

  else
  {
    v19 = v33;
  }

  google::protobuf::io::ArrayInputStream::ArrayInputStream(&v29, p_p, v19, -1);
  google::protobuf::UnknownFieldSet::ParseFromZeroCopyStream(&v35, &v29);
  if (v34 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, &v35, a3, 10);
  v20 = v35;
  if (v35 != v36)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(&v35);
    v20 = v35;
  }

  if (v20)
  {
    v36 = v20;
LABEL_46:
    operator delete(v20);
  }
}

void sub_276BA9038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::TextFormat::Printer::PrintUnknownFields(uint64_t a1, uint64_t *a2, char *a3, int a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (((a2[1] - *a2) >> 4) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v57 = a4 - 1;
    do
    {
      v9 = *(v4 + v7);
      __src = &v71;
      v10 = google::protobuf::FastInt32ToBufferLeft(v9, &v71, a3);
      v11 = v10 - &v71;
      __len = v10 - &v71;
      if ((v10 - &v71) > 0x7FFFFFFFFFFFFFF7)
      {
        sub_2769DD7D8();
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      v68 = v10 - &v71;
      if (v10 != &v71)
      {
        memmove(&__dst, __src, v11);
      }

      *(&__dst + v11) = 0;
      v12 = *(v4 + v7 + 4);
      if (v12 <= 1)
      {
        if (!v12)
        {
          if ((v68 & 0x80u) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if ((v68 & 0x80u) == 0)
          {
            v29 = v68;
          }

          else
          {
            v29 = v67;
          }

          (*(*a3 + 40))(a3, p_dst, v29);
          (*(*a3 + 40))(a3, ": ", 2);
          v30 = *(v4 + v7 + 8);
          __src = &v71;
          v32 = google::protobuf::FastUInt64ToBufferLeft(v30, &v71, v31);
          v33 = v32 - &v71;
          __len = v32 - &v71;
          if ((v32 - &v71) > 0x7FFFFFFFFFFFFFF7)
          {
            sub_2769DD7D8();
          }

          if (v33 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v65) = v32 - &v71;
          if (v32 != &v71)
          {
            memmove(&__p, __src, v33);
          }

          *(&__p + v33) = 0;
          if (v65 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v65 >= 0)
          {
            v43 = HIBYTE(v65);
          }

          else
          {
            v43 = v64;
          }

          (*(*a3 + 40))(a3, p_p, v43);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p);
          }

          v35 = (*a3 + 40);
          if (*(a1 + 4))
          {
            v36 = " ";
          }

          else
          {
            v36 = "\n";
          }

          v37 = 1;
          goto LABEL_94;
        }

        if (v12 == 1)
        {
          if ((v68 & 0x80u) == 0)
          {
            v16 = &__dst;
          }

          else
          {
            v16 = __dst;
          }

          if ((v68 & 0x80u) == 0)
          {
            v17 = v68;
          }

          else
          {
            v17 = v67;
          }

          (*(*a3 + 40))(a3, v16, v17);
          (*(*a3 + 40))(a3, ": 0x", 4);
          google::protobuf::strings::AlphaNum::AlphaNum(&__src, *(v4 + v7 + 8), 8);
          v18 = __len;
          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
            sub_2769DD7D8();
          }

          if (__len >= 0x17)
          {
            operator new();
          }

          HIBYTE(v65) = __len;
          if (__len)
          {
            memmove(&__p, __src, __len);
          }

          *(&__p + v18) = 0;
          if (v65 >= 0)
          {
            v44 = &__p;
          }

          else
          {
            v44 = __p;
          }

          if (v65 >= 0)
          {
            v45 = HIBYTE(v65);
          }

          else
          {
            v45 = v64;
          }

          (*(*a3 + 40))(a3, v44, v45);
          v59 = v59 & 0xFFFFFFFF00000000 | 8;
          if (SHIBYTE(v65) < 0)
          {
            operator delete(__p);
          }

          v46 = *a3 + 40;
          if (*(a1 + 4))
          {
            v41 = " ";
          }

          else
          {
            v41 = "\n";
          }

          goto LABEL_79;
        }
      }

      else
      {
        switch(v12)
        {
          case 2:
            if ((v68 & 0x80u) == 0)
            {
              v19 = &__dst;
            }

            else
            {
              v19 = __dst;
            }

            if ((v68 & 0x80u) == 0)
            {
              v20 = v68;
            }

            else
            {
              v20 = v67;
            }

            (*(*a3 + 40))(a3, v19, v20);
            (*(*a3 + 40))(a3, ": 0x", 4);
            google::protobuf::strings::AlphaNum::AlphaNum(&__src, *(v4 + v7 + 8), 16);
            v21 = __len;
            if (__len > 0x7FFFFFFFFFFFFFF7)
            {
              sub_2769DD7D8();
            }

            if (__len >= 0x17)
            {
              operator new();
            }

            HIBYTE(v65) = __len;
            if (__len)
            {
              memmove(&__p, __src, __len);
            }

            *(&__p + v21) = 0;
            if (v65 >= 0)
            {
              v38 = &__p;
            }

            else
            {
              v38 = __p;
            }

            if (v65 >= 0)
            {
              v39 = HIBYTE(v65);
            }

            else
            {
              v39 = v64;
            }

            (*(*a3 + 40))(a3, v38, v39);
            v58 = v58 & 0xFFFFFFFF00000000 | 0x10;
            if (SHIBYTE(v65) < 0)
            {
              operator delete(__p);
            }

            v40 = *a3 + 40;
            if (*(a1 + 4))
            {
              v41 = " ";
            }

            else
            {
              v41 = "\n";
            }

LABEL_79:
            (*(*a3 + 40))(a3, v41, 1);
            break;
          case 3:
            if ((v68 & 0x80u) == 0)
            {
              v22 = &__dst;
            }

            else
            {
              v22 = __dst;
            }

            if ((v68 & 0x80u) == 0)
            {
              v23 = v68;
            }

            else
            {
              v23 = v67;
            }

            (*(*a3 + 40))(a3, v22, v23);
            v25 = *(v4 + v7 + 8);
            v26 = *(v25 + 23);
            if (v26 < 0)
            {
              v27 = *v25;
              v26 = *(v25 + 8);
            }

            else
            {
              v27 = *(v4 + v7 + 8);
            }

            __src = v27;
            __len = v27 + v26;
            v71 = 0;
            v73 = 0;
            v74 = 0;
            v72 = v26;
            v75 = v26;
            v76 = -NAN;
            v79 = 0;
            v80 = 0;
            v77 = a4;
            v78 = a4;
            v64 = 0;
            v65 = 0;
            __p = 0;
            v47 = *(v25 + 23);
            if (v47 < 0)
            {
              v47 = *(v25 + 8);
            }

            if (a4 >= 1 && v47 && google::protobuf::UnknownFieldSet::ParseFromCodedStream(&__p, &__src, v24))
            {
              v48 = *(*a3 + 40);
              if (*(a1 + 4) == 1)
              {
                v48(a3, " { ", 3);
              }

              else
              {
                v48(a3, " {\n", 3);
                (*(*a3 + 16))(a3);
              }

              google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, &__p, a3, v57);
              v55 = *a3;
              if (*(a1 + 4) == 1)
              {
                v52 = (v55 + 40);
                v53 = "} ";
              }

              else
              {
                (*(v55 + 24))(a3);
                v52 = (*a3 + 40);
                v53 = "}\n";
              }
            }

            else
            {
              (*(*a3 + 40))(a3, ": ", 3);
              google::protobuf::CEscape(v25, v49, &v62);
              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v50 = &v62;
              }

              else
              {
                v50 = v62.__r_.__value_.__r.__words[0];
              }

              if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v62.__r_.__value_.__l.__size_;
              }

              (*(*a3 + 40))(a3, v50, size);
              if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v62.__r_.__value_.__l.__data_);
              }

              v52 = (*a3 + 40);
              if (*(a1 + 4))
              {
                v53 = " ";
              }

              else
              {
                v53 = "\n";
              }
            }

            (*v52)(a3, v53, 2);
            v54 = __p;
            if (__p != v64)
            {
              google::protobuf::UnknownFieldSet::ClearFallback(&__p);
              v54 = __p;
            }

            if (v54)
            {
              v64 = v54;
              operator delete(v54);
            }

            google::protobuf::io::CodedInputStream::~CodedInputStream(&__src);
            break;
          case 4:
            if ((v68 & 0x80u) == 0)
            {
              v13 = &__dst;
            }

            else
            {
              v13 = __dst;
            }

            if ((v68 & 0x80u) == 0)
            {
              v14 = v68;
            }

            else
            {
              v14 = v67;
            }

            (*(*a3 + 40))(a3, v13, v14);
            v15 = *(*a3 + 40);
            if (*(a1 + 4) == 1)
            {
              v15(a3, " { ", 3);
            }

            else
            {
              v15(a3, " {\n", 3);
              (*(*a3 + 16))(a3);
            }

            google::protobuf::TextFormat::Printer::PrintUnknownFields(a1, *(v4 + v7 + 8), a3, v57);
            v34 = *a3;
            if (*(a1 + 4) == 1)
            {
              v35 = (v34 + 40);
              v36 = "} ";
            }

            else
            {
              (*(v34 + 24))(a3);
              v35 = (*a3 + 40);
              v36 = "}\n";
            }

            v37 = 2;
LABEL_94:
            (*v35)(a3, v36, v37);
            break;
        }
      }

      if (v68 < 0)
      {
        operator delete(__dst);
      }

      ++v8;
      v4 = *a2;
      v7 += 16;
    }

    while (v8 < ((a2[1] - *a2) >> 4));
  }

  v56 = *MEMORY[0x277D85DE8];
}

void sub_276BA9C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a2)
  {
    sub_276B7B560(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::Printer::PrintAny(uint64_t a1, google::protobuf::internal *this, uint64_t a3, const google::protobuf::FieldDescriptor **a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  if (!google::protobuf::internal::GetAnyFieldDescriptors(this, &v43, &v42, a4))
  {
    v12 = 0;
    goto LABEL_39;
  }

  (*(*this + 152))(this);
  v8 = v7;
  google::protobuf::Reflection::GetString(v7, this, v43, v40);
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  sub_276B280C4(v44, v40, v9);
  if (google::protobuf::internal::ParseAnyTypeUrl(v44[0].__r_.__value_.__l.__data_, v44[0].__r_.__value_.__l.__size_, v38, v36))
  {
    v10 = *(a1 + 80);
    if (v10)
    {
      v11 = (*(*v10 + 32))(v10, this, v38, v36);
    }

    else
    {
      v11 = sub_276BA64D4(this, v38, v36);
    }

    v13 = v11;
    if (v11)
    {
      google::protobuf::DynamicMessageFactory::DynamicMessageFactory(v44);
      Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(v44, v13);
      v15 = (*(*Prototype + 24))(Prototype);
      google::protobuf::Reflection::GetString(v8, this, v42, __p);
      v12 = google::protobuf::MessageLite::ParseFromString(v15, __p);
      if (v12)
      {
        (*(*a3 + 40))(a3, "[", 1);
        if ((v41 & 0x80u) == 0)
        {
          v16 = v40;
        }

        else
        {
          v16 = v40[0];
        }

        if ((v41 & 0x80u) == 0)
        {
          v17 = v41;
        }

        else
        {
          v17 = v40[1];
        }

        (*(*a3 + 40))(a3, v16, v17);
        (*(*a3 + 40))(a3, "]", 1);
        v18 = *(a1 + 40);
        if (!v18)
        {
          goto LABEL_23;
        }

        v19 = a1 + 40;
        do
        {
          v20 = *(v18 + 32);
          v21 = v20 >= v42;
          v22 = v20 < v42;
          if (v21)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * v22);
        }

        while (v18);
        if (v19 != a1 + 40 && *(v19 + 32) <= v42)
        {
          v23 = (v19 + 40);
        }

        else
        {
LABEL_23:
          v23 = (a1 + 24);
        }

        v24 = *v23;
        (*(**v23 + 112))(*v23, this, 0xFFFFFFFFLL, 0, *(a1 + 4), a3);
        (*(*a3 + 16))(a3);
        google::protobuf::TextFormat::Printer::Print(a1, v15, a3);
        (*(*a3 + 24))(a3);
        (*(*v24 + 128))(v24, this, 0xFFFFFFFFLL, 0, *(a1 + 4), a3);
      }

      else
      {
        google::protobuf::internal::LogMessage::LogMessage(v33, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 2001);
        v28 = google::protobuf::internal::LogMessage::operator<<(v33, v40);
        v29 = google::protobuf::internal::LogMessage::operator<<(v28, ": failed to parse contents");
        google::protobuf::internal::LogFinisher::operator=(&v32, &v29->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v33[0].__r_.__value_.__l.__data_);
      }

      if (v35 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(v44);
      goto LABEL_33;
    }

    google::protobuf::internal::LogMessage::LogMessage(v44, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 1992);
    v25 = google::protobuf::internal::LogMessage::operator<<(v44, "Can't print proto content: proto type ");
    v26 = google::protobuf::internal::LogMessage::operator<<(v25, v40);
    v27 = google::protobuf::internal::LogMessage::operator<<(v26, " not found");
    google::protobuf::internal::LogFinisher::operator=(v33, &v27->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v44[0].__r_.__value_.__l.__data_);
  }

  v12 = 0;
LABEL_33:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

LABEL_39:
  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_276BAA1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a42);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

google::protobuf::UnknownFieldSet *sub_276BAA288(google::protobuf::UnknownFieldSet *a1)
{
  v2 = *a1;
  if (v2 != *(a1 + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(a1);
    v2 = *a1;
  }

  if (v2)
  {
    *(a1 + 1) = v2;
    operator delete(v2);
  }

  return a1;
}

void google::protobuf::TextFormat::Printer::PrintField(uint64_t a1, google::protobuf::Message *a2, google::protobuf::Reflection *a3, google::protobuf::FieldDescriptor *a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 6) != 1 || *(a4 + 15) != 3)
  {
    goto LABEL_12;
  }

  v9 = *(a4 + 6);
  if (v9)
  {
    v41 = a4;
    v42 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v44 = &v42;
      v45 = &v41;
      __p = &v44;
      std::__call_once(v9, &__p, sub_2769C149C);
    }
  }

  v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)];
  if (v10 == 9)
  {
    goto LABEL_12;
  }

  v11 = *(a4 + 6);
  if (v11)
  {
    v41 = a4;
    v42 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v44 = &v42;
      v45 = &v41;
      __p = &v44;
      std::__call_once(v11, &__p, sub_2769C149C);
    }

    v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)];
  }

  if (v10 != 10)
  {
    google::protobuf::TextFormat::Printer::PrintShortRepeatedField(a1, a2, a3, a4, a5);
  }

  else
  {
LABEL_12:
    if (*(a4 + 15) == 3)
    {
      v12 = google::protobuf::Reflection::FieldSize(a3, a2, a4);
    }

    else
    {
      v12 = ((google::protobuf::Reflection::HasField(a3, a2, a4) & 1) != 0 || *(*(*(a4 + 10) + 32) + 75) == 1);
    }

    google::protobuf::DynamicMessageFactory::DynamicMessageFactory(&v44);
    __p = 0;
    v37 = 0;
    v38 = 0;
    v13 = *(a4 + 6);
    if (v13)
    {
      v39 = a4;
      v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v42 = &v40;
        v43 = &v39;
        v41 = &v42;
        std::__call_once(v13, &v41, sub_2769C149C);
      }
    }

    if (*(a4 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a4))
    {
      LOBYTE(v34) = google::protobuf::internal::MapFieldPrinterHelper::SortMap(a2, a3, a4, &v44, &__p);
      HIDWORD(v34) = 1;
    }

    else
    {
      v34 = 0;
    }

    if (v12 >= 1)
    {
      v14 = 0;
      v15 = (a1 + 40);
      while (1)
      {
        if (*(a4 + 15) == 3)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0xFFFFFFFFLL;
        }

        google::protobuf::TextFormat::Printer::PrintFieldName(a1, a2, v16, v12, a3, a4, a5);
        v17 = *(a4 + 6);
        if (v17)
        {
          v39 = a4;
          v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v17, memory_order_acquire) != -1)
          {
            v42 = &v40;
            v43 = &v39;
            v41 = &v42;
            std::__call_once(v17, &v41, sub_2769C149C);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)] == 10)
        {
          break;
        }

        (*(*a5 + 40))(a5, ": ", 2);
        google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, a3, a4, v16);
        v28 = *a5 + 40;
        if (*(a1 + 4))
        {
          v29 = " ";
        }

        else
        {
          v29 = "\n";
        }

        (*(*a5 + 40))(a5, v29, 1);
LABEL_57:
        if (++v14 == v12)
        {
          goto LABEL_58;
        }
      }

      v18 = *v15;
      v19 = (a1 + 24);
      if (*v15)
      {
        v20 = (a1 + 40);
        do
        {
          v21 = v18[4];
          v22 = v21 >= a4;
          v23 = v21 < a4;
          if (v22)
          {
            v20 = v18;
          }

          v18 = v18[v23];
        }

        while (v18);
        v19 = (a1 + 24);
        if (v20 != v15)
        {
          v24 = v20[4];
          v25 = v20 + 5;
          if (v24 <= a4)
          {
            v19 = v25;
          }

          else
          {
            v19 = (a1 + 24);
          }
        }
      }

      v26 = *v19;
      if (*(a4 + 15) == 3)
      {
        if (HIDWORD(v34))
        {
          v27 = *(__p + v14);
LABEL_54:
          (*(*v26 + 112))(v26, v27, v16, v12, *(a1 + 4), a5);
          (*(*a5 + 16))(a5);
          if (((*(*v26 + 120))(v26, v27, v16, v12, *(a1 + 4), a5) & 1) == 0)
          {
            google::protobuf::TextFormat::Printer::Print(a1, v27, a5);
          }

          (*(*a5 + 24))(a5);
          (*(*v26 + 128))(v26, v27, v16, v12, *(a1 + 4), a5);
          goto LABEL_57;
        }

        RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(a3, a2, a4, v14);
      }

      else
      {
        RepeatedMessage = google::protobuf::Reflection::GetMessage(a3, a2, a4, 0);
      }

      v27 = RepeatedMessage;
      goto LABEL_54;
    }

LABEL_58:
    v31 = __p;
    if (v34)
    {
      v32 = v37;
      if (__p != v37)
      {
        do
        {
          if (*v31)
          {
            (*(**v31 + 8))(*v31);
          }

          ++v31;
        }

        while (v31 != v32);
        v31 = __p;
      }
    }

    if (v31)
    {
      v37 = v31;
      operator delete(v31);
    }

    google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&v44);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_276BAA8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a21);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::Printer::PrintFieldValueToString(int *a1, google::protobuf::Message *a2, google::protobuf::FieldDescriptor *a3, int a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 23) = 0;
  }

  google::protobuf::io::StringOutputStream::StringOutputStream(v17, a5);
  v9 = *a1;
  v12[0] = &unk_2885C90F8;
  v12[1] = v17;
  v12[2] = 0;
  v13 = 0;
  v14 = 1;
  v15 = v9;
  v16 = v9;
  (*(*a2 + 152))(a2);
  google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, v10, a3, a4, v12);
  return sub_276BB1B10(v12);
}

void sub_276BAA9FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276BB1B10(va);
  _Unwind_Resume(a1);
}

void google::protobuf::TextFormat::Printer::PrintFieldValue(uint64_t a1, google::protobuf::Message *a2, google::protobuf::Reflection *this, google::protobuf::FieldDescriptor *a4, int a5, char *a6)
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 40);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = a1 + 40;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a4;
    v16 = v14 < a4;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 != a1 + 40 && *(v13 + 32) <= a4)
  {
    v17 = (v13 + 40);
  }

  else
  {
LABEL_9:
    v17 = (a1 + 24);
  }

  v18 = *v17;
  v19 = *(a4 + 6);
  if (v19)
  {
    v48.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    *v56 = a4;
    if (atomic_load_explicit(v19, memory_order_acquire) != -1)
    {
      __src = &v48;
      v54 = v56;
      __p = &__src;
      std::__call_once(v19, &__p, sub_2769C149C);
    }
  }

  v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)];
  if (v20 <= 5)
  {
    if (v20 <= 2)
    {
      if (v20 == 1)
      {
        if (*(a4 + 15) == 3)
        {
          RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(this, a2, a4, a5);
        }

        else
        {
          RepeatedInt32 = google::protobuf::Reflection::GetInt32(this, a2, a4);
        }

        (*(*v18 + 24))(v18, RepeatedInt32, a6);
      }

      else if (v20 == 2)
      {
        if (*(a4 + 15) == 3)
        {
          RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(this, a2, a4, a5);
        }

        else
        {
          RepeatedInt64 = google::protobuf::Reflection::GetInt64(this, a2, a4);
        }

        (*(*v18 + 40))(v18, RepeatedInt64, a6);
      }
    }

    else if (v20 == 3)
    {
      if (*(a4 + 15) == 3)
      {
        RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(this, a2, a4, a5);
      }

      else
      {
        RepeatedUInt32 = google::protobuf::Reflection::GetUInt32(this, a2, a4);
      }

      (*(*v18 + 32))(v18, RepeatedUInt32, a6);
    }

    else if (v20 == 4)
    {
      if (*(a4 + 15) == 3)
      {
        RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(this, a2, a4, a5);
      }

      else
      {
        RepeatedUInt64 = google::protobuf::Reflection::GetUInt64(this, a2, a4);
      }

      (*(*v18 + 48))(v18, RepeatedUInt64, a6);
    }

    else
    {
      if (*(a4 + 15) == 3)
      {
        v21.n128_f64[0] = google::protobuf::Reflection::GetRepeatedDouble(this, a2, a4, a5);
      }

      else
      {
        v21.n128_f64[0] = google::protobuf::Reflection::GetDouble(this, a2, a4);
      }

      (*(*v18 + 64))(v18, a6, v21);
    }

    goto LABEL_91;
  }

  if (v20 <= 7)
  {
    if (v20 == 6)
    {
      if (*(a4 + 15) == 3)
      {
        v26.n128_f32[0] = google::protobuf::Reflection::GetRepeatedFloat(this, a2, a4, a5);
      }

      else
      {
        v26.n128_f32[0] = google::protobuf::Reflection::GetFloat(this, a2, a4);
      }

      (*(*v18 + 56))(v18, a6, v26);
    }

    else
    {
      if (*(a4 + 15) == 3)
      {
        RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(this, a2, a4, a5);
      }

      else
      {
        RepeatedBool = google::protobuf::Reflection::GetBool(this, a2, a4);
      }

      (*(*v18 + 16))(v18, RepeatedBool, a6);
    }

    goto LABEL_91;
  }

  if (v20 == 8)
  {
    if (*(a4 + 15) == 3)
    {
      RepeatedEnumValue = google::protobuf::Reflection::GetRepeatedEnumValue(this, a2, a4, a5);
    }

    else
    {
      RepeatedEnumValue = google::protobuf::Reflection::GetEnumValue(this, a2, a4);
    }

    v31 = RepeatedEnumValue;
    v32 = google::protobuf::FieldDescriptor::enum_type(a4);
    ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v32, v31);
    if (ValueByNumber)
    {
      (*(*v18 + 88))(v18, v31, *ValueByNumber, a6);
      goto LABEL_91;
    }

    __src = v55;
    v45 = google::protobuf::FastInt32ToBufferLeft(v31, v55, v34);
    v46 = v45 - v55;
    v54 = (v45 - v55);
    if ((v45 - v55) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2769DD7D8();
    }

    if (v46 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v50) = v45 - v55;
    if (v45 != v55)
    {
      memmove(&__p, __src, v46);
    }

    *(&__p + v46) = 0;
    (*(*v18 + 88))(v18, v31, &__p, a6);
    if (SHIBYTE(v50) < 0)
    {
      v44 = __p;
      goto LABEL_90;
    }
  }

  else
  {
    if (v20 != 9)
    {
      if (v20 == 10)
      {
        if (*(a4 + 15) == 3)
        {
          RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(this, a2, a4, a5);
        }

        else
        {
          RepeatedMessage = google::protobuf::Reflection::GetMessage(this, a2, a4, 0);
        }

        google::protobuf::TextFormat::Printer::Print(a1, RepeatedMessage, a6);
      }

      goto LABEL_91;
    }

    __src = 0;
    v54 = 0;
    v55[0] = 0;
    if (*(a4 + 15) == 3)
    {
      RepeatedStringReference = google::protobuf::Reflection::GetRepeatedStringReference(this, a2, a4, a5);
    }

    else
    {
      RepeatedStringReference = google::protobuf::Reflection::GetStringReference(this, a2, a4);
    }

    p_p = RepeatedStringReference;
    __p = 0;
    v50 = 0uLL;
    v36 = *(a1 + 16);
    if (v36 >= 1)
    {
      v37 = *(RepeatedStringReference + 23);
      if ((v37 & 0x8000000000000000) != 0)
      {
        v37 = *(RepeatedStringReference + 8);
      }

      if (v36 < v37)
      {
        std::string::basic_string(&v48, RepeatedStringReference, 0, v36, &v52);
        v38 = std::string::append(&v48, "...<truncated>...");
        v39 = v38->__r_.__value_.__r.__words[0];
        *v56 = v38->__r_.__value_.__l.__size_;
        *&v56[7] = *(&v38->__r_.__value_.__r.__words[1] + 7);
        v40 = HIBYTE(v38->__r_.__value_.__r.__words[2]);
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        *(&v50 + 7) = *&v56[7];
        __p = v39;
        *&v50 = *v56;
        HIBYTE(v50) = v40;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        p_p = &__p;
      }
    }

    v41 = *(a4 + 6);
    if (v41)
    {
      v51 = a4;
      v52 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v41, memory_order_acquire) != -1)
      {
        v48.__r_.__value_.__r.__words[0] = &v52;
        v48.__r_.__value_.__l.__size_ = &v51;
        *v56 = &v48;
        std::__call_once(v41, v56, sub_2769C149C);
      }
    }

    v42 = *v18;
    if (*(a4 + 14) == 9)
    {
      v43 = (v42 + 72);
    }

    else
    {
      v43 = (v42 + 80);
    }

    *(a4 + 14);
    (*v43)(v18, p_p, a6);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v55[0]) < 0)
    {
      v44 = __src;
LABEL_90:
      operator delete(v44);
    }
  }

LABEL_91:
  v47 = *MEMORY[0x277D85DE8];
}

void sub_276BAB1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

BOOL google::protobuf::internal::MapFieldPrinterHelper::SortMap(google::protobuf::Message *a1, google::protobuf::Reflection *this, const google::protobuf::FieldDescriptor *a3, uint64_t a4, uint64_t a5)
{
  v50[2] = *MEMORY[0x277D85DE8];
  MapData = google::protobuf::Reflection::GetMapData(this, a1, a3);
  IsRepeatedFieldValid = google::protobuf::internal::MapFieldBase::IsRepeatedFieldValid(MapData);
  if (IsRepeatedFieldValid)
  {
    RawRepeatedField = google::protobuf::Reflection::GetRawRepeatedField(this, a1, a3, 10, -1, 0);
    if (*(RawRepeatedField + 8) >= 1)
    {
      v12 = RawRepeatedField;
      v13 = 0;
      v14 = *(a5 + 8);
      do
      {
        v15 = *(*(v12 + 16) + 8 * v13 + 8);
        v16 = *(a5 + 16);
        if (v14 >= v16)
        {
          v17 = (v14 - *a5) >> 3;
          if ((v17 + 1) >> 61)
          {
            sub_2769BA860();
          }

          v18 = v16 - *a5;
          v19 = v18 >> 2;
          if (v18 >> 2 <= (v17 + 1))
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            sub_276B2A0B4(a5, v20);
          }

          v21 = (8 * v17);
          *v21 = v15;
          v14 = (8 * v17 + 8);
          v22 = *(a5 + 8) - *a5;
          v23 = v21 - v22;
          memcpy(v21 - v22, *a5, v22);
          v24 = *a5;
          *a5 = v23;
          *(a5 + 8) = v14;
          *(a5 + 16) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v14++ = v15;
        }

        *(a5 + 8) = v14;
        ++v13;
      }

      while (v13 < *(v12 + 8));
    }
  }

  else
  {
    v25 = google::protobuf::FieldDescriptor::message_type(a3);
    v26 = (*(*a4 + 16))(a4, v25);
    google::protobuf::Reflection::MapBegin(this, a1, a3, &v47);
    while (1)
    {
      google::protobuf::Reflection::MapEnd(this, a1, a3, v46);
      v27 = (*(*v48 + 48))(v48, &v47, v46);
      sub_276B7951C(v46);
      if (v27)
      {
        break;
      }

      v28 = (*(*v26 + 24))(v26);
      google::protobuf::internal::MapFieldPrinterHelper::CopyKey(v49, v28, *(v25 + 40));
      google::protobuf::internal::MapFieldPrinterHelper::CopyValue(v50, v28, *(v25 + 40) + 152);
      v30 = *(a5 + 8);
      v29 = *(a5 + 16);
      if (v30 >= v29)
      {
        v32 = (v30 - *a5) >> 3;
        if ((v32 + 1) >> 61)
        {
          sub_2769BA860();
        }

        v33 = v29 - *a5;
        v34 = v33 >> 2;
        if (v33 >> 2 <= (v32 + 1))
        {
          v34 = v32 + 1;
        }

        if (v33 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          sub_276B2A0B4(a5, v35);
        }

        v36 = (8 * v32);
        *v36 = v28;
        v31 = 8 * v32 + 8;
        v37 = *(a5 + 8) - *a5;
        v38 = v36 - v37;
        memcpy(v36 - v37, *a5, v37);
        v39 = *a5;
        *a5 = v38;
        *(a5 + 8) = v31;
        *(a5 + 16) = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v30 = v28;
        v31 = (v30 + 1);
      }

      *(a5 + 8) = v31;
      (*(*v48 + 152))(v48, &v47);
    }

    sub_276B7951C(&v47);
  }

  v40 = *(google::protobuf::FieldDescriptor::message_type(a3) + 40);
  v41 = *a5;
  v42 = *(a5 + 8);
  v47 = v40;
  sub_276BB34EC(v41, v42, &v47);
  v43 = *MEMORY[0x277D85DE8];
  return !IsRepeatedFieldValid;
}

void google::protobuf::internal::MapFieldPrinterHelper::CopyKey(unsigned int *a1, google::protobuf::Message *a2, uint64_t a3)
{
  (*(*a2 + 152))(a2);
  v7 = v6;
  v8 = *(a3 + 48);
  if (v8)
  {
    v21 = a3;
    v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v20[0].__r_.__value_.__r.__words[0] = &v22;
      v20[0].__r_.__value_.__l.__size_ = &v21;
      v23 = v20;
      std::__call_once(v8, &v23, sub_2769C149C);
    }
  }

  v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)];
  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1:
        v15 = sub_276B65FDC(a1);
        google::protobuf::Reflection::SetInt32(v7, a2, a3, v15);
        break;
      case 2:
        v16 = sub_276B65EE4(a1);
        google::protobuf::Reflection::SetInt64(v7, a2, a3, v16);
        break;
      case 3:
        v11 = sub_276B661CC(a1);
        google::protobuf::Reflection::SetUInt32(v7, a2, a3, v11);
        break;
    }
  }

  else
  {
    if (v9 > 0xA)
    {
      goto LABEL_16;
    }

    if (((1 << v9) & 0x560) != 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 2186);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "Not supported.");
      google::protobuf::internal::LogFinisher::operator=(&v23, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
      return;
    }

    if (v9 == 7)
    {
      v17 = sub_276B662C4(a1);
      google::protobuf::Reflection::SetBool(v7, a2, a3, v17);
      return;
    }

    if (v9 == 9)
    {
      v12 = sub_276B65DEC(a1);
      if (*(v12 + 23) < 0)
      {
        sub_276A07B90(__p, *v12, *(v12 + 8));
      }

      else
      {
        v13 = *v12;
        v19 = *(v12 + 16);
        *__p = v13;
      }

      google::protobuf::Reflection::SetString(v7, a2, a3, __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
LABEL_16:
      if (v9 == 4)
      {
        v14 = sub_276B660D4(a1);
        google::protobuf::Reflection::SetUInt64(v7, a2, a3, v14);
      }
    }
  }
}

void sub_276BAB858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::MapFieldPrinterHelper::CopyValue(unsigned __int8 **a1, google::protobuf::Message *a2, uint64_t a3)
{
  (*(*a2 + 152))(a2);
  v7 = v6;
  v8 = *(a3 + 48);
  if (v8)
  {
    v25 = a3;
    v26 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v28[0] = &v26;
      v28[1] = &v25;
      v27 = v28;
      std::__call_once(v8, &v27, sub_2769C149C);
    }
  }

  v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)];
  if (v9 > 5)
  {
    if (v9 <= 7)
    {
      if (v9 == 6)
      {
        v17 = sub_276B64B84(a1);
        google::protobuf::Reflection::SetFloat(v7, a2, a3, v17);
      }

      else
      {
        v15 = sub_276B64F84(a1);
        google::protobuf::Reflection::SetBool(v7, a2, a3, v15);
      }
    }

    else
    {
      switch(v9)
      {
        case 8:
          v19 = sub_276B6537C(a1);
          google::protobuf::Reflection::SetEnumValue(v7, a2, a3, v19);
          break;
        case 9:
          v21 = sub_276B65184(a1);
          if (*(v21 + 23) < 0)
          {
            sub_276A07B90(__p, *v21, *(v21 + 8));
          }

          else
          {
            v22 = *v21;
            v24 = *(v21 + 16);
            *__p = v22;
          }

          google::protobuf::Reflection::SetString(v7, a2, a3, __p);
          if (SHIBYTE(v24) < 0)
          {
            operator delete(__p[0]);
          }

          break;
        case 10:
          v11 = sub_276B65570(a1);
          v12 = (*(*v11 + 24))(v11);
          v13 = sub_276B65570(a1);
          (*(*v12 + 112))(v12, v13);
          google::protobuf::Reflection::SetAllocatedMessage(v7, a2, v12, a3);
          break;
      }
    }
  }

  else if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v16 = sub_276B6438C(a1);
      google::protobuf::Reflection::SetInt32(v7, a2, a3, v16);
    }

    else if (v9 == 2)
    {
      v14 = sub_276B64588(a1);
      google::protobuf::Reflection::SetInt64(v7, a2, a3, v14);
    }
  }

  else if (v9 == 3)
  {
    v18 = sub_276B64784(a1);
    google::protobuf::Reflection::SetUInt32(v7, a2, a3, v18);
  }

  else if (v9 == 4)
  {
    v20 = sub_276B64980(a1);
    google::protobuf::Reflection::SetUInt64(v7, a2, a3, v20);
  }

  else
  {
    v10 = sub_276B64D88(a1);
    google::protobuf::Reflection::SetDouble(v7, a2, a3, v10);
  }
}

void sub_276BABB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::TextFormat::Printer::PrintShortRepeatedField(uint64_t a1, const google::protobuf::Message *a2, google::protobuf::Reflection *this, google::protobuf::FieldDescriptor *a4, uint64_t a5)
{
  v10 = google::protobuf::Reflection::FieldSize(this, a2, a4);
  v11 = v10;
  google::protobuf::TextFormat::Printer::PrintFieldName(a1, a2, 0xFFFFFFFFLL, v10, this, a4, a5);
  (*(*a5 + 40))(a5, ": [", 3);
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if (i)
      {
        (*(*a5 + 40))(a5, ", ", 2);
      }

      google::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, this, a4, i);
    }
  }

  v13 = *(*a5 + 40);
  if (*(a1 + 4))
  {
    v14 = "] ";
  }

  else
  {
    v14 = "]\n";
  }

  return v13(a5, v14, 2);
}

void google::protobuf::TextFormat::Printer::PrintFieldName(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 5) == 1)
  {
    v8 = *(a6 + 68);
    __src = v26;
    v9 = google::protobuf::FastInt32ToBufferLeft(v8, v26, a3);
    v10 = v9 - v26;
    v25 = v9 - v26;
    if ((v9 - v26) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2769DD7D8();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v23 = v9 - v26;
    if (v9 != v26)
    {
      memmove(__p, __src, v10);
    }

    *(__p + v10) = 0;
    if ((v23 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v20 = v23;
    }

    else
    {
      v20 = __p[1];
    }

    (*(*a7 + 40))(a7, v19, v20);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = a1 + 40;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= a6;
      v15 = v13 < a6;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 != a1 + 40 && *(v12 + 32) <= a6)
    {
      v16 = v12 + 40;
    }

    else
    {
LABEL_14:
      v16 = a1 + 24;
    }

    v17 = *(**v16 + 96);
    v18 = *MEMORY[0x277D85DE8];

    v17();
  }
}

void sub_276BABF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BABFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B2745C(va);
  _Unwind_Resume(a1);
}

void sub_276BAC09C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B2745C(va);
  _Unwind_Resume(a1);
}

void sub_276BAC150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B2745C(va);
  _Unwind_Resume(a1);
}

void sub_276BAC204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B2745C(va);
  _Unwind_Resume(a1);
}

void sub_276BAC2C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276B2745C(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::TextFormat::ParseFieldValueFromString(_DWORD *a1, uint64_t a2, google::protobuf::Message *a3)
{
  memset(v4, 0, sizeof(v4));
  v5 = 0x7FFFFFFF;
  return google::protobuf::TextFormat::Parser::ParseFieldValueFromString(v4, a1, a2, a3);
}

BOOL sub_276BAC31C(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 1;
    }

    return memcmp(a1, __s, v4) != 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_276B28120();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) != 0;
  }

  return 1;
}

uint64_t sub_276BAC3A0(uint64_t a1, uint64_t a2, ZeroCopyInputStream *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, int a15)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = &unk_2885C8EF8;
  *(a1 + 32) = a1;
  google::protobuf::io::Tokenizer::Tokenizer((a1 + 40), a3, (a1 + 24));
  *(a1 + 216) = a2;
  *(a1 + 224) = a7;
  *(a1 + 228) = a8;
  *(a1 + 229) = a9;
  *(a1 + 230) = a10;
  *(a1 + 231) = a11;
  *(a1 + 232) = a12;
  *(a1 + 233) = a14;
  *(a1 + 236) = a15;
  *(a1 + 240) = a15;
  *(a1 + 244) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = 1;
  if (a13)
  {
    *(a1 + 212) = 256;
  }

  google::protobuf::io::Tokenizer::Next((a1 + 40));
  return a1;
}

void sub_276BAC47C(_Unwind_Exception *a1)
{
  google::protobuf::io::Tokenizer::~Tokenizer((v2 + 40));
  google::protobuf::io::ErrorCollector::~ErrorCollector(v1);
  _Unwind_Resume(a1);
}

void sub_276BAC4A4(google::protobuf::io::ErrorCollector *a1)
{
  google::protobuf::io::ErrorCollector::~ErrorCollector(a1);

  JUMPOUT(0x277C9F670);
}

void sub_276BAC4EC(uint64_t *a1, int a2, int a3, const std::string::value_type *a4)
{
  v8 = *a1;
  if (v8)
  {
    v9 = *(*v8 + 24);

    v9();
  }

  else
  {
    if (a2 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 338);
      v18 = google::protobuf::internal::LogMessage::operator<<(v20, "Warning parsing text-format ");
      v15 = google::protobuf::internal::LogMessage::operator<<(v18, *(a1[27] + 8));
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(v20, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 334);
      v10 = google::protobuf::internal::LogMessage::operator<<(v20, "Warning parsing text-format ");
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1[27] + 8));
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, ": ");
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2 + 1);
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, ":");
      v15 = google::protobuf::internal::LogMessage::operator<<(v14, a3 + 1);
    }

    v16 = google::protobuf::internal::LogMessage::operator<<(v15, ": ");
    v17 = google::protobuf::internal::LogMessage::operator<<(v16, a4);
    google::protobuf::internal::LogFinisher::operator=(&v19, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }
}

void sub_276BAC650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276BAC670(uint64_t a1, google::protobuf::Message *a2)
{
  (*(*a2 + 152))(a2);
  v5 = v4;
  v6 = (*(*a2 + 152))(a2);
  memset(&v143, 0, sizeof(v143));
  v7 = *(a1 + 72);
  v141 = 0;
  v142 = 0;
  if (google::protobuf::internal::GetAnyFieldDescriptors(a2, &v142, &v141, v8))
  {
    sub_276A4D46C(__p, "[");
    v9 = sub_276BADD6C(a1, __p);
    v10 = v9;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v10)
      {
LABEL_4:
        memset(__p, 0, 24);
        memset(&v140, 0, sizeof(v140));
        if (sub_276BADE00(a1, __p, &v140))
        {
          sub_276A4D46C(&v139, "]");
          v11 = sub_276BADFA0(a1, &v139);
          v12 = v11;
          if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v139.__r_.__value_.__l.__data_);
            if (v12)
            {
LABEL_7:
              sub_276A4D46C(&v139, ":");
              sub_276BADD6C(a1, &v139);
              if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v139.__r_.__value_.__l.__data_);
              }

              memset(&v139, 0, sizeof(v139));
              v13 = *(a1 + 8);
              if (v13)
              {
                v14 = (*(*v13 + 32))(v13, a2, &v140, __p);
              }

              else
              {
                v14 = sub_276BA64D4(a2, &v140.__r_.__value_.__l.__data_, __p);
              }

              if (v14)
              {
                if (!sub_276BAE18C(a1, v14, &v139))
                {
                  goto LABEL_70;
                }

                if (*(a1 + 224) != 1 || (*(v142 + 15) == 3 || (google::protobuf::Reflection::HasField(v5, a2, v142) & 1) == 0) && (*(v141 + 15) == 3 || !google::protobuf::Reflection::HasField(v5, a2, v141)))
                {
                  v54 = v142;
                  sub_276B50A78(&v140.__r_.__value_.__l.__data_, &__p[0].__r_.__value_.__l.__data_, v134);
                  google::protobuf::Reflection::SetString(v5, a2, v54, v134);
                  if (v135 < 0)
                  {
                    operator delete(v134[0]);
                  }

                  v55 = v141;
                  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_276A07B90(&__dst, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    __dst = v139;
                  }

                  google::protobuf::Reflection::SetString(v5, a2, v55, &__dst);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  v26 = 1;
                  goto LABEL_297;
                }

                sub_276A4D46C(&v138, "Non-repeated Any specified multiple times.");
                sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &v138);
                if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_70:
                  v26 = 0;
LABEL_297:
                  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v139.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_33;
                }

                v34 = v138.__r_.__value_.__r.__words[0];
              }

              else
              {
                std::operator+<char>();
                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v35 = __p;
                }

                else
                {
                  v35 = __p[0].__r_.__value_.__r.__words[0];
                }

                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __p[0].__r_.__value_.__l.__size_;
                }

                v37 = std::string::append(&v136, v35, size);
                v38 = *&v37->__r_.__value_.__l.__data_;
                v137.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
                *&v137.__r_.__value_.__l.__data_ = v38;
                v37->__r_.__value_.__l.__size_ = 0;
                v37->__r_.__value_.__r.__words[2] = 0;
                v37->__r_.__value_.__r.__words[0] = 0;
                v39 = std::string::append(&v137, " stored in google.protobuf.Any.");
                v40 = *&v39->__r_.__value_.__l.__data_;
                v138.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
                *&v138.__r_.__value_.__l.__data_ = v40;
                v39->__r_.__value_.__l.__size_ = 0;
                v39->__r_.__value_.__r.__words[2] = 0;
                v39->__r_.__value_.__r.__words[0] = 0;
                sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &v138);
                if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v138.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v137.__r_.__value_.__l.__data_);
                }

                if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_70;
                }

                v34 = v136.__r_.__value_.__r.__words[0];
              }

              operator delete(v34);
              goto LABEL_70;
            }
          }

          else if (v11)
          {
            goto LABEL_7;
          }
        }

        v26 = 0;
LABEL_33:
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v140.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        goto LABEL_280;
      }
    }

    else if (v9)
    {
      goto LABEL_4;
    }
  }

  sub_276A4D46C(__p, "[");
  v15 = sub_276BADD6C(a1, __p);
  v16 = v15;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_19:
    if (!sub_276BAE578(a1, &v143))
    {
      goto LABEL_279;
    }

    LODWORD(v136.__r_.__value_.__l.__data_) = 0;
    if (*(a1 + 232) == 1 && google::protobuf::safe_strto32(&v143, &v136))
    {
      if (google::protobuf::Descriptor::FindExtensionRangeContainingNumber(v6, v136.__r_.__value_.__l.__data_))
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          ExtensionByNumber = (*(*v20 + 24))(v20, v6, LODWORD(v136.__r_.__value_.__l.__data_));
        }

        else
        {
          ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(*(*(v6 + 16) + 16), v6, v136.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (google::protobuf::Descriptor::FindReservedRangeContainingNumber(v6, v136.__r_.__value_.__l.__data_))
        {
          v53 = 1;
          goto LABEL_178;
        }

        ExtensionByNumber = google::protobuf::Descriptor::FindFieldByNumber(v6, v136.__r_.__value_.__l.__data_);
      }

      FieldByName = ExtensionByNumber;
      v53 = 0;
    }

    else
    {
      FieldByName = google::protobuf::Descriptor::FindFieldByName(v6, &v143, v19);
      if (FieldByName)
      {
        goto LABEL_307;
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_276A07B90(__p, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
      }

      else
      {
        __p[0] = v143;
      }

      v41 = (__p + HIBYTE(__p[0].__r_.__value_.__r.__words[2]));
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = __p;
      }

      else
      {
        v41 = (__p[0].__r_.__value_.__r.__words[0] + __p[0].__r_.__value_.__l.__size_);
        v42 = __p[0].__r_.__value_.__r.__words[0];
      }

      while (v42 != v41)
      {
        v43 = v42->__r_.__value_.__s.__data_[0];
        if ((v43 - 65) <= 0x19)
        {
          v42->__r_.__value_.__s.__data_[0] = v43 | 0x20;
        }

        v42 = (v42 + 1);
      }

      v44 = google::protobuf::Descriptor::FindFieldByName(v6, __p, v22);
      FieldByName = v44;
      if (v44)
      {
        v46 = *(v44 + 48);
        if (v46)
        {
          v138.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v137.__r_.__value_.__r.__words[0] = FieldByName;
          if (atomic_load_explicit(v46, memory_order_acquire) != -1)
          {
            v140.__r_.__value_.__r.__words[0] = &v138;
            v140.__r_.__value_.__l.__size_ = &v137;
            v139.__r_.__value_.__r.__words[0] = &v140;
            std::__call_once(v46, &v139, sub_2769C149C);
          }
        }

        if (*(FieldByName + 56) != 10)
        {
          FieldByName = 0;
        }
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (FieldByName)
      {
LABEL_307:
        v47 = *(FieldByName + 48);
        if (v47)
        {
          v139.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v138.__r_.__value_.__r.__words[0] = FieldByName;
          if (atomic_load_explicit(v47, memory_order_acquire) != -1)
          {
            __p[0].__r_.__value_.__r.__words[0] = &v139;
            __p[0].__r_.__value_.__l.__size_ = &v138;
            v140.__r_.__value_.__r.__words[0] = __p;
            std::__call_once(v47, &v140, sub_2769C149C);
          }
        }

        if (*(FieldByName + 56) != 10)
        {
          goto LABEL_171;
        }

        v48 = google::protobuf::FieldDescriptor::message_type(FieldByName);
        v49 = *(*v48 + 23);
        if (v49 >= 0)
        {
          v45 = *(*v48 + 23);
        }

        else
        {
          v45 = *(*v48 + 8);
        }

        v50 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = v143.__r_.__value_.__l.__size_;
        }

        if (v45 == v50)
        {
          v51 = v49 >= 0 ? *v48 : **v48;
          v52 = (v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v143 : v143.__r_.__value_.__r.__words[0];
          if (!memcmp(v51, v52, v45))
          {
            goto LABEL_171;
          }
        }
      }

      if (*(a1 + 228) == 1)
      {
        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_276A07B90(__p, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
        }

        else
        {
          __p[0] = v143;
        }

        v56 = (__p + HIBYTE(__p[0].__r_.__value_.__r.__words[2]));
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = __p;
        }

        else
        {
          v56 = (__p[0].__r_.__value_.__r.__words[0] + __p[0].__r_.__value_.__l.__size_);
          v57 = __p[0].__r_.__value_.__r.__words[0];
        }

        while (v57 != v56)
        {
          v58 = v57->__r_.__value_.__s.__data_[0];
          if ((v58 - 65) <= 0x19)
          {
            v57->__r_.__value_.__s.__data_[0] = v58 | 0x20;
          }

          v57 = (v57 + 1);
        }

        FieldByName = google::protobuf::Descriptor::FindFieldByLowercaseName(v6, __p, v45);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (FieldByName)
        {
          goto LABEL_171;
        }
      }

      v131 = v5;
      v59 = *(v6 + 136);
      if (v59 < 1)
      {
        FieldByName = 0;
        v53 = 0;
        v5 = v131;
      }

      else
      {
        v130 = v7;
        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v143.__r_.__value_.__l.__size_;
        }

        v61 = *(v6 + 96);
        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v143;
        }

        else
        {
          v62 = v143.__r_.__value_.__r.__words[0];
        }

        v63 = 1;
        v64 = *(v6 + 136);
        v53 = 1;
        do
        {
          v65 = *(*v61 + 23);
          v66 = v65;
          if ((v65 & 0x80u) != 0)
          {
            v65 = *(*v61 + 8);
          }

          if (v60 == v65)
          {
            v67 = v66 >= 0 ? *v61 : **v61;
            if (!memcmp(v62, v67, v60))
            {
              break;
            }
          }

          v53 = v63++ < v59;
          v61 += 8;
          --v64;
        }

        while (v64);
        FieldByName = 0;
        v7 = v130;
        v5 = v131;
      }
    }

    if (!FieldByName && !v53)
    {
      if (*(a1 + 229))
      {
        v74 = *(v6 + 8);
        std::operator+<char>();
        v75 = std::string::append(&v138, " has no field named ");
        v76 = *&v75->__r_.__value_.__l.__data_;
        v139.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
        *&v139.__r_.__value_.__l.__data_ = v76;
        v75->__r_.__value_.__l.__size_ = 0;
        v75->__r_.__value_.__r.__words[2] = 0;
        v75->__r_.__value_.__r.__words[0] = 0;
        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v143;
        }

        else
        {
          v32 = v143.__r_.__value_.__r.__words[0];
        }

        if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = v143.__r_.__value_.__l.__size_;
        }

        goto LABEL_161;
      }

      v120 = *(v6 + 8);
      std::operator+<char>();
      v121 = std::string::append(&v138, " has no field named ");
      v122 = *&v121->__r_.__value_.__l.__data_;
      v139.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
      *&v139.__r_.__value_.__l.__data_ = v122;
      v121->__r_.__value_.__l.__size_ = 0;
      v121->__r_.__value_.__r.__words[2] = 0;
      v121->__r_.__value_.__r.__words[0] = 0;
      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = &v143;
      }

      else
      {
        v72 = v143.__r_.__value_.__r.__words[0];
      }

      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = v143.__r_.__value_.__l.__size_;
      }

      goto LABEL_270;
    }

    if (FieldByName)
    {
      goto LABEL_171;
    }

LABEL_178:
    if ((*(a1 + 229) & 1) == 0 && ((*(a1 + 230) | v53) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 516);
      v84 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: allow_unknown_field_ || allow_unknown_extension_ || reserved_field: ");
      google::protobuf::internal::LogFinisher::operator=(&v140, &v84->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    sub_276A4D46C(__p, ":");
    if (sub_276BADD6C(a1, __p))
    {
      sub_276A4D46C(&v140, "{");
      if (sub_276BAE64C(a1, &v140))
      {
        v87 = 0;
      }

      else
      {
        sub_276A4D46C(&v139, "<");
        v87 = !sub_276BAE64C(a1, &v139);
        if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v139.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v87 = 0;
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v87)
    {
      v128 = sub_276BAE6C0(a1, v85, v86);
    }

    else
    {
      v128 = sub_276BAEB8C(a1, v85, v86);
    }

    v26 = v128;
    goto LABEL_280;
  }

  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((sub_276BAE470(a1, &v143) & 1) == 0)
  {
    goto LABEL_279;
  }

  sub_276A4D46C(__p, "]");
  v17 = sub_276BADFA0(a1, __p);
  v18 = v17;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if ((v18 & 1) == 0)
    {
      goto LABEL_279;
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_279;
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    ExtensionByPrintableName = (*(*v24 + 16))(v24, a2, &v143);
  }

  else
  {
    v27 = (*(*a2 + 152))(a2);
    ExtensionByPrintableName = google::protobuf::DescriptorPool::FindExtensionByPrintableName(*(*(v27 + 16) + 16), v27, &v143);
  }

  FieldByName = ExtensionByPrintableName;
  if (!ExtensionByPrintableName)
  {
    if (*(a1 + 229) & 1) != 0 || (*(a1 + 230))
    {
      std::operator+<char>();
      v28 = std::string::append(&v138, " which is not defined or is not an extension of ");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v139.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v139.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = *(v6 + 8);
      v31 = *(v30 + 23);
      if (v31 >= 0)
      {
        v32 = *(v6 + 8);
      }

      else
      {
        v32 = *v30;
      }

      if (v31 >= 0)
      {
        v33 = *(v30 + 23);
      }

      else
      {
        v33 = *(v30 + 8);
      }

LABEL_161:
      v77 = std::string::append(&v139, v32, v33);
      v78 = *&v77->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      v79 = std::string::append(&v140, ".");
      v80 = *&v79->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      sub_276BAC4EC(a1, *(a1 + 72), *(a1 + 76), __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      v53 = 0;
      goto LABEL_178;
    }

    std::operator+<char>();
    v68 = std::string::append(&v138, " is not defined or is not an extension of ");
    v69 = *&v68->__r_.__value_.__l.__data_;
    v139.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
    *&v139.__r_.__value_.__l.__data_ = v69;
    v68->__r_.__value_.__l.__size_ = 0;
    v68->__r_.__value_.__r.__words[2] = 0;
    v68->__r_.__value_.__r.__words[0] = 0;
    v70 = *(v6 + 8);
    v71 = *(v70 + 23);
    if (v71 >= 0)
    {
      v72 = *(v6 + 8);
    }

    else
    {
      v72 = *v70;
    }

    if (v71 >= 0)
    {
      v73 = *(v70 + 23);
    }

    else
    {
      v73 = *(v70 + 8);
    }

LABEL_270:
    v123 = std::string::append(&v139, v72, v73);
    v124 = *&v123->__r_.__value_.__l.__data_;
    v140.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
    *&v140.__r_.__value_.__l.__data_ = v124;
    v123->__r_.__value_.__l.__size_ = 0;
    v123->__r_.__value_.__r.__words[2] = 0;
    v123->__r_.__value_.__r.__words[0] = 0;
    v125 = std::string::append(&v140, ".");
    v126 = *&v125->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v126;
    v125->__r_.__value_.__l.__size_ = 0;
    v125->__r_.__value_.__r.__words[2] = 0;
    v125->__r_.__value_.__r.__words[0] = 0;
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v139.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

    v83 = v138.__r_.__value_.__r.__words[0];
    goto LABEL_278;
  }

LABEL_171:
  if (*(a1 + 224) == 1)
  {
    if (*(FieldByName + 60) != 3 && google::protobuf::Reflection::HasField(v5, a2, FieldByName))
    {
      std::operator+<char>();
      v81 = std::string::append(&v140, " is specified multiple times.");
      v82 = *&v81->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_279;
      }

      v83 = v140.__r_.__value_.__r.__words[0];
      goto LABEL_278;
    }

    v88 = *(FieldByName + 88);
    if (v88 && google::protobuf::Reflection::HasOneof(v5, a2, *(FieldByName + 88)))
    {
      OneofFieldDescriptor = google::protobuf::Reflection::GetOneofFieldDescriptor(v5, a2, v88);
      std::operator+<char>();
      v90 = std::string::append(&v136, " is specified along with field ");
      v91 = *&v90->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = v91;
      v90->__r_.__value_.__l.__size_ = 0;
      v90->__r_.__value_.__r.__words[2] = 0;
      v90->__r_.__value_.__r.__words[0] = 0;
      v92 = *(*OneofFieldDescriptor + 23);
      if (v92 >= 0)
      {
        v93 = *OneofFieldDescriptor;
      }

      else
      {
        v93 = **OneofFieldDescriptor;
      }

      if (v92 >= 0)
      {
        v94 = *(*OneofFieldDescriptor + 23);
      }

      else
      {
        v94 = (*OneofFieldDescriptor)[1];
      }

      v95 = std::string::append(&v137, v93, v94);
      v96 = *&v95->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = v96;
      v95->__r_.__value_.__l.__size_ = 0;
      v95->__r_.__value_.__r.__words[2] = 0;
      v95->__r_.__value_.__r.__words[0] = 0;
      v97 = std::string::append(&v138, ", another member of oneof ");
      v98 = *&v97->__r_.__value_.__l.__data_;
      v139.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
      *&v139.__r_.__value_.__l.__data_ = v98;
      v97->__r_.__value_.__l.__size_ = 0;
      v97->__r_.__value_.__r.__words[2] = 0;
      v97->__r_.__value_.__r.__words[0] = 0;
      v99 = (*v88)[23];
      if (v99 >= 0)
      {
        v100 = *v88;
      }

      else
      {
        v100 = **v88;
      }

      if (v99 >= 0)
      {
        v101 = *(*v88 + 23);
      }

      else
      {
        v101 = *(*v88 + 1);
      }

      v102 = std::string::append(&v139, v100, v101);
      v103 = *&v102->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v103;
      v102->__r_.__value_.__l.__size_ = 0;
      v102->__r_.__value_.__r.__words[2] = 0;
      v102->__r_.__value_.__r.__words[0] = 0;
      v104 = std::string::append(&v140, ".");
      v105 = *&v104->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v105;
      v104->__r_.__value_.__l.__size_ = 0;
      v104->__r_.__value_.__r.__words[2] = 0;
      v104->__r_.__value_.__r.__words[0] = 0;
      sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_279;
      }

      v83 = v136.__r_.__value_.__r.__words[0];
LABEL_278:
      operator delete(v83);
      goto LABEL_279;
    }
  }

  v106 = *(FieldByName + 48);
  if (v106)
  {
    v139.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v138.__r_.__value_.__r.__words[0] = FieldByName;
    if (atomic_load_explicit(v106, memory_order_acquire) != -1)
    {
      __p[0].__r_.__value_.__r.__words[0] = &v139;
      __p[0].__r_.__value_.__l.__size_ = &v138;
      v140.__r_.__value_.__r.__words[0] = __p;
      std::__call_once(v106, &v140, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)] == 10)
  {
    sub_276A4D46C(__p, ":");
    v107 = sub_276BADD6C(a1, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v107 && *(*(FieldByName + 120) + 79) == 1 && *(a1 + 40) == 5)
    {
      memset(__p, 0, 24);
      v108 = sub_276BAEDAC(a1, __p);
      if (v108)
      {
        v109 = *(a1 + 8);
        if (v109)
        {
          v110 = (*(*v109 + 40))(v109, FieldByName);
        }

        else
        {
          v110 = 0;
        }

        v129 = google::protobuf::Reflection::MutableMessage(v5, a2, FieldByName, v110);
        google::protobuf::MessageLite::ParseFromString(v129, __p);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (!v108)
      {
        goto LABEL_279;
      }

      goto LABEL_251;
    }
  }

  else
  {
    sub_276A4D46C(__p, ":");
    v111 = sub_276BADFA0(a1, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if ((v111 & 1) == 0)
    {
      goto LABEL_279;
    }
  }

  if (*(FieldByName + 60) == 3)
  {
    sub_276A4D46C(__p, "[");
    v112 = sub_276BADD6C(a1, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v112)
    {
      sub_276A4D46C(__p, "]");
      v113 = sub_276BADD6C(a1, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if ((v113 & 1) == 0)
      {
        while (1)
        {
          v114 = *(FieldByName + 48);
          if (v114)
          {
            v139.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            v138.__r_.__value_.__r.__words[0] = FieldByName;
            if (atomic_load_explicit(v114, memory_order_acquire) != -1)
            {
              __p[0].__r_.__value_.__r.__words[0] = &v139;
              __p[0].__r_.__value_.__l.__size_ = &v138;
              v140.__r_.__value_.__r.__words[0] = __p;
              std::__call_once(v114, &v140, sub_2769C149C);
            }
          }

          if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 56)] == 10)
          {
            if ((sub_276BAEE90(a1, a2, v5, FieldByName) & 1) == 0)
            {
              goto LABEL_279;
            }
          }

          else if (!sub_276BAF174(a1, a2, v5, FieldByName))
          {
            goto LABEL_279;
          }

          sub_276A4D46C(__p, "]");
          v115 = sub_276BADD6C(a1, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (v115)
          {
            break;
          }

          sub_276A4D46C(__p, ",");
          v116 = sub_276BADFA0(a1, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v26 = 0;
          if ((v116 & 1) == 0)
          {
            goto LABEL_280;
          }
        }
      }

      goto LABEL_251;
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[sub_276B0C1A4(FieldByName)] == 10)
  {
    if ((sub_276BAEE90(a1, a2, v5, FieldByName) & 1) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_251;
  }

  if (!sub_276BAF174(a1, a2, v5, FieldByName))
  {
LABEL_279:
    v26 = 0;
    goto LABEL_280;
  }

LABEL_251:
  sub_276A4D46C(__p, ";");
  if ((sub_276BADD6C(a1, __p) & 1) == 0)
  {
    sub_276A4D46C(&v140, ",");
    sub_276BADD6C(a1, &v140);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (*(*(FieldByName + 120) + 78) == 1)
  {
    std::operator+<char>();
    v117 = std::string::append(&v140, "");
    v118 = *&v117->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v118;
    v117->__r_.__value_.__l.__size_ = 0;
    v117->__r_.__value_.__r.__words[2] = 0;
    v117->__r_.__value_.__r.__words[0] = 0;
    sub_276BAC4EC(a1, *(a1 + 72), *(a1 + 76), __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }
  }

  v119 = *(a1 + 16);
  if (v119)
  {
    google::protobuf::TextFormat::ParseInfoTree::RecordLocation(v119, FieldByName, v7);
  }

  v26 = 1;
LABEL_280:
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  return v26;
}

void sub_276BADA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (*(v51 - 97) < 0)
  {
    operator delete(*(v51 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BADD6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 48);
  }

  else
  {
    v7 = *(a1 + 48);
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v7, a2, v3))
  {
    return 0;
  }

  google::protobuf::io::Tokenizer::Next((a1 + 40));
  return 1;
}

uint64_t sub_276BADE00(uint64_t a1, std::string *a2, std::string *this)
{
  result = sub_276BAE578(a1, this);
  if (result)
  {
    while (1)
    {
      sub_276A4D46C(&__p, ".");
      v7 = sub_276BADD6C(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v7)
      {
        break;
      }

      memset(&__p, 0, sizeof(__p));
      v8 = sub_276BAE578(a1, &__p);
      if (v8)
      {
        std::operator+<char>();
        if ((v14 & 0x80u) == 0)
        {
          v9 = v13;
        }

        else
        {
          v9 = v13[0];
        }

        if ((v14 & 0x80u) == 0)
        {
          v10 = v14;
        }

        else
        {
          v10 = v13[1];
        }

        std::string::append(this, v9, v10);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    sub_276A4D46C(&__p, "/");
    v11 = sub_276BADFA0(a1, &__p);
    v12 = v11;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v12)
      {
        goto LABEL_21;
      }
    }

    else if (v11)
    {
LABEL_21:
      std::string::append(this, "/");
      return sub_276BAE470(a1, a2);
    }

    return 0;
  }

  return result;
}

void sub_276BADF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BADFA0(uint64_t a1, void *a2)
{
  v3 = (a1 + 48);
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    goto LABEL_13;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 48);
  }

  else
  {
    v8 = *v3;
  }

  v9 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(v8, a2, v5))
  {
    google::protobuf::io::Tokenizer::Next((a1 + 40));
    return 1;
  }

  else
  {
LABEL_13:
    std::operator+<char>();
    v10 = std::string::append(&v20, ", found ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = *(a1 + 71);
    if (v12 >= 0)
    {
      v13 = v3;
    }

    else
    {
      v13 = *(a1 + 48);
    }

    if (v12 >= 0)
    {
      v14 = *(a1 + 71);
    }

    else
    {
      v14 = *(a1 + 56);
    }

    v15 = std::string::append(&v21, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v22, ".");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v24 = v17->__r_.__value_.__r.__words[2];
    v23 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &v23);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    return 0;
  }
}

void sub_276BAE128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BAE18C(uint64_t a1, const google::protobuf::Descriptor *a2, std::string *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  google::protobuf::DynamicMessageFactory::DynamicMessageFactory(v23);
  Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(v23, a2);
  if (!Prototype)
  {
    v8 = 0;
    goto LABEL_25;
  }

  v7 = (*(*Prototype + 24))(Prototype);
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  if ((sub_276BAFD90(a1, v21) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (SHIBYTE(v22) < 0)
  {
    sub_276A07B90(__p, v21[0], v21[1]);
  }

  else
  {
    *__p = *v21;
    v20 = v22;
  }

  v9 = sub_276BAFE7C(a1, v7, __p);
  v10 = v9;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
    if ((v10 & 1) == 0)
    {
LABEL_20:
      v8 = 0;
      goto LABEL_21;
    }
  }

  else if ((v9 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(a1 + 233) == 1)
  {
    google::protobuf::MessageLite::AppendPartialToString(v7, a3);
  }

  else
  {
    if (((*(*v7 + 48))(v7) & 1) == 0)
    {
      v11 = *(a2 + 1);
      std::operator+<char>();
      v12 = std::string::append(&v16, " stored in google.protobuf.Any has missing required fields");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v18 = v12->__r_.__value_.__r.__words[2];
      *v17 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), v17);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      goto LABEL_20;
    }

    google::protobuf::MessageLite::AppendToString(v7, a3);
  }

  v8 = 1;
LABEL_21:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_25:
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(v23);
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_276BAE3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_276BAE470(uint64_t a1, std::string *a2)
{
  result = sub_276BAE578(a1, a2);
  if (result)
  {
    while (1)
    {
      sub_276A4D46C(&__p, ".");
      v5 = sub_276BADD6C(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v5)
      {
        break;
      }

      memset(&__p, 0, sizeof(__p));
      v6 = sub_276BAE578(a1, &__p);
      if (v6)
      {
        std::string::append(a2, ".");
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

        std::string::append(a2, p_p, size);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v6 & 1) == 0)
        {
          return v5 ^ 1u;
        }
      }

      else if ((v6 & 1) == 0)
      {
        return v5 ^ 1u;
      }
    }

    return v5 ^ 1u;
  }

  return result;
}

void sub_276BAE558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BAE578(uint64_t a1, std::string *this)
{
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    goto LABEL_10;
  }

  if (*(a1 + 232) & 1) != 0 || (*(a1 + 229))
  {
    if (v3 != 3)
    {
      goto LABEL_5;
    }

LABEL_10:
    std::string::operator=(this, (a1 + 48));
    google::protobuf::io::Tokenizer::Next(v4);
    return 1;
  }

  if (v3 == 3 && (*(a1 + 230) & 1) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  std::operator+<char>();
  sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_276BAE630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_276BAE64C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 71);
  if (v2 >= 0)
  {
    v3 = *(a1 + 71);
  }

  else
  {
    v3 = *(a1 + 56);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v6 = (a1 + 48);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v9 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(v6, a2, v3) == 0;
}

uint64_t sub_276BAE6C0(uint64_t a1, uint64_t a2, char *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 240);
  *(a1 + 240) = v4 - 1;
  if (v4 <= 0)
  {
    *&__dst = "Message is too deep, the parser exceeded the configured recursion limit of ";
    *(&__dst + 1) = 75;
    v6 = *(a1 + 236);
    v29[0] = v30;
    v29[1] = (google::protobuf::FastInt32ToBufferLeft(v6, v30, a3) - v30);
    v28[0] = ".";
    v28[1] = 1;
    google::protobuf::StrCat(&__dst, v29, v28, &__p);
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_44:
      result = 0;
      goto LABEL_45;
    }

    v7 = __p.__r_.__value_.__r.__words[0];
LABEL_7:
    operator delete(v7);
    goto LABEL_44;
  }

  v5 = (a1 + 40);
  if (*(a1 + 40) == 5)
  {
    do
    {
      google::protobuf::io::Tokenizer::Next((a1 + 40));
    }

    while (*v5 == 5);
    goto LABEL_33;
  }

  sub_276A4D46C(&__dst, "[");
  v8 = sub_276BADD6C(a1, &__dst);
  v9 = v8;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst);
    if (!v9)
    {
      goto LABEL_29;
    }

    while (1)
    {
LABEL_10:
      sub_276A4D46C(&__dst, "{");
      if (sub_276BAE64C(a1, &__dst))
      {
        v12 = 0;
      }

      else
      {
        sub_276A4D46C(v29, "<");
        v13 = sub_276BAE64C(a1, v29);
        if (v31 < 0)
        {
          operator delete(v29[0]);
        }

        v12 = !v13;
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
        if (v12)
        {
LABEL_17:
          if ((sub_276BAE6C0(a1) & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_21;
        }
      }

      else if (v12)
      {
        goto LABEL_17;
      }

      result = sub_276BAEB8C(a1, v10, v11);
      if (!result)
      {
        goto LABEL_45;
      }

LABEL_21:
      sub_276A4D46C(&__dst, "]");
      v15 = sub_276BADD6C(a1, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if (v15)
      {
        goto LABEL_33;
      }

      sub_276A4D46C(&__dst, ",");
      v16 = sub_276BADFA0(a1, &__dst);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  if (v8)
  {
    goto LABEL_10;
  }

LABEL_29:
  sub_276A4D46C(&__dst, "-");
  v17 = sub_276BADD6C(a1, &__dst);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst);
  }

  if ((*v5 - 3) < 2)
  {
    goto LABEL_32;
  }

  if (*v5 != 2)
  {
    if (*(a1 + 71) < 0)
    {
      sub_276A07B90(&__dst, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __dst = *(a1 + 48);
      v33 = *(a1 + 64);
    }

LABEL_41:
    std::operator+<char>();
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), v29);
    if (v31 < 0)
    {
      operator delete(v29[0]);
    }

    ++*(a1 + 240);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    v7 = __dst;
    goto LABEL_7;
  }

  if (v17)
  {
    if (*(a1 + 71) < 0)
    {
      sub_276A07B90(&__dst, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __dst = *(a1 + 48);
      v33 = *(a1 + 64);
    }

    v19 = HIBYTE(v33);
    p_dst = __dst;
    if (v33 >= 0)
    {
      v21 = &__dst + HIBYTE(v33);
    }

    else
    {
      v21 = (__dst + *(&__dst + 1));
    }

    if (v33 >= 0)
    {
      p_dst = &__dst;
    }

    if (p_dst != v21)
    {
      do
      {
        v22 = *p_dst;
        if ((v22 - 65) <= 0x19)
        {
          *p_dst = v22 | 0x20;
        }

        p_dst = (p_dst + 1);
      }

      while (p_dst != v21);
      v19 = HIBYTE(v33);
    }

    if ((v19 & 0x80) != 0)
    {
      if (*(&__dst + 1) == 3)
      {
        v23 = __dst;
LABEL_63:
        v24 = *v23;
        v25 = *(v23 + 2);
        if (v24 == 28265 && v25 == 102)
        {
LABEL_69:
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__dst);
          }

          goto LABEL_32;
        }
      }
    }

    else if (v19 == 3)
    {
      v23 = &__dst;
      goto LABEL_63;
    }

    if (!sub_276BAC31C(&__dst, "infinity") || !sub_276BAC31C(&__dst, "nan"))
    {
      goto LABEL_69;
    }

    goto LABEL_41;
  }

LABEL_32:
  google::protobuf::io::Tokenizer::Next((a1 + 40));
LABEL_33:
  ++*(a1 + 240);
  result = 1;
LABEL_45:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276BAEB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BAEB8C(uint64_t a1, uint64_t a2, char *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 240);
  *(a1 + 240) = v4 - 1;
  if (v4 <= 0)
  {
    v16 = "Message is too deep, the parser exceeded the configured recursion limit of ";
    v17 = 75;
    v7 = *(a1 + 236);
    v14[0] = v15;
    v14[1] = (google::protobuf::FastInt32ToBufferLeft(v7, v15, a3) - v15);
    __p[0] = ".";
    __p[1] = 1;
    google::protobuf::StrCat(&v16, v14, __p, &v11);
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &v11);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    v8 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (!sub_276BAFD90(a1, &v16))
    {
      goto LABEL_18;
    }

    while (1)
    {
      sub_276A4D46C(v14, ">");
      if (sub_276BAE64C(a1, v14))
      {
        v5 = 0;
      }

      else
      {
        sub_276A4D46C(__p, "}");
        v6 = sub_276BAE64C(a1, __p);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v5 = !v6;
      }

      if ((v15[7] & 0x80000000) != 0)
      {
        operator delete(v14[0]);
      }

      if (!v5)
      {
        break;
      }

      if ((sub_276BAFF74(a1) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (sub_276BADFA0(a1, &v16))
    {
      ++*(a1 + 240);
      v8 = 1;
    }

    else
    {
LABEL_18:
      v8 = 0;
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v16);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_276BAED54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_276BAEDAC(uint64_t a1, std::string *this)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4 == 5)
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

    while (*v3 == 5)
    {
      google::protobuf::io::Tokenizer::ParseStringAppend((a1 + 48), this);
      google::protobuf::io::Tokenizer::Next(v3);
    }
  }

  else
  {
    std::operator+<char>();
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  return v4 == 5;
}

void sub_276BAEE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BAEE90(uint64_t a1, google::protobuf::Message *a2, google::protobuf::Reflection *a3, google::protobuf::FieldDescriptor *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 240);
  *(a1 + 240) = v5 - 1;
  if (v5 > 0)
  {
    if (*(a1 + 16))
    {
      google::protobuf::TextFormat::ParseInfoTree::CreateNested(*(a1 + 16), a4);
    }

    v27 = 0uLL;
    v28 = 0;
    if ((sub_276BAFD90(a1, &v27) & 1) == 0)
    {
      goto LABEL_25;
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = (*(*v9 + 40))(v9, a4);
    }

    else
    {
      v10 = 0;
    }

    if (*(a4 + 15) == 3)
    {
      v13 = google::protobuf::Reflection::AddMessage(a3, a2, a4, v10);
      if (SHIBYTE(v28) < 0)
      {
        sub_276A07B90(&__dst, v27, *(&v27 + 1));
      }

      else
      {
        __dst = v27;
        v22 = v28;
      }

      v15 = sub_276BAFE7C(a1, v13, &__dst);
      if (SHIBYTE(v22) < 0)
      {
        v16 = __dst;
        goto LABEL_24;
      }
    }

    else
    {
      v14 = google::protobuf::Reflection::MutableMessage(a3, a2, a4, v10);
      if (SHIBYTE(v28) < 0)
      {
        sub_276A07B90(v19, v27, *(&v27 + 1));
      }

      else
      {
        *v19 = v27;
        v20 = v28;
      }

      v15 = sub_276BAFE7C(a1, v14, v19);
      if (SHIBYTE(v20) < 0)
      {
        v16 = v19[0];
LABEL_24:
        operator delete(v16);
        if ((v15 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

    if ((v15 & 1) == 0)
    {
LABEL_25:
      v12 = 0;
LABEL_26:
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27);
      }

      goto LABEL_28;
    }

LABEL_22:
    ++*(a1 + 240);
    *(a1 + 16) = 0;
    v12 = 1;
    goto LABEL_26;
  }

  *&v27 = "Message is too deep, the parser exceeded the configured recursion limit of ";
  *(&v27 + 1) = 75;
  v11 = *(a1 + 236);
  v25[0] = v26;
  v25[1] = google::protobuf::FastInt32ToBufferLeft(v11, v26, a3) - v26;
  v24[0] = ".";
  v24[1] = 1;
  google::protobuf::StrCat(&v27, v25, v24, &__p);
  sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = 0;
LABEL_28:
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_276BAF10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BAF174(uint64_t a1, google::protobuf::Message *a2, google::protobuf::Reflection *a3, std::once_flag::_State_type **this)
{
  v4 = this;
  v65 = *MEMORY[0x277D85DE8];
  v8 = this[6];
  if (v8)
  {
    v60.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v59.__r_.__value_.__r.__words[0] = this;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v64.__r_.__value_.__r.__words[0] = &v60;
      v64.__r_.__value_.__l.__size_ = &v59;
      __p.__r_.__value_.__r.__words[0] = &v64;
      std::__call_once(v8, &__p, sub_2769C149C);
    }
  }

  v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v4 + 14)];
  if (v9 <= 5)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v64.__r_.__value_.__r.__words[0] = 0;
        if (sub_276BB03A8(a1, &v64, 0xFFFFFFFFuLL))
        {
          if (*(v4 + 15) == 3)
          {
            google::protobuf::Reflection::AddUInt32(a3, a2, v4, v64.__r_.__value_.__l.__data_);
          }

          else
          {
            google::protobuf::Reflection::SetUInt32(a3, a2, v4, v64.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }
      }

      else if (v9 == 4)
      {
        v64.__r_.__value_.__r.__words[0] = 0;
        if (sub_276BB03A8(a1, &v64, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (*(v4 + 15) == 3)
          {
            google::protobuf::Reflection::AddUInt64(a3, a2, v4, v64.__r_.__value_.__l.__data_);
          }

          else
          {
            google::protobuf::Reflection::SetUInt64(a3, a2, v4, v64.__r_.__value_.__r.__words[0]);
          }

          goto LABEL_160;
        }
      }

      else
      {
        v64.__r_.__value_.__r.__words[0] = 0;
        if (sub_276BB04F4(a1, &v64))
        {
          if (*(v4 + 15) == 3)
          {
            google::protobuf::Reflection::AddDouble(a3, a2, v4, *&v64.__r_.__value_.__l.__data_);
          }

          else
          {
            google::protobuf::Reflection::SetDouble(a3, a2, v4, *&v64.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }
      }

LABEL_161:
      LOBYTE(v4) = 0;
      goto LABEL_162;
    }

    if (v9 == 1)
    {
      v64.__r_.__value_.__r.__words[0] = 0;
      if (sub_276BB02FC(a1, &v64, 0x7FFFFFFFLL))
      {
        if (*(v4 + 15) == 3)
        {
          google::protobuf::Reflection::AddInt32(a3, a2, v4, v64.__r_.__value_.__l.__data_);
        }

        else
        {
          google::protobuf::Reflection::SetInt32(a3, a2, v4, v64.__r_.__value_.__l.__data_);
        }

        goto LABEL_160;
      }

      goto LABEL_161;
    }

    if (v9 == 2)
    {
      v64.__r_.__value_.__r.__words[0] = 0;
      if (sub_276BB02FC(a1, &v64, 0x7FFFFFFFFFFFFFFFLL))
      {
        if (*(v4 + 15) == 3)
        {
          google::protobuf::Reflection::AddInt64(a3, a2, v4, v64.__r_.__value_.__l.__data_);
        }

        else
        {
          google::protobuf::Reflection::SetInt64(a3, a2, v4, v64.__r_.__value_.__l.__data_);
        }

        goto LABEL_160;
      }

      goto LABEL_161;
    }

LABEL_160:
    LOBYTE(v4) = 1;
    goto LABEL_162;
  }

  if (v9 <= 7)
  {
    if (v9 == 6)
    {
      v64.__r_.__value_.__r.__words[0] = 0;
      v12 = sub_276BB04F4(a1, &v64);
      if (v12)
      {
        v13 = *(v4 + 15) == 3;
        v14 = google::protobuf::io::SafeDoubleToFloat(v12, *&v64.__r_.__value_.__l.__data_);
        if (v13)
        {
          google::protobuf::Reflection::AddFloat(a3, a2, v4, v14);
        }

        else
        {
          google::protobuf::Reflection::SetFloat(a3, a2, v4, v14);
        }

        goto LABEL_160;
      }

      goto LABEL_161;
    }

    if (*(a1 + 40) == 3)
    {
      v64.__r_.__value_.__r.__words[0] = 0;
      if (sub_276BB03A8(a1, &v64, 1uLL))
      {
        if (*(v4 + 15) == 3)
        {
          google::protobuf::Reflection::AddBool(a3, a2, v4, v64.__r_.__value_.__r.__words[0] != 0);
        }

        else
        {
          google::protobuf::Reflection::SetBool(a3, a2, v4, v64.__r_.__value_.__r.__words[0] != 0);
        }

        goto LABEL_160;
      }

      goto LABEL_161;
    }

    memset(&v64, 0, sizeof(v64));
    if ((sub_276BAE578(a1, &v64) & 1) == 0)
    {
      goto LABEL_156;
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v64.__r_.__value_.__l.__size_ == 4)
      {
        v19 = v64.__r_.__value_.__r.__words[0];
LABEL_96:
        if (LODWORD(v19->__r_.__value_.__l.__data_) == 1702195828)
        {
LABEL_99:
          v33 = *(v4 + 15);
          v34 = 1;
LABEL_100:
          if (v33 == 3)
          {
            google::protobuf::Reflection::AddBool(a3, a2, v4, v34);
          }

          else
          {
            google::protobuf::Reflection::SetBool(a3, a2, v4, v34);
          }

          v35 = 1;
LABEL_157:
          if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v64.__r_.__value_.__l.__data_);
          }

          if (v35)
          {
            goto LABEL_160;
          }

          goto LABEL_161;
        }
      }
    }

    else if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) == 4)
    {
      v19 = &v64;
      goto LABEL_96;
    }

    if (sub_276B19E54(&v64, "True") || sub_276B19E54(&v64, "t"))
    {
      goto LABEL_99;
    }

    if (sub_276B19E54(&v64, "false") || sub_276B19E54(&v64, "False") || sub_276B19E54(&v64, "f"))
    {
      v34 = 0;
      v33 = *(v4 + 15);
      goto LABEL_100;
    }

    v46 = *v4;
    std::operator+<char>();
    v47 = std::string::append(&v58, ". Value: ");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v64;
    }

    else
    {
      v49 = v64.__r_.__value_.__r.__words[0];
    }

    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v64.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v59, v49, size);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = std::string::append(&v60, ".");
    v54 = *&v53->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

LABEL_156:
    v35 = 0;
    goto LABEL_157;
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      if (v9 == 10)
      {
        v10 = google::protobuf::internal::LogMessage::LogMessage(&v64, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 834);
        v11 = google::protobuf::internal::LogMessage::operator<<(v10, "Reached an unintended state: CPPTYPE_MESSAGE");
        google::protobuf::internal::LogFinisher::operator=(&__p, &v11->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v64.__r_.__value_.__l.__data_);
      }

      goto LABEL_160;
    }

    memset(&v64, 0, sizeof(v64));
    v18 = sub_276BAEDAC(a1, &v64);
    if (v18)
    {
      if (*(v4 + 15) == 3)
      {
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_276A07B90(&__dst, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v64;
        }

        google::protobuf::Reflection::AddString(a3, a2, v4, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          p_dst = &__dst;
LABEL_110:
          operator delete(p_dst->__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_276A07B90(&v62, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
        }

        else
        {
          v62 = v64;
        }

        google::protobuf::Reflection::SetString(a3, a2, v4, &v62);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          p_dst = &v62;
          goto LABEL_110;
        }
      }
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
      if (!v18)
      {
        goto LABEL_161;
      }
    }

    else if (!v18)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  memset(&__p, 0, sizeof(__p));
  v57 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = google::protobuf::FieldDescriptor::enum_type(v4);
  if (*(a1 + 40) == 2)
  {
    if ((sub_276BAE578(a1, &__p) & 1) == 0)
    {
      goto LABEL_131;
    }

    ValueByName = google::protobuf::EnumDescriptor::FindValueByName(v15, &__p, v16);
  }

  else
  {
    sub_276A4D46C(&v64, "-");
    if (sub_276BAE64C(a1, &v64))
    {
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v20 = *(a1 + 40);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (v20 != 3)
      {
        std::operator+<char>();
        sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &v64);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          v23 = v64.__r_.__value_.__r.__words[0];
LABEL_130:
          operator delete(v23);
        }

LABEL_131:
        LOBYTE(v4) = 0;
        v22 = 1;
        goto LABEL_132;
      }
    }

    if ((sub_276BB02FC(a1, &v57, 0x7FFFFFFFLL) & 1) == 0)
    {
      goto LABEL_131;
    }

    v64.__r_.__value_.__r.__words[0] = &v64.__r_.__value_.__r.__words[2];
    v64.__r_.__value_.__l.__size_ = google::protobuf::FastInt64ToBufferLeft(v57, &v64.__r_.__value_.__s.__data_[16], v21) - &v64.__r_.__value_.__r.__words[2];
    std::string::__init(&v60, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v60;
    ValueByName = google::protobuf::EnumDescriptor::FindValueByNumber(v15, v57);
  }

  if (!ValueByName)
  {
    if (v57 != 0x7FFFFFFFFFFFFFFFLL && google::protobuf::Reflection::SupportsUnknownEnumValues(a3))
    {
      if (*(v4 + 15) == 3)
      {
        google::protobuf::Reflection::AddEnumValue(a3, a2, v4, v57);
      }

      else
      {
        google::protobuf::Reflection::SetEnumValue(a3, a2, v4, v57);
      }

LABEL_141:
      v22 = 1;
      LOBYTE(v4) = 1;
      goto LABEL_132;
    }

    if (*(a1 + 231))
    {
      std::operator+<char>();
      v24 = std::string::append(&v58, " for field ");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      v26 = *(*v4 + 23);
      if (v26 >= 0)
      {
        v27 = *v4;
      }

      else
      {
        v27 = **v4;
      }

      if (v26 >= 0)
      {
        v28 = *(*v4 + 23);
      }

      else
      {
        v28 = *(*v4 + 8);
      }

      v29 = std::string::append(&v59, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v60.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v60.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v60, ".");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v64.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v64.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      sub_276BAC4EC(a1, *(a1 + 72), *(a1 + 76), &v64);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      goto LABEL_141;
    }

    std::operator+<char>();
    v37 = std::string::append(&v58, " for field ");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = *(*v4 + 23);
    if (v39 >= 0)
    {
      v40 = *v4;
    }

    else
    {
      v40 = **v4;
    }

    if (v39 >= 0)
    {
      v41 = *(*v4 + 23);
    }

    else
    {
      v41 = *(*v4 + 8);
    }

    v42 = std::string::append(&v59, v40, v41);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v60, ".");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &v64);
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      v23 = v58.__r_.__value_.__r.__words[0];
      goto LABEL_130;
    }

    goto LABEL_131;
  }

  if (*(v4 + 15) == 3)
  {
    google::protobuf::Reflection::AddEnum(a3, a2, v4, ValueByName);
  }

  else
  {
    google::protobuf::Reflection::SetEnum(a3, a2, v4, ValueByName);
  }

  v22 = 0;
LABEL_132:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_160;
  }

LABEL_162:
  v55 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void sub_276BAFC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BAFD90(uint64_t a1, uint64_t a2)
{
  sub_276A4D46C(__p, "<");
  v4 = sub_276BADD6C(a1, __p);
  v5 = v4;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    v6 = ">";
LABEL_8:
    MEMORY[0x277C9F450](a2, v6);
    return 1;
  }

  sub_276A4D46C(__p, "{");
  v7 = sub_276BADFA0(a1, __p);
  v8 = v7;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if (v7)
  {
LABEL_7:
    v6 = "}";
    goto LABEL_8;
  }

  return 0;
}

void sub_276BAFE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BAFE7C(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    sub_276A4D46C(v11, ">");
    if (sub_276BAE64C(a1, v11))
    {
      v6 = 0;
    }

    else
    {
      sub_276A4D46C(__p, "}");
      v7 = sub_276BAE64C(a1, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = !v7;
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (!v6)
    {
      break;
    }

    if ((sub_276BAC670(a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  return sub_276BADFA0(a1, a3);
}

void sub_276BAFF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BAFF74(uint64_t a1)
{
  sub_276A4D46C(&v13, "[");
  v2 = sub_276BADD6C(a1, &v13);
  v3 = v2;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    if ((sub_276BB01BC(a1) & 1) == 0)
    {
      return 0;
    }

    sub_276A4D46C(&v13, "]");
    v4 = sub_276BADFA0(a1, &v13);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

  memset(&v13, 0, sizeof(v13));
  v5 = sub_276BAE578(a1, &v13);
  v6 = v5;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if (!v6)
    {
      return 0;
    }
  }

  else if (!v5)
  {
    return 0;
  }

LABEL_13:
  sub_276A4D46C(&v13, ":");
  if (sub_276BADD6C(a1, &v13))
  {
    sub_276A4D46C(v11, "{");
    if (sub_276BAE64C(a1, v11))
    {
      v7 = 0;
    }

    else
    {
      sub_276A4D46C(__p, "<");
      v7 = !sub_276BAE64C(a1, __p);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    if ((sub_276BAE6C0(a1) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_276BAEB8C(a1);
    if (!result)
    {
      return result;
    }
  }

  sub_276A4D46C(&v13, ";");
  if ((sub_276BADD6C(a1, &v13) & 1) == 0)
  {
    sub_276A4D46C(v11, ",");
    sub_276BADD6C(a1, v11);
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_276BB016C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BB01BC(uint64_t a1)
{
  memset(&v9, 0, sizeof(v9));
  if (sub_276BAE578(a1, &v9))
  {
    do
    {
      sub_276A4D46C(v7, ".");
      if (sub_276BADD6C(a1, v7))
      {
        v2 = 1;
      }

      else
      {
        sub_276A4D46C(__p, "/");
        v2 = sub_276BADD6C(a1, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v8 < 0)
      {
        operator delete(v7[0]);
      }
    }

    while (v2 && (sub_276BAE578(a1, &v9) & 1) != 0);
    v3 = v2 ^ 1u;
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_276BB02A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BB02FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_276A4D46C(__p, "-");
  v6 = sub_276BADD6C(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  result = sub_276BB03A8(a1, __p, a3 + v6);
  if (result)
  {
    v8 = __p[0];
    if (v6)
    {
      v8 = -__p[0];
    }

    *a2 = v8;
  }

  return result;
}

void sub_276BB038C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BB03A8(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v4 = (a1 + 40);
  if (*(a1 + 40) == 3)
  {
    if (google::protobuf::io::Tokenizer::ParseInteger((a1 + 48), a3, a2))
    {
      google::protobuf::io::Tokenizer::Next(v4);
      return 1;
    }

    std::operator+<char>();
    v7 = std::string::append(&v9, ")");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), __p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v9.__r_.__value_.__r.__words[0];
      goto LABEL_10;
    }
  }

  else
  {
    std::operator+<char>();
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), __p);
    if (SHIBYTE(v11) < 0)
    {
      v6 = __p[0];
LABEL_10:
      operator delete(v6);
    }
  }

  return 0;
}

void sub_276BB04AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_276BB04F4(uint64_t a1, double *a2)
{
  sub_276A4D46C(__p, "-");
  v6 = sub_276BADD6C(a1, __p);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    if (*(a1 + 71) < 0)
    {
      sub_276A07B90(__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *__p = *(a1 + 48);
      v23 = *(a1 + 64);
    }

    v9 = HIBYTE(v23);
    v10 = __p[0];
    v11 = (__p + HIBYTE(v23));
    if (v23 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v11 = (__p[0] + __p[1]);
    }

    if (v10 != v11)
    {
      do
      {
        v12 = *v10;
        if ((v12 - 65) <= 0x19)
        {
          *v10 = v12 | 0x20;
        }

        v10 = (v10 + 1);
      }

      while (v10 != v11);
      v9 = HIBYTE(v23);
    }

    if (v9 < 0)
    {
      if (__p[1] == 3 && *__p[0] == 28265 && *(__p[0] + 2) == 102)
      {
        goto LABEL_53;
      }

      if (__p[1] == 8 && *__p[0] == 0x7974696E69666E69)
      {
        goto LABEL_53;
      }

      if (__p[1] != 3)
      {
        goto LABEL_47;
      }

      v14 = __p[0];
    }

    else
    {
      if (v9 != 3)
      {
        if (v9 == 8 && __p[0] == 0x7974696E69666E69)
        {
LABEL_53:
          v19 = 0x7FF0000000000000;
          goto LABEL_55;
        }

LABEL_47:
        std::operator+<char>();
        sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), &v20);
        if (v21 < 0)
        {
          operator delete(v20);
        }

LABEL_49:
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        return 0;
      }

      if (LOWORD(__p[0]) == 28265 && BYTE2(__p[0]) == 102)
      {
        goto LABEL_53;
      }

      v14 = __p;
    }

    v16 = *v14;
    v17 = *(v14 + 2);
    if (v16 == 24942 && v17 == 110)
    {
      v19 = 0x7FF8000000000000;
LABEL_55:
      *a2 = v19;
      google::protobuf::io::Tokenizer::Next((a1 + 40));
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_7:
      if (!v6)
      {
        return 1;
      }

      goto LABEL_10;
    }

    goto LABEL_47;
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      *a2 = google::protobuf::io::Tokenizer::ParseFloat(a1 + 48, v4, v5);
      google::protobuf::io::Tokenizer::Next((a1 + 40));
      goto LABEL_7;
    }

    std::operator+<char>();
    sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), __p);
    goto LABEL_49;
  }

  result = sub_276BB07F8(a1, a2, 0xFFFFFFFFFFFFFFFFLL);
  if (result & v6)
  {
LABEL_10:
    *a2 = -*a2;
    return 1;
  }

  return result;
}

void sub_276BB07B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276BB07F8(uint64_t a1, double *a2, unint64_t a3)
{
  v4 = (a1 + 40);
  if (*(a1 + 40) != 3)
  {
    goto LABEL_16;
  }

  if (*(a1 + 71) < 0)
  {
    if (*(a1 + 56) <= 1uLL)
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 48);
    if (*v7 == 48 && (v7[1] | 0x20) == 0x78)
    {
      goto LABEL_16;
    }

    v8 = *(a1 + 48);
    if (*v8 != 48)
    {
      goto LABEL_19;
    }

    v6 = v8[1];
    if (v6 < 48)
    {
      goto LABEL_19;
    }

    v6 = v6;
LABEL_15:
    if (v6 <= 0x37)
    {
      goto LABEL_16;
    }

LABEL_19:
    __p[0] = 0;
    if (google::protobuf::io::Tokenizer::ParseInteger((a1 + 48), a3, __p))
    {
      v12 = __p[0];
    }

    else
    {
      v12 = google::protobuf::io::Tokenizer::ParseFloat(a1 + 48, v10, v11);
    }

    *a2 = v12;
    google::protobuf::io::Tokenizer::Next(v4);
    return 1;
  }

  if (*(a1 + 71) < 2u || *(a1 + 48) != 48)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 49);
  if ((v6 | 0x20) != 0x78)
  {
    if (v6 <= 47)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_16:
  std::operator+<char>();
  sub_276BA6C78(a1, *(a1 + 72), *(a1 + 76), __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_276BB0974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB0994(uint64_t a1)
{
  *a1 = &unk_2885C8F40;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x277C9F670);
}

void sub_276BB0B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_276BB0B40(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2885C9048;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_276BB0BAC(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2885C9048;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x277C9F670);
}

void sub_276BB0C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 8) + 16))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB0CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB0CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 8) + 24))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB0DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB0DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 8) + 32))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB0E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB0E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 8) + 40))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB0F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB0F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 8) + 48))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB0FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB100C(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 56))(__p);
  if ((v6 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = __p[1];
  }

  (*(*a2 + 40))(a2, v3, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB10B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB10D0(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 64))(__p);
  if ((v6 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = __p[1];
  }

  (*(*a2 + 40))(a2, v3, v4);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB1178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB1194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 8) + 72))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB123C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB1258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 8) + 80))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  (*(*a3 + 40))(a3, v4, v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB1300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(**(a1 + 8) + 88))(__p);
  if ((v8 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = __p[1];
  }

  (*(*a4 + 40))(a4, v5, v6);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB13C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB13E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(**(a1 + 8) + 96))(__p);
  if ((v11 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v9 = v11;
  }

  else
  {
    v9 = __p[1];
  }

  (*(*a7 + 40))(a7, v8, v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB1490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB14AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(**(a1 + 8) + 96))(__p);
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  (*(*a5 + 40))(a5, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB1554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB1570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(**(a1 + 8) + 104))(__p);
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  (*(*a6 + 40))(a6, v7, v8);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB1618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB1634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(**(a1 + 8) + 112))(__p);
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  (*(*a6 + 40))(a6, v7, v8);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB16DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB16F8(uint64_t a1)
{
  sub_276BB1B10(a1);

  JUMPOUT(0x277C9F670);
}

void sub_276BB1740(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && v1 >= *(a1 + 36))
  {
    *(a1 + 32) = v1 - 1;
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v4, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 1268);
    v2 = google::protobuf::internal::LogMessage::operator<<(v4, " Outdent() without matching Indent().");
    google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v4[0].__r_.__value_.__l.__data_);
  }
}

void sub_276BB17C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276BB17E4(uint64_t a1, char *__src, size_t a3)
{
  if (*(a1 + 32) < 1)
  {
    result = sub_276BB18D8(a1, __src, a3);
    if (a3 && __src[a3 - 1] == 10)
    {
      *(a1 + 28) = 1;
    }
  }

  else
  {
    if (a3)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (__src[v6] == 10)
        {
          sub_276BB18D8(a1, &__src[v7], v6 - v7 + 1);
          ++v6;
          *(a1 + 28) = 1;
          v7 = v6;
        }

        else
        {
          ++v6;
        }
      }

      while (v6 != a3);
    }

    else
    {
      v7 = 0;
    }

    return sub_276BB18D8(a1, &__src[v7], a3 - v7);
  }

  return result;
}

uint64_t sub_276BB18D8(uint64_t result, char *__src, size_t a3)
{
  if (a3)
  {
    v3 = result;
    if ((*(result + 29) & 1) == 0)
    {
      v4 = a3;
      if (*(result + 28) != 1 || (*(result + 28) = 0, result = sub_276BB19F8(result), (*(v3 + 29) & 1) == 0))
      {
        v6 = *(v3 + 24);
        v7 = v6;
        if (v6 >= v4)
        {
          v9 = *(v3 + 16);
LABEL_12:
          result = memcpy(v9, __src, v4);
          *(v3 + 16) += v4;
          *(v3 + 24) -= v4;
        }

        else
        {
          while (1)
          {
            if (v6 >= 1)
            {
              memcpy(*(v3 + 16), __src, v7);
              v8 = *(v3 + 24);
              __src += v8;
              v4 -= v8;
            }

            v10 = 0;
            result = (*(**(v3 + 8) + 16))(*(v3 + 8), &v10, v3 + 24);
            *(v3 + 29) = result ^ 1;
            if ((result & 1) == 0)
            {
              break;
            }

            v9 = v10;
            *(v3 + 16) = v10;
            v6 = *(v3 + 24);
            v7 = v6;
            if (v4 <= v6)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_276BB19F8(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = (*(*result + 32))(result);
    v3 = *(v1 + 24);
    if (v3 >= v2)
    {
      v4 = *(v1 + 16);
LABEL_9:
      result = memset(v4, 32, v2);
      *(v1 + 16) += v2;
      *(v1 + 24) -= v2;
    }

    else
    {
      while (1)
      {
        if (v3 >= 1)
        {
          memset(*(v1 + 16), 32, v3);
          v3 = *(v1 + 24);
        }

        v5 = 0;
        result = (*(**(v1 + 8) + 16))(*(v1 + 8), &v5, v1 + 24);
        *(v1 + 29) = result ^ 1;
        if ((result ^ 1))
        {
          break;
        }

        v2 -= v3;
        v4 = v5;
        *(v1 + 16) = v5;
        v3 = *(v1 + 24);
        if (v2 <= v3)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t sub_276BB1B10(uint64_t a1)
{
  *a1 = &unk_2885C90F8;
  if ((*(a1 + 29) & 1) == 0 && *(a1 + 24) >= 1)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void *sub_276BB1B90(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void sub_276BB1C64(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_276BB1CE8(v4 - 8);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_276BB1CE8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_276BB1D48(v2 + 24, *(v2 + 32));
    sub_276BB1DA8(v2, *(v2 + 8));
    MEMORY[0x277C9F670](v2, 0x1020C404C310C12);
  }

  return a1;
}

void sub_276BB1D48(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_276BB1D48(a1, *a2);
    sub_276BB1D48(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_276BB1C64(&v4);
    operator delete(a2);
  }
}

void sub_276BB1DA8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276BB1DA8(a1, *a2);
    sub_276BB1DA8(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_276BB1E0C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_276BB1CE8((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_276BB1E5C(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

unint64_t sub_276BB1F28(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  i = v7;
  while (1)
  {
    v7 = i;
    v10 = a2 - i;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return sub_276BB2D0C(i, i + 1, a2 - 1);
        case 4:

          return sub_276BB2F20(i, i + 1, i + 2, a2 - 1);
        case 5:

          return sub_276BB309C(i, i + 1, i + 2, i + 3, a2 - 1);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v62 = *(a2 - 1);
        v63 = *i;
        if (*(v62 + 67) == 1)
        {
          if (!*(*i + 67))
          {
            return result;
          }

          v64 = *(v62 + 68);
          v65 = *(v63 + 68);
        }

        else
        {
          if (*(*i + 67))
          {
LABEL_245:
            *i = v62;
            *(a2 - 1) = v63;
            return result;
          }

          v64 = 678152731 * ((v62 - *(*(v62 + 80) + 40)) >> 3);
          v65 = 678152731 * ((v63 - *(*(v63 + 80) + 40)) >> 3);
        }

        if (v64 >= v65)
        {
          return result;
        }

        goto LABEL_245;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v81 = (v10 - 2) >> 1;
      v82 = v81;
      while (1)
      {
        v83 = v82;
        if (v81 < v82)
        {
          goto LABEL_210;
        }

        v84 = (2 * v82) | 1;
        v85 = &i[v84];
        if (2 * v83 + 2 < v10)
        {
          break;
        }

LABEL_185:
        v90 = *v85;
        v91 = i[v83];
        v92 = *(v91 + 67);
        if (*(*v85 + 67) != 1)
        {
          if (v92)
          {
            goto LABEL_210;
          }

          v93 = 678152731 * ((v90 - *(*(v90 + 80) + 40)) >> 3);
          result = 678152731 * ((v91 - *(*(v91 + 80) + 40)) >> 3);
LABEL_190:
          if (v93 < result)
          {
            goto LABEL_210;
          }

          goto LABEL_191;
        }

        if (*(v91 + 67))
        {
          v93 = *(v90 + 68);
          result = *(v91 + 68);
          goto LABEL_190;
        }

LABEL_191:
        i[v83] = v90;
        while (1)
        {
          if (v81 < v84)
          {
            goto LABEL_209;
          }

          v94 = v85;
          v95 = 2 * v84;
          v84 = (2 * v84) | 1;
          v85 = &i[v84];
          v96 = v95 + 2;
          if (v96 < v10)
          {
            v97 = *v85;
            v98 = v85[1];
            if (*(*v85 + 67) == 1)
            {
              if (!*(v98 + 67))
              {
                goto LABEL_201;
              }

              v99 = *(v97 + 68);
              v100 = *(v98 + 68);
              goto LABEL_199;
            }

            if ((*(v98 + 67) & 1) == 0)
            {
              v99 = 678152731 * ((v97 - *(*(v97 + 80) + 40)) >> 3);
              v100 = 678152731 * ((v98 - *(*(v98 + 80) + 40)) >> 3);
LABEL_199:
              if (v99 >= v100)
              {
                goto LABEL_201;
              }
            }

            ++v85;
            v84 = v96;
          }

LABEL_201:
          v101 = *v85;
          result = *(*v85 + 67);
          if (result == 1)
          {
            if (!v92)
            {
              goto LABEL_207;
            }

            result = *(v101 + 68);
            v102 = *(v91 + 68);
          }

          else
          {
            if (v92)
            {
              break;
            }

            result = 678152731 * ((v101 - *(*(v101 + 80) + 40)) >> 3);
            v102 = 678152731 * ((v91 - *(*(v91 + 80) + 40)) >> 3);
          }

          if (result < v102)
          {
            break;
          }

LABEL_207:
          *v94 = v101;
        }

        v85 = v94;
LABEL_209:
        *v85 = v91;
LABEL_210:
        v82 = v83 - 1;
        if (!v83)
        {
LABEL_211:
          v103 = 0;
          v104 = *i;
          v105 = i;
          while (1)
          {
            v106 = v105;
            v107 = &v105[v103];
            v105 = v107 + 1;
            v108 = 2 * v103;
            v103 = (2 * v103) | 1;
            v109 = v108 + 2;
            if (v109 < v10)
            {
              v112 = v107[2];
              v110 = v107 + 2;
              v111 = v112;
              result = *(v110 - 1);
              v113 = *(v112 + 67);
              if (*(result + 67) == 1)
              {
                if (!v113)
                {
                  goto LABEL_220;
                }

                result = *(result + 68);
                v114 = *(v111 + 68);
              }

              else
              {
                if (v113)
                {
                  goto LABEL_219;
                }

                result = 678152731 * ((result - *(*(result + 80) + 40)) >> 3);
                v114 = 678152731 * ((v111 - *(*(v111 + 80) + 40)) >> 3);
              }

              if (result < v114)
              {
LABEL_219:
                v105 = v110;
                v103 = v109;
              }
            }

LABEL_220:
            *v106 = *v105;
            if (v103 > ((v10 - 2) >> 1))
            {
              if (v105 == --a2)
              {
LABEL_238:
                *v105 = v104;
                goto LABEL_239;
              }

              *v105 = *a2;
              *a2 = v104;
              v115 = (v105 - i + 8) >> 3;
              v116 = v115 - 2;
              if (v115 < 2)
              {
                goto LABEL_239;
              }

              v117 = v116 >> 1;
              v118 = &i[v116 >> 1];
              v119 = *v118;
              v104 = *v105;
              v120 = *(*v105 + 67);
              if (*(*v118 + 67) == 1)
              {
                if (*(*v105 + 67))
                {
                  v121 = *(v119 + 68);
                  result = *(v104 + 68);
                  goto LABEL_228;
                }

                goto LABEL_239;
              }

              if (v120)
              {
                goto LABEL_229;
              }

              v121 = 678152731 * ((v119 - *(*(v119 + 80) + 40)) >> 3);
              result = 678152731 * ((v104 - *(*(v104 + 80) + 40)) >> 3);
LABEL_228:
              if (v121 < result)
              {
LABEL_229:
                *v105 = v119;
                if (v116 < 2)
                {
LABEL_230:
                  v105 = v118;
                  goto LABEL_238;
                }

                while (2)
                {
                  v122 = v117 - 1;
                  v117 = (v117 - 1) >> 1;
                  v105 = &i[v117];
                  v123 = *v105;
                  if (*(*v105 + 67) == 1)
                  {
                    if (!v120)
                    {
                      goto LABEL_230;
                    }

                    v124 = *(v123 + 68);
                    result = *(v104 + 68);
                    goto LABEL_236;
                  }

                  if ((v120 & 1) == 0)
                  {
                    v124 = 678152731 * ((v123 - *(*(v123 + 80) + 40)) >> 3);
                    result = 678152731 * ((v104 - *(*(v104 + 80) + 40)) >> 3);
LABEL_236:
                    if (v124 >= result)
                    {
                      goto LABEL_230;
                    }
                  }

                  *v118 = v123;
                  v118 = &i[v117];
                  if (v122 < 2)
                  {
                    goto LABEL_238;
                  }

                  continue;
                }
              }

LABEL_239:
              if (v10-- <= 2)
              {
                return result;
              }

              goto LABEL_211;
            }
          }
        }
      }

      v86 = *v85;
      v87 = v85[1];
      result = *(v87 + 67);
      if (*(*v85 + 67) == 1)
      {
        if (!*(v87 + 67))
        {
          goto LABEL_185;
        }

        v88 = *(v86 + 68);
        v89 = *(v87 + 68);
      }

      else
      {
        if (result)
        {
LABEL_184:
          ++v85;
          v84 = 2 * v83 + 2;
          goto LABEL_185;
        }

        v88 = 678152731 * ((v86 - *(*(v86 + 80) + 40)) >> 3);
        result = *(*(v87 + 80) + 40);
        v89 = 678152731 * ((v87 - result) >> 3);
      }

      if (v88 >= v89)
      {
        goto LABEL_185;
      }

      goto LABEL_184;
    }

    v11 = v10 >> 1;
    v12 = &i[v10 >> 1];
    if (v10 < 0x81)
    {
      result = sub_276BB2D0C(&v7[v10 >> 1], v7, a2 - 1);
    }

    else
    {
      sub_276BB2D0C(v7, &v7[v10 >> 1], a2 - 1);
      sub_276BB2D0C(v7 + 1, v12 - 1, a2 - 2);
      sub_276BB2D0C(v7 + 2, &v7[v11 + 1], a2 - 3);
      result = sub_276BB2D0C(v12 - 1, v12, &v7[v11 + 1]);
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
    }

    --a3;
    v14 = *v7;
    if (a4)
    {
      LOBYTE(v15) = *(v14 + 67);
      goto LABEL_24;
    }

    v16 = *(v7 - 1);
    v15 = *(v14 + 67);
    if (*(v16 + 67) == 1)
    {
      if (!*(v14 + 67))
      {
        goto LABEL_77;
      }

      v17 = *(v14 + 68);
      if (*(v16 + 68) < v17)
      {
        LOBYTE(v15) = 1;
        goto LABEL_24;
      }

      v40 = *v8;
      if (*(*v8 + 67))
      {
        v42 = *(v40 + 68);
        v41 = 1;
LABEL_82:
        if (v17 < v42)
        {
          goto LABEL_83;
        }

        goto LABEL_92;
      }

      v41 = 0;
LABEL_92:
      for (i = v7 + 1; i < a2; ++i)
      {
        v46 = *i;
        if (*(v14 + 67))
        {
          if (!*(*i + 67))
          {
            continue;
          }

          v47 = *(v14 + 68);
          v48 = *(v46 + 68);
        }

        else
        {
          if (*(*i + 67))
          {
            break;
          }

          v47 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          v48 = 678152731 * ((v46 - *(*(v46 + 80) + 40)) >> 3);
        }

        if (v47 < v48)
        {
          break;
        }
      }

LABEL_101:
      v49 = a2;
      if (i < a2)
      {
        v49 = a2 - 1;
        if (*(v14 + 67))
        {
LABEL_103:
          if (v41)
          {
            v50 = *(v14 + 68);
            v51 = *(v40 + 68);
            goto LABEL_107;
          }
        }

        else
        {
          while (1)
          {
            if ((v41 & 1) == 0)
            {
              v50 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
              v51 = 678152731 * ((v40 - *(*(v40 + 80) + 40)) >> 3);
LABEL_107:
              if (v50 >= v51)
              {
                break;
              }
            }

            v52 = *--v49;
            v40 = v52;
            v41 = *(v52 + 67);
            if (*(v14 + 67))
            {
              goto LABEL_103;
            }
          }
        }
      }

      if (i >= v49)
      {
        goto LABEL_127;
      }

      v53 = *i;
      v54 = *v49;
      while (2)
      {
        *i++ = v54;
        *v49 = v53;
        while (2)
        {
          v53 = *i;
          if (v15)
          {
            if (*(*i + 67))
            {
              v55 = *(v14 + 68);
              v56 = *(v53 + 68);
              goto LABEL_118;
            }

            goto LABEL_119;
          }

          if (*(*i + 67))
          {
            goto LABEL_120;
          }

          v55 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          v56 = 678152731 * ((v53 - *(*(v53 + 80) + 40)) >> 3);
LABEL_118:
          if (v55 >= v56)
          {
LABEL_119:
            ++i;
            continue;
          }

          break;
        }

        do
        {
LABEL_120:
          v57 = *--v49;
          v54 = v57;
          v58 = *(v57 + 67);
          if (v15)
          {
            if (!v58)
            {
              break;
            }

            v59 = *(v14 + 68);
            v60 = *(v54 + 68);
          }

          else
          {
            if (v58)
            {
              goto LABEL_120;
            }

            v59 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
            v60 = 678152731 * ((v54 - *(*(v54 + 80) + 40)) >> 3);
          }
        }

        while (v59 < v60);
        if (i < v49)
        {
          continue;
        }

        break;
      }

LABEL_127:
      v61 = i - 1;
      if (i - 1 != v7)
      {
        *v7 = *v61;
      }

      a4 = 0;
      *v61 = v14;
    }

    else
    {
      if ((v15 & 1) == 0)
      {
        if ((678152731 * ((v16 - *(*(v16 + 80) + 40)) >> 3)) >= (678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3)))
        {
LABEL_77:
          v40 = *v8;
          if (*(*v8 + 67))
          {
            v41 = 1;
LABEL_83:
            i = v7 + 1;
            while (2)
            {
              v43 = *i;
              if (*(v14 + 67))
              {
                if (*(*i + 67))
                {
                  v44 = *(v14 + 68);
                  v45 = *(v43 + 68);
LABEL_89:
                  if (v44 < v45)
                  {
                    goto LABEL_101;
                  }
                }

                ++i;
                continue;
              }

              break;
            }

            if (*(*i + 67))
            {
              goto LABEL_101;
            }

            v44 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
            v45 = 678152731 * ((v43 - *(*(v43 + 80) + 40)) >> 3);
            goto LABEL_89;
          }

          v41 = 0;
          v17 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          v42 = 678152731 * ((v40 - *(*(v40 + 80) + 40)) >> 3);
          goto LABEL_82;
        }

        LOBYTE(v15) = 0;
      }

LABEL_24:
      for (j = 0; ; ++j)
      {
        v19 = v7[j + 1];
        if (*(v19 + 67) == 1)
        {
          if ((v15 & 1) == 0)
          {
            break;
          }

          v20 = *(v19 + 68);
          v21 = *(v14 + 68);
        }

        else
        {
          if (v15)
          {
            continue;
          }

          v20 = 678152731 * ((v19 - *(*(v19 + 80) + 40)) >> 3);
          v21 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
        }

        if (v20 >= v21)
        {
          break;
        }
      }

      v22 = &v7[j];
      v23 = &v7[j + 1];
      k = a2 - 1;
      if (j * 8)
      {
        while (1)
        {
          v25 = *k;
          if (*(*k + 67) == 1)
          {
            if ((v15 & 1) == 0)
            {
              goto LABEL_39;
            }

            v26 = *(v25 + 68);
            v27 = *(v14 + 68);
          }

          else
          {
            if (v15)
            {
              goto LABEL_53;
            }

            v26 = 678152731 * ((v25 - *(*(v25 + 80) + 40)) >> 3);
            v27 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          }

          if (v26 < v27)
          {
            goto LABEL_53;
          }

LABEL_39:
          --k;
        }
      }

      k = a2;
      if (v23 < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          v28 = *k;
          if (*(*k + 67) != 1)
          {
            break;
          }

          if (v15)
          {
            if (v23 >= k)
            {
              goto LABEL_53;
            }

            v29 = *(v28 + 68);
            v30 = *(v14 + 68);
LABEL_49:
            if (v29 < v30)
            {
              goto LABEL_53;
            }

            continue;
          }

          if (v23 >= k)
          {
            goto LABEL_53;
          }
        }

        if ((v15 & 1) != 0 || v23 >= k)
        {
          goto LABEL_53;
        }

        v29 = 678152731 * ((v28 - *(*(v28 + 80) + 40)) >> 3);
        v30 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
        goto LABEL_49;
      }

LABEL_53:
      if (v23 >= k)
      {
        goto LABEL_71;
      }

      v31 = *k;
      v32 = v23;
      v33 = k;
      do
      {
        *v32 = v31;
        v32 += 8;
        *v33 = v19;
        while (1)
        {
          v19 = *v32;
          if (*(*v32 + 67) == 1)
          {
            if ((v15 & 1) == 0)
            {
              goto LABEL_63;
            }

            v34 = *(v19 + 68);
            v35 = *(v14 + 68);
          }

          else
          {
            if (v15)
            {
              goto LABEL_62;
            }

            v34 = 678152731 * ((v19 - *(*(v19 + 80) + 40)) >> 3);
            v35 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
          }

          if (v34 >= v35)
          {
            break;
          }

LABEL_62:
          v32 += 8;
        }

        do
        {
LABEL_63:
          while (1)
          {
            v36 = *--v33;
            v31 = v36;
            if (*(v36 + 67) != 1)
            {
              break;
            }

            if (v15)
            {
              v37 = *(v31 + 68);
              v38 = *(v14 + 68);
              goto LABEL_68;
            }
          }

          if (v15)
          {
            break;
          }

          v37 = 678152731 * ((v31 - *(*(v31 + 80) + 40)) >> 3);
          v38 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
LABEL_68:
          ;
        }

        while (v37 >= v38);
      }

      while (v32 < v33);
      v22 = (v32 - 8);
LABEL_71:
      if (v22 != v7)
      {
        *v7 = *v22;
      }

      *v22 = v14;
      if (v23 < k)
      {
LABEL_76:
        result = sub_276BB1F28(v7, v22, a3, a4 & 1);
        a4 = 0;
        i = v22 + 1;
      }

      else
      {
        v39 = sub_276BB3290(v7, v22);
        i = v22 + 1;
        result = sub_276BB3290(v22 + 1, a2);
        if (result)
        {
          a2 = v22;
          if (v39)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v39)
        {
          goto LABEL_76;
        }
      }
    }
  }

  v66 = i + 1;
  v68 = i == a2 || v66 == a2;
  if ((a4 & 1) == 0)
  {
    if (v68)
    {
      return result;
    }

    while (1)
    {
      v126 = v7;
      v7 = v66;
      v128 = *v126;
      v127 = v126[1];
      v129 = *(v127 + 67);
      if (v129 == 1)
      {
        if (!*(*v126 + 67))
        {
          goto LABEL_260;
        }

        v130 = *(v127 + 68);
        v131 = *(v128 + 68);
      }

      else
      {
        if (*(*v126 + 67))
        {
          goto LABEL_253;
        }

        v130 = 678152731 * ((v127 - *(*(v127 + 80) + 40)) >> 3);
        v131 = 678152731 * ((v128 - *(*(v128 + 80) + 40)) >> 3);
      }

      if (v130 < v131)
      {
LABEL_253:
        while (1)
        {
          v132 = v126;
          v133 = v128;
          v134 = *--v126;
          v128 = v134;
          v126[2] = v133;
          v135 = *(v134 + 67);
          if (v129)
          {
            break;
          }

          if ((v135 & 1) == 0)
          {
            v136 = 678152731 * ((v127 - *(*(v127 + 80) + 40)) >> 3);
            v137 = 678152731 * ((v128 - *(*(v128 + 80) + 40)) >> 3);
LABEL_258:
            if (v136 >= v137)
            {
LABEL_259:
              *v132 = v127;
              goto LABEL_260;
            }
          }
        }

        if (!v135)
        {
          goto LABEL_259;
        }

        v136 = *(v127 + 68);
        v137 = *(v128 + 68);
        goto LABEL_258;
      }

LABEL_260:
      v66 = v7 + 1;
      if (v7 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v68)
  {
    return result;
  }

  v69 = 0;
  v70 = i;
  while (2)
  {
    v71 = v70;
    v70 = v66;
    v73 = *v71;
    v72 = v71[1];
    v74 = *(v72 + 67);
    if (v74 == 1)
    {
      if (!*(*v71 + 67))
      {
        goto LABEL_172;
      }

      v75 = *(v72 + 68);
      v76 = *(v73 + 68);
      goto LABEL_158;
    }

    if ((*(*v71 + 67) & 1) == 0)
    {
      v75 = 678152731 * ((v72 - *(*(v72 + 80) + 40)) >> 3);
      v76 = 678152731 * ((v73 - *(*(v73 + 80) + 40)) >> 3);
LABEL_158:
      if (v75 >= v76)
      {
        goto LABEL_172;
      }
    }

    v71[1] = v73;
    v77 = i;
    if (v71 == i)
    {
      goto LABEL_171;
    }

    v78 = v69;
    while (2)
    {
      v79 = *(i + v78 - 8);
      if (!v74)
      {
        if ((*(v79 + 67) & 1) == 0)
        {
          v80 = 678152731 * ((v72 - *(*(v72 + 80) + 40)) >> 3);
          result = 678152731 * ((v79 - *(*(v79 + 80) + 40)) >> 3);
          goto LABEL_166;
        }

LABEL_167:
        --v71;
        *(i + v78) = v79;
        v78 -= 8;
        if (!v78)
        {
          v77 = i;
          goto LABEL_171;
        }

        continue;
      }

      break;
    }

    if (*(v79 + 67))
    {
      v80 = *(v72 + 68);
      result = *(v79 + 68);
LABEL_166:
      if (v80 >= result)
      {
        v77 = v71;
        goto LABEL_171;
      }

      goto LABEL_167;
    }

    v77 = (i + v78);
LABEL_171:
    *v77 = v72;
LABEL_172:
    v66 = v70 + 1;
    v69 += 8;
    if (v70 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t *sub_276BB2D0C(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*result + 67);
  if (*(*a2 + 67) != 1)
  {
    if ((v5 & 1) != 0 || (v9 = 678152731 * ((v3 - *(*(v3 + 80) + 40)) >> 3), v9 < (678152731 * ((v4 - *(*(v4 + 80) + 40)) >> 3))))
    {
      v7 = *a3;
      if ((*(*a3 + 67) & 1) != 0 || (678152731 * ((v7 - *(*(v7 + 80) + 40)) >> 3)) >= (678152731 * ((v3 - *(*(v3 + 80) + 40)) >> 3)))
      {
        *result = v3;
        *a2 = v4;
        v8 = *a3;
        if ((*(*a3 + 67) & 1) == 0)
        {
          if (v5)
          {
LABEL_21:
            *a2 = v8;
            goto LABEL_22;
          }

          v12 = 678152731 * ((v8 - *(*(v8 + 80) + 40)) >> 3);
          v13 = 678152731 * ((v4 - *(*(v4 + 80) + 40)) >> 3);
LABEL_20:
          if (v12 >= v13)
          {
            return result;
          }

          goto LABEL_21;
        }

        if (!v5)
        {
          return result;
        }

LABEL_17:
        v12 = *(v8 + 68);
        v13 = *(v4 + 68);
        goto LABEL_20;
      }

LABEL_12:
      *result = v7;
LABEL_22:
      *a3 = v4;
      return result;
    }

    v10 = *a3;
    if (*(*a3 + 67))
    {
      return result;
    }

    v11 = 678152731 * ((v10 - *(*(v10 + 80) + 40)) >> 3);
    goto LABEL_26;
  }

  if (*(*result + 67))
  {
    v6 = *(v3 + 68);
    if (v6 < *(v4 + 68))
    {
      v7 = *a3;
      if (*(*a3 + 67) == 1 && *(v7 + 68) >= v6)
      {
        *result = v3;
        *a2 = v4;
        v8 = *a3;
        if ((*(*a3 + 67) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  v10 = *a3;
  if (*(*a3 + 67))
  {
    v11 = *(v10 + 68);
    v9 = *(v3 + 68);
LABEL_26:
    if (v11 >= v9)
    {
      return result;
    }
  }

  *a2 = v10;
  *a3 = v3;
  v14 = *a2;
  v15 = *result;
  if (*(*a2 + 67) == 1)
  {
    if (!*(*result + 67))
    {
      return result;
    }

    v16 = *(v14 + 68);
    v17 = *(v15 + 68);
  }

  else
  {
    if (*(*result + 67))
    {
LABEL_33:
      *result = v14;
      *a2 = v15;
      return result;
    }

    v16 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
    v17 = 678152731 * ((v15 - *(*(v15 + 80) + 40)) >> 3);
  }

  if (v16 < v17)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t *sub_276BB2F20(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_276BB2D0C(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  if (*(*a4 + 67) == 1)
  {
    if (!*(*a3 + 67))
    {
      return result;
    }

    v11 = *(v9 + 68);
    v12 = *(v10 + 68);
  }

  else
  {
    if (*(*a3 + 67))
    {
      goto LABEL_7;
    }

    v11 = 678152731 * ((v9 - *(*(v9 + 80) + 40)) >> 3);
    v12 = 678152731 * ((v10 - *(*(v10 + 80) + 40)) >> 3);
  }

  if (v11 >= v12)
  {
    return result;
  }

LABEL_7:
  *a3 = v9;
  *a4 = v10;
  v13 = *a3;
  v14 = *a2;
  if (*(*a3 + 67) == 1)
  {
    if (!*(*a2 + 67))
    {
      return result;
    }

    v15 = *(v13 + 68);
    v16 = *(v14 + 68);
  }

  else
  {
    if (*(*a2 + 67))
    {
      goto LABEL_13;
    }

    v15 = 678152731 * ((v13 - *(*(v13 + 80) + 40)) >> 3);
    v16 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
  }

  if (v15 >= v16)
  {
    return result;
  }

LABEL_13:
  *a2 = v13;
  *a3 = v14;
  v17 = *a2;
  v18 = *a1;
  if (*(*a2 + 67) == 1)
  {
    if (!*(*a1 + 67))
    {
      return result;
    }

    v19 = *(v17 + 68);
    v20 = *(v18 + 68);
LABEL_18:
    if (v19 >= v20)
    {
      return result;
    }

    goto LABEL_19;
  }

  if ((*(*a1 + 67) & 1) == 0)
  {
    v19 = 678152731 * ((v17 - *(*(v17 + 80) + 40)) >> 3);
    v20 = 678152731 * ((v18 - *(*(v18 + 80) + 40)) >> 3);
    goto LABEL_18;
  }

LABEL_19:
  *a1 = v17;
  *a2 = v18;
  return result;
}

uint64_t *sub_276BB309C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_276BB2F20(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a4;
  if (*(*a5 + 67) == 1)
  {
    if (!*(*a4 + 67))
    {
      return result;
    }

    v13 = *(v11 + 68);
    v14 = *(v12 + 68);
  }

  else
  {
    if (*(*a4 + 67))
    {
      goto LABEL_7;
    }

    v13 = 678152731 * ((v11 - *(*(v11 + 80) + 40)) >> 3);
    v14 = 678152731 * ((v12 - *(*(v12 + 80) + 40)) >> 3);
  }

  if (v13 >= v14)
  {
    return result;
  }

LABEL_7:
  *a4 = v11;
  *a5 = v12;
  v15 = *a4;
  v16 = *a3;
  if (*(*a4 + 67) == 1)
  {
    if (!*(*a3 + 67))
    {
      return result;
    }

    v17 = *(v15 + 68);
    v18 = *(v16 + 68);
  }

  else
  {
    if (*(*a3 + 67))
    {
      goto LABEL_13;
    }

    v17 = 678152731 * ((v15 - *(*(v15 + 80) + 40)) >> 3);
    v18 = 678152731 * ((v16 - *(*(v16 + 80) + 40)) >> 3);
  }

  if (v17 >= v18)
  {
    return result;
  }

LABEL_13:
  *a3 = v15;
  *a4 = v16;
  v19 = *a3;
  v20 = *a2;
  if (*(*a3 + 67) == 1)
  {
    if (!*(*a2 + 67))
    {
      return result;
    }

    v21 = *(v19 + 68);
    v22 = *(v20 + 68);
  }

  else
  {
    if (*(*a2 + 67))
    {
      goto LABEL_19;
    }

    v21 = 678152731 * ((v19 - *(*(v19 + 80) + 40)) >> 3);
    v22 = 678152731 * ((v20 - *(*(v20 + 80) + 40)) >> 3);
  }

  if (v21 >= v22)
  {
    return result;
  }

LABEL_19:
  *a2 = v19;
  *a3 = v20;
  v23 = *a2;
  v24 = *a1;
  if (*(*a2 + 67) == 1)
  {
    if (!*(*a1 + 67))
    {
      return result;
    }

    v25 = *(v23 + 68);
    v26 = *(v24 + 68);
LABEL_24:
    if (v25 >= v26)
    {
      return result;
    }

    goto LABEL_25;
  }

  if ((*(*a1 + 67) & 1) == 0)
  {
    v25 = 678152731 * ((v23 - *(*(v23 + 80) + 40)) >> 3);
    v26 = 678152731 * ((v24 - *(*(v24 + 80) + 40)) >> 3);
    goto LABEL_24;
  }

LABEL_25:
  *a1 = v23;
  *a2 = v24;
  return result;
}

BOOL sub_276BB3290(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_276BB2D0C(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_276BB2F20(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_276BB309C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 67) == 1)
      {
        if (!*(*a1 + 67))
        {
          return 1;
        }

        v7 = *(v5 + 68);
        v8 = *(v6 + 68);
      }

      else
      {
        if (*(*a1 + 67))
        {
LABEL_37:
          *a1 = v5;
          *(a2 - 1) = v6;
          return 1;
        }

        v7 = 678152731 * ((v5 - *(*(v5 + 80) + 40)) >> 3);
        v8 = 678152731 * ((v6 - *(*(v6 + 80) + 40)) >> 3);
      }

      if (v7 >= v8)
      {
        return 1;
      }

      goto LABEL_37;
    }
  }

  v9 = a1 + 2;
  sub_276BB2D0C(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = *v10;
    v14 = *v9;
    v15 = *(*v10 + 67);
    if (v15 == 1)
    {
      if (!*(*v9 + 67))
      {
        goto LABEL_31;
      }

      v16 = *(v13 + 68);
      v17 = *(v14 + 68);
LABEL_19:
      if (v16 >= v17)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if ((*(*v9 + 67) & 1) == 0)
    {
      v16 = 678152731 * ((v13 - *(*(v13 + 80) + 40)) >> 3);
      v17 = 678152731 * ((v14 - *(*(v14 + 80) + 40)) >> 3);
      goto LABEL_19;
    }

LABEL_20:
    *v10 = v14;
    v18 = v11;
    while (1)
    {
      v19 = *(a1 + v18 + 8);
      if (v15)
      {
        break;
      }

      if ((*(v19 + 67) & 1) == 0)
      {
        v20 = 678152731 * ((v13 - *(*(v13 + 80) + 40)) >> 3);
        v21 = 678152731 * ((v19 - *(*(v19 + 80) + 40)) >> 3);
        goto LABEL_26;
      }

LABEL_27:
      *(a1 + v18 + 16) = v19;
      v18 -= 8;
      if (v18 == -16)
      {
        v22 = a1;
        goto LABEL_30;
      }
    }

    if (!*(v19 + 67))
    {
      goto LABEL_29;
    }

    v20 = *(v13 + 68);
    v21 = *(v19 + 68);
LABEL_26:
    if (v20 < v21)
    {
      goto LABEL_27;
    }

LABEL_29:
    v22 = (a1 + v18 + 16);
LABEL_30:
    *v22 = v13;
    if (++v12 != 8)
    {
LABEL_31:
      v9 = v10;
      v11 += 8;
      if (++v10 == a2)
      {
        return 1;
      }

      continue;
    }

    return v10 + 1 == a2;
  }
}

void sub_276BB34EC(const google::protobuf::Message **a1, const google::protobuf::Message **a2, const google::protobuf::FieldDescriptor **a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = a2 - a1;
    while (1)
    {
      v9 = operator new(8 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  sub_276BB35E8(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_276BB35D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276BB35E8(const google::protobuf::Message **a1, const google::protobuf::Message **a2, const google::protobuf::FieldDescriptor **a3, unint64_t a4, const google::protobuf::Message **a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (sub_276BB37A8(a3, *(a2 - 1), *a1))
      {
        v9 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v9;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = &a1[a4 >> 1];
      v15 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_276BB3B74(a1, v14, a3, v15, a5);
        sub_276BB3B74(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v13]);

        sub_276BB3CD0(a5, &a5[v13], &a5[v13], &a5[a4], a1, a3);
      }

      else
      {
        sub_276BB35E8(a1, v14, a3, v15, a5, a6);
        sub_276BB35E8(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        sub_276BB3D90(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      sub_276BB3AA8(a1, a2, a3);
    }
  }
}

uint64_t sub_276BB37A8(const google::protobuf::FieldDescriptor **a1, const google::protobuf::Message *a2, const google::protobuf::Message *a3)
{
  (*(*a2 + 152))(a2);
  v7 = v6;
  v8 = *a1;
  v9 = *(*a1 + 6);
  if (v9)
  {
    v33 = *a1;
    v34 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      __p[0].__r_.__value_.__r.__words[0] = &v34;
      __p[0].__r_.__value_.__l.__size_ = &v33;
      v31[0] = __p;
      std::__call_once(v9, v31, sub_2769C149C);
    }
  }

  v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 14)];
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      UInt64 = google::protobuf::Reflection::GetUInt64(v7, a2, *a1);
      v12 = UInt64 >= google::protobuf::Reflection::GetUInt64(v7, a3, *a1);
      return !v12;
    }

    if (v10 != 9)
    {
      if (v10 == 7)
      {
        Bool = google::protobuf::Reflection::GetBool(v7, a2, *a1);
        return google::protobuf::Reflection::GetBool(v7, a3, *a1) & (Bool ^ 1);
      }

      goto LABEL_18;
    }

    google::protobuf::Reflection::GetString(v7, a2, *a1, __p);
    google::protobuf::Reflection::GetString(v7, a3, *a1, v31);
    v20 = v32;
    v21 = v31[0];
    v22 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0].__r_.__value_.__r.__words[0];
    }

    if (v32 >= 0)
    {
      v25 = v32;
    }

    else
    {
      v25 = v31[1];
    }

    if (v32 >= 0)
    {
      v26 = v31;
    }

    else
    {
      v26 = v31[0];
    }

    if (v25 >= size)
    {
      v27 = size;
    }

    else
    {
      v27 = v25;
    }

    v28 = memcmp(v24, v26, v27);
    if (v28)
    {
      v14 = v28 < 0;
    }

    else
    {
      v14 = size < v25;
    }

    if (v20 < 0)
    {
      operator delete(v21);
      v22 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    if (v22 < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        Int32 = google::protobuf::Reflection::GetInt32(v7, a2, *a1);
        v16 = Int32 < google::protobuf::Reflection::GetInt32(v7, a3, *a1);
        break;
      case 2:
        Int64 = google::protobuf::Reflection::GetInt64(v7, a2, *a1);
        v16 = Int64 < google::protobuf::Reflection::GetInt64(v7, a3, *a1);
        break;
      case 3:
        UInt32 = google::protobuf::Reflection::GetUInt32(v7, a2, *a1);
        v12 = UInt32 >= google::protobuf::Reflection::GetUInt32(v7, a3, *a1);
        return !v12;
      default:
LABEL_18:
        google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/text_format.cc", 2116);
        v18 = google::protobuf::internal::LogMessage::operator<<(__p, "Invalid key for map field.");
        google::protobuf::internal::LogFinisher::operator=(v31, &v18->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        return 1;
    }

    return v16;
  }

  return v14;
}

uint64_t sub_276BB3AA8(uint64_t result, const google::protobuf::Message **a2, const google::protobuf::FieldDescriptor **a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = *v8;
        v8 = v5;
        result = sub_276BB37A8(a3, *v5, v9);
        if (result)
        {
          v10 = *v8;
          v11 = v7;
          while (1)
          {
            *(v4 + v11 + 8) = *(v4 + v11);
            if (!v11)
            {
              break;
            }

            result = sub_276BB37A8(a3, v10, *(v4 + v11 - 8));
            v11 -= 8;
            if ((result & 1) == 0)
            {
              v12 = (v4 + v11 + 8);
              goto LABEL_10;
            }
          }

          v12 = v4;
LABEL_10:
          *v12 = v10;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

const google::protobuf::Message **sub_276BB3B74(const google::protobuf::Message **result, const google::protobuf::Message **a2, const google::protobuf::FieldDescriptor **a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      result = sub_276BB37A8(a3, *(a2 - 1), *result);
      if (result)
      {
        *a5 = *(a2 - 1);
        v10 = *v9;
      }

      else
      {
        *a5 = *v9;
        v10 = *(a2 - 1);
      }

      *(a5 + 8) = v10;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      sub_276BB35E8(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      sub_276BB35E8(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5 + 8 * (a4 >> 1), a4 - (a4 >> 1));

      return sub_276BB40DC(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return sub_276BB4000(result, a2, a5, a3);
    }
  }

  return result;
}

uint64_t sub_276BB3CD0(uint64_t result, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::Message **a4, const google::protobuf::Message **a5, const google::protobuf::FieldDescriptor **a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = sub_276BB37A8(a6, *a3, *v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 0;
      }

      else
      {
        v13 = 8;
      }

      v11 = (v11 + v13);
      if (result)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      a3 = (a3 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

void sub_276BB3D90(const google::protobuf::Message **a1, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::FieldDescriptor **a4, uint64_t a5, uint64_t a6, const google::protobuf::Message **a7, uint64_t a8)
{
  if (a6)
  {
    v10 = a6;
    do
    {
      if (v10 <= a8 || a5 <= a8)
      {
        sub_276BB419C(a1, a2, a3, a4, a5, v10, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v16 = 0;
      v17 = 0;
      while ((sub_276BB37A8(a4, *a2, a1[v17]) & 1) == 0)
      {
        ++v17;
        v16 -= 8;
        if (a5 == v17)
        {
          return;
        }
      }

      v18 = a5 - v17;
      v40 = a8;
      v41 = a7;
      v42 = a3;
      v39 = &a1[v16 / 0xFFFFFFFFFFFFFFF8];
      if (a5 - v17 >= v10)
      {
        if (a5 - 1 == v17)
        {
          v34 = a1[v17];
          a1[v17] = *a2;
          *a2 = v34;
          return;
        }

        v35 = v18 / 2;
        v37 = v10;
        v24 = &a1[v18 / 2];
        v43 = *a4;
        v21 = a2;
        if (a2 != a3)
        {
          v25 = a3 - a2;
          v21 = a2;
          do
          {
            v26 = &v21[v25 >> 1];
            v28 = *v26;
            v27 = v26 + 1;
            v29 = sub_276BB37A8(&v43, v28, v24[v17]);
            if (v29)
            {
              v25 += ~(v25 >> 1);
            }

            else
            {
              v25 >>= 1;
            }

            if (v29)
            {
              v21 = v27;
            }
          }

          while (v25);
        }

        v19 = v21 - a2;
        v22 = &v24[v16 / 0xFFFFFFFFFFFFFFF8];
        v23 = v35;
        v20 = v37;
      }

      else
      {
        v19 = v10 / 2;
        v20 = v10;
        v21 = &a2[v10 / 2];
        v22 = sub_276BB4270(&a1[v16 / 0xFFFFFFFFFFFFFFF8], a2, v21, a4);
        v23 = (v22 - a1 + v16) >> 3;
      }

      v36 = a5 - v23 - v17;
      v38 = v22;
      v30 = v20 - v19;
      v31 = sub_276BB42F4(v22, a2, v21);
      a1 = v31;
      v32 = v23;
      if (v23 + v19 >= v20 + a5 - (v23 + v19) - v17)
      {
        a3 = v31;
        a7 = v41;
        sub_276BB3D90(v31, v21, v42, a4, v36, v30, v41, v40);
        v21 = v38;
        a1 = v39;
        v30 = v19;
        a8 = v40;
        a5 = v32;
      }

      else
      {
        v33 = v19;
        a8 = v40;
        a7 = v41;
        sub_276BB3D90(v39, v38, v31, a4, v23, v33, v41, v40);
        a3 = v42;
        a5 = v36;
      }

      a2 = v21;
      v10 = v30;
    }

    while (v30);
  }
}

const google::protobuf::Message **sub_276BB4000(const google::protobuf::Message **result, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::FieldDescriptor **a4)
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v10 = v9;
        v11 = *v9++;
        result = sub_276BB37A8(a4, *v6, v11);
        v12 = v9;
        if (result)
        {
          v10[1] = *v10;
          v12 = a3;
          if (v10 != a3)
          {
            v13 = v8;
            while (1)
            {
              v12 = (a3 + v13);
              result = sub_276BB37A8(a4, *v6, *(a3 + v13 - 8));
              if (!result)
              {
                break;
              }

              *v12 = *(v12 - 1);
              v13 -= 8;
              if (!v13)
              {
                v12 = a3;
                break;
              }
            }
          }
        }

        v14 = *v6++;
        *v12 = v14;
        v8 += 8;
      }

      while (v6 != a2);
    }
  }

  return result;
}

uint64_t sub_276BB40DC(uint64_t result, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::Message **a4, const google::protobuf::Message **a5, const google::protobuf::FieldDescriptor **a6)
{
  if (result == a2)
  {
LABEL_16:
    while (a3 != a4)
    {
      v15 = *a3++;
      *a5++ = v15;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = sub_276BB37A8(a6, *a3, *v11);
      if (result)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (result)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (result)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *a5++ = *v12;
      if (v11 == a2)
      {
        goto LABEL_16;
      }
    }

    while (v11 != a2)
    {
      v16 = *v11++;
      *a5++ = v16;
    }
  }

  return result;
}

void sub_276BB419C(const google::protobuf::Message **__dst, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::FieldDescriptor **a4, uint64_t a5, uint64_t a6, const google::protobuf::Message **__src)
{
  if (a5 <= a6)
  {
    v12 = __src;
    if (__dst != a2)
    {
      v12 = __src;
      v13 = __dst;
      do
      {
        v14 = *v13++;
        *v12++ = v14;
      }

      while (v13 != a2);
    }

    sub_276BB43B8(__src, v12, a2, a3, __dst, a4);
  }

  else
  {
    v9 = __src;
    if (a2 != a3)
    {
      v9 = __src;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9++ = v11;
      }

      while (v10 != a3);
    }

    v15 = a4;
    sub_276BB4484(v9, v9, __src, __src, a2, a2, __dst, __dst, a3, a3, &v15);
  }
}

const google::protobuf::Message **sub_276BB4270(const google::protobuf::Message **a1, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::FieldDescriptor **a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = &v4[v7 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      if (sub_276BB37A8(a4, *a3, v10))
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v9;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

char *sub_276BB42F4(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_276BB453C(__src, a2, a3);
    }
  }

  return v4;
}

const google::protobuf::Message **sub_276BB43B8(const google::protobuf::Message **__src, const google::protobuf::Message **a2, const google::protobuf::Message **a3, const google::protobuf::Message **a4, const google::protobuf::Message **__dst, const google::protobuf::FieldDescriptor **a6)
{
  if (__src != a2)
  {
    v11 = __src;
    while (a3 != a4)
    {
      __src = sub_276BB37A8(a6, *a3, *v11);
      if (__src)
      {
        v12 = a3;
      }

      else
      {
        v12 = v11;
      }

      if (__src)
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
      if (__src)
      {
        v14 = 0;
      }

      else
      {
        v14 = 8;
      }

      v11 = (v11 + v14);
      *__dst++ = *v12;
      if (v11 == a2)
      {
        return __src;
      }
    }

    return memmove(__dst, v11, a2 - v11);
  }

  return __src;
}

void sub_276BB4484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const google::protobuf::FieldDescriptor ***a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v16 = sub_276BB37A8(*a11, *(v14 - 8), *(a6 - 8));
      if (v16)
      {
        v17 = a6;
      }

      else
      {
        v17 = v14;
      }

      if (v16)
      {
        a6 -= 8;
      }

      else
      {
        v14 -= 8;
      }

      *(a10 - 8) = *(v17 - 8);
      a10 -= 8;
      if (v14 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v18 = -8;
      do
      {
        v19 = *(v14 - 8);
        v14 -= 8;
        *(a10 + v18) = v19;
        v18 -= 8;
      }

      while (v14 != a4);
    }
  }
}

char *sub_276BB453C(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void google::protobuf::StringPiece::LogFatalSizeTooBig(google::protobuf::StringPiece *this, const std::string::value_type *a2, const char *a3)
{
  google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/stubs/stringpiece.cc", 49);
  v5 = google::protobuf::internal::LogMessage::operator<<(v10, "size too big: ");
  v6 = google::protobuf::internal::LogMessage::operator<<(v5, this);
  v7 = google::protobuf::internal::LogMessage::operator<<(v6, " details: ");
  v8 = google::protobuf::internal::LogMessage::operator<<(v7, a2);
  google::protobuf::internal::LogFinisher::operator=(&v9, &v8->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
}

void sub_276BB46B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::StringPiece::StringPiece(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2 + a4;
  result[1] = a3 - a4;
  return result;
}

{
  *result = a2 + a4;
  result[1] = a3 - a4;
  return result;
}

void *google::protobuf::StringPiece::StringPiece(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - a4;
  if (a3 - a4 >= a5)
  {
    v5 = a5;
  }

  *result = a2 + a4;
  result[1] = v5;
  return result;
}

{
  v5 = a3 - a4;
  if (a3 - a4 >= a5)
  {
    v5 = a5;
  }

  *result = a2 + a4;
  result[1] = v5;
  return result;
}

void google::protobuf::StringPiece::CopyToString(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  JUMPOUT(0x277C9F460);
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
    v8 = sub_276BB4F08((*a1 + a4), *a1 + v4, a2, &a2[a3]);
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

unint64_t google::protobuf::StringPiece::substr(google::protobuf::StringPiece *this, unint64_t a2)
{
  if (*(this + 1) >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = *(this + 1);
  }

  return *this + v2;
}

unsigned __int8 *sub_276BB4F08(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
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

google::protobuf::io::Tokenizer *google::protobuf::io::Tokenizer::Tokenizer(google::protobuf::io::Tokenizer *this, ZeroCopyInputStream *a2, google::protobuf::io::ErrorCollector *a3, double a4, __n128 a5)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  a5.n128_u64[0] = 0;
  *(this + 24) = a5;
  *(this + 4) = 0u;
  *(this + 12) = a2;
  *(this + 13) = a3;
  *(this + 140) = 0;
  *(this + 19) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 40) = -1;
  *(this + 164) = 0;
  *(this + 42) = 0;
  *(this + 86) = 1;
  *(this + 10) = 0;
  *this = 0;
  google::protobuf::io::Tokenizer::Refresh(this);
  return this;
}

void sub_276BB5038(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::Refresh(uint64_t this)
{
  v1 = this;
  if (*(this + 136) == 1)
  {
    *(this + 112) = 0;
  }

  else
  {
    v2 = *(this + 152);
    if (v2)
    {
      v3 = *(v1 + 160);
      v4 = *(v1 + 128);
      if (v4 > v3)
      {
        std::string::append(v2, (*(v1 + 120) + v3), v4 - v3);
        *(v1 + 160) = 0;
      }
    }

    v7 = 0;
    *(v1 + 120) = 0;
    *(v1 + 132) = 0;
    while (1)
    {
      this = (*(**(v1 + 96) + 16))(*(v1 + 96), &v7, v1 + 128);
      if ((this & 1) == 0)
      {
        break;
      }

      if (*(v1 + 128))
      {
        v5 = v7;
        *(v1 + 120) = v7;
        v6 = *v5;
        goto LABEL_11;
      }
    }

    v6 = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 1;
LABEL_11:
    *(v1 + 112) = v6;
  }

  return this;
}

void google::protobuf::io::Tokenizer::~Tokenizer(google::protobuf::io::Tokenizer *this)
{
  v2 = *(this + 32);
  v3 = *(this + 33);
  if (v2 > v3)
  {
    (*(**(this + 12) + 24))(*(this + 12), (v2 - v3));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t google::protobuf::io::Tokenizer::NextChar(uint64_t this)
{
  v1 = *(this + 112);
  if (v1 == 9)
  {
    v2 = *(this + 144);
    if (v2 <= 0)
    {
      v3 = -(-v2 & 7);
    }

    else
    {
      v3 = *(this + 144) & 7;
    }

    v4 = v2 - v3 + 8;
  }

  else
  {
    if (v1 == 10)
    {
      *(this + 140) = (*(this + 140) + 1);
      goto LABEL_10;
    }

    v4 = *(this + 144) + 1;
  }

  *(this + 144) = v4;
LABEL_10:
  v5 = *(this + 128);
  v6 = *(this + 132) + 1;
  *(this + 132) = v6;
  if (v6 >= v5)
  {
    return google::protobuf::io::Tokenizer::Refresh(this);
  }

  *(this + 112) = *(*(this + 120) + v6);
  return this;
}

void google::protobuf::io::Tokenizer::ConsumeString(google::protobuf::io::Tokenizer *this, unsigned __int8 a2)
{
  v3 = a2;
  while (1)
  {
    v4 = *(this + 112);
    if (v4 == 10)
    {
      break;
    }

    if (v4 == 92)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v5 = *(this + 112);
      v6 = (v5 - 97) > 0x15 || ((1 << (v5 - 97)) & 0x2A2023) == 0;
      if (!v6 || (v5 - 34) <= 0x3A && ((1 << (v5 - 34)) & 0x400000020000021) != 0 || (v5 & 0xF8) == 0x30)
      {
        goto LABEL_23;
      }

      switch(v5)
      {
        case 'U':
          google::protobuf::io::Tokenizer::NextChar(this);
          if (*(this + 112) != 48)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if (*(this + 112) != 48)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) & 0xFE) != 0x30)
          {
            goto LABEL_55;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu)
          {
            v12 = *(this + 112) - 65;
            if (v12 > 0x25 || ((1 << v12) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_55;
            }
          }

          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu)
          {
            v13 = *(this + 112) - 65;
            if (v13 > 0x25 || ((1 << v13) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_55;
            }
          }

          if ((google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v14 = *(this + 112) - 65, v14 > 0x25) || ((1 << v14) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v15 = *(this + 112) - 65, v15 > 0x25) || ((1 << v15) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v16 = *(this + 112) - 65, v16 > 0x25) || ((1 << v16) & 0x3F0000003FLL) == 0))
          {
LABEL_55:
            sub_276A4D46C(__p, "Expected eight hex digits up to 10ffff for \\U escape sequence");
            (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
            goto LABEL_57;
          }

          goto LABEL_23;
        case 'u':
          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) >= 0xAu && ((v8 = *(this + 112) - 65, v8 > 0x25) || ((1 << v8) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v9 = *(this + 112) - 65, v9 > 0x25) || ((1 << v9) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v10 = *(this + 112) - 65, v10 > 0x25) || ((1 << v10) & 0x3F0000003FLL) == 0) || (google::protobuf::io::Tokenizer::NextChar(this), (*(this + 112) - 48) >= 0xAu) && ((v11 = *(this + 112) - 65, v11 > 0x25) || ((1 << v11) & 0x3F0000003FLL) == 0))
          {
            sub_276A4D46C(__p, "Expected four hex digits for \\u escape sequence.");
            (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
            goto LABEL_57;
          }

LABEL_23:
          google::protobuf::io::Tokenizer::NextChar(this);
          break;
        case 'x':
          google::protobuf::io::Tokenizer::NextChar(this);
          if ((*(this + 112) - 48) < 0xAu)
          {
            goto LABEL_23;
          }

          v7 = *(this + 112) - 65;
          if (v7 <= 0x25 && ((1 << v7) & 0x3F0000003FLL) != 0)
          {
            goto LABEL_23;
          }

          sub_276A4D46C(__p, "Expected hex digits for escape sequence.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
LABEL_57:
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          break;
        default:
          sub_276A4D46C(__p, "Invalid escape sequence in string literal.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
          goto LABEL_57;
      }
    }

    else
    {
      if (!*(this + 112))
      {
        sub_276A4D46C(__p, "Unexpected end of string.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        goto LABEL_61;
      }

      google::protobuf::io::Tokenizer::NextChar(this);
      if (v4 == v3)
      {
        return;
      }
    }
  }

  if (*(this + 173))
  {
    goto LABEL_23;
  }

  sub_276A4D46C(__p, "String literals cannot cross line boundaries.");
  (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
LABEL_61:
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276BB5774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::ConsumeNumber(google::protobuf::io::Tokenizer *this, int a2, int a3)
{
  if (a2)
  {
    v4 = *(this + 112);
    if ((v4 | 0x20) == 0x78)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      if ((*(this + 112) - 48) > 9u && ((v5 = *(this + 112) - 65, v18 = v5 > 0x25, v6 = (1 << v5) & 0x3F0000003FLL, !v18) ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        sub_276A4D46C(__p, "0x must be followed by hex digits.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        do
        {
          do
          {
            google::protobuf::io::Tokenizer::NextChar(this);
          }

          while ((*(this + 112) - 48) < 0xAu);
          v8 = *(this + 112) - 65;
          v18 = v8 > 0x25;
          v9 = (1 << v8) & 0x3F0000003FLL;
        }

        while (!v18 && v9 != 0);
      }

LABEL_14:
      v11 = 0;
      goto LABEL_49;
    }

    if ((v4 - 48) <= 9)
    {
      if ((v4 & 0x38) != 0x30)
      {
        goto LABEL_21;
      }

      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v12 = *(this + 112);
      }

      while ((v12 & 0xF8) == 0x30);
      if ((v12 - 48) <= 9)
      {
LABEL_21:
        sub_276A4D46C(__p, "Numbers starting with leading zero must be in octal.");
        (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (*(this + 112) - 48 <= 9)
        {
          do
          {
            google::protobuf::io::Tokenizer::NextChar(this);
            v11 = 0;
          }

          while (*(this + 112) - 48 < 0xA);
          goto LABEL_49;
        }
      }

      goto LABEL_14;
    }
  }

  v13 = *(this + 112);
  v14 = v13 - 48;
  if (a3)
  {
    if (v14 <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }
  }

  else
  {
    if (v14 <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }

    if (v13 != 46)
    {
      v11 = 0;
      goto LABEL_35;
    }

    google::protobuf::io::Tokenizer::NextChar(this);
    v13 = *(this + 112);
    if ((v13 - 48) <= 9)
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
        v13 = *(this + 112);
      }

      while ((v13 - 48) < 0xA);
    }
  }

  v11 = 1;
LABEL_35:
  if ((v13 | 0x20) == 0x65)
  {
    google::protobuf::io::Tokenizer::NextChar(this);
    v15 = *(this + 112);
    if (v15 == 45 || v15 == 43)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
    }

    if (*(this + 112) - 48 > 9)
    {
      sub_276A4D46C(__p, "e must be followed by exponent.");
      (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      do
      {
        google::protobuf::io::Tokenizer::NextChar(this);
      }

      while (*(this + 112) - 48 < 0xA);
    }

    v11 = 1;
  }

  if (*(this + 164) == 1)
  {
    v16 = *(this + 112);
    if (v16 == 70 || v16 == 102)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v11 = 1;
    }
  }

LABEL_49:
  v17 = *(this + 112);
  v18 = v17 != 95 && (v17 & 0xFFFFFFDF) - 65 > 0x19;
  if (v18 || *(this + 172) != 1)
  {
    if (v17 != 46)
    {
      goto LABEL_62;
    }

    if (v11)
    {
      sub_276A4D46C(__p, "Already saw decimal point or exponent; can't have another one.");
    }

    else
    {
      sub_276A4D46C(__p, "Hex and octal numbers must be integers.");
    }

    (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  }

  else
  {
    sub_276A4D46C(__p, "Need space between number and identifier.");
    (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_62:
  if (v11)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void sub_276BB5BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::io::Tokenizer::ConsumeLineComment(uint64_t this, uint64_t a2)
{
  v3 = this;
  if (a2)
  {
    *(this + 152) = a2;
    *(this + 160) = *(this + 132);
  }

  while (*(v3 + 112))
  {
    if (*(v3 + 112) == 10)
    {
      this = google::protobuf::io::Tokenizer::NextChar(v3);
      break;
    }

    this = google::protobuf::io::Tokenizer::NextChar(v3);
  }

  if (a2)
  {
    v4 = *(v3 + 132);
    v5 = *(v3 + 160);
    if (v4 != v5)
    {
      this = std::string::append(*(v3 + 152), (*(v3 + 120) + v5), v4 - v5);
    }

    *(v3 + 152) = 0;
    *(v3 + 160) = -1;
  }

  return this;
}

void google::protobuf::io::Tokenizer::ConsumeBlockComment(google::protobuf::io::Tokenizer *this, uint64_t a2)
{
  v4 = *(this + 35);
  v5 = (*(this + 36) - 2);
  if (a2)
  {
    *(this + 19) = a2;
    *(this + 40) = *(this + 33);
  }

  while (1)
  {
    while (1)
    {
      v6 = *(this + 112);
      if (v6 > 0x29)
      {
        break;
      }

      if (*(this + 112))
      {
        if (v6 != 10)
        {
          goto LABEL_22;
        }

        google::protobuf::io::Tokenizer::NextChar(this);
        if (a2)
        {
          v7 = *(this + 33);
          v8 = *(this + 40);
          if (v7 != v8)
          {
            std::string::append(*(this + 19), (*(this + 15) + v8), v7 - v8);
          }

          *(this + 19) = 0;
          *(this + 40) = -1;
        }

        while (1)
        {
          v9 = *(this + 112);
          if (v9 > 0x2A)
          {
            break;
          }

          if (((1 << v9) & 0x100003A00) == 0)
          {
            if (v9 == 42)
            {
              google::protobuf::io::Tokenizer::NextChar(this);
              if (*(this + 112) == 47)
              {
                google::protobuf::io::Tokenizer::NextChar(this);
                return;
              }
            }

            break;
          }

          google::protobuf::io::Tokenizer::NextChar(this);
        }

        if (a2)
        {
          *(this + 19) = a2;
          *(this + 40) = *(this + 33);
        }
      }

      else
      {
LABEL_24:
        if (!v6)
        {
          sub_276A4D46C(__p, "End-of-file inside block comment.");
          (*(**(this + 13) + 16))(*(this + 13), *(this + 35), *(this + 36), __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          v10 = *(this + 13);
          sub_276A4D46C(__p, "  Comment started here.");
          (*(*v10 + 16))(v10, v4, v5, __p);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }

          if (a2)
          {
            v11 = *(this + 33);
            v12 = *(this + 40);
            if (v11 != v12)
            {
              std::string::append(*(this + 19), (*(this + 15) + v12), v11 - v12);
            }

            *(this + 19) = 0;
            *(this + 40) = -1;
          }

          return;
        }
      }
    }

    if (v6 == 42)
    {
      break;
    }

    if (v6 == 47)
    {
      google::protobuf::io::Tokenizer::NextChar(this);
      v6 = *(this + 112);
      if (v6 != 42)
      {
        goto LABEL_24;
      }