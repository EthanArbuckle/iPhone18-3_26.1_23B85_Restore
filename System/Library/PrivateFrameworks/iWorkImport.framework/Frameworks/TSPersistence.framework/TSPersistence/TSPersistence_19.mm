void sub_276B64F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B64F84(unsigned __int8 **a1)
{
  if (sub_276B66F14(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 704);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetBoolValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BOOL");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B65068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *sub_276B65080(std::string **a1, const std::string *a2)
{
  if (sub_276B66F14(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 800);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetStringValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "string");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return std::string::operator=(*a1, a2);
}

void sub_276B6516C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65184(uint64_t a1)
{
  if (sub_276B66F14(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 713);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetStringValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "string");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B65264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B6527C(_DWORD **a1, int a2)
{
  if (sub_276B66F14(a1) != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 796);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetEnumValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "enum");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B65364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B6537C(unsigned int **a1)
{
  if (sub_276B66F14(a1) != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 708);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetEnumValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "enum");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B65460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65478(uint64_t a1)
{
  if (sub_276B66F14(a1) != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 814);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueRef::MutableMessageValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "message");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B65558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65570(uint64_t a1)
{
  if (sub_276B66F14(a1) != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 729);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetMessageValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "message");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B65650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::DynamicMapField::Swap(google::protobuf::internal::DynamicMapField *this, google::protobuf::internal::MapFieldBase *a2)
{
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = sub_276B656B8(this + 12, a2 + 12);
  v6 = *(a2 + 22);
  *(a2 + 22) = *(this + 22);
  *(this + 22) = v6;
  return result;
}

uint64_t *sub_276B656B8(uint64_t *a1, uint64_t *a2)
{
  if (a1[5] == a2[5])
  {

    return sub_276B69158(a1, a2);
  }

  else
  {
    sub_276B691AC(v5, a1);
    sub_276B69278(a1, a2);
    sub_276B69278(a2, v5);
    return sub_276B673BC(v5);
  }
}

void *google::protobuf::internal::DynamicMapField::SyncRepeatedFieldWithMapNoLock(google::protobuf::internal::DynamicMapField *this)
{
  (*(**(this + 18) + 152))(*(this + 18));
  v3 = v2;
  v4 = (*(**(this + 18) + 152))(*(this + 18));
  v5 = google::protobuf::Descriptor::map_key(v4);
  v6 = (*(**(this + 18) + 152))(*(this + 18));
  result = google::protobuf::Descriptor::map_value(v6);
  v8 = result;
  v9 = *(this + 2);
  if (!v9)
  {
    v10 = *(this + 1);
    if (!v10)
    {
      operator new();
    }

    result = sub_276B672BC(v10);
    v9 = result;
    *(this + 2) = result;
  }

  v11 = *(v9 + 8);
  if (v11 >= 1)
  {
    v12 = (*(v9 + 16) + 8);
    do
    {
      v13 = *v12++;
      result = (*(*v13 + 40))(v13);
      --v11;
    }

    while (v11);
    *(v9 + 8) = 0;
  }

  v14 = *(this + 15);
  v15 = *(this + 13);
  if (v15 > v14)
  {
    v16 = *(this + 16);
    while (1)
    {
      v17 = *(v16 + 8 * v14);
      if (v17)
      {
        break;
      }

      if (v15 == ++v14)
      {
        return result;
      }
    }

    if (v17 != *(v16 + 8 * (v14 ^ 1)))
    {
      v50 = *(v16 + 8 * v14);
      v51 = this + 96;
      v52 = v14;
      while (1)
      {
LABEL_17:
        v18 = (*(**(this + 18) + 32))(*(this + 18), *(this + 1));
        sub_276B693D8(*(this + 2), v18);
        v19 = v50;
        v20 = *(v5 + 48);
        if (v20)
        {
          v53 = v5;
          v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v20, memory_order_acquire) != -1)
          {
            v47[0].__r_.__value_.__r.__words[0] = &v54;
            v47[0].__r_.__value_.__l.__size_ = &v53;
            v55 = v47;
            std::__call_once(v20, &v55, sub_2769C149C);
          }
        }

        v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
        if (v21 <= 3)
        {
          switch(v21)
          {
            case 1:
              v27 = sub_276B65FDC(v19);
              google::protobuf::Reflection::SetInt32(v3, v18, v5, v27);
              break;
            case 2:
              v28 = sub_276B65EE4(v19);
              google::protobuf::Reflection::SetInt64(v3, v18, v5, v28);
              break;
            case 3:
              v23 = sub_276B661CC(v19);
              google::protobuf::Reflection::SetUInt32(v3, v18, v5, v23);
              break;
          }

          goto LABEL_40;
        }

        if (v21 > 0xA)
        {
          break;
        }

        if (((1 << v21) & 0x560) != 0)
        {
          google::protobuf::internal::LogMessage::LogMessage(v47, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/map_field.cc", 430);
          v22 = google::protobuf::internal::LogMessage::operator<<(v47, "Can't get here.");
          google::protobuf::internal::LogFinisher::operator=(&v55, &v22->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v47[0].__r_.__value_.__l.__data_);
        }

        else if (v21 == 7)
        {
          v29 = sub_276B662C4(v19);
          google::protobuf::Reflection::SetBool(v3, v18, v5, v29);
        }

        else
        {
          if (v21 != 9)
          {
            break;
          }

          v24 = sub_276B65DEC(v19);
          if (*(v24 + 23) < 0)
          {
            sub_276A07B90(__p, *v24, *(v24 + 8));
          }

          else
          {
            v25 = *v24;
            v49 = *(v24 + 16);
            *__p = v25;
          }

          google::protobuf::Reflection::SetString(v3, v18, v5, __p);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_40:
        v30 = v50;
        v31 = *(v8 + 48);
        if (v31)
        {
          v53 = v8;
          v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v31, memory_order_acquire) != -1)
          {
            v47[0].__r_.__value_.__r.__words[0] = &v54;
            v47[0].__r_.__value_.__l.__size_ = &v53;
            v55 = v47;
            std::__call_once(v31, &v55, sub_2769C149C);
          }
        }

        v32 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        if (v32 > 5)
        {
          if (v32 <= 7)
          {
            if (v32 == 6)
            {
              v39 = sub_276B64B84((v30 + 8));
              google::protobuf::Reflection::SetFloat(v3, v18, v8, v39);
            }

            else
            {
              v37 = sub_276B64F84(v30 + 4);
              google::protobuf::Reflection::SetBool(v3, v18, v8, v37);
            }
          }

          else
          {
            switch(v32)
            {
              case 8:
                v41 = sub_276B6537C(v30 + 4);
                google::protobuf::Reflection::SetEnumValue(v3, v18, v8, v41);
                break;
              case 10:
                v43 = sub_276B65570((v30 + 8));
                v44 = google::protobuf::Reflection::MutableMessage(v3, v18, v8, 0);
                (*(*v44 + 112))(v44, v43);
                break;
              case 9:
                v34 = sub_276B65184((v30 + 8));
                if (*(v34 + 23) < 0)
                {
                  sub_276A07B90(v45, *v34, *(v34 + 8));
                }

                else
                {
                  v35 = *v34;
                  v46 = *(v34 + 16);
                  *v45 = v35;
                }

                google::protobuf::Reflection::SetString(v3, v18, v8, v45);
                if (SHIBYTE(v46) < 0)
                {
                  operator delete(v45[0]);
                }

                break;
            }
          }
        }

        else if (v32 <= 2)
        {
          if (v32 == 1)
          {
            v38 = sub_276B6438C(v30 + 4);
            google::protobuf::Reflection::SetInt32(v3, v18, v8, v38);
          }

          else if (v32 == 2)
          {
            v36 = sub_276B64588((v30 + 8));
            google::protobuf::Reflection::SetInt64(v3, v18, v8, v36);
          }
        }

        else if (v32 == 3)
        {
          v40 = sub_276B64784(v30 + 4);
          google::protobuf::Reflection::SetUInt32(v3, v18, v8, v40);
        }

        else if (v32 == 4)
        {
          v42 = sub_276B64980((v30 + 8));
          google::protobuf::Reflection::SetUInt64(v3, v18, v8, v42);
        }

        else
        {
          v33 = sub_276B64D88((v30 + 8));
          google::protobuf::Reflection::SetDouble(v3, v18, v8, v33);
        }

        result = sub_276B67818(&v50);
        if (!v50)
        {
          return result;
        }
      }

      if (v21 == 4)
      {
        v26 = sub_276B660D4(v19);
        google::protobuf::Reflection::SetUInt64(v3, v18, v5, v26);
      }

      goto LABEL_40;
    }

    v50 = *(*v17 + 40);
    v51 = this + 96;
    v52 = v14;
    if (v50)
    {
      goto LABEL_17;
    }
  }

  return result;
}

void sub_276B65DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B65DEC(uint64_t a1)
{
  if (sub_276B66E74(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 144);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetStringValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "string");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_276B65ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65EE4(uint64_t a1)
{
  if (sub_276B66E74(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 124);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B65FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65FDC(unsigned int *a1)
{
  if (sub_276B66E74(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 132);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B660BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B660D4(uint64_t a1)
{
  if (sub_276B66E74(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 128);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetUInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B661B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B661CC(unsigned int *a1)
{
  if (sub_276B66E74(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 136);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetUInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B662AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B662C4(unsigned __int8 *a1)
{
  if (sub_276B66E74(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 140);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetBoolValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BOOL");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B663A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::DynamicMapField::SyncMapWithRepeatedFieldNoLock(google::protobuf::internal::DynamicMapField *this)
{
  v46 = *MEMORY[0x277D85DE8];
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
        v37[0].__r_.__value_.__r.__words[0] = v12;
        v37[0].__r_.__value_.__l.__size_ = v2;
        v37[0].__r_.__value_.__r.__words[2] = v9;
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v37[0].__r_.__value_.__r.__words[0] = *(v11 + 8 * v9);
        v37[0].__r_.__value_.__l.__size_ = v2;
        v37[0].__r_.__value_.__r.__words[2] = v9;
      }

      do
      {
        sub_276B635DC(v12 + 8);
        sub_276B67818(v37);
        v12 = v37[0].__r_.__value_.__r.__words[0];
      }

      while (v37[0].__r_.__value_.__r.__words[0]);
    }
  }

LABEL_11:
  sub_276B67410(v2);
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
      v45 = 0;
      v16 = *(v6 + 48);
      if (v16)
      {
        v40 = v6;
        v41 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v16, memory_order_acquire) != -1)
        {
          v37[0].__r_.__value_.__r.__words[0] = &v41;
          v37[0].__r_.__value_.__l.__size_ = &v40;
          v42 = v37;
          std::__call_once(v16, &v42, sub_2769C149C);
        }
      }

      v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 56)];
      if (v17 <= 3)
      {
        switch(v17)
        {
          case 1:
            Int32 = google::protobuf::Reflection::GetInt32(v4, *v15, v6);
            if (v45 != 1)
            {
              if (v45 == 9 && v44 < 0)
              {
                operator delete(__p[0]);
              }

              v20 = 1;
LABEL_45:
              v45 = v20;
            }

LABEL_46:
            LODWORD(__p[0]) = Int32;
            break;
          case 2:
            Int64 = google::protobuf::Reflection::GetInt64(v4, *v15, v6);
            if (v45 != 2)
            {
              if (v45 == 9 && v44 < 0)
              {
                operator delete(__p[0]);
              }

              v22 = 2;
LABEL_52:
              v45 = v22;
            }

LABEL_53:
            __p[0] = Int64;
            break;
          case 3:
            Int32 = google::protobuf::Reflection::GetUInt32(v4, *v15, v6);
            if (v45 != 3)
            {
              if (v45 == 9 && v44 < 0)
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
            google::protobuf::internal::LogMessage::LogMessage(v37, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/map_field.cc", 513);
            v18 = google::protobuf::internal::LogMessage::operator<<(v37, "Can't get here.");
            google::protobuf::internal::LogFinisher::operator=(&v42, &v18->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v37[0].__r_.__value_.__l.__data_);
            goto LABEL_60;
          }

          if (v17 == 7)
          {
            Bool = google::protobuf::Reflection::GetBool(v4, *v15, v6);
            if (v45 != 7)
            {
              if (v45 == 9 && v44 < 0)
              {
                operator delete(__p[0]);
              }

              v45 = 7;
            }

            LOBYTE(__p[0]) = Bool;
            goto LABEL_60;
          }

          if (v17 == 9)
          {
            google::protobuf::Reflection::GetString(v4, *v15, v6, &v38);
            sub_276B66BFC(__p, &v38);
            if (v39 < 0)
            {
              operator delete(v38.n128_u64[0]);
            }

            goto LABEL_60;
          }
        }

        if (v17 == 4)
        {
          Int64 = google::protobuf::Reflection::GetUInt64(v4, *v15, v6);
          if (v45 != 4)
          {
            if (v45 == 9 && v44 < 0)
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
        sub_276B6798C(v2, __p, 0, v37);
        if (v37[0].__r_.__value_.__r.__words[0])
        {
          sub_276B635DC((v37[0].__r_.__value_.__r.__words[0] + 32));
        }
      }

      sub_276B68644(v2, __p, v37);
      v24 = v37[0].__r_.__value_.__r.__words[0];
      v25 = *(v8 + 48);
      if (v25)
      {
        v40 = v8;
        v41 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v25, memory_order_acquire) != -1)
        {
          v37[0].__r_.__value_.__r.__words[0] = &v41;
          v37[0].__r_.__value_.__l.__size_ = &v40;
          v42 = v37;
          std::__call_once(v25, &v42, sub_2769C149C);
        }

        v26 = *(v8 + 48);
        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        *(v24 + 40) = v27;
        if (v26)
        {
          v40 = v8;
          v41 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v26, memory_order_acquire) != -1)
          {
            v37[0].__r_.__value_.__r.__words[0] = &v41;
            v37[0].__r_.__value_.__l.__size_ = &v40;
            v42 = v37;
            std::__call_once(v26, &v42, sub_2769C149C);
          }

          v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        }
      }

      else
      {
        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        *(v37[0].__r_.__value_.__r.__words[0] + 40) = v27;
      }

      if (v27 > 5)
      {
        if (v27 <= 7)
        {
          if (v27 == 6)
          {
            v28 = sub_276B684AC(*(this + 1));
            *v28 = google::protobuf::Reflection::GetFloat(v4, *v15, v8);
          }

          else
          {
            v28 = sub_276B68578(*(this + 1));
            *v28 = google::protobuf::Reflection::GetBool(v4, *v15, v8);
          }

          goto LABEL_96;
        }

        if (v27 != 8)
        {
          if (v27 == 9)
          {
            v28 = sub_2769C64F4(*(this + 1));
            google::protobuf::Reflection::GetString(v4, *v15, v8, v37);
            if (*(v28 + 23) < 0)
            {
              operator delete(*v28);
            }

            v32 = *&v37[0].__r_.__value_.__l.__data_;
            v28[2] = *(&v37[0].__r_.__value_.__l + 2);
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

        v28 = sub_276B680B0(*(this + 1));
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

          v28 = sub_276B6817C(*(this + 1));
          UInt64 = google::protobuf::Reflection::GetInt64(v4, *v15, v8);
          goto LABEL_92;
        }

        v28 = sub_276B680B0(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetInt32(v4, *v15, v8);
        goto LABEL_90;
      }

      if (v27 == 3)
      {
        v28 = sub_276B68248(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetUInt32(v4, *v15, v8);
LABEL_90:
        *v28 = EnumValue;
        goto LABEL_96;
      }

      if (v27 == 4)
      {
        v28 = sub_276B68314(*(this + 1));
        UInt64 = google::protobuf::Reflection::GetUInt64(v4, *v15, v8);
LABEL_92:
        *v28 = UInt64;
        goto LABEL_96;
      }

      v28 = sub_276B683E0(*(this + 1));
      *v28 = google::protobuf::Reflection::GetDouble(v4, *v15, v8);
LABEL_96:
      *(v24 + 32) = v28;
LABEL_97:
      if (v45 == 9 && v44 < 0)
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

  v36 = *MEMORY[0x277D85DE8];
}

void sub_276B66B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31)
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

__n128 sub_276B66BFC(uint64_t a1, __n128 *a2)
{
  sub_276B67260(a1, 9);
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
    if (sub_276B66E74(v12) == 9)
    {
      v13 = 24 * v8;
    }

    else
    {
      v13 = 0;
    }

    v6 += 48 * v8 + v13;
    v14 = sub_276B66F14(v12 + 32);
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
              v18 = sub_276B65570(v12 + 32);
              (*(*v18 + 152))(v18);
              v6 += google::protobuf::Reflection::SpaceUsedLong(v19, v18);
              sub_276B67818(v22);
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

uint64_t sub_276B66E74(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 91);
    v3 = google::protobuf::internal::LogMessage::operator<<(v7, "Protocol Buffer map usage error:\n");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "MapKey::type MapKey is not initialized. ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Call set methods to initialize MapKey.");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
    return *(a1 + 24);
  }

  return result;
}

void sub_276B66EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B66F14(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result || !*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 742);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "Protocol Buffer map usage error:\n");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "MapValueConstRef::type MapValueConstRef is not initialized.");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    return *(a1 + 8);
  }

  return result;
}

void sub_276B66F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B66FCC(uint64_t a1, void **a2)
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

uint64_t sub_276B670AC(uint64_t a1, void **a2)
{
  result = (*(*a1 + 160))(a1);
  v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  return result;
}

uint64_t sub_276B67140(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276B67160(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = **a3;
  *(v6 + 16) = *(*a3 + 16);
  *v6 = v7;
  v8 = sub_276B66E74((a3 + 4));
  sub_276B67260((a2 + 2), v8);
  *(a2 + 14) = a3[14];
  v9 = *(*a1 + 176);

  return v9(a1, a2);
}

uint64_t sub_276B671FC(uint64_t a1, void **a2)
{
  sub_276B67818(*a2);
  v4 = *(*a1 + 176);

  return v4(a1, a2);
}

void sub_276B67260(uint64_t a1, int a2)
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

void *sub_276B672BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B67318(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_276B67318(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8E94(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_276B673A0);
}

uint64_t sub_276B673BC(uint64_t a1)
{
  if (!*(a1 + 40) && *(a1 + 8) != 1)
  {
    sub_276B67410(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

uint64_t sub_276B67410(uint64_t result)
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

            sub_276B675EC(v5, v8);
            sub_276B6751C(v1, v9);
            v8 = v12;
          }

          while (v12 != (v5 + 1));
          result = sub_276B6758C(v1, v5);
          goto LABEL_16;
        }

        *(v4 + 8 * v3) = 0;
        do
        {
          v6 = v5[6];
          result = sub_276B6751C(v1, v5);
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

uint64_t sub_276B6751C(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    if (*(a2 + 24) == 9 && *(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276B6758C(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    sub_276B676A8(a2, *(a2 + 8));

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t *sub_276B675EC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_276B67634(a1, a2);
  if (!*(a1 + 16))
  {
    operator delete(a2);
  }

  return v4;
}

uint64_t *sub_276B67634(uint64_t a1, uint64_t *a2)
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
  sub_276A9A40C(*(a1 + 8), a2);
  return v3;
}

void sub_276B676A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276B676A8(a1, *a2);
    sub_276B676A8(a1, a2[1]);
    if (!*(a1 + 16))
    {

      operator delete(a2);
    }
  }
}

uint64_t sub_276B6770C(uint64_t a1, char *a2)
{
  *a1 = &unk_2885C7B80;
  *(a1 + 8) = a2;
  *(a1 + 24) = 850045863;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  if (a2)
  {
    sub_276B67794(a2, (a1 + 24));
  }

  return a1;
}

char *sub_276B67794(char *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, std::mutex::~mutex);
  }

  return result;
}

void *sub_276B677B4(void *result, unint64_t a2)
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

void *sub_276B67818(void *a1)
{
  v2 = *(*a1 + 48);
  if (v2)
  {
    goto LABEL_2;
  }

  if (sub_276B678D4(a1, &v11))
  {
    v3 = a1[2] + 1;
LABEL_13:
    sub_276B677B4(a1, v3);
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

BOOL sub_276B678D4(uint64_t a1, unint64_t *a2)
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

  sub_276B6798C(v4, v5, a2, &v13);
  v9 = v14;
  *(a1 + 16) = v14;
  v10 = *(*(a1 + 8) + 32);
  v11 = *(v10 + 8 * v9);
  return !v11 || v11 != *(v10 + 8 * (v9 ^ 1));
}

unint64_t sub_276B6798C@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_276B67A80(a1, a2);
  v9 = (a1[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[2] ^ result)) >> 32);
  v10 = a1[4];
  v11 = *(v10 + 8 * v9);
  if (v11)
  {
    if (v11 != *(v10 + 8 * (v9 ^ 1)))
    {
      while (1)
      {
        result = sub_276B67C44(v11, a2);
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
    result = sub_276B67E40(v12, &v13);
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

unint64_t sub_276B67A80(uint64_t a1, unsigned int *a2)
{
  v3 = sub_276B66E74(a2);
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      sub_276B65FDC(a2);
      return sub_276B65FDC(a2);
    }

    if (v3 == 2)
    {

      return sub_276B65EE4(a2);
    }

    if (v3 != 3)
    {
      goto LABEL_5;
    }

    sub_276B661CC(a2);
    LODWORD(result) = sub_276B661CC(a2);
    return result;
  }

  if (v3 <= 0xA)
  {
    if (((1 << v3) & 0x560) != 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 278);
      v4 = google::protobuf::internal::LogMessage::operator<<(v9, "Unsupported");
      google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
LABEL_5:
      google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 302);
      v5 = google::protobuf::internal::LogMessage::operator<<(v9, "Can't get here.");
      google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return 0;
    }

    if (v3 != 7)
    {
      if (v3 == 9)
      {
        v7 = sub_276B65DEC(a2);
        return sub_276B289F0(v9, v7);
      }

      goto LABEL_13;
    }

    LODWORD(result) = sub_276B662C4(a2);
    return result;
  }

LABEL_13:
  if (v3 != 4)
  {
    goto LABEL_5;
  }

  sub_276B660D4(a2);

  return sub_276B660D4(a2);
}

void sub_276B67C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL sub_276B67C44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*(a1 + 6) != *(a2 + 6))
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 180);
    v4 = google::protobuf::internal::LogMessage::operator<<(v20, "Unsupported: type mismatch");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  v5 = sub_276B66E74(a1);
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
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 187);
    v6 = google::protobuf::internal::LogMessage::operator<<(v20, "Unsupported");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
LABEL_7:
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 202);
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

void sub_276B67E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B67E40(uint64_t a1, unsigned __int8 **a2)
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
    v6 = sub_276B67EC4(*(v3 + 32), *a2);
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
  if (v5 == v2 || sub_276B67EC4(*a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

BOOL sub_276B67EC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*(a1 + 6) != *(a2 + 6))
  {
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 152);
    v4 = google::protobuf::internal::LogMessage::operator<<(v21, "Unsupported: type mismatch");
    google::protobuf::internal::LogFinisher::operator=(&v20, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v21[0].__r_.__value_.__l.__data_);
  }

  v5 = sub_276B66E74(a1);
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
    google::protobuf::internal::LogMessage::LogMessage(v21, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 159);
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

void sub_276B68090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_276B680B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B680F0(a1, 1);
  *result = 0;
  return result;
}

void *sub_276B680F0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8EC4(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_19);
}

void *sub_276B6817C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B681BC(a1, 1);
  *result = 0;
  return result;
}

void *sub_276B681BC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8EF4(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_20);
}

void *sub_276B68248(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B68288(a1, 1);
  *result = 0;
  return result;
}

void *sub_276B68288(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8F24(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_21);
}

void *sub_276B68314(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B68354(a1, 1);
  *result = 0;
  return result;
}

void *sub_276B68354(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8F54(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_22);
}

void *sub_276B683E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B68420(a1, 1);
  *result = 0;
  return result;
}

void *sub_276B68420(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8F84(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_23);
}

void *sub_276B684AC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B684EC(a1, 1);
  *result = 0;
  return result;
}

void *sub_276B684EC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8FB4(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_24);
}

void *sub_276B68578(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B685B8(a1, 1);
  *result = 0;
  return result;
}

void *sub_276B685B8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8FE4(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 8uLL, nullsub_25);
}

unint64_t sub_276B68644@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_276B6798C(a1, a2, 0, &v16);
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
    if (sub_276B687A4(a1, *a1 + 1))
    {
      sub_276B6798C(a1, a2, 0, &v13);
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

    v11 = sub_276B68838(a1, 1);
    v12 = a1[5];
    v11[6] = 0;
    sub_276B63E04(v11, a2);
    sub_276B68C28(v12, v11);
    *(v11 + 4) = 0;
    v11[10] = 0;
    result = sub_276B68854(a1, v10, v11, a3);
    ++*a1;
    v7 = 1;
  }

  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_276B687A4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = ((3 * v2) >> 2) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= a2)
  {
    if (v2 <= 0x800000000000000)
    {
      v6 = 2 * v2;
LABEL_16:
      sub_276B68954(a1, v6);
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

void *sub_276B68838(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = 56 * a2;
  if (v2)
  {
    return sub_276B68BD4(v2, v3);
  }

  else
  {
    return operator new(v3);
  }
}

uint64_t *sub_276B68854@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
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

    sub_276B68C64(result, a2);
    *(v4 + 48) = 0;
    v14 = *(v6[4] + 8 * v5);
    v15.n128_u64[0] = v4;
    v15.n128_u64[1] = v4;
    result = sub_276B68E44(v14, &v15, &v15);
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
  result = sub_276B68E44(v13, &v15, &v15);
  *a4 = result[5];
  a4[1] = v6;
  a4[2] = v5 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void sub_276B68954(uint64_t a1, size_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    *(a1 + 24) = 8;
    *(a1 + 8) = 8;
    v4 = sub_276B68BBC(a1, 8uLL);
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
    v7 = sub_276B68BBC(a1, a2);
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
          sub_276B68AF4(a1, v6, v8++);
        }

        else
        {
          sub_276B68A74(a1, v6, v8);
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

uint64_t *sub_276B68A74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  do
  {
    v5 = *(v4 + 48);
    v6 = sub_276B67A80(a1, v4);
    result = sub_276B68854(a1, (a1[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[2] ^ v6)) >> 32), v4, v8);
    v4 = v5;
  }

  while (v5);
  return result;
}

uint64_t sub_276B68AF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  v5 = *v4;
  do
  {
    v6 = sub_276B67A80(a1, v5[4]);
    sub_276B68854(a1, (a1[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[2] ^ v6)) >> 32), v5[5], v11);
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
  return sub_276B6758C(a1, v4);
}

void *sub_276B68BBC(uint64_t a1, size_t __sz)
{
  v2 = *(a1 + 40);
  v3 = 8 * __sz;
  if (v2)
  {
    return sub_276B68BD4(v2, v3);
  }

  else
  {
    return operator new(v3);
  }
}

uint64_t sub_276B68BD4(google::protobuf::Arena *this, uint64_t a2)
{
  v3 = a2 + 7;
  if (*(this + 24))
  {
    sub_276BD9014(this);
  }

  return google::protobuf::Arena::AllocateAlignedNoHook(this, v3 & 0xFFFFFFFFFFFFFFF8);
}

char *sub_276B68C28(char *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, sub_276B68C44);
  }

  return result;
}

void sub_276B68C44(uint64_t a1)
{
  if (*(a1 + 24) == 9 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_276B68C64(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 40);
  v4 = sub_276B68D58(v6, &v7, &v6);
  sub_276B68CE4(a1, a2, v4);
  result = sub_276B68CE4(a1, a2 ^ 1, v4);
  *(*(a1 + 32) + 8 * (a2 ^ 1)) = v4;
  *(*(a1 + 32) + 8 * a2) = v4;
  return result;
}

uint64_t sub_276B68CE4(uint64_t a1, uint64_t a2, uint64_t **a3)
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
    sub_276B68E44(a3, &v8, &v8);
    ++v5;
    v6 = *(v3 + 48);
    *(v3 + 48) = 0;
    v3 = v6;
  }

  while (v6);
  return v5;
}

void *sub_276B68D58(google::protobuf::Arena *a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B68DB4(a1, 0);
  v5 = *a3;
  result[1] = 0;
  result[2] = v5;
  result[3] = 0;
  *result = result + 1;
  return result;
}

void *sub_276B68DB4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD9050(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276B68E3C);
}

uint64_t *sub_276B68E44(uint64_t **a1, unsigned __int8 **a2, __n128 *a3)
{
  v5 = sub_276B68EC4(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_276B68F4C(a1, a3, &v7);
    sub_276B68FB0(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t *sub_276B68EC4(uint64_t a1, void *a2, unsigned __int8 **a3)
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
        if (!sub_276B67EC4(*a3, v4[4]))
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

      if (!sub_276B67EC4(v7[4], *a3))
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

__n128 sub_276B68F4C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = sub_276B68BD4(v5, 48);
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

uint64_t *sub_276B68FB0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_276A51C74(a1[1], a4);
  a1[3] = (a1[3] + 1);
  return result;
}

uint64_t sub_276B69008(void *a1, uint64_t *a2)
{
  v4 = sub_276B678D4(a2, &v16);
  v5 = a2[2];
  v6 = *a2;
  v7 = a1[4];
  v8 = *(v7 + 8 * v5);
  if (v4)
  {
    v9 = sub_276B69118(a1, v6, *(v7 + 8 * v5));
LABEL_5:
    *(a1[4] + 8 * v5) = v9;
    goto LABEL_6;
  }

  sub_276B675EC(*(v7 + 8 * v5), v16);
  if (!*(v8 + 24))
  {
    sub_276B6758C(a1, v8);
    v9 = 0;
    *(a1[4] + ((8 * v5) | 8)) = 0;
    v5 &= ~1uLL;
    goto LABEL_5;
  }

LABEL_6:
  result = sub_276B6751C(a1, v6);
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

uint64_t sub_276B69118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a3 + 48);
  if (v3 == a2)
  {
    return v4;
  }

  *(v3 + 48) = sub_276B69118();
  return v3;
}

uint64_t *sub_276B69158(uint64_t *result, uint64_t *a2)
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

uint64_t sub_276B691AC(uint64_t a1, void *a2)
{
  *a1 = xmmword_276C19EB0;
  *(a1 + 16) = xmmword_276C19EB0;
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
  sub_276B6932C(a1, &v9, v8);
  return a1;
}

uint64_t *sub_276B69278(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_276B67410(a1);
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
    sub_276B6932C(a1, &v10, v9);
  }

  return a1;
}

uint64_t *sub_276B6932C(uint64_t *result, __int128 *a2, void *a3)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v3 = v9;
  if (v9 != *a3)
  {
    v5 = result;
    do
    {
      sub_276B6798C(v5, v3, 0, v11);
      if (!v11[0])
      {
        v6 = v9;
        sub_276B68644(v5, v9, v11);
        v7 = v11[0];
        v8 = *(v6 + 32);
        *(v11[0] + 40) = *(v6 + 40);
        *(v7 + 32) = v8;
      }

      result = sub_276B67818(&v9);
      v3 = v9;
    }

    while (v9 != *a3);
  }

  return result;
}

unsigned int *sub_276B693D8(uint64_t a1, void *a2)
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

    return sub_276B6949C(a1, a2, Arena, v5);
  }

  return result;
}

unsigned int *sub_276B6949C(unsigned int *a1, void *a2, char *a3, char *a4)
{
  v5 = a2;
  if (a3 || !a4)
  {
    if (a4 != a3)
    {
      v7 = google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::NewFromPrototype(a2);
      sub_276B69550(v5, v7);
      if (!a3)
      {
        (*(*v5 + 8))(v5);
      }

      v5 = v7;
    }
  }

  else
  {
    sub_276A08058(a4, a2);
  }

  return sub_276B62140(a1, v5);
}

uint64_t google::protobuf::internal::MessageSetFieldSkipper::SkipMessageSetField(google::protobuf::internal::MessageSetFieldSkipper *this, char **a2, int a3)
{
  v6 = *a2;
  if (*a2 >= a2[1])
  {
    LODWORD(Varint32Fallback) = 0;
  }

  else
  {
    LODWORD(Varint32Fallback) = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      *a2 = v6 + 1;
      goto LABEL_6;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, Varint32Fallback);
  if (Varint32Fallback < 0)
  {
    return 0;
  }

LABEL_6:
  v8 = *(this + 1);
  if (v8)
  {
    google::protobuf::UnknownFieldSet::AddLengthDelimited(v8, a3);
  }

  if ((Varint32Fallback & 0x80000000) != 0)
  {
    return 0;
  }

  v9 = *(a2 + 2) - *a2;
  if (Varint32Fallback <= v9)
  {
    *a2 += Varint32Fallback;
    return 1;
  }

  else
  {

    return google::protobuf::io::CodedInputStream::SkipFallback(a2, Varint32Fallback, v9);
  }
}

double google::protobuf::internal::ExtensionSet::AppendToList(uint64_t a1, const google::protobuf::Descriptor *a2, google::protobuf::DescriptorPool *a3, const void **a4)
{
  v35 = a4;
  v6 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v33 = *v6;
    v36[0] = a2;
    v36[1] = a3;
    v36[2] = &v35;
    *&result = sub_276B6BFEC(v33, (v6 + 8), v36, v34).n128_u64[0];
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
        sub_276B2A0B4(v35, v23);
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
        sub_2769BA860();
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
        sub_276B2A0B4(v35, v27);
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

uint64_t google::protobuf::internal::ExtensionSet::GetMessage(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::Descriptor *a3, MessageFactory *a4)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, a2);
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
        std::__call_once(v6, &v21, sub_2769C149C);
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

uint64_t google::protobuf::internal::ExtensionSet::ReleaseMessage(google::protobuf::internal::ExtensionSet *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::MessageFactory *a3)
{
  v6 = google::protobuf::internal::ExtensionSet::FindOrNull(this, *(a2 + 17));
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if ((*(v6 + 10) & 0x10) != 0)
  {
    v9 = *v6;
    v10 = google::protobuf::FieldDescriptor::message_type(a2);
    v11 = (*(*a3 + 16))(a3, v10);
    v8 = (*(*v9 + 56))(v9, v11);
    if (!*this && *v7)
    {
      (*(**v7 + 8))(*v7);
    }
  }

  else
  {
    v8 = *v6;
    if (*this)
    {
      v8 = (*(*v8 + 24))(*v6);
      (*(*v8 + 64))(v8, *v7);
    }
  }

  google::protobuf::internal::ExtensionSet::Erase(this, *(a2 + 17));
  return v8;
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
        std::__call_once(v4, &v11, sub_2769C149C);
      }
    }

    v5 = v8;
    *(v8 + 8) = *(a2 + 14);
    *(v5 + 9) = 1;
    v6 = sub_276B61FD8(*this);
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
      google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set_heavy.cc", 273);
      v14 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: prototype != NULL: ");
      google::protobuf::internal::LogFinisher::operator=(&v16, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
      v12 = 0;
    }
  }

  v11 = (*(*v12 + 32))(v12, *this);
  sub_276B620EC(*v7, v11);
  return v11;
}

void sub_276B69FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::ExtensionSet::AddAllocatedMessage(google::protobuf::Arena **this, const google::protobuf::FieldDescriptor *a2, google::protobuf::MessageLite *a3)
{
  v4 = *google::protobuf::internal::ExtensionSet::MaybeNewRepeatedExtension(this, a2);

  return sub_276B620EC(v4, a3);
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
        std::__call_once(v7, &v21, sub_2769C149C);
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
        std::__call_once(v7, &v21, sub_2769C149C);
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
        google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set_heavy.cc", 308);
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
          std::__call_once(v16, &v21, sub_2769C149C);
        }

        v9 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 56)];
      }

      if (v9 == 8)
      {
        *(a3 + 8) = sub_276B6A288;
        *(a3 + 16) = google::protobuf::FieldDescriptor::enum_type(v6);
      }
    }
  }

  return v6 != 0;
}

void sub_276B6A270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, google::protobuf::internal *a2, google::protobuf::internal *a3, const google::protobuf::Message *a4, InternalMetadata *a5, int32x2_t *a6)
{
  v11 = a2 >> 3;
  LOBYTE(v16) = 0;
  if (sub_276B6A368(this, a2 & 7, a2 >> 3, a4, a6, v15, &v16))
  {
    return sub_276B6A4AC(this, v11, v16, v15, a5, a3, a6);
  }

  if (a5->ptr_)
  {
    v14 = ((a5->ptr_ & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v14 = sub_2769F617C(a5);
  }

  return google::protobuf::internal::UnknownFieldParse(a2, v14, a3, a6, v12);
}

uint64_t sub_276B6A368(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, _BYTE *a7)
{
  v12 = *(a5 + 96);
  if (v12)
  {
    v13 = *(a5 + 104);
    v14 = (*(*a4 + 152))(a4);
    v18 = &unk_2885C7DC8;
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
    v18 = &unk_2885C7980;
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

char *sub_276B6A4AC(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, google::protobuf::Arena **a5, google::protobuf::internal *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = this;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v54 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 1, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedDoubleParser(v54, v8, a7, v55);
        break;
      case 2:
        v56 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 2, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFloatParser(v56, v8, a7, v57);
        break;
      case 3:
        v40 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 3, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt64Parser(v40, v8, a7, v41);
        break;
      case 4:
        v48 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 4, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt64Parser(v48, v8, a7, v49);
        break;
      case 5:
        v30 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 5, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt32Parser(v30, v8, a7, v31);
        break;
      case 6:
        v64 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 6, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed64Parser(v64, v8, a7, v65);
        break;
      case 7:
        v73 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 7, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed32Parser(v73, v8, a7, v74);
        break;
      case 8:
        v51 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 8, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedBoolParser(v51, v8, a7, v52);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        google::protobuf::internal::LogMessage::LogMessage(&v101, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/extension_set_inl.h", 79);
        v13 = google::protobuf::internal::LogMessage::operator<<(&v101, "Non-primitive types can't be packed.");
        google::protobuf::internal::LogFinisher::operator=(&v100, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v101.__r_.__value_.__l.__data_);
        goto LABEL_169;
      case 0xD:
        v32 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 13, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt32Parser(v32, v8, a7, v33);
        break;
      case 0xE:
        v101.__r_.__value_.__r.__words[0] = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v101.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v102 = a5;
        v103 = v11;
        v8 = sub_276B6C1F0(a7, v8, &v101);
        goto LABEL_169;
      case 0xF:
        v20 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 15, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed32Parser(v20, v8, a7, v21);
        break;
      case 0x10:
        v43 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 16, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed64Parser(v43, v8, a7, v44);
        break;
      case 0x11:
        v16 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 17, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt32Parser(v16, v8, a7, v17);
        break;
      case 0x12:
        v60 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 18, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt64Parser(v60, v8, a7, v61);
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
        v58 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v58, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetDouble(this, a2, 1, v58, *(a4 + 24));
        }

        goto LABEL_169;
      case 2:
        v8 = (a6 + 4);
        v59 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v59, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetFloat(this, a2, 2, v59, *(a4 + 24));
        }

        goto LABEL_169;
      case 3:
        v42 = *a6;
        if ((v42 & 0x8000000000000000) != 0)
        {
          v42 = (*(a6 + 1) << 7) + v42 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v42);
            if (!v8)
            {
              goto LABEL_169;
            }

            v42 = v96;
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
          v45 = *(a4 + 2);
          v46 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v47 = 3;
          goto LABEL_157;
        }

        v84 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v85 = 3;
        goto LABEL_159;
      case 4:
        v50 = *a6;
        if ((v50 & 0x8000000000000000) != 0)
        {
          v50 = (*(a6 + 1) << 7) + v50 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v50);
            if (!v8)
            {
              goto LABEL_169;
            }

            v50 = v97;
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
          v66 = *(a4 + 2);
          v67 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v68 = 4;
          goto LABEL_147;
        }

        v86 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v87 = 4;
        goto LABEL_149;
      case 5:
        v35 = *a6;
        if ((v35 & 0x8000000000000000) != 0)
        {
          v35 = (*(a6 + 1) << 7) + v35 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v35);
            if (!v8)
            {
              goto LABEL_169;
            }

            LODWORD(v35) = v95;
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
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v25 = 5;
          v92 = v35;
          goto LABEL_135;
        }

        v82 = *(a4 + 24);
        this = v12;
        a2 = v11;
        v83 = 5;
        v93 = v35;
        goto LABEL_137;
      case 6:
        v8 = (a6 + 8);
        v50 = *a6;
        if (*(a4 + 1) == 1)
        {
          v66 = *(a4 + 2);
          v67 = *(a4 + 24);
          v68 = 6;
LABEL_147:
          google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, v68, v66, v50, v67);
        }

        else
        {
          v86 = *(a4 + 24);
          v87 = 6;
LABEL_149:
          google::protobuf::internal::ExtensionSet::SetUInt64(this, a2, v87, v50, v86);
        }

        goto LABEL_169;
      case 7:
        v8 = (a6 + 4);
        v75 = *a6;
        if (*(a4 + 1) == 1)
        {
          v76 = *(a4 + 2);
          v77 = *(a4 + 24);
          v78 = 7;
          v79 = v75;
          goto LABEL_128;
        }

        v88 = *(a4 + 24);
        v89 = 7;
        v90 = *a6;
        goto LABEL_130;
      case 8:
        v53 = *a6;
        if ((v53 & 0x8000000000000000) != 0)
        {
          v53 = (*(a6 + 1) << 7) + v53 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v53);
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
          google::protobuf::internal::ExtensionSet::AddBool(v12, v11, 8, *(a4 + 2), v53 != 0, *(a4 + 24));
        }

        else
        {
          google::protobuf::internal::ExtensionSet::SetBool(v12, v11, 8, v53 != 0, *(a4 + 24));
        }

        goto LABEL_169;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v36 = google::protobuf::internal::ExtensionSet::AddString(this, a2, 9, v15);
        }

        else
        {
          v36 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, 9, v15);
        }

        v37 = v36;
        v38 = *v8;
        if (*v8 < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback(v8, *v8);
          if (!SizeFallback)
          {
            v8 = 0;
            goto LABEL_169;
          }

          v39 = SizeFallback;
          v38 = v81;
        }

        else
        {
          v39 = v8 + 1;
        }

        return sub_276B62314(a7, v39, v38, v37);
      case 0xA:
        v69 = *(a4 + 1);
        v70 = *(a4 + 8);
        v71 = *(a4 + 24);
        if (v69 == 1)
        {
          v72 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v70, v71);
        }

        else
        {
          v72 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v70, v71);
        }

        return sub_276B62380(a7, v72, v8, (8 * v11) | 3);
      case 0xB:
        v26 = *(a4 + 1);
        v27 = *(a4 + 8);
        v28 = *(a4 + 24);
        if (v26 == 1)
        {
          v29 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 11, v27, v28);
        }

        else
        {
          v29 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 11, v27, v28);
        }

        return google::protobuf::internal::ParseContext::ParseMessage(a7, v29, v8);
      case 0xD:
        v34 = *a6;
        if ((v34 & 0x8000000000000000) != 0)
        {
          v34 = (*(a6 + 1) << 7) + v34 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v34);
            if (!v8)
            {
              goto LABEL_169;
            }

            LODWORD(v34) = v94;
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
          v76 = *(a4 + 2);
          v77 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v78 = 13;
          v79 = v34;
LABEL_128:
          google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, v78, v76, v79, v77);
        }

        else
        {
          v88 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v89 = 13;
          v90 = v34;
LABEL_130:
          google::protobuf::internal::ExtensionSet::SetUInt32(this, a2, v89, v90, v88);
        }

        goto LABEL_169;
      case 0xE:
        v63 = *a6;
        if (v63 < 0)
        {
          v91 = (*(a6 + 1) << 7) + v63;
          v63 = (v91 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v91 - 128));
            if (!v8)
            {
              goto LABEL_169;
            }

            v63 = v98;
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

        if ((*(a4 + 8))(*(a4 + 16), v63))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(v12, v11, 14, *(a4 + 2), v63, *(a4 + 24));
          }

          else
          {
            google::protobuf::internal::ExtensionSet::SetEnum(v12, v11, 14, v63, *(a4 + 24));
          }
        }

        else
        {
          if (*a5)
          {
            v99 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v99 = sub_2769F617C(a5);
          }

          google::protobuf::UnknownFieldSet::AddVarint(v99, v11, v63);
        }

        goto LABEL_169;
      case 0xF:
        v8 = (a6 + 4);
        v22 = *a6;
        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          v25 = 15;
          goto LABEL_121;
        }

        v82 = *(a4 + 24);
        v83 = 15;
        goto LABEL_123;
      case 0x10:
        v8 = (a6 + 8);
        v42 = *a6;
        if (*(a4 + 1) == 1)
        {
          v45 = *(a4 + 2);
          v46 = *(a4 + 24);
          v47 = 16;
          goto LABEL_157;
        }

        v84 = *(a4 + 24);
        v85 = 16;
        goto LABEL_159;
      case 0x11:
        v19 = *a6;
        if ((v19 & 0x8000000000000000) != 0)
        {
          v19 = (*(a6 + 1) << 7) + v19 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v19);
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

        v22 = -(v19 & 1) ^ (v19 >> 1);
        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v25 = 17;
LABEL_121:
          v92 = v22;
LABEL_135:
          google::protobuf::internal::ExtensionSet::AddInt32(this, a2, v25, v23, v92, v24);
        }

        else
        {
          v82 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v83 = 17;
LABEL_123:
          v93 = v22;
LABEL_137:
          google::protobuf::internal::ExtensionSet::SetInt32(this, a2, v83, v93, v82);
        }

        goto LABEL_169;
      case 0x12:
        v62 = *a6;
        if ((v62 & 0x8000000000000000) != 0)
        {
          v62 = (*(a6 + 1) << 7) + v62 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v62);
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

        v42 = -(v62 & 1) ^ (v62 >> 1);
        if (*(a4 + 1) == 1)
        {
          v45 = *(a4 + 2);
          v46 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v47 = 18;
LABEL_157:
          google::protobuf::internal::ExtensionSet::AddInt64(this, a2, v47, v45, v42, v46);
        }

        else
        {
          v84 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v85 = 18;
LABEL_159:
          google::protobuf::internal::ExtensionSet::SetInt64(this, a2, v85, v42, v84);
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

void sub_276B6B124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *sub_276B6B1D4(google::protobuf::internal::ExtensionSet *a1, google::protobuf::internal *a2, const google::protobuf::Message *a3, InternalMetadata *a4, uint64_t a5)
{
  v9 = 0;
  LODWORD(v10) = 0;
  v47 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = a2;
  __p[0] = 0;
  __p[1] = 0;
LABEL_2:
  while (2)
  {
    v11 = v9;
    while (1)
    {
      v12 = sub_2769F6104(a5, &v43, *(a5 + 92));
      v13 = v43;
      if (v12)
      {
        TagFallback = v43;
        goto LABEL_53;
      }

      TagFallback = (v43 + 1);
      v43 = (v43 + 1);
      LODWORD(v15) = *v13;
      if (v15 != 26)
      {
        break;
      }

      if (!v10)
      {
        v28 = *TagFallback;
        if (*TagFallback < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback((v13 + 1), *TagFallback);
          v43 = SizeFallback;
          if (!SizeFallback)
          {
LABEL_51:
            TagFallback = 0;
            goto LABEL_53;
          }

          v28 = v30;
        }

        else
        {
          SizeFallback = v13 + 2;
          v43 = (v13 + 2);
        }

        LODWORD(v10) = 0;
        v43 = sub_276B62314(a5, SizeFallback, v28, __p);
        v9 = 1;
        if (v43)
        {
          goto LABEL_2;
        }

        goto LABEL_51;
      }

      v17 = google::protobuf::internal::ExtensionSet::ParseField(a1, ((8 * v10) | 2), TagFallback, a3, a4, a5);
      LODWORD(v10) = 0;
LABEL_15:
      v43 = v17;
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    if (v15 == 16)
    {
      v18 = *TagFallback;
      v19 = v18 + v18;
      v20 = v19 & (2 * v18);
      v10 = v20 >> 1;
      if ((v20 & 0x8000) != 0)
      {
        TagFallback = (v13 + 3);
        v31 = 13;
        while (1)
        {
          v32 = *TagFallback;
          v33 = v32 + v32;
          v10 += ((v33 & (2 * v32)) - 2) << v31;
          if ((v33 & (2 * v32) & 0x8000) == 0)
          {
            break;
          }

          v31 += 14;
          TagFallback = (TagFallback + 2);
          if (v31 == 69)
          {
            TagFallback = 0;
            v43 = 0;
            goto LABEL_53;
          }
        }

        v21 = v33 >= v32;
      }

      else
      {
        v21 = v19 >= v18;
      }

      v22 = !v21;
      v9 = 0;
      if (v22)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      v43 = (TagFallback + v23);
      if (v11)
      {
        v37 = 0;
        if ((sub_276B6A368(a1, 2, v10, a3, a5, v38, &v37) & 1) == 0)
        {
          sub_276B280C4(&v44, __p, v24);
          if (a4->ptr_)
          {
            v26 = ((a4->ptr_ & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v26 = sub_2769F617C(a4);
          }

          google::protobuf::UnknownFieldSet::AddLengthDelimited(v26, v10);
        }

        if (v38[1] == 1)
        {
          v25 = google::protobuf::internal::ExtensionSet::AddMessage(a1, v10, 11, v39, v40);
        }

        else
        {
          v25 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, v10, 11, v39, v40);
        }

        v27 = v25;
        v36 = 0;
        sub_276B626C0(&v44, *(a5 + 88), 0, &v36, __p);
        v46 = *(a5 + 96);
        if ((*(*v27 + 88))(v27, v36, &v44) && !v45)
        {
          LODWORD(v10) = 0;
          v9 = 1;
          continue;
        }

        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  if ((v15 & 0x80) != 0)
  {
    v15 = (v15 + (*TagFallback << 7) - 128);
    if (*TagFallback < 0)
    {
      TagFallback = google::protobuf::internal::ReadTagFallback(v13, v15);
    }

    else
    {
      TagFallback = (v13 + 2);
    }
  }

  v43 = TagFallback;
  if (v15)
  {
    v16 = (v15 & 7) == 4;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = google::protobuf::internal::ExtensionSet::ParseField(a1, v15, TagFallback, a3, a4, a5);
    goto LABEL_15;
  }

  *(a5 + 80) = v15 - 1;
LABEL_53:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  v34 = *MEMORY[0x277D85DE8];
  return TagFallback;
}

void sub_276B6B560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::Message *a4, google::protobuf::UnknownFieldSet *a5)
{
  v18[0] = &unk_2885C9190;
  v18[1] = a5;
  v8 = *(a3 + 8);
  if (v8)
  {
    v9 = *(a3 + 9);
    v10 = (*(*a4 + 152))(a4);
    v14 = &unk_2885C7DC8;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    v11 = google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, &v14, v18);
  }

  else
  {
    v14 = &unk_2885C7980;
    v15 = a4;
    v11 = google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, &v14, v18);
  }

  v12 = v11;
  google::protobuf::internal::ExtensionFinder::~ExtensionFinder(&v14);
  return v12;
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSet(google::protobuf::internal::ExtensionSet *this, google::protobuf::io::CodedInputStream *a2, const google::protobuf::Message *a3, google::protobuf::UnknownFieldSet *a4)
{
  v16[0] = &unk_2885C7D70;
  v16[1] = a4;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 9);
    v8 = (*(*a3 + 152))(a3);
    v12 = &unk_2885C7DC8;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v9 = google::protobuf::internal::ExtensionSet::ParseMessageSet(this, a2, &v12, v16);
  }

  else
  {
    v12 = &unk_2885C7980;
    v13 = a3;
    v9 = google::protobuf::internal::ExtensionSet::ParseMessageSet(this, a2, &v12, v16);
  }

  v10 = v9;
  google::protobuf::internal::ExtensionFinder::~ExtensionFinder(&v12);
  return v10;
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSet(google::protobuf::internal::ExtensionSet *this, char **a2, google::protobuf::internal::ExtensionFinder *a3, google::protobuf::internal::MessageSetFieldSkipper *a4)
{
  while (1)
  {
    while (1)
    {
      v8 = sub_276B5D188(a2);
      if (v8 != 11)
      {
        break;
      }

      if ((google::protobuf::internal::ExtensionSet::ParseMessageSetItem(this, a2, a3, a4, v9) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v8)
    {
      break;
    }

    if ((google::protobuf::internal::ExtensionSet::ParseField(this, v8, a2, a3, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t google::protobuf::internal::ExtensionSet::SpaceUsedExcludingSelfLong(google::protobuf::internal::ExtensionSet *this)
{
  if (*(this + 4) >= 0x101u)
  {
    v5 = *(this + 2);
    v6 = 32 * *(v5 + 16);
    sub_276B6C48C(*v5, (v5 + 8), &v6);
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

unsigned __int8 *google::protobuf::internal::ExtensionSet::SerializeMessageSetWithCachedSizesToArray(google::protobuf::internal::ExtensionSet *this, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = &a2[google::protobuf::internal::ExtensionSet::MessageSetByteSize(this)];
  v6[1] = 0;
  v6[6] = 0;
  v7 = 0;
  v8 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  result = google::protobuf::internal::ExtensionSet::InternalSerializeMessageSetWithCachedSizesToArray(this, a2, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSetItem(google::protobuf::internal::ExtensionSet *this, char **a2, google::protobuf::internal::ExtensionFinder *a3, google::protobuf::internal::MessageSetFieldSkipper *a4, __n128 a5)
{
  v9 = 0;
  memset(&v41, 0, sizeof(v41));
  a5.n128_u64[0] = 0xFFFFFFFF00000000;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v10 = *a2;
          if (*a2 >= a2[1])
          {
            v11 = 0;
          }

          else
          {
            v11 = *v10;
            if ((*v10 & 0x80000000) == 0)
            {
              *a2 = v10 + 1;
              goto LABEL_7;
            }
          }

          LODWORD(v11) = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v11);
LABEL_7:
          if (v11 <= 25)
          {
            break;
          }

          if (v11 != 26)
          {
            goto LABEL_14;
          }

          if (v9)
          {
            v12 = google::protobuf::internal::ExtensionSet::ParseField(this, (8 * v9) | 2u, a2, a3, a4);
LABEL_15:
            if ((v12 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v14 = *a2;
            if (*a2 >= a2[1])
            {
              v15 = 0;
LABEL_36:
              Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
              v15 = Varint32Fallback;
              if ((Varint32Fallback & 0x8000000080000000) != 0)
              {
                goto LABEL_56;
              }

              goto LABEL_37;
            }

            v15 = *v14;
            if (*v14 < 0)
            {
              goto LABEL_36;
            }

            *a2 = v14 + 1;
LABEL_37:
            std::string::resize(&v41, v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6), 0);
            v20 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
            v21 = v41.__r_.__value_.__r.__words[0];
            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &v41;
            }

            else
            {
              v22 = v41.__r_.__value_.__r.__words[0];
            }

            if (v15 > 0x7F)
            {
              v22->__r_.__value_.__s.__data_[0] = v15 | 0x80;
              v25 = v15 >> 7;
              if (v20 >= 0)
              {
                v21 = &v41;
              }

              if (v15 >> 14)
              {
                v24 = &v21->__r_.__value_.__s.__data_[2];
                do
                {
                  *(v24 - 1) = v25 | 0x80;
                  v26 = v25 >> 7;
                  ++v24;
                  v27 = v25 >> 14;
                  v25 >>= 7;
                }

                while (v27);
                *(v24 - 1) = v26;
              }

              else
              {
                v21->__r_.__value_.__s.__data_[1] = v25;
                v24 = &v21->__r_.__value_.__s.__data_[2];
              }
            }

            else
            {
              v22->__r_.__value_.__s.__data_[0] = v15;
              if (v20 >= 0)
              {
                v23 = &v41;
              }

              else
              {
                v23 = v21;
              }

              v24 = &v23->__r_.__value_.__s.__data_[1];
            }

            Raw = google::protobuf::io::CodedInputStream::ReadRaw(a2, v24, v15);
            v9 = 0;
            if (!Raw)
            {
              goto LABEL_56;
            }
          }
        }

        if (!v11)
        {
          goto LABEL_56;
        }

        if (v11 == 12)
        {
          v29 = 1;
          goto LABEL_57;
        }

        if (v11 != 16)
        {
LABEL_14:
          v12 = (*(*a4 + 16))(a4, a2, a5);
          goto LABEL_15;
        }

        v13 = *a2;
        if (*a2 >= a2[1])
        {
          v9 = 0;
        }

        else
        {
          v9 = *v13;
          if ((*v13 & 0x80000000) == 0)
          {
            *a2 = v13 + 1;
            goto LABEL_25;
          }
        }

        v16 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
        v9 = v16;
        if (v16 < 0)
        {
          goto LABEL_56;
        }

LABEL_25:
        v17 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (*(&v41.__r_.__value_.__s + 23))
        {
          v18 = &v41;
          goto LABEL_30;
        }
      }

      v17 = v41.__r_.__value_.__r.__words[1];
    }

    while (!v41.__r_.__value_.__l.__size_);
    v18 = v41.__r_.__value_.__r.__words[0];
LABEL_30:
    v31[0] = v18;
    v31[1] = v18 + v17;
    v31[2] = 0;
    v33 = 0;
    v34 = 0;
    v32 = v17;
    v35 = v17;
    v36 = -NAN;
    v39 = 0;
    v40 = 0;
    v37 = *(a2 + 13);
    v38 = v37;
    if ((google::protobuf::internal::ExtensionSet::ParseField(this, (8 * v9) | 2u, v31, a3, a4) & 1) == 0)
    {
      break;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      *v41.__r_.__value_.__l.__data_ = 0;
      v41.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v41.__r_.__value_.__s.__data_[0] = 0;
      *(&v41.__r_.__value_.__s + 23) = 0;
    }

    google::protobuf::io::CodedInputStream::~CodedInputStream(v31);
  }

  google::protobuf::io::CodedInputStream::~CodedInputStream(v31);
LABEL_56:
  v29 = 0;
LABEL_57:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  return v29;
}

void sub_276B6BF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B6BFB4(google::protobuf::internal::ExtensionFinder *a1)
{
  google::protobuf::internal::ExtensionFinder::~ExtensionFinder(a1);

  JUMPOUT(0x277C9F670);
}

__n128 sub_276B6BFEC@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
        sub_276B2A0B4(v10, v20);
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
        sub_2769BA860();
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
        sub_276B2A0B4(v10, v24);
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

google::protobuf::internal *sub_276B6C1F0(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
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
        v18 = *a3;
        v19 = v15;
        v20 = *(a3 + 4);
        result = sub_276B6C36C(result, v14, &v18);
        if (v14 != result)
        {
          result = 0;
        }

        goto LABEL_16;
      }

      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      v20 = *(a3 + 4);
      result = sub_276B6C36C(result, v8, &v18);
      if (!result)
      {
        goto LABEL_16;
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
        goto LABEL_15;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        goto LABEL_16;
      }

      v5 = v5 - v9 - v12;
      result = (result + v12);
    }

    v23 = 0;
    v22 = 0;
    v21 = *v11;
    v16 = a3[1];
    v18 = *a3;
    v19 = v16;
    v20 = *(a3 + 4);
    if (sub_276B6C36C((&v21 + v12), &v21 + v13, &v18) != (&v21 + v13))
    {
LABEL_15:
      result = 0;
      goto LABEL_16;
    }

    result = (*(a1 + 8) + v13);
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *sub_276B6C36C(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
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
        v9 = *a3;
        v10 = **a3;
        if (v10 == (*a3)[1])
        {
          v11 = *a3;
          google::protobuf::RepeatedField<int>::Reserve();
        }

        *(*(v9 + 8) + 4 * v10) = v6;
        *v9 = v10 + 1;
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
          v14 = sub_2769F617C(v13);
        }

        google::protobuf::UnknownFieldSet::AddVarint(v14, v12, v6);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

void *sub_276B6C48C(uint64_t **a1, uint64_t **a2, void *a3)
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

BOOL google::protobuf::internal::ParseNamedEnum(uint64_t a1, uint64_t *a2, char *a3)
{
  ValueByName = google::protobuf::EnumDescriptor::FindValueByName(a1, a2, a3);
  if (ValueByName)
  {
    *a3 = *(ValueByName + 16);
  }

  return ValueByName != 0;
}

uint64_t *google::protobuf::internal::NameOfEnum(google::protobuf::internal *this, const google::protobuf::EnumDescriptor *a2)
{
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(this, a2);
  if (ValueByNumber)
  {
    return *ValueByNumber;
  }

  if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::internal::InitProtobufDefaultsSlow(0);
  }

  return &google::protobuf::internal::fixed_address_empty_string;
}

google::protobuf::Reflection *google::protobuf::Reflection::Reflection(google::protobuf::Reflection *this, const google::protobuf::Descriptor *a2, const ReflectionSchema *a3, const google::protobuf::DescriptorPool *a4, google::protobuf::MessageFactory *a5)
{
  *this = a2;
  v7 = *&a3->var0;
  v8 = *&a3->var2;
  *(this + 40) = *&a3->var5;
  *(this + 24) = v8;
  *(this + 8) = v7;
  if (!a4)
  {
    a4 = google::protobuf::DescriptorPool::internal_generated_pool(this);
    a2 = *this;
  }

  *(this + 7) = a4;
  *(this + 8) = a5;
  *(this + 18) = *(a2 + 26) - 1;
  return this;
}

{
  *this = a2;
  v7 = *&a3->var0;
  v8 = *&a3->var2;
  *(this + 40) = *&a3->var5;
  *(this + 24) = v8;
  *(this + 8) = v7;
  if (!a4)
  {
    a4 = google::protobuf::DescriptorPool::internal_generated_pool(this);
    a2 = *this;
  }

  *(this + 7) = a4;
  *(this + 8) = a5;
  *(this + 18) = *(a2 + 26) - 1;
  return this;
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

void *google::protobuf::Reflection::MutableUnknownFields(google::protobuf::Reflection *this, google::protobuf::Message *a2)
{
  v2 = *(this + 9);
  v3 = *(a2 + v2);
  if (v3)
  {
    return ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return sub_2769F617C((a2 + v2));
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
            std::__call_once(v12, &v41, sub_2769C149C);
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
              v26 = *&v10[sub_276B7958C(this + 8, v11)];
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
            v24 = *&v10[sub_276B7958C(this + 8, v11)];
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
              v31 = a2 + sub_276B7958C(this + 8, v11);
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
                  std::__call_once(v20, &v41, sub_2769C149C);
                }

                LODWORD(v13) = *(v11 + 56);
              }

              if (v13 != 11 || !google::protobuf::FieldDescriptor::is_map_message_type(v11))
              {
                v35 = a2 + sub_276B7958C(this + 8, v11);
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

              v21 = sub_276B7958C(this + 8, v11);
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
            v24 = *&v10[sub_276B7958C(this + 8, v11)];
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
              std::__call_once(v16, &v41, sub_2769C149C);
            }
          }

          v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v11 + 56)];
          if (v17 != 10)
          {
            if (v17 == 9)
            {
              if ((v18 = *(a2 + sub_276B7958C(this + 8, v11)) & 0xFFFFFFFFFFFFFFFELL, (v19 = *(v11 + 88)) != 0) && (*(v19 + 24) != 1 || *(**(v19 + 32) + 65) != 1) || v18 != (*sub_276B79A2C(this + 1, v11) & 0xFFFFFFFFFFFFFFFELL))
              {
                v7 += google::protobuf::internal::StringSpaceUsedExcludingSelfLong(v18) + 24;
              }
            }

            continue;
          }

          if (*(this + 1) != a2)
          {
            v23 = *(a2 + sub_276B7958C(this + 8, v11));
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
  if (*(a4 + 15) == 3)
  {
    if (v8)
    {
      v68 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v67 = a4;
      if (atomic_load_explicit(v8, memory_order_acquire) != -1)
      {
        __p[0].__r_.__value_.__r.__words[0] = &v68;
        __p[0].__r_.__value_.__l.__size_ = &v67;
        v65 = __p;
        std::__call_once(v8, &v65, sub_2769C149C);
      }
    }

    v9 = *(a4 + 14);
    v10 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v9];
    if (v10 <= 5)
    {
      if (v10 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            sub_276B7958C(this + 8, a4);
            sub_276B7958C(this + 8, a4);
            google::protobuf::RepeatedField<double>::Swap();
          }

          sub_276B7958C(this + 8, a4);
          sub_276B7958C(this + 8, a4);
          google::protobuf::RepeatedField<unsigned long long>::Swap();
        }

        sub_276B7958C(this + 8, a4);
        sub_276B7958C(this + 8, a4);
        google::protobuf::RepeatedField<unsigned int>::Swap();
      }

      if (v10 != 1)
      {
        if (v10 == 2)
        {
          sub_276B7958C(this + 8, a4);
          sub_276B7958C(this + 8, a4);
          google::protobuf::RepeatedField<long long>::Swap();
        }

        goto LABEL_68;
      }

LABEL_52:
      sub_276B7958C(this + 8, a4);
      sub_276B7958C(this + 8, a4);
      google::protobuf::RepeatedField<int>::Swap();
    }

    if (v10 <= 7)
    {
      if (v10 != 6)
      {
        sub_276B7958C(this + 8, a4);
        sub_276B7958C(this + 8, a4);
        google::protobuf::RepeatedField<BOOL>::Swap();
      }

      sub_276B7958C(this + 8, a4);
      sub_276B7958C(this + 8, a4);
      google::protobuf::RepeatedField<float>::Swap();
    }

    switch(v10)
    {
      case 8:
        goto LABEL_52;
      case 9:
        v38 = (a2 + sub_276B7958C(this + 8, a4));
        v39 = a3 + sub_276B7958C(this + 8, a4);
        if (*v39 != *v38)
        {
          sub_276B79AFC(v38, v39);
          return;
        }

        break;
      case 10:
        v15 = *(a4 + 6);
        if (v15)
        {
          v68 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v67 = a4;
          if (atomic_load_explicit(v15, memory_order_acquire) != -1)
          {
            __p[0].__r_.__value_.__r.__words[0] = &v68;
            __p[0].__r_.__value_.__l.__size_ = &v67;
            v65 = __p;
            std::__call_once(v15, &v65, sub_2769C149C);
          }

          LODWORD(v9) = *(a4 + 14);
        }

        if (v9 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a4))
        {
          v16 = a2 + sub_276B7958C(this + 8, a4);
          v17 = sub_276B7958C(this + 8, a4);
          (*(*v16 + 80))(v16, a3 + v17);
          return;
        }

        v38 = (a2 + sub_276B7958C(this + 8, a4));
        v39 = a3 + sub_276B7958C(this + 8, a4);
        if (*v39 != *v38)
        {
          sub_276B79CD4(v38, v39);
          return;
        }

        break;
      default:
LABEL_68:
        google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 394);
        v51 = google::protobuf::internal::LogMessage::operator<<(__p, "Unimplemented type: ");
        v52 = *(a4 + 6);
        if (v52)
        {
          v67 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v64 = a4;
          if (atomic_load_explicit(v52, memory_order_acquire) != -1)
          {
            v65 = &v67;
            v66 = &v64;
            v68 = &v65;
            std::__call_once(v52, &v68, sub_2769C149C);
          }
        }

LABEL_75:
        v54 = google::protobuf::internal::LogMessage::operator<<(v51, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)]);
        google::protobuf::internal::LogFinisher::operator=(&v65, &v54->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        return;
    }

    v55 = v38[1];
    v56 = v38[2];
    *(v38 + 1) = *(v39 + 8);
    *(v39 + 1) = v55;
    *(v39 + 2) = v56;
    return;
  }

  if (v8)
  {
    v68 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v67 = a4;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      __p[0].__r_.__value_.__r.__words[0] = &v68;
      __p[0].__r_.__value_.__l.__size_ = &v67;
      v65 = __p;
      std::__call_once(v8, &v65, sub_2769C149C);
    }
  }

  v11 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 14)];
  if (v11 <= 5)
  {
    if (v11 > 2)
    {
      if (v11 != 3)
      {
        if (v11 != 4)
        {
          v12 = sub_276B7958C(this + 8, a4);
          v13 = sub_276B7958C(this + 8, a4);
          v14 = *(a2 + v12);
          *(a2 + v12) = *(a3 + v13);
          *(a3 + v13) = v14;
          return;
        }

        goto LABEL_46;
      }

LABEL_47:
      v29 = sub_276B7958C(this + 8, a4);
      v30 = sub_276B7958C(this + 8, a4);
      v31 = *(a2 + v29);
      *(a2 + v29) = *(a3 + v30);
      *(a3 + v30) = v31;
      return;
    }

    if (v11 == 1)
    {
      goto LABEL_47;
    }

    if (v11 == 2)
    {
LABEL_46:
      v26 = sub_276B7958C(this + 8, a4);
      v27 = sub_276B7958C(this + 8, a4);
      v28 = *(a2 + v26);
      *(a2 + v26) = *(a3 + v27);
      *(a3 + v27) = v28;
      return;
    }

LABEL_72:
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 471);
    v51 = google::protobuf::internal::LogMessage::operator<<(__p, "Unimplemented type: ");
    v53 = *(a4 + 6);
    if (v53)
    {
      v67 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v64 = a4;
      if (atomic_load_explicit(v53, memory_order_acquire) != -1)
      {
        v65 = &v67;
        v66 = &v64;
        v68 = &v65;
        std::__call_once(v53, &v68, sub_2769C149C);
      }
    }

    goto LABEL_75;
  }

  if (v11 <= 7)
  {
    if (v11 == 6)
    {
      v35 = sub_276B7958C(this + 8, a4);
      v36 = sub_276B7958C(this + 8, a4);
      v37 = *(a2 + v35);
      *(a2 + v35) = *(a3 + v36);
      *(a3 + v36) = v37;
    }

    else
    {
      v32 = sub_276B7958C(this + 8, a4);
      v33 = sub_276B7958C(this + 8, a4);
      v34 = *(a2 + v32);
      *(a2 + v32) = *(a3 + v33);
      *(a3 + v33) = v34;
    }

    return;
  }

  if (v11 == 8)
  {
    goto LABEL_47;
  }

  if (v11 == 9)
  {
    v40 = *(this + 9);
    v41 = *(a2 + v40);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = *(a3 + v40);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = (a2 + sub_276B7958C(this + 8, a4));
    v44 = (a3 + sub_276B7958C(this + 8, a4));
    v45 = sub_276B79A2C(this + 1, a4);
    v46 = *v43;
    if (v41 == v42)
    {
      *v43 = *v44;
      *v44 = v46;
    }

    else
    {
      v47 = *v45 & 0xFFFFFFFFFFFFFFFELL;
      v48 = *v44;
      if (v46 == v47)
      {
        if (v48 != v47)
        {
          google::protobuf::internal::ArenaStringPtr::Set(v43, v47, (v48 & 0xFFFFFFFFFFFFFFFELL), v41);
          *v44 = v47;
        }
      }

      else if (v48 == v47)
      {
        google::protobuf::internal::ArenaStringPtr::Set(v44, v47, (v46 & 0xFFFFFFFFFFFFFFFELL), v42);
        *v43 = v47;
      }

      else
      {
        v49 = v46 & 0xFFFFFFFFFFFFFFFELL;
        if (*(v49 + 23) < 0)
        {
          sub_276A07B90(__p, *v49, *(v49 + 8));
          v48 = *v44;
        }

        else
        {
          v50 = *v49;
          __p[0].__r_.__value_.__r.__words[2] = *(v49 + 16);
          *&__p[0].__r_.__value_.__l.__data_ = v50;
        }

        google::protobuf::internal::ArenaStringPtr::Set(v43, v47, (v48 & 0xFFFFFFFFFFFFFFFELL), v41);
        google::protobuf::internal::ArenaStringPtr::Set(v44, v47, __p, v42);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }
    }

    return;
  }

  if (v11 != 10)
  {
    goto LABEL_72;
  }

  v18 = *(this + 9);
  v19 = *(a2 + v18);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  v20 = *(a3 + v18);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  v21 = sub_276B7958C(this + 8, a4);
  v22 = sub_276B7958C(this + 8, a4);
  v23 = *(a2 + v21);
  if (v19 == v20)
  {
    *(a2 + v21) = *(a3 + v22);
    *(a3 + v22) = v23;
    return;
  }

  v24 = *(a3 + v22);
  if (v23)
  {
    if (v24)
    {
      (*(*v23 + 152))(v23);
      google::protobuf::Reflection::Swap(v25, *(a2 + v21), *(a3 + v22));
      return;
    }

    v61 = *(a3 + 1);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = (*(*v23 + 32))(v23, v61);
    *(a3 + v22) = v62;
    (*(*v62 + 112))(v62, *(a2 + v21));
    v59 = this;
    v60 = a2;
  }

  else
  {
    if (!v24)
    {
      return;
    }

    v57 = *(a2 + 1);
    if (v57)
    {
      v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = (*(*v24 + 32))(*(a3 + v22), v57);
    *(a2 + v21) = v58;
    (*(*v58 + 112))(v58, *(a3 + v22));
    v59 = this;
    v60 = a3;
  }

  google::protobuf::Reflection::ClearField(v59, v60, a4);
}

void sub_276B6D4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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
      google::protobuf::internal::LogMessage::LogMessage(v57, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 596);
      v7 = google::protobuf::internal::LogMessage::operator<<(v57, "CHECK failed: (message1->GetReflection()) == (this): ");
      v8 = google::protobuf::internal::LogMessage::operator<<(v7, "First argument to Swap() (of type ");
      v9 = (*(*a2 + 152))(a2);
      v10 = google::protobuf::internal::LogMessage::operator<<(v8, *(v9 + 8));
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, ") is not compatible with this reflection object (which is for type ");
      v12 = google::protobuf::internal::LogMessage::operator<<(v11, *(*v5 + 8));
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, ").  Note that the exact same class is required; not just the same descriptor.");
      google::protobuf::internal::LogFinisher::operator=(&v56, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v57[0].__r_.__value_.__l.__data_);
    }

    (*(*a3 + 152))(a3);
    if (v14 != v5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v57, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 604);
      v15 = google::protobuf::internal::LogMessage::operator<<(v57, "CHECK failed: (message2->GetReflection()) == (this): ");
      v16 = google::protobuf::internal::LogMessage::operator<<(v15, "Second argument to Swap() (of type ");
      v17 = (*(*a3 + 152))(a3);
      v18 = google::protobuf::internal::LogMessage::operator<<(v16, *(v17 + 8));
      v19 = google::protobuf::internal::LogMessage::operator<<(v18, ") is not compatible with this reflection object (which is for type ");
      v20 = google::protobuf::internal::LogMessage::operator<<(v19, *(*v5 + 8));
      v21 = google::protobuf::internal::LogMessage::operator<<(v20, ").  Note that the exact same class is required; not just the same descriptor.");
      google::protobuf::internal::LogFinisher::operator=(&v56, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v57[0].__r_.__value_.__l.__data_);
    }

    v22 = v5[9];
    v23 = *(a2 + v22);
    v24 = v23;
    if (v23)
    {
      v24 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = *(a3 + v22);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v24 == v25)
    {
      v28 = v5[8];
      if (v28 != -1)
      {
        v29 = *(*v5 + 104);
        if (v29 >= 1)
        {
          v30 = 0;
          v31 = (a2 + v28);
          v32 = (a3 + v28);
          v33 = (*(*v5 + 40) + 88);
          do
          {
            if (*(v33 - 7) != 3)
            {
              v34 = *v33;
              if (!*v33 || *(v34 + 24) == 1 && (*(**(v34 + 32) + 65) & 1) != 0)
              {
                ++v30;
              }
            }

            v33 += 19;
            --v29;
          }

          while (v29);
          if (v30 >= 1)
          {
            v35 = (v30 + 31) >> 5;
            do
            {
              v36 = *v31;
              *v31++ = *v32;
              *v32++ = v36;
              --v35;
            }

            while (v35);
          }
        }
      }

      v37 = v5[18];
      if ((v37 & 0x80000000) == 0)
      {
        v38 = -1;
        v39 = 88;
        do
        {
          v40 = (*(*v5 + 40) + v39);
          v43 = *v40;
          v41 = (v40 - 11);
          v42 = v43;
          if (!v43 || *(v42 + 24) == 1 && *(**(v42 + 32) + 65) == 1)
          {
            google::protobuf::Reflection::SwapField(v5, a2, a3, v41);
            v37 = v5[18];
          }

          ++v38;
          v39 += 152;
        }

        while (v38 < v37);
      }

      v44 = *(*v5 + 108);
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = 48 * v44;
        do
        {
          v47 = *(*v5 + 48) + v45;
          if (*(v47 + 24) != 1 || (*(**(v47 + 32) + 65) & 1) == 0)
          {
            google::protobuf::Reflection::SwapOneofField(v5, a2, a3, v47);
          }

          v45 += 48;
        }

        while (v46 != v45);
      }

      v48 = v5[10];
      if (v48 != -1)
      {
        google::protobuf::internal::ExtensionSet::Swap((a2 + v48), (a3 + v48));
      }

      v49 = v5[9];
      v50 = *(a2 + v49);
      if (v50)
      {
        v51 = ((v50 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v51 = sub_2769F617C((a2 + v49));
        v49 = v5[9];
      }

      v52 = *(a3 + v49);
      if (v52)
      {
        this = ((v52 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        this = sub_2769F617C((a3 + v49));
      }

      v53 = *v51;
      *v51 = *this;
      *this = v53;
      v54 = v51[1];
      v51[1] = *(this + 1);
      *(this + 1) = v54;
      v55 = v51[2];
      v51[2] = *(this + 2);
      *(this + 2) = v55;
    }

    else
    {
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = (*(*a2 + 32))(a2, v23);
      (*(*v26 + 120))(v26, a3);
      (*(*a3 + 112))(a3, a2);
      this = google::protobuf::Reflection::Swap(v5, a2, v26);
      v27 = *(a2 + v5[9]);
      if (v27)
      {
        if (!*(v27 & 0xFFFFFFFFFFFFFFFELL))
        {
          return (*(*v26 + 8))(v26);
        }
      }

      else if (!v27)
      {
        return (*(*v26 + 8))(v26);
      }
    }
  }

  return this;
}

void sub_276B6DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
    sub_276B70414(v6, a3, "ClearField", "Field does not match message type.");
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

    if (!sub_276B704E8(this, a2, a3))
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
        std::__call_once(v21, &v36, sub_2769C149C);
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
          *(a2 + sub_276B7958C(this + 8, a3)) = v25;
          return;
        }
      }

      else if (v22 != 3)
      {
        if (v22 != 4)
        {
          v23 = *(a3 + 18);
          *(a2 + sub_276B7958C(this + 8, a3)) = v23;
          return;
        }

        goto LABEL_62;
      }

      v27 = *(a3 + 36);
LABEL_68:
      *(a2 + sub_276B7958C(this + 8, a3)) = v27;
      return;
    }

    if (v22 <= 7)
    {
      if (v22 == 6)
      {
        v28 = *(a3 + 36);
        *(a2 + sub_276B7958C(this + 8, a3)) = v28;
      }

      else
      {
        v26 = *(a3 + 144);
        *(a2 + sub_276B7958C(this + 8, a3)) = v26;
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
      v29 = *sub_276B79A2C(this + 1, a3);
      v30 = a2 + sub_276B7958C(this + 8, a3);
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

    if (sub_276B70AF8(this + 8, a3) != -1)
    {
      v24 = sub_276B7958C(this + 8, a3);
      (*(**(a2 + v24) + 40))(*(a2 + v24));
      return;
    }

    v32 = *(a2 + *(this + 9));
    if (v32)
    {
      if (!*(v32 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_74:
        v33 = *(a2 + sub_276B7958C(this + 8, a3));
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

    *(a2 + sub_276B7958C(this + 8, a3)) = 0;
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
      std::__call_once(v9, &v36, sub_2769C149C);
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
    *(a2 + sub_276B7958C(this + 8, a3)) = 0;
    return;
  }

  if (v11 <= 8)
  {
    goto LABEL_38;
  }

  if (v11 == 9)
  {
    v18 = sub_276B7958C(this + 8, a3);
    google::protobuf::RepeatedPtrField<std::string>::Clear(a2 + v18);
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
        std::__call_once(v16, &v36, sub_2769C149C);
      }

      LODWORD(v10) = *(a3 + 14);
    }

    if (v10 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
    {
      v17 = sub_276B7958C(this + 8, a3);
      (*(*(a2 + v17) + 96))(a2 + v17);
    }

    else
    {
      v19 = sub_276B7958C(this + 8, a3);
      sub_276B70B60(a2 + v19);
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
      std::__call_once(v12, &v56, sub_2769C149C);
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
        v48 = *(a2 + sub_276B7958C(this + 8, FieldByNumber));
      }

      else
      {
        v46 = *(a2 + sub_276B7958C(this + 8, FieldByNumber));
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
        v45 = *(a2 + sub_276B7958C(this + 8, FieldByNumber));
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
        v50 = *(a2 + sub_276B7958C(this + 8, FieldByNumber));
      }

      else
      {
        v14 = 0;
        v38 = 0;
        v15 = 0;
        v16 = 0;
        if (v13 == 4)
        {
          v49 = *(a2 + sub_276B7958C(this + 8, FieldByNumber));
        }

        else
        {
          v47 = *(a2 + sub_276B7958C(this + 8, FieldByNumber));
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
      v52 = *(a2 + sub_276B7958C(this + 8, FieldByNumber));
      goto LABEL_11;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v38 = 0;
      v15 = 0;
      v16 = 0;
      v51 = *(a2 + sub_276B7958C(this + 8, FieldByNumber));
      goto LABEL_11;
    }
  }

  google::protobuf::internal::LogMessage::LogMessage(v44, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 522);
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
      std::__call_once(v25, &v55, sub_2769C149C);
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
      std::__call_once(v18, &v56, sub_2769C149C);
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
          v20 = sub_276B7958C(this + 8, v17);
          sub_276B6F16C(this, a2, v17, (a3 + v20));
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
        v22 = sub_276B7958C(this + 8, v17);
        sub_276B6EE84(this, a2, v17, (a3 + v22));
        goto LABEL_61;
      }

      goto LABEL_57;
    }

LABEL_53:
    v28 = sub_276B7958C(this + 8, v17);
    sub_276B6ED14(this, a2, v17, (a3 + v28));
    goto LABEL_61;
  }

  if (v19 <= 7)
  {
    if (v19 == 6)
    {
      v27 = sub_276B7958C(this + 8, v17);
      sub_276B6EFF4(this, a2, v17, (a3 + v27));
    }

    else
    {
      v23 = sub_276B7958C(this + 8, v17);
      sub_276B6F2E4(this, a2, v17, a3 + v23);
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
    google::protobuf::internal::LogMessage::LogMessage(v44, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 553);
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
        std::__call_once(v30, &v55, sub_2769C149C);
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
      std::__call_once(v32, &v56, sub_2769C149C);
    }
  }

  v33 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 56)];
  if (v33 <= 5)
  {
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        sub_276B6ED14(this, a3, FieldByNumber, &v50);
      }

      else if (v33 == 4)
      {
        sub_276B6EE84(this, a3, FieldByNumber, &v49);
      }

      else
      {
        sub_276B6F16C(this, a3, FieldByNumber, &v47);
      }

      goto LABEL_96;
    }

    if (v33 != 1)
    {
      if (v33 == 2)
      {
        sub_276B6EE84(this, a3, FieldByNumber, &v51);
        goto LABEL_96;
      }

      goto LABEL_89;
    }

    v34 = &v52;
LABEL_85:
    sub_276B6ED14(this, a3, FieldByNumber, v34);
    goto LABEL_96;
  }

  if (v33 <= 7)
  {
    if (v33 == 6)
    {
      sub_276B6EFF4(this, a3, FieldByNumber, &v48);
    }

    else
    {
      sub_276B6F2E4(this, a3, FieldByNumber, &v46);
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
    google::protobuf::internal::LogMessage::LogMessage(v44, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 585);
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
        std::__call_once(v36, &v55, sub_2769C149C);
      }
    }

    v37 = google::protobuf::internal::LogMessage::operator<<(v35, google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 56)]);
    google::protobuf::internal::LogFinisher::operator=(&v56, &v37->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(v44);
    goto LABEL_96;
  }

  if (v15 < 0)
  {
    sub_276A07B90(__dst, v14, v38);
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

void sub_276B6E9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
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
    sub_276B70414(v8, a3, "GetString", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetString", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v9, &v19, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
    sub_276B7106C(*this, a3, "GetString", 9);
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
    if (v13 && (*(v13 + 24) != 1 || (*(**(v13 + 32) + 65) & 1) == 0) && *(a2 + *(this + 11) - 1431655764 * ((v13 - *(*(v13 + 16) + 48)) >> 4)) != *(a3 + 17) || (v14 = *(a2 + sub_276B7958C(this + 8, a3)) & 0xFFFFFFFFFFFFFFFELL) == 0)
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

  sub_276A07B90(a4, v15, v16);
}

uint64_t sub_276B6ED14(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, int *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_276B7958C(a1 + 8, a3);
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
    result = sub_276B7958C(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

uint64_t sub_276B6EE84(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_276B7958C(a1 + 8, a3);
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
    result = sub_276B7958C(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

uint64_t sub_276B6EFF4(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, int *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_276B7958C(a1 + 8, a3);
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
    result = sub_276B7958C(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

uint64_t sub_276B6F16C(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_276B7958C(a1 + 8, a3);
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
    result = sub_276B7958C(a1 + 8, a3);
    *(a2 + result) = v14;
    *(a2 + *(a1 + 44) - 1431655764 * ((*(a3 + 88) - *(*(*(a3 + 88) + 16) + 48)) >> 4)) = *(a3 + 68);
  }

  return result;
}

uint64_t sub_276B6F2E4(uint64_t a1, google::protobuf::Message *a2, uint64_t a3, char *a4)
{
  v8 = *(a3 + 88);
  if (!v8 || *(v8 + 24) == 1 && (*(**(v8 + 32) + 65) & 1) != 0)
  {
    v9 = *a4;
    result = sub_276B7958C(a1 + 8, a3);
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
    result = sub_276B7958C(a1 + 8, a3);
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

      sub_276A08058(v10, a3);
    }
  }

  google::protobuf::Reflection::UnsafeArenaSetAllocatedMessage(this, a2, a3, a4);
}

void google::protobuf::Reflection::SetString(uint64_t a1, google::protobuf::Message *a2, google::protobuf::FieldDescriptor *a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "SetString", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*a1, a3, "SetString", "Field is repeated; the method requires a singular field.");
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v33 = a3;
    v34 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v36 = &v34;
      v37 = &v33;
      v35 = &v36;
      std::__call_once(v9, &v35, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 9)
  {
    sub_276B7106C(*a1, a3, "SetString", 9);
  }

  if (*(a3 + 67) == 1)
  {
    v10 = *(a1 + 40);
    v11 = *(a3 + 17);
    v12 = *(a3 + 6);
    if (v12)
    {
      v33 = a3;
      v34 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v36 = &v34;
        v37 = &v33;
        v35 = &v36;
        std::__call_once(v12, &v35, sub_2769C149C);
      }
    }

    v13 = *(a3 + 56);
    v14 = *a4;
    v38[0] = *(a4 + 8);
    *(v38 + 7) = *(a4 + 15);
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

    v18 = v38[0];
    *v17 = v14;
    v17[1] = v18;
    *(v17 + 15) = *(v38 + 7);
    *(v17 + 23) = v15;
    goto LABEL_53;
  }

  v19 = *(a3 + 11);
  if (!v19 || *(v19 + 24) == 1 && *(**(v19 + 32) + 65) == 1)
  {
    v20 = *sub_276B79A2C((a1 + 8), a3) & 0xFFFFFFFFFFFFFFFELL;
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

    *(a2 + sub_276B7958C(a1 + 8, a3)) = v20;
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
  v30 = (a2 + sub_276B7958C(a1 + 8, a3));
  v31 = *(a2 + *(a1 + 36));
  if (v31)
  {
    v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(v30, v20, a4, v31);
LABEL_53:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_276B6FA08(_Unwind_Exception *exception_object)
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
        std::__call_once(v11, &v23, sub_2769C149C);
      }
    }

    v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v9 + 56)];
    if (v12 == 10)
    {
      v17 = *(a2 + sub_276B7958C(this + 8, v9));
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

      v19 = (a2 + sub_276B7958C(this + 8, v9));
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

void google::protobuf::Reflection::SwapFields(unsigned int *a1, google::protobuf::Message *a2, google::protobuf::Message *a3, void *a4)
{
  if (a2 != a3)
  {
    (*(*a2 + 152))(a2);
    if (v8 != a1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 675);
      v9 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: (message1->GetReflection()) == (this): ");
      v10 = google::protobuf::internal::LogMessage::operator<<(v9, "First argument to SwapFields() (of type ");
      v11 = (*(*a2 + 152))(a2);
      v12 = google::protobuf::internal::LogMessage::operator<<(v10, *(v11 + 8));
      v13 = google::protobuf::internal::LogMessage::operator<<(v12, ") is not compatible with this reflection object (which is for type ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(*a1 + 8));
      v15 = google::protobuf::internal::LogMessage::operator<<(v14, ").  Note that the exact same class is required; not just the same descriptor.");
      google::protobuf::internal::LogFinisher::operator=(&v33, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    }

    (*(*a3 + 152))(a3);
    if (v16 != a1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 683);
      v17 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: (message2->GetReflection()) == (this): ");
      v18 = google::protobuf::internal::LogMessage::operator<<(v17, "Second argument to SwapFields() (of type ");
      v19 = (*(*a3 + 152))(a3);
      v20 = google::protobuf::internal::LogMessage::operator<<(v18, *(v19 + 8));
      v21 = google::protobuf::internal::LogMessage::operator<<(v20, ") is not compatible with this reflection object (which is for type ");
      v22 = google::protobuf::internal::LogMessage::operator<<(v21, *(*a1 + 8));
      v23 = google::protobuf::internal::LogMessage::operator<<(v22, ").  Note that the exact same class is required; not just the same descriptor.");
      google::protobuf::internal::LogFinisher::operator=(&v33, &v23->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    }

    *&v34[0].__r_.__value_.__r.__words[1] = 0uLL;
    v34[0].__r_.__value_.__r.__words[0] = &v34[0].__r_.__value_.__l.__size_;
    v24 = a4[1] - *a4;
    if ((v24 >> 3) < 1)
    {
      v32 = 0;
    }

    else
    {
      v25 = 0;
      v26 = (v24 >> 3) & 0x7FFFFFFF;
      do
      {
        v27 = *(*a4 + 8 * v25);
        if (*(v27 + 67) == 1)
        {
          google::protobuf::internal::ExtensionSet::SwapExtension((a2 + a1[10]), (a3 + a1[10]), *(v27 + 68));
        }

        else
        {
          v28 = *(v27 + 88);
          if (!v28 || *(v28 + 24) == 1 && (*(**(v28 + 32) + 65) & 1) != 0)
          {
            if (*(v27 + 60) != 3)
            {
              sub_276B7006C(a1, a2, a3, *(*a4 + 8 * v25));
            }

            google::protobuf::Reflection::SwapField(a1, a2, a3, v27);
          }

          else
          {
            v29 = -1431655765 * ((v28 - *(*(v28 + 16) + 48)) >> 4);
            v33 = v29;
            size = v34[0].__r_.__value_.__l.__size_;
            if (!v34[0].__r_.__value_.__l.__size_)
            {
              goto LABEL_23;
            }

            p_size = &v34[0].__r_.__value_.__l.__size_;
            do
            {
              if (*(size + 28) >= v29)
              {
                p_size = size;
              }

              size = *(size + 8 * (*(size + 28) < v29));
            }

            while (size);
            if (p_size == &v34[0].__r_.__value_.__r.__words[1] || *(p_size + 7) > v29)
            {
LABEL_23:
              sub_276AE6AA0(v34, &v33);
              google::protobuf::Reflection::SwapOneofField(a1, a2, a3, *(v27 + 88));
            }
          }
        }

        ++v25;
      }

      while (v25 != v26);
      v32 = v34[0].__r_.__value_.__l.__size_;
    }

    sub_276A579A4(v34, v32);
  }
}

void sub_276B70034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B7006C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 32) == -1)
  {
    return result;
  }

  v7 = result;
  v8 = sub_276B704E8(result, a2, a4);
  result = sub_276B704E8(v7, a3, a4);
  v9 = *(v7 + 32);
  if (result)
  {
    if (v9 != -1)
    {
      if (*(a4 + 67))
      {
        v10 = *(a4 + 96);
        v11 = (v10 ? v10 + 80 : *(a4 + 40) + 128);
      }

      else
      {
        v11 = (*(a4 + 80) + 40);
      }

      v14 = *(*(v7 + 24) + ((0x286BCA1B00000000 * ((a4 - *v11) >> 3)) >> 30));
      if (v14 != -1)
      {
        v15 = 1 << v14;
        v16 = a2 + v9;
        v17 = (v14 >> 3) & 0x1FFFFFFC;
        v18 = *(v16 + v17) | v15;
LABEL_19:
        *(v16 + v17) = v18;
      }
    }
  }

  else if (v9 != -1)
  {
    if (*(a4 + 67))
    {
      v12 = *(a4 + 96);
      v13 = (v12 ? v12 + 80 : *(a4 + 40) + 128);
    }

    else
    {
      v13 = (*(a4 + 80) + 40);
    }

    v19 = *(*(v7 + 24) + ((0x286BCA1B00000000 * ((a4 - *v13) >> 3)) >> 30));
    if (v19 != -1)
    {
      v20 = 1 << v19;
      v16 = a2 + v9;
      v17 = (v19 >> 3) & 0x1FFFFFFC;
      v18 = *(v16 + v17) & ~v20;
      goto LABEL_19;
    }
  }

  v21 = *(v7 + 32);
  if (v8)
  {
    if (v21 != -1)
    {
      if (*(a4 + 67))
      {
        v22 = *(a4 + 96);
        v23 = (v22 ? v22 + 80 : *(a4 + 40) + 128);
      }

      else
      {
        v23 = (*(a4 + 80) + 40);
      }

      v26 = *(*(v7 + 24) + ((0x286BCA1B00000000 * ((a4 - *v23) >> 3)) >> 30));
      if (v26 != -1)
      {
        v27 = 1 << v26;
        v28 = a3 + v21;
        v29 = (v26 >> 3) & 0x1FFFFFFC;
        v30 = *(v28 + v29) | v27;
LABEL_37:
        *(v28 + v29) = v30;
      }
    }
  }

  else if (v21 != -1)
  {
    if (*(a4 + 67))
    {
      v24 = *(a4 + 96);
      v25 = (v24 ? v24 + 80 : *(a4 + 40) + 128);
    }

    else
    {
      v25 = (*(a4 + 80) + 40);
    }

    v31 = *(*(v7 + 24) + ((0x286BCA1B00000000 * ((a4 - *v25) >> 3)) >> 30));
    if (v31 != -1)
    {
      v32 = 1 << v31;
      v28 = a3 + v21;
      v29 = (v31 >> 3) & 0x1FFFFFFC;
      v30 = *(v28 + v29) & ~v32;
      goto LABEL_37;
    }
  }

  return result;
}

uint64_t google::protobuf::Reflection::HasField(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "HasField", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "HasField", "Field is repeated; the method requires a singular field.");
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

      return sub_276B704E8(this, a2, a3);
    }

    else
    {
      return *(a2 + *(this + 11) - 1431655764 * ((v10 - *(*(v10 + 16) + 48)) >> 4)) == *(a3 + 17);
    }
  }
}

void sub_276B70414(uint64_t a1, uint64_t a2, const std::string::value_type *a3, const std::string::value_type *a4)
{
  google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 111);
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

void sub_276B704D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B704E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
        std::__call_once(v13, &v26, sub_2769C149C);
      }
    }

    v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 56)];
    if (v14 == 10)
    {
      if (*(a1 + 8) != a2)
      {
LABEL_16:
        v15 = *(a2 + sub_276B7958C(a1 + 8, a3));
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
        std::__call_once(v17, &v26, sub_2769C149C);
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
          v16 = *(a2 + sub_276B7958C(a1 + 8, a3)) == 0.0;
        }

        else
        {
          v16 = *(a2 + sub_276B7958C(a1 + 8, a3)) == 0.0;
        }

        goto LABEL_42;
      }

      if (v14 == 7)
      {
        LOBYTE(v20) = *(a2 + sub_276B7958C(a1 + 8, a3));
        return v20 & 1;
      }

      if (v14 != 8)
      {
        if (v14 == 9)
        {
          v18 = *(a2 + sub_276B7958C(a1 + 8, a3)) & 0xFFFFFFFFFFFFFFFELL;
          v15 = *(v18 + 23);
          if (v15 < 0)
          {
            v15 = *(v18 + 8);
          }

          goto LABEL_17;
        }

LABEL_45:
        google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 2059);
        v21 = google::protobuf::internal::LogMessage::operator<<(v23, "Reached impossible case in HasBit().");
        google::protobuf::internal::LogFinisher::operator=(&v26, &v21->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
        goto LABEL_46;
      }
    }

    v16 = *(a2 + sub_276B7958C(a1 + 8, a3)) == 0;
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

void sub_276B70804(_Unwind_Exception *a1, uint64_t a2, ...)
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
    sub_276B70414(v6, a3, "FieldSize", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "FieldSize", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v10, &v19, sub_2769C149C);
    }
  }

  v11 = *(a3 + 14);
  v12 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v11];
  if (v12 <= 5)
  {
    if (v12 > 2 || v12 == 1 || v12 == 2)
    {
      return *(a2 + sub_276B7958C(this + 8, a3));
    }

    goto LABEL_30;
  }

  if (v12 <= 8)
  {
    return *(a2 + sub_276B7958C(this + 8, a3));
  }

  if ((v12 - 9) >= 2)
  {
LABEL_30:
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 783);
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
      std::__call_once(v13, &v19, sub_2769C149C);
    }

    LODWORD(v11) = *(a3 + 14);
  }

  if (v11 != 11 || !google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    return *(a2 + sub_276B7958C(this + 8, a3) + 8);
  }

  v14 = (a2 + sub_276B7958C(this + 8, a3));
  if (google::protobuf::internal::MapFieldBase::IsRepeatedFieldValid(v14))
  {
    return *(google::protobuf::internal::MapFieldBase::GetRepeatedField(v14) + 8);
  }

  else
  {
    return (*(*v14 + 88))(v14);
  }
}

void sub_276B70AE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B70AF8(uint64_t a1, uint64_t a2)
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

uint64_t sub_276B70B60(uint64_t result)
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

void google::protobuf::Reflection::RemoveLast(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "RemoveLast", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "RemoveLast", "Field is singular; the method requires a repeated field.");
  }

  if (*(a3 + 67) == 1)
  {
    v7 = *(a3 + 17);
    v8 = (a2 + *(this + 10));

    google::protobuf::internal::ExtensionSet::RemoveLast(v8, v7);
    return;
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v26 = a3;
    v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v29 = &v27;
      v30 = &v26;
      v28 = &v29;
      std::__call_once(v9, &v28, sub_2769C149C);
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

LABEL_27:
    v18 = sub_276B7958C(this + 8, a3);
    --*(a2 + v18);
    return;
  }

  if (v11 <= 8)
  {
    goto LABEL_27;
  }

  if (v11 == 9)
  {
    v19 = a2 + sub_276B7958C(this + 8, a3);
    v20 = *(v19 + 2) - 1;
    v21 = *(v19 + 2) + 8 * v20;
    *(v19 + 2) = v20;
    v22 = *(v21 + 8);
    if (*(v22 + 23) < 0)
    {
      **v22 = 0;
      *(v22 + 8) = 0;
    }

    else
    {
      *v22 = 0;
      *(v22 + 23) = 0;
    }
  }

  else if (v11 == 10)
  {
    v12 = *(a3 + 6);
    if (v12)
    {
      v26 = a3;
      v27 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v12, memory_order_acquire) != -1)
      {
        v29 = &v27;
        v30 = &v26;
        v28 = &v29;
        std::__call_once(v12, &v28, sub_2769C149C);
      }

      LODWORD(v10) = *(a3 + 14);
    }

    if (v10 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
    {
      v13 = sub_276B7958C(this + 8, a3);
      v14 = google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v13));
      v15 = *(v14 + 8) - 1;
      v16 = *(v14 + 16) + 8 * v15;
      *(v14 + 8) = v15;
      v17 = *(v16 + 8);
    }

    else
    {
      v23 = a2 + sub_276B7958C(this + 8, a3);
      v24 = *(v23 + 2) - 1;
      v25 = *(v23 + 2) + 8 * v24;
      *(v23 + 2) = v24;
      v17 = *(v25 + 8);
    }

    (*(*v17 + 40))(v17);
  }
}

uint64_t google::protobuf::Reflection::ReleaseLast(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "ReleaseLast", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "ReleaseLast", "Field is singular; the method requires a repeated field.");
  }

  v7 = *(a3 + 6);
  if (v7)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      v15 = &v13;
      v16 = &v12;
      v14 = &v15;
      std::__call_once(v7, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 10)
  {
    sub_276B7106C(*this, a3, "ReleaseLast", 10);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::ReleaseLast((a2 + *(this + 10)), *(a3 + 17));
  }

  v9 = *(a3 + 6);
  if (v9)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v15 = &v13;
      v16 = &v12;
      v14 = &v15;
      std::__call_once(v9, &v14, sub_2769C149C);
    }
  }

  if (*(a3 + 14) == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
  {
    v10 = sub_276B7958C(this + 8, a3);
    v11 = google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v10));
  }

  else
  {
    v11 = a2 + sub_276B7958C(this + 8, a3);
  }

  return sub_276B711C4(v11);
}

void sub_276B7106C(uint64_t a1, uint64_t a2, const std::string::value_type *a3, int a4)
{
  google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/generated_message_reflection.cc", 133);
  v8 = google::protobuf::internal::LogMessage::operator<<(v19, "Protocol Buffer reflection usage error:\n  Method      : google::protobuf::Reflection::");
  v9 = google::protobuf::internal::LogMessage::operator<<(v8, a3);
  v10 = google::protobuf::internal::LogMessage::operator<<(v9, "\n  Message type: ");
  v11 = google::protobuf::internal::LogMessage::operator<<(v10, *(a1 + 8));
  v12 = google::protobuf::internal::LogMessage::operator<<(v11, "\n  Field       : ");
  v13 = google::protobuf::internal::LogMessage::operator<<(v12, *(a2 + 8));
  v14 = google::protobuf::internal::LogMessage::operator<<(v13, "\n  Problem     : Field is not the right type for this message:\n    Expected  : ");
  v15 = google::protobuf::internal::LogMessage::operator<<(v14, off_27A6E7B70[a4]);
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
      std::__call_once(v17, &v22, sub_2769C149C);
    }
  }

  v18 = google::protobuf::internal::LogMessage::operator<<(v16, off_27A6E7B70[google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a2 + 56)]]);
  google::protobuf::internal::LogFinisher::operator=(v23, &v18->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
}

void sub_276B711AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B711C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *v1;
  v3 = *v1 - 1;
  *v1 = v3;
  v4 = v1 + 2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v5 - 1;
  v6 = *&v4[2 * v5 - 2];
  if (v5 < v2)
  {
    *&v4[2 * v5 - 2] = *&v4[2 * v3];
  }

  if (*a1)
  {
    v7 = google::protobuf::internal::GenericTypeHandler<google::protobuf::Message>::NewFromPrototype(v6);
    sub_276B69550(v6, v7);
    return v7;
  }

  return v6;
}

void google::protobuf::Reflection::SwapElements(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, int a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "Swap", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "Swap", "Field is singular; the method requires a repeated field.");
  }

  if (*(a3 + 67) != 1)
  {
    v13 = *(a3 + 6);
    if (v13)
    {
      v29 = a3;
      v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v13, memory_order_acquire) != -1)
      {
        v32 = &v30;
        v33 = &v29;
        v31 = &v32;
        std::__call_once(v13, &v31, sub_2769C149C);
      }
    }

    v14 = *(a3 + 14);
    v15 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v14];
    if (v15 > 5)
    {
      if (v15 > 8)
      {
        if ((v15 - 9) >= 2)
        {
          return;
        }

        v21 = *(a3 + 6);
        if (v21)
        {
          v29 = a3;
          v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v21, memory_order_acquire) != -1)
          {
            v32 = &v30;
            v33 = &v29;
            v31 = &v32;
            std::__call_once(v21, &v31, sub_2769C149C);
          }

          LODWORD(v14) = *(a3 + 14);
        }

        if (v14 == 11 && google::protobuf::FieldDescriptor::is_map_message_type(a3))
        {
          v22 = sub_276B7958C(this + 8, a3);
          v23 = *(google::protobuf::internal::MapFieldBase::MutableRepeatedField((a2 + v22)) + 16);
        }

        else
        {
          v23 = *(a2 + sub_276B7958C(this + 8, a3) + 16);
        }

        v18 = v23 + 8;
        goto LABEL_35;
      }

      if (v15 == 6)
      {
        v25 = *(a2 + sub_276B7958C(this + 8, a3) + 8);
        v26 = *(v25 + 4 * a4);
        *(v25 + 4 * a4) = *(v25 + 4 * a5);
        *(v25 + 4 * a5) = v26;
        return;
      }

      if (v15 == 7)
      {
        v27 = *(a2 + sub_276B7958C(this + 8, a3) + 8);
        v28 = *(v27 + a4);
        *(v27 + a4) = *(v27 + a5);
        *(v27 + a5) = v28;
        return;
      }
    }

    else if (v15 <= 2)
    {
      if (v15 != 1)
      {
        if (v15 != 2)
        {
          return;
        }

        goto LABEL_23;
      }
    }

    else if (v15 != 3)
    {
      if (v15 != 4)
      {
        v16 = *(a2 + sub_276B7958C(this + 8, a3) + 8);
        v17 = *(v16 + 8 * a4);
        *(v16 + 8 * a4) = *(v16 + 8 * a5);
        *(v16 + 8 * a5) = v17;
        return;
      }

LABEL_23:
      v18 = *(a2 + sub_276B7958C(this + 8, a3) + 8);
LABEL_35:
      v24 = *(v18 + 8 * a4);
      *(v18 + 8 * a4) = *(v18 + 8 * a5);
      *(v18 + 8 * a5) = v24;
      return;
    }

    v19 = *(a2 + sub_276B7958C(this + 8, a3) + 8);
    v20 = *(v19 + 4 * a4);
    *(v19 + 4 * a4) = *(v19 + 4 * a5);
    *(v19 + 4 * a5) = v20;
    return;
  }

  v11 = *(a3 + 17);
  v12 = (a2 + *(this + 10));

  google::protobuf::internal::ExtensionSet::SwapElements(v12, v11, a4, a5);
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
    sub_276B7173C(a4, *(*result + 104));
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
          if (!sub_276B704E8(v8, a2, v15))
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
      sub_276B23B7C(a4, v22);
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

    return sub_276B79EF0(*a4, v19, v21, 1);
  }

  return result;
}

void *sub_276B7173C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_276B2A0B4(result, a2);
    }

    sub_2769BA860();
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetInt32(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "GetInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetInt32", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v7, &v12, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_276B7106C(*this, a3, "GetInt32", 1);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetInt32((a2 + *(this + 10)), *(a3 + 17), *(a3 + 36));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_276B7958C(this + 8, a3));
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
    sub_276B70414(v7, a3, "SetInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "SetInt32", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v8, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_276B7106C(*this, a3, "SetInt32", 1);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_276B6ED14(this, a2, a3, &v13);
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
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetInt32((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedInt32(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedInt32", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_276B7106C(*this, a3, "GetRepeatedInt32", 1);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedInt32((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 4 * a4);
  }
}

void google::protobuf::Reflection::SetRepeatedInt32(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, int a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "SetRepeatedInt32", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v11, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_276B7106C(*this, a3, "SetRepeatedInt32", 1);
  }

  if (*(a3 + 67) == 1)
  {
    google::protobuf::internal::ExtensionSet::SetRepeatedInt32((a2 + *(this + 10)), *(a3 + 17), a4, a5);
  }

  else
  {
    *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 4 * a4) = a5;
  }
}

uint64_t *google::protobuf::Reflection::AddInt32(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddInt32", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v9, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 1)
  {
    sub_276B7106C(*this, a3, "AddInt32", 1);
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
        std::__call_once(v12, &v18, sub_2769C149C);
      }
    }

    return google::protobuf::internal::ExtensionSet::AddInt32((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v14 = (a2 + result);
    v15 = *v14;
    if (v15 == v14[1])
    {
      google::protobuf::RepeatedField<int>::Reserve();
    }

    *(*(v14 + 1) + 4 * v15) = a4;
    *v14 = v15 + 1;
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetInt64(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "GetInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetInt64", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v7, &v12, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_276B7106C(*this, a3, "GetInt64", 2);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetInt64((a2 + *(this + 10)), *(a3 + 17), *(a3 + 18));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_276B7958C(this + 8, a3));
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
    sub_276B70414(v7, a3, "SetInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "SetInt64", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v8, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_276B7106C(*this, a3, "SetInt64", 2);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_276B6EE84(this, a2, a3, &v13);
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
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetInt64((a2 + v9), v10, *(a3 + 56), v13, a3);
}

uint64_t google::protobuf::Reflection::GetRepeatedInt64(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "GetRepeatedInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "GetRepeatedInt64", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v9, &v13, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_276B7106C(*this, a3, "GetRepeatedInt64", 2);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetRepeatedInt64((a2 + *(this + 10)), *(a3 + 17), a4);
  }

  else
  {
    return *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 8 * a4);
  }
}

void google::protobuf::Reflection::SetRepeatedInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, int a4, uint64_t a5)
{
  v10 = *this;
  if (*(a3 + 10) != v10)
  {
    sub_276B70414(v10, a3, "SetRepeatedInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "SetRepeatedInt64", "Field is singular; the method requires a repeated field.");
  }

  v11 = *(a3 + 6);
  if (v11)
  {
    v12 = a3;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v11, memory_order_acquire) != -1)
    {
      v15[0] = &v13;
      v15[1] = &v12;
      v14 = v15;
      std::__call_once(v11, &v14, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_276B7106C(*this, a3, "SetRepeatedInt64", 2);
  }

  if (*(a3 + 67) == 1)
  {
    google::protobuf::internal::ExtensionSet::SetRepeatedInt64((a2 + *(this + 10)), *(a3 + 17), a4, a5);
  }

  else
  {
    *(*(a2 + sub_276B7958C(this + 8, a3) + 8) + 8 * a4) = a5;
  }
}

uint64_t *google::protobuf::Reflection::AddInt64(google::protobuf::Reflection *this, google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3, uint64_t a4)
{
  v8 = *this;
  if (*(a3 + 10) != v8)
  {
    sub_276B70414(v8, a3, "AddInt64", "Field does not match message type.");
  }

  if (*(a3 + 15) != 3)
  {
    sub_276B70414(*this, a3, "AddInt64", "Field is singular; the method requires a repeated field.");
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
      std::__call_once(v9, &v18, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 2)
  {
    sub_276B7106C(*this, a3, "AddInt64", 2);
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
        std::__call_once(v12, &v18, sub_2769C149C);
      }
    }

    return google::protobuf::internal::ExtensionSet::AddInt64((a2 + v10), v11, *(a3 + 56), *(*(a3 + 15) + 76), a4, a3);
  }

  else
  {
    result = sub_276B7958C(this + 8, a3);
    v14 = (a2 + result);
    v15 = *v14;
    if (v15 == v14[1])
    {
      google::protobuf::RepeatedField<long long>::Reserve();
    }

    *(*(v14 + 1) + 8 * v15) = a4;
    *v14 = v15 + 1;
  }

  return result;
}

uint64_t google::protobuf::Reflection::GetUInt32(google::protobuf::Reflection *this, const google::protobuf::Message *a2, const google::protobuf::FieldDescriptor *a3)
{
  v6 = *this;
  if (*(a3 + 10) != v6)
  {
    sub_276B70414(v6, a3, "GetUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "GetUInt32", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v7, &v12, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_276B7106C(*this, a3, "GetUInt32", 3);
  }

  if (*(a3 + 67) == 1)
  {
    return google::protobuf::internal::ExtensionSet::GetUInt32((a2 + *(this + 10)), *(a3 + 17), *(a3 + 36));
  }

  v9 = *(a3 + 11);
  if (!v9 || *(v9 + 24) == 1 && (*(**(v9 + 32) + 65) & 1) != 0 || *(a2 + *(this + 11) - 1431655764 * ((v9 - *(*(v9 + 16) + 48)) >> 4)) == *(a3 + 17))
  {
    return *(a2 + sub_276B7958C(this + 8, a3));
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
    sub_276B70414(v7, a3, "SetUInt32", "Field does not match message type.");
  }

  if (*(a3 + 15) == 3)
  {
    sub_276B70414(*this, a3, "SetUInt32", "Field is repeated; the method requires a singular field.");
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
      std::__call_once(v8, &v16, sub_2769C149C);
    }
  }

  if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)] != 3)
  {
    sub_276B7106C(*this, a3, "SetUInt32", 3);
  }

  if (*(a3 + 67) != 1)
  {
    return sub_276B6ED14(this, a2, a3, &v13);
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
      std::__call_once(v11, &v16, sub_2769C149C);
    }
  }

  return google::protobuf::internal::ExtensionSet::SetUInt32((a2 + v9), v10, *(a3 + 56), v13, a3);
}