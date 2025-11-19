void swift::reflection::EnumTypeInfoBuilder::addCase(uint64_t *a1, uint64_t a2)
{
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v9 = *a2;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = a2;
    swift::reflection::EnumTypeInfoBuilder::addCase();
    a2 = v8;
    if ((*(v8 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
LABEL_6:
  v10 = 0xFFFFFFFF00000000;
  v11 = &swift::reflection::EnumTypeInfoBuilder::addCase(std::string const&)::emptyTI;
  v3 = a1[4];
  if (v3 >= a1[5])
  {
    v6 = std::vector<swift::reflection::FieldInfo>::__emplace_back_slow_path<swift::reflection::FieldInfo>(a1 + 3, &v9);
    v7 = SHIBYTE(v9.__r_.__value_.__r.__words[2]);
    a1[4] = v6;
    if (v7 < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = *&v9.__r_.__value_.__l.__data_;
    *(v3 + 16) = *(&v9.__r_.__value_.__l + 2);
    *v3 = v4;
    v5 = v10;
    *(v3 + 40) = v11;
    *(v3 + 24) = v5;
    a1[4] = v3 + 48;
  }
}

void swift::reflection::EnumTypeInfoBuilder::addCase(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    *(a1 + 48) = 1;
    v6 = *a1;
    *(v6 + 184) = "no type info for case type";
    *(v6 + 192) = a3;
    {
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_6:
        v14 = *a2;
LABEL_11:
        *&v15 = 0xFFFFFFFF00000000;
        *(&v15 + 1) = a3;
        v16 = &swift::reflection::EnumTypeInfoBuilder::addCase(std::string const&,swift::reflection::TypeRef const*,swift::reflection::TypeInfo const*)::emptyTI;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = a2;
      swift::reflection::EnumTypeInfoBuilder::addCase();
      a2 = v13;
      if ((*(v13 + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
    goto LABEL_11;
  }

  a1[1] = vmax_u32(a1[1], *(a4 + 12));
  *(a1 + 20) &= *(a4 + 28);
  if (*(a2 + 23) < 0)
  {
    v7 = a4;
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
    a4 = v7;
  }

  else
  {
    v14 = *a2;
  }

  *&v15 = 0xFFFFFFFF00000000;
  *(&v15 + 1) = a3;
  v16 = a4;
LABEL_12:
  v8 = a1[4];
  if (v8 >= a1[5])
  {
    v11 = std::vector<swift::reflection::FieldInfo>::__emplace_back_slow_path<swift::reflection::FieldInfo>(a1 + 3, &v14);
    v12 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
    a1[4] = v11;
    if (v12 < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = *&v14.__r_.__value_.__l.__data_;
    *(v8 + 16) = *(&v14.__r_.__value_.__l + 2);
    *v8 = v9;
    v10 = v15;
    *(v8 + 40) = v16;
    *(v8 + 24) = v10;
    a1[4] = v8 + 48;
  }
}

uint64_t swift::getEnumTagCounts(swift *this, int a2, unsigned int a3)
{
  LODWORD(v3) = ((~(-1 << (8 * this)) + a2) >> (8 * this)) + a3;
  if (this >= 4)
  {
    LODWORD(v3) = a3 + 1;
  }

  if (a2)
  {
    v3 = v3;
  }

  else
  {
    v3 = a3;
  }

  v4 = 0x100000000;
  v5 = 0x400000000;
  if (v3 < 0x10000)
  {
    v5 = 0x200000000;
  }

  if (v3 >= 0x100)
  {
    v4 = v5;
  }

  if (v3 < 2)
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t swift::reflection::EmptyEnumTypeInfo::EmptyEnumTypeInfo(uint64_t result, void *a2)
{
  *(result + 8) = xmmword_DAAA0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *result = &off_E1578;
  *(result + 32) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *result = &off_E1540;
  return result;
}

void swift::reflection::EmptyEnumTypeInfo::getSpareBits(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  *a2 = v3;
  if ((v3 - 134217729) >> 27 == 31)
  {
    v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
    *(a2 + 8) = v4;
    if (v4)
    {
      v5 = v4;
      memset(v4, 255, v3);
      v4 = v5;
    }

    else
    {
      v3 = 0;
      *a2 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  bzero(v4, v3);
}

void swift::reflection::EmptyEnumTypeInfo::~EmptyEnumTypeInfo(swift::reflection::EmptyEnumTypeInfo *this)
{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t swift::reflection::UnsupportedEnumTypeInfo::UnsupportedEnumTypeInfo(uint64_t result, int a2, int a3, int a4, int a5, char a6, int a7, void *a8)
{
  *(result + 8) = 4;
  *(result + 12) = a2;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = a5;
  *(result + 28) = a6;
  *result = &off_E1578;
  *(result + 32) = a7;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  v8 = a8[1];
  if (v8 != *a8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a8) >> 4) < 0x555555555555556)
    {
      v9 = v8 - *a8;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *result = &off_E15B0;
  return result;
}

void swift::reflection::UnsupportedEnumTypeInfo::getSpareBits(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  *a2 = v3;
  if ((v3 - 134217729) >> 27 == 31)
  {
    v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
    *(a2 + 8) = v4;
    if (v4)
    {
      v5 = v4;
      memset(v4, 255, v3);
      v4 = v5;
    }

    else
    {
      v3 = 0;
      *a2 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  bzero(v4, v3);
}

void swift::reflection::UnsupportedEnumTypeInfo::~UnsupportedEnumTypeInfo(swift::reflection::UnsupportedEnumTypeInfo *this)
{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t swift::reflection::TrivialEnumTypeInfo::TrivialEnumTypeInfo(uint64_t result, int a2, void *a3)
{
  *(result + 8) = xmmword_DAAA0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *result = &off_E1578;
  *(result + 32) = a2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  v3 = a3[1];
  if (v3 != *a3)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a3) >> 4) < 0x555555555555556)
    {
      v4 = v3 - *a3;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *result = &off_E15E8;
  return result;
}

void swift::reflection::TrivialEnumTypeInfo::getSpareBits(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  *a2 = v3;
  if ((v3 - 134217729) >> 27 == 31)
  {
    v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
    *(a2 + 8) = v4;
    if (v4)
    {
      v5 = v4;
      memset(v4, 255, v3);
      v4 = v5;
    }

    else
    {
      v3 = 0;
      *a2 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  bzero(v4, v3);
}

void swift::reflection::TrivialEnumTypeInfo::~TrivialEnumTypeInfo(swift::reflection::TrivialEnumTypeInfo *this)
{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t swift::reflection::NoPayloadEnumTypeInfo::NoPayloadEnumTypeInfo(uint64_t result, int a2, int a3, int a4, int a5, int a6, void *a7)
{
  *(result + 8) = 4;
  *(result + 12) = a2;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = a5;
  *(result + 28) = 1;
  *result = &off_E1578;
  *(result + 32) = a6;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  v7 = a7[1];
  if (v7 != *a7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a7) >> 4) < 0x555555555555556)
    {
      v8 = v7 - *a7;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *result = &off_E1620;
  return result;
}

uint64_t swift::reflection::NoPayloadEnumTypeInfo::readExtraInhabitantIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v7 = *(a1 + 12);
  v12 = 0;
  if (v7 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  result = (*(*a2 + 32))(a2, a3, a4, &v12, v8);
  if (result)
  {
    v10 = -1431655765 * ((*(a1 + 48) - *(a1 + 40)) >> 4);
    v11 = v12 - v10;
    if (v12 < v10)
    {
      v11 = -1;
    }

    *a5 = v11;
  }

  return result;
}

int8x16_t *swift::reflection::NoPayloadEnumTypeInfo::getSpareBits@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 12);
  v4 = -1431655765 * ((*(a1 + 48) - *(a1 + 40)) >> 4) - 1;
  v5 = v4 | HIWORD(v4) | ((v4 | HIWORD(v4)) >> 8);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 2);
  __src = v6 | (v6 >> 1);
  *a2 = v3;
  result = malloc_type_calloc(1uLL, v3, 0x100004077774924uLL);
  *(a2 + 8) = result;
  if (!result)
  {
    *a2 = 0;
    return result;
  }

  v8 = result;
  if (v3 >= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v3;
  }

  result = memcpy(result, &__src, v9);
  if (v3)
  {
    if (v3 < 8)
    {
      v10 = 0;
      goto LABEL_18;
    }

    if (v3 >= 0x20)
    {
      v10 = v3 & 0xFFFFFFE0;
      v11 = v8 + 1;
      v12 = v10;
      do
      {
        v13 = vmvnq_s8(*v11);
        v11[-1] = vmvnq_s8(v11[-1]);
        *v11 = v13;
        v11 += 2;
        v12 -= 32;
      }

      while (v12);
      if (v10 == v3)
      {
        return result;
      }

      if ((v3 & 0x18) == 0)
      {
LABEL_18:
        v17 = v3 - v10;
        v18 = &v8->i8[v10];
        do
        {
          *v18 = ~*v18;
          ++v18;
          --v17;
        }

        while (v17);
        return result;
      }
    }

    else
    {
      v10 = 0;
    }

    v14 = v10;
    v10 = v3 & 0xFFFFFFF8;
    v15 = &v8->i8[v14];
    v16 = v14 - v10;
    do
    {
      *v15 = vmvn_s8(*v15);
      ++v15;
      v16 += 8;
    }

    while (v16);
    if (v10 != v3)
    {
      goto LABEL_18;
    }
  }

  return result;
}

void swift::reflection::NoPayloadEnumTypeInfo::~NoPayloadEnumTypeInfo(swift::reflection::NoPayloadEnumTypeInfo *this)
{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t swift::reflection::NoPayloadEnumTypeInfo::projectEnumValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v7 = *(a1 + 12);
  v14 = 0;
  if (v7 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  result = (*(*a2 + 32))(a2, a3, a4, &v14, v8);
  if (result)
  {
    v10 = -1431655765 * ((*(a1 + 48) - *(a1 + 40)) >> 4);
    v11 = (v10 - 1) | ((v10 - 1) >> 16) | (((v10 - 1) | ((v10 - 1) >> 16)) >> 8);
    v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 2);
    v13 = (v12 | (v12 >> 1)) & v14;
    if (v13 >= v10)
    {
      return 0;
    }

    else
    {
      *a5 = v13;
      return 1;
    }
  }

  return result;
}

uint64_t swift::reflection::SinglePayloadEnumTypeInfo::SinglePayloadEnumTypeInfo(uint64_t result, int a2, int a3, int a4, int a5, char a6, int a7, void *a8)
{
  *(result + 8) = 4;
  *(result + 12) = a2;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = a5;
  *(result + 28) = a6;
  *result = &off_E1578;
  *(result + 32) = a7;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  v8 = a8[1];
  if (v8 != *a8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a8) >> 4) < 0x555555555555556)
    {
      v9 = v8 - *a8;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *result = &off_E1658;
  return result;
}

uint64_t swift::reflection::SinglePayloadEnumTypeInfo::readExtraInhabitantIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v7 = *(a1 + 40);
  if (*(v7 + 23) < 0)
  {
    v9 = a2;
    v10 = a3;
    v11 = a4;
    std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
    a2 = v9;
    a3 = v10;
    a4 = v11;
  }

  else
  {
    v8 = *v7;
    __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
    *&__p.__r_.__value_.__l.__data_ = v8;
  }

  v12 = *(v7 + 24);
  v13 = *(v7 + 5);
  v22 = v13;
  v21 = v12;
  if (*(a1 + 12) >= *(v13 + 12))
  {
    v16 = -1431655765 * ((*(a1 + 48) - *(a1 + 40)) >> 4);
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v18 = -1;
    }

    else
    {
      if (!(**v13)(v13, a2, a3, a4, a5))
      {
        goto LABEL_5;
      }

      if (*a5 < v17 || *a5 < 0)
      {
        v18 = -1;
      }

      else
      {
        v18 = *a5 - v17;
      }
    }

    *a5 = v18;
    v14 = 1;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v14;
    }

    goto LABEL_6;
  }

LABEL_5:
  v14 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void swift::reflection::SinglePayloadEnumTypeInfo::getSpareBits(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    __p.__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&__p.__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(v4 + 24);
  v26 = *(v4 + 5);
  v25 = v6;
  v7 = *(v26 + 12);
  v8 = *(a1 + 12);
  v9 = v8 - 134217729;
  if (v8 <= v7)
  {
    *a2 = v8;
    if (v9 >> 27 == 31)
    {
      v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
      *(a2 + 8) = v10;
      if (v10)
      {
        v12 = v10;
        memset(v10, 255, v8);
        v10 = v12;
      }

      else
      {
        v8 = 0;
        *a2 = 0;
      }
    }

    else
    {
      v8 = 0;
      v10 = 0;
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    bzero(v10, v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_31:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = v8;
    if (v9 >> 27 == 31)
    {
      v11 = malloc_type_malloc(v8, 0x100004077774924uLL);
      *(a2 + 8) = v11;
      if (v11)
      {
        memset(v11, 255, v8);
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    swift::reflection::BitMask::keepOnlyMostSignificantBits(a2, 8 * (v8 - v7));
    v13 = *(a1 + 12);
    v14 = -1431655765 * ((*(a1 + 48) - *(a1 + 40)) >> 4) - 1;
    v15 = v14 | HIWORD(v14) | ((v14 | HIWORD(v14)) >> 8);
    v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 2);
    __src = v16 | (v16 >> 1);
    v17 = malloc_type_calloc(1uLL, v13, 0x100004077774924uLL);
    v18 = v17;
    if (v17)
    {
      if (v13 >= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v13;
      }

      memcpy(v17, &__src, v19);
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v20 = malloc_type_malloc(v13, 0x100004077774924uLL);
    memcpy(v20, v18, v13);
    LODWORD(v21) = *a2 - v7;
    if (*a2 > v7)
    {
      if (v21 >= v13)
      {
        v21 = v13;
      }

      else
      {
        v21 = v21;
      }

      if (v21)
      {
        v22 = v20;
        do
        {
          v23 = *v22++;
          *(*(a2 + 8) + v7++) &= ~v23;
          --v21;
        }

        while (v21);
      }
    }

    free(v20);
    free(v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_31;
    }
  }
}

void swift::reflection::SinglePayloadEnumTypeInfo::~SinglePayloadEnumTypeInfo(swift::reflection::SinglePayloadEnumTypeInfo *this)
{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t swift::reflection::SinglePayloadEnumTypeInfo::projectEnumValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v10 = *(a1 + 40);
  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    v27.__r_.__value_.__r.__words[2] = *(v10 + 2);
    *&v27.__r_.__value_.__l.__data_ = v11;
  }

  v12 = *(v10 + 24);
  v13 = *(v10 + 5);
  v29 = v13;
  v28 = v12;
  v14 = *(v13 + 12);
  v15 = *(a1 + 12);
  v26 = 0;
  if (v15 == v14)
  {
    goto LABEL_5;
  }

  v18 = v15 - v14;
  if (v18 >= 4)
  {
    v19 = 4;
  }

  else
  {
    v19 = v18;
  }

  if (!(*(*a2 + 32))(a2, a3 + v14, a4, &v26, v19))
  {
LABEL_25:
    v23 = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    return v23;
  }

  v13 = v29;
  if (v26)
  {
    v20 = *(v29 + 24);
    v25 = 0;
    if (v14 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v14;
    }

    if ((*(*a2 + 32))(a2, a3, a4, &v25, v21))
    {
      v22 = 1 << (8 * v14);
      if (v14 > 3)
      {
        LODWORD(v22) = 0x7FFFFFFF;
      }

      v17 = v20 + v25 + (v26 - 1) * v22 + 1;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_5:
  v25 = 0;
  v16 = (**v13)(v13, a2, a3, a4, &v25);
  if (v25 >= 0)
  {
    v17 = v25 + 1;
  }

  else
  {
    v17 = 0;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v17 >= -1431655765 * ((*(a1 + 48) - *(a1 + 40)) >> 4))
  {
    v23 = 0;
    *a5 = -1;
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v23;
    }

    goto LABEL_26;
  }

  *a5 = v17;
  v23 = 1;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_26:
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v23;
}

uint64_t swift::reflection::TaggedMultiPayloadEnumTypeInfo::TaggedMultiPayloadEnumTypeInfo(uint64_t result, int a2, int a3, int a4, int a5, char a6, void *a7, int a8)
{
  *(result + 8) = 4;
  *(result + 12) = a2;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = a5;
  *(result + 28) = a6;
  *result = &off_E1578;
  *(result + 32) = 2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  v8 = a7[1];
  if (v8 != *a7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a7) >> 4) < 0x555555555555556)
    {
      v9 = v8 - *a7;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *result = &off_E1690;
  *(result + 64) = a8;
  return result;
}

uint64_t swift::reflection::TaggedMultiPayloadEnumTypeInfo::readExtraInhabitantIndex(swift::reflection::EnumTypeInfo *this, uint64_t a2, uint64_t a3, unsigned __int8 a4, int *a5)
{
  v10 = *(this + 5);
  v11 = *(this + 6);
  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (*(v10 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v10, *(v10 + 1));
      }

      else
      {
        v13 = *v10;
        __p.__r_.__value_.__r.__words[2] = *(v10 + 2);
        *&__p.__r_.__value_.__l.__data_ = v13;
      }

      v14 = *(v10 + 24);
      v23 = *(v10 + 5);
      v22 = v14;
      if (*(&v14 + 1) && *(v23 + 12) > v12)
      {
        v12 = *(v23 + 12);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 += 3;
    }

    while (v10 != v11);
  }

  NumPayloadCases = swift::reflection::EnumTypeInfo::getNumPayloadCases(this);
  v16 = *(this + 3);
  LODWORD(__p.__r_.__value_.__l.__data_) = 0;
  if (v16 - v12 >= 4)
  {
    v17 = 4;
  }

  else
  {
    v17 = v16 - v12;
  }

  result = (*(*a2 + 32))(a2, a3 + v12, a4, &__p, v17);
  if (result)
  {
    if (v16 - v12 <= 3)
    {
      v19 = ~(-1 << (8 * (v16 - v12)));
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 - LODWORD(__p.__r_.__value_.__l.__data_);
    if (LODWORD(__p.__r_.__value_.__l.__data_) < NumPayloadCases + 1)
    {
      v20 = -1;
    }

    *a5 = v20;
  }

  return result;
}

void swift::reflection::TaggedMultiPayloadEnumTypeInfo::getSpareBits(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  for (i = *(a1 + 48); v4 != i; v4 += 3)
  {
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *v4, *(v4 + 1));
    }

    else
    {
      v6 = *v4;
      v12.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&v12.__r_.__value_.__l.__data_ = v6;
    }

    v7 = *(v4 + 24);
    v14 = *(v4 + 5);
    v13 = v7;
    if (*(&v7 + 1))
    {
      (*(*v14 + 8))(v11);
      free(v11[1]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  v8 = *(a1 + 12);
  *a2 = v8;
  if ((v8 - 134217729) >> 27 == 31)
  {
    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    *(a2 + 8) = v9;
    if (v9)
    {
      v10 = v9;
      memset(v9, 255, v8);
      v9 = v10;
    }

    else
    {
      v8 = 0;
      *a2 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  bzero(v9, v8);
}

void swift::reflection::TaggedMultiPayloadEnumTypeInfo::~TaggedMultiPayloadEnumTypeInfo(swift::reflection::TaggedMultiPayloadEnumTypeInfo *this)
{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

{
  *this = &off_E1578;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  operator delete();
}

uint64_t swift::reflection::TaggedMultiPayloadEnumTypeInfo::projectEnumValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v10 == v9)
  {
    v11 = 0;
    v14 = *(a1 + 40);
  }

  else
  {
    v11 = 0;
    do
    {
      if (*(v10 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *v10, *(v10 + 1));
      }

      else
      {
        v12 = *v10;
        v24.__r_.__value_.__r.__words[2] = *(v10 + 2);
        *&v24.__r_.__value_.__l.__data_ = v12;
      }

      v13 = *(v10 + 24);
      v26 = *(v10 + 5);
      v25 = v13;
      if (*(&v13 + 1) && *(v26 + 12) > v11)
      {
        v11 = *(v26 + 12);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      v10 += 3;
    }

    while (v10 != v9);
    v10 = *(a1 + 40);
    v14 = *(a1 + 48);
  }

  v15 = *(a1 + 64);
  v16 = *(a1 + 12);
  LODWORD(v24.__r_.__value_.__l.__data_) = 0;
  if (v16 - v11 >= 4)
  {
    v17 = 4;
  }

  else
  {
    v17 = v16 - v11;
  }

  result = (*(*a2 + 32))(a2, a3 + v11, a4, &v24, v17);
  if (result)
  {
    data = v24.__r_.__value_.__l.__data_;
    if ((v24.__r_.__value_.__l.__data_ & 0x80000000) == 0)
    {
      if (LODWORD(v24.__r_.__value_.__l.__data_) < v15)
      {
LABEL_20:
        *a5 = data;
        return 1;
      }

      if (v11 < 4)
      {
        v20 = -1431655765 * ((v14 - v10) >> 4);
        v21 = ~(-1 << (8 * (v16 - v11)));
        if (LODWORD(v24.__r_.__value_.__l.__data_) <= (v20 - v15) / v21 + v15)
        {
          v23 = 0;
          if ((*(*a2 + 32))(a2, a3, a4, &v23, v11))
          {
            data = v23 + v15 + (LODWORD(v24.__r_.__value_.__l.__data_) - v15) * v21;
            if (data < v20)
            {
              goto LABEL_20;
            }
          }
        }
      }

      else if (LODWORD(v24.__r_.__value_.__l.__data_) <= v15)
      {
        v23 = 0;
        if ((*(*a2 + 32))(a2, a3, a4, &v23, 4))
        {
          data = v23 + v15;
          if (v23 + v15 < -1431655765 * ((*(a1 + 48) - *(a1 + 40)) >> 4))
          {
            goto LABEL_20;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t swift::reflection::EnumTypeInfo::getNumPayloadCases(swift::reflection::EnumTypeInfo *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  if (v2 != v1)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

uint64_t swift::reflection::MultiPayloadEnumTypeInfo::MultiPayloadEnumTypeInfo(uint64_t a1, int a2, int a3, int a4, int a5, char a6, void *a7, const void **a8, int a9)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = a6;
  *a1 = &off_E1578;
  *(a1 + 32) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v11 = a7[1];
  if (v11 != *a7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - *a7) >> 4) < 0x555555555555556)
    {
      v12 = v11 - *a7;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *a1 = &off_E16C8;
  v13 = *a8;
  *(a1 + 64) = v13;
  *(a1 + 72) = 0;
  v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
  *(a1 + 72) = v14;
  memcpy(v14, a8[1], *(a1 + 64));
  *(a1 + 80) = a9;
  return a1;
}

uint64_t swift::reflection::MultiPayloadEnumTypeInfo::readExtraInhabitantIndex(swift::reflection::MultiPayloadEnumTypeInfo *this, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v11 = *(this + 5);
  v10 = *(this + 6);
  if (v11 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v101, *v11, *(v11 + 1));
      }

      else
      {
        v13 = *v11;
        v101.__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&v101.__r_.__value_.__l.__data_ = v13;
      }

      v14 = *(v11 + 24);
      v103 = *(v11 + 5);
      v102 = v14;
      if (*(&v14 + 1) && *(v103 + 12) > v12)
      {
        v12 = *(v103 + 12);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      v11 += 3;
    }

    while (v11 != v10);
  }

  swift::reflection::MultiPayloadEnumTypeInfo::getMultiPayloadTagBitsMask(this, &size);
  if (!size)
  {
    v16 = 0;
    goto LABEL_22;
  }

  if (size == 1)
  {
    v15 = 0;
    v16 = 0;
LABEL_20:
    v23 = size - v15;
    v24 = __src + v15;
    do
    {
      v25 = *v24++;
      v16 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v25 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v25 & 0xF];
      --v23;
    }

    while (v23);
    goto LABEL_22;
  }

  v17 = 0;
  v18 = 0;
  v15 = size & 0xFFFFFFFE;
  v19 = __src + 1;
  v20 = v15;
  do
  {
    v21 = *(v19 - 1);
    v22 = *v19;
    v19 += 2;
    v17 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v21 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v21 & 0xF];
    v18 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v22 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v22 & 0xF];
    v20 -= 2;
  }

  while (v20);
  v16 = v18 + v17;
  if (v15 != size)
  {
    goto LABEL_20;
  }

LABEL_22:
  v98 = 0;
  v26 = 0;
  if (swift::reflection::BitMask::readMaskedInteger<unsigned int>(&size, a2, a3, a4, &v98))
  {
    v93 = a3;
    v94 = a4;
    v95 = a2;
    v91 = a5;
    v92 = v98;
    v96 = *(this + 16);
    v27 = v96;
    v28 = malloc_type_malloc(v96, 0x100004077774924uLL);
    v97 = v28;
    memcpy(v28, *(this + 9), v96);
    v29 = *(this + 5);
    v30 = *(this + 6);
    if (v29 == v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = 0;
      do
      {
        if (*(v29 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v101, *v29, *(v29 + 1));
        }

        else
        {
          v32 = *v29;
          v101.__r_.__value_.__r.__words[2] = *(v29 + 2);
          *&v101.__r_.__value_.__l.__data_ = v32;
        }

        v33 = *(v29 + 24);
        v103 = *(v29 + 5);
        v102 = v33;
        if (*(&v33 + 1) && *(v103 + 12) > v31)
        {
          v31 = *(v103 + 12);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        v29 += 3;
      }

      while (v29 != v30);
    }

    if (v96 > v31)
    {
      v96 = v31;
      v27 = v31;
    }

    v34 = size;
    v35 = malloc_type_malloc(size, 0x100004077774924uLL);
    memcpy(v35, __src, v34);
    if (v34 && v27)
    {
      if (v27 >= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v27;
      }

      if (v36 < 8 || v28 < &v35->i8[v36] && v35 < &v28->i8[v36])
      {
        v37 = 0;
        goto LABEL_46;
      }

      if (v36 >= 0x20)
      {
        v37 = v36 & 0xFFFFFFE0;
        v82 = v35 + 1;
        v83 = v28 + 1;
        v84 = v37;
        do
        {
          v85 = vbicq_s8(*v83, *v82);
          v83[-1] = vbicq_s8(v83[-1], v82[-1]);
          *v83 = v85;
          v82 += 2;
          v83 += 2;
          v84 -= 32;
        }

        while (v84);
        if (v37 == v36)
        {
          goto LABEL_48;
        }

        if ((v36 & 0x18) == 0)
        {
LABEL_46:
          v38 = &v28->i8[v37];
          v39 = v36 - v37;
          v40 = &v35->i8[v37];
          do
          {
            v41 = *v40++;
            *v38++ &= ~v41;
            --v39;
          }

          while (v39);
          goto LABEL_48;
        }
      }

      else
      {
        v37 = 0;
      }

      v86 = v37;
      v37 = v36 & 0xFFFFFFF8;
      v87 = &v35->i8[v86];
      v88 = &v28->i8[v86];
      v89 = v86 - v37;
      do
      {
        v90 = *v87++;
        *v88 = vbic_s8(*v88, v90);
        ++v88;
        v89 += 8;
      }

      while (v89);
      if (v37 != v36)
      {
        goto LABEL_46;
      }
    }

LABEL_48:
    free(v35);
    if (!v27)
    {
      v44 = v94;
      v43 = v95;
      v45 = v93;
      goto LABEL_60;
    }

    v42 = v27;
    v44 = v94;
    v43 = v95;
    v45 = v93;
    if (v27 == 1)
    {
      v46 = 0;
      v47 = 0;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v46 = v27 & 0xFFFFFFFE;
      v50 = &v28->u8[1];
      v51 = v46;
      do
      {
        v52 = *(v50 - 1);
        v53 = *v50;
        v50 += 2;
        v48 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v52 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v52 & 0xF];
        v49 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v53 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v53 & 0xF];
        v51 -= 2;
      }

      while (v51);
      v47 = v49 + v48;
      if (v46 == v42)
      {
LABEL_57:
        if (v47 >= 1)
        {
          LODWORD(v101.__r_.__value_.__l.__data_) = 0;
          v26 = 0;
          if (!swift::reflection::BitMask::readMaskedInteger<unsigned int>(&v96, v95, v93, v94, &v101))
          {
            goto LABEL_90;
          }

          v57 = (LODWORD(v101.__r_.__value_.__l.__data_) << v16) | v92;
          v16 += v47;
LABEL_61:
          data = 0;
          v59 = v12;
          v60 = *(this + 3);
          v61 = v60 - v12;
          LODWORD(v101.__r_.__value_.__l.__data_) = 0;
          if (v59 == v60 || v16 > 0x1F)
          {
LABEL_70:
            v64 = (data << v16) | v57;
            NumPayloadCases = swift::reflection::EnumTypeInfo::getNumPayloadCases(this);
            if (NumPayloadCases == -1431655765 * ((*(this + 6) - *(this + 5)) >> 4))
            {
LABEL_84:
              v79 = -1;
              if (v64 >= NumPayloadCases)
              {
                if (v16 + 8 * v61 <= 0x1F)
                {
                  v80 = ~(-1 << (v16 + 8 * v61));
                }

                else
                {
                  v80 = -1;
                }

                v79 = v80 - v64;
              }

              *v91 = v79;
              v26 = 1;
              goto LABEL_90;
            }

            v66 = *(this + 16);
            if (v66)
            {
              v67 = *(this + 9);
              if (v66 == 1)
              {
                v68 = 0;
                v69 = 0;
              }

              else
              {
                v70 = 0;
                v71 = 0;
                v68 = v66 & 0xFFFFFFFE;
                v72 = (v67 + 1);
                v73 = v68;
                do
                {
                  v74 = *(v72 - 1);
                  v75 = *v72;
                  v72 += 2;
                  v70 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v74 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v74 & 0xF];
                  v71 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v75 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v75 & 0xF];
                  v73 -= 2;
                }

                while (v73);
                v69 = v71 + v70;
                if (v68 == v66)
                {
                  goto LABEL_83;
                }
              }

              v76 = v66 - v68;
              v77 = (v67 + v68);
              do
              {
                v78 = *v77++;
                v69 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v78 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v78 & 0xF];
                --v76;
              }

              while (v76);
            }

            else
            {
              LOBYTE(v69) = 0;
            }

LABEL_83:
            NumPayloadCases += (~NumPayloadCases - 1431655765 * ((*(this + 6) - *(this + 5)) >> 4) + (1 << (8 * v66 - v69))) >> (8 * v66 - v69);
            goto LABEL_84;
          }

          if (v61 >= 4)
          {
            v63 = 4;
          }

          else
          {
            v63 = v61;
          }

          if ((*(*v43 + 32))(v43, v45 + v59, v44, &v101, v63))
          {
            data = v101.__r_.__value_.__l.__data_;
            goto LABEL_70;
          }

          v26 = 0;
LABEL_90:
          free(v97);
          goto LABEL_91;
        }

LABEL_60:
        v57 = v92;
        goto LABEL_61;
      }
    }

    v54 = v42 - v46;
    v55 = &v28->u8[v46];
    do
    {
      v56 = *v55++;
      v47 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v56 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v56 & 0xF];
      --v54;
    }

    while (v54);
    goto LABEL_57;
  }

LABEL_91:
  free(__src);
  return v26;
}

void swift::reflection::MultiPayloadEnumTypeInfo::getSpareBits(const void **this@<X0>, uint64_t a2@<X8>)
{
  v6 = *(this + 16);
  *a2 = v6;
  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  *(a2 + 8) = v7;
  memcpy(v7, this[9], v6);
  swift::reflection::MultiPayloadEnumTypeInfo::getMultiPayloadTagBitsMask(this, &v25);
  v8 = v26;
  if (v6 && v25)
  {
    if (v6 >= v25)
    {
      v9 = v25;
    }

    else
    {
      v9 = v6;
    }

    if (v9 < 8 || (v7 < (v26 + v9) ? (v10 = v26 >= &v7->i8[v9]) : (v10 = 1), !v10))
    {
      v11 = 0;
      goto LABEL_15;
    }

    if (v9 >= 0x20)
    {
      v11 = v9 & 0xFFFFFFE0;
      v16 = (v26 + 16);
      v17 = v7 + 1;
      v18 = v11;
      do
      {
        v19 = vbicq_s8(*v17, *v16);
        v17[-1] = vbicq_s8(v17[-1], v16[-1]);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 32;
      }

      while (v18);
      if (v11 == v9)
      {
        goto LABEL_17;
      }

      if ((v9 & 0x18) == 0)
      {
LABEL_15:
        v12 = &v7->i8[v11];
        v13 = v9 - v11;
        v14 = &v8[v11];
        do
        {
          v15 = *v14++;
          *v12++ &= ~v15;
          --v13;
        }

        while (v13);
        goto LABEL_17;
      }
    }

    else
    {
      v11 = 0;
    }

    v20 = v11;
    v11 = v9 & 0xFFFFFFF8;
    v21 = &v8[v20];
    v22 = &v7->i8[v20];
    v23 = v20 - v11;
    do
    {
      v24 = *v21++;
      *v22 = vbic_s8(*v22, v24);
      ++v22;
      v23 += 8;
    }

    while (v23);
    if (v11 != v9)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  free(v8);
}

void swift::reflection::MultiPayloadEnumTypeInfo::~MultiPayloadEnumTypeInfo(void **this)
{
  *this = &off_E16C8;
  free(this[9]);
  *this = &off_E1578;
  v2 = this[5];
  if (v2)
  {
    v3 = this[6];
    v4 = this[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = this[5];
    }

    this[6] = v2;
    operator delete(v4);
  }
}

{
  *this = &off_E16C8;
  free(this[9]);
  *this = &off_E1578;
  v2 = this[5];
  if (v2)
  {
    v3 = this[6];
    v4 = this[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = this[5];
    }

    this[6] = v2;
    operator delete(v4);
  }

  operator delete();
}

BOOL swift::reflection::MultiPayloadEnumTypeInfo::projectEnumValue(swift::reflection::MultiPayloadEnumTypeInfo *this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v10 = *(this + 5);
  v11 = *(this + 6);
  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (*(v10 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v65, *v10, *(v10 + 1));
      }

      else
      {
        v13 = *v10;
        v65.__r_.__value_.__r.__words[2] = *(v10 + 2);
        *&v65.__r_.__value_.__l.__data_ = v13;
      }

      v14 = *(v10 + 24);
      v67 = *(v10 + 5);
      v66 = v14;
      if (*(&v14 + 1) && *(v67 + 12) > v12)
      {
        v12 = *(v67 + 12);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      v10 += 3;
    }

    while (v10 != v11);
  }

  v15 = *(this + 3);
  v64 = 0;
  if (v12 == v15 || ((v16 = v15 - v12, v16 >= 4) ? (v17 = 4) : (v17 = v16), (*(*a2 + 32))(a2, a3 + v12, a4, &v64, v17)))
  {
    swift::reflection::MultiPayloadEnumTypeInfo::getMultiPayloadTagBitsMask(this, &v65);
    if (!LODWORD(v65.__r_.__value_.__l.__data_))
    {
      v63 = 0;
      swift::reflection::BitMask::readMaskedInteger<unsigned long long>(&v65, a2, a3, a4, &v63);
      LOBYTE(v19) = 0;
      if (v20)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (LODWORD(v65.__r_.__value_.__l.__data_) == 1)
    {
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v18 = v65.__r_.__value_.__l.__data_ & 0xFFFFFFFE;
      v24 = (v65.__r_.__value_.__l.__size_ + 1);
      v25 = v18;
      do
      {
        v26 = *(v24 - 1);
        v27 = *v24;
        v24 += 2;
        v22 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v26 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v26 & 0xF];
        v23 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v27 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v27 & 0xF];
        v25 -= 2;
      }

      while (v25);
      v19 = v23 + v22;
      if (v18 == LODWORD(v65.__r_.__value_.__l.__data_))
      {
LABEL_29:
        v63 = 0;
        swift::reflection::BitMask::readMaskedInteger<unsigned long long>(&v65, a2, a3, a4, &v63);
        if (v31)
        {
          if (v19 >= 32)
          {
            v32 = v63;
            goto LABEL_34;
          }

LABEL_33:
          v32 = (v64 << v19) | v63;
LABEL_34:
          if (v32 < *(this + 20))
          {
            *a5 = v32;
            v21 = 1;
            goto LABEL_67;
          }

          v61 = *(this + 16);
          v33 = v61;
          v34 = malloc_type_malloc(v61, 0x100004077774924uLL);
          v62 = v34;
          memcpy(v34, *(this + 9), v61);
          if (!v61)
          {
            v60 = 0;
            swift::reflection::BitMask::readMaskedInteger<unsigned long long>(&v61, a2, a3, a4, &v60);
            LOBYTE(v36) = 0;
            if (v37)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          if (v61 < 8)
          {
            v35 = 0;
            goto LABEL_50;
          }

          if (v61 >= 0x20)
          {
            v35 = v61 & 0xFFFFFFE0;
            v38 = v34 + 1;
            v39 = v35;
            do
            {
              v40 = vmvnq_s8(*v38);
              v38[-1] = vmvnq_s8(v38[-1]);
              *v38 = v40;
              v38 += 2;
              v39 -= 32;
            }

            while (v39);
            if (v35 == v33)
            {
              goto LABEL_51;
            }

            if ((v33 & 0x18) == 0)
            {
              do
              {
LABEL_50:
                v34->i8[v35] = ~v34->i8[v35];
                ++v35;
              }

              while (v35 < v33);
              goto LABEL_51;
            }
          }

          else
          {
            v35 = 0;
          }

          v41 = v35;
          v35 = v33 & 0xFFFFFFF8;
          v42 = &v34->i8[v41];
          v43 = v41 - v35;
          do
          {
            *v42 = vmvn_s8(*v42);
            ++v42;
            v43 += 8;
          }

          while (v43);
          if (v35 != v33)
          {
            goto LABEL_50;
          }

LABEL_51:
          if (v33 == 1)
          {
            v44 = 0;
            v36 = 0;
          }

          else
          {
            v45 = 0;
            v46 = 0;
            v44 = v33 & 0xFFFFFFFE;
            v47 = &v34->u8[1];
            v48 = v44;
            do
            {
              v49 = *(v47 - 1);
              v50 = *v47;
              v47 += 2;
              v45 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v49 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v49 & 0xF];
              v46 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v50 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v50 & 0xF];
              v48 -= 2;
            }

            while (v48);
            v36 = v46 + v45;
            if (v44 == v33)
            {
LABEL_58:
              v60 = 0;
              swift::reflection::BitMask::readMaskedInteger<unsigned long long>(&v61, a2, a3, a4, &v60);
              if (v54)
              {
                if (v36 >= 32)
                {
                  v55 = v60;
                  v56 = *(this + 20);
LABEL_63:
                  v57 = v56 + v55;
                  v58 = -1431655765 * ((*(this + 6) - *(this + 5)) >> 4);
                  v21 = v57 < v58;
                  if (v57 >= v58)
                  {
                    v57 = -1;
                  }

                  *a5 = v57;
                  goto LABEL_66;
                }

LABEL_62:
                v55 = *(this + 20);
                v56 = ((v32 - v55) << v36) | v60;
                goto LABEL_63;
              }

LABEL_61:
              v21 = 0;
LABEL_66:
              free(v62);
              goto LABEL_67;
            }
          }

          v51 = v33 - v44;
          v52 = &v34->u8[v44];
          do
          {
            v53 = *v52++;
            v36 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v53 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v53 & 0xF];
            --v51;
          }

          while (v51);
          goto LABEL_58;
        }

LABEL_32:
        v21 = 0;
LABEL_67:
        free(v65.__r_.__value_.__l.__size_);
        return v21;
      }
    }

    v28 = LODWORD(v65.__r_.__value_.__l.__data_) - v18;
    v29 = (v65.__r_.__value_.__l.__size_ + v18);
    do
    {
      v30 = *v29++;
      v19 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v30 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v30 & 0xF];
      --v28;
    }

    while (v28);
    goto LABEL_29;
  }

  return 0;
}

unsigned int *swift::reflection::MultiPayloadEnumTypeInfo::getMultiPayloadTagBitsMask@<X0>(swift::reflection::MultiPayloadEnumTypeInfo *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 20);
  v5 = v4 - 1;
  if (v4 < -1431655765 * ((*(this + 6) - *(this + 5)) >> 4))
  {
    v6 = *(this + 16);
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    memcpy(v7, *(this + 9), v6);
    if (!v6)
    {
      LOBYTE(v9) = 0;
      goto LABEL_25;
    }

    if (v6 < 8)
    {
      v8 = 0;
      goto LABEL_15;
    }

    if (v6 >= 0x20)
    {
      v8 = v6 & 0xFFFFFFE0;
      v10 = v7 + 1;
      v11 = v8;
      do
      {
        v12 = vmvnq_s8(*v10);
        v10[-1] = vmvnq_s8(v10[-1]);
        *v10 = v12;
        v10 += 2;
        v11 -= 32;
      }

      while (v11);
      if (v8 == v6)
      {
        goto LABEL_17;
      }

      if ((v6 & 0x18) == 0)
      {
LABEL_15:
        v16 = v6 - v8;
        v17 = &v7->i8[v8];
        do
        {
          *v17 = ~*v17;
          ++v17;
          --v16;
        }

        while (v16);
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = v8;
    v8 = v6 & 0xFFFFFFF8;
    v14 = &v7->i8[v13];
    v15 = v13 - v8;
    do
    {
      *v14 = vmvn_s8(*v14);
      ++v14;
      v15 += 8;
    }

    while (v15);
    if (v8 != v6)
    {
      goto LABEL_15;
    }

LABEL_17:
    if (v6 == 1)
    {
      v18 = 0;
      v9 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v18 = v6 & 0xFFFFFFFE;
      v21 = &v7->u8[1];
      v22 = v18;
      do
      {
        v23 = *(v21 - 1);
        v24 = *v21;
        v21 += 2;
        v19 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v23 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v23 & 0xF];
        v20 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v24 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v24 & 0xF];
        v22 -= 2;
      }

      while (v22);
      v9 = v20 + v19;
      if (v18 == v6)
      {
LABEL_24:
        if (v9 > 31)
        {
LABEL_26:
          free(v7);
          v5 = v4;
          goto LABEL_27;
        }

LABEL_25:
        v4 = v5 + ((~(-1 << v9) + (-1431655765 * ((*(this + 6) - *(this + 5)) >> 4) - *(this + 20))) >> v9);
        goto LABEL_26;
      }
    }

    v25 = v6 - v18;
    v26 = &v7->u8[v18];
    do
    {
      v27 = *v26++;
      v9 += *(swift::reflection::BitMask::countSetBits(void)const::counter + ((v27 >> 2) & 0x3C)) + swift::reflection::BitMask::countSetBits(void)const::counter[v27 & 0xF];
      --v25;
    }

    while (v25);
    goto LABEL_24;
  }

LABEL_27:
  v28 = *(this + 16);
  *a2 = v28;
  v29 = malloc_type_malloc(v28, 0x100004077774924uLL);
  *(a2 + 8) = v29;
  memcpy(v29, *(this + 9), v28);
  v30 = *(this + 5);
  v31 = *(this + 6);
  if (v30 == v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0;
    do
    {
      if (*(v30 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v30, *(v30 + 1));
      }

      else
      {
        v33 = *v30;
        __p.__r_.__value_.__r.__words[2] = *(v30 + 2);
        *&__p.__r_.__value_.__l.__data_ = v33;
      }

      v34 = *(v30 + 24);
      v40 = *(v30 + 5);
      v39 = v34;
      if (*(&v34 + 1) && *(v40 + 12) > v32)
      {
        v32 = *(v40 + 12);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v30 += 3;
    }

    while (v30 != v31);
  }

  if (v28 > v32)
  {
    *a2 = v32;
  }

  v35 = 32 - __clz(v5);
  if (v5)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  return swift::reflection::BitMask::keepOnlyMostSignificantBits(a2, v36);
}

uint64_t swift::reflection::BitMask::readMaskedInteger<unsigned int>(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  (*(*a2 + 24))(&v18, a2, a3, a4, *a1);
  v7 = v18;
  if (v18)
  {
    v8 = *a1;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 1);
      v11 = 1;
      v12 = v18;
      while (1)
      {
        v14 = *v10++;
        v13 = v14;
        if (v14)
        {
          v9 |= (*v12 << 31 >> 31) & v11;
          v11 *= 2;
          if ((v13 & 2) == 0)
          {
LABEL_7:
            if ((v13 & 4) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_16;
          }
        }

        else if ((v13 & 2) == 0)
        {
          goto LABEL_7;
        }

        v9 |= v11 & (*v12 << 30 >> 31);
        v11 *= 2;
        if ((v13 & 4) == 0)
        {
LABEL_8:
          if ((v13 & 8) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_17;
        }

LABEL_16:
        v9 |= v11 & (*v12 << 29 >> 31);
        v11 *= 2;
        if ((v13 & 8) == 0)
        {
LABEL_9:
          if ((v13 & 0x10) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_18;
        }

LABEL_17:
        v9 |= v11 & (*v12 << 28 >> 31);
        v11 *= 2;
        if ((v13 & 0x10) == 0)
        {
LABEL_10:
          if ((v13 & 0x20) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_19;
        }

LABEL_18:
        v9 |= v11 & (*v12 << 27 >> 31);
        v11 *= 2;
        if ((v13 & 0x20) == 0)
        {
LABEL_11:
          if ((v13 & 0x40) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_20;
        }

LABEL_19:
        v9 |= v11 & (*v12 << 26 >> 31);
        v11 *= 2;
        if ((v13 & 0x40) == 0)
        {
LABEL_12:
          if (v13 < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_4;
        }

LABEL_20:
        v9 |= v11 & (*v12 << 25 >> 31);
        v11 *= 2;
        if (v13 < 0)
        {
LABEL_21:
          if (*v12 < 0)
          {
            v15 = v11;
          }

          else
          {
            v15 = 0;
          }

          v9 |= v15;
          v11 *= 2;
        }

LABEL_4:
        ++v12;
        if (!--v8)
        {
          goto LABEL_26;
        }
      }
    }

    v9 = 0;
LABEL_26:
    *a5 = v9;
    v18 = 0;
    v21 = v7;
    if (!v20)
    {
      v17 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::reflection::BitMask::readMaskedInteger<unsigned long long>(v17);
    }

    (*(*v20 + 48))(v20, &v21);
  }

  if (v20 == &v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  return v7 != 0;
}

void swift::reflection::BitMask::readMaskedInteger<unsigned long long>(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  (*(*a2 + 24))(&v25, a2, a3, a4, *a1);
  v7 = v25;
  if (v25)
  {
    v8 = *a1;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 1);
      v11 = 1;
      v12 = v25;
      while (1)
      {
        v14 = *v10++;
        v13 = v14;
        if (v14)
        {
          if (*v12)
          {
            v15 = v11;
          }

          else
          {
            v15 = 0;
          }

          v9 |= v15;
          v11 *= 2;
          if ((v13 & 2) == 0)
          {
LABEL_7:
            if ((v13 & 4) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_22;
          }
        }

        else if ((v13 & 2) == 0)
        {
          goto LABEL_7;
        }

        if ((*v12 & 2) != 0)
        {
          v16 = v11;
        }

        else
        {
          v16 = 0;
        }

        v9 |= v16;
        v11 *= 2;
        if ((v13 & 4) == 0)
        {
LABEL_8:
          if ((v13 & 8) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_26;
        }

LABEL_22:
        if ((*v12 & 4) != 0)
        {
          v17 = v11;
        }

        else
        {
          v17 = 0;
        }

        v9 |= v17;
        v11 *= 2;
        if ((v13 & 8) == 0)
        {
LABEL_9:
          if ((v13 & 0x10) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_30;
        }

LABEL_26:
        if ((*v12 & 8) != 0)
        {
          v18 = v11;
        }

        else
        {
          v18 = 0;
        }

        v9 |= v18;
        v11 *= 2;
        if ((v13 & 0x10) == 0)
        {
LABEL_10:
          if ((v13 & 0x20) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_34;
        }

LABEL_30:
        if ((*v12 & 0x10) != 0)
        {
          v19 = v11;
        }

        else
        {
          v19 = 0;
        }

        v9 |= v19;
        v11 *= 2;
        if ((v13 & 0x20) == 0)
        {
LABEL_11:
          if ((v13 & 0x40) != 0)
          {
            goto LABEL_38;
          }

          goto LABEL_12;
        }

LABEL_34:
        if ((*v12 & 0x20) != 0)
        {
          v20 = v11;
        }

        else
        {
          v20 = 0;
        }

        v9 |= v20;
        v11 *= 2;
        if ((v13 & 0x40) != 0)
        {
LABEL_38:
          if ((*v12 & 0x40) != 0)
          {
            v21 = v11;
          }

          else
          {
            v21 = 0;
          }

          v9 |= v21;
          v11 *= 2;
          if ((v13 & 0x80) == 0)
          {
            goto LABEL_4;
          }

LABEL_42:
          if (*v12 < 0)
          {
            v22 = v11;
          }

          else
          {
            v22 = 0;
          }

          v9 |= v22;
          v11 *= 2;
          goto LABEL_4;
        }

LABEL_12:
        if (v13 < 0)
        {
          goto LABEL_42;
        }

LABEL_4:
        ++v12;
        if (!--v8)
        {
          goto LABEL_47;
        }
      }
    }

    v9 = 0;
LABEL_47:
    *a5 = v9;
    v25 = 0;
    v28 = v7;
    if (!v27)
    {
      v23 = std::__throw_bad_function_call[abi:nn200100]();
      swift::reflection::ExistentialTypeInfoBuilder::addProtocolComposition(v23, v24);
      return;
    }

    (*(*v27 + 48))(v27, &v28);
  }

  if (v27 == &v26)
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))(v27);
  }
}

void swift::reflection::ExistentialTypeInfoBuilder::addProtocolComposition(swift::reflection::ExistentialTypeInfoBuilder *this, const swift::reflection::ProtocolCompositionTypeRef *a2)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  while (v4 != v5)
  {
    v6 = *v4++;
    v14 = v6;
    std::vector<swift::reflection::TypeRef const*>::push_back[abi:nn200100](this + 8, &v14);
  }

  if (*(a2 + 48))
  {
    *(this + 10) = 1;
  }

  v7 = *(a2 + 5);
  if (v7)
  {
    v8 = *(v7 + 2);
    if ((v8 - 1) >= 2)
    {
      if (v8 == 12)
      {
        *(this + 10) = 1;
        return;
      }

      *(this + 56) = 1;
      v11 = *this;
      v12 = "bad existential member";
    }

    else
    {
      swift::reflection::TypeRefBuilder::getFieldDescriptor(**this, v7, &v14);
      v9 = v14;
      if (v14)
      {
        v10 = *(v14 + 8);
        if (v10 != 7)
        {
          if (v10 != 1)
          {
            *(this + 56) = 1;
            v13 = *this;
            *(v13 + 184) = "bad existential member";
            *(v13 + 192) = v7;
            goto LABEL_18;
          }

          *(this + 11) = 0;
        }

        *(this + 10) = 1;
LABEL_18:
        v14 = 0;
        (*(*v9 + 8))(v9);
        return;
      }

      *(this + 56) = 1;
      v11 = *this;
      v12 = "no field descriptor";
    }

    *(v11 + 184) = v12;
    *(v11 + 192) = v7;
  }
}

uint64_t swift::reflection::ExistentialTypeInfoBuilder::build(uint64_t a1, uint64_t a2)
{
  swift::reflection::ExistentialTypeInfoBuilder::examineProtocols(a1);
  if (*(a1 + 56))
  {
    return 0;
  }

  if (*(a1 + 48) != 1)
  {
    v5 = *(a1 + 40);
    v6 = *a1;
    v29 = *a1;
    v30 = 0x100000000;
    v31 = 0;
    v32 = 1;
    if (v5)
    {
      if (v5 == 2)
      {
        v33 = 7;
        v35 = 0;
        v36 = 0;
        v34 = 0;
        v37 = 1;
        v28 = 5;
        strcpy(v27, "error");
        goto LABEL_15;
      }

      if (v5 != 1)
      {
        v33 = 0;
        v35 = 0;
        v36 = 0;
        v34 = 0;
        v37 = 1;
        if (*(a1 + 52))
        {
          goto LABEL_37;
        }

        goto LABEL_42;
      }

      v33 = 5;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v37 = 1;
      if (*(a1 + 44) == 1)
      {
        v28 = 6;
        strcpy(v27, "object");
LABEL_15:
        v9 = v6[15];
        if (!v9)
        {
          v10 = *v6;
          v39 = 2;
          strcpy(__p, "BO");
          v9 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v10, __p);
          v6[15] = v9;
          if (v39 < 0)
          {
            operator delete(__p[0]);
            v9 = v6[15];
          }
        }

        goto LABEL_36;
      }

      v28 = 6;
      strcpy(v27, "object");
      v9 = v6[14];
      if (!v9)
      {
        v17 = *v6;
        v39 = 2;
        strcpy(__p, "Bo");
        v9 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v17, __p);
        v6[14] = v9;
        if (v39 < 0)
        {
          operator delete(__p[0]);
          v9 = v6[14];
        }
      }
    }

    else
    {
      v33 = 4;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v37 = 1;
      v11 = v6[13];
      if (!v11)
      {
        v12 = *v6;
        v39 = 2;
        strcpy(__p, "Bp");
        v11 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v12, __p);
        v6[13] = v11;
        if (v39 < 0)
        {
          operator delete(__p[0]);
          v11 = v6[13];
        }
      }

      result = swift::reflection::TypeConverter::getTypeInfo(v6, v11, a2);
      if (!result)
      {
        goto LABEL_43;
      }

      v13 = *(result + 16);
      v14 = ((v13 + v30 - 1) & -v13) + 3 * *(result + 12);
      if (HIDWORD(v30) > v13)
      {
        v13 = HIDWORD(v30);
      }

      v30 = __PAIR64__(v13, v14);
      if (v33 <= 9 && ((1 << v33) & 0x3E9) != 0 && v37 == 1)
      {
        v31 = 0;
      }

      LOBYTE(v37) = 0;
      v28 = 8;
      strcpy(v27, "metadata");
      v15 = *a1;
      v9 = *(*a1 + 136);
      if (!v9)
      {
        v16 = *v15;
        v39 = 4;
        strcpy(__p, "ypXp");
        v9 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v16, __p);
        v15[17] = v9;
        if (v39 < 0)
        {
          operator delete(__p[0]);
          v9 = v15[17];
        }
      }
    }

LABEL_36:
    swift::reflection::RecordTypeInfoBuilder::addField(&v29, v27, v9, a2);
    if (*(a1 + 52))
    {
LABEL_37:
      v18 = 0;
      do
      {
        v28 = 6;
        strcpy(v27, "wtable");
        v19 = *a1;
        v20 = *(*a1 + 104);
        if (!v20)
        {
          v21 = *v19;
          v39 = 2;
          strcpy(__p, "Bp");
          v20 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v21, __p);
          v19[13] = v20;
          if (v39 < 0)
          {
            operator delete(__p[0]);
            v20 = v19[13];
          }
        }

        swift::reflection::RecordTypeInfoBuilder::addField(&v29, v27, v20, a2);
        ++v18;
      }

      while (v18 < *(a1 + 52));
    }

LABEL_42:
    result = swift::reflection::RecordTypeInfoBuilder::build(&v29);
LABEL_43:
    v22 = v34;
    if (v34)
    {
      v23 = result;
      v24 = v35;
      v25 = v34;
      if (v35 != v34)
      {
        do
        {
          v26 = *(v24 - 25);
          v24 -= 6;
          if (v26 < 0)
          {
            operator delete(*v24);
          }
        }

        while (v24 != v22);
        v25 = v34;
      }

      v35 = v22;
      operator delete(v25);
      return v23;
    }

    return result;
  }

  if (*(a1 + 52))
  {
    return 0;
  }

  v7 = *a1;
  v8 = *(a1 + 44);

  return swift::reflection::TypeConverter::getReferenceTypeInfo(v7, 0, v8);
}

uint64_t swift::reflection::ExistentialTypeInfoBuilder::examineProtocols(uint64_t this)
{
  v1 = this;
  if (*(this + 40))
  {
    v3 = *(this + 8);
    v2 = *(this + 16);
    goto LABEL_9;
  }

  v3 = *(this + 8);
  v2 = *(this + 16);
  if (v2 - v3 != 8 || (!*(this + 32) ? (v4 = v3 == v2) : (v4 = 1), v4))
  {
LABEL_9:
    if (v3 == v2)
    {
      return this;
    }

    while (1)
    {
      v6 = *v3;
      v7 = *(*v3 + 2);
      v9 = v7 == 1 || v7 == 13;
      if (!v6 || !v9)
      {
        *(v1 + 56) = 1;
        v5 = *v1;
        v5[23] = "bad protocol";
        v5[24] = v6;
        goto LABEL_12;
      }

      if (v7 == 13)
      {
        *(v1 + 48) = 1;
        goto LABEL_12;
      }

      swift::reflection::TypeRefBuilder::getFieldDescriptor(**v1, *v3, &v23);
      this = v23;
      if (v23)
      {
        v10 = *(v23 + 8);
        if (v10 <= 3)
        {
          if (v10 >= 4)
          {
            goto LABEL_40;
          }

LABEL_26:
          *(v1 + 56) = 1;
          v11 = *v1;
          v11[23] = "unexpected field descriptor kind";
          v11[24] = 0;
          goto LABEL_28;
        }

        if (*(v23 + 8) <= 5u)
        {
          if (v10 == 4)
          {
            ++*(v1 + 13);
          }

          else
          {
            if (v10 != 5)
            {
              goto LABEL_40;
            }

            *(v1 + 10) = 1;
            ++*(v1 + 13);
            v13 = swift::reflection::TypeRefBuilder::lookupSuperclass(**v1, v6);
            if (v13)
            {
              v14 = v13;
              TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*v1, v13, 0);
              if (TypeInfo)
              {
                if (*(TypeInfo + 8) == 2)
                {
                  if (!*(TypeInfo + 36))
                  {
                    *(v1 + 11) = 0;
                  }
                }

                else
                {
                  *(v1 + 56) = 1;
                  v17 = *v1;
                  v17[23] = "superclass not a reference type";
                  v17[24] = v14;
                }
              }

              else
              {
                *(v1 + 56) = 1;
                v16 = *v1;
                v16[23] = "no type info for superclass";
                v16[24] = v14;
              }
            }
          }

          goto LABEL_28;
        }

        if (v10 != 6)
        {
          if (v10 != 7)
          {
LABEL_40:
            v23 = 0;
LABEL_29:
            this = (*(*this + 8))(this);
            goto LABEL_12;
          }

          goto LABEL_26;
        }

        *(v1 + 48) = 1;
      }

      else
      {
        *(v1 + 56) = 1;
        v12 = *v1;
        v12[23] = "no field descriptor";
        v12[24] = v6;
      }

LABEL_28:
      this = v23;
      v23 = 0;
      if (this)
      {
        goto LABEL_29;
      }

LABEL_12:
      if (++v3 == v2)
      {
        return this;
      }
    }
  }

  v18 = *(this + 8);
  while (1)
  {
    v19 = *v18;
    if (*v18)
    {
      v20 = *(*v18 + 2) == 1;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      goto LABEL_46;
    }

    v21 = (v19 + 16);
    v22 = *(v19 + 39);
    if (v22 < 0)
    {
      if (*(v19 + 3) != 8)
      {
        goto LABEL_46;
      }

      v21 = *v21;
    }

    else if (v22 != 8)
    {
      goto LABEL_46;
    }

    if (*v21 == 0x50726F7272453573)
    {
      break;
    }

LABEL_46:
    if (++v18 == v2)
    {
      goto LABEL_9;
    }
  }

  *(this + 40) = 2;
  return this;
}

uint64_t swift::reflection::TypeRefVisitor<swift::reflection::HasSingletonMetatype,swift::reflection::MetatypeRepresentation>::visit(uint64_t a1, uint64_t a2)
{
  for (; a2; a2 = *(a2 + v4))
  {
    v3 = *(a2 + 8);
    if (v3 <= 8)
    {
      if (v3 <= 3)
      {
        if (v3 == 1 || v3 == 2)
        {
          return swift::reflection::NominalTypeTrait::isClass((a2 + 16));
        }

        v6 = 0;
        if (v3 != 3)
        {
          return v6;
        }

        v7 = *(a2 + 16);
        v8 = *(a2 + 24);
        if (v7 != v8)
        {
          LODWORD(v6) = 0;
          do
          {
            v9 = *v7++;
            v10 = swift::reflection::TypeRefVisitor<swift::reflection::HasSingletonMetatype,swift::reflection::MetatypeRepresentation>::visit(a1, v9);
            v12 = v6 == 1 || v10 == 1;
            if (v10 == 2)
            {
              v12 = 2;
            }

            if (v6 == 2)
            {
              v12 = 2;
            }

            if (v6 == v10)
            {
              v6 = v6;
            }

            else
            {
              v6 = v12;
            }
          }

          while (v7 != v8);
          return v6;
        }

        return 0;
      }

      if (v3 != 7)
      {
        v6 = 0;
        if (v3 == 4)
        {
          v17 = a2;
          v6 = swift::reflection::TypeRefVisitor<swift::reflection::HasSingletonMetatype,swift::reflection::MetatypeRepresentation>::visit(a1, *(a2 + 40));
          v18 = *(v17 + 16);
          for (i = *(v17 + 24); v18 != i; v18 += 32)
          {
            v20 = swift::reflection::TypeRefVisitor<swift::reflection::HasSingletonMetatype,swift::reflection::MetatypeRepresentation>::visit(a1, *(v18 + 16));
            v22 = v6 == 1 || v20 == 1;
            if (v20 == 2)
            {
              v22 = 2;
            }

            if (v6 == 2)
            {
              v22 = 2;
            }

            if (v6 == v20)
            {
              v6 = v6;
            }

            else
            {
              v6 = v22;
            }
          }
        }

        return v6;
      }

      if (*(a2 + 24))
      {
        return 1;
      }

      v4 = 16;
    }

    else
    {
      if (v3 <= 21)
      {
        if ((v3 - 9) < 0xA || v3 == 21)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      if (v3 != 22)
      {
        if (v3 == 23)
        {
          v23 = *(a2 + 16);
          v24 = *(a2 + 24);
          if (v23 == v24)
          {
            return 0;
          }

          LODWORD(v6) = 0;
          do
          {
            v25 = *v23++;
            v26 = swift::reflection::TypeRefVisitor<swift::reflection::HasSingletonMetatype,swift::reflection::MetatypeRepresentation>::visit(a1, v25);
            v28 = v6 == 1 || v26 == 1;
            if (v26 == 2)
            {
              v28 = 2;
            }

            if (v6 == 2)
            {
              v28 = 2;
            }

            if (v6 == v26)
            {
              v6 = v6;
            }

            else
            {
              v6 = v28;
            }
          }

          while (v23 != v24);
        }

        else
        {
          v6 = 0;
          if (v3 == 24)
          {
            v13 = a2;
            v14 = swift::reflection::TypeRefVisitor<swift::reflection::HasSingletonMetatype,swift::reflection::MetatypeRepresentation>::visit(a1, *(a2 + 16));
            if ((v14 | 2) == 2)
            {
              v15 = v14;
            }

            else
            {
              v15 = v14 == 1;
            }

            v16 = swift::reflection::TypeRefVisitor<swift::reflection::HasSingletonMetatype,swift::reflection::MetatypeRepresentation>::visit(a1, *(v13 + 24));
            if (v15 == v16)
            {
              return v15;
            }

            else
            {
              v6 = 2;
              if (v15 != 2 && v16 != 2)
              {
                return v15 == 1 || v16 == 1;
              }
            }
          }
        }

        return v6;
      }

      v4 = 24;
    }
  }

  return 0;
}

uint64_t swift::reflection::ExistentialTypeInfoBuilder::buildMetatype(uint64_t a1, uint64_t a2)
{
  swift::reflection::ExistentialTypeInfoBuilder::examineProtocols(a1);
  if (*(a1 + 56))
  {
    return 0;
  }

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 52))
    {
      result = 0;
      *(a1 + 56) = 1;
      v5 = *a1;
      *(v5 + 23) = "@objc existential with witness tables";
      *(v5 + 24) = 0;
    }

    else
    {
      v18 = *a1;

      return swift::reflection::TypeConverter::getAnyMetatypeTypeInfo(v18);
    }
  }

  else
  {
    v6 = *a1;
    v21[0] = v6;
    v21[1] = 0x100000000;
    v22 = 0;
    v23 = 1;
    v24 = 6;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v28 = 1;
    v20 = 8;
    strcpy(v19, "metadata");
    v7 = v6[17];
    if (!v7)
    {
      v8 = *v6;
      v30 = 4;
      strcpy(__p, "ypXp");
      v7 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v8, __p);
      v6[17] = v7;
      if (v30 < 0)
      {
        operator delete(__p[0]);
        v7 = v6[17];
      }
    }

    swift::reflection::RecordTypeInfoBuilder::addField(v21, v19, v7, a2);
    if (*(a1 + 52))
    {
      v9 = 0;
      do
      {
        v20 = 6;
        strcpy(v19, "wtable");
        v10 = *a1;
        v11 = *(*a1 + 104);
        if (!v11)
        {
          v12 = *v10;
          v30 = 2;
          strcpy(__p, "Bp");
          v11 = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(v12, __p);
          v10[13] = v11;
          if (v30 < 0)
          {
            operator delete(__p[0]);
            v11 = v10[13];
          }
        }

        swift::reflection::RecordTypeInfoBuilder::addField(v21, v19, v11, a2);
        ++v9;
      }

      while (v9 < *(a1 + 52));
    }

    result = swift::reflection::RecordTypeInfoBuilder::build(v21);
    v13 = v25;
    if (v25)
    {
      v14 = result;
      v15 = v26;
      v16 = v25;
      if (v26 != v25)
      {
        do
        {
          v17 = *(v15 - 25);
          v15 -= 6;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v13);
        v16 = v25;
      }

      v26 = v13;
      operator delete(v16);
      return v14;
    }
  }

  return result;
}

uint64_t swift::reflection::LowerType::rebuildStorageTypeInfo(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v6 = a3 - 1;
  while (1)
  {
    v7 = *(v4 + 8);
    if (v7 != 4)
    {
      break;
    }

    if (*(v4 + 32) != 1)
    {
      return 0;
    }

    v8 = *(v4 + 40);
    if (*(v4 + 48) - v8 != 96)
    {
      return 0;
    }

    v9 = *(v8 + 23);
    if (v9 < 0)
    {
      if (*(v8 + 8) != 4)
      {
        return 0;
      }

      v10 = *v8;
    }

    else
    {
      v10 = *(v4 + 40);
      if (v9 != 4)
      {
        return 0;
      }
    }

    if (*v10 != 1701670771)
    {
      return 0;
    }

    v11 = (v8 + 48);
    v12 = *(v8 + 71);
    if (v12 < 0)
    {
      if (*(v8 + 56) != 4)
      {
        return 0;
      }

      v11 = *v11;
    }

    else if (v12 != 4)
    {
      return 0;
    }

    result = 0;
    v14 = *v11 != 1701736302;
    if (v6 <= 2 && !v14)
    {
      result = swift::reflection::TypeConverter::getTypeInfo(*a1, *(v8 + 32), a1[1]);
      v4 = result;
      if (result)
      {
        continue;
      }
    }

    return result;
  }

  if (v7 == 1)
  {
    if (*(v4 + 32) != 5)
    {
      return 0;
    }

    v17 = *(v4 + 28);
    __p = 0;
    v43 = 0;
    v44 = 0;
    v18 = *(v4 + 40);
    v19 = *(v4 + 48);
    if (v18 == v19)
    {
LABEL_60:
      v37 = *a1;
      v38 = *(v4 + 12);
      operator new();
    }

    while (1)
    {
      v21 = *(v18 + 23);
      if (v21 < 0)
      {
        v24 = *(v18 + 8);
        if (v24 != 6)
        {
          v23 = v43;
          if (v43 < v44)
          {
            goto LABEL_58;
          }

          goto LABEL_31;
        }

        v22 = *v18;
      }

      else
      {
        v22 = v18;
        if (v21 != 6)
        {
          v23 = v43;
          if (v43 < v44)
          {
            goto LABEL_46;
          }

          goto LABEL_31;
        }
      }

      v25 = *v22;
      v26 = *(v22 + 2);
      if (v25 == 1701470831 && v26 == 29795)
      {
        v29 = swift::reflection::LowerType::rebuildStorageTypeInfo(a1, *(v18 + 40), a3);
        v30 = *(v29 + 28);
        v31 = v17 != 0;
        if (*(v18 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v39, *v18, *(v18 + 8));
        }

        else
        {
          v32 = *v18;
          v39.__r_.__value_.__r.__words[2] = *(v18 + 16);
          *&v39.__r_.__value_.__l.__data_ = v32;
        }

        LODWORD(v40) = *(v18 + 24);
        DWORD1(v40) = -1;
        *(&v40 + 1) = *(v18 + 32);
        v41 = v29;
        v33 = v43;
        if (v43 >= v44)
        {
          v43 = std::vector<swift::reflection::FieldInfo>::__emplace_back_slow_path<swift::reflection::FieldInfo>(&__p, &v39);
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          v17 = v31 & v30;
        }

        else
        {
          v34 = *&v39.__r_.__value_.__l.__data_;
          *(v43 + 16) = *(&v39.__r_.__value_.__l + 2);
          *v33 = v34;
          memset(&v39, 0, sizeof(v39));
          v35 = v41;
          *(v33 + 24) = v40;
          *(v33 + 40) = v35;
          v43 = v33 + 48;
          v17 = v31 & v30;
        }

        goto LABEL_33;
      }

      v23 = v43;
      if (v43 < v44)
      {
        if (v21 < 0)
        {
          v24 = *(v18 + 8);
LABEL_58:
          std::string::__init_copy_ctor_external(v23, *v18, v24);
        }

        else
        {
LABEL_46:
          v28 = *v18;
          *(v23 + 16) = *(v18 + 16);
          *v23 = v28;
        }

        v36 = *(v18 + 24);
        *(v23 + 40) = *(v18 + 40);
        *(v23 + 24) = v36;
        v20 = v23 + 48;
        goto LABEL_32;
      }

LABEL_31:
      v20 = std::vector<swift::reflection::FieldInfo>::__emplace_back_slow_path<swift::reflection::FieldInfo const&>(&__p, v18);
LABEL_32:
      v43 = v20;
LABEL_33:
      v18 += 48;
      if (v18 == v19)
      {
        goto LABEL_60;
      }
    }
  }

  if (v7 != 2)
  {
    return 0;
  }

  v15 = *a1;
  v16 = *(v4 + 36);

  return swift::reflection::TypeConverter::getReferenceTypeInfo(v15, a3, v16);
}

uint64_t std::vector<swift::reflection::FieldInfo>::__emplace_back_slow_path<swift::reflection::FieldInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x555555555555555)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v7 = v6 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>,std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = ((v6 >> 4) ^ (v6 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32)) + ~(((v6 >> 4) ^ (v6 >> 9)) << 32);
    v8 = (v7 ^ (v7 >> 22)) + ~((v7 ^ (v7 >> 22)) << 13);
    v9 = (9 * (v8 ^ (v8 >> 8))) ^ ((9 * (v8 ^ (v8 >> 8))) >> 15);
    v10 = ((v9 + ~(v9 << 27)) >> 31) ^ (v9 + ~(v9 << 27));
    v11 = v3 - 1;
    v12 = (v3 - 1) & v10;
    v13 = (*a1 + 24 * v12);
    v15 = *v13;
    v14 = v13[1];
    if (v5 == *v13 && v6 == v14)
    {
      result = 1;
      *a3 = v13;
    }

    else
    {
      v17 = 0;
      v18 = 1;
      result = 1;
      while (v15 != -4096 || v14 != -4096)
      {
        if (v17)
        {
          v20 = 0;
        }

        else
        {
          v20 = v14 == -8192;
        }

        if (v20 && v15 == -8192)
        {
          v17 = v13;
        }

        v22 = v12 + v18++;
        v12 = v22 & v11;
        v13 = (v4 + 24 * (v22 & v11));
        v15 = *v13;
        v14 = v13[1];
        if (v5 == *v13 && v6 == v14)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v17)
      {
        v13 = v17;
      }

      *a3 = v13;
    }
  }

  else
  {
    v13 = 0;
    result = 0;
LABEL_9:
    *a3 = v13;
  }

  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>,std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = ((v6 >> 4) ^ (v6 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32)) + ~(((v6 >> 4) ^ (v6 >> 9)) << 32);
    v8 = (v7 ^ (v7 >> 22)) + ~((v7 ^ (v7 >> 22)) << 13);
    v9 = (9 * (v8 ^ (v8 >> 8))) ^ ((9 * (v8 ^ (v8 >> 8))) >> 15);
    v10 = ((v9 + ~(v9 << 27)) >> 31) ^ (v9 + ~(v9 << 27));
    v11 = v3 - 1;
    v12 = (v3 - 1) & v10;
    v13 = (*a1 + 32 * v12);
    v14 = *v13;
    v15 = v13[1];
    if (*a2 == *v13 && v6 == v15)
    {
      result = 1;
      *a3 = v13;
    }

    else
    {
      v17 = 0;
      v18 = 1;
      result = 1;
      while (v14 != -4096 || v15 != -4096)
      {
        if (v17)
        {
          v20 = 0;
        }

        else
        {
          v20 = v15 == -8192;
        }

        if (v20 && v14 == -8192)
        {
          v17 = v13;
        }

        v22 = v12 + v18++;
        v12 = v22 & v11;
        v13 = (v4 + 32 * v12);
        v14 = *v13;
        v15 = v13[1];
        if (v5 == *v13 && v6 == v15)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v17)
      {
        v13 = v17;
      }

      *a3 = v13;
    }
  }

  else
  {
    v13 = 0;
    result = 0;
LABEL_9:
    *a3 = v13;
  }

  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>::try_emplace<__swift::__runtime::llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = v4 - 1;
    v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v8 = (*result + 8 * v7);
    v9 = *v8;
    if (*a2 == *v8)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_10;
    }

    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v11 = *(result + 8);
  if (4 * v11 + 4 >= 3 * v4)
  {
    v4 *= 2;
    goto LABEL_24;
  }

  if (v4 + ~v11 - *(result + 12) <= v4 >> 3)
  {
LABEL_24:
    v16 = result;
    v17 = a3;
    __swift::__runtime::llvm::DenseMap<swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>::grow(result, v4);
    __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>::LookupBucketFor<swift::reflection::TypeRef const*>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v11 = *(v16 + 8);
    v8 = v18;
  }

  *(result + 8) = v11 + 1;
  if (*v8 != -4096)
  {
    --*(result + 12);
  }

  *v8 = *a2;
  v5 = *result;
  v4 = *(result + 16);
  v10 = 1;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>::LookupBucketFor<swift::reflection::TypeRef const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void __swift::__runtime::llvm::DenseMap<swift::reflection::TypeRef const*,__swift::__runtime::llvm::detail::DenseSetEmpty,__swift::__runtime::llvm::DenseMapInfo<swift::reflection::TypeRef const*>,__swift::__runtime::llvm::detail::DenseSetPair<swift::reflection::TypeRef const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = __swift::__runtime::llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &buffer->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = buffer + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != buffer + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = (*a1 + 8 * v29);
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = (*a1 + 8 * (v34 & v18));
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    __swift::__runtime::llvm::deallocate_buffer(v4, (8 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v21 < 3)
      {
        goto LABEL_18;
      }

      v22 = v21 + 1;
      v10 = &buffer->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
      v23 = buffer + 1;
      v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v23[-1] = v24;
        *v23 = v24;
        v23 += 2;
        v25 -= 4;
      }

      while (v25);
      if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_18:
        v26 = &buffer->i8[8 * v20];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v26);
      }
    }
  }
}

void *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>,std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::InsertIntoBucketImpl<std::pair<swift::reflection::TypeRef const*,void *>>(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_8;
  }

  if (v5 + ~v4 - *(a1 + 3) <= v5 >> 3)
  {
LABEL_8:
    v7 = a1;
    __swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::grow(a1, v5);
    v9 = 0;
    __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>,std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>(v7, a3, &v9);
    a1 = v7;
    a4 = v9;
  }

  ++*(a1 + 2);
  if (*a4 != -4096 || a4[1] != -4096)
  {
    --*(a1 + 3);
  }

  return a4;
}

void __swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = __swift::__runtime::llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x18)
    {
      v27 = v14 / 0x18 + 1;
      v15 = (buffer + 24 * (v27 & 0x1FFFFFFFFFFFFFFELL));
      v28 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v29 = buffer;
      v30 = v27 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v29 = v28;
        *(v29 + 24) = v28;
        v29 += 3;
        v30 -= 2;
      }

      while (v30);
      if (v27 == (v27 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v31 = (buffer + 24 * v13);
    v32 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    do
    {
      *v15 = v32;
      v15 = (v15 + 24);
    }

    while (v15 != v31);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (buffer + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v18 = buffer;
      v19 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v18 = v17;
        *(v18 + 24) = v17;
        v18 += 3;
        v19 -= 2;
      }

      while (v19);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v20 = (buffer + 24 * v10);
    v21 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    do
    {
      *v12 = v21;
      v12 = (v12 + 24);
    }

    while (v12 != v20);
  }

LABEL_16:
  v22 = 3 * v3;
  if (v3)
  {
    v23 = 24 * v3;
    v24 = v4;
    do
    {
      v26 = v24[1];
      if ((*v24 != -4096 || v26 != -4096) && (*v24 != -8192 || v26 != -8192))
      {
        v33 = 0;
        __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>,std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,swift::reflection::TypeInfo const*>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>(a1, v24, &v33);
        v25 = v33;
        *v33 = *v24;
        v25[1] = v24[1];
        v25[2] = v24[2];
        ++*(a1 + 8);
      }

      v24 += 3;
      v23 -= 24;
    }

    while (v23);
  }

  __swift::__runtime::llvm::deallocate_buffer(v4, (8 * v22), 8uLL);
}

void *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>,std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::InsertIntoBucketImpl<std::pair<swift::reflection::TypeRef const*,void *>>(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_8;
  }

  if (v5 + ~v4 - *(a1 + 3) <= v5 >> 3)
  {
LABEL_8:
    v7 = a1;
    __swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::grow(a1, v5);
    v9 = 0;
    __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>,std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>(v7, a3, &v9);
    a1 = v7;
    a4 = v9;
  }

  ++*(a1 + 2);
  if (*a4 != -4096 || a4[1] != -4096)
  {
    --*(a1 + 3);
  }

  return a4;
}

void __swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = __swift::__runtime::llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v15 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v13[-2] = v14;
        *v13 = v14;
        v13 += 4;
        v15 -= 2;
      }

      while (v15);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v16 = &buffer[2 * v11];
        v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        do
        {
          *v10 = v17;
          v10 += 2;
        }

        while (v10 != v16);
      }
    }

    v18 = (32 * v3);
    if (v3)
    {
      v19 = 32 * v3;
      v20 = v4;
      do
      {
        v22 = *(v20 + 1);
        if ((*v20 != -4096 || v22 != -4096) && (*v20 != -8192 || v22 != -8192))
        {
          v30 = 0;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>,std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::reflection::TypeRef const*,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::reflection::TypeRef const*,void *>,std::pair<char const*,swift::reflection::TypeRef const*>>>::LookupBucketFor<std::pair<swift::reflection::TypeRef const*,void *>>(a1, v20, &v30);
          v21 = v30;
          *v30 = *v20;
          v21[1] = *(v20 + 1);
          *(v21 + 1) = *(v20 + 1);
          ++*(a1 + 8);
        }

        v20 = (v20 + 32);
        v19 -= 32;
      }

      while (v19);
    }

    __swift::__runtime::llvm::deallocate_buffer(v4, v18, 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v23 = *(a1 + 16);
    if (v23)
    {
      if (((v23 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_27;
      }

      v24 = ((v23 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v24 & 0xFFFFFFFFFFFFFFELL)];
      v25 = buffer + 2;
      v26 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v27 = v24 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v25[-2] = v26;
        *v25 = v26;
        v25 += 4;
        v27 -= 2;
      }

      while (v27);
      if (v24 != (v24 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_27:
        v28 = &buffer[2 * v23];
        v29 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        do
        {
          *v10 = v29;
          v10 += 2;
        }

        while (v10 != v28);
      }
    }
  }
}

void OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2)
{
  *a2 = &off_E1510;
  *(a2 + 8) = 3;
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  *(a2 + 28) = 1;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(swift::reflection::TypeInfo::~TypeInfo, a2, a3);
}

void *swift::reflection::TypeRef::dump(swift::reflection::TypeRef *this)
{
  v2 = &std::cerr;
  v3 = 0;
  swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(&v2, this);
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cerr, "\n", 1);
}

void *swift::reflection::TypeRef::dump(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a3;
  swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(&v5, a1);
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a2, "\n", 1);
}

void *swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    switch(*(a2 + 8))
    {
      case 0:

        PrintTypeRef::visitBuiltinTypeRef(result, a2);
      case 1:

        PrintTypeRef::visitNominalTypeRef(result, a2);
      case 2:

        PrintTypeRef::visitBoundGenericTypeRef(result, a2);
      case 3:

        return PrintTypeRef::visitTupleTypeRef(result, a2);
      case 4:

        return PrintTypeRef::visitFunctionTypeRef(result, a2);
      case 5:

        return PrintTypeRef::visitProtocolCompositionTypeRef(result, a2);
      case 6:

        PrintTypeRef::visitConstrainedExistentialTypeRef(result, a2);
      case 7:

        return PrintTypeRef::visitMetatypeTypeRef(result, a2);
      case 8:
        v3 = a2;
        v18 = 20;
        strcpy(__p, "existential_metatype");
        for (i = *(result + 2); i; --i)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, " ", 1);
        }

        v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, "(", 1);
        v6 = 20;
        goto LABEL_77;
      case 9:

        return PrintTypeRef::visitGenericTypeParameterTypeRef(result, a2);
      case 0xA:

        return PrintTypeRef::visitDependentMemberTypeRef(result, a2);
      case 0xB:

        return PrintTypeRef::visitForeignClassTypeRef(result, a2);
      case 0xC:

        return PrintTypeRef::visitObjCClassTypeRef(result, a2);
      case 0xD:

        return PrintTypeRef::visitObjCProtocolTypeRef(result, a2);
      case 0xE:

        return PrintTypeRef::visitOpaqueTypeRef(result, a2);
      case 0xF:

        return PrintTypeRef::visitOpaqueArchetypeTypeRef(result, a2);
      case 0x10:
        v3 = a2;
        v18 = 12;
        strcpy(__p, "weak_storage");
        for (j = *(result + 2); j; --j)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, " ", 1);
        }

        v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, "(", 1);
        v6 = 12;
        goto LABEL_77;
      case 0x11:
        v3 = a2;
        v18 = 15;
        strcpy(__p, "unowned_storage");
        for (k = *(result + 2); k; --k)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, " ", 1);
        }

        v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, "(", 1);
        v6 = 15;
        goto LABEL_77;
      case 0x12:
        v3 = a2;
        v18 = 17;
        strcpy(__p, "unmanaged_storage");
        for (m = *(result + 2); m; --m)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, " ", 1);
        }

        v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, "(", 1);
        v6 = 17;
        goto LABEL_77;
      case 0x13:
        v3 = a2;
        v18 = 7;
        strcpy(__p, "sil_box");
        for (n = *(result + 2); n; --n)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, " ", 1);
        }

        v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, "(", 1);
        v6 = 7;
LABEL_77:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, v6);
        if (v18 < 0)
        {
          operator delete(*__p);
        }

        v14 = *(v3 + 16);
        v15 = *v2;
        goto LABEL_80;
      case 0x14:

        return PrintTypeRef::visitSILBoxTypeWithLayoutTypeRef(result, a2);
      case 0x15:

        return PrintTypeRef::visitIntegerTypeRef(result, a2);
      case 0x16:
        v18 = 19;
        strcpy(__p, "builtin_fixed_array");
        for (ii = *(result + 2); ii; --ii)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, " ", 1);
        }

        v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, "(", 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, __p, 19);
        if (v18 < 0)
        {
          operator delete(*__p);
        }

        v13 = *(a2 + 16);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, "\n", 1);
        *(v2 + 2) += 2;
        swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(v2, v13);
        *(v2 + 2) -= 2;
        v14 = *(a2 + 24);
        v15 = *v2;
LABEL_80:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
        *(v2 + 2) += 2;
        swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(v2, v14);
        *(v2 + 2) -= 2;
        result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*v2, ")", 1);
        break;
      case 0x17:

        result = PrintTypeRef::visitPackTypeRef(result, a2);
        break;
      case 0x18:

        result = PrintTypeRef::visitPackExpansionTypeRef(result, a2);
        break;
      default:
        return result;
    }
  }

  return result;
}

unsigned int *swift::reflection::TypeRef::getDemangling(swift::reflection::TypeRef *this, swift::Demangle::__runtime::Demangler *a2)
{
  v8 = a2;
  v2 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(&v8, this);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(v8, 243);
  swift::Demangle::__runtime::Node::addChild(Node, v3, v8, v5, v6);
  return Node;
}

void swift::reflection::TypeRef::mangle(swift::reflection::TypeRef *this@<X0>, swift::Demangle::__runtime::Demangler *a2@<X1>, std::string *a3@<X8>)
{
  v17 = a2;
  v5 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(&v17, this);
  if (v5 && (v6 = v5, v7 = swift::Demangle::__runtime::NodeFactory::createNode(v17, 243), swift::Demangle::__runtime::Node::addChild(v7, v6, v17, v8, v9), v7))
  {
    Node = swift::Demangle::__runtime::NodeFactory::createNode(a2, 247);
    swift::Demangle::__runtime::Node::addChild(Node, v7, a2, v11, v12);
    v13 = swift::Demangle::__runtime::NodeFactory::createNode(a2, 101);
    swift::Demangle::__runtime::Node::addChild(v13, v7, a2, v14, v15);
    swift::Demangle::__runtime::mangleNode();
    if (v17)
    {
      v16 = 0;
      a3->__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if (SHIBYTE(v19) < 0)
      {
        std::string::__init_copy_ctor_external(a3, __p, *(&__p + 1));
      }

      else
      {
        *&a3->__r_.__value_.__l.__data_ = __p;
        a3->__r_.__value_.__r.__words[2] = v19;
      }

      v16 = 1;
    }

    a3[1].__r_.__value_.__s.__data_[0] = v16;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

uint64_t swift::reflection::TypeRef::isConcrete(swift::reflection::TypeRef *this)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v3 = v4;
  v1 = swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(&v3, this);
  __swift::__runtime::llvm::deallocate_buffer(v4[0], (16 * v5), 8uLL);
  return v1;
}

uint64_t swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(uint64_t **a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    while (2)
    {
      v4 = 0;
      result = 1;
      v6 = 16;
      switch(*(v2 + 8))
      {
        case 0:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0x14:
        case 0x15:
          return result;
        case 1:
          v2 = *(v2 + 40);
          if (v2)
          {
            goto LABEL_5;
          }

          return 1;
        case 2:
          v13 = *(v2 + 40);
          if (v13)
          {
            result = swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(a1, v13);
            if (!result)
            {
              return result;
            }
          }

          v14 = *(v2 + 48);
          v15 = *(v2 + 56);
          if (v14 == v15)
          {
            return 1;
          }

          v16 = v14 + 8;
          do
          {
            result = swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(a1, *(v16 - 8));
            if (result)
            {
              v17 = v16 == v15;
            }

            else
            {
              v17 = 1;
            }

            v16 += 8;
          }

          while (!v17);
          return result;
        case 3:
          v18 = *(v2 + 16);
          v19 = *(v2 + 24);
          if (v18 != v19)
          {
            v20 = v18 + 8;
            do
            {
              result = swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(a1, *(v20 - 8));
              if (result)
              {
                v21 = v20 == v19;
              }

              else
              {
                v21 = 1;
              }

              v20 += 8;
            }

            while (!v21);
          }

          return result;
        case 4:
          v7 = *(v2 + 16);
          v8 = *(v2 + 24);
          if (v7 == v8)
          {
            goto LABEL_12;
          }

          do
          {
            if ((swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(a1, *(v7 + 16)) & 1) == 0)
            {
              return 0;
            }

            v7 += 32;
          }

          while (v7 != v8);
LABEL_12:
          v2 = *(v2 + 40);
          if (!v2)
          {
            return 0;
          }

          continue;
        case 5:
          v22 = *(v2 + 16);
          v23 = *(v2 + 24);
          if (v22 == v23)
          {
            goto LABEL_45;
          }

          break;
        case 6:
        case 7:
        case 8:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
          goto LABEL_4;
        case 9:
          v25 = *a1;
          v27 = *(v2 + 12);
          v28 = 0;
          if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(v25, &v27, &v28))
          {
            v26 = v28;
          }

          else
          {
            v26 = *v25 + 16 * *(v25 + 4);
          }

          return v26 != **a1 + 16 * *(*a1 + 4);
        case 0xA:
          v6 = 40;
          goto LABEL_4;
        case 0x16:
          v6 = 24;
LABEL_4:
          v2 = *(v2 + v6);
LABEL_5:
          if (!v2)
          {
            return 0;
          }

          continue;
        case 0x17:
          v9 = *(v2 + 16);
          v10 = *(v2 + 24);
          if (v9 != v10)
          {
            v11 = v9 + 8;
            do
            {
              result = swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(a1, *(v11 - 8));
              if (result)
              {
                v12 = v11 == v10;
              }

              else
              {
                v12 = 1;
              }

              v11 += 8;
            }

            while (!v12);
          }

          return result;
        default:
          return v4;
      }

      break;
    }

    while ((swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(a1, *v22) & 1) != 0)
    {
      if (++v22 == v23)
      {
LABEL_45:
        v24 = *(v2 + 40);
        if (!v24)
        {
          return 1;
        }

        result = swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(a1, v24);
        if (result)
        {
          return 1;
        }

        return result;
      }
    }
  }

  return 0;
}

uint64_t swift::reflection::NominalTypeTrait::getDepth(swift::reflection::NominalTypeTrait *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    result = 0;
    while (1)
    {
      v3 = *(v1 + 8);
      if (v3 != 1)
      {
        if (v3 != 2)
        {
          return result;
        }

        result = (result + 1);
      }

      v1 = *(v1 + 40);
      if (!v1)
      {
        return result;
      }
    }
  }

  return 0;
}

void swift::reflection::TypeRef::getSubstMap(swift::reflection::TypeRef *this@<X0>, _BYTE *a2@<X8>)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v4 = *(this + 2);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_82;
    }

    v5 = *(this + 5);
    if (v5)
    {
      (swift::reflection::TypeRef::getSubstMap)(v5);
    }

    else
    {
      *a2 = 0;
      *(a2 + 1) = 0;
      *(a2 + 4) = 0;
      a2[24] = 1;
      __swift::__runtime::llvm::deallocate_buffer(0, 0, 8uLL);
    }

    goto LABEL_83;
  }

  v6 = *(this + 5);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 5);
    do
    {
      while (1)
      {
        v9 = *(v8 + 8);
        if (v9 != 1)
        {
          break;
        }

        v8 = *(v8 + 40);
        if (!v8)
        {
          goto LABEL_15;
        }
      }

      if (v9 != 2)
      {
        break;
      }

      ++v7;
      v8 = *(v8 + 40);
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

LABEL_15:
  v10 = *(this + 6);
  v11 = *(this + 7);
  if (v10 == v11)
  {
    goto LABEL_47;
  }

  v42 = a2;
  v12 = 0;
  do
  {
    v21 = *v10;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v50 = &v43;
    v22 = swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(&v50, v21);
    __swift::__runtime::llvm::deallocate_buffer(v43, (16 * v45), 8uLL);
    if ((v22 & 1) == 0)
    {
      *v42 = 0;
      v42[24] = 0;
      goto LABEL_83;
    }

    v43 = (v7 | (v12 << 32));
    v44 = v21;
    if (!v49)
    {
      v23 = 0;
LABEL_26:
      v24 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(&v47, &v43, &v43, v23);
      *v24 = v43;
      v24[1] = v44;
      goto LABEL_22;
    }

    v13 = (((37 * v7) << 32) | (37 * v12)) + ~((37 * v12) << 32);
    v14 = (v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13);
    v15 = (9 * (v14 ^ (v14 >> 8))) ^ ((9 * (v14 ^ (v14 >> 8))) >> 15);
    v16 = (v49 - 1) & (((v15 + ~(v15 << 27)) >> 31) ^ (v15 + ~(v15 << 27)));
    v17 = (v47 + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    if (v7 != *v17 || v12 != v19)
    {
      v25 = 0;
      v26 = 1;
      while (v18 != -1 || v19 != -1)
      {
        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v19 == -2;
        }

        if (v27 && v18 == -2)
        {
          v25 = v17;
        }

        v29 = v16 + v26++;
        v16 = v29 & (v49 - 1);
        v17 = (v47 + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        if (v7 == *v17 && v12 == v19)
        {
          goto LABEL_22;
        }
      }

      if (v25)
      {
        v23 = v25;
      }

      else
      {
        v23 = v17;
      }

      goto LABEL_26;
    }

LABEL_22:
    v12 = (v12 + 1);
    ++v10;
  }

  while (v10 != v11);
  v6 = *(this + 5);
  a2 = v42;
LABEL_47:
  if (v6)
  {
    swift::reflection::TypeRef::getSubstMap(&v43, v6);
    v31 = v46;
    if (v46)
    {
      if (!v44)
      {
        goto LABEL_80;
      }

      if (v45)
      {
        v32 = 16 * v45;
        v33 = v43;
        while (1)
        {
          v34 = *(v33 + 1);
          if ((*v33 != -1 || v34 != -1) && (*v33 != -2 || v34 != -2))
          {
            break;
          }

          v33 = (v33 + 16);
          v32 -= 16;
          if (!v32)
          {
            goto LABEL_80;
          }
        }
      }

      else
      {
        v33 = v43;
      }

      v37 = (v43 + 16 * v45);
      if (v33 == v37)
      {
        goto LABEL_80;
      }

      do
      {
        v50 = 0;
        if ((__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(&v47, v33, &v50) & 1) == 0)
        {
          v38 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(&v47, v33, v33, v50);
          *v38 = *v33;
          v38[1] = *(v33 + 1);
        }

        do
        {
          v33 = (v33 + 16);
          if (v33 == v37)
          {
            break;
          }

          v39 = *(v33 + 1);
        }

        while (*v33 == -1 && v39 == -1 || *v33 == -2 && v39 == -2);
      }

      while (v33 != v37);
      if (v46)
      {
LABEL_80:
        __swift::__runtime::llvm::deallocate_buffer(v43, (16 * v45), 8uLL);
      }

      if (v31)
      {
        goto LABEL_82;
      }
    }

    else
    {
      *a2 = 0;
      a2[24] = 0;
    }
  }

  else
  {
LABEL_82:
    *a2 = v47;
    *(a2 + 1) = v48;
    v47 = 0;
    v48 = 0;
    *(a2 + 4) = v49;
    v49 = 0;
    a2[24] = 1;
  }

LABEL_83:
  __swift::__runtime::llvm::deallocate_buffer(v47, (16 * v49), 8uLL);
}

uint64_t swift::reflection::NominalTypeTrait::isStruct(swift::reflection::NominalTypeTrait *this)
{
  v1 = *(this + 23);
  v2 = *(this + 1);
  if (v1 < 0)
  {
    this = *this;
  }

  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  return swift::Demangle::__runtime::isStruct(this, v3);
}

uint64_t swift::reflection::NominalTypeTrait::isEnum(swift::reflection::NominalTypeTrait *this)
{
  v1 = *(this + 23);
  v2 = *(this + 1);
  if (v1 < 0)
  {
    this = *this;
  }

  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  return swift::Demangle::__runtime::isEnum(this, v3);
}

uint64_t swift::reflection::NominalTypeTrait::isClass(swift::reflection::NominalTypeTrait *this)
{
  v1 = *(this + 23);
  v2 = *(this + 1);
  if (v1 < 0)
  {
    this = *this;
  }

  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  return swift::Demangle::__runtime::isClass(this, v3);
}

uint64_t swift::reflection::NominalTypeTrait::isProtocol(swift::reflection::NominalTypeTrait *this)
{
  v1 = *(this + 23);
  v2 = *(this + 1);
  if (v1 < 0)
  {
    this = *this;
  }

  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  return swift::Demangle::__runtime::isProtocol(this, v3);
}

uint64_t swift::reflection::NominalTypeTrait::isAlias(swift::reflection::NominalTypeTrait *this)
{
  v1 = *(this + 23);
  v2 = *(this + 1);
  if (v1 < 0)
  {
    this = *this;
  }

  if (v1 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  return swift::Demangle::__runtime::isAlias(this, v3);
}

const swift::reflection::FunctionTypeRef *swift::reflection::TypeRef::subst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift::__runtime::llvm::deallocate_buffer(0, 0, 8uLL);
  v6 = *(a3 + 16);
  if (v6)
  {
    buffer = __swift::__runtime::llvm::allocate_buffer(16 * v6, 8uLL);
    v8 = (*a3 + 8);
    v25 = *(a3 + 8);
    v9 = (buffer + 8);
    v10 = v6;
    do
    {
      v11 = *(v8 - 1);
      *(v9 - 1) = v11;
      v12 = HIDWORD(v11);
      if ((v11 != -1 || v12 != 0xFFFFFFFF) && (v11 != -2 || v12 != 4294967294))
      {
        *v9 = *v8;
      }

      v8 += 2;
      v9 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    buffer = 0;
    v25 = 0;
  }

  v27 = 0;
  v28 = 0;
  v26 = a2;
  __swift::__runtime::llvm::deallocate_buffer(0, 0, 8uLL);
  v29 = v6;
  if (v6)
  {
    v15 = __swift::__runtime::llvm::allocate_buffer(16 * v6, 8uLL);
    v16 = 0;
    v27 = v15;
    v28 = v25;
    v17 = (buffer + 8);
    v18 = (v15 + 8);
    do
    {
      v19 = *(v17 - 1);
      *(v18 - 1) = v19;
      v20 = HIDWORD(v19);
      if ((v19 != -1 || v20 != 0xFFFFFFFF) && (v19 != -2 || v20 != 4294967294))
      {
        *v18 = *v17;
      }

      ++v16;
      v17 += 2;
      v18 += 2;
    }

    while (v16 < v6);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v23 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(&v26, a1);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  __swift::__runtime::llvm::deallocate_buffer(v27, (16 * v29), 8uLL);
  __swift::__runtime::llvm::deallocate_buffer(buffer, (16 * v6), 8uLL);
  return v23;
}

const swift::reflection::FunctionTypeRef *swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    switch(*(a2 + 8))
    {
      case 0:
      case 5:
      case 8:
      case 0xB:
      case 0xC:
      case 0xD:
      case 0xE:
      case 0x14:
      case 0x15:
        return a2;
      case 1:
        if (!*(a2 + 40))
        {
          return a2;
        }

        v6 = *a1;
        v7 = a2;
        v8 = *(a2 + 40);
        v9 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);

        return swift::reflection::NominalTypeRef::create<swift::reflection::TypeRefBuilder>(v6, v7 + 16, v9);
      case 2:

        return TypeRefSubstitution::visitBoundGenericTypeRef(a1, a2);
      case 3:

        return TypeRefSubstitution::visitTupleTypeRef(a1, a2);
      case 4:

        return TypeRefSubstitution::visitFunctionTypeRef(a1, a2);
      case 6:

        return TypeRefSubstitution::visitConstrainedExistentialTypeRef(a1, a2);
      case 7:
        v41[0] = 0;
        v41[1] = 0;
        v42 = 0;
        v40 = v41;
        v4 = a2;
        v5 = swift::reflection::TypeRefVisitor<TypeRefIsConcrete,BOOL>::visit(&v40, a2);
        __swift::__runtime::llvm::deallocate_buffer(v41[0], (16 * v42), 8uLL);
        if (v5)
        {
          return v4;
        }

        v37 = *a1;
        v38 = *(v4 + 16);
        v39 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);
        v17 = swift::reflection::MetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(v37, v39, 1);
        goto LABEL_58;
      case 9:
        v10 = a2;
        v40 = *(a2 + 12);
        v41[0] = 0;
        if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>((a1 + 8), &v40, v41))
        {
          a2 = v10;
          if (v41[0] == (*(a1 + 8) + 16 * *(a1 + 24)))
          {
            return a2;
          }

          v12 = *(v41[0] + 1);
          v13 = *(a1 + 40);
          if (*(a1 + 32) != v13)
          {
            if (*(v12 + 8) != 23 || v12 == 0)
            {
              return 0;
            }

            v15 = *(v13 - 4);
            v16 = *(v12 + 16);
            if (v15 >= (*(v12 + 24) - v16) >> 3)
            {
              return 0;
            }

            v12 = *(v16 + 8 * v15);
          }

          v41[0] = *a1;
          v17 = swift::reflection::TypeRefVisitor<ThickenMetatype,swift::reflection::TypeRef const*>::visit(v41, v12);
LABEL_58:
          a2 = v17;
        }

        else
        {
          a2 = v10;
        }

        break;
      case 0xA:

        return TypeRefSubstitution::visitDependentMemberTypeRef(a1, a2);
      case 0xF:

        return TypeRefSubstitution::visitOpaqueArchetypeTypeRef(a1, a2);
      case 0x10:
        v24 = *a1;
        v25 = *(a2 + 16);
        v26 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);

        return swift::reflection::WeakStorageTypeRef::create<swift::reflection::TypeRefBuilder>(v24, v26);
      case 0x11:
        v34 = *a1;
        v35 = *(a2 + 16);
        v36 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);

        return swift::reflection::UnownedStorageTypeRef::create<swift::reflection::TypeRefBuilder>(v34, v36);
      case 0x12:
        v18 = *a1;
        v19 = *(a2 + 16);
        v20 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);

        return swift::reflection::UnmanagedStorageTypeRef::create<swift::reflection::TypeRefBuilder>(v18, v20);
      case 0x13:
        v21 = *a1;
        v22 = *(a2 + 16);
        v23 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);

        return swift::reflection::SILBoxTypeRef::create<swift::reflection::TypeRefBuilder>(v21, v23);
      case 0x16:
        v27 = *a1;
        v28 = *(a2 + 16);
        v30 = a2;
        v31 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);
        v32 = *(v30 + 24);
        v33 = swift::reflection::TypeRefVisitor<TypeRefSubstitution,swift::reflection::TypeRef const*>::visit(a1);

        return swift::reflection::BuiltinFixedArrayTypeRef::create<swift::reflection::TypeRefBuilder>(v27, v31, v33);
      case 0x17:

        return TypeRefSubstitution::visitPackTypeRef(a1, a2);
      default:
        return 0;
    }
  }

  return a2;
}

uint64_t swift::reflection::TypeRef::deriveSubstitutions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 8);
  v7 = a2 == 0;
  if (a2)
  {
LABEL_2:
    if (v6 != 1)
    {
      goto LABEL_3;
    }

    if (a3 && *(a3 + 8) == 1)
    {
      v9 = *(v4 + 40);
      v10 = *(a3 + 40);
      if ((v9 != 0) != (v10 == 0))
      {
        v11 = *(v4 + 39);
        if (v11 >= 0)
        {
          v12 = *(v4 + 39);
        }

        else
        {
          v12 = *(v4 + 24);
        }

        v13 = *(a3 + 39);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a3 + 24);
        }

        if (v12 == v13)
        {
          v15 = (a3 + 16);
          v16 = v11 >= 0 ? (v4 + 16) : *(v4 + 16);
          v17 = *v15;
          v18 = (v14 >= 0 ? a3 + 16 : *v15);
          if (!memcmp(v16, v18, v12))
          {
            if (v9)
            {
              result = swift::reflection::TypeRef::deriveSubstitutions(a1, v9, v10);
              if (!result)
              {
                return result;
              }
            }

            return 1;
          }
        }
      }

      return 0;
    }

    return v4 == a3;
  }

LABEL_3:
  while (v7 || v6 != 2)
  {
    if (!v7 && v6 == 3 && a3 && *(a3 + 8) == 3)
    {
      v36 = *(v4 + 24) - *(v4 + 16);
      if (v36 == *(a3 + 24) - *(a3 + 16))
      {
        if ((v36 & 0x7FFFFFFF8) != 0)
        {
          v37 = 0;
          v38 = (v36 >> 3) - 1;
          do
          {
            result = swift::reflection::TypeRef::deriveSubstitutions(a1, *(*(v4 + 16) + 8 * v37), *(*(a3 + 16) + 8 * v37));
            if (result)
            {
              v39 = v38 == v37;
            }

            else
            {
              v39 = 1;
            }

            ++v37;
          }

          while (!v39);
          return result;
        }

        return 1;
      }

      return 0;
    }

    if (!v7 && v6 == 4)
    {
      if (a3 && *(a3 + 8) == 4)
      {
        v35 = *(v4 + 16);
        v34 = *(v4 + 24);
        if (v34 == v35)
        {
          v42 = *(a3 + 16);
          v41 = *(a3 + 24);
          if (v41 == v42)
          {
            return swift::reflection::TypeRef::deriveSubstitutions(a1, *(v4 + 40), *(a3 + 40));
          }

          if (((v41 - v42) & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else if (((v34 - v35) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      return v4 == a3;
    }

    if (v7 || v6 != 7)
    {
      if (v7 || (v6 - 19) < 0xFFFFFFFD)
      {
        if (v6 == 10)
        {
          return 1;
        }

        if (v7 || v6 != 9)
        {
          return v4 == a3;
        }

        v44 = *(v4 + 12);
        v43 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::find(a1, &v44);
        if (*a1 + 16 * *(a1 + 16) == v43)
        {
          *(__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::FindAndConstruct(a1, &v44) + 1) = a3;
          return 1;
        }

        return *(v43 + 8) == a3;
      }

      if (!a3)
      {
        return v4 == a3;
      }

      v8 = *(a3 + 8);
      if ((v8 - 19) < 0xFFFFFFFD)
      {
        return v4 == a3;
      }

      if (v6 != v8)
      {
        return 0;
      }
    }

    else if (!a3 || *(a3 + 8) != 7)
    {
      return v4 == a3;
    }

    a3 = *(a3 + 16);
    v4 = *(v4 + 16);
    v6 = *(v4 + 8);
    v7 = v4 == 0;
    if (v4)
    {
      goto LABEL_2;
    }
  }

  if (!a3 || *(a3 + 8) != 2)
  {
    return v4 == a3;
  }

  v20 = *(v4 + 40);
  v21 = *(a3 + 40);
  if ((v20 != 0) == (v21 == 0))
  {
    return 0;
  }

  v22 = *(v4 + 39);
  if (v22 >= 0)
  {
    v23 = *(v4 + 39);
  }

  else
  {
    v23 = *(v4 + 24);
  }

  v24 = *(a3 + 39);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a3 + 24);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = (a3 + 16);
  v27 = v22 >= 0 ? (v4 + 16) : *(v4 + 16);
  v28 = *v26;
  v29 = (v25 >= 0 ? a3 + 16 : *v26);
  if (memcmp(v27, v29, v23))
  {
    return 0;
  }

  v30 = *(v4 + 56) - *(v4 + 48);
  if (v30 != *(a3 + 56) - *(a3 + 48))
  {
    return 0;
  }

  if (v20)
  {
    result = swift::reflection::TypeRef::deriveSubstitutions(a1, v20, v21);
    if (!result)
    {
      return result;
    }

    v30 = *(v4 + 56) - *(v4 + 48);
  }

  if ((v30 & 0x7FFFFFFF8) == 0)
  {
    return 1;
  }

  v31 = 0;
  v32 = (v30 >> 3) - 1;
  do
  {
    result = swift::reflection::TypeRef::deriveSubstitutions(a1, *(*(v4 + 48) + 8 * v31), *(*(a3 + 48) + 8 * v31));
    if (result)
    {
      v33 = v32 == v31;
    }

    else
    {
      v33 = 1;
    }

    ++v31;
  }

  while (!v33);
  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::find(uint64_t a1, _DWORD *a2)
{
  v6 = 0;
  v3 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(a1, a2, &v6);
  v4 = *a1;
  if (v3)
  {
    return v6;
  }

  else
  {
    return *a1 + 16 * *(a1 + 16);
  }
}

unsigned int *swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(DemanglingForTypeRef *a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  switch(*(a2 + 2))
  {
    case 0:

      return DemanglingForTypeRef::visitBuiltinTypeRef(a1, a2);
    case 1:

      return DemanglingForTypeRef::visitNominalTypeRef(a1, a2);
    case 2:

      return DemanglingForTypeRef::visitBoundGenericTypeRef(a1, a2);
    case 3:

      return DemanglingForTypeRef::visitTupleTypeRef(a1, a2);
    case 4:

      return DemanglingForTypeRef::visitFunctionTypeRef(a1, a2);
    case 5:

      return DemanglingForTypeRef::visitProtocolCompositionTypeRef(a1, a2);
    case 6:

      return DemanglingForTypeRef::visitConstrainedExistentialTypeRef(a1, a2);
    case 7:
      v6 = a2;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 154);
      if (*(v6 + 24))
      {
        v21 = "@thick";
      }

      else
      {
        v21 = "@thin";
      }

      v22 = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 155, v21);
      swift::Demangle::__runtime::Node::addChild(Node, v22, *a1, v23, v24);
      goto LABEL_67;
    case 8:
      v5 = *a1;
      v6 = a2;
      v7 = 154;
      goto LABEL_66;
    case 9:
      Node = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 39);
      v10 = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 104, *(a2 + 3));
      swift::Demangle::__runtime::Node::addChild(Node, v10, *a1, v11, v12);
      v13 = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 104, *(a2 + 4));
      v16 = *a1;
      v17 = Node;
      goto LABEL_77;
    case 0xA:

      return DemanglingForTypeRef::visitDependentMemberTypeRef(a1, a2);
    case 0xB:

      return DemanglingForTypeRef::visitBuiltinTypeRef(a1, a2);
    case 0xC:

      return DemanglingForTypeRef::visitObjCClassTypeRef(a1, a2);
    case 0xD:

      return DemanglingForTypeRef::visitObjCProtocolTypeRef(a1, a2);
    case 0xE:
      v8 = *a1;

      return swift::Demangle::__runtime::NodeFactory::createNode(v8, 314);
    case 0xF:

      return DemanglingForTypeRef::visitOpaqueArchetypeTypeRef(a1, a2);
    case 0x10:
      v5 = *a1;
      v6 = a2;
      v7 = 259;
      goto LABEL_66;
    case 0x11:
      v5 = *a1;
      v6 = a2;
      v7 = 260;
      goto LABEL_66;
    case 0x12:
      v5 = *a1;
      v6 = a2;
      v7 = 261;
      goto LABEL_66;
    case 0x13:
      v5 = *a1;
      v6 = a2;
      v7 = 221;
LABEL_66:
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v5, v7);
LABEL_67:
      v37 = v6[2];
      goto LABEL_73;
    case 0x14:

      return DemanglingForTypeRef::visitSILBoxTypeWithLayoutTypeRef(a1, a2);
    case 0x15:
      v25 = a2[2];
      v26 = *a1;
      if (v25 >= 0)
      {
        v27 = 368;
      }

      else
      {
        v27 = 369;
      }

      return swift::Demangle::__runtime::NodeFactory::createNode(v26, v27, v25);
    case 0x16:
      v18 = *a1;
      v19 = a2;
      v20 = 22;
      goto LABEL_63;
    case 0x17:

      return DemanglingForTypeRef::visitPackTypeRef(a1, a2);
    case 0x18:
      v18 = *a1;
      v19 = a2;
      v20 = 240;
LABEL_63:
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v18, v20);
      v28 = v19;
      v29 = v19[2];
      v30 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(a1);
      if (v30)
      {
        v33 = v30;
        v34 = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 243);
        swift::Demangle::__runtime::Node::addChild(v34, v33, *a1, v35, v36);
      }

      else
      {
        v34 = 0;
      }

      swift::Demangle::__runtime::Node::addChild(Node, v34, *a1, v31, v32);
      v38 = v28[3];
LABEL_73:
      v39 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(a1);
      if (v39)
      {
        v40 = v39;
        v41 = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 243);
        swift::Demangle::__runtime::Node::addChild(v41, v40, *a1, v42, v43);
      }

      else
      {
        v41 = 0;
      }

      v16 = *a1;
      v17 = Node;
      v13 = v41;
LABEL_77:
      swift::Demangle::__runtime::Node::addChild(v17, v13, v16, v14, v15);
      break;
    default:
      return 0;
  }

  return Node;
}

uint64_t DemanglingForTypeRef::visitBuiltinTypeRef(DemanglingForTypeRef *this, const swift::reflection::BuiltinTypeRef *a2)
{
  v4 = *(a2 + 2);
  v2 = a2 + 16;
  v3 = v4;
  v5 = v2[23];
  if (v5 >= 0)
  {
    v3 = v2;
  }

  if (v5 >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v6 = *(v2 + 1);
  }

  v7 = *this;
  v12 = 0;
  v8 = swift::Demangle::__runtime::Demangler::demangleType(v7, v3, v6, v11);
  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
    if (!v8)
    {
      return v8;
    }

LABEL_12:
    if (*(v8 + 16) != 243)
    {
      return v8;
    }

    v9 = *(v8 + 18);
    if ((v9 - 1) >= 2)
    {
      if (v9 != 5 || !*(v8 + 8))
      {
        return v8;
      }

      v8 = *v8;
    }

    return *v8;
  }

  if (v12)
  {
    (*(*v12 + 40))();
  }

  if (v8)
  {
    goto LABEL_12;
  }

  return v8;
}

unsigned int *DemanglingForTypeRef::visitNominalTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::NominalTypeRef *a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 39);
  if (v5 >= 0)
  {
    v6 = a2 + 16;
  }

  else
  {
    v6 = *(a2 + 2);
  }

  v7 = *(v4 + 1);
  if (v5 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = *this;
  v28 = 0;
  v10 = swift::Demangle::__runtime::Demangler::demangleType(v9, v6, v8, v27);
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v28)
    {
      (*(*v28 + 40))();
    }

    if (!v10)
    {
      return 0;
    }
  }

  if (*(v10 + 16) == 243)
  {
    v11 = *(v10 + 18);
    if ((v11 - 1) >= 2)
    {
      if (v11 != 5 || !*(v10 + 8))
      {
        goto LABEL_19;
      }

      v10 = *v10;
    }

    v10 = *v10;
    if (!v10)
    {
      return 0;
    }
  }

LABEL_19:
  v12 = *(v10 + 18);
  if (v12 != 2 && (v12 != 5 || *(v10 + 8) != 2))
  {
    return v10;
  }

  if (!*(a2 + 5))
  {
    return v10;
  }

  v13 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
  if (!v13)
  {
    return v10;
  }

  v14 = v13;
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
  swift::Demangle::__runtime::Node::addChild(Node, v14, *this, v16, v17);
  if (!Node)
  {
    return v10;
  }

  if (*(Node + 16) == 243)
  {
    v18 = *(Node + 18);
    if ((v18 - 1) < 2)
    {
LABEL_30:
      Node = *Node;
      goto LABEL_31;
    }

    if (v18 == 5 && *(Node + 8))
    {
      Node = *Node;
      goto LABEL_30;
    }
  }

LABEL_31:
  v19 = swift::Demangle::__runtime::NodeFactory::createNode(*this, *(v10 + 16));
  swift::Demangle::__runtime::Node::addChild(v19, Node, *this, v20, v21);
  v24 = *(v10 + 18);
  if (v24 != 2)
  {
    if (v24 != 5 || *(v10 + 8) < 2u)
    {
      v25 = 0;
      goto LABEL_39;
    }

    v10 = *v10;
  }

  v25 = *(v10 + 8);
LABEL_39:
  swift::Demangle::__runtime::Node::addChild(v19, v25, *this, v22, v23);
  return v19;
}

unsigned int *DemanglingForTypeRef::visitBoundGenericTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::BoundGenericTypeRef *a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 39);
  if (v5 >= 0)
  {
    v6 = a2 + 16;
  }

  else
  {
    v6 = *(a2 + 2);
  }

  v7 = *(a2 + 3);
  if (v5 >= 0)
  {
    v8 = *(a2 + 39);
  }

  else
  {
    v8 = *(a2 + 3);
  }

  if (swift::Demangle::__runtime::isStruct(v6, v8))
  {
    v9 = 15;
  }

  else
  {
    v10 = *(a2 + 39);
    if (v10 >= 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = *(a2 + 2);
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 39);
    }

    else
    {
      v12 = *(a2 + 3);
    }

    if (swift::Demangle::__runtime::isEnum(v11, v12))
    {
      v9 = 14;
    }

    else
    {
      v13 = *(a2 + 39);
      if (v13 >= 0)
      {
        v14 = v4;
      }

      else
      {
        v14 = *(a2 + 2);
      }

      if (v13 >= 0)
      {
        v15 = *(a2 + 39);
      }

      else
      {
        v15 = *(a2 + 3);
      }

      if (swift::Demangle::__runtime::isClass(v14, v15))
      {
        v9 = 13;
      }

      else
      {
        v9 = 17;
      }
    }
  }

  v16 = *this;
  v17 = *(a2 + 39);
  if (v17 >= 0)
  {
    v18 = v4;
  }

  else
  {
    v18 = *(a2 + 2);
  }

  if (v17 >= 0)
  {
    v19 = *(a2 + 39);
  }

  else
  {
    v19 = *(a2 + 3);
  }

  v56 = 0;
  v20 = swift::Demangle::__runtime::Demangler::demangleType(v16, v18, v19, v55);
  if (v56 == v55)
  {
    (*(*v56 + 32))(v56);
  }

  else if (v56)
  {
    (*(*v56 + 40))();
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 246);
  v22 = *(a2 + 6);
  v23 = *(a2 + 7);
  while (v22 != v23)
  {
    v30 = *v22;
    v31 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
    if (v31)
    {
      v24 = v31;
      v25 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v25, v24, *this, v26, v27);
    }

    else
    {
      v25 = 0;
    }

    swift::Demangle::__runtime::Node::addChild(Node, v25, *this, v28, v29);
    ++v22;
  }

  v32 = swift::Demangle::__runtime::NodeFactory::createNode(*this, v9);
  swift::Demangle::__runtime::Node::addChild(v32, v20, *this, v33, v34);
  swift::Demangle::__runtime::Node::addChild(v32, Node, *this, v35, v36);
  if (!*(a2 + 5))
  {
    return v32;
  }

  v37 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
  if (!v37)
  {
    return v32;
  }

  v38 = v37;
  v39 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
  swift::Demangle::__runtime::Node::addChild(v39, v38, *this, v40, v41);
  if (!v39)
  {
    return v32;
  }

  v42 = *(v39 + 18);
  if ((v42 - 1) >= 2 && (v42 != 5 || !*(v39 + 8)))
  {
    return v32;
  }

  if (*(v39 + 16) != 243)
  {
    return v32;
  }

  v43 = *(v20 + 18);
  v44 = v43 - 1;
  if ((v43 - 1) >= 2 && (v43 != 5 || !*(v20 + 8)))
  {
    return v32;
  }

  if ((v42 - 1) < 2)
  {
LABEL_56:
    v45 = *v39;
    if (v44 < 2)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  if (v42 == 5 && *(v39 + 8))
  {
    v39 = *v39;
    goto LABEL_56;
  }

  v45 = 0;
  if (v44 < 2)
  {
    goto LABEL_62;
  }

LABEL_59:
  if (v43 != 5 || !*(v20 + 8))
  {
    v46 = 0;
    goto LABEL_64;
  }

  v20 = *v20;
LABEL_62:
  v46 = *v20;
LABEL_64:
  v47 = *(v46 + 18);
  v48 = v46;
  if (v47 == 2)
  {
LABEL_68:
    v49 = *(v48 + 8);
    swift::Demangle::__runtime::Node::removeChildAt(v46, 1u);
    swift::Demangle::__runtime::Node::removeChildAt(v46, 0);
    swift::Demangle::__runtime::Node::addChild(v46, v45, *this, v50, v51);
    swift::Demangle::__runtime::Node::addChild(v46, v49, *this, v52, v53);
    return v32;
  }

  if (v47 == 5 && *(v46 + 8) == 2)
  {
    v48 = *v46;
    goto LABEL_68;
  }

  return v32;
}

unsigned int *DemanglingForTypeRef::visitTupleTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::TupleTypeRef *a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 234);
  v4 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 0;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  while (v8 != v7 && v6 != 0)
  {
    v10 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 235);
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *v6, *(v6 + 1));
    }

    else
    {
      v11 = *v6;
      v37.__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&v37.__r_.__value_.__l.__data_ = v11;
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v13 = *this;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v37;
      }

      else
      {
        v14 = v37.__r_.__value_.__r.__words[0];
      }

      v15 = *(v13 + 1);
      v16 = &v15[size];
      if (v15)
      {
        v17 = v16 > *(v13 + 2);
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 2 * *(v13 + 4);
        if (v18 <= size + 1)
        {
          v18 = size + 1;
        }

        *(v13 + 4) = v18;
        v19 = v18 + 8;
        v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        v21 = v20 + v19;
        *v20 = *(v13 + 3);
        v15 = (v20 + 1);
        *(v13 + 2) = v21;
        *(v13 + 3) = v20;
        v16 = v20 + size + 8;
      }

      *(v13 + 1) = v16;
      memmove(v15, v14, size);
      NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v13, 236, v15, size);
      swift::Demangle::__runtime::Node::addChild(v10, NodeWithAllocatedText, *this, v23, v24);
    }

    v25 = *v8;
    v26 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
    if (v26)
    {
      v29 = v26;
      v30 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v30, v29, *this, v31, v32);
    }

    else
    {
      v30 = 0;
    }

    swift::Demangle::__runtime::Node::addChild(v10, v30, *this, v27, v28);
    swift::Demangle::__runtime::Node::addChild(Node, v10, *this, v33, v34);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v6 = (v6 + 24);
    ++v8;
  }

  return Node;
}

unsigned int *DemanglingForTypeRef::visitFunctionTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::FunctionTypeRef *a2)
{
  v4 = *(a2 + 6);
  if (BYTE2(v4) == 3)
  {
    v5 = 23;
  }

  else
  {
    v5 = 0;
  }

  if (BYTE2(v4) == 2)
  {
    v6 = 233;
  }

  else
  {
    v6 = v5;
  }

  if ((v4 & 0x4000000) != 0)
  {
    v7 = 84;
  }

  else
  {
    v7 = 67;
  }

  if (BYTE2(v4) == 1)
  {
    v8 = 175;
  }

  else
  {
    v8 = 0;
  }

  if (BYTE2(v4))
  {
    v7 = v8;
  }

  if (BYTE2(v4) <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v119;
  v117 = v119;
  v118 = 0x800000000;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  if (v11 == v12)
  {
LABEL_42:
    Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 234);
    if (v118)
    {
      v39 = v117;
      v40 = (v117 + 16 * v118);
      do
      {
        v45 = *v39;
        v46 = *(v39 + 8);
        v49 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 235);
        if (v46 == 1)
        {
          v50 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 289);
          swift::Demangle::__runtime::Node::addChild(v49, v50, *this, v51, v52);
        }

        v53 = *this;
        if (*(v45 + 8) == 243)
        {
          v41 = v49;
          v42 = v45;
        }

        else
        {
          v54 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
          swift::Demangle::__runtime::Node::addChild(v54, v45, *this, v55, v56);
          v53 = *this;
          v41 = v49;
          v42 = v54;
        }

        swift::Demangle::__runtime::Node::addChild(v41, v42, v53, v47, v48);
        swift::Demangle::__runtime::Node::addChild(Node, v49, *this, v43, v44);
        v39 += 2;
      }

      while (v39 != v40);
    }

    goto LABEL_50;
  }

  do
  {
    v13 = *(v11 + 24);
    v14 = *(v11 + 16);
    v15 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
    if (v15)
    {
      v16 = v15;
      v17 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v17, v16, *this, v18, v19);
      if ((v13 & 0x200) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      v20 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 340);
      swift::Demangle::__runtime::Node::addChild(v20, v17, *this, v21, v22);
      v17 = v20;
      goto LABEL_22;
    }

    v17 = 0;
    if ((v13 & 0x200) != 0)
    {
      goto LABEL_21;
    }

LABEL_22:
    v23 = (v13 & 0x7F) - 1;
    if (v23 <= 2)
    {
      v30 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 0xDC00DB0080uLL >> (16 * (v23 & 0xF)));
      swift::Demangle::__runtime::Node::addChild(v30, v17, *this, v31, v32);
      v17 = v30;
      if ((v13 & 0x400) == 0)
      {
LABEL_24:
        if ((v13 & 0x800) == 0)
        {
          goto LABEL_26;
        }

LABEL_25:
        v24 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 134);
        swift::Demangle::__runtime::Node::addChild(v24, v17, *this, v25, v26);
        v17 = v24;
        goto LABEL_26;
      }
    }

    else if ((v13 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    v33 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 132);
    swift::Demangle::__runtime::Node::addChild(v33, v17, *this, v34, v35);
    v17 = v33;
    if ((v13 & 0x800) != 0)
    {
      goto LABEL_25;
    }

LABEL_26:
    v27 = v118;
    if (v118 >= HIDWORD(v118))
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v118 + 1, 16);
      v27 = v118;
    }

    v10 = v10 & 0xFFFFFFFFFFFFFF00 | (v13 >> 7) & 1;
    v28 = (v117 + 16 * v27);
    *v28 = v17;
    v28[1] = v10;
    v29 = v118;
    LODWORD(v118) = v118 + 1;
    v11 += 32;
  }

  while (v11 != v12);
  if (v29 || (*(v117 + 8) & 1) != 0)
  {
    goto LABEL_42;
  }

  Node = *v117;
  v37 = *(*v117 + 16);
  if (v37 == 243)
  {
    v38 = *v117;
    if (*(Node + 18) - 1 >= 2)
    {
      v38 = *Node;
    }

    v37 = *(*v38 + 16);
  }

  if (v37 == 234)
  {
    goto LABEL_42;
  }

LABEL_50:
  v57 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 3);
  v58 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
  swift::Demangle::__runtime::Node::addChild(v58, Node, *this, v59, v60);
  swift::Demangle::__runtime::Node::addChild(v57, v58, *this, v61, v62);
  v63 = *(a2 + 5);
  v64 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
  if (v64)
  {
    v65 = v64;
    v66 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
    swift::Demangle::__runtime::Node::addChild(v66, v65, *this, v67, v68);
  }

  else
  {
    v66 = 0;
  }

  v69 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 218);
  swift::Demangle::__runtime::Node::addChild(v69, v66, *this, v70, v71);
  v74 = swift::Demangle::__runtime::NodeFactory::createNode(*this, v9);
  if ((*(a2 + 56) & 0x10) != 0)
  {
    v75 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 137);
    swift::Demangle::__runtime::Node::addChild(v74, v75, *this, v76, v77);
  }

  if (!*(a2 + 9))
  {
    if ((*(a2 + 14) & 0xE) == 4)
    {
      v86 = *this;
      v87 = 136;
    }

    else
    {
      if ((*(a2 + 14) & 0xE) != 2)
      {
        goto LABEL_66;
      }

      v86 = *this;
      v87 = 135;
    }

    v78 = swift::Demangle::__runtime::NodeFactory::createNode(v86, v87);
    goto LABEL_65;
  }

  v78 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 69);
  v79 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
  if (v79)
  {
    v82 = v79;
    v83 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
    swift::Demangle::__runtime::Node::addChild(v83, v82, *this, v84, v85);
  }

  else
  {
    v83 = 0;
  }

  swift::Demangle::__runtime::Node::addChild(v78, v83, *this, v80, v81);
LABEL_65:
  swift::Demangle::__runtime::Node::addChild(v74, v78, *this, v88, v89);
LABEL_66:
  v90 = *(a2 + 6);
  if ((v90 & 0x8000000) != 0)
  {
    v98 = *(a2 + 8) - 1;
    if (v98 > 3)
    {
      v99 = 0;
    }

    else
    {
      v99 = qword_DAB00[v98];
    }

    v100 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 70, v99);
    swift::Demangle::__runtime::Node::addChild(v74, v100, *this, v101, v102);
    if ((*(a2 + 6) & 0x1000000) != 0)
    {
      goto LABEL_78;
    }

LABEL_68:
    v91 = *(a2 + 6);
    if ((v91 & 0x40000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_85:
    v114 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 68);
    swift::Demangle::__runtime::Node::addChild(v74, v114, *this, v115, v116);
    if ((*(a2 + 6) & 0x20000000) != 0)
    {
LABEL_70:
      v92 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 284);
      swift::Demangle::__runtime::Node::addChild(v74, v92, *this, v93, v94);
    }
  }

  else
  {
    if ((v90 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_78:
    v103 = *this;
    if (*(a2 + 10))
    {
      v104 = swift::Demangle::__runtime::NodeFactory::createNode(v103, 286);
      v105 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
      if (v105)
      {
        v108 = v105;
        v109 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
        swift::Demangle::__runtime::Node::addChild(v109, v108, *this, v110, v111);
      }

      else
      {
        v109 = 0;
      }

      swift::Demangle::__runtime::Node::addChild(v104, v109, *this, v106, v107);
    }

    else
    {
      v104 = swift::Demangle::__runtime::NodeFactory::createNode(v103, 285);
    }

    swift::Demangle::__runtime::Node::addChild(v74, v104, *this, v112, v113);
    v91 = *(a2 + 6);
    if ((v91 & 0x40000000) != 0)
    {
      goto LABEL_85;
    }

LABEL_69:
    if ((v91 & 0x20000000) != 0)
    {
      goto LABEL_70;
    }
  }

  swift::Demangle::__runtime::Node::addChild(v74, v57, *this, v72, v73);
  swift::Demangle::__runtime::Node::addChild(v74, v69, *this, v95, v96);
  if (v117 != v119)
  {
    free(v117);
  }

  return v74;
}

unsigned int *DemanglingForTypeRef::visitProtocolCompositionTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::ProtocolCompositionTypeRef *a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 246);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  while (v5 != v6)
  {
    v13 = *v5;
    v14 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
    if (v14)
    {
      v7 = v14;
      v8 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v8, v7, *this, v9, v10);
    }

    else
    {
      v8 = 0;
    }

    swift::Demangle::__runtime::Node::addChild(Node, v8, *this, v11, v12);
    ++v5;
  }

  v15 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 200);
  swift::Demangle::__runtime::Node::addChild(v15, Node, *this, v16, v17);
  if (*(a2 + 5))
  {
    v18 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 201);
    swift::Demangle::__runtime::Node::addChild(v18, v15, *this, v19, v20);
    v21 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
    if (v21)
    {
      v24 = v21;
      v25 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v25, v24, *this, v26, v27);
    }

    else
    {
      v25 = 0;
    }

    v29 = *this;
    v28 = v18;
    v30 = v25;
  }

  else
  {
    if (*(a2 + 48) != 1)
    {
      return v15;
    }

    v28 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 202);
    v18 = v28;
    v29 = *this;
    v30 = v15;
  }

  swift::Demangle::__runtime::Node::addChild(v28, v30, v29, v22, v23);
  return v18;
}

unsigned int *DemanglingForTypeRef::visitConstrainedExistentialTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::ConstrainedExistentialTypeRef *a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 85);
  v5 = *(a2 + 2);
  v6 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
  if (v6)
  {
    v9 = v6;
    v10 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
    swift::Demangle::__runtime::Node::addChild(v10, v9, *this, v11, v12);
  }

  else
  {
    v10 = 0;
  }

  swift::Demangle::__runtime::Node::addChild(Node, v10, *this, v7, v8);
  v15 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 86);
  v17 = *(a2 + 3);
  v16 = *(a2 + 4);
  while (v17 != v16)
  {
    v18 = *v17++;
    v23 = v18;
    v19 = DemanglingForTypeRef::visitTypeRefRequirement(this, &v23);
    swift::Demangle::__runtime::Node::addChild(v15, v19, *this, v20, v21);
  }

  swift::Demangle::__runtime::Node::addChild(Node, v15, *this, v13, v14);
  return Node;
}

unsigned int *DemanglingForTypeRef::visitDependentMemberTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::DependentMemberTypeRef *a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 46);
  v5 = *(a2 + 5);
  v6 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
  if (v6)
  {
    v9 = v6;
    v10 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
    swift::Demangle::__runtime::Node::addChild(v10, v9, *this, v11, v12);
  }

  else
  {
    v10 = 0;
  }

  swift::Demangle::__runtime::Node::addChild(Node, v10, *this, v7, v8);
  v13 = *this;
  v14 = *(a2 + 39);
  if (v14 >= 0)
  {
    v15 = a2 + 16;
  }

  else
  {
    v15 = *(a2 + 2);
  }

  v16 = *(a2 + 3);
  if (v14 >= 0)
  {
    v17 = *(a2 + 39);
  }

  else
  {
    v17 = *(a2 + 3);
  }

  if (v17)
  {
    v18 = *(v13 + 1);
    v19 = &v18[v17];
    if (v18)
    {
      v20 = v19 > *(v13 + 2);
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = 2 * *(v13 + 4);
      if (v21 <= v17 + 1)
      {
        v21 = v17 + 1;
      }

      *(v13 + 4) = v21;
      v22 = v21 + 8;
      v23 = malloc_type_malloc(v21 + 8, 0x2004093837F09uLL);
      v24 = v23 + v22;
      *v23 = *(v13 + 3);
      v18 = (v23 + 1);
      *(v13 + 2) = v24;
      *(v13 + 3) = v23;
      v19 = v23 + v17 + 8;
    }

    *(v13 + 1) = v19;
    memmove(v18, v15, v17);
  }

  else
  {
    v18 = 0;
  }

  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v13, 103, v18, v17);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v44 = *(a2 + 2);
  }

  size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v29 = *this;
  if (size)
  {
    v30 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 36);
    swift::Demangle::__runtime::Node::addChild(v30, NodeWithAllocatedText, *this, v31, v32);
    v33 = *this;
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v44;
    }

    else
    {
      v34 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = SHIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v44.__r_.__value_.__l.__size_;
    }

    v43 = 0;
    v38 = swift::Demangle::__runtime::Demangler::demangleType(v33, v34, v35, v42);
    if (v43 == v42)
    {
      (*(*v43 + 32))(v43);
    }

    else if (v43)
    {
      (*(*v43 + 40))();
    }

    swift::Demangle::__runtime::Node::addChild(v30, v38, *this, v36, v37);
    v29 = *this;
    v39 = Node;
    v40 = v30;
  }

  else
  {
    v39 = Node;
    v40 = NodeWithAllocatedText;
  }

  swift::Demangle::__runtime::Node::addChild(v39, v40, v29, v25, v26);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  return Node;
}

unsigned int *DemanglingForTypeRef::visitObjCClassTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::ObjCClassTypeRef *a2)
{
  v4 = *this;
  v5 = *(*this + 1);
  v6 = (v5 + 3);
  if (v5)
  {
    v7 = v6 > *(*this + 2);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 2 * *(v4 + 4);
    if (v8 <= 4)
    {
      v8 = 4;
    }

    *(v4 + 4) = v8;
    v9 = v8 + 8;
    v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
    v5 = (v10 + 1);
    *v10 = *(v4 + 3);
    v6 = v10 + 11;
    *(v4 + 2) = v10 + v9;
    *(v4 + 3) = v10;
  }

  *(v4 + 1) = v6;
  *(v5 + 2) = 67;
  *v5 = 24415;
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v4, 163, v5, 3);
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 25);
  swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *this, v13, v14);
  v15 = *this;
  v18 = *(a2 + 2);
  v17 = (a2 + 16);
  v16 = v18;
  v19 = *(v17 + 23);
  if (v19 >= 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  v21 = v17[1];
  if (v19 >= 0)
  {
    v22 = *(v17 + 23);
  }

  else
  {
    v22 = v17[1];
  }

  if (v22)
  {
    v23 = *(v15 + 1);
    v24 = &v23[v22];
    if (v23)
    {
      v25 = v24 > *(v15 + 2);
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v26 = 2 * *(v15 + 4);
      if (v26 <= v22 + 1)
      {
        v26 = v22 + 1;
      }

      *(v15 + 4) = v26;
      v27 = v26 + 8;
      v28 = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
      v29 = v28 + v27;
      *v28 = *(v15 + 3);
      v23 = (v28 + 1);
      *(v15 + 2) = v29;
      *(v15 + 3) = v28;
      v24 = v28 + v22 + 8;
    }

    *(v15 + 1) = v24;
    memmove(v23, v20, v22);
  }

  else
  {
    v23 = 0;
  }

  v30 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v15, 103, v23, v22);
  swift::Demangle::__runtime::Node::addChild(Node, v30, *this, v31, v32);
  return Node;
}

unsigned int *DemanglingForTypeRef::visitObjCProtocolTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::ObjCProtocolTypeRef *a2)
{
  v4 = *this;
  v5 = *(*this + 1);
  v6 = (v5 + 3);
  if (v5)
  {
    v7 = v6 > *(*this + 2);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 2 * *(v4 + 4);
    if (v8 <= 4)
    {
      v8 = 4;
    }

    *(v4 + 4) = v8;
    v9 = v8 + 8;
    v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
    v5 = (v10 + 1);
    *v10 = *(v4 + 3);
    v6 = v10 + 11;
    *(v4 + 2) = v10 + v9;
    *(v4 + 3) = v10;
  }

  *(v4 + 1) = v6;
  *(v5 + 2) = 67;
  *v5 = 24415;
  NodeWithAllocatedText = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v4, 163, v5, 3);
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 190);
  swift::Demangle::__runtime::Node::addChild(Node, NodeWithAllocatedText, *this, v13, v14);
  v15 = *this;
  v18 = *(a2 + 2);
  v17 = (a2 + 16);
  v16 = v18;
  v19 = *(v17 + 23);
  if (v19 >= 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  v21 = v17[1];
  if (v19 >= 0)
  {
    v22 = *(v17 + 23);
  }

  else
  {
    v22 = v17[1];
  }

  if (v22)
  {
    v23 = *(v15 + 1);
    v24 = &v23[v22];
    if (v23)
    {
      v25 = v24 > *(v15 + 2);
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v26 = 2 * *(v15 + 4);
      if (v26 <= v22 + 1)
      {
        v26 = v22 + 1;
      }

      *(v15 + 4) = v26;
      v27 = v26 + 8;
      v28 = malloc_type_malloc(v26 + 8, 0x2004093837F09uLL);
      v29 = v28 + v27;
      *v28 = *(v15 + 3);
      v23 = (v28 + 1);
      *(v15 + 2) = v29;
      *(v15 + 3) = v28;
      v24 = v28 + v22 + 8;
    }

    *(v15 + 1) = v24;
    memmove(v23, v20, v22);
  }

  else
  {
    v23 = 0;
  }

  v30 = swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(v15, 103, v23, v22);
  swift::Demangle::__runtime::Node::addChild(Node, v30, *this, v31, v32);
  return Node;
}

unsigned int *DemanglingForTypeRef::visitOpaqueArchetypeTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::OpaqueArchetypeTypeRef *a2)
{
  v4 = *this;
  v5 = a2 + 16;
  v6 = *(a2 + 39);
  if (v6 >= 0)
  {
    v7 = a2 + 16;
  }

  else
  {
    v7 = *(a2 + 2);
  }

  v8 = *(v5 + 1);
  if (v6 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  v37 = 0;
  v10 = swift::Demangle::__runtime::Demangler::demangleType(v4, v7, v9, v36);
  if (v37 == v36)
  {
    (*(*v37 + 32))(v37);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v37)
    {
      (*(*v37 + 40))();
    }

    if (!v10)
    {
      return 0;
    }
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 104, *(a2 + 16));
  v11 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 246);
  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  if (v12 == v13)
  {
LABEL_20:
    v28 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 314);
    swift::Demangle::__runtime::Node::addChild(v28, v10, *this, v29, v30);
    swift::Demangle::__runtime::Node::addChild(v28, Node, *this, v31, v32);
    swift::Demangle::__runtime::Node::addChild(v28, v11, *this, v33, v34);
    return v28;
  }

  else
  {
    while (1)
    {
      v15 = *v12;
      v14 = *(v12 + 8);
      v18 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 246);
      if (v14)
      {
        break;
      }

LABEL_19:
      swift::Demangle::__runtime::Node::addChild(v11, v18, *this, v16, v17);
      v12 += 16;
      if (v12 == v13)
      {
        goto LABEL_20;
      }
    }

    v19 = 8 * v14;
    while (1)
    {
      v20 = *v15;
      result = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
      if (!result)
      {
        break;
      }

      v22 = result;
      v23 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v23, v22, *this, v24, v25);
      if (!v23)
      {
        return 0;
      }

      swift::Demangle::__runtime::Node::addChild(v18, v23, *this, v26, v27);
      ++v15;
      v19 -= 8;
      if (!v19)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned int *DemanglingForTypeRef::visitSILBoxTypeWithLayoutTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::SILBoxTypeWithLayoutTypeRef *a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 222);
  v7 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 223);
  v8 = *(a2 + 2);
  for (i = *(a2 + 3); v8 != i; ++v8)
  {
    if ((*v8 & 4) != 0)
    {
      v18 = 224;
    }

    else
    {
      v18 = 225;
    }

    v19 = swift::Demangle::__runtime::NodeFactory::createNode(*this, v18);
    v20 = *v8;
    v21 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
    if (v21)
    {
      v10 = v21;
      v11 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v11, v10, *this, v12, v13);
    }

    else
    {
      v11 = 0;
    }

    swift::Demangle::__runtime::Node::addChild(v19, v11, *this, v14, v15);
    swift::Demangle::__runtime::Node::addChild(v7, v19, *this, v16, v17);
  }

  swift::Demangle::__runtime::Node::addChild(Node, v7, *this, v5, v6);
  v24 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 44);
  v25 = *(a2 + 5);
  v26 = *(a2 + 6);
  if (v25 != v26)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *v25;
      if (*(*v25 + 8) == 9 && v29 != 0)
      {
        if (*(v29 + 12) > v27)
        {
          v31 = *this;
          for (j = v28; ; j = 0)
          {
            v33 = swift::Demangle::__runtime::NodeFactory::createNode(v31, 38, j);
            swift::Demangle::__runtime::Node::addChild(v24, v33, *this, v34, v35);
            if (*(v29 + 12) <= ++v27)
            {
              break;
            }

            v31 = *this;
          }

          v28 = 0;
        }

        ++v28;
      }

      v25 += 2;
    }

    while (v25 != v26);
  }

  v36 = *(a2 + 8);
  v37 = *(a2 + 9);
  while (v36 != v37)
  {
    v38 = DemanglingForTypeRef::visitTypeRefRequirement(this, v36);
    if (v38)
    {
      swift::Demangle::__runtime::Node::addChild(v24, v38, *this, v22, v23);
    }

    v36 += 2;
  }

  swift::Demangle::__runtime::Node::addChild(Node, v24, *this, v22, v23);
  v41 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 246);
  v42 = *(a2 + 5);
  v43 = *(a2 + 6);
  while (v42 != v43)
  {
    v50 = *(v42 + 8);
    v51 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
    if (v51)
    {
      v44 = v51;
      v45 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v45, v44, *this, v46, v47);
    }

    else
    {
      v45 = 0;
    }

    swift::Demangle::__runtime::Node::addChild(v41, v45, *this, v48, v49);
    v42 += 16;
  }

  swift::Demangle::__runtime::Node::addChild(Node, v41, *this, v39, v40);
  return Node;
}

unsigned int *DemanglingForTypeRef::visitPackTypeRef(swift::Demangle::__runtime::NodeFactory **this, const swift::reflection::PackTypeRef *a2)
{
  Node = swift::Demangle::__runtime::NodeFactory::createNode(*this, 237);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  while (v5 != v6)
  {
    v13 = *v5;
    v14 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(this);
    if (v14)
    {
      v7 = v14;
      v8 = swift::Demangle::__runtime::NodeFactory::createNode(*this, 243);
      swift::Demangle::__runtime::Node::addChild(v8, v7, *this, v9, v10);
    }

    else
    {
      v8 = 0;
    }

    swift::Demangle::__runtime::Node::addChild(Node, v8, *this, v11, v12);
    ++v5;
  }

  return Node;
}

unsigned int *DemanglingForTypeRef::visitTypeRefRequirement(swift::Demangle::__runtime::NodeFactory **a1, uint64_t *a2)
{
  if ((*a2 & 7) == 2)
  {
    v4 = *a1;
    v5 = 40;
  }

  else
  {
    if ((*a2 & 7u) > 1)
    {
      return 0;
    }

    v4 = *a1;
    v5 = 37;
  }

  Node = swift::Demangle::__runtime::NodeFactory::createNode(v4, v5);
  v7 = *a2;
  v8 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(a1);
  if (v8)
  {
    v11 = v8;
    v12 = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 243);
    swift::Demangle::__runtime::Node::addChild(v12, v11, *a1, v13, v14);
  }

  else
  {
    v12 = 0;
  }

  swift::Demangle::__runtime::Node::addChild(Node, v12, *a1, v9, v10);
  v15 = a2[1];
  v16 = swift::reflection::TypeRefVisitor<DemanglingForTypeRef,swift::Demangle::__runtime::Node *>::visit(a1);
  if (v16)
  {
    v19 = v16;
    v20 = swift::Demangle::__runtime::NodeFactory::createNode(*a1, 243);
    swift::Demangle::__runtime::Node::addChild(v20, v19, *a1, v21, v22);
  }

  else
  {
    v20 = 0;
  }

  swift::Demangle::__runtime::Node::addChild(Node, v20, *a1, v17, v18);
  return Node;
}

void PrintTypeRef::visitBuiltinTypeRef(PrintTypeRef *this, const swift::reflection::BuiltinTypeRef *a2)
{
  v24 = 7;
  strcpy(v23, "builtin");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v23, 7);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v13 = 0;
  v14 = 0x101010101010101;
  v15 = 1;
  v16 = 0x101010100000000;
  v17 = 1;
  v18 = 256;
  v19 = 1;
  v20 = 0;
  v21 = 0;
  v22[0] = off_E0BC8;
  v22[1] = swift::Demangle::__runtime::genericParameterName;
  v22[3] = v22;
  v9 = *(a2 + 2);
  v8 = (a2 + 16);
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 1);
  }

  swift::Demangle::__runtime::demangleTypeAsString(v11, v12, &v13, v6);
}

void PrintTypeRef::visitNominalTypeRef(PrintTypeRef *this, const swift::reflection::NominalTypeRef *a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 39);
  if (v5 >= 0)
  {
    v6 = (a2 + 16);
  }

  else
  {
    v6 = *(a2 + 2);
  }

  v7 = *(a2 + 3);
  if (v5 >= 0)
  {
    v8 = *(a2 + 39);
  }

  else
  {
    v8 = *(a2 + 3);
  }

  if (swift::Demangle::__runtime::isStruct(v6, v8))
  {
    v57 = 6;
    strcpy(v56, "struct");
    for (i = *(this + 2); i; --i)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
    }

    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v56, 6);
    if (v57 < 0)
    {
      v12 = *v56;
LABEL_34:
      operator delete(v12);
    }
  }

  else
  {
    v13 = *(a2 + 39);
    if (v13 >= 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = *(a2 + 2);
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 39);
    }

    else
    {
      v15 = *(a2 + 3);
    }

    if (swift::Demangle::__runtime::isEnum(v14, v15))
    {
      v55 = 4;
      strcpy(v54, "enum");
      for (j = *(this + 2); j; --j)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
      }

      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, v54, 4);
      if (v55 < 0)
      {
        v12 = *v54;
        goto LABEL_34;
      }
    }

    else
    {
      v18 = *(a2 + 39);
      if (v18 >= 0)
      {
        v19 = v4;
      }

      else
      {
        v19 = *(a2 + 2);
      }

      if (v18 >= 0)
      {
        v20 = *(a2 + 39);
      }

      else
      {
        v20 = *(a2 + 3);
      }

      if (swift::Demangle::__runtime::isClass(v19, v20))
      {
        v53 = 5;
        strcpy(v52, "class");
        for (k = *(this + 2); k; --k)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        }

        v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, v52, 5);
        if (v53 < 0)
        {
          v12 = *v52;
          goto LABEL_34;
        }
      }

      else
      {
        v23 = *(a2 + 39);
        if (v23 >= 0)
        {
          v24 = v4;
        }

        else
        {
          v24 = *(a2 + 2);
        }

        if (v23 >= 0)
        {
          v25 = *(a2 + 39);
        }

        else
        {
          v25 = *(a2 + 3);
        }

        if (swift::Demangle::__runtime::isProtocol(v24, v25))
        {
          v51 = 8;
          strcpy(v50, "protocol");
          for (m = *(this + 2); m; --m)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
          }

          v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, v50, 8);
          if (v51 < 0)
          {
            operator delete(v50[0]);
          }

          v6 = swift::Demangle::__runtime::dropSwiftManglingPrefix(v6, v8);
          v8 = v28;
        }

        else
        {
          v29 = *(a2 + 39);
          if (v29 >= 0)
          {
            v30 = v4;
          }

          else
          {
            v30 = *(a2 + 2);
          }

          if (v29 >= 0)
          {
            v31 = *(a2 + 39);
          }

          else
          {
            v31 = *(a2 + 3);
          }

          if (swift::Demangle::__runtime::isAlias(v30, v31))
          {
            v49 = 5;
            strcpy(v48, "alias");
            for (n = *(this + 2); n; --n)
            {
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
            }

            v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, v48, 5);
            if (v49 < 0)
            {
              v12 = *v48;
              goto LABEL_34;
            }
          }

          else
          {
            v47 = 7;
            strcpy(v46, "nominal");
            for (ii = *(this + 2); ii; --ii)
            {
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
            }

            v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, v46, 7);
            if (v47 < 0)
            {
              v12 = *v46;
              goto LABEL_34;
            }
          }
        }
      }
    }
  }

  v36 = 0;
  v37 = 0x101010101010101;
  v38 = 1;
  v39 = 0x101010100000000;
  v40 = 1;
  v41 = 256;
  v42 = 1;
  v43 = 0;
  v44 = 0;
  v45[0] = off_E0BC8;
  v45[1] = swift::Demangle::__runtime::genericParameterName;
  v45[3] = v45;
  swift::Demangle::__runtime::demangleTypeAsString(v6, v8, &v36, v11);
}

void PrintTypeRef::visitBoundGenericTypeRef(PrintTypeRef *this, const swift::reflection::BoundGenericTypeRef *a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  if (v5 >= 0)
  {
    v6 = a2 + 16;
  }

  else
  {
    v6 = *(a2 + 2);
  }

  v7 = *(a2 + 3);
  if (v5 >= 0)
  {
    v8 = *(a2 + 39);
  }

  else
  {
    v8 = *(a2 + 3);
  }

  if (swift::Demangle::__runtime::isStruct(v6, v8))
  {
    v42[23] = 20;
    strcpy(v42, "bound_generic_struct");
    for (i = *(this + 2); i; --i)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
    }

    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
    v11 = v42;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v42, 20);
    if (v42[23] < 0)
    {
LABEL_11:
      operator delete(*v11);
    }
  }

  else
  {
    v16 = *(a2 + 39);
    if (v16 >= 0)
    {
      v17 = v4;
    }

    else
    {
      v17 = *(a2 + 2);
    }

    if (v16 >= 0)
    {
      v18 = *(a2 + 39);
    }

    else
    {
      v18 = *(a2 + 3);
    }

    if (swift::Demangle::__runtime::isEnum(v17, v18))
    {
      v41[23] = 18;
      strcpy(v41, "bound_generic_enum");
      for (j = *(this + 2); j; --j)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
      }

      v20 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
      v11 = v41;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v20, v41, 18);
      if (v41[23] < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v21 = *(a2 + 39);
      if (v21 >= 0)
      {
        v22 = v4;
      }

      else
      {
        v22 = *(a2 + 2);
      }

      if (v21 >= 0)
      {
        v23 = *(a2 + 39);
      }

      else
      {
        v23 = *(a2 + 3);
      }

      if (swift::Demangle::__runtime::isClass(v22, v23))
      {
        v40[23] = 19;
        strcpy(v40, "bound_generic_class");
        for (k = *(this + 2); k; --k)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        }

        v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
        v11 = v40;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, v40, 19);
        if (v40[23] < 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v39 = 13;
        strcpy(v38, "bound_generic");
        for (m = *(this + 2); m; --m)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        }

        v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
        v11 = v38;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, v38, 13);
        if (v39 < 0)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v28 = 0;
  v29 = 0x101010101010101;
  v30 = 1;
  v31 = 0x101010100000000;
  v32 = 1;
  v33 = 256;
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v37[0] = off_E0BC8;
  v37[1] = swift::Demangle::__runtime::genericParameterName;
  v37[3] = v37;
  v13 = *(a2 + 39);
  if (v13 >= 0)
  {
    v14 = v4;
  }

  else
  {
    v14 = *(a2 + 2);
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 39);
  }

  else
  {
    v15 = *(a2 + 3);
  }

  swift::Demangle::__runtime::demangleTypeAsString(v14, v15, &v28, v12);
}

void *PrintTypeRef::visitTupleTypeRef(PrintTypeRef *this, const swift::reflection::TupleTypeRef *a2)
{
  v10 = 5;
  strcpy(__p, "tuple");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 5);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  if (v7 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitFunctionTypeRef(PrintTypeRef *this, const swift::reflection::FunctionTypeRef *a2)
{
  v115 = 8;
  strcpy(v114, "function");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v114, 8);
  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  v6 = *(a2 + 50);
  switch(v6)
  {
    case 3:
      v105 = 10;
      strcpy(v104, "convention");
      v103 = 1;
      LOWORD(v102) = 99;
      PrintMetadataSource::printField(this, v104, &v102);
      if (v103 < 0)
      {
        operator delete(v102);
        if ((v105 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v105 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v7 = v104;
      break;
    case 2:
      v109 = 10;
      strcpy(v108, "convention");
      v107 = 4;
      strcpy(v106, "thin");
      PrintMetadataSource::printField(this, v108, v106);
      if (v107 < 0)
      {
        operator delete(v106[0]);
        if ((v109 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v109 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v7 = v108;
      break;
    case 1:
      v113 = 10;
      strcpy(v112, "convention");
      v111 = 5;
      strcpy(v110, "block");
      PrintMetadataSource::printField(this, v112, v110);
      if (v111 < 0)
      {
        operator delete(v110[0]);
        if ((v113 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v113 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v7 = v112;
      break;
    default:
      goto LABEL_24;
  }

  operator delete(*v7);
LABEL_24:
  v8 = *(a2 + 8);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v93 = 14;
      strcpy(v92, "differentiable");
      v91 = 6;
      strcpy(v90, "normal");
      PrintMetadataSource::printField(this, v92, v90);
      if (v91 < 0)
      {
        operator delete(v90[0]);
        if ((v93 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }

      else if ((v93 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      v9 = v92;
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_50;
      }

      v89 = 14;
      strcpy(v88, "differentiable");
      v87 = 6;
      strcpy(v86, "linear");
      PrintMetadataSource::printField(this, v88, v86);
      if (v87 < 0)
      {
        operator delete(v86[0]);
        if ((v89 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }

      else if ((v89 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      v9 = v88;
    }
  }

  else if (v8 == 1)
  {
    v101 = 14;
    strcpy(v100, "differentiable");
    v99 = 7;
    strcpy(v98, "forward");
    PrintMetadataSource::printField(this, v100, v98);
    if (v99 < 0)
    {
      operator delete(v98[0]);
      if ((v101 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    else if ((v101 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v9 = v100;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_50;
    }

    v97 = 14;
    strcpy(v96, "differentiable");
    v95 = 7;
    strcpy(__p, "reverse");
    PrintMetadataSource::printField(this, v96, __p);
    if (v95 < 0)
    {
      operator delete(__p[0]);
      if ((v97 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    else if ((v97 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v9 = v96;
  }

  operator delete(*v9);
LABEL_50:
  v10 = *(a2 + 9);
  if (v10)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
    v11 = *(this + 2);
    v85 = 12;
    strcpy(v84, "global-actor");
    v12 = v11 + 2;
    *(this + 2) = v11 + 2;
    if (v11 != -2)
    {
      do
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        --v12;
      }

      while (v12);
    }

    v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
    if (v85 >= 0)
    {
      v14 = v84;
    }

    else
    {
      v14 = v84[0];
    }

    if (v85 >= 0)
    {
      v15 = v85;
    }

    else
    {
      v15 = v84[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, v14, v15);
    if (v85 < 0)
    {
      operator delete(v84[0]);
    }

    *(this + 2) += 2;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
    *(this + 2) += 2;
    swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v10);
    *(this + 2) -= 2;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  }

  if ((*(a2 + 14) & 0xE) == 2)
  {
    v83 = 8;
    strcpy(v82, "isolated");
    v81 = 3;
    LODWORD(v80) = 7958113;
    PrintMetadataSource::printField(this, v82, &v80);
    if ((v81 & 0x80000000) == 0)
    {
      if ((v83 & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

LABEL_70:
      operator delete(v82[0]);
      if ((*(a2 + 56) & 0x10) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_66;
    }

    operator delete(v80);
    if (v83 < 0)
    {
      goto LABEL_70;
    }
  }

LABEL_65:
  if ((*(a2 + 56) & 0x10) == 0)
  {
    goto LABEL_74;
  }

LABEL_66:
  v79 = 0;
  LOBYTE(v78) = 0;
  v77 = 14;
  strcpy(v76, "sending-result");
  PrintMetadataSource::printField(this, &v78, v76);
  if (v77 < 0)
  {
    operator delete(v76[0]);
    if ((v79 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }
  }

  else if ((v79 & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

  operator delete(v78);
LABEL_74:
  if ((*(a2 + 14) & 0xE) != 4)
  {
    goto LABEL_77;
  }

  v75 = 9;
  strcpy(v74, "execution");
  v73 = 6;
  strcpy(v72, "caller");
  PrintMetadataSource::printField(this, v74, v72);
  if (v73 < 0)
  {
    operator delete(v72[0]);
    if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }
  }

  else if ((v75 & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

  operator delete(v74[0]);
LABEL_77:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  v16 = *(this + 2);
  v71 = 10;
  strcpy(v70, "parameters");
  v17 = v16 + 2;
  *(this + 2) = v16 + 2;
  if (v16 != -2)
  {
    do
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
      --v17;
    }

    while (v17);
  }

  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  if (v71 >= 0)
  {
    v19 = v70;
  }

  else
  {
    v19 = v70[0];
  }

  if (v71 >= 0)
  {
    v20 = v71;
  }

  else
  {
    v20 = v70[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, v19, v20);
  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  v21 = *(a2 + 2);
  v22 = *(a2 + 3);
  if (v21 == v22)
  {
LABEL_160:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    goto LABEL_161;
  }

  do
  {
    v23 = *(v21 + 24);
    if (!v23)
    {
      goto LABEL_157;
    }

    *(this + 2) += 2;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
    v24 = v23 & 0x7F;
    switch(v24)
    {
      case 3:
        v65 = 5;
        strcpy(v64, "owned");
        for (j = *(this + 2); j; --j)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        }

        v43 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
        v27 = v64;
        if (v65 >= 0)
        {
          v44 = v64;
        }

        else
        {
          v44 = v64[0];
        }

        if (v65 >= 0)
        {
          v45 = v65;
        }

        else
        {
          v45 = v64[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, v44, v45);
        if (v65 < 0)
        {
LABEL_113:
          operator delete(*v27);
        }

        break;
      case 2:
        v67 = 6;
        strcpy(v66, "shared");
        for (k = *(this + 2); k; --k)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        }

        v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
        v27 = v66;
        if (v67 >= 0)
        {
          v32 = v66;
        }

        else
        {
          v32 = v66[0];
        }

        if (v67 >= 0)
        {
          v33 = v67;
        }

        else
        {
          v33 = v66[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, v32, v33);
        if (v67 < 0)
        {
          goto LABEL_113;
        }

        break;
      case 1:
        v69 = 5;
        strcpy(v68, "inout");
        for (m = *(this + 2); m; --m)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        }

        v26 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
        v27 = v68;
        v28 = v69 >= 0 ? v68 : v68[0];
        v29 = v69 >= 0 ? v69 : v68[1];
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, v28, v29);
        if (v69 < 0)
        {
          goto LABEL_113;
        }

        break;
    }

    if ((v23 & 0x400) == 0)
    {
      goto LABEL_124;
    }

    v63 = 8;
    strcpy(v62, "isolated");
    for (n = *(this + 2); n; --n)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
    }

    v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
    v36 = v63 >= 0 ? v62 : v62[0];
    v37 = v63 >= 0 ? v63 : v62[1];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, v36, v37);
    if (v63 < 0)
    {
      operator delete(v62[0]);
      if ((v23 & 0x80) != 0)
      {
LABEL_125:
        v61 = 8;
        strcpy(v60, "variadic");
        for (ii = *(this + 2); ii; --ii)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
        }

        v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
        if (v61 >= 0)
        {
          v40 = v60;
        }

        else
        {
          v40 = v60[0];
        }

        if (v61 >= 0)
        {
          v41 = v61;
        }

        else
        {
          v41 = v60[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, v40, v41);
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }
      }
    }

    else
    {
LABEL_124:
      if ((v23 & 0x80) != 0)
      {
        goto LABEL_125;
      }
    }

    if ((v23 & 0x800) != 0)
    {
      v59 = 7;
      strcpy(v58, "sending");
      for (jj = *(this + 2); jj; --jj)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
      }

      v47 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
      if (v59 >= 0)
      {
        v48 = v58;
      }

      else
      {
        v48 = v58[0];
      }

      if (v59 >= 0)
      {
        v49 = v59;
      }

      else
      {
        v49 = v58[1];
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v47, v48, v49);
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }

LABEL_157:
    v50 = *(v21 + 16);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
    *(this + 2) += 2;
    swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v50);
    v51 = *(this + 2);
    *(this + 2) = v51 - 2;
    if (v23)
    {
      *(this + 2) = v51 - 4;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

    v21 += 32;
  }

  while (v21 != v22);
  if (*(a2 + 2) == *(a2 + 3))
  {
    goto LABEL_160;
  }

LABEL_161:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  v57 = 6;
  strcpy(v56, "result");
  for (kk = *(this + 2); kk; --kk)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v53 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, v56, 6);
  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  v54 = *(a2 + 5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  *(this + 2) += 2;
  swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v54);
  *(this + 2) -= 2;
  result = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  *(this + 2) -= 2;
  return result;
}

void *PrintTypeRef::visitProtocolCompositionTypeRef(PrintTypeRef *this, const swift::reflection::ProtocolCompositionTypeRef *a2)
{
  v12 = 20;
  strcpy(__p, "protocol_composition");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 20);
  if (v12 < 0)
  {
    operator delete(*__p);
  }

  if (*(a2 + 48) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " any_object", 11);
  }

  v6 = *(a2 + 5);
  if (v6)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
    *(this + 2) += 2;
    swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v6);
    *(this + 2) -= 2;
  }

  v7 = *(a2 + 2);
  for (j = *(a2 + 3); v7 != j; *(this + 2) -= 2)
  {
    v9 = *v7++;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
    *(this + 2) += 2;
    swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v9);
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitMetatypeTypeRef(PrintTypeRef *this, const swift::reflection::MetatypeTypeRef *a2)
{
  v13 = 8;
  strcpy(__p, "metatype");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, __p, 8);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 24) == 1)
  {
    v11 = 0;
    LOBYTE(v10) = 0;
    v9 = 12;
    strcpy(v8, "was_abstract");
    PrintMetadataSource::printField(this, &v10, v8);
    if (v9 < 0)
    {
      operator delete(v8[0]);
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(v10);
  }

LABEL_8:
  v6 = *(a2 + 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  *(this + 2) += 2;
  swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v6);
  *(this + 2) -= 2;
  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitGenericTypeParameterTypeRef(PrintTypeRef *this, const swift::reflection::GenericTypeParameterTypeRef *a2)
{
  strcpy(v13, "generic_type_parameter");
  HIBYTE(v13[2]) = 22;
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v13, 22);
  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  v12 = 5;
  strcpy(__p, "depth");
  std::to_string(&v10, *(a2 + 3));
  PrintMetadataSource::printField(this, __p, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(__p[0]);
LABEL_7:
  v9 = 5;
  strcpy(v8, "index");
  std::to_string(&v7, *(a2 + 4));
  PrintMetadataSource::printField(this, v8, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

LABEL_13:
    operator delete(v8[0]);
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  }

  if (v9 < 0)
  {
    goto LABEL_13;
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}

void *PrintTypeRef::visitDependentMemberTypeRef(PrintTypeRef *this, const swift::reflection::DependentMemberTypeRef *a2)
{
  HIBYTE(v14[2]) = 16;
  strcpy(v14, "dependent_member");
  for (i = *(this + 2); i; --i)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, " ", 1);
  }

  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "(", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v14, 16);
  if (SHIBYTE(v14[2]) < 0)
  {
    operator delete(v14[0]);
  }

  v13 = 8;
  strcpy(__p, "protocol");
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v11 = *(a2 + 2);
  }

  PrintMetadataSource::printField(this, __p, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(__p[0]);
LABEL_10:
  v6 = *(a2 + 5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "\n", 1);
  *(this + 2) += 2;
  swift::reflection::TypeRefVisitor<PrintTypeRef,void>::visit(this, v6);
  *(this + 2) -= 2;
  v10 = 6;
  strcpy(v9, "member");
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v8 = *(a2 + 16);
  }

  PrintMetadataSource::printField(this, v9, &v8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
    }

LABEL_19:
    operator delete(v9[0]);
    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
  }

  if (v10 < 0)
  {
    goto LABEL_19;
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, ")", 1);
}