void sub_100102EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100102F2C(uint64_t a1)
{
  if (sub_100103FB4(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 144);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetStringValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "string");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_10010300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103024(uint64_t a1)
{
  if (sub_100103FB4(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 124);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_100103104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010311C(unsigned int *a1)
{
  if (sub_100103FB4(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 132);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001031FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103214(uint64_t a1)
{
  if (sub_100103FB4(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 128);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetUInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001032F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010330C(unsigned int *a1)
{
  if (sub_100103FB4(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 136);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetUInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001033EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103404(unsigned __int8 *a1)
{
  if (sub_100103FB4(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 140);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetBoolValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BOOL");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_100103FB4(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_1001034E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::DynamicMapField::SyncMapWithRepeatedFieldNoLock(google::protobuf::internal::DynamicMapField *this)
{
  v2 = (this + 96);
  (*(**(this + 18) + 152))(*(this + 18));
  v4 = v3;
  v5 = (*(**(this + 18) + 152))(*(this + 18));
  v6 = google::protobuf::Descriptor::map_key(v5);
  v7 = (*(**(this + 18) + 152))(*(this + 18));
  v8 = google::protobuf::Descriptor::map_value(v7);
  if (!*(this + 1))
  {
    v9 = *(this + 15);
    v10 = *(this + 13);
    if (v10 > v9)
    {
      v11 = *(this + 16);
      while (1)
      {
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          break;
        }

        if (v10 == ++v9)
        {
          goto LABEL_11;
        }
      }

      if (v12 == *(v11 + 8 * (v9 ^ 1)))
      {
        v12 = *(*v12 + 40);
        v36[0].__r_.__value_.__r.__words[0] = v12;
        v36[0].__r_.__value_.__l.__size_ = v2;
        v36[0].__r_.__value_.__r.__words[2] = v9;
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v36[0].__r_.__value_.__r.__words[0] = *(v11 + 8 * v9);
        v36[0].__r_.__value_.__l.__size_ = v2;
        v36[0].__r_.__value_.__r.__words[2] = v9;
      }

      do
      {
        sub_10010071C(v12 + 8);
        sub_100104958(v36);
        v12 = v36[0].__r_.__value_.__r.__words[0];
      }

      while (v36[0].__r_.__value_.__r.__words[0]);
    }
  }

LABEL_11:
  sub_100104550(v2);
  v13 = *(this + 2);
  if (*(v13 + 8))
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    do
    {
      v44 = 0;
      v16 = *(v6 + 48);
      if (v16)
      {
        v39 = v6;
        v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v16, memory_order_acquire) != -1)
        {
          v36[0].__r_.__value_.__r.__words[0] = &v40;
          v36[0].__r_.__value_.__l.__size_ = &v39;
          v41 = v36;
          std::__call_once(v16, &v41, sub_1000B32C4);
        }
      }

      v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 56)];
      if (v17 <= 3)
      {
        switch(v17)
        {
          case 1:
            Int32 = google::protobuf::Reflection::GetInt32(v4, *v15, v6);
            if (v44 != 1)
            {
              if (v44 == 9 && v43 < 0)
              {
                operator delete(__p[0]);
              }

              v20 = 1;
LABEL_45:
              v44 = v20;
            }

LABEL_46:
            LODWORD(__p[0]) = Int32;
            break;
          case 2:
            Int64 = google::protobuf::Reflection::GetInt64(v4, *v15, v6);
            if (v44 != 2)
            {
              if (v44 == 9 && v43 < 0)
              {
                operator delete(__p[0]);
              }

              v22 = 2;
LABEL_52:
              v44 = v22;
            }

LABEL_53:
            __p[0] = Int64;
            break;
          case 3:
            Int32 = google::protobuf::Reflection::GetUInt32(v4, *v15, v6);
            if (v44 != 3)
            {
              if (v44 == 9 && v43 < 0)
              {
                operator delete(__p[0]);
              }

              v20 = 3;
              goto LABEL_45;
            }

            goto LABEL_46;
        }
      }

      else
      {
        if (v17 <= 0xA)
        {
          if (((1 << v17) & 0x560) != 0)
          {
            google::protobuf::internal::LogMessage::LogMessage(v36, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/map_field.cc", 513);
            v18 = google::protobuf::internal::LogMessage::operator<<(v36, "Can't get here.");
            google::protobuf::internal::LogFinisher::operator=(&v41, &v18->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v36[0].__r_.__value_.__l.__data_);
            goto LABEL_60;
          }

          if (v17 == 7)
          {
            Bool = google::protobuf::Reflection::GetBool(v4, *v15, v6);
            if (v44 != 7)
            {
              if (v44 == 9 && v43 < 0)
              {
                operator delete(__p[0]);
              }

              v44 = 7;
            }

            LOBYTE(__p[0]) = Bool;
            goto LABEL_60;
          }

          if (v17 == 9)
          {
            google::protobuf::Reflection::GetString(v4, *v15, v6, &v37);
            sub_100103D3C(__p, &v37);
            if (v38 < 0)
            {
              operator delete(v37.n128_u64[0]);
            }

            goto LABEL_60;
          }
        }

        if (v17 == 4)
        {
          Int64 = google::protobuf::Reflection::GetUInt64(v4, *v15, v6);
          if (v44 != 4)
          {
            if (v44 == 9 && v43 < 0)
            {
              operator delete(__p[0]);
            }

            v22 = 4;
            goto LABEL_52;
          }

          goto LABEL_53;
        }
      }

LABEL_60:
      if (!*(this + 1))
      {
        sub_100104ACC(v2, __p, 0, v36);
        if (v36[0].__r_.__value_.__r.__words[0])
        {
          sub_10010071C((v36[0].__r_.__value_.__r.__words[0] + 32));
        }
      }

      sub_100105784(v2, __p, v36);
      v24 = v36[0].__r_.__value_.__r.__words[0];
      v25 = *(v8 + 48);
      if (v25)
      {
        v39 = v8;
        v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v25, memory_order_acquire) != -1)
        {
          v36[0].__r_.__value_.__r.__words[0] = &v40;
          v36[0].__r_.__value_.__l.__size_ = &v39;
          v41 = v36;
          std::__call_once(v25, &v41, sub_1000B32C4);
        }

        v26 = *(v8 + 48);
        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        *(v24 + 40) = v27;
        if (v26)
        {
          v39 = v8;
          v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v26, memory_order_acquire) != -1)
          {
            v36[0].__r_.__value_.__r.__words[0] = &v40;
            v36[0].__r_.__value_.__l.__size_ = &v39;
            v41 = v36;
            std::__call_once(v26, &v41, sub_1000B32C4);
          }

          v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        }
      }

      else
      {
        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        *(v36[0].__r_.__value_.__r.__words[0] + 40) = v27;
      }

      if (v27 > 5)
      {
        if (v27 <= 7)
        {
          if (v27 == 6)
          {
            v28 = sub_1001055EC(*(this + 1));
            *v28 = google::protobuf::Reflection::GetFloat(v4, *v15, v8);
          }

          else
          {
            v28 = sub_1001056B8(*(this + 1));
            *v28 = google::protobuf::Reflection::GetBool(v4, *v15, v8);
          }

          goto LABEL_96;
        }

        if (v27 != 8)
        {
          if (v27 == 9)
          {
            v28 = sub_1000B3534(*(this + 1));
            google::protobuf::Reflection::GetString(v4, *v15, v8, v36);
            if (*(v28 + 23) < 0)
            {
              operator delete(*v28);
            }

            v32 = *&v36[0].__r_.__value_.__l.__data_;
            v28[2] = *(&v36[0].__r_.__value_.__l + 2);
            *v28 = v32;
          }

          else
          {
            if (v27 != 10)
            {
              goto LABEL_97;
            }

            Message = google::protobuf::Reflection::GetMessage(v4, *v15, v8, 0);
            v28 = (*(*Message + 32))(Message, *(this + 1));
            (*(*v28 + 112))(v28, Message);
          }

          goto LABEL_96;
        }

        v28 = sub_1001051F0(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetEnumValue(v4, *v15, v8);
        goto LABEL_90;
      }

      if (v27 <= 2)
      {
        if (v27 != 1)
        {
          if (v27 != 2)
          {
            goto LABEL_97;
          }

          v28 = sub_1001052BC(*(this + 1));
          UInt64 = google::protobuf::Reflection::GetInt64(v4, *v15, v8);
          goto LABEL_92;
        }

        v28 = sub_1001051F0(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetInt32(v4, *v15, v8);
        goto LABEL_90;
      }

      if (v27 == 3)
      {
        v28 = sub_100105388(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetUInt32(v4, *v15, v8);
LABEL_90:
        *v28 = EnumValue;
        goto LABEL_96;
      }

      if (v27 == 4)
      {
        v28 = sub_100105454(*(this + 1));
        UInt64 = google::protobuf::Reflection::GetUInt64(v4, *v15, v8);
LABEL_92:
        *v28 = UInt64;
        goto LABEL_96;
      }

      v28 = sub_100105520(*(this + 1));
      *v28 = google::protobuf::Reflection::GetDouble(v4, *v15, v8);
LABEL_96:
      *(v24 + 32) = v28;
LABEL_97:
      if (v44 == 9 && v43 < 0)
      {
        operator delete(__p[0]);
      }

      ++v15;
      v33 = *(this + 2);
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v34 + 8;
      }

      else
      {
        v35 = 0;
      }
    }

    while (v15 != (v35 + 8 * *(v33 + 8)));
  }
}

void sub_100103CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 9 && a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100103D3C(uint64_t a1, __n128 *a2)
{
  sub_1001043A0(a1, 9);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t google::protobuf::internal::DynamicMapField::SpaceUsedExcludingSelfNoLock(google::protobuf::internal::DynamicMapField *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = 8 * *(v2 + 12);
    v4 = *(v2 + 16);
    if (v4)
    {
      if (*v4 >= 1)
      {
        v5 = 0;
        do
        {
          v3 += (*(**&v4[2 * v5 + 2] + 136))(*&v4[2 * v5 + 2]);
          ++v5;
          v4 = *(v2 + 16);
        }

        while (v5 < *v4);
      }

      v3 += 8;
    }

    v6 = v3 + 48;
  }

  else
  {
    v6 = 48;
  }

  v7 = this + 96;
  v8 = *(this + 12);
  if (v8)
  {
    v9 = *(this + 15);
    v10 = *(this + 13);
    if (v10 <= v9)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(this + 16);
      while (1)
      {
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          break;
        }

        if (v10 == ++v9)
        {
          v12 = 0;
          v9 = v10;
          goto LABEL_18;
        }
      }

      if (v12 == *(v11 + 8 * (v9 ^ 1)))
      {
        v12 = *(*v12 + 40);
      }
    }

LABEL_18:
    v22[0] = v12;
    v22[1] = v7;
    v22[2] = v9;
    if (sub_100103FB4(v12) == 9)
    {
      v13 = 24 * v8;
    }

    else
    {
      v13 = 0;
    }

    v6 += 48 * v8 + v13;
    v14 = sub_100104054(v12 + 32);
    if (v14 > 5)
    {
      if (v14 <= 7)
      {
        v20 = v6 + v8;
        if (v14 != 7)
        {
          v20 = v6;
        }

        if (v14 == 6)
        {
          v6 += 4 * v8;
        }

        else
        {
          return v20;
        }
      }

      else
      {
        switch(v14)
        {
          case 8:
            v6 += 4 * v8;
            break;
          case 9:
            v6 += 24 * v8;
            break;
          case 10:
            while (v12)
            {
              v18 = sub_1001026B0(v12 + 32);
              (*(*v18 + 152))(v18);
              v6 += google::protobuf::Reflection::SpaceUsedLong(v19, v18);
              sub_100104958(v22);
              v12 = v22[0];
            }

            break;
        }
      }
    }

    else
    {
      v15 = v6 + 4 * v8;
      v16 = v6 + 8 * v8;
      if (v14 == 5)
      {
        v17 = v6 + 8 * v8;
      }

      else
      {
        v17 = v6;
      }

      if (v14 == 4)
      {
        v17 = v6 + 8 * v8;
      }

      if (v14 == 3)
      {
        v17 = v6 + 4 * v8;
      }

      if (v14 != 2)
      {
        v16 = v6;
      }

      if (v14 != 1)
      {
        v15 = v16;
      }

      if (v14 <= 2)
      {
        return v15;
      }

      else
      {
        return v17;
      }
    }
  }

  return v6;
}

uint64_t sub_100103FB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 91);
    v3 = google::protobuf::internal::LogMessage::operator<<(v7, "Protocol Buffer map usage error:\n");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "MapKey::type MapKey is not initialized. ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Call set methods to initialize MapKey.");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
    return *(a1 + 24);
  }

  return result;
}

void sub_10010403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100104054(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result || !*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 742);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "Protocol Buffer map usage error:\n");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "MapValueConstRef::type MapValueConstRef is not initialized.");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    return *(a1 + 8);
  }

  return result;
}

void sub_1001040D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010410C(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 160))(a1);
  v5 = v4[3];
  v6 = v4[1];
  if (v6 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v7 = v4[4];
    while (1)
    {
      v8 = *(v7 + 8 * v5);
      if (v8)
      {
        break;
      }

      if (v6 == ++v5)
      {
        v8 = 0;
        v5 = v4[1];
        goto LABEL_9;
      }
    }

    if (v8 == *(v7 + 8 * (v5 ^ 1)))
    {
      v8 = *(*v8 + 40);
    }
  }

LABEL_9:
  v9 = *a2;
  *v9 = v8;
  v9[1] = v4;
  v9[2] = v5;
  v10 = *(*a1 + 176);

  return v10(a1, a2);
}

uint64_t sub_1001041EC(uint64_t a1, void **a2)
{
  result = (*(*a1 + 160))(a1);
  v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  return result;
}

uint64_t sub_100104280(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1001042A0(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = **a3;
  *(v6 + 16) = *(*a3 + 16);
  *v6 = v7;
  v8 = sub_100103FB4((a3 + 4));
  sub_1001043A0((a2 + 2), v8);
  *(a2 + 14) = a3[14];
  v9 = *(*a1 + 176);

  return v9(a1, a2);
}

uint64_t sub_10010433C(uint64_t a1, void **a2)
{
  sub_100104958(*a2);
  v4 = *(*a1 + 176);

  return v4(a1, a2);
}

void sub_1001043A0(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2 != a2)
  {
    if (v2 == 9 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = a2;
    if (a2 == 9)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

void *sub_1001043FC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_100104458(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_100104458(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164C1C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1001044E0);
}

uint64_t sub_1001044FC(uint64_t a1)
{
  if (!*(a1 + 40) && *(a1 + 8) != 1)
  {
    sub_100104550(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

uint64_t sub_100104550(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v1[4];
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        if (v5 == *(v4 + 8 * (v3 ^ 1)))
        {
          v7 = v3 + 1;
          *(v4 + 8 * (v3 + 1)) = 0;
          *(v1[4] + 8 * v3) = 0;
          v8 = *v5;
          do
          {
            v9 = v8[5];
            v10 = v8[1];
            v11 = v8;
            if (v10)
            {
              do
              {
                v12 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v12 = v11[2];
                v13 = *v12 == v11;
                v11 = v12;
              }

              while (!v13);
            }

            sub_10010472C(v5, v8);
            sub_10010465C(v1, v9);
            v8 = v12;
          }

          while (v12 != (v5 + 1));
          result = sub_1001046CC(v1, v5);
          goto LABEL_16;
        }

        *(v4 + 8 * v3) = 0;
        do
        {
          v6 = v5[6];
          result = sub_10010465C(v1, v5);
          v5 = v6;
        }

        while (v6);
      }

      v7 = v3;
LABEL_16:
      v3 = v7 + 1;
      v2 = v1[1];
    }

    while (v7 + 1 < v2);
  }

  *v1 = 0;
  v1[3] = v2;
  return result;
}

uint64_t sub_10010465C(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    if (*(a2 + 24) == 9 && *(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1001046CC(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    sub_1001047E8(a2, *(a2 + 8));

    operator delete();
  }

  return result;
}

uint64_t *sub_10010472C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100104774(a1, a2);
  if (!*(a1 + 16))
  {
    operator delete(a2);
  }

  return v4;
}

uint64_t *sub_100104774(uint64_t a1, uint64_t *a2)
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

  --*(a1 + 24);
  sub_1000D0AF8(*(a1 + 8), a2);
  return v3;
}

void sub_1001047E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001047E8(a1, *a2);
    sub_1001047E8(a1, a2[1]);
    if (!*(a1 + 16))
    {

      operator delete(a2);
    }
  }
}

uint64_t sub_10010484C(uint64_t a1, char *a2)
{
  *a1 = off_1001D1040;
  *(a1 + 8) = a2;
  *(a1 + 24) = 850045863;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  if (a2)
  {
    sub_1001048D4(a2, (a1 + 24));
  }

  return a1;
}

char *sub_1001048D4(char *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, std::mutex::~mutex);
  }

  return result;
}

void *sub_1001048F4(void *result, unint64_t a2)
{
  *result = 0;
  v2 = result[1];
  v3 = *(v2 + 8);
  if (v3 <= a2)
  {
LABEL_6:
    result[2] = a2;
  }

  else
  {
    v4 = *(v2 + 32);
    while (1)
    {
      v5 = *(v4 + 8 * a2);
      if (v5)
      {
        break;
      }

      if (v3 == ++a2)
      {
        a2 = v3;
        goto LABEL_6;
      }
    }

    v6 = *(v4 + 8 * (a2 ^ 1));
    result[2] = a2;
    if (v5 == v6)
    {
      *result = *(*v5 + 40);
    }

    else
    {
      *result = v5;
    }
  }

  return result;
}

void *sub_100104958(void *a1)
{
  v2 = *(*a1 + 48);
  if (v2)
  {
    goto LABEL_2;
  }

  if (sub_100104A14(a1, &v11))
  {
    v3 = a1[2] + 1;
LABEL_13:
    sub_1001048F4(a1, v3);
    return a1;
  }

  v4 = a1[2];
  v5 = *(*(a1[1] + 32) + 8 * v4);
  v6 = v11;
  v7 = v11[1];
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    do
    {
      v8 = *(v6 + 16);
      v9 = *v8 == v6;
      v6 = v8;
    }

    while (!v9);
  }

  v11 = v8;
  if (v8 == (v5 + 8))
  {
    v3 = v4 + 2;
    goto LABEL_13;
  }

  v2 = v8[5];
LABEL_2:
  *a1 = v2;
  return a1;
}

BOOL sub_100104A14(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = *(a1 + 16) & (v4[1] - 1);
  *(a1 + 16) = v6;
  v7 = v4[4];
  v8 = *(v7 + 8 * v6);
  if (v8 == v5)
  {
    return 1;
  }

  if (v8 && v8 != *(v7 + 8 * (v6 ^ 1)))
  {
    while (1)
    {
      v8 = *(v8 + 48);
      if (!v8)
      {
        break;
      }

      if (v8 == v5)
      {
        return 1;
      }
    }
  }

  sub_100104ACC(v4, v5, a2, &v13);
  v9 = v14;
  *(a1 + 16) = v14;
  v10 = *(*(a1 + 8) + 32);
  v11 = *(v10 + 8 * v9);
  return !v11 || v11 != *(v10 + 8 * (v9 ^ 1));
}

unint64_t sub_100104ACC@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_100104BC0(a1, a2);
  v9 = (a1[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[2] ^ result)) >> 32);
  v10 = a1[4];
  v11 = *(v10 + 8 * v9);
  if (v11)
  {
    if (v11 != *(v10 + 8 * (v9 ^ 1)))
    {
      while (1)
      {
        result = sub_100104D84(v11, a2);
        if (result)
        {
          break;
        }

        v11 = *(v11 + 48);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      *a4 = v11;
      goto LABEL_12;
    }

    v9 = v9 & 0xFFFFFFFE;
    v12 = *(v10 + 8 * v9);
    v13 = a2;
    result = sub_100104F80(v12, &v13);
    if (v12 + 8 != result)
    {
      if (a3)
      {
        *a3 = result;
      }

      *a4 = *(result + 40);
LABEL_12:
      a4[1] = a1;
      a4[2] = v9;
      goto LABEL_13;
    }
  }

LABEL_10:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
LABEL_13:
  a4[3] = v9;
  return result;
}

unint64_t sub_100104BC0(uint64_t a1, unsigned int *a2)
{
  v3 = sub_100103FB4(a2);
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      sub_10010311C(a2);
      return sub_10010311C(a2);
    }

    if (v3 == 2)
    {

      return sub_100103024(a2);
    }

    if (v3 != 3)
    {
      goto LABEL_5;
    }

    sub_10010330C(a2);
    LODWORD(result) = sub_10010330C(a2);
    return result;
  }

  if (v3 <= 0xA)
  {
    if (((1 << v3) & 0x560) != 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 278);
      v4 = google::protobuf::internal::LogMessage::operator<<(v9, "Unsupported");
      google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
LABEL_5:
      google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 302);
      v5 = google::protobuf::internal::LogMessage::operator<<(v9, "Can't get here.");
      google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return 0;
    }

    if (v3 != 7)
    {
      if (v3 == 9)
      {
        v7 = sub_100102F2C(a2);
        return sub_1000CFF30(v9, v7);
      }

      goto LABEL_13;
    }

    LODWORD(result) = sub_100103404(a2);
    return result;
  }

LABEL_13:
  if (v3 != 4)
  {
    goto LABEL_5;
  }

  sub_100103214(a2);

  return sub_100103214(a2);
}

void sub_100104D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL sub_100104D84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*(a1 + 6) != *(a2 + 6))
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 180);
    v4 = google::protobuf::internal::LogMessage::operator<<(v20, "Unsupported: type mismatch");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  v5 = sub_100103FB4(a1);
  if (v5 <= 3)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        return *a1 == *a2;
      }

      if (v5 != 3)
      {
        goto LABEL_7;
      }
    }

    v9 = *a1;
    v10 = *a2;
    return v9 == v10;
  }

  if (v5 > 0xA)
  {
    goto LABEL_28;
  }

  if (((1 << v5) & 0x560) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 187);
    v6 = google::protobuf::internal::LogMessage::operator<<(v20, "Unsupported");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
LABEL_7:
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 202);
    v7 = google::protobuf::internal::LogMessage::operator<<(v20, "Can't get here.");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
    return 0;
  }

  if (v5 == 7)
  {
    v9 = *a1;
    v10 = *a2;
    return v9 == v10;
  }

  if (v5 != 9)
  {
LABEL_28:
    if (v5 != 4)
    {
      goto LABEL_7;
    }

    return *a1 == *a2;
  }

  v11 = a1[23];
  if (v11 >= 0)
  {
    v12 = a1[23];
  }

  else
  {
    v12 = *(a1 + 1);
  }

  v13 = a2[23];
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 1);
  }

  if (v12 != v13)
  {
    return 0;
  }

  if (v11 >= 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = *a1;
  }

  v16 = *a2;
  if (v14 >= 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = *a2;
  }

  return memcmp(v15, v17, v12) == 0;
}

void sub_100104F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100104F80(uint64_t a1, unsigned __int8 **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_100105004(*(v3 + 32), *a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_100105004(*a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

BOOL sub_100105004(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*(a1 + 6) != *(a2 + 6))
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 152);
    v4 = google::protobuf::internal::LogMessage::operator<<(v21, "Unsupported: type mismatch");
    google::protobuf::internal::LogFinisher::operator=(&v20, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  v5 = sub_100103FB4(a1);
  result = 0;
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v19 = *a1 < *a2;
        break;
      case 2:
        v19 = *a1 < *a2;
        break;
      case 3:
        v8 = *a1;
        v9 = *a2;
        goto LABEL_39;
      default:
        return result;
    }

    return v19;
  }

  if (v5 > 0xA)
  {
LABEL_31:
    if (v5 != 4)
    {
      return result;
    }

    v18 = *a1 >= *a2;
    return !v18;
  }

  if (((1 << v5) & 0x560) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/map_field.h", 159);
    v7 = google::protobuf::internal::LogMessage::operator<<(v21, "Unsupported");
    google::protobuf::internal::LogFinisher::operator=(&v20, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
    return 0;
  }

  if (v5 == 7)
  {
    v8 = *a1;
    v9 = *a2;
LABEL_39:
    v18 = v8 >= v9;
    return !v18;
  }

  if (v5 != 9)
  {
    goto LABEL_31;
  }

  v10 = a2[23];
  v11 = a1[23];
  if (v11 >= 0)
  {
    v12 = a1[23];
  }

  else
  {
    v12 = *(a1 + 1);
  }

  if (v11 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  if (v10 >= 0)
  {
    v14 = a2[23];
  }

  else
  {
    v14 = *(a2 + 1);
  }

  if (v10 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  if (v17)
  {
    return v17 < 0;
  }

  else
  {
    return v12 < v14;
  }
}

void sub_1001051D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1001051F0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_100105230(a1, 1);
  *result = 0;
  return result;
}

void *sub_100105230(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164C4C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_4);
}

void *sub_1001052BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1001052FC(a1, 1);
  *result = 0;
  return result;
}

void *sub_1001052FC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164C7C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_5);
}

void *sub_100105388(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1001053C8(a1, 1);
  *result = 0;
  return result;
}

void *sub_1001053C8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164CAC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_6);
}

void *sub_100105454(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_100105494(a1, 1);
  *result = 0;
  return result;
}

void *sub_100105494(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164CDC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_7);
}

void *sub_100105520(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_100105560(a1, 1);
  *result = 0;
  return result;
}

void *sub_100105560(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164D0C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_8);
}

void *sub_1001055EC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_10010562C(a1, 1);
  *result = 0;
  return result;
}

void *sub_10010562C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164D3C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_9);
}

void *sub_1001056B8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1001056F8(a1, 1);
  *result = 0;
  return result;
}

void *sub_1001056F8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164D6C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_10);
}

unint64_t sub_100105784@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100104ACC(a1, a2, 0, &v16);
  if (v16)
  {
    v7 = 0;
    v8 = *(&v16 + 1);
    v9 = v17;
    *a3 = v16;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
  }

  else
  {
    if (sub_1001058E4(a1, *a1 + 1))
    {
      sub_100104ACC(a1, a2, 0, &v13);
      v16 = v13;
      v10 = v15;
      v17 = v14;
      v18 = v15;
    }

    else
    {
      v10 = v18;
    }

    if (!a1[5])
    {
      operator new();
    }

    v11 = sub_100105978(a1, 1);
    v12 = a1[5];
    v11[6] = 0;
    sub_100100F44(v11, a2);
    sub_100105D68(v12, v11);
    *(v11 + 4) = 0;
    v11[10] = 0;
    result = sub_100105994(a1, v10, v11, a3);
    ++*a1;
    v7 = 1;
  }

  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1001058E4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = ((3 * v2) >> 2) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= a2)
  {
    if (v2 <= 0x800000000000000)
    {
      v6 = 2 * v2;
LABEL_16:
      sub_100105A94(a1, v6);
      return 1;
    }
  }

  else if (v2 >= 9 && (12 * v2) >> 6 >= a2)
  {
    v7 = 0;
    do
    {
      ++v7;
    }

    while ((a2 + (a2 >> 2) + 1) << v7 < v3);
    v6 = v2 >> v7 <= 8 ? 8 : v2 >> v7;
    if (v6 != v2)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

void *sub_100105978(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = 56 * a2;
  if (v2)
  {
    return sub_100105D14(v2, v3);
  }

  else
  {
    return operator new(v3);
  }
}

uint64_t *sub_100105994@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  v8 = result[4];
  v9 = *(v8 + 8 * a2);
  if (!v9)
  {
    *(a3 + 48) = 0;
    *(v8 + 8 * a2) = a3;
    goto LABEL_8;
  }

  if (v9 != *(v8 + 8 * (a2 ^ 1)))
  {
    v10 = 0;
    v11 = *(v8 + 8 * a2);
    do
    {
      ++v10;
      v11 = *(v11 + 48);
    }

    while (v11);
    if (v10 < 8)
    {
      *(a3 + 48) = v9;
      *(v8 + 8 * a2) = a3;
LABEL_11:
      *a4 = v4;
      a4[1] = v6;
      a4[2] = v5;
      return result;
    }

    sub_100105DA4(result, a2);
    *(v4 + 48) = 0;
    v14 = *(v6[4] + 8 * v5);
    v15.n128_u64[0] = v4;
    v15.n128_u64[1] = v4;
    result = sub_100105F84(v14, &v15, &v15);
    v5 &= ~1uLL;
    v4 = result[5];
LABEL_8:
    v12 = v6[3];
    if (v5 < v12)
    {
      v12 = v5;
    }

    v6[3] = v12;
    goto LABEL_11;
  }

  *(a3 + 48) = 0;
  v13 = *(v8 + 8 * a2);
  v15.n128_u64[0] = a3;
  v15.n128_u64[1] = a3;
  result = sub_100105F84(v13, &v15, &v15);
  *a4 = result[5];
  a4[1] = v6;
  a4[2] = v5 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void sub_100105A94(uint64_t a1, size_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    *(a1 + 24) = 8;
    *(a1 + 8) = 8;
    v4 = sub_100105CFC(a1, 8uLL);
    *v4 = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *(a1 + 32) = v4;
    *(a1 + 16) = a1 >> 12;
  }

  else
  {
    v6 = *(a1 + 32);
    *(a1 + 8) = a2;
    v7 = sub_100105CFC(a1, a2);
    bzero(v7, 8 * a2);
    v8 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 8);
    *(a1 + 32) = v7;
    while (v8 < v3)
    {
      v9 = v6[v8];
      if (v9)
      {
        if (v9 == v6[v8 ^ 1])
        {
          sub_100105C34(a1, v6, v8++);
        }

        else
        {
          sub_100105BB4(a1, v6, v8);
        }
      }

      ++v8;
    }

    if (!*(a1 + 40))
    {

      operator delete(v6);
    }
  }
}

uint64_t *sub_100105BB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  do
  {
    v5 = *(v4 + 48);
    v6 = sub_100104BC0(a1, v4);
    result = sub_100105994(a1, (a1[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[2] ^ v6)) >> 32), v4, v8);
    v4 = v5;
  }

  while (v5);
  return result;
}

uint64_t sub_100105C34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  v5 = *v4;
  do
  {
    v6 = sub_100104BC0(a1, v5[4]);
    sub_100105994(a1, (a1[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[2] ^ v6)) >> 32), v5[5], v11);
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
  }

  while (v8 != v4 + 1);
  return sub_1001046CC(a1, v4);
}

void *sub_100105CFC(uint64_t a1, size_t __sz)
{
  v2 = *(a1 + 40);
  v3 = 8 * __sz;
  if (v2)
  {
    return sub_100105D14(v2, v3);
  }

  else
  {
    return operator new(v3);
  }
}

uint64_t sub_100105D14(google::protobuf::Arena *this, uint64_t a2)
{
  v3 = a2 + 7;
  if (*(this + 24))
  {
    sub_100164D9C(this);
  }

  return google::protobuf::Arena::AllocateAlignedNoHook(this, v3 & 0xFFFFFFFFFFFFFFF8);
}

char *sub_100105D68(char *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, sub_100105D84);
  }

  return result;
}

void sub_100105D84(uint64_t a1)
{
  if (*(a1 + 24) == 9 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_100105DA4(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 40);
  v4 = sub_100105E98(v6, &v7, &v6);
  sub_100105E24(a1, a2, v4);
  result = sub_100105E24(a1, a2 ^ 1, v4);
  *(*(a1 + 32) + 8 * (a2 ^ 1)) = v4;
  *(*(a1 + 32) + 8 * a2) = v4;
  return result;
}

uint64_t sub_100105E24(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(*(a1 + 32) + 8 * a2);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v8.n128_u64[0] = v3;
    v8.n128_u64[1] = v3;
    sub_100105F84(a3, &v8, &v8);
    ++v5;
    v6 = *(v3 + 48);
    *(v3 + 48) = 0;
    v3 = v6;
  }

  while (v6);
  return v5;
}

void *sub_100105E98(google::protobuf::Arena *a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_100105EF4(a1, 0);
  v5 = *a3;
  result[1] = 0;
  result[2] = v5;
  result[3] = 0;
  *result = result + 1;
  return result;
}

void *sub_100105EF4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100164DD8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_100105F7C);
}

uint64_t *sub_100105F84(uint64_t **a1, unsigned __int8 **a2, __n128 *a3)
{
  v5 = sub_100106004(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_10010608C(a1, a3, &v7);
    sub_1001060F0(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t *sub_100106004(uint64_t a1, void *a2, unsigned __int8 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_100105004(*a3, v4[4]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100105004(v7[4], *a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

__n128 sub_10010608C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = sub_100105D14(v5, 48);
  }

  else
  {
    v7 = operator new(0x30uLL);
  }

  *a3 = v7;
  a3[1] = v6;
  a3[2] = 0;
  result = *a2;
  *(v7 + 32) = *a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_1001060F0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100023804(a1[1], a4);
  a1[3] = (a1[3] + 1);
  return result;
}

uint64_t sub_100106148(void *a1, uint64_t *a2)
{
  v4 = sub_100104A14(a2, &v16);
  v5 = a2[2];
  v6 = *a2;
  v7 = a1[4];
  v8 = *(v7 + 8 * v5);
  if (v4)
  {
    v9 = sub_100106258(a1, v6, *(v7 + 8 * v5));
LABEL_5:
    *(a1[4] + 8 * v5) = v9;
    goto LABEL_6;
  }

  sub_10010472C(*(v7 + 8 * v5), v16);
  if (!*(v8 + 24))
  {
    sub_1001046CC(a1, v8);
    v9 = 0;
    *(a1[4] + ((8 * v5) | 8)) = 0;
    v5 &= ~1uLL;
    goto LABEL_5;
  }

LABEL_6:
  result = sub_10010465C(a1, v6);
  --*a1;
  if (v5 == a1[3])
  {
    v11 = a1[1];
    v12 = v11 > v5;
    v13 = v11 - v5;
    if (v12)
    {
      v14 = (a1[4] + 8 * v5);
      v15 = v5 + 1;
      do
      {
        if (*v14)
        {
          break;
        }

        a1[3] = v15;
        ++v14;
        ++v15;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t sub_100106258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a3 + 48);
  if (v3 == a2)
  {
    return v4;
  }

  *(v3 + 48) = sub_100106258();
  return v3;
}

uint64_t *sub_100106298(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  v6 = result[4];
  v7 = a2[4];
  result[3] = a2[3];
  result[4] = v7;
  a2[3] = v5;
  a2[4] = v6;
  v8 = result[5];
  result[5] = a2[5];
  a2[5] = v8;
  return result;
}

uint64_t sub_1001062EC(uint64_t a1, void *a2)
{
  *a1 = xmmword_10017FFF0;
  *(a1 + 16) = xmmword_10017FFF0;
  *(a1 + 32) = &google::protobuf::internal::kGlobalEmptyTable;
  *(a1 + 40) = 0;
  v3 = a2[3];
  v4 = a2[1];
  if (v4 <= v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = a2[4];
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        v6 = 0;
        v3 = a2[1];
        goto LABEL_9;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 40);
    }
  }

LABEL_9:
  *&v9 = v6;
  *(&v9 + 1) = a2;
  v10 = v3;
  memset(v8, 0, sizeof(v8));
  sub_10010646C(a1, &v9, v8);
  return a1;
}

uint64_t *sub_1001063B8(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_100104550(a1);
    v4 = a2[3];
    v5 = a2[1];
    if (v5 <= v4)
    {
      v7 = 0;
    }

    else
    {
      v6 = a2[4];
      while (1)
      {
        v7 = *(v6 + 8 * v4);
        if (v7)
        {
          break;
        }

        if (v5 == ++v4)
        {
          v7 = 0;
          v4 = a2[1];
          goto LABEL_10;
        }
      }

      if (v7 == *(v6 + 8 * (v4 ^ 1)))
      {
        v7 = *(*v7 + 40);
      }
    }

LABEL_10:
    *&v10 = v7;
    *(&v10 + 1) = a2;
    v11 = v4;
    memset(v9, 0, sizeof(v9));
    sub_10010646C(a1, &v10, v9);
  }

  return a1;
}

uint64_t *sub_10010646C(uint64_t *result, __int128 *a2, void *a3)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v3 = v9;
  if (v9 != *a3)
  {
    v5 = result;
    do
    {
      sub_100104ACC(v5, v3, 0, v11);
      if (!v11[0])
      {
        v6 = v9;
        sub_100105784(v5, v9, v11);
        v7 = v11[0];
        v8 = *(v6 + 32);
        *(v11[0] + 40) = *(v6 + 40);
        *(v7 + 32) = v8;
      }

      result = sub_100104958(&v9);
      v3 = v9;
    }

    while (v9 != *a3);
  }

  return result;
}

unsigned int *sub_100106518(uint64_t a1, void *a2)
{
  result = google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::GetMaybeArenaPointer(a2);
  v5 = *a1;
  if (*a1 == result && (v7 = *(a1 + 16)) != 0 && (v8 = *v7, v8 < *(a1 + 12)))
  {
    v9 = v7 + 2;
    v10 = *(a1 + 8);
    if (v10 < v8)
    {
      *&v9[2 * v8] = *&v9[2 * v10];
    }

    *&v9[2 * v10] = a2;
    *(a1 + 8) = v10 + 1;
    ++**(a1 + 16);
  }

  else
  {
    Arena = google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::GetArena(a2);

    return sub_1001065DC(a1, a2, Arena, v5);
  }

  return result;
}

unsigned int *sub_1001065DC(unsigned int *a1, void *a2, char *a3, char *a4)
{
  v5 = a2;
  if (a3 || !a4)
  {
    if (a4 != a3)
    {
      v7 = google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::NewFromPrototype(a2);
      sub_1001066AC(v5, v7);
      if (!a3)
      {
        (*(*v5 + 8))(v5);
      }

      v5 = v7;
    }
  }

  else
  {
    sub_100106690(a4, a2);
  }

  return sub_1000FCCFC(a1, v5);
}

char *sub_100106690(char *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, sub_1001066DC);
  }

  return result;
}

uint64_t sub_1001066DC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

double google::protobuf::internal::ExtensionSet::AppendToList(uint64_t a1, const google::protobuf::Descriptor *a2, std::mutex **a3, const void **a4)
{
  v35 = a4;
  v6 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v33 = *v6;
    v36[0] = a2;
    v36[1] = a3;
    v36[2] = &v35;
    *&result = sub_1001083F4(v33, (v6 + 8), v36, v34).n128_u64[0];
  }

  else if (*(a1 + 10))
  {
    v7 = (v6 + 24);
    v8 = (v6 + 32 * *(a1 + 10));
    while (1)
    {
      v10 = v7 - 3;
      v9 = *(v7 - 6);
      if (*(v7 - 7) == 1)
      {
        break;
      }

      if ((*(v7 - 6) & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_34:
      v7 += 4;
      if (v10 + 4 == v8)
      {
        return result;
      }
    }

    if (google::protobuf::internal::ExtensionSet::Extension::GetSize((v7 - 2)) <= 0)
    {
      goto LABEL_34;
    }

LABEL_8:
    v12 = *v7;
    v13 = v35;
    if (*v7)
    {
      v15 = v35[1];
      v14 = v35[2];
      if (v15 < v14)
      {
        *v15 = v12;
        v16 = (v15 + 8);
LABEL_33:
        v13[1] = v16;
        goto LABEL_34;
      }

      v20 = (v15 - *v35) >> 3;
      if ((v20 + 1) >> 61)
      {
        goto LABEL_37;
      }

      v21 = v14 - *v35;
      v22 = v21 >> 2;
      if (v21 >> 2 <= (v20 + 1))
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        sub_1000D1B24(v35, v23);
      }

      *(8 * v20) = v12;
      v16 = 8 * v20 + 8;
      v28 = *v13;
      v29 = v13[1] - *v13;
      v30 = (8 * v20 - v29);
    }

    else
    {
      ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(a3, a2, v9);
      v19 = v35[1];
      v18 = v35[2];
      if (v19 < v18)
      {
        *v19 = ExtensionByNumber;
        v16 = (v19 + 1);
        goto LABEL_33;
      }

      v24 = (v19 - *v35) >> 3;
      if ((v24 + 1) >> 61)
      {
LABEL_37:
        sub_100070E64();
      }

      v25 = v18 - *v35;
      v26 = v25 >> 2;
      if (v25 >> 2 <= (v24 + 1))
      {
        v26 = v24 + 1;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v26;
      }

      if (v27)
      {
        sub_1000D1B24(v35, v27);
      }

      v31 = (8 * v24);
      *v31 = ExtensionByNumber;
      v16 = 8 * v24 + 8;
      v28 = *v13;
      v29 = v13[1] - *v13;
      v30 = v31 - v29;
    }

    memcpy(v30, v28, v29);
    v32 = *v13;
    *v13 = v30;
    v13[1] = v16;
    v13[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }

    goto LABEL_33;
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetMessage(google::protobuf::internal::ExtensionSet *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(a1, a2);
  if (v6 && (v6[10] & 1) == 0)
  {
    v10 = *v6;
    if ((v6[10] & 0x10) == 0)
    {
      return *v6;
    }

    v9 = (*(*a4 + 16))(a4, a3);
    v7 = *(*v10 + 24);
    v8 = v10;
  }

  else
  {
    v7 = *(*a4 + 16);
    v8 = a4;
    v9 = a3;
  }

  return v7(v8, v9);
}

uint64_t google::protobuf::internal::ExtensionSet::MutableMessage(google::protobuf::internal::ExtensionSet *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::MessageFactory *a3)
{
  v18 = 0;
  if (google::protobuf::internal::ExtensionSet::MaybeNewExtension(this, *(a2 + 17), a2, &v18))
  {
    v6 = *(a2 + 6);
    if (v6)
    {
      v19 = a2;
      v20 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v6, memory_order_acquire) != -1)
      {
        v22[0] = &v20;
        v22[1] = &v19;
        v21 = v22;
        std::__call_once(v6, &v21, sub_1000B32C4);
      }
    }

    v7 = v18;
    *(v18 + 4) = *(a2 + 14);
    *(v7 + 11) = 0;
    v8 = google::protobuf::FieldDescriptor::message_type(a2);
    v9 = (*(*a3 + 16))(a3, v8);
    *(v18 + 10) &= 0xFu;
    v10 = (*(*v9 + 32))(v9, *this);
    *v18 = v10;
    v11 = v18;
    *(v18 + 10) &= 0xF0u;
    return *v11;
  }

  else
  {
    v13 = v18;
    v14 = *(v18 + 10);
    *(v18 + 10) = v14 & 0xF0;
    v12 = *v13;
    if ((v14 & 0x10) != 0)
    {
      v15 = google::protobuf::FieldDescriptor::message_type(a2);
      v16 = (*(*a3 + 16))(a3, v15);
      return (*(*v12 + 32))(v12, v16);
    }
  }

  return v12;
}

uint64_t google::protobuf::internal::ExtensionSet::UnsafeArenaReleaseMessage(google::protobuf::internal::ExtensionSet *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::MessageFactory *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, *(a2 + 17));
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v6;
  if ((*(v6 + 10) & 0x10) != 0)
  {
    v9 = google::protobuf::FieldDescriptor::message_type(a2);
    v10 = (*(*a3 + 16))(a3, v9);
    v8 = (*(*v8 + 64))(v8, v10);
    if (!*this)
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(this, *(a2 + 17));
  return v8;
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::internal::ExtensionSet::MaybeNewRepeatedExtension(google::protobuf::Arena **this, const google::protobuf::FieldDescriptor *a2)
{
  v8 = 0;
  if (google::protobuf::internal::ExtensionSet::MaybeNewExtension(this, *(a2 + 17), a2, &v8))
  {
    v4 = *(a2 + 6);
    if (v4)
    {
      v9 = a2;
      v10 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v4, memory_order_acquire) != -1)
      {
        v12[0] = &v10;
        v12[1] = &v9;
        v11 = v12;
        std::__call_once(v4, &v11, sub_1000B32C4);
      }
    }

    v5 = v8;
    *(v8 + 8) = *(a2 + 14);
    *(v5 + 9) = 1;
    v6 = sub_1000FCBC0(*this);
    *v8 = v6;
  }

  return v8;
}

uint64_t google::protobuf::internal::ExtensionSet::AddMessage(google::protobuf::Arena **this, const google::protobuf::FieldDescriptor *a2, google::protobuf::MessageFactory *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::MaybeNewRepeatedExtension(this, a2);
  v7 = v6;
  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10 < *v9)
    {
      *(v8 + 8) = v10 + 1;
      v11 = *&v9[2 * v10 + 2];
      if (v11)
      {
        return v11;
      }

      v8 = *v6;
    }
  }

  if (*(v8 + 8))
  {
    v12 = *(*(v8 + 16) + 8);
  }

  else
  {
    v13 = google::protobuf::FieldDescriptor::message_type(a2);
    v12 = (*(*a3 + 16))(a3, v13);
    if (!v12)
    {
      google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set_heavy.cc", 273);
      v14 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: prototype != NULL: ");
      google::protobuf::internal::LogFinisher::operator=(&v16, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
      v12 = 0;
    }
  }

  v11 = (*(*v12 + 32))(v12, *this);
  sub_1000FCCA8(*v7, v11);
  return v11;
}

void sub_100106EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::internal::DescriptorPoolExtensionFinder::Find(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(*(a1 + 8), *(a1 + 24), a2);
  v6 = ExtensionByNumber;
  if (ExtensionByNumber)
  {
    v7 = *(ExtensionByNumber + 48);
    if (v7)
    {
      v20 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v19 = v6;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        v18[0].__r_.__value_.__r.__words[0] = &v20;
        v18[0].__r_.__value_.__l.__size_ = &v19;
        v21 = v18;
        std::__call_once(v7, &v21, sub_1000B32C4);
      }

      v7 = *(v6 + 48);
    }

    v8 = *(v6 + 56);
    *a3 = v8;
    *(a3 + 1) = *(v6 + 60) == 3;
    *(a3 + 2) = *(*(v6 + 120) + 76);
    *(a3 + 24) = v6;
    if (v7)
    {
      v20 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v19 = v6;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        v18[0].__r_.__value_.__r.__words[0] = &v20;
        v18[0].__r_.__value_.__l.__size_ = &v19;
        v21 = v18;
        std::__call_once(v7, &v21, sub_1000B32C4);
      }

      v8 = *(v6 + 56);
    }

    v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v8];
    if (v9 == 10)
    {
      v10 = *(a1 + 16);
      v11 = google::protobuf::FieldDescriptor::message_type(v6);
      v12 = (*(*v10 + 16))(v10, v11);
      *(a3 + 8) = v12;
      if (!v12)
      {
        google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/extension_set_heavy.cc", 308);
        v13 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: output->message_info.prototype != nullptr: ");
        v14 = google::protobuf::internal::LogMessage::operator<<(v13, "Extension factory's GetPrototype() returned NULL for extension: ");
        v15 = google::protobuf::internal::LogMessage::operator<<(v14, *(v6 + 8));
        google::protobuf::internal::LogFinisher::operator=(&v21, &v15->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = *(v6 + 48);
      if (v16)
      {
        v20 = google::protobuf::FieldDescriptor::TypeOnceInit;
        v19 = v6;
        if (atomic_load_explicit(v16, memory_order_acquire) != -1)
        {
          v18[0].__r_.__value_.__r.__words[0] = &v20;
          v18[0].__r_.__value_.__l.__size_ = &v19;
          v21 = v18;
          std::__call_once(v16, &v21, sub_1000B32C4);
        }

        v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 56)];
      }

      if (v9 == 8)
      {
        *(a3 + 8) = sub_100107170;
        *(a3 + 16) = google::protobuf::FieldDescriptor::enum_type(v6);
      }
    }
  }

  return v6 != 0;
}

void sub_100107158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *a1, unint64_t a2, google::protobuf::internal *a3, uint64_t a4, google::protobuf::Arena **a5, int32x2_t *a6)
{
  v11 = a2 >> 3;
  LOBYTE(v17) = 0;
  if (sub_100107250(a1, a2 & 7, a2 >> 3, a4, a6, v16, &v17))
  {
    return sub_100107394(a1, v11, v17, v16, a5, a3, a6);
  }

  if (*a5)
  {
    v15 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v15 = sub_100031428(a5, v12, v13);
  }

  return google::protobuf::internal::UnknownFieldParse(a2, v15, a3);
}

uint64_t sub_100107250(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, _BYTE *a7)
{
  v12 = *(a5 + 96);
  if (v12)
  {
    v13 = *(a5 + 104);
    v14 = (*(*a4 + 152))(a4);
    v18 = &off_1001D1230;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    ExtensionInfoFromFieldNumber = google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(a1, a2, a3, &v18, a6, a7);
    google::protobuf::internal::ExtensionFinder::~ExtensionFinder(&v18);
    if (ExtensionInfoFromFieldNumber)
    {
      return 1;
    }
  }

  else
  {
    v18 = off_1001D0BA0;
    v19 = a4;
    v17 = google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(a1, a2, a3, &v18, a6, a7);
    google::protobuf::internal::ExtensionFinder::~ExtensionFinder(&v18);
    if (v17)
    {
      return 1;
    }
  }

  return 0;
}

char *sub_100107394(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, google::protobuf::Arena **a5, google::protobuf::internal *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = this;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v46 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 1, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedDoubleParser(v46, v8, a7);
        break;
      case 2:
        v47 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 2, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFloatParser(v47, v8, a7);
        break;
      case 3:
        v36 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 3, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt64Parser(v36, v8, a7);
        break;
      case 4:
        v42 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 4, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt64Parser(v42, v8, a7);
        break;
      case 5:
        v28 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 5, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt32Parser(v28, v8, a7);
        break;
      case 6:
        v53 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 6, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed64Parser(v53, v8, a7);
        break;
      case 7:
        v61 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 7, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed32Parser(v61, v8, a7);
        break;
      case 8:
        v44 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 8, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedBoolParser(v44, v8, a7);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        google::protobuf::internal::LogMessage::LogMessage(&v90, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkXPC/install/Root/include/google/protobuf/extension_set_inl.h", 79);
        v13 = google::protobuf::internal::LogMessage::operator<<(&v90, "Non-primitive types can't be packed.");
        google::protobuf::internal::LogFinisher::operator=(&v89, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v90.__r_.__value_.__l.__data_);
        goto LABEL_169;
      case 0xD:
        v29 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 13, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt32Parser(v29, v8, a7);
        break;
      case 0xE:
        v90.__r_.__value_.__r.__words[0] = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v90.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v91 = a5;
        v92 = v11;
        v8 = sub_1001085F8(a7, v8, &v90);
        goto LABEL_169;
      case 0xF:
        v19 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 15, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed32Parser(v19, v8, a7);
        break;
      case 0x10:
        v38 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 16, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed64Parser(v38, v8, a7);
        break;
      case 0x11:
        v16 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 17, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt32Parser(v16, v8, a7);
        break;
      case 0x12:
        v50 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 18, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt64Parser(v50, v8, a7);
        break;
      default:
        goto LABEL_169;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = (a6 + 8);
        v48 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v48, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetDouble(this, a2, 1, v48, *(a4 + 24));
        }

        goto LABEL_169;
      case 2:
        v8 = (a6 + 4);
        v49 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v49, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetFloat(this, a2, 2, v49, *(a4 + 24));
        }

        goto LABEL_169;
      case 3:
        v37 = *a6;
        if ((v37 & 0x8000000000000000) != 0)
        {
          v37 = (*(a6 + 1) << 7) + v37 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v37);
            if (!v8)
            {
              goto LABEL_169;
            }

            v37 = v83;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v41 = 3;
          goto LABEL_157;
        }

        v71 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v72 = 3;
        goto LABEL_159;
      case 4:
        v43 = *a6;
        if ((v43 & 0x8000000000000000) != 0)
        {
          v43 = (*(a6 + 1) << 7) + v43 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v43);
            if (!v8)
            {
              goto LABEL_169;
            }

            v43 = v84;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v54 = *(a4 + 2);
          v55 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v56 = 4;
          goto LABEL_147;
        }

        v73 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v74 = 4;
        goto LABEL_149;
      case 5:
        v31 = *a6;
        if ((v31 & 0x8000000000000000) != 0)
        {
          v31 = (*(a6 + 1) << 7) + v31 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v31);
            if (!v8)
            {
              goto LABEL_169;
            }

            LODWORD(v31) = v82;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v23 = 5;
          v79 = v31;
          goto LABEL_135;
        }

        v69 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v70 = 5;
        v80 = v31;
        goto LABEL_137;
      case 6:
        v8 = (a6 + 8);
        v43 = *a6;
        if (*(a4 + 1) == 1)
        {
          v54 = *(a4 + 2);
          v55 = *(a4 + 24);
          v56 = 6;
LABEL_147:
          google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, v56, v54, v43, v55);
        }

        else
        {
          v73 = *(a4 + 24);
          v74 = 6;
LABEL_149:
          google::protobuf::internal::ExtensionSet::SetUInt64(this, a2, v74, v43, v73);
        }

        goto LABEL_169;
      case 7:
        v8 = (a6 + 4);
        v62 = *a6;
        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          v65 = 7;
          v66 = v62;
          goto LABEL_128;
        }

        v75 = *(a4 + 24);
        v76 = 7;
        v77 = *a6;
        goto LABEL_130;
      case 8:
        v45 = *a6;
        if ((v45 & 0x8000000000000000) != 0)
        {
          v45 = (*(a6 + 1) << 7) + v45 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v45);
            if (!v8)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddBool(v12, v11, 8, *(a4 + 2), v45 != 0, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetBool(v12, v11, 8, v45 != 0, *(a4 + 24));
        }

        goto LABEL_169;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v32 = google::protobuf::internal::ExtensionSet::AddString(this, a2, 9, v15);
        }

        else
        {
          v32 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, 9, v15);
        }

        v33 = v32;
        v34 = *v8;
        if (*v8 < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback(v8, *v8);
          if (!SizeFallback)
          {
            v8 = 0;
            goto LABEL_169;
          }

          v35 = SizeFallback;
          v34 = v68;
        }

        else
        {
          v35 = v8 + 1;
        }

        return sub_1000FCED0(a7, v35, v34, v33);
      case 0xA:
        v57 = *(a4 + 1);
        v58 = *(a4 + 8);
        v59 = *(a4 + 24);
        if (v57 == 1)
        {
          v60 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v58, v59);
        }

        else
        {
          v60 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v58, v59);
        }

        return sub_1000FCF3C(a7, v60, v8, (8 * v11) | 3);
      case 0xB:
        v24 = *(a4 + 1);
        v25 = *(a4 + 8);
        v26 = *(a4 + 24);
        if (v24 == 1)
        {
          v27 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 11, v25, v26);
        }

        else
        {
          v27 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 11, v25, v26);
        }

        return google::protobuf::internal::ParseContext::ParseMessage(a7, v27, v8);
      case 0xD:
        v30 = *a6;
        if ((v30 & 0x8000000000000000) != 0)
        {
          v30 = (*(a6 + 1) << 7) + v30 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v30);
            if (!v8)
            {
              goto LABEL_169;
            }

            LODWORD(v30) = v81;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v65 = 13;
          v66 = v30;
LABEL_128:
          google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, v65, v63, v66, v64);
        }

        else
        {
          v75 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v76 = 13;
          v77 = v30;
LABEL_130:
          google::protobuf::internal::ExtensionSet::SetUInt32(this, a2, v76, v77, v75);
        }

        goto LABEL_169;
      case 0xE:
        v52 = *a6;
        if (v52 < 0)
        {
          v78 = (*(a6 + 1) << 7) + v52;
          v52 = (v78 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v78 - 128));
            if (!v8)
            {
              goto LABEL_169;
            }

            v52 = v85;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if ((*(a4 + 8))(*(a4 + 16), v52))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(v12, v11, 14, *(a4 + 2), v52, *(a4 + 24));
          }

          else
          {
            google::protobuf::internal::ExtensionSet::SetEnum(v12, v11, 14, v52, *(a4 + 24));
          }
        }

        else
        {
          if (*a5)
          {
            v88 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v88 = sub_100031428(a5, v86, v87);
          }

          google::protobuf::UnknownFieldSet::AddVarint(v88, v11, v52);
        }

        goto LABEL_169;
      case 0xF:
        v8 = (a6 + 4);
        v20 = *a6;
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          v23 = 15;
          goto LABEL_121;
        }

        v69 = *(a4 + 24);
        v70 = 15;
        goto LABEL_123;
      case 0x10:
        v8 = (a6 + 8);
        v37 = *a6;
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          v41 = 16;
          goto LABEL_157;
        }

        v71 = *(a4 + 24);
        v72 = 16;
        goto LABEL_159;
      case 0x11:
        v18 = *a6;
        if ((v18 & 0x8000000000000000) != 0)
        {
          v18 = (*(a6 + 1) << 7) + v18 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v18);
            if (!v8)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        v20 = -(v18 & 1) ^ (v18 >> 1);
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v23 = 17;
LABEL_121:
          v79 = v20;
LABEL_135:
          google::protobuf::internal::ExtensionSet::AddInt32(this, a2, v23, v21, v79, v22);
        }

        else
        {
          v69 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v70 = 17;
LABEL_123:
          v80 = v20;
LABEL_137:
          google::protobuf::internal::ExtensionSet::SetInt32(this, a2, v70, v80, v69);
        }

        goto LABEL_169;
      case 0x12:
        v51 = *a6;
        if ((v51 & 0x8000000000000000) != 0)
        {
          v51 = (*(a6 + 1) << 7) + v51 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v51);
            if (!v8)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        v37 = -(v51 & 1) ^ (v51 >> 1);
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v41 = 18;
LABEL_157:
          google::protobuf::internal::ExtensionSet::AddInt64(this, a2, v41, v39, v37, v40);
        }

        else
        {
          v71 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v72 = 18;
LABEL_159:
          google::protobuf::internal::ExtensionSet::SetInt64(this, a2, v72, v37, v71);
        }

LABEL_169:
        result = v8;
        break;
      default:
        goto LABEL_169;
    }
  }

  return result;
}

void sub_10010800C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelfLong(google::protobuf::internal::ExtensionSet *this)
{
  if (*(this + 4) >= 0x101u)
  {
    v5 = *(this + 2);
    v6 = 32 * *(v5 + 16);
    sub_100108894(*v5, (v5 + 8), &v6);
    return v6;
  }

  else
  {
    v1 = 32 * *(this + 5);
    if (*(this + 5))
    {
      v2 = (*(this + 2) + 8);
      v3 = 32 * *(this + 5);
      do
      {
        v1 += google::protobuf::internal::ExtensionSet::Extension::SpaceUsedExcludingSelfLong(v2);
        v2 += 4;
        v3 -= 32;
      }

      while (v3);
    }
  }

  return v1;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::SpaceUsedExcludingSelfLong(uint64_t **this)
{
  v2 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(this + 8)];
  if (*(this + 9) == 1)
  {
    result = 0;
    if (v2 <= 5)
    {
      if (v2 <= 2)
      {
        if (v2 != 1)
        {
          if (v2 != 2)
          {
            return result;
          }

          goto LABEL_25;
        }
      }

      else if (v2 != 3)
      {
LABEL_25:
        v12 = *(*this + 1);
        v13 = 8 * v12;
        goto LABEL_32;
      }

LABEL_31:
      v12 = *(*this + 1);
      v13 = 4 * v12;
LABEL_32:
      v16 = v13 + 24;
      if (v12 <= 0)
      {
        return 16;
      }

      else
      {
        return v16;
      }
    }

    if (v2 > 7)
    {
      switch(v2)
      {
        case 8:
          goto LABEL_31;
        case 9:
          v17 = *this;
          v5 = 8 * *(*this + 3);
          v18 = (*this)[2];
          if (!v18)
          {
            return v5 + 24;
          }

          if (*v18 >= 1)
          {
            v19 = 0;
            do
            {
              v5 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(*&v18[2 * v19++ + 2]) + 24;
              v18 = v17[2];
            }

            while (v19 < *v18);
          }

          break;
        case 10:
          v4 = *this;
          v5 = 8 * *(*this + 3);
          v6 = (*this)[2];
          if (!v6)
          {
            return v5 + 24;
          }

          if (*v6 >= 1)
          {
            v7 = 0;
            do
            {
              v5 += (*(**&v6[2 * v7 + 2] + 136))(*&v6[2 * v7 + 2]);
              ++v7;
              v6 = v4[2];
            }

            while (v7 < *v6);
          }

          break;
        default:
          return result;
      }

      v5 += 8;
      return v5 + 24;
    }

    if (v2 == 6)
    {
      goto LABEL_31;
    }

    v14 = *(*this + 1);
    if (v14 <= 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = (v14 + 8);
    }

    return v15 + 16;
  }

  else if (v2 == 10)
  {
    v8 = *(this + 10);
    v9 = *this;
    v10 = **this;
    if ((v8 & 0x10) != 0)
    {
      v11 = *(v10 + 96);
    }

    else
    {
      v11 = *(v10 + 136);
    }

    return v11();
  }

  else if (v2 == 9)
  {
    return google::protobuf::internal::StringSpaceUsedExcludingSelfLong(*this) + 24;
  }

  else
  {
    return 0;
  }
}

void sub_1001083BC(google::protobuf::internal::ExtensionFinder *a1)
{
  google::protobuf::internal::ExtensionFinder::~ExtensionFinder(a1);

  operator delete();
}

__n128 sub_1001083F4@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 != a2)
  {
    v7 = a1;
    while (1)
    {
      v8 = *(v7 + 8);
      if (*(v7 + 49) == 1)
      {
        break;
      }

      if ((*(v7 + 50) & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_33:
      v30 = v7[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v7[2];
          v32 = *v31 == v7;
          v7 = v31;
        }

        while (!v32);
      }

      v7 = v31;
      if (v31 == a2)
      {
        goto LABEL_39;
      }
    }

    if (google::protobuf::internal::ExtensionSet::Extension::GetSize((v7 + 5)) <= 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    v9 = v7[7];
    v10 = **(a3 + 16);
    if (v9)
    {
      v12 = v10[1];
      v11 = v10[2];
      if (v12 < v11)
      {
        *v12 = v9;
        v13 = (v12 + 8);
LABEL_32:
        v10[1] = v13;
        goto LABEL_33;
      }

      v17 = (v12 - *v10) >> 3;
      if ((v17 + 1) >> 61)
      {
        goto LABEL_40;
      }

      v18 = v11 - *v10;
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
        sub_1000D1B24(v10, v20);
      }

      *(8 * v17) = v9;
      v13 = 8 * v17 + 8;
      v25 = *v10;
      v26 = v10[1] - *v10;
      v27 = (8 * v17 - v26);
    }

    else
    {
      ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(*(a3 + 8), *a3, v8);
      v16 = v10[1];
      v15 = v10[2];
      if (v16 < v15)
      {
        *v16 = ExtensionByNumber;
        v13 = (v16 + 1);
        goto LABEL_32;
      }

      v21 = (v16 - *v10) >> 3;
      if ((v21 + 1) >> 61)
      {
LABEL_40:
        sub_100070E64();
      }

      v22 = v15 - *v10;
      v23 = v22 >> 2;
      if (v22 >> 2 <= (v21 + 1))
      {
        v23 = v21 + 1;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        sub_1000D1B24(v10, v24);
      }

      v28 = (8 * v21);
      *v28 = ExtensionByNumber;
      v13 = 8 * v21 + 8;
      v25 = *v10;
      v26 = v10[1] - *v10;
      v27 = v28 - v26;
    }

    memcpy(v27, v25, v26);
    v29 = *v10;
    *v10 = v27;
    v10[1] = v13;
    v10[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }

    goto LABEL_32;
  }

LABEL_39:
  result = *a3;
  *a4 = *a3;
  *(a4 + 16) = *(a3 + 16);
  return result;
}

google::protobuf::internal *sub_1001085F8(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = (this + 1);
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v14 = result + v5;
        v15 = a3[1];
        v17 = *a3;
        v18 = v15;
        v19 = *(a3 + 4);
        result = sub_100108774(result, v14, &v17);
        if (v14 != result)
        {
          return 0;
        }

        return result;
      }

      v10 = a3[1];
      v17 = *a3;
      v18 = v10;
      v19 = *(a3 + 4);
      result = sub_100108774(result, v8, &v17);
      if (!result)
      {
        return result;
      }

      v11 = *(a1 + 8);
      v12 = result - v11;
      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v9 - v12;
      result = (result + v12);
    }

    v22 = 0;
    v21 = 0;
    v20 = *v11;
    v16 = a3[1];
    v17 = *a3;
    v18 = v16;
    v19 = *(a3 + 4);
    if (sub_100108774((&v20 + v12), &v20 + v13, &v17) != (&v20 + v13))
    {
      return 0;
    }

    return (*(a1 + 8) + v13);
  }

  return result;
}

unsigned __int8 *sub_100108774(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
{
  v3 = this;
  if (this < a2)
  {
    do
    {
      v6 = *v3;
      if (v6 < 0)
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
        v11 = *a3;
        v12 = **a3;
        if (v12 == (*a3)[1])
        {
          v13 = v12 + 1;
          google::protobuf::RepeatedField<int>::Reserve(*a3, v12 + 1);
          *(*(v11 + 1) + 4 * v12) = v6;
        }

        else
        {
          *(*(v11 + 1) + 4 * v12) = v6;
          v13 = v12 + 1;
        }

        *v11 = v13;
      }

      else
      {
        v14 = *(a3 + 8);
        v15 = a3[3];
        if (*v15)
        {
          v16 = ((*v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v16 = sub_100031428(v15, v9, v10);
        }

        google::protobuf::UnknownFieldSet::AddVarint(v16, v14, v6);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

void *sub_100108894(uint64_t **a1, uint64_t **a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::SpaceUsedExcludingSelfLong(v5 + 5);
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

uint64_t *google::protobuf::Reflection::Reflection(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  v7 = *a3;
  v8 = a3[1];
  *(a1 + 5) = a3[2];
  *(a1 + 3) = v8;
  *(a1 + 1) = v7;
  if (!a4)
  {
    a4 = google::protobuf::DescriptorPool::internal_generated_pool(a1);
    a2 = *a1;
  }

  a1[7] = a4;
  a1[8] = a5;
  *(a1 + 18) = *(a2 + 104) - 1;
  return a1;
}

unint64_t google::protobuf::Reflection::GetUnknownFields(google::protobuf::Reflection *this, const google::protobuf::Message *a2)
{
  v2 = *(a2 + *(this + 9));
  if (v2)
  {
    return (v2 & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    return google::protobuf::UnknownFieldSet::default_instance(this);
  }
}

void *google::protobuf::Reflection::MutableUnknownFields(google::protobuf::Reflection *this, google::protobuf::Message *a2, uint64_t a3)
{
  v3 = *(this + 9);
  v4 = *(a2 + v3);
  if (v4)
  {
    return ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return sub_100031428((a2 + v3), a2, a3);
  }
}

uint64_t google::protobuf::Reflection::SpaceUsedLong(google::protobuf::Reflection *this, const google::protobuf::Message *a2)
{
  v4 = *(this + 12);
  v5 = *(a2 + *(this + 9));
  if (v5)
  {
    v6 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v6 = google::protobuf::UnknownFieldSet::default_instance(this);
  }

  v7 = google::protobuf::UnknownFieldSet::SpaceUsedExcludingSelfLong(v6) + v4;
  v8 = *(this + 10);
  if (v8 != -1)
  {
    v7 += google::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelfLong((a2 + v8));
  }

  if ((*(this + 18) & 0x80000000) == 0)
  {
    v9 = 0;
    v10 = a2 + 4;
    do
    {
      v11 = *(*this + 40) + 152 * v9;
      if (*(v11 + 60) == 3)
      {
        v12 = *(v11 + 48);
        if (v12)
        {
          v39 = *(*this + 40) + 152 * v9;
          v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v12, memory_order_acquire) != -1)
          {
            v42 = &v40;
            v43 = &v39;
            v41 = &v42;
            std::__call_once(v12, &v41, sub_1000B32C4);
          }
        }

        v13 = *(v11 + 56);
        v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v13];
        if (v14 > 5)
        {
          if (v14 <= 7)
          {
            if (v14 != 6)
            {
              v26 = *&v10[sub_100113574(this + 8, v11)];
              if (v26 <= 0)
              {
                v27 = 0;
              }

              else
              {
                v27 = (v26 + 8);
              }

              v7 += v27;
              continue;
            }

LABEL_52:
            v24 = *&v10[sub_100113574(this + 8, v11)];
            v25 = 4 * v24;
LABEL_53:
            v28 = v25 + 8;
            if (v24 <= 0)
            {
              v29 = 0;
            }

            else
            {
              v29 = v28;
            }

            v7 += v29;
            continue;
          }

          switch(v14)
          {
            case 8:
              goto LABEL_52;
            case 9:
              v31 = a2 + sub_100113574(this + 8, v11);
              v32 = 8 * *(v31 + 3);
              v33 = *(v31 + 2);
              if (v33)
              {
                if (*v33 >= 1)
                {
                  v34 = 0;
                  do
                  {
                    v32 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(*&v33[2 * v34++ + 2]) + 24;
                    v33 = *(v31 + 2);
                  }

                  while (v34 < *v33);
                }

LABEL_68:
                v32 += 8;
              }

LABEL_69:
              v7 += v32;
              break;
            case 10:
              v20 = *(v11 + 48);
              if (v20)
              {
                v39 = v11;
                v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
                if (atomic_load_explicit(v20, memory_order_acquire) != -1)
                {
                  v42 = &v40;
                  v43 = &v39;
                  v41 = &v42;
                  std::__call_once(v20, &v41, sub_1000B32C4);
                }

                LODWORD(v13) = *(v11 + 56);
              }

              if (v13 != 11 || !google::protobuf::FieldDescriptor::is_map_message_type(v11))
              {
                v35 = a2 + sub_100113574(this + 8, v11);
                v32 = 8 * *(v35 + 3);
                v36 = *(v35 + 2);
                if (v36)
                {
                  if (*v36 >= 1)
                  {
                    v37 = 0;
                    do
                    {
                      v32 += (*(**&v36[2 * v37 + 2] + 136))(*&v36[2 * v37 + 2]);
                      ++v37;
                      v36 = *(v35 + 2);
                    }

                    while (v37 < *v36);
                  }

                  goto LABEL_68;
                }

                goto LABEL_69;
              }

              v21 = sub_100113574(this + 8, v11);
              v22 = google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfLong((a2 + v21));
              goto LABEL_43;
          }
        }

        else
        {
          if (v14 > 2)
          {
            if (v14 == 3)
            {
              goto LABEL_52;
            }

LABEL_46:
            v24 = *&v10[sub_100113574(this + 8, v11)];
            v25 = 8 * v24;
            goto LABEL_53;
          }

          if (v14 == 1)
          {
            goto LABEL_52;
          }

          if (v14 == 2)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v15 = *(v11 + 88);
        if (!v15 || *(v15 + 24) == 1 && (*(**(v15 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v15 - *(*(v15 + 16) + 48)) >> 4)) == *(v11 + 68))
        {
          v16 = *(v11 + 48);
          if (v16)
          {
            v39 = *(*this + 40) + 152 * v9;
            v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v16, memory_order_acquire) != -1)
            {
              v42 = &v40;
              v43 = &v39;
              v41 = &v42;
              std::__call_once(v16, &v41, sub_1000B32C4);
            }
          }

          v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v11 + 56)];
          if (v17 != 10)
          {
            if (v17 == 9)
            {
              if ((v18 = *(a2 + sub_100113574(this + 8, v11)) & 0xFFFFFFFFFFFFFFFELL, (v19 = *(v11 + 88)) != 0) && (*(v19 + 24) != 1 || *(**(v19 + 32) + 65) != 1) || v18 != (*sub_100113A14(this + 1, v11) & 0xFFFFFFFFFFFFFFFELL))
              {
                v7 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(v18) + 24;
              }
            }

            continue;
          }

          if (*(this + 1) != a2)
          {
            v23 = *(a2 + sub_100113574(this + 8, v11));
            if (v23)
            {
              v22 = (*(*v23 + 136))(v23);
LABEL_43:
              v7 += v22;
            }
          }
        }
      }
    }

    while (v9++ < *(this + 18));
  }

  return v7;
}

void google::protobuf::Reflection::SwapField(google::protobuf::Reflection *this, google::protobuf::Message *a2, google::protobuf::Message *a3, const google::protobuf::FieldDescriptor *a4)
{
  v8 = *(a4 + 6);
  if (*(a4 + 15) != 3)
  {
    if (v8)
    {
      v82 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v81 = a4;
      if (atomic_load_explicit(v8, memory_order_acquire) != -1)
      {
        __p[0].__r_.__value_.__r.__words[0] = &v82;
        __p[0].__r_.__value_.__l.__size_ = &v81;
        v79 = __p;
        std::__call_once(v8, &v79, sub_1000B32C4);
      }
    }

    v13 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)];
    if (v13 > 5)
    {
      if (v13 <= 7)
      {
        if (v13 == 6)
        {
          v45 = sub_100113574(this + 8, a4);
          v46 = sub_100113574(this + 8, a4);
          v47 = *(a2 + v45);
          *(a2 + v45) = *(a3 + v46);
          *(a3 + v46) = v47;
        }

        else
        {
          v38 = sub_100113574(this + 8, a4);
          v39 = sub_100113574(this + 8, a4);
          v40 = *(a2 + v38);
          *(a2 + v38) = *(a3 + v39);
          *(a3 + v39) = v40;
        }

        return;
      }

      switch(v13)
      {
        case 8:
          goto LABEL_47;
        case 9:
          v54 = *(this + 9);
          v55 = *(a2 + v54);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = *(a3 + v54);
          if (v56)
          {
            v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
          }

          v57 = (a2 + sub_100113574(this + 8, a4));
          v58 = (a3 + sub_100113574(this + 8, a4));
          v59 = sub_100113A14(this + 1, a4);
          v60 = *v57;
          if (v55 == v56)
          {
            *v57 = *v58;
            *v58 = v60;
          }

          else
          {
            v61 = (*v59 & 0xFFFFFFFFFFFFFFFELL);
            v62 = *v58;
            if (v60 == v61)
            {
              if (v62 != v61)
              {
                google::protobuf::internal::ArenaStringPtr::Set(v57, v61, v62 & 0xFFFFFFFFFFFFFFFELL, v55);
                *v58 = v61;
              }
            }

            else if (v62 == v61)
            {
              google::protobuf::internal::ArenaStringPtr::Set(v58, v61, v60 & 0xFFFFFFFFFFFFFFFELL, v56);
              *v57 = v61;
            }

            else
            {
              v63 = v60 & 0xFFFFFFFFFFFFFFFELL;
              if (*(v63 + 23) < 0)
              {
                sub_1000B32D8(__p, *v63, *(v63 + 8));
                v62 = *v58;
              }

              else
              {
                v64 = *v63;
                __p[0].__r_.__value_.__r.__words[2] = *(v63 + 16);
                *&__p[0].__r_.__value_.__l.__data_ = v64;
              }

              google::protobuf::internal::ArenaStringPtr::Set(v57, v61, v62 & 0xFFFFFFFFFFFFFFFELL, v55);
              google::protobuf::internal::ArenaStringPtr::Set(v58, v61, __p, v56);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }
            }
          }

          return;
        case 10:
          v20 = *(this + 9);
          v21 = *(a2 + v20);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = *(a3 + v20);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = sub_100113574(this + 8, a4);
          v24 = sub_100113574(this + 8, a4);
          v25 = *(a2 + v23);
          if (v21 == v22)
          {
            *(a2 + v23) = *(a3 + v24);
            *(a3 + v24) = v25;
            return;
          }

          v26 = *(a3 + v24);
          if (v25)
          {
            if (v26)
            {
              (*(*v25 + 152))(v25);
              google::protobuf::Reflection::Swap(v27, *(a2 + v23), *(a3 + v24));
              return;
            }

            v75 = *(a3 + 1);
            if (v75)
            {
              v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
            }

            v76 = (*(*v25 + 32))(v25, v75);
            *(a3 + v24) = v76;
            (*(*v76 + 112))(v76, *(a2 + v23));
            v73 = this;
            v74 = a2;
          }

          else
          {
            if (!v26)
            {
              return;
            }

            v71 = *(a2 + 1);
            if (v71)
            {
              v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
            }

            v72 = (*(*v26 + 32))(*(a3 + v24), v71);
            *(a2 + v23) = v72;
            (*(*v72 + 112))(v72, *(a3 + v24));
            v73 = this;
            v74 = a3;
          }

          google::protobuf::Reflection::ClearField(v73, v74, a4);
          return;
      }
    }

    else
    {
      if (v13 > 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
            v14 = sub_100113574(this + 8, a4);
            v15 = sub_100113574(this + 8, a4);
            v16 = *(a2 + v14);
            *(a2 + v14) = *(a3 + v15);
            *(a3 + v15) = v16;
            return;
          }

          goto LABEL_46;
        }

LABEL_47:
        v33 = sub_100113574(this + 8, a4);
        v34 = sub_100113574(this + 8, a4);
        v35 = *(a2 + v33);
        *(a2 + v33) = *(a3 + v34);
        *(a3 + v34) = v35;
        return;
      }

      if (v13 == 1)
      {
        goto LABEL_47;
      }

      if (v13 == 2)
      {
LABEL_46:
        v30 = sub_100113574(this + 8, a4);
        v31 = sub_100113574(this + 8, a4);
        v32 = *(a2 + v30);
        *(a2 + v30) = *(a3 + v31);
        *(a3 + v31) = v32;
        return;
      }
    }

    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 471);
    v65 = google::protobuf::internal::LogMessage::operator<<(__p, "Unimplemented type: ");
    v67 = *(a4 + 6);
    if (v67)
    {
      v81 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v78 = a4;
      if (atomic_load_explicit(v67, memory_order_acquire) != -1)
      {
        v79 = &v81;
        v80 = &v78;
        v82 = &v79;
        std::__call_once(v67, &v82, sub_1000B32C4);
      }
    }

    goto LABEL_75;
  }

  if (v8)
  {
    v82 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v81 = a4;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      __p[0].__r_.__value_.__r.__words[0] = &v82;
      __p[0].__r_.__value_.__l.__size_ = &v81;
      v79 = __p;
      std::__call_once(v8, &v79, sub_1000B32C4);
    }
  }

  v9 = *(a4 + 14);
  v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v9];
  if (v10 <= 5)
  {
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v48 = (a2 + sub_100113574(this + 8, a4));
        v49 = sub_100113574(this + 8, a4);
        google::protobuf::RepeatedField<unsigned int>::Swap(v48, (a3 + v49));
      }

      else if (v10 == 4)
      {
        v50 = (a2 + sub_100113574(this + 8, a4));
        v51 = sub_100113574(this + 8, a4);
        google::protobuf::RepeatedField<unsigned long long>::Swap(v50, (a3 + v51));
      }

      else
      {
        v11 = (a2 + sub_100113574(this + 8, a4));
        v12 = sub_100113574(this + 8, a4);
        google::protobuf::RepeatedField<double>::Swap(v11, (a3 + v12));
      }

      return;
    }

    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v28 = (a2 + sub_100113574(this + 8, a4));
        v29 = sub_100113574(this + 8, a4);
        google::protobuf::RepeatedField<long long>::Swap(v28, (a3 + v29));
        return;
      }

      goto LABEL_68;
    }

    goto LABEL_52;
  }

  if (v10 > 7)
  {
    if (v10 != 8)
    {
      if (v10 == 9)
      {
        v52 = (a2 + sub_100113574(this + 8, a4));
        v53 = a3 + sub_100113574(this + 8, a4);
        if (*v53 != *v52)
        {
          sub_100113AE4(v52, v53);
          return;
        }
      }

      else
      {
        if (v10 != 10)
        {
LABEL_68:
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 394);
          v65 = google::protobuf::internal::LogMessage::operator<<(__p, "Unimplemented type: ");
          v66 = *(a4 + 6);
          if (v66)
          {
            v81 = google::protobuf::FieldDescriptor::TypeOnceInit;
            v78 = a4;
            if (atomic_load_explicit(v66, memory_order_acquire) != -1)
            {
              v79 = &v81;
              v80 = &v78;
              v82 = &v79;
              std::__call_once(v66, &v82, sub_1000B32C4);
            }
          }

LABEL_75:
          v68 = google::protobuf::internal::LogMessage::operator<<(v65, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)]);
          google::protobuf::internal::LogFinisher::operator=(&v79, &v68->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
          return;
        }

        v17 = *(a4 + 6);
        if (v17)
        {
          v82 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v81 = a4;
          if (atomic_load_explicit(v17, memory_order_acquire) != -1)
          {
            __p[0].__r_.__value_.__r.__words[0] = &v82;
            __p[0].__r_.__value_.__l.__size_ = &v81;
            v79 = __p;
            std::__call_once(v17, &v79, sub_1000B32C4);
          }

          LODWORD(v9) = *(a4 + 14);
        }

        if (v9 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a4))
        {
          v18 = a2 + sub_100113574(this + 8, a4);
          v19 = sub_100113574(this + 8, a4);
          (*(*v18 + 80))(v18, a3 + v19);
          return;
        }

        v52 = (a2 + sub_100113574(this + 8, a4));
        v53 = a3 + sub_100113574(this + 8, a4);
        if (*v53 != *v52)
        {
          sub_100113CBC(v52, v53);
          return;
        }
      }

      v69 = v52[1];
      v70 = v52[2];
      *(v52 + 1) = *(v53 + 8);
      *(v53 + 1) = v69;
      *(v53 + 2) = v70;
      return;
    }

LABEL_52:
    v41 = (a2 + sub_100113574(this + 8, a4));
    v42 = sub_100113574(this + 8, a4);
    google::protobuf::RepeatedField<int>::Swap(v41, (a3 + v42));
    return;
  }

  if (v10 == 6)
  {
    v43 = (a2 + sub_100113574(this + 8, a4));
    v44 = sub_100113574(this + 8, a4);
    google::protobuf::RepeatedField<float>::Swap(v43, (a3 + v44));
  }

  else
  {
    v36 = (a2 + sub_100113574(this + 8, a4));
    v37 = sub_100113574(this + 8, a4);
    google::protobuf::RepeatedField<BOOL>::Swap(v36, (a3 + v37));
  }
}

void sub_1001097F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *google::protobuf::Reflection::Swap(unsigned int *this, google::protobuf::Message *a2, google::protobuf::Message *a3)
{
  if (a2 != a3)
  {
    v5 = this;
    (*(*a2 + 152))(a2);
    if (v6 != v5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v58, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 596);
      v7 = google::protobuf::internal::LogMessage::operator<<(v58, "CHECK failed: (message1->GetReflection()) == (this): ");
      v8 = google::protobuf::internal::LogMessage::operator<<(v7, "First argument to Swap() (of type ");
      v9 = (*(*a2 + 152))(a2);
      v10 = google::protobuf::internal::LogMessage::operator<<(v8, *(v9 + 8));
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, ") is not compatible with this reflection object (which is for type ");
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, *(*v5 + 8));
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, ").  Note that the exact same class is required; not just the same descriptor.");
      google::protobuf::internal::LogFinisher::operator=(&v57, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v58[0].__r_.__value_.__l.__data_);
    }

    (*(*a3 + 152))(a3);
    if (v15 != v5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v58, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 604);
      v16 = google::protobuf::internal::LogMessage::operator<<(v58, "CHECK failed: (message2->GetReflection()) == (this): ");
      v17 = google::protobuf::internal::LogMessage::operator<<(v16, "Second argument to Swap() (of type ");
      v18 = (*(*a3 + 152))(a3);
      v19 = google::protobuf::internal::LogMessage::operator<<(v17, *(v18 + 8));
      v20 = google::protobuf::internal::LogMessage::operator<<(v19, ") is not compatible with this reflection object (which is for type ");
      v21 = google::protobuf::internal::LogMessage::operator<<(v20, *(*v5 + 8));
      v22 = google::protobuf::internal::LogMessage::operator<<(v21, ").  Note that the exact same class is required; not just the same descriptor.");
      google::protobuf::internal::LogFinisher::operator=(&v57, &v22->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v58[0].__r_.__value_.__l.__data_);
    }

    v23 = v5[9];
    v24 = *(a2 + v23);
    v25 = v24;
    if (v24)
    {
      v25 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = *(a3 + v23);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v25 == v26)
    {
      v29 = v5[8];
      if (v29 != -1)
      {
        v30 = *(*v5 + 104);
        if (v30 >= 1)
        {
          v31 = 0;
          v32 = (a2 + v29);
          v33 = (a3 + v29);
          v34 = (*(*v5 + 40) + 88);
          do
          {
            if (*(v34 - 7) != 3)
            {
              v35 = *v34;
              if (!*v34 || *(v35 + 24) == 1 && (*(**(v35 + 32) + 65) & 1) != 0)
              {
                ++v31;
              }
            }

            v34 += 19;
            --v30;
          }

          while (v30);
          if (v31 >= 1)
          {
            v36 = (v31 + 31) >> 5;
            do
            {
              v37 = *v32;
              *v32++ = *v33;
              *v33++ = v37;
              --v36;
            }

            while (v36);
          }
        }
      }

      v38 = v5[18];
      if ((v38 & 0x80000000) == 0)
      {
        v39 = -1;
        v40 = 88;
        do
        {
          v41 = (*(*v5 + 40) + v40);
          v44 = *v41;
          v42 = (v41 - 11);
          v43 = v44;
          if (!v44 || *(v43 + 24) == 1 && *(**(v43 + 32) + 65) == 1)
          {
            google::protobuf::Reflection::SwapField(v5, a2, a3, v42);
            v38 = v5[18];
          }

          ++v39;
          v40 += 152;
        }

        while (v39 < v38);
      }

      v45 = *(*v5 + 108);
      if (v45 >= 1)
      {
        v46 = 0;
        v47 = 48 * v45;
        do
        {
          v48 = *(*v5 + 48) + v46;
          if (*(v48 + 24) != 1 || (*(**(v48 + 32) + 65) & 1) == 0)
          {
            google::protobuf::Reflection::SwapOneofField(v5, a2, a3, v48);
          }

          v46 += 48;
        }

        while (v47 != v46);
      }

      v49 = v5[10];
      if (v49 != -1)
      {
        google::protobuf::internal::ExtensionSet::Swap((a2 + v49), (a3 + v49));
      }

      v50 = v5[9];
      v51 = *(a2 + v50);
      if (v51)
      {
        v52 = ((v51 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v52 = sub_100031428((a2 + v50), v24, v14);
        v50 = v5[9];
      }

      v53 = *(a3 + v50);
      if (v53)
      {
        this = ((v53 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        this = sub_100031428((a3 + v50), v24, v14);
      }

      v54 = *v52;
      *v52 = *this;
      *this = v54;
      v55 = v52[1];
      v52[1] = *(this + 1);
      *(this + 1) = v55;
      v56 = v52[2];
      v52[2] = *(this + 2);
      *(this + 2) = v56;
    }

    else
    {
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = (*(*a2 + 32))(a2, v24);
      (*(*v27 + 120))(v27, a3);
      (*(*a3 + 112))(a3, a2);
      this = google::protobuf::Reflection::Swap(v5, a2, v27);
      v28 = *(a2 + v5[9]);
      if (v28)
      {
        if (!*(v28 & 0xFFFFFFFFFFFFFFFELL))
        {
          return (*(*v27 + 8))(v27);
        }
      }

      else if (!v28)
      {
        return (*(*v27 + 8))(v27);
      }
    }
  }

  return this;
}

void sub_100109D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Reflection::ClearField(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "ClearField", "Field does not match message type.");
  }

  if (*(a3 + 67) == 1)
  {
    v7 = *(a3 + 17);
    v8 = (a2 + *(this + 10));

    google::protobuf::internal::ExtensionSet::ClearExtension(v8, v7);
    return;
  }

  if (*(a3 + 15) != 3)
  {
    v12 = *(a3 + 11);
    if (v12 && (*(v12 + 24) != 1 || (*(**(v12 + 32) + 65) & 1) == 0))
    {
      if (*(a2 + *(this + 11) - 1431655764 * ((v12 - *(*(v12 + 16) + 48)) >> 4)) == *(a3 + 17))
      {

        google::protobuf::Reflection::ClearOneof(this, a2, v12);
      }

      return;
    }

    if (!sub_10010C200(this, a2, a3))
    {
      return;
    }

    v13 = *(this + 8);
    if (v13 != -1)
    {
      if (*(a3 + 67))
      {
        v14 = *(a3 + 12);
        v15 = (v14 ? v14 + 80 : *(a3 + 5) + 128);
      }

      else
      {
        v15 = (*(a3 + 10) + 40);
      }

      v20 = *(*(this + 3) + ((0x286BCA1B00000000 * ((a3 - *v15) >> 3)) >> 30));
      if (v20 != -1)
      {
        *(a2 + v13 + ((v20 >> 3) & 0x1FFFFFFC)) &= ~(1 << v20);
      }
    }

    v21 = *(a3 + 6);
    if (v21)
    {
      v34 = a3;
      v35 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v21, memory_order_acquire) != -1)
      {
        v37 = &v35;
        v38 = &v34;
        v36 = &v37;
        std::__call_once(v21, &v36, sub_1000B32C4);
      }
    }

    v22 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)];
    if (v22 <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 != 1)
        {
          if (v22 != 2)
          {
            return;
          }

LABEL_62:
          v25 = *(a3 + 18);
          *(a2 + sub_100113574(this + 8, a3)) = v25;
          return;
        }
      }

      else if (v22 != 3)
      {
        if (v22 != 4)
        {
          v23 = *(a3 + 18);
          *(a2 + sub_100113574(this + 8, a3)) = v23;
          return;
        }

        goto LABEL_62;
      }

      v27 = *(a3 + 36);
LABEL_68:
      *(a2 + sub_100113574(this + 8, a3)) = v27;
      return;
    }

    if (v22 <= 7)
    {
      if (v22 == 6)
      {
        v28 = *(a3 + 36);
        *(a2 + sub_100113574(this + 8, a3)) = v28;
      }

      else
      {
        v26 = *(a3 + 144);
        *(a2 + sub_100113574(this + 8, a3)) = v26;
      }

      return;
    }

    if (v22 == 8)
    {
      v27 = *(google::protobuf::FieldDescriptor::default_value_enum(a3) + 16);
      goto LABEL_68;
    }

    if (v22 == 9)
    {
      v29 = *sub_100113A14(this + 1, a3);
      v30 = a2 + sub_100113574(this + 8, a3);
      v31 = *(a2 + *(this + 9));
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::SetAllocated(v30, v29 & 0xFFFFFFFFFFFFFFFELL, 0, v31);
      return;
    }

    if (v22 != 10)
    {
      return;
    }

    if (sub_10010C810(this + 8, a3) != -1)
    {
      v24 = sub_100113574(this + 8, a3);
      (*(**(a2 + v24) + 40))(*(a2 + v24));
      return;
    }

    v32 = *(a2 + *(this + 9));
    if (v32)
    {
      if (!*(v32 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_74:
        v33 = *(a2 + sub_100113574(this + 8, a3));
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }
      }
    }

    else if (!v32)
    {
      goto LABEL_74;
    }

    *(a2 + sub_100113574(this + 8, a3)) = 0;
    return;
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v34 = a3;
    v35 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v37 = &v35;
      v38 = &v34;
      v36 = &v37;
      std::__call_once(v9, &v36, sub_1000B32C4);
    }
  }

  v10 = *(a3 + 14);
  v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v10];
  if (v11 <= 5)
  {
    if (v11 <= 2 && v11 != 1 && v11 != 2)
    {
      return;
    }

LABEL_38:
    *(a2 + sub_100113574(this + 8, a3)) = 0;
    return;
  }

  if (v11 <= 8)
  {
    goto LABEL_38;
  }

  if (v11 == 9)
  {
    v18 = sub_100113574(this + 8, a3);
    sub_1000ED4AC(a2 + v18);
  }

  else if (v11 == 10)
  {
    v16 = *(a3 + 6);
    if (v16)
    {
      v34 = a3;
      v35 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v16, memory_order_acquire) != -1)
      {
        v37 = &v35;
        v38 = &v34;
        v36 = &v37;
        std::__call_once(v16, &v36, sub_1000B32C4);
      }

      LODWORD(v10) = *(a3 + 14);
    }

    if (v10 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
    {
      v17 = sub_100113574(this + 8, a3);
      (*(*(a2 + v17) + 96))(a2 + v17);
    }

    else
    {
      v19 = sub_100113574(this + 8, a3);
      sub_10010C878(a2 + v19);
    }
  }
}

void google::protobuf::Reflection::SwapOneofField(google::protobuf::Reflection *this, google::protobuf::Message *a2, google::protobuf::Message *a3, const google::protobuf::OneofDescriptor *a4)
{
  v8 = *(this + 11) - 1431655764 * ((a4 - *(*(a4 + 2) + 48)) >> 4);
  v9 = *(a2 + v8);
  v10 = *(a3 + v8);
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  memset(&v44[48], 0, 7);
  if (!v9)
  {
    v14 = 0;
    v38 = 0;
    v15 = 0;
    v16 = 0;
    FieldByNumber = 0;
    goto LABEL_11;
  }

  FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(*this, v9);
  v12 = *(FieldByNumber + 48);
  if (v12)
  {
    v54 = FieldByNumber;
    v55 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v12, memory_order_acquire) != -1)
    {
      *v44 = &v55;
      *&v44[8] = &v54;
      v56 = v44;
      std::__call_once(v12, &v56, sub_1000B32C4);
    }
  }

  v13 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 56)];
  if (v13 > 5)
  {
    if (v13 <= 7)
    {
      v14 = 0;
      v38 = 0;
      v15 = 0;
      v16 = 0;
      if (v13 == 6)
      {
        v48 = *(a2 + sub_100113574(this + 8, FieldByNumber));
      }

      else
      {
        v46 = *(a2 + sub_100113574(this + 8, FieldByNumber));
      }

      goto LABEL_11;
    }

    switch(v13)
    {
      case 8:
        v14 = 0;
        v38 = 0;
        v15 = 0;
        v16 = 0;
        v45 = *(a2 + sub_100113574(this + 8, FieldByNumber));
        goto LABEL_11;
      case 9:
        google::protobuf::Reflection::GetString(this, a2, FieldByNumber, v44);
        v16 = 0;
        v38 = *&v44[8];
        v14 = *v44;
        *&v44[48] = *&v44[16];
        *&v44[51] = *&v44[19];
        v15 = v44[23];
        goto LABEL_11;
      case 10:
        v15 = 0;
        v16 = google::protobuf::Reflection::ReleaseMessage(this, a2, FieldByNumber, 0);
        v14 = 0;
        v38 = 0;
        goto LABEL_11;
    }
  }

  else
  {
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v14 = 0;
        v38 = 0;
        v15 = 0;
        v16 = 0;
        v50 = *(a2 + sub_100113574(this + 8, FieldByNumber));
      }

      else
      {
        v14 = 0;
        v38 = 0;
        v15 = 0;
        v16 = 0;
        if (v13 == 4)
        {
          v49 = *(a2 + sub_100113574(this + 8, FieldByNumber));
        }

        else
        {
          v47 = *(a2 + sub_100113574(this + 8, FieldByNumber));
        }
      }

      goto LABEL_11;
    }

    if (v13 == 1)
    {
      v14 = 0;
      v38 = 0;
      v15 = 0;
      v16 = 0;
      v52 = *(a2 + sub_100113574(this + 8, FieldByNumber));
      goto LABEL_11;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v38 = 0;
      v15 = 0;
      v16 = 0;
      v51 = *(a2 + sub_100113574(this + 8, FieldByNumber));
      goto LABEL_11;
    }
  }

  google::protobuf::internal::LogMessage::LogMessage(v44, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 522);
  v24 = google::protobuf::internal::LogMessage::operator<<(v44, "Unimplemented type: ");
  v25 = *(FieldByNumber + 48);
  if (v25)
  {
    v53 = FieldByNumber;
    v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v25, memory_order_acquire) != -1)
    {
      v56 = &v54;
      v57 = &v53;
      v55 = &v56;
      std::__call_once(v25, &v55, sub_1000B32C4);
    }
  }

  v26 = google::protobuf::internal::LogMessage::operator<<(v24, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 56)]);
  google::protobuf::internal::LogFinisher::operator=(&v56, &v26->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(v44);
  v14 = 0;
  v38 = 0;
  v15 = 0;
  v16 = 0;
LABEL_11:
  if (!v10)
  {
    google::protobuf::Reflection::ClearOneof(this, a2, a4);
    goto LABEL_61;
  }

  v17 = google::protobuf::Descriptor::FindFieldByNumber(*this, v10);
  v18 = *(v17 + 48);
  if (v18)
  {
    v54 = v17;
    v55 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v18, memory_order_acquire) != -1)
    {
      *v44 = &v55;
      *&v44[8] = &v54;
      v56 = v44;
      std::__call_once(v18, &v56, sub_1000B32C4);
    }
  }

  v19 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v17 + 56)];
  if (v19 <= 5)
  {
    if (v19 > 2)
    {
      if (v19 != 3)
      {
        if (v19 != 4)
        {
          v20 = sub_100113574(this + 8, v17);
          sub_10010B48C(this, a2, v17, (a3 + v20));
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      goto LABEL_53;
    }

    if (v19 != 1)
    {
      if (v19 == 2)
      {
LABEL_38:
        v22 = sub_100113574(this + 8, v17);
        sub_10010B1A4(this, a2, v17, (a3 + v22));
        goto LABEL_61;
      }

      goto LABEL_57;
    }

LABEL_53:
    v28 = sub_100113574(this + 8, v17);
    sub_10010B034(this, a2, v17, (a3 + v28));
    goto LABEL_61;
  }

  if (v19 <= 7)
  {
    if (v19 == 6)
    {
      v27 = sub_100113574(this + 8, v17);
      sub_10010B314(this, a2, v17, (a3 + v27));
    }

    else
    {
      v23 = sub_100113574(this + 8, v17);
      sub_10010B604(this, a2, v17, a3 + v23);
    }

    goto LABEL_61;
  }

  if (v19 == 8)
  {
    goto LABEL_53;
  }

  if (v19 != 9)
  {
    if (v19 == 10)
    {
      v21 = google::protobuf::Reflection::ReleaseMessage(this, a3, v17, 0);
      google::protobuf::Reflection::SetAllocatedMessage(this, a2, v21, v17);
      goto LABEL_61;
    }

LABEL_57:
    google::protobuf::internal::LogMessage::LogMessage(v44, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 553);
    v29 = google::protobuf::internal::LogMessage::operator<<(v44, "Unimplemented type: ");
    v30 = *(v17 + 48);
    if (v30)
    {
      v53 = v17;
      v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v30, memory_order_acquire) != -1)
      {
        v56 = &v54;
        v57 = &v53;
        v55 = &v56;
        std::__call_once(v30, &v55, sub_1000B32C4);
      }
    }

    v31 = google::protobuf::internal::LogMessage::operator<<(v29, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v17 + 56)]);
    google::protobuf::internal::LogFinisher::operator=(&v56, &v31->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(v44);
    goto LABEL_61;
  }

  google::protobuf::Reflection::GetString(this, a3, v17, __p);
  google::protobuf::Reflection::SetString(this, a2, v17, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_61:
  if (!v9)
  {
    google::protobuf::Reflection::ClearOneof(this, a3, a4);
    goto LABEL_96;
  }

  v32 = *(FieldByNumber + 48);
  if (v32)
  {
    v54 = FieldByNumber;
    v55 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v32, memory_order_acquire) != -1)
    {
      *v44 = &v55;
      *&v44[8] = &v54;
      v56 = v44;
      std::__call_once(v32, &v56, sub_1000B32C4);
    }
  }

  v33 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 56)];
  if (v33 <= 5)
  {
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        sub_10010B034(this, a3, FieldByNumber, &v50);
      }

      else if (v33 == 4)
      {
        sub_10010B1A4(this, a3, FieldByNumber, &v49);
      }

      else
      {
        sub_10010B48C(this, a3, FieldByNumber, &v47);
      }

      goto LABEL_96;
    }

    if (v33 != 1)
    {
      if (v33 == 2)
      {
        sub_10010B1A4(this, a3, FieldByNumber, &v51);
        goto LABEL_96;
      }

      goto LABEL_89;
    }

    v34 = &v52;
LABEL_85:
    sub_10010B034(this, a3, FieldByNumber, v34);
    goto LABEL_96;
  }

  if (v33 <= 7)
  {
    if (v33 == 6)
    {
      sub_10010B314(this, a3, FieldByNumber, &v48);
    }

    else
    {
      sub_10010B604(this, a3, FieldByNumber, &v46);
    }

    goto LABEL_96;
  }

  if (v33 == 8)
  {
    v34 = &v45;
    goto LABEL_85;
  }

  if (v33 != 9)
  {
    if (v33 == 10)
    {
      google::protobuf::Reflection::SetAllocatedMessage(this, a3, v16, FieldByNumber);
      goto LABEL_96;
    }

LABEL_89:
    google::protobuf::internal::LogMessage::LogMessage(v44, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 585);
    v35 = google::protobuf::internal::LogMessage::operator<<(v44, "Unimplemented type: ");
    v36 = *(FieldByNumber + 48);
    if (v36)
    {
      v53 = FieldByNumber;
      v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v36, memory_order_acquire) != -1)
      {
        v56 = &v54;
        v57 = &v53;
        v55 = &v56;
        std::__call_once(v36, &v55, sub_1000B32C4);
      }
    }

    v37 = google::protobuf::internal::LogMessage::operator<<(v35, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 56)]);
    google::protobuf::internal::LogFinisher::operator=(&v56, &v37->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(v44);
    goto LABEL_96;
  }

  if (v15 < 0)
  {
    sub_1000B32D8(__dst, v14, v38);
  }

  else
  {
    __dst[0] = v14;
    __dst[1] = v38;
    *v40 = *&v44[48];
    *&v40[3] = *&v44[51];
    v41 = v15;
  }

  google::protobuf::Reflection::SetString(this, a3, FieldByNumber, __dst);
  if (v41 < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_96:
  if (v15 < 0)
  {
    operator delete(v14);
  }
}

void sub_10010AD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a23);
  if (v24 < 0)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Reflection::ReleaseMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::MessageFactory *a4)
{
  v6 = google::protobuf::Reflection::UnsafeArenaReleaseMessage(this, a2, a3, a4);
  v7 = v6;
  v8 = *(a2 + *(this + 9));
  if (v8)
  {
    v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = (*(*v6 + 24))(v6);
    (*(*v10 + 112))(v10, v7);
    return v10;
  }

  return v7;
}

void google::protobuf::Reflection::GetString(google::protobuf::Reflection *this@<X0>, const google::protobuf::Message *a2@<X1>, const google::protobuf::FieldDescriptor *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetString", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetString", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v17 = a3;
    v18 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v20[0] = &v18;
      v20[1] = &v17;
      v19 = v20;
      std::__call_once(v9, &v19, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
    sub_10010C8E8(*this, a3, "GetString", 9);
  }

  if (*(a3 + 67) == 1)
  {
    String = google::protobuf::internal::ExtensionSet::GetString((a2 + *(this + 10)), *(a3 + 17), *(a3 + 18));
    if ((*(String + 23) & 0x80000000) == 0)
    {
      v11 = *String;
      v12 = *(String + 16);
LABEL_21:
      *(a4 + 16) = v12;
      *a4 = v11;
      return;
    }

    v15 = *String;
    v16 = *(String + 8);
  }

  else
  {
    v13 = *(a3 + 11);
    if (v13 && (*(v13 + 24) != 1 || (*(**(v13 + 32) + 65) & 1) == 0) && *(a2 + *(this + 11) - 1431655764 * ((v13 - *(*(v13 + 16) + 48)) >> 4)) != *(a3 + 17) || (v14 = *(a2 + sub_100113574(this + 8, a3)) & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      v14 = *(a3 + 18);
    }

    if ((*(v14 + 23) & 0x80000000) == 0)
    {
      v11 = *v14;
      v12 = *(v14 + 16);
      goto LABEL_21;
    }

    v15 = *v14;
    v16 = *(v14 + 8);
  }

  sub_1000B32D8(a4, v15, v16);
}

uint64_t sub_10010B034(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, int *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v9;
    v11 = *(a1 + 32);
    if (v11 != -1)
    {
      if (*(a3 + 67))
      {
        v12 = *(a3 + 96);
        if (v12)
        {
          v13 = (v12 + 80);
        }

        else
        {
          v13 = (*(a3 + 40) + 128);
        }
      }

      else
      {
        v13 = (*(a3 + 80) + 40);
      }

      v15 = *(*(a1 + 24) + ((0x286BCA1B00000000 * ((a3 - *v13) >> 3)) >> 30));
      if (v15 != -1)
      {
        *(a2 + v11 + ((v15 >> 3) & 0x1FFFFFFC)) |= 1 << v15;
      }
    }
  }

  else
  {
    if (*(a2 + *(a1 + 44) - 1431655764 * ((v8 - *(*(v8 + 16) + 48)) >> 4)) != *(a3 + 68))
    {
      google::protobuf::Reflection::ClearOneof(a1, a2, v8);
    }

    v14 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

uint64_t sub_10010B1A4(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v9;
    v11 = *(a1 + 32);
    if (v11 != -1)
    {
      if (*(a3 + 67))
      {
        v12 = *(a3 + 96);
        if (v12)
        {
          v13 = (v12 + 80);
        }

        else
        {
          v13 = (*(a3 + 40) + 128);
        }
      }

      else
      {
        v13 = (*(a3 + 80) + 40);
      }

      v15 = *(*(a1 + 24) + ((0x286BCA1B00000000 * ((a3 - *v13) >> 3)) >> 30));
      if (v15 != -1)
      {
        *(a2 + v11 + ((v15 >> 3) & 0x1FFFFFFC)) |= 1 << v15;
      }
    }
  }

  else
  {
    if (*(a2 + *(a1 + 44) - 1431655764 * ((v8 - *(*(v8 + 16) + 48)) >> 4)) != *(a3 + 68))
    {
      google::protobuf::Reflection::ClearOneof(a1, a2, v8);
    }

    v14 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

uint64_t sub_10010B314(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, int *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v9;
    v11 = *(a1 + 32);
    if (v11 != -1)
    {
      if (*(a3 + 67))
      {
        v12 = *(a3 + 96);
        if (v12)
        {
          v13 = (v12 + 80);
        }

        else
        {
          v13 = (*(a3 + 40) + 128);
        }
      }

      else
      {
        v13 = (*(a3 + 80) + 40);
      }

      v15 = *(*(a1 + 24) + ((0x286BCA1B00000000 * ((a3 - *v13) >> 3)) >> 30));
      if (v15 != -1)
      {
        *(a2 + v11 + ((v15 >> 3) & 0x1FFFFFFC)) |= 1 << v15;
      }
    }
  }

  else
  {
    if (*(a2 + *(a1 + 44) - 1431655764 * ((v8 - *(*(v8 + 16) + 48)) >> 4)) != *(a3 + 68))
    {
      google::protobuf::Reflection::ClearOneof(a1, a2, v8);
    }

    v14 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

uint64_t sub_10010B48C(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v9;
    v11 = *(a1 + 32);
    if (v11 != -1)
    {
      if (*(a3 + 67))
      {
        v12 = *(a3 + 96);
        if (v12)
        {
          v13 = (v12 + 80);
        }

        else
        {
          v13 = (*(a3 + 40) + 128);
        }
      }

      else
      {
        v13 = (*(a3 + 80) + 40);
      }

      v15 = *(*(a1 + 24) + ((0x286BCA1B00000000 * ((a3 - *v13) >> 3)) >> 30));
      if (v15 != -1)
      {
        *(a2 + v11 + ((v15 >> 3) & 0x1FFFFFFC)) |= 1 << v15;
      }
    }
  }

  else
  {
    if (*(a2 + *(a1 + 44) - 1431655764 * ((v8 - *(*(v8 + 16) + 48)) >> 4)) != *(a3 + 68))
    {
      google::protobuf::Reflection::ClearOneof(a1, a2, v8);
    }

    v14 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

uint64_t sub_10010B604(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, char *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v9;
    v11 = *(a1 + 32);
    if (v11 != -1)
    {
      if (*(a3 + 67))
      {
        v12 = *(a3 + 96);
        if (v12)
        {
          v13 = (v12 + 80);
        }

        else
        {
          v13 = (*(a3 + 40) + 128);
        }
      }

      else
      {
        v13 = (*(a3 + 80) + 40);
      }

      v15 = *(*(a1 + 24) + ((0x286BCA1B00000000 * ((a3 - *v13) >> 3)) >> 30));
      if (v15 != -1)
      {
        *(a2 + v11 + ((v15 >> 3) & 0x1FFFFFFC)) |= 1 << v15;
      }
    }
  }

  else
  {
    if (*(a2 + *(a1 + 44) - 1431655764 * ((v8 - *(*(v8 + 16) + 48)) >> 4)) != *(a3 + 68))
    {
      google::protobuf::Reflection::ClearOneof(a1, a2, v8);
    }

    v14 = *a4;
    result = sub_100113574(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

void google::protobuf::Reflection::SetAllocatedMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, google::protobuf::Message *a3, const google::protobuf::FieldDescriptor *a4)
{
  if (a3)
  {
    v8 = *(a3 + 1);
    v9 = v8;
    if (v8)
    {
      v9 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = *(a2 + 1);
    v11 = v10;
    if (v10)
    {
      v11 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v9 != v11)
    {
      if (v8)
      {
        if (*(v8 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_9;
        }
      }

      else if (v8)
      {
LABEL_9:
        v12 = *(*google::protobuf::Reflection::MutableMessage(this, a2, a4, 0) + 112);

        v12();
        return;
      }

      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else if (!v10)
      {
        goto LABEL_9;
      }

      sub_100106690(v10, a3);
    }
  }

  google::protobuf::Reflection::UnsafeArenaSetAllocatedMessage(this, a2, a3, a4);
}

void google::protobuf::Reflection::SetString(uint64_t a1, google::protobuf::Message *a2, google::protobuf::FieldDescriptor *a3, uint64_t a4)
{
  v8 = *a1;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "SetString", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*a1, a3, "SetString", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v32 = a3;
    v33 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v35 = &v33;
      v36 = &v32;
      v34 = &v35;
      std::__call_once(v9, &v34, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
    sub_10010C8E8(*a1, a3, "SetString", 9);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(a1 + 40);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v32 = a3;
      v33 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v35 = &v33;
        v36 = &v32;
        v34 = &v35;
        std::__call_once(v12, &v34, sub_1000B32C4);
      }
    }

    v13 = *(a3 + 56);
    v14 = *a4;
    v37[0] = *(a4 + 8);
    *(v37 + 7) = *(a4 + 15);
    v15 = *(a4 + 23);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    v16 = google::protobuf::internal::ExtensionSet::MutableString((a2 + v10), v11, v13, a3);
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v18 = v37[0];
    *v17 = v14;
    v17[1] = v18;
    *(v17 + 15) = *(v37 + 7);
    *(v17 + 23) = v15;
    return;
  }

  v19 = *(a3 + 11);
  if (!v19 || *(v19 + 24) == 1 && *(**(v19 + 32) + 65) == 1)
  {
    v20 = *sub_100113A14((a1 + 8), a3) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(a3 + 11);
    if (!v19)
    {
LABEL_41:
      v26 = *(a1 + 32);
      if (v26 != -1)
      {
        if (*(a3 + 67))
        {
          v27 = *(a3 + 12);
          v28 = (v27 ? v27 + 80 : *(a3 + 5) + 128);
        }

        else
        {
          v28 = (*(a3 + 10) + 40);
        }

        v29 = *(*(a1 + 24) + ((0x286BCA1B00000000 * ((a3 - *v28) >> 3)) >> 30));
        if (v29 != -1)
        {
          *(a2 + v26 + ((v29 >> 3) & 0x1FFFFFFC)) |= 1 << v29;
        }
      }

      goto LABEL_50;
    }
  }

  else
  {
    v20 = 0;
  }

  if ((*(v19 + 24) != 1 || (*(**(v19 + 32) + 65) & 1) == 0) && *(a2 + *(a1 + 44) - 1431655764 * ((v19 - *(*(v19 + 16) + 48)) >> 4)) != *(a3 + 17))
  {
    google::protobuf::Reflection::ClearOneof(a1, a2, v19);
    v21 = *(a3 + 11);
    if (!v21 || *(v21 + 24) == 1 && (*(**(v21 + 32) + 65) & 1) != 0)
    {
      v22 = *(a1 + 32);
      if (v22 != -1)
      {
        if (*(a3 + 67))
        {
          v23 = *(a3 + 12);
          v24 = (v23 ? v23 + 80 : *(a3 + 5) + 128);
        }

        else
        {
          v24 = (*(a3 + 10) + 40);
        }

        v25 = *(*(a1 + 24) + ((0x286BCA1B00000000 * ((a3 - *v24) >> 3)) >> 30));
        if (v25 != -1)
        {
          *(a2 + v22 + ((v25 >> 3) & 0x1FFFFFFC)) |= 1 << v25;
        }
      }
    }

    else
    {
      *(a2 + *(a1 + 44) - 1431655764 * ((v21 - *(*(v21 + 16) + 48)) >> 4)) = *(a3 + 17);
    }

    *(a2 + sub_100113574(a1 + 8, a3)) = v20;
    v19 = *(a3 + 11);
    if (!v19)
    {
      goto LABEL_41;
    }
  }

  if (*(v19 + 24) == 1 && (*(**(v19 + 32) + 65) & 1) != 0)
  {
    goto LABEL_41;
  }

  *(a2 + *(a1 + 44) - 1431655764 * ((v19 - *(*(v19 + 16) + 48)) >> 4)) = *(a3 + 17);
LABEL_50:
  v30 = (a2 + sub_100113574(a1 + 8, a3));
  v31 = *(a2 + *(a1 + 36));
  if (v31)
  {
    v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(v30, v20, a4, v31);
}

void sub_10010BD28(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::Reflection::ClearOneof(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::OneofDescriptor *a3)
{
  if (*(a3 + 6) != 1 || (v6 = **(a3 + 4), *(v6 + 65) != 1))
  {
    v7 = *(a2 + *(this + 11) - 1431655764 * ((a3 - *(*(a3 + 2) + 48)) >> 4));
    if (!v7)
    {
      return;
    }

    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(*this, v7);
    v9 = FieldByNumber;
    v10 = *(a2 + *(this + 9));
    if (v10)
    {
      if (*(v10 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_9;
      }
    }

    else if (v10)
    {
LABEL_9:
      *(a2 + *(this + 11) - 1431655764 * ((a3 - *(*(a3 + 2) + 48)) >> 4)) = 0;
      return;
    }

    v11 = *(FieldByNumber + 48);
    if (v11)
    {
      v21 = v9;
      v22 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v11, memory_order_acquire) != -1)
      {
        v24[0] = &v22;
        v24[1] = &v21;
        v23 = v24;
        std::__call_once(v11, &v23, sub_1000B32C4);
      }
    }

    v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + 56)];
    if (v12 == 10)
    {
      v17 = *(a2 + sub_100113574(this + 8, v9));
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    else if (v12 == 9)
    {
      v13 = *(v9 + 88);
      if (!v13 || *(v13 + 24) == 1 && (*(**(v13 + 32) + 65) & 1) != 0)
      {
        v14 = *(this + 8);
        if (v14 != -1)
        {
          if (*(v9 + 67))
          {
            v15 = *(v9 + 96);
            v16 = (v15 ? v15 + 80 : *(v9 + 40) + 128);
          }

          else
          {
            v16 = (*(v9 + 80) + 40);
          }

          v18 = *(*(this + 3) + ((0x286BCA1B00000000 * ((v9 - *v16) >> 3)) >> 30));
          if (v18 != -1)
          {
            *(a2 + v14 + ((v18 >> 3) & 0x1FFFFFFC)) |= 1 << v18;
          }
        }
      }

      else
      {
        *(a2 + *(this + 11) - 1431655764 * ((v13 - *(*(v13 + 16) + 48)) >> 4)) = *(v9 + 68);
      }

      v19 = (a2 + sub_100113574(this + 8, v9));
      v20 = *(a2 + *(this + 9));
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Destroy(v19, 0, v20);
    }

    goto LABEL_9;
  }

  google::protobuf::Reflection::ClearField(this, a2, v6);
}

uint64_t google::protobuf::Reflection::HasField(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "HasField", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "HasField", "Field is repeated; the method requires a singular field.");
  }

  if (*(a3 + 67) == 1)
  {
    v7 = *(a3 + 17);
    v8 = (a2 + *(this + 10));

    return google::protobuf::internal::ExtensionSet::Has(v8, v7);
  }

  else
  {
    v10 = *(a3 + 11);
    if (!v10 || *(v10 + 24) == 1 && (*(**(v10 + 32) + 65) & 1) != 0)
    {

      return sub_10010C200(this, a2, a3);
    }

    else
    {
      return *(a2 + *(this + 11) - 1431655764 * ((v10 - *(*(v10 + 16) + 48)) >> 4)) == *(a3 + 17);
    }
  }
}

void sub_10010C12C(uint64_t a1, uint64_t a2, const std::string::value_type *a3, const std::string::value_type *a4)
{
  google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 111);
  v8 = google::protobuf::internal::LogMessage::operator<<(v17, "Protocol Buffer reflection usage error:\n  Method      : google::protobuf::Reflection::");
  v9 = google::protobuf::internal::LogMessage::operator<<(v8, a3);
  v10 = google::protobuf::internal::LogMessage::operator<<(v9, "\n  Message type: ");
  v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1 + 8));
  v12 = google::protobuf::internal::LogMessage::operator<<(v11, "\n  Field       : ");
  v13 = google::protobuf::internal::LogMessage::operator<<(v12, *(a2 + 8));
  v14 = google::protobuf::internal::LogMessage::operator<<(v13, "\n  Problem     : ");
  v15 = google::protobuf::internal::LogMessage::operator<<(v14, a4);
  google::protobuf::internal::LogFinisher::operator=(&v16, &v15->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
}

void sub_10010C1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010C200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (v6 == -1 || ((v7 = *(a1 + 24), (*(a3 + 67) & 1) == 0) ? (v9 = (*(a3 + 80) + 40)) : (v8 = *(a3 + 96)) == 0 ? (v9 = (*(a3 + 40) + 128)) : (v9 = (v8 + 80)), *(v7 + ((0x286BCA1B00000000 * ((a3 - *v9) >> 3)) >> 30)) == -1))
  {
    v13 = *(a3 + 48);
    if (v13)
    {
      v25 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v24 = a3;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v23[0].__r_.__value_.__r.__words[0] = &v25;
        v23[0].__r_.__value_.__l.__size_ = &v24;
        v26 = v23;
        std::__call_once(v13, &v26, sub_1000B32C4);
      }
    }

    v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)];
    if (v14 == 10)
    {
      if (*(a1 + 8) != a2)
      {
LABEL_16:
        v15 = *(a2 + sub_100113574(a1 + 8, a3));
LABEL_17:
        v16 = v15 == 0;
        goto LABEL_42;
      }

LABEL_46:
      LOBYTE(v20) = 0;
      return v20 & 1;
    }

    v17 = *(a3 + 48);
    if (v17)
    {
      v25 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v24 = a3;
      if (atomic_load_explicit(v17, memory_order_acquire) != -1)
      {
        v23[0].__r_.__value_.__r.__words[0] = &v25;
        v23[0].__r_.__value_.__l.__size_ = &v24;
        v26 = v23;
        std::__call_once(v17, &v26, sub_1000B32C4);
      }

      v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)];
    }

    if (v14 <= 4)
    {
      if (v14 > 2)
      {
        if (v14 != 3)
        {
          goto LABEL_16;
        }
      }

      else if (v14 != 1)
      {
        if (v14 == 2)
        {
          goto LABEL_16;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          v16 = *(a2 + sub_100113574(a1 + 8, a3)) == 0.0;
        }

        else
        {
          v16 = *(a2 + sub_100113574(a1 + 8, a3)) == 0.0;
        }

        goto LABEL_42;
      }

      if (v14 == 7)
      {
        LOBYTE(v20) = *(a2 + sub_100113574(a1 + 8, a3));
        return v20 & 1;
      }

      if (v14 != 8)
      {
        if (v14 == 9)
        {
          v18 = *(a2 + sub_100113574(a1 + 8, a3)) & 0xFFFFFFFFFFFFFFFELL;
          v15 = *(v18 + 23);
          if (v15 < 0)
          {
            v15 = *(v18 + 8);
          }

          goto LABEL_17;
        }

LABEL_45:
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 2059);
        v21 = google::protobuf::internal::LogMessage::operator<<(v23, "Reached impossible case in HasBit().");
        google::protobuf::internal::LogFinisher::operator=(&v26, &v21->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
        goto LABEL_46;
      }
    }

    v16 = *(a2 + sub_100113574(a1 + 8, a3)) == 0;
LABEL_42:
    LOBYTE(v20) = !v16;
    return v20 & 1;
  }

  v10 = a2 + v6;
  if (*(a3 + 67))
  {
    v11 = *(a3 + 96);
    if (v11)
    {
      v12 = (v11 + 80);
    }

    else
    {
      v12 = (*(a3 + 40) + 128);
    }
  }

  else
  {
    v12 = (*(a3 + 80) + 40);
  }

  v19 = *(v7 + ((0x286BCA1B00000000 * ((a3 - *v12) >> 3)) >> 30));
  v20 = (*(v10 + ((v19 >> 3) & 0x1FFFFFFC)) >> v19) & 1;
  return v20 & 1;
}

void sub_10010C51C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::ExtensionSet::Extension *google::protobuf::Reflection::FieldSize(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "FieldSize", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "FieldSize", "Field is singular; the method requires a repeated field.");
  }

  if (*(a3 + 67) == 1)
  {
    v7 = *(a3 + 17);
    v8 = (a2 + *(this + 10));

    return google::protobuf::internal::ExtensionSet::ExtensionSize(v8, v7);
  }

  v10 = *(a3 + 6);
  if (v10)
  {
    v18 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v17 = a3;
    if (atomic_load_explicit(v10, memory_order_acquire) != -1)
    {
      v16[0].__r_.__value_.__r.__words[0] = &v18;
      v16[0].__r_.__value_.__l.__size_ = &v17;
      v19 = v16;
      std::__call_once(v10, &v19, sub_1000B32C4);
    }
  }

  v11 = *(a3 + 14);
  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v11];
  if (v12 <= 5)
  {
    if (v12 > 2 || v12 == 1 || v12 == 2)
    {
      return *(a2 + sub_100113574(this + 8, a3));
    }

    goto LABEL_30;
  }

  if (v12 <= 8)
  {
    return *(a2 + sub_100113574(this + 8, a3));
  }

  if ((v12 - 9) >= 2)
  {
LABEL_30:
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 783);
    v15 = google::protobuf::internal::LogMessage::operator<<(v16, "Can't get here.");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    return 0;
  }

  v13 = *(a3 + 6);
  if (v13)
  {
    v18 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v17 = a3;
    if (atomic_load_explicit(v13, memory_order_acquire) != -1)
    {
      v16[0].__r_.__value_.__r.__words[0] = &v18;
      v16[0].__r_.__value_.__l.__size_ = &v17;
      v19 = v16;
      std::__call_once(v13, &v19, sub_1000B32C4);
    }

    LODWORD(v11) = *(a3 + 14);
  }

  if (v11 != 11 || !google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    return *(a2 + sub_100113574(this + 8, a3) + 8);
  }

  v14 = (a2 + sub_100113574(this + 8, a3));
  if (google::protobuf::internal::MapFieldBase::IsRepeatedFieldValid(v14))
  {
    return *(google::protobuf::internal::MapFieldBase::GetRepeatedField(v14) + 8);
  }

  else
  {
    return (*(*v14 + 88))(v14);
  }
}

void sub_10010C7F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010C810(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 67))
  {
    v2 = *(a2 + 96);
    if (v2)
    {
      v3 = (v2 + 80);
    }

    else
    {
      v3 = (*(a2 + 40) + 128);
    }
  }

  else
  {
    v3 = (*(a2 + 80) + 40);
  }

  return *(*(a1 + 16) + ((0x286BCA1B00000000 * ((a2 - *v3) >> 3)) >> 30));
}

uint64_t sub_10010C878(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_10010C8E8(uint64_t a1, uint64_t a2, const std::string::value_type *a3, int a4)
{
  google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 133);
  v8 = google::protobuf::internal::LogMessage::operator<<(v19, "Protocol Buffer reflection usage error:\n  Method      : google::protobuf::Reflection::");
  v9 = google::protobuf::internal::LogMessage::operator<<(v8, a3);
  v10 = google::protobuf::internal::LogMessage::operator<<(v9, "\n  Message type: ");
  v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1 + 8));
  v12 = google::protobuf::internal::LogMessage::operator<<(v11, "\n  Field       : ");
  v13 = google::protobuf::internal::LogMessage::operator<<(v12, *(a2 + 8));
  v14 = google::protobuf::internal::LogMessage::operator<<(v13, "\n  Problem     : Field is not the right type for this message:\n    Expected  : ");
  v15 = google::protobuf::internal::LogMessage::operator<<(v14, off_1001D1260[a4]);
  v16 = google::protobuf::internal::LogMessage::operator<<(v15, "\n    Field type: ");
  v17 = *(a2 + 48);
  if (v17)
  {
    v20 = a2;
    v21 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v17, memory_order_acquire) != -1)
    {
      v23[0] = &v21;
      v23[1] = &v20;
      v22 = v23;
      std::__call_once(v17, &v22, sub_1000B32C4);
    }
  }

  v18 = google::protobuf::internal::LogMessage::operator<<(v16, off_1001D1260[google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 56)]]);
  google::protobuf::internal::LogFinisher::operator=(v23, &v18->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
}

void sub_10010CA28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::Reflection::ListFieldsMayFailOnStripped(unint64_t result, const google::protobuf::Message *a2, uint64_t a3, const void **a4)
{
  a4[1] = *a4;
  if (*(result + 8) != a2)
  {
    v22[11] = v4;
    v22[12] = v5;
    v8 = result;
    v9 = *(result + 32);
    if (v9 == -1)
    {
      v10 = 0;
    }

    else
    {
      v10 = a2 + v9;
    }

    v11 = *(result + 24);
    sub_10010CC20(a4, *(*result + 104));
    if ((*(v8 + 72) & 0x80000000) == 0)
    {
      v12 = 0;
      v13 = -1;
      while (1)
      {
        v14 = *(*v8 + 40);
        v15 = (v14 + v12);
        v22[0] = v14 + v12;
        if (*(v14 + v12 + 60) != 3)
        {
          break;
        }

        if (google::protobuf::Reflection::FieldSize(v8, a2, v15) > 0)
        {
          goto LABEL_9;
        }

LABEL_10:
        ++v13;
        ++v11;
        v12 += 152;
        if (v13 >= *(v8 + 72))
        {
          goto LABEL_23;
        }
      }

      v16 = *(v15 + 11);
      if (!v16 || *(v16 + 24) == 1 && (*(**(v16 + 32) + 65) & 1) != 0)
      {
        if (v9 == -1 || (v17 = *v11, v17 == -1))
        {
          if (!sub_10010C200(v8, a2, v15))
          {
            goto LABEL_10;
          }
        }

        else if (((*&v10[(v17 >> 3) & 0x1FFFFFFC] >> v17) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (*(a2 + *(v8 + 44) + ((0xAAAAAAAB00000000 * ((v16 - *(*(v16 + 16) + 48)) >> 4)) >> 30)) != *(v14 + v12 + 68))
      {
        goto LABEL_10;
      }

LABEL_9:
      sub_1000CAE3C(a4, v22);
      goto LABEL_10;
    }

LABEL_23:
    v18 = *(v8 + 40);
    if (v18 != -1)
    {
      google::protobuf::internal::ExtensionSet::AppendToList(a2 + v18, *v8, *(v8 + 56), a4);
    }

    v19 = a4[1];
    v20 = 126 - 2 * __clz((v19 - *a4) >> 3);
    if (v19 == *a4)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    return sub_100113ED8(*a4, v19, v21, 1);
  }

  return result;
}

void *sub_10010CC20(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1000D1B24(result, a2);
    }

    sub_100070E64();
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetInt32(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "GetInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetInt32", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_10010C8E8(*this, a3, "GetInt32", 1);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetInt32((a2 + *(this + 10)), *(a3 + 17), *(a3 + 36));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_100113574(this + 8, a3));
  }

  else
  {
    return *(a3 + 36);
  }
}

uint64_t *google::protobuf::Reflection::SetInt32(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_10010C12C(v7, a3, "SetInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "SetInt32", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_10010C8E8(*this, a3, "SetInt32", 1);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_10010B034(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetInt32((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedInt32(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedInt32", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedInt32", 1);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedInt32((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_100113574(this + 8, a3) + 8) + 4 * a4);
  }
}

void google::protobuf::Reflection::AddInt32(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddInt32", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_10010C8E8(*this, a3, "AddInt32", 1);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_1000B32C4);
      }
    }

    google::protobuf::internal::ExtensionSet::AddInt32((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    v13 = (a2 + sub_100113574(this + 8, a3));
    v14 = *v13;
    if (v14 == v13[1])
    {
      v15 = v14 + 1;
      google::protobuf::RepeatedField<int>::Reserve(v13, v14 + 1);
      *(*(v13 + 1) + 4 * v14) = a4;
    }

    else
    {
      *(*(v13 + 1) + 4 * v14) = a4;
      v15 = v14 + 1;
    }

    *v13 = v15;
  }
}

uint64_t google::protobuf::Reflection::GetInt64(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "GetInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetInt64", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_10010C8E8(*this, a3, "GetInt64", 2);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetInt64((a2 + *(this + 10)), *(a3 + 17), *(a3 + 18));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_100113574(this + 8, a3));
  }

  else
  {
    return *(a3 + 18);
  }
}

uint64_t *google::protobuf::Reflection::SetInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, uint64_t a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_10010C12C(v7, a3, "SetInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "SetInt64", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_10010C8E8(*this, a3, "SetInt64", 2);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_10010B1A4(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetInt64((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedInt64(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedInt64", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedInt64", 2);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedInt64((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_100113574(this + 8, a3) + 8) + 8 * a4);
  }
}

void google::protobuf::Reflection::AddInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, uint64_t a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddInt64", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_10010C8E8(*this, a3, "AddInt64", 2);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_1000B32C4);
      }
    }

    google::protobuf::internal::ExtensionSet::AddInt64((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    v13 = (a2 + sub_100113574(this + 8, a3));
    v14 = *v13;
    if (v14 == v13[1])
    {
      v15 = v14 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(v13, v14 + 1);
      *(*(v13 + 1) + 8 * v14) = a4;
    }

    else
    {
      *(*(v13 + 1) + 8 * v14) = a4;
      v15 = v14 + 1;
    }

    *v13 = v15;
  }
}

uint64_t google::protobuf::Reflection::GetUInt32(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "GetUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetUInt32", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_10010C8E8(*this, a3, "GetUInt32", 3);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetUInt32((a2 + *(this + 10)), *(a3 + 17), *(a3 + 36));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_100113574(this + 8, a3));
  }

  else
  {
    return *(a3 + 36);
  }
}

uint64_t *google::protobuf::Reflection::SetUInt32(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, unsigned int a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_10010C12C(v7, a3, "SetUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "SetUInt32", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_10010C8E8(*this, a3, "SetUInt32", 3);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_10010B034(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetUInt32((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedUInt32(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedUInt32", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedUInt32", 3);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedUInt32((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_100113574(this + 8, a3) + 8) + 4 * a4);
  }
}

void google::protobuf::Reflection::AddUInt32(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddUInt32", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_10010C8E8(*this, a3, "AddUInt32", 3);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_1000B32C4);
      }
    }

    google::protobuf::internal::ExtensionSet::AddUInt32((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    v13 = (a2 + sub_100113574(this + 8, a3));
    v14 = *v13;
    if (v14 == v13[1])
    {
      v15 = v14 + 1;
      google::protobuf::RepeatedField<unsigned int>::Reserve(v13, v14 + 1);
      *(*(v13 + 1) + 4 * v14) = a4;
    }

    else
    {
      *(*(v13 + 1) + 4 * v14) = a4;
      v15 = v14 + 1;
    }

    *v13 = v15;
  }
}

uint64_t google::protobuf::Reflection::GetUInt64(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "GetUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetUInt64", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_10010C8E8(*this, a3, "GetUInt64", 4);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetUInt64((a2 + *(this + 10)), *(a3 + 17), *(a3 + 18));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_100113574(this + 8, a3));
  }

  else
  {
    return *(a3 + 18);
  }
}

uint64_t *google::protobuf::Reflection::SetUInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, unint64_t a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_10010C12C(v7, a3, "SetUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "SetUInt64", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_10010C8E8(*this, a3, "SetUInt64", 4);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_10010B1A4(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetUInt64((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedUInt64(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedUInt64", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedUInt64", 4);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedUInt64((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_100113574(this + 8, a3) + 8) + 8 * a4);
  }
}

void google::protobuf::Reflection::AddUInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, uint64_t a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddUInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddUInt64", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 4)
  {
    sub_10010C8E8(*this, a3, "AddUInt64", 4);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_1000B32C4);
      }
    }

    google::protobuf::internal::ExtensionSet::AddUInt64((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    v13 = (a2 + sub_100113574(this + 8, a3));
    v14 = *v13;
    if (v14 == v13[1])
    {
      v15 = v14 + 1;
      google::protobuf::RepeatedField<unsigned long long>::Reserve(v13, v14 + 1);
      *(*(v13 + 1) + 8 * v14) = a4;
    }

    else
    {
      *(*(v13 + 1) + 8 * v14) = a4;
      v15 = v14 + 1;
    }

    *v13 = v15;
  }
}

float google::protobuf::Reflection::GetFloat(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "GetFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetFloat", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_10010C8E8(*this, a3, "GetFloat", 6);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetFloat((a2 + *(this + 10)), *(a3 + 17), *(a3 + 36));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_100113574(this + 8, a3));
  }

  else
  {
    return *(a3 + 36);
  }
}

uint64_t *google::protobuf::Reflection::SetFloat(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, float a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_10010C12C(v7, a3, "SetFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "SetFloat", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_10010C8E8(*this, a3, "SetFloat", 6);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_10010B314(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetFloat((a2 + v9), v10, *(a3 + 56), v13, a3);
}

float google::protobuf::Reflection::GetRepeatedFloat(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedFloat", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedFloat", 6);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedFloat((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_100113574(this + 8, a3) + 8) + 4 * a4);
  }
}

void google::protobuf::Reflection::AddFloat(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, float a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddFloat", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddFloat", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 6)
  {
    sub_10010C8E8(*this, a3, "AddFloat", 6);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_1000B32C4);
      }
    }

    google::protobuf::internal::ExtensionSet::AddFloat((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    v13 = (a2 + sub_100113574(this + 8, a3));
    v14 = *v13;
    if (v14 == v13[1])
    {
      v15 = v14 + 1;
      google::protobuf::RepeatedField<float>::Reserve(v13, v14 + 1);
      *(*(v13 + 1) + 4 * v14) = a4;
    }

    else
    {
      *(*(v13 + 1) + 4 * v14) = a4;
      v15 = v14 + 1;
    }

    *v13 = v15;
  }
}

double google::protobuf::Reflection::GetDouble(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "GetDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetDouble", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_10010C8E8(*this, a3, "GetDouble", 5);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetDouble((a2 + *(this + 10)), *(a3 + 17), *(a3 + 18));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_100113574(this + 8, a3));
  }

  else
  {
    return *(a3 + 18);
  }
}

uint64_t *google::protobuf::Reflection::SetDouble(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, double a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_10010C12C(v7, a3, "SetDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "SetDouble", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_10010C8E8(*this, a3, "SetDouble", 5);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_10010B48C(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetDouble((a2 + v9), v10, *(a3 + 56), v13, a3);
}

double google::protobuf::Reflection::GetRepeatedDouble(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedDouble", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedDouble", 5);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedDouble((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_100113574(this + 8, a3) + 8) + 8 * a4);
  }
}

void google::protobuf::Reflection::AddDouble(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, double a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddDouble", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddDouble", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 5)
  {
    sub_10010C8E8(*this, a3, "AddDouble", 5);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_1000B32C4);
      }
    }

    google::protobuf::internal::ExtensionSet::AddDouble((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    v13 = (a2 + sub_100113574(this + 8, a3));
    v14 = *v13;
    if (v14 == v13[1])
    {
      v15 = v14 + 1;
      google::protobuf::RepeatedField<double>::Reserve(v13, v14 + 1);
      *(*(v13 + 1) + 8 * v14) = a4;
    }

    else
    {
      *(*(v13 + 1) + 8 * v14) = a4;
      v15 = v14 + 1;
    }

    *v13 = v15;
  }
}

uint64_t google::protobuf::Reflection::GetBool(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "GetBool", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetBool", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v7, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_10010C8E8(*this, a3, "GetBool", 7);
  }

  if (*(a3 + 67) == 1)
  {
    Bool = google::protobuf::internal::ExtensionSet::GetBool((a2 + *(this + 10)), *(a3 + 17), *(a3 + 144));
  }

  else
  {
    v9 = *(a3 + 11);
    if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
    {
      Bool = *(a2 + sub_100113574(this + 8, a3));
    }

    else
    {
      Bool = *(a3 + 144);
    }
  }

  return Bool & 1;
}

uint64_t *google::protobuf::Reflection::SetBool(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, BOOL a4)
{
  v13 = a4;
  v7 = *this;
  if (*(a3 + 10) != v7)
  {
    sub_10010C12C(v7, a3, "SetBool", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "SetBool", "Field is repeated; the method requires a singular field.");
  }

  v8 = *(a3 + 6);
  if (v8)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v8, &v16, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_10010C8E8(*this, a3, "SetBool", 7);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_10010B604(this, a2, a3, &v13);
  }

  v9 = *(this + 10);
  v10 = *(a3 + 17);
  v11 = *(a3 + 6);
  if (v11)
  {
    v14 = a3;
    v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v17 = &v15;
      v18 = &v14;
      v16 = &v17;
      std::__call_once(v11, &v16, sub_1000B32C4);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetBool((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedBool(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedBool", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedBool", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v9, &v14, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedBool", 7);
  }

  if (*(a3 + 67) == 1)
  {
    RepeatedBool = google::protobuf::internal::ExtensionSet::GetRepeatedBool((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    RepeatedBool = *(*(a2 + sub_100113574(this + 8, a3) + 8) + a4);
  }

  return RepeatedBool & 1;
}

void google::protobuf::Reflection::AddBool(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, char a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddBool", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddBool", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19 = &v17;
      v20 = &v16;
      v18 = &v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 7)
  {
    sub_10010C8E8(*this, a3, "AddBool", 7);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v16 = a3;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v19 = &v17;
        v20 = &v16;
        v18 = &v19;
        std::__call_once(v12, &v18, sub_1000B32C4);
      }
    }

    google::protobuf::internal::ExtensionSet::AddBool((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    v13 = (a2 + sub_100113574(this + 8, a3));
    v14 = *v13;
    if (v14 == v13[1])
    {
      v15 = v14 + 1;
      google::protobuf::RepeatedField<BOOL>::Reserve(v13, v14 + 1);
      *(*(v13 + 1) + v14) = a4;
    }

    else
    {
      *(*(v13 + 1) + v14) = a4;
      v15 = v14 + 1;
    }

    *v13 = v15;
  }
}

unint64_t google::protobuf::Reflection::GetStringReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*(a3 + 80) != v6)
  {
    sub_10010C12C(v6, a3, "GetStringReference", "Field does not match message type.");
  }

  if (*(a3 + 60) == 3)
  {
    sub_10010C12C(*a1, a3, "GetStringReference", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 48);
  if (v7)
  {
    v10 = a3;
    v11 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v13[0] = &v11;
      v13[1] = &v10;
      v12 = v13;
      std::__call_once(v7, &v12, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)] != 9)
  {
    sub_10010C8E8(*a1, a3, "GetStringReference", 9);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetString((a2 + *(a1 + 40)), *(a3 + 68), *(a3 + 144));
  }

  v9 = *(a3 + 88);
  if (v9 && (*(v9 + 24) != 1 || (*(**(v9 + 32) + 65) & 1) == 0) && *(a2 + *(a1 + 44) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) != *(a3 + 68))
  {
    return *(a3 + 144);
  }

  result = *(a2 + sub_100113574(a1 + 8, a3)) & 0xFFFFFFFFFFFFFFFELL;
  if (!result)
  {
    return *(a3 + 144);
  }

  return result;
}

void *google::protobuf::Reflection::GetRepeatedString@<X0>(google::protobuf::Reflection *this@<X0>, const google::protobuf::Message *a2@<X1>, const google::protobuf::FieldDescriptor *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_10010C12C(v10, a3, "GetRepeatedString", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedString", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v18 = a3;
    v19 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v21[0] = &v19;
      v21[1] = &v18;
      v20 = v21;
      std::__call_once(v11, &v20, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedString", 9);
  }

  if (*(a3 + 67) == 1)
  {
    result = google::protobuf::internal::ExtensionSet::GetRepeatedString((a2 + *(this + 10)), *(a3 + 17), a4);
    if ((*(result + 23) & 0x80000000) == 0)
    {
      v13 = *result;
      v14 = result[2];
LABEL_15:
      *(a5 + 16) = v14;
      *a5 = v13;
      return result;
    }

    v16 = *result;
    v17 = result[1];
  }

  else
  {
    result = sub_100113574(this + 8, a3);
    v15 = *(*(a2 + result + 16) + 8 * a4 + 8);
    if ((*(v15 + 23) & 0x80000000) == 0)
    {
      v13 = *v15;
      v14 = *(v15 + 2);
      goto LABEL_15;
    }

    v16 = *v15;
    v17 = *(v15 + 1);
  }

  return sub_1000B32D8(a5, v16, v17);
}

uint64_t google::protobuf::Reflection::GetRepeatedStringReference(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *a1;
  if (*(a3 + 80) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedStringReference", "Field does not match message type.");
  }

  if (*(a3 + 60) != 3)
  {
    sub_10010C12C(*a1, a3, "GetRepeatedStringReference", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 48);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)] != 9)
  {
    sub_10010C8E8(*a1, a3, "GetRepeatedStringReference", 9);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedString((a2 + *(a1 + 40)), *(a3 + 68), a4);
  }

  else
  {
    return *(*(a2 + sub_100113574(a1 + 8, a3) + 16) + 8 * a4 + 8);
  }
}

__n128 google::protobuf::Reflection::AddString(uint64_t a1, uint64_t a2, google::protobuf::FieldDescriptor *a3, uint64_t a4)
{
  v8 = *a1;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddString", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*a1, a3, "AddString", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v27 = a3;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v30 = &v28;
      v31 = &v27;
      v29 = &v30;
      std::__call_once(v9, &v29, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
    sub_10010C8E8(*a1, a3, "AddString", 9);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(a1 + 40);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v27 = a3;
      v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v30 = &v28;
        v31 = &v27;
        v29 = &v30;
        std::__call_once(v12, &v29, sub_1000B32C4);
      }
    }

    v13 = *(a3 + 56);
    v14 = *a4;
    v32[0] = *(a4 + 8);
    *(v32 + 7) = *(a4 + 15);
    v15 = *(a4 + 23);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    v16 = google::protobuf::internal::ExtensionSet::AddString((a2 + v10), v11, v13, a3);
    v18 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v19 = v32[0];
    *v18 = v14;
    v18[1] = v19;
    *(v18 + 15) = *(v32 + 7);
    *(v18 + 23) = v15;
    return result;
  }

  v20 = a2 + sub_100113574(a1 + 8, a3);
  v21 = *(v20 + 16);
  if (!v21)
  {
    v23 = *(v20 + 12);
    goto LABEL_22;
  }

  v22 = *(v20 + 8);
  v23 = *v21;
  if (v22 >= *v21)
  {
    if (v23 != *(v20 + 12))
    {
LABEL_23:
      *v21 = v23 + 1;
      v24 = sub_1000B3534(*v20);
      v25 = *(v20 + 8);
      v26 = *(v20 + 16) + 8 * v25;
      *(v20 + 8) = v25 + 1;
      *(v26 + 8) = v24;
      goto LABEL_24;
    }

LABEL_22:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v20, v23 + 1);
    v21 = *(v20 + 16);
    v23 = *v21;
    goto LABEL_23;
  }

  *(v20 + 8) = v22 + 1;
  v24 = *&v21[2 * v22 + 2];
LABEL_24:
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  result = *a4;
  v24[2] = *(a4 + 16);
  *v24 = result;
  *(a4 + 23) = 0;
  *a4 = 0;
  return result;
}

void sub_1001100DC(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Reflection::GetEnum(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  EnumValue = google::protobuf::Reflection::GetEnumValue(this, a2, a3);
  v5 = google::protobuf::FieldDescriptor::enum_type(a3);

  return google::protobuf::EnumDescriptor::FindValueByNumberCreatingIfUnknown(v5, EnumValue);
}

uint64_t google::protobuf::Reflection::GetEnumValue(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_10010C12C(v6, a3, "GetEnumValue", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetEnumValue", "Field is repeated; the method requires a singular field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v13 = a3;
    v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v16[0] = &v14;
      v16[1] = &v13;
      v15 = v16;
      std::__call_once(v7, &v15, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_10010C8E8(*this, a3, "GetEnumValue", 8);
  }

  if (*(a3 + 67) == 1)
  {
    v8 = *(this + 10);
    v9 = *(a3 + 17);
    v10 = google::protobuf::FieldDescriptor::default_value_enum(a3);
    return google::protobuf::internal::ExtensionSet::GetEnum((a2 + v8), v9, *(v10 + 16));
  }

  else
  {
    v12 = *(a3 + 11);
    if (!v12 || *(v12 + 24) == 1 && (*(**(v12 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v12 - *(*(v12 + 16) + 48)) >> 4)) == *(a3 + 17))
    {
      return *(a2 + sub_100113574(this + 8, a3));
    }

    else
    {
      return *(google::protobuf::FieldDescriptor::default_value_enum(a3) + 16);
    }
  }
}

uint64_t *google::protobuf::Reflection::SetEnum(google::protobuf::Reflection *this, google::protobuf::Message *a2, const std::string::value_type **a3, const google::protobuf::EnumValueDescriptor *a4)
{
  v8 = *(a4 + 3);
  if (v8 != google::protobuf::FieldDescriptor::enum_type(a3))
  {
    sub_100110374(*this, a3, "SetEnum", a4);
  }

  v9 = *(a4 + 4);

  return google::protobuf::Reflection::SetEnumValueInternal(this, a2, a3, v9);
}

void sub_100110374(uint64_t a1, const std::string::value_type **a2, const std::string::value_type *a3, uint64_t a4)
{
  google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/generated_message_reflection.cc", 155);
  v8 = google::protobuf::internal::LogMessage::operator<<(v20, "Protocol Buffer reflection usage error:\n  Method      : google::protobuf::Reflection::");
  v9 = google::protobuf::internal::LogMessage::operator<<(v8, a3);
  v10 = google::protobuf::internal::LogMessage::operator<<(v9, "\n  Message type: ");
  v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1 + 8));
  v12 = google::protobuf::internal::LogMessage::operator<<(v11, "\n  Field       : ");
  v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2[1]);
  v14 = google::protobuf::internal::LogMessage::operator<<(v13, "\n  Problem     : Enum value did not match field type:\n    Expected  : ");
  v15 = google::protobuf::FieldDescriptor::enum_type(a2);
  v16 = google::protobuf::internal::LogMessage::operator<<(v14, *(v15 + 8));
  v17 = google::protobuf::internal::LogMessage::operator<<(v16, "\n    Actual    : ");
  v18 = google::protobuf::internal::LogMessage::operator<<(v17, *(a4 + 8));
  google::protobuf::internal::LogFinisher::operator=(&v19, &v18->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
}

void sub_100110454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::Reflection::SetEnumValueInternal(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v10 = a4;
  if (*(a3 + 67) != 1)
  {
    return sub_10010B034(this, a2, a3, &v10);
  }

  v6 = *(this + 10);
  v7 = *(a3 + 17);
  v8 = *(a3 + 6);
  if (v8)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v8, &v13, sub_1000B32C4);
    }

    a4 = v10;
  }

  return google::protobuf::internal::ExtensionSet::SetEnum((a2 + v6), v7, *(a3 + 56), a4, a3);
}

void google::protobuf::Reflection::SetEnumValue(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "SetEnumValue", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "SetEnumValue", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19[0] = &v17;
      v19[1] = &v16;
      v18 = v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_10010C8E8(*this, a3, "SetEnumValue", 8);
  }

  if (*(*(a3 + 5) + 60) == 3 || (v10 = google::protobuf::FieldDescriptor::enum_type(a3), google::protobuf::EnumDescriptor::FindValueByNumber(v10, a4)))
  {
    google::protobuf::Reflection::SetEnumValueInternal(this, a2, a3, a4);
  }

  else
  {
    v13 = *(this + 9);
    v14 = *(a2 + v13);
    if (v14)
    {
      v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v15 = sub_100031428((a2 + v13), v11, v12);
    }

    google::protobuf::UnknownFieldSet::AddVarint(v15, *(a3 + 17), a4);
  }
}

uint64_t google::protobuf::Reflection::GetRepeatedEnum(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  RepeatedEnumValue = google::protobuf::Reflection::GetRepeatedEnumValue(this, a2, a3, a4);
  v6 = google::protobuf::FieldDescriptor::enum_type(a3);

  return google::protobuf::EnumDescriptor::FindValueByNumberCreatingIfUnknown(v6, RepeatedEnumValue);
}

uint64_t google::protobuf::Reflection::GetRepeatedEnumValue(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetRepeatedEnumValue", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "GetRepeatedEnumValue", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v11 = a3;
    v12 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v14[0] = &v12;
      v14[1] = &v11;
      v13 = v14;
      std::__call_once(v9, &v13, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_10010C8E8(*this, a3, "GetRepeatedEnumValue", 8);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedEnum((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_100113574(this + 8, a3) + 8) + 4 * a4);
  }
}

void google::protobuf::Reflection::AddEnum(uint64_t *a1, google::protobuf::Message *a2, const std::string::value_type **this, uint64_t a4)
{
  v8 = *(a4 + 24);
  if (v8 != google::protobuf::FieldDescriptor::enum_type(this))
  {
    sub_100110374(*a1, this, "AddEnum", a4);
  }

  v9 = *(a4 + 16);

  google::protobuf::Reflection::AddEnumValueInternal(a1, a2, this, v9);
}

void google::protobuf::Reflection::AddEnumValueInternal(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  if (*(a3 + 67) == 1)
  {
    v7 = *(this + 10);
    v8 = *(a3 + 17);
    v9 = *(a3 + 6);
    if (v9)
    {
      v13 = a3;
      v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v9, memory_order_acquire) != -1)
      {
        v16[0] = &v14;
        v16[1] = &v13;
        v15 = v16;
        std::__call_once(v9, &v15, sub_1000B32C4);
      }
    }

    google::protobuf::internal::ExtensionSet::AddEnum((a2 + v7), v8, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    v10 = (a2 + sub_100113574(this + 8, a3));
    v11 = *v10;
    if (v11 == v10[1])
    {
      v12 = v11 + 1;
      google::protobuf::RepeatedField<int>::Reserve(v10, v11 + 1);
      *(*(v10 + 1) + 4 * v11) = a4;
    }

    else
    {
      *(*(v10 + 1) + 4 * v11) = a4;
      v12 = v11 + 1;
    }

    *v10 = v12;
  }
}

void google::protobuf::Reflection::AddEnumValue(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "AddEnum", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_10010C12C(*this, a3, "AddEnum", "Field is singular; the method requires a repeated field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v16 = a3;
    v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v19[0] = &v17;
      v19[1] = &v16;
      v18 = v19;
      std::__call_once(v9, &v18, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 8)
  {
    sub_10010C8E8(*this, a3, "AddEnum", 8);
  }

  if (*(*(a3 + 5) + 60) == 3 || (v10 = google::protobuf::FieldDescriptor::enum_type(a3), google::protobuf::EnumDescriptor::FindValueByNumber(v10, a4)))
  {
    google::protobuf::Reflection::AddEnumValueInternal(this, a2, a3, a4);
  }

  else
  {
    v13 = *(this + 9);
    v14 = *(a2 + v13);
    if (v14)
    {
      v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v15 = sub_100031428((a2 + v13), v11, v12);
    }

    google::protobuf::UnknownFieldSet::AddVarint(v15, *(a3 + 17), a4);
  }
}

unint64_t google::protobuf::Reflection::GetDefaultMessageInstance(google::protobuf::Reflection *this, atomic_ullong *a2)
{
  v4 = *(this + 8);
  if (v4 == google::protobuf::MessageFactory::generated_factory(this))
  {
    result = atomic_load_explicit(a2 + 18, memory_order_acquire);
    if (!result)
    {
      v11 = *(this + 8);
      v12 = google::protobuf::FieldDescriptor::message_type(a2);
      result = (*(*v11 + 16))(v11, v12);
      atomic_store(result, a2 + 18);
    }
  }

  else if (*(a2 + 67) & 1) != 0 || (v5 = a2[15], (*(v5 + 79)) || (*(v5 + 77) & 1) != 0 || (v6 = a2[11]) != 0 && (*(v6 + 24) != 1 || *(**(v6 + 32) + 65) != 1) || (result = *sub_100113A14(this + 1, a2)) == 0)
  {
    v8 = *(this + 8);
    v9 = google::protobuf::FieldDescriptor::message_type(a2);
    v10 = *(*v8 + 16);

    return v10(v8, v9);
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetMessage(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::MessageFactory *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "GetMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "GetMessage", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v15 = a3;
    v16 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v18[0] = &v16;
      v18[1] = &v15;
      v17 = v18;
      std::__call_once(v9, &v17, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_10010C8E8(*this, a3, "GetMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 8);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(this + 10);
    v11 = *(a3 + 17);
    v12 = google::protobuf::FieldDescriptor::message_type(a3);
    return google::protobuf::internal::ExtensionSet::GetMessage((a2 + v10), v11, v12, a4);
  }

  else
  {
    v14 = *(a3 + 11);
    if (v14 && (*(v14 + 24) != 1 || (*(**(v14 + 32) + 65) & 1) == 0) && *(a2 + *(this + 11) - 1431655764 * ((v14 - *(*(v14 + 16) + 48)) >> 4)) != *(a3 + 17))
    {
      return google::protobuf::Reflection::GetDefaultMessageInstance(this, a3);
    }

    result = *(a2 + sub_100113574(this + 8, a3));
    if (!result)
    {
      return google::protobuf::Reflection::GetDefaultMessageInstance(this, a3);
    }
  }

  return result;
}

uint64_t google::protobuf::Reflection::MutableMessage(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::MessageFactory *a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_10010C12C(v8, a3, "MutableMessage", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_10010C12C(*this, a3, "MutableMessage", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v27 = a3;
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v30[0] = &v28;
      v30[1] = &v27;
      v29 = v30;
      std::__call_once(v9, &v29, sub_1000B32C4);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_10010C8E8(*this, a3, "MutableMessage", 10);
  }

  if (!a4)
  {
    a4 = *(this + 8);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::MutableMessage((a2 + *(this + 10)), a3, a4);
  }

  v11 = sub_100113574(this + 8, a3);
  v12 = *(a3 + 11);
  if (!v12 || *(v12 + 24) == 1 && (*(**(v12 + 32) + 65) & 1) != 0)
  {
    v13 = *(this + 8);
    if (v13 != -1)
    {
      if (*(a3 + 67))
      {
        v14 = *(a3 + 12);
        v15 = (v14 ? v14 + 80 : *(a3 + 5) + 128);
      }

      else
      {
        v15 = (*(a3 + 10) + 40);
      }

      v20 = *(*(this + 3) + ((0x286BCA1B00000000 * ((a3 - *v15) >> 3)) >> 30));
      if (v20 != -1)
      {
        *(a2 + v13 + ((v20 >> 3) & 0x1FFFFFFC)) |= 1 << v20;
      }
    }

LABEL_34:
    v21 = (a2 + v11);
    result = *v21;
    if (*v21)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (*(a2 + *(this + 11) - 1431655764 * ((v12 - *(*(v12 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    goto LABEL_34;
  }

  google::protobuf::Reflection::ClearOneof(this, a2, v12);
  v16 = *(a3 + 11);
  if (!v16 || *(v16 + 24) == 1 && (*(**(v16 + 32) + 65) & 1) != 0)
  {
    v17 = *(this + 8);
    if (v17 != -1)
    {
      if (*(a3 + 67))
      {
        v18 = *(a3 + 12);
        v19 = (v18 ? v18 + 80 : *(a3 + 5) + 128);
      }

      else
      {
        v19 = (*(a3 + 10) + 40);
      }

      v22 = *(*(this + 3) + ((0x286BCA1B00000000 * ((a3 - *v19) >> 3)) >> 30));
      if (v22 != -1)
      {
        *(a2 + v17 + ((v22 >> 3) & 0x1FFFFFFC)) |= 1 << v22;
      }
    }
  }

  else
  {
    *(a2 + *(this + 11) - 1431655764 * ((v16 - *(*(v16 + 16) + 48)) >> 4)) = *(a3 + 17);
  }

  v21 = (a2 + sub_100113574(this + 8, a3));
  DefaultMessageInstance = google::protobuf::Reflection::GetDefaultMessageInstance(this, a3);
  v24 = *(a2 + 1);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = (*(*DefaultMessageInstance + 32))(DefaultMessageInstance, v24);
  *v21 = result;
  if (!result)
  {
LABEL_43:
    v25 = google::protobuf::Reflection::GetDefaultMessageInstance(this, a3);
    v26 = *(a2 + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = (*(*v25 + 32))(v25, v26);
    *v21 = result;
  }

  return result;
}