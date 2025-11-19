void sub_29A9D74D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A9CFCA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9D74EC(char **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v14 = 0;
    v15 = 0;
    sub_29A9D04C0(&v14, *a2);
    v6 = *a1;
    v7 = **a1;
    *v6 = v14;
    LOBYTE(v14) = v7;
    v8 = *(v6 + 1);
    *(v6 + 1) = v15;
    v15 = v8;
    sub_29A9D05CC(&v14);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      sub_29A9D75D4(*(v4 + 8), a2);
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      sub_29A9D04C0(&v12, *a2);
      v9 = a1[4];
      v10 = *v9;
      *v9 = v12;
      LOBYTE(v12) = v10;
      v11 = *(v9 + 1);
      *(v9 + 1) = v13;
      v13 = v11;
      sub_29A9D05CC(&v12);
      return a1[4];
    }
  }
}

uint64_t *sub_29A9D75D4(void *a1, unsigned __int8 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v14[4] = a1;
    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v7];
    v14[0] = v11;
    v14[1] = v12;
    v14[3] = &v11[16 * v10];
    *v12 = 0;
    v12[1] = 0;
    sub_29A9D04C0(v12, *a2);
    v14[2] = v12 + 2;
    sub_29A9CFBF8(a1, v14);
    v6 = a1[1];
    sub_29A9CFCA8(v14);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    sub_29A9D04C0(v5, *a2);
    v6 = v5 + 2;
    a1[1] = v5 + 2;
  }

  a1[1] = v6;
  return v6 - 2;
}

void sub_29A9D76CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A9CFCA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9D76E0(char **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v8 = *a1;
    v9 = **a1;
    *v8 = 0;
    LOBYTE(v22[0]) = v9;
    v10 = *(v8 + 1);
    *(v8 + 1) = 0;
    v22[1] = v10;
    sub_29A9D05CC(v22);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = v4[1];
      v6 = v4[2];
      if (v5 >= v6)
      {
        v15 = (v5 - *v4) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          sub_29A00C9A4();
        }

        v17 = v6 - *v4;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        v23[4] = v4;
        if (v18)
        {
          v19 = sub_29A017BD4(v4, v18);
        }

        else
        {
          v19 = 0;
        }

        v20 = &v19[16 * v15];
        v23[0] = v19;
        v23[1] = v20;
        v23[3] = &v19[16 * v18];
        *v20 = 0;
        *(v20 + 1) = 0;
        v23[2] = v20 + 16;
        sub_29A9CFBF8(v4, v23);
        v7 = v4[1];
        sub_29A9CFCA8(v23);
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v7 = v5 + 16;
        v4[1] = v5 + 16;
      }

      v4[1] = v7;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v12 = a1[4];
      v13 = *v12;
      *v12 = 0;
      LOBYTE(v21[0]) = v13;
      v14 = *(v12 + 1);
      *(v12 + 1) = 0;
      v21[1] = v14;
      sub_29A9D05CC(v21);
      return a1[4];
    }
  }
}

void sub_29A9D784C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A9CFCA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9D7860(char **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v14 = 0;
    v15 = 0;
    sub_29A9CFE7C(&v14, *a2);
    v6 = *a1;
    v7 = **a1;
    *v6 = v14;
    LOBYTE(v14) = v7;
    v8 = *(v6 + 1);
    *(v6 + 1) = v15;
    v15 = v8;
    sub_29A9D05CC(&v14);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      sub_29A9D7948(*(v4 + 8), a2);
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      sub_29A9CFE7C(&v12, *a2);
      v9 = a1[4];
      v10 = *v9;
      *v9 = v12;
      LOBYTE(v12) = v10;
      v11 = *(v9 + 1);
      *(v9 + 1) = v13;
      v13 = v11;
      sub_29A9D05CC(&v12);
      return a1[4];
    }
  }
}

uint64_t *sub_29A9D7948(void *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v14[4] = a1;
    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v7];
    v14[0] = v11;
    v14[1] = v12;
    v14[3] = &v11[16 * v10];
    *v12 = 0;
    v12[1] = 0;
    sub_29A9CFE7C(v12, *a2);
    v14[2] = v12 + 2;
    sub_29A9CFBF8(a1, v14);
    v6 = a1[1];
    sub_29A9CFCA8(v14);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    sub_29A9CFE7C(v5, *a2);
    v6 = v5 + 2;
    a1[1] = v5 + 2;
  }

  a1[1] = v6;
  return v6 - 2;
}

void sub_29A9D7A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A9CFCA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9D7A54(char **a1, uint64_t a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    sub_29A9D59A4(&v14, a2);
    v6 = *a1;
    v7 = **a1;
    *v6 = v14;
    LOBYTE(v14) = v7;
    v8 = *(v6 + 1);
    *(v6 + 1) = v15;
    v15 = v8;
    sub_29A9D05CC(&v14);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      sub_29A9D7B2C(*(v4 + 8), a2);
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      sub_29A9D59A4(&v12, a2);
      v9 = a1[4];
      v10 = *v9;
      *v9 = v12;
      LOBYTE(v12) = v10;
      v11 = *(v9 + 1);
      *(v9 + 1) = v13;
      v13 = v11;
      sub_29A9D05CC(&v12);
      return a1[4];
    }
  }
}

unint64_t sub_29A9D7B2C(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v17 = a1;
    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;
    v14 = &v11[16 * v7];
    v16 = &v11[16 * v10];
    sub_29A9D59A4(v14, a2);
    v15 = v14 + 16;
    sub_29A9CFBF8(a1, &v13);
    v6 = a1[1];
    sub_29A9CFCA8(&v13);
  }

  else
  {
    sub_29A9D59A4(a1[1], a2);
    v6 = v5 + 16;
    a1[1] = v5 + 16;
  }

  a1[1] = v6;
  return v6 - 16;
}

uint64_t sub_29A9D7C40(char **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v14 = 0;
    v15 = 0;
    sub_29A9CF460(&v14, *a2);
    v6 = *a1;
    v7 = **a1;
    *v6 = v14;
    LOBYTE(v14) = v7;
    v8 = *(v6 + 1);
    *(v6 + 1) = v15;
    v15 = v8;
    sub_29A9D05CC(&v14);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      sub_29A9D7D28(*(v4 + 8), a2);
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      sub_29A9CF460(&v12, *a2);
      v9 = a1[4];
      v10 = *v9;
      *v9 = v12;
      LOBYTE(v12) = v10;
      v11 = *(v9 + 1);
      *(v9 + 1) = v13;
      v13 = v11;
      sub_29A9D05CC(&v12);
      return a1[4];
    }
  }
}

uint64_t *sub_29A9D7D28(void *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v14[4] = a1;
    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v7];
    v14[0] = v11;
    v14[1] = v12;
    v14[3] = &v11[16 * v10];
    *v12 = 0;
    v12[1] = 0;
    sub_29A9CF460(v12, *a2);
    v14[2] = v12 + 2;
    sub_29A9CFBF8(a1, v14);
    v6 = a1[1];
    sub_29A9CFCA8(v14);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    sub_29A9CF460(v5, *a2);
    v6 = v5 + 2;
    a1[1] = v5 + 2;
  }

  a1[1] = v6;
  return v6 - 2;
}

void sub_29A9D7E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A9CFCA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9D7E34(uint64_t a1)
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

uint64_t sub_29A9D7EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v9 = v4 >= 0 ? a2 : *a2;
  v10 = v7 >= 0 ? a3 : *a3;
  if (memcmp(v9, v10, v5))
  {
    return 0;
  }

  return tinygltf::Value::operator==((a2 + 24), (a3 + 24));
}

BOOL sub_29A9D7F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v9 = v4 >= 0 ? a2 : *a2;
  v10 = v7 >= 0 ? a3 : *a3;
  if (memcmp(v9, v10, v5))
  {
    return 0;
  }

  return tinygltf::Parameter::operator==((a2 + 24), (a3 + 24));
}

BOOL sub_29A9D7FEC(uint64_t a1, const void **a2, const void **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = *(a3 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = a3[1];
  }

  if (v6 == v7)
  {
    if (v5 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    v11 = memcmp(v9, v10, v6) == 0;
  }

  else
  {
    v11 = 0;
  }

  return *(a2 + 6) == *(a3 + 6) && v11;
}

BOOL sub_29A9D807C(uint64_t a1, void *a2, const void ***a3)
{
  if (a2[2] != a3[2])
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v5 = (a2 + 1);
  v6 = *a2;
  if (*a2 == a2 + 1)
  {
    return 1;
  }

  v7 = *a3;
  do
  {
    result = sub_29A9D7FEC(&v14, v6 + 4, v7 + 4);
    if (!result)
    {
      break;
    }

    v9 = v6[1];
    v10 = v6;
    if (v9)
    {
      do
      {
        v6 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v6 = v10[2];
        v11 = *v6 == v10;
        v10 = v6;
      }

      while (!v11);
    }

    v12 = v7[1];
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
        v13 = v7[2];
        v11 = *v13 == v7;
        v7 = v13;
      }

      while (!v11);
    }

    v7 = v13;
  }

  while (v6 != v5);
  return result;
}

uint64_t sub_29A9D815C(uint64_t a1, uint64_t a2)
{
  sub_29A9D81E0(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29A9D81E0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_29A9D8264(uint64_t a1, uint64_t a2)
{
  sub_29A9D82E8(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29A9D82E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

unsigned __int8 **sub_29A9D836C(unsigned __int8 **result)
{
  v1 = *result;
  v2 = **result;
  if (**result)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[3] = 0;
    }
  }

  else
  {
    result[3] = 1;
  }

  return result;
}

void sub_29A9D83BC(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_29A008E78(v9, "invalid_iterator");
  sub_29A9CA894(a1, v9, &v11);
  sub_29A008E78(__p, "");
  sub_29A9CA790(&v11, __p, a2, &v12);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  sub_29A9CAA50(a3, a1, v6);
  *a3 = &unk_2A206D6B8;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_29A9D84B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A9D8514(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(v8, "cannot compare iterators of different containers");
    sub_29A9D83BC(212, v8, exception);
    __cxa_throw(exception, &unk_2A206D690, sub_29A9D58F8);
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[3];
    v5 = a2[3];
  }

  return v4 == v5;
}

void sub_29A9D85F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

BOOL sub_29A9D8630(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(v8, "cannot compare iterators of different containers");
    sub_29A9D57A0(212, v8, exception);
    __cxa_throw(exception, &unk_2A206D690, sub_29A9D58F8);
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *v2;
  if (v3 == 2)
  {
    v4 = a1[2];
    v5 = a2[2];
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    v5 = a2[1];
  }

  else
  {
    v4 = a1[3];
    v5 = a2[3];
  }

  return v4 == v5;
}

void sub_29A9D8714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

std::string *sub_29A9D874C@<X0>(const char *a1@<X0>, const char **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = strlen(*a2);
  std::string::reserve(a3, v7 + v6);
  std::string::append(a3, a1);
  return std::string::append(a3, *a2);
}

void sub_29A9D87B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29A9D87D4(uint64_t a1, __int128 *a2, __int128 *a3, char *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v10 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *a4;
      *a4 = v10;
      LOBYTE(v10) = v7;
      v8 = *(a4 + 1);
      *(a4 + 1) = *(&v10 + 1);
      *(&v10 + 1) = v8;
      sub_29A9D05CC(&v10);
      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

_BYTE *tinygltf::detail::GetValue(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(v6, "cannot get value");
    sub_29A9D57A0(214, v6, exception);
    __cxa_throw(exception, &unk_2A206D690, sub_29A9D58F8);
  }

  if (*(a1 + 24))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(v6, "cannot get value");
    sub_29A9D57A0(214, v6, v4);
    __cxa_throw(v4, &unk_2A206D690, sub_29A9D58F8);
  }

  return result;
}

void sub_29A9D8984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void (****sub_29A9D89BC(void (****result)(void), unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6))(void)
{
  v9 = result;
  v10 = *a2;
  if (v10 > 4)
  {
    if (*a2 <= 6u)
    {
      if (v10 == 5)
      {
        v19 = *(a2 + 1);

        return sub_29A9DA340(result, v19);
      }

      else if (v10 == 6)
      {
        v18 = *(a2 + 1);

        return sub_29A9DA1F0(result, v18);
      }

      return result;
    }

    if (v10 == 7)
    {
      v25 = *(a2 + 1);

      return sub_29A9DA528(result, v25);
    }

    if (v10 != 8)
    {
      if (v10 != 9)
      {
        return result;
      }

      v12 = (**result)[1];
      goto LABEL_61;
    }

    v26 = (**result)[1];
    if (!a3)
    {
      v26();
      v32 = *(*(a2 + 1) + 8);
      v33 = **(a2 + 1);
      if (v33 != v32)
      {
        while (v33 != v32 - 1)
        {
          v34 = *v33++;
          sub_29A9DA118(v9, v34);
          (***v9)(*v9, 44);
          v32 = *(*(a2 + 1) + 8);
        }

        sub_29A9DA118(v9, *(v32 - 1));
      }

      ((**v9)[1])(*v9, "],subtype:", 12);
      v42 = *(a2 + 1);
      if (*(v42 + 32) == 1)
      {
        sub_29A9DA1F0(v9, *(v42 + 24));
        v43 = ***v9;

        return v43();
      }

      v12 = (**v9)[1];
      goto LABEL_61;
    }

    v26();
    v27 = (a6 + a5);
    v28 = v9 + 76;
    v29 = *(v9 + 631);
    if ((v29 & 0x80000000) != 0)
    {
      v44 = v9[77];
      if (v44 >= v27)
      {
        v30 = *v9;
LABEL_66:
        v31 = *v28;
        goto LABEL_67;
      }
    }

    else
    {
      if (v27 <= v29)
      {
        v30 = *v9;
        v31 = v9 + 76;
LABEL_67:
        ((*v30)[1])(v30, v31, v27);
        ((**v9)[1])(*v9, "bytes: [", 10);
        v45 = *(*(a2 + 1) + 8);
        v46 = **(a2 + 1);
        if (v46 != v45)
        {
          for (; v46 != v45 - 1; v45 = *(*(a2 + 1) + 8))
          {
            v47 = *v46++;
            sub_29A9DA118(v9, v47);
            ((**v9)[1])(*v9, ", ", 2);
          }

          sub_29A9DA118(v9, *(v45 - 1));
        }

        ((**v9)[1])(*v9, "],\n", 3);
        v48 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v48 = *v28;
        }

        ((**v9)[1])(*v9, v48, v27);
        ((**v9)[1])(*v9, "subtype: ", 11);
        v49 = *(a2 + 1);
        if (*(v49 + 32) == 1)
        {
          sub_29A9DA1F0(v9, *(v49 + 24));
        }

        else
        {
          ((**v9)[1])(*v9, "null", 4);
        }

        (***v9)(*v9, 10);
        v50 = (**v9)[1];
        goto LABEL_100;
      }

      v44 = *(v9 + 631);
    }

    std::string::resize((v9 + 76), 2 * v44, 32);
    v30 = *v9;
    v31 = v9 + 76;
    if ((*(v9 + 631) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (*a2 <= 1u)
  {
    if (*a2)
    {
      v13 = **result;
      if (!*(*(a2 + 1) + 16))
      {
        v35 = v13[1];
        goto LABEL_46;
      }

      if (!a3)
      {
        (*v13)();
        v36 = *(a2 + 1);
        v37 = *v36;
        if (v36[2] == 1)
        {
          v38 = *v36;
        }

        else
        {
          v51 = 0;
          do
          {
            (***v9)(*v9, 34);
            sub_29A9D9B88(v9, v37 + 4, a4);
            ((**v9)[1])(*v9, ":", 2);
            sub_29A9D89BC(v9, v37 + 7, 0, a4, a5, a6);
            (***v9)();
            v52 = v37[1];
            if (v52)
            {
              do
              {
                v38 = v52;
                v52 = *v52;
              }

              while (v52);
            }

            else
            {
              do
              {
                v38 = v37[2];
                v53 = *v38 == v37;
                v37 = v38;
              }

              while (!v53);
            }

            ++v51;
            v37 = v38;
          }

          while (v51 < *(*(a2 + 1) + 16) - 1);
        }

        (***v9)(*v9, 34);
        sub_29A9D9B88(v9, v38 + 4, a4);
        ((**v9)[1])(*v9, ":", 2);
        sub_29A9D89BC(v9, v38 + 7, 0, a4, a5, a6);
        goto LABEL_101;
      }

      v13[1]();
      v14 = a6 + a5;
      v15 = v9 + 76;
      v16 = *(v9 + 631);
      if ((v16 & 0x80000000) != 0)
      {
        v17 = v9[77];
        if (v17 < v14)
        {
          goto LABEL_116;
        }
      }

      else if (v14 > v16)
      {
        v17 = *(v9 + 631);
LABEL_116:
        std::string::resize((v9 + 76), 2 * v17, 32);
      }

      v54 = *(a2 + 1);
      v55 = *v54;
      if (v54[2] == 1)
      {
        v56 = *v54;
      }

      else
      {
        v57 = 0;
        do
        {
          v58 = v9 + 76;
          if (*(v9 + 631) < 0)
          {
            v58 = *v15;
          }

          ((**v9)[1])(*v9, v58, (a6 + a5));
          (***v9)();
          sub_29A9D9B88(v9, v55 + 4, a4);
          ((**v9)[1])(*v9, ": ", 3);
          sub_29A9D89BC(v9, v55 + 7, 1, a4, a5, (a6 + a5));
          ((**v9)[1])(*v9, ",\n", 2);
          v59 = v55[1];
          if (v59)
          {
            do
            {
              v56 = v59;
              v59 = *v59;
            }

            while (v59);
          }

          else
          {
            do
            {
              v56 = v55[2];
              v53 = *v56 == v55;
              v55 = v56;
            }

            while (!v53);
          }

          ++v57;
          v55 = v56;
        }

        while (v57 < *(*(a2 + 1) + 16) - 1);
      }

      v60 = v9 + 76;
      if (*(v9 + 631) < 0)
      {
        v60 = *v15;
      }

      ((**v9)[1])(*v9, v60, (a6 + a5));
      (***v9)();
      sub_29A9D9B88(v9, v56 + 4, a4);
      ((**v9)[1])(*v9, ": ", 3);
      sub_29A9D89BC(v9, v56 + 7, 1, a4, a5, (a6 + a5));
      (***v9)();
      v50 = (**v9)[1];
LABEL_100:
      v50();
LABEL_101:
      v12 = ***v9;
      goto LABEL_113;
    }

    v12 = (**result)[1];
LABEL_61:

    return v12();
  }

  switch(v10)
  {
    case 2u:
      v20 = **result;
      if (**(a2 + 1) != *(*(a2 + 1) + 8))
      {
        if (!a3)
        {
          (*v20)();
          v39 = *(a2 + 1);
          for (i = *v39; ; i += 16)
          {
            v41 = v39[1];
            if (i == v41 - 16)
            {
              break;
            }

            sub_29A9D89BC(v9, i, 0, a4, a5, a6);
            (***v9)();
            v39 = *(a2 + 1);
          }

          sub_29A9D89BC(v9, v41 - 16, 0, a4, a5, a6);
LABEL_112:
          v12 = ***v9;
LABEL_113:

          return v12();
        }

        v20[1]();
        v21 = a6 + a5;
        v22 = v9 + 76;
        v23 = *(v9 + 631);
        if ((v23 & 0x80000000) != 0)
        {
          v24 = v9[77];
          if (v24 < v21)
          {
            goto LABEL_117;
          }
        }

        else if (v21 > v23)
        {
          v24 = *(v9 + 631);
LABEL_117:
          std::string::resize((v9 + 76), 2 * v24, 32);
        }

        v61 = *(a2 + 1);
        v62 = *v61;
        if (*v61 != v61[1] - 16)
        {
          do
          {
            v63 = v9 + 76;
            if (*(v9 + 631) < 0)
            {
              v63 = *v22;
            }

            ((**v9)[1])(*v9, v63, (a6 + a5));
            sub_29A9D89BC(v9, v62, 1, a4, a5, (a6 + a5));
            ((**v9)[1])(*v9, ",\n", 2);
            v62 += 16;
          }

          while (v62 != *(*(a2 + 1) + 8) - 16);
        }

        v64 = v9 + 76;
        if (*(v9 + 631) < 0)
        {
          v64 = *v22;
        }

        ((**v9)[1])(*v9, v64, (a6 + a5));
        sub_29A9D89BC(v9, *(*(a2 + 1) + 8) - 16, 1, a4, a5, (a6 + a5));
        (***v9)();
        if (*(v9 + 631) < 0)
        {
          v22 = *v22;
        }

        ((**v9)[1])(*v9, v22, a6);
        goto LABEL_112;
      }

      v35 = v20[1];
LABEL_46:

      return v35();
    case 3u:
      (***result)();
      sub_29A9D9B88(v9, *(a2 + 1), a4);
      v12 = ***v9;
      goto LABEL_113;
    case 4u:
      v12 = (**result)[1];
      goto LABEL_61;
  }

  return result;
}

void sub_29A9D99BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A206D720;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A9D9A40(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v7 = localeconv();
  *(a1 + 80) = v7;
  thousands_sep = v7->thousands_sep;
  if (thousands_sep)
  {
    LOBYTE(thousands_sep) = *thousands_sep;
  }

  *(a1 + 88) = thousands_sep;
  decimal_point = v7->decimal_point;
  if (v7->decimal_point)
  {
    LOBYTE(decimal_point) = *decimal_point;
  }

  *(a1 + 90) = 0u;
  *(a1 + 89) = decimal_point;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 186) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 218) = 0u;
  *(a1 + 234) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 266) = 0u;
  *(a1 + 282) = 0u;
  *(a1 + 298) = 0u;
  *(a1 + 314) = 0u;
  *(a1 + 330) = 0u;
  *(a1 + 346) = 0u;
  *(a1 + 362) = 0u;
  *(a1 + 378) = 0u;
  *(a1 + 394) = 0u;
  *(a1 + 410) = 0u;
  *(a1 + 426) = 0u;
  *(a1 + 442) = 0u;
  *(a1 + 458) = 0u;
  *(a1 + 474) = 0u;
  *(a1 + 490) = 0u;
  *(a1 + 506) = 0u;
  *(a1 + 522) = 0u;
  *(a1 + 538) = 0u;
  *(a1 + 554) = 0u;
  *(a1 + 570) = 0u;
  *(a1 + 586) = 0u;
  *(a1 + 602) = a3;
  v10 = operator new(0x208uLL);
  *(a1 + 608) = v10;
  *(a1 + 624) = 0x8000000000000208;
  v11 = vdupq_n_s8(a3);
  *(a1 + 616) = 512;
  *v10 = v11;
  v10[1] = v11;
  v10[2] = v11;
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v11;
  v10[6] = v11;
  v10[7] = v11;
  v10[8] = v11;
  v10[9] = v11;
  v10[10] = v11;
  v10[11] = v11;
  v10[12] = v11;
  v10[13] = v11;
  v10[14] = v11;
  v10[15] = v11;
  v10[16] = v11;
  v10[17] = v11;
  v10[18] = v11;
  v10[19] = v11;
  v10[20] = v11;
  v10[21] = v11;
  v10[22] = v11;
  v10[23] = v11;
  v10[24] = v11;
  v10[25] = v11;
  v10[26] = v11;
  v10[27] = v11;
  v10[28] = v11;
  v10[29] = v11;
  v10[30] = v11;
  v10[31] = v11;
  v10[32].i8[0] = 0;
  *(a1 + 632) = a4;
  return a1;
}

void sub_29A9D9B70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A9D9B88(uint64_t result, uint64_t *a2, int a3)
{
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
  }

  if (!v4)
  {
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v3 >> 63;
  v15 = result + 90;
  do
  {
    if (v14)
    {
      v16 = *a2;
    }

    else
    {
      v16 = a2;
    }

    v17 = *(v16 + v9);
    if (v12)
    {
      v13 = *(v16 + v9) & 0x3F | (v13 << 6);
    }

    else
    {
      v13 = (0xFFu >> byte_29B4D970F[v17]) & v17;
    }

    v12 = byte_29B4D970F[16 * v12 + 256 + byte_29B4D970F[v17]];
    if (v12 == 1)
    {
      v19 = *(v7 + 158);
      if ((v19 - 1) < 2)
      {
        v9 -= v10 != 0;
        if (v19 != 1)
        {
LABEL_51:
          v12 = 0;
          v10 = 0;
          v8 = v11;
          goto LABEL_52;
        }

        v20 = v15 + v11;
        if (a3)
        {
          *v20 = 1717990748;
          *(v20 + 4) = 25702;
          v11 += 6;
        }

        else
        {
          v11 += 3;
          *v20 = -16401;
          *(v20 + 2) = -67;
        }

        goto LABEL_49;
      }

      if (!v19)
      {
        v26 = *(v16 + v9);
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v32, v9);
        sub_29A9DA840(v26, v31);
        sub_29A9DA730("invalid UTF-8 byte at index ", &v32, ": 0x", v31, &v33);
        sub_29A9DA5D8(316, &v33, exception);
        __cxa_throw(exception, &unk_2A206D5E8, sub_29A9CA73C);
      }

      v12 = 1;
    }

    else
    {
      if (!v12)
      {
        if (v13 <= 11)
        {
          switch(v13)
          {
            case 8:
              v18 = 25180;
              goto LABEL_48;
            case 9:
              v18 = 29788;
              goto LABEL_48;
            case 10:
              v18 = 28252;
              goto LABEL_48;
          }
        }

        else if (v13 > 33)
        {
          if (v13 == 34)
          {
            v18 = 8796;
            goto LABEL_48;
          }

          if (v13 == 92)
          {
            v18 = 23644;
            goto LABEL_48;
          }
        }

        else
        {
          if (v13 == 12)
          {
            v18 = 26204;
            goto LABEL_48;
          }

          if (v13 == 13)
          {
            v18 = 29276;
LABEL_48:
            *(v15 + v8) = v18;
            v11 = v8 + 2;
            goto LABEL_49;
          }
        }

        if (v13 > 0x7E)
        {
          v21 = a3;
        }

        else
        {
          v21 = 0;
        }

        if (v13 >= 0x20 && v21 == 0)
        {
          v11 = v8 + 1;
          *(v15 + v8) = *(v16 + v9);
        }

        else if (HIWORD(v13))
        {
          result = snprintf((v15 + v8), 0xDuLL, "\\u%04x\\u%04x", ((v13 >> 10) - 10304), v13 & 0x3FF | 0xDC00);
          v11 = v8 + 12;
        }

        else
        {
          result = snprintf((v15 + v8), 7uLL, "\\u%04x", v13);
          v11 = v8 + 6;
        }

LABEL_49:
        if ((v11 - 500) <= 0xC)
        {
          result = (*(**v7 + 8))(*v7, v15);
          v12 = 0;
          v11 = 0;
          v10 = 0;
          v8 = 0;
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if ((a3 & 1) == 0)
      {
        *(v15 + v8++) = *(v16 + v9);
      }

      ++v10;
    }

LABEL_52:
    ++v9;
    v23 = *(a2 + 23);
    v14 = v23 >> 63;
    if ((v23 & 0x80000000) != 0)
    {
      v23 = a2[1];
    }
  }

  while (v9 < v23);
  if (v12)
  {
    v25 = *(v7 + 158);
    switch(v25)
    {
      case 1:
        (*(**v7 + 8))(*v7, v15, v11);
        v24 = *(**v7 + 8);
        break;
      case 2:
        v24 = *(**v7 + 8);
        break;
      case 0:
        v28 = __cxa_allocate_exception(0x20uLL);
        v29 = *(a2 + 23);
        if ((v29 & 0x80u) == 0)
        {
          v30 = a2;
        }

        else
        {
          v30 = *a2;
        }

        if ((v29 & 0x80u) != 0)
        {
          v29 = a2[1];
        }

        sub_29A9DA840(*(v30 + v29 - 1), &v32);
        sub_29A9DA8B4("incomplete UTF-8 string; last byte: 0x", &v32, &v33);
        sub_29A9DA5D8(316, &v33, v28);
        __cxa_throw(v28, &unk_2A206D5E8, sub_29A9CA73C);
      default:
        return result;
    }

LABEL_61:

    return v24();
  }

  if (v8)
  {
    v24 = *(**v7 + 8);
    goto LABEL_61;
  }

  return result;
}

void sub_29A9DA088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v32)
  {
    __cxa_free_exception(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A9DA118(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  LOBYTE(v2) = a2;
  if (a2 >= 0xA)
  {
    if (a2 >= 0x64)
    {
      *(a1 + 17) = *&a00010203040506_0[2 * (a2 - 100 * ((41 * a2) >> 12))];
      v5 = a1 + 17;
      v2 = (41 * a2) >> 12;
      goto LABEL_10;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v5 = a1 + 16 + v3;
  if (a2 < 0xA)
  {
LABEL_10:
    *(v5 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  *(v5 - 2) = *&a00010203040506_0[2 * a2];
  return (*(**a1 + 8))();
}

uint64_t sub_29A9DA1F0(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  if (a2 < 0xA)
  {
    v3 = a1 + 17;
LABEL_20:
    *(v3 - 1) = v2 | 0x30;
    return (*(**a1 + 8))();
  }

  v5 = 4;
  v6 = a2;
  while (1)
  {
    if (v6 <= 0x63)
    {
      v5 -= 2;
      goto LABEL_13;
    }

    if (v6 <= 0x3E7)
    {
      break;
    }

    if (v6 >> 4 < 0x271)
    {
      goto LABEL_13;
    }

    v7 = v6 >> 5;
    v6 /= 0x2710uLL;
    v5 += 4;
    if (v7 <= 0xC34)
    {
      v5 -= 3;
      goto LABEL_13;
    }
  }

  --v5;
LABEL_13:
  v3 = a1 + v5 + 16;
  if (a2 < 0x64)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = v2 / 0x64;
      *(v3 - 2) = *&a00010203040506_0[2 * (v2 % 0x64) + 200];
      v3 -= 2;
      v9 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v9 > 0x270);
  }

  if (v8 < 0xA)
  {
    LOBYTE(v2) = v8;
    goto LABEL_20;
  }

  *(v3 - 2) = *&a00010203040506_0[2 * v8 + 200];
  return (*(**a1 + 8))();
}

uint64_t sub_29A9DA340(void *a1, unint64_t a2)
{
  if (!a2)
  {
    return (***a1)(*a1, 48);
  }

  v2 = a2;
  v3 = a1 + 2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    *v3 = 45;
    v2 = -v2;
    if (v2 >= 0xA)
    {
      v6 = 4;
      v10 = v2;
      while (1)
      {
        if (v10 <= 0x63)
        {
          v6 -= 2;
          goto LABEL_24;
        }

        if (v10 <= 0x3E7)
        {
          break;
        }

        if (v10 >> 4 < 0x271)
        {
          goto LABEL_24;
        }

        v6 += 4;
        v9 = v10 >= 0x186A0;
        v10 /= 0x2710uLL;
        if (!v9)
        {
          v6 -= 3;
          goto LABEL_24;
        }
      }

      --v6;
    }

    else
    {
      v6 = 1;
    }

LABEL_24:
    v7 = v6 + 1;
  }

  else
  {
    if (v2 < 0xA)
    {
      v4 = a1 + 17;
LABEL_32:
      *(v4 - 1) = v2 | 0x30;
      return (*(**a1 + 8))();
    }

    v7 = 4;
    v8 = v2;
    while (1)
    {
      if (v8 <= 0x63)
      {
        v7 -= 2;
        goto LABEL_25;
      }

      if (v8 <= 0x3E7)
      {
        break;
      }

      if (v8 >> 4 < 0x271)
      {
        goto LABEL_25;
      }

      v7 += 4;
      v9 = v8 >= 0x186A0;
      v8 /= 0x2710uLL;
      if (!v9)
      {
        v7 -= 3;
        goto LABEL_25;
      }
    }

    --v7;
  }

LABEL_25:
  v4 = &v3[v7];
  if (v2 < 0x64)
  {
    v11 = v2;
  }

  else
  {
    do
    {
      v11 = v2 / 0x64;
      *(v4 - 1) = *&a00010203040506_0[2 * (v2 % 0x64) + 400];
      v4 -= 2;
      v12 = v2 >> 4;
      v2 /= 0x64uLL;
    }

    while (v12 > 0x270);
  }

  if (v11 < 0xA)
  {
    LOBYTE(v2) = v11;
    goto LABEL_32;
  }

  *(v4 - 1) = *&a00010203040506_0[2 * v11 + 400];
  return (*(**a1 + 8))();
}

uint64_t sub_29A9DA528(_BYTE *a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    sub_29A9DA958(a1 + 16, a2);
  }

  v3 = *(**a1 + 8);

  return v3();
}

void sub_29A9DA5D8(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_29A008E78(v9, "type_error");
  sub_29A9CA894(a1, v9, &v11);
  sub_29A008E78(__p, "");
  sub_29A9CA790(&v11, __p, a2, &v12);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12.__r_.__value_.__r.__words[0];
  }

  sub_29A9CAA50(a3, a1, v6);
  *a3 = &unk_2A206D610;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_29A9DA6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29A9DA730@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v10 = strlen(a1);
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = strlen(a3);
  v13 = *(a4 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a4 + 8);
  }

  std::string::reserve(a5, v12 + v10 + v11 + v13);
  std::string::append(a5, a1);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  std::string::append(a5, v15, v16);
  std::string::append(a5, a3);
  v17 = *(a4 + 23);
  if (v17 >= 0)
  {
    v18 = a4;
  }

  else
  {
    v18 = *a4;
  }

  if (v17 >= 0)
  {
    v19 = *(a4 + 23);
  }

  else
  {
    v19 = *(a4 + 8);
  }

  return std::string::append(a5, v18, v19);
}

void sub_29A9DA824(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A9DA840@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  result = sub_29A008E78(a2, "FF");
  if (*(result + 23) >= 0)
  {
    v4 = result;
  }

  else
  {
    v4 = *result;
  }

  *v4 = a0123456789abcd_0[a1 >> 4];
  if (*(result + 23) >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *(v5 + 1) = a0123456789abcd_0[a1 & 0xF];
  return result;
}

std::string *sub_29A9DA8B4@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  std::string::reserve(a3, v7 + v6);
  std::string::append(a3, a1);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  return std::string::append(a3, v9, v10);
}

void sub_29A9DA93C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A9DA958(_BYTE *a1, double a2)
{
  v2 = a1;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    *a1 = 45;
    v2 = a1 + 1;
  }

  if (a2 == 0.0)
  {
    *v2 = 11824;
    result = (v2 + 3);
    v2[2] = 48;
    return result;
  }

  v12 = 0;
  sub_29A9DAB78(v2, &v12 + 1, &v12, a2);
  v4 = SHIDWORD(v12);
  v5 = v12 + SHIDWORD(v12);
  if ((v12 & 0x80000000) == 0 && v5 <= 15)
  {
    memset(&v2[SHIDWORD(v12)], 48, v12);
    *&v2[v5] = 12334;
    return &v2[v5 + 2];
  }

  if ((v5 - 16) >= 0xFFFFFFF1)
  {
    v7 = &v2[v5];
    memmove(v7 + 1, v7, SHIDWORD(v12) - v5);
    *v7 = 46;
    return &v2[v4 + 1];
  }

  if (v5 == 0 || v5 >= 0xFFFFFFFD)
  {
    v6 = -v5;
    memmove(&v2[v6 + 2], v2, SHIDWORD(v12));
    *v2 = 11824;
    memset(v2 + 2, 48, v6);
    return &v2[v6 + 2 + v4];
  }

  if (HIDWORD(v12) != 1)
  {
    memmove(v2 + 2, v2 + 1, SHIDWORD(v12) - 1);
    v2[1] = 46;
    v2 += v4;
  }

  v8 = v5 - 1;
  if (v5 >= 1)
  {
    v9 = 43;
  }

  else
  {
    v9 = 45;
  }

  v2[2] = v9;
  v2[1] = 101;
  if (v5 - 1 < 0)
  {
    v8 = 1 - v5;
  }

  if (v8 > 9)
  {
    if (v8 > 0x63)
    {
      v2[3] = v8 / 0x64 + 48;
      v8 %= 0x64u;
      v10 = v2 + 5;
      v2[4] = (v8 / 0xAu) | 0x30;
      LOBYTE(v8) = v8 % 0xAu;
      v11 = 4;
      goto LABEL_25;
    }

    v10 = v2 + 4;
    v2[3] = (v8 / 0xAu) | 0x30;
    LOBYTE(v8) = v8 % 0xAu;
  }

  else
  {
    v10 = v2 + 4;
    v2[3] = 48;
  }

  v11 = 3;
LABEL_25:
  result = &v2[v11 + 2];
  *v10 = v8 | 0x30;
  return result;
}

uint64_t sub_29A9DAB78(uint64_t a1, int *a2, _DWORD *a3, double a4)
{
  sub_29A9DACA0(v20, a4);
  v27 = v20[1];
  v26 = v20[0];
  v25[0] = v21;
  v25[1] = v22;
  if (-61 - v22 <= 0)
  {
    v7 = 78913 * (-61 - v22) / 0x40000;
  }

  else
  {
    v7 = 78913 * (-61 - v22) / 0x40000 + 1;
  }

  v8 = (&unk_29B4D9AF8 + 16 * (((v7 + 307 + (((v7 + 307) >> 28) & 7)) << 16) >> 19));
  v9 = v8[1];
  v23 = *v8;
  v24 = v9;
  v10 = sub_29A9DAD48(&v26, &v23);
  v12 = v11;
  v13 = sub_29A9DAD48(&v27, &v23);
  v15 = v14;
  v16 = sub_29A9DAD48(v25, &v23);
  *a3 = -HIDWORD(v9);
  return sub_29A9DADA8(a1, a2, a3, v13 + 1, v15, v10, v12, v18, v16 - 1, v17);
}

void sub_29A9DACA0(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (*&a2 >> 52)
  {
    v5 = (*&a2 >> 52) + 4294966221;
    v3 = 2 * (v2 | 0x10000000000000);
    v4 = (2 * (*&a2 & 0xFFFFFFFFFFFFFLL | 0x10000000000000)) | 1;
    v6 = (*&a2 >> 52) - 1076;
    if (*&a2 >> 53 && !v2)
    {
      v7 = (*&a2 >> 52) - 53;
      v8 = 0x3FFFFFFFFFFFFFLL;
      v2 = 0x10000000000000;
      goto LABEL_8;
    }

    v2 |= 0x10000000000000uLL;
  }

  else
  {
    v3 = 2 * *&a2;
    v4 = (2 * (*&a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    LODWORD(v5) = -1074;
    v6 = -1075;
  }

  v8 = v3 - 1;
  v7 = v6;
  do
  {
LABEL_8:
    v4 *= 2;
    --v6;
  }

  while ((v4 & 0x8000000000000000) == 0);
  do
  {
    v2 *= 2;
    LODWORD(v5) = v5 - 1;
  }

  while ((v2 & 0x8000000000000000) == 0);
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8 << (v7 - v6);
  *(a1 + 24) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
}

unint64_t sub_29A9DAD48(void *a1, void *a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((((*a2 * *a1) >> 32) + v4 + v5 + 0x80000000) >> 32);
}

uint64_t sub_29A9DADA8(uint64_t result, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int a10)
{
  v10 = a9 - a4;
  v11 = a9 - a6;
  v12 = -a10;
  v13 = 1 << -a10;
  v14 = a9 >> -a10;
  v15 = (v13 - 1) & a9;
  if (v14 <= 0x3B9AC9FF)
  {
    if (v14 <= 0x5F5E0FF)
    {
      if (v14 <= 0x98967F)
      {
        if (v14 <= 0xF423F)
        {
          v18 = v14 >> 5;
          v19 = v14 >> 4;
          if (v14 <= 9)
          {
            v20 = 1;
          }

          else
          {
            v20 = 10;
          }

          if (v14 <= 9)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v14 <= 0x63)
          {
            v22 = v20;
          }

          else
          {
            v22 = 100;
          }

          if (v14 <= 0x63)
          {
            v23 = v21;
          }

          else
          {
            v23 = 3;
          }

          if (v14 <= 0x3E7)
          {
            v24 = v22;
          }

          else
          {
            v24 = 1000;
          }

          if (v14 <= 0x3E7)
          {
            v25 = v23;
          }

          else
          {
            v25 = 4;
          }

          if (v19 <= 0x270)
          {
            v26 = v24;
          }

          else
          {
            v26 = 10000;
          }

          if (v19 <= 0x270)
          {
            v27 = v25;
          }

          else
          {
            v27 = 5;
          }

          v28 = v18 > 0xC34;
          if (v18 > 0xC34)
          {
            v16 = 100000;
          }

          else
          {
            v16 = v26;
          }

          if (v28)
          {
            v17 = 6;
          }

          else
          {
            v17 = v27;
          }
        }

        else
        {
          v16 = 1000000;
          v17 = 7;
        }
      }

      else
      {
        v16 = 10000000;
        v17 = 8;
      }
    }

    else
    {
      v16 = 100000000;
      v17 = 9;
    }
  }

  else
  {
    v16 = 1000000000;
    v17 = 10;
  }

  v29 = result - 1;
  v30 = a6 - a9;
  while (v17 > 0)
  {
    v31 = v14 / v16;
    v14 = v14 % v16;
    v32 = *a2;
    *a2 = v32 + 1;
    *(result + v32) = v31 + 48;
    --v17;
    v33 = (v14 << v12) + v15;
    if (v10 >= v33)
    {
      *a3 += v17;
      v34 = v16 << v12;
      v35 = v33 < v11 && v10 - v33 >= v34;
      if (!v35)
      {
        return result;
      }

      v36 = *a2;
      v37 = v11 - v33;
      v38 = v15 + (v14 << v12) + v34;
      v39 = v10 - v38;
      do
      {
        if (v38 >= v11 && v37 <= v30 + v38)
        {
          break;
        }

        --*(v29 + v36);
        if (v38 >= v11)
        {
          break;
        }

        v37 -= v34;
        v38 += v34;
        v35 = v39 >= v34;
        v39 -= v34;
      }

      while (v35);
    }

    else
    {
      v16 /= 0xAu;
    }

    if (v10 >= v33)
    {
      return result;
    }
  }

  v40 = 0;
  do
  {
    v41 = v10;
    v42 = v11;
    v43 = 5 * v15;
    v44 = *a2;
    *a2 = v44 + 1;
    *(result + v44) = ((2 * v43) >> v12) + 48;
    v10 = 10 * v41;
    v11 *= 10;
    --v40;
    v15 = (v13 - 1) & (2 * v43);
  }

  while (10 * v41 < v15);
  *a3 += v40;
  if (v15 < v11 && 10 * v41 - v15 >= v13)
  {
    v45 = *a2;
    v46 = 10 * v42 - v15;
    v47 = v13 + v15;
    v48 = 10 * v41 - v47;
    v49 = -10 * v42;
    do
    {
      if (v47 >= v11 && v46 <= v49 + v47)
      {
        break;
      }

      --*(v29 + v45);
      if (v47 >= v11)
      {
        break;
      }

      v46 -= v13;
      v47 += v13;
      v35 = v48 >= v13;
      v48 -= v13;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_29A9DB06C(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  return a1;
}

uint64_t sub_29A9DB0AC(void **a1, std::string *a2, unsigned __int8 *a3, uint64_t a4, int a5, uint64_t a6)
{
  memset(v27, 0, 24);
  v27[3] = 0x8000000000000000;
  if (*(a4 + 23) >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  if (!tinygltf::detail::FindMember(a3, v10, v27))
  {
    result = 0;
    if (!a2 || !a5)
    {
      return result;
    }

    std::operator+<char>();
    v13 = std::string::append(&v24, "' property is missing");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v26 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v26 >= 0)
    {
      v16 = HIBYTE(v26);
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(a2, v15, v16);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v17 = *(a6 + 23);
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a6 + 8);
    }

    if (v17)
    {
      std::operator+<char>();
      v18 = v26 >= 0 ? __p : __p[0];
      v19 = v26 >= 0 ? HIBYTE(v26) : __p[1];
      std::string::append(a2, v18, v19);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::string::append(a2, ".\n");
    return 0;
  }

  Value = tinygltf::detail::GetValue(v27);
  if (*Value != 6)
  {
    result = 0;
    if (!a2 || !a5)
    {
      return result;
    }

    std::operator+<char>();
    v20 = std::string::append(&v24, "' property is not a positive integer.\n");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v26 = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v26 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v26 >= 0)
    {
      v23 = HIBYTE(v26);
    }

    else
    {
      v23 = __p[1];
    }

    std::string::append(a2, v22, v23);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  __p[0] = 0;
  sub_29A9DBEF8(Value, __p);
  if (a1)
  {
    *a1 = __p[0];
  }

  return 1;
}

void sub_29A9DB2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29A9DB338(void *a1, std::string *this, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 && a10[3] && a10[7] && a10[11])
  {
    a1[1] = *a1;
    memset(v11, 0, sizeof(v11));
    sub_29A070BA0(v11);
  }

  if (this)
  {
    std::string::append(this, "FS callback[s] not set\n");
  }

  return 0;
}

void sub_29A9DBC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p)
{
  if (*(v9 - 201) < 0)
  {
    operator delete(*(v9 - 224));
  }

  sub_29A008B0C(&__p);
  if (*(v9 - 169) < 0)
  {
    operator delete(*(v9 - 192));
  }

  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  if (*(v9 - 137) < 0)
  {
    operator delete(*(v9 - 160));
  }

  *(v9 - 112) = v9 - 136;
  sub_29A012C90((v9 - 112));
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_29A9DBEF8(unsigned __int8 *result, unint64_t *a2)
{
  v2 = *result;
  if (v2 > 5)
  {
    if (v2 == 7)
    {
      v3 = *(result + 1);
      goto LABEL_10;
    }

    if (v2 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_29A9CA714(v4);
    sub_29A9CA68C("type must be number, but is ", &v6, &v7);
    sub_29A9CA534(302, &v7, exception);
    __cxa_throw(exception, &unk_2A206D5E8, sub_29A9CA73C);
  }

  if (v2 == 4)
  {
    v3 = result[8];
    goto LABEL_10;
  }

  if (v2 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(result + 1);
LABEL_10:
  *a2 = v3;
  return result;
}

void sub_29A9DBFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_29A9DC018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v7 = a5;
  v8 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_29A0DDCB0();
  }

  return (*(*v5 + 48))(v5, &v9, &v8, a4, &v7);
}

uint64_t sub_29A9DC078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_29A9DC0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_29A9DC120(uint64_t a1, __int128 *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DC350(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 264 * v2);
  *(&v16 + 1) = v7 + 264 * v6;
  sub_29A9DC264(v15, a2);
  *&v16 = v15 + 264;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9DC39C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DC40C(&v14);
  return v13;
}

void sub_29A9DC250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DC40C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9DC264(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v5 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v5;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  sub_29A9CE03C(a1 + 72, a2 + 72);
  *(a1 + 192) = *(a2 + 24);
  v6 = a2 + 25;
  v7 = *(a2 + 25);
  *(a1 + 200) = v7;
  v8 = a1 + 200;
  v9 = *(a2 + 26);
  *(a1 + 208) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 24) = v6;
    *v6 = 0;
    *(a2 + 26) = 0;
  }

  else
  {
    *(a1 + 192) = v8;
  }

  v10 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v10;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 27) = 0;
  v11 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v11;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 30) = 0;
  return a1;
}

void *sub_29A9DC350(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xF83E0F83E0F83FLL)
  {
    sub_29A00C8B8();
  }

  return operator new(264 * a2);
}

void sub_29A9DC39C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9DC264(a4, v7);
      v7 = (v7 + 264);
      a4 = v8 + 264;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CC158(v6);
      v6 += 264;
    }
  }
}

uint64_t sub_29A9DC40C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    sub_29A9CC158(i - 264);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9DC45C(uint64_t a1, __int128 *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DC350(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 264 * v2);
  *(&v16 + 1) = v7 + 264 * v6;
  sub_29A9DC5A0(v15, a2);
  *&v16 = v15 + 264;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9DC674(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DC6E4(&v14);
  return v13;
}

void sub_29A9DC58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DC6E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9DC5A0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 14);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  sub_29A9CE03C(a1 + 64, (a2 + 4));
  *(a1 + 184) = *(a2 + 23);
  v7 = a2 + 12;
  v8 = *(a2 + 24);
  *(a1 + 192) = v8;
  v9 = a1 + 192;
  v10 = *(a2 + 25);
  *(a1 + 200) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    *(a2 + 23) = v7;
    *v7 = 0;
    *(a2 + 25) = 0;
  }

  else
  {
    *(a1 + 184) = v9;
  }

  v11 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 208) = v11;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 26) = 0;
  v12 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 31);
  *(a1 + 232) = v12;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  *(a2 + 29) = 0;
  *(a1 + 256) = *(a2 + 256);
  return a1;
}

void sub_29A9DC674(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9DC5A0(a4, v7);
      v7 = (v7 + 264);
      a4 = v8 + 264;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CC06C(v6);
      v6 += 264;
    }
  }
}

uint64_t sub_29A9DC6E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    sub_29A9CC06C(i - 264);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_29A9DC734(uint64_t a1, unsigned __int8 *a2, int a3)
{
  sub_29A9CD4BC(a1 + 136, a2);
  sub_29A9CD7BC(a1 + 16, a2);
  if (a3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0x8000000000000000;
    if (tinygltf::detail::FindMember(a2, "extensions", &v11))
    {
      Value = tinygltf::detail::GetValue(&v11);
      sub_29A9B5A20(Value, -1, 0x20u, 0, 0, &v9);
      if (*(a1 + 207) < 0)
      {
        operator delete(*(a1 + 184));
      }

      *(a1 + 184) = v9;
      *(a1 + 200) = v10;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0x8000000000000000;
    if (tinygltf::detail::FindMember(a2, "extras", &v11))
    {
      v8 = tinygltf::detail::GetValue(&v11);
      sub_29A9B5A20(v8, -1, 0x20u, 0, 0, &v9);
      if (*(a1 + 183) < 0)
      {
        operator delete(*(a1 + 160));
      }

      result = *&v9;
      *(a1 + 160) = v9;
      *(a1 + 176) = v10;
    }
  }

  return result;
}

uint64_t sub_29A9DC848(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2A4BAFDC61F2A4BBLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x473C1AB68A0473)
  {
    sub_29A00C9A4();
  }

  if (0x54975FB8C3E54976 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x54975FB8C3E54976 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2A4BAFDC61F2A4BBLL * ((a1[2] - *a1) >> 3)) >= 0x239E0D5B450239)
  {
    v6 = 0x473C1AB68A0473;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DCC58(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[920 * v2];
  *(&v16 + 1) = &v7[920 * v6];
  sub_29A9DC98C(v15, a2);
  *&v16 = v15 + 920;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A9DCCA4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DCD14(&v14);
  return v13;
}

void sub_29A9DC978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DCD14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9DC98C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 32) = v5;
  sub_29A9CE03C(a1 + 64, a2 + 64);
  *(a1 + 184) = *(a2 + 184);
  v6 = (a2 + 192);
  v7 = *(a2 + 192);
  *(a1 + 192) = v7;
  v8 = a1 + 192;
  v9 = *(a2 + 200);
  *(a1 + 200) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 184) = v6;
    *v6 = 0;
    *(a2 + 200) = 0;
  }

  else
  {
    *(a1 + 184) = v8;
  }

  v10 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v10;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 208) = 0;
  v11 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v11;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  sub_29A9DCAA4(a1 + 304, (a2 + 304));
  return a1;
}

uint64_t sub_29A9DCAA4(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 8) = *(a2 + 2);
  sub_29A9CE03C(a1 + 24, (a2 + 6));
  *(a1 + 144) = *(a2 + 18);
  v5 = a2 + 38;
  v6 = *(a2 + 19);
  *(a1 + 152) = v6;
  v7 = a1 + 152;
  v8 = *(a2 + 20);
  *(a1 + 160) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 18) = v5;
    *v5 = 0;
    *(a2 + 20) = 0;
  }

  else
  {
    *(a1 + 144) = v7;
  }

  v9 = *(a2 + 42);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v9;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  v10 = *(a2 + 12);
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v10;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 24) = 0;
  *(a1 + 216) = *(a2 + 54);
  sub_29A9CE03C(a1 + 232, (a2 + 58));
  *(a1 + 352) = *(a2 + 44);
  v11 = a1 + 360;
  v12 = *(a2 + 45);
  v13 = *(a2 + 46);
  *(a1 + 360) = v12;
  *(a1 + 368) = v13;
  if (v13)
  {
    *(v12 + 16) = v11;
    *(a2 + 44) = a2 + 90;
    *(a2 + 45) = 0;
    *(a2 + 46) = 0;
  }

  else
  {
    *(a1 + 352) = v11;
  }

  v14 = *(a2 + 94);
  *(a1 + 392) = *(a2 + 49);
  *(a1 + 376) = v14;
  *(a2 + 48) = 0;
  *(a2 + 49) = 0;
  *(a2 + 47) = 0;
  v15 = *(a2 + 25);
  *(a1 + 416) = *(a2 + 52);
  *(a1 + 400) = v15;
  *(a2 + 51) = 0;
  *(a2 + 52) = 0;
  *(a2 + 50) = 0;
  sub_29A9CE03C(a1 + 424, (a2 + 106));
  *(a1 + 544) = *(a2 + 68);
  v16 = a1 + 552;
  v17 = *(a2 + 69);
  *(a1 + 552) = v17;
  v18 = *(a2 + 70);
  *(a1 + 560) = v18;
  if (v18)
  {
    *(v17 + 16) = v16;
    *(a2 + 68) = a2 + 138;
    *(a2 + 69) = 0;
    *(a2 + 70) = 0;
  }

  else
  {
    *(a1 + 544) = v16;
  }

  v19 = *(a2 + 142);
  *(a1 + 584) = *(a2 + 73);
  *(a1 + 568) = v19;
  *(a2 + 73) = 0;
  *(a2 + 72) = 0;
  *(a2 + 71) = 0;
  v20 = *(a2 + 37);
  *(a1 + 608) = *(a2 + 76);
  *(a1 + 592) = v20;
  *(a2 + 76) = 0;
  *(a2 + 75) = 0;
  *(a2 + 74) = 0;
  return a1;
}

void *sub_29A9DCC58(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x473C1AB68A0474)
  {
    sub_29A00C8B8();
  }

  return operator new(920 * a2);
}

void sub_29A9DCCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9DC98C(a4, v7);
      v7 += 920;
      a4 = v8 + 920;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CC584(v6);
      v6 += 920;
    }
  }
}

uint64_t sub_29A9DCD14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 920;
    sub_29A9CC584(i - 920);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9DCD64(uint64_t *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v19 = v7;
  v20 = v8;
  *v8 = *a2;
  v9 = a2 + 1;
  v10 = a2[1];
  *(&v21 + 1) = &v7[24 * v6];
  *(v8 + 1) = v10;
  v11 = v8 + 8;
  v12 = a2[2];
  *(v8 + 2) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *a2 = v9;
    *v9 = 0;
    a2[2] = 0;
  }

  else
  {
    *v8 = v11;
  }

  *&v21 = v8 + 24;
  v13 = a1[1];
  v14 = &v8[*a1 - v13];
  sub_29A9DCEBC(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_29A9DD01C(&v19);
  return v18;
}

void sub_29A9DCEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DD01C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9DCEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    while (v5 != a3)
    {
      sub_29A019EE8(v5, *(v5 + 8));
      v5 += 24;
    }
  }

  return sub_29A9DCF98(v13);
}

uint64_t sub_29A9DCF98(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A9DCFD0(a1);
  }

  return a1;
}

void sub_29A9DCFD0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      sub_29A019EE8(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_29A9DD01C(void **a1)
{
  sub_29A9DD050(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A9DD050(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_29A019EE8(i - 24, *(i - 16));
  }
}

uint64_t sub_29A9DD098(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 8;
  v3 = v2 + 1;
  if ((v2 + 1) >> 56)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 7 > v3)
  {
    v3 = v6 >> 7;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF00)
  {
    v7 = 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A9DD2A8(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[256 * v2];
  *(&v17 + 1) = &v8[256 * v7];
  sub_29A9DD1A4(v16, a2);
  *&v17 = v16 + 256;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29A9DD2E0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A9DD350(&v15);
  return v14;
}

void sub_29A9DD190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DD350(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9DD1A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  v6 = a1 + 8;
  v7 = *(a2 + 16);
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *a2 = v4;
    *v4 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = v6;
  }

  v8 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  v9 = (a2 + 72);
  v10 = *(a2 + 72);
  *(a1 + 72) = v10;
  v11 = a1 + 72;
  v12 = *(a2 + 80);
  *(a1 + 80) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *(a2 + 64) = v9;
    *v9 = 0;
    *(a2 + 80) = 0;
  }

  else
  {
    *(a1 + 64) = v11;
  }

  sub_29A9CE03C(a1 + 88, a2 + 88);
  v13 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v13;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  v14 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v14;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0;
  return a1;
}

void *sub_29A9DD2A8(uint64_t a1, unint64_t a2)
{
  if (HIBYTE(a2))
  {
    sub_29A00C8B8();
  }

  return operator new(a2 << 8);
}

void sub_29A9DD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9DD1A4(a4, v7);
      v7 += 256;
      a4 = v8 + 256;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CBB68(v6);
      v6 += 256;
    }
  }
}

uint64_t sub_29A9DD350(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 256;
    sub_29A9CBB68(i - 256);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9DD3A0(uint64_t a1, __int128 *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DC350(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 264 * v2);
  *(&v16 + 1) = v7 + 264 * v6;
  sub_29A9DD4E4(v15, a2);
  *&v16 = v15 + 264;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9DD5D8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DD648(&v14);
  return v13;
}

void sub_29A9DD4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DD648(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9DD4E4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(a1 + 72) = *(a2 + 9);
  v5 = a2 + 5;
  v6 = *(a2 + 10);
  *(a1 + 80) = v6;
  v7 = a1 + 80;
  v8 = *(a2 + 11);
  *(a1 + 88) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 9) = v5;
    *v5 = 0;
    *(a2 + 11) = 0;
  }

  else
  {
    *(a1 + 72) = v7;
  }

  sub_29A9CE03C(a1 + 96, (a2 + 6));
  v9 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v9;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  v10 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v10;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 30) = 0;
  return a1;
}

void sub_29A9DD5D8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9DD4E4(a4, v7);
      v7 = (v7 + 264);
      a4 = v8 + 264;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CBA54(v6);
      v6 += 264;
    }
  }
}

uint64_t sub_29A9DD648(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    sub_29A9CBA54(i - 264);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_29A9DD698(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  memset(v21, 0, 24);
  v21[3] = 0x8000000000000000;
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  result = tinygltf::detail::FindMember(a2, v5, v21);
  if (result)
  {
    if (*tinygltf::detail::GetValue(v21) == 2)
    {
      *(a1 + 8) = *a1;
      Value = tinygltf::detail::GetValue(v21);
      v17 = Value;
      v18 = 0;
      v19 = 0;
      v20 = 0x8000000000000000;
      v8 = *Value;
      if (v8 == 2)
      {
        v19 = *(*(Value + 1) + 8);
      }

      else if (v8 == 1)
      {
        v18 = *(Value + 1) + 8;
      }

      else
      {
        v20 = 1;
      }

      v9 = tinygltf::detail::GetValue(v21);
      v13 = v9;
      v14 = 0;
      v15 = 0;
      v16 = 0x8000000000000000;
      v10 = *v9;
      if (*v9)
      {
        if (v10 == 2)
        {
          v15 = **(v9 + 1);
        }

        else if (v10 == 1)
        {
          v14 = **(v9 + 1);
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 1;
      }

      while (!sub_29A9D8514(&v13, &v17))
      {
        v12 = 0;
        v11 = tinygltf::detail::GetValue(&v13);
        if (*v11 - 5 > 1)
        {
          return 0;
        }

        v22 = 0;
        sub_29A9CA42C(v11, &v22);
        v12 = v22;
        sub_29A00D250(a1, &v12);
        sub_29A9C115C(&v13);
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

void *sub_29A9DD81C(uint64_t a1, const void **a2)
{
  if ((atomic_load_explicit(&qword_2A14F8DB0, memory_order_acquire) & 1) == 0)
  {
    v5 = a2;
    sub_29B2BBD2C();
    a2 = v5;
  }

  v3 = sub_29A01BCCC(a1 + 88, a2);
  if (a1 + 96 == v3)
  {
    return &unk_2A14F8D38;
  }

  else
  {
    return (v3 + 56);
  }
}

_OWORD *sub_29A9DD884(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0xB0uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *(v7 + 136) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 120) = 0u;
    *(v7 + 21) = 0;
    *(v7 + 152) = 0u;
    *(v7 + 18) = v7 + 152;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t sub_29A9DD948(uint64_t *a1, uint64_t a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xA0A0A0A0A0A0A0)
  {
    sub_29A00C9A4();
  }

  if (0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3);
  }

  if (0xFAFAFAFAFAFAFAFBLL * ((a1[2] - *a1) >> 3) >= 0x50505050505050)
  {
    v6 = 0xA0A0A0A0A0A0A0;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A936374(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[408 * v2];
  *(&v16 + 1) = &v7[408 * v6];
  sub_29A9DDA8C(v15, a2);
  *&v16 = v15 + 408;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A9DDC38(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DDCA8(&v14);
  return v13;
}

void sub_29A9DDA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DDCA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9DDA8C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 192) = 0;
  *(a1 + 216) = *(a2 + 216);
  v5 = (a2 + 224);
  v6 = *(a2 + 224);
  *(a1 + 224) = v6;
  v7 = a1 + 224;
  v8 = *(a2 + 232);
  *(a1 + 232) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 216) = v5;
    *v5 = 0;
    *(a2 + 232) = 0;
  }

  else
  {
    *(a1 + 216) = v7;
  }

  sub_29A9CE03C(a1 + 240, a2 + 240);
  v9 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 360) = v9;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  v10 = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 384) = v10;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 384) = 0;
  return a1;
}

void sub_29A9DDC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9DDA8C(a4, v7);
      v7 += 408;
      a4 = v8 + 408;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CB8F8(v6);
      v6 += 408;
    }
  }
}

uint64_t sub_29A9DDCA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 408;
    sub_29A9CB8F8(i - 408);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9DDCF8(uint64_t a1, __int128 *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DC350(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 264 * v2);
  *(&v16 + 1) = v7 + 264 * v6;
  sub_29A9DD4E4(v15, a2);
  *&v16 = v15 + 264;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9DDE3C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DDEAC(&v14);
  return v13;
}

void sub_29A9DDE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DDEAC(va);
  _Unwind_Resume(a1);
}

void sub_29A9DDE3C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9DD4E4(a4, v7);
      v7 = (v7 + 264);
      a4 = v8 + 264;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CB298(v6);
      v6 += 264;
    }
  }
}

uint64_t sub_29A9DDEAC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    sub_29A9CB298(i - 264);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9DDEFC(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  memset(v3, 0, sizeof(v3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_29A1B4FBC((a1 + 24), v3, &v4, 3uLL);
  sub_29A008E78((a1 + 48), "OPAQUE");
  *(a1 + 88) = 0;
  *(a1 + 72) = 0x3FE0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_29A9DE14C(a1 + 112);
  *(a1 + 744) = 0xFFFFFFFFLL;
  *(a1 + 752) = 0x3FF0000000000000;
  *(a1 + 856) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 848) = a1 + 856;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 880) = a1 + 888;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0xFFFFFFFFLL;
  *(a1 + 960) = 0x3FF0000000000000;
  *(a1 + 1064) = 0u;
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 1056) = a1 + 1064;
  *(a1 + 1080) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1088) = a1 + 1096;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = -1;
  *(a1 + 1264) = 0u;
  *(a1 + 1164) = 0u;
  *(a1 + 1180) = 0u;
  *(a1 + 1196) = 0u;
  *(a1 + 1212) = 0u;
  *(a1 + 1228) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = a1 + 1264;
  *(a1 + 1280) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1288) = a1 + 1296;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1360) = a1 + 1368;
  *(a1 + 1392) = 0u;
  *(a1 + 1384) = a1 + 1392;
  *(a1 + 1416) = 0u;
  *(a1 + 1408) = a1 + 1416;
  *(a1 + 1528) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = a1 + 1528;
  *(a1 + 1544) = 0;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  return a1;
}

void sub_29A9DE0EC(_Unwind_Exception *exception_object)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  v7 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v7;
    operator delete(v7);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A9DE14C(uint64_t a1)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8[0] = xmmword_29B4D9FE8;
  v8[1] = unk_29B4D9FF8;
  *a1 = 0;
  *(a1 + 8) = 0u;
  sub_29A1B4FBC(a1, v8, v9, 4uLL);
  *(a1 + 24) = -1;
  *(a1 + 128) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a1 + 128;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 152) = a1 + 160;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 208) = 0u;
  *(a1 + 224) = _Q0;
  *(a1 + 240) = -1;
  *(a1 + 344) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 336) = a1 + 344;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 368) = a1 + 376;
  *(a1 + 536) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = a1 + 536;
  *(a1 + 552) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 560) = a1 + 568;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 584) = 0u;
  return a1;
}

double sub_29A9DE298(uint64_t a1, std::string *a2, unsigned __int8 *a3, int a4)
{
  if (a1)
  {
    sub_29A008E78(&v14, "index");
    sub_29A008E78(__p, "TextureInfo");
    v8 = sub_29A9CEC28(a1, a2, a3, &v14, 1, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v14);
      if ((v8 & 1) == 0)
      {
        return result;
      }
    }

    else if ((v8 & 1) == 0)
    {
      return result;
    }

    sub_29A008E78(&v14, "texCoord");
    sub_29A008E78(__p, "");
    sub_29A9CEC28((a1 + 4), a2, a3, &v14, 0, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v14);
    }

    sub_29A9CD4BC(a1 + 128, a3);
    sub_29A9CD7BC(a1 + 8, a3);
    if (a4)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0x8000000000000000;
      if (tinygltf::detail::FindMember(a3, "extensions", &v14))
      {
        Value = tinygltf::detail::GetValue(&v14);
        sub_29A9B5A20(Value, -1, 0x20u, 0, 0, __p);
        if (*(a1 + 199) < 0)
        {
          operator delete(*(a1 + 176));
        }

        *(a1 + 176) = *__p;
        *(a1 + 192) = v13;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0x8000000000000000;
      if (tinygltf::detail::FindMember(a3, "extras", &v14))
      {
        v11 = tinygltf::detail::GetValue(&v14);
        sub_29A9B5A20(v11, -1, 0x20u, 0, 0, __p);
        if (*(a1 + 175) < 0)
        {
          operator delete(*(a1 + 152));
        }

        result = *__p;
        *(a1 + 152) = *__p;
        *(a1 + 168) = v13;
      }
    }
  }

  return result;
}

void sub_29A9DE488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A9DE4C4(uint64_t a1, std::string *a2, unsigned __int8 *a3, uint64_t a4)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v8 = sub_29A9CD194(a1 + 8, a2, a3, a4, 0, &v35);
  v9 = v8;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
    if (v9)
    {
      return 1;
    }
  }

  else if (v8)
  {
    return 1;
  }

  sub_29A008E78(&v35, "");
  v10 = sub_29A9CE57C(a1 + 32, a3, a4);
  v11 = v10;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
    if (!v11)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (v10)
  {
    return 1;
  }

LABEL_11:
  sub_29A008E78(&v35, "");
  v14 = sub_29A9CE700((a1 + 80), a2, a3, a4, 0, &v35);
  v15 = v14;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
    if (v15)
    {
      goto LABEL_13;
    }
  }

  else if (v14)
  {
LABEL_13:
    v12 = 1;
    *(a1 + 1) = 1;
    return v12;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0x8000000000000000;
  if (*(a4 + 23) >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (tinygltf::detail::FindMember(a3, v16, &v35))
  {
    Value = tinygltf::detail::GetValue(&v35);
    if (*Value == 1)
    {
      v18 = Value;
      sub_29A019EE8(a1 + 56, *(a1 + 64));
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 56) = a1 + 64;
      v31 = v18;
      v32 = 0;
      v33 = 0;
      v34 = 0x8000000000000000;
      v19 = *v18;
      if (*v18)
      {
        if (v19 == 2)
        {
          v21 = *(v18 + 1);
          v33 = *v21;
          v28 = v18;
          v29 = 0;
          *(&v30 + 1) = 0x8000000000000000;
          *&v30 = v21[1];
          goto LABEL_30;
        }

        if (v19 == 1)
        {
          v20 = *(v18 + 1);
          v32 = *v20;
          v30 = xmmword_29B4D93F0;
          v28 = v18;
          v29 = v20 + 1;
          goto LABEL_30;
        }

        v34 = 0;
        v29 = 0;
        *&v30 = 0;
        v28 = v18;
      }

      else
      {
        v34 = 1;
        v28 = v18;
        v29 = 0;
        *&v30 = 0;
        *(&v30 + 1) = 0x8000000000000000;
      }

      *(&v30 + 1) = 1;
LABEL_30:
      while (!sub_29A9D8514(&v31, &v28))
      {
        v27 = 0;
        v22 = tinygltf::detail::GetValue(&v31);
        if (*v22 - 5 <= 2)
        {
          __p[0] = 0;
          sub_29A9CABC0(v22, __p);
          v27 = __p[0];
          v23 = sub_29A9B542C(&v31);
          if (*(v23 + 23) >= 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = *v23;
          }

          sub_29A008E78(__p, v24);
          sub_29A9DE7DC((a1 + 56), __p, __p, &v27);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_29A9C115C(&v31);
      }

      return 1;
    }
  }

  sub_29A008E78(&v35, "");
  v12 = sub_29A9CEBA4(a1, a3, a4);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  return v12;
}

void sub_29A9DE7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 57) < 0)
  {
    operator delete(*(v14 - 80));
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_29A9DE7DC(uint64_t **a1, const void **a2, uint64_t a3, void *a4)
{
  v7 = sub_29A00B0D0(a1, &v11, a2);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    v8 = operator new(0x40uLL);
    v8[2] = *a3;
    *(v8 + 6) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v8 + 7) = *a4;
    sub_29A00B204(a1, v11, v9, v8);
  }

  return v8;
}

_OWORD *sub_29A9DE884(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29A00B0D0(a1, &v11, a2);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    v8 = operator new(0x90uLL);
    v8[2] = *a3;
    *(v8 + 6) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    sub_29A9DE930(v8 + 56, a4);
    sub_29A00B204(a1, v11, v9, v8);
  }

  return v8;
}

double sub_29A9DE930(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a1 + 56) = *(a2 + 56);
  v3 = (a2 + 64);
  v4 = *(a2 + 64);
  *(a1 + 64) = v4;
  v5 = a1 + 64;
  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  if (v6)
  {
    *(v4 + 16) = v5;
    *(a2 + 56) = v3;
    *v3 = 0;
    *(a2 + 72) = 0;
  }

  else
  {
    *(a1 + 56) = v5;
  }

  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_29A9DE9B4(uint64_t a1, __int128 *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x28F5C28F5C28F5)
  {
    sub_29A00C9A4();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 6) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 6) >= 0x147AE147AE147ALL)
  {
    v6 = 0x28F5C28F5C28F5;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DEEE8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[100 * v2];
  *(&v16 + 1) = &v7[100 * v6];
  sub_29A9DEAF8(v15, a2);
  *&v16 = v15 + 100;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9DEF34(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9DEFA4(&v14);
  return v13;
}

void sub_29A9DEAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9DEFA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9DEAF8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v5 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v5;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v6 = *(a2 + 9);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  sub_29A9DECC4(a1 + 112, (a2 + 7));
  sub_29A9DEDB0(a1 + 744, a2 + 744);
  sub_29A9DEDB0(a1 + 952, a2 + 952);
  sub_29A9DEE4C(a1 + 1160, a2 + 1160);
  *(a1 + 1360) = *(a2 + 170);
  v7 = a1 + 1368;
  v8 = *(a2 + 171);
  *(a1 + 1368) = v8;
  v9 = *(a2 + 172);
  *(a1 + 1376) = v9;
  if (v9)
  {
    *(v8 + 16) = v7;
    *(a2 + 170) = a2 + 1368;
    *(a2 + 171) = 0;
    *(a2 + 172) = 0;
  }

  else
  {
    *(a1 + 1360) = v7;
  }

  *(a1 + 1384) = *(a2 + 173);
  v10 = a1 + 1392;
  v11 = *(a2 + 174);
  *(a1 + 1392) = v11;
  v12 = *(a2 + 175);
  *(a1 + 1400) = v12;
  if (v12)
  {
    *(v11 + 16) = v10;
    *(a2 + 173) = a2 + 87;
    *(a2 + 174) = 0;
    *(a2 + 175) = 0;
  }

  else
  {
    *(a1 + 1384) = v10;
  }

  *(a1 + 1408) = *(a2 + 176);
  v13 = a1 + 1416;
  v14 = *(a2 + 177);
  *(a1 + 1416) = v14;
  v15 = *(a2 + 178);
  *(a1 + 1424) = v15;
  if (v15)
  {
    *(v14 + 16) = v13;
    *(a2 + 176) = a2 + 1416;
    *(a2 + 177) = 0;
    *(a2 + 178) = 0;
  }

  else
  {
    *(a1 + 1408) = v13;
  }

  sub_29A9CE03C(a1 + 1432, a2 + 1432);
  v16 = a2[97];
  *(a1 + 1568) = *(a2 + 196);
  *(a1 + 1552) = v16;
  a2[97] = 0u;
  *(a2 + 196) = 0;
  v17 = *(a2 + 1576);
  *(a1 + 1592) = *(a2 + 199);
  *(a1 + 1576) = v17;
  *(a2 + 199) = 0;
  *(a2 + 198) = 0;
  *(a2 + 197) = 0;
  return a1;
}

uint64_t sub_29A9DECC4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29A9DEE4C(a1 + 24, a2 + 24);
  *(a1 + 224) = *(a2 + 224);
  sub_29A9DEE4C(a1 + 240, a2 + 240);
  sub_29A9CE03C(a1 + 440, a2 + 440);
  *(a1 + 560) = *(a2 + 560);
  v4 = a1 + 568;
  v5 = *(a2 + 568);
  *(a1 + 568) = v5;
  v6 = *(a2 + 576);
  *(a1 + 576) = v6;
  if (v6)
  {
    *(v5 + 16) = v4;
    *(a2 + 560) = a2 + 568;
    *(a2 + 568) = 0;
    *(a2 + 576) = 0;
  }

  else
  {
    *(a1 + 560) = v4;
  }

  v7 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 584) = v7;
  *(a2 + 600) = 0;
  *(a2 + 592) = 0;
  *(a2 + 584) = 0;
  v8 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v8;
  *(a2 + 624) = 0;
  *(a2 + 616) = 0;
  *(a2 + 608) = 0;
  return a1;
}

uint64_t sub_29A9DEDB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29A9CE03C(a1 + 16, a2 + 16);
  *(a1 + 136) = *(a2 + 136);
  v4 = (a2 + 144);
  v5 = *(a2 + 144);
  *(a1 + 144) = v5;
  v6 = a1 + 144;
  v7 = *(a2 + 152);
  *(a1 + 152) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 136) = v4;
    *v4 = 0;
    *(a2 + 152) = 0;
  }

  else
  {
    *(a1 + 136) = v6;
  }

  v8 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v8;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v9 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v9;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = 0;
  return a1;
}

uint64_t sub_29A9DEE4C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29A9CE03C(a1 + 8, a2 + 8);
  *(a1 + 128) = *(a2 + 128);
  v4 = (a2 + 136);
  v5 = *(a2 + 136);
  *(a1 + 136) = v5;
  v6 = a1 + 136;
  v7 = *(a2 + 144);
  *(a1 + 144) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 128) = v4;
    *v4 = 0;
    *(a2 + 144) = 0;
  }

  else
  {
    *(a1 + 128) = v6;
  }

  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v8;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0;
  v9 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v9;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = 0;
  return a1;
}

void *sub_29A9DEEE8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x28F5C28F5C28F6)
  {
    sub_29A00C8B8();
  }

  return operator new(1600 * a2);
}

void sub_29A9DEF34(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9DEAF8(a4, v7);
      v7 += 100;
      a4 = v8 + 1600;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CBCF4(v6);
      v6 += 1600;
    }
  }
}

uint64_t sub_29A9DEFA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1600;
    sub_29A9CBCF4(i - 1600);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9DEFF4(std::string ***a1, unsigned __int8 *a2)
{
  if (*a2 == 1)
  {
    v171[0] = 0;
    v171[1] = 0;
    v172 = 0;
    v173 = -1;
    v174 = -1;
    v175 = -1;
    v177 = 0;
    v178 = 0;
    v176 = 0;
    data = -1;
    v184[1] = 0;
    v184[0] = 0;
    memset(v180, 0, sizeof(v180));
    memset(v181, 0, sizeof(v181));
    v182 = 0;
    v183 = v184;
    v185 = 0;
    v187[1] = 0;
    v187[0] = 0;
    v186 = v187;
    *v188 = 0u;
    memset(v189, 0, sizeof(v189));
    v190 = 0;
    __val = *a1[1];
    v4 = **a1;
    v5 = a1[3];
    v6 = *(v5 + 25);
    v7 = v5[4];
    v8 = a1[4];
    v163 = *a1[5];
    v164 = *a1[2];
    memset(&v198, 0, sizeof(v198));
    v199 = 0x8000000000000000;
    Member = tinygltf::detail::FindMember(a2, "bufferView", &v198);
    v10 = tinygltf::detail::FindMember(a2, "uri", &v198);
    sub_29A008E78(&__p, "name");
    memset(&v200, 0, sizeof(v200));
    sub_29A9CD194(v171, v4, a2, &__p, 0, &v200);
    if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v200.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (Member && v10)
    {
      if (v4)
      {
        std::to_string(&v195, __val);
        v12 = *&v11->__r_.__value_.__l.__data_;
        v196.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
        *&v196.__r_.__value_.__l.__data_ = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v13 = std::string::append(&v196, "] name = ");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v197.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v197.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        if (v172 >= 0)
        {
          v15 = v171;
        }

        else
        {
          v15 = v171[0];
        }

        if (v172 >= 0)
        {
          v16 = HIBYTE(v172);
        }

        else
        {
          v16 = v171[1];
        }

        v17 = std::string::append(&v197, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v200.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v200.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(&v200, "\n");
        v20 = *&v19->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
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

LABEL_77:
        std::string::append(v4, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v200.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v196.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v195.__r_.__value_.__l.__data_);
        }

        goto LABEL_242;
      }

      goto LABEL_242;
    }

    if (!Member && !v10)
    {
      if (v4)
      {
        std::to_string(&v195, __val);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v196.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v196.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        v35 = std::string::append(&v196, "] name = ");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v197.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v197.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (v172 >= 0)
        {
          v37 = v171;
        }

        else
        {
          v37 = v171[0];
        }

        if (v172 >= 0)
        {
          v38 = HIBYTE(v172);
        }

        else
        {
          v38 = v171[1];
        }

        v39 = std::string::append(&v197, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v200.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v200.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = std::string::append(&v200, "\n");
        v42 = *&v41->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
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

        goto LABEL_77;
      }

      goto LABEL_242;
    }

    sub_29A9CD4BC(&v186, a2);
    sub_29A9CD7BC(v181, a2);
    if (v6)
    {
      memset(&__p, 0, sizeof(__p));
      v167 = 0x8000000000000000;
      if (tinygltf::detail::FindMember(a2, "extensions", &__p))
      {
        Value = tinygltf::detail::GetValue(&__p);
        sub_29A9B5A20(Value, -1, 0x20u, 0, 0, &v200);
        if (SHIBYTE(v189[3]) < 0)
        {
          operator delete(v189[1]);
        }

        *&v189[1] = v200;
      }

      memset(&__p, 0, sizeof(__p));
      v167 = 0x8000000000000000;
      if (tinygltf::detail::FindMember(a2, "extras", &__p))
      {
        v31 = tinygltf::detail::GetValue(&__p);
        sub_29A9B5A20(v31, -1, 0x20u, 0, 0, &v200);
        if (SHIBYTE(v189[0]) < 0)
        {
          operator delete(v188[0]);
        }

        *v188 = *&v200.__r_.__value_.__l.__data_;
        v189[0] = v200.__r_.__value_.__r.__words[2];
      }
    }

    if (Member)
    {
      LODWORD(v194.__r_.__value_.__l.__data_) = -1;
      sub_29A008E78(&__p, "bufferView");
      sub_29A008E78(&v200, "");
      v32 = sub_29A9CEC28(&v194, v4, a2, &__p, 1, &v200);
      if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v200.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v32 & 1) == 0)
      {
        if (v4)
        {
          std::to_string(&v195, __val);
          v69 = *&v68->__r_.__value_.__l.__data_;
          v196.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
          *&v196.__r_.__value_.__l.__data_ = v69;
          v68->__r_.__value_.__l.__size_ = 0;
          v68->__r_.__value_.__r.__words[2] = 0;
          v68->__r_.__value_.__r.__words[0] = 0;
          v70 = std::string::append(&v196, "] name = ");
          v71 = *&v70->__r_.__value_.__l.__data_;
          v197.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
          *&v197.__r_.__value_.__l.__data_ = v71;
          v70->__r_.__value_.__l.__size_ = 0;
          v70->__r_.__value_.__r.__words[2] = 0;
          v70->__r_.__value_.__r.__words[0] = 0;
          if (v172 >= 0)
          {
            v72 = v171;
          }

          else
          {
            v72 = v171[0];
          }

          if (v172 >= 0)
          {
            v73 = HIBYTE(v172);
          }

          else
          {
            v73 = v171[1];
          }

          v74 = std::string::append(&v197, v72, v73);
          v75 = *&v74->__r_.__value_.__l.__data_;
          v200.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v200.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          v76 = std::string::append(&v200, "\n");
          v77 = *&v76->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v77;
          v76->__r_.__value_.__l.__size_ = 0;
          v76->__r_.__value_.__r.__words[2] = 0;
          v76->__r_.__value_.__r.__words[0] = 0;
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

          goto LABEL_77;
        }

LABEL_242:
        v29 = 0;
LABEL_243:
        sub_29A9CB6F0(v171);
        return v29;
      }

      memset(&__p, 0, sizeof(__p));
      sub_29A008E78(&v200, "mimeType");
      memset(&v197, 0, sizeof(v197));
      sub_29A9CD194(&__p, v4, a2, &v200, 0, &v197);
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v200.__r_.__value_.__l.__data_);
      }

      LODWORD(v196.__r_.__value_.__l.__data_) = 0;
      sub_29A008E78(&v200, "width");
      sub_29A008E78(&v197, "");
      sub_29A9CEC28(&v196, v4, a2, &v200, 0, &v197);
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v200.__r_.__value_.__l.__data_);
      }

      LODWORD(v195.__r_.__value_.__l.__data_) = 0;
      sub_29A008E78(&v200, "height");
      sub_29A008E78(&v197, "");
      sub_29A9CEC28(&v195, v4, a2, &v200, 0, &v197);
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v200.__r_.__value_.__l.__data_);
      }

      data = v194.__r_.__value_.__l.__data_;
      std::string::operator=(v180, &__p);
      v173 = __PAIR64__(v195.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_211:
      if (data == -1)
      {
        goto LABEL_257;
      }

      v101 = *a1[6];
      v102 = v101[9];
      if (0xF83E0F83E0F83E1 * ((v101[10] - v102) >> 3) <= data)
      {
        if (!**a1)
        {
          goto LABEL_242;
        }

        sub_29A008864(&__p);
        v126 = sub_29A00911C(&__p.__r_.__value_.__r.__words[2], "image[", 6);
        v127 = MEMORY[0x29C2C1ED0](v126, *a1[1]);
        v128 = sub_29A00911C(v127, "] bufferView ", 14);
        v129 = MEMORY[0x29C2C1ED0](v128, data);
        v130 = sub_29A00911C(v129, " not found in the scene.", 25);
        sub_29A02C5EC(v130);
        std::stringbuf::str();
        v131 = **a1;
        if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v198;
        }

        else
        {
          v132 = v198.__r_.__value_.__r.__words[0];
        }

        if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v133 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v133 = v198.__r_.__value_.__l.__size_;
        }
      }

      else
      {
        v103 = v102 + 264 * data;
        v104 = *(v103 + 24);
        v106 = v101 + 6;
        v105 = v101[6];
        if (0xF83E0F83E0F83E1 * ((v106[1] - v105) >> 3) > v104)
        {
          v107 = *(v103 + 32);
          v108 = v105 + 264 * v104;
          v109 = *(v108 + 24);
          v110 = *(v108 + 32);
          v111 = (v108 + 24);
          if (v107 >= v110 - v109)
          {
            if (!**a1)
            {
              goto LABEL_242;
            }

            sub_29A008864(&__p);
            v141 = sub_29A00911C(&__p.__r_.__value_.__r.__words[2], "image[", 6);
            v142 = MEMORY[0x29C2C1ED0](v141, *a1[1]);
            v143 = sub_29A00911C(v142, "] bufferView ", 14);
            v144 = MEMORY[0x29C2C1ED0](v143, data);
            v145 = sub_29A00911C(v144, " indexed out of bounds of its buffer.", 38);
            sub_29A02C5EC(v145);
            std::stringbuf::str();
            v123 = **a1;
            if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v124 = &v198;
            }

            else
            {
              v124 = v198.__r_.__value_.__r.__words[0];
            }

            if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v125 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v125 = v198.__r_.__value_.__l.__size_;
            }

            goto LABEL_252;
          }

          if (*(v103 + 40) + v107 > v110 - v109)
          {
            if (!**a1)
            {
              goto LABEL_242;
            }

            sub_29A008864(&__p);
            v112 = sub_29A00911C(&__p.__r_.__value_.__r.__words[2], "image[", 6);
            v113 = MEMORY[0x29C2C1ED0](v112, *a1[1]);
            v114 = sub_29A00911C(v113, "] bufferView ", 14);
            v115 = MEMORY[0x29C2C1ED0](v114, data);
            v116 = sub_29A00911C(v115, " byteLength ", 13);
            v117 = MEMORY[0x29C2C1F00](v116, *(v103 + 40));
            v118 = sub_29A00911C(v117, " extends beyond buffer bounds (buffer size: ", 44);
            v119 = MEMORY[0x29C2C1F00](v118, v111[1] - *v111);
            v120 = sub_29A00911C(v119, ", offset: ", 10);
            v121 = MEMORY[0x29C2C1F00](v120, *(v103 + 32));
            v122 = sub_29A00911C(v121, ").", 2);
            sub_29A02C5EC(v122);
            std::stringbuf::str();
            v123 = **a1;
            if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v124 = &v198;
            }

            else
            {
              v124 = v198.__r_.__value_.__r.__words[0];
            }

            if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v125 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v125 = v198.__r_.__value_.__l.__size_;
            }

LABEL_252:
            std::string::append(v123, v124, v125);
            if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v198.__r_.__value_.__l.__data_);
            }

            sub_29A008B0C(&__p);
            goto LABEL_242;
          }

          if (!v5[44])
          {
            v161 = **a1;
            if (v161)
            {
              std::string::append(v161, "No LoadImageData callback specified.\n");
            }

            goto LABEL_242;
          }

          LODWORD(v162) = *(v103 + 40);
          if (!sub_29A9E091C((v5 + 41), v171, *a1[1], **a1, *a1[2], v173, SHIDWORD(v173), v109 + v107, v162, *a1[5]))
          {
            goto LABEL_242;
          }

LABEL_257:
          v146 = *a1[6];
          v147 = *(v146 + 200);
          if (v147 >= *(v146 + 208))
          {
            v148 = sub_29A9E09A8(v146 + 192, v171);
          }

          else
          {
            v148 = sub_29A9E0AEC(v147, v171) + 328;
          }

          *(v146 + 200) = v148;
          ++*a1[1];
          v29 = 1;
          goto LABEL_243;
        }

        if (!**a1)
        {
          goto LABEL_242;
        }

        sub_29A008864(&__p);
        v134 = sub_29A00911C(&__p.__r_.__value_.__r.__words[2], "image[", 6);
        v135 = MEMORY[0x29C2C1ED0](v134, *a1[1]);
        v136 = sub_29A00911C(v135, "] buffer ", 10);
        v137 = MEMORY[0x29C2C1ED0](v136, *(v103 + 24));
        v138 = sub_29A00911C(v137, " not found in the scene.", 25);
        sub_29A02C5EC(v138);
        std::stringbuf::str();
        v131 = **a1;
        if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v198;
        }

        else
        {
          v132 = v198.__r_.__value_.__r.__words[0];
        }

        if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v133 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v133 = v198.__r_.__value_.__l.__size_;
        }
      }

      std::string::append(v131, v132, v133);
      if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v198.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9528];
      v139 = *(MEMORY[0x29EDC9528] + 72);
      *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
      __p.__r_.__value_.__r.__words[2] = v139;
      v167 = MEMORY[0x29EDC9570] + 16;
      if (v169 < 0)
      {
        operator delete(v168[7].__locale_);
      }

      v167 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v168);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](&v170);
      goto LABEL_242;
    }

    memset(&__p, 0, sizeof(__p));
    memset(&v200, 0, sizeof(v200));
    sub_29A008E78(&v197, "uri");
    memset(&v196, 0, sizeof(v196));
    v43 = sub_29A9CD194(&__p, &v200, a2, &v197, 1, &v196);
    if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v196.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    if ((v43 & 1) == 0)
    {
      if (v4)
      {
        std::to_string(&v193, __val);
        v57 = *&v56->__r_.__value_.__l.__data_;
        v194.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
        *&v194.__r_.__value_.__l.__data_ = v57;
        v56->__r_.__value_.__l.__size_ = 0;
        v56->__r_.__value_.__r.__words[2] = 0;
        v56->__r_.__value_.__r.__words[0] = 0;
        v58 = std::string::append(&v194, "] name = ");
        v59 = *&v58->__r_.__value_.__l.__data_;
        v195.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&v195.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        if (v172 >= 0)
        {
          v60 = v171;
        }

        else
        {
          v60 = v171[0];
        }

        if (v172 >= 0)
        {
          v61 = HIBYTE(v172);
        }

        else
        {
          v61 = v171[1];
        }

        v62 = std::string::append(&v195, v60, v61);
        v63 = *&v62->__r_.__value_.__l.__data_;
        v196.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
        *&v196.__r_.__value_.__l.__data_ = v63;
        v62->__r_.__value_.__l.__size_ = 0;
        v62->__r_.__value_.__r.__words[2] = 0;
        v62->__r_.__value_.__r.__words[0] = 0;
        v64 = std::string::append(&v196, ".\n");
        v65 = *&v64->__r_.__value_.__l.__data_;
        v197.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&v197.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v197;
        }

        else
        {
          v66 = v197.__r_.__value_.__r.__words[0];
        }

        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v67 = v197.__r_.__value_.__l.__size_;
        }

        std::string::append(v4, v66, v67);
        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v196.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v195.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v193.__r_.__value_.__l.__data_);
        }
      }

      v43 = 0;
LABEL_206:
      if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v200.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_242;
      }

      goto LABEL_211;
    }

    memset(&v197, 0, sizeof(v197));
    if (tinygltf::IsDataURI(&__p.__r_.__value_.__l.__data_))
    {
      if ((tinygltf::DecodeDataURI(&v197, v180, &__p, 0, 0) & 1) == 0)
      {
        if (v4)
        {
          std::to_string(&v192, __val);
          v44 = std::string::insert(&v192, 0, "Failed to decode 'uri' for image[");
          v45 = *&v44->__r_.__value_.__l.__data_;
          v193.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v193.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v193, "] name = ");
          v47 = *&v46->__r_.__value_.__l.__data_;
          v194.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v194.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          if (v172 >= 0)
          {
            v48 = v171;
          }

          else
          {
            v48 = v171[0];
          }

          if (v172 >= 0)
          {
            v49 = HIBYTE(v172);
          }

          else
          {
            v49 = v171[1];
          }

          v50 = std::string::append(&v194, v48, v49);
          v51 = *&v50->__r_.__value_.__l.__data_;
          v195.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
          *&v195.__r_.__value_.__l.__data_ = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          v52 = std::string::append(&v195, "\n");
          v53 = *&v52->__r_.__value_.__l.__data_;
          v196.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
          *&v196.__r_.__value_.__l.__data_ = v53;
          v52->__r_.__value_.__l.__size_ = 0;
          v52->__r_.__value_.__r.__words[2] = 0;
          v52->__r_.__value_.__r.__words[0] = 0;
          if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = &v196;
          }

          else
          {
            v54 = v196.__r_.__value_.__r.__words[0];
          }

          if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = HIBYTE(v196.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v55 = v196.__r_.__value_.__l.__size_;
          }

          std::string::append(v4, v54, v55);
          if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v196.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v195.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v194.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v193.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v192.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_203;
      }

LABEL_198:
      if (v5[44])
      {
        if (v197.__r_.__value_.__l.__size_ == v197.__r_.__value_.__r.__words[0])
        {
          sub_29A792748();
        }

        LODWORD(v162) = LODWORD(v197.__r_.__value_.__r.__words[1]) - LODWORD(v197.__r_.__value_.__l.__data_);
        v43 = sub_29A9E091C((v5 + 41), v171, __val, v4, v164, 0, 0, v197.__r_.__value_.__l.__data_, v162, v163);
        goto LABEL_204;
      }

      if (v4)
      {
        std::string::append(v4, "No LoadImageData callback specified.\n");
      }

LABEL_203:
      v43 = 0;
LABEL_204:
      if (v197.__r_.__value_.__r.__words[0])
      {
        v197.__r_.__value_.__l.__size_ = v197.__r_.__value_.__r.__words[0];
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      goto LABEL_206;
    }

    std::string::operator=(&v180[1], &__p);
    memset(&v196, 0, sizeof(v196));
    if (sub_29A9C9238((v5 + 36), &__p, &v196, v5[40]))
    {
      if (sub_29A9DB338(&v197, v4, v164, &v196, v8, 0, 0, 0, v7, v5 + 11))
      {
        if (v197.__r_.__value_.__r.__words[0] == v197.__r_.__value_.__l.__size_)
        {
          if (v164)
          {
            std::to_string(&v191, __val);
            v149 = std::string::insert(&v191, 0, "Image data is empty for image[");
            v150 = *&v149->__r_.__value_.__l.__data_;
            v192.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
            *&v192.__r_.__value_.__l.__data_ = v150;
            v149->__r_.__value_.__l.__size_ = 0;
            v149->__r_.__value_.__r.__words[2] = 0;
            v149->__r_.__value_.__r.__words[0] = 0;
            v151 = std::string::append(&v192, "] name = ");
            v152 = *&v151->__r_.__value_.__l.__data_;
            v193.__r_.__value_.__r.__words[2] = v151->__r_.__value_.__r.__words[2];
            *&v193.__r_.__value_.__l.__data_ = v152;
            v151->__r_.__value_.__l.__size_ = 0;
            v151->__r_.__value_.__r.__words[2] = 0;
            v151->__r_.__value_.__r.__words[0] = 0;
            if (v172 >= 0)
            {
              v153 = v171;
            }

            else
            {
              v153 = v171[0];
            }

            if (v172 >= 0)
            {
              v154 = HIBYTE(v172);
            }

            else
            {
              v154 = v171[1];
            }

            v155 = std::string::append(&v193, v153, v154);
            v156 = *&v155->__r_.__value_.__l.__data_;
            v194.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
            *&v194.__r_.__value_.__l.__data_ = v156;
            v155->__r_.__value_.__l.__size_ = 0;
            v155->__r_.__value_.__r.__words[2] = 0;
            v155->__r_.__value_.__r.__words[0] = 0;
            v157 = std::string::append(&v194, " \n");
            v158 = *&v157->__r_.__value_.__l.__data_;
            v195.__r_.__value_.__r.__words[2] = v157->__r_.__value_.__r.__words[2];
            *&v195.__r_.__value_.__l.__data_ = v158;
            v157->__r_.__value_.__l.__size_ = 0;
            v157->__r_.__value_.__r.__words[2] = 0;
            v157->__r_.__value_.__r.__words[0] = 0;
            if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v159 = &v195;
            }

            else
            {
              v159 = v195.__r_.__value_.__r.__words[0];
            }

            if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v160 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v160 = v195.__r_.__value_.__l.__size_;
            }

            std::string::append(v164, v159, v160);
            if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v195.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v194.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v193.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v192.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v191.__r_.__value_.__l.__data_);
            }
          }

          v43 = 0;
          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

LABEL_195:
        if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v196.__r_.__value_.__l.__data_);
        }

        if ((v78 & 1) == 0)
        {
          goto LABEL_204;
        }

        goto LABEL_198;
      }

      if (v164)
      {
        std::to_string(&v191, __val);
        v91 = std::string::insert(&v191, 0, "Failed to load external 'uri' for image[");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v192.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v192.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        v93 = std::string::append(&v192, "] name = ");
        v94 = *&v93->__r_.__value_.__l.__data_;
        v193.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
        *&v193.__r_.__value_.__l.__data_ = v94;
        v93->__r_.__value_.__l.__size_ = 0;
        v93->__r_.__value_.__r.__words[2] = 0;
        v93->__r_.__value_.__r.__words[0] = 0;
        if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &v196;
        }

        else
        {
          v95 = v196.__r_.__value_.__r.__words[0];
        }

        if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = HIBYTE(v196.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v96 = v196.__r_.__value_.__l.__size_;
        }

        v97 = std::string::append(&v193, v95, v96);
        v98 = *&v97->__r_.__value_.__l.__data_;
        v194.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
        *&v194.__r_.__value_.__l.__data_ = v98;
        v97->__r_.__value_.__l.__size_ = 0;
        v97->__r_.__value_.__r.__words[2] = 0;
        v97->__r_.__value_.__r.__words[0] = 0;
        v99 = std::string::append(&v194, "\n");
        v100 = *&v99->__r_.__value_.__l.__data_;
        v195.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
        *&v195.__r_.__value_.__l.__data_ = v100;
        v99->__r_.__value_.__l.__size_ = 0;
        v99->__r_.__value_.__r.__words[2] = 0;
        v99->__r_.__value_.__r.__words[0] = 0;
        if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v89 = &v195;
        }

        else
        {
          v89 = v195.__r_.__value_.__r.__words[0];
        }

        if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v90 = v195.__r_.__value_.__l.__size_;
        }

LABEL_184:
        std::string::append(v164, v89, v90);
        if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v195.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v193.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v192.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v191.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (v164)
    {
      std::to_string(&v191, __val);
      v79 = std::string::insert(&v191, 0, "Failed to decode 'uri' for image[");
      v80 = *&v79->__r_.__value_.__l.__data_;
      v192.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&v192.__r_.__value_.__l.__data_ = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      v81 = std::string::append(&v192, "] name = ");
      v82 = *&v81->__r_.__value_.__l.__data_;
      v193.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
      *&v193.__r_.__value_.__l.__data_ = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      if (v172 >= 0)
      {
        v83 = v171;
      }

      else
      {
        v83 = v171[0];
      }

      if (v172 >= 0)
      {
        v84 = HIBYTE(v172);
      }

      else
      {
        v84 = v171[1];
      }

      v85 = std::string::append(&v193, v83, v84);
      v86 = *&v85->__r_.__value_.__l.__data_;
      v194.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
      *&v194.__r_.__value_.__l.__data_ = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      v87 = std::string::append(&v194, "\n");
      v88 = *&v87->__r_.__value_.__l.__data_;
      v195.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
      *&v195.__r_.__value_.__l.__data_ = v88;
      v87->__r_.__value_.__l.__size_ = 0;
      v87->__r_.__value_.__r.__words[2] = 0;
      v87->__r_.__value_.__r.__words[0] = 0;
      if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = &v195;
      }

      else
      {
        v89 = v195.__r_.__value_.__r.__words[0];
      }

      if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v90 = v195.__r_.__value_.__l.__size_;
      }

      goto LABEL_184;
    }

    v78 = 0;
    v43 = 1;
    goto LABEL_195;
  }

  if (**a1)
  {
    std::to_string(&v198, *a1[1]);
    v23 = std::string::insert(&v198, 0, "image[");
    v24 = *&v23->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&__p, "] is not a JSON object.");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v172 = v25->__r_.__value_.__r.__words[2];
    *v171 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (v172 >= 0)
    {
      v27 = v171;
    }

    else
    {
      v27 = v171[0];
    }

    if (v172 >= 0)
    {
      v28 = HIBYTE(v172);
    }

    else
    {
      v28 = v171[1];
    }

    std::string::append(**a1, v27, v28);
    if (SHIBYTE(v172) < 0)
    {
      operator delete(v171[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v198.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

uint64_t sub_29A9E091C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v13 = a7;
  v14 = a6;
  v12 = a8;
  v10 = *(a1 + 24);
  if (!v10)
  {
    sub_29A0DDCB0();
  }

  return (*(*v10 + 48))(v10, &v18, &v17, &v16, &v15, &v14, &v13, &v12, &a9, &a10);
}

uint64_t sub_29A9E09A8(uint64_t a1, __int128 *a2)
{
  v2 = 0x8F9C18F9C18F9C19 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xC7CE0C7CE0C7CELL)
  {
    sub_29A00C9A4();
  }

  if (0x1F3831F3831F3832 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F3831F3831F3832 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F9C18F9C18F9C19 * ((*(a1 + 16) - *a1) >> 3) >= 0x63E7063E7063E7)
  {
    v6 = 0xC7CE0C7CE0C7CELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9E0C10(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 328 * v2);
  *(&v16 + 1) = v7 + 328 * v6;
  sub_29A9E0AEC(v15, a2);
  *&v16 = v15 + 328;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E0C5C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E0CCC(&v14);
  return v13;
}

void sub_29A9E0AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E0CCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E0AEC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 10);
  *(a1 + 24) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a1 + 72) = *(a2 + 18);
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 80) = v6;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = 0;
  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v7;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  sub_29A9CE03C(a1 + 128, (a2 + 8));
  *(a1 + 248) = *(a2 + 31);
  v8 = a1 + 256;
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  *(a1 + 256) = v9;
  *(a1 + 264) = v10;
  if (v10)
  {
    *(v9 + 16) = v8;
    *(a2 + 31) = a2 + 16;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
  }

  else
  {
    *(a1 + 248) = v8;
  }

  v11 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v11;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  *(a2 + 34) = 0;
  v12 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *(a1 + 296) = v12;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  *(a2 + 37) = 0;
  *(a1 + 320) = *(a2 + 320);
  return a1;
}

void *sub_29A9E0C10(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC7CE0C7CE0C7CFLL)
  {
    sub_29A00C8B8();
  }

  return operator new(328 * a2);
}

void sub_29A9E0C5C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E0AEC(a4, v7);
      v7 = (v7 + 328);
      a4 = v8 + 328;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CB6F0(v6);
      v6 += 328;
    }
  }
}

uint64_t sub_29A9E0CCC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 328;
    sub_29A9CB6F0(i - 328);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E0D1C(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A75C5C4(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[14 * v2];
  *(&v16 + 1) = &v7[14 * v6];
  sub_29A9E0E60(v15, a2);
  *&v16 = v15 + 14;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E0F1C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E0F8C(&v14);
  return v13;
}

void sub_29A9E0E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E0F8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E0E60(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 3);
  sub_29A9CE03C(a1 + 32, (a2 + 2));
  *(a1 + 152) = *(a2 + 19);
  v5 = a2 + 10;
  v6 = *(a2 + 20);
  *(a1 + 160) = v6;
  v7 = a1 + 160;
  v8 = *(a2 + 21);
  *(a1 + 168) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 19) = v5;
    *v5 = 0;
    *(a2 + 21) = 0;
  }

  else
  {
    *(a1 + 152) = v7;
  }

  v9 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v9;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  *(a2 + 22) = 0;
  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v10;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a2 + 25) = 0;
  return a1;
}

void sub_29A9E0F1C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E0E60(a4, v7);
      v7 += 14;
      a4 = v8 + 224;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CB80C(v6);
      v6 += 224;
    }
  }
}

uint64_t sub_29A9E0F8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 224;
    sub_29A9CB80C(i - 224);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E0FDC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x9D89D89D89D89DLL)
  {
    sub_29A00C9A4();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 5);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 5)) >= 0x4EC4EC4EC4EC4ELL)
  {
    v6 = 0x9D89D89D89D89DLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9E1258(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[416 * v2];
  *(&v16 + 1) = &v7[416 * v6];
  sub_29A9E1120(v15, a2);
  *&v16 = v15 + 416;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A9E12A4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E1314(&v14);
  return v13;
}

void sub_29A9E110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E1314(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E1120(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  sub_29A9CE03C(a1 + 32, a2 + 32);
  *(a1 + 152) = *(a2 + 152);
  v5 = (a2 + 160);
  v6 = *(a2 + 160);
  *(a1 + 160) = v6;
  v7 = a1 + 160;
  v8 = *(a2 + 168);
  *(a1 + 168) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 152) = v5;
    *v5 = 0;
    *(a2 + 168) = 0;
  }

  else
  {
    *(a1 + 152) = v7;
  }

  sub_29A9CE03C(a1 + 176, a2 + 176);
  *(a1 + 296) = *(a2 + 296);
  v9 = a1 + 304;
  v10 = *(a2 + 304);
  v11 = *(a2 + 312);
  *(a1 + 304) = v10;
  *(a1 + 312) = v11;
  if (v11)
  {
    *(v10 + 16) = v9;
    *(a2 + 296) = a2 + 304;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
  }

  else
  {
    *(a1 + 296) = v9;
  }

  v12 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v12;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 320) = 0;
  v13 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 344) = v13;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 344) = 0;
  v14 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v14;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 368) = 0;
  v15 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 392) = v15;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  return a1;
}

void *sub_29A9E1258(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x9D89D89D89D89ELL)
  {
    sub_29A00C8B8();
  }

  return operator new(416 * a2);
}

void sub_29A9E12A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E1120(a4, v7);
      v7 += 416;
      a4 = v8 + 416;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CC464(v6);
      v6 += 416;
    }
  }
}

uint64_t sub_29A9E1314(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 416;
    sub_29A9CC464(i - 416);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E1364(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A75C5C4(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[224 * v2];
  *(&v16 + 1) = &v7[224 * v6];
  sub_29A9E14A8(v15, a2);
  *&v16 = v15 + 224;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29A9E1564(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E15D4(&v14);
  return v13;
}

void sub_29A9E1494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E15D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E14A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  sub_29A9CE03C(a1 + 32, a2 + 32);
  *(a1 + 152) = *(a2 + 152);
  v5 = (a2 + 160);
  v6 = *(a2 + 160);
  *(a1 + 160) = v6;
  v7 = a1 + 160;
  v8 = *(a2 + 168);
  *(a1 + 168) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 152) = v5;
    *v5 = 0;
    *(a2 + 168) = 0;
  }

  else
  {
    *(a1 + 152) = v7;
  }

  v9 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v9;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = 0;
  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0;
  return a1;
}

void sub_29A9E1564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E14A8(a4, v7);
      v7 += 224;
      a4 = v8 + 224;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CC378(v6);
      v6 += 224;
    }
  }
}

uint64_t sub_29A9E15D4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 224;
    sub_29A9CC378(i - 224);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E1624(uint64_t a1, __int128 *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9DC350(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 264 * v2);
  *(&v16 + 1) = v7 + 264 * v6;
  sub_29A9E1768(v15, a2);
  *&v16 = v15 + 264;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E185C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E18CC(&v14);
  return v13;
}

void sub_29A9E1754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E18CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E1768(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  sub_29A9CE03C(a1 + 72, a2 + 72);
  *(a1 + 192) = *(a2 + 24);
  v5 = a2 + 25;
  v6 = *(a2 + 25);
  *(a1 + 200) = v6;
  v7 = a1 + 200;
  v8 = *(a2 + 26);
  *(a1 + 208) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 24) = v5;
    *v5 = 0;
    *(a2 + 26) = 0;
  }

  else
  {
    *(a1 + 192) = v7;
  }

  v9 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v9;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 27) = 0;
  v10 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v10;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 30) = 0;
  return a1;
}

void sub_29A9E185C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E1768(a4, v7);
      v7 = (v7 + 264);
      a4 = v8 + 264;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CC264(v6);
      v6 += 264;
    }
  }
}

uint64_t sub_29A9E18CC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    sub_29A9CC264(i - 264);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E191C(uint64_t a1, __int128 *a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_29A00C9A4();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A099524(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 248 * v2);
  *(&v16 + 1) = v7 + 248 * v6;
  sub_29A9E1A60(v15, a2);
  *&v16 = v15 + 248;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E1B38(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E1BA8(&v14);
  return v13;
}

void sub_29A9E1A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E1BA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E1A60(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  sub_29A9CE03C(a1 + 56, a2 + 56);
  *(a1 + 176) = *(a2 + 22);
  v6 = a2 + 23;
  v7 = *(a2 + 23);
  *(a1 + 184) = v7;
  v8 = a1 + 184;
  v9 = *(a2 + 24);
  *(a1 + 192) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 22) = v6;
    *v6 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    *(a1 + 176) = v8;
  }

  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v10;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  *(a2 + 25) = 0;
  v11 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v11;
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  *(a2 + 28) = 0;
  return a1;
}

void sub_29A9E1B38(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E1A60(a4, v7);
      v7 = (v7 + 248);
      a4 = v8 + 248;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CB5F4(v6);
      v6 += 248;
    }
  }
}

uint64_t sub_29A9E1BA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    sub_29A9CB5F4(i - 248);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E1BF8(uint64_t a1, __int128 *a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_29A00C9A4();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A1DFB94(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 232 * v2);
  *(&v16 + 1) = v7 + 232 * v6;
  sub_29A9E1D3C(v15, a2);
  *&v16 = v15 + 232;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E1DF8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E1E68(&v14);
  return v13;
}

void sub_29A9E1D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E1E68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E1D3C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 24);
  sub_29A9CE03C(a1 + 40, a2 + 40);
  *(a1 + 160) = *(a2 + 20);
  v5 = a2 + 21;
  v6 = *(a2 + 21);
  *(a1 + 168) = v6;
  v7 = a1 + 168;
  v8 = *(a2 + 22);
  *(a1 + 176) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 20) = v5;
    *v5 = 0;
    *(a2 + 22) = 0;
  }

  else
  {
    *(a1 + 160) = v7;
  }

  v9 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 184) = v9;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 23) = 0;
  v10 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 208) = v10;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 26) = 0;
  return a1;
}

void sub_29A9E1DF8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E1D3C(a4, v7);
      v7 = (v7 + 232);
      a4 = v8 + 232;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CB508(v6);
      v6 += 232;
    }
  }
}

uint64_t sub_29A9E1E68(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    sub_29A9CB508(i - 232);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E1EB8(uint64_t a1, __int128 *a2)
{
  v2 = 0x82FA0BE82FA0BE83 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x5F417D05F417D0)
  {
    sub_29A00C9A4();
  }

  if (0x5F417D05F417D06 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5F417D05F417D06 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x82FA0BE82FA0BE83 * ((*(a1 + 16) - *a1) >> 4) >= 0x2FA0BE82FA0BE8)
  {
    v6 = 0x5F417D05F417D0;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9E218C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[43 * v2];
  *(&v16 + 1) = &v7[43 * v6];
  sub_29A9E1FFC(v15, a2);
  *&v16 = v15 + 43;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E21D8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E2248(&v14);
  return v13;
}

void sub_29A9E1FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E2248(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E1FFC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  sub_29A9E20E8(a1 + 48, (a2 + 3));
  sub_29A9E20E8(a1 + 272, (a2 + 17));
  *(a1 + 496) = *(a2 + 62);
  v6 = a1 + 504;
  v7 = *(a2 + 63);
  v8 = *(a2 + 64);
  *(a1 + 504) = v7;
  *(a1 + 512) = v8;
  if (v8)
  {
    *(v7 + 16) = v6;
    *(a2 + 62) = a2 + 504;
    *(a2 + 63) = 0;
    *(a2 + 64) = 0;
  }

  else
  {
    *(a1 + 496) = v6;
  }

  sub_29A9CE03C(a1 + 520, a2 + 520);
  v9 = a2[40];
  *(a1 + 656) = *(a2 + 82);
  *(a1 + 640) = v9;
  a2[40] = 0u;
  *(a2 + 82) = 0;
  v10 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 85);
  *(a1 + 664) = v10;
  *(a2 + 85) = 0;
  *(a2 + 84) = 0;
  *(a2 + 83) = 0;
  return a1;
}

uint64_t sub_29A9E20E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = (a2 + 40);
  v6 = *(a2 + 40);
  *(a1 + 40) = v6;
  v7 = a1 + 40;
  v8 = *(a2 + 48);
  *(a1 + 48) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 32) = v5;
    *v5 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    *(a1 + 32) = v7;
  }

  sub_29A9CE03C(a1 + 56, a2 + 56);
  v9 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v9;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0;
  return a1;
}

void *sub_29A9E218C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x5F417D05F417D1)
  {
    sub_29A00C8B8();
  }

  return operator new(688 * a2);
}

void sub_29A9E21D8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E1FFC(a4, v7);
      v7 += 43;
      a4 = v8 + 688;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CB3A4(v6);
      v6 += 688;
    }
  }
}

uint64_t sub_29A9E2248(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 688;
    sub_29A9CB3A4(i - 688);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E2298(uint64_t a1, __int128 *a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1D6)
  {
    sub_29A00C9A4();
  }

  if (0x9F79B47582192E2ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4FBCDA3AC10C9715 * ((*(a1 + 16) - *a1) >> 3)) >= 0x4325C53EF368EBLL)
  {
    v6 = 0x864B8A7DE6D1D6;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9E2588(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 488 * v2);
  *(&v16 + 1) = v7 + 488 * v6;
  sub_29A9E23DC(v15, a2);
  *&v16 = v15 + 488;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E25D4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E2644(&v14);
  return v13;
}

void sub_29A9E23C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E2644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E23DC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a1 + 48) = *(a2 + 6);
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v5;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  *(a1 + 80) = *(a2 + 10);
  sub_29A9E24E4(a1 + 88, a2 + 88);
  *(a1 + 296) = *(a2 + 37);
  v6 = a1 + 304;
  v7 = *(a2 + 38);
  v8 = *(a2 + 39);
  *(a1 + 304) = v7;
  *(a1 + 312) = v8;
  if (v8)
  {
    *(v7 + 16) = v6;
    *(a2 + 37) = a2 + 19;
    *(a2 + 38) = 0;
    *(a2 + 39) = 0;
  }

  else
  {
    *(a1 + 296) = v6;
  }

  sub_29A9CE03C(a1 + 320, (a2 + 20));
  v9 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *(a1 + 440) = v9;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  *(a2 + 57) = 0;
  v10 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v10;
  *(a2 + 59) = 0;
  *(a2 + 60) = 0;
  *(a2 + 58) = 0;
  return a1;
}

uint64_t sub_29A9E24E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = (a2 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = a1 + 24;
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 16) = v4;
    *v4 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v6;
  }

  sub_29A9CE03C(a1 + 40, a2 + 40);
  v8 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v8;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v9 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v9;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = 0;
  return a1;
}

void *sub_29A9E2588(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x864B8A7DE6D1D7)
  {
    sub_29A00C8B8();
  }

  return operator new(488 * a2);
}

void sub_29A9E25D4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E23DC(a4, v7);
      v7 = (v7 + 488);
      a4 = v8 + 488;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CE990(v6);
      v6 += 488;
    }
  }
}

uint64_t sub_29A9E2644(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 488;
    sub_29A9CE990(i - 488);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E2694(uint64_t a1, __int128 *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x7C1F07C1F07C1FLL)
  {
    sub_29A00C9A4();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 4)) >= 0x3E0F83E0F83E0FLL)
  {
    v6 = 0x7C1F07C1F07C1FLL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A9E298C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[33 * v2];
  *(&v16 + 1) = &v7[33 * v6];
  sub_29A9E27D8(v15, a2);
  *&v16 = v15 + 33;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E29D8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E2A48(&v14);
  return v13;
}

void sub_29A9E27C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E2A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E27D8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v6;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 5) = 0;
  v7 = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 64) = v7;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  sub_29A9E28E0(a1 + 88, (a2 + 88));
  *(a1 + 328) = *(a2 + 82);
  *(a1 + 336) = *(a2 + 42);
  v8 = a1 + 344;
  v9 = *(a2 + 43);
  v10 = *(a2 + 44);
  *(a1 + 344) = v9;
  *(a1 + 352) = v10;
  if (v10)
  {
    *(v9 + 16) = v8;
    *(a2 + 42) = a2 + 344;
    *(a2 + 43) = 0;
    *(a2 + 44) = 0;
  }

  else
  {
    *(a1 + 336) = v8;
  }

  sub_29A9CE03C(a1 + 360, a2 + 360);
  v11 = a2[30];
  *(a1 + 496) = *(a2 + 62);
  *(a1 + 480) = v11;
  *(a2 + 60) = 0;
  *(a2 + 61) = 0;
  *(a2 + 62) = 0;
  v12 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 65);
  *(a1 + 504) = v12;
  *(a2 + 65) = 0;
  *(a2 + 63) = 0;
  *(a2 + 64) = 0;
  return a1;
}

uint64_t sub_29A9E28E0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = *(a2 + 6);
  v6 = a2 + 7;
  v7 = *(a2 + 7);
  *(a1 + 56) = v7;
  v8 = a1 + 56;
  v9 = *(a2 + 8);
  *(a1 + 64) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 6) = v6;
    *v6 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *(a1 + 48) = v8;
  }

  sub_29A9CE03C(a1 + 72, a2 + 72);
  v10 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v10;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  v11 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v11;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 27) = 0;
  return a1;
}

void *sub_29A9E298C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7C1F07C1F07C20)
  {
    sub_29A00C8B8();
  }

  return operator new(528 * a2);
}

void sub_29A9E29D8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E27D8(a4, v7);
      v7 += 33;
      a4 = v8 + 528;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CEEB8(v6);
      v6 += 528;
    }
  }
}

uint64_t sub_29A9E2A48(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 528;
    sub_29A9CEEB8(i - 528);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A9E2A98(uint64_t a1, __int128 *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    sub_29A00C9A4();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A4BBBB4(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[17 * v2];
  *(&v16 + 1) = &v7[17 * v6];
  sub_29A9E2BC4(v15, a2);
  *&v16 = v15 + 17;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A9E2CB0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A9E2D20(&v14);
  return v13;
}

void sub_29A9E2BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A9E2D20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E2BC4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(a1 + 48) = *(a2 + 12);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v6;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = 0;
  sub_29A9CE03C(a1 + 80, (a2 + 5));
  *(a1 + 200) = *(a2 + 25);
  v7 = a2 + 13;
  v8 = *(a2 + 26);
  *(a1 + 208) = v8;
  v9 = a1 + 208;
  v10 = *(a2 + 27);
  *(a1 + 216) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    *(a2 + 25) = v7;
    *v7 = 0;
    *(a2 + 27) = 0;
  }

  else
  {
    *(a1 + 200) = v9;
  }

  v11 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v11;
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  *(a2 + 28) = 0;
  v12 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v12;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  *(a2 + 31) = 0;
  return a1;
}

void sub_29A9E2CB0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_29A9E2BC4(a4, v7);
      v7 += 17;
      a4 = v8 + 272;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_29A9CEFA0(v6);
      v6 += 272;
    }
  }
}

uint64_t sub_29A9E2D20(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    sub_29A9CEFA0(i - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A9E2D70(void *a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  sub_29A9CF49C(a1 + 1, 0);
  *a1 = 3;
  a1[1] = sub_29A9E2DD0(a2);
  return a1;
}

void *sub_29A9E2DD0(char **a1)
{
  v2 = operator new(0x18uLL);
  sub_29A008E78(v2, *a1);
  return v2;
}

void *sub_29A9E2E1C(void *a1, unsigned __int8 *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = *a2;
  *a1 = v3;
  if (v3 > 4)
  {
    if (v3 < 8)
    {
      v4 = *(a2 + 1);
      goto LABEL_14;
    }

    if (v3 == 8)
    {
      v4 = sub_29A9E3304(*(a2 + 1));
      goto LABEL_14;
    }
  }

  else
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v4 = sub_29A9D0560(*(a2 + 1));
      }

      else
      {
        v4 = a2[8];
      }

      goto LABEL_14;
    }

    if (v3 == 1)
    {
      v4 = sub_29A9E2F08(*(a2 + 1));
      goto LABEL_14;
    }

    if (v3 == 2)
    {
      v4 = sub_29A9E319C(*(a2 + 1));
LABEL_14:
      a1[1] = v4;
    }
  }

  return a1;
}

uint64_t *sub_29A9E2F08(const void ***a1)
{
  v2 = operator new(0x18uLL);
  sub_29A9E2F54(v2, a1);
  return v2;
}

uint64_t *sub_29A9E2F54(uint64_t *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A9E2FAC(a1, *a2, a2 + 1);
  return a1;
}

uint64_t *sub_29A9E2FAC(uint64_t *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A9E3034(v5, (v5 + 8), v4 + 4, v4 + 2);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29A9E3034(char *a1, uint64_t a2, const void **a3, __int128 *a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29A9E30B8(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

char *sub_29A9E30B8@<X0>(char *a1@<X0>, __int128 *a2@<X1>, char **a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A9E3124(v6 + 32, a2);
  *(a3 + 16) = 1;
  return result;
}

char *sub_29A9E3124(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_29A9E2E1C(__dst + 24, a2 + 24);
  return __dst;
}

void sub_29A9E3180(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A9E319C(uint64_t *a1)
{
  v2 = operator new(0x18uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_29A9E31F8(v2, *a1, a1[1], (a1[1] - *a1) >> 4);
  return v2;
}

void *sub_29A9E31F8(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A9E3280(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A9E3260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A9CFDB4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9E3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29A9E2E1C(a4, v6);
      v6 += 16;
      a4 += 16;
      v7 -= 16;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29A9E32E0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 16);
    do
    {
      v4 = sub_29A9D05CC(v4) - 2;
      v2 += 16;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A9E3304(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_29A8CDED0(v2, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  v2[3] = *(a1 + 24);
  *(v2 + 32) = *(a1 + 32);
  return v2;
}

uint64_t sub_29A9E336C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v8 = a2;
  v10 = (a2 + 24 * a3);
  *a1 = 0;
  *(a1 + 8) = 0;
  v11 = sub_29A9E35D8(a2, v10);
  if ((a4 & 1) == 0)
  {
    if (!((a5 != 1) | v11 & 1))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      sub_29A008E78(v18, "cannot create object from initializer list");
      sub_29A9DA5D8(301, v18, exception);
      __cxa_throw(exception, &unk_2A206D5E8, sub_29A9CA73C);
    }

    v11 = (a5 != 2) & v11;
  }

  if (v11)
  {
    *a1 = 1;
    v12 = operator new(0x18uLL);
    v12[2] = 0;
    v12[1] = 0;
    *v12 = v12 + 1;
    *(a1 + 8) = v12;
    if (a3)
    {
      v13 = 24 * a3;
      do
      {
        v14 = *(v8 + 16);
        if (v14)
        {
          sub_29A9E2E1C(v18, v14);
        }

        else
        {
          v18[0] = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
        }

        sub_29A9E37DC(*(a1 + 8), *(**(&v18[0] + 1) + 8), *(**(&v18[0] + 1) + 8), **(&v18[0] + 1) + 16);
        sub_29A9D05CC(v18);
        v8 += 24;
        v13 -= 24;
      }

      while (v13);
    }
  }

  else
  {
    *a1 = 2;
    v17 = v10;
    *&v18[0] = v8;
    *(a1 + 8) = sub_29A9E3560(v18, &v17);
  }

  return a1;
}

void *sub_29A9E3560(unsigned __int8 ***a1, unsigned __int8 ***a2)
{
  v4 = operator new(0x18uLL);
  v5 = *a1;
  v6 = *a2;
  v7 = 0xAAAAAAAAAAAAAAABLL * (*a2 - *a1);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  sub_29A9E388C(v4, v5, v6, v7);
  return v4;
}

uint64_t sub_29A9E35D8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  while (1)
  {
    v4 = *(v3 + 16) ? *(v3 + 16) : v3;
    if (*v4 != 2 || *(*(v4 + 8) + 8) - **(v4 + 8) != 32 || *sub_29A9E3668(v4, 0) != 3)
    {
      break;
    }

    v3 += 24;
    if (v3 == a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_29A9E3668(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A9CA714(a1);
    sub_29A9E3754("cannot use operator[] with a numeric argument with ", &v5, &v6);
    sub_29A9CA534(305, &v6, exception);
    __cxa_throw(exception, &unk_2A206D5E8, sub_29A9CA73C);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_29A9E371C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

std::string *sub_29A9E3754@<X0>(const char *a1@<X0>, const char **a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v6 = strlen(a1);
  v7 = strlen(*a2);
  std::string::reserve(a3, v7 + v6);
  std::string::append(a3, a1);
  return std::string::append(a3, *a2);
}

void sub_29A9E37C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_29A9E37DC(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_29A00B0D0(a1, &v11, a2);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    v8 = operator new(0x48uLL);
    v8[2] = *a3;
    *(v8 + 6) = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(v8 + 56) = *a4;
    *a4 = 0;
    *(a4 + 8) = 0;
    sub_29A00B204(a1, v11, v9, v8);
  }

  return v8;
}

void *sub_29A9E388C(void *result, unsigned __int8 **a2, unsigned __int8 **a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A9E3914(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A9E38F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A9CFDB4(&a9);
  _Unwind_Resume(a1);
}

_OWORD *sub_29A9E3914(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29A9E3998(a4, v6);
      v6 += 3;
      ++a4;
      v7 -= 16;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29A9E3974(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 16);
    do
    {
      v4 = sub_29A9D05CC(v4) - 2;
      v2 += 16;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_29A9E3998(_OWORD *a1, unsigned __int8 **a2)
{
  if (a2[2])
  {
    sub_29A9E2E1C(&v4, a2[2]);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    a2[1] = 0;
  }

  *a1 = v4;
  LOBYTE(v4) = 0;
  *(&v4 + 1) = 0;
  sub_29A9D05CC(&v4);
  return a1;
}

double sub_29A9E3A04(uint64_t a1, uint64_t a2)
{
  *(a2 + 104) = 0;
  *(a2 + 96) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = a2 + 96;
  *(a2 + 112) = 0;
  return result;
}

uint64_t sub_29A9E3A2C(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(sub_29A9C9A3C, a2, a3);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::getAssetsPathToken(pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A1746740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746740))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A1746738, "gltfAssetsPath", 0);
    __cxa_guard_release(&qword_2A1746740);
  }

  return &qword_2A1746738;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::getAnimationTracksToken(pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A1746750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746750))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A1746748, "gltfAnimationTracks", 0);
    __cxa_guard_release(&qword_2A1746750);
  }

  return &qword_2A1746748;
}

void pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType::~UsdGltfFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType::UsdGltfFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "gltf", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "1.0.8", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "usd", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29A9E3D20(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::UsdGltfFileFormat(pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens);
  if (!v2)
  {
    v2 = sub_29A9E6434(&pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens);
  if (!v3)
  {
    v3 = sub_29A9E6434(&pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A9E6434(&pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens);
  if (!v5)
  {
    v5 = sub_29A9E6434(&pxrInternal__aapl__pxrReserved__::UsdGltfFileFormatTokens);
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(this, v2, v3 + 1, v4 + 2, EmptyString);
}

void sub_29A9E3EE4(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(v2);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29A9E3F04(int a1)
{
  v2 = sub_29A9E64C0();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29A9E64C0();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F295C88[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::~UsdGltfFileFormat(pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat *this)
{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);

  operator delete(v2);
}

void non-virtual thunk topxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::~UsdGltfFileFormat(pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat *this)
{
  v1 = (this - 112);
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(this);

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);
}

{
  v1 = (this - 112);
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(this);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);

  operator delete(v2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::InitData@<X0>(__int128 **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x80uLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(v4);
  v4[3] = 0u;
  v4[4] = 0u;
  *(v4 + 20) = 1065353216;
  *(v4 + 88) = 0;
  *v4 = &unk_2A206D948;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  *(v4 + 12) = 0;
  *(v4 + 120) = 0;
  v32 = v4;
  sub_29B293C98(&v32);
  v5 = *a1;
  if (*a1 != (a1 + 1))
  {
    do
    {
      sub_29A0196C4(__dst, v5 + 2);
      if (sub_29A9E3F04(0))
      {
        if (v29 >= 0)
        {
          v8 = __dst;
        }

        else
        {
          v8 = __dst[0];
        }

        if (v31 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("FileFormatArg: %s = %s\n", v6, v7, v8, p_p);
      }

      if (v31 < 0)
      {
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(__dst[0]);
      }

      v10 = *(v5 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v5 + 2);
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != a1 + 1);
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v13)
  {
    v13 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v14 = *(v13 + 99) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = (v14 + 16);
    if (*(v14 + 39) < 0)
    {
      v15 = *v15;
    }
  }

  else
  {
    v15 = "";
  }

  sub_29A008E78(__dst, v15);
  v16 = sub_29A9E4454(&v32);
  sub_29A008E78(v26, usdGltf::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v16 + 88), v26);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::getAssetsPathToken(v17);
  v18 = qword_2A1746738 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A1746738 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v19 = (v18 + 16);
    if (*(v18 + 39) < 0)
    {
      v19 = *v19;
    }
  }

  else
  {
    v19 = "";
  }

  sub_29A008E78(__dst, v19);
  v20 = sub_29A9E4454(&v32);
  sub_29A008E78(v26, usdGltf::DEBUG_TAG);
  adobe::usd::argReadString(a1, __dst, v20 + 4, v26);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::getAnimationTracksToken(v21);
  v22 = qword_2A1746748 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A1746748 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v23 = (v22 + 16);
    if (*(v22 + 39) < 0)
    {
      v23 = *v23;
    }
  }

  else
  {
    v23 = "";
  }

  sub_29A008E78(__dst, v23);
  v24 = sub_29A9E4454(&v32);
  sub_29A008E78(v26, usdGltf::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v24 + 120), v26);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(__dst[0]);
  }

  *a2 = v32;
  v32 = 0;
  return sub_29A9E653C(&v32);
}