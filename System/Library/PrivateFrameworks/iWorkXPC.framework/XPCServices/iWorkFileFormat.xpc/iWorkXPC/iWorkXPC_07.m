uint64_t google::protobuf::DescriptorPool::FindExtensionByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_1000B3420(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) != 2)
  {
    return 0;
  }

  result = v5;
  if ((*(v5 + 67) & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::FindExtensionByNumber(std::mutex **this, const google::protobuf::Descriptor *a2, uint64_t a3)
{
  if (!*(a2 + 31))
  {
    return 0;
  }

  v6 = *this;
  if (!*this)
  {
    goto LABEL_10;
  }

  std::mutex::lock(*this);
  v7 = this[4];
  v17 = a2;
  v18 = a3;
  v8 = sub_1000CD868(&v7[6], &v17);
  if (v7[6].__m_.__opaque == v8)
  {
    std::mutex::unlock(v6);
  }

  else
  {
    ExtensionByNumber = v8[6];
    std::mutex::unlock(v6);
    if (ExtensionByNumber)
    {
      return ExtensionByNumber;
    }
  }

  v6 = *this;
  if (*this)
  {
    std::mutex::lock(*this);
    v10 = 0;
  }

  else
  {
LABEL_10:
    v10 = 1;
  }

  if (this[1])
  {
    sub_1000D1AC8(&this[4][1]);
    sub_1000D1AC8(&this[4]->__m_.__opaque[16]);
  }

  v11 = this[4];
  v17 = a2;
  v18 = a3;
  v12 = sub_1000CD868(&v11[6], &v17);
  if (v11[6].__m_.__opaque == v12 || (ExtensionByNumber = v12[6]) == 0)
  {
    v13 = this[3];
    if (!v13 || (ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(v13, a2, a3)) == 0)
    {
      if (!google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(this, a2, a3) || (v14 = this[4], v17 = a2, v18 = a3, v15 = sub_1000CD868(&v14[6], &v17), v14[6].__m_.__opaque == v15) || (ExtensionByNumber = v15[6]) == 0)
      {
        ExtensionByNumber = 0;
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    std::mutex::unlock(v6);
  }

  return ExtensionByNumber;
}

BOOL google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(google::protobuf::DescriptorPool *this, const google::protobuf::Descriptor *a2, uint64_t a3)
{
  if (!*(this + 1))
  {
    return 0;
  }

  google::protobuf::FileDescriptorProto::FileDescriptorProto(v12, 0);
  v9 = ((*(**(this + 1) + 32))(*(this + 1), *(a2 + 1), a3, v12) & 1) != 0 && ((v7 = *(this + 4), sub_1000B3420(&v11, (v13 & 0xFFFFFFFFFFFFFFFELL), v6), v14 = v11, (v8 = sub_1000CD5E4((v7 + 344), &v14)) == 0) || !v8[4]) && google::protobuf::DescriptorPool::BuildFileFromDatabase(this, v12) != 0;
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(v12);
  return v9;
}

void sub_1000B689C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::InternalFindExtensionByNumberNoLock(google::protobuf::DescriptorPool *this, const google::protobuf::Descriptor *a2, int a3)
{
  if (!*(a2 + 31))
  {
    return 0;
  }

  v6 = *(this + 4);
  v10 = a2;
  v11 = a3;
  v7 = sub_1000CD868(v6 + 384, &v10);
  if ((v6 + 392) == v7 || (result = v7[6]) == 0)
  {
    v9 = *(this + 3);
    if (!v9)
    {
      return 0;
    }

    result = google::protobuf::DescriptorPool::InternalFindExtensionByNumberNoLock(v9, a2, a3);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::FindExtensionByPrintableName(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a2 + 124))
  {
    return 0;
  }

  result = google::protobuf::DescriptorPool::FindExtensionByName(a1, a3, a3);
  if (!result || *(result + 80) != a2)
  {
    if (*(*(a2 + 32) + 72) != 1)
    {
      return 0;
    }

    result = google::protobuf::DescriptorPool::FindMessageTypeByName(a1, a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = *(result + 128);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 152 * v9;
      while (1)
      {
        v12 = *(v8 + 80);
        if (*(v12 + v10 + 80) == a2)
        {
          v13 = *(v12 + v10 + 48);
          if (v13)
          {
            v14 = v12 + v10;
            v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v13, memory_order_acquire) != -1)
            {
              v17[0] = &v15;
              v17[1] = &v14;
              v16 = v17;
              std::__call_once(v13, &v16, sub_1000B32C4);
            }
          }

          if (*(v12 + v10 + 56) == 11 && *(v12 + v10 + 60) == 1 && google::protobuf::FieldDescriptor::message_type((v12 + v10)) == v8)
          {
            break;
          }
        }

        v10 += 152;
        if (v11 == v10)
        {
          return 0;
        }
      }

      return v12 + v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B6AA4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v4 = a1;
    v5 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v7[0] = &v5;
      v7[1] = &v4;
      v6 = v7;
      std::__call_once(v2, &v6, sub_1000B32C4);
    }
  }

  return *(a1 + 56);
}

uint64_t google::protobuf::FieldDescriptor::message_type(google::protobuf::FieldDescriptor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4 = this;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v6[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v6[1] = &v4;
      v5 = v6;
      std::__call_once(v2, &v5, sub_1000D6744);
    }
  }

  return *(this + 13);
}

uint64_t google::protobuf::Descriptor::FindFieldByNumber(google::protobuf::Descriptor *this, int a2)
{
  v2 = *(*(this + 2) + 144);
  v3 = v2[20];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (16777619 * a2) ^ (16777499 * this);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (16777619 * a2) ^ (16777499 * this);
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = (*&v3 - 1) & v4;
  }

  v7 = *(*&v2[19] + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = v8[1];
    if (v4 == v9)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v6)
    {
      return 0;
    }

LABEL_20:
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (v8[2] != this || *(v8 + 6) != a2)
  {
    goto LABEL_20;
  }

  v12 = v8[4];
  if (!v12)
  {
    return 0;
  }

  if (*(v12 + 67))
  {
    return 0;
  }

  else
  {
    return v8[4];
  }
}

uint64_t google::protobuf::Descriptor::FindFieldByLowercaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_1000B3420(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  v12 = google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitStatic;
  if (atomic_load_explicit((v4 + 88), memory_order_acquire) != -1)
  {
    v9 = &v12;
    *&v10 = &v11;
    v13 = &v9;
    v7 = v5;
    std::__call_once((v4 + 88), &v13, sub_1000CD8F4);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_1000B5004((v4 + 40), &v9);
  if (result)
  {
    if (*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::Descriptor::FindFieldByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_1000B3420(&v17, a2, a3);
  v5 = v17;
  v19[0] = a1;
  v19[1] = v17;
  v19[2] = v18;
  if (v18 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5++;
      v6 = 5 * v6 + v7;
    }

    while (v5 < &v17[v18]);
  }

  v8 = v4[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 ^ (16777619 * a1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      return 0;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      return 0;
    }
  }

  if (!sub_1000CD908(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) != 2)
  {
    return 0;
  }

  if (*(v14[6] + 67))
  {
    return 0;
  }

  else
  {
    return v14[6];
  }
}

uint64_t google::protobuf::Descriptor::map_key(google::protobuf::Descriptor *this)
{
  if (*(*(this + 4) + 75) == 1)
  {
    return *(this + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::map_value(google::protobuf::Descriptor *this)
{
  if (*(*(this + 4) + 75) == 1)
  {
    return *(this + 5) + 152;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::EnumDescriptor::FindValueByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_1000B3420(&v17, a2, a3);
  v5 = v17;
  v19[0] = a1;
  v19[1] = v17;
  v19[2] = v18;
  if (v18 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5++;
      v6 = 5 * v6 + v7;
    }

    while (v5 < &v17[v18]);
  }

  v8 = v4[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v6 ^ (16777619 * a1);
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v9;
  }

  v13 = *(*v4 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (!*v13)
  {
    return 0;
  }

  while (1)
  {
    v15 = v14[1];
    if (v9 == v15)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      return 0;
    }

LABEL_21:
    v14 = *v14;
    if (!v14)
    {
      return 0;
    }
  }

  if (!sub_1000CD908(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 5)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::EnumDescriptor::FindValueByNumber(google::protobuf::EnumDescriptor *this, int a2)
{
  v2 = *(*(this + 2) + 144);
  v4 = this;
  v5 = a2;
  return sub_1000CD974((v2 + 192), &v4);
}

uint64_t sub_1000B7090(uint64_t a1, std::string::size_type a2, uint64_t a3)
{
  v16.__r_.__value_.__r.__words[0] = a2;
  LODWORD(v16.__r_.__value_.__r.__words[1]) = a3;
  v6 = sub_1000CD974((a1 + 192), &v16);
  if (v6)
  {
    return v6;
  }

  std::mutex::lock((a1 + 320));
  v16.__r_.__value_.__r.__words[0] = a2;
  LODWORD(v16.__r_.__value_.__r.__words[1]) = a3;
  v7 = sub_1000CDA50((a1 + 232), &v16);
  std::mutex::unlock((a1 + 320));
  if (!v7)
  {
    std::mutex::lock((a1 + 320));
    v16.__r_.__value_.__r.__words[0] = a2;
    LODWORD(v16.__r_.__value_.__r.__words[1]) = a3;
    v7 = sub_1000CDA50((a1 + 232), &v16);
    if (!v7)
    {
      v8 = *a2;
      if (*(*a2 + 23) < 0)
      {
        v8 = *v8;
      }

      v9 = google::protobuf::StringPrintf("UNKNOWN_ENUM_VALUE_%s_%d", &v16, v8, a3);
      v10 = google::protobuf::DescriptorPool::internal_generated_pool(v9);
      google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
      v11 = *(v10 + 32);
      Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(v11, 40);
      sub_1000B3420(__p, &v16, v12);
      google::protobuf::DescriptorPool::Tables::AllocateString(v11, __p[0], __p[1]);
    }

    std::mutex::unlock((a1 + 320));
  }

  return v7;
}

void sub_1000B72D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 65) < 0)
  {
    operator delete(*(v24 - 88));
  }

  std::mutex::unlock(v23 + 5);
  _Unwind_Resume(a1);
}

void google::protobuf::Descriptor::ExtensionRange::CopyTo(google::protobuf::Descriptor::ExtensionRange *this, google::protobuf::DescriptorProto_ExtensionRange *a2)
{
  v4 = *this;
  v5 = *(a2 + 4);
  *(a2 + 4) = v5 | 2;
  v6 = *(this + 1);
  *(a2 + 4) = v5 | 6;
  *(a2 + 8) = v4;
  *(a2 + 9) = v6;
  v7 = *(this + 1);
  if (v7 != google::protobuf::ExtensionRangeOptions::default_instance(this))
  {
    v8 = *(this + 1);
    *(a2 + 4) |= 1u;
    v9 = *(a2 + 3);
    if (!v9)
    {
      v10 = *(a2 + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ExtensionRangeOptions>(v10);
      *(a2 + 3) = v9;
    }

    google::protobuf::ExtensionRangeOptions::CopyFrom(v9, v8);
  }
}

_DWORD *google::protobuf::Descriptor::FindExtensionRangeContainingNumber(google::protobuf::Descriptor *this, int a2)
{
  v2 = *(this + 31);
  if (v2 < 1)
  {
    return 0;
  }

  for (result = *(this + 9); *result > a2 || result[1] <= a2; result += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *google::protobuf::Descriptor::FindReservedRangeContainingNumber(google::protobuf::Descriptor *this, int a2)
{
  v2 = *(this + 33);
  if (v2 < 1)
  {
    return 0;
  }

  for (result = *(this + 11); *result > a2 || result[1] <= a2; result += 2)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

google::protobuf::FileDescriptor *google::protobuf::DescriptorPool::BuildFileFromDatabase(google::protobuf::DescriptorPool *this, const google::protobuf::FileDescriptorProto *a2)
{
  if (sub_1000D2840((*(this + 4) + 24), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL)))
  {
    return 0;
  }

  google::protobuf::DescriptorBuilder::DescriptorBuilder(v6, this, *(this + 4), *(this + 2));
  v4 = google::protobuf::DescriptorBuilder::BuildFile(v6, a2);
  google::protobuf::DescriptorBuilder::~DescriptorBuilder(v6);
  if (!v4)
  {
    sub_1000D30DC((*(this + 4) + 24), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL));
  }

  return v4;
}

void sub_1000B750C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::DescriptorBuilder::~DescriptorBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  sub_1000CD768(&v15, &__str);
  v4 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v4 == -1)
  {
LABEL_8:
    v9 = *(a1 + 24);
    if (v9)
    {
      IsSubSymbolOfBuiltType = google::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(v9, v15, v16);
    }

    else
    {
      IsSubSymbolOfBuiltType = 0;
    }
  }

  else
  {
    v5 = v4;
    while (1)
    {
      std::string::basic_string(&v13, &__str, 0, v5, &v12);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v13;
      v7 = *(a1 + 32);
      sub_1000B3420(&v12, &__str, v6);
      *&v13.__r_.__value_.__l.__data_ = v12;
      v8 = sub_1000CD5E4((v7 + 304), &v13.__r_.__value_.__l.__data_);
      if (v8)
      {
        if ((*(v8 + 8) | 8) != 8)
        {
          break;
        }
      }

      v5 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
      if (v5 == -1)
      {
        goto LABEL_8;
      }
    }

    IsSubSymbolOfBuiltType = 1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return IsSubSymbolOfBuiltType;
}

void sub_1000B7634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::FieldDescriptor::DefaultValueAsString(google::protobuf::FieldDescriptor *this@<X0>, char *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v4 = a2;
  if ((*(this + 64) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v32, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 1982);
    v7 = google::protobuf::internal::LogMessage::operator<<(&v32, "CHECK failed: has_default_value(): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "No default value");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v32.__r_.__value_.__l.__data_);
  }

  v9 = *(this + 6);
  if (v9)
  {
    v30 = this;
    v31 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v32.__r_.__value_.__r.__words[0] = &v31;
      v32.__r_.__value_.__l.__size_ = &v30;
      v29.__r_.__value_.__r.__words[0] = &v32;
      std::__call_once(v9, &v29, sub_1000B32C4);
    }
  }

  v10 = *(this + 14);
  v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10];
  if (v11 <= 5)
  {
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v17 = *(this + 36);
        v32.__r_.__value_.__r.__words[0] = &v32.__r_.__value_.__r.__words[2];
        v32.__r_.__value_.__l.__size_ = google::protobuf::FastUInt32ToBufferLeft(v17, &v32.__r_.__value_.__s.__data_[16], a3) - &v32.__r_.__value_.__r.__words[2];
        sub_1000CD78C(a4, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
      }

      else if (v11 == 4)
      {
        v22 = *(this + 18);
        v32.__r_.__value_.__r.__words[0] = &v32.__r_.__value_.__r.__words[2];
        v32.__r_.__value_.__l.__size_ = google::protobuf::FastUInt64ToBufferLeft(v22, &v32.__r_.__value_.__s.__data_[16], a3) - &v32.__r_.__value_.__r.__words[2];
        sub_1000CD78C(a4, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
      }

      else
      {
        google::protobuf::SimpleDtoa(*(this + 18), a2, a4);
      }

      return;
    }

    if (v11 == 1)
    {
      v16 = *(this + 36);
      v32.__r_.__value_.__r.__words[0] = &v32.__r_.__value_.__r.__words[2];
      v32.__r_.__value_.__l.__size_ = google::protobuf::FastInt32ToBufferLeft(v16, &v32.__r_.__value_.__s.__data_[16], a3) - &v32.__r_.__value_.__r.__words[2];
      sub_1000CD78C(a4, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
      return;
    }

    if (v11 == 2)
    {
      v13 = *(this + 18);
      v32.__r_.__value_.__r.__words[0] = &v32.__r_.__value_.__r.__words[2];
      v32.__r_.__value_.__l.__size_ = google::protobuf::FastInt64ToBufferLeft(v13, &v32.__r_.__value_.__s.__data_[16], a3) - &v32.__r_.__value_.__r.__words[2];
      sub_1000CD78C(a4, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
      return;
    }

LABEL_24:
    google::protobuf::internal::LogMessage::LogMessage(&v32, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 2023);
    v15 = google::protobuf::internal::LogMessage::operator<<(&v32, "Can't get here: failed to get default value as string");
    google::protobuf::internal::LogFinisher::operator=(&v29, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v32.__r_.__value_.__l.__data_);
    sub_1000B347C(a4, "");
    return;
  }

  if (v11 <= 7)
  {
    if (v11 == 6)
    {
      google::protobuf::SimpleFtoa(*(this + 36), a2, a4);
    }

    else
    {
      if (*(this + 144))
      {
        v14 = "true";
      }

      else
      {
        v14 = "false";
      }

      sub_1000B347C(a4, v14);
    }

    return;
  }

  if (v11 == 8)
  {
    v18 = google::protobuf::FieldDescriptor::default_value_enum(this);
    v19 = *v18;
    if (*(*v18 + 23) < 0)
    {
      sub_1000B32D8(a4, *v19, *(v19 + 1));
      return;
    }

    v20 = *v19;
    v21 = *(v19 + 2);
LABEL_45:
    a4->__r_.__value_.__r.__words[2] = v21;
    *&a4->__r_.__value_.__l.__data_ = v20;
    return;
  }

  if (v11 != 9)
  {
    if (v11 == 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(&v32, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 2020);
      v12 = google::protobuf::internal::LogMessage::operator<<(&v32, "Messages can't have default values!");
      google::protobuf::internal::LogFinisher::operator=(&v29, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v32.__r_.__value_.__l.__data_);
    }

    goto LABEL_24;
  }

  if (!v4)
  {
    v27 = *(this + 6);
    if (v27)
    {
      v30 = this;
      v31 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v27, memory_order_acquire) != -1)
      {
        v32.__r_.__value_.__r.__words[0] = &v31;
        v32.__r_.__value_.__l.__size_ = &v30;
        v29.__r_.__value_.__r.__words[0] = &v32;
        std::__call_once(v27, &v29, sub_1000B32C4);
      }

      LODWORD(v10) = *(this + 14);
    }

    v28 = *(this + 18);
    if (v10 == 12)
    {
      google::protobuf::CEscape(v28, a3, a4);
      return;
    }

    if (*(v28 + 23) < 0)
    {
      sub_1000B32D8(a4, *v28, *(v28 + 1));
      return;
    }

    v20 = *v28;
    v21 = *(v28 + 2);
    goto LABEL_45;
  }

  google::protobuf::CEscape(*(this + 18), a3, &v29);
  v23 = std::string::insert(&v29, 0, "");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v32, "");
  v26 = *&v25->__r_.__value_.__l.__data_;
  a4->__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&a4->__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_1000B7AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::FieldDescriptor::default_value_enum(google::protobuf::FieldDescriptor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4 = this;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v6[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v6[1] = &v4;
      v5 = v6;
      std::__call_once(v2, &v5, sub_1000D6744);
    }
  }

  return *(this + 18);
}

void google::protobuf::FileDescriptor::CopyTo(google::protobuf::FileDescriptor *this, google::protobuf::FileDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = google::protobuf::internal::ArenaStringPtr::Set(a2 + 22, v4, v5);
  v7 = *(this + 1);
  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8)
  {
    *(a2 + 4) |= 2u;
    v9 = *(a2 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::internal::ArenaStringPtr::Set(a2 + 23, v7, v9);
  }

  if (*(this + 15) == 3)
  {
    v10 = google::protobuf::FileDescriptor::SyntaxName(3);
    *(a2 + 4) |= 4u;
    sub_1000B347C(&__p, v10);
    v11 = *(a2 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 24, &__p, v11);
    if (v66 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

  if (*(this + 8) >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = *google::protobuf::FileDescriptor::dependency(this, v12);
      v14 = *(a2 + 5);
      if (!v14)
      {
        break;
      }

      v15 = *(a2 + 8);
      v16 = *v14;
      if (v15 >= *v14)
      {
        if (v16 == *(a2 + 9))
        {
LABEL_21:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v16 + 1);
          v14 = *(a2 + 5);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = sub_1000B3534(*(a2 + 3));
        v18 = *(a2 + 8);
        v19 = *(a2 + 5) + 8 * v18;
        *(a2 + 8) = v18 + 1;
        *(v19 + 8) = v17;
        goto LABEL_23;
      }

      *(a2 + 8) = v15 + 1;
      v17 = *&v14[2 * v15 + 2];
LABEL_23:
      v6 = std::string::operator=(v17, v13);
      if (++v12 >= *(this + 8))
      {
        goto LABEL_24;
      }
    }

    v16 = *(a2 + 9);
    goto LABEL_21;
  }

LABEL_24:
  if (*(this + 9) >= 1)
  {
    v20 = 0;
    v21 = *(a2 + 36);
    do
    {
      v22 = *(*(this + 11) + 4 * v20);
      if (v21 == *(a2 + 37))
      {
        google::protobuf::RepeatedField<int>::Reserve(a2 + 36, v21 + 1);
      }

      *(*(a2 + 19) + 4 * v21++) = v22;
      *(a2 + 36) = v21;
      ++v20;
    }

    while (v20 < *(this + 9));
  }

  if (*(this + 10) >= 1)
  {
    v23 = 0;
    v24 = *(a2 + 40);
    do
    {
      v25 = *(*(this + 12) + 4 * v23);
      if (v24 == *(a2 + 41))
      {
        google::protobuf::RepeatedField<int>::Reserve(a2 + 40, v24 + 1);
      }

      *(*(a2 + 21) + 4 * v24++) = v25;
      *(a2 + 40) = v24;
      ++v23;
    }

    while (v23 < *(this + 10));
  }

  if (*(this + 11) >= 1)
  {
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = *(this + 13);
      v29 = *(a2 + 8);
      if (!v29)
      {
        break;
      }

      v30 = *(a2 + 14);
      v31 = *v29;
      if (v30 >= *v29)
      {
        if (v31 == *(a2 + 15))
        {
LABEL_41:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 12, v31 + 1);
          v29 = *(a2 + 8);
          v31 = *v29;
        }

        *v29 = v31 + 1;
        v32 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(*(a2 + 6));
        v33 = *(a2 + 14);
        v34 = *(a2 + 8) + 8 * v33;
        *(a2 + 14) = v33 + 1;
        *(v34 + 8) = v32;
        goto LABEL_43;
      }

      *(a2 + 14) = v30 + 1;
      v32 = *&v29[2 * v30 + 2];
LABEL_43:
      google::protobuf::Descriptor::CopyTo((v28 + v26), v32);
      ++v27;
      v26 += 144;
      if (v27 >= *(this + 11))
      {
        goto LABEL_44;
      }
    }

    v31 = *(a2 + 15);
    goto LABEL_41;
  }

LABEL_44:
  if (*(this + 12) >= 1)
  {
    v35 = 0;
    v36 = 0;
    while (1)
    {
      v37 = *(this + 14);
      v38 = *(a2 + 11);
      if (!v38)
      {
        break;
      }

      v39 = *(a2 + 20);
      v40 = *v38;
      if (v39 >= *v38)
      {
        if (v40 == *(a2 + 21))
        {
LABEL_51:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 18, v40 + 1);
          v38 = *(a2 + 11);
          v40 = *v38;
        }

        *v38 = v40 + 1;
        v41 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(*(a2 + 9));
        v42 = *(a2 + 20);
        v43 = *(a2 + 11) + 8 * v42;
        *(a2 + 20) = v42 + 1;
        *(v43 + 8) = v41;
        goto LABEL_53;
      }

      *(a2 + 20) = v39 + 1;
      v41 = *&v38[2 * v39 + 2];
LABEL_53:
      google::protobuf::EnumDescriptor::CopyTo((v37 + v35), v41);
      ++v36;
      v35 += 80;
      if (v36 >= *(this + 12))
      {
        goto LABEL_54;
      }
    }

    v40 = *(a2 + 21);
    goto LABEL_51;
  }

LABEL_54:
  if (*(this + 13) >= 1)
  {
    v44 = 0;
    v45 = 0;
    while (1)
    {
      v46 = *(this + 15);
      v47 = *(a2 + 14);
      if (!v47)
      {
        break;
      }

      v48 = *(a2 + 26);
      v49 = *v47;
      if (v48 >= *v47)
      {
        if (v49 == *(a2 + 27))
        {
LABEL_61:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 24, v49 + 1);
          v47 = *(a2 + 14);
          v49 = *v47;
        }

        *v47 = v49 + 1;
        v50 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceDescriptorProto>(*(a2 + 12));
        v51 = *(a2 + 26);
        v52 = *(a2 + 14) + 8 * v51;
        *(a2 + 26) = v51 + 1;
        *(v52 + 8) = v50;
        goto LABEL_63;
      }

      *(a2 + 26) = v48 + 1;
      v50 = *&v47[2 * v48 + 2];
LABEL_63:
      google::protobuf::ServiceDescriptor::CopyTo((v46 + v44), v50);
      ++v45;
      v44 += 48;
      if (v45 >= *(this + 13))
      {
        goto LABEL_64;
      }
    }

    v49 = *(a2 + 27);
    goto LABEL_61;
  }

LABEL_64:
  if (*(this + 14) >= 1)
  {
    v53 = 0;
    v54 = 0;
    while (1)
    {
      v55 = *(this + 16);
      v56 = *(a2 + 17);
      if (!v56)
      {
        break;
      }

      v57 = *(a2 + 32);
      v58 = *v56;
      if (v57 >= *v56)
      {
        if (v58 == *(a2 + 33))
        {
LABEL_71:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 30, v58 + 1);
          v56 = *(a2 + 17);
          v58 = *v56;
        }

        *v56 = v58 + 1;
        v59 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(a2 + 15));
        v60 = *(a2 + 32);
        v61 = *(a2 + 17) + 8 * v60;
        *(a2 + 32) = v60 + 1;
        *(v61 + 8) = v59;
        goto LABEL_73;
      }

      *(a2 + 32) = v57 + 1;
      v59 = *&v56[2 * v57 + 2];
LABEL_73:
      google::protobuf::FieldDescriptor::CopyTo((v55 + v53), v59);
      ++v54;
      v53 += 152;
      if (v54 >= *(this + 14))
      {
        goto LABEL_74;
      }
    }

    v58 = *(a2 + 33);
    goto LABEL_71;
  }

LABEL_74:
  v62 = *(this + 17);
  if (v62 != google::protobuf::FileOptions::default_instance(v6))
  {
    *(a2 + 4) |= 8u;
    v63 = *(a2 + 25);
    if (!v63)
    {
      v64 = *(a2 + 1);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v63 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileOptions>(v64);
      *(a2 + 25) = v63;
    }

    google::protobuf::FileOptions::CopyFrom(v63, *(this + 17));
  }
}

void sub_1000B814C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::FileDescriptor::dependency(google::protobuf::FileDescriptor *this, int a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    v6 = this;
    if (atomic_load_explicit(v4, memory_order_acquire) != -1)
    {
      v8[0] = google::protobuf::FileDescriptor::DependenciesOnceInit;
      v8[1] = &v6;
      v7 = v8;
      std::__call_once(v4, &v7, sub_1000D6754);
    }
  }

  return *(*(this + 9) + 8 * a2);
}

void google::protobuf::Descriptor::CopyTo(google::protobuf::Descriptor *this, google::protobuf::DescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = google::protobuf::internal::ArenaStringPtr::Set(a2 + 27, v4, v5);
  if (*(this + 26) >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(this + 5);
      v10 = *(a2 + 5);
      if (!v10)
      {
        break;
      }

      v11 = *(a2 + 8);
      v12 = *v10;
      if (v11 >= *v10)
      {
        if (v12 == *(a2 + 9))
        {
LABEL_10:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v12 + 1);
          v10 = *(a2 + 5);
          v12 = *v10;
        }

        *v10 = v12 + 1;
        v13 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(a2 + 3));
        v14 = *(a2 + 8);
        v15 = *(a2 + 5) + 8 * v14;
        *(a2 + 8) = v14 + 1;
        *(v15 + 8) = v13;
        goto LABEL_12;
      }

      *(a2 + 8) = v11 + 1;
      v13 = *&v10[2 * v11 + 2];
LABEL_12:
      google::protobuf::FieldDescriptor::CopyTo((v9 + v7), v13);
      ++v8;
      v7 += 152;
      if (v8 >= *(this + 26))
      {
        goto LABEL_13;
      }
    }

    v12 = *(a2 + 9);
    goto LABEL_10;
  }

LABEL_13:
  if (*(this + 27) >= 1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(this + 6);
      v19 = *(a2 + 20);
      if (!v19)
      {
        break;
      }

      v20 = *(a2 + 38);
      v21 = *v19;
      if (v20 >= *v19)
      {
        if (v21 == *(a2 + 39))
        {
LABEL_20:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 36, v21 + 1);
          v19 = *(a2 + 20);
          v21 = *v19;
        }

        *v19 = v21 + 1;
        v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofDescriptorProto>(*(a2 + 18));
        v23 = *(a2 + 38);
        v24 = *(a2 + 20) + 8 * v23;
        *(a2 + 38) = v23 + 1;
        *(v24 + 8) = v22;
        goto LABEL_22;
      }

      *(a2 + 38) = v20 + 1;
      v22 = *&v19[2 * v20 + 2];
LABEL_22:
      google::protobuf::OneofDescriptor::CopyTo((v18 + v16), v22);
      ++v17;
      v16 += 48;
      if (v17 >= *(this + 27))
      {
        goto LABEL_23;
      }
    }

    v21 = *(a2 + 39);
    goto LABEL_20;
  }

LABEL_23:
  if (*(this + 29) >= 1)
  {
    v25 = 0;
    v26 = 0;
    while (1)
    {
      v27 = *(this + 7);
      v28 = *(a2 + 8);
      if (!v28)
      {
        break;
      }

      v29 = *(a2 + 14);
      v30 = *v28;
      if (v29 >= *v28)
      {
        if (v30 == *(a2 + 15))
        {
LABEL_30:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 12, v30 + 1);
          v28 = *(a2 + 8);
          v30 = *v28;
        }

        *v28 = v30 + 1;
        v31 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(*(a2 + 6));
        v32 = *(a2 + 14);
        v33 = *(a2 + 8) + 8 * v32;
        *(a2 + 14) = v32 + 1;
        *(v33 + 8) = v31;
        goto LABEL_32;
      }

      *(a2 + 14) = v29 + 1;
      v31 = *&v28[2 * v29 + 2];
LABEL_32:
      v6 = google::protobuf::Descriptor::CopyTo((v27 + v25), v31);
      ++v26;
      v25 += 144;
      if (v26 >= *(this + 29))
      {
        goto LABEL_33;
      }
    }

    v30 = *(a2 + 15);
    goto LABEL_30;
  }

LABEL_33:
  if (*(this + 30) >= 1)
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      v36 = *(this + 8);
      v37 = *(a2 + 11);
      if (!v37)
      {
        break;
      }

      v38 = *(a2 + 20);
      v39 = *v37;
      if (v38 >= *v37)
      {
        if (v39 == *(a2 + 21))
        {
LABEL_40:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 18, v39 + 1);
          v37 = *(a2 + 11);
          v39 = *v37;
        }

        *v37 = v39 + 1;
        v40 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(*(a2 + 9));
        v41 = *(a2 + 20);
        v42 = *(a2 + 11) + 8 * v41;
        *(a2 + 20) = v41 + 1;
        *(v42 + 8) = v40;
        goto LABEL_42;
      }

      *(a2 + 20) = v38 + 1;
      v40 = *&v37[2 * v38 + 2];
LABEL_42:
      google::protobuf::EnumDescriptor::CopyTo((v36 + v34), v40);
      ++v35;
      v34 += 80;
      if (v35 >= *(this + 30))
      {
        goto LABEL_43;
      }
    }

    v39 = *(a2 + 21);
    goto LABEL_40;
  }

LABEL_43:
  if (*(this + 31) >= 1)
  {
    v43 = 0;
    v44 = 0;
    while (1)
    {
      v45 = *(this + 9);
      v46 = *(a2 + 14);
      if (!v46)
      {
        break;
      }

      v47 = *(a2 + 26);
      v48 = *v46;
      if (v47 >= *v46)
      {
        if (v48 == *(a2 + 27))
        {
LABEL_50:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 24, v48 + 1);
          v46 = *(a2 + 14);
          v48 = *v46;
        }

        *v46 = v48 + 1;
        v49 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ExtensionRange>(*(a2 + 12));
        v50 = *(a2 + 26);
        v51 = *(a2 + 14) + 8 * v50;
        *(a2 + 26) = v50 + 1;
        *(v51 + 8) = v49;
        goto LABEL_52;
      }

      *(a2 + 26) = v47 + 1;
      v49 = *&v46[2 * v47 + 2];
LABEL_52:
      google::protobuf::Descriptor::ExtensionRange::CopyTo((v45 + v43), v49);
      ++v44;
      v43 += 16;
      if (v44 >= *(this + 31))
      {
        goto LABEL_53;
      }
    }

    v48 = *(a2 + 27);
    goto LABEL_50;
  }

LABEL_53:
  if (*(this + 32) >= 1)
  {
    v52 = 0;
    v53 = 0;
    while (1)
    {
      v54 = *(this + 10);
      v55 = *(a2 + 17);
      if (!v55)
      {
        break;
      }

      v56 = *(a2 + 32);
      v57 = *v55;
      if (v56 >= *v55)
      {
        if (v57 == *(a2 + 33))
        {
LABEL_60:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 30, v57 + 1);
          v55 = *(a2 + 17);
          v57 = *v55;
        }

        *v55 = v57 + 1;
        v58 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(a2 + 15));
        v59 = *(a2 + 32);
        v60 = *(a2 + 17) + 8 * v59;
        *(a2 + 32) = v59 + 1;
        *(v60 + 8) = v58;
        goto LABEL_62;
      }

      *(a2 + 32) = v56 + 1;
      v58 = *&v55[2 * v56 + 2];
LABEL_62:
      google::protobuf::FieldDescriptor::CopyTo((v54 + v52), v58);
      ++v53;
      v52 += 152;
      if (v53 >= *(this + 32))
      {
        goto LABEL_63;
      }
    }

    v57 = *(a2 + 33);
    goto LABEL_60;
  }

LABEL_63:
  if (*(this + 33) >= 1)
  {
    v61 = 0;
    v62 = 0;
    while (1)
    {
      v63 = *(a2 + 23);
      if (!v63)
      {
        break;
      }

      v64 = *(a2 + 44);
      v65 = *v63;
      if (v64 >= *v63)
      {
        if (v65 == *(a2 + 45))
        {
LABEL_70:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 42, v65 + 1);
          v63 = *(a2 + 23);
          v65 = *v63;
        }

        *v63 = v65 + 1;
        v6 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ReservedRange>(*(a2 + 21));
        v66 = *(a2 + 44);
        v67 = *(a2 + 23) + 8 * v66;
        *(a2 + 44) = v66 + 1;
        *(v67 + 8) = v6;
        goto LABEL_72;
      }

      *(a2 + 44) = v64 + 1;
      v6 = *&v63[2 * v64 + 2];
LABEL_72:
      v68 = (*(this + 11) + v61);
      v69 = *v68;
      v70 = v6->__r_.__value_.__r.__words[2];
      LODWORD(v6->__r_.__value_.__r.__words[2]) = v70 | 1;
      LODWORD(v68) = v68[1];
      LODWORD(v6->__r_.__value_.__r.__words[2]) = v70 | 3;
      LODWORD(v6[1].__r_.__value_.__l.__data_) = v69;
      HIDWORD(v6[1].__r_.__value_.__r.__words[0]) = v68;
      ++v62;
      v61 += 8;
      if (v62 >= *(this + 33))
      {
        goto LABEL_73;
      }
    }

    v65 = *(a2 + 45);
    goto LABEL_70;
  }

LABEL_73:
  if (*(this + 34) >= 1)
  {
    v71 = 0;
    while (1)
    {
      v72 = *(*(this + 12) + 8 * v71);
      v73 = *(a2 + 26);
      if (!v73)
      {
        break;
      }

      v74 = *(a2 + 50);
      v75 = *v73;
      if (v74 >= *v73)
      {
        if (v75 == *(a2 + 51))
        {
LABEL_80:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 48, v75 + 1);
          v73 = *(a2 + 26);
          v75 = *v73;
        }

        *v73 = v75 + 1;
        v76 = sub_1000B3534(*(a2 + 24));
        v77 = *(a2 + 50);
        v78 = *(a2 + 26) + 8 * v77;
        *(a2 + 50) = v77 + 1;
        *(v78 + 8) = v76;
        goto LABEL_82;
      }

      *(a2 + 50) = v74 + 1;
      v76 = *&v73[2 * v74 + 2];
LABEL_82:
      v6 = std::string::operator=(v76, v72);
      if (++v71 >= *(this + 34))
      {
        goto LABEL_83;
      }
    }

    v75 = *(a2 + 51);
    goto LABEL_80;
  }

LABEL_83:
  v79 = *(this + 4);
  if (v79 != google::protobuf::MessageOptions::default_instance(v6))
  {
    *(a2 + 4) |= 2u;
    v80 = *(a2 + 28);
    if (!v80)
    {
      v81 = *(a2 + 1);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MessageOptions>(v81);
      *(a2 + 28) = v80;
    }

    v82 = *(this + 4);

    google::protobuf::MessageOptions::CopyFrom(v80, v82);
  }
}

void google::protobuf::EnumDescriptor::CopyTo(google::protobuf::EnumDescriptor *this, google::protobuf::EnumDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = google::protobuf::internal::ArenaStringPtr::Set(a2 + 12, v4, v5);
  if (*(this + 11) >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(this + 6);
      v10 = *(a2 + 5);
      if (!v10)
      {
        break;
      }

      v11 = *(a2 + 8);
      v12 = *v10;
      if (v11 >= *v10)
      {
        if (v12 == *(a2 + 9))
        {
LABEL_10:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v12 + 1);
          v10 = *(a2 + 5);
          v12 = *v10;
        }

        *v10 = v12 + 1;
        v13 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueDescriptorProto>(*(a2 + 3));
        v14 = *(a2 + 8);
        v15 = *(a2 + 5) + 8 * v14;
        *(a2 + 8) = v14 + 1;
        *(v15 + 8) = v13;
        goto LABEL_12;
      }

      *(a2 + 8) = v11 + 1;
      v13 = *&v10[2 * v11 + 2];
LABEL_12:
      google::protobuf::EnumValueDescriptor::CopyTo((v9 + v7), v13);
      ++v8;
      v7 += 40;
      if (v8 >= *(this + 11))
      {
        goto LABEL_13;
      }
    }

    v12 = *(a2 + 9);
    goto LABEL_10;
  }

LABEL_13:
  if (*(this + 14) >= 1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(a2 + 8);
      if (!v18)
      {
        break;
      }

      v19 = *(a2 + 14);
      v20 = *v18;
      if (v19 >= *v18)
      {
        if (v20 == *(a2 + 15))
        {
LABEL_20:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 12, v20 + 1);
          v18 = *(a2 + 8);
          v20 = *v18;
        }

        *v18 = v20 + 1;
        v6 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto_EnumReservedRange>(*(a2 + 6));
        v21 = *(a2 + 14);
        v22 = *(a2 + 8) + 8 * v21;
        *(a2 + 14) = v21 + 1;
        *(v22 + 8) = v6;
        goto LABEL_22;
      }

      *(a2 + 14) = v19 + 1;
      v6 = *&v18[2 * v19 + 2];
LABEL_22:
      v23 = (*(this + 8) + v16);
      v24 = *v23;
      v25 = v6->__r_.__value_.__r.__words[2];
      LODWORD(v6->__r_.__value_.__r.__words[2]) = v25 | 1;
      LODWORD(v23) = v23[1];
      LODWORD(v6->__r_.__value_.__r.__words[2]) = v25 | 3;
      LODWORD(v6[1].__r_.__value_.__l.__data_) = v24;
      HIDWORD(v6[1].__r_.__value_.__r.__words[0]) = v23;
      ++v17;
      v16 += 8;
      if (v17 >= *(this + 14))
      {
        goto LABEL_23;
      }
    }

    v20 = *(a2 + 15);
    goto LABEL_20;
  }

LABEL_23:
  if (*(this + 15) >= 1)
  {
    v26 = 0;
    while (1)
    {
      v27 = *(*(this + 9) + 8 * v26);
      v28 = *(a2 + 11);
      if (!v28)
      {
        break;
      }

      v29 = *(a2 + 20);
      v30 = *v28;
      if (v29 >= *v28)
      {
        if (v30 == *(a2 + 21))
        {
LABEL_30:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 18, v30 + 1);
          v28 = *(a2 + 11);
          v30 = *v28;
        }

        *v28 = v30 + 1;
        v31 = sub_1000B3534(*(a2 + 9));
        v32 = *(a2 + 20);
        v33 = *(a2 + 11) + 8 * v32;
        *(a2 + 20) = v32 + 1;
        *(v33 + 8) = v31;
        goto LABEL_32;
      }

      *(a2 + 20) = v29 + 1;
      v31 = *&v28[2 * v29 + 2];
LABEL_32:
      v6 = std::string::operator=(v31, v27);
      if (++v26 >= *(this + 15))
      {
        goto LABEL_33;
      }
    }

    v30 = *(a2 + 21);
    goto LABEL_30;
  }

LABEL_33:
  v34 = *(this + 4);
  if (v34 != google::protobuf::EnumOptions::default_instance(v6))
  {
    *(a2 + 4) |= 2u;
    v35 = *(a2 + 13);
    if (!v35)
    {
      v36 = *(a2 + 1);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumOptions>(v36);
      *(a2 + 13) = v35;
    }

    v37 = *(this + 4);

    google::protobuf::EnumOptions::CopyFrom(v35, v37);
  }
}

void google::protobuf::ServiceDescriptor::CopyTo(google::protobuf::ServiceDescriptor *this, google::protobuf::ServiceDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = google::protobuf::internal::ArenaStringPtr::Set(a2 + 6, v4, v5);
  if (*(this + 10) >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(this + 4);
      v10 = *(a2 + 5);
      if (!v10)
      {
        break;
      }

      v11 = *(a2 + 8);
      v12 = *v10;
      if (v11 >= *v10)
      {
        if (v12 == *(a2 + 9))
        {
LABEL_10:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 6, v12 + 1);
          v10 = *(a2 + 5);
          v12 = *v10;
        }

        *v10 = v12 + 1;
        v13 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodDescriptorProto>(*(a2 + 3));
        v14 = *(a2 + 8);
        v15 = *(a2 + 5) + 8 * v14;
        *(a2 + 8) = v14 + 1;
        *(v15 + 8) = v13;
        goto LABEL_12;
      }

      *(a2 + 8) = v11 + 1;
      v13 = *&v10[2 * v11 + 2];
LABEL_12:
      google::protobuf::MethodDescriptor::CopyTo((v9 + v7), v13);
      ++v8;
      v7 += 104;
      if (v8 >= *(this + 10))
      {
        goto LABEL_13;
      }
    }

    v12 = *(a2 + 9);
    goto LABEL_10;
  }

LABEL_13:
  v16 = *(this + 3);
  if (v16 != google::protobuf::ServiceOptions::default_instance(v6))
  {
    *(a2 + 4) |= 2u;
    v17 = *(a2 + 7);
    if (!v17)
    {
      v18 = *(a2 + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceOptions>(v18);
      *(a2 + 7) = v17;
    }

    v19 = *(this + 3);

    google::protobuf::ServiceOptions::CopyFrom(v17, v19);
  }
}

void google::protobuf::FieldDescriptor::CopyTo(google::protobuf::FieldDescriptor *this, google::protobuf::FieldDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(a2 + 3, v4, v5);
  v7 = *(this + 17);
  v8 = *(a2 + 4);
  v9 = v8 | 0x40;
  *(a2 + 4) = v8 | 0x40;
  *(a2 + 18) = v7;
  if (*(this + 66) == 1)
  {
    v10 = *(this + 4);
    *(a2 + 4) = v8 | 0x50;
    v11 = *(a2 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 7, v10, v11);
    v9 = *(a2 + 4);
  }

  if (*(this + 65) == 1)
  {
    v9 |= 0x100u;
    *(a2 + 4) = v9;
    *(a2 + 80) = 1;
  }

  v12 = *(this + 15);
  v13 = v9 | 0x200;
  *(a2 + 4) = v13;
  *(a2 + 21) = v12;
  v14 = *(this + 6);
  if (v14)
  {
    v43 = this;
    v44 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v14, memory_order_acquire) != -1)
    {
      __p.__r_.__value_.__r.__words[0] = &v44;
      __p.__r_.__value_.__l.__size_ = &v43;
      p_p = &__p;
      std::__call_once(v14, &p_p, sub_1000B32C4);
    }

    v13 = *(a2 + 4);
  }

  v15 = *(this + 14);
  v16 = v13 | 0x400;
  *(a2 + 4) = v13 | 0x400;
  *(a2 + 22) = v15;
  if (*(this + 67) == 1)
  {
    if ((*(*(this + 10) + 141) & 1) == 0)
    {
      *(a2 + 4) = v13 | 0x402;
      sub_1000B347C(&__p, ".");
      v17 = *(a2 + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(a2 + 4, &__p, v17);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v16 = *(a2 + 4);
    }

    *(a2 + 4) = v16 | 2;
    v18 = *(a2 + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 4, v18);
    v20 = *(*(this + 10) + 8);
    v21 = *(v20 + 23);
    if (v21 >= 0)
    {
      v22 = *(*(this + 10) + 8);
    }

    else
    {
      v22 = *v20;
    }

    if (v21 >= 0)
    {
      v23 = *(v20 + 23);
    }

    else
    {
      v23 = *(v20 + 8);
    }

    std::string::append(v19, v22, v23);
  }

  v24 = *(this + 6);
  if (v24)
  {
    v43 = this;
    v44 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v24, memory_order_acquire) != -1)
    {
      __p.__r_.__value_.__r.__words[0] = &v44;
      __p.__r_.__value_.__l.__size_ = &v43;
      p_p = &__p;
      std::__call_once(v24, &p_p, sub_1000B32C4);
    }
  }

  v25 = *(this + 14);
  if ((v25 & 0xFFFFFFFE) == 0xA)
  {
    if (*(google::protobuf::FieldDescriptor::message_type(this) + 140) == 1)
    {
      *(a2 + 22) = 1;
      *(a2 + 4) &= ~0x400u;
    }

    if ((*(google::protobuf::FieldDescriptor::message_type(this) + 141) & 1) == 0)
    {
      *(a2 + 4) |= 4u;
      sub_1000B347C(&__p, ".");
      v26 = *(a2 + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(a2 + 5, &__p, v26);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *(a2 + 4) |= 4u;
    v27 = *(a2 + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 5, v27);
    v29 = google::protobuf::FieldDescriptor::message_type(this);
LABEL_56:
    v33 = *(v29 + 8);
    v34 = *(v33 + 23);
    if (v34 >= 0)
    {
      v35 = *(v29 + 8);
    }

    else
    {
      v35 = *v33;
    }

    if (v34 >= 0)
    {
      v36 = *(v33 + 23);
    }

    else
    {
      v36 = *(v33 + 8);
    }

    v30 = std::string::append(v28, v35, v36);
    goto LABEL_63;
  }

  v30 = *(this + 6);
  if (v30)
  {
    v43 = this;
    v44 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v30, memory_order_acquire) != -1)
    {
      __p.__r_.__value_.__r.__words[0] = &v44;
      __p.__r_.__value_.__l.__size_ = &v43;
      p_p = &__p;
      std::__call_once(v30, &p_p, sub_1000B32C4);
    }

    v25 = *(this + 14);
  }

  if (v25 == 14)
  {
    if ((*(google::protobuf::FieldDescriptor::enum_type(this) + 41) & 1) == 0)
    {
      *(a2 + 4) |= 4u;
      sub_1000B347C(&__p, ".");
      v31 = *(a2 + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(a2 + 5, &__p, v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *(a2 + 4) |= 4u;
    v32 = *(a2 + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 5, v32);
    v29 = google::protobuf::FieldDescriptor::enum_type(this);
    goto LABEL_56;
  }

LABEL_63:
  if (*(this + 64) == 1)
  {
    google::protobuf::FieldDescriptor::DefaultValueAsString(this, 0, v6, &__p);
    *(a2 + 4) |= 8u;
    v37 = *(a2 + 1);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 6, &__p, v37);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v38 = *(this + 11);
  if (v38 && (*(this + 67) & 1) == 0)
  {
    v39 = -1431655765 * ((v38 - *(*(v38 + 16) + 48)) >> 4);
    *(a2 + 4) |= 0x80u;
    *(a2 + 19) = v39;
  }

  v40 = *(this + 15);
  if (v40 != google::protobuf::FieldOptions::default_instance(v30))
  {
    *(a2 + 4) |= 0x20u;
    v41 = *(a2 + 8);
    if (!v41)
    {
      v42 = *(a2 + 1);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldOptions>(v42);
      *(a2 + 8) = v41;
    }

    google::protobuf::FieldOptions::CopyFrom(v41, *(this + 15));
  }
}

void sub_1000B91C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::OneofDescriptor::CopyTo(google::protobuf::OneofDescriptor *this, google::protobuf::OneofDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = google::protobuf::internal::ArenaStringPtr::Set(a2 + 3, v4, v5);
  v7 = *(this + 5);
  if (v7 != google::protobuf::OneofOptions::default_instance(v6))
  {
    *(a2 + 4) |= 2u;
    v8 = *(a2 + 4);
    if (!v8)
    {
      v9 = *(a2 + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofOptions>(v9);
      *(a2 + 4) = v8;
    }

    v10 = *(this + 5);

    google::protobuf::OneofOptions::CopyFrom(v8, v10);
  }
}

uint64_t google::protobuf::FieldDescriptor::enum_type(google::protobuf::FieldDescriptor *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4 = this;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v6[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v6[1] = &v4;
      v5 = v6;
      std::__call_once(v2, &v5, sub_1000D6744);
    }
  }

  return *(this + 14);
}

void google::protobuf::EnumValueDescriptor::CopyTo(google::protobuf::EnumValueDescriptor *this, google::protobuf::EnumValueDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = google::protobuf::internal::ArenaStringPtr::Set(a2 + 3, v4, v5);
  v7 = *(this + 4);
  *(a2 + 4) |= 4u;
  *(a2 + 10) = v7;
  v8 = *(this + 4);
  if (v8 != google::protobuf::EnumValueOptions::default_instance(v6))
  {
    *(a2 + 4) |= 2u;
    v9 = *(a2 + 4);
    if (!v9)
    {
      v10 = *(a2 + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueOptions>(v10);
      *(a2 + 4) = v9;
    }

    v11 = *(this + 4);

    google::protobuf::EnumValueOptions::CopyFrom(v9, v11);
  }
}

void google::protobuf::MethodDescriptor::CopyTo(google::protobuf::MethodDescriptor *this, google::protobuf::MethodDescriptorProto *a2)
{
  v4 = *this;
  *(a2 + 4) |= 1u;
  v5 = *(a2 + 1);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(a2 + 3, v4, v5);
  google::protobuf::internal::LazyDescriptor::Once((this + 24));
  if ((*(*(this + 3) + 141) & 1) == 0)
  {
    *(a2 + 4) |= 2u;
    sub_1000B347C(&__p, ".");
    v6 = *(a2 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 4, &__p, v6);
    if (v25 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

  *(a2 + 4) |= 2u;
  v7 = *(a2 + 1);
  if (v7)
  {
    v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  v8 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 4, v7);
  google::protobuf::internal::LazyDescriptor::Once((this + 24));
  v9 = *(*(this + 3) + 8);
  v10 = *(v9 + 23);
  if (v10 >= 0)
  {
    v11 = *(*(this + 3) + 8);
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = *(v9 + 8);
  }

  std::string::append(v8, v11, v12);
  google::protobuf::internal::LazyDescriptor::Once((this + 56));
  if ((*(*(this + 7) + 141) & 1) == 0)
  {
    *(a2 + 4) |= 4u;
    sub_1000B347C(&__p, ".");
    v13 = *(a2 + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 5, &__p, v13);
    if (v25 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

  *(a2 + 4) |= 4u;
  v14 = *(a2 + 1);
  if (v14)
  {
    v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  v15 = google::protobuf::internal::ArenaStringPtr::Mutable(a2 + 5, v14);
  google::protobuf::internal::LazyDescriptor::Once((this + 56));
  v16 = *(*(this + 7) + 8);
  v17 = *(v16 + 23);
  if (v17 >= 0)
  {
    v18 = *(*(this + 7) + 8);
  }

  else
  {
    v18 = *v16;
  }

  if (v17 >= 0)
  {
    v19 = *(v16 + 23);
  }

  else
  {
    v19 = *(v16 + 8);
  }

  v20 = std::string::append(v15, v18, v19);
  v21 = *(this + 11);
  if (v21 != google::protobuf::MethodOptions::default_instance(v20))
  {
    *(a2 + 4) |= 8u;
    v22 = *(a2 + 6);
    if (!v22)
    {
      v23 = *(a2 + 1);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodOptions>(v23);
      *(a2 + 6) = v22;
    }

    google::protobuf::MethodOptions::CopyFrom(v22, *(this + 11));
  }

  if (*(this + 96) == 1)
  {
    *(a2 + 4) |= 0x10u;
    *(a2 + 56) = 1;
  }

  if (*(this + 97) == 1)
  {
    *(a2 + 4) |= 0x20u;
    *(a2 + 57) = 1;
  }
}

void sub_1000B964C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B966C(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_100070E64();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_1000D2BB4(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_1000B974C(uint64_t a1, std::string *a2)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 72);
    for (i = *(a1 + 80); v4 != i; v4 += 24)
    {
      sub_1000CDB88(a1, v4, &__p);
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
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a2, "\n");
    }

    if ((*(a1 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 32))
      {
        return;
      }
    }

    else if (!*(a1 + 47))
    {
      return;
    }

    sub_1000CDB88(a1, a1 + 24, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1000B9860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B9880(uint64_t a1, std::string *a2)
{
  if (*a1 == 1)
  {
    if ((*(a1 + 71) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 56))
      {
        return;
      }
    }

    else if (!*(a1 + 71))
    {
      return;
    }

    sub_1000CDB88(a1, a1 + 48, &__p);
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
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1000B990C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B9928(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 72);
  sub_1000CF468(&v3);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

BOOL sub_1000B9994(int a1, const google::protobuf::Message *a2, uint64_t a3, std::string *a4)
{
  sub_1000BBBD0(&__p, 2 * a1, 32);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v8 = sub_1000CDDCC(a1, a2, a3, &v19);
  v9 = v19;
  if (v8)
  {
    v10 = v20;
    if (v19 != v20)
    {
      do
      {
        v11 = v24;
        p_p = __p;
        if (v24 >= 0)
        {
          p_p = &__p;
        }

        v43 = p_p;
        if (v24 < 0)
        {
          v11 = v23;
        }

        v44 = v11;
        v13 = *(v9 + 23);
        v14 = *v9;
        v15 = v9[1];
        if (v13 >= 0)
        {
          v14 = v9;
        }

        v41 = v14;
        if (v13 < 0)
        {
          LODWORD(v13) = v15;
        }

        v42 = v13;
        v39 = 0;
        v40 = -1;
        v37 = 0;
        v38 = -1;
        v35 = 0;
        v36 = -1;
        v33 = 0;
        v34 = -1;
        v31 = 0;
        v32 = -1;
        v29 = 0;
        v30 = -1;
        v27 = 0;
        v28 = -1;
        v25 = 0;
        v26 = -1;
        *&v18 = &v31;
        *(&v18 + 1) = &v29;
        google::protobuf::strings::SubstituteAndAppend(a4, "$0option $1;\n", &v43, &v41, &v39, &v37, &v35, &v33, v18, &v27, &v25);
        v9 += 3;
      }

      while (v9 != v10);
      v9 = v19;
    }
  }

  v16 = v20;
  v43 = &v19;
  sub_1000CF468(&v43);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  return v9 != v16;
}

void sub_1000B9B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 - 144) = &a13;
  sub_1000CF468((v21 - 144));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::EnumDescriptor::DebugString(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_1000BBBD0(__b, 2 * a2, 32);
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *v45 = 0u;
  *v46 = 0u;
  v50 = *a4;
  v51 = *(a4 + 2);
  if (SHIBYTE(v55) < 0)
  {
    sub_1000B32D8(&v52, __b[0], __b[1]);
  }

  else
  {
    v52 = *__b;
    v53 = v55;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::EnumDescriptor::GetSourceLocation(a1, &v44);
  }

  else
  {
    SourceLocation = 0;
  }

  v43[0] = SourceLocation;
  sub_1000B974C(v43, a3);
  v9 = SHIBYTE(v55);
  v10 = __b;
  if (v55 < 0)
  {
    v10 = __b[0];
  }

  p_data = v10;
  if (v55 < 0)
  {
    v9 = __b[1];
  }

  v76 = v9;
  v11 = *a1;
  v12 = *(*a1 + 23);
  v13 = *(*a1 + 8);
  if (v12 < 0)
  {
    v11 = **a1;
  }

  v72 = v11;
  if (v12 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v73 = v14;
  v70 = 0;
  v71 = -1;
  v68 = 0;
  v69 = -1;
  v66 = 0;
  v67 = -1;
  v64 = 0;
  v65 = -1;
  v62 = 0;
  v63 = -1;
  v60 = 0;
  v61 = -1;
  v58 = 0;
  v59 = -1;
  v56 = 0;
  v57 = -1;
  *&v35 = &v62;
  *(&v35 + 1) = &v60;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0enum $1 {\n", &p_data, &v72, &v70, &v68, &v66, &v64, v35, &v58, &v56);
  sub_1000B9994(a2 + 1, *(a1 + 32), *(*(a1 + 16) + 16), a3);
  if (*(a1 + 44) >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      google::protobuf::EnumValueDescriptor::DebugString(*(a1 + 48) + v15, a2 + 1, a3, a4);
      ++v16;
      v15 += 40;
    }

    while (v16 < *(a1 + 44));
  }

  if (*(a1 + 56) > 0)
  {
    v17 = SHIBYTE(v55);
    v18 = __b;
    if (v55 < 0)
    {
      v18 = __b[0];
    }

    p_data = v18;
    if (v55 < 0)
    {
      v17 = __b[1];
    }

    v76 = v17;
    v72 = 0;
    v73 = -1;
    v70 = 0;
    v71 = -1;
    v68 = 0;
    v69 = -1;
    v66 = 0;
    v67 = -1;
    v64 = 0;
    v65 = -1;
    v62 = 0;
    v63 = -1;
    v60 = 0;
    v61 = -1;
    v58 = 0;
    v59 = -1;
    v56 = 0;
    v57 = -1;
    *&v36 = &v62;
    *(&v36 + 1) = &v60;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0  reserved ", &p_data, &v72, &v70, &v68, &v66, &v64, v36, &v58, &v56);
    if (*(a1 + 56) >= 1)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = (*(a1 + 64) + v20);
        v23 = v22[1];
        if (v23 == *v22)
        {
          p_data = google::protobuf::FastInt32ToBuffer(v23, v77, v19);
          v76 = strlen(p_data);
          v72 = 0;
          v73 = -1;
          v70 = 0;
          v71 = -1;
          v68 = 0;
          v69 = -1;
          v66 = 0;
          v67 = -1;
          v64 = 0;
          v65 = -1;
          v62 = 0;
          v63 = -1;
          v60 = 0;
          v61 = -1;
          v58 = 0;
          v59 = -1;
          v56 = 0;
          v57 = -1;
          *&v37 = &v62;
          *(&v37 + 1) = &v60;
          google::protobuf::strings::SubstituteAndAppend(a3, "$0, ", &p_data, &v72, &v70, &v68, &v66, &v64, v37, &v58, &v56);
        }

        else
        {
          p_data = google::protobuf::FastInt32ToBuffer(*v22, v77, v19);
          v76 = strlen(p_data);
          v72 = google::protobuf::FastInt32ToBuffer(v22[1], v74, v24);
          v73 = strlen(v72);
          v70 = 0;
          v71 = -1;
          v68 = 0;
          v69 = -1;
          v66 = 0;
          v67 = -1;
          v64 = 0;
          v65 = -1;
          v62 = 0;
          v63 = -1;
          v60 = 0;
          v61 = -1;
          v58 = 0;
          v59 = -1;
          v56 = 0;
          v57 = -1;
          *&v38 = &v62;
          *(&v38 + 1) = &v60;
          google::protobuf::strings::SubstituteAndAppend(a3, "$0 to $1, ", &p_data, &v72, &v70, &v68, &v66, &v64, v38, &v58, &v56);
        }

        ++v21;
        v20 += 8;
      }

      while (v21 < *(a1 + 56));
    }

    v25 = *(a3 + 23);
    if (v25 < 0)
    {
      v25 = *(a3 + 8);
    }

    std::string::replace(a3, v25 - 2, 2uLL, ";\n");
  }

  if (*(a1 + 60) >= 1)
  {
    v26 = SHIBYTE(v55);
    v27 = __b;
    if (v55 < 0)
    {
      v27 = __b[0];
    }

    p_data = v27;
    if (v55 < 0)
    {
      v26 = __b[1];
    }

    v76 = v26;
    v72 = 0;
    v73 = -1;
    v70 = 0;
    v71 = -1;
    v68 = 0;
    v69 = -1;
    v66 = 0;
    v67 = -1;
    v64 = 0;
    v65 = -1;
    v62 = 0;
    v63 = -1;
    v60 = 0;
    v61 = -1;
    v58 = 0;
    v59 = -1;
    v56 = 0;
    v57 = -1;
    *&v39 = &v62;
    *(&v39 + 1) = &v60;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0  reserved ", &p_data, &v72, &v70, &v68, &v66, &v64, v39, &v58, &v56);
    if (*(a1 + 60) >= 1)
    {
      v29 = 0;
      do
      {
        google::protobuf::CEscape(*(*(a1 + 72) + 8 * v29), v28, &__p);
        v30 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        p_p = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        p_data = &p_p->__r_.__value_.__l.__data_;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = __p.__r_.__value_.__r.__words[1];
        }

        v76 = v30;
        v72 = 0;
        v73 = -1;
        v70 = 0;
        v71 = -1;
        v68 = 0;
        v69 = -1;
        v66 = 0;
        v67 = -1;
        v64 = 0;
        v65 = -1;
        v62 = 0;
        v63 = -1;
        v60 = 0;
        v61 = -1;
        v58 = 0;
        v59 = -1;
        v56 = 0;
        v57 = -1;
        *&v40 = &v62;
        *(&v40 + 1) = &v60;
        google::protobuf::strings::SubstituteAndAppend(a3, "$0, ", &p_data, &v72, &v70, &v68, &v66, &v64, v40, &v58, &v56);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v29;
      }

      while (v29 < *(a1 + 60));
    }

    v32 = *(a3 + 23);
    if (v32 < 0)
    {
      v32 = *(a3 + 8);
    }

    std::string::replace(a3, v32 - 2, 2uLL, ";\n");
  }

  v33 = SHIBYTE(v55);
  v34 = __b;
  if (v55 < 0)
  {
    v34 = __b[0];
  }

  p_data = v34;
  if (v55 < 0)
  {
    v33 = __b[1];
  }

  v76 = v33;
  v72 = 0;
  v73 = -1;
  v70 = 0;
  v71 = -1;
  v68 = 0;
  v69 = -1;
  v66 = 0;
  v67 = -1;
  v64 = 0;
  v65 = -1;
  v62 = 0;
  v63 = -1;
  v60 = 0;
  v61 = -1;
  v58 = 0;
  v59 = -1;
  v56 = 0;
  v57 = -1;
  *&v41 = &v62;
  *(&v41 + 1) = &v60;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &p_data, &v72, &v70, &v68, &v66, &v64, v41, &v58, &v56);
  sub_1000B9880(v43, a3);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  p_data = &v48;
  sub_1000CF468(&p_data);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[1]);
  }

  if (SHIBYTE(v46[0]) < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1000BA31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_1000CDB2C(v43 + 8);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::Descriptor::DebugString(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((*(*(a1 + 32) + 75) & 1) == 0)
  {
    sub_1000BBBD0(__b, 2 * a2, 32);
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    *v93 = 0u;
    *v94 = 0u;
    v98 = *a4;
    v99 = *(a4 + 2);
    if (SHIBYTE(v103) < 0)
    {
      sub_1000B32D8(&v100, __b[0], __b[1]);
    }

    else
    {
      v100 = *__b;
      v101 = v103;
    }

    if (*a4 == 1)
    {
      SourceLocation = google::protobuf::Descriptor::GetSourceLocation(a1, &v92);
    }

    else
    {
      SourceLocation = 0;
    }

    v91[0] = SourceLocation;
    sub_1000B974C(v91, a3);
    if (a5)
    {
      v11 = SHIBYTE(v103);
      v12 = __b;
      if (v103 < 0)
      {
        v12 = __b[0];
      }

      p_data = v12;
      if (v103 < 0)
      {
        v11 = __b[1];
      }

      LODWORD(v125[0]) = v11;
      v13 = *a1;
      v14 = *(*a1 + 23);
      v15 = *(*a1 + 8);
      if (v14 < 0)
      {
        v13 = **a1;
      }

      v121 = v13;
      if (v14 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      v122 = v16;
      v118 = 0;
      v119 = -1;
      v116 = 0;
      v117 = -1;
      v114 = 0;
      v115 = -1;
      v112 = 0;
      v113 = -1;
      v110 = 0;
      v111 = -1;
      v108 = 0;
      v109 = -1;
      v106 = 0;
      v107 = -1;
      v104 = 0;
      v105 = -1;
      *&v77 = &v110;
      *(&v77 + 1) = &v108;
      google::protobuf::strings::SubstituteAndAppend(a3, "$0message $1", &p_data, &v121, &v118, &v116, &v114, &v112, v77, &v106, &v104);
    }

    std::string::append(a3, " {\n");
    sub_1000B9994(a2 + 1, *(a1 + 32), *(*(a1 + 16) + 16), a3);
    v90[0] = 0;
    v90[1] = 0;
    v89 = v90;
    if (*(a1 + 104) >= 1)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *(a1 + 40);
        v21 = v20 + v18;
        v22 = *(v20 + v18 + 48);
        if (v22)
        {
          v118 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v116 = v20 + v18;
          if (atomic_load_explicit(v22, memory_order_acquire) != -1)
          {
            p_data = &v118;
            v125[0] = &v116;
            v121 = &p_data;
            std::__call_once(v22, &v121, sub_1000B32C4);
          }
        }

        if (*(v21 + 56) == 10)
        {
          p_data = google::protobuf::FieldDescriptor::message_type((*(a1 + 40) + v18));
          sub_1000D2BFC(&v89, &p_data);
        }

        ++v19;
        v18 += 152;
      }

      while (v19 < *(a1 + 104));
    }

    if (*(a1 + 128) >= 1)
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = *(a1 + 80);
        v26 = v25 + v23;
        v27 = *(v25 + v23 + 48);
        if (v27)
        {
          v118 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v116 = v25 + v23;
          if (atomic_load_explicit(v27, memory_order_acquire) != -1)
          {
            p_data = &v118;
            v125[0] = &v116;
            v121 = &p_data;
            std::__call_once(v27, &v121, sub_1000B32C4);
          }
        }

        if (*(v26 + 56) == 10)
        {
          p_data = google::protobuf::FieldDescriptor::message_type((*(a1 + 80) + v23));
          sub_1000D2BFC(&v89, &p_data);
        }

        ++v24;
        v23 += 152;
      }

      while (v24 < *(a1 + 128));
    }

    v28 = *(a1 + 116);
    if (v28 >= 1)
    {
      for (i = 0; i < v28; ++i)
      {
        v30 = *(a1 + 56) + 144 * i;
        for (j = v90[0]; j; j = *j)
        {
          v32 = j[4];
          if (v30 >= v32)
          {
            if (v32 >= v30)
            {
              goto LABEL_43;
            }

            ++j;
          }
        }

        google::protobuf::Descriptor::DebugString(v30, (a2 + 1), a3, a4, 1);
        v28 = *(a1 + 116);
LABEL_43:
        ;
      }
    }

    if (*(a1 + 120) >= 1)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        google::protobuf::EnumDescriptor::DebugString(*(a1 + 64) + v33, a2 + 1, a3, a4);
        ++v34;
        v33 += 80;
      }

      while (v34 < *(a1 + 120));
    }

    if (*(a1 + 104) >= 1)
    {
      v35 = 0;
      v36 = 0;
      do
      {
        v37 = *(a1 + 40) + v35;
        v38 = *(v37 + 88);
        if (v38)
        {
          if (v37 == **(v38 + 32))
          {
            google::protobuf::OneofDescriptor::DebugString(v38, a2 + 1, a3, a4);
          }
        }

        else
        {
          google::protobuf::FieldDescriptor::DebugString(*(a1 + 40) + v35, (a2 + 1), a3, a4);
        }

        ++v36;
        v35 += 152;
      }

      while (v36 < *(a1 + 104));
    }

    if (*(a1 + 124) >= 1)
    {
      v39 = 0;
      v40 = 0;
      do
      {
        v41 = SHIBYTE(v103);
        v42 = __b[0];
        if (v103 >= 0)
        {
          v42 = __b;
        }

        p_data = v42;
        if (v103 < 0)
        {
          v41 = __b[1];
        }

        LODWORD(v125[0]) = v41;
        v121 = google::protobuf::FastInt32ToBuffer(*(*(a1 + 72) + v39), v123, v17);
        v122 = strlen(v121);
        v118 = google::protobuf::FastInt32ToBuffer((*(*(a1 + 72) + v39 + 4) - 1), v120, v43);
        v119 = strlen(v118);
        v116 = 0;
        v117 = -1;
        v114 = 0;
        v115 = -1;
        v112 = 0;
        v113 = -1;
        v110 = 0;
        v111 = -1;
        v108 = 0;
        v109 = -1;
        v106 = 0;
        v107 = -1;
        v104 = 0;
        v105 = -1;
        *(&v78 + 1) = &v108;
        *&v78 = &v110;
        google::protobuf::strings::SubstituteAndAppend(a3, "$0  extensions $1 to $2;\n", &p_data, &v121, &v118, &v116, &v114, &v112, v78, &v106, &v104);
        ++v40;
        v39 += 16;
      }

      while (v40 < *(a1 + 124));
    }

    if (*(a1 + 128) >= 1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 80;
      do
      {
        v47 = *(a1 + 80);
        if (*(v47 + v46) != v45)
        {
          v45 = *(v47 + v46);
          if (v46 != 80)
          {
            v48 = SHIBYTE(v103);
            v49 = __b[0];
            if (v103 >= 0)
            {
              v49 = __b;
            }

            p_data = v49;
            if (v103 < 0)
            {
              v48 = __b[1];
            }

            LODWORD(v125[0]) = v48;
            v121 = 0;
            v122 = -1;
            v118 = 0;
            v119 = -1;
            v116 = 0;
            v117 = -1;
            v114 = 0;
            v115 = -1;
            v112 = 0;
            v113 = -1;
            v110 = 0;
            v111 = -1;
            v108 = 0;
            v109 = -1;
            v106 = 0;
            v107 = -1;
            v104 = 0;
            v105 = -1;
            *(&v79 + 1) = &v108;
            *&v79 = &v110;
            google::protobuf::strings::SubstituteAndAppend(a3, "$0  }\n", &p_data, &v121, &v118, &v116, &v114, &v112, v79, &v106, &v104);
            v45 = *(*(a1 + 80) + v46);
          }

          v50 = SHIBYTE(v103);
          v51 = __b[0];
          if (v103 >= 0)
          {
            v51 = __b;
          }

          p_data = v51;
          if (v103 < 0)
          {
            v50 = __b[1];
          }

          LODWORD(v125[0]) = v50;
          v52 = *(v45 + 8);
          v53 = v52[23];
          v54 = *(v52 + 1);
          if (v53 < 0)
          {
            v52 = *v52;
          }

          v121 = v52;
          if (v53 >= 0)
          {
            v55 = v53;
          }

          else
          {
            v55 = v54;
          }

          v122 = v55;
          v118 = 0;
          v119 = -1;
          v116 = 0;
          v117 = -1;
          v114 = 0;
          v115 = -1;
          v112 = 0;
          v113 = -1;
          v110 = 0;
          v111 = -1;
          v108 = 0;
          v109 = -1;
          v106 = 0;
          v107 = -1;
          v104 = 0;
          v105 = -1;
          *(&v80 + 1) = &v108;
          *&v80 = &v110;
          google::protobuf::strings::SubstituteAndAppend(a3, "$0  extend .$1 {\n", &p_data, &v121, &v118, &v116, &v114, &v112, v80, &v106, &v104);
          v47 = *(a1 + 80);
        }

        google::protobuf::FieldDescriptor::DebugString(v47 + v46 - 80, (a2 + 2), a3, a4);
        ++v44;
        v56 = *(a1 + 128);
        v46 += 152;
      }

      while (v44 < v56);
      if (v56 > 0)
      {
        v57 = SHIBYTE(v103);
        v58 = __b;
        if (v103 < 0)
        {
          v58 = __b[0];
        }

        p_data = v58;
        if (v103 < 0)
        {
          v57 = __b[1];
        }

        LODWORD(v125[0]) = v57;
        v121 = 0;
        v122 = -1;
        v118 = 0;
        v119 = -1;
        v116 = 0;
        v117 = -1;
        v114 = 0;
        v115 = -1;
        v112 = 0;
        v113 = -1;
        v110 = 0;
        v111 = -1;
        v108 = 0;
        v109 = -1;
        v106 = 0;
        v107 = -1;
        v104 = 0;
        v105 = -1;
        *&v81 = &v110;
        *(&v81 + 1) = &v108;
        google::protobuf::strings::SubstituteAndAppend(a3, "$0  }\n", &p_data, &v121, &v118, &v116, &v114, &v112, v81, &v106, &v104);
      }
    }

    if (*(a1 + 132) >= 1)
    {
      v59 = SHIBYTE(v103);
      v60 = __b;
      if (v103 < 0)
      {
        v60 = __b[0];
      }

      p_data = v60;
      if (v103 < 0)
      {
        v59 = __b[1];
      }

      LODWORD(v125[0]) = v59;
      v121 = 0;
      v122 = -1;
      v118 = 0;
      v119 = -1;
      v116 = 0;
      v117 = -1;
      v114 = 0;
      v115 = -1;
      v112 = 0;
      v113 = -1;
      v110 = 0;
      v111 = -1;
      v108 = 0;
      v109 = -1;
      v106 = 0;
      v107 = -1;
      v104 = 0;
      v105 = -1;
      *&v82 = &v110;
      *(&v82 + 1) = &v108;
      google::protobuf::strings::SubstituteAndAppend(a3, "$0  reserved ", &p_data, &v121, &v118, &v116, &v114, &v112, v82, &v106, &v104);
      if (*(a1 + 132) >= 1)
      {
        v62 = 0;
        v63 = 0;
        do
        {
          v64 = (*(a1 + 88) + v62);
          v65 = *v64;
          if (v64[1] == v65 + 1)
          {
            p_data = google::protobuf::FastInt32ToBuffer(v65, v125 + 4, v61);
            LODWORD(v125[0]) = strlen(p_data);
            v121 = 0;
            v122 = -1;
            v118 = 0;
            v119 = -1;
            v116 = 0;
            v117 = -1;
            v114 = 0;
            v115 = -1;
            v112 = 0;
            v113 = -1;
            v110 = 0;
            v111 = -1;
            v108 = 0;
            v109 = -1;
            v106 = 0;
            v107 = -1;
            v104 = 0;
            v105 = -1;
            *&v83 = &v110;
            *(&v83 + 1) = &v108;
            google::protobuf::strings::SubstituteAndAppend(a3, "$0, ", &p_data, &v121, &v118, &v116, &v114, &v112, v83, &v106, &v104);
          }

          else
          {
            p_data = google::protobuf::FastInt32ToBuffer(v65, v125 + 4, v61);
            LODWORD(v125[0]) = strlen(p_data);
            v121 = google::protobuf::FastInt32ToBuffer((v64[1] - 1), v123, v66);
            v122 = strlen(v121);
            v118 = 0;
            v119 = -1;
            v116 = 0;
            v117 = -1;
            v114 = 0;
            v115 = -1;
            v112 = 0;
            v113 = -1;
            v110 = 0;
            v111 = -1;
            v108 = 0;
            v109 = -1;
            v106 = 0;
            v107 = -1;
            v104 = 0;
            v105 = -1;
            *&v84 = &v110;
            *(&v84 + 1) = &v108;
            google::protobuf::strings::SubstituteAndAppend(a3, "$0 to $1, ", &p_data, &v121, &v118, &v116, &v114, &v112, v84, &v106, &v104);
          }

          ++v63;
          v62 += 8;
        }

        while (v63 < *(a1 + 132));
      }

      v67 = *(a3 + 23);
      if (v67 < 0)
      {
        v67 = *(a3 + 8);
      }

      std::string::replace(a3, v67 - 2, 2uLL, ";\n");
    }

    if (*(a1 + 136) >= 1)
    {
      v68 = SHIBYTE(v103);
      v69 = __b;
      if (v103 < 0)
      {
        v69 = __b[0];
      }

      p_data = v69;
      if (v103 < 0)
      {
        v68 = __b[1];
      }

      LODWORD(v125[0]) = v68;
      v121 = 0;
      v122 = -1;
      v118 = 0;
      v119 = -1;
      v116 = 0;
      v117 = -1;
      v114 = 0;
      v115 = -1;
      v112 = 0;
      v113 = -1;
      v110 = 0;
      v111 = -1;
      v108 = 0;
      v109 = -1;
      v106 = 0;
      v107 = -1;
      v104 = 0;
      v105 = -1;
      *&v85 = &v110;
      *(&v85 + 1) = &v108;
      google::protobuf::strings::SubstituteAndAppend(a3, "$0  reserved ", &p_data, &v121, &v118, &v116, &v114, &v112, v85, &v106, &v104);
      if (*(a1 + 136) >= 1)
      {
        v71 = 0;
        do
        {
          google::protobuf::CEscape(*(*(a1 + 96) + 8 * v71), v70, &__p);
          v72 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          p_p = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          p_data = &p_p->__r_.__value_.__l.__data_;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v72 = __p.__r_.__value_.__r.__words[1];
          }

          LODWORD(v125[0]) = v72;
          v121 = 0;
          v122 = -1;
          v118 = 0;
          v119 = -1;
          v116 = 0;
          v117 = -1;
          v114 = 0;
          v115 = -1;
          v112 = 0;
          v113 = -1;
          v110 = 0;
          v111 = -1;
          v108 = 0;
          v109 = -1;
          v106 = 0;
          v107 = -1;
          v104 = 0;
          v105 = -1;
          *&v86 = &v110;
          *(&v86 + 1) = &v108;
          google::protobuf::strings::SubstituteAndAppend(a3, "$0, ", &p_data, &v121, &v118, &v116, &v114, &v112, v86, &v106, &v104);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          ++v71;
        }

        while (v71 < *(a1 + 136));
      }

      v74 = *(a3 + 23);
      if (v74 < 0)
      {
        v74 = *(a3 + 8);
      }

      std::string::replace(a3, v74 - 2, 2uLL, ";\n");
    }

    v75 = SHIBYTE(v103);
    v76 = __b;
    if (v103 < 0)
    {
      v76 = __b[0];
    }

    p_data = v76;
    if (v103 < 0)
    {
      v75 = __b[1];
    }

    LODWORD(v125[0]) = v75;
    v121 = 0;
    v122 = -1;
    v118 = 0;
    v119 = -1;
    v116 = 0;
    v117 = -1;
    v114 = 0;
    v115 = -1;
    v112 = 0;
    v113 = -1;
    v110 = 0;
    v111 = -1;
    v108 = 0;
    v109 = -1;
    v106 = 0;
    v107 = -1;
    v104 = 0;
    v105 = -1;
    *&v87 = &v110;
    *(&v87 + 1) = &v108;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &p_data, &v121, &v118, &v116, &v114, &v112, v87, &v106, &v104);
    sub_1000B9880(v91, a3);
    sub_1000239A0(&v89, v90[0]);
    if (SHIBYTE(v101) < 0)
    {
      operator delete(v100);
    }

    p_data = &v96;
    sub_1000CF468(&p_data);
    if (SHIBYTE(v95) < 0)
    {
      operator delete(v94[1]);
    }

    if (SHIBYTE(v94[0]) < 0)
    {
      operator delete(v93[0]);
    }

    if (SHIBYTE(v103) < 0)
    {
      operator delete(__b[0]);
    }
  }
}

void sub_1000BB168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_1000CDB2C(v47 + 8);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::FieldDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, uint64_t a4)
{
  sub_1000BBBD0(__b, 2 * a2, 32);
  memset(&v49, 0, sizeof(v49));
  v8 = *(a1 + 48);
  if (v8)
  {
    v79 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v77 = a1;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v55.__r_.__value_.__r.__words[0] = &v79;
      v55.__r_.__value_.__l.__size_ = &v77;
      v81[0].__r_.__value_.__r.__words[0] = &v55;
      std::__call_once(v8, v81, sub_1000B32C4);
    }
  }

  if (*(a1 + 56) == 11 && *(*(*(a1 + 104) + 32) + 75) == 1)
  {
    v9 = google::protobuf::FieldDescriptor::message_type(a1);
    google::protobuf::FieldDescriptor::FieldTypeNameDebugString(*(v9 + 40), &v52);
    v10 = v54;
    v11 = v52;
    if (v54 >= 0)
    {
      v11 = &v52;
    }

    v55.__r_.__value_.__r.__words[0] = v11;
    if (v54 < 0)
    {
      v10 = v53;
    }

    LODWORD(v55.__r_.__value_.__r.__words[1]) = v10;
    v12 = google::protobuf::FieldDescriptor::message_type(a1);
    google::protobuf::FieldDescriptor::FieldTypeNameDebugString((*(v12 + 40) + 152), &__p);
    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    v81[0].__r_.__value_.__r.__words[0] = p_p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__r.__words[1];
    }

    LODWORD(v81[0].__r_.__value_.__r.__words[1]) = v13;
    v79 = 0;
    LODWORD(v80) = -1;
    v77 = 0;
    v78 = -1;
    v75 = 0;
    v76 = -1;
    v73 = 0;
    LODWORD(v74) = -1;
    v71 = 0;
    v72 = -1;
    v69 = 0;
    v70 = -1;
    v67 = 0;
    v68 = -1;
    v65 = 0;
    v66 = -1;
    *&v44 = &v71;
    *(&v44 + 1) = &v69;
    google::protobuf::strings::SubstituteAndAppend(&v49, "map<$0, $1>", &v55, v81, &v79, &v77, &v75, &v73, v44, &v67, &v65);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v54 < 0)
    {
      operator delete(v52);
    }
  }

  else
  {
    google::protobuf::FieldDescriptor::FieldTypeNameDebugString(a1, &v55);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    v49 = v55;
  }

  v55.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::kLabelToName[*(a1 + 60)];
  v55.__r_.__value_.__l.__size_ = strlen(v55.__r_.__value_.__l.__data_);
  v81[0].__r_.__value_.__r.__words[0] = " ";
  v81[0].__r_.__value_.__l.__size_ = 1;
  google::protobuf::StrCat(&v55, v81, &__p);
  v15 = *(a1 + 48);
  if (v15)
  {
    v79 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v77 = a1;
    if (atomic_load_explicit(v15, memory_order_acquire) != -1)
    {
      v55.__r_.__value_.__r.__words[0] = &v79;
      v55.__r_.__value_.__l.__size_ = &v77;
      v81[0].__r_.__value_.__r.__words[0] = &v55;
      std::__call_once(v15, v81, sub_1000B32C4);
    }
  }

  if (*(a1 + 56) == 11 && (*(*(*(a1 + 104) + 32) + 75) & 1) != 0 || *(a1 + 88) || *(a1 + 60) == 1 && (*(a1 + 65) & 1) == 0 && *(*(a1 + 40) + 60) != 2)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
    }
  }

  v60 = 0;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v61 = *a4;
  v62 = *(a4 + 2);
  if (SHIBYTE(v51) < 0)
  {
    sub_1000B32D8(&v63, __b[0], __b[1]);
  }

  else
  {
    v63 = *__b;
    v64 = v51;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::FieldDescriptor::GetSourceLocation(a1, &v55.__r_.__value_.__l.__size_);
  }

  else
  {
    SourceLocation = 0;
  }

  v55.__r_.__value_.__s.__data_[0] = SourceLocation;
  sub_1000B974C(&v55, a3);
  v18 = SHIBYTE(v51);
  v19 = __b;
  if (v51 < 0)
  {
    v19 = __b[0];
  }

  v81[0].__r_.__value_.__r.__words[0] = v19;
  if (v51 < 0)
  {
    v18 = __b[1];
  }

  LODWORD(v81[0].__r_.__value_.__r.__words[1]) = v18;
  v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v21 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  v79 = v21;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __p.__r_.__value_.__r.__words[1];
  }

  LODWORD(v80) = v20;
  v22 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
  v23 = &v49;
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v49.__r_.__value_.__r.__words[0];
  }

  v77 = v23;
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v49.__r_.__value_.__r.__words[1];
  }

  v78 = v22;
  v24 = *(a1 + 48);
  if (v24)
  {
    v69 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v67 = a1;
    if (atomic_load_explicit(v24, memory_order_acquire) != -1)
    {
      v73 = &v69;
      v74 = &v67;
      v71 = &v73;
      std::__call_once(v24, &v71, sub_1000B32C4);
    }
  }

  v25 = a1;
  if (*(a1 + 56) == 10)
  {
    v25 = google::protobuf::FieldDescriptor::message_type(a1);
  }

  v26 = *v25;
  v27 = *(*v25 + 23);
  v28 = (*v25)[1];
  if (v27 < 0)
  {
    v26 = **v25;
  }

  v75 = v26;
  if (v27 >= 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v76 = v29;
  v73 = google::protobuf::FastInt32ToBuffer(*(a1 + 68), &v74 + 4, v17);
  LODWORD(v74) = strlen(v73);
  v71 = 0;
  v72 = -1;
  v69 = 0;
  v70 = -1;
  v67 = 0;
  v68 = -1;
  v65 = 0;
  v66 = -1;
  v52 = 0;
  LODWORD(v53) = -1;
  *&v45 = &v69;
  *(&v45 + 1) = &v67;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0$1$2 $3 = $4", v81, &v79, &v77, &v75, &v73, &v71, v45, &v65, &v52);
  if (*(a1 + 64) == 1)
  {
    google::protobuf::FieldDescriptor::DefaultValueAsString(a1, 1, v30, &v47);
    v31 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
    v32 = v47.__r_.__value_.__r.__words[0];
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v47;
    }

    v81[0].__r_.__value_.__r.__words[0] = v32;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v47.__r_.__value_.__r.__words[1];
    }

    LODWORD(v81[0].__r_.__value_.__r.__words[1]) = v31;
    v79 = 0;
    LODWORD(v80) = -1;
    v77 = 0;
    v78 = -1;
    v75 = 0;
    v76 = -1;
    v73 = 0;
    LODWORD(v74) = -1;
    v71 = 0;
    v72 = -1;
    v69 = 0;
    v70 = -1;
    v67 = 0;
    v68 = -1;
    v65 = 0;
    v66 = -1;
    v52 = 0;
    LODWORD(v53) = -1;
    *&v46 = &v69;
    *(&v46 + 1) = &v67;
    google::protobuf::strings::SubstituteAndAppend(a3, " [default = $0", v81, &v79, &v77, &v75, &v73, &v71, v46, &v65, &v52);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if ((*(a1 + 66) & 1) == 0)
    {
      goto LABEL_81;
    }

    v33 = ", ";
LABEL_72:
    std::string::append(a3, v33);
    std::string::append(a3, "json_name = ");
    google::protobuf::CEscape(*(a1 + 32), v34, v81);
    if ((v81[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = v81;
    }

    else
    {
      v35 = v81[0].__r_.__value_.__r.__words[0];
    }

    if ((v81[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v81[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v81[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v35, size);
    if (SHIBYTE(v81[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81[0].__r_.__value_.__l.__data_);
    }

    std::string::append(a3, "");
LABEL_81:
    v37 = 1;
    goto LABEL_83;
  }

  if (*(a1 + 66) == 1)
  {
    v33 = " [";
    goto LABEL_72;
  }

  v37 = 0;
LABEL_83:
  memset(v81, 0, 24);
  if (sub_1000BC2F0(a2, *(a1 + 120), *(*(a1 + 40) + 16), v81))
  {
    if (v37)
    {
      v38 = ", ";
    }

    else
    {
      v38 = " [";
    }

    std::string::append(a3, v38);
    if ((v81[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = v81;
    }

    else
    {
      v39 = v81[0].__r_.__value_.__r.__words[0];
    }

    if ((v81[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v81[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v81[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v39, v40);
    goto LABEL_95;
  }

  if (v37)
  {
LABEL_95:
    std::string::append(a3, "]");
  }

  v41 = *(a1 + 48);
  if (v41)
  {
    v75 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v73 = a1;
    if (atomic_load_explicit(v41, memory_order_acquire) != -1)
    {
      v79 = &v75;
      v80 = &v73;
      v77 = &v79;
      std::__call_once(v41, &v77, sub_1000B32C4);
    }
  }

  if (*(a1 + 56) != 10)
  {
    v42 = ";\n";
    goto LABEL_103;
  }

  if (*(a4 + 1))
  {
    v42 = " { ... };\n";
LABEL_103:
    std::string::append(a3, v42);
    goto LABEL_105;
  }

  v43 = google::protobuf::FieldDescriptor::message_type(a1);
  google::protobuf::Descriptor::DebugString(v43, a2, a3, a4, 0);
LABEL_105:
  sub_1000B9880(&v55, a3);
  if (SHIBYTE(v81[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  v81[0].__r_.__value_.__r.__words[0] = &v59;
  sub_1000CF468(v81);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(*(&v57 + 1));
  }

  if (SBYTE7(v57) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1000BBACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1000BBBD0(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void google::protobuf::OneofDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, __int16 *a4)
{
  sub_1000BBBD0(__b, 2 * a2, 32);
  v26 = 0;
  v25 = 0u;
  v24 = 0u;
  *v23 = 0u;
  *v22 = 0u;
  v27 = *a4;
  v28 = *(a4 + 2);
  if (SHIBYTE(v32) < 0)
  {
    sub_1000B32D8(&__p, __b[0], __b[1]);
  }

  else
  {
    __p = *__b;
    v30 = v32;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::OneofDescriptor::GetSourceLocation(a1, &v21);
  }

  else
  {
    SourceLocation = 0;
  }

  v20[0] = SourceLocation;
  sub_1000B974C(v20, a3);
  v9 = SHIBYTE(v32);
  v10 = __b;
  if (v32 < 0)
  {
    v10 = __b[0];
  }

  v51 = v10;
  if (v32 < 0)
  {
    v9 = __b[1];
  }

  v52 = v9;
  v11 = *a1;
  v12 = *(*a1 + 23);
  v13 = *(*a1 + 8);
  if (v12 < 0)
  {
    v11 = **a1;
  }

  v49 = v11;
  if (v12 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v50 = v14;
  v47 = 0;
  v48 = -1;
  v45 = 0;
  v46 = -1;
  v43 = 0;
  v44 = -1;
  v41 = 0;
  v42 = -1;
  v39 = 0;
  v40 = -1;
  v37 = 0;
  v38 = -1;
  v35 = 0;
  v36 = -1;
  v33 = 0;
  v34 = -1;
  *&v18 = &v39;
  *(&v18 + 1) = &v37;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0oneof $1 {", &v51, &v49, &v47, &v45, &v43, &v41, v18, &v35, &v33);
  sub_1000B9994(a2 + 1, *(a1 + 40), *(*(*(a1 + 16) + 16) + 16), a3);
  if (*(a4 + 2) == 1)
  {
    std::string::append(a3, " ... }\n");
  }

  else
  {
    std::string::append(a3, "\n");
    if (*(a1 + 24) >= 1)
    {
      v15 = 0;
      do
      {
        google::protobuf::FieldDescriptor::DebugString(*(*(a1 + 32) + 8 * v15++), (a2 + 1), a3, a4);
      }

      while (v15 < *(a1 + 24));
    }

    v16 = SHIBYTE(v32);
    v17 = __b;
    if (v32 < 0)
    {
      v17 = __b[0];
    }

    v51 = v17;
    if (v32 < 0)
    {
      v16 = __b[1];
    }

    v52 = v16;
    v49 = 0;
    v50 = -1;
    v47 = 0;
    v48 = -1;
    v45 = 0;
    v46 = -1;
    v43 = 0;
    v44 = -1;
    v41 = 0;
    v42 = -1;
    v39 = 0;
    v40 = -1;
    v37 = 0;
    v38 = -1;
    v35 = 0;
    v36 = -1;
    v33 = 0;
    v34 = -1;
    *&v19 = &v39;
    *(&v19 + 1) = &v37;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &v51, &v49, &v47, &v45, &v43, &v41, v19, &v35, &v33);
  }

  sub_1000B9880(v20, a3);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  v51 = &v25;
  sub_1000CF468(&v51);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  if (SHIBYTE(v23[0]) < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1000BBFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_1000CDB2C(v37 + 8);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::FieldDescriptor::DebugStringWithOptions(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 67) == 1)
  {
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 23);
    v8 = v6[1];
    if (v7 < 0)
    {
      v6 = *v6;
    }

    v30 = v6;
    if (v7 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v31 = v9;
    v28 = 0;
    v29 = -1;
    v26 = 0;
    v27 = -1;
    v24 = 0;
    v25 = -1;
    v22 = 0;
    v23 = -1;
    v20 = 0;
    v21 = -1;
    v18 = 0;
    v19 = -1;
    v16 = 0;
    v17 = -1;
    v14 = 0;
    v15 = -1;
    v12 = 0;
    v13 = -1;
    *&v11 = &v18;
    *(&v11 + 1) = &v16;
    google::protobuf::strings::SubstituteAndAppend(a3, "extend .$0 {\n", &v30, &v28, &v26, &v24, &v22, &v20, v11, &v14, &v12);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  google::protobuf::FieldDescriptor::DebugString(a1, v10, a3, a2);
  if (*(a1 + 67) == 1)
  {
    std::string::append(a3, "}\n");
  }
}

void sub_1000BC1AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *google::protobuf::FieldDescriptor::FieldTypeNameDebugString@<X0>(google::protobuf::FieldDescriptor *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 6);
  if (v4)
  {
    v10 = this;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v4, memory_order_acquire) != -1)
    {
      v13 = &v11;
      v14 = &v10;
      v12 = &v13;
      std::__call_once(v4, &v12, sub_1000B32C4);
    }
  }

  v5 = *(this + 14);
  if (v5 == 14)
  {
    v6 = google::protobuf::FieldDescriptor::enum_type(this);
    goto LABEL_8;
  }

  if (v5 == 11)
  {
    v6 = google::protobuf::FieldDescriptor::message_type(this);
LABEL_8:
    v7 = *(v6 + 8);
    return std::operator+<char>();
  }

  v9 = *(this + 6);
  if (v9)
  {
    v10 = this;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v13 = &v11;
      v14 = &v10;
      v12 = &v13;
      std::__call_once(v9, &v12, sub_1000B32C4);
    }

    v5 = *(this + 14);
  }

  return sub_1000B347C(a2, google::protobuf::FieldDescriptor::kTypeToName[v5]);
}

BOOL sub_1000BC2F0(int a1, const google::protobuf::Message *a2, uint64_t a3, std::string *a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (sub_1000CDDCC(a1, a2, a3, &v10))
  {
    sub_1000CE968(", ", &v10, &__p);
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

    std::string::append(a4, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = v10 != v11;
  __p.__r_.__value_.__r.__words[0] = &v10;
  sub_1000CF468(&__p);
  return v7;
}

void sub_1000BC394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_1000CF468(&__p);
  _Unwind_Resume(a1);
}

void google::protobuf::EnumValueDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, __int16 *a4)
{
  sub_1000BBBD0(__b, 2 * a2, 32);
  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  *v24 = 0u;
  *v23 = 0u;
  v28 = *a4;
  v29 = *(a4 + 2);
  if (SHIBYTE(v33) < 0)
  {
    sub_1000B32D8(&v30, __b[0], __b[1]);
  }

  else
  {
    v30 = *__b;
    v31 = v33;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::EnumValueDescriptor::GetSourceLocation(a1, &v22);
  }

  else
  {
    SourceLocation = 0;
  }

  v21[0] = SourceLocation;
  sub_1000B974C(v21, a3);
  v10 = SHIBYTE(v33);
  v11 = __b;
  if (v33 < 0)
  {
    v11 = __b[0];
  }

  p_data = v11;
  if (v33 < 0)
  {
    v10 = __b[1];
  }

  v54 = v10;
  v12 = *a1;
  v13 = *(*a1 + 23);
  v14 = *(*a1 + 8);
  if (v13 < 0)
  {
    v12 = **a1;
  }

  v51 = v12;
  if (v13 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v52 = v15;
  v48 = google::protobuf::FastInt32ToBuffer(*(a1 + 16), v50, v9);
  v49 = strlen(v48);
  v46 = 0;
  v47 = -1;
  v44 = 0;
  v45 = -1;
  v42 = 0;
  v43 = -1;
  v40 = 0;
  v41 = -1;
  v38 = 0;
  v39 = -1;
  v36 = 0;
  v37 = -1;
  v34 = 0;
  v35 = -1;
  *&v18 = &v40;
  *(&v18 + 1) = &v38;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0$1 = $2", &p_data, &v51, &v48, &v46, &v44, &v42, v18, &v36, &v34);
  memset(&__p, 0, sizeof(__p));
  if (sub_1000BC2F0(a2, *(a1 + 32), *(*(*(a1 + 24) + 16) + 16), &__p))
  {
    v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    p_data = &p_p->__r_.__value_.__l.__data_;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = __p.__r_.__value_.__r.__words[1];
    }

    v54 = v16;
    v51 = 0;
    v52 = -1;
    v48 = 0;
    v49 = -1;
    v46 = 0;
    v47 = -1;
    v44 = 0;
    v45 = -1;
    v42 = 0;
    v43 = -1;
    v40 = 0;
    v41 = -1;
    v38 = 0;
    v39 = -1;
    v36 = 0;
    v37 = -1;
    v34 = 0;
    v35 = -1;
    *&v19 = &v40;
    *(&v19 + 1) = &v38;
    google::protobuf::strings::SubstituteAndAppend(a3, " [$0]", &p_data, &v51, &v48, &v46, &v44, &v42, v19, &v36, &v34);
  }

  std::string::append(a3, ";\n");
  sub_1000B9880(v21, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  p_data = &v26;
  sub_1000CF468(&p_data);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_1000BC708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_1000CDB2C(v44 + 8);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::FileDescriptor::GetSourceLocation(uint64_t a1, std::string **a2, uint64_t a3)
{
  if (!a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 2963);
    v6 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: out_location != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  v7 = *(a1 + 152);
  if (!v7)
  {
    return 0;
  }

  result = google::protobuf::FileDescriptorTables::GetSourceLocation(*(a1 + 144), a2, v7);
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 48);
  if ((v10 - 3) >= 2)
  {
    return 0;
  }

  v11 = *(result + 56);
  *a3 = *v11;
  *(a3 + 8) = v11[1];
  *(a3 + 4) = v11[2 * (v10 != 3)];
  *(a3 + 12) = v11[v10 - 1];
  std::string::operator=((a3 + 16), (*(result + 96) & 0xFFFFFFFFFFFFFFFELL));
  std::string::operator=((a3 + 40), (*(v9 + 104) & 0xFFFFFFFFFFFFFFFELL));
  v12 = *(v9 + 88);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  sub_1000D2CC8((a3 + 64), v13, &v13[*(v9 + 80)], *(v9 + 80));
  return 1;
}

void sub_1000BC8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::FieldDescriptor::is_packed(google::protobuf::FieldDescriptor *this)
{
  if (*(this + 15) == 3)
  {
    v10[4] = v1;
    v10[5] = v2;
    v4 = *(this + 6);
    if (v4)
    {
      v7 = this;
      v8 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v4, memory_order_acquire) != -1)
      {
        v10[0] = &v8;
        v10[1] = &v7;
        v9 = v10;
        std::__call_once(v4, &v9, sub_1000B32C4);
      }
    }

    if ((*(this + 14) - 13) > 0xFFFFFFFB)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = *(this + 15);
      if (*(*(this + 5) + 60) == 2)
      {
        if (!v5)
        {
          return v5 & 1;
        }

        goto LABEL_14;
      }

      if (v5 && (*(v5 + 40) & 2) != 0)
      {
LABEL_14:
        LOBYTE(v5) = *(v5 + 76);
        return v5 & 1;
      }

      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t google::protobuf::Descriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::Descriptor::GetLocationPath(a1, &__p);
  SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_1000BCA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Descriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    google::protobuf::Descriptor::GetLocationPath(v4, a2);
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  v8 = v5;
  sub_1000B966C(a2, &v8);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = (v6 + 56);
  }

  else
  {
    v7 = (*(a1 + 16) + 104);
  }

  v8 = 954437177 * ((a1 - *v7) >> 4);
  sub_1000B966C(a2, &v8);
}

uint64_t google::protobuf::FieldDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::FieldDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 40), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_1000BCB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::FieldDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  if (*(a1 + 67) == 1)
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      google::protobuf::Descriptor::GetLocationPath(v4, a2);
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }
  }

  else
  {
    google::protobuf::Descriptor::GetLocationPath(*(a1 + 80), a2);
    v5 = 2;
  }

  v8 = v5;
  sub_1000B966C(a2, &v8);
  if (*(a1 + 67))
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      v7 = (v6 + 80);
    }

    else
    {
      v7 = (*(a1 + 40) + 128);
    }
  }

  else
  {
    v7 = (*(a1 + 80) + 40);
  }

  v8 = 678152731 * ((a1 - *v7) >> 3);
  sub_1000B966C(a2, &v8);
}

uint64_t google::protobuf::OneofDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::OneofDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(*(a1 + 16) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_1000BCC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::OneofDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  google::protobuf::Descriptor::GetLocationPath(*(a1 + 16), a2);
  v5 = 8;
  sub_1000B966C(a2, &v5);
  v4 = -1431655765 * ((a1 - *(*(a1 + 16) + 48)) >> 4);
  sub_1000B966C(a2, &v4);
}

uint64_t google::protobuf::EnumDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::EnumDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_1000BCD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::EnumDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    google::protobuf::Descriptor::GetLocationPath(v4, a2);
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  v8 = v5;
  sub_1000B966C(a2, &v8);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = (v6 + 64);
  }

  else
  {
    v7 = (*(a1 + 16) + 112);
  }

  v8 = -858993459 * ((a1 - *v7) >> 4);
  sub_1000B966C(a2, &v8);
}

void google::protobuf::MethodDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  google::protobuf::ServiceDescriptor::GetLocationPath(*(a1 + 16), a2);
  v5 = 2;
  sub_1000B966C(a2, &v5);
  v4 = -991146299 * ((a1 - *(*(a1 + 16) + 32)) >> 3);
  sub_1000B966C(a2, &v4);
}

void google::protobuf::ServiceDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  v5 = 6;
  sub_1000B966C(a2, &v5);
  v4 = -1431655765 * ((a1 - *(*(a1 + 16) + 120)) >> 4);
  sub_1000B966C(a2, &v4);
}

uint64_t google::protobuf::EnumValueDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::EnumValueDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(*(a1 + 24) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_1000BCF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::EnumValueDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  google::protobuf::EnumDescriptor::GetLocationPath(*(a1 + 24), a2);
  v5 = 2;
  sub_1000B966C(a2, &v5);
  v4 = -858993459 * ((a1 - *(*(a1 + 24) + 48)) >> 3);
  sub_1000B966C(a2, &v4);
}

google::protobuf::FileDescriptor *google::protobuf::DescriptorBuilder::BuildFile(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2)
{
  std::string::operator=((this + 56), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL));
  v4 = *(this + 1);
  sub_1000B3420(&v46, this + 7, v5);
  v43 = v46;
  v6 = sub_1000CD5E4((v4 + 344), &v43);
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = v6[4];
  if (!v7)
  {
    goto LABEL_28;
  }

  google::protobuf::FileDescriptorProto::FileDescriptorProto(&v43, 0);
  google::protobuf::FileDescriptor::CopyTo(v7, &v43);
  if (*(v7 + 15) == 2 && (*(a2 + 16) & 4) != 0)
  {
    v44 |= 4u;
    sub_1000B347C(&v46, "proto2");
    v8 = v43.n128_u64[1];
    if (v43.n128_u8[8])
    {
      v8 = *(v43.n128_u64[1] & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(v45, &v46, v8);
    if (v47 < 0)
    {
      operator delete(v46.n128_u64[0]);
    }
  }

  google::protobuf::MessageLite::SerializeAsString(&v43, &v46);
  google::protobuf::MessageLite::SerializeAsString(a2, __p);
  v9 = v47;
  if ((v47 & 0x80u) == 0)
  {
    v10 = v47;
  }

  else
  {
    v10 = v46.n128_u64[1];
  }

  v11 = v42;
  v12 = v42;
  if ((v42 & 0x80u) != 0)
  {
    v11 = __p[1];
  }

  if (v10 != v11)
  {
    v15 = 0;
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ((v47 & 0x80u) == 0)
  {
    v13 = &v46;
  }

  else
  {
    v13 = v46.n128_u64[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  v15 = memcmp(v13, v14, v10) == 0;
  if (v12 < 0)
  {
LABEL_24:
    operator delete(__p[0]);
    v9 = v47;
  }

LABEL_25:
  if ((v9 & 0x80) != 0)
  {
    operator delete(v46.n128_u64[0]);
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(&v43);
  if (v15)
  {
    return v7;
  }

LABEL_28:
  v16 = *(this + 1);
  v17 = *v16;
  v18 = *(v16 + 1) - *v16;
  if (!v18)
  {
LABEL_46:
    if ((*(*this + 41) & 1) == 0 && *(*this + 8))
    {
      sub_1000BFF38(v16, (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL));
      if (*(a2 + 8) >= 1)
      {
        v31 = 1;
        while (1)
        {
          v32 = *(this + 1);
          sub_1000B3420(&v46, *(*(a2 + 5) + 8 * v31), v30);
          v43 = v46;
          v33 = sub_1000CD5E4((v32 + 344), &v43);
          if (v33 && v33[4])
          {
            goto LABEL_56;
          }

          v34 = *this;
          v35 = *(*this + 24);
          if (!v35)
          {
            goto LABEL_55;
          }

          if (!google::protobuf::DescriptorPool::FindFileByName(v35, *(*(a2 + 5) + 8 * v31), v30))
          {
            break;
          }

LABEL_56:
          if (v31++ >= *(a2 + 8))
          {
            goto LABEL_57;
          }
        }

        v34 = *this;
LABEL_55:
        sub_1000B3420(&v43, *(*(a2 + 5) + 8 * v31), v30);
        google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(v34, v43.n128_i64[0], v43.n128_i64[1]);
        goto LABEL_56;
      }

LABEL_57:
      v37 = *(this + 1);
      v38 = *(v37 + 1);
      v39 = (v38 - 24);
      v16 = v37;
      if (*(v38 - 1) < 0)
      {
        operator delete(*v39);
        v16 = *(this + 1);
      }

      *(v37 + 1) = v39;
    }

    google::protobuf::DescriptorPool::Tables::AddCheckpoint(v16);
    google::protobuf::DescriptorBuilder::BuildFileImpl(this, a2);
  }

  v19 = 0;
  v20 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
  v21 = *(a2 + 22) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  if (v22 >= 0)
  {
    v23 = *(v21 + 23);
  }

  else
  {
    v23 = *(v21 + 8);
  }

  if (v20 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v20;
  }

  while (1)
  {
    v25 = *(v17 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v17 + 8);
    }

    if (v25 == v23)
    {
      v27 = v26 >= 0 ? v17 : *v17;
      v28 = *v21;
      v29 = v22 >= 0 ? v21 : *v21;
      if (!memcmp(v27, v29, v23))
      {
        break;
      }
    }

    ++v19;
    v17 += 24;
    if (v24 == v19)
    {
      goto LABEL_46;
    }
  }

  google::protobuf::DescriptorBuilder::AddRecursiveImportError(this, a2, v19);
  return 0;
}

void sub_1000BD3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorBuilder::DescriptorBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 104) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  sub_1000B347C((a1 + 176), "");
  return a1;
}

void sub_1000BD46C(_Unwind_Exception *a1)
{
  if (*(v2 + 175) < 0)
  {
    operator delete(*(v2 + 152));
  }

  sub_1000239A0(v4, *(v2 + 128));
  sub_1000239A0(v3, *(v2 + 104));
  if (*(v2 + 79) < 0)
  {
    operator delete(*v5);
  }

  sub_1000BD4B8(v1);
  _Unwind_Resume(a1);
}

void **sub_1000BD4B8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 88;
        sub_1000D394C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void google::protobuf::DescriptorBuilder::~DescriptorBuilder(void **this)
{
  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 175) < 0)
  {
    operator delete(this[19]);
  }

  sub_1000239A0((this + 15), this[16]);
  sub_1000239A0((this + 12), this[13]);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  sub_1000BD4B8(this + 3);
}

void google::protobuf::DescriptorBuilder::AddError(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, const std::string::value_type *a5)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    (*(*v8 + 16))(v8, a1 + 56, a2, a3, a4, a5);
  }

  else
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 3620);
      v9 = google::protobuf::internal::LogMessage::operator<<(v17, "Invalid proto descriptor for file ");
      v10 = google::protobuf::internal::LogMessage::operator<<(v9, (a1 + 56));
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, ":");
      google::protobuf::internal::LogFinisher::operator=(&v16, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 3623);
    v12 = google::protobuf::internal::LogMessage::operator<<(v17, "  ");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2);
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, ": ");
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, a5);
    google::protobuf::internal::LogFinisher::operator=(&v16, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  *(a1 + 48) = 1;
}

void sub_1000BD6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::AddError(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, char *__s)
{
  sub_1000B347C(__p, __s);
  google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000BD754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AddNotDefinedError(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 144))
  {
    std::operator+<char>();
    v10 = std::string::append(&v47, " seems to be defined in ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = **(a1 + 144);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = **(a1 + 144);
    }

    else
    {
      v14 = *v12;
    }

    if (v13 >= 0)
    {
      v15 = *(v12 + 23);
    }

    else
    {
      v15 = *(v12 + 8);
    }

    v16 = std::string::append(&v48, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v49, ", which is not imported by ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = *(a1 + 79);
    if (v20 >= 0)
    {
      v21 = (a1 + 56);
    }

    else
    {
      v21 = *(a1 + 56);
    }

    if (v20 >= 0)
    {
      v22 = *(a1 + 79);
    }

    else
    {
      v22 = *(a1 + 64);
    }

    v23 = std::string::append(&v50, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v51, ".  To use it here, please add the necessary import.");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v53 = v25->__r_.__value_.__r.__words[2];
    v52 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, &v52);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    LOBYTE(v27) = *(a1 + 199);
LABEL_27:
    if ((v27 & 0x80) != 0)
    {
      if (!*(a1 + 184))
      {
        return;
      }
    }

    else if (!v27)
    {
      return;
    }

    std::operator+<char>();
    v28 = std::string::append(&v47, " is resolved to ");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = *(a1 + 199);
    if (v30 >= 0)
    {
      v31 = (a1 + 176);
    }

    else
    {
      v31 = *(a1 + 176);
    }

    if (v30 >= 0)
    {
      v32 = *(a1 + 199);
    }

    else
    {
      v32 = *(a1 + 184);
    }

    v33 = std::string::append(&v48, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v49, ", which is not defined. The innermost scope is searched first in name resolution. Consider using a leading '.'(i.e., .");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = *(a5 + 23);
    if (v37 >= 0)
    {
      v38 = a5;
    }

    else
    {
      v38 = *a5;
    }

    if (v37 >= 0)
    {
      v39 = *(a5 + 23);
    }

    else
    {
      v39 = *(a5 + 8);
    }

    v40 = std::string::append(&v50, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&v51, ") to start from the outermost scope.");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v53 = v42->__r_.__value_.__r.__words[2];
    v52 = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, &v52);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      v44 = v47.__r_.__value_.__r.__words[0];
LABEL_63:
      operator delete(v44);
      return;
    }

    return;
  }

  v27 = *(a1 + 199);
  if (v27 < 0)
  {
    if (*(a1 + 184))
    {
      goto LABEL_27;
    }
  }

  else if (*(a1 + 199))
  {
    goto LABEL_27;
  }

  std::operator+<char>();
  v45 = std::string::append(&v51, " is not defined.");
  v46 = *&v45->__r_.__value_.__l.__data_;
  v53 = v45->__r_.__value_.__r.__words[2];
  v52 = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, &v52);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    v44 = v51.__r_.__value_.__r.__words[0];
    goto LABEL_63;
  }
}

void sub_1000BDB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AddWarning(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, const std::string::value_type *a5)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(*v8 + 24);

    v9();
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 3674);
    v10 = google::protobuf::internal::LogMessage::operator<<(v16, (a1 + 56));
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, a2);
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, ": ");
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, a5);
    google::protobuf::internal::LogFinisher::operator=(&v15, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }
}

void sub_1000BDD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::DescriptorBuilder::IsInPackage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000B3420(__s1, *(a2 + 8), a3);
  sub_1000B3420(&__s2, a3, v5);
  if (__s1[1] < __n || memcmp(__s1[0], __s2, __n))
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v9 = v7[1];
  }

  else
  {
    v9 = *(v7 + 23);
  }

  v10 = *(a3 + 23);
  if (v10 < 0)
  {
    v10 = *(a3 + 8);
  }

  if (v9 == v10)
  {
    return 1;
  }

  if ((v8 & 0x80000000) != 0)
  {
    v7 = *v7;
  }

  return *(v7 + v10) == 46;
}

google::protobuf::DescriptorBuilder *google::protobuf::DescriptorBuilder::RecordPublicDependencies(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptor *a2)
{
  v6 = a2;
  if (a2)
  {
    v2 = this;
    this = sub_1000D2BFC(this + 96, &v6);
    if (v3)
    {
      this = v6;
      if (v6)
      {
        v4 = 0;
        do
        {
          if (v4 >= *(this + 9))
          {
            break;
          }

          v5 = google::protobuf::FileDescriptor::dependency(this, *(*(this + 11) + 4 * v4));
          google::protobuf::DescriptorBuilder::RecordPublicDependencies(v2, v5);
          ++v4;
          this = v6;
        }

        while (v6);
      }
    }
  }

  return this;
}

unint64_t google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*a1 == a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a2;
    if (*a2)
    {
      std::mutex::lock(*a2);
      v9 = 0;
      goto LABEL_6;
    }
  }

  v9 = 1;
LABEL_6:
  v10 = *(a2 + 32);
  sub_1000B3420(&v23, a3, a3);
  v24 = v23;
  v11 = sub_1000CD5E4((v10 + 304), &v24);
  if (v11)
  {
    LODWORD(v14) = *(v11 + 8);
    v13 = *(v11 + 9);
    v15 = v11[5];
    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = *(a2 + 24);
  if (v16)
  {
    SymbolNotEnforcingDepsHelper = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(a1, v16, a3, 1);
    v13 = HIDWORD(SymbolNotEnforcingDepsHelper);
    LODWORD(v14) = SymbolNotEnforcingDepsHelper;
    if (SymbolNotEnforcingDepsHelper)
    {
      goto LABEL_19;
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (a4)
  {
    sub_1000B3420(&v24, a3, v12);
    if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, v24, *(&v24 + 1)))
    {
      v19 = *(a2 + 32);
      sub_1000B3420(&v23, a3, v18);
      v24 = v23;
      v20 = sub_1000CD5E4((v19 + 304), &v24);
      if (v20)
      {
        v14 = v20[4];
        v21 = v20[5];
      }

      else
      {
        v14 = 0;
      }

      v13 = HIDWORD(v14);
      if ((v9 & 1) == 0)
      {
        goto LABEL_20;
      }

      return v14 | (v13 << 32);
    }

    LODWORD(v14) = 0;
  }

LABEL_19:
  if ((v9 & 1) == 0)
  {
LABEL_20:
    std::mutex::unlock(v8);
  }

  return v14 | (v13 << 32);
}

void sub_1000BE004(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDeps(uint64_t a1, uint64_t *a2, int a3)
{
  v10[0] = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(a1, *a1, a2, a3);
  v10[1] = v4;
  v5 = sub_1000B64CC(v10);
  v9 = v5;
  if (v5 == *(a1 + 80))
  {
LABEL_8:
    sub_1000D33F4((a1 + 120), &v9);
  }

  else
  {
    for (i = *(a1 + 104); i; i = *i)
    {
      v7 = i[4];
      if (v5 >= v7)
      {
        if (v7 >= v5)
        {
          goto LABEL_8;
        }

        ++i;
      }
    }
  }

  return v10[0];
}

uint64_t google::protobuf::DescriptorBuilder::FindSymbol(uint64_t a1, std::string *a2, int a3)
{
  result = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDeps(a1, a2, a3);
  v19[0] = result;
  v19[1] = v6;
  if (result && *(*a1 + 40) == 1)
  {
    v7 = sub_1000B64CC(v19);
    v8 = *(a1 + 80);
    if (v7 == v8)
    {
      return v19[0];
    }

    v9 = v7;
    v11 = (a1 + 104);
    for (i = *(a1 + 104); i; i = *i)
    {
      v12 = i[4];
      if (v7 >= v12)
      {
        if (v12 >= v7)
        {
          return v19[0];
        }

        ++i;
      }
    }

    if (LODWORD(v19[0]) == 8)
    {
      v13 = google::protobuf::DescriptorBuilder::IsInPackage(v7, v8, a2);
      if (v13)
      {
        return v19[0];
      }

      v14 = *(a1 + 96);
      if (v14 != v11)
      {
        do
        {
          v15 = v14[4];
          if (v15)
          {
            LODWORD(v13) = google::protobuf::DescriptorBuilder::IsInPackage(v13, v15, a2);
            if (v13)
            {
              return v19[0];
            }
          }

          v16 = v14[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v14[2];
              v18 = *v17 == v14;
              v14 = v17;
            }

            while (!v18);
          }

          v14 = v17;
        }

        while (v17 != v11);
      }
    }

    *(a1 + 144) = v9;
    std::string::operator=((a1 + 152), a2);
    return 0;
  }

  return result;
}

unint64_t google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(uint64_t a1, std::string *__str, uint64_t a3, int a4, int a5)
{
  *(a1 + 144) = 0;
  if (*(a1 + 199) < 0)
  {
    **(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  else
  {
    *(a1 + 176) = 0;
    *(a1 + 199) = 0;
  }

  if ((SHIBYTE(__str->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v10 = __str;
    if (!*(&__str->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v10->__r_.__value_.__s.__data_[0] == 46)
    {
      std::string::basic_string(&v24, __str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &__p);
      Symbol = google::protobuf::DescriptorBuilder::FindSymbol(a1, &v24, a5);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      v12 = Symbol;
      return Symbol & 0xFFFFFFFF00000000 | v12;
    }

    goto LABEL_13;
  }

  if (__str->__r_.__value_.__l.__size_)
  {
    v10 = __str->__r_.__value_.__r.__words[0];
    goto LABEL_9;
  }

LABEL_13:
  v13 = std::string::find(__str, 46, 0);
  memset(&v24, 0, sizeof(v24));
  if (v13 == -1)
  {
    std::string::operator=(&v24, __str);
  }

  else
  {
    std::string::basic_string(&__p, __str, 0, v13, &v25);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v24 = __p;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000B32D8(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  while (1)
  {
    v14 = std::string::rfind(&__p, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v14 == -1)
    {
      Symbol = google::protobuf::DescriptorBuilder::FindSymbol(a1, __str, a5);
      goto LABEL_48;
    }

    std::string::erase(&__p, v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::string::append(&__p, 1uLL, 46);
    v16 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
    v17 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v24.__r_.__value_.__r.__words[2]) : v24.__r_.__value_.__l.__size_;
    std::string::append(&__p, v16, v17);
    v18 = google::protobuf::DescriptorBuilder::FindSymbol(a1, &__p, a5);
    Symbol = v18;
    if (v18)
    {
      break;
    }

LABEL_44:
    std::string::erase(&__p, v15, 0xFFFFFFFFFFFFFFFFLL);
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v20 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v20 & 0x80u) != 0)
  {
    v20 = __str->__r_.__value_.__l.__size_;
  }

  if (v20 <= size)
  {
    if (a4 != 1 || v18 == 1)
    {
      goto LABEL_48;
    }

    v12 = v18;
    if (v18 == 4)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  if (v18 > 8 || ((1 << v18) & 0x152) == 0)
  {
    goto LABEL_44;
  }

  std::string::append(&__p, __str, size, v20 - size);
  v21 = google::protobuf::DescriptorBuilder::FindSymbol(a1, &__p, a5);
  Symbol = v21;
  if (!v21)
  {
    std::string::operator=((a1 + 176), &__p);
    v12 = 0;
    goto LABEL_49;
  }

LABEL_48:
  v12 = Symbol;
LABEL_49:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return Symbol & 0xFFFFFFFF00000000 | v12;
}

void sub_1000BE4F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

unint64_t google::protobuf::DescriptorBuilder::LookupSymbol(uint64_t *a1, std::string *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(a1, a2, a3, a5, a6);
  if (!v8)
  {
    v10 = *a1;
    if (*(v10 + 42) != 1)
    {
      v11 = 0;
      return v8 & 0xFFFFFFFF00000000 | v11;
    }

    sub_1000B3420(v13, a2, v9);
    v8 = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(v10, v13[0], v13[1]);
  }

  v11 = v8;
  return v8 & 0xFFFFFFFF00000000 | v11;
}

uint64_t google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  if (a3)
  {
    v3 = 0;
    v4 = &a2[a3];
    v5 = a2;
    do
    {
      while (1)
      {
        v6 = *v5;
        if ((v6 & 0xFFFFFFDF) - 65 >= 0x1A && v6 != 95 && (v6 - 48) >= 0xA)
        {
          break;
        }

        v3 = 0;
        if (++v5 == v4)
        {
          v8 = *(a1 + 32);
          if (*a2 == 46)
          {
            v9 = google::protobuf::StringPiece::substr(v14, 1uLL);
            v11 = v10;
            v12 = v8;
            a2 = v9;
            a3 = v11;
          }

          else
          {
            v12 = *(a1 + 32);
          }

          google::protobuf::DescriptorPool::Tables::AllocateString(v12, a2, a3);
        }
      }

      if (v3 & 1 | (v6 != 46))
      {
        break;
      }

      ++v5;
      v3 = 1;
    }

    while (v5 != v4);
  }

  return 0;
}

void sub_1000BEA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorPool::NewPlaceholderFileWithMutexHeld(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(*(a1 + 32), 160);
  *Bytes = 0u;
  Bytes[1] = 0u;
  Bytes[2] = 0u;
  Bytes[3] = 0u;
  Bytes[4] = 0u;
  Bytes[5] = 0u;
  Bytes[6] = 0u;
  Bytes[7] = 0u;
  Bytes[8] = 0u;
  Bytes[9] = 0u;
  google::protobuf::DescriptorPool::Tables::AllocateString(*(a1 + 32), a2, a3);
}

uint64_t google::protobuf::DescriptorBuilder::AddSymbol(uint64_t a1, std::string *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  if (!a3)
  {
    v11 = *(a1 + 80);
  }

  if (google::protobuf::DescriptorPool::Tables::AddSymbol(*(a1 + 8), a2, a6, a7))
  {
    if (google::protobuf::FileDescriptorTables::AddAliasUnderParent(*(a1 + 88), v11, a4, a6, a7))
    {
      return 1;
    }

    if ((*(a1 + 48) & 1) == 0)
    {
      v19 = google::protobuf::internal::LogMessage::LogMessage(&v55, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 4027);
      v20 = google::protobuf::internal::LogMessage::operator<<(v19, "");
      v21 = google::protobuf::internal::LogMessage::operator<<(v20, a2);
      v22 = google::protobuf::internal::LogMessage::operator<<(v21, " not previously defined in symbols_by_name_, but was defined in symbols_by_parent_; this shouldn't be possible.");
      google::protobuf::internal::LogFinisher::operator=(&v54, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v55);
    }
  }

  else
  {
    v16 = *(a1 + 8);
    sub_1000B3420(&v54, a2, v14);
    v55 = *&v54.__r_.__value_.__l.__data_;
    v17 = sub_1000CD5E4((v16 + 304), &v55);
    if (v17)
    {
      v18 = *(v17 + 2);
    }

    else
    {
      v18 = 0uLL;
    }

    v55 = v18;
    v23 = sub_1000B64CC(&v55);
    if (v23 == *(a1 + 80))
    {
      v29 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
      if (v29 == -1)
      {
        std::operator+<char>();
        v48 = std::string::append(&v54, " is already defined.");
        v49 = *&v48->__r_.__value_.__l.__data_;
        v56 = v48->__r_.__value_.__r.__words[2];
        v55 = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, &v55);
        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55);
        }

        if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v41 = v54.__r_.__value_.__r.__words[0];
      }

      else
      {
        v30 = v29;
        std::string::basic_string(&__dst, a2, v29 + 1, 0xFFFFFFFFFFFFFFFFLL, &v50);
        v31 = std::string::insert(&__dst, 0, "");
        v32 = *&v31->__r_.__value_.__l.__data_;
        v52.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v52.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = std::string::append(&v52, " is already defined in ");
        v34 = *&v33->__r_.__value_.__l.__data_;
        v53.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v53.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string(&v50, a2, 0, v30, &v57);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v50;
        }

        else
        {
          v35 = v50.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v50.__r_.__value_.__l.__size_;
        }

        v37 = std::string::append(&v53, v35, size);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v54.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v54.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = std::string::append(&v54, ".");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v56 = v39->__r_.__value_.__r.__words[2];
        v55 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, &v55);
        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55);
        }

        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v41 = __dst.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v24 = v23;
      std::operator+<char>();
      v25 = std::string::append(&v52, " is already defined in file ");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if (v24)
      {
        v27 = *v24;
        if (*(*v24 + 23) < 0)
        {
          sub_1000B32D8(&__dst, *v27, *(v27 + 1));
        }

        else
        {
          v28 = *v27;
          __dst.__r_.__value_.__r.__words[2] = *(v27 + 2);
          *&__dst.__r_.__value_.__l.__data_ = v28;
        }
      }

      else
      {
        sub_1000B347C(&__dst, "null");
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = __dst.__r_.__value_.__l.__size_;
      }

      v44 = std::string::append(&v53, p_dst, v43);
      v45 = *&v44->__r_.__value_.__l.__data_;
      v54.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&v54.__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v46 = std::string::append(&v54, ".");
      v47 = *&v46->__r_.__value_.__l.__data_;
      v56 = v46->__r_.__value_.__r.__words[2];
      v55 = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      google::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, &v55);
      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

      v41 = v52.__r_.__value_.__r.__words[0];
    }

    operator delete(v41);
  }

  return 0;
}

void sub_1000BF074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AddPackage(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  if (google::protobuf::DescriptorPool::Tables::AddSymbol(*(a1 + 8), a2, 8, a4))
  {
    v8 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v8 != -1)
    {
      v9 = *(a1 + 8);
      std::string::basic_string(&v27, a2, 0, v8, &v25);
      sub_1000B3420(&v25, &v27, v10);
      google::protobuf::DescriptorPool::Tables::AllocateString(v9, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    google::protobuf::DescriptorBuilder::ValidateSymbolName(a1, a2, a2, a3);
  }

  else
  {
    v11 = *(a1 + 8);
    sub_1000B3420(&v25, a2, v7);
    *&v27.__r_.__value_.__l.__data_ = *&v25.__r_.__value_.__l.__data_;
    v12 = sub_1000CD5E4((v11 + 304), &v27.__r_.__value_.__l.__data_);
    if (v12)
    {
      v26 = *(v12 + 2);
      if (v26 == 8)
      {
        return;
      }
    }

    else
    {
      v26 = 0uLL;
    }

    std::operator+<char>();
    v13 = std::string::append(&v23, " is already defined (as something other than a package) in file ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = sub_1000B64CC(&v26);
    v16 = *(*v15 + 23);
    if (v16 >= 0)
    {
      v17 = *v15;
    }

    else
    {
      v17 = **v15;
    }

    if (v16 >= 0)
    {
      v18 = *(*v15 + 23);
    }

    else
    {
      v18 = (*v15)[1];
    }

    v19 = std::string::append(&v24, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v25, ".");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, &v27);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1000BF440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ValidateSymbolName(uint64_t a1, unsigned __int8 *a2, const std::string::value_type *a3, uint64_t a4)
{
  v7 = a2[23];
  if (v7 < 0)
  {
    v7 = *(a2 + 1);
    if (v7)
    {
      v8 = *a2;
      goto LABEL_6;
    }
  }

  else if (a2[23])
  {
    v8 = a2;
    do
    {
LABEL_6:
      v9 = *v8;
      if ((v9 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v9 != 95 && (v9 - 58) <= 0xFFFFFFF5)
      {
        std::operator+<char>();
        v11 = std::string::append(&v13, " is not a valid identifier.");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v15 = v11->__r_.__value_.__r.__words[2];
        *__p = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(a1, a3, a4, 0, __p);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }
      }

      ++v8;
      --v7;
    }

    while (v7);
    return;
  }

  google::protobuf::DescriptorBuilder::AddError(a1, a3, a4, 0, "Missing name.");
}

void sub_1000BF618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void google::protobuf::DescriptorBuilder::AllocateOptions(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileOptions *a2, google::protobuf::FileDescriptor *a3)
{
  memset(v13, 0, sizeof(v13));
  LODWORD(v11[0]) = 8;
  sub_1000B966C(v13, v11);
  v5 = *(a3 + 1);
  if (*(v5 + 23) >= 0)
  {
    v6 = *(v5 + 23);
  }

  else
  {
    v6 = v5[1];
  }

  v7 = v11;
  sub_1000B3394(v11, v6 + 6);
  if (v12 < 0)
  {
    v7 = v11[0];
  }

  if (v6)
  {
    if (*(v5 + 23) >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = *v5;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, ".dummy");
  v9 = *a3;
  sub_1000B347C(&__p, "google.protobuf.FileOptions");
  sub_1000BF7D4(this);
}

void sub_1000BF784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AddRecursiveImportError(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2, int a3)
{
  sub_1000B347C(&v21, "File recursively imports itself: ");
  v6 = **(this + 1);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v6) >> 3) > a3)
  {
    v7 = 24 * a3;
    v8 = a3;
    do
    {
      v9 = v6 + v7;
      v10 = *(v9 + 23);
      if (v10 >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v9;
      }

      if (v10 >= 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = *(v9 + 8);
      }

      std::string::append(&v21, v11, v12);
      std::string::append(&v21, " -> ");
      ++v8;
      v6 = **(this + 1);
      v7 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v6) >> 3) > v8);
  }

  v13 = *(a2 + 22) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v15 = *v13;
  }

  if (v14 >= 0)
  {
    v16 = *(v13 + 23);
  }

  else
  {
    v16 = *(v13 + 8);
  }

  std::string::append(&v21, v15, v16);
  v17 = **(this + 1);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v17) >> 3) - 1;
  v19 = v17 + 24 * a3 + 24;
  if (v18 <= a3)
  {
    v20 = (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v20 = v19;
  }

  google::protobuf::DescriptorBuilder::AddError(this, v20, a2, 9, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1000BFC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AddTwiceListedError(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2, int a3)
{
  v5 = *(*(a2 + 5) + 8 * a3 + 8);
  std::operator+<char>();
  v6 = std::string::append(&v8, " was listed twice.");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v10 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  google::protobuf::DescriptorBuilder::AddError(this, v5, a2, 9, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1000BFD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void google::protobuf::DescriptorBuilder::AddImportError(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2, int a3)
{
  v12 = 0uLL;
  __p = 0;
  v5 = a3;
  v6 = *(*(a2 + 5) + 8 * a3 + 8);
  if (*(*this + 8))
  {
    std::operator+<char>();
    v7 = std::string::append(&v10, " was not found or had errors.");
  }

  else
  {
    std::operator+<char>();
    v7 = std::string::append(&v10, " has not been loaded.");
  }

  v8 = v7->__r_.__value_.__r.__words[0];
  v13[0] = v7->__r_.__value_.__l.__size_;
  *(v13 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  *(&v12 + 7) = *(v13 + 7);
  __p = v8;
  *&v12 = v13[0];
  HIBYTE(v12) = v9;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  google::protobuf::DescriptorBuilder::AddError(this, *(*(a2 + 5) + 8 * v5 + 8), a2, 9, &__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

void sub_1000BFE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000BFEC4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
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

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_1000BFF38(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1000D3A14(a1, a2);
  }

  else
  {
    sub_1000D39B4(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::DescriptorPool::Tables **this, const google::protobuf::FileDescriptorProto *a2)
{
  Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(this[1], 160);
  this[10] = Bytes;
  *(Bytes + 64) = 0;
  if ((*(a2 + 16) & 0x10) == 0)
  {
    *(Bytes + 152) = google::protobuf::SourceCodeInfo::default_instance(Bytes);
    google::protobuf::DescriptorPool::Tables::AllocateFileTables(this[1]);
  }

  v5 = this[1];
  sub_1000C10C4();
}

void sub_1000C0ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p)
{
  google::protobuf::DescriptorBuilder::OptionInterpreter::~OptionInterpreter(&__p);
  sub_1000239A0(&a11, a12);
  sub_1000D279C(&a14, a15);
  _Unwind_Resume(a1);
}

BOOL sub_1000C11FC(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1000CF3C0();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorBuilder *this, const google::protobuf::DescriptorProto *a2, const google::protobuf::Descriptor *a3, google::protobuf::Descriptor *a4)
{
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  google::protobuf::DescriptorBuilder::AllocateNameString(this, *(v4 + 1), (*(a2 + 27) & 0xFFFFFFFFFFFFFFFELL));
}

void sub_1000C21BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 121) < 0)
  {
    operator delete(*(v29 - 144));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::DescriptorBuilder *this, const google::protobuf::EnumDescriptorProto *a2, const google::protobuf::Descriptor *a3, google::protobuf::EnumDescriptor *a4)
{
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  google::protobuf::DescriptorBuilder::AllocateNameString(this, *(v4 + 1), (*(a2 + 12) & 0xFFFFFFFFFFFFFFFELL));
}

void sub_1000C2AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 121) < 0)
  {
    operator delete(*(v25 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C2C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CrossLinkFile(google::protobuf::DescriptorPool::Tables **this, google::protobuf::FileDescriptor *a2, const google::protobuf::FileDescriptorProto *a3)
{
  v5 = this;
  if (!*(a2 + 17))
  {
    this = google::protobuf::FileOptions::default_instance(this);
    *(a2 + 17) = this;
  }

  if (*(a2 + 11) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::CrossLinkMessage(v5, (*(a2 + 13) + v6), *(*(a3 + 8) + 8 * v7++ + 8));
      v6 += 144;
    }

    while (v7 < *(a2 + 11));
  }

  if (*(a2 + 14) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::CrossLinkField(v5, (*(a2 + 16) + v8), *(*(a3 + 17) + 8 * v9++ + 8));
      v8 += 152;
    }

    while (v9 < *(a2 + 14));
  }

  if (*(a2 + 12) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      this = google::protobuf::DescriptorBuilder::CrossLinkEnum(this, (*(a2 + 14) + v10), a3);
      ++v11;
      v10 += 80;
    }

    while (v11 < *(a2 + 12));
  }

  if (*(a2 + 13) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::CrossLinkService(v5, (*(a2 + 15) + v12), *(*(a3 + 14) + 8 * v13++ + 8));
      v12 += 48;
    }

    while (v13 < *(a2 + 13));
  }
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::UpdateSourceCodeInfo(google::protobuf::DescriptorBuilder::OptionInterpreter *this, google::protobuf::SourceCodeInfo *a2)
{
  if (!*(this + 5))
  {
    return;
  }

  v2 = a2;
  v58 = 0;
  *v59 = 0;
  v60 = 0;
  __p = 0;
  v56 = 0;
  v57 = 0;
  if (!*(a2 + 6))
  {
    goto LABEL_70;
  }

  v3 = this;
  v4 = 0;
  v5 = 0;
  v52 = (a2 + 16);
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = this + 32;
  do
  {
    if (v5)
    {
      v9 = (v56 - __p) >> 2;
      if (v9 <= SLODWORD((*v7)[1].__r_.__value_.__l.__data_))
      {
        if (v56 == __p)
        {
LABEL_39:
          v5 = 1;
          goto LABEL_59;
        }

        size = (*v7)[1].__r_.__value_.__l.__size_;
        if (v9 <= 1)
        {
          v9 = 1;
        }

        v31 = __p;
        while (1)
        {
          v33 = *size++;
          v32 = v33;
          v34 = *v31++;
          if (v32 != v34)
          {
            break;
          }

          if (!--v9)
          {
            goto LABEL_39;
          }
        }
      }
    }

    v56 = __p;
    v10 = *v7;
    if (SLODWORD((*v7)[1].__r_.__value_.__l.__data_) >= 1)
    {
      v11 = 0;
      do
      {
        v54 = *(v10[1].__r_.__value_.__l.__size_ + 4 * v11);
        sub_1000B966C(&__p, &v54);
        ++v11;
        v10 = *v7;
      }

      while (v11 < SLODWORD((*v7)[1].__r_.__value_.__l.__data_));
    }

    v12 = sub_1000D65A0(v3 + 24, &__p);
    if (v8 == v12)
    {
      if ((v4 & 1) == 0)
      {
        v5 = 0;
        v4 = 0;
        goto LABEL_59;
      }

      v17 = *v7;
      v18 = v60;
      if (v60)
      {
        v19 = *v60;
        if (v59[0] < *v60)
        {
          v20 = &v60[2 * v59[0]++];
          v21 = *(v20 + 1);
LABEL_57:
          google::protobuf::SourceCodeInfo_Location::CopyFrom(v21, v17);
          v5 = 0;
          goto LABEL_58;
        }

        if (v19 != v59[1])
        {
LABEL_56:
          *v18 = v19 + 1;
          v21 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(v58);
          v42 = &v60[2 * v59[0]++];
          *(v42 + 1) = v21;
          goto LABEL_57;
        }
      }

      else
      {
        v19 = v59[1];
      }

      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v58, v19 + 1);
      v18 = v60;
      v19 = *v60;
      goto LABEL_56;
    }

    if ((v4 & 1) == 0)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v58, *(v2 + 6));
      v22 = *(v2 + 4);
      if (v22)
      {
        v23 = (v22 + 8);
      }

      else
      {
        v23 = 0;
      }

      while (1)
      {
        if (v23 == v7)
        {
          goto LABEL_14;
        }

        v24 = *v23;
        v25 = v60;
        if (!v60)
        {
          break;
        }

        v26 = *v60;
        if (v59[0] < *v60)
        {
          v27 = &v60[2 * v59[0]++];
          v28 = *(v27 + 1);
          goto LABEL_32;
        }

        if (v26 == v59[1])
        {
          goto LABEL_30;
        }

LABEL_31:
        *v25 = v26 + 1;
        v28 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(v58);
        v29 = &v60[2 * v59[0]++];
        *(v29 + 1) = v28;
LABEL_32:
        google::protobuf::SourceCodeInfo_Location::CopyFrom(v28, v24);
        ++v23;
      }

      v26 = v59[1];
LABEL_30:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v58, v26 + 1);
      v25 = v60;
      v26 = *v60;
      goto LABEL_31;
    }

LABEL_14:
    v13 = v60;
    if (!v60)
    {
      v14 = v59[1];
LABEL_42:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v58, v14 + 1);
      v13 = v60;
      v14 = *v60;
      goto LABEL_43;
    }

    v14 = *v60;
    if (v59[0] < *v60)
    {
      v15 = &v60[2 * v59[0]++];
      v16 = *(v15 + 1);
      goto LABEL_44;
    }

    if (v14 == v59[1])
    {
      goto LABEL_42;
    }

LABEL_43:
    *v13 = v14 + 1;
    v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(v58);
    v35 = &v60[2 * v59[0]++];
    *(v35 + 1) = v16;
LABEL_44:
    google::protobuf::SourceCodeInfo_Location::CopyFrom(v16, *v7);
    *(v16 + 24) = 0;
    v37 = *(v12 + 7);
    v36 = *(v12 + 8);
    if (v37 == v36)
    {
      v5 = 1;
LABEL_58:
      v4 = 1;
      goto LABEL_59;
    }

    v38 = v3;
    v39 = v8;
    v40 = 0;
    do
    {
      v41 = *v37;
      if (v40 == *(v16 + 28))
      {
        google::protobuf::RepeatedField<int>::Reserve((v16 + 24), v40 + 1);
        *(*(v16 + 32) + 4 * v40) = v41;
        v36 = *(v12 + 8);
      }

      else
      {
        *(*(v16 + 32) + 4 * v40) = v41;
      }

      *(v16 + 24) = ++v40;
      ++v37;
    }

    while (v37 != v36);
    v5 = 1;
    v4 = 1;
    v8 = v39;
    v3 = v38;
    v2 = a2;
LABEL_59:
    ++v7;
    v43 = *(v2 + 4);
    v44 = v43 + 8;
    if (!v43)
    {
      v44 = 0;
    }

    v45 = *(v2 + 6);
  }

  while (v7 != (v44 + 8 * v45));
  if (((v52 != &v58) & v4) != 0)
  {
    if (v45 >= 1)
    {
      v46 = (v43 + 8);
      do
      {
        google::protobuf::SourceCodeInfo_Location::Clear(*v46++);
        --v45;
      }

      while (v45);
      *(v2 + 6) = 0;
    }

    v47 = v59[0];
    if (v59[0])
    {
      v48 = v60;
      v49 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v52, v59[0]);
      sub_1000D6684(v52, v49, (v48 + 2), v47, **(v2 + 4) - *(v2 + 6));
      v50 = *(v2 + 6) + v47;
      *(v2 + 6) = v50;
      v51 = *(v2 + 4);
      if (*v51 < v50)
      {
        *v51 = v50;
      }
    }
  }

LABEL_70:
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  sub_1000D651C(&v58);
}

void sub_1000C3270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000D651C(&a16);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::ValidateFileOptions(std::once_flag::_State_type *this, google::protobuf::FileDescriptor *a2, const google::protobuf::FileDescriptorProto *a3)
{
  if (*(a2 + 11) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateMessageOptions(this, (*(a2 + 13) + v6), *(*(a3 + 8) + 8 * v7++ + 8));
      v6 += 144;
    }

    while (v7 < *(a2 + 11));
  }

  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateEnumOptions(this, (*(a2 + 14) + v8), *(*(a3 + 11) + 8 * v9++ + 8));
      v8 += 80;
    }

    while (v9 < *(a2 + 12));
  }

  if (*(a2 + 13) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateServiceOptions(this, *(a2 + 15) + v10, *(*(a3 + 14) + 8 * v11++ + 8));
      v10 += 48;
    }

    while (v11 < *(a2 + 13));
  }

  if (*(a2 + 14) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 16) + v12), *(*(a3 + 17) + 8 * v13++ + 8));
      v12 += 152;
    }

    while (v13 < *(a2 + 14));
  }

  v14 = *(a2 + 17);
  if ((v14 == google::protobuf::FileOptions::default_instance(this) || *(*(a2 + 17) + 160) != 3) && *(a2 + 8) >= 1)
  {
    v15 = 0;
    while (1)
    {
      v16 = google::protobuf::FileDescriptor::dependency(a2, v15);
      if (v16)
      {
        v17 = v16;
        v18 = *(v16 + 17);
        if (v18 != google::protobuf::FileOptions::default_instance(v16) && *(*(v17 + 17) + 160) == 3)
        {
          break;
        }
      }

      if (++v15 >= *(a2 + 8))
      {
        goto LABEL_21;
      }
    }

    v19 = *google::protobuf::FileDescriptor::dependency(a2, v15);
    v20 = *google::protobuf::FileDescriptor::dependency(a2, v15);
    std::operator+<char>();
    v21 = std::string::append(&v23, " which is.");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v25 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(this, v19, a3, 9, __p);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

LABEL_21:
  if (*(a2 + 15) == 3)
  {
    google::protobuf::DescriptorBuilder::ValidateProto3(this, a2, a3);
  }
}

void sub_1000C3528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::DescriptorBuilder *this, const google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3)
{
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  if (*(a2 + 29) >= 1)
  {
    v6 = 0;
    for (i = 0; i < *(a2 + 29); ++i)
    {
      v8 = *(a2 + 7);
      v9 = *(v8 + v6);
      if (*(v9 + 23) < 0)
      {
        sub_1000B32D8(__p, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v44 = *(v9 + 2);
        *__p = v10;
      }

      v45 = v8 + v6;
      v12 = sub_1000D4B0C(&v46, __p);
      v13 = v11;
      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p[0]);
        if ((v13 & 1) == 0)
        {
LABEL_10:
          if ((*(*(*(v12 + 56) + 32) + 75) & 1) != 0 || *(*(v8 + v6 + 32) + 75) == 1)
          {
            v14 = *(a2 + 1);
            v15 = *(v8 + v6);
            std::operator+<char>();
            v16 = std::string::append(&v42, " conflicts with an existing nested message type.");
            v17 = *&v16->__r_.__value_.__l.__data_;
            v44 = v16->__r_.__value_.__r.__words[2];
            *__p = v17;
            v16->__r_.__value_.__l.__size_ = 0;
            v16->__r_.__value_.__r.__words[2] = 0;
            v16->__r_.__value_.__r.__words[0] = 0;
            google::protobuf::DescriptorBuilder::AddError(this, v14, a3, 0, __p);
            if (SHIBYTE(v44) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      else if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }

      google::protobuf::DescriptorBuilder::DetectMapConflicts(this, (*(a2 + 7) + v6), *(*(a3 + 8) + 8 * i + 8));
      v6 += 144;
    }
  }

  if (*(a2 + 26) >= 1)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = sub_1000CEF34(&v46, *(*(a2 + 5) + v18));
      if (v47 != v20)
      {
        v21 = *(v20 + 56);
        if (*(v21[4] + 75) == 1)
        {
          v22 = *(a2 + 1);
          v23 = *v21;
          std::operator+<char>();
          v24 = std::string::append(&v42, " conflicts with an existing field.");
          v25 = *&v24->__r_.__value_.__l.__data_;
          v44 = v24->__r_.__value_.__r.__words[2];
          *__p = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          google::protobuf::DescriptorBuilder::AddError(this, v22, a3, 0, __p);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }
        }
      }

      ++v19;
      v18 += 152;
    }

    while (v19 < *(a2 + 26));
  }

  if (*(a2 + 30) >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = sub_1000CEF34(&v46, *(*(a2 + 8) + v26));
      if (v47 != v28)
      {
        v29 = *(v28 + 56);
        if (*(v29[4] + 75) == 1)
        {
          v30 = *(a2 + 1);
          v31 = *v29;
          std::operator+<char>();
          v32 = std::string::append(&v42, " conflicts with an existing enum type.");
          v33 = *&v32->__r_.__value_.__l.__data_;
          v44 = v32->__r_.__value_.__r.__words[2];
          *__p = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          google::protobuf::DescriptorBuilder::AddError(this, v30, a3, 0, __p);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }
        }
      }

      ++v27;
      v26 += 80;
    }

    while (v27 < *(a2 + 30));
  }

  if (*(a2 + 27) >= 1)
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = sub_1000CEF34(&v46, *(*(a2 + 6) + v34));
      if (v47 != v36)
      {
        v37 = *(v36 + 56);
        if (*(v37[4] + 75) == 1)
        {
          v38 = *(a2 + 1);
          v39 = *v37;
          std::operator+<char>();
          v40 = std::string::append(&v42, " conflicts with an existing oneof type.");
          v41 = *&v40->__r_.__value_.__l.__data_;
          v44 = v40->__r_.__value_.__r.__words[2];
          *__p = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          google::protobuf::DescriptorBuilder::AddError(this, v38, a3, 0, __p);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }
        }
      }

      ++v35;
      v34 += 48;
    }

    while (v35 < *(a2 + 27));
  }

  sub_1000D279C(&v46, v47[0]);
}

void google::protobuf::DescriptorBuilder::LogUnusedDependency(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2, const google::protobuf::FileDescriptor *a3)
{
  if (*(this + 17))
  {
    v5 = sub_1000CEF34(*this + 48, (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL));
    v6 = *this + 56 == v5 ? 0 : *(v5 + 56);
    v7 = *(this + 15);
    if (v7 != (this + 128))
    {
      do
      {
        v8 = **(v7 + 4);
        std::operator+<char>();
        v9 = std::string::append(&v15, " is unused.");
        v10 = *&v9->__r_.__value_.__l.__data_;
        v17 = v9->__r_.__value_.__r.__words[2];
        *__p = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        v11 = **(v7 + 4);
        if (v6)
        {
          google::protobuf::DescriptorBuilder::AddError(this, v11, a2, 9, __p);
        }

        else
        {
          google::protobuf::DescriptorBuilder::AddWarning(this, v11, a2, 9, __p);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }

        v12 = *(v7 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v7 + 2);
            v14 = *v13 == v7;
            v7 = v13;
          }

          while (!v14);
        }

        v7 = v13;
      }

      while (v13 != (this + 128));
    }
  }
}

void sub_1000C3B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AllocateNameString(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = *(a1 + 8);
  if (v3)
  {
    google::protobuf::DescriptorPool::Tables::AllocateEmptyString(*(a1 + 8));
  }

  sub_1000B3420(v5, a3, a3);
  google::protobuf::DescriptorPool::Tables::AllocateString(v4, v5[0], v5[1]);
}

void sub_1000C3DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::BuildExtensionRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 32);
  *a4 = v8;
  v9 = *(a2 + 36);
  *(a4 + 4) = v9;
  if (v8 <= 0)
  {
    google::protobuf::DescriptorBuilder::AddError(a1, *(a3 + 8), a2, 1, "Extension numbers must be positive integers.");
    v8 = *a4;
    v9 = *(a4 + 4);
  }

  if (v8 >= v9)
  {
    google::protobuf::DescriptorBuilder::AddError(a1, *(a3 + 8), a2, 1, "Extension range end number must be greater than start number.");
  }

  *(a4 + 8) = 0;
  if (*(a2 + 16))
  {
    memset(v14, 0, sizeof(v14));
    google::protobuf::Descriptor::GetLocationPath(a3, v14);
    __p[0] = 5;
    sub_1000B966C(v14, __p);
    v13 = (a4 - *(a3 + 72)) >> 4;
    sub_1000B966C(v14, &v13);
    __p[0] = 3;
    sub_1000B966C(v14, __p);
    v10 = *(a3 + 8);
    v11 = *(a2 + 24);
    sub_1000B347C(__p, "google.protobuf.ExtensionRangeOptions");
    sub_1000C5220(a1);
  }
}

void sub_1000C3F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C3FAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::Descriptor::GetLocationPath(a3, __p);
  sub_1000B966C(__p, &v8);
  v6 = *(a3 + 8);
  sub_1000D3D50(a1);
}

void sub_1000C403C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::DescriptorBuilder *this, const google::protobuf::FieldDescriptorProto *a2, google::protobuf::Descriptor *a3, google::protobuf::FieldDescriptor *a4)
{
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  google::protobuf::DescriptorBuilder::AllocateNameString(this, *(v4 + 1), (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL));
}

void sub_1000C4EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C4F88(unsigned __int8 *a1@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  v4 = a1;
  v5 = a3;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if ((a1[23] & 0x80u) == 0)
  {
    v6 = a1[23];
  }

  else
  {
    v6 = *(a1 + 1);
  }

  std::string::reserve(a3, v6);
  v7 = *(v4 + 1);
  if ((v4[23] & 0x80u) == 0)
  {
    v8 = v4[23];
  }

  else
  {
    v4 = *v4;
    v8 = v7;
  }

  if (v8)
  {
    v9 = a2 ^ 1;
    do
    {
      v10 = *v4;
      v11 = v10 == 95;
      if (v10 != 95)
      {
        if ((v9 & ((v10 - 97) < 0x1A)) != 0)
        {
          v12 = v10 - 32;
        }

        else
        {
          v12 = *v4;
        }

        std::string::push_back(v5, v12);
      }

      ++v4;
      v9 = v11;
      --v8;
    }

    while (v8);
  }

  if (a2)
  {
    if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v5->__r_.__value_.__l.__size_)
      {
        return;
      }

      v5 = v5->__r_.__value_.__r.__words[0];
    }

    else if (!*(&v5->__r_.__value_.__s + 23))
    {
      return;
    }

    v13 = v5->__r_.__value_.__s.__data_[0];
    if ((v13 - 65) < 0x1A)
    {
      LOBYTE(v13) = v13 + 32;
    }

    v5->__r_.__value_.__s.__data_[0] = v13;
  }
}

void sub_1000C5080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C50A0(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if ((a1[23] & 0x80u) == 0)
  {
    v4 = a1[23];
  }

  else
  {
    v4 = *(a1 + 1);
  }

  std::string::reserve(a2, v4);
  v5 = *(v2 + 1);
  if ((v2[23] & 0x80u) == 0)
  {
    v6 = v2[23];
  }

  else
  {
    v2 = *v2;
    v6 = v5;
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = *v2;
      v9 = v8 == 95;
      if (v8 != 95)
      {
        if (v7 && (v8 - 97) < 0x1A)
        {
          v10 = v8 - 32;
        }

        else
        {
          v10 = *v2;
        }

        std::string::push_back(a2, v10);
      }

      ++v2;
      v7 = v9;
      --v6;
    }

    while (v6);
  }
}

void sub_1000C5154(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C5174(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::FieldDescriptor::GetLocationPath(a3, __p);
  sub_1000B966C(__p, &v8);
  v6 = *(a3 + 8);
  sub_1000D417C(a1);
}

void sub_1000C5204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C5514(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::OneofDescriptor::GetLocationPath(a3, __p);
  sub_1000B966C(__p, &v8);
  v6 = *(a3 + 8);
  sub_1000D46E0(a1);
}

void sub_1000C55A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CheckEnumValueUniqueness(google::protobuf::DescriptorBuilder *this, const google::protobuf::EnumDescriptorProto *a2, uint64_t **a3)
{
  sub_1000B3420(&__p, *a3, a3);
  size = __p.__r_.__value_.__l.__size_;
  v5 = __p.__r_.__value_.__r.__words[0];
  memset(&v61, 0, sizeof(v61));
  if (__p.__r_.__value_.__l.__size_)
  {
    do
    {
      v7 = *v5;
      if (v7 != 95)
      {
        if ((v7 - 65) < 0x1A)
        {
          LOBYTE(v7) = v7 + 32;
        }

        std::string::push_back(&v61, v7);
      }

      ++v5;
      --size;
    }

    while (size);
  }

  v60[0] = 0;
  v60[1] = 0;
  v59 = v60;
  if (*(a3 + 11) >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = &a3[6][5 * v8];
      sub_1000B3420(&v54, *v9, v4);
      *&v55.__r_.__value_.__l.__data_ = *&v54.__r_.__value_.__l.__data_;
      v10 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      if (!v54.__r_.__value_.__l.__size_)
      {
        break;
      }

      v11 = 0;
      v12 = 0;
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v61.__r_.__value_.__l.__size_;
      }

      v13 = v61.__r_.__value_.__r.__words[0];
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v61;
      }

      while (v11 < v10)
      {
        v14 = *(v54.__r_.__value_.__r.__words[0] + v12);
        if (v14 != 95)
        {
          if ((v14 - 65) < 0x1A)
          {
            v14 += 32;
          }

          if (v14 != v13->__r_.__value_.__s.__data_[v11])
          {
            goto LABEL_33;
          }

          ++v11;
        }

        if (v54.__r_.__value_.__l.__size_ == ++v12)
        {
          v12 = v54.__r_.__value_.__l.__size_;
          break;
        }
      }

      if (v11 >= v10)
      {
        if (v12 < v54.__r_.__value_.__l.__size_)
        {
          while (*(v54.__r_.__value_.__r.__words[0] + v12) == 95)
          {
            if (v54.__r_.__value_.__l.__size_ == ++v12)
            {
              goto LABEL_33;
            }
          }
        }

LABEL_31:
        if (v54.__r_.__value_.__l.__size_ != v12)
        {
          v55.__r_.__value_.__r.__words[0] = v54.__r_.__value_.__r.__words[0] + v12;
          v55.__r_.__value_.__l.__size_ = v54.__r_.__value_.__l.__size_ - v12;
        }
      }

LABEL_33:
      sub_1000CD768(&v55, &__p);
      memset(&v58, 0, sizeof(v58));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      std::string::reserve(&v58, v15);
      v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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
        v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = __p.__r_.__value_.__l.__size_;
      }

      if (v18)
      {
        v19 = 1;
        do
        {
          v20 = p_p->__r_.__value_.__s.__data_[0];
          v21 = v20 == 95;
          if (v20 != 95)
          {
            v22 = (v19 & 1) == 0;
            if (v19)
            {
              v23 = -97;
            }

            else
            {
              v23 = -65;
            }

            if (v22)
            {
              v24 = 32;
            }

            else
            {
              v24 = -32;
            }

            if ((v20 + v23) >= 0x1Au)
            {
              v25 = 0;
            }

            else
            {
              v25 = v24;
            }

            std::string::push_back(&v58, v25 + v20);
          }

          p_p = (p_p + 1);
          v19 = v21;
          --v18;
        }

        while (v18);
        v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v16 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000B32D8(&__p, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v58;
      }

      v57 = v9;
      v27 = sub_1000D4B0C(&v59, &__p.__r_.__value_.__l.__data_);
      v28 = v26;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v28 & 1) == 0)
        {
LABEL_66:
          v29 = *(v27 + 56);
          v30 = *v9;
          v31 = *(*v29 + 23);
          if (v31 >= 0)
          {
            v4 = *(*v29 + 23);
          }

          else
          {
            v4 = (*v29)[1];
          }

          v32 = *(v30 + 23);
          v33 = v32;
          if ((v32 & 0x80u) != 0)
          {
            v32 = v30[1];
          }

          if (v4 != v32 || (v31 >= 0 ? (v34 = *v29) : (v34 = **v29), (v35 = *v30, v33 >= 0) ? (v36 = *v9) : (v36 = *v30), memcmp(v34, v36, v4)))
          {
            if (*(v29 + 4) != *(v9 + 16))
            {
              std::operator+<char>();
              v37 = std::string::append(&v53, " has the same name as ");
              v38 = *&v37->__r_.__value_.__l.__data_;
              v54.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
              *&v54.__r_.__value_.__l.__data_ = v38;
              v37->__r_.__value_.__l.__size_ = 0;
              v37->__r_.__value_.__r.__words[2] = 0;
              v37->__r_.__value_.__r.__words[0] = 0;
              v62 = &v58;
              v39 = sub_1000D4BB0(&v59, &v58.__r_.__value_.__l.__data_);
              v40 = **(v39 + 56);
              v41 = *(v40 + 23);
              if (v41 >= 0)
              {
                v42 = **(v39 + 56);
              }

              else
              {
                v42 = *v40;
              }

              if (v41 >= 0)
              {
                v43 = *(v40 + 23);
              }

              else
              {
                v43 = *(v40 + 8);
              }

              v44 = std::string::append(&v54, v42, v43);
              v45 = *&v44->__r_.__value_.__l.__data_;
              v55.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
              *&v55.__r_.__value_.__l.__data_ = v45;
              v44->__r_.__value_.__l.__size_ = 0;
              v44->__r_.__value_.__r.__words[2] = 0;
              v44->__r_.__value_.__r.__words[0] = 0;
              v46 = std::string::append(&v55, " if you ignore case and strip out the enum name prefix (if any). This is error-prone and can lead to undefined behavior. Please avoid doing this. If you are using allow_alias, please assign the same numeric value to both enums.");
              v47 = *&v46->__r_.__value_.__l.__data_;
              __p.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
              *&__p.__r_.__value_.__l.__data_ = v47;
              v46->__r_.__value_.__l.__size_ = 0;
              v46->__r_.__value_.__r.__words[2] = 0;
              v46->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v55.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v54.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v53.__r_.__value_.__l.__data_);
              }

              v48 = *(v9 + 8);
              v49 = *(*(a2 + 5) + 8 * v8 + 8);
              if (*(a3[2] + 15) == 2)
              {
                google::protobuf::DescriptorBuilder::AddWarning(this, v48, v49, 0, &__p);
              }

              else
              {
                google::protobuf::DescriptorBuilder::AddError(this, v48, v49, 0, &__p);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }
      }

      else if ((v26 & 1) == 0)
      {
        goto LABEL_66;
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (++v8 >= *(a3 + 11))
      {
        v50 = v60[0];
        goto LABEL_102;
      }
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v61.__r_.__value_.__l.__size_;
    }

    if (v12)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v50 = 0;
LABEL_102:
  sub_1000D279C(&v59, v50);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }
}

void sub_1000C5A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_1000D279C(v44 - 152, *(v44 - 144));
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::BuildEnumValue(uint64_t a1, uint64_t a2, const char *a3)
{
  v3 = *(a1 + 8);
  sub_1000B3420(&v4, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), a3);
  google::protobuf::DescriptorPool::Tables::AllocateString(v3, v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_);
}

void sub_1000C5FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 113) < 0)
  {
    operator delete(*(v42 - 136));
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C6084(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::EnumDescriptor::GetLocationPath(a3, __p);
  sub_1000B966C(__p, &v8);
  v6 = *(a3 + 8);
  sub_1000D4D00(a1);
}

void sub_1000C6114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C6130(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::EnumValueDescriptor::GetLocationPath(a3, __p);
  sub_1000B966C(__p, &v8);
  v6 = *(a3 + 8);
  sub_1000D512C(a1);
}

void sub_1000C61C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::BuildMethod(uint64_t a1, uint64_t a2, const char *a3)
{
  v3 = *(a1 + 8);
  sub_1000B3420(__p, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), a3);
  google::protobuf::DescriptorPool::Tables::AllocateString(v3, __p[0], __p[1]);
}

void sub_1000C62F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C6310(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::ServiceDescriptor::GetLocationPath(a3, __p);
  sub_1000B966C(__p, &v8);
  v6 = *(a3 + 8);
  sub_1000D5558(a1);
}

void sub_1000C63A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C63BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::MethodDescriptor::GetLocationPath(a3, __p);
  sub_1000B966C(__p, &v8);
  v6 = *(a3 + 8);
  sub_1000D5984(a1);
}

void sub_1000C644C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CrossLinkMessage(google::protobuf::DescriptorPool::Tables **this, google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3)
{
  v5 = this;
  if (!*(a2 + 4))
  {
    this = google::protobuf::MessageOptions::default_instance(this);
    *(a2 + 4) = this;
  }

  if (*(a2 + 29) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      this = google::protobuf::DescriptorBuilder::CrossLinkMessage(v5, (*(a2 + 7) + v6), *(*(a3 + 8) + 8 * v7++ + 8));
      v6 += 144;
    }

    while (v7 < *(a2 + 29));
  }

  if (*(a2 + 30) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      this = google::protobuf::DescriptorBuilder::CrossLinkEnum(this, (*(a2 + 8) + v8), a3);
      ++v9;
      v8 += 80;
    }

    while (v9 < *(a2 + 30));
  }

  if (*(a2 + 26) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::CrossLinkField(v5, (*(a2 + 5) + v10), *(*(a3 + 5) + 8 * v11++ + 8));
      v10 += 152;
    }

    while (v11 < *(a2 + 26));
  }

  if (*(a2 + 32) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::CrossLinkField(v5, (*(a2 + 10) + v12), *(*(a3 + 17) + 8 * v13++ + 8));
      v12 += 152;
    }

    while (v13 < *(a2 + 32));
  }

  v14 = *(a2 + 31);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 8;
    do
    {
      v17 = *(a2 + 9);
      if (!*(v17 + v16))
      {
        this = google::protobuf::ExtensionRangeOptions::default_instance(this);
        *(v17 + v16) = this;
        v14 = *(a2 + 31);
      }

      ++v15;
      v16 += 16;
    }

    while (v15 < v14);
  }

  v18 = *(a2 + 26);
  if (v18 >= 1)
  {
    v19 = 0;
    for (i = 0; i < v18; ++i)
    {
      v21 = *(a2 + 5);
      v22 = *(v21 + v19 + 88);
      if (v22)
      {
        if (*(v22 + 24) >= 1 && *(v21 + v19 - 64) != v22)
        {
          v23 = *(a2 + 1);
          if (*(v23 + 23) >= 0)
          {
            v24 = *(v23 + 23);
          }

          else
          {
            v24 = v23[1];
          }

          sub_1000B3394(&v75, v24 + 1);
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v75;
          }

          else
          {
            v25 = v75.__r_.__value_.__r.__words[0];
          }

          if (v24)
          {
            if (*(v23 + 23) >= 0)
            {
              v26 = v23;
            }

            else
            {
              v26 = *v23;
            }

            memmove(v25, v26, v24);
          }

          *(&v25->__r_.__value_.__l.__data_ + v24) = 46;
          v27 = *(*(a2 + 5) + v19 - 152);
          v28 = *(v27 + 23);
          if (v28 >= 0)
          {
            v29 = *(*(a2 + 5) + v19 - 152);
          }

          else
          {
            v29 = *v27;
          }

          if (v28 >= 0)
          {
            v30 = *(v27 + 23);
          }

          else
          {
            v30 = *(v27 + 8);
          }

          v31 = std::string::append(&v75, v29, v30);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v77 = v31->__r_.__value_.__r.__words[2];
          *v76 = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          v33 = *(*(a3 + 5) + 8 * i);
          v34 = *(*(a2 + 5) + v19 - 152);
          v35 = *(v34 + 23);
          v36 = v34[1];
          if (v35 < 0)
          {
            v34 = *v34;
          }

          *&v95 = v34;
          if (v35 >= 0)
          {
            v37 = v35;
          }

          else
          {
            v37 = v36;
          }

          DWORD2(v95) = v37;
          v38 = *v22;
          v39 = *(*v22 + 23);
          v40 = *(*v22 + 8);
          if (v39 < 0)
          {
            v38 = **v22;
          }

          v94.__r_.__value_.__r.__words[0] = v38;
          if (v39 >= 0)
          {
            v41 = v39;
          }

          else
          {
            v41 = v40;
          }

          LODWORD(v94.__r_.__value_.__r.__words[1]) = v41;
          v92 = 0;
          v93 = -1;
          v90 = 0;
          v91 = -1;
          v88 = 0;
          v89 = -1;
          v86 = 0;
          v87 = -1;
          v84 = 0;
          v85 = -1;
          v82 = 0;
          v83 = -1;
          v80 = 0;
          v81 = -1;
          v78 = 0;
          v79 = -1;
          *(&v73 + 1) = &v80;
          *&v73 = &v82;
          google::protobuf::strings::Substitute("Fields in the same oneof must be defined consecutively. $0 cannot be defined before the completion of the $1 oneof definition.", &v95, &v94, &v92, &v90, &v88, &v86, &v84, &__p, v73, &v78);
          google::protobuf::DescriptorBuilder::AddError(v5, v76, v33, 2, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v77) < 0)
          {
            operator delete(v76[0]);
          }

          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          v18 = *(a2 + 26);
        }

        v42 = *(a2 + 6) + 48 * (-1431655765 * ((v22 - *(*(v22 + 16) + 48)) >> 4));
        ++*(v42 + 24);
      }

      v19 += 152;
    }
  }

  LODWORD(v43) = *(a2 + 27);
  if (v43 >= 1)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = *(a2 + 6);
      v47 = v46 + v44;
      v48 = *(v46 + v44 + 24);
      if (!v48)
      {
        v49 = *(a2 + 1);
        if (*(v49 + 23) >= 0)
        {
          v50 = *(v49 + 23);
        }

        else
        {
          v50 = v49[1];
        }

        sub_1000B3394(&v94, v50 + 1);
        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v94;
        }

        else
        {
          v51 = v94.__r_.__value_.__r.__words[0];
        }

        if (v50)
        {
          if (*(v49 + 23) >= 0)
          {
            v52 = v49;
          }

          else
          {
            v52 = *v49;
          }

          memmove(v51, v52, v50);
        }

        *(&v51->__r_.__value_.__l.__data_ + v50) = 46;
        v53 = *(*v47 + 23);
        if (v53 >= 0)
        {
          v54 = *v47;
        }

        else
        {
          v54 = **v47;
        }

        if (v53 >= 0)
        {
          v55 = *(*v47 + 23);
        }

        else
        {
          v55 = *(*v47 + 8);
        }

        v56 = std::string::append(&v94, v54, v55);
        v57 = *&v56->__r_.__value_.__l.__data_;
        v96 = v56->__r_.__value_.__r.__words[2];
        v95 = v57;
        v56->__r_.__value_.__l.__size_ = 0;
        v56->__r_.__value_.__r.__words[2] = 0;
        v56->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(v5, &v95, *(*(a3 + 20) + 8 * v45 + 8), 0, "Oneof must have at least one field.");
        if (SHIBYTE(v96) < 0)
        {
          operator delete(v95);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        v48 = *(v47 + 24);
      }

      Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(v5[1], 8 * v48);
      *(v46 + v44 + 32) = Bytes;
      *(v47 + 24) = 0;
      if (!*(v46 + v44 + 40))
      {
        *(v46 + v44 + 40) = google::protobuf::OneofOptions::default_instance(Bytes);
      }

      ++v45;
      v43 = *(a2 + 27);
      v44 += 48;
    }

    while (v45 < v43);
    v18 = *(a2 + 26);
  }

  if (v18 >= 1)
  {
    v59 = 0;
    do
    {
      v60 = *(a2 + 5) + v59;
      v61 = *(v60 + 88);
      if (v61)
      {
        v62 = *(a2 + 6) + 48 * (-1431655765 * ((v61 - *(*(v61 + 16) + 48)) >> 4));
        v63 = *(v62 + 24);
        *(v60 + 72) = v63;
        v64 = *(v62 + 32);
        *(v62 + 24) = v63 + 1;
        *(v64 + 8 * v63) = v60;
      }

      v59 += 152;
    }

    while (152 * v18 != v59);
    v65 = 0;
    for (j = 0; j < v18; ++j)
    {
      v67 = *(a2 + 5) + v65;
      if (*(v67 + 65) == 1)
      {
        v68 = *(v67 + 88);
        if (!v68 || *(v68 + 24) != 1 || (*(**(v68 + 32) + 65) & 1) == 0)
        {
          google::protobuf::DescriptorBuilder::AddError(v5, *(a2 + 1), *(*(a3 + 5) + 8 * j + 8), 10, "Fields with proto3_optional set must be a member of a one-field oneof");
          v18 = *(a2 + 26);
        }
      }

      v65 += 152;
    }

    LODWORD(v43) = *(a2 + 27);
  }

  if (v43 >= 1)
  {
    v69 = 0;
    v70 = 0;
    v71 = -1;
    do
    {
      v72 = *(a2 + 6) + v69;
      if (*(v72 + 24) == 1 && *(**(v72 + 32) + 65) == 1)
      {
        if (v71 == -1)
        {
          v71 = v70;
        }
      }

      else if (v71 != -1)
      {
        google::protobuf::DescriptorBuilder::AddError(v5, *(a2 + 1), *(*(a3 + 20) + 8 * v70 + 8), 10, "Synthetic oneofs must be after all other oneofs");
        LODWORD(v43) = *(a2 + 27);
      }

      ++v70;
      v69 += 48;
    }

    while (v70 < v43);
    if (v71 != -1)
    {
      LODWORD(v43) = v71;
    }
  }

  *(a2 + 28) = v43;
}

void sub_1000C6B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}