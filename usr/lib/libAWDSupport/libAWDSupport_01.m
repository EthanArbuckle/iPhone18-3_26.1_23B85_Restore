void *sub_2964B313C(void *a1)
{
  sub_2964AC558((a1 + 15));
  v2 = a1[11];
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_2964A5FB4(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_2964A5FB4(v4);
  }

  return a1;
}

uint64_t sub_2964B318C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_2964A5FB4(v3);
  }

  return a1;
}

void sub_2964B31C8(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  v7 = *a3;
  v6 = sub_2964B3C38(a1, &v7, a4);
  sub_2964BBE1C(a2, &v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  sub_2964BBD20(a1, v6, a2);
}

void sub_2964B325C(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  v6 = sub_2964B3C38(a1, &__p, a4);
  sub_2964BC084(*(a2 + 8) - *a2, *a2, &__p);
  sub_2964BBD20(a1, v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2964B32E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2964B3300(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, __int128 *a3, unsigned int a4, __int128 *a5)
{
  v10 = *a3;
  v11 = *(a3 + 2);
  v8 = sub_2964B3C38(a1, &v10, a4);
  sub_2964BBD0C(a1);
  std::string::append(*a1, v8);
  std::string::append(*a1, " {\n");
  ++*(a1 + 8);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
  {
    do
    {
      v10 = *a5;
      v11 = *(a5 + 2);
      sub_2964B1CAC(a2);
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) > 0);
  }

  --*(a1 + 8);
  sub_2964BBD0C(a1);
  return std::string::append(*a1, "}\n");
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2964B33EC(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2964B3428(uint64_t a1, unint64_t a2, unsigned int __val)
{
  sub_2964BBDEC(__val, &v7);
  sub_2964BBDDC(a2, &__p);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  sub_2964BBD20(a1, v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_2964B34B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B34EC(uint64_t a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  sub_2964BBDEC(__val, &v9);
  sub_2964BC084(a3, a2, &__p);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  sub_2964BBD20(a1, v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2964B3584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B35B8(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2964B3C38(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964B3CBC(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2964BBDB8(a1, *a2 != 0);
    MEMORY[0x29C25ABC0](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2964B3DAC(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2964BBD20(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964B3730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B3758(uint64_t a1, _DWORD *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2964B3C38(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964B3CBC(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2964BBDB8(a1, *a2 != 0);
    MEMORY[0x29C25ABC0](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2964B412C(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2964BBD20(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964B38D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B38F8(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2964B3C38(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964B3CBC(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2964BBDB8(a1, *a2 != 0);
    MEMORY[0x29C25ABC0](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2964B4668(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2964BBD20(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964B3A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B3A98(uint64_t a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2964B3C38(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964B3CBC(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2964BBDB8(a1, *a2 != 0);
    MEMORY[0x29C25ABC0](__p, v11);
  }

  v12 = HIBYTE(v19);
  if (v19 < 0)
  {
    v12 = __p[1];
  }

  if (!v12)
  {
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = sub_2964B4824(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2964BBD20(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2964B3C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2964B3C38(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v6, a3, &v8);
  *a2 = v8;
  *(a2 + 2) = v9;
  Field = MetadataHandle::getField(a2);
  if (!Field)
  {
    return &unk_2964E00BE;
  }

  result = *(Field + 8);
  if (!result)
  {
    return &unk_2964E00BE;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

_BYTE *sub_2964B3CBC@<X0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v15, a3, &v17);
  *a2 = v17;
  *(a2 + 2) = v18;
  result = MetadataHandle::getEnum(a2);
  if (!result)
  {
    return sub_2964A6FA0(a5, &unk_2964E00BE);
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (v9 == v10)
  {
    return sub_2964A6FA0(a5, &unk_2964E00BE);
  }

  while (1)
  {
    v11 = *v9;
    v12 = (*(*v9 + 32) & 2) != 0 ? 24 : 16;
    if (*(v11 + v12) == a4)
    {
      break;
    }

    if (++v9 == v10)
    {
      return sub_2964A6FA0(a5, &unk_2964E00BE);
    }
  }

  v13 = *(v11 + 8);
  if (*(v13 + 23) < 0)
  {
    return sub_2964A3B5C(a5, *v13, *(v13 + 1));
  }

  v14 = *v13;
  *(a5 + 16) = *(v13 + 2);
  *a5 = v14;
  return result;
}

uint64_t (*sub_2964B3DAC(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964B3E78;
  if (*(a1 + 72) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964B3E78;
    if (Field)
    {
      v5 = sub_2964B3E78;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964B3E78;
        if (v8 <= 0x1F)
        {
          return off_2A1D53D60[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964B3E94(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964B3F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964B3F68(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = j_std::to_string;
  if (*(a1 + 72) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = j_std::to_string;
    if (Field)
    {
      v5 = j_std::to_string;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = j_std::to_string;
        if (v8 <= 0x1F)
        {
          return off_2A1D53E60[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964B4058(std::string *a1@<X8>, double a2@<D0>)
{
  sub_2964CCE80(a2, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964B40C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964B412C(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964B41F8;
  if (*(a1 + 72) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964B41F8;
    if (Field)
    {
      v5 = sub_2964B41F8;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964B41F8;
        if (v8 <= 0x1F)
        {
          return off_2A1D53F60[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964B4214(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964B4284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964B42E8(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = j_std::to_string;
  if (*(a1 + 72) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = j_std::to_string;
    if (Field)
    {
      v5 = j_std::to_string;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = j_std::to_string;
        if (v8 <= 0x1F)
        {
          return off_2A1D54060[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964B43D8(std::string *a1@<X8>, float a2@<S0>)
{
  sub_2964CCE80(a2, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964B4448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964B44AC(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964B4578;
  if (*(a1 + 72) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964B4578;
    if (Field)
    {
      v5 = sub_2964B4578;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964B4578;
        if (v8 <= 0x1F)
        {
          return off_2A1D54160[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964B4594(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964B4604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964B4668(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964B4734;
  if (*(a1 + 72) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964B4734;
    if (Field)
    {
      v5 = sub_2964B4734;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964B4734;
        if (v8 <= 0x1F)
        {
          return off_2A1D54260[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964B4750(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964B47C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2964B4824(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2964B48F0;
  if (*(a1 + 72) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2964B48F0;
    if (Field)
    {
      v5 = sub_2964B48F0;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2964B48F0;
        if (v8 <= 0x1F)
        {
          return off_2A1D54360[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2964B490C(int a1@<W1>, std::string *a2@<X8>)
{
  sub_2964CCE80(a1, &v4);
  v3 = std::string::insert(&v4, 0, "0x");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2964B497C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B49E0(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2964B3C38(a1, __p, a4);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v10;
    v14 = 0;
    do
    {
      v15 = *v11;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      if (a5 == 11)
      {
        v18 = *a3;
        v19 = *(a3 + 2);
        sub_2964B3CBC(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2964BBDB8(a1, v15 != 0);
        MEMORY[0x29C25ABC0](__p, v16);
      }

      v17 = HIBYTE(v23);
      if (v23 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
        if (!v14)
        {
          v20 = *a3;
          v21 = *(a3 + 2);
          v14 = sub_2964B3DAC(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2964BBD20(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2964B4B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B4BAC(uint64_t a1, unsigned int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2964B3C38(a1, __p, a4);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v10;
    v14 = 0;
    do
    {
      v15 = *v11;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      if (a5 == 11)
      {
        v18 = *a3;
        v19 = *(a3 + 2);
        sub_2964B3CBC(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2964BBDB8(a1, v15 != 0);
        MEMORY[0x29C25ABC0](__p, v16);
      }

      v17 = HIBYTE(v23);
      if (v23 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
        if (!v14)
        {
          v20 = *a3;
          v21 = *(a3 + 2);
          v14 = sub_2964B412C(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2964BBD20(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2964B4D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B4D78(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2964B3C38(a1, __p, a4);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v10;
    v14 = 0;
    do
    {
      v15 = *v11;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      if (a5 == 11)
      {
        v18 = *a3;
        v19 = *(a3 + 2);
        sub_2964B3CBC(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2964BBDB8(a1, v15 != 0);
        MEMORY[0x29C25ABC0](__p, v16);
      }

      v17 = HIBYTE(v23);
      if (v23 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
        if (!v14)
        {
          v20 = *a3;
          v21 = *(a3 + 2);
          v14 = sub_2964B4668(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2964BBD20(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2964B4F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B4F44(uint64_t a1, int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2964B3C38(a1, __p, a4);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = v10;
    v14 = 0;
    do
    {
      v15 = *v11;
      __p[0] = 0;
      __p[1] = 0;
      v23 = 0;
      if (a5 == 11)
      {
        v18 = *a3;
        v19 = *(a3 + 2);
        sub_2964B3CBC(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2964BBDB8(a1, v15 != 0);
        MEMORY[0x29C25ABC0](__p, v16);
      }

      v17 = HIBYTE(v23);
      if (v23 < 0)
      {
        v17 = __p[1];
      }

      if (!v17)
      {
        if (!v14)
        {
          v20 = *a3;
          v21 = *(a3 + 2);
          v14 = sub_2964B4824(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2964BBD20(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2964B50EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B5110(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t *a3)
{
  v6 = *(this + 1);
  if (v6 < *(this + 2))
  {
    TagFallback = *v6;
    if ((TagFallback & 0x80000000) == 0)
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback)
      {
        goto LABEL_4;
      }

LABEL_14:
      if ((*(this + 36) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
        goto LABEL_54;
      }

      return;
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
  *(this + 8) = TagFallback;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = awd::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v59 = *a2;
  v60 = a2[1].n128_i64[0];
  DeviceConfigMetadataHelper::getSubfieldType((a3 + 1), &v59, HIDWORD(v8), &v51);
  v59 = v51;
  v60 = v52;
  BuiltinType = MetadataHelper::getBuiltinType((a3 + 1), &v59);
  v12 = BuiltinType;
  DecodingType = awd::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType > 13)
  {
    if ((DecodingType - 15) >= 0xC)
    {
      if (DecodingType != 14)
      {
        if (DecodingType == 27)
        {
          LODWORD(__p) = 0;
          v25 = *(this + 1);
          if (v25 >= *(this + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__p))
            {
              goto LABEL_51;
            }
          }

          else
          {
            LODWORD(__p) = *v25;
            *(this + 1) = v25 + 1;
          }

          v55.__r_.__value_.__r.__words[0] = this;
          LODWORD(v55.__r_.__value_.__r.__words[1]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          ++*(this + 14);
          v53.n128_u64[0] = this;
          v59 = *a2;
          v60 = a2[1].n128_i64[0];
          *&v56.__r_.__value_.__l.__data_ = v51;
          v56.__r_.__value_.__r.__words[2] = v52;
          sub_2964B685C(a3, this, &v59, v10);
        }

LABEL_51:
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }

      LODWORD(v55.__r_.__value_.__l.__data_) = 0;
      v27 = *(this + 1);
      if (v27 >= *(this + 2) || (data = *v27, (data & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
        {
          goto LABEL_51;
        }

        data = v55.__r_.__value_.__l.__data_;
      }

      else
      {
        LODWORD(v55.__r_.__value_.__l.__data_) = *v27;
        *(this + 1) = v27 + 1;
      }

      sub_2964AC494(&v59, data);
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v59.n128_u64[0]);
      if (Raw)
      {
        v56 = *a2->n128_u8;
        sub_2964B6724(a3, &v59, &v56, v10);
      }

      goto LABEL_137;
    }

    v50 = 0;
    v16 = *(this + 1);
    if (v16 >= *(this + 2) || *v16 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v50 = *v16;
      *(this + 1) = v16 + 1;
    }

    UnpackedType = awd::reflect::getUnpackedType(v14);
    WireTypeForType = awd::reflect::getWireTypeForType(UnpackedType);
    v48 = this;
    v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    __p = 0;
    v46 = 0;
    v47 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            if (v14 > 20)
            {
              if (v14 <= 23)
              {
                if (v14 != 21)
                {
                  if (v14 != 22)
                  {
                    sub_2964AB62C(&__p, &v59);
                    v56 = *a2->n128_u8;
                    sub_2964B7704(a3, &v59, &v56, v10);
                  }

                  sub_2964ABF30(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2964B7A9C(a3, &v59, &v56, v10);
                }

                sub_2964AB62C(&__p, &v59);
                v56 = *a2->n128_u8;
                sub_2964B7704(a3, &v59, &v56, v10);
              }

              switch(v14)
              {
                case 0x1A:
                  sub_2964AB8A0(&__p, &v55);
                  v53 = *a2;
                  v54 = a2[1].n128_u64[0];
                  v59 = *a2;
                  v60 = a2[1].n128_i64[0];
                  sub_2964B7348(a3, &v59, v10);
                  v58 = 0;
                  v59.n128_u64[0] = 0;
                  v57 = 2;
                  v56.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x19:
                  sub_2964ABAF0(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2964B78D0(a3, &v59, &v56, v10);
                case 0x18:
                  sub_2964AB2A4(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2964B7538(a3, &v59, &v56, v10);
              }
            }

            else
            {
              if (v14 > 17)
              {
                if (v14 != 18)
                {
                  if (v14 != 19)
                  {
                    sub_2964AB62C(&__p, &v59);
                    v56 = *a2->n128_u8;
                    sub_2964B7A9C(a3, &v59, &v56, v10);
                  }

                  sub_2964ABC28(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2964B78D0(a3, &v59, &v56, v10);
                }

                sub_2964AB2A4(&__p, &v59);
                v56 = *a2->n128_u8;
                sub_2964B7538(a3, &v59, &v56, v10);
              }

              switch(v14)
              {
                case 0xF:
                  sub_2964AB324(&__p, &v55.__r_.__value_.__l.__data_);
                  v53 = *a2;
                  v54 = a2[1].n128_u64[0];
                  v59 = *a2;
                  v60 = a2[1].n128_i64[0];
                  sub_2964B7348(a3, &v59, v10);
                  v58 = 0;
                  v59.n128_u64[0] = 0;
                  v57 = 2;
                  v56.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x10:
                  sub_2964AB764(&__p, &v55.__r_.__value_.__l.__data_);
                  v53 = *a2;
                  v54 = a2[1].n128_u64[0];
                  v59 = *a2;
                  v60 = a2[1].n128_i64[0];
                  sub_2964B7348(a3, &v59, v10);
                  v58 = 0;
                  v59.n128_u64[0] = 0;
                  v57 = 2;
                  v56.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x11:
                  sub_2964ABAF0(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2964B78D0(a3, &v59, &v56, v10);
              }
            }

            v44 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25AAF0](v44, "This should never happen, no matter what the input!");
            __cxa_throw(v44, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          v59.n128_u64[0] = 0;
          sub_2964A9798(&__p, &v59);
          if (WireTypeForType <= 1)
          {
            break;
          }

          if (WireTypeForType == 5)
          {
            v59.n128_u32[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v59);
            *(v46 - 1) = v59.n128_u32[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else if (WireTypeForType == 2)
          {
LABEL_48:
            if (__p)
            {
              v46 = __p;
              operator delete(__p);
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            goto LABEL_51;
          }
        }

        if (!WireTypeForType)
        {
          break;
        }

        if (WireTypeForType == 1)
        {
          LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v46 - 1);
LABEL_31:
          if ((LittleEndian64Fallback & 1) == 0)
          {
            goto LABEL_48;
          }
        }
      }

      v21 = v46 - 1;
      v22 = *(this + 1);
      if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
      {
        LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
        goto LABEL_31;
      }

      *v21 = v23;
      *(this + 1) = v22 + 1;
    }
  }

  if ((DecodingType - 1) >= 0xC)
  {
    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      LODWORD(v55.__r_.__value_.__l.__data_) = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v55.__r_.__value_.__l.__data_) = *v24;
        *(this + 1) = v24 + 1;
      }

      v59 = 0uLL;
      v60 = 0;
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (Raw)
      {
        v56 = *a2->n128_u8;
        sub_2964B6628(a3, &v59, &v56, v10);
      }

      if ((SHIBYTE(v60) & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v40 = v59.n128_u64[0];
      goto LABEL_139;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        v59.n128_u64[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v59.n128_u64))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v59.n128_u64[0] = 0;
        if (!sub_2964A9740(this, v59.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v38 = v59.n128_u64[0];
LABEL_144:
      sub_2964B69C8(a3, v38, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      v59.n128_u32[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v59))
      {
        goto LABEL_51;
      }

      v38 = v59.n128_u32[0];
      goto LABEL_144;
    }

    LODWORD(v56.__r_.__value_.__l.__data_) = 0;
    if (!sub_2964A976C(this, &v56))
    {
      goto LABEL_51;
    }

    sub_2964AC494(&v59, LODWORD(v56.__r_.__value_.__l.__data_));
    Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v59.n128_u64[0]);
    if (Raw)
    {
      sub_2964B6A80(a3, v59.n128_u64[0], v59.n128_u64[1] - v59.n128_u64[0], v10);
    }

LABEL_137:
    v40 = v59.n128_u64[0];
    if (!v59.n128_u64[0])
    {
      goto LABEL_140;
    }

    v59.n128_u64[1] = v59.n128_u64[0];
LABEL_139:
    operator delete(v40);
LABEL_140:
    if ((Raw & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  __p = 0;
  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    else
    {
      if (v9 != 5)
      {
        goto LABEL_94;
      }

      v59.n128_u32[0] = 0;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v59))
      {
        __p = v59.n128_u32[0];
        goto LABEL_94;
      }

      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
LABEL_54:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (!v9)
  {
    v26 = *(this + 1);
    if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &__p) & 1) == 0)
      {
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }
    }

    else
    {
      __p = *v26;
      *(this + 1) = v26 + 1;
    }

LABEL_94:
    v29 = __p;
    switch(v12)
    {
      case 1:
      case 15:
        v32 = awd::protobuf::NumberConverter<(awd::reflect::Type)1>::decode(__p);
        v55 = *a2->n128_u8;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        v31 = sub_2964B7348(a3, &v59, v10);
        v53.n128_u8[0] = 7;
        v53.n128_f64[1] = v32;
        if (v12 == 11)
        {
          v56 = v55;
          sub_2964B73CC(a3, &v56, v10, v32, &v59);
          v42 = HIBYTE(v60);
          if (v60 < 0)
          {
            v42 = v59.n128_u64[1];
          }

          if (v42)
          {
            v56.__r_.__value_.__l.__size_ = 0;
            v56.__r_.__value_.__s.__data_[0] = 3;
            operator new();
          }

          if (v60 < 0)
          {
            operator delete(v59.n128_u64[0]);
          }
        }

        else if (v12 == 12)
        {
          v53.n128_u8[0] = 4;
          v56.__r_.__value_.__s.__data_[0] = 7;
          v53.n128_u64[1] = v32 != 0.0;
          *&v56.__r_.__value_.__l.__size_ = v32;
          sub_2964A793C(&v56.__r_.__value_.__l.__size_, 7);
        }

        goto LABEL_161;
      case 2:
      case 16:
        v30 = awd::protobuf::NumberConverter<(awd::reflect::Type)2>::decode(__p);
        v55 = *a2->n128_u8;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        v31 = sub_2964B7348(a3, &v59, v10);
        v53.n128_u8[0] = 7;
        v53.n128_f64[1] = v30;
        if (v12 == 11)
        {
          v56 = v55;
          sub_2964B73CC(a3, &v56, v10, v30, &v59);
          v41 = HIBYTE(v60);
          if (v60 < 0)
          {
            v41 = v59.n128_u64[1];
          }

          if (v41)
          {
            v56.__r_.__value_.__l.__size_ = 0;
            v56.__r_.__value_.__s.__data_[0] = 3;
            operator new();
          }

          if (v60 < 0)
          {
            operator delete(v59.n128_u64[0]);
          }
        }

        else if (v12 == 12)
        {
          v53.n128_u8[0] = 4;
          v56.__r_.__value_.__s.__data_[0] = 7;
          v53.n128_u64[1] = v30 != 0.0;
          *&v56.__r_.__value_.__l.__size_ = v30;
          sub_2964A793C(&v56.__r_.__value_.__l.__size_, 7);
        }

LABEL_161:
        v59 = *&v55.__r_.__value_.__l.__data_;
        v60 = v55.__r_.__value_.__r.__words[2];
        v43 = sub_2964B74BC(a3, &v59, v10);
        sub_2964C5080(a3, v31, &v53, v43);
        v36 = v53.n128_u8[0];
        p_size = &v53.n128_i64[1];
        goto LABEL_162;
      case 3:
      case 11:
      case 17:
      case 25:
        goto LABEL_105;
      case 4:
      case 10:
      case 18:
      case 24:
        v56.__r_.__value_.__r.__words[0] = __p;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        sub_2964B6BB8(a3, &v56, &v59, v10, v12);
        return;
      case 5:
      case 19:
        v29 = awd::protobuf::NumberConverter<(awd::reflect::Type)5>::decode(__p);
LABEL_105:
        v56.__r_.__value_.__r.__words[0] = v29;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        sub_2964B6F80(a3, &v56, &v59, v10, v12);
        return;
      case 6:
      case 20:
        LODWORD(v56.__r_.__value_.__l.__data_) = __p;
        goto LABEL_107;
      case 7:
      case 9:
      case 21:
      case 23:
        LODWORD(v56.__r_.__value_.__l.__data_) = __p;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        sub_2964B6D9C(a3, &v56, &v59, v10, v12);
        return;
      case 8:
      case 22:
        LODWORD(v56.__r_.__value_.__l.__data_) = awd::protobuf::NumberConverter<(awd::reflect::Type)8>::decode(__p);
LABEL_107:
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        sub_2964B7164(a3, &v56, &v59, v10, v12);
        return;
      case 12:
      case 26:
        v33 = __p != 0;
        v56 = *a2->n128_u8;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        v34 = sub_2964B7348(a3, &v59, v10);
        v55.__r_.__value_.__s.__data_[0] = 4;
        v55.__r_.__value_.__l.__size_ = v33;
        if (v12 == 12)
        {
          v55.__r_.__value_.__s.__data_[0] = 4;
          v53.n128_u8[0] = 4;
          v53.n128_u64[1] = v33;
          sub_2964A793C(&v53.n128_i64[1], 4);
        }

        v59 = *&v56.__r_.__value_.__l.__data_;
        v60 = v56.__r_.__value_.__r.__words[2];
        v35 = sub_2964B74BC(a3, &v59, v10);
        sub_2964C5080(a3, v34, &v55, v35);
        v36 = v55.__r_.__value_.__s.__data_[0];
        p_size = &v55.__r_.__value_.__l.__size_;
LABEL_162:
        sub_2964A793C(p_size, v36);
        return;
      default:
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25AAF0](exception, "This should never happen, no matter what the input!");
        goto LABEL_54;
    }
  }

  if (v9 != 1 || (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__p) & 1) != 0)
  {
    goto LABEL_94;
  }

  if (v10 || (*(this + 36) & 1) == 0)
  {
LABEL_53:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void sub_2964B63F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  sub_2964A793C((v26 + 8), a21);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B65EC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2964A5FB4(v3);
  }

  return a1;
}

void sub_2964B6628(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_2964B7348(a1, &v5, a4);
  v4 = 3;
  operator new();
}

void sub_2964B6724(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  sub_2964B7348(a1, &__p, a4);
  sub_2964BC084(*(a2 + 8) - *a2, *a2, &__p);
  v6 = 0;
  v5 = 3;
  operator new();
}

void sub_2964B682C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964B685C(uint64_t *a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v7 = *a3;
  v8 = *(a3 + 2);
  sub_2964B7348(a1, &v7, a4);
  v5 = *a1;
  sub_2964ADAF0(v6, 0, 0, 0, 1);
}

void sub_2964B696C(_Unwind_Exception *a1, unsigned __int8 a2, ...)
{
  va_start(va, a2);
  sub_2964A793C(va, a2);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2964B698C(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2964B69C8(uint64_t *a1, uint64_t a2, unsigned int __val)
{
  std::to_string(&v8, __val);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  v6[0] = 6;
  v7 = a2;
  sub_2964C5080(a1, v5, v6, 1);
  sub_2964A793C(&v7, v6[0]);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2964B6A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_2964A793C((v17 + 8), a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2964B6A80(int a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  std::to_string(&v9, __val);
  sub_2964BC084(a3, a2, &__p);
  v8 = 0;
  v7 = 3;
  operator new();
}

void sub_2964B6B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2964A793C((v22 + 8), a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_2964B6BB8(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964B7348(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964B73CC(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 6;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964B74BC(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964B6D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964B6D9C(uint64_t *a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964B7348(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964B73CC(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 6;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964B74BC(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964B6F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964B6F80(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964B7348(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964B73CC(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 5;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964B74BC(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964B7130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964B7164(uint64_t *a1, int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964B7348(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964B73CC(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 5;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964B74BC(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964B7314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

char *sub_2964B7348(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 8, &v6, a3, &v8);
  *a2 = v8;
  *(a2 + 2) = v9;
  Field = MetadataHandle::getField(a2);
  if (!Field)
  {
    return &unk_2964E00BE;
  }

  result = *(Field + 8);
  if (!result)
  {
    return &unk_2964E00BE;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

_BYTE *sub_2964B73CC@<X0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 8, &v15, a3, &v17);
  *a2 = v17;
  *(a2 + 2) = v18;
  result = MetadataHandle::getEnum(a2);
  if (!result)
  {
    return sub_2964A6FA0(a5, &unk_2964E00BE);
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (v9 == v10)
  {
    return sub_2964A6FA0(a5, &unk_2964E00BE);
  }

  while (1)
  {
    v11 = *v9;
    v12 = (*(*v9 + 32) & 2) != 0 ? 24 : 16;
    if (*(v11 + v12) == a4)
    {
      break;
    }

    if (++v9 == v10)
    {
      return sub_2964A6FA0(a5, &unk_2964E00BE);
    }
  }

  v13 = *(v11 + 8);
  if (*(v13 + 23) < 0)
  {
    return sub_2964A3B5C(a5, *v13, *(v13 + 1));
  }

  v14 = *v13;
  *(a5 + 16) = *(v13 + 2);
  *a5 = v14;
  return result;
}

uint64_t sub_2964B74BC(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 8, &v7, a3, &v9);
  *a2 = v9;
  *(a2 + 2) = v10;
  Field = MetadataHandle::getField(a2);
  if (Field && (*(Field + 52) & 0x400) != 0)
  {
    v5 = *(Field + 50);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_2964B7538(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964B7348(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964B7704(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964B7348(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964B78D0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964B7348(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964B7A9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964B7348(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

uint64_t awd::reflect::getUnpackedType(uint64_t result)
{
  if ((result - 15) >= 0xC)
  {
    return result;
  }

  else
  {
    return (result - 14);
  }
}

uint64_t awd::reflect::getPackedType(int a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 0;
  }

  else
  {
    return dword_2964E14A0[a1 - 1];
  }
}

uint64_t awd::reflect::getWireTypeForType(int a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return byte_2964E1508[a1 - 1];
  }
}

uint64_t awd::reflect::getDecodingType(uint64_t a1, int a2)
{
  v3 = a1;
  if (awd::reflect::getWireTypeForType(a1) != a2)
  {
    UnpackedType = awd::reflect::getUnpackedType(v3);
    if (awd::reflect::getWireTypeForType(UnpackedType) == a2)
    {
      return UnpackedType;
    }

    else if (a2 == 2 && (PackedType = awd::reflect::getPackedType(v3), PackedType))
    {
      return PackedType;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t awd::protobuf::skipField(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, int a2)
{
  result = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6[0] = 0;
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || *v5 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v6);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v6[0] = *v5;
        *(this + 1) = v5 + 1;
      }

      return wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this);
    }

    else if (a2 == 5)
    {
      v6[0] = 0;
      return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v6);
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      *v6 = 0;
      return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v6);
    }
  }

  else
  {
    *v6 = 0;
    v4 = *(this + 1);
    if (v4 >= *(this + 2) || *v4 < 0)
    {
      return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v6);
    }

    else
    {
      *(this + 1) = v4 + 1;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2964B7EA4(uint64_t result)
{
  *result = &unk_2A1D54470;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_2964B7EC8(PB::Base *this)
{
  *this = &unk_2A1D54470;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2964A3B00(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_2964B7F2C(PB::Base *a1)
{
  sub_2964B7EC8(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964B7F64(uint64_t result, uint64_t a2)
{
  *result = &unk_2A1D54470;
  *(result + 8) = 0;
  *(result + 32) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    v3 = *(a2 + 24);
    *(result + 32) |= 2u;
    *(result + 24) = v3;
    v2 = *(a2 + 32);
  }

  if (v2)
  {
    v4 = *(a2 + 16);
    *(result + 32) |= 1u;
    *(result + 16) = v4;
  }

  return result;
}

uint64_t sub_2964B8060(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964B7F64(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sub_2964B7EC8(v7);
  }

  return a1;
}

uint64_t sub_2964B80D4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v2;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_2964B8108(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1D54470;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    sub_2964A3B00(v4, v6);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_2964B8188(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964B8108(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sub_2964B7EC8(v7);
  }

  return a1;
}

uint64_t sub_2964B81FC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "s_value");
    v5 = *(a1 + 32);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "u_value");
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2964B8290(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_70;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v33 = *(this + 1);
        v32 = *(this + 2);
        v34 = *this;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v47 = 0;
          v48 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v49 = v32 - v33;
          if (!v17)
          {
            v49 = 0;
          }

          v50 = (v34 + v33);
          v51 = v33 + 1;
          while (1)
          {
            if (!v49)
            {
              v37 = 0;
              *(this + 24) = 1;
              goto LABEL_65;
            }

            v52 = *v50;
            *(this + 1) = v51;
            v37 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_57:
              v37 = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            v37 = 0;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v34 + v33);
          v39 = v33 + 1;
          while (1)
          {
            *(this + 1) = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        *(a1 + 16) = v37;
      }

      else if (v22 == 2)
      {
        *(a1 + 32) |= 2u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v41 = 0;
          v42 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v43 = v23 - v24;
          if (!v17)
          {
            v43 = 0;
          }

          v44 = (v25 + v24);
          v45 = v24 + 1;
          while (1)
          {
            if (!v43)
            {
              v28 = 0;
              *(this + 24) = 1;
              goto LABEL_62;
            }

            v46 = *v44;
            *(this + 1) = v45;
            v28 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            --v43;
            ++v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_49:
              v28 = 0;
              goto LABEL_62;
            }
          }

          if (*(this + 24))
          {
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_49;
            }
          }
        }

LABEL_62:
        *(a1 + 24) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this))
        {
          v54 = 0;
          return v54 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_2964B8658(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 32);
  }

  if (v4)
  {
    v6 = *(v3 + 16);

    return MEMORY[0x2A1C68E40](this, v6, 3);
  }

  return result;
}

BOOL sub_2964B86D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 8);
    }

    if (v7 != v8)
    {
      return 0;
    }

    v10 = v6 >= 0 ? *(a1 + 8) : *v4;
    v11 = v9 >= 0 ? *(a2 + 8) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((*(a2 + 32) & 2) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

LABEL_25:
  result = (*(a2 + 32) & 1) == 0;
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

unint64_t sub_2964B87B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = sub_2964A3DE8(&v7, v2);
  }

  else
  {
    v3 = 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    v4 = *(a1 + 24);
    if (*(a1 + 32))
    {
      goto LABEL_6;
    }

LABEL_8:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v5 = *(a1 + 16);
  return v4 ^ v3 ^ v5;
}

void *sub_2964B8824(void *result)
{
  *result = &unk_2A1D544C0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_2964B8848(void **a1)
{
  *a1 = &unk_2A1D544C0;
  v2 = a1 + 1;
  sub_2964A3A00(&v2);
  PB::Base::~Base(a1);
}

void sub_2964B88A4(void **a1)
{
  *a1 = &unk_2A1D544C0;
  v2 = a1 + 1;
  sub_2964A3A00(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_2964B8900(void **a1)
{
  *a1 = &unk_2A1D544C0;
  v3 = a1 + 1;
  sub_2964A3A00(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x29C25AE40]();
}

void *sub_2964B8970(void *result, uint64_t a2)
{
  result[1] = 0;
  *result = &unk_2A1D544C0;
  result[2] = 0;
  result[3] = 0;
  v2 = *(a2 + 8);
  if (v2 != *(a2 + 16))
  {
    v3 = *v2;
    sub_2964B89E8();
  }

  return result;
}

uint64_t sub_2964B8B40(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964B8970(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_2A1D544C0;
    v9 = &v7;
    sub_2964A3A00(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sub_2964B8BD4(void *result, void *a2)
{
  v2 = result[1];
  result[1] = a2[1];
  a2[1] = v2;
  v3 = result[2];
  result[2] = a2[2];
  a2[2] = v3;
  v4 = result[3];
  result[3] = a2[3];
  a2[3] = v4;
  return result;
}

uint64_t sub_2964B8C08(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1D544C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  sub_2964A3AC0((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sub_2964B8C80(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_2A1D544C0;
    v10 = 0uLL;
    v11 = 0;
    sub_2964A3AC0(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_2A1D544C0;
    sub_2964A3A00(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sub_2964B8D30(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "metrics");
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2964B8DC8(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        sub_2964B8F9C();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_2964B90E8(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

BOOL sub_2964B9140(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_2964C8D58(*v3, *v4);
    if (!result)
    {
      break;
    }

    ++v3;
    ++v4;
  }

  while (v3 != a1[1]);
  return result;
}

uint64_t sub_2964B91C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= sub_2964C8E18(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t sub_2964B9214(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v8 = v4;
  v5 = AwdMetadataLoader::AwdMetadataLoader(a1 + 8, a2, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, v5);
  }

  *a1 = &unk_2A1D54510;
  *(a1 + 88) = 30000;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 80) = 0;
  return a1;
}

void sub_2964B92C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_2964DA688(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964B92E0(uint64_t a1)
{
  *a1 = &unk_2A1D54510;
  sub_2964B9B4C(a1 + 96, *(a1 + 104));
  sub_2964AC558(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_2964B9374(uint64_t a1)
{
  sub_2964B92E0(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t LazyMetadataLoader::hasMetadataForComponent(LazyMetadataLoader *this, unsigned int a2)
{
  v2 = *(this + 13);
  if (!v2)
  {
    return 0;
  }

  v3 = (this + 104);
  do
  {
    v4 = v2[8];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[2 * v6];
  }

  while (v2);
  if (v3 != (this + 104) && v3[8] <= a2)
  {
    return (*(**(this + 1) + 72))();
  }

  else
  {
    return 0;
  }
}

uint64_t LazyMetadataLoader::setBaseMetadata(LazyMetadataLoader *this, void *a2)
{
  result = (*(**(this + 1) + 72))(*(this + 1));
  if ((result & 1) == 0)
  {
    operator new();
  }

  return result;
}

void sub_2964B953C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2964B9C18(&a9, 0);
  sub_2964B9C18(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t LazyMetadataLoader::shouldRequestMetadata(LazyMetadataLoader *this, unint64_t a2)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = a2 >= v2;
    v4 = a2 - v2;
    if (v4 == 0 || !v3 || v4 <= *(this + 22))
    {
      return 0;
    }
  }

  *(this + 10) = a2;
  return 1;
}

uint64_t LazyMetadataLoader::setMetadataForComponent(LazyMetadataLoader *this, void *a2, unsigned int a3)
{
  v4 = a3;
  result = LazyMetadataLoader::hasMetadataForComponent(this, a3);
  if ((result & 1) == 0)
  {
    operator new();
  }

  return result;
}

void sub_2964B9724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2964B9C18(va, 0);
  _Unwind_Resume(a1);
}

BestChoiceMetadataLoaderDelegate *sub_2964B97E4(BestChoiceMetadataLoaderDelegate *a1)
{
  BestChoiceMetadataLoaderDelegate::BestChoiceMetadataLoaderDelegate(a1);
  *v2 = &unk_2A1D54530;
  v2[16] = 0;
  sub_2964B9C18(v2 + 16, 0);
  return a1;
}

void sub_2964B9834(uint64_t *a1)
{
  *a1 = &unk_2A1D54530;
  sub_2964B9C18(a1 + 16, 0);

  BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(a1);
}

void sub_2964B988C(uint64_t *a1)
{
  *a1 = &unk_2A1D54530;
  sub_2964B9C18(a1 + 16, 0);

  BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(a1);
}

void sub_2964B98E4(uint64_t *a1)
{
  *a1 = &unk_2A1D54530;
  sub_2964B9C18(a1 + 16, 0);
  BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964B9950(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  sub_2964B9C18(a1 + 16, v3);
  v4 = *(*a1 + 96);

  return v4(a1);
}

uint64_t sub_2964B99B8(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    result = *(v1 + 8);
    v3 = *(v1 + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_2964DA708();
    }

    return 0;
  }

  return result;
}

void *sub_2964B9A00(void *result)
{
  if (!result[8])
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t sub_2964B9A30(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_2964C6660(a2, a3, &v7);
  v4 = *a1;
  if (v7 <= *(a1 + 30))
  {
    v5 = (v4 + 128);
  }

  else
  {
    v5 = (v4 + 120);
  }

  (*v5)(a1);
  sub_2964B9B00(&v9);
  return sub_2964B9B00(&v8);
}

void sub_2964B9AD4(_Unwind_Exception *a1)
{
  sub_2964B9B00(v1 + 48);
  sub_2964B9B00(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2964B9B00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2964B9B4C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2964B9B4C(a1, *a2);
    sub_2964B9B4C(a1, a2[1]);
    sub_2964B9C18(a2 + 5, 0);

    operator delete(a2);
  }
}

void *sub_2964B9BAC(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  if (a2 && MEMORY[0x29C25B390](a2) == MEMORY[0x29EDCAA48])
  {
    a1[2] = xpc_shmem_map(a2, v3);
  }

  return a1;
}

uint64_t sub_2964B9C18(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2964B9C64(result);

    JUMPOUT(0x29C25AE40);
  }

  return result;
}

uint64_t sub_2964B9C64(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    munmap(v2, *(a1 + 16));
    *(a1 + 8) = -1;
  }

  if (*a1)
  {
    fclose(*a1);
    *a1 = 0;
  }

  return a1;
}

uint64_t *sub_2964B9CB8(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_2964B9DA8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2964B9C18(v2 + 5, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_2964B9DF8(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  sub_2964BA1D8((a1 + 8), ((*(a2 + 16) - *(a2 + 8)) >> 3) + ((*(a1 + 16) - *(a1 + 8)) >> 3));
  if (*v2 != v2[1])
  {
    v3 = **v2;
    sub_2964B9E74();
  }

  return sub_2964A3A54(v2);
}

uint64_t sub_2964B9FC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = sub_2964BA274(v2, v3, v5, 1);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 == v8)
  {
    goto LABEL_53;
  }

  v9 = v7 + 1;
  if (v7 + 1 == v8)
  {
LABEL_52:
    v7 = v8;
    goto LABEL_53;
  }

  v10 = *(*v7 + 8);
  while (1)
  {
    v11 = v10;
    v10 = *(*v9 + 8);
    if (!v11 || !v10)
    {
      if (!(v11 | v10))
      {
        break;
      }

      goto LABEL_24;
    }

    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = *(v11 + 23);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    v14 = *(v10 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v10 + 8);
    }

    if (v13 == v14)
    {
      v16 = v12 >= 0 ? v11 : *v11;
      v17 = *v10;
      v18 = v15 >= 0 ? *(*v9 + 8) : *v10;
      result = memcmp(v16, v18, v13);
      if (!result)
      {
        break;
      }
    }

LABEL_24:
    if (++v9 == v8)
    {
      goto LABEL_52;
    }
  }

  v19 = v9 - 1;
  if (v9 - 1 == v8)
  {
    goto LABEL_52;
  }

  v20 = v9 + 1;
  if (v9 + 1 == v8)
  {
    goto LABEL_51;
  }

  while (2)
  {
    v21 = *v20;
    v22 = *(*v19 + 8);
    v23 = *(*v20 + 8);
    if (v22)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      if (v22 | v23)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v25 = *(v22 + 23);
      if (v25 >= 0)
      {
        v26 = *(v22 + 23);
      }

      else
      {
        v26 = *(v22 + 8);
      }

      v27 = *(v23 + 23);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v23 + 8);
      }

      if (v26 != v27 || (v25 >= 0 ? (v29 = *(*v19 + 8)) : (v29 = *v22), v28 >= 0 ? (v30 = *(*v20 + 8)) : (v30 = *v23), result = memcmp(v29, v30, v26), result))
      {
LABEL_48:
        v31 = v19[1];
        ++v19;
        result = sub_2964C8944(v31, v21);
      }
    }

    if (++v20 != v8)
    {
      continue;
    }

    break;
  }

  v8 = *(a1 + 16);
LABEL_51:
  v7 = v19 + 1;
LABEL_53:
  v32 = v8 - v7;
  if (v32 >= 1)
  {
    v33 = v8 - 1;
    v34 = v32 + 1;
    do
    {
      result = *v33;
      *v33 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      *(a1 + 16) = v33--;
      --v34;
    }

    while (v34 > 1);
  }

  return result;
}

void *sub_2964BA1D8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2964A3CF4(result, a2);
    }

    sub_2964A3CDC();
  }

  return result;
}

uint64_t sub_2964BA274(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v4 = result;
  while (2)
  {
    v5 = a2;
    v327 = a2 - 1;
    j = v4;
LABEL_3:
    v4 = j;
    while (1)
    {
      v7 = v5 - v4;
      v8 = v5 - v4;
      v9 = v8 - 2;
      if (v8 > 2)
      {
        switch(v8)
        {
          case 3:
            return sub_2964BB32C(v4, v4 + 1, v327);
          case 4:
            return sub_2964BB5EC(v4, v4 + 1, v4 + 2, v327);
          case 5:
            return sub_2964BB7CC(v4, v4 + 1, v4 + 2, v4 + 3, v327);
        }
      }

      else
      {
        if (v8 < 2)
        {
          return result;
        }

        if (v8 == 2)
        {
          v157 = *(a2 - 1);
          v158 = *(v157 + 8);
          if (v158)
          {
            v159 = *v4;
            v160 = *(*v4 + 8);
            if (!v160)
            {
              return sub_2964C8898(v159, v157);
            }

            v161 = *(v160 + 23);
            v162 = *(v158 + 23);
            v163 = v162 >= 0 ? *(v158 + 23) : *(v158 + 8);
            v164 = v162 >= 0 ? *(v157 + 8) : *v158;
            v165 = v161 >= 0 ? *(v160 + 23) : *(v160 + 8);
            v166 = v161 >= 0 ? v160 : *v160;
            v167 = v165 >= v163 ? v163 : v165;
            result = memcmp(v164, v166, v167);
            v168 = v163 < v165;
            if (result)
            {
              v168 = result < 0;
            }

            if (v168)
            {
              return sub_2964C8898(v159, v157);
            }
          }

          return result;
        }
      }

      if (v8 <= 23)
      {
        if (a4)
        {
          if (v4 != a2)
          {
            v169 = v4 + 1;
            if (v4 + 1 != a2)
            {
              v170 = 0;
              v171 = v4;
              do
              {
                v172 = v171;
                v171 = v169;
                v173 = v172[1];
                v174 = *(v173 + 8);
                if (v174)
                {
                  v175 = *(*v172 + 8);
                  if (!v175)
                  {
                    goto LABEL_345;
                  }

                  v176 = *(v175 + 23);
                  v177 = *(v174 + 23);
                  if (v177 >= 0)
                  {
                    v178 = *(v174 + 23);
                  }

                  else
                  {
                    v178 = *(v174 + 8);
                  }

                  if (v177 >= 0)
                  {
                    v179 = *(v173 + 8);
                  }

                  else
                  {
                    v179 = *v174;
                  }

                  if (v176 >= 0)
                  {
                    v180 = *(v175 + 23);
                  }

                  else
                  {
                    v180 = *(v175 + 8);
                  }

                  if (v176 >= 0)
                  {
                    v181 = *(*v172 + 8);
                  }

                  else
                  {
                    v181 = *v175;
                  }

                  if (v180 >= v178)
                  {
                    v182 = v178;
                  }

                  else
                  {
                    v182 = v180;
                  }

                  result = memcmp(v179, v181, v182);
                  v183 = v178 < v180;
                  if (result)
                  {
                    v183 = result < 0;
                  }

                  if (v183)
                  {
LABEL_345:
                    sub_2964C8940(v331, v173);
                    sub_2964C8944(v172[1], *v172);
                    v184 = v4;
                    if (v172 != v4)
                    {
                      v185 = v170;
                      while (1)
                      {
                        v184 = (v4 + v185);
                        if (!v332)
                        {
                          break;
                        }

                        v186 = *(v184 - 1);
                        v187 = *(v186 + 8);
                        if (v187)
                        {
                          v188 = *(v187 + 23);
                          v189 = *(v332 + 23);
                          if (v189 >= 0)
                          {
                            v190 = *(v332 + 23);
                          }

                          else
                          {
                            v190 = v332[1];
                          }

                          if (v189 >= 0)
                          {
                            v191 = v332;
                          }

                          else
                          {
                            v191 = *v332;
                          }

                          if (v188 >= 0)
                          {
                            v192 = *(v187 + 23);
                          }

                          else
                          {
                            v192 = *(v187 + 8);
                          }

                          if (v188 >= 0)
                          {
                            v193 = *(v186 + 8);
                          }

                          else
                          {
                            v193 = *v187;
                          }

                          if (v192 >= v190)
                          {
                            v194 = v190;
                          }

                          else
                          {
                            v194 = v192;
                          }

                          v195 = memcmp(v191, v193, v194);
                          v196 = v190 < v192;
                          if (v195)
                          {
                            v196 = v195 < 0;
                          }

                          if (!v196)
                          {
                            v184 = v172;
                            break;
                          }
                        }

                        --v172;
                        sub_2964C8944(*v184, v186);
                        v185 -= 8;
                        if (!v185)
                        {
                          v184 = v4;
                          break;
                        }
                      }
                    }

                    sub_2964C8944(*v184, v331);
                    result = sub_2964C8718(v331);
                  }
                }

                v169 = v171 + 1;
                v170 += 8;
              }

              while (v171 + 1 != a2);
            }
          }
        }

        else if (v4 != a2)
        {
          for (i = v4 + 1; i != a2; ++i)
          {
            v300 = i - 1;
            v301 = *i;
            v302 = *(*i + 8);
            if (v302)
            {
              v303 = *(*v300 + 8);
              if (!v303)
              {
                goto LABEL_564;
              }

              v304 = *(v303 + 23);
              v305 = *(v302 + 23);
              if (v305 >= 0)
              {
                v306 = *(v302 + 23);
              }

              else
              {
                v306 = *(v302 + 8);
              }

              if (v305 >= 0)
              {
                v307 = *(*i + 8);
              }

              else
              {
                v307 = *v302;
              }

              if (v304 >= 0)
              {
                v308 = *(v303 + 23);
              }

              else
              {
                v308 = *(v303 + 8);
              }

              if (v304 >= 0)
              {
                v309 = *(*v300 + 8);
              }

              else
              {
                v309 = *v303;
              }

              if (v308 >= v306)
              {
                v310 = v306;
              }

              else
              {
                v310 = v308;
              }

              result = memcmp(v307, v309, v310);
              v311 = v306 < v308;
              if (result)
              {
                v311 = result < 0;
              }

              if (v311)
              {
LABEL_564:
                sub_2964C8940(v331, v301);
                sub_2964C8944(*i, *(i - 1));
                v312 = v332;
                if (v332)
                {
                  v313 = i - 1;
                  while (1)
                  {
                    v315 = *--v300;
                    v314 = v315;
                    v316 = *(v315 + 8);
                    if (v316)
                    {
                      v317 = *(v316 + 23);
                      v318 = *(v312 + 23);
                      if (v318 >= 0)
                      {
                        v319 = *(v312 + 23);
                      }

                      else
                      {
                        v319 = v312[1];
                      }

                      if (v318 >= 0)
                      {
                        v320 = v312;
                      }

                      else
                      {
                        v320 = *v312;
                      }

                      if (v317 >= 0)
                      {
                        v321 = *(v316 + 23);
                      }

                      else
                      {
                        v321 = v316[1];
                      }

                      if (v317 >= 0)
                      {
                        v322 = v316;
                      }

                      else
                      {
                        v322 = *v316;
                      }

                      if (v321 >= v319)
                      {
                        v323 = v319;
                      }

                      else
                      {
                        v323 = v321;
                      }

                      v324 = memcmp(v320, v322, v323);
                      v325 = v319 < v321;
                      if (v324)
                      {
                        v325 = v324 < 0;
                      }

                      if (!v325)
                      {
                        break;
                      }
                    }

                    sub_2964C8944(*v313, v314);
                    v312 = v332;
                    v313 = v300;
                    if (!v332)
                    {
                      goto LABEL_588;
                    }
                  }

                  v300 = v313;
                }

LABEL_588:
                sub_2964C8944(*v300, v331);
                result = sub_2964C8718(v331);
              }
            }
          }
        }

        return result;
      }

      if (!a3)
      {
        if (v4 != a2)
        {
          v197 = v9 >> 1;
          v198 = v9 >> 1;
          do
          {
            v199 = v198;
            if (v197 >= v198)
            {
              v200 = (2 * v198) | 1;
              v201 = &v4[v200];
              if (2 * v198 + 2 < v8)
              {
                v202 = *(*v201 + 8);
                if (v202)
                {
                  v203 = *(v201[1] + 8);
                  if (!v203)
                  {
                    goto LABEL_397;
                  }

                  v204 = *(v203 + 23);
                  v205 = *(v202 + 23);
                  if (v205 >= 0)
                  {
                    v206 = *(v202 + 23);
                  }

                  else
                  {
                    v206 = *(v202 + 8);
                  }

                  if (v205 >= 0)
                  {
                    v207 = *(*v201 + 8);
                  }

                  else
                  {
                    v207 = *v202;
                  }

                  if (v204 >= 0)
                  {
                    v208 = *(v203 + 23);
                  }

                  else
                  {
                    v208 = *(v203 + 8);
                  }

                  if (v204 >= 0)
                  {
                    v209 = *(v201[1] + 8);
                  }

                  else
                  {
                    v209 = *v203;
                  }

                  if (v208 >= v206)
                  {
                    v210 = v206;
                  }

                  else
                  {
                    v210 = v208;
                  }

                  v211 = memcmp(v207, v209, v210);
                  v212 = v206 < v208;
                  if (v211)
                  {
                    v212 = v211 < 0;
                  }

                  if (v212)
                  {
LABEL_397:
                    ++v201;
                    v200 = 2 * v199 + 2;
                  }
                }
              }

              v213 = *(*v201 + 8);
              v214 = v4[v199];
              if (!v213)
              {
                goto LABEL_418;
              }

              v215 = *(v214 + 8);
              if (v215)
              {
                v216 = *(v215 + 23);
                v217 = *(v213 + 23);
                if (v217 >= 0)
                {
                  v218 = *(v213 + 23);
                }

                else
                {
                  v218 = *(v213 + 8);
                }

                if (v217 >= 0)
                {
                  v219 = *(*v201 + 8);
                }

                else
                {
                  v219 = *v213;
                }

                if (v216 >= 0)
                {
                  v220 = *(v215 + 23);
                }

                else
                {
                  v220 = *(v215 + 8);
                }

                if (v216 >= 0)
                {
                  v221 = *(v214 + 8);
                }

                else
                {
                  v221 = *v215;
                }

                if (v220 >= v218)
                {
                  v222 = v218;
                }

                else
                {
                  v222 = v220;
                }

                v223 = memcmp(v219, v221, v222);
                v224 = v218 < v220;
                if (v223)
                {
                  v224 = v223 < 0;
                }

                if (!v224)
                {
LABEL_418:
                  sub_2964C8940(v331, v214);
                  sub_2964C8944(v4[v199], *v201);
                  if (v197 >= v200)
                  {
                    while (1)
                    {
                      v226 = 2 * v200;
                      v200 = (2 * v200) | 1;
                      v225 = &v4[v200];
                      v227 = v226 + 2;
                      if (v226 + 2 < v8)
                      {
                        v228 = *(*v225 + 8);
                        if (v228)
                        {
                          v229 = *(v225[1] + 8);
                          if (!v229)
                          {
                            goto LABEL_441;
                          }

                          v230 = *(v229 + 23);
                          v231 = *(v228 + 23);
                          if (v231 >= 0)
                          {
                            v232 = *(v228 + 23);
                          }

                          else
                          {
                            v232 = *(v228 + 8);
                          }

                          if (v231 >= 0)
                          {
                            v233 = *(*v225 + 8);
                          }

                          else
                          {
                            v233 = *v228;
                          }

                          if (v230 >= 0)
                          {
                            v234 = *(v229 + 23);
                          }

                          else
                          {
                            v234 = *(v229 + 8);
                          }

                          if (v230 >= 0)
                          {
                            v235 = *(v225[1] + 8);
                          }

                          else
                          {
                            v235 = *v229;
                          }

                          if (v234 >= v232)
                          {
                            v236 = v232;
                          }

                          else
                          {
                            v236 = v234;
                          }

                          v237 = memcmp(v233, v235, v236);
                          v238 = v232 < v234;
                          if (v237)
                          {
                            v238 = v237 < 0;
                          }

                          if (v238)
                          {
LABEL_441:
                            ++v225;
                            v200 = v227;
                          }
                        }
                      }

                      v239 = *v225;
                      v240 = *(*v225 + 8);
                      if (v240)
                      {
                        if (!v332)
                        {
                          break;
                        }

                        v241 = *(v332 + 23);
                        v242 = *(v240 + 23);
                        if (v242 >= 0)
                        {
                          v243 = *(v240 + 23);
                        }

                        else
                        {
                          v243 = *(v240 + 8);
                        }

                        if (v242 >= 0)
                        {
                          v244 = *(*v225 + 8);
                        }

                        else
                        {
                          v244 = *v240;
                        }

                        if (v241 >= 0)
                        {
                          v245 = *(v332 + 23);
                        }

                        else
                        {
                          v245 = v332[1];
                        }

                        if (v241 >= 0)
                        {
                          v246 = v332;
                        }

                        else
                        {
                          v246 = *v332;
                        }

                        if (v245 >= v243)
                        {
                          v247 = v243;
                        }

                        else
                        {
                          v247 = v245;
                        }

                        v248 = memcmp(v244, v246, v247);
                        v249 = v243 < v245;
                        if (v248)
                        {
                          v249 = v248 < 0;
                        }

                        if (v249)
                        {
                          break;
                        }
                      }

                      sub_2964C8944(*v201, v239);
                      v201 = v225;
                      if (v197 < v200)
                      {
                        goto LABEL_463;
                      }
                    }
                  }

                  v225 = v201;
LABEL_463:
                  sub_2964C8944(*v225, v331);
                  sub_2964C8718(v331);
                }
              }
            }

            v198 = v199 - 1;
          }

          while (v199);
          do
          {
            sub_2964C8940(v330, *v4);
            v250 = 0;
            v251 = v4;
            do
            {
              v252 = v251;
              v251 += v250 + 1;
              v253 = 2 * v250;
              v250 = (2 * v250) | 1;
              v254 = v253 + 2;
              if (v253 + 2 < v8)
              {
                v255 = *(*v251 + 8);
                if (v255)
                {
                  v256 = *(v251[1] + 8);
                  if (!v256)
                  {
                    goto LABEL_487;
                  }

                  v257 = *(v256 + 23);
                  v258 = *(v255 + 23);
                  if (v258 >= 0)
                  {
                    v259 = *(v255 + 23);
                  }

                  else
                  {
                    v259 = *(v255 + 8);
                  }

                  if (v258 >= 0)
                  {
                    v260 = *(*v251 + 8);
                  }

                  else
                  {
                    v260 = *v255;
                  }

                  if (v257 >= 0)
                  {
                    v261 = *(v256 + 23);
                  }

                  else
                  {
                    v261 = *(v256 + 8);
                  }

                  if (v257 >= 0)
                  {
                    v262 = *(v251[1] + 8);
                  }

                  else
                  {
                    v262 = *v256;
                  }

                  if (v261 >= v259)
                  {
                    v263 = v259;
                  }

                  else
                  {
                    v263 = v261;
                  }

                  v264 = memcmp(v260, v262, v263);
                  v265 = v259 < v261;
                  if (v264)
                  {
                    v265 = v264 < 0;
                  }

                  if (v265)
                  {
LABEL_487:
                    ++v251;
                    v250 = v254;
                  }
                }
              }

              sub_2964C8944(*v252, *v251);
            }

            while (v250 <= ((v8 - 2) >> 1));
            v266 = a2 - 1;
            if (v251 == --a2)
            {
              sub_2964C8944(*v251, v330);
            }

            else
            {
              v268 = v266;
              sub_2964C8944(*v251, *v266);
              sub_2964C8944(*v268, v330);
              v269 = (v251 - v4 + 8) >> 3;
              v270 = v269 - 2;
              if (v269 >= 2)
              {
                v271 = v270 >> 1;
                v272 = &v4[v270 >> 1];
                v273 = *(*v272 + 8);
                if (v273)
                {
                  v274 = *v251;
                  v275 = *(*v251 + 8);
                  if (!v275)
                  {
                    goto LABEL_511;
                  }

                  v276 = *(v275 + 23);
                  v277 = *(v273 + 23);
                  if (v277 >= 0)
                  {
                    v278 = *(v273 + 23);
                  }

                  else
                  {
                    v278 = *(v273 + 8);
                  }

                  if (v277 >= 0)
                  {
                    v279 = *(*v272 + 8);
                  }

                  else
                  {
                    v279 = *v273;
                  }

                  if (v276 >= 0)
                  {
                    v280 = *(v275 + 23);
                  }

                  else
                  {
                    v280 = *(v275 + 8);
                  }

                  if (v276 >= 0)
                  {
                    v281 = *(*v251 + 8);
                  }

                  else
                  {
                    v281 = *v275;
                  }

                  if (v280 >= v278)
                  {
                    v282 = v278;
                  }

                  else
                  {
                    v282 = v280;
                  }

                  v283 = memcmp(v279, v281, v282);
                  v284 = v278 < v280;
                  if (v283)
                  {
                    v284 = v283 < 0;
                  }

                  if (v284)
                  {
LABEL_511:
                    sub_2964C8940(v331, v274);
                    sub_2964C8944(*v251, *v272);
                    if (v270 >= 2)
                    {
                      v285 = &v4[v270 >> 1];
                      while (1)
                      {
                        v286 = v271 - 1;
                        v271 = (v271 - 1) >> 1;
                        v272 = &v4[v271];
                        v287 = *v272;
                        v288 = *(*v272 + 8);
                        if (!v288)
                        {
                          break;
                        }

                        if (v332)
                        {
                          v289 = *(v332 + 23);
                          v290 = *(v288 + 23);
                          if (v290 >= 0)
                          {
                            v291 = *(v288 + 23);
                          }

                          else
                          {
                            v291 = *(v288 + 8);
                          }

                          if (v290 >= 0)
                          {
                            v292 = *(*v272 + 8);
                          }

                          else
                          {
                            v292 = *v288;
                          }

                          if (v289 >= 0)
                          {
                            v293 = *(v332 + 23);
                          }

                          else
                          {
                            v293 = v332[1];
                          }

                          if (v289 >= 0)
                          {
                            v294 = v332;
                          }

                          else
                          {
                            v294 = *v332;
                          }

                          if (v293 >= v291)
                          {
                            v295 = v291;
                          }

                          else
                          {
                            v295 = v293;
                          }

                          v296 = memcmp(v292, v294, v295);
                          v297 = v291 < v293;
                          if (v296)
                          {
                            v297 = v296 < 0;
                          }

                          if (!v297)
                          {
                            break;
                          }
                        }

                        sub_2964C8944(*v285, v287);
                        v285 = &v4[v271];
                        if (v286 <= 1)
                        {
                          goto LABEL_537;
                        }
                      }

                      v272 = v285;
                    }

LABEL_537:
                    sub_2964C8944(*v272, v331);
                    sub_2964C8718(v331);
                  }
                }
              }
            }

            result = sub_2964C8718(v330);
          }

          while (v8-- > 2);
        }

        return result;
      }

      v10 = (v7 >> 1) & 0xFFFFFFFFFFFFFFF8;
      if (v8 < 0x81)
      {
        sub_2964BB32C(v4 + v10, v4, v327);
      }

      else
      {
        sub_2964BB32C(v4, (v4 + v10), v327);
        sub_2964BB32C((v4 + 1), (v4 + v10 - 8), a2 - 2);
        sub_2964BB32C((v4 + 2), (v4 + v10 + 8), a2 - 3);
        sub_2964BB32C(v4 + v10 - 8, (v4 + v10), (v4 + v10 + 8));
        sub_2964C8898(*v4, *(v4 + v10));
      }

      --a3;
      v11 = *v4;
      if ((a4 & 1) == 0)
      {
        v12 = *(*(v4 - 1) + 8);
        if (!v12)
        {
          goto LABEL_160;
        }

        v13 = *(v11 + 8);
        if (v13)
        {
          v14 = *(v13 + 23);
          v15 = *(v12 + 23);
          if (v15 >= 0)
          {
            v16 = *(v12 + 23);
          }

          else
          {
            v16 = *(v12 + 8);
          }

          if (v15 >= 0)
          {
            v17 = *(*(v4 - 1) + 8);
          }

          else
          {
            v17 = *v12;
          }

          if (v14 >= 0)
          {
            v18 = *(v13 + 23);
          }

          else
          {
            v18 = *(v13 + 8);
          }

          if (v14 >= 0)
          {
            v19 = *(v11 + 8);
          }

          else
          {
            v19 = *v13;
          }

          if (v18 >= v16)
          {
            v20 = v16;
          }

          else
          {
            v20 = v18;
          }

          v21 = memcmp(v17, v19, v20);
          v22 = v16 < v18;
          if (v21)
          {
            v22 = v21 < 0;
          }

          if (!v22)
          {
LABEL_160:
            sub_2964C8940(v331, v11);
            v89 = v332;
            if (!v332)
            {
              goto LABEL_272;
            }

            v90 = *(*v327 + 8);
            if (!v90)
            {
              goto LABEL_180;
            }

            v91 = *(v90 + 23);
            v92 = *(v332 + 23);
            if (v92 >= 0)
            {
              v93 = *(v332 + 23);
            }

            else
            {
              v93 = v332[1];
            }

            if (v92 >= 0)
            {
              v94 = v332;
            }

            else
            {
              v94 = *v332;
            }

            if (v91 >= 0)
            {
              v95 = *(v90 + 23);
            }

            else
            {
              v95 = *(v90 + 8);
            }

            if (v91 >= 0)
            {
              v96 = *(*v327 + 8);
            }

            else
            {
              v96 = *v90;
            }

            if (v95 >= v93)
            {
              v97 = v93;
            }

            else
            {
              v97 = v95;
            }

            v98 = memcmp(v94, v96, v97);
            v99 = v93 < v95;
            if (v98)
            {
              v99 = v98 < 0;
            }

            if (v99)
            {
LABEL_180:
              j = v4 + 1;
              v100 = *(v4[1] + 8);
              if (v100)
              {
                v101 = *(v89 + 23);
                if (v101 >= 0)
                {
                  v102 = *(v89 + 23);
                }

                else
                {
                  v102 = v89[1];
                }

                if (v101 >= 0)
                {
                  v103 = v89;
                }

                else
                {
                  v103 = *v89;
                }

                do
                {
                  v104 = *(v100 + 23);
                  if (v104 >= 0)
                  {
                    v105 = *(v100 + 23);
                  }

                  else
                  {
                    v105 = v100[1];
                  }

                  if (v104 >= 0)
                  {
                    v106 = v100;
                  }

                  else
                  {
                    v106 = *v100;
                  }

                  if (v105 >= v102)
                  {
                    v107 = v102;
                  }

                  else
                  {
                    v107 = v105;
                  }

                  v108 = memcmp(v103, v106, v107);
                  v109 = v102 < v105;
                  if (v108)
                  {
                    v109 = v108 < 0;
                  }

                  if (v109)
                  {
                    break;
                  }

                  v110 = j[1];
                  ++j;
                  v100 = *(v110 + 8);
                }

                while (v100);
              }
            }

            else
            {
LABEL_272:
              for (j = v4 + 1; j < a2; ++j)
              {
                if (v89)
                {
                  v147 = *(*j + 8);
                  if (!v147)
                  {
                    break;
                  }

                  v148 = *(v147 + 23);
                  v149 = *(v89 + 23);
                  if (v149 >= 0)
                  {
                    v150 = *(v89 + 23);
                  }

                  else
                  {
                    v150 = v89[1];
                  }

                  if (v149 >= 0)
                  {
                    v151 = v89;
                  }

                  else
                  {
                    v151 = *v89;
                  }

                  if (v148 >= 0)
                  {
                    v152 = *(v147 + 23);
                  }

                  else
                  {
                    v152 = *(v147 + 8);
                  }

                  if (v148 >= 0)
                  {
                    v153 = *(*j + 8);
                  }

                  else
                  {
                    v153 = *v147;
                  }

                  if (v152 >= v150)
                  {
                    v154 = v150;
                  }

                  else
                  {
                    v154 = v152;
                  }

                  v155 = memcmp(v151, v153, v154);
                  v156 = v150 < v152;
                  if (v155)
                  {
                    v156 = v155 < 0;
                  }

                  if (v156)
                  {
                    break;
                  }
                }
              }
            }

            if (j >= a2)
            {
              k = a2;
            }

            else
            {
              k = a2 - 1;
            }

            if (j < a2 && v89)
            {
              for (k = a2 - 1; ; --k)
              {
                v112 = *(*k + 8);
                if (v112)
                {
                  v113 = *(v112 + 23);
                  v114 = *(v89 + 23);
                  if (v114 >= 0)
                  {
                    v115 = *(v89 + 23);
                  }

                  else
                  {
                    v115 = v89[1];
                  }

                  if (v114 >= 0)
                  {
                    v116 = v89;
                  }

                  else
                  {
                    v116 = *v89;
                  }

                  if (v113 >= 0)
                  {
                    v117 = *(v112 + 23);
                  }

                  else
                  {
                    v117 = *(v112 + 8);
                  }

                  if (v113 >= 0)
                  {
                    v118 = *(*k + 8);
                  }

                  else
                  {
                    v118 = *v112;
                  }

                  if (v117 >= v115)
                  {
                    v119 = v115;
                  }

                  else
                  {
                    v119 = v117;
                  }

                  v120 = memcmp(v116, v118, v119);
                  v121 = v115 < v117;
                  if (v120)
                  {
                    v121 = v120 < 0;
                  }

                  if (!v121)
                  {
                    break;
                  }
                }
              }
            }

            if (j < k)
            {
              v122 = *j;
              v123 = *k;
              do
              {
                sub_2964C8898(v122, v123);
                v124 = v332;
                do
                {
                  do
                  {
                    ++j;
                  }

                  while (!v124);
                  v122 = *j;
                  v125 = *(*j + 8);
                  if (!v125)
                  {
                    break;
                  }

                  v126 = *(v125 + 23);
                  v127 = *(v124 + 23);
                  if (v127 >= 0)
                  {
                    v128 = *(v124 + 23);
                  }

                  else
                  {
                    v128 = v124[1];
                  }

                  if (v127 >= 0)
                  {
                    v129 = v124;
                  }

                  else
                  {
                    v129 = *v124;
                  }

                  if (v126 >= 0)
                  {
                    v130 = *(v125 + 23);
                  }

                  else
                  {
                    v130 = *(v125 + 8);
                  }

                  if (v126 >= 0)
                  {
                    v131 = *(*j + 8);
                  }

                  else
                  {
                    v131 = *v125;
                  }

                  if (v130 >= v128)
                  {
                    v132 = v128;
                  }

                  else
                  {
                    v132 = v130;
                  }

                  v133 = memcmp(v129, v131, v132);
                  v134 = v128 < v130;
                  if (v133)
                  {
                    v134 = v133 < 0;
                  }
                }

                while (!v134);
                do
                {
                  do
                  {
                    v135 = *--k;
                    v123 = v135;
                    v136 = *(v135 + 8);
                  }

                  while (!v136);
                  v137 = *(v136 + 23);
                  v138 = *(v124 + 23);
                  if (v138 >= 0)
                  {
                    v139 = *(v124 + 23);
                  }

                  else
                  {
                    v139 = v124[1];
                  }

                  if (v138 >= 0)
                  {
                    v140 = v124;
                  }

                  else
                  {
                    v140 = *v124;
                  }

                  if (v137 >= 0)
                  {
                    v141 = *(v136 + 23);
                  }

                  else
                  {
                    v141 = v136[1];
                  }

                  if (v137 >= 0)
                  {
                    v142 = v136;
                  }

                  else
                  {
                    v142 = *v136;
                  }

                  if (v141 >= v139)
                  {
                    v143 = v139;
                  }

                  else
                  {
                    v143 = v141;
                  }

                  v144 = memcmp(v140, v142, v143);
                  v145 = v139 < v141;
                  if (v144)
                  {
                    v145 = v144 < 0;
                  }
                }

                while (v145);
              }

              while (j < k);
            }

            v146 = j - 1;
            if (j - 1 != v4)
            {
              sub_2964C8944(*v4, *v146);
            }

            sub_2964C8944(*v146, v331);
            result = sub_2964C8718(v331);
            a4 = 0;
            v5 = a2;
            goto LABEL_3;
          }
        }
      }

      sub_2964C8940(v331, v11);
      v23 = v4 + 1;
      v24 = v4[1];
      v25 = *(v24 + 8);
      if (v25)
      {
        v26 = v332;
        do
        {
          if (v26)
          {
            v27 = *(v26 + 23);
            v28 = *(v25 + 23);
            if (v28 >= 0)
            {
              v29 = *(v25 + 23);
            }

            else
            {
              v29 = v25[1];
            }

            if (v28 >= 0)
            {
              v30 = v25;
            }

            else
            {
              v30 = *v25;
            }

            if (v27 >= 0)
            {
              v31 = *(v26 + 23);
            }

            else
            {
              v31 = v26[1];
            }

            if (v27 >= 0)
            {
              v32 = v26;
            }

            else
            {
              v32 = *v26;
            }

            if (v31 >= v29)
            {
              v33 = v29;
            }

            else
            {
              v33 = v31;
            }

            v34 = memcmp(v30, v32, v33);
            v35 = v29 < v31;
            if (v34)
            {
              v35 = v34 < 0;
            }

            if (!v35)
            {
              break;
            }
          }

          v36 = v23[1];
          ++v23;
          v24 = v36;
          v25 = *(v36 + 8);
        }

        while (v25);
      }

      v37 = v23 - 1;
      if (v23 - 1 == v4)
      {
        m = a2;
        if (v23 < a2)
        {
          v39 = v332;
          for (m = a2 - 1; ; --m)
          {
            v40 = *(*m + 8);
            if (v40)
            {
              if (!v39)
              {
                break;
              }

              v41 = *(v39 + 23);
              v42 = *(v40 + 23);
              if (v42 >= 0)
              {
                v43 = *(v40 + 23);
              }

              else
              {
                v43 = *(v40 + 8);
              }

              if (v42 >= 0)
              {
                v44 = *(*m + 8);
              }

              else
              {
                v44 = *v40;
              }

              if (v41 >= 0)
              {
                v45 = *(v39 + 23);
              }

              else
              {
                v45 = v39[1];
              }

              if (v41 >= 0)
              {
                v46 = v39;
              }

              else
              {
                v46 = *v39;
              }

              if (v45 >= v43)
              {
                v47 = v43;
              }

              else
              {
                v47 = v45;
              }

              v48 = memcmp(v44, v46, v47);
              v49 = v43 >= v45;
              if (v48)
              {
                v49 = v48 >= 0;
              }

              if (v23 >= m || !v49)
              {
                break;
              }
            }

            else if (v23 >= m)
            {
              break;
            }
          }
        }
      }

      else
      {
        v50 = v332;
        for (m = a2 - 1; ; --m)
        {
          v51 = *(*m + 8);
          if (v51)
          {
            if (!v50)
            {
              break;
            }

            v52 = *(v50 + 23);
            v53 = *(v51 + 23);
            if (v53 >= 0)
            {
              v54 = *(v51 + 23);
            }

            else
            {
              v54 = *(v51 + 8);
            }

            if (v53 >= 0)
            {
              v55 = *(*m + 8);
            }

            else
            {
              v55 = *v51;
            }

            if (v52 >= 0)
            {
              v56 = *(v50 + 23);
            }

            else
            {
              v56 = v50[1];
            }

            if (v52 >= 0)
            {
              v57 = v50;
            }

            else
            {
              v57 = *v50;
            }

            if (v56 >= v54)
            {
              v58 = v54;
            }

            else
            {
              v58 = v56;
            }

            v59 = memcmp(v55, v57, v58);
            v60 = v54 < v56;
            if (v59)
            {
              v60 = v59 < 0;
            }

            if (v60)
            {
              break;
            }
          }
        }
      }

      if (v23 < m)
      {
        v61 = *m;
        v62 = v23;
        v63 = m;
        do
        {
          sub_2964C8898(v24, v61);
          v64 = v62[1];
          ++v62;
          v24 = v64;
          v65 = *(v64 + 8);
          for (n = v332; v65; v65 = *(v76 + 8))
          {
            if (n)
            {
              v67 = *(n + 23);
              v68 = *(v65 + 23);
              if (v68 >= 0)
              {
                v69 = *(v65 + 23);
              }

              else
              {
                v69 = v65[1];
              }

              if (v68 >= 0)
              {
                v70 = v65;
              }

              else
              {
                v70 = *v65;
              }

              if (v67 >= 0)
              {
                v71 = *(n + 23);
              }

              else
              {
                v71 = n[1];
              }

              if (v67 >= 0)
              {
                v72 = n;
              }

              else
              {
                v72 = *n;
              }

              if (v71 >= v69)
              {
                v73 = v69;
              }

              else
              {
                v73 = v71;
              }

              v74 = memcmp(v70, v72, v73);
              v75 = v69 < v71;
              if (v74)
              {
                v75 = v74 < 0;
              }

              if (!v75)
              {
                break;
              }
            }

            v76 = v62[1];
            ++v62;
            v24 = v76;
          }

          do
          {
            do
            {
              v77 = *--v63;
              v61 = v77;
              v78 = *(v77 + 8);
            }

            while (!v78);
            if (!n)
            {
              break;
            }

            v79 = *(n + 23);
            v80 = *(v78 + 23);
            if (v80 >= 0)
            {
              v81 = *(v78 + 23);
            }

            else
            {
              v81 = v78[1];
            }

            if (v80 >= 0)
            {
              v82 = v78;
            }

            else
            {
              v82 = *v78;
            }

            if (v79 >= 0)
            {
              v83 = *(n + 23);
            }

            else
            {
              v83 = n[1];
            }

            if (v79 >= 0)
            {
              v84 = n;
            }

            else
            {
              v84 = *n;
            }

            if (v83 >= v81)
            {
              v85 = v81;
            }

            else
            {
              v85 = v83;
            }

            v86 = memcmp(v82, v84, v85);
            v87 = v81 < v83;
            if (v86)
            {
              v87 = v86 < 0;
            }
          }

          while (!v87);
        }

        while (v62 < v63);
        v37 = v62 - 1;
      }

      if (v37 != v4)
      {
        sub_2964C8944(*v4, *v37);
      }

      sub_2964C8944(*v37, v331);
      sub_2964C8718(v331);
      if (v23 < m)
      {
LABEL_159:
        result = sub_2964BA274(v4, v37, a3, a4 & 1);
        a4 = 0;
        j = v37 + 1;
        v5 = a2;
        goto LABEL_3;
      }

      v88 = sub_2964BBA2C(v4, v37);
      result = sub_2964BBA2C(v37 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v88)
      {
        goto LABEL_159;
      }

      v4 = v37 + 1;
      v5 = a2;
    }

    a2 = v37;
    if ((v88 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_2964BB32C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *(*a2 + 8);
  if (!v7)
  {
    v31 = *a3;
    if (!*(*a3 + 8))
    {
      return result;
    }

LABEL_77:
    result = sub_2964C8898(v6, v31);
    v50 = *a2;
    v51 = *(v50 + 8);
    if (v51)
    {
      v52 = *v5;
      v53 = *(*v5 + 8);
      if (!v53)
      {
        goto LABEL_97;
      }

      v54 = *(v53 + 23);
      v55 = *(v51 + 23);
      if (v55 >= 0)
      {
        v56 = *(v51 + 23);
      }

      else
      {
        v56 = *(v51 + 8);
      }

      if (v55 >= 0)
      {
        v57 = *(v50 + 8);
      }

      else
      {
        v57 = *v51;
      }

      if (v54 >= 0)
      {
        v58 = *(v53 + 23);
      }

      else
      {
        v58 = v53[1];
      }

      if (v54 >= 0)
      {
        v59 = v53;
      }

      else
      {
        v59 = *v53;
      }

      if (v58 >= v56)
      {
        v60 = v56;
      }

      else
      {
        v60 = v58;
      }

      result = memcmp(v57, v59, v60);
      v61 = v56 < v58;
      if (result)
      {
        v61 = result < 0;
      }

      if (v61)
      {
LABEL_97:
        v29 = v52;
        v30 = v50;
        goto LABEL_98;
      }
    }

    return result;
  }

  v8 = *result;
  v9 = *(*result + 8);
  if (v9)
  {
    v10 = *(v9 + 23);
    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = *(v7 + 23);
    }

    else
    {
      v12 = v7[1];
    }

    if (v11 >= 0)
    {
      v13 = *(*a2 + 8);
    }

    else
    {
      v13 = *v7;
    }

    if (v10 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    if (v10 >= 0)
    {
      v15 = *(*result + 8);
    }

    else
    {
      v15 = *v9;
    }

    if (v14 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    result = memcmp(v13, v15, v16);
    v17 = v12 < v14;
    if (result)
    {
      v17 = result < 0;
    }

    if (!v17)
    {
      v31 = *a3;
      v44 = *(v31 + 8);
      if (!v44)
      {
        return result;
      }

      v45 = *(v44 + 23);
      if (v45 >= 0)
      {
        v46 = *(v44 + 23);
      }

      else
      {
        v46 = *(v44 + 8);
      }

      if (v45 >= 0)
      {
        v47 = *(v31 + 8);
      }

      else
      {
        v47 = *v44;
      }

      if (v12 >= v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = v12;
      }

      result = memcmp(v47, v13, v48);
      v49 = v46 < v12;
      if (result)
      {
        v49 = result < 0;
      }

      if (!v49)
      {
        return result;
      }

      goto LABEL_77;
    }
  }

  v18 = *a3;
  v19 = *(*a3 + 8);
  if (v19)
  {
    v20 = *(v7 + 23);
    v21 = *(v19 + 23);
    if (v21 >= 0)
    {
      v22 = *(v19 + 23);
    }

    else
    {
      v22 = *(v19 + 8);
    }

    if (v21 >= 0)
    {
      v23 = *(*a3 + 8);
    }

    else
    {
      v23 = *v19;
    }

    if (v20 >= 0)
    {
      v24 = *(v7 + 23);
    }

    else
    {
      v24 = v7[1];
    }

    if (v20 >= 0)
    {
      v25 = v7;
    }

    else
    {
      v25 = *v7;
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      v29 = v8;
      v30 = v18;
LABEL_98:

      return sub_2964C8898(v29, v30);
    }
  }

  result = sub_2964C8898(v8, v6);
  v32 = *a3;
  v33 = *(*a3 + 8);
  if (v33)
  {
    v34 = *a2;
    v35 = *(v34 + 8);
    if (!v35)
    {
      goto LABEL_63;
    }

    v36 = *(v35 + 23);
    v37 = *(v33 + 23);
    if (v37 >= 0)
    {
      v38 = *(v33 + 23);
    }

    else
    {
      v38 = *(v33 + 8);
    }

    if (v37 >= 0)
    {
      v39 = *(*a3 + 8);
    }

    else
    {
      v39 = *v33;
    }

    if (v36 >= 0)
    {
      v40 = *(v35 + 23);
    }

    else
    {
      v40 = *(v35 + 8);
    }

    if (v36 >= 0)
    {
      v41 = *(v34 + 8);
    }

    else
    {
      v41 = *v35;
    }

    if (v40 >= v38)
    {
      v42 = v38;
    }

    else
    {
      v42 = v40;
    }

    result = memcmp(v39, v41, v42);
    v43 = v38 < v40;
    if (result)
    {
      v43 = result < 0;
    }

    if (v43)
    {
LABEL_63:
      v29 = v34;
      v30 = v32;
      goto LABEL_98;
    }
  }

  return result;
}

uint64_t sub_2964BB5EC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_2964BB32C(a1, a2, a3);
  v9 = *a4;
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *a3;
    v12 = *(*a3 + 8);
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = *(v12 + 23);
    v14 = *(v10 + 23);
    if (v14 >= 0)
    {
      v15 = *(v10 + 23);
    }

    else
    {
      v15 = *(v10 + 8);
    }

    if (v14 >= 0)
    {
      v16 = *(v9 + 8);
    }

    else
    {
      v16 = *v10;
    }

    if (v13 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 8);
    }

    if (v13 >= 0)
    {
      v18 = *(*a3 + 8);
    }

    else
    {
      v18 = *v12;
    }

    if (v17 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    result = memcmp(v16, v18, v19);
    v20 = v15 < v17;
    if (result)
    {
      v20 = result < 0;
    }

    if (v20)
    {
LABEL_21:
      result = sub_2964C8898(v11, v9);
      v21 = *a3;
      v22 = *(v21 + 8);
      if (v22)
      {
        v23 = *a2;
        v24 = *(*a2 + 8);
        if (!v24)
        {
          goto LABEL_41;
        }

        v25 = *(v24 + 23);
        v26 = *(v22 + 23);
        if (v26 >= 0)
        {
          v27 = *(v22 + 23);
        }

        else
        {
          v27 = *(v22 + 8);
        }

        if (v26 >= 0)
        {
          v28 = *(v21 + 8);
        }

        else
        {
          v28 = *v22;
        }

        if (v25 >= 0)
        {
          v29 = *(v24 + 23);
        }

        else
        {
          v29 = *(v24 + 8);
        }

        if (v25 >= 0)
        {
          v30 = *(*a2 + 8);
        }

        else
        {
          v30 = *v24;
        }

        if (v29 >= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v29;
        }

        result = memcmp(v28, v30, v31);
        v32 = v27 < v29;
        if (result)
        {
          v32 = result < 0;
        }

        if (v32)
        {
LABEL_41:
          result = sub_2964C8898(v23, v21);
          v33 = *a2;
          v34 = *(v33 + 8);
          if (v34)
          {
            v35 = *a1;
            v36 = *(v35 + 8);
            if (!v36)
            {
              goto LABEL_61;
            }

            v37 = *(v36 + 23);
            v38 = *(v34 + 23);
            if (v38 >= 0)
            {
              v39 = *(v34 + 23);
            }

            else
            {
              v39 = *(v34 + 8);
            }

            if (v38 >= 0)
            {
              v40 = *(v33 + 8);
            }

            else
            {
              v40 = *v34;
            }

            if (v37 >= 0)
            {
              v41 = *(v36 + 23);
            }

            else
            {
              v41 = *(v36 + 8);
            }

            if (v37 >= 0)
            {
              v42 = *(v35 + 8);
            }

            else
            {
              v42 = *v36;
            }

            if (v41 >= v39)
            {
              v43 = v39;
            }

            else
            {
              v43 = v41;
            }

            result = memcmp(v40, v42, v43);
            v44 = v39 < v41;
            if (result)
            {
              v44 = result < 0;
            }

            if (v44)
            {
LABEL_61:

              return sub_2964C8898(v35, v33);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2964BB7CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_2964BB5EC(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *(v11 + 8);
  if (v12)
  {
    v13 = *a4;
    v14 = *(*a4 + 8);
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *(v14 + 23);
    v16 = *(v12 + 23);
    if (v16 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 8);
    }

    if (v16 >= 0)
    {
      v18 = *(v11 + 8);
    }

    else
    {
      v18 = *v12;
    }

    if (v15 >= 0)
    {
      v19 = *(v14 + 23);
    }

    else
    {
      v19 = *(v14 + 8);
    }

    if (v15 >= 0)
    {
      v20 = *(*a4 + 8);
    }

    else
    {
      v20 = *v14;
    }

    if (v19 >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v19;
    }

    result = memcmp(v18, v20, v21);
    v22 = v17 < v19;
    if (result)
    {
      v22 = result < 0;
    }

    if (v22)
    {
LABEL_21:
      result = sub_2964C8898(v13, v11);
      v23 = *a4;
      v24 = *(v23 + 8);
      if (v24)
      {
        v25 = *a3;
        v26 = *(*a3 + 8);
        if (!v26)
        {
          goto LABEL_41;
        }

        v27 = *(v26 + 23);
        v28 = *(v24 + 23);
        if (v28 >= 0)
        {
          v29 = *(v24 + 23);
        }

        else
        {
          v29 = *(v24 + 8);
        }

        if (v28 >= 0)
        {
          v30 = *(v23 + 8);
        }

        else
        {
          v30 = *v24;
        }

        if (v27 >= 0)
        {
          v31 = *(v26 + 23);
        }

        else
        {
          v31 = *(v26 + 8);
        }

        if (v27 >= 0)
        {
          v32 = *(*a3 + 8);
        }

        else
        {
          v32 = *v26;
        }

        if (v31 >= v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = v31;
        }

        result = memcmp(v30, v32, v33);
        v34 = v29 < v31;
        if (result)
        {
          v34 = result < 0;
        }

        if (v34)
        {
LABEL_41:
          result = sub_2964C8898(v25, v23);
          v35 = *a3;
          v36 = *(v35 + 8);
          if (v36)
          {
            v37 = *a2;
            v38 = *(*a2 + 8);
            if (!v38)
            {
              goto LABEL_61;
            }

            v39 = *(v38 + 23);
            v40 = *(v36 + 23);
            if (v40 >= 0)
            {
              v41 = *(v36 + 23);
            }

            else
            {
              v41 = *(v36 + 8);
            }

            if (v40 >= 0)
            {
              v42 = *(v35 + 8);
            }

            else
            {
              v42 = *v36;
            }

            if (v39 >= 0)
            {
              v43 = *(v38 + 23);
            }

            else
            {
              v43 = *(v38 + 8);
            }

            if (v39 >= 0)
            {
              v44 = *(*a2 + 8);
            }

            else
            {
              v44 = *v38;
            }

            if (v43 >= v41)
            {
              v45 = v41;
            }

            else
            {
              v45 = v43;
            }

            result = memcmp(v42, v44, v45);
            v46 = v41 < v43;
            if (result)
            {
              v46 = result < 0;
            }

            if (v46)
            {
LABEL_61:
              result = sub_2964C8898(v37, v35);
              v47 = *a2;
              v48 = *(v47 + 8);
              if (v48)
              {
                v49 = *a1;
                v50 = *(v49 + 8);
                if (!v50)
                {
                  goto LABEL_81;
                }

                v51 = *(v50 + 23);
                v52 = *(v48 + 23);
                if (v52 >= 0)
                {
                  v53 = *(v48 + 23);
                }

                else
                {
                  v53 = *(v48 + 8);
                }

                if (v52 >= 0)
                {
                  v54 = *(v47 + 8);
                }

                else
                {
                  v54 = *v48;
                }

                if (v51 >= 0)
                {
                  v55 = *(v50 + 23);
                }

                else
                {
                  v55 = *(v50 + 8);
                }

                if (v51 >= 0)
                {
                  v56 = *(v49 + 8);
                }

                else
                {
                  v56 = *v50;
                }

                if (v55 >= v53)
                {
                  v57 = v53;
                }

                else
                {
                  v57 = v55;
                }

                result = memcmp(v54, v56, v57);
                v58 = v53 < v55;
                if (result)
                {
                  v58 = result < 0;
                }

                if (v58)
                {
LABEL_81:

                  return sub_2964C8898(v49, v47);
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

uint64_t sub_2964BBA2C(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2964BB32C(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_2964BB5EC(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_2964BB7CC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
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
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = *a1;
        v8 = *(*a1 + 8);
        if (!v8)
        {
          goto LABEL_24;
        }

        v9 = *(v8 + 23);
        v10 = *(v6 + 23);
        v11 = v10 >= 0 ? *(v6 + 23) : *(v6 + 8);
        v12 = v10 >= 0 ? *(v5 + 8) : *v6;
        v13 = v9 >= 0 ? *(v8 + 23) : *(v8 + 8);
        v14 = v9 >= 0 ? *(v7 + 8) : *v8;
        v15 = v13 >= v11 ? v11 : v13;
        v16 = memcmp(v12, v14, v15);
        v17 = v11 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (v17)
        {
LABEL_24:
          sub_2964C8898(v7, v5);
        }
      }

      return 1;
    }
  }

  v18 = a1 + 2;
  sub_2964BB32C(a1, a1 + 1, a1 + 2);
  v19 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v20 = 0;
    do
    {
      v21 = v18;
      v18 = v19;
      v22 = *v19;
      v23 = *(*v19 + 8);
      if (v23)
      {
        v24 = *(*v21 + 8);
        if (!v24)
        {
          goto LABEL_52;
        }

        v25 = *(v24 + 23);
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = *(v23 + 23);
        }

        else
        {
          v27 = v23[1];
        }

        if (v26 >= 0)
        {
          v28 = v23;
        }

        else
        {
          v28 = *v23;
        }

        if (v25 >= 0)
        {
          v29 = *(v24 + 23);
        }

        else
        {
          v29 = *(v24 + 8);
        }

        if (v25 >= 0)
        {
          v30 = *(*v21 + 8);
        }

        else
        {
          v30 = *v24;
        }

        if (v29 >= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v29;
        }

        v32 = memcmp(v28, v30, v31);
        v33 = v27 < v29;
        if (v32)
        {
          v33 = v32 < 0;
        }

        if (v33)
        {
LABEL_52:
          sub_2964C8940(v48, v22);
          sub_2964C8944(*v18, *v21);
          if (v21 != a1)
          {
            while (v49)
            {
              v34 = v21 - 1;
              v35 = *(v21 - 1);
              v36 = *(v35 + 8);
              if (v36)
              {
                v37 = *(v36 + 23);
                v38 = *(v49 + 23);
                if (v38 >= 0)
                {
                  v39 = *(v49 + 23);
                }

                else
                {
                  v39 = v49[1];
                }

                if (v38 >= 0)
                {
                  v40 = v49;
                }

                else
                {
                  v40 = *v49;
                }

                if (v37 >= 0)
                {
                  v41 = *(v36 + 23);
                }

                else
                {
                  v41 = *(v36 + 8);
                }

                if (v37 >= 0)
                {
                  v42 = *(v35 + 8);
                }

                else
                {
                  v42 = *v36;
                }

                if (v41 >= v39)
                {
                  v43 = v39;
                }

                else
                {
                  v43 = v41;
                }

                v44 = memcmp(v40, v42, v43);
                v45 = v39 < v41;
                if (v44)
                {
                  v45 = v44 < 0;
                }

                if (!v45)
                {
                  break;
                }
              }

              sub_2964C8944(*v21--, v35);
              if (v34 == a1)
              {
                goto LABEL_76;
              }
            }
          }

          v34 = v21;
LABEL_76:
          sub_2964C8944(*v34, v48);
          if (++v20 == 8)
          {
            v46 = v18 + 1 == a2;
            sub_2964C8718(v48);
            return v46;
          }

          sub_2964C8718(v48);
        }
      }

      v19 = v18 + 1;
    }

    while (v18 + 1 != a2);
  }

  return 1;
}

void sub_2964BBD20(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  std::string::append(*a1, 2 * *(a1 + 8), 32);
  std::string::append(*a1, a2);
  std::string::append(*a1, ": ");
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  std::string::append(*a1, v7, v8);
  v9 = *a1;

  std::string::push_back(v9, 10);
}

const char *sub_2964BBDB8(uint64_t a1, int a2)
{
  if (a2)
  {
    return "true";
  }

  else
  {
    return "false";
  }
}

void sub_2964BBE1C(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  std::string::reserve(a2, v4 + 2);
  std::string::push_back(a2, 34);
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

  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x29EDCA600];
    do
    {
      v10 = *v6;
      if (*v6 > 0x21u)
      {
        switch(v10)
        {
          case '""':
            std::string::push_back(a2, 92);
            v11 = 34;
            goto LABEL_30;
          case '\'':
            std::string::push_back(a2, 92);
            v11 = 39;
            goto LABEL_30;
          case '\\':
            v11 = 92;
            std::string::push_back(a2, 92);
            goto LABEL_30;
        }
      }

      else
      {
        switch(v10)
        {
          case 9:
            std::string::push_back(a2, 92);
            v11 = 116;
            goto LABEL_30;
          case 0xA:
            std::string::push_back(a2, 92);
            v11 = 110;
            goto LABEL_30;
          case 0xD:
            std::string::push_back(a2, 92);
            v11 = 114;
            goto LABEL_30;
        }
      }

      v11 = *v6;
      if (v10 < 0)
      {
        v12 = __maskrune(v10, 0x40000uLL);
      }

      else
      {
        v12 = *(v9 + 4 * v10 + 60) & 0x40000;
      }

      if (!v12 || (v10 & 0x80u) == 0 && (v8 & 1) != 0 && (*(v9 + 4 * v10 + 60) & 0x10000) != 0)
      {
        std::string::push_back(a2, 92);
        std::string::push_back(a2, 120);
        sub_2964CCF60(v10, 2uLL, &__p);
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

        v8 = 1;
        goto LABEL_31;
      }

LABEL_30:
      std::string::push_back(a2, v11);
      v8 = 0;
LABEL_31:
      ++v6;
      --v7;
    }

    while (v7);
  }

  std::string::push_back(a2, 34);
}

void sub_2964BC044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2964BC090@<X0>(unint64_t __val@<X1>, _BYTE *a2@<X0>, std::string *a3@<X8>)
{
  v3 = __val;
  std::to_string(&v16, __val);
  v6 = std::string::insert(&v16, 0, "[");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v17, " bytes] ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  std::string::reserve(a3, size + 3 * v3);
  for (; v3; --v3)
  {
    std::string::push_back(a3, a0123456789abcd[*a2 >> 4]);
    std::string::push_back(a3, a0123456789abcd[*a2 & 0xF]);
    std::string::push_back(a3, 32);
    ++a2;
  }

  v11 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v12 = v11;
  v13 = a3 + v11;
  if (v12 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v13 = a3->__r_.__value_.__r.__words[0] + a3->__r_.__value_.__l.__size_;
    v14 = a3->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(a3, ~v14 + v13, 1uLL);
}

void sub_2964BC1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sConvertMetricToXpc(uint64_t *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v6 = xpc_null_create();
  if (!a2 || !a3)
  {
    v9 = xpc_null_create();
    goto LABEL_26;
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  awd::GetProtobufTag(a2, a3, v25);
  v16[0] = 0;
  v16[1] = a2 + v25[0];
  v16[2] = a2 + v25[0] + a3 - LODWORD(v25[0]);
  v17 = a3 - LODWORD(v25[0]);
  v18 = 0;
  v19 = 0;
  v20 = a3 - LODWORD(v25[0]);
  v21 = xmmword_2964E0A40;
  v22 = *MEMORY[0x29EDC9750];
  v23 = 0;
  v24 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C25B390](v7) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  if (v8)
  {
    xpc_retain(v8);
    v10 = v8;
  }

  else
  {
    v10 = xpc_null_create();
  }

  v11 = a1[1];
  v29 = *a1;
  v30 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v26;
  if (v10)
  {
    xpc_retain(v10);
    object = v10;
    v13 = v10;
  }

  else
  {
    v13 = xpc_null_create();
    object = v13;
    if (!v13)
    {
      v13 = 0;
      object = xpc_null_create();
      goto LABEL_19;
    }
  }

  xpc_retain(v13);
LABEL_19:
  xpc_release(v13);
  MetricFileMetadataHelper::MetricFileMetadataHelper(&v32, &v29, v12);
  if (v30)
  {
    sub_2964A5FB4(v30);
  }

  xpc_release(v10);
  do
  {
    v27 = 0uLL;
    v28 = 0xFFFFFFFFLL;
    sub_2964BC65C(v16, &v27, &object);
  }

  while ((v19 & 1) == 0);
  sub_2964AC558(&v34);
  if (v33)
  {
    sub_2964A5FB4(v33);
  }

  xpc_release(object);
  v14 = xpc_null_create();
  xpc_release(v14);
  MEMORY[0x29C25A8E0](v16);
  v9 = v6;
  v6 = v8;
LABEL_26:
  xpc_release(v9);
  return v6;
}

void sub_2964BC47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object)
{
  xpc_release(v28);
  MEMORY[0x29C25A8E0](&a9);
  xpc_release(v27);
  _Unwind_Resume(a1);
}

void sub_2964BC5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9)
  {
    sub_2964DA750(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964BC640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9)
  {
    sub_2964DA750(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964BC65C(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t a3)
{
  v6 = *(this + 1);
  if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (TagFallback)
    {
      goto LABEL_4;
    }

LABEL_14:
    if ((*(this + 36) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
      goto LABEL_54;
    }

    return;
  }

  *(this + 8) = TagFallback;
  *(this + 1) = v6 + 1;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = awd::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v114 = *a2;
  v115 = a2[1].n128_u64[0];
  MetricFileMetadataHelper::getSubfieldType((a3 + 8), &v114, HIDWORD(v8), &v103);
  v114 = v103;
  v115 = v104;
  BuiltinType = MetadataHelper::getBuiltinType(a3 + 8, &v114);
  v12 = BuiltinType;
  DecodingType = awd::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      v100 = 0;
      if (v9 <= 1u)
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v100) & 1) == 0)
          {
            if (!v10 && (*(this + 36) & 1) != 0)
            {
              return;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
          {
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v100) & 1) == 0)
            {
              if (!v10 && (*(this + 36) & 1) != 0)
              {
                return;
              }

LABEL_12:
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
              goto LABEL_54;
            }
          }

          else
          {
            v100 = *v26;
            *(this + 1) = v26 + 1;
          }
        }

        goto LABEL_93;
      }

      if (v9 == 2)
      {
        if (!v10 && (*(this + 36) & 1) != 0)
        {
          return;
        }
      }

      else
      {
        if (v9 != 5)
        {
LABEL_93:
          v29 = v100;
          switch(v12)
          {
            case 1:
            case 15:
              v34 = awd::protobuf::NumberConverter<(awd::reflect::Type)1>::decode(v100);
              *v107 = *a2;
              v108 = a2[1].n128_u64[0];
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              v31 = sub_2964AFA4C(a3, &v114, v10);
              v32 = xpc_null_create();
              if (v12 != 11)
              {
                if (v12 == 12)
                {
                  sub_2964C0668(v34 != 0.0, &object);
                  v35 = object.n128_u64[0];
                  object.n128_u64[0] = v32;
                  xpc_release(v32);
                  object.n128_u64[0] = 0;
                  v32 = v35;
                }

LABEL_193:
                if (MEMORY[0x29C25B390](v32) == MEMORY[0x29EDCAA40])
                {
                  sub_2964C07A8(&v105, v34);
                  v61 = v105;
                  *&v105 = v32;
                  xpc_release(v32);
                  *&v105 = 0;
                  v32 = v61;
                }

                __p = v32;
                if (!v32)
                {
LABEL_187:
                  __p = xpc_null_create();
                  goto LABEL_188;
                }

LABEL_186:
                xpc_retain(v32);
LABEL_188:
                v114 = *v107;
                v115 = v108;
                v59 = sub_2964AFBC0(a3, &v114, v10);
                sub_2964C00EC(a3, v31, &__p, v59);
                xpc_release(__p);
                __p = 0;
                xpc_release(v32);
                return;
              }

              object = *v107;
              v112 = v108;
              sub_2964AFAD0(a3, &object, v10, v34, &v114);
              if (SHIBYTE(v115) < 0)
              {
                if (!*(&v114 + 1))
                {
LABEL_192:
                  operator delete(v114);
                  goto LABEL_193;
                }

                v56 = v114;
              }

              else
              {
                if (!HIBYTE(v115))
                {
                  goto LABEL_193;
                }

                v56 = &v114;
              }

              sub_2964C0824(v56, &object);
              v60 = object.n128_u64[0];
              object.n128_u64[0] = v32;
              xpc_release(v32);
              object.n128_u64[0] = 0;
              v32 = v60;
              if ((SHIBYTE(v115) & 0x80000000) == 0)
              {
                goto LABEL_193;
              }

              goto LABEL_192;
            case 2:
            case 16:
              v30 = awd::protobuf::NumberConverter<(awd::reflect::Type)2>::decode(v100);
              *v107 = *a2;
              v108 = a2[1].n128_u64[0];
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              v31 = sub_2964AFA4C(a3, &v114, v10);
              v32 = xpc_null_create();
              if (v12 != 11)
              {
                if (v12 == 12)
                {
                  sub_2964C0668(v30 != 0.0, &object);
                  v33 = object.n128_u64[0];
                  object.n128_u64[0] = v32;
                  xpc_release(v32);
                  object.n128_u64[0] = 0;
                  v32 = v33;
                }

LABEL_183:
                if (MEMORY[0x29C25B390](v32) == MEMORY[0x29EDCAA40])
                {
                  sub_2964C07E4(&v105, v30);
                  v58 = v105;
                  *&v105 = v32;
                  xpc_release(v32);
                  *&v105 = 0;
                  v32 = v58;
                }

                __p = v32;
                if (!v32)
                {
                  goto LABEL_187;
                }

                goto LABEL_186;
              }

              object = *v107;
              v112 = v108;
              sub_2964AFAD0(a3, &object, v10, v30, &v114);
              if (SHIBYTE(v115) < 0)
              {
                if (!*(&v114 + 1))
                {
LABEL_182:
                  operator delete(v114);
                  goto LABEL_183;
                }

                v55 = v114;
              }

              else
              {
                if (!HIBYTE(v115))
                {
                  goto LABEL_183;
                }

                v55 = &v114;
              }

              sub_2964C0824(v55, &object);
              v57 = object.n128_u64[0];
              object.n128_u64[0] = v32;
              xpc_release(v32);
              object.n128_u64[0] = 0;
              v32 = v57;
              if ((SHIBYTE(v115) & 0x80000000) == 0)
              {
                goto LABEL_183;
              }

              goto LABEL_182;
            case 3:
            case 11:
            case 17:
            case 25:
              object.n128_u64[0] = v100;
              goto LABEL_105;
            case 4:
            case 10:
            case 18:
            case 24:
              object.n128_u64[0] = v100;
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              sub_2964BE728(a3, &object, &v114, v10, v12);
              return;
            case 5:
            case 19:
              object.n128_u64[0] = awd::protobuf::NumberConverter<(awd::reflect::Type)5>::decode(v100);
LABEL_105:
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              sub_2964BEBB0(a3, &object, &v114, v10, v12);
              return;
            case 6:
            case 20:
              object.n128_u32[0] = v100;
              goto LABEL_107;
            case 7:
            case 9:
            case 21:
            case 23:
              object.n128_u32[0] = v100;
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              sub_2964BE96C(a3, &object, &v114, v10, v12);
              return;
            case 8:
            case 22:
              object.n128_u32[0] = awd::protobuf::NumberConverter<(awd::reflect::Type)8>::decode(v100);
LABEL_107:
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              sub_2964BEDF4(a3, &object, &v114, v10, v12);
              return;
            case 12:
            case 26:
              object = *a2;
              v112 = a2[1].n128_u64[0];
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              v36 = sub_2964AFA4C(a3, &v114, v10);
              v37 = xpc_null_create();
              if (v12 == 12)
              {
                sub_2964C0668(v29 != 0, v107);
                v38 = *v107;
                *v107 = v37;
                xpc_release(v37);
                *v107 = 0;
                v37 = v38;
              }

              if (MEMORY[0x29C25B390](v37) == MEMORY[0x29EDCAA40])
              {
                sub_2964C0728(v29 != 0, &v105);
                v39 = v105;
                *&v105 = v37;
                xpc_release(v37);
                *&v105 = 0;
                v37 = v39;
              }

              __p = v37;
              if (v37)
              {
                xpc_retain(v37);
              }

              else
              {
                __p = xpc_null_create();
              }

              v114 = object;
              v115 = v112;
              v54 = sub_2964AFBC0(a3, &v114, v10);
              sub_2964C00EC(a3, v36, &__p, v54);
              xpc_release(__p);
              __p = 0;
              xpc_release(v37);
              return;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25AAF0](exception, "This should never happen, no matter what the input!");
              goto LABEL_54;
          }
        }

        LODWORD(v114) = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v114))
        {
          v100 = v114;
          goto LABEL_93;
        }

        if (!v10 && (*(this + 36) & 1) != 0)
        {
          return;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
LABEL_54:
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      v107[0] = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v107))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v107[0] = *v24;
        *(this + 1) = v24 + 1;
      }

      v114 = 0uLL;
      v115 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        object = *a2;
        v112 = a2[1].n128_u64[0];
        sub_2964BE0E4(a3, &v114, &object, v10);
      }

      if ((SHIBYTE(v115) & 0x80000000) == 0)
      {
        goto LABEL_160;
      }

      v50 = v114;
      goto LABEL_159;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        *&v114 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v114))
        {
          goto LABEL_51;
        }
      }

      else
      {
        *&v114 = 0;
        if (!sub_2964A9740(this, &v114))
        {
          goto LABEL_51;
        }
      }

      v40 = v114;
LABEL_166:
      sub_2964BE550(a3, v40, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      LODWORD(v114) = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v114))
      {
        goto LABEL_51;
      }

      v40 = v114;
      goto LABEL_166;
    }

    object.n128_u32[0] = 0;
    if (!sub_2964A976C(this, &object))
    {
      goto LABEL_51;
    }

    sub_2964AC494(&v114, object.n128_u32[0]);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v114);
    if (String)
    {
      sub_2964BE650(a3, v114, *(&v114 + 1) - v114, v10);
    }

LABEL_157:
    v50 = v114;
    if (!v114)
    {
      goto LABEL_160;
    }

    *(&v114 + 1) = v114;
LABEL_159:
    operator delete(v50);
LABEL_160:
    if ((String & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  if ((DecodingType - 15) >= 0xC)
  {
    if (DecodingType != 14)
    {
      if (DecodingType != 27)
      {
        goto LABEL_51;
      }

      LODWORD(__p) = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__p))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(__p) = *v25;
        *(this + 1) = v25 + 1;
      }

      *v107 = this;
      v107[2] = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      ++*(this + 14);
      *&v105 = this;
      v114 = *a2;
      v115 = a2[1].n128_u64[0];
      object = v103;
      v112 = v104;
      sub_2964BE2CC(a3, this, &v114, v10, &object);
      sub_2964BE514(&v105);
      v51 = *(this + 14);
      v52 = __OFSUB__(v51, 1);
      v53 = v51 - 1;
      if (v53 < 0 == v52)
      {
        *(this + 14) = v53;
      }

      sub_2964AC460(v107);
      return;
    }

    v107[0] = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || (v28 = *v27, (v28 & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v107))
      {
        goto LABEL_51;
      }

      v28 = v107[0];
    }

    else
    {
      v107[0] = *v27;
      *(this + 1) = v27 + 1;
    }

    sub_2964AC494(&v114, v28);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v114);
    if (String)
    {
      object = *a2;
      v112 = a2[1].n128_u64[0];
      sub_2964BE1FC(a3, &v114, &object, v10);
    }

    goto LABEL_157;
  }

  v102 = 0;
  v16 = *(this + 1);
  if (v16 >= *(this + 2) || *v16 < 0)
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
    {
      goto LABEL_51;
    }
  }

  else
  {
    v102 = *v16;
    *(this + 1) = v16 + 1;
  }

  UnpackedType = awd::reflect::getUnpackedType(v14);
  WireTypeForType = awd::reflect::getWireTypeForType(UnpackedType);
  v100 = this;
  v101 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  __p = 0;
  v98 = 0;
  v99 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
        {
          if (v14 <= 20)
          {
            if (v14 <= 17)
            {
              if (v14 != 15)
              {
                if (v14 != 16)
                {
                  if (v14 == 17)
                  {
                    goto LABEL_136;
                  }

                  goto LABEL_262;
                }

                sub_2964AB764(&__p, v107);
                v105 = *a2;
                v106 = a2[1].n128_u64[0];
                v114 = *a2;
                v115 = a2[1].n128_u64[0];
                v46 = sub_2964AFA4C(a3, &v114, v10);
                v47 = xpc_array_create(0, 0);
                if (v47 || (v47 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C25B390](v47) == MEMORY[0x29EDCA9E0])
                  {
                    xpc_retain(v47);
                    v43 = v47;
                  }

                  else
                  {
                    v43 = xpc_null_create();
                  }
                }

                else
                {
                  v43 = xpc_null_create();
                  v47 = 0;
                }

                v95 = v46;
                xpc_release(v47);
                v81 = *v107;
                v82 = *&v107[2];
                if (*v107 != *&v107[2])
                {
                  v83 = MEMORY[0x29EDCAA40];
                  do
                  {
                    v84 = *v81;
                    v85 = xpc_null_create();
                    if (UnpackedType != 11)
                    {
                      if (UnpackedType == 12)
                      {
                        sub_2964C0668(v84 != 0.0, &v113);
                        v86 = v113;
                        v113 = v85;
                        xpc_release(v85);
                        v113 = 0;
                        v85 = v86;
                      }

                      goto LABEL_254;
                    }

                    object = v105;
                    v112 = v106;
                    sub_2964AFAD0(a3, &object, v10, v84, &v114);
                    if (SHIBYTE(v115) < 0)
                    {
                      if (!*(&v114 + 1))
                      {
                        goto LABEL_253;
                      }

                      v87 = v114;
                    }

                    else
                    {
                      if (!HIBYTE(v115))
                      {
                        goto LABEL_254;
                      }

                      v87 = &v114;
                    }

                    sub_2964C0824(v87, &v110);
                    v88 = v110;
                    v110 = v85;
                    xpc_release(v85);
                    v110 = 0;
                    v85 = v88;
                    if (SHIBYTE(v115) < 0)
                    {
LABEL_253:
                      operator delete(v114);
                    }

LABEL_254:
                    if (MEMORY[0x29C25B390](v85) == v83)
                    {
                      sub_2964C07E4(&v109, v84);
                      v89 = v109;
                      v109 = v85;
                      xpc_release(v85);
                      v109 = 0;
                      v85 = v89;
                    }

                    xpc_array_append_value(v43, v85);
                    xpc_release(v85);
                    ++v81;
                  }

                  while (v81 != v82);
                }

                object.n128_u64[0] = v43;
                if (v43)
                {
                  goto LABEL_258;
                }

                goto LABEL_259;
              }

              sub_2964AB324(&__p, v107);
              v105 = *a2;
              v106 = a2[1].n128_u64[0];
              v114 = *a2;
              v115 = a2[1].n128_u64[0];
              v41 = sub_2964AFA4C(a3, &v114, v10);
              v42 = xpc_array_create(0, 0);
              if (v42 || (v42 = xpc_null_create()) != 0)
              {
                if (MEMORY[0x29C25B390](v42) == MEMORY[0x29EDCA9E0])
                {
                  xpc_retain(v42);
                  v43 = v42;
                }

                else
                {
                  v43 = xpc_null_create();
                }
              }

              else
              {
                v43 = xpc_null_create();
                v42 = 0;
              }

              v95 = v41;
              xpc_release(v42);
              v62 = *v107;
              v63 = *&v107[2];
              if (*v107 == *&v107[2])
              {
LABEL_213:
                object.n128_u64[0] = v43;
                if (v43)
                {
LABEL_258:
                  xpc_retain(v43);
                  v90 = v95;
LABEL_260:
                  v114 = v105;
                  v115 = v106;
                  v91 = sub_2964AFBC0(a3, &v114, v10);
                  sub_2964C00EC(a3, v90, &object, v91);
                  xpc_release(object.n128_u64[0]);
                  object.n128_u64[0] = 0;
                  xpc_release(v43);
                  v48 = *v107;
                  if (!*v107)
                  {
                    goto LABEL_140;
                  }

                  *&v107[2] = *v107;
                  goto LABEL_139;
                }

LABEL_259:
                v90 = v95;
                object.n128_u64[0] = xpc_null_create();
                goto LABEL_260;
              }

              v64 = MEMORY[0x29EDCAA40];
              while (1)
              {
                v65 = *v62;
                v66 = xpc_null_create();
                if (UnpackedType != 11)
                {
                  if (UnpackedType == 12)
                  {
                    sub_2964C0668(v65 != 0.0, &v113);
                    v67 = v113;
                    v113 = v66;
                    xpc_release(v66);
                    v113 = 0;
                    v66 = v67;
                  }

                  goto LABEL_210;
                }

                object = v105;
                v112 = v106;
                sub_2964AFAD0(a3, &object, v10, v65, &v114);
                if (SHIBYTE(v115) < 0)
                {
                  if (!*(&v114 + 1))
                  {
                    goto LABEL_209;
                  }

                  v68 = v114;
                }

                else
                {
                  if (!HIBYTE(v115))
                  {
                    goto LABEL_210;
                  }

                  v68 = &v114;
                }

                sub_2964C0824(v68, &v110);
                v69 = v110;
                v110 = v66;
                xpc_release(v66);
                v110 = 0;
                v66 = v69;
                if (SHIBYTE(v115) < 0)
                {
LABEL_209:
                  operator delete(v114);
                }

LABEL_210:
                if (MEMORY[0x29C25B390](v66) == v64)
                {
                  sub_2964C07A8(&v109, v65);
                  v70 = v109;
                  v109 = v66;
                  xpc_release(v66);
                  v109 = 0;
                  v66 = v70;
                }

                xpc_array_append_value(v43, v66);
                xpc_release(v66);
                if (++v62 == v63)
                {
                  goto LABEL_213;
                }
              }
            }

            if (v14 != 18)
            {
              if (v14 == 19)
              {
                sub_2964ABC28(&__p, &v114);
                object = *a2;
                v112 = a2[1].n128_u64[0];
                sub_2964BF650(a3, &v114, &object, v10, UnpackedType);
              }

              else
              {
                sub_2964AB62C(&__p, &v114);
                object = *a2;
                v112 = a2[1].n128_u64[0];
                sub_2964BF95C(a3, &v114, &object, v10, UnpackedType);
              }

              goto LABEL_137;
            }

LABEL_80:
            sub_2964AB2A4(&__p, &v114);
            object = *a2;
            v112 = a2[1].n128_u64[0];
            sub_2964BF038(a3, &v114, &object, v10, UnpackedType);
LABEL_137:
            v48 = v114;
            if (!v114)
            {
LABEL_140:
              if (__p)
              {
                v98 = __p;
                operator delete(__p);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v100);
              return;
            }

            *(&v114 + 1) = v114;
LABEL_139:
            operator delete(v48);
            goto LABEL_140;
          }

          if (v14 <= 23)
          {
            if (v14 == 22)
            {
              sub_2964ABF30(&__p, &v114);
              object = *a2;
              v112 = a2[1].n128_u64[0];
              sub_2964BF95C(a3, &v114, &object, v10, UnpackedType);
            }

            else
            {
              sub_2964AB62C(&__p, &v114);
              object = *a2;
              v112 = a2[1].n128_u64[0];
              sub_2964BF344(a3, &v114, &object, v10, UnpackedType);
            }

            goto LABEL_137;
          }

          if (v14 != 26)
          {
            if (v14 == 25)
            {
LABEL_136:
              sub_2964ABAF0(&__p, &v114);
              object = *a2;
              v112 = a2[1].n128_u64[0];
              sub_2964BF650(a3, &v114, &object, v10, UnpackedType);
              goto LABEL_137;
            }

            if (v14 != 24)
            {
LABEL_262:
              v92 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C25AAF0](v92, "This should never happen, no matter what the input!");
              __cxa_throw(v92, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }

            goto LABEL_80;
          }

          sub_2964AB8A0(&__p, v107);
          v105 = *a2;
          v106 = a2[1].n128_u64[0];
          v114 = *a2;
          v115 = a2[1].n128_u64[0];
          v93 = sub_2964AFA4C(a3, &v114, v10);
          v44 = xpc_array_create(0, 0);
          if (v44 || (v44 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C25B390](v44) == MEMORY[0x29EDCA9E0])
            {
              xpc_retain(v44);
              v45 = v44;
            }

            else
            {
              v45 = xpc_null_create();
            }
          }

          else
          {
            v45 = xpc_null_create();
            v44 = 0;
          }

          xpc_release(v44);
          v71 = *v107;
          v94 = v107[2] & 0x3F;
          v96 = v45;
          if (*&v107[2] <= 0x3FuLL && (v107[2] & 0x3F) == 0)
          {
LABEL_236:
            object.n128_u64[0] = v45;
            if (v45)
            {
              xpc_retain(v45);
            }

            else
            {
              object.n128_u64[0] = xpc_null_create();
            }

            v114 = v105;
            v115 = v106;
            v80 = sub_2964AFBC0(a3, &v114, v10);
            sub_2964C00EC(a3, v93, &object, v80);
            xpc_release(object.n128_u64[0]);
            object.n128_u64[0] = 0;
            xpc_release(v45);
            v48 = *v107;
            if (!*v107)
            {
              goto LABEL_140;
            }

            goto LABEL_139;
          }

          v72 = 0;
          v73 = *v107 + 8 * (*&v107[2] >> 6);
          while (1)
          {
            v74 = xpc_null_create();
            v75 = 1 << v72;
            if (UnpackedType != 11)
            {
              if (UnpackedType == 12)
              {
                sub_2964C0668((*v71 & v75) != 0, &v113);
                v76 = v113;
                v113 = v74;
                xpc_release(v74);
                v113 = 0;
                v74 = v76;
                v45 = v96;
              }

              goto LABEL_229;
            }

            object = v105;
            v112 = v106;
            sub_2964AFAD0(a3, &object, v10, (*v71 >> v72) & 1, &v114);
            if (SHIBYTE(v115) < 0)
            {
              if (!*(&v114 + 1))
              {
                goto LABEL_228;
              }

              v77 = v114;
            }

            else
            {
              if (!HIBYTE(v115))
              {
                goto LABEL_229;
              }

              v77 = &v114;
            }

            sub_2964C0824(v77, &v110);
            v78 = v110;
            v110 = v74;
            xpc_release(v74);
            v110 = 0;
            v74 = v78;
            v45 = v96;
            if (SHIBYTE(v115) < 0)
            {
LABEL_228:
              operator delete(v114);
            }

LABEL_229:
            if (MEMORY[0x29C25B390](v74) == MEMORY[0x29EDCAA40])
            {
              sub_2964C0728((*v71 & v75) != 0, &v109);
              v79 = v109;
              v109 = v74;
              xpc_release(v74);
              v109 = 0;
              v74 = v79;
              v45 = v96;
            }

            xpc_array_append_value(v45, v74);
            xpc_release(v74);
            v71 += v72 == 63;
            if (v72 == 63)
            {
              v72 = 0;
            }

            else
            {
              ++v72;
            }

            if (v71 == v73 && v72 == v94)
            {
              goto LABEL_236;
            }
          }
        }

        *&v114 = 0;
        sub_2964A9798(&__p, &v114);
        if (WireTypeForType > 1)
        {
          break;
        }

        if (WireTypeForType)
        {
          if (WireTypeForType == 1)
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v98 - 1);
LABEL_31:
            if ((LittleEndian64Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v21 = v98 - 1;
          v22 = *(this + 1);
          if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
            goto LABEL_31;
          }

          *v21 = v23;
          *(this + 1) = v22 + 1;
        }
      }

      if (WireTypeForType != 5)
      {
        break;
      }

      LODWORD(v114) = 0;
      LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v114);
      *(v98 - 1) = v114;
      if ((LittleEndian32Fallback & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  while (WireTypeForType != 2);
LABEL_48:
  if (__p)
  {
    v98 = __p;
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
LABEL_51:
  if (v10 || (*(this + 36) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void sub_2964BDCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object)
{
  if (*(v32 - 121) < 0)
  {
    operator delete(*(v32 - 144));
  }

  xpc_release(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_2964BE09C(uint64_t a1)
{
  sub_2964AC558(a1 + 48);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_2964BE0E4(void *a1, char *a2, __int128 *a3, unsigned int a4)
{
  v13 = *a3;
  v14 = *(a3 + 2);
  v8 = sub_2964AFA4C(a1, &v13, a4);
  if (a2[23] >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  sub_2964C0824(v9, &object);
  v11 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v11 = xpc_null_create();
  }

  v13 = *a3;
  v14 = *(a3 + 2);
  v10 = sub_2964AFBC0(a1, &v13, a4);
  sub_2964C00EC(a1, v8, &v11, v10);
  xpc_release(v11);
  v11 = 0;
  xpc_release(object);
}

void sub_2964BE1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_2964BE1FC(void *a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v11 = *a3;
  v12 = *(a3 + 2);
  v8 = sub_2964AFA4C(a1, &v11, a4);
  sub_2964C0874(*a2, *(a2 + 8) - *a2, &object);
  v11 = *a3;
  v12 = *(a3 + 2);
  v9 = sub_2964AFBC0(a1, &v11, a4);
  sub_2964C00EC(a1, v8, &object, v9);
  xpc_release(object);
}

void sub_2964BE2CC(xpc_object_t *a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, __int128 *a3, unsigned int a4, __int128 *a5)
{
  v21 = *a3;
  v22 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, &v21, a4);
  v11 = xpc_dictionary_create(0, 0, 0);
  if (v11 || (v11 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C25B390](v11) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v11);
      v12 = v11;
    }

    else
    {
      v12 = xpc_null_create();
    }
  }

  else
  {
    v12 = xpc_null_create();
    v11 = 0;
  }

  xpc_release(v11);
  v13 = *a1;
  *a1 = xpc_null_create();
  v14 = xpc_null_create();
  v15 = *a1;
  *a1 = v12;
  xpc_release(v15);
  xpc_release(v14);
  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
  {
    v21 = *a5;
    v22 = *(a5 + 2);
    sub_2964BC65C(a2);
  }

  v16 = *a1;
  *a1 = xpc_null_create();
  v17 = xpc_null_create();
  v18 = *a1;
  *a1 = v13;
  xpc_release(v18);
  object = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    object = xpc_null_create();
  }

  v21 = *a3;
  v22 = *(a3 + 2);
  v19 = sub_2964AFBC0(a1, &v21, a4);
  sub_2964C00EC(a1, v10, &object, v19);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  xpc_release(v17);
}

void sub_2964BE4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2964BE514(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2964BE550(void *a1, uint64_t a2, unsigned int __val)
{
  std::to_string(&v8, __val);
  sub_2964C06E8(a2, &v7);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_2964C00EC(a1, v5, &object, 1);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2964BE60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2964BE650(void *a1, void *a2, size_t a3, unsigned int __val)
{
  std::to_string(&v11, __val);
  v7 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
  v8 = v11.__r_.__value_.__r.__words[0];
  sub_2964C0874(a2, a3, &object);
  if (v7 >= 0)
  {
    v9 = &v11;
  }

  else
  {
    v9 = v8;
  }

  sub_2964C00EC(a1, v9, &object, 1);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2964BE6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2964BE728(void *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v24 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = xpc_null_create();
  if (a5 == 11)
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    sub_2964AFAD0(a1, &v20, a4, *a2, __p);
    if (SHIBYTE(v24) < 0)
    {
      if (!__p[1])
      {
LABEL_10:
        operator delete(__p[0]);
        goto LABEL_11;
      }

      v13 = __p[0];
    }

    else
    {
      if (!HIBYTE(v24))
      {
        goto LABEL_11;
      }

      v13 = __p;
    }

    sub_2964C0824(v13, &v19);
    v14 = v19;
    v19 = v11;
    xpc_release(v11);
    v19 = 0;
    v11 = v14;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a5 == 12)
  {
    sub_2964C0668(*a2 != 0, &v22);
    v12 = v22;
    v22 = v11;
    xpc_release(v11);
    v22 = 0;
    v11 = v12;
  }

LABEL_11:
  if (MEMORY[0x29C25B390](v11) == MEMORY[0x29EDCAA40])
  {
    sub_2964C06E8(*a2, &v18);
    v15 = v18;
    v18 = v11;
    xpc_release(v11);
    v18 = 0;
    v11 = v15;
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v24 = *(a3 + 2);
  v16 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C00EC(a1, v10, &object, v16);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2964BE908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

void sub_2964BE96C(void *a1, _DWORD *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v24 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = xpc_null_create();
  if (a5 == 11)
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    sub_2964AFAD0(a1, &v20, a4, *a2, __p);
    if (SHIBYTE(v24) < 0)
    {
      if (!__p[1])
      {
LABEL_10:
        operator delete(__p[0]);
        goto LABEL_11;
      }

      v13 = __p[0];
    }

    else
    {
      if (!HIBYTE(v24))
      {
        goto LABEL_11;
      }

      v13 = __p;
    }

    sub_2964C0824(v13, &v19);
    v14 = v19;
    v19 = v11;
    xpc_release(v11);
    v19 = 0;
    v11 = v14;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a5 == 12)
  {
    sub_2964C0668(*a2 != 0, &v22);
    v12 = v22;
    v22 = v11;
    xpc_release(v11);
    v22 = 0;
    v11 = v12;
  }

LABEL_11:
  if (MEMORY[0x29C25B390](v11) == MEMORY[0x29EDCAA40])
  {
    sub_2964C0768(*a2, &v18);
    v15 = v18;
    v18 = v11;
    xpc_release(v11);
    v18 = 0;
    v11 = v15;
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v24 = *(a3 + 2);
  v16 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C00EC(a1, v10, &object, v16);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2964BEB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

void sub_2964BEBB0(void *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v24 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = xpc_null_create();
  if (a5 == 11)
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    sub_2964AFAD0(a1, &v20, a4, *a2, __p);
    if (SHIBYTE(v24) < 0)
    {
      if (!__p[1])
      {
LABEL_10:
        operator delete(__p[0]);
        goto LABEL_11;
      }

      v13 = __p[0];
    }

    else
    {
      if (!HIBYTE(v24))
      {
        goto LABEL_11;
      }

      v13 = __p;
    }

    sub_2964C0824(v13, &v19);
    v14 = v19;
    v19 = v11;
    xpc_release(v11);
    v19 = 0;
    v11 = v14;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a5 == 12)
  {
    sub_2964C0668(*a2 != 0, &v22);
    v12 = v22;
    v22 = v11;
    xpc_release(v11);
    v22 = 0;
    v11 = v12;
  }

LABEL_11:
  if (MEMORY[0x29C25B390](v11) == MEMORY[0x29EDCAA40])
  {
    sub_2964C06A8(*a2, &v18);
    v15 = v18;
    v18 = v11;
    xpc_release(v11);
    v18 = 0;
    v11 = v15;
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v24 = *(a3 + 2);
  v16 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C00EC(a1, v10, &object, v16);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2964BED90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

void sub_2964BEDF4(void *a1, int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v24 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = xpc_null_create();
  if (a5 == 11)
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    sub_2964AFAD0(a1, &v20, a4, *a2, __p);
    if (SHIBYTE(v24) < 0)
    {
      if (!__p[1])
      {
LABEL_10:
        operator delete(__p[0]);
        goto LABEL_11;
      }

      v13 = __p[0];
    }

    else
    {
      if (!HIBYTE(v24))
      {
        goto LABEL_11;
      }

      v13 = __p;
    }

    sub_2964C0824(v13, &v19);
    v14 = v19;
    v19 = v11;
    xpc_release(v11);
    v19 = 0;
    v11 = v14;
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a5 == 12)
  {
    sub_2964C0668(*a2 != 0, &v22);
    v12 = v22;
    v22 = v11;
    xpc_release(v11);
    v22 = 0;
    v11 = v12;
  }

LABEL_11:
  if (MEMORY[0x29C25B390](v11) == MEMORY[0x29EDCAA40])
  {
    sub_2964C0728(*a2, &v18);
    v15 = v18;
    v18 = v11;
    xpc_release(v11);
    v18 = 0;
    v11 = v15;
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v24 = *(a3 + 2);
  v16 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C00EC(a1, v10, &object, v16);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2964BEFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v22);
  _Unwind_Resume(a1);
}

void sub_2964BF038(void *a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v32 = *(a3 + 2);
  v9 = sub_2964AFA4C(a1, __p, a4);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C25B390](v10) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  v23 = v9;
  xpc_release(v10);
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = MEMORY[0x29EDCAA40];
    do
    {
      v15 = *v12;
      v16 = xpc_null_create();
      if (a5 != 11)
      {
        if (a5 == 12)
        {
          sub_2964C0668(v15 != 0, &v30);
          v17 = v30;
          v30 = v16;
          xpc_release(v16);
          v30 = 0;
          v16 = v17;
        }

        goto LABEL_19;
      }

      v28 = *a3;
      v29 = *(a3 + 2);
      sub_2964AFAD0(a1, &v28, a4, v15, __p);
      if (SHIBYTE(v32) < 0)
      {
        if (!__p[1])
        {
          goto LABEL_18;
        }

        v18 = __p[0];
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_19;
        }

        v18 = __p;
      }

      sub_2964C0824(v18, &v27);
      v19 = v27;
      v27 = v16;
      xpc_release(v16);
      v27 = 0;
      v16 = v19;
      if (SHIBYTE(v32) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }

LABEL_19:
      if (MEMORY[0x29C25B390](v16) == v14)
      {
        sub_2964C06E8(v15, &v26);
        v20 = v26;
        v26 = v16;
        xpc_release(v16);
        v26 = 0;
        v16 = v20;
      }

      xpc_array_append_value(v11, v16);
      xpc_release(v16);
      ++v12;
    }

    while (v12 != v13);
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v21 = v23;
  }

  else
  {
    v21 = v23;
    object = xpc_null_create();
  }

  *__p = *a3;
  v32 = *(a3 + 2);
  v22 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C00EC(a1, v21, &object, v22);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}