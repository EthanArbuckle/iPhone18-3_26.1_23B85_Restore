void sub_276B16B4C(_Unwind_Exception *exception_object)
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
  v5 = sub_276B0B9EC(v10);
  v9 = v5;
  if (v5 == *(a1 + 80))
  {
LABEL_8:
    sub_276B2BFC0((a1 + 120), &v9);
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
    v7 = sub_276B0B9EC(v19);
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
    sub_276A07B90(&__p, *a3, *(a3 + 8));
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

void sub_276B17038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

    sub_276B280C4(v13, a2, v9);
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

void sub_276B175A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorPool::NewPlaceholder(std::mutex **a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  v7 = google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(a1, a2, a3);
  if (v6)
  {
    std::mutex::unlock(v6);
  }

  return v7;
}

void sub_276B1764C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::mutex::unlock(v1);
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

void sub_276B17790(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v1, 0x10A0C40C644375CLL);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorPool::NewPlaceholderFile(std::mutex **a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  google::protobuf::DescriptorPool::NewPlaceholderFileWithMutexHeld(a1, a2, a3);
}

void sub_276B1782C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(exception_object);
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
      v19 = google::protobuf::internal::LogMessage::LogMessage(&v55, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 4027);
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
    sub_276B280C4(&v54, a2, v14);
    v55 = *&v54.__r_.__value_.__l.__data_;
    v17 = sub_276B26328((v16 + 304), &v55);
    if (v17)
    {
      v18 = *(v17 + 2);
    }

    else
    {
      v18 = 0uLL;
    }

    v55 = v18;
    v23 = sub_276B0B9EC(&v55);
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
          sub_276A07B90(&__dst, *v27, *(v27 + 1));
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
        sub_276A4D46C(&__dst, "null");
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

void sub_276B17CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
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
      sub_276B280C4(&v25, &v27, v10);
      google::protobuf::DescriptorPool::Tables::AllocateString(v9, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    google::protobuf::DescriptorBuilder::ValidateSymbolName(a1, a2, a2, a3);
  }

  else
  {
    v11 = *(a1 + 8);
    sub_276B280C4(&v25, a2, v7);
    *&v27.__r_.__value_.__l.__data_ = *&v25.__r_.__value_.__l.__data_;
    v12 = sub_276B26328((v11 + 304), &v27.__r_.__value_.__l.__data_);
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
    v15 = sub_276B0B9EC(&v26);
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

void sub_276B18098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void sub_276B18270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
  sub_276B112A4(v13, v11);
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
  sub_276B2A028(v11, v6 + 6);
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
  sub_276A4D46C(&__p, "google.protobuf.FileOptions");
  sub_276B1842C(this);
}

void sub_276B183DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
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
  sub_276A4D46C(&v21, "File recursively imports itself: ");
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

void sub_276B18890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_276B18964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
  v14[2] = *MEMORY[0x277D85DE8];
  v13 = 0uLL;
  __p = 0;
  v5 = a3;
  v6 = *(*(a2 + 5) + 8 * a3 + 8);
  if (*(*this + 8))
  {
    std::operator+<char>();
    v7 = std::string::append(&v11, " was not found or had errors.");
  }

  else
  {
    std::operator+<char>();
    v7 = std::string::append(&v11, " has not been loaded.");
  }

  v8 = v7->__r_.__value_.__r.__words[0];
  v14[0] = v7->__r_.__value_.__l.__size_;
  *(v14 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  *(&v13 + 7) = *(v14 + 7);
  __p = v8;
  *&v13 = v14[0];
  HIBYTE(v13) = v9;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  google::protobuf::DescriptorBuilder::AddError(this, *(*(a2 + 5) + 8 * v5 + 8), a2, 9, &__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_276B18ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_276B18B1C(void *a1, void *a2)
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

uint64_t sub_276B18B90(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_276B2C5E0(a1, a2);
  }

  else
  {
    sub_276B2C580(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::DescriptorPool::Tables **this, const google::protobuf::FileDescriptorProto *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(this[1], 160);
  this[10] = Bytes;
  *(Bytes + 64) = 0;
  if ((*(a2 + 16) & 0x10) == 0)
  {
    *(Bytes + 152) = google::protobuf::SourceCodeInfo::default_instance(Bytes);
    google::protobuf::DescriptorPool::Tables::AllocateFileTables(this[1]);
  }

  v5 = this[1];
  sub_276B19D1C();
}

void sub_276B19B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p)
{
  google::protobuf::DescriptorBuilder::OptionInterpreter::~OptionInterpreter(&__p);
  sub_276A579A4(&a11, a12);
  sub_276B2AD2C(&a14, a15);
  _Unwind_Resume(a1);
}

BOOL sub_276B19E54(void *a1, char *__s)
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
      sub_276B28120();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorBuilder *this, const google::protobuf::DescriptorProto *a2, const google::protobuf::Descriptor *a3, google::protobuf::Descriptor *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  google::protobuf::DescriptorBuilder::AllocateNameString(this, *(v4 + 1), (*(a2 + 27) & 0xFFFFFFFFFFFFFFFELL));
}

void sub_276B1AE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 121) < 0)
  {
    operator delete(*(v29 - 144));
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::DescriptorBuilder *this, const google::protobuf::EnumDescriptorProto *a2, const google::protobuf::Descriptor *a3, google::protobuf::EnumDescriptor *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  google::protobuf::DescriptorBuilder::AllocateNameString(this, *(v4 + 1), (*(a2 + 12) & 0xFFFFFFFFFFFFFFFELL));
}

void sub_276B1B6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 121) < 0)
  {
    operator delete(*(v25 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_276B1B8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  v57 = 0;
  *v58 = 0;
  v59 = 0;
  __p = 0;
  v55 = 0;
  v56 = 0;
  if (!*(a2 + 6))
  {
    goto LABEL_69;
  }

  v3 = this;
  v4 = 0;
  v5 = 0;
  v51 = (a2 + 16);
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
      v9 = (v55 - __p) >> 2;
      if (v9 <= SLODWORD((*v7)[1].__r_.__value_.__l.__data_))
      {
        if (v55 == __p)
        {
LABEL_39:
          v5 = 1;
          goto LABEL_58;
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

    v55 = __p;
    v10 = *v7;
    if (SLODWORD((*v7)[1].__r_.__value_.__l.__data_) >= 1)
    {
      v11 = 0;
      do
      {
        v53 = *(v10[1].__r_.__value_.__l.__size_ + 4 * v11);
        sub_276B112A4(&__p, &v53);
        ++v11;
        v10 = *v7;
      }

      while (v11 < SLODWORD((*v7)[1].__r_.__value_.__l.__data_));
    }

    v12 = sub_276B2F0A0(v3 + 24, &__p);
    if (v8 == v12)
    {
      if ((v4 & 1) == 0)
      {
        v5 = 0;
        v4 = 0;
        goto LABEL_58;
      }

      v17 = *v7;
      v18 = v59;
      if (v59)
      {
        v19 = *v59;
        if (v58[0] < *v59)
        {
          v20 = &v59[2 * v58[0]++];
          v21 = *(v20 + 1);
LABEL_56:
          google::protobuf::SourceCodeInfo_Location::CopyFrom(v21, v17);
          v5 = 0;
          goto LABEL_57;
        }

        if (v19 != v58[1])
        {
LABEL_55:
          *v18 = v19 + 1;
          v21 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(v57);
          v41 = &v59[2 * v58[0]++];
          *(v41 + 1) = v21;
          goto LABEL_56;
        }
      }

      else
      {
        v19 = v58[1];
      }

      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v57, v19 + 1);
      v18 = v59;
      v19 = *v59;
      goto LABEL_55;
    }

    if ((v4 & 1) == 0)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v57, *(v2 + 6));
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
        v25 = v59;
        if (!v59)
        {
          break;
        }

        v26 = *v59;
        if (v58[0] < *v59)
        {
          v27 = &v59[2 * v58[0]++];
          v28 = *(v27 + 1);
          goto LABEL_32;
        }

        if (v26 == v58[1])
        {
          goto LABEL_30;
        }

LABEL_31:
        *v25 = v26 + 1;
        v28 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(v57);
        v29 = &v59[2 * v58[0]++];
        *(v29 + 1) = v28;
LABEL_32:
        google::protobuf::SourceCodeInfo_Location::CopyFrom(v28, v24);
        ++v23;
      }

      v26 = v58[1];
LABEL_30:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v57, v26 + 1);
      v25 = v59;
      v26 = *v59;
      goto LABEL_31;
    }

LABEL_14:
    v13 = v59;
    if (!v59)
    {
      v14 = v58[1];
LABEL_42:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v57, v14 + 1);
      v13 = v59;
      v14 = *v59;
      goto LABEL_43;
    }

    v14 = *v59;
    if (v58[0] < *v59)
    {
      v15 = &v59[2 * v58[0]++];
      v16 = *(v15 + 1);
      goto LABEL_44;
    }

    if (v14 == v58[1])
    {
      goto LABEL_42;
    }

LABEL_43:
    *v13 = v14 + 1;
    v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(v57);
    v35 = &v59[2 * v58[0]++];
    *(v35 + 1) = v16;
LABEL_44:
    google::protobuf::SourceCodeInfo_Location::CopyFrom(v16, *v7);
    *(v16 + 24) = 0;
    v37 = *(v12 + 7);
    v36 = *(v12 + 8);
    if (v37 == v36)
    {
      v5 = 1;
LABEL_57:
      v4 = 1;
      goto LABEL_58;
    }

    v38 = v3;
    v39 = v8;
    v40 = 0;
    do
    {
      if (v40 == *(v16 + 28))
      {
        google::protobuf::RepeatedField<int>::Reserve();
      }

      *(*(v16 + 32) + 4 * v40++) = *v37;
      *(v16 + 24) = v40;
      ++v37;
    }

    while (v37 != v36);
    v5 = 1;
    v4 = 1;
    v8 = v39;
    v3 = v38;
    v2 = a2;
LABEL_58:
    ++v7;
    v42 = *(v2 + 4);
    v43 = v42 + 8;
    if (!v42)
    {
      v43 = 0;
    }

    v44 = *(v2 + 6);
  }

  while (v7 != (v43 + 8 * v44));
  if (((v51 != &v57) & v4) != 0)
  {
    if (v44 >= 1)
    {
      v45 = (v42 + 8);
      do
      {
        google::protobuf::SourceCodeInfo_Location::Clear(*v45++);
        --v44;
      }

      while (v44);
      *(v2 + 6) = 0;
    }

    v46 = v58[0];
    if (v58[0])
    {
      v47 = v59;
      v48 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v51, v58[0]);
      sub_276B2F184(v51, v48, v47 + 1, v46, **(v2 + 4) - *(v2 + 6));
      v49 = *(v2 + 6) + v46;
      *(v2 + 6) = v49;
      v50 = *(v2 + 4);
      if (*v50 < v49)
      {
        *v50 = v49;
      }
    }
  }

LABEL_69:
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  sub_276B2F01C(&v57);
}

void sub_276B1BECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_276B2F01C(&a16);
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

void sub_276B1C188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
        sub_276A07B90(__p, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v44 = *(v9 + 2);
        *__p = v10;
      }

      v45 = v8 + v6;
      v12 = sub_276B2D60C(&v46, __p);
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
      v20 = sub_276B27C88(&v46, *(*(a2 + 5) + v18));
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
      v28 = sub_276B27C88(&v46, *(*(a2 + 8) + v26));
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
      v36 = sub_276B27C88(&v46, *(*(a2 + 6) + v34));
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

  sub_276B2AD2C(&v46, v47[0]);
}

void google::protobuf::DescriptorBuilder::LogUnusedDependency(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2, const google::protobuf::FileDescriptor *a3)
{
  if (*(this + 17))
  {
    v5 = sub_276B27C88(*this + 48, (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL));
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

void sub_276B1C7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AllocateNameString(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5[6] = *MEMORY[0x277D85DE8];
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

  sub_276B280C4(v5, a3, a3);
  google::protobuf::DescriptorPool::Tables::AllocateString(v4, v5[0], v5[1]);
}

void sub_276B1CA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    sub_276B112A4(v14, __p);
    v13 = (a4 - *(a3 + 72)) >> 4;
    sub_276B112A4(v14, &v13);
    __p[0] = 3;
    sub_276B112A4(v14, __p);
    v10 = *(a3 + 8);
    v11 = *(a2 + 24);
    sub_276A4D46C(__p, "google.protobuf.ExtensionRangeOptions");
    sub_276B1DEB4(a1);
  }
}

void sub_276B1CBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18)
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

void google::protobuf::DescriptorBuilder::BuildReservedRange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 24);
  *a4 = v4;
  if (v4 <= 0)
  {
    google::protobuf::DescriptorBuilder::AddError(a1, *(a3 + 8), a2, 1, "Reserved numbers must be positive integers.");
  }
}

void sub_276B1CC40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::Descriptor::GetLocationPath(a3, __p);
  sub_276B112A4(__p, &v8);
  v6 = *(a3 + 8);
  sub_276B2C850(a1);
}

void sub_276B1CCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::BuildFieldOrExtension(google::protobuf::DescriptorBuilder *this, const google::protobuf::FieldDescriptorProto *a2, google::protobuf::Descriptor *a3, google::protobuf::FieldDescriptor *a4)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!a3)
  {
    v4 = *(this + 10);
  }

  google::protobuf::DescriptorBuilder::AllocateNameString(this, *(v4 + 1), (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL));
}

void sub_276B1DB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B1DC1C(unsigned __int8 *a1@<X0>, char a2@<W1>, std::string *a3@<X8>)
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

void sub_276B1DD14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B1DD34(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
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

void sub_276B1DDE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B1DE08(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::FieldDescriptor::GetLocationPath(a3, __p);
  sub_276B112A4(__p, &v8);
  v6 = *(a3 + 8);
  sub_276B2CC7C(a1);
}

void sub_276B1DE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::BuildReservedRange(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 28);
  *a4 = v4;
  a4[1] = v5;
  if (v4 > v5)
  {
    google::protobuf::DescriptorBuilder::AddError(a1, *(a3 + 8), a2, 1, "Reserved range end number must be greater than start number.");
  }
}

void sub_276B1E1D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::OneofDescriptor::GetLocationPath(a3, __p);
  sub_276B112A4(__p, &v8);
  v6 = *(a3 + 8);
  sub_276B2D1E0(a1);
}

void sub_276B1E268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::CheckEnumValueUniqueness(google::protobuf::DescriptorBuilder *this, const google::protobuf::EnumDescriptorProto *a2, uint64_t **a3)
{
  sub_276B280C4(&__p, *a3, a3);
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
      sub_276B280C4(&v54, *v9, v4);
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
      sub_276B264AC(&v55, &__p);
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
        sub_276A07B90(&__p, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v58;
      }

      v57 = v9;
      v27 = sub_276B2D60C(&v59, &__p.__r_.__value_.__l.__data_);
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
              v39 = sub_276B2D6B0(&v59, &v58.__r_.__value_.__l.__data_);
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
  sub_276B2AD2C(&v59, v50);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }
}

void sub_276B1E738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_276B2AD2C(v44 - 152, *(v44 - 144));
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::BuildEnumValue(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  sub_276B280C4(&v4, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), a3);
  google::protobuf::DescriptorPool::Tables::AllocateString(v3, v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_);
}

void sub_276B1EC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
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

void sub_276B1ED48(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::EnumDescriptor::GetLocationPath(a3, __p);
  sub_276B112A4(__p, &v8);
  v6 = *(a3 + 8);
  sub_276B2D800(a1);
}

void sub_276B1EDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B1EDF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::EnumValueDescriptor::GetLocationPath(a3, __p);
  sub_276B112A4(__p, &v8);
  v6 = *(a3 + 8);
  sub_276B2DC2C(a1);
}

void sub_276B1EE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
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
  sub_276B280C4(__p, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), a3);
  google::protobuf::DescriptorPool::Tables::AllocateString(v3, __p[0], __p[1]);
}

void sub_276B1EFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B1EFD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::ServiceDescriptor::GetLocationPath(a3, __p);
  sub_276B112A4(__p, &v8);
  v6 = *(a3 + 8);
  sub_276B2E058(a1);
}

void sub_276B1F064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B1F080(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  memset(__p, 0, sizeof(__p));
  google::protobuf::MethodDescriptor::GetLocationPath(a3, __p);
  sub_276B112A4(__p, &v8);
  v6 = *(a3 + 8);
  sub_276B2E484(a1);
}

void sub_276B1F110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
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
  v98 = *MEMORY[0x277D85DE8];
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
        if (*(v22 + 6) >= 1 && *(v21 + v19 - 64) != v22)
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

          sub_276B2A028(&v76, v24 + 1);
          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v76;
          }

          else
          {
            v25 = v76.__r_.__value_.__r.__words[0];
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

          v31 = std::string::append(&v76, v29, v30);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v78 = v31->__r_.__value_.__r.__words[2];
          *v77 = v32;
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

          *&v96 = v34;
          if (v35 >= 0)
          {
            v37 = v35;
          }

          else
          {
            v37 = v36;
          }

          DWORD2(v96) = v37;
          v38 = *v22;
          v39 = *(*v22 + 23);
          v40 = *(*v22 + 8);
          if (v39 < 0)
          {
            v38 = **v22;
          }

          v95.__r_.__value_.__r.__words[0] = v38;
          if (v39 >= 0)
          {
            v41 = v39;
          }

          else
          {
            v41 = v40;
          }

          LODWORD(v95.__r_.__value_.__r.__words[1]) = v41;
          v93 = 0;
          v94 = -1;
          v91 = 0;
          v92 = -1;
          v89 = 0;
          v90 = -1;
          v87 = 0;
          v88 = -1;
          v85 = 0;
          v86 = -1;
          v83 = 0;
          v84 = -1;
          v81 = 0;
          v82 = -1;
          v79 = 0;
          v80 = -1;
          *(&v74 + 1) = &v81;
          *&v74 = &v83;
          google::protobuf::strings::Substitute("Fields in the same oneof must be defined consecutively. $0 cannot be defined before the completion of the $1 oneof definition.", &v96, &v95, &v93, &v91, &v89, &v87, &v85, &__p, v74, &v79);
          google::protobuf::DescriptorBuilder::AddError(v5, v77, v33, 2, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77[0]);
          }

          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
          }

          v18 = *(a2 + 26);
        }

        v42 = *(a2 + 6) + 48 * (-1431655765 * ((v22 - *(v22[2] + 48)) >> 4));
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

        sub_276B2A028(&v95, v50 + 1);
        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v95;
        }

        else
        {
          v51 = v95.__r_.__value_.__r.__words[0];
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

        v56 = std::string::append(&v95, v54, v55);
        v57 = *&v56->__r_.__value_.__l.__data_;
        v97 = v56->__r_.__value_.__r.__words[2];
        v96 = v57;
        v56->__r_.__value_.__l.__size_ = 0;
        v56->__r_.__value_.__r.__words[2] = 0;
        v56->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(v5, &v96, *(*(a3 + 20) + 8 * v45 + 8), 0, "Oneof must have at least one field.");
        if (SHIBYTE(v97) < 0)
        {
          operator delete(v96);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
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
  v73 = *MEMORY[0x277D85DE8];
}

void sub_276B1F82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void google::protobuf::DescriptorBuilder::CrossLinkField(google::protobuf::DescriptorPool::Tables **this, google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v144 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 15))
  {
    *(a2 + 15) = google::protobuf::FieldOptions::default_instance(this);
  }

  google::protobuf::FileDescriptorTables::AddFieldByStylizedNames(this[11], a2);
  if ((*(a3 + 16) & 2) != 0)
  {
    v16 = google::protobuf::DescriptorBuilder::LookupSymbol(this, (*(a3 + 4) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 1), 2, 0, 1);
    if (v16 != 1)
    {
      if (!v16)
      {
        v19 = *(a2 + 1);
        v20 = *MEMORY[0x277D85DE8];
        v21 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL;

        google::protobuf::DescriptorBuilder::AddNotDefinedError(this, v19, a3, 3, v21);
        return;
      }

      v42 = *(a2 + 1);
      v43 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL;
      std::operator+<char>();
      v44 = std::string::append(&v142, " is not a message type.");
      v45 = *&v44->__r_.__value_.__l.__data_;
      __dst[0].__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
      *&__dst[0].__r_.__value_.__l.__data_ = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      google::protobuf::DescriptorBuilder::AddError(this, v42, a3, 3, __dst);
      goto LABEL_111;
    }

    v32 = v17;
    *(a2 + 10) = v17;
    v33 = *(a2 + 17);
    v34 = *(v17 + 124);
    if (v34 < 1)
    {
LABEL_41:
      if (*(*this + 42) != 1 || (v36 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL, (*(v36 + 23) & 0x80000000) == 0) || *(v36 + 8) != 33 || memcmp(*v36, "google.protobuf.bridge.MessageSet", 0x21uLL))
      {
        v37 = *(a2 + 1);
        v38 = *(v32 + 8);
        v39 = *(v38 + 23);
        v40 = *(v38 + 8);
        if (v39 < 0)
        {
          v38 = *v38;
        }

        __dst[0].__r_.__value_.__r.__words[0] = v38;
        if (v39 >= 0)
        {
          v41 = v39;
        }

        else
        {
          v41 = v40;
        }

        LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = v41;
        v142.__r_.__value_.__r.__words[0] = google::protobuf::FastInt32ToBuffer(v33, &v142.__r_.__value_.__s.__data_[12], v18);
        LODWORD(v142.__r_.__value_.__r.__words[1]) = strlen(v142.__r_.__value_.__l.__data_);
        v141.__r_.__value_.__r.__words[0] = 0;
        LODWORD(v141.__r_.__value_.__r.__words[1]) = -1;
        v140.__r_.__value_.__r.__words[0] = 0;
        LODWORD(v140.__r_.__value_.__r.__words[1]) = -1;
        v138 = 0;
        v139 = -1;
        v136 = 0;
        v137 = -1;
        v134 = 0;
        v135 = -1;
        v132 = 0;
        v133 = -1;
        v130 = 0;
        v131 = -1;
        v128 = 0;
        v129 = -1;
        *&v122 = &v132;
        *(&v122 + 1) = &v130;
        google::protobuf::strings::Substitute("$0 does not declare $1 as an extension number.", __dst, &v142, &v141, &v140, &v138, &v136, &v134, &__p, v122, &v128);
        google::protobuf::DescriptorBuilder::AddError(this, v37, a3, 1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v35 = (*(v17 + 72) + 4);
      while (*(v35 - 1) > v33 || *v35 <= v33)
      {
        v35 += 4;
        if (!--v34)
        {
          goto LABEL_41;
        }
      }
    }
  }

  if (*(a2 + 11) && *(a2 + 15) != 1)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 0, "Fields of oneofs must themselves have label LABEL_OPTIONAL.");
  }

  v6 = *(a3 + 4);
  if ((v6 & 4) == 0)
  {
    v7 = *(a2 + 6);
    if (v7)
    {
      v141.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v140.__r_.__value_.__r.__words[0] = a2;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        __dst[0].__r_.__value_.__r.__words[0] = &v141;
        __dst[0].__r_.__value_.__l.__size_ = &v140;
        v142.__r_.__value_.__r.__words[0] = __dst;
        std::__call_once(v7, &v142, sub_2769C149C);
      }
    }

    v8 = *(a2 + 14);
    if ((v8 & 0xFFFFFFFE) == 0xA)
    {
      goto LABEL_17;
    }

    v9 = *(a2 + 6);
    if (v9)
    {
      v141.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
      v140.__r_.__value_.__r.__words[0] = a2;
      if (atomic_load_explicit(v9, memory_order_acquire) != -1)
      {
        __dst[0].__r_.__value_.__r.__words[0] = &v141;
        __dst[0].__r_.__value_.__l.__size_ = &v140;
        v142.__r_.__value_.__r.__words[0] = __dst;
        std::__call_once(v9, &v142, sub_2769C149C);
      }

      v8 = *(a2 + 14);
    }

    if (v8 == 14)
    {
LABEL_17:
      google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "Field with message or enum type missing type_name.");
    }

    goto LABEL_18;
  }

  v22 = (v6 >> 3) & 1;
  if (*(a3 + 22) == 14)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (*(*this + 43))
  {
    v24 = 0;
  }

  else
  {
    v46 = *(a3 + 8);
    if (!v46)
    {
      v46 = &google::protobuf::_FieldOptions_default_instance_;
    }

    v24 = v46[79];
  }

  v47 = *(*this + 41) & (v24 ^ 1);
  Symbol = google::protobuf::DescriptorBuilder::LookupSymbol(this, (*(a3 + 5) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 1), v23, 1, (v47 & 1) == 0);
  v50 = v49;
  if (!Symbol)
  {
    if (v47)
    {
      v52 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v52 + 23) < 0)
      {
        sub_276A07B90(__dst, *v52, *(v52 + 8));
      }

      else
      {
        v53 = *v52;
        __dst[0].__r_.__value_.__r.__words[2] = *(v52 + 16);
        *&__dst[0].__r_.__value_.__l.__data_ = v53;
      }

      google::protobuf::DescriptorPool::Tables::AllocateOnceDynamic(this[1]);
    }

    if (v24)
    {
      sub_276A4D46C(__dst, "google.protobuf.Empty");
      Symbol = google::protobuf::DescriptorBuilder::FindSymbol(this, __dst, 1);
      v50 = v61;
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
      }
    }

    if (!Symbol)
    {
      google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 2, *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL);
      goto LABEL_166;
    }
  }

  if ((*(a3 + 17) & 4) == 0)
  {
    if (Symbol == 1)
    {
      v51 = 11;
    }

    else
    {
      if (Symbol != 4)
      {
        v69 = *(a2 + 1);
        v70 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
        std::operator+<char>();
        v71 = std::string::append(&v142, " is not a type.");
        v72 = *&v71->__r_.__value_.__l.__data_;
        __dst[0].__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
        *&__dst[0].__r_.__value_.__l.__data_ = v72;
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(this, v69, a3, 2, __dst);
        goto LABEL_111;
      }

      v51 = 14;
    }

    *(a2 + 14) = v51;
  }

  v62 = *(a2 + 6);
  if (v62)
  {
    v141.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v140.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v62, memory_order_acquire) != -1)
    {
      __dst[0].__r_.__value_.__r.__words[0] = &v141;
      __dst[0].__r_.__value_.__l.__size_ = &v140;
      v142.__r_.__value_.__r.__words[0] = __dst;
      std::__call_once(v62, &v142, sub_2769C149C);
    }
  }

  v63 = *(a2 + 14);
  if ((v63 & 0xFFFFFFFE) == 0xA)
  {
    if (Symbol == 1)
    {
      *(a2 + 13) = v50;
      if (*(a2 + 64) == 1)
      {
        google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 4, "Messages can't have default values.");
      }

      goto LABEL_18;
    }

    v65 = *(a2 + 1);
    v66 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
    std::operator+<char>();
    v67 = std::string::append(&v142, " is not a message type.");
    v68 = *&v67->__r_.__value_.__l.__data_;
    __dst[0].__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
    *&__dst[0].__r_.__value_.__l.__data_ = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(this, v65, a3, 2, __dst);
    goto LABEL_111;
  }

  v64 = *(a2 + 6);
  if (v64)
  {
    v141.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v140.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v64, memory_order_acquire) != -1)
    {
      __dst[0].__r_.__value_.__r.__words[0] = &v141;
      __dst[0].__r_.__value_.__l.__size_ = &v140;
      v142.__r_.__value_.__r.__words[0] = __dst;
      std::__call_once(v64, &v142, sub_2769C149C);
    }

    v63 = *(a2 + 14);
  }

  if (v63 != 14)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "Field with primitive type has type_name.");
    goto LABEL_18;
  }

  if (Symbol == 4)
  {
    *(a2 + 14) = v50;
    if (*(google::protobuf::FieldDescriptor::enum_type(a2) + 40) == 1)
    {
      *(a2 + 64) = 0;
    }

    else if (*(a2 + 64))
    {
      if (google::protobuf::io::Tokenizer::IsIdentifier(*(a3 + 6) & 0xFFFFFFFFFFFFFFFELL))
      {
        v105 = *(a3 + 6);
        v106 = google::protobuf::FieldDescriptor::enum_type(a2);
        if (google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(this, (v105 & 0xFFFFFFFFFFFFFFFELL), *(v106 + 8), 0, 1) == 5 && (v108 = v107, v109 = *(v107 + 24), v109 == google::protobuf::FieldDescriptor::enum_type(a2)))
        {
          *(a2 + 18) = v108;
        }

        else
        {
          v110 = *(a2 + 1);
          v111 = *(google::protobuf::FieldDescriptor::enum_type(a2) + 8);
          std::operator+<char>();
          v112 = std::string::append(&v140, " has no value named ");
          v113 = *&v112->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v113;
          v112->__r_.__value_.__l.__size_ = 0;
          v112->__r_.__value_.__r.__words[2] = 0;
          v112->__r_.__value_.__r.__words[0] = 0;
          v114 = *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL;
          v115 = *(v114 + 23);
          if (v115 >= 0)
          {
            v116 = (*(a3 + 6) & 0xFFFFFFFFFFFFFFFELL);
          }

          else
          {
            v116 = *v114;
          }

          if (v115 >= 0)
          {
            v117 = *(v114 + 23);
          }

          else
          {
            v117 = *(v114 + 8);
          }

          v118 = std::string::append(&v141, v116, v117);
          v119 = *&v118->__r_.__value_.__l.__data_;
          v142.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
          *&v142.__r_.__value_.__l.__data_ = v119;
          v118->__r_.__value_.__l.__size_ = 0;
          v118->__r_.__value_.__r.__words[2] = 0;
          v118->__r_.__value_.__r.__words[0] = 0;
          v120 = std::string::append(&v142, ".");
          v121 = *&v120->__r_.__value_.__l.__data_;
          __dst[0].__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
          *&__dst[0].__r_.__value_.__l.__data_ = v121;
          v120->__r_.__value_.__l.__size_ = 0;
          v120->__r_.__value_.__r.__words[2] = 0;
          v120->__r_.__value_.__r.__words[0] = 0;
          google::protobuf::DescriptorBuilder::AddError(this, v110, a3, 4, __dst);
          if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst[0].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v142.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 4, "Default value for an enum field must be an identifier.");
      }

LABEL_18:
      if (google::protobuf::FileDescriptorTables::AddFieldByNumber(this[11], a2))
      {
        if (*(a2 + 67) == 1 && (google::protobuf::DescriptorPool::Tables::AddExtension(this[1], a2) & 1) == 0)
        {
          v11 = this[1];
          v12 = *(a2 + 17);
          __dst[0].__r_.__value_.__r.__words[0] = *(a2 + 10);
          LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = v12;
          v13 = sub_276B265AC(v11 + 384, __dst);
          if ((v11 + 392) == v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v13[6];
          }

          v78 = *(a2 + 10);
          if (v78)
          {
            v79 = *(v78 + 8);
            if (*(v79 + 23) < 0)
            {
              sub_276A07B90(&__p, *v79, *(v79 + 1));
            }

            else
            {
              v80 = *v79;
              __p.__r_.__value_.__r.__words[2] = *(v79 + 2);
              *&__p.__r_.__value_.__l.__data_ = v80;
            }
          }

          else
          {
            sub_276A4D46C(&__p, "unknown");
          }

          __dst[0].__r_.__value_.__r.__words[0] = google::protobuf::FastInt32ToBuffer(*(a2 + 17), &__dst[0].__r_.__value_.__s.__data_[12], v14);
          LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = strlen(__dst[0].__r_.__value_.__l.__data_);
          v94 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v142.__r_.__value_.__r.__words[0] = p_p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v94 = __p.__r_.__value_.__r.__words[1];
          }

          LODWORD(v142.__r_.__value_.__r.__words[1]) = v94;
          v96 = *(v15 + 8);
          v97 = *(v96 + 23);
          v98 = *(v96 + 8);
          if (v97 < 0)
          {
            v96 = *v96;
          }

          v141.__r_.__value_.__r.__words[0] = v96;
          if (v97 >= 0)
          {
            v99 = v97;
          }

          else
          {
            v99 = v98;
          }

          LODWORD(v141.__r_.__value_.__r.__words[1]) = v99;
          v100 = **(v15 + 40);
          v101 = *(v100 + 23);
          v102 = *(v100 + 8);
          if (v101 < 0)
          {
            v100 = *v100;
          }

          v140.__r_.__value_.__r.__words[0] = v100;
          if (v101 >= 0)
          {
            v103 = v101;
          }

          else
          {
            v103 = v102;
          }

          LODWORD(v140.__r_.__value_.__r.__words[1]) = v103;
          v138 = 0;
          v139 = -1;
          v136 = 0;
          v137 = -1;
          v134 = 0;
          v135 = -1;
          v132 = 0;
          v133 = -1;
          v130 = 0;
          v131 = -1;
          v128 = 0;
          v129 = -1;
          *&v125 = &v132;
          *(&v125 + 1) = &v130;
          google::protobuf::strings::Substitute("Extension number $0 has already been used in $1 by extension $2 defined in $3.", __dst, &v142, &v141, &v140, &v138, &v136, &v134, &v126, v125, &v128);
          google::protobuf::DescriptorBuilder::AddWarning(this, *(a2 + 1), a3, 1, &v126);
          goto LABEL_161;
        }

        goto LABEL_166;
      }

      v25 = this[11];
      v26 = *(a2 + 10);
      v27 = v25[20];
      if (v27)
      {
        v28 = *(a2 + 17);
        v29 = (16777619 * v28) ^ (16777499 * v26);
        v30 = vcnt_s8(v27);
        v30.i16[0] = vaddlv_u8(v30);
        if (v30.u32[0] > 1uLL)
        {
          v31 = (16777619 * v28) ^ (16777499 * v26);
          if (v29 >= *&v27)
          {
            v31 = v29 % *&v27;
          }
        }

        else
        {
          v31 = v29 & (*&v27 - 1);
        }

        v54 = *(*&v25[19] + 8 * v31);
        if (v54)
        {
          for (i = *v54; i; i = *i)
          {
            v56 = i[1];
            if (v29 == v56)
            {
              if (i[2] == v26 && *(i + 6) == v28)
              {
                v58 = i[4];
                if (!v26)
                {
LABEL_123:
                  sub_276A4D46C(&__p, "unknown");
LABEL_124:
                  v81 = *(a2 + 1);
                  if (*(a2 + 67) == 1)
                  {
                    __dst[0].__r_.__value_.__r.__words[0] = google::protobuf::FastInt32ToBuffer(*(a2 + 17), &__dst[0].__r_.__value_.__s.__data_[12], v10);
                    LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = strlen(__dst[0].__r_.__value_.__l.__data_);
                    v82 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                    v83 = &__p;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v83 = __p.__r_.__value_.__r.__words[0];
                    }

                    v142.__r_.__value_.__r.__words[0] = v83;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v82 = __p.__r_.__value_.__r.__words[1];
                    }

                    LODWORD(v142.__r_.__value_.__r.__words[1]) = v82;
                    v84 = v58[1];
                    v85 = *(v84 + 23);
                    v86 = *(v84 + 8);
                    if (v85 < 0)
                    {
                      v84 = *v84;
                    }

                    v141.__r_.__value_.__r.__words[0] = v84;
                    if (v85 >= 0)
                    {
                      v87 = v85;
                    }

                    else
                    {
                      v87 = v86;
                    }

                    LODWORD(v141.__r_.__value_.__r.__words[1]) = v87;
                    v140.__r_.__value_.__r.__words[0] = 0;
                    LODWORD(v140.__r_.__value_.__r.__words[1]) = -1;
                    v138 = 0;
                    v139 = -1;
                    v136 = 0;
                    v137 = -1;
                    v134 = 0;
                    v135 = -1;
                    v132 = 0;
                    v133 = -1;
                    v130 = 0;
                    v131 = -1;
                    v128 = 0;
                    v129 = -1;
                    *&v123 = &v132;
                    *(&v123 + 1) = &v130;
                    google::protobuf::strings::Substitute("Extension number $0 has already been used in $1 by extension $2.", __dst, &v142, &v141, &v140, &v138, &v136, &v134, &v126, v123, &v128);
                    google::protobuf::DescriptorBuilder::AddError(this, v81, a3, 1, &v126);
                  }

                  else
                  {
                    __dst[0].__r_.__value_.__r.__words[0] = google::protobuf::FastInt32ToBuffer(*(a2 + 17), &__dst[0].__r_.__value_.__s.__data_[12], v10);
                    LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = strlen(__dst[0].__r_.__value_.__l.__data_);
                    v88 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                    v89 = &__p;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v89 = __p.__r_.__value_.__r.__words[0];
                    }

                    v142.__r_.__value_.__r.__words[0] = v89;
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v88 = __p.__r_.__value_.__r.__words[1];
                    }

                    LODWORD(v142.__r_.__value_.__r.__words[1]) = v88;
                    v90 = *v58;
                    v91 = *(*v58 + 23);
                    v92 = *(*v58 + 8);
                    if (v91 < 0)
                    {
                      v90 = **v58;
                    }

                    v141.__r_.__value_.__r.__words[0] = v90;
                    if (v91 >= 0)
                    {
                      v93 = v91;
                    }

                    else
                    {
                      v93 = v92;
                    }

                    LODWORD(v141.__r_.__value_.__r.__words[1]) = v93;
                    v140.__r_.__value_.__r.__words[0] = 0;
                    LODWORD(v140.__r_.__value_.__r.__words[1]) = -1;
                    v138 = 0;
                    v139 = -1;
                    v136 = 0;
                    v137 = -1;
                    v134 = 0;
                    v135 = -1;
                    v132 = 0;
                    v133 = -1;
                    v130 = 0;
                    v131 = -1;
                    v128 = 0;
                    v129 = -1;
                    *&v124 = &v132;
                    *(&v124 + 1) = &v130;
                    google::protobuf::strings::Substitute("Field number $0 has already been used in $1 by field $2.", __dst, &v142, &v141, &v140, &v138, &v136, &v134, &v126, v124, &v128);
                    google::protobuf::DescriptorBuilder::AddError(this, v81, a3, 1, &v126);
                  }

LABEL_161:
                  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v126.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v77 = __p.__r_.__value_.__r.__words[0];
LABEL_165:
                    operator delete(v77);
                  }

                  goto LABEL_166;
                }

LABEL_82:
                v59 = *(v26 + 8);
                if (*(v59 + 23) < 0)
                {
                  sub_276A07B90(&__p, *v59, *(v59 + 1));
                }

                else
                {
                  v60 = *v59;
                  __p.__r_.__value_.__r.__words[2] = *(v59 + 2);
                  *&__p.__r_.__value_.__l.__data_ = v60;
                }

                goto LABEL_124;
              }
            }

            else
            {
              if (v30.u32[0] > 1uLL)
              {
                if (v56 >= *&v27)
                {
                  v56 %= *&v27;
                }
              }

              else
              {
                v56 &= *&v27 - 1;
              }

              if (v56 != v31)
              {
                break;
              }
            }
          }
        }
      }

      v58 = 0;
      if (!v26)
      {
        goto LABEL_123;
      }

      goto LABEL_82;
    }

    if (*(google::protobuf::FieldDescriptor::enum_type(a2) + 44) >= 1)
    {
      *(a2 + 18) = *(google::protobuf::FieldDescriptor::enum_type(a2) + 48);
    }

    goto LABEL_18;
  }

  v73 = *(a2 + 1);
  v74 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
  std::operator+<char>();
  v75 = std::string::append(&v142, " is not an enum type.");
  v76 = *&v75->__r_.__value_.__l.__data_;
  __dst[0].__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
  *&__dst[0].__r_.__value_.__l.__data_ = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  google::protobuf::DescriptorBuilder::AddError(this, v73, a3, 2, __dst);
LABEL_111:
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    v77 = v142.__r_.__value_.__r.__words[0];
    goto LABEL_165;
  }

LABEL_166:
  v104 = *MEMORY[0x277D85DE8];
}

void sub_276B207D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (*(v60 - 121) < 0)
  {
    operator delete(*(v60 - 144));
  }

  if (*(v60 - 169) < 0)
  {
    operator delete(*(v60 - 192));
  }

  if (*(v60 - 217) < 0)
  {
    operator delete(*(v60 - 240));
  }

  if (a60 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

google::protobuf::EnumOptions *google::protobuf::DescriptorBuilder::CrossLinkEnum(google::protobuf::EnumOptions *this, google::protobuf::EnumDescriptor *a2, const google::protobuf::EnumDescriptorProto *a3)
{
  if (!*(a2 + 4))
  {
    this = google::protobuf::EnumOptions::default_instance(this);
    *(a2 + 4) = this;
  }

  v4 = *(a2 + 11);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = *(a2 + 6);
      if (!*(v7 + v6))
      {
        this = google::protobuf::EnumValueOptions::default_instance(this);
        *(v7 + v6) = this;
        v4 = *(a2 + 11);
      }

      ++v5;
      v6 += 40;
    }

    while (v5 < v4);
  }

  return this;
}

void google::protobuf::DescriptorBuilder::CrossLinkService(google::protobuf::DescriptorBuilder *this, google::protobuf::ServiceDescriptor *a2, const google::protobuf::ServiceDescriptorProto *a3)
{
  if (!*(a2 + 3))
  {
    *(a2 + 3) = google::protobuf::ServiceOptions::default_instance(this);
  }

  if (*(a2 + 10) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::CrossLinkMethod(this, (*(a2 + 4) + v6), *(*(a3 + 5) + 8 * v7++ + 8));
      v6 += 104;
    }

    while (v7 < *(a2 + 10));
  }
}

google::protobuf::ExtensionRangeOptions *google::protobuf::DescriptorBuilder::CrossLinkExtensionRange(google::protobuf::ExtensionRangeOptions *result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    result = google::protobuf::ExtensionRangeOptions::default_instance(result);
    *(a2 + 8) = result;
  }

  return result;
}

google::protobuf::EnumValueOptions *google::protobuf::DescriptorBuilder::CrossLinkEnumValue(google::protobuf::EnumValueOptions *result, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    result = google::protobuf::EnumValueOptions::default_instance(result);
    *(a2 + 32) = result;
  }

  return result;
}

void google::protobuf::DescriptorBuilder::CrossLinkMethod(google::protobuf::DescriptorBuilder *this, google::protobuf::MethodDescriptor *a2, const google::protobuf::MethodDescriptorProto *a3)
{
  if (!*(a2 + 11))
  {
    *(a2 + 11) = google::protobuf::MethodOptions::default_instance(this);
  }

  v6 = google::protobuf::DescriptorBuilder::LookupSymbol(this, (*(a3 + 4) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 1), 0, 0, (*(*this + 41) & 1) == 0);
  if (v6 == 1)
  {
    google::protobuf::internal::LazyDescriptor::Set((a2 + 24), v7);
  }

  else if (v6)
  {
    v9 = *(a2 + 1);
    v10 = *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL;
    std::operator+<char>();
    v11 = std::string::append(&v20, " is not a message type.");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v22 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(this, v9, a3, 5, __p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (*(*this + 41))
    {
      sub_276B280C4(__p, (*(a3 + 4) & 0xFFFFFFFFFFFFFFFELL), v8);
      google::protobuf::internal::LazyDescriptor::SetLazy(a2 + 3, __p[0], __p[1], *(this + 10));
    }

    google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 5, *(a3 + 4) & 0xFFFFFFFFFFFFFFFELL);
  }

  v13 = google::protobuf::DescriptorBuilder::LookupSymbol(this, (*(a3 + 5) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 1), 0, 0, (*(*this + 41) & 1) == 0);
  if (v13 == 1)
  {
    google::protobuf::internal::LazyDescriptor::Set((a2 + 56), v14);
  }

  else if (v13)
  {
    v16 = *(a2 + 1);
    v17 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL;
    std::operator+<char>();
    v18 = std::string::append(&v20, " is not a message type.");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v22 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(this, v16, a3, 6, __p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (*(*this + 41))
    {
      sub_276B280C4(__p, (*(a3 + 5) & 0xFFFFFFFFFFFFFFFELL), v15);
      google::protobuf::internal::LazyDescriptor::SetLazy(a2 + 7, __p[0], __p[1], *(this + 10));
    }

    google::protobuf::DescriptorBuilder::AddNotDefinedError(this, *(a2 + 1), a3, 6, *(a3 + 5) & 0xFFFFFFFFFFFFFFFELL);
  }
}

void sub_276B20CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void google::protobuf::internal::LazyDescriptor::SetLazy(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7414);
    v8 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !descriptor_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (a1[3])
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7415);
    v9 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !file_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (a1[1])
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7416);
    v10 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !name_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (a1[2])
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7417);
    v11 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !once_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (!a4 || (v12 = *(a4 + 16)) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7418);
    v13 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: file && file->pool_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
    v12 = *(a4 + 16);
  }

  if ((*(v12 + 41) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7419);
    v14 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: file->pool_->lazily_build_dependencies_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  if (*(a4 + 65) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7420);
    v15 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !file->finished_building_: ");
    google::protobuf::internal::LogFinisher::operator=(&v16, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  a1[3] = a4;
  google::protobuf::DescriptorPool::Tables::AllocateString(*(*(a4 + 16) + 32), a2, a3);
}

void sub_276B20F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::LazyDescriptor::Set(google::protobuf::internal::LazyDescriptor *this, const google::protobuf::Descriptor *a2)
{
  if (*(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7405);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !name_: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7406);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !once_: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 3))
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7407);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: !file_: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  *this = a2;
}

void sub_276B2108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::ValidateMessageOptions(std::once_flag::_State_type *this, google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(a2 + 26) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 5) + v6), *(*(a3 + 5) + 8 * v7++ + 8));
      v6 += 152;
    }

    while (v7 < *(a2 + 26));
  }

  if (*(a2 + 29) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateMessageOptions(this, (*(a2 + 7) + v8), *(*(a3 + 8) + 8 * v9++ + 8));
      v8 += 144;
    }

    while (v9 < *(a2 + 29));
  }

  if (*(a2 + 30) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateEnumOptions(this, (*(a2 + 8) + v10), *(*(a3 + 11) + 8 * v11++ + 8));
      v10 += 80;
    }

    while (v11 < *(a2 + 30));
  }

  if (*(a2 + 32) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateFieldOptions(this, (*(a2 + 10) + v12), *(*(a3 + 17) + 8 * v13++ + 8));
      v12 += 152;
    }

    while (v13 < *(a2 + 32));
  }

  if (*(*(a2 + 4) + 72))
  {
    v14 = 0x7FFFFFFFLL;
  }

  else
  {
    v14 = 0x1FFFFFFFLL;
  }

  v15 = *(a2 + 31);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 4;
    do
    {
      if ((v14 + 1) < *(*(a2 + 9) + v17))
      {
        v18 = *(a2 + 1);
        v19 = *(*(a3 + 14) + 8 * v16 + 8);
        v41 = google::protobuf::FastInt64ToBuffer(v14, v43, a3);
        v42 = strlen(v41);
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
        v23 = 0;
        v24 = -1;
        *(&v21 + 1) = &v25;
        *&v21 = &v27;
        google::protobuf::strings::Substitute("Extension numbers cannot be greater than $0.", &v41, &v39, &v37, &v35, &v33, &v31, &v29, &__p, v21, &v23);
        google::protobuf::DescriptorBuilder::AddError(this, v18, v19, 1, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v15 = *(a2 + 31);
      }

      ++v16;
      v17 += 16;
    }

    while (v16 < v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_276B21378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ValidateEnumOptions(google::protobuf::DescriptorBuilder *this, google::protobuf::EnumDescriptor *a2, const google::protobuf::EnumDescriptorProto *a3)
{
  v6 = *(a2 + 4);
  if ((*(v6 + 40) & 1) == 0 || (*(v6 + 72) & 1) == 0)
  {
    v36[1] = 0;
    v35 = v36;
    v36[0] = 0;
    if (*(a2 + 11) < 1)
    {
      v28 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = *(a2 + 6) + 40 * v7;
        v9 = *(v8 + 16);
        v10 = v36[0];
        if (!v36[0])
        {
          goto LABEL_12;
        }

        v11 = v36;
        do
        {
          if (*(v10 + 32) >= v9)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * (*(v10 + 32) < v9));
        }

        while (v10);
        if (v11 != v36 && v9 >= *(v11 + 8))
        {
          v14 = *(v8 + 8);
          std::operator+<char>();
          v15 = std::string::append(&v30, " uses the same enum value as ");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v31.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v31.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v29 = *(v8 + 16);
          v36[3] = &v29;
          v17 = sub_276B2E914(&v35, &v29);
          v20 = v17[5];
          v18 = v17 + 5;
          v19 = v20;
          v21 = *(v18 + 23);
          if (v21 >= 0)
          {
            v22 = v18;
          }

          else
          {
            v22 = v19;
          }

          if (v21 >= 0)
          {
            v23 = *(v18 + 23);
          }

          else
          {
            v23 = v18[1];
          }

          v24 = std::string::append(&v31, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v32.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&v32.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = std::string::append(&v32, ". If this is intended, set 'option allow_alias = true;' to the enum definition.");
          v27 = *&v26->__r_.__value_.__l.__data_;
          v34 = v26->__r_.__value_.__r.__words[2];
          *__p = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          if ((*(*(a2 + 4) + 72) & 1) == 0)
          {
            google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), *(*(a3 + 5) + 8 * v7 + 8), 1, __p);
          }

          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
LABEL_12:
          v12 = *(v8 + 8);
          LODWORD(v32.__r_.__value_.__l.__data_) = v9;
          __p[0] = &v32;
          v13 = sub_276B2E914(&v35, &v32);
          std::string::operator=((v13 + 5), v12);
        }

        ++v7;
      }

      while (v7 < *(a2 + 11));
      v28 = v36[0];
    }

    sub_276B2E8B0(&v35, v28);
  }
}

void sub_276B21604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, char *a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_276B2E8B0(&a36, a37);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::ValidateServiceOptions(google::protobuf::FileOptions *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v7 = *(v3 + 136);
    if (v7 != google::protobuf::FileOptions::default_instance(a1) && *(*(v3 + 136) + 160) == 3)
    {
      v8 = *(*(a2 + 16) + 136);
      if ((*(v8 + 155) & 1) != 0 || *(v8 + 156) == 1)
      {
        v9 = *(a2 + 8);

        google::protobuf::DescriptorBuilder::AddError(a1, v9, a3, 0, "Files with optimize_for = LITE_RUNTIME cannot define services unless you set both options cc_generic_services and java_generic_services to false.");
      }
    }
  }
}

void google::protobuf::DescriptorBuilder::ValidateFieldOptions(std::once_flag::_State_type *this, const std::string::value_type **a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v5 = this;
  if (*(*this + 41) == 1)
  {
    if (!a2)
    {
      return;
    }

    this = google::protobuf::FieldDescriptor::message_type(a2);
    if (!this)
    {
      return;
    }
  }

  if (a2[15][77] == 1)
  {
    this = a2[6];
    if (this)
    {
      v29 = a2;
      v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(this, memory_order_acquire) != -1)
      {
        __p.__r_.__value_.__r.__words[0] = &v30;
        __p.__r_.__value_.__l.__size_ = &v29;
        p_p = &__p;
        std::__call_once(this, &p_p, sub_2769C149C);
      }
    }

    if (*(a2 + 14) != 11)
    {
      google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 2, "[lazy = true] can only be specified for submessage fields.");
    }
  }

  if (a2[15][76] == 1)
  {
    if (*(a2 + 15) != 3)
    {
      goto LABEL_16;
    }

    this = a2[6];
    if (this)
    {
      v29 = a2;
      v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(this, memory_order_acquire) != -1)
      {
        __p.__r_.__value_.__r.__words[0] = &v30;
        __p.__r_.__value_.__l.__size_ = &v29;
        p_p = &__p;
        std::__call_once(this, &p_p, sub_2769C149C);
      }
    }

    if ((*(a2 + 14) - 13) >= 0xFFFFFFFC)
    {
LABEL_16:
      google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 2, "[packed = true] can only be specified for repeated primitive fields.");
    }
  }

  v6 = a2[10];
  if (v6)
  {
    v7 = *(v6 + 4);
    this = google::protobuf::MessageOptions::default_instance(this);
    if (v7 != this && *(*(a2[10] + 4) + 72) == 1)
    {
      if (*(a2 + 67) != 1)
      {
        v8 = a2[1];
        v9 = "MessageSets cannot have fields, only extensions.";
        v10 = v5;
        v11 = a3;
        v12 = 0;
        goto LABEL_28;
      }

      if (*(a2 + 15) != 1)
      {
        goto LABEL_26;
      }

      this = a2[6];
      if (this)
      {
        v29 = a2;
        v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(this, memory_order_acquire) != -1)
        {
          __p.__r_.__value_.__r.__words[0] = &v30;
          __p.__r_.__value_.__l.__size_ = &v29;
          p_p = &__p;
          std::__call_once(this, &p_p, sub_2769C149C);
        }
      }

      if (*(a2 + 14) != 11)
      {
LABEL_26:
        v8 = a2[1];
        v9 = "Extensions of MessageSets must be optional messages.";
        v10 = v5;
        v11 = a3;
        v12 = 2;
LABEL_28:
        google::protobuf::DescriptorBuilder::AddError(v10, v8, v11, v12, v9);
      }
    }
  }

  v13 = a2[5];
  if (v13)
  {
    v14 = *(v13 + 17);
    v15 = google::protobuf::FileOptions::default_instance(this);
    if (v14 != v15 && *(*(v13 + 17) + 160) == 3)
    {
      v16 = a2[10];
      if (v16)
      {
        v17 = *(v16 + 2);
        if (!v17 || (v18 = *(v17 + 136), v18 == google::protobuf::FileOptions::default_instance(v15)) || *(*(v17 + 136) + 160) != 3)
        {
          google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 3, "Extensions to non-lite types can only be declared in non-lite files.  Note that you cannot extend a non-lite type to contain a lite type, but the reverse is allowed.");
        }
      }
    }
  }

  v19 = a2[6];
  if (v19)
  {
    v29 = a2;
    v30 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v19, memory_order_acquire) != -1)
    {
      __p.__r_.__value_.__r.__words[0] = &v30;
      __p.__r_.__value_.__l.__size_ = &v29;
      p_p = &__p;
      std::__call_once(v19, &p_p, sub_2769C149C);
    }
  }

  if (*(a2 + 14) == 11 && *(*(a2[13] + 4) + 75) == 1 && !google::protobuf::DescriptorBuilder::ValidateMapEntry(v5, a2, a3))
  {
    google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 2, "map_entry should not be set explicitly. Use map<KeyType, ValueType> instead.");
  }

  google::protobuf::DescriptorBuilder::ValidateJSType(v5, a2, a3);
  if (*(a2 + 67) == 1 && *(a2 + 66) == 1)
  {
    v20 = a2[4];
    sub_276B1DD34(*a2, &__p);
    v21 = *(v20 + 23);
    if (v21 >= 0)
    {
      v22 = *(v20 + 23);
    }

    else
    {
      v22 = v20[1];
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v22 == size)
    {
      if (v21 >= 0)
      {
        v25 = v20;
      }

      else
      {
        v25 = *v20;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      v27 = memcmp(v25, v26, v22) != 0;
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v27 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_62:
    if (v27)
    {
      google::protobuf::DescriptorBuilder::AddError(v5, a2[1], a3, 7, "option json_name is not allowed on extension fields.");
    }
  }
}

void google::protobuf::DescriptorBuilder::ValidateProto3(google::protobuf::DescriptorBuilder *this, google::protobuf::FileDescriptor *a2, const google::protobuf::FileDescriptorProto *a3)
{
  if (*(a2 + 14) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Field(this, (*(a2 + 16) + v6), *(*(a3 + 17) + 8 * v7++ + 8));
      v6 += 152;
    }

    while (v7 < *(a2 + 14));
  }

  if (*(a2 + 11) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Message(this, (*(a2 + 13) + v8), *(*(a3 + 8) + 8 * v9++ + 8));
      v8 += 144;
    }

    while (v9 < *(a2 + 11));
  }

  if (*(a2 + 12) >= 1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Enum(this, (*(a2 + 14) + v10), *(*(a3 + 11) + 8 * v11++ + 8));
      v10 += 80;
    }

    while (v11 < *(a2 + 12));
  }
}

void google::protobuf::DescriptorBuilder::ValidateProto3Field(google::protobuf::DescriptorBuilder *this, google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  if (*(a2 + 67) == 1)
  {
    v6 = *(*(a2 + 10) + 8);
    if ((atomic_load_explicit(qword_280A52D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_280A52D48))
    {
      sub_276B27818();
    }

    if (qword_280A52D40 + 8 == sub_276B27C88(qword_280A52D40, v6))
    {
      google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 3, "Extensions in proto3 are only allowed for defining options.");
    }
  }

  if (*(a2 + 15) == 2)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "Required fields are not allowed in proto3.");
  }

  if (*(a2 + 64) == 1)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 4, "Explicit default values are not allowed in proto3.");
  }

  v7 = *(a2 + 6);
  if (v7)
  {
    v22.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v21.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v7, memory_order_acquire) != -1)
    {
      *&v24 = &v22;
      *(&v24 + 1) = &v21;
      v23.__r_.__value_.__r.__words[0] = &v24;
      std::__call_once(v7, &v23, sub_2769C149C);
    }
  }

  if (*(a2 + 14) == 14 && google::protobuf::FieldDescriptor::enum_type(a2) && *(*(google::protobuf::FieldDescriptor::enum_type(a2) + 16) + 60) != 3 && *(*(google::protobuf::FieldDescriptor::enum_type(a2) + 16) + 60))
  {
    v8 = *(a2 + 1);
    v9 = *(google::protobuf::FieldDescriptor::enum_type(a2) + 8);
    std::operator+<char>();
    v10 = std::string::append(&v21, " is not a proto3 enum, but is used in ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = *(*(a2 + 10) + 8);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = *(*(a2 + 10) + 8);
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

    v16 = std::string::append(&v22, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v23, " which is a proto3 message type.");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v25 = v18->__r_.__value_.__r.__words[2];
    v24 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(this, v8, a3, 2, &v24);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v20 = *(a2 + 6);
  if (v20)
  {
    v22.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v21.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v20, memory_order_acquire) != -1)
    {
      *&v24 = &v22;
      *(&v24 + 1) = &v21;
      v23.__r_.__value_.__r.__words[0] = &v24;
      std::__call_once(v20, &v23, sub_2769C149C);
    }
  }

  if (*(a2 + 14) == 10)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "Groups are not supported in proto3 syntax.");
  }
}

void google::protobuf::DescriptorBuilder::ValidateProto3Message(google::protobuf::DescriptorBuilder *this, google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3)
{
  if (*(a2 + 29) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      google::protobuf::DescriptorBuilder::ValidateProto3Message(this, (*(a2 + 7) + v6), *(*(a3 + 8) + 8 * v7++ + 8));
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
      google::protobuf::DescriptorBuilder::ValidateProto3Enum(this, (*(a2 + 8) + v8), *(*(a3 + 11) + 8 * v9++ + 8));
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
      google::protobuf::DescriptorBuilder::ValidateProto3Field(this, (*(a2 + 5) + v10), *(*(a3 + 5) + 8 * v11++ + 8));
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
      google::protobuf::DescriptorBuilder::ValidateProto3Field(this, (*(a2 + 10) + v12), *(*(a3 + 17) + 8 * v13++ + 8));
      v12 += 152;
    }

    while (v13 < *(a2 + 32));
  }

  if (*(a2 + 31) > 0)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), *(*(a3 + 14) + 8), 1, "Extension ranges are not allowed in proto3.");
  }

  if (*(*(a2 + 4) + 72) == 1)
  {
    google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 0, "MessageSet is not supported in proto3.");
  }

  v46[0] = 0;
  v46[1] = 0;
  v45 = v46;
  if (*(a2 + 26) < 1)
  {
    v37 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *(*(a2 + 5) + 152 * v14);
      memset(&v44, 0, sizeof(v44));
      v16 = v15[23];
      if (v16 >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v15;
      }

      if (v16 >= 0)
      {
        v18 = v15[23];
      }

      else
      {
        v18 = *(v15 + 1);
      }

      for (; v18; --v18)
      {
        v19 = *v17;
        if (v19 != 95)
        {
          if ((v19 - 65) < 0x1A)
          {
            LOBYTE(v19) = v19 | 0x20;
          }

          std::string::push_back(&v44, v19);
        }

        ++v17;
      }

      if (v46 == sub_276B27C88(&v45, &v44.__r_.__value_.__l.__data_))
      {
        v36 = *(a2 + 5);
        __p[0] = &v44;
        *(sub_276B2D6B0(&v45, &v44.__r_.__value_.__l.__data_) + 56) = v36 + 152 * v14;
      }

      else
      {
        v20 = *(a2 + 1);
        v21 = *(*(a3 + 5) + 8 * v14 + 8);
        v22 = *(*(a2 + 5) + 152 * v14);
        std::operator+<char>();
        v23 = std::string::append(&v38, " conflicts with field ");
        v24 = *&v23->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v46[3] = &v44;
        v25 = sub_276B2D6B0(&v45, &v44.__r_.__value_.__l.__data_);
        v26 = **(v25 + 56);
        v27 = *(v26 + 23);
        if (v27 >= 0)
        {
          v28 = **(v25 + 56);
        }

        else
        {
          v28 = *v26;
        }

        if (v27 >= 0)
        {
          v29 = *(v26 + 23);
        }

        else
        {
          v29 = *(v26 + 8);
        }

        v30 = std::string::append(&v39, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&v40, ". This is not ");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v41.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v41.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        v34 = std::string::append(&v41, "allowed in proto3.");
        v35 = *&v34->__r_.__value_.__l.__data_;
        v43 = v34->__r_.__value_.__r.__words[2];
        *__p = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(this, v20, v21, 0, __p);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      ++v14;
    }

    while (v14 < *(a2 + 26));
    v37 = v46[0];
  }

  sub_276B2AD2C(&v45, v37);
}

void sub_276B2245C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_276B2AD2C(v48 - 128, *(v48 - 120));
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::ValidateProto3Enum(google::protobuf::DescriptorBuilder *this, const std::string::value_type **a2, const google::protobuf::EnumDescriptorProto *a3)
{
  if (*(a2 + 11) >= 1)
  {
    if (*(a2[6] + 4))
    {
      google::protobuf::DescriptorBuilder::AddError(this, a2[1], *(*(a3 + 5) + 8), 1, "The first enum value must be zero in proto3.");
    }
  }
}

BOOL google::protobuf::DescriptorBuilder::ValidateMapEntry(google::protobuf::DescriptorBuilder *this, const std::string::value_type **a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v6 = google::protobuf::FieldDescriptor::message_type(a2);
  if (*(v6 + 128))
  {
    return 0;
  }

  if (*(a2 + 15) != 3)
  {
    return 0;
  }

  v7 = v6;
  if (*(v6 + 124) || *(v6 + 116) || *(v6 + 120) || *(v6 + 104) != 2)
  {
    return 0;
  }

  v8 = *v6;
  sub_276B1DC1C(*a2, 0, &v21);
  v9 = std::string::append(&v21, "Entry");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = !sub_276B18B1C(v8, __p) || a2[10] != v7[3];
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    return 0;
  }

  if (*(v7[4] + 75) == 1)
  {
    v12 = v7[5];
    v13 = (v12 + 38);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v12[15] != 1 || v12[17] != 1)
  {
    return 0;
  }

  v14 = *v12;
  v15 = *(*v12 + 23);
  if (v15 < 0)
  {
    if (*(v14 + 1) != 3)
    {
      return 0;
    }

    v14 = *v14;
  }

  else if (v15 != 3)
  {
    return 0;
  }

  v16 = *v14;
  v17 = *(v14 + 2);
  v18 = v16 == 25963 && v17 == 121;
  if (!v18 || *(v13 + 15) != 1 || *(v13 + 17) != 2)
  {
    return 0;
  }

  result = sub_276B19E54(*v13, "value");
  if (result)
  {
    v20 = sub_276B0C1A4(v12) - 1;
    if (v20 <= 0xD && ((0x2E03u >> v20) & 1) != 0)
    {
      google::protobuf::DescriptorBuilder::AddError(this, a2[1], a3, 2, off_27A6E7950[v20]);
    }

    if (sub_276B0C1A4(v13) == 14)
    {
      if (*(*(google::protobuf::FieldDescriptor::enum_type(v13) + 48) + 16))
      {
        google::protobuf::DescriptorBuilder::AddError(this, a2[1], a3, 2, "Enum value in map must define 0 as the first value.");
      }
    }

    return 1;
  }

  return result;
}

void sub_276B22788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ValidateJSType(google::protobuf::DescriptorBuilder *this, google::protobuf::FieldDescriptor *a2, const google::protobuf::FieldDescriptorProto *a3)
{
  v3 = *(*(a2 + 15) + 80);
  if (v3)
  {
    v7 = *(a2 + 6);
    if (v7)
    {
      v16 = a2;
      v17 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        __p[0] = &v17;
        __p[1] = &v16;
        v18 = __p;
        std::__call_once(v7, &v18, sub_2769C149C);
      }
    }

    v8 = *(a2 + 14);
    v9 = v8 > 0x12;
    v10 = (1 << v8) & 0x50058;
    if (v9 || v10 == 0)
    {
      google::protobuf::DescriptorBuilder::AddError(this, *(a2 + 1), a3, 2, "jstype is only allowed on int64, uint64, sint64, fixed64 or sfixed64 fields.");
    }

    else if (v3 >= 3)
    {
      v12 = *(a2 + 1);
      v13 = *(*(google::protobuf::FieldOptions_JSType_descriptor(v7) + 48) + 40 * v3);
      std::operator+<char>();
      google::protobuf::DescriptorBuilder::AddError(this, v12, a3, 2, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_276B228D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::DescriptorBuilder::OptionInterpreter *google::protobuf::DescriptorBuilder::OptionInterpreter::OptionInterpreter(google::protobuf::DescriptorBuilder::OptionInterpreter *this, google::protobuf::DescriptorBuilder *a2)
{
  *(this + 4) = 0;
  *this = a2;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  google::protobuf::DynamicMessageFactory::DynamicMessageFactory((this + 72));
  if (!*this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 6378);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: builder_: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v3->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_276B229AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((v4 + 72));
  sub_276B2EAA0(v5, *v7);
  sub_276B2E9EC(v3, *v6);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::~OptionInterpreter(google::protobuf::DescriptorBuilder::OptionInterpreter *this)
{
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((this + 72));
  sub_276B2EAA0(this + 48, *(this + 7));
  sub_276B2E9EC(this + 24, *(this + 4));
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::InterpretSingleOption(uint64_t *a1, const google::protobuf::Message *a2, uint64_t a3, uint64_t *a4)
{
  v103 = *MEMORY[0x277D85DE8];
  v5 = a1[2];
  if (!*(v5 + 32))
  {
    sub_276A4D46C(v101, "Option must have a name.");
    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v101);
LABEL_64:
    if (SHIBYTE(v102) < 0)
    {
      operator delete(*v101);
    }

    v48 = 0;
    goto LABEL_128;
  }

  v8 = *(*(*(v5 + 40) + 8) + 24) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (*(v8 + 8) != 20)
    {
      goto LABEL_15;
    }

    v8 = *v8;
  }

  else if (v9 != 20)
  {
    goto LABEL_15;
  }

  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = *(v8 + 16);
  if (v10 == 0x707265746E696E75 && v11 == 0x706F5F6465746572 && v12 == 1852795252)
  {
    sub_276A4D46C(v101, "Option must not use reserved name uninterpreted_option.");
    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v101);
    goto LABEL_64;
  }

LABEL_15:
  v15 = *a1;
  v16 = (*(*a2 + 152))(a2);
  if (google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDeps(v15, *(v16 + 8), 1) == 1)
  {
    v18 = v17;
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = (*(*a2 + 152))(a2);
    if (!v18)
    {
LABEL_19:
      v19 = google::protobuf::internal::LogMessage::LogMessage(v101, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 6502);
      v20 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: options_descriptor: ");
      google::protobuf::internal::LogFinisher::operator=(&v86, &v20->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(v101);
    }
  }

  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  sub_276A4D46C(&__str, "");
  __p = 0;
  v93 = 0;
  v94 = 0;
  sub_276B2BBF0(&__p, *a4, a4[1], (a4[1] - *a4) >> 2);
  if (*(a1[2] + 32) < 1)
  {
LABEL_60:
    v43 = v99;
    if (*(v99 + 15) == 3 || (v44 = v96, v45 = v97, (*(*a2 + 152))(a2), UnknownFields = google::protobuf::Reflection::GetUnknownFields(v46, a2), (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, v44, v45, v43, &__str, UnknownFields) & 1) != 0))
    {
      operator new();
    }

    goto LABEL_121;
  }

  v21 = 1;
  while (1)
  {
    v22 = *a1;
    if (*(*a1 + 199) < 0)
    {
      **(v22 + 176) = 0;
      *(v22 + 184) = 0;
    }

    else
    {
      *(v22 + 176) = 0;
      *(v22 + 199) = 0;
    }

    v23 = *(*(a1[2] + 40) + 8 * v21);
    v24 = *(v23 + 24);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&__str, ".");
      v23 = *(*(a1[2] + 40) + 8 * v21);
    }

    v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v23 + 32) != 1)
    {
      break;
    }

    std::operator+<char>();
    v27 = std::string::append(&v86, ")");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v102 = v27->__r_.__value_.__r.__words[2];
    *v101 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v102 >= 0)
    {
      v29 = v101;
    }

    else
    {
      v29 = *v101;
    }

    if (v102 >= 0)
    {
      v30 = HIBYTE(v102);
    }

    else
    {
      v30 = *&v101[8];
    }

    std::string::append(&__str, v29, v30);
    if (SHIBYTE(v102) < 0)
    {
      operator delete(*v101);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    v31 = google::protobuf::DescriptorBuilder::LookupSymbol(*a1, v26, a1[1], 0, 0, 1);
    FieldByName = v32;
    if (v31 == 2)
    {
      goto LABEL_50;
    }

    FieldByName = v99;
    if (!v99)
    {
      goto LABEL_67;
    }

LABEL_51:
    v38 = *(FieldByName + 10);
    if (v38 != v18)
    {
      if (!v38 || (*(v38 + 140) & 1) == 0)
      {
        std::operator+<char>();
        v67 = std::string::append(&v90, " is not a field or extension of message ");
        v68 = *&v67->__r_.__value_.__l.__data_;
        v91.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
        *&v91.__r_.__value_.__l.__data_ = v68;
        v67->__r_.__value_.__l.__size_ = 0;
        v67->__r_.__value_.__r.__words[2] = 0;
        v67->__r_.__value_.__r.__words[0] = 0;
        v69 = (*v18)[23];
        if (v69 >= 0)
        {
          v70 = *v18;
        }

        else
        {
          v70 = **v18;
        }

        if (v69 >= 0)
        {
          v71 = *(*v18 + 23);
        }

        else
        {
          v71 = *(*v18 + 1);
        }

        v72 = std::string::append(&v91, v70, v71);
        v73 = *&v72->__r_.__value_.__l.__data_;
        v86.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v86.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v86, ".");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v102 = v74->__r_.__value_.__r.__words[2];
        *v101 = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v101);
        if (SHIBYTE(v102) < 0)
        {
          operator delete(*v101);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          v66 = v90.__r_.__value_.__r.__words[0];
          goto LABEL_120;
        }

        goto LABEL_121;
      }

LABEL_99:
      google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(FieldByName, a1[2], a2);
      v48 = 1;
      goto LABEL_122;
    }

    *v101 = *(FieldByName + 17);
    sub_276B112A4(&__p, v101);
    v39 = *(a1[2] + 32);
    if (v21 - 1 < v39 - 1)
    {
      v40 = v99;
      v41 = *(v99 + 6);
      if (v41)
      {
        v91.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v90.__r_.__value_.__r.__words[0] = v99;
        if (atomic_load_explicit(v41, memory_order_acquire) != -1)
        {
          *v101 = &v91;
          *&v101[8] = &v90;
          v86.__r_.__value_.__r.__words[0] = v101;
          std::__call_once(v41, &v86, sub_2769C149C);
        }
      }

      if ((*(v40 + 14) & 0xFFFFFFFE) != 0xA)
      {
        std::operator+<char>();
        v76 = std::string::append(&v86, " is an atomic type, not a message.");
        v77 = *&v76->__r_.__value_.__l.__data_;
        v102 = v76->__r_.__value_.__r.__words[2];
        *v101 = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v101);
        goto LABEL_116;
      }

      if (*(v99 + 15) == 3)
      {
        std::operator+<char>();
        v78 = std::string::append(&v86, " is a repeated message. Repeated message options must be initialized using an aggregate value.");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v102 = v78->__r_.__value_.__r.__words[2];
        *v101 = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v101);
LABEL_116:
        if (SHIBYTE(v102) < 0)
        {
          operator delete(*v101);
        }

        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          v66 = v86.__r_.__value_.__r.__words[0];
          goto LABEL_120;
        }

        goto LABEL_121;
      }

      sub_276B23B7C(&v96, &v99);
      v18 = google::protobuf::FieldDescriptor::message_type(v99);
      LODWORD(v39) = *(a1[2] + 32);
    }

    if (v21++ >= v39)
    {
      goto LABEL_60;
    }
  }

  v34 = *(v26 + 23);
  if (v34 >= 0)
  {
    v35 = v26;
  }

  else
  {
    v35 = *v26;
  }

  if (v34 >= 0)
  {
    v36 = *(v26 + 23);
  }

  else
  {
    v36 = *(v26 + 8);
  }

  std::string::append(&__str, v35, v36);
  FieldByName = google::protobuf::Descriptor::FindFieldByName(v18, v26, v37);
LABEL_50:
  v99 = FieldByName;
  if (FieldByName)
  {
    goto LABEL_51;
  }

LABEL_67:
  v49 = *a1;
  if (*(**a1 + 42) == 1)
  {
    goto LABEL_99;
  }

  v50 = *(v49 + 199);
  if (v50 < 0)
  {
    v50 = *(v49 + 184);
  }

  if (v50)
  {
    std::operator+<char>();
    v51 = std::string::append(&v88, " is resolved to (");
    v52 = *&v51->__r_.__value_.__l.__data_;
    v89.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
    *&v89.__r_.__value_.__l.__data_ = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    v53 = *(*a1 + 199);
    if (v53 >= 0)
    {
      v54 = (*a1 + 176);
    }

    else
    {
      v54 = *(*a1 + 176);
    }

    if (v53 >= 0)
    {
      v55 = *(*a1 + 199);
    }

    else
    {
      v55 = *(*a1 + 184);
    }

    v56 = std::string::append(&v89, v54, v55);
    v57 = *&v56->__r_.__value_.__l.__data_;
    v90.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&v90.__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    v58 = std::string::append(&v90, "), which is not defined. The innermost scope is searched first in name resolution. Consider using a leading '.'(i.e., (.");
    v59 = *&v58->__r_.__value_.__l.__data_;
    v91.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
    *&v91.__r_.__value_.__l.__data_ = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string(&v87, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v100);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v87;
    }

    else
    {
      v60 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v61 = v87.__r_.__value_.__l.__size_;
    }

    v62 = std::string::append(&v91, v60, v61);
    v63 = *&v62->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = std::string::append(&v86, ") to start from the outermost scope.");
    v65 = *&v64->__r_.__value_.__l.__data_;
    v102 = v64->__r_.__value_.__r.__words[2];
    *v101 = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v101);
    if (SHIBYTE(v102) < 0)
    {
      operator delete(*v101);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      v66 = v88.__r_.__value_.__r.__words[0];
      goto LABEL_120;
    }
  }

  else
  {
    std::operator+<char>();
    v82 = std::string::append(&v91, " unknown. Ensure that your proto");
    v83 = *&v82->__r_.__value_.__l.__data_;
    v86.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
    *&v86.__r_.__value_.__l.__data_ = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    v84 = std::string::append(&v86, " definition file imports the proto which defines the option.");
    v85 = *&v84->__r_.__value_.__l.__data_;
    v102 = v84->__r_.__value_.__r.__words[2];
    *v101 = v85;
    v84->__r_.__value_.__l.__size_ = 0;
    v84->__r_.__value_.__r.__words[2] = 0;
    v84->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, v101);
    if (SHIBYTE(v102) < 0)
    {
      operator delete(*v101);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      v66 = v91.__r_.__value_.__r.__words[0];
LABEL_120:
      operator delete(v66);
    }
  }

LABEL_121:
  v48 = 0;
LABEL_122:
  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

LABEL_128:
  v80 = *MEMORY[0x277D85DE8];
  return v48;
}

void sub_276B23768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (*(v60 - 153) < 0)
  {
    operator delete(*(v60 - 176));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a52)
  {
    operator delete(a52);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  v62 = *(v60 - 216);
  if (v62)
  {
    *(v60 - 208) = v62;
    operator delete(v62);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::AddWithoutInterpreting(google::protobuf::DescriptorBuilder::OptionInterpreter *this, const google::protobuf::UninterpretedOption *a2, google::protobuf::Message *a3)
{
  v5 = (*(*a3 + 152))(a3);
  sub_276A4D46C(__p, "uninterpreted_option");
  FieldByName = google::protobuf::Descriptor::FindFieldByName(v5, __p, v6);
  v8 = FieldByName;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (!v8)
    {
LABEL_5:
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 6773);
      v9 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: field != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }
  }

  else if (!FieldByName)
  {
    goto LABEL_5;
  }

  (*(*a3 + 152))(a3);
  v11 = google::protobuf::Reflection::AddMessage(v10, a3, v8, 0);
  return (*(*v11 + 112))(v11, a2);
}

void sub_276B23B7C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_276B2A0B4(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, int **a6)
{
  v9 = *a6;
  v10 = a6[1] - *a6;
  v11 = v10 >> 4;
  if (a2 == a3)
  {
    if (v11 >= 1)
    {
      v12 = (v10 >> 4) & 0x7FFFFFFF;
      while (1)
      {
        v13 = *v9;
        v9 += 4;
        if (v13 == *(a4 + 68))
        {
          break;
        }

        if (!--v12)
        {
          return 1;
        }
      }

      std::operator+<char>();
      v28 = std::string::append(&v34, " was already set.");
      v29 = *&v28->__r_.__value_.__l.__data_;
      __p[0].__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&__p[0].__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      google::protobuf::DescriptorBuilder::AddError(*a1, (a1[1] + 24), a1[2], 7, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        v30 = v34.__r_.__value_.__r.__words[0];
        goto LABEL_36;
      }

      return 0;
    }

    return 1;
  }

  if (v11 < 1)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = *a2;
    if (v9[v17] != *(*a2 + 68))
    {
      goto LABEL_30;
    }

    v20 = *(v19 + 48);
    if (v20)
    {
      v35 = *a2;
      v36 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v20, memory_order_acquire) != -1)
      {
        __p[0].__r_.__value_.__r.__words[0] = &v36;
        __p[0].__r_.__value_.__l.__size_ = &v35;
        v34.__r_.__value_.__r.__words[0] = __p;
        std::__call_once(v20, &v34, sub_2769C149C);
      }
    }

    v21 = *(v19 + 56);
    if (v21 == 10)
    {
      if (v9[v17 + 1] == 4 && (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 1, a3, a4, a5, *&v9[v17 + 2]) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_30;
    }

    if (v21 != 11)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 6833);
      v31 = google::protobuf::internal::LogMessage::operator<<(__p, "Invalid wire type for CPPTYPE_MESSAGE: ");
      v32 = google::protobuf::internal::LogMessage::operator<<(v31, v21);
      google::protobuf::internal::LogFinisher::operator=(&v34, &v32->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      return 0;
    }

    if (v9[v17 + 1] == 3)
    {
      break;
    }

LABEL_30:
    ++v18;
    v9 = *a6;
    v17 += 4;
    if (v18 >= ((a6[1] - *a6) >> 4))
    {
      return 1;
    }
  }

  memset(__p, 0, 24);
  v22 = *&v9[v17 + 2];
  v23 = *(v22 + 23);
  if (v23 >= 0)
  {
    v24 = *&v9[v17 + 2];
  }

  else
  {
    v24 = *v22;
  }

  if (v23 >= 0)
  {
    v25 = *(v22 + 23);
  }

  else
  {
    v25 = *(v22 + 8);
  }

  if (!google::protobuf::UnknownFieldSet::ParseFromArray(__p, v24, v25) || (google::protobuf::DescriptorBuilder::OptionInterpreter::ExamineIfOptionIsSet(a1, a2 + 1, a3, a4, a5, __p) & 1) != 0)
  {
    v26 = __p[0].__r_.__value_.__r.__words[0];
    if (__p[0].__r_.__value_.__r.__words[0] != __p[0].__r_.__value_.__l.__size_)
    {
      google::protobuf::UnknownFieldSet::ClearFallback(__p);
      v26 = __p[0].__r_.__value_.__r.__words[0];
    }

    if (v26)
    {
      __p[0].__r_.__value_.__l.__size_ = v26;
      operator delete(v26);
    }

    goto LABEL_30;
  }

  v30 = __p[0].__r_.__value_.__r.__words[0];
  if (__p[0].__r_.__value_.__r.__words[0] != __p[0].__r_.__value_.__l.__size_)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(__p);
    v30 = __p[0].__r_.__value_.__r.__words[0];
  }

  if (v30)
  {
    __p[0].__r_.__value_.__l.__size_ = v30;
LABEL_36:
    operator delete(v30);
  }

  return 0;
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::SetOptionValue(google::protobuf::DescriptorBuilder::OptionInterpreter *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::UnknownFieldSet *a3)
{
  v6 = *(a2 + 6);
  if (v6)
  {
    v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
    v109.__r_.__value_.__r.__words[0] = a2;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      __dst.__r_.__value_.__r.__words[0] = &v110;
      __dst.__r_.__value_.__l.__size_ = &v109;
      v111.__r_.__value_.__r.__words[0] = &__dst;
      std::__call_once(v6, &v111, sub_2769C149C);
    }
  }

  v7 = *(a2 + 14);
  v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v7];
  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v15 = *(this + 2);
        v16 = *(v15 + 16);
        if ((v16 & 8) != 0)
        {
          v26 = *(v15 + 72);
          if (v26 >> 31)
          {
            goto LABEL_170;
          }

          v46 = *(a2 + 17);
          v47 = *(a2 + 6);
          if (v47)
          {
            v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
            v109.__r_.__value_.__r.__words[0] = a2;
            if (atomic_load_explicit(v47, memory_order_acquire) != -1)
            {
              __dst.__r_.__value_.__r.__words[0] = &v110;
              __dst.__r_.__value_.__l.__size_ = &v109;
              v111.__r_.__value_.__r.__words[0] = &__dst;
              std::__call_once(v47, &v111, sub_2769C149C);
            }

            LODWORD(v7) = *(a2 + 14);
          }

          v48 = v46;
          v49 = v26;
        }

        else
        {
          if ((v16 & 0x10) == 0)
          {
            goto LABEL_170;
          }

          v45 = *(v15 + 80);
          if (v45 <= 0xFFFFFFFF7FFFFFFFLL)
          {
            goto LABEL_170;
          }

          v57 = *(a2 + 17);
          LODWORD(v47) = sub_276B0C1A4(a2);
          v48 = v57;
          v49 = v45;
          LODWORD(v7) = v47;
        }

        google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(v47, v48, v49, v7, a3);
      }

      else if (v8 == 2)
      {
        v12 = *(this + 2);
        v13 = *(v12 + 16);
        if ((v13 & 8) != 0)
        {
          v22 = *(v12 + 72);
          if (v22 < 0)
          {
            goto LABEL_170;
          }

          v23 = *(a2 + 17);
        }

        else
        {
          if ((v13 & 0x10) == 0)
          {
            goto LABEL_170;
          }

          v23 = *(a2 + 17);
          v22 = *(v12 + 80);
        }

        v44 = *(a2 + 6);
        if (v44)
        {
          v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
          v109.__r_.__value_.__r.__words[0] = a2;
          if (atomic_load_explicit(v44, memory_order_acquire) != -1)
          {
            __dst.__r_.__value_.__r.__words[0] = &v110;
            __dst.__r_.__value_.__l.__size_ = &v109;
            v111.__r_.__value_.__r.__words[0] = &__dst;
            std::__call_once(v44, &v111, sub_2769C149C);
          }

          LODWORD(v7) = *(a2 + 14);
        }

        google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(v44, v23, v22, v7, a3);
      }
    }

    else if (v8 == 3)
    {
      v19 = *(this + 2);
      if ((*(v19 + 16) & 8) == 0)
      {
        goto LABEL_170;
      }

      v28 = *(v19 + 72);
      if (HIDWORD(v28))
      {
        v29 = *a2;
        std::operator+<char>();
        v30 = std::string::append(&v111, ".");
        v31 = *&v30->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &__dst);
LABEL_171:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v102 = v111.__r_.__value_.__r.__words[0];
LABEL_175:
        operator delete(v102);
        return 0;
      }

      v50 = *(a2 + 17);
      v51 = *(a2 + 6);
      if (v51)
      {
        v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v109.__r_.__value_.__r.__words[0] = a2;
        if (atomic_load_explicit(v51, memory_order_acquire) != -1)
        {
          __dst.__r_.__value_.__r.__words[0] = &v110;
          __dst.__r_.__value_.__l.__size_ = &v109;
          v111.__r_.__value_.__r.__words[0] = &__dst;
          std::__call_once(v51, &v111, sub_2769C149C);
        }

        LODWORD(v7) = *(a2 + 14);
      }

      google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(v51, v50, v28, v7, a3);
    }

    else if (v8 == 4)
    {
      v20 = *(this + 2);
      if ((*(v20 + 16) & 8) == 0)
      {
        goto LABEL_170;
      }

      v40 = *(a2 + 17);
      v41 = *(v20 + 72);
      v42 = *(a2 + 6);
      if (v42)
      {
        v110.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v109.__r_.__value_.__r.__words[0] = a2;
        if (atomic_load_explicit(v42, memory_order_acquire) != -1)
        {
          __dst.__r_.__value_.__r.__words[0] = &v110;
          __dst.__r_.__value_.__l.__size_ = &v109;
          v111.__r_.__value_.__r.__words[0] = &__dst;
          std::__call_once(v42, &v111, sub_2769C149C);
        }

        LODWORD(v7) = *(a2 + 14);
      }

      google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(v42, v40, v41, v7, a3);
    }

    else
    {
      v9 = *(this + 2);
      v10 = *(v9 + 16);
      if ((v10 & 0x20) != 0)
      {
        v39 = *(v9 + 88);
      }

      else if ((v10 & 8) != 0)
      {
        v39 = *(v9 + 72);
      }

      else
      {
        if ((v10 & 0x10) == 0)
        {
          goto LABEL_170;
        }

        v39 = *(v9 + 80);
      }

      google::protobuf::UnknownFieldSet::AddFixed64(a3, *(a2 + 17), *&v39);
    }

    return 1;
  }

  if (v8 <= 7)
  {
    if (v8 == 6)
    {
      v17 = *(this + 2);
      v18 = *(v17 + 16);
      if ((v18 & 0x20) != 0)
      {
        v27 = *(v17 + 88);
      }

      else if ((v18 & 8) != 0)
      {
        v27 = *(v17 + 72);
      }

      else
      {
        if ((v18 & 0x10) == 0)
        {
          goto LABEL_170;
        }

        v27 = *(v17 + 80);
      }

      google::protobuf::UnknownFieldSet::AddFixed32(a3, *(a2 + 17), SLODWORD(v27));
      return 1;
    }

    v14 = *(this + 2);
    if ((*(v14 + 16) & 1) == 0)
    {
      goto LABEL_170;
    }

    v24 = (*(v14 + 48) & 0xFFFFFFFFFFFFFFFELL);
    if (*(v24 + 23) < 0)
    {
      if (*(v24 + 1) != 4 || **v24 != 1702195828)
      {
        if (*(v24 + 1) == 5)
        {
          v24 = *v24;
LABEL_87:
          v52 = *v24;
          v53 = *(v24 + 4);
          if (v52 != 1936482662 || v53 != 101)
          {
            goto LABEL_170;
          }

          v55 = 0;
          goto LABEL_178;
        }

LABEL_170:
        v103 = *(a2 + 1);
        std::operator+<char>();
        v104 = std::string::append(&v111, ".");
        v105 = *&v104->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v105;
        v104->__r_.__value_.__l.__size_ = 0;
        v104->__r_.__value_.__r.__words[2] = 0;
        v104->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &__dst);
        goto LABEL_171;
      }
    }

    else
    {
      v25 = *(v24 + 23);
      if (v25 != 4)
      {
        if (v25 != 5)
        {
          goto LABEL_170;
        }

        goto LABEL_87;
      }

      if (*v24 != 1702195828)
      {
        goto LABEL_170;
      }
    }

    v55 = 1;
LABEL_178:
    v83 = *(a2 + 17);
LABEL_179:
    google::protobuf::UnknownFieldSet::AddVarint(a3, v83, v55);
    return 1;
  }

  if (v8 == 8)
  {
    if ((*(*(this + 2) + 16) & 1) == 0)
    {
      goto LABEL_170;
    }

    v32 = google::protobuf::FieldDescriptor::enum_type(a2);
    v33 = *(*(this + 2) + 48) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(*(v32 + 2) + 16);
    v35 = google::protobuf::DescriptorPool::internal_generated_pool(v32);
    google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
    if (v34 == v35)
    {
      ValueByName = google::protobuf::EnumDescriptor::FindValueByName(v32, v33, v36);
LABEL_143:
      if (!ValueByName)
      {
        v84 = *(google::protobuf::FieldDescriptor::enum_type(a2) + 8);
        std::operator+<char>();
        v85 = std::string::append(&v107, " has no value named ");
        v86 = *&v85->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
        v87 = *(v33 + 23);
        if (v87 >= 0)
        {
          v88 = v33;
        }

        else
        {
          v88 = *v33;
        }

        if (v87 >= 0)
        {
          v89 = *(v33 + 23);
        }

        else
        {
          v89 = *(v33 + 8);
        }

        v90 = std::string::append(&v108, v88, v89);
        v91 = *&v90->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = v91;
        v90->__r_.__value_.__l.__size_ = 0;
        v90->__r_.__value_.__r.__words[2] = 0;
        v90->__r_.__value_.__r.__words[0] = 0;
        v92 = std::string::append(&v109, " for option ");
        v93 = *&v92->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        v94 = *(a2 + 1);
        v95 = *(v94 + 23);
        if (v95 >= 0)
        {
          v96 = *(a2 + 1);
        }

        else
        {
          v96 = *v94;
        }

        if (v95 >= 0)
        {
          v97 = *(v94 + 23);
        }

        else
        {
          v97 = *(v94 + 8);
        }

        v98 = std::string::append(&v110, v96, v97);
        v99 = *&v98->__r_.__value_.__l.__data_;
        v111.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
        *&v111.__r_.__value_.__l.__data_ = v99;
        v98->__r_.__value_.__l.__size_ = 0;
        v98->__r_.__value_.__r.__words[2] = 0;
        v98->__r_.__value_.__r.__words[0] = 0;
        v100 = std::string::append(&v111, ".");
        v101 = *&v100->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v101;
        v100->__r_.__value_.__l.__size_ = 0;
        v100->__r_.__value_.__r.__words[2] = 0;
        v100->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v111.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 0;
        }

        v102 = v107.__r_.__value_.__r.__words[0];
        goto LABEL_175;
      }

      v83 = *(a2 + 17);
      v55 = *(ValueByName + 16);
      goto LABEL_179;
    }

    v37 = *(v32 + 1);
    if (*(v37 + 23) < 0)
    {
      sub_276A07B90(&__dst, *v37, *(v37 + 1));
    }

    else
    {
      v38 = *v37;
      __dst.__r_.__value_.__r.__words[2] = *(v37 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v38;
    }

    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v59 = *(*v32 + 23);
    if (v59 < 0)
    {
      v59 = *(*v32 + 8);
    }

    std::string::resize(&__dst, size - v59, 0);
    v60 = *(v33 + 23);
    if (v60 >= 0)
    {
      v61 = v33;
    }

    else
    {
      v61 = *v33;
    }

    if (v60 >= 0)
    {
      v62 = *(v33 + 23);
    }

    else
    {
      v62 = *(v33 + 8);
    }

    std::string::append(&__dst, v61, v62);
    if (google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDeps(*this, &__dst, 1) == 5)
    {
      ValueByName = v63;
      if (*(v63 + 24) != v32)
      {
        v64 = *(v32 + 1);
        std::operator+<char>();
        v65 = std::string::append(&v106, " has no value named ");
        v66 = *&v65->__r_.__value_.__l.__data_;
        v107.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
        *&v107.__r_.__value_.__l.__data_ = v66;
        v65->__r_.__value_.__l.__size_ = 0;
        v65->__r_.__value_.__r.__words[2] = 0;
        v65->__r_.__value_.__r.__words[0] = 0;
        v67 = *(v33 + 23);
        if (v67 >= 0)
        {
          v68 = v33;
        }

        else
        {
          v68 = *v33;
        }

        if (v67 >= 0)
        {
          v69 = *(v33 + 23);
        }

        else
        {
          v69 = *(v33 + 8);
        }

        v70 = std::string::append(&v107, v68, v69);
        v71 = *&v70->__r_.__value_.__l.__data_;
        v108.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
        *&v108.__r_.__value_.__l.__data_ = v71;
        v70->__r_.__value_.__l.__size_ = 0;
        v70->__r_.__value_.__r.__words[2] = 0;
        v70->__r_.__value_.__r.__words[0] = 0;
        v72 = std::string::append(&v108, " for option ");
        v73 = *&v72->__r_.__value_.__l.__data_;
        v109.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v109.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = *(a2 + 1);
        v75 = *(v74 + 23);
        if (v75 >= 0)
        {
          v76 = *(a2 + 1);
        }

        else
        {
          v76 = *v74;
        }

        if (v75 >= 0)
        {
          v77 = *(v74 + 23);
        }

        else
        {
          v77 = *(v74 + 8);
        }

        v78 = std::string::append(&v109, v76, v77);
        v79 = *&v78->__r_.__value_.__l.__data_;
        v110.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
        *&v110.__r_.__value_.__l.__data_ = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        v80 = std::string::append(&v110, ". This appears to be a value from a sibling type.");
        v81 = *&v80->__r_.__value_.__l.__data_;
        v111.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
        *&v111.__r_.__value_.__l.__data_ = v81;
        v80->__r_.__value_.__l.__size_ = 0;
        v80->__r_.__value_.__r.__words[2] = 0;
        v80->__r_.__value_.__r.__words[0] = 0;
        google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, &v111);
        if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v111.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v106.__r_.__value_.__l.__data_);
        }

        v82 = 0;
        ValueByName = 0;
LABEL_140:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if ((v82 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_143;
      }
    }

    else
    {
      ValueByName = 0;
    }

    v82 = 1;
    goto LABEL_140;
  }

  if (v8 == 9)
  {
    v21 = *(this + 2);
    if ((*(v21 + 16) & 2) != 0)
    {
      v43 = *(v21 + 56);
      google::protobuf::UnknownFieldSet::AddLengthDelimited(a3, *(a2 + 17));
    }

    goto LABEL_170;
  }

  if (v8 != 10)
  {
    return 1;
  }

  result = google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(this, a2, a3);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_276B24DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
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

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  _Unwind_Resume(a1);
}

google::protobuf::UnknownFieldSet **sub_276B24F90(google::protobuf::UnknownFieldSet **result, google::protobuf::UnknownFieldSet *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2 != *(v2 + 1))
    {
      google::protobuf::UnknownFieldSet::ClearFallback(v2);
      v3 = *v2;
    }

    if (v3)
    {
      *(v2 + 1) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt32(int a1, unsigned int a2, uint64_t a3, int a4, google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 17)
  {
    a3 = (2 * a3) ^ (a3 >> 31);
LABEL_9:

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    return;
  }

  if (a4 != 15)
  {
    if (a4 != 5)
    {
      google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7195);
      v6 = google::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_INT32: ");
      v7 = google::protobuf::internal::LogMessage::operator<<(v6, a4);
      google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return;
    }

    a3 = a3;
    goto LABEL_9;
  }

  google::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
}

void sub_276B250EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetInt64(int a1, unsigned int a2, uint64_t a3, int a4, google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 18)
  {
    a3 = (2 * a3) ^ (a3 >> 63);
LABEL_9:

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
    return;
  }

  if (a4 != 16)
  {
    if (a4 != 3)
    {
      google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7218);
      v6 = google::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_INT64: ");
      v7 = google::protobuf::internal::LogMessage::operator<<(v6, a4);
      google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
      return;
    }

    goto LABEL_9;
  }

  google::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
}

void sub_276B251D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt32(int a1, unsigned int a2, unsigned int a3, int a4, google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 7)
  {

    google::protobuf::UnknownFieldSet::AddFixed32(this, a2, a3);
  }

  else if (a4 == 13)
  {

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7236);
    v6 = google::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_UINT32: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, a4);
    google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }
}

void sub_276B252B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::SetUInt64(int a1, unsigned int a2, uint64_t a3, int a4, google::protobuf::UnknownFieldSet *this)
{
  if (a4 == 6)
  {

    google::protobuf::UnknownFieldSet::AddFixed64(this, a2, a3);
  }

  else if (a4 == 4)
  {

    google::protobuf::UnknownFieldSet::AddVarint(this, a2, a3);
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7254);
    v6 = google::protobuf::internal::LogMessage::operator<<(v9, "Invalid wire type for CPPTYPE_UINT64: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, a4);
    google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }
}

void sub_276B25394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorBuilder::OptionInterpreter::SetAggregateOption(google::protobuf::DescriptorBuilder::OptionInterpreter *this, const google::protobuf::FieldDescriptor *a2, google::protobuf::UnknownFieldSet *a3)
{
  if ((*(*(this + 2) + 16) & 4) != 0)
  {
    v24 = google::protobuf::FieldDescriptor::message_type(a2);
    Prototype = google::protobuf::DynamicMessageFactory::GetPrototype((this + 72), v24);
    v26 = (*(*Prototype + 24))(Prototype);
    if (!v26)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7148);
      v27 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: dynamic.get() != nullptr: ");
      v28 = google::protobuf::internal::LogMessage::operator<<(v27, "Could not create an instance of ");
      LOWORD(v45.__r_.__value_.__l.__data_) = 0;
      v45.__r_.__value_.__s.__data_[2] = 0;
      google::protobuf::FieldDescriptor::DebugStringWithOptions(a2, &v45, &v44);
      v29 = google::protobuf::internal::LogMessage::operator<<(v28, &v44);
      google::protobuf::internal::LogFinisher::operator=(&__str, &v29->__r_.__value_.__l.__data_);
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    v45.__r_.__value_.__r.__words[0] = &unk_2885C60B0;
    *&v45.__r_.__value_.__r.__words[1] = 0uLL;
    v46 = 0;
    v30 = *this;
    v48.__r_.__value_.__r.__words[0] = &unk_2885C60F8;
    v48.__r_.__value_.__l.__size_ = v30;
    google::protobuf::TextFormat::Parser::Parser(&v44);
    v44.__r_.__value_.__r.__words[0] = &v45;
    v44.__r_.__value_.__l.__size_ = &v48;
    v22 = google::protobuf::TextFormat::Parser::ParseFromString(&v44.__r_.__value_.__l.__data_, *(*(this + 2) + 64) & 0xFFFFFFFFFFFFFFFELL, v26);
    if (v22)
    {
      memset(&__str, 0, sizeof(__str));
      google::protobuf::MessageLite::SerializeToString(v26, &__str);
      v31 = *(a2 + 6);
      if (v31)
      {
        v51 = a2;
        v52 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v31, memory_order_acquire) != -1)
        {
          __p[0].__r_.__value_.__r.__words[0] = &v52;
          __p[0].__r_.__value_.__l.__size_ = &v51;
          v49.__r_.__value_.__r.__words[0] = __p;
          std::__call_once(v31, &v49, sub_2769C149C);
        }
      }

      v32 = *(a2 + 14);
      if (v32 == 11)
      {
        google::protobuf::UnknownFieldSet::AddLengthDelimited(a3, *(a2 + 17));
      }

      v40 = *(a2 + 6);
      if (v40)
      {
        v51 = a2;
        v52 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v40, memory_order_acquire) != -1)
        {
          __p[0].__r_.__value_.__r.__words[0] = &v52;
          __p[0].__r_.__value_.__l.__size_ = &v51;
          v49.__r_.__value_.__r.__words[0] = __p;
          std::__call_once(v40, &v49, sub_2769C149C);
        }

        v32 = *(a2 + 14);
      }

      if (v32 != 10)
      {
        google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7168);
        v41 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: (option_field->type()) == (FieldDescriptor::TYPE_GROUP): ");
        google::protobuf::internal::LogFinisher::operator=(&v43, &v41->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      }

      google::protobuf::UnknownFieldSet::AddGroup(a3, *(a2 + 17));
    }

    v33 = *a2;
    std::operator+<char>();
    v34 = std::string::append(&v49, ": ");
    v35 = *&v34->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (v46 >= 0)
    {
      size = &v45.__r_.__value_.__s.__data_[8];
    }

    else
    {
      size = v45.__r_.__value_.__l.__size_;
    }

    if (v46 >= 0)
    {
      v37 = HIBYTE(v46);
    }

    else
    {
      v37 = v45.__r_.__value_.__r.__words[2];
    }

    v38 = std::string::append(&__str, size, v37);
    v39 = *&v38->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    google::protobuf::TextFormat::Parser::~Parser(&v44);
    google::protobuf::TextFormat::Finder::~Finder(&v48);
    v45.__r_.__value_.__r.__words[0] = &unk_2885C60B0;
    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__size_);
    }

    google::protobuf::io::ErrorCollector::~ErrorCollector(&v45);
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    std::operator+<char>();
    v6 = std::string::append(&v48, " is a message. To set the entire message, use syntax like ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(*a2 + 23);
    if (v8 >= 0)
    {
      v9 = *a2;
    }

    else
    {
      v9 = **a2;
    }

    if (v8 >= 0)
    {
      v10 = *(*a2 + 23);
    }

    else
    {
      v10 = *(*a2 + 8);
    }

    v11 = std::string::append(&v49, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&__str, " = { <proto text format> }. To set fields within it, use syntax like ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = *(*a2 + 23);
    if (v15 >= 0)
    {
      v16 = *a2;
    }

    else
    {
      v16 = **a2;
    }

    if (v15 >= 0)
    {
      v17 = *(*a2 + 23);
    }

    else
    {
      v17 = *(*a2 + 8);
    }

    v18 = std::string::append(&v45, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v44, ".foo = value.");
    v21 = *&v20->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    google::protobuf::DescriptorBuilder::AddError(*this, (*(this + 1) + 24), *(this + 2), 8, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  return v22;
}

void sub_276B25944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a27);
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v43 + 56));
  }

  google::protobuf::TextFormat::Parser::~Parser(&__p);
  google::protobuf::TextFormat::Finder::~Finder(&a37);
  sub_276B25AE4(&a20);
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  _Unwind_Resume(a1);
}

void sub_276B25AE4(void **this)
{
  *this = &unk_2885C60B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ErrorCollector::~ErrorCollector(this);
}

unint64_t google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  sub_276B264AC(v11, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__str.__r_.__value_.__l.__size_)
    {
      goto LABEL_10;
    }

    p_str = __str.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__str.__r_.__value_.__s + 23))
    {
      goto LABEL_10;
    }

    p_str = &__str;
  }

  if (p_str->__r_.__value_.__s.__data_[0] == 46)
  {
    std::string::basic_string(&v9, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v12);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v9;
  }

LABEL_10:
  v6 = *(a1 + 32);
  sub_276B280C4(&v9, &__str, v4);
  v7 = google::protobuf::DescriptorPool::Tables::FindByNameHelper(v6, a1, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_276B25C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::FieldDescriptor::InternalTypeOnceInit(google::protobuf::FieldDescriptor *this, uint64_t a2, const char *a3)
{
  v34[2] = *MEMORY[0x277D85DE8];
  if ((*(*(this + 5) + 65) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7296);
    v4 = google::protobuf::internal::LogMessage::operator<<(&__str, "CHECK failed: file()->finished_building_ == true: ");
    google::protobuf::internal::LogFinisher::operator=(&v31, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
  }

  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(*(this + 5) + 16);
    sub_276B280C4(&__str, v5, a3);
    v7 = google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(v6, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    if (v7 == 1)
    {
      v9 = 11;
      v10 = 104;
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_9;
      }

      v9 = 14;
      v10 = 112;
    }

    *(this + 14) = v9;
    *(this + v10) = v8;
  }

LABEL_9:
  v11 = *(this + 14);
  if (v11 && !*(this + 18))
  {
    if (!*(this + 17))
    {
      goto LABEL_34;
    }

    v12 = *(v11 + 8);
    if (*(v12 + 23) < 0)
    {
      sub_276A07B90(&__str, *v12, *(v12 + 1));
    }

    else
    {
      v13 = *v12;
      __str.__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&__str.__r_.__value_.__l.__data_ = v13;
    }

    v14 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v14 == -1)
    {
      std::string::operator=(&__str, *(this + 17));
    }

    else
    {
      std::string::basic_string(&v30, &__str, 0, v14, &v33);
      v15 = std::string::append(&v30, ".");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = *(this + 17);
      v18 = *(v17 + 23);
      if (v18 >= 0)
      {
        v19 = *(this + 17);
      }

      else
      {
        v19 = *v17;
      }

      if (v18 >= 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = *(v17 + 8);
      }

      v21 = std::string::append(&v31, v19, v20);
      v23 = v21->__r_.__value_.__r.__words[0];
      v34[0] = v21->__r_.__value_.__l.__size_;
      *(v34 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
      v24 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v23;
      __str.__r_.__value_.__l.__size_ = v34[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v34 + 7);
      *(&__str.__r_.__value_.__s + 23) = v24;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    v25 = *(*(this + 5) + 16);
    sub_276B280C4(&v31, &__str, v22);
    if (google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(v25, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_) == 5)
    {
      *(this + 18) = v26;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (!*(this + 18))
    {
LABEL_34:
      v27 = *(this + 14);
      if (!*(v27 + 44))
      {
        google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7328);
        v28 = google::protobuf::internal::LogMessage::operator<<(&__str, "CHECK failed: enum_type_->value_count(): ");
        google::protobuf::internal::LogFinisher::operator=(&v31, &v28->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
        v27 = *(this + 14);
      }

      *(this + 18) = *(v27 + 48);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t google::protobuf::FieldDescriptor::PrintableNameForExtension(std::once_flag::_State_type **this)
{
  v1 = this;
  if (*(this + 67) == 1 && *(this[10][4] + 72) == 1)
  {
    v2 = this[6];
    if (v2)
    {
      v5 = v1;
      v6 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v2, memory_order_acquire) != -1)
      {
        v8[0] = &v6;
        v8[1] = &v5;
        v7 = v8;
        std::__call_once(v2, &v7, sub_2769C149C);
      }
    }

    if (*(v1 + 14) == 11 && *(v1 + 15) == 1)
    {
      v3 = *(v1 + 12);
      if (v3 == google::protobuf::FieldDescriptor::message_type(v1))
      {
        v1 = google::protobuf::FieldDescriptor::message_type(v1);
      }
    }
  }

  return *(v1 + 1);
}

void google::protobuf::FileDescriptor::InternalDependenciesOnceInit(google::protobuf::FileDescriptor *this, uint64_t a2, const char *a3)
{
  if ((*(this + 65) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7372);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: finished_building_ == true: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 8);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(this + 10) + 8 * i);
      if (v7)
      {
        *(*(this + 9) + 8 * i) = google::protobuf::DescriptorPool::FindFileByName(*(this + 2), v7, a3);
        v5 = *(this + 8);
      }
    }
  }
}

void sub_276B260FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::LazyDescriptor::Once(google::protobuf::internal::LazyDescriptor *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    if (atomic_load_explicit(v2, memory_order_acquire) != -1)
    {
      v5[0] = google::protobuf::internal::LazyDescriptor::OnceStatic;
      v5[1] = &v3;
      v4 = v5;
      std::__call_once(v2, &v4, sub_276B2F264);
    }
  }
}

void google::protobuf::internal::LazyDescriptor::OnceInternal(google::protobuf::internal::LazyDescriptor *this, uint64_t a2, const char *a3)
{
  if ((*(*(this + 3) + 65) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 7435);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: file_->finished_building_: ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  if (!*this)
  {
    v5 = *(this + 1);
    if (v5)
    {
      v6 = *(*(this + 3) + 16);
      sub_276B280C4(v9, v5, a3);
      if (google::protobuf::DescriptorPool::CrossLinkOnDemandHelper(v6, v9[0].__r_.__value_.__l.__data_, v9[0].__r_.__value_.__l.__size_) == 1)
      {
        *this = v7;
      }
    }
  }
}

void sub_276B2623C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_276B26258(_DWORD *result, void *a2)
{
  v2 = (a2[30] - a2[29]) >> 3;
  *result = (a2[27] - a2[26]) >> 3;
  result[1] = v2;
  v3 = (a2[36] - a2[35]) >> 3;
  result[2] = (a2[33] - a2[32]) >> 3;
  result[3] = v3;
  v4 = (a2[55] - a2[54]) >> 3;
  result[4] = -1431655765 * ((a2[24] - a2[23]) >> 3);
  result[5] = v4;
  v5 = (a2[61] - a2[60]) >> 4;
  result[6] = (a2[58] - a2[57]) >> 3;
  result[7] = v5;
  return result;
}

void *sub_276B262D8(void *a1, char *__s)
{
  *a1 = __s;
  a1[1] = 0;
  if (__s)
  {
    v3 = strlen(__s);
    v5 = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v3, "size_t to int conversion", v4);
    }

    a1[1] = v5;
  }

  return a1;
}

void *sub_276B26328(void *a1, char **a2)
{
  v4 = a2[1];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    v7 = &(*a2)[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v5;
    if (v5 >= *&v9)
    {
      v12 = v5 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v5;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v5 == v15)
      {
        if (sub_276B26450(a1, (v14 + 2), a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

BOOL sub_276B26450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  if (v4 != *(a3 + 8))
  {
    return 0;
  }

  v5 = *a2;
  v6 = *a3;
  return v4 < 1 || v5 == v6 || memcmp(v5, v6, v4) == 0;
}

_BYTE *sub_276B264AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*a1)
  {
    return sub_276B264D0(a2, *a1, *(a1 + 8));
  }

  else
  {
    return sub_276A4D46C(a2, "");
  }
}

_BYTE *sub_276B264D0(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::EncodedDescriptorDatabase>(google::protobuf::EncodedDescriptorDatabase *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_276B265AC(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = v3[4];
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        if (*(v3 + 10) >= v6)
        {
          v7 = v3;
        }

        v3 += *(v3 + 10) < v6;
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

  v9 = v7[4];
  if (v5 < v9 || v9 >= v5 && v6 < *(v7 + 10))
  {
    return v2;
  }

  return v7;
}

BOOL sub_276B2665C(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v4 = a2[2];
  if (v4 != a3[2])
  {
    return 0;
  }

  v5 = a2[1];
  v6 = a3[1];
  return v4 < 1 || v5 == v6 || memcmp(v5, v6, v4) == 0;
}

uint64_t sub_276B266C8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = (16777619 * v3) ^ (16777499 * *a2);
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = (16777619 * v3) ^ (16777499 * *a2);
      if (v4 >= *&v2)
      {
        v6 = v4 % *&v2;
      }
    }

    else
    {
      v6 = v4 & (*&v2 - 1);
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v4 == v9)
        {
          if (i[2] == *a2 && *(i + 6) == v3)
          {
            return i[4];
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v2)
            {
              v9 %= *&v2;
            }
          }

          else
          {
            v9 &= *&v2 - 1;
          }

          if (v9 != v6)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_276B267A4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *(a2 + 8);
    v4 = (16777619 * v3) ^ (16777499 * *a2);
    v5 = vcnt_s8(v2);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = (16777619 * v3) ^ (16777499 * *a2);
      if (v4 >= *&v2)
      {
        v6 = v4 % *&v2;
      }
    }

    else
    {
      v6 = v4 & (*&v2 - 1);
    }

    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == v4)
        {
          if (i[2] == *a2 && *(i + 6) == v3)
          {
            return i[4];
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v2)
            {
              v9 %= *&v2;
            }
          }

          else
          {
            v9 &= *&v2 - 1;
          }

          if (v9 != v6)
          {
            return 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_276B26880(uint64_t a1)
{
  v3 = (a1 + 64);
  sub_276B281C8(&v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_276B268DC(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    sub_276A07B90(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  google::protobuf::StripWhitespace(&__p);
  sub_276B280C4(&v38, &__p, v5);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  google::protobuf::SplitStringUsing(v38, v39, "\n", &v16);
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = v16;
  for (i = v17; v6 != i; v6 += 3)
  {
    v8 = *(a1 + 127);
    v9 = *(a1 + 104);
    v10 = *(a1 + 112);
    if (v8 >= 0)
    {
      v9 = (a1 + 104);
    }

    v38 = v9;
    if (v8 < 0)
    {
      LODWORD(v8) = v10;
    }

    LODWORD(v39) = v8;
    v11 = *(v6 + 23);
    v12 = *v6;
    v13 = v6[1];
    if (v11 >= 0)
    {
      v12 = v6;
    }

    v36 = v12;
    if (v11 < 0)
    {
      LODWORD(v11) = v13;
    }

    v37 = v11;
    v34 = 0;
    v35 = -1;
    v32 = 0;
    v33 = -1;
    v30 = 0;
    v31 = -1;
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
    *&v15 = &v26;
    *(&v15 + 1) = &v24;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0// $1\n", &v38, &v36, &v34, &v32, &v30, &v28, v15, &v22, &v20);
  }

  v38 = &v16;
  sub_276B281C8(&v38);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL sub_276B26B20(int a1, const google::protobuf::Message *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*((*(*a2 + 152))(a2) + 16) + 16) == a3 || (v8 = (*(*a2 + 152))(a2), (MessageTypeByName = google::protobuf::DescriptorPool::FindMessageTypeByName(a3, *(v8 + 8), v9)) == 0))
  {
    v22 = *MEMORY[0x277D85DE8];

    return sub_276B26E04(a1, a2, a4);
  }

  else
  {
    v11 = MessageTypeByName;
    google::protobuf::DynamicMessageFactory::DynamicMessageFactory(v25);
    Prototype = google::protobuf::DynamicMessageFactory::GetPrototype(v25, v11);
    v13 = (*(*Prototype + 24))(Prototype);
    google::protobuf::MessageLite::SerializeAsString(a2, __p);
    v14 = google::protobuf::MessageLite::ParseFromString(v13, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v15 = v13;
    if ((v14 & 1) == 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 2341);
      v16 = google::protobuf::internal::LogMessage::operator<<(__p, "Found invalid proto option data for: ");
      v17 = (*(*a2 + 152))(a2);
      v18 = google::protobuf::internal::LogMessage::operator<<(v16, *(v17 + 8));
      google::protobuf::internal::LogFinisher::operator=(&v23, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
      v15 = a2;
    }

    v19 = sub_276B26E04(a1, v15, a4);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(v25);
    v20 = *MEMORY[0x277D85DE8];
    return v19;
  }
}

void sub_276B26D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  google::protobuf::internal::LogMessage::~LogMessage(&__p);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory(&a19);
  _Unwind_Resume(a1);
}

BOOL sub_276B26E04(int a1, const google::protobuf::Message *a2, uint64_t a3)
{
  v61[2] = *MEMORY[0x277D85DE8];
  sub_276B2740C(a3);
  (*(*a2 + 152))(a2);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v44 = v6;
  google::protobuf::Reflection::ListFields(v6, a2, &v57);
  v7 = v57;
  v45 = v58;
  if (v57 != v58)
  {
    v49 = a1 + 1;
    v47 = a2;
    __n = 2 * a1;
    while (1)
    {
      v8 = *v7;
      v50 = *(*v7 + 60);
      v46 = v7;
      if (v50 != 3)
      {
        break;
      }

      v9 = google::protobuf::Reflection::FieldSize(v44, a2, v8);
      if (v9 >= 1)
      {
        goto LABEL_7;
      }

LABEL_67:
      v7 = v46 + 8;
      if (v46 + 8 == v45)
      {
        v7 = v57;
        goto LABEL_69;
      }
    }

    v9 = 1;
LABEL_7:
    for (i = 0; i != v9; ++i)
    {
      memset(&v56, 0, sizeof(v56));
      v11 = *(v8 + 48);
      if (v11)
      {
        v60.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::TypeOnceInit;
        v61[0] = v8;
        if (atomic_load_explicit(v11, memory_order_acquire) != -1)
        {
          v51.__r_.__value_.__r.__words[0] = &v60;
          v51.__r_.__value_.__l.__size_ = v61;
          __p.__r_.__value_.__r.__words[0] = &v51;
          std::__call_once(v11, &__p, sub_2769C149C);
        }
      }

      if ((*(v8 + 56) & 0xFFFFFFFE) != 0xA)
      {
        google::protobuf::TextFormat::PrintFieldValueToString();
      }

      memset(&__p, 0, sizeof(__p));
      google::protobuf::TextFormat::Printer::Printer(&v51);
      LODWORD(v51.__r_.__value_.__l.__data_) = v49;
      if (v50 == 3)
      {
        v12 = i;
      }

      else
      {
        v12 = -1;
      }

      google::protobuf::TextFormat::Printer::PrintFieldValueToString(&v51, a2, v8, v12, &__p);
      std::string::append(&v56, "{\n");
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

      std::string::append(&v56, p_p, size);
      std::string::append(&v56, __n, 32);
      std::string::append(&v56, "}");
      sub_276B274C8(v54, v54[1]);
      sub_276B2754C(v53, v53[1]);
      v15 = v52;
      v52 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__p, 0, sizeof(__p));
      if (*(v8 + 67) == 1)
      {
        v16 = *(v8 + 8);
        std::operator+<char>();
        v17 = std::string::append(&v51, ")");
        v18 = v17->__r_.__value_.__r.__words[0];
        v60.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__l.__size_;
        *(v60.__r_.__value_.__r.__words + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
        v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p.__r_.__value_.__r.__words[0] = v18;
        __p.__r_.__value_.__l.__size_ = v60.__r_.__value_.__r.__words[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v60.__r_.__value_.__r.__words + 7);
        *(&__p.__r_.__value_.__s + 23) = v19;
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::operator=(&__p, *v8);
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __p.__r_.__value_.__l.__size_;
      }

      sub_276B2A028(&v60, v20 + 3);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v60;
      }

      else
      {
        v21 = v60.__r_.__value_.__r.__words[0];
      }

      if (v20)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &__p;
        }

        else
        {
          v22 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v21, v22, v20);
      }

      *(&v21->__r_.__value_.__l.__data_ + v20) = 2112800;
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v56;
      }

      else
      {
        v23 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v56.__r_.__value_.__l.__size_;
      }

      v25 = std::string::append(&v60, v23, v24);
      v26 = v25->__r_.__value_.__r.__words[0];
      v61[0] = v25->__r_.__value_.__l.__size_;
      *(v61 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
      v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v28 = *(a3 + 8);
      v29 = *(a3 + 16);
      if (v28 >= v29)
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a3) >> 3);
        v32 = v31 + 1;
        if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_2769BA860();
        }

        v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a3) >> 3);
        if (2 * v33 > v32)
        {
          v32 = 2 * v33;
        }

        if (v33 >= 0x555555555555555)
        {
          v34 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v34 = v32;
        }

        v53[0] = a3;
        if (v34)
        {
          sub_276B275D0(a3, v34);
        }

        v35 = 24 * v31;
        *v35 = v26;
        *(v35 + 8) = v61[0];
        *(v35 + 15) = *(v61 + 7);
        *(v35 + 23) = v27;
        v30 = 24 * v31 + 24;
        v36 = *(a3 + 8) - *a3;
        v37 = v35 - v36;
        memcpy((v35 - v36), *a3, v36);
        v38 = *a3;
        *a3 = v37;
        *(a3 + 8) = v30;
        v39 = *(a3 + 16);
        *(a3 + 16) = 0;
        v51.__r_.__value_.__r.__words[2] = v38;
        v52 = v39;
        v51.__r_.__value_.__r.__words[0] = v38;
        v51.__r_.__value_.__l.__size_ = v38;
        sub_276B27628(&v51);
        a2 = v47;
      }

      else
      {
        *v28 = v26;
        *(v28 + 8) = v61[0];
        *(v28 + 15) = *(v61 + 7);
        *(v28 + 23) = v27;
        v30 = v28 + 24;
      }

      *(a3 + 8) = v30;
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_67;
  }

LABEL_69:
  v41 = *a3;
  v40 = *(a3 + 8);
  if (v7)
  {
    v58 = v7;
    operator delete(v7);
  }

  result = v41 != v40;
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276B2735C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v43 = *(v41 - 160);
  if (v43)
  {
    *(v41 - 152) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B2740C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_276B2745C(uint64_t a1)
{
  sub_276B274C8(a1 + 56, *(a1 + 64));
  sub_276B2754C(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_276B274C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276B274C8(a1, *a2);
    sub_276B274C8(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void sub_276B2754C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276B2754C(a1, *a2);
    sub_276B2754C(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void sub_276B275D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276B27628(uint64_t a1)
{
  sub_276B27660(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276B27660(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

std::string *sub_276B276BC@<X0>(std::string::value_type *__s@<X1>, std::string **a2@<X0>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  return sub_276B27714(*a2, a2[1], __s, a3);
}

void sub_276B276F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_276B27714(std::string *result, std::string *a2, std::string::value_type *__s, std::string *this)
{
  v12[6] = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v7 = result;
    v8 = 0;
    do
    {
      if (v8)
      {
        std::string::append(this, __s);
      }

      v9 = *(v7 + 23);
      v10 = *v7;
      if (v9 >= 0)
      {
        v10 = v7;
      }

      if (v9 < 0)
      {
        v9 = *(v7 + 8);
      }

      v12[0] = v10;
      v12[1] = v9;
      result = google::protobuf::StrAppend(this, v12);
      v7 += 24;
      v8 -= 24;
    }

    while (v7 != a2);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

google::protobuf::FileDescriptorTables *google::protobuf::internal::OnShutdownDelete<google::protobuf::FileDescriptorTables>(google::protobuf::FileDescriptorTables *)::{lambda(void const*)#1}::__invoke(google::protobuf::FileDescriptorTables *result)
{
  if (result)
  {
    google::protobuf::FileDescriptorTables::~FileDescriptorTables(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void sub_276B279AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::OnShutdownDelete<std::set<std::string>>(std::set<std::string> *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    sub_276B2AD2C(result, *(result + 8));

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276B27A78(uint64_t a1, const void **a2)
{
  v2 = *sub_276B27B1C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_276B27B1C(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_276B27BB8(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_276B27BB8(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_276B27BB8(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void sub_276B27C24(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_276B27C88(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_276B27BB8(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_276B27BB8(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void sub_276B27D18(void **this)
{
  *this = &unk_2885C60B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ErrorCollector::~ErrorCollector(this);

  JUMPOUT(0x277C9F670);
}

std::string *sub_276B27D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 31);
  if (v6 < 0)
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    std::string::append((a1 + 8), "; ");
  }

  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = *a4;
  }

  if (v7 >= 0)
  {
    v9 = *(a4 + 23);
  }

  else
  {
    v9 = *(a4 + 8);
  }

  return std::string::append((a1 + 8), v8, v9);
}

void sub_276B27E00(google::protobuf::TextFormat::Finder *a1)
{
  google::protobuf::TextFormat::Finder::~Finder(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276B27E38(uint64_t a1, uint64_t a2, std::string *a3)
{
  v5 = (*(*a2 + 152))(a2);
  v6 = google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(*(a1 + 8), a3, *(v5 + 8), 0, 1);
  v8 = v7;
  if (v6 != 1)
  {
    if (v6 == 2 && (*(v7 + 67) & 1) != 0)
    {
      return v8;
    }

    return 0;
  }

  if (*(*(v5 + 32) + 72) != 1 || *(v7 + 128) < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(v8 + 80);
    if (*(v11 + v9 + 80) == v5)
    {
      v12 = *(v11 + v9 + 48);
      if (v12)
      {
        v14 = v11 + v9;
        v15 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v12, memory_order_acquire) != -1)
        {
          v17[0] = &v15;
          v17[1] = &v14;
          v16 = v17;
          std::__call_once(v12, &v16, sub_2769C149C);
        }
      }

      if (*(v11 + v9 + 56) == 11 && *(v11 + v9 + 60) == 1 && google::protobuf::FieldDescriptor::message_type((v11 + v9)) == v8)
      {
        break;
      }
    }

    ++v10;
    v9 += 152;
    if (v10 >= *(v8 + 128))
    {
      return 0;
    }
  }

  return v11 + v9;
}

uint64_t sub_276B27FC0(uint64_t a1, uint64_t a2, const void **a3, std::string *a4)
{
  v7 = strlen("type.googleapis.com/");
  v8 = v7;
  v9 = *(a3 + 23);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a3;
    if (v8 != v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!memcmp(v10, "type.googleapis.com/", v8))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (v7 == a3[1])
  {
    if (v7 == -1)
    {
      sub_276B28120();
    }

    v10 = *a3;
    goto LABEL_7;
  }

LABEL_8:
  v11 = strlen("type.googleprod.com/");
  if ((v9 & 0x80000000) != 0)
  {
    if (v11 != a3[1])
    {
      return 0;
    }

    if (v11 == -1)
    {
      sub_276B28120();
    }

    a3 = *a3;
  }

  else if (v11 != v9)
  {
    return 0;
  }

  if (memcmp(a3, "type.googleprod.com/", v11))
  {
    return 0;
  }

LABEL_16:
  if (google::protobuf::DescriptorBuilder::FindSymbol(*(a1 + 8), a4, 1) == 1)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void *sub_276B280C4(void *a1, uint64_t *a2, const char *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *a1 = v4;
  a1[1] = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if ((v5 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v5, "size_t to int conversion", a3);
    }
  }

  a1[1] = v5;
  return a1;
}

void sub_276B28138(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_276B28194(exception, a1);
  __cxa_throw(exception, off_27A6E2768, MEMORY[0x277D825F8]);
}

std::logic_error *sub_276B28194(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_276B281C8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B2740C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_276B2821C(uint64_t a1)
{
  sub_276B28258(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276B28258(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_276B282A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B282F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276B282F8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_276B28350(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B283A4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276B283A4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_276B28408(v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void sub_276B28408(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x277C9F670);
  }
}

void sub_276B28464(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B284B8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_276B284B8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_276B28524(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B28578(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_276B28578(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x277C9F670](result, 0x1000C4000313F17);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void sub_276B285E0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276B28634(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

google::protobuf::FileDescriptorTables *sub_276B28634(google::protobuf::FileDescriptorTables *result, google::protobuf::FileDescriptorTables **a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; result = sub_276B28688(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

google::protobuf::FileDescriptorTables *sub_276B28688(uint64_t a1, google::protobuf::FileDescriptorTables **a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    google::protobuf::FileDescriptorTables::~FileDescriptorTables(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

const void **sub_276B286D0(void *a1, const void **a2)
{
  v4 = sub_276B289F0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_276B28930();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_276B28E9C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}