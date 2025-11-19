void sub_276B0B860(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorPool::FindFileContainingSymbol(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = *a1;
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  if (*(a1 + 8))
  {
    sub_276B29FCC(*(a1 + 32) + 64);
    sub_276B29FCC(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 32);
  sub_276B280C4(&v16, a2, a3);
  v18 = v16;
  v7 = sub_276B26328((v6 + 304), &v18);
  if (v7)
  {
    v17 = *(v7 + 2);
    if (v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0uLL;
  }

  v10 = *(a1 + 24);
  if (!v10 || (FileContainingSymbol = google::protobuf::DescriptorPool::FindFileContainingSymbol(v10, a2)) == 0)
  {
    sub_276B280C4(&v18, a2, v8);
    if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a1, v18, *(&v18 + 1)))
    {
      v12 = *(a1 + 32);
      sub_276B280C4(&v16, a2, v11);
      v18 = v16;
      v13 = sub_276B26328((v12 + 304), &v18);
      if (!v13)
      {
        FileContainingSymbol = 0;
        *(&v17 + 1) = 0;
        if (!v5)
        {
          return FileContainingSymbol;
        }

        goto LABEL_17;
      }

      v14 = v13[5];
      *&v17 = v13[4];
      *(&v17 + 1) = v14;
      if (v17)
      {
LABEL_7:
        FileContainingSymbol = sub_276B0B9EC(&v17);
        if (!v5)
        {
          return FileContainingSymbol;
        }

        goto LABEL_17;
      }
    }

    FileContainingSymbol = 0;
  }

  if (v5)
  {
LABEL_17:
    std::mutex::unlock(v5);
  }

  return FileContainingSymbol;
}

void sub_276B0B9CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B0B9EC(uint64_t a1)
{
  v1 = 0;
  v2 = *a1;
  if (*a1 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v3 = *(a1 + 8) + 40;
          return *v3;
        }

        return v1;
      }

      goto LABEL_12;
    }

    if (v2 != 3)
    {
      if (v2 != 4)
      {
        return v1;
      }

LABEL_12:
      v4 = *(a1 + 8);
LABEL_18:
      v3 = v4 + 16;
      return *v3;
    }

LABEL_16:
    v4 = *(*(a1 + 8) + 16);
    goto LABEL_18;
  }

  if (v2 <= 6)
  {
    if (v2 == 5)
    {
      v4 = *(*(a1 + 8) + 24);
      goto LABEL_18;
    }

    if (v2 != 6)
    {
      return v1;
    }

    goto LABEL_12;
  }

  if (v2 == 7)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = a1 + 8;
    return *v3;
  }

  return v1;
}

uint64_t google::protobuf::DescriptorPool::FindMessageTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindFieldByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) != 2)
  {
    return 0;
  }

  result = v5;
  if (*(v5 + 67) == 1)
  {
    return 0;
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::FindExtensionByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
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

uint64_t google::protobuf::DescriptorPool::FindOneofByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindEnumTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindEnumValueByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindServiceByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::DescriptorPool::FindMethodByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_276B280C4(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
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
  v8 = sub_276B265AC(&v7[6], &v17);
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
    sub_276B29FCC(&this[4][1]);
    sub_276B29FCC(&this[4]->__m_.__opaque[16]);
  }

  v11 = this[4];
  v17 = a2;
  v18 = a3;
  v12 = sub_276B265AC(&v11[6], &v17);
  if (v11[6].__m_.__opaque == v12 || (ExtensionByNumber = v12[6]) == 0)
  {
    v13 = this[3];
    if (!v13 || (ExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(v13, a2, a3)) == 0)
    {
      if (!google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(this, a2, a3) || (v14 = this[4], v17 = a2, v18 = a3, v15 = sub_276B265AC(&v14[6], &v17), v14[6].__m_.__opaque == v15) || (ExtensionByNumber = v15[6]) == 0)
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
  v9 = ((*(**(this + 1) + 32))(*(this + 1), *(a2 + 1), a3, v12) & 1) != 0 && ((v7 = *(this + 4), sub_276B280C4(&v11, (v13 & 0xFFFFFFFFFFFFFFFELL), v6), v14 = v11, (v8 = sub_276B26328((v7 + 344), &v14)) == 0) || !v8[4]) && google::protobuf::DescriptorPool::BuildFileFromDatabase(this, v12) != 0;
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(v12);
  return v9;
}

void sub_276B0BF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  v7 = sub_276B265AC(v6 + 384, &v10);
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
              std::__call_once(v13, &v16, sub_2769C149C);
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

uint64_t sub_276B0C1A4(uint64_t a1)
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
      std::__call_once(v2, &v6, sub_2769C149C);
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
      std::__call_once(v2, &v5, sub_276B2F244);
    }
  }

  return *(this + 13);
}

void google::protobuf::DescriptorPool::FindAllExtensions(uint64_t a1, google::protobuf::Descriptor *a2, uint64_t a3)
{
  v4 = a2;
  v26 = a2;
  v6 = *a1;
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  if (*(a1 + 8))
  {
    sub_276B29FCC(*(a1 + 32) + 64);
    sub_276B29FCC(*(a1 + 32) + 24);
    if (*(a1 + 8))
    {
      v7 = sub_276B2AE7C((*(a1 + 32) + 104), &v26);
      v4 = v26;
      if (!v7)
      {
        v24 = 0;
        v25 = 0;
        __p = 0;
        if ((*(**(a1 + 8) + 40))(*(a1 + 8), *(v26 + 1), &__p))
        {
          v8 = __p;
          v9 = v24;
          while (v8 != v9)
          {
            v10 = *v8;
            v11 = *(a1 + 32);
            v27 = v26;
            v28 = v10;
            v12 = sub_276B265AC(v11 + 384, &v27);
            if ((v11 + 392) == v12 || !v12[6])
            {
              google::protobuf::DescriptorPool::TryFindExtensionInFallbackDatabase(a1, v26, v10);
            }

            ++v8;
          }

          sub_276B2AF68((*(a1 + 32) + 104), &v26);
        }

        if (__p)
        {
          v24 = __p;
          operator delete(__p);
        }

        v4 = v26;
      }
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 392);
  if (v14)
  {
    v15 = (v13 + 392);
    v16 = (v13 + 392);
    do
    {
      v17 = v14[4];
      if (v17 >= v4)
      {
        if (v17 <= v4)
        {
          v18 = *(v14 + 10);
          if (v18 >= 0)
          {
            v16 = v14;
          }

          v14 = (v14 + ((v18 >> 28) & 8));
        }

        else
        {
          v16 = v14;
        }
      }

      else
      {
        ++v14;
      }

      v14 = *v14;
    }

    while (v14);
    if (v16 != v15)
    {
      do
      {
        if (v16[4] != v4)
        {
          break;
        }

        sub_276B23B7C(a3, v16 + 6);
        v19 = v16[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v16[2];
            v21 = *v20 == v16;
            v16 = v20;
          }

          while (!v21);
        }

        v16 = v20;
      }

      while (v20 != v15);
    }
  }

  v22 = *(a1 + 24);
  if (v22)
  {
    google::protobuf::DescriptorPool::FindAllExtensions(v22, v26, a3);
  }

  if (v6)
  {
    std::mutex::unlock(v6);
  }
}

void sub_276B0C4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v10)
  {
    std::mutex::unlock(v10);
  }

  _Unwind_Resume(exception_object);
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
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  v12 = google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitStatic;
  if (atomic_load_explicit((v4 + 88), memory_order_acquire) != -1)
  {
    v9 = &v12;
    *&v10 = &v11;
    v13 = &v9;
    v7 = v5;
    std::__call_once((v4 + 88), &v13, sub_276B26638);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 40), &v9);
  if (result)
  {
    if (*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::Descriptor::FindFieldByCamelcaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  if (atomic_load_explicit((v4 + 144), memory_order_acquire) != -1)
  {
    v9 = google::protobuf::FileDescriptorTables::FieldsByCamelcaseNamesLazyInitStatic;
    *&v10 = &v11;
    v12 = &v9;
    v7 = v5;
    std::__call_once((v4 + 144), &v12, sub_276B2664C);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 96), &v9);
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
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
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

uint64_t google::protobuf::Descriptor::FindOneofByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 3)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindExtensionByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) != 2)
  {
    return 0;
  }

  if (*(v14[6] + 67))
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindExtensionByLowercaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  v12 = google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitStatic;
  if (atomic_load_explicit((v4 + 88), memory_order_acquire) != -1)
  {
    v9 = &v12;
    *&v10 = &v11;
    v13 = &v9;
    v7 = v5;
    std::__call_once((v4 + 88), &v13, sub_276B26638);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 40), &v9);
  if (result)
  {
    if (!*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::Descriptor::FindExtensionByCamelcaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  if (atomic_load_explicit((v4 + 144), memory_order_acquire) != -1)
  {
    v9 = google::protobuf::FileDescriptorTables::FieldsByCamelcaseNamesLazyInitStatic;
    *&v10 = &v11;
    v12 = &v9;
    v7 = v5;
    std::__call_once((v4 + 144), &v12, sub_276B2664C);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 96), &v9);
  if (result)
  {
    if (!*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::Descriptor::FindNestedTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 1)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindEnumTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 4)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::Descriptor::FindEnumValueByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
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
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
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
  return sub_276B266C8((v2 + 192), &v4);
}

uint64_t sub_276B0D2DC(uint64_t a1, std::string::size_type a2, uint64_t a3)
{
  v16.__r_.__value_.__r.__words[0] = a2;
  LODWORD(v16.__r_.__value_.__r.__words[1]) = a3;
  v6 = sub_276B266C8((a1 + 192), &v16);
  if (v6)
  {
    return v6;
  }

  std::mutex::lock((a1 + 320));
  v16.__r_.__value_.__r.__words[0] = a2;
  LODWORD(v16.__r_.__value_.__r.__words[1]) = a3;
  v7 = sub_276B267A4((a1 + 232), &v16);
  std::mutex::unlock((a1 + 320));
  if (!v7)
  {
    std::mutex::lock((a1 + 320));
    v16.__r_.__value_.__r.__words[0] = a2;
    LODWORD(v16.__r_.__value_.__r.__words[1]) = a3;
    v7 = sub_276B267A4((a1 + 232), &v16);
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
      sub_276B280C4(__p, &v16, v12);
      google::protobuf::DescriptorPool::Tables::AllocateString(v11, __p[0], __p[1]);
    }

    std::mutex::unlock((a1 + 320));
  }

  return v7;
}

void sub_276B0D524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 65) < 0)
  {
    operator delete(*(v24 - 88));
  }

  std::mutex::unlock(v23 + 5);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::ServiceDescriptor::FindMethodByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(*(a1 + 16) + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 7)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::FileDescriptor::FindMessageTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 1)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::FileDescriptor::FindEnumTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 4)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::FileDescriptor::FindEnumValueByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
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

uint64_t google::protobuf::FileDescriptor::FindServiceByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) == 6)
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::FileDescriptor::FindExtensionByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 144);
  sub_276B280C4(&v17, a2, a3);
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

  if (!sub_276B2665C(v4, v14 + 2, v19))
  {
    goto LABEL_21;
  }

  if (*(v14 + 10) != 2)
  {
    return 0;
  }

  if (*(v14[6] + 67))
  {
    return v14[6];
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::FileDescriptor::FindExtensionByLowercaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  v12 = google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitStatic;
  if (atomic_load_explicit((v4 + 88), memory_order_acquire) != -1)
  {
    v9 = &v12;
    *&v10 = &v11;
    v13 = &v9;
    v7 = v5;
    std::__call_once((v4 + 88), &v13, sub_276B26638);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 40), &v9);
  if (result)
  {
    if (!*(result + 67))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::FileDescriptor::FindExtensionByCamelcaseName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 144);
  sub_276B280C4(&v8, a2, a3);
  v5 = v8;
  v11 = v4;
  if (atomic_load_explicit((v4 + 144), memory_order_acquire) != -1)
  {
    v9 = google::protobuf::FileDescriptorTables::FieldsByCamelcaseNamesLazyInitStatic;
    *&v10 = &v11;
    v12 = &v9;
    v7 = v5;
    std::__call_once((v4 + 144), &v12, sub_276B2664C);
    v5 = v7;
  }

  v9 = a1;
  v10 = v5;
  result = sub_276B0A0B0((v4 + 96), &v9);
  if (result)
  {
    if (!*(result + 67))
    {
      return 0;
    }
  }

  return result;
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

_DWORD *google::protobuf::EnumDescriptor::FindReservedRangeContainingNumber(google::protobuf::EnumDescriptor *this, int a2)
{
  v2 = *(this + 14);
  if (v2 < 1)
  {
    return 0;
  }

  for (result = *(this + 8); *result > a2 || result[1] < a2; result += 2)
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
  if (sub_276B2B1CC((*(this + 4) + 24), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL)))
  {
    return 0;
  }

  google::protobuf::DescriptorBuilder::DescriptorBuilder(v6, this, *(this + 4), *(this + 2));
  v4 = google::protobuf::DescriptorBuilder::BuildFile(v6, a2);
  google::protobuf::DescriptorBuilder::~DescriptorBuilder(v6);
  if (!v4)
  {
    sub_276B2BCA8((*(this + 4) + 24), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL));
  }

  return v4;
}

void sub_276B0E114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::DescriptorBuilder::~DescriptorBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  sub_276B264AC(&v15, &__str);
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
      sub_276B280C4(&v12, &__str, v6);
      *&v13.__r_.__value_.__l.__data_ = v12;
      v8 = sub_276B26328((v7 + 304), &v13.__r_.__value_.__l.__data_);
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

void sub_276B0E23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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
  v34 = *MEMORY[0x277D85DE8];
  if ((*(this + 64) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(&v33, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 1982);
    v7 = google::protobuf::internal::LogMessage::operator<<(&v33, "CHECK failed: has_default_value(): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "No default value");
    google::protobuf::internal::LogFinisher::operator=(&v30, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v33.__r_.__value_.__l.__data_);
  }

  v9 = *(this + 6);
  if (v9)
  {
    v31 = this;
    v32 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v9, memory_order_acquire) != -1)
    {
      v33.__r_.__value_.__r.__words[0] = &v32;
      v33.__r_.__value_.__l.__size_ = &v31;
      v30.__r_.__value_.__r.__words[0] = &v33;
      std::__call_once(v9, &v30, sub_2769C149C);
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
        v33.__r_.__value_.__r.__words[0] = &v33.__r_.__value_.__r.__words[2];
        v33.__r_.__value_.__l.__size_ = google::protobuf::FastUInt32ToBufferLeft(v17, &v33.__r_.__value_.__s.__data_[16], a3) - &v33.__r_.__value_.__r.__words[2];
        sub_276B264D0(a4, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      }

      else if (v11 == 4)
      {
        v22 = *(this + 18);
        v33.__r_.__value_.__r.__words[0] = &v33.__r_.__value_.__r.__words[2];
        v33.__r_.__value_.__l.__size_ = google::protobuf::FastUInt64ToBufferLeft(v22, &v33.__r_.__value_.__s.__data_[16], a3) - &v33.__r_.__value_.__r.__words[2];
        sub_276B264D0(a4, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      }

      else
      {
        google::protobuf::SimpleDtoa(*(this + 18), a2, a4);
      }

      goto LABEL_46;
    }

    if (v11 == 1)
    {
      v16 = *(this + 36);
      v33.__r_.__value_.__r.__words[0] = &v33.__r_.__value_.__r.__words[2];
      v33.__r_.__value_.__l.__size_ = google::protobuf::FastInt32ToBufferLeft(v16, &v33.__r_.__value_.__s.__data_[16], a3) - &v33.__r_.__value_.__r.__words[2];
      sub_276B264D0(a4, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      goto LABEL_46;
    }

    if (v11 == 2)
    {
      v13 = *(this + 18);
      v33.__r_.__value_.__r.__words[0] = &v33.__r_.__value_.__r.__words[2];
      v33.__r_.__value_.__l.__size_ = google::protobuf::FastInt64ToBufferLeft(v13, &v33.__r_.__value_.__s.__data_[16], a3) - &v33.__r_.__value_.__r.__words[2];
      sub_276B264D0(a4, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
      goto LABEL_46;
    }

LABEL_24:
    google::protobuf::internal::LogMessage::LogMessage(&v33, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 2023);
    v15 = google::protobuf::internal::LogMessage::operator<<(&v33, "Can't get here: failed to get default value as string");
    google::protobuf::internal::LogFinisher::operator=(&v30, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v33.__r_.__value_.__l.__data_);
    sub_276A4D46C(a4, "");
    goto LABEL_46;
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

      sub_276A4D46C(a4, v14);
    }

    goto LABEL_46;
  }

  if (v11 == 8)
  {
    v18 = google::protobuf::FieldDescriptor::default_value_enum(this);
    v19 = *v18;
    if (*(*v18 + 23) < 0)
    {
      sub_276A07B90(a4, *v19, *(v19 + 1));
      goto LABEL_46;
    }

    v20 = *v19;
    v21 = *(v19 + 2);
    goto LABEL_45;
  }

  if (v11 != 9)
  {
    if (v11 == 10)
    {
      google::protobuf::internal::LogMessage::LogMessage(&v33, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 2020);
      v12 = google::protobuf::internal::LogMessage::operator<<(&v33, "Messages can't have default values!");
      google::protobuf::internal::LogFinisher::operator=(&v30, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v33.__r_.__value_.__l.__data_);
    }

    goto LABEL_24;
  }

  if (!v4)
  {
    v27 = *(this + 6);
    if (v27)
    {
      v31 = this;
      v32 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v27, memory_order_acquire) != -1)
      {
        v33.__r_.__value_.__r.__words[0] = &v32;
        v33.__r_.__value_.__l.__size_ = &v31;
        v30.__r_.__value_.__r.__words[0] = &v33;
        std::__call_once(v27, &v30, sub_2769C149C);
      }

      LODWORD(v10) = *(this + 14);
    }

    v28 = *(this + 18);
    if (v10 == 12)
    {
      google::protobuf::CEscape(v28, a3, a4);
      goto LABEL_46;
    }

    if (*(v28 + 23) < 0)
    {
      sub_276A07B90(a4, *v28, *(v28 + 1));
      goto LABEL_46;
    }

    v20 = *v28;
    v21 = *(v28 + 2);
LABEL_45:
    a4->__r_.__value_.__r.__words[2] = v21;
    *&a4->__r_.__value_.__l.__data_ = v20;
    goto LABEL_46;
  }

  google::protobuf::CEscape(*(this + 18), a3, &v30);
  v23 = std::string::insert(&v30, 0, "");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v33, "");
  v26 = *&v25->__r_.__value_.__l.__data_;
  a4->__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&a4->__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_46:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_276B0E6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
      std::__call_once(v2, &v5, sub_276B2F244);
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
    sub_276A4D46C(&__p, v10);
    v11 = *(a2 + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(a2 + 24, &__p, v11);
    if (v64 < 0)
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
        v17 = sub_2769C64F4(*(a2 + 3));
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
      if (v21 == *(a2 + 37))
      {
        google::protobuf::RepeatedField<int>::Reserve();
      }

      *(*(a2 + 19) + 4 * v21++) = *(*(this + 11) + 4 * v20);
      *(a2 + 36) = v21;
      ++v20;
    }

    while (v20 < *(this + 9));
  }

  if (*(this + 10) >= 1)
  {
    v22 = 0;
    v23 = *(a2 + 40);
    do
    {
      if (v23 == *(a2 + 41))
      {
        google::protobuf::RepeatedField<int>::Reserve();
      }

      *(*(a2 + 21) + 4 * v23++) = *(*(this + 12) + 4 * v22);
      *(a2 + 40) = v23;
      ++v22;
    }

    while (v22 < *(this + 10));
  }

  if (*(this + 11) >= 1)
  {
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = *(this + 13);
      v27 = *(a2 + 8);
      if (!v27)
      {
        break;
      }

      v28 = *(a2 + 14);
      v29 = *v27;
      if (v28 >= *v27)
      {
        if (v29 == *(a2 + 15))
        {
LABEL_41:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 12, v29 + 1);
          v27 = *(a2 + 8);
          v29 = *v27;
        }

        *v27 = v29 + 1;
        v30 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(*(a2 + 6));
        v31 = *(a2 + 14);
        v32 = *(a2 + 8) + 8 * v31;
        *(a2 + 14) = v31 + 1;
        *(v32 + 8) = v30;
        goto LABEL_43;
      }

      *(a2 + 14) = v28 + 1;
      v30 = *&v27[2 * v28 + 2];
LABEL_43:
      google::protobuf::Descriptor::CopyTo((v26 + v24), v30);
      ++v25;
      v24 += 144;
      if (v25 >= *(this + 11))
      {
        goto LABEL_44;
      }
    }

    v29 = *(a2 + 15);
    goto LABEL_41;
  }

LABEL_44:
  if (*(this + 12) >= 1)
  {
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v35 = *(this + 14);
      v36 = *(a2 + 11);
      if (!v36)
      {
        break;
      }

      v37 = *(a2 + 20);
      v38 = *v36;
      if (v37 >= *v36)
      {
        if (v38 == *(a2 + 21))
        {
LABEL_51:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 18, v38 + 1);
          v36 = *(a2 + 11);
          v38 = *v36;
        }

        *v36 = v38 + 1;
        v39 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(*(a2 + 9));
        v40 = *(a2 + 20);
        v41 = *(a2 + 11) + 8 * v40;
        *(a2 + 20) = v40 + 1;
        *(v41 + 8) = v39;
        goto LABEL_53;
      }

      *(a2 + 20) = v37 + 1;
      v39 = *&v36[2 * v37 + 2];
LABEL_53:
      google::protobuf::EnumDescriptor::CopyTo((v35 + v33), v39);
      ++v34;
      v33 += 80;
      if (v34 >= *(this + 12))
      {
        goto LABEL_54;
      }
    }

    v38 = *(a2 + 21);
    goto LABEL_51;
  }

LABEL_54:
  if (*(this + 13) >= 1)
  {
    v42 = 0;
    v43 = 0;
    while (1)
    {
      v44 = *(this + 15);
      v45 = *(a2 + 14);
      if (!v45)
      {
        break;
      }

      v46 = *(a2 + 26);
      v47 = *v45;
      if (v46 >= *v45)
      {
        if (v47 == *(a2 + 27))
        {
LABEL_61:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 24, v47 + 1);
          v45 = *(a2 + 14);
          v47 = *v45;
        }

        *v45 = v47 + 1;
        v48 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceDescriptorProto>(*(a2 + 12));
        v49 = *(a2 + 26);
        v50 = *(a2 + 14) + 8 * v49;
        *(a2 + 26) = v49 + 1;
        *(v50 + 8) = v48;
        goto LABEL_63;
      }

      *(a2 + 26) = v46 + 1;
      v48 = *&v45[2 * v46 + 2];
LABEL_63:
      google::protobuf::ServiceDescriptor::CopyTo((v44 + v42), v48);
      ++v43;
      v42 += 48;
      if (v43 >= *(this + 13))
      {
        goto LABEL_64;
      }
    }

    v47 = *(a2 + 27);
    goto LABEL_61;
  }

LABEL_64:
  if (*(this + 14) >= 1)
  {
    v51 = 0;
    v52 = 0;
    while (1)
    {
      v53 = *(this + 16);
      v54 = *(a2 + 17);
      if (!v54)
      {
        break;
      }

      v55 = *(a2 + 32);
      v56 = *v54;
      if (v55 >= *v54)
      {
        if (v56 == *(a2 + 33))
        {
LABEL_71:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 30, v56 + 1);
          v54 = *(a2 + 17);
          v56 = *v54;
        }

        *v54 = v56 + 1;
        v57 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(*(a2 + 15));
        v58 = *(a2 + 32);
        v59 = *(a2 + 17) + 8 * v58;
        *(a2 + 32) = v58 + 1;
        *(v59 + 8) = v57;
        goto LABEL_73;
      }

      *(a2 + 32) = v55 + 1;
      v57 = *&v54[2 * v55 + 2];
LABEL_73:
      google::protobuf::FieldDescriptor::CopyTo((v53 + v51), v57);
      ++v52;
      v51 += 152;
      if (v52 >= *(this + 14))
      {
        goto LABEL_74;
      }
    }

    v56 = *(a2 + 33);
    goto LABEL_71;
  }

LABEL_74:
  v60 = *(this + 17);
  if (v60 != google::protobuf::FileOptions::default_instance(v6))
  {
    *(a2 + 4) |= 8u;
    v61 = *(a2 + 25);
    if (!v61)
    {
      v62 = *(a2 + 1);
      if (v62)
      {
        v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
      }

      v61 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileOptions>(v62);
      *(a2 + 25) = v61;
    }

    google::protobuf::FileOptions::CopyFrom(v61, *(this + 17));
  }
}

void sub_276B0ED54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      std::__call_once(v4, &v7, sub_276B2F254);
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
        v76 = sub_2769C64F4(*(a2 + 24));
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
        v31 = sub_2769C64F4(*(a2 + 9));
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
      std::__call_once(v14, &p_p, sub_2769C149C);
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
      sub_276A4D46C(&__p, ".");
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
      std::__call_once(v24, &p_p, sub_2769C149C);
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
      sub_276A4D46C(&__p, ".");
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
      std::__call_once(v30, &p_p, sub_2769C149C);
    }

    v25 = *(this + 14);
  }

  if (v25 == 14)
  {
    if ((*(google::protobuf::FieldDescriptor::enum_type(this) + 41) & 1) == 0)
    {
      *(a2 + 4) |= 4u;
      sub_276A4D46C(&__p, ".");
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

void sub_276B0FDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::FileDescriptor::CopyJsonNameTo(google::protobuf::FileDescriptor *this, google::protobuf::FileDescriptorProto *a2)
{
  v2 = *(this + 11);
  if (v2 == *(a2 + 14) && (v5 = *(this + 14), v5 == *(a2 + 32)))
  {
    if (v2 >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        google::protobuf::Descriptor::CopyJsonNameTo((*(this + 13) + v6), *(*(a2 + 8) + 8 * v7++ + 8));
        v6 += 144;
      }

      while (v7 < *(this + 11));
      v5 = *(this + 14);
    }

    if (v5 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        google::protobuf::FieldDescriptor::CopyJsonNameTo((*(this + 16) + v8), *(*(a2 + 17) + 8 * v9++ + 8));
        v8 += 152;
      }

      while (v9 < *(this + 14));
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 2068);
    v10 = google::protobuf::internal::LogMessage::operator<<(v12, "Cannot copy json_name to a proto of a different size.");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }
}

void sub_276B0FF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::Descriptor::CopyJsonNameTo(google::protobuf::Descriptor *this, google::protobuf::DescriptorProto *a2)
{
  v2 = *(this + 26);
  if (v2 == *(a2 + 8) && (v5 = *(this + 29), v5 == *(a2 + 14)) && *(this + 32) == *(a2 + 32))
  {
    if (v2 >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        google::protobuf::FieldDescriptor::CopyJsonNameTo((*(this + 5) + v6), *(*(a2 + 5) + 8 * v7++ + 8));
        v6 += 152;
      }

      while (v7 < *(this + 26));
      v5 = *(this + 29);
    }

    if (v5 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        google::protobuf::Descriptor::CopyJsonNameTo((*(this + 7) + v8), *(*(a2 + 8) + 8 * v9++ + 8));
        v8 += 144;
      }

      while (v9 < *(this + 29));
    }

    if (*(this + 32) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        google::protobuf::FieldDescriptor::CopyJsonNameTo((*(this + 10) + v10), *(*(a2 + 17) + 8 * v11++ + 8));
        v10 += 152;
      }

      while (v11 < *(this + 32));
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 2125);
    v12 = google::protobuf::internal::LogMessage::operator<<(v14, "Cannot copy json_name to a proto of a different size.");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }
}

void sub_276B10078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::FieldDescriptor::CopyJsonNameTo(google::protobuf::FieldDescriptor *this, google::protobuf::FieldDescriptorProto *a2)
{
  v2 = *(this + 4);
  *(a2 + 4) |= 0x10u;
  v3 = *(a2 + 1);
  if (v3)
  {
    v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
  }

  return google::protobuf::internal::ArenaStringPtr::Set(a2 + 7, v2, v3);
}

std::string *google::protobuf::FileDescriptor::CopySourceCodeInfoTo(std::string *this, google::protobuf::FileDescriptorProto *a2)
{
  size = this[6].__r_.__value_.__l.__size_;
  if (size)
  {
    v4 = this;
    this = google::protobuf::SourceCodeInfo::default_instance(this);
    if (size != this)
    {
      *(a2 + 4) |= 0x10u;
      v5 = *(a2 + 26);
      if (!v5)
      {
        v6 = *(a2 + 1);
        if (v6)
        {
          v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
        }

        v5 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo>(v6);
        *(a2 + 26) = v5;
      }

      v7 = v4[6].__r_.__value_.__l.__size_;

      return google::protobuf::SourceCodeInfo::CopyFrom(v5, v7);
    }
  }

  return this;
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
      std::__call_once(v2, &v5, sub_276B2F244);
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
    sub_276A4D46C(&__p, ".");
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
    sub_276A4D46C(&__p, ".");
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

void sub_276B105B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::FileDescriptor::DebugString(google::protobuf::FileDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::FileDescriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::FileDescriptor::DebugStringWithOptions(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v116 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v75 = 12;
  sub_276B112A4(&v86, &v75);
  sub_276A4D46C(&__p, "");
  sub_276B11384(&v75, a1, &v86, &__p, a2);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p);
  }

  sub_276B11460(&v75, a3);
  *&__p = google::protobuf::FileDescriptor::SyntaxName(*(a1 + 60));
  DWORD2(__p) = strlen(__p);
  *&v114 = 0;
  DWORD2(v114) = -1;
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
  v102 = 0;
  v103 = -1;
  v100 = 0;
  v101 = -1;
  v98 = 0;
  v99 = -1;
  *&v62 = &v104;
  *(&v62 + 1) = &v102;
  google::protobuf::strings::SubstituteAndAppend(a3, "syntax = $0;\n\n", &__p, &v114, &v112, &v110, &v108, &v106, v62, &v100, &v98);
  sub_276B11594(&v75, a3);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(v84);
  }

  *&__p = &v80;
  sub_276B281C8(&__p);
  if (SHIBYTE(v79) < 0)
  {
    operator delete(*(&v78 + 1));
  }

  if (SBYTE7(v78) < 0)
  {
    operator delete(v77[0]);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  sub_276A4D46C(&__p, "");
  v81 = 0;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  *v77 = 0u;
  v82 = *a2;
  v83 = *(a2 + 2);
  if (SHIBYTE(v90) < 0)
  {
    sub_276A07B90(&v84, __p, *(&__p + 1));
  }

  else
  {
    v84 = __p;
    v85 = v90;
  }

  if (*a2 == 1)
  {
    SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(a1, &v76);
  }

  else
  {
    SourceLocation = 0;
  }

  LOBYTE(v75) = SourceLocation;
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p);
  }

  sub_276B11460(&v75, a3);
  v74[0] = 0;
  v74[1] = 0;
  v72[1] = 0;
  v73 = v74;
  v71 = v72;
  v72[0] = 0;
  v7 = *(a1 + 36);
  if (v7)
  {
    v8 = *(a1 + 88);
    v9 = 4 * v7;
    do
    {
      sub_276B2B588(&v73, v74, v8++);
      v9 -= 4;
    }

    while (v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 96);
    v12 = 4 * v10;
    do
    {
      sub_276B2B588(&v71, v72, v11++);
      v12 -= 4;
    }

    while (v12);
  }

  if (*(a1 + 32) < 1)
  {
    goto LABEL_56;
  }

  v13 = 0;
  do
  {
    v14 = v74[0];
    if (!v74[0])
    {
LABEL_32:
      v16 = v72[0];
      if (!v72[0])
      {
LABEL_37:
        v18 = google::protobuf::FileDescriptor::dependency(a1, v13);
        v19 = *v18;
        v20 = *(*v18 + 23);
        v21 = (*v18)[1];
        if (v20 < 0)
        {
          v19 = **v18;
        }

        *&__p = v19;
        if (v20 >= 0)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        DWORD2(__p) = v22;
        *&v114 = 0;
        DWORD2(v114) = -1;
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
        v102 = 0;
        v103 = -1;
        v100 = 0;
        v101 = -1;
        v98 = 0;
        v99 = -1;
        *&v63 = &v104;
        *(&v63 + 1) = &v102;
        google::protobuf::strings::SubstituteAndAppend(a3, "import $0;\n", &__p, &v114, &v112, &v110, &v108, &v106, v63, &v100, &v98);
        goto LABEL_55;
      }

      while (1)
      {
        v17 = *(v16 + 7);
        if (v13 >= v17)
        {
          if (v17 >= v13)
          {
            v28 = google::protobuf::FileDescriptor::dependency(a1, v13);
            v29 = *v28;
            v30 = *(*v28 + 23);
            v31 = (*v28)[1];
            if (v30 < 0)
            {
              v29 = **v28;
            }

            *&__p = v29;
            if (v30 >= 0)
            {
              v32 = v30;
            }

            else
            {
              v32 = v31;
            }

            DWORD2(__p) = v32;
            *&v114 = 0;
            DWORD2(v114) = -1;
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
            v102 = 0;
            v103 = -1;
            v100 = 0;
            v101 = -1;
            v98 = 0;
            v99 = -1;
            *&v65 = &v104;
            *(&v65 + 1) = &v102;
            google::protobuf::strings::SubstituteAndAppend(a3, "import weak $0;\n", &__p, &v114, &v112, &v110, &v108, &v106, v65, &v100, &v98);
            goto LABEL_55;
          }

          ++v16;
        }

        v16 = *v16;
        if (!v16)
        {
          goto LABEL_37;
        }
      }
    }

    while (1)
    {
      v15 = *(v14 + 7);
      if (v13 >= v15)
      {
        break;
      }

LABEL_31:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_32;
      }
    }

    if (v15 < v13)
    {
      ++v14;
      goto LABEL_31;
    }

    v23 = google::protobuf::FileDescriptor::dependency(a1, v13);
    v24 = *v23;
    v25 = *(*v23 + 23);
    v26 = (*v23)[1];
    if (v25 < 0)
    {
      v24 = **v23;
    }

    *&__p = v24;
    if (v25 >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    DWORD2(__p) = v27;
    *&v114 = 0;
    DWORD2(v114) = -1;
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
    v102 = 0;
    v103 = -1;
    v100 = 0;
    v101 = -1;
    v98 = 0;
    v99 = -1;
    *&v64 = &v104;
    *(&v64 + 1) = &v102;
    google::protobuf::strings::SubstituteAndAppend(a3, "import public $0;\n", &__p, &v114, &v112, &v110, &v108, &v106, v64, &v100, &v98);
LABEL_55:
    ++v13;
  }

  while (v13 < *(a1 + 32));
LABEL_56:
  v33 = *(a1 + 8);
  if ((*(v33 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v33 + 8))
    {
      goto LABEL_75;
    }
  }

  else if (!*(v33 + 23))
  {
    goto LABEL_75;
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  LODWORD(__p) = 2;
  sub_276B112A4(&v68, &__p);
  sub_276A4D46C(&v114, "");
  sub_276B11384(&__p, a1, &v68, &v114, a2);
  if (v115 < 0)
  {
    operator delete(v114);
  }

  sub_276B11460(&__p, a3);
  v34 = *(a1 + 8);
  v35 = *(v34 + 23);
  v36 = v34[1];
  if (v35 < 0)
  {
    v34 = *v34;
  }

  *&v114 = v34;
  if (v35 >= 0)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  DWORD2(v114) = v37;
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
  v102 = 0;
  v103 = -1;
  v100 = 0;
  v101 = -1;
  v98 = 0;
  v99 = -1;
  v86 = 0;
  LODWORD(v87) = -1;
  *&v66 = &v102;
  *(&v66 + 1) = &v100;
  google::protobuf::strings::SubstituteAndAppend(a3, "package $0;\n\n", &v114, &v112, &v110, &v108, &v106, &v104, v66, &v98, &v86);
  sub_276B11594(&__p, a3);
  if (v97 < 0)
  {
    operator delete(v96);
  }

  *&v114 = &v95;
  sub_276B281C8(&v114);
  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v92 < 0)
  {
    operator delete(v91);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

LABEL_75:
  if (sub_276B116A8(0, *(a1 + 136), *(a1 + 16), a3))
  {
    std::string::append(a3, "\n");
  }

  if (*(a1 + 48) >= 1)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      google::protobuf::EnumDescriptor::DebugString(*(a1 + 112) + v38, 0, a3, a2);
      std::string::append(a3, "\n");
      ++v39;
      v38 += 80;
    }

    while (v39 < *(a1 + 48));
  }

  v87 = 0;
  v88 = 0;
  v86 = &v87;
  if (*(a1 + 56) >= 1)
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = *(a1 + 128);
      v43 = v42 + v40;
      v44 = *(v42 + v40 + 48);
      if (v44)
      {
        v112 = google::protobuf::FieldDescriptor::TypeOnceInit;
        v110 = v42 + v40;
        if (atomic_load_explicit(v44, memory_order_acquire) != -1)
        {
          *&__p = &v112;
          *(&__p + 1) = &v110;
          *&v114 = &__p;
          std::__call_once(v44, &v114, sub_2769C149C);
        }
      }

      if (*(v43 + 56) == 10)
      {
        *&__p = google::protobuf::FieldDescriptor::message_type((*(a1 + 128) + v40));
        sub_276B2B7C8(&v86, &__p);
      }

      ++v41;
      v40 += 152;
    }

    while (v41 < *(a1 + 56));
  }

  v45 = *(a1 + 44);
  if (v45 >= 1)
  {
    for (i = 0; i < v45; ++i)
    {
      v47 = *(a1 + 104) + 144 * i;
      for (j = v87; j; j = *j)
      {
        v49 = j[4];
        if (v47 >= v49)
        {
          if (v49 >= v47)
          {
            goto LABEL_96;
          }

          ++j;
        }
      }

      google::protobuf::Descriptor::DebugString(v47, 0, a3, a2, 1);
      std::string::append(a3, "\n");
      v45 = *(a1 + 44);
LABEL_96:
      ;
    }
  }

  if (*(a1 + 52) >= 1)
  {
    v50 = 0;
    v51 = 0;
    do
    {
      google::protobuf::ServiceDescriptor::DebugString(*(a1 + 120) + v50, a3, a2);
      std::string::append(a3, "\n");
      ++v51;
      v50 += 48;
    }

    while (v51 < *(a1 + 52));
  }

  if (*(a1 + 56) >= 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = 80;
    do
    {
      v55 = *(a1 + 128);
      if (*(v55 + v54) != v53)
      {
        v53 = *(v55 + v54);
        if (v54 != 80)
        {
          std::string::append(a3, "}\n\n");
          v53 = *(*(a1 + 128) + v54);
        }

        v56 = *(v53 + 8);
        v57 = *(v56 + 23);
        v58 = v56[1];
        if (v57 < 0)
        {
          v56 = *v56;
        }

        *&__p = v56;
        if (v57 >= 0)
        {
          v59 = v57;
        }

        else
        {
          v59 = v58;
        }

        DWORD2(__p) = v59;
        *&v114 = 0;
        DWORD2(v114) = -1;
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
        v102 = 0;
        v103 = -1;
        v100 = 0;
        v101 = -1;
        v98 = 0;
        v99 = -1;
        *(&v67 + 1) = &v102;
        *&v67 = &v104;
        google::protobuf::strings::SubstituteAndAppend(a3, "extend .$0 {\n", &__p, &v114, &v112, &v110, &v108, &v106, v67, &v100, &v98);
        v55 = *(a1 + 128);
      }

      google::protobuf::FieldDescriptor::DebugString(v55 + v54 - 80, 1, a3, a2);
      ++v52;
      v60 = *(a1 + 56);
      v54 += 152;
    }

    while (v52 < v60);
    if (v60 > 0)
    {
      std::string::append(a3, "}\n\n");
    }
  }

  sub_276B11594(&v75, a3);
  sub_276A579A4(&v86, v87);
  sub_276A579A4(&v71, v72[0]);
  sub_276A579A4(&v73, v74[0]);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(v84);
  }

  *&__p = &v80;
  sub_276B281C8(&__p);
  if (SHIBYTE(v79) < 0)
  {
    operator delete(*(&v78 + 1));
  }

  if (SBYTE7(v78) < 0)
  {
    operator delete(v77[0]);
  }

  v61 = *MEMORY[0x277D85DE8];
}

void sub_276B11140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  sub_276B26880(v54 + 8);
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (*(v53 + 23) < 0)
  {
    operator delete(*v53);
  }

  _Unwind_Resume(a1);
}

void sub_276B112A4(const void **a1, _DWORD *a2)
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
      sub_2769BA860();
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
      sub_276B2B540(a1, v12);
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

uint64_t sub_276B11384(uint64_t a1, uint64_t a2, std::string **a3, __int128 *a4, __int16 *a5)
{
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v9 = *a5;
  *(a1 + 98) = *(a5 + 2);
  *(a1 + 96) = v9;
  if (*(a4 + 23) < 0)
  {
    sub_276A07B90((a1 + 104), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 120) = *(a4 + 2);
    *(a1 + 104) = v10;
  }

  if (*a5 == 1)
  {
    SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(a2, a3, a1 + 8);
  }

  else
  {
    SourceLocation = 0;
  }

  *a1 = SourceLocation;
  return a1;
}

void sub_276B11460(uint64_t a1, std::string *a2)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 72);
    for (i = *(a1 + 80); v4 != i; v4 += 24)
    {
      sub_276B268DC(a1, v4, &__p);
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

    sub_276B268DC(a1, a1 + 24, &__p);
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

void sub_276B11574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276B11594(uint64_t a1, std::string *a2)
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

    sub_276B268DC(a1, a1 + 48, &__p);
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

void sub_276B11620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B1163C(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 72);
  sub_276B281C8(&v3);
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

BOOL sub_276B116A8(int a1, const google::protobuf::Message *a2, uint64_t a3, std::string *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  sub_276B13C30(&__p, 2 * a1, 32);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v8 = sub_276B26B20(a1, a2, a3, &v20);
  v9 = v20;
  if (v8)
  {
    v10 = v21;
    if (v20 != v21)
    {
      do
      {
        v11 = v25;
        p_p = __p;
        if (v25 >= 0)
        {
          p_p = &__p;
        }

        v44 = p_p;
        if (v25 < 0)
        {
          v11 = v24;
        }

        v45 = v11;
        v13 = *(v9 + 23);
        v14 = *v9;
        v15 = v9[1];
        if (v13 >= 0)
        {
          v14 = v9;
        }

        v42 = v14;
        if (v13 < 0)
        {
          LODWORD(v13) = v15;
        }

        v43 = v13;
        v40 = 0;
        v41 = -1;
        v38 = 0;
        v39 = -1;
        v36 = 0;
        v37 = -1;
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
        *&v19 = &v32;
        *(&v19 + 1) = &v30;
        google::protobuf::strings::SubstituteAndAppend(a4, "$0option $1;\n", &v44, &v42, &v40, &v38, &v36, &v34, v19, &v28, &v26);
        v9 += 3;
      }

      while (v9 != v10);
      v9 = v20;
    }
  }

  v16 = v21;
  v44 = &v20;
  sub_276B281C8(&v44);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  result = v9 != v16;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_276B11874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 - 144) = &a13;
  sub_276B281C8((v21 - 144));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::EnumDescriptor::DebugString(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v79 = *MEMORY[0x277D85DE8];
  sub_276B13C30(__b, 2 * a2, 32);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  *v47 = 0u;
  v51 = *a4;
  v52 = *(a4 + 2);
  if (SHIBYTE(v56) < 0)
  {
    sub_276A07B90(&v53, __b[0], __b[1]);
  }

  else
  {
    v53 = *__b;
    v54 = v56;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::EnumDescriptor::GetSourceLocation(a1, &v45);
  }

  else
  {
    SourceLocation = 0;
  }

  v44[0] = SourceLocation;
  sub_276B11460(v44, a3);
  v9 = SHIBYTE(v56);
  v10 = __b;
  if (v56 < 0)
  {
    v10 = __b[0];
  }

  p_data = v10;
  if (v56 < 0)
  {
    v9 = __b[1];
  }

  v77 = v9;
  v11 = *a1;
  v12 = *(*a1 + 23);
  v13 = *(*a1 + 8);
  if (v12 < 0)
  {
    v11 = **a1;
  }

  v73 = v11;
  if (v12 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v74 = v14;
  v71 = 0;
  v72 = -1;
  v69 = 0;
  v70 = -1;
  v67 = 0;
  v68 = -1;
  v65 = 0;
  v66 = -1;
  v63 = 0;
  v64 = -1;
  v61 = 0;
  v62 = -1;
  v59 = 0;
  v60 = -1;
  v57 = 0;
  v58 = -1;
  *&v36 = &v63;
  *(&v36 + 1) = &v61;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0enum $1 {\n", &p_data, &v73, &v71, &v69, &v67, &v65, v36, &v59, &v57);
  sub_276B116A8(a2 + 1, *(a1 + 32), *(*(a1 + 16) + 16), a3);
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
    v17 = SHIBYTE(v56);
    v18 = __b;
    if (v56 < 0)
    {
      v18 = __b[0];
    }

    p_data = v18;
    if (v56 < 0)
    {
      v17 = __b[1];
    }

    v77 = v17;
    v73 = 0;
    v74 = -1;
    v71 = 0;
    v72 = -1;
    v69 = 0;
    v70 = -1;
    v67 = 0;
    v68 = -1;
    v65 = 0;
    v66 = -1;
    v63 = 0;
    v64 = -1;
    v61 = 0;
    v62 = -1;
    v59 = 0;
    v60 = -1;
    v57 = 0;
    v58 = -1;
    *&v37 = &v63;
    *(&v37 + 1) = &v61;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0  reserved ", &p_data, &v73, &v71, &v69, &v67, &v65, v37, &v59, &v57);
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
          p_data = google::protobuf::FastInt32ToBuffer(v23, v78, v19);
          v77 = strlen(p_data);
          v73 = 0;
          v74 = -1;
          v71 = 0;
          v72 = -1;
          v69 = 0;
          v70 = -1;
          v67 = 0;
          v68 = -1;
          v65 = 0;
          v66 = -1;
          v63 = 0;
          v64 = -1;
          v61 = 0;
          v62 = -1;
          v59 = 0;
          v60 = -1;
          v57 = 0;
          v58 = -1;
          *&v38 = &v63;
          *(&v38 + 1) = &v61;
          google::protobuf::strings::SubstituteAndAppend(a3, "$0, ", &p_data, &v73, &v71, &v69, &v67, &v65, v38, &v59, &v57);
        }

        else
        {
          p_data = google::protobuf::FastInt32ToBuffer(*v22, v78, v19);
          v77 = strlen(p_data);
          v73 = google::protobuf::FastInt32ToBuffer(v22[1], v75, v24);
          v74 = strlen(v73);
          v71 = 0;
          v72 = -1;
          v69 = 0;
          v70 = -1;
          v67 = 0;
          v68 = -1;
          v65 = 0;
          v66 = -1;
          v63 = 0;
          v64 = -1;
          v61 = 0;
          v62 = -1;
          v59 = 0;
          v60 = -1;
          v57 = 0;
          v58 = -1;
          *&v39 = &v63;
          *(&v39 + 1) = &v61;
          google::protobuf::strings::SubstituteAndAppend(a3, "$0 to $1, ", &p_data, &v73, &v71, &v69, &v67, &v65, v39, &v59, &v57);
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
    v26 = SHIBYTE(v56);
    v27 = __b;
    if (v56 < 0)
    {
      v27 = __b[0];
    }

    p_data = v27;
    if (v56 < 0)
    {
      v26 = __b[1];
    }

    v77 = v26;
    v73 = 0;
    v74 = -1;
    v71 = 0;
    v72 = -1;
    v69 = 0;
    v70 = -1;
    v67 = 0;
    v68 = -1;
    v65 = 0;
    v66 = -1;
    v63 = 0;
    v64 = -1;
    v61 = 0;
    v62 = -1;
    v59 = 0;
    v60 = -1;
    v57 = 0;
    v58 = -1;
    *&v40 = &v63;
    *(&v40 + 1) = &v61;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0  reserved ", &p_data, &v73, &v71, &v69, &v67, &v65, v40, &v59, &v57);
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

        v77 = v30;
        v73 = 0;
        v74 = -1;
        v71 = 0;
        v72 = -1;
        v69 = 0;
        v70 = -1;
        v67 = 0;
        v68 = -1;
        v65 = 0;
        v66 = -1;
        v63 = 0;
        v64 = -1;
        v61 = 0;
        v62 = -1;
        v59 = 0;
        v60 = -1;
        v57 = 0;
        v58 = -1;
        *&v41 = &v63;
        *(&v41 + 1) = &v61;
        google::protobuf::strings::SubstituteAndAppend(a3, "$0, ", &p_data, &v73, &v71, &v69, &v67, &v65, v41, &v59, &v57);
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

  v33 = SHIBYTE(v56);
  v34 = __b;
  if (v56 < 0)
  {
    v34 = __b[0];
  }

  p_data = v34;
  if (v56 < 0)
  {
    v33 = __b[1];
  }

  v77 = v33;
  v73 = 0;
  v74 = -1;
  v71 = 0;
  v72 = -1;
  v69 = 0;
  v70 = -1;
  v67 = 0;
  v68 = -1;
  v65 = 0;
  v66 = -1;
  v63 = 0;
  v64 = -1;
  v61 = 0;
  v62 = -1;
  v59 = 0;
  v60 = -1;
  v57 = 0;
  v58 = -1;
  *&v42 = &v63;
  *(&v42 + 1) = &v61;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &p_data, &v73, &v71, &v69, &v67, &v65, v42, &v59, &v57);
  sub_276B11594(v44, a3);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  p_data = &v49;
  sub_276B281C8(&p_data);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }

  if (SHIBYTE(v47[0]) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(__b[0]);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_276B12030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_276B26880(v43 + 8);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::Descriptor::DebugString(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v126[5] = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 75) & 1) == 0)
  {
    sub_276B13C30(__b, 2 * a2, 32);
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    *v94 = 0u;
    *v95 = 0u;
    v99 = *a4;
    v100 = *(a4 + 2);
    if (SHIBYTE(v104) < 0)
    {
      sub_276A07B90(&v101, __b[0], __b[1]);
    }

    else
    {
      v101 = *__b;
      v102 = v104;
    }

    if (*a4 == 1)
    {
      SourceLocation = google::protobuf::Descriptor::GetSourceLocation(a1, &v93);
    }

    else
    {
      SourceLocation = 0;
    }

    v92[0] = SourceLocation;
    sub_276B11460(v92, a3);
    if (a5)
    {
      v11 = SHIBYTE(v104);
      v12 = __b;
      if (v104 < 0)
      {
        v12 = __b[0];
      }

      p_data = v12;
      if (v104 < 0)
      {
        v11 = __b[1];
      }

      LODWORD(v126[0]) = v11;
      v13 = *a1;
      v14 = *(*a1 + 23);
      v15 = *(*a1 + 8);
      if (v14 < 0)
      {
        v13 = **a1;
      }

      v122 = v13;
      if (v14 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      v123 = v16;
      v119 = 0;
      v120 = -1;
      v117 = 0;
      v118 = -1;
      v115 = 0;
      v116 = -1;
      v113 = 0;
      v114 = -1;
      v111 = 0;
      v112 = -1;
      v109 = 0;
      v110 = -1;
      v107 = 0;
      v108 = -1;
      v105 = 0;
      v106 = -1;
      *&v78 = &v111;
      *(&v78 + 1) = &v109;
      google::protobuf::strings::SubstituteAndAppend(a3, "$0message $1", &p_data, &v122, &v119, &v117, &v115, &v113, v78, &v107, &v105);
    }

    std::string::append(a3, " {\n");
    sub_276B116A8(a2 + 1, *(a1 + 32), *(*(a1 + 16) + 16), a3);
    v91[0] = 0;
    v91[1] = 0;
    v90 = v91;
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
          v119 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v117 = v20 + v18;
          if (atomic_load_explicit(v22, memory_order_acquire) != -1)
          {
            p_data = &v119;
            v126[0] = &v117;
            v122 = &p_data;
            std::__call_once(v22, &v122, sub_2769C149C);
          }
        }

        if (*(v21 + 56) == 10)
        {
          p_data = google::protobuf::FieldDescriptor::message_type((*(a1 + 40) + v18));
          sub_276B2B7C8(&v90, &p_data);
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
          v119 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v117 = v25 + v23;
          if (atomic_load_explicit(v27, memory_order_acquire) != -1)
          {
            p_data = &v119;
            v126[0] = &v117;
            v122 = &p_data;
            std::__call_once(v27, &v122, sub_2769C149C);
          }
        }

        if (*(v26 + 56) == 10)
        {
          p_data = google::protobuf::FieldDescriptor::message_type((*(a1 + 80) + v23));
          sub_276B2B7C8(&v90, &p_data);
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
        for (j = v91[0]; j; j = *j)
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
        v41 = SHIBYTE(v104);
        v42 = __b[0];
        if (v104 >= 0)
        {
          v42 = __b;
        }

        p_data = v42;
        if (v104 < 0)
        {
          v41 = __b[1];
        }

        LODWORD(v126[0]) = v41;
        v122 = google::protobuf::FastInt32ToBuffer(*(*(a1 + 72) + v39), v124, v17);
        v123 = strlen(v122);
        v119 = google::protobuf::FastInt32ToBuffer((*(*(a1 + 72) + v39 + 4) - 1), v121, v43);
        v120 = strlen(v119);
        v117 = 0;
        v118 = -1;
        v115 = 0;
        v116 = -1;
        v113 = 0;
        v114 = -1;
        v111 = 0;
        v112 = -1;
        v109 = 0;
        v110 = -1;
        v107 = 0;
        v108 = -1;
        v105 = 0;
        v106 = -1;
        *(&v79 + 1) = &v109;
        *&v79 = &v111;
        google::protobuf::strings::SubstituteAndAppend(a3, "$0  extensions $1 to $2;\n", &p_data, &v122, &v119, &v117, &v115, &v113, v79, &v107, &v105);
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
            v48 = SHIBYTE(v104);
            v49 = __b[0];
            if (v104 >= 0)
            {
              v49 = __b;
            }

            p_data = v49;
            if (v104 < 0)
            {
              v48 = __b[1];
            }

            LODWORD(v126[0]) = v48;
            v122 = 0;
            v123 = -1;
            v119 = 0;
            v120 = -1;
            v117 = 0;
            v118 = -1;
            v115 = 0;
            v116 = -1;
            v113 = 0;
            v114 = -1;
            v111 = 0;
            v112 = -1;
            v109 = 0;
            v110 = -1;
            v107 = 0;
            v108 = -1;
            v105 = 0;
            v106 = -1;
            *(&v80 + 1) = &v109;
            *&v80 = &v111;
            google::protobuf::strings::SubstituteAndAppend(a3, "$0  }\n", &p_data, &v122, &v119, &v117, &v115, &v113, v80, &v107, &v105);
            v45 = *(*(a1 + 80) + v46);
          }

          v50 = SHIBYTE(v104);
          v51 = __b[0];
          if (v104 >= 0)
          {
            v51 = __b;
          }

          p_data = v51;
          if (v104 < 0)
          {
            v50 = __b[1];
          }

          LODWORD(v126[0]) = v50;
          v52 = *(v45 + 8);
          v53 = v52[23];
          v54 = *(v52 + 1);
          if (v53 < 0)
          {
            v52 = *v52;
          }

          v122 = v52;
          if (v53 >= 0)
          {
            v55 = v53;
          }

          else
          {
            v55 = v54;
          }

          v123 = v55;
          v119 = 0;
          v120 = -1;
          v117 = 0;
          v118 = -1;
          v115 = 0;
          v116 = -1;
          v113 = 0;
          v114 = -1;
          v111 = 0;
          v112 = -1;
          v109 = 0;
          v110 = -1;
          v107 = 0;
          v108 = -1;
          v105 = 0;
          v106 = -1;
          *(&v81 + 1) = &v109;
          *&v81 = &v111;
          google::protobuf::strings::SubstituteAndAppend(a3, "$0  extend .$1 {\n", &p_data, &v122, &v119, &v117, &v115, &v113, v81, &v107, &v105);
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
        v57 = SHIBYTE(v104);
        v58 = __b;
        if (v104 < 0)
        {
          v58 = __b[0];
        }

        p_data = v58;
        if (v104 < 0)
        {
          v57 = __b[1];
        }

        LODWORD(v126[0]) = v57;
        v122 = 0;
        v123 = -1;
        v119 = 0;
        v120 = -1;
        v117 = 0;
        v118 = -1;
        v115 = 0;
        v116 = -1;
        v113 = 0;
        v114 = -1;
        v111 = 0;
        v112 = -1;
        v109 = 0;
        v110 = -1;
        v107 = 0;
        v108 = -1;
        v105 = 0;
        v106 = -1;
        *&v82 = &v111;
        *(&v82 + 1) = &v109;
        google::protobuf::strings::SubstituteAndAppend(a3, "$0  }\n", &p_data, &v122, &v119, &v117, &v115, &v113, v82, &v107, &v105);
      }
    }

    if (*(a1 + 132) >= 1)
    {
      v59 = SHIBYTE(v104);
      v60 = __b;
      if (v104 < 0)
      {
        v60 = __b[0];
      }

      p_data = v60;
      if (v104 < 0)
      {
        v59 = __b[1];
      }

      LODWORD(v126[0]) = v59;
      v122 = 0;
      v123 = -1;
      v119 = 0;
      v120 = -1;
      v117 = 0;
      v118 = -1;
      v115 = 0;
      v116 = -1;
      v113 = 0;
      v114 = -1;
      v111 = 0;
      v112 = -1;
      v109 = 0;
      v110 = -1;
      v107 = 0;
      v108 = -1;
      v105 = 0;
      v106 = -1;
      *&v83 = &v111;
      *(&v83 + 1) = &v109;
      google::protobuf::strings::SubstituteAndAppend(a3, "$0  reserved ", &p_data, &v122, &v119, &v117, &v115, &v113, v83, &v107, &v105);
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
            p_data = google::protobuf::FastInt32ToBuffer(v65, v126 + 4, v61);
            LODWORD(v126[0]) = strlen(p_data);
            v122 = 0;
            v123 = -1;
            v119 = 0;
            v120 = -1;
            v117 = 0;
            v118 = -1;
            v115 = 0;
            v116 = -1;
            v113 = 0;
            v114 = -1;
            v111 = 0;
            v112 = -1;
            v109 = 0;
            v110 = -1;
            v107 = 0;
            v108 = -1;
            v105 = 0;
            v106 = -1;
            *&v84 = &v111;
            *(&v84 + 1) = &v109;
            google::protobuf::strings::SubstituteAndAppend(a3, "$0, ", &p_data, &v122, &v119, &v117, &v115, &v113, v84, &v107, &v105);
          }

          else
          {
            p_data = google::protobuf::FastInt32ToBuffer(v65, v126 + 4, v61);
            LODWORD(v126[0]) = strlen(p_data);
            v122 = google::protobuf::FastInt32ToBuffer((v64[1] - 1), v124, v66);
            v123 = strlen(v122);
            v119 = 0;
            v120 = -1;
            v117 = 0;
            v118 = -1;
            v115 = 0;
            v116 = -1;
            v113 = 0;
            v114 = -1;
            v111 = 0;
            v112 = -1;
            v109 = 0;
            v110 = -1;
            v107 = 0;
            v108 = -1;
            v105 = 0;
            v106 = -1;
            *&v85 = &v111;
            *(&v85 + 1) = &v109;
            google::protobuf::strings::SubstituteAndAppend(a3, "$0 to $1, ", &p_data, &v122, &v119, &v117, &v115, &v113, v85, &v107, &v105);
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
      v68 = SHIBYTE(v104);
      v69 = __b;
      if (v104 < 0)
      {
        v69 = __b[0];
      }

      p_data = v69;
      if (v104 < 0)
      {
        v68 = __b[1];
      }

      LODWORD(v126[0]) = v68;
      v122 = 0;
      v123 = -1;
      v119 = 0;
      v120 = -1;
      v117 = 0;
      v118 = -1;
      v115 = 0;
      v116 = -1;
      v113 = 0;
      v114 = -1;
      v111 = 0;
      v112 = -1;
      v109 = 0;
      v110 = -1;
      v107 = 0;
      v108 = -1;
      v105 = 0;
      v106 = -1;
      *&v86 = &v111;
      *(&v86 + 1) = &v109;
      google::protobuf::strings::SubstituteAndAppend(a3, "$0  reserved ", &p_data, &v122, &v119, &v117, &v115, &v113, v86, &v107, &v105);
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

          LODWORD(v126[0]) = v72;
          v122 = 0;
          v123 = -1;
          v119 = 0;
          v120 = -1;
          v117 = 0;
          v118 = -1;
          v115 = 0;
          v116 = -1;
          v113 = 0;
          v114 = -1;
          v111 = 0;
          v112 = -1;
          v109 = 0;
          v110 = -1;
          v107 = 0;
          v108 = -1;
          v105 = 0;
          v106 = -1;
          *&v87 = &v111;
          *(&v87 + 1) = &v109;
          google::protobuf::strings::SubstituteAndAppend(a3, "$0, ", &p_data, &v122, &v119, &v117, &v115, &v113, v87, &v107, &v105);
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

    v75 = SHIBYTE(v104);
    v76 = __b;
    if (v104 < 0)
    {
      v76 = __b[0];
    }

    p_data = v76;
    if (v104 < 0)
    {
      v75 = __b[1];
    }

    LODWORD(v126[0]) = v75;
    v122 = 0;
    v123 = -1;
    v119 = 0;
    v120 = -1;
    v117 = 0;
    v118 = -1;
    v115 = 0;
    v116 = -1;
    v113 = 0;
    v114 = -1;
    v111 = 0;
    v112 = -1;
    v109 = 0;
    v110 = -1;
    v107 = 0;
    v108 = -1;
    v105 = 0;
    v106 = -1;
    *&v88 = &v111;
    *(&v88 + 1) = &v109;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &p_data, &v122, &v119, &v117, &v115, &v113, v88, &v107, &v105);
    sub_276B11594(v92, a3);
    sub_276A579A4(&v90, v91[0]);
    if (SHIBYTE(v102) < 0)
    {
      operator delete(v101);
    }

    p_data = &v97;
    sub_276B281C8(&p_data);
    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95[1]);
    }

    if (SHIBYTE(v95[0]) < 0)
    {
      operator delete(v94[0]);
    }

    if (SHIBYTE(v104) < 0)
    {
      operator delete(__b[0]);
    }
  }

  v77 = *MEMORY[0x277D85DE8];
}

void sub_276B12E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_276B26880(v47 + 8);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::ServiceDescriptor::DebugString(uint64_t a1, std::string *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  sub_276A4D46C(&v44, "");
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  *v18 = 0u;
  v22 = *a3;
  v23 = *(a3 + 2);
  if (SHIBYTE(v45) < 0)
  {
    sub_276A07B90(&__p, v44, *(&v44 + 1));
  }

  else
  {
    __p = v44;
    v25 = v45;
  }

  if (*a3 == 1)
  {
    SourceLocation = google::protobuf::ServiceDescriptor::GetSourceLocation(a1, &v16);
  }

  else
  {
    SourceLocation = 0;
  }

  v15[0] = SourceLocation;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  sub_276B11460(v15, a2);
  v7 = *a1;
  v8 = *(*a1 + 23);
  v9 = *(*a1 + 8);
  if (v8 < 0)
  {
    v7 = **a1;
  }

  *&v44 = v7;
  if (v8 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  DWORD2(v44) = v10;
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
  v32 = 0;
  v33 = -1;
  v30 = 0;
  v31 = -1;
  v28 = 0;
  v29 = -1;
  v26 = 0;
  v27 = -1;
  *&v14 = &v32;
  *(&v14 + 1) = &v30;
  google::protobuf::strings::SubstituteAndAppend(a2, "service $0 {\n", &v44, &v42, &v40, &v38, &v36, &v34, v14, &v28, &v26);
  sub_276B116A8(1, *(a1 + 24), *(*(a1 + 16) + 16), a2);
  if (*(a1 + 40) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      google::protobuf::MethodDescriptor::DebugString(*(a1 + 32) + v11, 1, a2, a3);
      ++v12;
      v11 += 104;
    }

    while (v12 < *(a1 + 40));
  }

  std::string::append(a2, "}\n");
  sub_276B11594(v15, a2);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  *&v44 = &v20;
  sub_276B281C8(&v44);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  if (SHIBYTE(v18[0]) < 0)
  {
    operator delete(v17[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_276B131C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_276B26880(v32 + 8);
  if (*(v33 - 81) < 0)
  {
    operator delete(*(v33 - 104));
  }

  _Unwind_Resume(a1);
}

void google::protobuf::FieldDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, uint64_t a4)
{
  v83 = *MEMORY[0x277D85DE8];
  sub_276B13C30(__b, 2 * a2, 32);
  memset(&v50, 0, sizeof(v50));
  v8 = *(a1 + 48);
  if (v8)
  {
    v80 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v78 = a1;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v56.__r_.__value_.__r.__words[0] = &v80;
      v56.__r_.__value_.__l.__size_ = &v78;
      v82[0].__r_.__value_.__r.__words[0] = &v56;
      std::__call_once(v8, v82, sub_2769C149C);
    }
  }

  if (*(a1 + 56) == 11 && *(*(*(a1 + 104) + 32) + 75) == 1)
  {
    v9 = google::protobuf::FieldDescriptor::message_type(a1);
    google::protobuf::FieldDescriptor::FieldTypeNameDebugString(*(v9 + 40), &v53);
    v10 = v55;
    v11 = v53;
    if (v55 >= 0)
    {
      v11 = &v53;
    }

    v56.__r_.__value_.__r.__words[0] = v11;
    if (v55 < 0)
    {
      v10 = v54;
    }

    LODWORD(v56.__r_.__value_.__r.__words[1]) = v10;
    v12 = google::protobuf::FieldDescriptor::message_type(a1);
    google::protobuf::FieldDescriptor::FieldTypeNameDebugString((*(v12 + 40) + 152), &__p);
    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    v82[0].__r_.__value_.__r.__words[0] = p_p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__r.__words[1];
    }

    LODWORD(v82[0].__r_.__value_.__r.__words[1]) = v13;
    v80 = 0;
    LODWORD(v81) = -1;
    v78 = 0;
    v79 = -1;
    v76 = 0;
    v77 = -1;
    v74 = 0;
    LODWORD(v75) = -1;
    v72 = 0;
    v73 = -1;
    v70 = 0;
    v71 = -1;
    v68 = 0;
    v69 = -1;
    v66 = 0;
    v67 = -1;
    *&v45 = &v72;
    *(&v45 + 1) = &v70;
    google::protobuf::strings::SubstituteAndAppend(&v50, "map<$0, $1>", &v56, v82, &v80, &v78, &v76, &v74, v45, &v68, &v66);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v55 < 0)
    {
      operator delete(v53);
    }
  }

  else
  {
    google::protobuf::FieldDescriptor::FieldTypeNameDebugString(a1, &v56);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v50 = v56;
  }

  v56.__r_.__value_.__r.__words[0] = google::protobuf::FieldDescriptor::kLabelToName[*(a1 + 60)];
  v56.__r_.__value_.__l.__size_ = strlen(v56.__r_.__value_.__l.__data_);
  v82[0].__r_.__value_.__r.__words[0] = " ";
  v82[0].__r_.__value_.__l.__size_ = 1;
  google::protobuf::StrCat(&v56, v82, &__p);
  v15 = *(a1 + 48);
  if (v15)
  {
    v80 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v78 = a1;
    if (atomic_load_explicit(v15, memory_order_acquire) != -1)
    {
      v56.__r_.__value_.__r.__words[0] = &v80;
      v56.__r_.__value_.__l.__size_ = &v78;
      v82[0].__r_.__value_.__r.__words[0] = &v56;
      std::__call_once(v15, v82, sub_2769C149C);
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

  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v62 = *a4;
  v63 = *(a4 + 2);
  if (SHIBYTE(v52) < 0)
  {
    sub_276A07B90(&v64, __b[0], __b[1]);
  }

  else
  {
    v64 = *__b;
    v65 = v52;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::FieldDescriptor::GetSourceLocation(a1, &v56.__r_.__value_.__l.__size_);
  }

  else
  {
    SourceLocation = 0;
  }

  v56.__r_.__value_.__s.__data_[0] = SourceLocation;
  sub_276B11460(&v56, a3);
  v18 = SHIBYTE(v52);
  v19 = __b;
  if (v52 < 0)
  {
    v19 = __b[0];
  }

  v82[0].__r_.__value_.__r.__words[0] = v19;
  if (v52 < 0)
  {
    v18 = __b[1];
  }

  LODWORD(v82[0].__r_.__value_.__r.__words[1]) = v18;
  v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v21 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  v80 = v21;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = __p.__r_.__value_.__r.__words[1];
  }

  LODWORD(v81) = v20;
  v22 = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
  v23 = &v50;
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v50.__r_.__value_.__r.__words[0];
  }

  v78 = v23;
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v50.__r_.__value_.__r.__words[1];
  }

  v79 = v22;
  v24 = *(a1 + 48);
  if (v24)
  {
    v70 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v68 = a1;
    if (atomic_load_explicit(v24, memory_order_acquire) != -1)
    {
      v74 = &v70;
      v75 = &v68;
      v72 = &v74;
      std::__call_once(v24, &v72, sub_2769C149C);
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

  v76 = v26;
  if (v27 >= 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v77 = v29;
  v74 = google::protobuf::FastInt32ToBuffer(*(a1 + 68), &v75 + 4, v17);
  LODWORD(v75) = strlen(v74);
  v72 = 0;
  v73 = -1;
  v70 = 0;
  v71 = -1;
  v68 = 0;
  v69 = -1;
  v66 = 0;
  v67 = -1;
  v53 = 0;
  LODWORD(v54) = -1;
  *&v46 = &v70;
  *(&v46 + 1) = &v68;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0$1$2 $3 = $4", v82, &v80, &v78, &v76, &v74, &v72, v46, &v66, &v53);
  if (*(a1 + 64) == 1)
  {
    google::protobuf::FieldDescriptor::DefaultValueAsString(a1, 1, v30, &v48);
    v31 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
    v32 = v48.__r_.__value_.__r.__words[0];
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v48;
    }

    v82[0].__r_.__value_.__r.__words[0] = v32;
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v48.__r_.__value_.__r.__words[1];
    }

    LODWORD(v82[0].__r_.__value_.__r.__words[1]) = v31;
    v80 = 0;
    LODWORD(v81) = -1;
    v78 = 0;
    v79 = -1;
    v76 = 0;
    v77 = -1;
    v74 = 0;
    LODWORD(v75) = -1;
    v72 = 0;
    v73 = -1;
    v70 = 0;
    v71 = -1;
    v68 = 0;
    v69 = -1;
    v66 = 0;
    v67 = -1;
    v53 = 0;
    LODWORD(v54) = -1;
    *&v47 = &v70;
    *(&v47 + 1) = &v68;
    google::protobuf::strings::SubstituteAndAppend(a3, " [default = $0", v82, &v80, &v78, &v76, &v74, &v72, v47, &v66, &v53);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if ((*(a1 + 66) & 1) == 0)
    {
      goto LABEL_81;
    }

    v33 = ", ";
LABEL_72:
    std::string::append(a3, v33);
    std::string::append(a3, "json_name = ");
    google::protobuf::CEscape(*(a1 + 32), v34, v82);
    if ((v82[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = v82;
    }

    else
    {
      v35 = v82[0].__r_.__value_.__r.__words[0];
    }

    if ((v82[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v82[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v82[0].__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v35, size);
    if (SHIBYTE(v82[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82[0].__r_.__value_.__l.__data_);
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
  memset(v82, 0, 24);
  if (sub_276B1437C(a2, *(a1 + 120), *(*(a1 + 40) + 16), v82))
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
    if ((v82[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = v82;
    }

    else
    {
      v39 = v82[0].__r_.__value_.__r.__words[0];
    }

    if ((v82[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v82[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v82[0].__r_.__value_.__l.__size_;
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
    v76 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v74 = a1;
    if (atomic_load_explicit(v41, memory_order_acquire) != -1)
    {
      v80 = &v76;
      v81 = &v74;
      v78 = &v80;
      std::__call_once(v41, &v78, sub_2769C149C);
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
  sub_276B11594(&v56, a3);
  if (SHIBYTE(v82[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  v82[0].__r_.__value_.__r.__words[0] = &v60;
  sub_276B281C8(v82);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(*(&v58 + 1));
  }

  if (SBYTE7(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(__b[0]);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void sub_276B13AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
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

void google::protobuf::Descriptor::DebugString(google::protobuf::Descriptor *this@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::Descriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::Descriptor::DebugStringWithOptions(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  google::protobuf::Descriptor::DebugString(a1, 0, a3, a2, 1);
}

void sub_276B13C14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_276B13C30(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
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
  v54 = *MEMORY[0x277D85DE8];
  sub_276B13C30(__b, 2 * a2, 32);
  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  *v24 = 0u;
  *v23 = 0u;
  v28 = *a4;
  v29 = *(a4 + 2);
  if (SHIBYTE(v33) < 0)
  {
    sub_276A07B90(&__p, __b[0], __b[1]);
  }

  else
  {
    __p = *__b;
    v31 = v33;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::OneofDescriptor::GetSourceLocation(a1, &v22);
  }

  else
  {
    SourceLocation = 0;
  }

  v21[0] = SourceLocation;
  sub_276B11460(v21, a3);
  v9 = SHIBYTE(v33);
  v10 = __b;
  if (v33 < 0)
  {
    v10 = __b[0];
  }

  v52 = v10;
  if (v33 < 0)
  {
    v9 = __b[1];
  }

  v53 = v9;
  v11 = *a1;
  v12 = *(*a1 + 23);
  v13 = *(*a1 + 8);
  if (v12 < 0)
  {
    v11 = **a1;
  }

  v50 = v11;
  if (v12 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v51 = v14;
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
  google::protobuf::strings::SubstituteAndAppend(a3, "$0oneof $1 {", &v52, &v50, &v48, &v46, &v44, &v42, v19, &v36, &v34);
  sub_276B116A8(a2 + 1, *(a1 + 40), *(*(*(a1 + 16) + 16) + 16), a3);
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

    v16 = SHIBYTE(v33);
    v17 = __b;
    if (v33 < 0)
    {
      v17 = __b[0];
    }

    v52 = v17;
    if (v33 < 0)
    {
      v16 = __b[1];
    }

    v53 = v16;
    v50 = 0;
    v51 = -1;
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
    *&v20 = &v40;
    *(&v20 + 1) = &v38;
    google::protobuf::strings::SubstituteAndAppend(a3, "$0}\n", &v52, &v50, &v48, &v46, &v44, &v42, v20, &v36, &v34);
  }

  sub_276B11594(v21, a3);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  v52 = &v26;
  sub_276B281C8(&v52);
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

  v18 = *MEMORY[0x277D85DE8];
}

void sub_276B14048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_276B26880(v37 + 8);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::FieldDescriptor::DebugString(google::protobuf::FieldDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::FieldDescriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::FieldDescriptor::DebugStringWithOptions(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
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

    v31 = v6;
    if (v7 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v32 = v9;
    v29 = 0;
    v30 = -1;
    v27 = 0;
    v28 = -1;
    v25 = 0;
    v26 = -1;
    v23 = 0;
    v24 = -1;
    v21 = 0;
    v22 = -1;
    v19 = 0;
    v20 = -1;
    v17 = 0;
    v18 = -1;
    v15 = 0;
    v16 = -1;
    v13 = 0;
    v14 = -1;
    *&v12 = &v19;
    *(&v12 + 1) = &v17;
    google::protobuf::strings::SubstituteAndAppend(a3, "extend .$0 {\n", &v31, &v29, &v27, &v25, &v23, &v21, v12, &v15, &v13);
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

  v11 = *MEMORY[0x277D85DE8];
}

void sub_276B14238(_Unwind_Exception *exception_object)
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
      std::__call_once(v4, &v12, sub_2769C149C);
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
      std::__call_once(v9, &v12, sub_2769C149C);
    }

    v5 = *(this + 14);
  }

  return sub_276A4D46C(a2, google::protobuf::FieldDescriptor::kTypeToName[v5]);
}

BOOL sub_276B1437C(int a1, const google::protobuf::Message *a2, uint64_t a3, std::string *a4)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (sub_276B26B20(a1, a2, a3, &v10))
  {
    sub_276B276BC(", ", &v10, &__p);
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
  sub_276B281C8(&__p);
  return v7;
}

void sub_276B14420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_276B281C8(&__p);
  _Unwind_Resume(a1);
}

void google::protobuf::OneofDescriptor::DebugString(google::protobuf::OneofDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::OneofDescriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::OneofDescriptor::DebugStringWithOptions(uint64_t a1@<X0>, __int16 *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  google::protobuf::OneofDescriptor::DebugString(a1, 0, a3, a2);
}

void sub_276B144BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::EnumDescriptor::DebugString(google::protobuf::EnumDescriptor *this@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::EnumDescriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::EnumDescriptor::DebugStringWithOptions(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  google::protobuf::EnumDescriptor::DebugString(a1, 0, a3, a2);
}

void sub_276B1453C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::EnumValueDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, __int16 *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  sub_276B13C30(__b, 2 * a2, 32);
  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  *v25 = 0u;
  *v24 = 0u;
  v29 = *a4;
  v30 = *(a4 + 2);
  if (SHIBYTE(v34) < 0)
  {
    sub_276A07B90(&v31, __b[0], __b[1]);
  }

  else
  {
    v31 = *__b;
    v32 = v34;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::EnumValueDescriptor::GetSourceLocation(a1, &v23);
  }

  else
  {
    SourceLocation = 0;
  }

  v22[0] = SourceLocation;
  sub_276B11460(v22, a3);
  v10 = SHIBYTE(v34);
  v11 = __b;
  if (v34 < 0)
  {
    v11 = __b[0];
  }

  p_data = v11;
  if (v34 < 0)
  {
    v10 = __b[1];
  }

  v55 = v10;
  v12 = *a1;
  v13 = *(*a1 + 23);
  v14 = *(*a1 + 8);
  if (v13 < 0)
  {
    v12 = **a1;
  }

  v52 = v12;
  if (v13 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v53 = v15;
  v49 = google::protobuf::FastInt32ToBuffer(*(a1 + 16), v51, v9);
  v50 = strlen(v49);
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
  *&v19 = &v41;
  *(&v19 + 1) = &v39;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0$1 = $2", &p_data, &v52, &v49, &v47, &v45, &v43, v19, &v37, &v35);
  memset(&__p, 0, sizeof(__p));
  if (sub_276B1437C(a2, *(a1 + 32), *(*(*(a1 + 24) + 16) + 16), &__p))
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

    v55 = v16;
    v52 = 0;
    v53 = -1;
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
    *&v20 = &v41;
    *(&v20 + 1) = &v39;
    google::protobuf::strings::SubstituteAndAppend(a3, " [$0]", &p_data, &v52, &v49, &v47, &v45, &v43, v20, &v37, &v35);
  }

  std::string::append(a3, ";\n");
  sub_276B11594(v22, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  p_data = &v27;
  sub_276B281C8(&p_data);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  if (SHIBYTE(v25[0]) < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__b[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_276B14894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_276B26880(v44 + 8);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::EnumValueDescriptor::DebugString(google::protobuf::EnumValueDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::EnumValueDescriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::EnumValueDescriptor::DebugStringWithOptions(uint64_t a1@<X0>, __int16 *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  google::protobuf::EnumValueDescriptor::DebugString(a1, 0, a3, a2);
}

void sub_276B14970(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::ServiceDescriptor::DebugString(google::protobuf::ServiceDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::ServiceDescriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::ServiceDescriptor::DebugStringWithOptions(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  google::protobuf::ServiceDescriptor::DebugString(a1, a3, a2);
}

void sub_276B149EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::MethodDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, __int16 *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  sub_276B13C30(__b, 2 * a2, 32);
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  *v40 = 0u;
  *v39 = 0u;
  v44 = *a4;
  v45 = *(a4 + 2);
  if (SHIBYTE(v49) < 0)
  {
    sub_276A07B90(&v46, __b[0], __b[1]);
  }

  else
  {
    v46 = *__b;
    v47 = v49;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::MethodDescriptor::GetSourceLocation(a1, &v38);
  }

  else
  {
    SourceLocation = 0;
  }

  v37[0] = SourceLocation;
  sub_276B11460(v37, a3);
  v9 = SHIBYTE(v49);
  v10 = __b;
  if (v49 < 0)
  {
    v10 = __b[0];
  }

  p_data = v10;
  if (v49 < 0)
  {
    v9 = __b[1];
  }

  v69 = v9;
  v11 = *a1;
  v12 = *(*a1 + 23);
  v13 = *(*a1 + 8);
  if (v12 < 0)
  {
    v11 = **a1;
  }

  v66 = v11;
  if (v12 >= 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v67 = v14;
  google::protobuf::internal::LazyDescriptor::Once((a1 + 24));
  v15 = *(*(a1 + 24) + 8);
  v16 = *(v15 + 23);
  v17 = v15[1];
  if (v16 < 0)
  {
    v15 = *v15;
  }

  v64 = v15;
  if (v16 >= 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v65 = v18;
  google::protobuf::internal::LazyDescriptor::Once((a1 + 56));
  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 23);
  v21 = v19[1];
  if (v20 < 0)
  {
    v19 = *v19;
  }

  v62 = v19;
  if (v20 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v63 = v22;
  v23 = "";
  v24 = *(a1 + 96) == 0;
  if (*(a1 + 96))
  {
    v25 = "stream ";
  }

  else
  {
    v25 = "";
  }

  v60 = v25;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = 7;
  }

  v61 = v26;
  v27 = *(a1 + 97);
  if (*(a1 + 97))
  {
    v23 = "stream ";
  }

  v58 = v23;
  if (v27)
  {
    v28 = 7;
  }

  else
  {
    v28 = 0;
  }

  v59 = v28;
  v56 = 0;
  v57 = -1;
  v54 = 0;
  v55 = -1;
  v52 = 0;
  v53 = -1;
  v50 = 0;
  v51 = -1;
  *&v34 = &v56;
  *(&v34 + 1) = &v54;
  google::protobuf::strings::SubstituteAndAppend(a3, "$0rpc $1($4.$2) returns ($5.$3)", &p_data, &v66, &v64, &v62, &v60, &v58, v34, &v52, &v50);
  memset(&__p, 0, sizeof(__p));
  if (sub_276B116A8(a2 + 1, *(a1 + 88), *(*(*(a1 + 16) + 16) + 16), &__p))
  {
    v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    p_data = &p_p->__r_.__value_.__l.__data_;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = __p.__r_.__value_.__r.__words[1];
    }

    v69 = v29;
    v31 = SHIBYTE(v49);
    v32 = __b;
    if (v49 < 0)
    {
      v32 = __b[0];
    }

    v66 = v32;
    if (v49 < 0)
    {
      v31 = __b[1];
    }

    v67 = v31;
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
    v54 = 0;
    v55 = -1;
    v52 = 0;
    v53 = -1;
    v50 = 0;
    v51 = -1;
    *&v35 = &v56;
    *(&v35 + 1) = &v54;
    google::protobuf::strings::SubstituteAndAppend(a3, " {\n$0$1}\n", &p_data, &v66, &v64, &v62, &v60, &v58, v35, &v52, &v50);
  }

  else
  {
    std::string::append(a3, ";\n");
  }

  sub_276B11594(v37, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  p_data = &v42;
  sub_276B281C8(&p_data);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[1]);
  }

  if (SHIBYTE(v40[0]) < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__b[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_276B14DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_276B26880(v44 + 8);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::MethodDescriptor::DebugString(google::protobuf::MethodDescriptor *this@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::MethodDescriptor::DebugStringWithOptions(this, &v2, a2);
}

void google::protobuf::MethodDescriptor::DebugStringWithOptions(uint64_t a1@<X0>, __int16 *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  google::protobuf::MethodDescriptor::DebugString(a1, 0, a3, a2);
}

void sub_276B14EB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::FileDescriptor::GetSourceLocation(uint64_t a1, std::string **a2, uint64_t a3)
{
  if (!a3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 2963);
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

  sub_276B2B894((a3 + 64), v13, &v13[*(v9 + 80)], *(v9 + 80));
  return 1;
}

void sub_276B14FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::FileDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(a1, &__p, a2);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_276B15060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
        std::__call_once(v4, &v9, sub_2769C149C);
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

void sub_276B151C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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
  sub_276B112A4(a2, &v8);
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
  sub_276B112A4(a2, &v8);
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

void sub_276B152D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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
  sub_276B112A4(a2, &v8);
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
  sub_276B112A4(a2, &v8);
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

void sub_276B15428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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
  sub_276B112A4(a2, &v5);
  v4 = -1431655765 * ((a1 - *(*(a1 + 16) + 48)) >> 4);
  sub_276B112A4(a2, &v4);
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

void sub_276B1551C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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
  sub_276B112A4(a2, &v8);
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
  sub_276B112A4(a2, &v8);
}

uint64_t google::protobuf::MethodDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::MethodDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(*(a1 + 16) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_276B15638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::MethodDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  google::protobuf::ServiceDescriptor::GetLocationPath(*(a1 + 16), a2);
  v5 = 2;
  sub_276B112A4(a2, &v5);
  v4 = -991146299 * ((a1 - *(*(a1 + 16) + 32)) >> 3);
  sub_276B112A4(a2, &v4);
}

uint64_t google::protobuf::ServiceDescriptor::GetSourceLocation(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::ServiceDescriptor::GetLocationPath(a1, &__p);
  SourceLocation = google::protobuf::FileDescriptor::GetSourceLocation(*(a1 + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return SourceLocation;
}

void sub_276B1572C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::ServiceDescriptor::GetLocationPath(uint64_t a1, const void **a2)
{
  v5 = 6;
  sub_276B112A4(a2, &v5);
  v4 = -1431655765 * ((a1 - *(*(a1 + 16) + 120)) >> 4);
  sub_276B112A4(a2, &v4);
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

void sub_276B1581C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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
  sub_276B112A4(a2, &v5);
  v4 = -858993459 * ((a1 - *(*(a1 + 24) + 48)) >> 3);
  sub_276B112A4(a2, &v4);
}

google::protobuf::FileDescriptor *google::protobuf::DescriptorPool::BuildFile(google::protobuf::DescriptorPool *this, const google::protobuf::FileDescriptorProto *a2)
{
  if (*(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 3564);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: fallback_database_ == nullptr: ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Cannot call BuildFile on a DescriptorPool that uses a DescriptorDatabase.  You must instead find a way to get your file into the underlying database.");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  if (*this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 3568);
    v6 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: mutex_ == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  sub_276B29FCC(*(this + 4) + 64);
  sub_276B29FCC(*(this + 4) + 24);
  google::protobuf::DescriptorBuilder::DescriptorBuilder(v9, this, *(this + 4), 0);
  v7 = google::protobuf::DescriptorBuilder::BuildFile(v9, a2);
  google::protobuf::DescriptorBuilder::~DescriptorBuilder(&v9[0].__r_.__value_.__l.__data_);
  return v7;
}

google::protobuf::FileDescriptor *google::protobuf::DescriptorBuilder::BuildFile(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2)
{
  std::string::operator=((this + 56), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL));
  v4 = *(this + 1);
  sub_276B280C4(&v46, this + 7, v5);
  v43 = v46;
  v6 = sub_276B26328((v4 + 344), &v43);
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
    sub_276A4D46C(&v46, "proto2");
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
      sub_276B18B90(v16, (*(a2 + 22) & 0xFFFFFFFFFFFFFFFELL));
      if (*(a2 + 8) >= 1)
      {
        v31 = 1;
        while (1)
        {
          v32 = *(this + 1);
          sub_276B280C4(&v46, *(*(a2 + 5) + 8 * v31), v30);
          v43 = v46;
          v33 = sub_276B26328((v32 + 344), &v43);
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
        sub_276B280C4(&v43, *(*(a2 + 5) + 8 * v31), v30);
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

void sub_276B15DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(va);
  _Unwind_Resume(a1);
}

google::protobuf::FileDescriptor *google::protobuf::DescriptorPool::BuildFileCollectingErrors(google::protobuf::DescriptorPool *this, const google::protobuf::FileDescriptorProto *a2, google::protobuf::DescriptorPool::ErrorCollector *a3)
{
  if (*(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 3576);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: fallback_database_ == nullptr: ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "Cannot call BuildFile on a DescriptorPool that uses a DescriptorDatabase.  You must instead find a way to get your file into the underlying database.");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 3580);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: mutex_ == nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  sub_276B29FCC(*(this + 4) + 64);
  sub_276B29FCC(*(this + 4) + 24);
  google::protobuf::DescriptorBuilder::DescriptorBuilder(v11, this, *(this + 4), a3);
  v9 = google::protobuf::DescriptorBuilder::BuildFile(v11, a2);
  google::protobuf::DescriptorBuilder::~DescriptorBuilder(&v11[0].__r_.__value_.__l.__data_);
  return v9;
}

google::protobuf::DescriptorBuilder *google::protobuf::DescriptorBuilder::DescriptorBuilder(google::protobuf::DescriptorBuilder *this, const google::protobuf::DescriptorPool *a2, google::protobuf::DescriptorPool::Tables *a3, google::protobuf::DescriptorPool::ErrorCollector *a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = 0;
  *(this + 7) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 12) = this + 104;
  *(this + 14) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 16) = 0;
  *(this + 15) = this + 128;
  *(this + 17) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  sub_276A4D46C(this + 176, "");
  return this;
}

void sub_276B15FB4(_Unwind_Exception *a1)
{
  if (*(v2 + 175) < 0)
  {
    operator delete(*(v2 + 152));
  }

  sub_276A579A4(v4, *(v2 + 128));
  sub_276A579A4(v3, *(v2 + 104));
  if (*(v2 + 79) < 0)
  {
    operator delete(*v5);
  }

  sub_276B16000(v1);
  _Unwind_Resume(a1);
}

void **sub_276B16000(void **a1)
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
        sub_276B2C518(v3);
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

  sub_276A579A4((this + 15), this[16]);
  sub_276A579A4((this + 12), this[13]);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  sub_276B16000(this + 3);
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
      google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 3620);
      v9 = google::protobuf::internal::LogMessage::operator<<(v17, "Invalid proto descriptor for file ");
      v10 = google::protobuf::internal::LogMessage::operator<<(v9, (a1 + 56));
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, ":");
      google::protobuf::internal::LogFinisher::operator=(&v16, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 3623);
    v12 = google::protobuf::internal::LogMessage::operator<<(v17, "  ");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, a2);
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, ": ");
    v15 = google::protobuf::internal::LogMessage::operator<<(v14, a5);
    google::protobuf::internal::LogFinisher::operator=(&v16, &v15->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  *(a1 + 48) = 1;
}

void sub_276B1620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::AddError(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, char *__s)
{
  sub_276A4D46C(__p, __s);
  google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_276B1629C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_276B166BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
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
    google::protobuf::internal::LogMessage::LogMessage(v16, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor.cc", 3674);
    v10 = google::protobuf::internal::LogMessage::operator<<(v16, (a1 + 56));
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, a2);
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, ": ");
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, a5);
    google::protobuf::internal::LogFinisher::operator=(&v15, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }
}

void sub_276B1688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::DescriptorBuilder::IsInPackage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_276B280C4(__s1, *(a2 + 8), a3);
  sub_276B280C4(&__s2, a3, v5);
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
    this = sub_276B2B7C8(this + 96, &v6);
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
  sub_276B280C4(&v23, a3, a3);
  v24 = v23;
  v11 = sub_276B26328((v10 + 304), &v24);
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
    sub_276B280C4(&v24, a3, v12);
    if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, v24, *(&v24 + 1)))
    {
      v19 = *(a2 + 32);
      sub_276B280C4(&v23, a3, v18);
      v24 = v23;
      v20 = sub_276B26328((v19 + 304), &v24);
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