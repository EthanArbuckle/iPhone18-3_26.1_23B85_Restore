void sub_2982E5358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982E53BC(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982E5488;
  if (*(a1 + 120) == 1)
  {
    v14 = v3;
    v15 = v4;
    v10 = *a2;
    v11 = *(a2 + 2);
    MetricFileMetadataHelper::getSubfieldType((a1 + 16), &v10, a3, &v12);
    *a2 = v12;
    *(a2 + 2) = v13;
    Field = MetadataHandle::getField(a2);
    v5 = sub_2982E5488;
    if (Field)
    {
      v5 = sub_2982E5488;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982E5488;
        if (v8 <= 0x1F)
        {
          return off_2A1EB5CF0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982E54A4(int a1@<W1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
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

void sub_2982E5514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E5578(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2982DE79C();
}

void sub_2982E55C0(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2982E47D0(a1, __p, a4);
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
        sub_2982E4854(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2982F5120(a1, v15 != 0);
        MEMORY[0x29C287A60](__p, v16);
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
          v14 = sub_2982E4944(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2982F5088(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2982E5768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E578C(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      sub_2982E3C80(a2, &v5);
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2982E57F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E580C(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode(*v2);
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          sub_2982DE7D0();
        }

        v13 = v6 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2982E5578(a2, v14);
        }

        *(8 * v11) = v5;
        v8 = 8 * v11 + 8;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      a2[1] = v8;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2982E5928(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E5948(uint64_t a1, unsigned int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2982E47D0(a1, __p, a4);
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
        sub_2982E4854(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2982F5120(a1, v15 != 0);
        MEMORY[0x29C287A60](__p, v16);
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
          v14 = sub_2982E4CC4(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2982F5088(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2982E5AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E5B14(int **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 2;
        v11 = (v9 >> 2) + 1;
        if (v11 >> 62)
        {
          sub_2982DE7D0();
        }

        v12 = v7 - v8;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_2982E6554(a2, v13);
        }

        *(4 * v10) = v6;
        v5 = (4 * v10 + 4);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 4;
      }

      a2[1] = v5;
      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_2982E5C2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E5C4C(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v5 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode(*v2);
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          sub_2982DE7D0();
        }

        v13 = v6 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2982E6554(a2, v14);
        }

        *(4 * v11) = v5;
        v8 = 4 * v11 + 4;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      a2[1] = v8;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2982E5D68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2982E5D88@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      v5 = *v2 != 0;
      result = sub_2982E659C(a2, &v5);
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_2982E5DF4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E5E0C(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2982E47D0(a1, __p, a4);
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
        sub_2982E4854(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2982F5120(a1, v15 != 0);
        MEMORY[0x29C287A60](__p, v16);
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
          v14 = sub_2982E5200(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2982F5088(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2982E5FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E5FD8(uint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *v2;
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          sub_2982DE7D0();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_2982E5578(a2, v13);
        }

        *(8 * v10) = v6;
        v5 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      a2[1] = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2982E60F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E6110(unint64_t **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode(*v2);
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          sub_2982DE7D0();
        }

        v13 = v6 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2982E5578(a2, v14);
        }

        *(8 * v11) = v5;
        v8 = 8 * v11 + 8;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 1);
      }

      a2[1] = v8;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2982E622C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E624C(uint64_t a1, int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2982E47D0(a1, __p, a4);
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
        sub_2982E4854(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2982F5120(a1, v15 != 0);
        MEMORY[0x29C287A60](__p, v16);
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
          v14 = sub_2982E53BC(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2982F5088(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2982E63F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E6418(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v5 = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode(*v2);
      v7 = a2[1];
      v6 = a2[2];
      if (v7 >= v6)
      {
        v9 = *a2;
        v10 = v7 - *a2;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          sub_2982DE7D0();
        }

        v13 = v6 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2982E6554(a2, v14);
        }

        *(4 * v11) = v5;
        v8 = 4 * v11 + 4;
        memcpy(0, v9, v10);
        v15 = *a2;
        *a2 = 0;
        a2[1] = v8;
        a2[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5;
        v8 = (v7 + 4);
      }

      a2[1] = v8;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2982E6534(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E6554(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_2982DE79C();
}

uint64_t sub_2982E659C(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_2982DE7D0();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_2982E6644(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_2982E6644(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_2982E6700(&v2, a2);
    }

    sub_2982DE7D0();
  }

  return result;
}

void sub_2982E66E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E6700(uint64_t a1, uint64_t a2)
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

    sub_2982E5578(a1, v2);
  }

  sub_2982DE7D0();
}

void sub_2982E6744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_2982E67E8(&v18, &v16, &v14, &v13);
}

void sub_2982E67E8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_2982E6878(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_2982E6878(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void sub_2982E6948(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t *a3)
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
        MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
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
  v8 = wis::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v58 = *a2;
  v59 = a2[1].n128_i64[0];
  MetricFileMetadataHelper::getSubfieldType((a3 + 1), &v58, HIDWORD(v8), &v51);
  v58 = *&v51.__r_.__value_.__l.__data_;
  v59 = v51.__r_.__value_.__r.__words[2];
  BuiltinType = MetadataHelper::getBuiltinType((a3 + 1), &v58);
  v12 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType(BuiltinType, v9);
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

          v54.__r_.__value_.__r.__words[0] = this;
          LODWORD(v54.__r_.__value_.__r.__words[1]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          ++*(this + 14);
          v52.n128_u64[0] = this;
          v58 = *a2;
          v59 = a2[1].n128_i64[0];
          v55 = v51;
          sub_2982E92CC(a3, this, &v58, v10);
        }

LABEL_51:
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }

      LODWORD(v54.__r_.__value_.__l.__data_) = 0;
      v27 = *(this + 1);
      if (v27 >= *(this + 2) || (data = *v27, (data & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
        {
          goto LABEL_51;
        }

        data = v54.__r_.__value_.__l.__data_;
      }

      else
      {
        LODWORD(v54.__r_.__value_.__l.__data_) = *v27;
        *(this + 1) = v27 + 1;
      }

      sub_2982DE234(&v58, data);
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v58.n128_u64[0]);
      if (Raw)
      {
        v55 = *a2->n128_u8;
        sub_2982E9194(a3, &v58, &v55, v10);
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

    UnpackedType = wis::reflect::getUnpackedType(v14);
    WireTypeForType = wis::reflect::getWireTypeForType(UnpackedType);
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
                    sub_2982E5B14(&__p, &v58);
                    v55 = *a2->n128_u8;
                    sub_2982E9F84(a3, &v58, &v55, v10);
                  }

                  sub_2982E6418(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2982EA31C(a3, &v58, &v55, v10);
                }

                sub_2982E5B14(&__p, &v58);
                v55 = *a2->n128_u8;
                sub_2982E9F84(a3, &v58, &v55, v10);
              }

              switch(v14)
              {
                case 0x1A:
                  sub_2982E5D88(&__p, &v54);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2982DC788(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2982E80AC();
                case 0x19:
                  sub_2982E5FD8(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2982EA150(a3, &v58, &v55, v10);
                case 0x18:
                  sub_2982E578C(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2982E9DB8(a3, &v58, &v55, v10);
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
                    sub_2982E5B14(&__p, &v58);
                    v55 = *a2->n128_u8;
                    sub_2982EA31C(a3, &v58, &v55, v10);
                  }

                  sub_2982E6110(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2982EA150(a3, &v58, &v55, v10);
                }

                sub_2982E578C(&__p, &v58);
                v55 = *a2->n128_u8;
                sub_2982E9DB8(a3, &v58, &v55, v10);
              }

              switch(v14)
              {
                case 0xF:
                  sub_2982E580C(&__p, &v54.__r_.__value_.__l.__data_);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2982DC788(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2982E80AC();
                case 0x10:
                  sub_2982E5C4C(&__p, &v54.__r_.__value_.__l.__data_);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2982DC788(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2982E80AC();
                case 0x11:
                  sub_2982E5FD8(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2982EA150(a3, &v58, &v55, v10);
              }
            }

            v44 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C2879E0](v44, "This should never happen, no matter what the input!");
            __cxa_throw(v44, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          v58.n128_u64[0] = 0;
          sub_2982E3C80(&__p, &v58);
          if (WireTypeForType <= 1)
          {
            break;
          }

          if (WireTypeForType == 5)
          {
            v58.n128_u32[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58);
            *(v46 - 1) = v58.n128_u32[0];
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

      LODWORD(v54.__r_.__value_.__l.__data_) = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v54.__r_.__value_.__l.__data_) = *v24;
        *(this + 1) = v24 + 1;
      }

      v58 = 0uLL;
      v59 = 0;
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (Raw)
      {
        v55 = *a2->n128_u8;
        sub_2982E9098(a3, &v58, &v55, v10);
      }

      if ((SHIBYTE(v59) & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v40 = v58.n128_u64[0];
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

        v58.n128_u64[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58.n128_u64))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v58.n128_u64[0] = 0;
        if (!sub_2982E3C28(this, v58.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v38 = v58.n128_u64[0];
LABEL_144:
      sub_2982E9438(a3, v38, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      v58.n128_u32[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58))
      {
        goto LABEL_51;
      }

      v38 = v58.n128_u32[0];
      goto LABEL_144;
    }

    LODWORD(v55.__r_.__value_.__l.__data_) = 0;
    if (!sub_2982E3C54(this, &v55))
    {
      goto LABEL_51;
    }

    sub_2982DE234(&v58, LODWORD(v55.__r_.__value_.__l.__data_));
    Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v58.n128_u64[0]);
    if (Raw)
    {
      sub_2982E94F0(a3, v58.n128_u64[0], v58.n128_u64[1] - v58.n128_u64[0], v10);
    }

LABEL_137:
    v40 = v58.n128_u64[0];
    if (!v58.n128_u64[0])
    {
      goto LABEL_140;
    }

    v58.n128_u64[1] = v58.n128_u64[0];
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

      v58.n128_u32[0] = 0;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58))
      {
        __p = v58.n128_u32[0];
        goto LABEL_94;
      }

      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
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
        v32 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode(__p);
        v54 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v31 = sub_2982DC788(a3, &v58, v10);
        v52.n128_u8[0] = 7;
        v52.n128_f64[1] = v32;
        if (v12 == 11)
        {
          v55 = v54;
          sub_2982DD334(a3, &v55, v10, v32, &v58);
          v42 = HIBYTE(v59);
          if (v59 < 0)
          {
            v42 = v58.n128_u64[1];
          }

          if (v42)
          {
            v55.__r_.__value_.__l.__size_ = 0;
            v55.__r_.__value_.__s.__data_[0] = 3;
            operator new();
          }

          if (v59 < 0)
          {
            operator delete(v58.n128_u64[0]);
          }
        }

        else if (v12 == 12)
        {
          v52.n128_u8[0] = 4;
          v55.__r_.__value_.__s.__data_[0] = 7;
          v52.n128_u64[1] = v32 != 0.0;
          *&v55.__r_.__value_.__l.__size_ = v32;
          sub_2982E1E24(&v55.__r_.__value_.__l.__size_, 7);
        }

        goto LABEL_161;
      case 2:
      case 16:
        v30 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode(__p);
        v54 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v31 = sub_2982DC788(a3, &v58, v10);
        v52.n128_u8[0] = 7;
        v52.n128_f64[1] = v30;
        if (v12 == 11)
        {
          v55 = v54;
          sub_2982DD334(a3, &v55, v10, v30, &v58);
          v41 = HIBYTE(v59);
          if (v59 < 0)
          {
            v41 = v58.n128_u64[1];
          }

          if (v41)
          {
            v55.__r_.__value_.__l.__size_ = 0;
            v55.__r_.__value_.__s.__data_[0] = 3;
            operator new();
          }

          if (v59 < 0)
          {
            operator delete(v58.n128_u64[0]);
          }
        }

        else if (v12 == 12)
        {
          v52.n128_u8[0] = 4;
          v55.__r_.__value_.__s.__data_[0] = 7;
          v52.n128_u64[1] = v30 != 0.0;
          *&v55.__r_.__value_.__l.__size_ = v30;
          sub_2982E1E24(&v55.__r_.__value_.__l.__size_, 7);
        }

LABEL_161:
        v58 = *&v54.__r_.__value_.__l.__data_;
        v59 = v54.__r_.__value_.__r.__words[2];
        v43 = sub_2982DCCD8(a3, &v58, v10);
        sub_2982FA5E4(a3, v31, &v52, v43);
        v36 = v52.n128_u8[0];
        p_size = &v52.n128_i64[1];
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
        v55.__r_.__value_.__r.__words[0] = __p;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2982E9628(a3, &v55, &v58, v10, v12);
        return;
      case 5:
      case 19:
        v29 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode(__p);
LABEL_105:
        v55.__r_.__value_.__r.__words[0] = v29;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2982E99F0(a3, &v55, &v58, v10, v12);
        return;
      case 6:
      case 20:
        LODWORD(v55.__r_.__value_.__l.__data_) = __p;
        goto LABEL_107;
      case 7:
      case 9:
      case 21:
      case 23:
        LODWORD(v55.__r_.__value_.__l.__data_) = __p;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2982E980C(a3, &v55, &v58, v10, v12);
        return;
      case 8:
      case 22:
        LODWORD(v55.__r_.__value_.__l.__data_) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode(__p);
LABEL_107:
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2982E9BD4(a3, &v55, &v58, v10, v12);
        return;
      case 12:
      case 26:
        v33 = __p != 0;
        v55 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v34 = sub_2982DC788(a3, &v58, v10);
        v54.__r_.__value_.__s.__data_[0] = 4;
        v54.__r_.__value_.__l.__size_ = v33;
        if (v12 == 12)
        {
          v54.__r_.__value_.__s.__data_[0] = 4;
          v52.n128_u8[0] = 4;
          v52.n128_u64[1] = v33;
          sub_2982E1E24(&v52.n128_i64[1], 4);
        }

        v58 = *&v55.__r_.__value_.__l.__data_;
        v59 = v55.__r_.__value_.__r.__words[2];
        v35 = sub_2982DCCD8(a3, &v58, v10);
        sub_2982FA5E4(a3, v34, &v54, v35);
        v36 = v54.__r_.__value_.__s.__data_[0];
        p_size = &v54.__r_.__value_.__l.__size_;
LABEL_162:
        sub_2982E1E24(p_size, v36);
        return;
      default:
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C2879E0](exception, "This should never happen, no matter what the input!");
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
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void sub_2982E7C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  sub_2982E1E24((v26 + 8), a21);
  _Unwind_Resume(a1);
}

uint64_t sub_2982E7E24(uint64_t a1)
{
  sub_2982DDC40(a1 + 48);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  return a1;
}

void sub_2982E7E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v9 = 32 * a3;
    v10 = (a2 + 16);
    while (1)
    {
      v11 = *v10;
      if (**v10 != 2 || *(*(v11 + 1) + 8) - **(v11 + 1) != 32 || *sub_2982E8128(v11, 0) != 3)
      {
        break;
      }

      v10 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (a5 != 1)
      {
        LOBYTE(v12) = 1;
      }

      if ((v12 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_2982E1488(&v15, "cannot create object from initializer list");
        sub_2982E116C(301, &v15, exception);
        __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
      }

      if (!v13)
      {
LABEL_18:
        *a1 = 2;
        v15 = a2;
        sub_2982E80AC();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v12 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

uint64_t sub_2982E8128(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_2982E8258(a1);
    sub_2982E1488(&v8, v5);
    v6 = std::string::insert(&v8, 0, "cannot use operator[] with a numeric argument with ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(305, &v9, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_2982E81F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

const char *sub_2982E8258(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_29EE90600[v1];
  }
}

uint64_t sub_2982E8280(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  if (v3 <= 4)
  {
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v7 = *(a2 + 1);
        sub_2982E834C();
      }

      if (v3 == 2)
      {
        v4 = *(a2 + 1);
        sub_2982E8B18();
      }

      return a1;
    }

    if (v3 == 3)
    {
      v8 = *(a2 + 1);
      sub_2982E8CD4();
    }

    v6 = a2[8];
LABEL_14:
    *(a1 + 8) = v6;
    return a1;
  }

  if (v3 < 8)
  {
    v6 = *(a2 + 1);
    goto LABEL_14;
  }

  if (v3 == 8)
  {
    v5 = *(a2 + 1);
    sub_2982E8D50();
  }

  return a1;
}

void *sub_2982E83A8(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_2982E8400(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_2982E8400(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_2982E8488(v5, (v5 + 1), v4 + 4);
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

uint64_t sub_2982E8488(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_2982E850C(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_2982E86B0();
  }

  return result;
}

uint64_t sub_2982E850C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_2982E879C(a1, a5, (a2 + 32)))
  {
    if (!sub_2982E879C(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_2982E879C(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_2982E879C(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_2982E8808(a1, a3, a5);
}

void sub_2982E8728(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2982E8AB8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_2982E8744(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = sub_2982E891C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL sub_2982E879C(uint64_t a1, const void **a2, const void **a3)
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

uint64_t sub_2982E8808(uint64_t a1, uint64_t *a2, const void **a3)
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
        if (!sub_2982E879C(a1, a3, (v4 + 32)))
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

      if (!sub_2982E879C(a1, (v8 + 32), a3))
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

char *sub_2982E88A4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_2982DE100(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_2982E8280(__dst + 24, a2 + 24);
  return __dst;
}

void sub_2982E8900(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2982E891C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_2982E8AB8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_2982E2670(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_2982E8B84(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2982E8C0C(result, a4);
  }

  return result;
}

void sub_2982E8BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2982E26C4(&a9);
  _Unwind_Resume(a1);
}

void sub_2982E8C0C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2982E236C(a1, a2);
  }

  sub_2982DE7D0();
}

uint64_t sub_2982E8C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_2982E8280(a4, v5);
      v5 += 16;
      a4 = v7 + 16;
      v7 += 16;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t sub_2982E8DC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2982DE1E4(result, a4);
  }

  return result;
}

void sub_2982E8E20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2982E8E3C(uint64_t a1, const void **a2)
{
  v2 = *sub_2982E8808(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2982E8F04(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2982E8C0C(result, a4);
  }

  return result;
}

void sub_2982E8F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2982E26C4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2982E8F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      sub_2982E9018(a4, v5);
      v5 += 32;
      a4 = v7 + 16;
      v7 += 16;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t sub_2982E9018(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  if (v3 == 1)
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    *v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    sub_2982E8280(v8, v4);
    v5 = v8[0];
    v6 = v9;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  v8[0] = 0;
  v9 = 0;
  sub_2982E1E24(&v9, 0);
  return a1;
}

void sub_2982E9098(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_2982DC788(a1, &v5, a4);
  v4 = 3;
  operator new();
}

void sub_2982E9194(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  sub_2982DC788(a1, &__p, a4);
  sub_2982F53CC(*(a2 + 8) - *a2, *a2, &__p);
  v6 = 0;
  v5 = 3;
  operator new();
}

void sub_2982E929C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982E92CC(uint64_t *a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v7 = *a3;
  v8 = *(a3 + 2);
  sub_2982DC788(a1, &v7, a4);
  v5 = *a1;
  sub_2982E7E5C(v6, 0, 0, 0, 1);
}

void sub_2982E93DC(_Unwind_Exception *a1, unsigned __int8 a2, ...)
{
  va_start(va, a2);
  sub_2982E1E24(va, a2);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2982E93FC(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2982E9438(uint64_t *a1, uint64_t a2, unsigned int __val)
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
  sub_2982FA5E4(a1, v5, v6, 1);
  sub_2982E1E24(&v7, v6[0]);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2982E94C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_2982E1E24((v17 + 8), a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2982E94F0(int a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  std::to_string(&v9, __val);
  sub_2982F53CC(a3, a2, &__p);
  v8 = 0;
  v7 = 3;
  operator new();
}

void sub_2982E95E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2982E1E24((v22 + 8), a15);
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

void sub_2982E9628(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982DD334(a1, &v14, a4, v11, __p);
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
    sub_2982E1E24(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982DCCD8(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982E97D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982E980C(uint64_t *a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982DD334(a1, &v14, a4, v11, __p);
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
    sub_2982E1E24(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982DCCD8(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982E99BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982E99F0(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982DD334(a1, &v14, a4, v11, __p);
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
    sub_2982E1E24(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982DCCD8(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982E9BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982E9BD4(uint64_t *a1, int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982DD334(a1, &v14, a4, v11, __p);
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
    sub_2982E1E24(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982DCCD8(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982E9D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982E9DB8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2982DC788(a1, __p, a4);
  sub_2982E7E5C(v4, 0, 0, 0, 2);
}

void sub_2982E9F84(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2982DC788(a1, __p, a4);
  sub_2982E7E5C(v4, 0, 0, 0, 2);
}

void sub_2982EA150(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2982DC788(a1, __p, a4);
  sub_2982E7E5C(v4, 0, 0, 0, 2);
}

void sub_2982EA31C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2982DC788(a1, __p, a4);
  sub_2982E7E5C(v4, 0, 0, 0, 2);
}

uint64_t sub_2982EA4E8(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2982E8258(a1);
    sub_2982E1488(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2982EA9B8(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 4;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return v6 - 16;
}

void sub_2982EA628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_2982EA688(uint64_t a1)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 == 2)
  {
    v2 = *(a1 + 8);
    if (v2[1] < v2[2])
    {
      sub_2982EAACC(v2);
    }

    sub_2982EAB4C(v2);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  v4 = sub_2982E8258(a1);
  sub_2982E1488(&v7, v4);
  v5 = std::string::insert(&v7, 0, "cannot use emplace_back() with ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v9 = v5->__r_.__value_.__r.__words[2];
  v8 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_2982E116C(311, &v8, exception);
  __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
}

void sub_2982EA7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982EA818(uint64_t a1, uint64_t *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2982E8258(a1);
    sub_2982E1488(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2982EAC8C(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 6;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return v6 - 16;
}

void sub_2982EA958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982EA9B8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2982E23B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2982E2494(&v16);
  return v15;
}

void sub_2982EAAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

void sub_2982EAACC(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 8) = 0;
  *v1 = 3;
  operator new();
}

void sub_2982EAB4C(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v8 = a1;
    if (v4)
    {
      sub_2982E236C(a1, v4);
    }

    v5 = 16 * v1;
    v6 = v5;
    v7 = v5;
    *(v5 + 8) = 0;
    *v5 = 3;
    operator new();
  }

  sub_2982DE7D0();
}

void sub_2982EAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2982EAC8C(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2982E23B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2982E2494(&v16);
  return v15;
}

void sub_2982EAD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2982EADA0(uint64_t a1, uint64_t *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2982E8258(a1);
    sub_2982E1488(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2982EAF40(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 7;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return v6 - 16;
}

void sub_2982EAEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982EAF40(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2982E23B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2982E2494(&v16);
  return v15;
}

void sub_2982EB040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2982EB054(uint64_t a1, unsigned int *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2982E8258(a1);
    sub_2982E1488(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2982EB1F4(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 6;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return v6 - 16;
}

void sub_2982EB194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982EB1F4(uint64_t a1, unsigned int *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2982E23B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2982E2494(&v16);
  return v15;
}

void sub_2982EB2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2982EB308(uint64_t a1, float *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2982E8258(a1);
    sub_2982E1488(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2982EB4AC(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 7;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return v6 - 16;
}

void sub_2982EB44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982EB4AC(uint64_t a1, float *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2982E23B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2982E2494(&v16);
  return v15;
}

void sub_2982EB5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2982EB5C4(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2982E8258(a1);
    sub_2982E1488(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2982EB764(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 4;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return v6 - 16;
}

void sub_2982EB704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982EB764(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2982E23B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2982E2494(&v16);
  return v15;
}

void sub_2982EB864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2982EB878(uint64_t a1, uint64_t *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2982E8258(a1);
    sub_2982E1488(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2982EBA18(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 5;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return v6 - 16;
}

void sub_2982EB9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982EBA18(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2982E23B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2982E2494(&v16);
  return v15;
}

void sub_2982EBB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2982EBB2C(uint64_t a1, int *a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_2982E8258(a1);
    sub_2982E1488(&v12, v9);
    v10 = std::string::insert(&v12, 0, "cannot use emplace_back() with ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v13, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v6 = sub_2982EBCCC(v3, a2);
  }

  else
  {
    *(v4 + 8) = 0;
    v5 = *a2;
    *v4 = 5;
    *(v4 + 8) = v5;
    v6 = v4 + 16;
  }

  *(v3 + 8) = v6;
  return v6 - 16;
}

void sub_2982EBC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982EBCCC(uint64_t a1, int *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2982DE7D0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_2982E236C(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_2982E23B4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2982E2494(&v16);
  return v15;
}

void sub_2982EBDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2982E2494(va);
  _Unwind_Resume(a1);
}

void sub_2982EBDE0(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t a3)
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
      MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
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
  v8 = wis::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v87 = *a2;
  v88 = a2[1].n128_i64[0];
  DeviceConfigMetadataHelper::getSubfieldType(a3 + 16, &v87, HIDWORD(v8), &v81);
  v87 = v81;
  v88 = v82;
  BuiltinType = MetadataHelper::getBuiltinType(a3 + 16, &v87);
  v12 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType <= 13)
  {
    if ((DecodingType - 1) < 0xC)
    {
      v83.__r_.__value_.__r.__words[0] = 0;
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
            goto LABEL_93;
          }

          v87.n128_u32[0] = 0;
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87))
          {
            v83.__r_.__value_.__r.__words[0] = v87.n128_u32[0];
            goto LABEL_93;
          }

          if (!v10 && (*(this + 36) & 1) != 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v9)
        {
          if (v9 == 1 && (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v83) & 1) == 0)
          {
            if (!v10 && (*(this + 36) & 1) != 0)
            {
              return;
            }

            goto LABEL_122;
          }

LABEL_93:
          v29 = v83.__r_.__value_.__r.__words[0];
          switch(v12)
          {
            case 1:
            case 15:
              v33 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode(v83.__r_.__value_.__l.__data_);
              v84 = *a2->n128_u8;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              v31 = sub_2982EDD6C(a3, &v87, v10);
              v87 = 0uLL;
              v88 = 0;
              if (v12 == 11)
              {
                v85 = v84;
                sub_2982EDDF0(a3, &v85, v10, v33, &v86);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

              else if (v12 == 12)
              {
                v34 = sub_2982F5120(a3, v33 != 0.0);
                MEMORY[0x29C287A60](&v87, v34);
              }

              v70 = HIBYTE(v88);
              if (v88 < 0)
              {
                v70 = v87.n128_u64[1];
              }

              if (!v70)
              {
                v86 = v84;
                v71 = sub_2982EE09C(a3, &v86, v10);
                (v71)(&v86, a3, v33);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

              goto LABEL_247;
            case 2:
            case 16:
              v30 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode(v83.__r_.__value_.__l.__data_);
              v84 = *a2->n128_u8;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              v31 = sub_2982EDD6C(a3, &v87, v10);
              v87 = 0uLL;
              v88 = 0;
              if (v12 == 11)
              {
                v85 = v84;
                sub_2982EDDF0(a3, &v85, v10, v30, &v86);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

              else if (v12 == 12)
              {
                v32 = sub_2982F5120(a3, v30 != 0.0);
                MEMORY[0x29C287A60](&v87, v32);
              }

              v68 = HIBYTE(v88);
              if (v88 < 0)
              {
                v68 = v87.n128_u64[1];
              }

              if (!v68)
              {
                v86 = v84;
                v69 = sub_2982EE41C(a3, &v86, v10);
                (v69)(&v86, a3, v30);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

LABEL_247:
              sub_2982F5088(a3, v31, &v87);
              goto LABEL_248;
            case 3:
            case 11:
            case 17:
            case 25:
              v86.__r_.__value_.__r.__words[0] = v83.__r_.__value_.__r.__words[0];
              goto LABEL_105;
            case 4:
            case 10:
            case 18:
            case 24:
              v86.__r_.__value_.__r.__words[0] = v83.__r_.__value_.__r.__words[0];
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              sub_2982ED6EC(a3, &v86, &v87, v10, v12);
              return;
            case 5:
            case 19:
              v86.__r_.__value_.__r.__words[0] = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode(v83.__r_.__value_.__r.__words[0]);
LABEL_105:
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              sub_2982EDA2C(a3, &v86, &v87, v10, v12);
              return;
            case 6:
            case 20:
              LODWORD(v86.__r_.__value_.__l.__data_) = v83.__r_.__value_.__l.__data_;
              goto LABEL_107;
            case 7:
            case 9:
            case 21:
            case 23:
              LODWORD(v86.__r_.__value_.__l.__data_) = v83.__r_.__value_.__l.__data_;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              sub_2982ED88C(a3, &v86, &v87, v10, v12);
              return;
            case 8:
            case 22:
              LODWORD(v86.__r_.__value_.__l.__data_) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode(v83.__r_.__value_.__l.__data_);
LABEL_107:
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              sub_2982EDBCC(a3, &v86, &v87, v10, v12);
              return;
            case 12:
            case 26:
              v85 = *a2->n128_u8;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              v35 = sub_2982EDD6C(a3, &v87, v10);
              v87 = 0uLL;
              v88 = 0;
              if (v12 != 12)
              {
                goto LABEL_112;
              }

              v36 = sub_2982F5120(a3, v29 != 0);
              MEMORY[0x29C287A60](&v87, v36);
              v37 = HIBYTE(v88);
              if (v88 < 0)
              {
                v37 = v87.n128_u64[1];
              }

              if (!v37)
              {
LABEL_112:
                v86 = v85;
                v38 = sub_2982EE5E0(a3, &v86, v10);
                (v38)(&v86, a3, v29 != 0);
                if (SHIBYTE(v88) < 0)
                {
                  operator delete(v87.n128_u64[0]);
                }

                v87 = *&v86.__r_.__value_.__l.__data_;
                v88 = v86.__r_.__value_.__r.__words[2];
              }

              sub_2982F5088(a3, v35, &v87);
LABEL_248:
              if (SHIBYTE(v88) < 0)
              {
                operator delete(v87.n128_u64[0]);
              }

              return;
            default:
              exception = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C2879E0](exception, "This should never happen, no matter what the input!");
              goto LABEL_54;
          }
        }

        v26 = *(this + 1);
        if (v26 < *(this + 2) && (*v26 & 0x8000000000000000) == 0)
        {
          v83.__r_.__value_.__r.__words[0] = *v26;
          *(this + 1) = v26 + 1;
          goto LABEL_93;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v83))
        {
          goto LABEL_93;
        }

        if (!v10 && (*(this + 36) & 1) != 0)
        {
          return;
        }
      }

LABEL_122:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
LABEL_54:
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      LODWORD(v85.__r_.__value_.__l.__data_) = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v85))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v85.__r_.__value_.__l.__data_) = *v24;
        *(this + 1) = v24 + 1;
      }

      v87 = 0uLL;
      v88 = 0;
      String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (String)
      {
        v86 = *a2->n128_u8;
        sub_2982ED2FC(a3, &v87, &v86, v10);
      }

      if ((SHIBYTE(v88) & 0x80000000) == 0)
      {
        goto LABEL_220;
      }

      v64 = v87.n128_u64[0];
      goto LABEL_219;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        v87.n128_u64[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v87.n128_u64))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v87.n128_u64[0] = 0;
        if (!sub_2982E3C28(this, v87.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v39 = v87.n128_u64[0];
LABEL_224:
      sub_2982ED55C(a3, v39, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      v87.n128_u32[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87))
      {
        goto LABEL_51;
      }

      v39 = v87.n128_u32[0];
      goto LABEL_224;
    }

    LODWORD(v86.__r_.__value_.__l.__data_) = 0;
    if (!sub_2982E3C54(this, &v86))
    {
      goto LABEL_51;
    }

    sub_2982DE234(&v87, LODWORD(v86.__r_.__value_.__l.__data_));
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v87.n128_u64[0]);
    if (String)
    {
      sub_2982ED620(a3, v87.n128_u64[0], v87.n128_u64[1] - v87.n128_u64[0], v10);
    }

LABEL_217:
    v64 = v87.n128_u64[0];
    if (!v87.n128_u64[0])
    {
      goto LABEL_220;
    }

    v87.n128_u64[1] = v87.n128_u64[0];
LABEL_219:
    operator delete(v64);
LABEL_220:
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

      LODWORD(v83.__r_.__value_.__l.__data_) = 0;
      v25 = *(this + 1);
      if (v25 >= *(this + 2) || *v25 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v83))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v83.__r_.__value_.__l.__data_) = *v25;
        *(this + 1) = v25 + 1;
      }

      v85.__r_.__value_.__r.__words[0] = this;
      LODWORD(v85.__r_.__value_.__r.__words[1]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
      ++*(this + 14);
      v84.__r_.__value_.__r.__words[0] = this;
      v87 = *a2;
      v88 = a2[1].n128_i64[0];
      *&v86.__r_.__value_.__l.__data_ = v81;
      v86.__r_.__value_.__r.__words[2] = v82;
      sub_2982ED434(a3, this, &v87, v10, &v86);
      sub_2982ED520(&v84);
      v65 = *(this + 14);
      v66 = __OFSUB__(v65, 1);
      v67 = v65 - 1;
      if (v67 < 0 == v66)
      {
        *(this + 14) = v67;
      }

      sub_2982DDC0C(&v85);
      return;
    }

    LODWORD(v85.__r_.__value_.__l.__data_) = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || (data = *v27, (data & 0x80000000) != 0))
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v85))
      {
        goto LABEL_51;
      }

      data = v85.__r_.__value_.__l.__data_;
    }

    else
    {
      LODWORD(v85.__r_.__value_.__l.__data_) = *v27;
      *(this + 1) = v27 + 1;
    }

    sub_2982DE234(&v87, data);
    String = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v87.n128_u64[0]);
    if (String)
    {
      v86 = *a2->n128_u8;
      sub_2982ED390(a3, &v87, &v86, v10);
    }

    goto LABEL_217;
  }

  v80 = 0;
  v16 = *(this + 1);
  if (v16 >= *(this + 2) || *v16 < 0)
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
    {
      goto LABEL_51;
    }
  }

  else
  {
    v80 = *v16;
    *(this + 1) = v16 + 1;
  }

  UnpackedType = wis::reflect::getUnpackedType(v14);
  WireTypeForType = wis::reflect::getWireTypeForType(UnpackedType);
  v78 = this;
  v79 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  __p = 0;
  v76 = 0;
  v77 = 0;
  do
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
              if (v14 == 22)
              {
                sub_2982E6418(&__p, &v87);
                v86 = *a2->n128_u8;
                sub_2982EF078(a3, &v87, &v86, v10, UnpackedType);
              }

              else
              {
                sub_2982E5B14(&__p, &v87);
                v86 = *a2->n128_u8;
                sub_2982EECE0(a3, &v87, &v86, v10, UnpackedType);
              }

LABEL_197:
              v62 = v87.n128_u64[0];
              if (v87.n128_u64[0])
              {
                v87.n128_u64[1] = v87.n128_u64[0];
                goto LABEL_199;
              }

LABEL_200:
              if (__p)
              {
                v76 = __p;
                operator delete(__p);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
              return;
            }

            if (v14 == 26)
            {
              sub_2982E5D88(&__p, &v84);
              v83 = *a2->n128_u8;
              v87 = *a2;
              v88 = a2[1].n128_i64[0];
              v74 = sub_2982EDD6C(a3, &v87, v10);
              v41 = v84.__r_.__value_.__r.__words[0];
              if (v84.__r_.__value_.__l.__size_ > 0x3F || (v84.__r_.__value_.__s.__data_[8] & 0x3F) != 0)
              {
                v73 = v84.__r_.__value_.__s.__data_[8] & 0x3F;
                v48 = 0;
                v49 = 0;
                v50 = v84.__r_.__value_.__r.__words[0] + 8 * (v84.__r_.__value_.__l.__size_ >> 6);
                do
                {
                  v51 = 1 << v49;
                  v87 = 0uLL;
                  v88 = 0;
                  v52 = v49;
                  if (UnpackedType == 11)
                  {
                    v85 = v83;
                    sub_2982EDDF0(a3, &v85, v10, (*v41 >> v49) & 1, &v86);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(v87.n128_u64[0]);
                    }

                    v87 = *&v86.__r_.__value_.__l.__data_;
                    v88 = v86.__r_.__value_.__r.__words[2];
                  }

                  else if (UnpackedType == 12)
                  {
                    v53 = sub_2982F5120(a3, (*v41 & v51) != 0);
                    MEMORY[0x29C287A60](&v87, v53);
                  }

                  v54 = HIBYTE(v88);
                  if (v88 < 0)
                  {
                    v54 = v87.n128_u64[1];
                  }

                  if (!v54)
                  {
                    if (!v48)
                    {
                      v86 = v83;
                      v48 = sub_2982EE5E0(a3, &v86, v10);
                    }

                    (v48)(&v86, a3, (*v41 & v51) != 0);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(v87.n128_u64[0]);
                    }

                    v87 = *&v86.__r_.__value_.__l.__data_;
                    v88 = v86.__r_.__value_.__r.__words[2];
                  }

                  sub_2982F5088(a3, v74, &v87);
                  if (SHIBYTE(v88) < 0)
                  {
                    operator delete(v87.n128_u64[0]);
                  }

                  v41 += v52 == 63;
                  if (v52 == 63)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 = v52 + 1;
                  }
                }

                while (v41 != v50 || v49 != v73);
                v41 = v84.__r_.__value_.__r.__words[0];
              }

              if (!v41)
              {
                goto LABEL_200;
              }

              goto LABEL_193;
            }

            if (v14 == 25)
            {
LABEL_196:
              sub_2982E5FD8(&__p, &v87);
              v86 = *a2->n128_u8;
              sub_2982EEEAC(a3, &v87, &v86, v10, UnpackedType);
              goto LABEL_197;
            }

            if (v14 != 24)
            {
LABEL_250:
              v72 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x29C2879E0](v72, "This should never happen, no matter what the input!");
              __cxa_throw(v72, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
            }
          }

          else
          {
            if (v14 <= 17)
            {
              switch(v14)
              {
                case 0xF:
                  sub_2982E580C(&__p, &v84.__r_.__value_.__l.__data_);
                  v83 = *a2->n128_u8;
                  v87 = *a2;
                  v88 = a2[1].n128_i64[0];
                  v40 = sub_2982EDD6C(a3, &v87, v10);
                  size = v84.__r_.__value_.__l.__size_;
                  v41 = v84.__r_.__value_.__r.__words[0];
                  if (v84.__r_.__value_.__r.__words[0] == v84.__r_.__value_.__l.__size_)
                  {
LABEL_191:
                    if (!v41)
                    {
                      goto LABEL_200;
                    }

                    v84.__r_.__value_.__l.__size_ = v41;
LABEL_193:
                    v62 = v41;
LABEL_199:
                    operator delete(v62);
                    goto LABEL_200;
                  }

                  v43 = v40;
                  v44 = 0;
                  do
                  {
                    v45 = *v41;
                    v87 = 0uLL;
                    v88 = 0;
                    if (UnpackedType == 11)
                    {
                      v85 = v83;
                      sub_2982EDDF0(a3, &v85, v10, v45, &v86);
                      if (SHIBYTE(v88) < 0)
                      {
                        operator delete(v87.n128_u64[0]);
                      }

                      v87 = *&v86.__r_.__value_.__l.__data_;
                      v88 = v86.__r_.__value_.__r.__words[2];
                    }

                    else if (UnpackedType == 12)
                    {
                      v46 = sub_2982F5120(a3, v45 != 0.0);
                      MEMORY[0x29C287A60](&v87, v46);
                    }

                    v47 = HIBYTE(v88);
                    if (v88 < 0)
                    {
                      v47 = v87.n128_u64[1];
                    }

                    if (!v47)
                    {
                      if (!v44)
                      {
                        v86 = v83;
                        v44 = sub_2982EE09C(a3, &v86, v10);
                      }

                      (v44)(&v86, a3, v45);
                      if (SHIBYTE(v88) < 0)
                      {
                        operator delete(v87.n128_u64[0]);
                      }

                      v87 = *&v86.__r_.__value_.__l.__data_;
                      v88 = v86.__r_.__value_.__r.__words[2];
                    }

                    sub_2982F5088(a3, v43, &v87);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(v87.n128_u64[0]);
                    }

                    ++v41;
                  }

                  while (v41 != size);
                  break;
                case 0x10:
                  sub_2982E5C4C(&__p, &v84.__r_.__value_.__l.__data_);
                  v83 = *a2->n128_u8;
                  v87 = *a2;
                  v88 = a2[1].n128_i64[0];
                  v55 = sub_2982EDD6C(a3, &v87, v10);
                  v56 = v84.__r_.__value_.__l.__size_;
                  v41 = v84.__r_.__value_.__r.__words[0];
                  if (v84.__r_.__value_.__r.__words[0] == v84.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_191;
                  }

                  v57 = v55;
                  v58 = 0;
                  do
                  {
                    v59 = *v41;
                    v87 = 0uLL;
                    v88 = 0;
                    if (UnpackedType == 11)
                    {
                      v85 = v83;
                      sub_2982EDDF0(a3, &v85, v10, v59, &v86);
                      if (SHIBYTE(v88) < 0)
                      {
                        operator delete(v87.n128_u64[0]);
                      }

                      v87 = *&v86.__r_.__value_.__l.__data_;
                      v88 = v86.__r_.__value_.__r.__words[2];
                    }

                    else if (UnpackedType == 12)
                    {
                      v60 = sub_2982F5120(a3, v59 != 0.0);
                      MEMORY[0x29C287A60](&v87, v60);
                    }

                    v61 = HIBYTE(v88);
                    if (v88 < 0)
                    {
                      v61 = v87.n128_u64[1];
                    }

                    if (!v61)
                    {
                      if (!v58)
                      {
                        v86 = v83;
                        v58 = sub_2982EE41C(a3, &v86, v10);
                      }

                      (v58)(&v86, a3, v59);
                      if (SHIBYTE(v88) < 0)
                      {
                        operator delete(v87.n128_u64[0]);
                      }

                      v87 = *&v86.__r_.__value_.__l.__data_;
                      v88 = v86.__r_.__value_.__r.__words[2];
                    }

                    sub_2982F5088(a3, v57, &v87);
                    if (SHIBYTE(v88) < 0)
                    {
                      operator delete(v87.n128_u64[0]);
                    }

                    v41 = (v41 + 4);
                  }

                  while (v41 != v56);
                  break;
                case 0x11:
                  goto LABEL_196;
                default:
                  goto LABEL_250;
              }

              v41 = v84.__r_.__value_.__r.__words[0];
              goto LABEL_191;
            }

            if (v14 != 18)
            {
              if (v14 == 19)
              {
                sub_2982E6110(&__p, &v87);
                v86 = *a2->n128_u8;
                sub_2982EEEAC(a3, &v87, &v86, v10, UnpackedType);
              }

              else
              {
                sub_2982E5B14(&__p, &v87);
                v86 = *a2->n128_u8;
                sub_2982EF078(a3, &v87, &v86, v10, UnpackedType);
              }

              goto LABEL_197;
            }
          }

          sub_2982E578C(&__p, &v87);
          v86 = *a2->n128_u8;
          sub_2982EEB14(a3, &v87, &v86, v10, UnpackedType);
          goto LABEL_197;
        }

        v87.n128_u64[0] = 0;
        sub_2982E3C80(&__p, &v87);
        if (WireTypeForType > 1)
        {
          break;
        }

        if (WireTypeForType)
        {
          if (WireTypeForType == 1)
          {
            LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76 - 1);
LABEL_31:
            if ((LittleEndian64Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          v21 = v76 - 1;
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

      v87.n128_u32[0] = 0;
      LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87);
      *(v76 - 1) = v87.n128_u32[0];
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
    v76 = __p;
    operator delete(__p);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
LABEL_51:
  if (v10 || (*(this + 36) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void *sub_2982ED270(void *a1)
{
  sub_2982DDC40((a1 + 15));
  v2 = a1[11];
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_2982D89F4(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_2982D89F4(v4);
  }

  return a1;
}

uint64_t sub_2982ED2C0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_2982D89F4(v3);
  }

  return a1;
}

void sub_2982ED2FC(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  v7 = *a3;
  v6 = sub_2982EDD6C(a1, &v7, a4);
  sub_2982F5164(a2, &v7);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v7;
  sub_2982F5088(a1, v6, a2);
}

void sub_2982ED390(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  v6 = sub_2982EDD6C(a1, &__p, a4);
  sub_2982F53CC(*(a2 + 8) - *a2, *a2, &__p);
  sub_2982F5088(a1, v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2982ED418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2982ED434(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, __int128 *a3, unsigned int a4, __int128 *a5)
{
  v10 = *a3;
  v11 = *(a3 + 2);
  v8 = sub_2982EDD6C(a1, &v10, a4);
  sub_2982F5074(a1);
  std::string::append(*a1, v8);
  std::string::append(*a1, " {\n");
  ++*(a1 + 8);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
  {
    do
    {
      v10 = *a5;
      v11 = *(a5 + 2);
      sub_2982EBDE0(a2);
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) > 0);
  }

  --*(a1 + 8);
  sub_2982F5074(a1);
  return std::string::append(*a1, "}\n");
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2982ED520(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2982ED55C(uint64_t a1, unint64_t a2, unsigned int __val)
{
  sub_2982F5154(__val, &v7);
  sub_2982F5144(a2, &__p);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v7;
  }

  else
  {
    v5 = v7.__r_.__value_.__r.__words[0];
  }

  sub_2982F5088(a1, v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_2982ED5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2982ED620(uint64_t a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  sub_2982F5154(__val, &v9);
  sub_2982F53CC(a3, a2, &__p);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  sub_2982F5088(a1, v7, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2982ED6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2982ED6EC(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2982EDD6C(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982EDDF0(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2982F5120(a1, *a2 != 0);
    MEMORY[0x29C287A60](__p, v11);
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
    v13 = sub_2982EDEE0(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2982F5088(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982ED864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982ED88C(uint64_t a1, _DWORD *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2982EDD6C(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982EDDF0(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2982F5120(a1, *a2 != 0);
    MEMORY[0x29C287A60](__p, v11);
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
    v13 = sub_2982EE260(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2982F5088(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982EDA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982EDA2C(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2982EDD6C(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982EDDF0(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2982F5120(a1, *a2 != 0);
    MEMORY[0x29C287A60](__p, v11);
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
    v13 = sub_2982EE79C(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2982F5088(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982EDBA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982EDBCC(uint64_t a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v19 = *(a3 + 2);
  v10 = sub_2982EDD6C(a1, __p, a4);
  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982EDDF0(a1, &v14, a4, *a2, &v16);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  else if (a5 == 12)
  {
    v11 = sub_2982F5120(a1, *a2 != 0);
    MEMORY[0x29C287A60](__p, v11);
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
    v13 = sub_2982EE958(a1, &v16, a4);
    (v13)(&v16, a1, *a2);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v16;
    v19 = v17;
  }

  sub_2982F5088(a1, v10, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2982EDD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2982EDD6C(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v6, a3, &v8);
  *a2 = v8;
  *(a2 + 2) = v9;
  Field = MetadataHandle::getField(a2);
  if (!Field)
  {
    return &unk_29830425A;
  }

  result = *(Field + 8);
  if (!result)
  {
    return &unk_29830425A;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

_BYTE *sub_2982EDDF0@<X0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 16, &v15, a3, &v17);
  *a2 = v17;
  *(a2 + 2) = v18;
  result = MetadataHandle::getEnum(a2);
  if (!result)
  {
    return sub_2982E1488(a5, &unk_29830425A);
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (v9 == v10)
  {
    return sub_2982E1488(a5, &unk_29830425A);
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
      return sub_2982E1488(a5, &unk_29830425A);
    }
  }

  v13 = *(v11 + 8);
  if (*(v13 + 23) < 0)
  {
    return sub_2982DE100(a5, *v13, *(v13 + 1));
  }

  v14 = *v13;
  *(a5 + 16) = *(v13 + 2);
  *a5 = v14;
  return result;
}

uint64_t (*sub_2982EDEE0(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982EDFAC;
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
    v5 = sub_2982EDFAC;
    if (Field)
    {
      v5 = sub_2982EDFAC;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982EDFAC;
        if (v8 <= 0x1F)
        {
          return off_2A1EB5DF0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982EDFC8(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
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

void sub_2982EE038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982EE09C(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
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
          return off_2A1EB5EF0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982EE18C(std::string *a1@<X8>, double a2@<D0>)
{
  sub_2982FF1DC(a2, &v4);
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

void sub_2982EE1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982EE260(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982EE32C;
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
    v5 = sub_2982EE32C;
    if (Field)
    {
      v5 = sub_2982EE32C;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982EE32C;
        if (v8 <= 0x1F)
        {
          return off_2A1EB5FF0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982EE348(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
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

void sub_2982EE3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982EE41C(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
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
          return off_2A1EB60F0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982EE50C(std::string *a1@<X8>, float a2@<S0>)
{
  sub_2982FF1DC(a2, &v4);
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

void sub_2982EE57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982EE5E0(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982EE6AC;
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
    v5 = sub_2982EE6AC;
    if (Field)
    {
      v5 = sub_2982EE6AC;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982EE6AC;
        if (v8 <= 0x1F)
        {
          return off_2A1EB61F0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982EE6C8(unsigned int a1@<W1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
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

void sub_2982EE738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982EE79C(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982EE868;
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
    v5 = sub_2982EE868;
    if (Field)
    {
      v5 = sub_2982EE868;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982EE868;
        if (v8 <= 0x1F)
        {
          return off_2A1EB62F0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982EE884(unint64_t a1@<X1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
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

void sub_2982EE8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2982EE958(uint64_t a1, MetadataHandle *a2, unsigned int a3))()
{
  v5 = sub_2982EEA24;
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
    v5 = sub_2982EEA24;
    if (Field)
    {
      v5 = sub_2982EEA24;
      if ((*(Field + 52) & 0x20) != 0)
      {
        v8 = *(Field + 36) - 1;
        v5 = sub_2982EEA24;
        if (v8 <= 0x1F)
        {
          return off_2A1EB63F0[v8];
        }
      }
    }
  }

  return v5;
}

void sub_2982EEA40(int a1@<W1>, std::string *a2@<X8>)
{
  sub_2982FF1DC(a1, &v4);
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

void sub_2982EEAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982EEB14(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2982EDD6C(a1, __p, a4);
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
        sub_2982EDDF0(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2982F5120(a1, v15 != 0);
        MEMORY[0x29C287A60](__p, v16);
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
          v14 = sub_2982EDEE0(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2982F5088(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2982EECBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982EECE0(uint64_t a1, unsigned int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2982EDD6C(a1, __p, a4);
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
        sub_2982EDDF0(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2982F5120(a1, v15 != 0);
        MEMORY[0x29C287A60](__p, v16);
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
          v14 = sub_2982EE260(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2982F5088(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2982EEE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982EEEAC(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2982EDD6C(a1, __p, a4);
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
        sub_2982EDDF0(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2982F5120(a1, v15 != 0);
        MEMORY[0x29C287A60](__p, v16);
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
          v14 = sub_2982EE79C(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2982F5088(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2982EF054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982EF078(uint64_t a1, int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v23 = *(a3 + 2);
  v10 = sub_2982EDD6C(a1, __p, a4);
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
        sub_2982EDDF0(a1, &v18, a4, v15, &v20);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      else if (a5 == 12)
      {
        v16 = sub_2982F5120(a1, v15 != 0);
        MEMORY[0x29C287A60](__p, v16);
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
          v14 = sub_2982EE958(a1, &v20, a4);
        }

        (v14)(&v20, a1, v15);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v20;
        v23 = v21;
      }

      sub_2982F5088(a1, v13, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_2982EF220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982EF244(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t *a3)
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
        MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
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
  v8 = wis::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v59 = *a2;
  v60 = a2[1].n128_i64[0];
  DeviceConfigMetadataHelper::getSubfieldType((a3 + 1), &v59, HIDWORD(v8), &v51);
  v59 = v51;
  v60 = v52;
  BuiltinType = MetadataHelper::getBuiltinType((a3 + 1), &v59);
  v12 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType(BuiltinType, v9);
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
          sub_2982F0990(a3, this, &v59, v10);
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

      sub_2982DE234(&v59, data);
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v59.n128_u64[0]);
      if (Raw)
      {
        v56 = *a2->n128_u8;
        sub_2982F0858(a3, &v59, &v56, v10);
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

    UnpackedType = wis::reflect::getUnpackedType(v14);
    WireTypeForType = wis::reflect::getWireTypeForType(UnpackedType);
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
                    sub_2982E5B14(&__p, &v59);
                    v56 = *a2->n128_u8;
                    sub_2982F1838(a3, &v59, &v56, v10);
                  }

                  sub_2982E6418(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2982F1BD0(a3, &v59, &v56, v10);
                }

                sub_2982E5B14(&__p, &v59);
                v56 = *a2->n128_u8;
                sub_2982F1838(a3, &v59, &v56, v10);
              }

              switch(v14)
              {
                case 0x1A:
                  sub_2982E5D88(&__p, &v55);
                  v53 = *a2;
                  v54 = a2[1].n128_u64[0];
                  v59 = *a2;
                  v60 = a2[1].n128_i64[0];
                  sub_2982F147C(a3, &v59, v10);
                  v58 = 0;
                  v59.n128_u64[0] = 0;
                  v57 = 2;
                  v56.__r_.__value_.__r.__words[0] = 0;
                  sub_2982E80AC();
                case 0x19:
                  sub_2982E5FD8(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2982F1A04(a3, &v59, &v56, v10);
                case 0x18:
                  sub_2982E578C(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2982F166C(a3, &v59, &v56, v10);
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
                    sub_2982E5B14(&__p, &v59);
                    v56 = *a2->n128_u8;
                    sub_2982F1BD0(a3, &v59, &v56, v10);
                  }

                  sub_2982E6110(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2982F1A04(a3, &v59, &v56, v10);
                }

                sub_2982E578C(&__p, &v59);
                v56 = *a2->n128_u8;
                sub_2982F166C(a3, &v59, &v56, v10);
              }

              switch(v14)
              {
                case 0xF:
                  sub_2982E580C(&__p, &v55.__r_.__value_.__l.__data_);
                  v53 = *a2;
                  v54 = a2[1].n128_u64[0];
                  v59 = *a2;
                  v60 = a2[1].n128_i64[0];
                  sub_2982F147C(a3, &v59, v10);
                  v58 = 0;
                  v59.n128_u64[0] = 0;
                  v57 = 2;
                  v56.__r_.__value_.__r.__words[0] = 0;
                  sub_2982E80AC();
                case 0x10:
                  sub_2982E5C4C(&__p, &v55.__r_.__value_.__l.__data_);
                  v53 = *a2;
                  v54 = a2[1].n128_u64[0];
                  v59 = *a2;
                  v60 = a2[1].n128_i64[0];
                  sub_2982F147C(a3, &v59, v10);
                  v58 = 0;
                  v59.n128_u64[0] = 0;
                  v57 = 2;
                  v56.__r_.__value_.__r.__words[0] = 0;
                  sub_2982E80AC();
                case 0x11:
                  sub_2982E5FD8(&__p, &v59);
                  v56 = *a2->n128_u8;
                  sub_2982F1A04(a3, &v59, &v56, v10);
              }
            }

            v44 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C2879E0](v44, "This should never happen, no matter what the input!");
            __cxa_throw(v44, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          v59.n128_u64[0] = 0;
          sub_2982E3C80(&__p, &v59);
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
        sub_2982F075C(a3, &v59, &v56, v10);
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
        if (!sub_2982E3C28(this, v59.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v38 = v59.n128_u64[0];
LABEL_144:
      sub_2982F0AFC(a3, v38, v10);
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
    if (!sub_2982E3C54(this, &v56))
    {
      goto LABEL_51;
    }

    sub_2982DE234(&v59, LODWORD(v56.__r_.__value_.__l.__data_));
    Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v59.n128_u64[0]);
    if (Raw)
    {
      sub_2982F0BB4(a3, v59.n128_u64[0], v59.n128_u64[1] - v59.n128_u64[0], v10);
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
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
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
        v32 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode(__p);
        v55 = *a2->n128_u8;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        v31 = sub_2982F147C(a3, &v59, v10);
        v53.n128_u8[0] = 7;
        v53.n128_f64[1] = v32;
        if (v12 == 11)
        {
          v56 = v55;
          sub_2982F1500(a3, &v56, v10, v32, &v59);
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
          sub_2982E1E24(&v56.__r_.__value_.__l.__size_, 7);
        }

        goto LABEL_161;
      case 2:
      case 16:
        v30 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode(__p);
        v55 = *a2->n128_u8;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        v31 = sub_2982F147C(a3, &v59, v10);
        v53.n128_u8[0] = 7;
        v53.n128_f64[1] = v30;
        if (v12 == 11)
        {
          v56 = v55;
          sub_2982F1500(a3, &v56, v10, v30, &v59);
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
          sub_2982E1E24(&v56.__r_.__value_.__l.__size_, 7);
        }

LABEL_161:
        v59 = *&v55.__r_.__value_.__l.__data_;
        v60 = v55.__r_.__value_.__r.__words[2];
        v43 = sub_2982F15F0(a3, &v59, v10);
        sub_2982FA5E4(a3, v31, &v53, v43);
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
        sub_2982F0CEC(a3, &v56, &v59, v10, v12);
        return;
      case 5:
      case 19:
        v29 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode(__p);
LABEL_105:
        v56.__r_.__value_.__r.__words[0] = v29;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        sub_2982F10B4(a3, &v56, &v59, v10, v12);
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
        sub_2982F0ED0(a3, &v56, &v59, v10, v12);
        return;
      case 8:
      case 22:
        LODWORD(v56.__r_.__value_.__l.__data_) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode(__p);
LABEL_107:
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        sub_2982F1298(a3, &v56, &v59, v10, v12);
        return;
      case 12:
      case 26:
        v33 = __p != 0;
        v56 = *a2->n128_u8;
        v59 = *a2;
        v60 = a2[1].n128_i64[0];
        v34 = sub_2982F147C(a3, &v59, v10);
        v55.__r_.__value_.__s.__data_[0] = 4;
        v55.__r_.__value_.__l.__size_ = v33;
        if (v12 == 12)
        {
          v55.__r_.__value_.__s.__data_[0] = 4;
          v53.n128_u8[0] = 4;
          v53.n128_u64[1] = v33;
          sub_2982E1E24(&v53.n128_i64[1], 4);
        }

        v59 = *&v56.__r_.__value_.__l.__data_;
        v60 = v56.__r_.__value_.__r.__words[2];
        v35 = sub_2982F15F0(a3, &v59, v10);
        sub_2982FA5E4(a3, v34, &v55, v35);
        v36 = v55.__r_.__value_.__s.__data_[0];
        p_size = &v55.__r_.__value_.__l.__size_;
LABEL_162:
        sub_2982E1E24(p_size, v36);
        return;
      default:
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C2879E0](exception, "This should never happen, no matter what the input!");
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
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void sub_2982F0528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  sub_2982E1E24((v26 + 8), a21);
  _Unwind_Resume(a1);
}

uint64_t sub_2982F0720(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2982D89F4(v3);
  }

  return a1;
}

void sub_2982F075C(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_2982F147C(a1, &v5, a4);
  v4 = 3;
  operator new();
}

void sub_2982F0858(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  sub_2982F147C(a1, &__p, a4);
  sub_2982F53CC(*(a2 + 8) - *a2, *a2, &__p);
  v6 = 0;
  v5 = 3;
  operator new();
}

void sub_2982F0960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982F0990(uint64_t *a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v7 = *a3;
  v8 = *(a3 + 2);
  sub_2982F147C(a1, &v7, a4);
  v5 = *a1;
  sub_2982E7E5C(v6, 0, 0, 0, 1);
}

void sub_2982F0AA0(_Unwind_Exception *a1, unsigned __int8 a2, ...)
{
  va_start(va, a2);
  sub_2982E1E24(va, a2);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2982F0AC0(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2982F0AFC(uint64_t *a1, uint64_t a2, unsigned int __val)
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
  sub_2982FA5E4(a1, v5, v6, 1);
  sub_2982E1E24(&v7, v6[0]);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2982F0B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_2982E1E24((v17 + 8), a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2982F0BB4(int a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  std::to_string(&v9, __val);
  sub_2982F53CC(a3, a2, &__p);
  v8 = 0;
  v7 = 3;
  operator new();
}

void sub_2982F0CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2982E1E24((v22 + 8), a15);
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

void sub_2982F0CEC(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982F147C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982F1500(a1, &v14, a4, v11, __p);
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
    sub_2982E1E24(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982F15F0(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982F0E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982F0ED0(uint64_t *a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982F147C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982F1500(a1, &v14, a4, v11, __p);
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
    sub_2982E1E24(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982F15F0(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982F1080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982F10B4(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982F147C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982F1500(a1, &v14, a4, v11, __p);
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
    sub_2982E1E24(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982F15F0(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982F1264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982F1298(uint64_t *a1, int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982F147C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982F1500(a1, &v14, a4, v11, __p);
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
    sub_2982E1E24(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982F15F0(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982F1448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

char *sub_2982F147C(uint64_t a1, MetadataHandle *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 8, &v6, a3, &v8);
  *a2 = v8;
  *(a2 + 2) = v9;
  Field = MetadataHandle::getField(a2);
  if (!Field)
  {
    return &unk_29830425A;
  }

  result = *(Field + 8);
  if (!result)
  {
    return &unk_29830425A;
  }

  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

_BYTE *sub_2982F1500@<X0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  DeviceConfigMetadataHelper::getSubfieldType(a1 + 8, &v15, a3, &v17);
  *a2 = v17;
  *(a2 + 2) = v18;
  result = MetadataHandle::getEnum(a2);
  if (!result)
  {
    return sub_2982E1488(a5, &unk_29830425A);
  }

  v9 = *(result + 1);
  v10 = *(result + 2);
  if (v9 == v10)
  {
    return sub_2982E1488(a5, &unk_29830425A);
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
      return sub_2982E1488(a5, &unk_29830425A);
    }
  }

  v13 = *(v11 + 8);
  if (*(v13 + 23) < 0)
  {
    return sub_2982DE100(a5, *v13, *(v13 + 1));
  }

  v14 = *v13;
  *(a5 + 16) = *(v13 + 2);
  *a5 = v14;
  return result;
}

uint64_t sub_2982F15F0(uint64_t a1, MetadataHandle *a2, unsigned int a3)
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

void sub_2982F166C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2982F147C(a1, __p, a4);
  sub_2982E7E5C(v4, 0, 0, 0, 2);
}

void sub_2982F1838(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2982F147C(a1, __p, a4);
  sub_2982E7E5C(v4, 0, 0, 0, 2);
}

void sub_2982F1A04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2982F147C(a1, __p, a4);
  sub_2982E7E5C(v4, 0, 0, 0, 2);
}

void sub_2982F1BD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2982F147C(a1, __p, a4);
  sub_2982E7E5C(v4, 0, 0, 0, 2);
}

uint64_t wis::reflect::getUnpackedType(uint64_t result)
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

uint64_t wis::reflect::getPackedType(int a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 0;
  }

  else
  {
    return dword_2983051A0[a1 - 1];
  }
}

uint64_t wis::protobuf::skipField(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, int a2)
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

uint64_t sub_2982F1F24(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_2982F1FB8(uint64_t result, PB::Writer *this)
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

void *sub_2982F2038(void *result)
{
  *result = &unk_2A1EB6550;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_2982F205C(void **a1)
{
  *a1 = &unk_2A1EB6550;
  v2 = a1 + 1;
  sub_2982DDD44(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_2982F20B8(void **a1)
{
  *a1 = &unk_2A1EB6550;
  v3 = a1 + 1;
  sub_2982DDD44(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x29C287C70]();
}

uint64_t sub_2982F2128(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_2982F21C0(int a1, PB::Reader *this)
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
        sub_2982F2394();
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

uint64_t sub_2982F24E0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t LazyMetadataLoader::LazyMetadataLoader(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = *a3;
  *a3 = 0;
  v8 = v4;
  v5 = WISMetadataLoader::WISMetadataLoader(a1 + 8, a2, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, v5);
  }

  *a1 = &unk_2A1EB65A0;
  *(a1 + 88) = 30000;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 80) = 0;
  return a1;
}

void sub_2982F25D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_2983006D0(a10);
  }

  _Unwind_Resume(exception_object);
}

void LazyMetadataLoader::~LazyMetadataLoader(LazyMetadataLoader *this)
{
  *this = &unk_2A1EB65A0;
  sub_2982F2EB4(this + 96, *(this + 13));
  sub_2982DDC40(this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  LazyMetadataLoader::~LazyMetadataLoader(this);

  JUMPOUT(0x29C287C70);
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

void sub_2982F2854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2982F2F80(&a9, 0);
  sub_2982F2F80(&a10, 0);
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

void sub_2982F2A3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2982F2F80(va, 0);
  _Unwind_Resume(a1);
}

void LazyRemoteMetadataLoaderDelegate::LazyRemoteMetadataLoaderDelegate(LazyRemoteMetadataLoaderDelegate *this)
{
  BestChoiceMetadataLoaderDelegate::BestChoiceMetadataLoaderDelegate(this);
  *v1 = &unk_2A1EB65C0;
  v1[16] = 0;
  sub_2982F2F80(v1 + 16, 0);
}

{
  BestChoiceMetadataLoaderDelegate::BestChoiceMetadataLoaderDelegate(this);
  *v1 = &unk_2A1EB65C0;
  v1[16] = 0;
  sub_2982F2F80(v1 + 16, 0);
}

void LazyRemoteMetadataLoaderDelegate::~LazyRemoteMetadataLoaderDelegate(LazyRemoteMetadataLoaderDelegate *this)
{
  *this = &unk_2A1EB65C0;
  sub_2982F2F80(this + 16, 0);

  BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(this);
}

{
  *this = &unk_2A1EB65C0;
  sub_2982F2F80(this + 16, 0);

  BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(this);
}

{
  *this = &unk_2A1EB65C0;
  sub_2982F2F80(this + 16, 0);
  BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(this);

  JUMPOUT(0x29C287C70);
}

uint64_t LazyRemoteMetadataLoaderDelegate::setBaseMetadata(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  sub_2982F2F80(a1 + 16, v3);
  v4 = *(*a1 + 96);

  return v4(a1);
}

uint64_t LazyRemoteMetadataLoaderDelegate::getMetadataBinary(LazyRemoteMetadataLoaderDelegate *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    result = *(v1 + 8);
    v3 = *(v1 + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      sub_298300750();
    }

    return 0;
  }

  return result;
}

void *LazyRemoteMetadataLoaderDelegate::ensureCacheReady(void *this)
{
  if (!this[8])
  {
    return (*(*this + 96))();
  }

  return this;
}

uint64_t LazyRemoteMetadataLoaderDelegate::setMetadataForComponent(LazyRemoteMetadataLoaderDelegate *this, unsigned __int8 *a2, uint64_t a3)
{
  sub_2982FBA8C(a2, a3, &v7);
  v4 = *this;
  if (v7 <= *(this + 30))
  {
    v5 = (v4 + 128);
  }

  else
  {
    v5 = (v4 + 120);
  }

  (*v5)(this);
  sub_2982F2E68(&v9);
  return sub_2982F2E68(&v8);
}

void sub_2982F2E3C(_Unwind_Exception *a1)
{
  sub_2982F2E68(v1 + 48);
  sub_2982F2E68(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2982F2E68(uint64_t a1)
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

void sub_2982F2EB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2982F2EB4(a1, *a2);
    sub_2982F2EB4(a1, a2[1]);
    sub_2982F2F80(a2 + 5, 0);

    operator delete(a2);
  }
}

void *sub_2982F2F14(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  if (a2 && MEMORY[0x29C287EE0](a2) == MEMORY[0x29EDCAA48])
  {
    a1[2] = xpc_shmem_map(a2, v3);
  }

  return a1;
}

uint64_t sub_2982F2F80(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2982F2FCC(result);

    JUMPOUT(0x29C287C70);
  }

  return result;
}

uint64_t sub_2982F2FCC(uint64_t a1)
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

uint64_t *sub_2982F3020(uint64_t a1, unsigned int *a2)
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

uint64_t sub_2982F3110(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2982F2F80(v2 + 5, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_2982F3160(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  sub_2982F3540((a1 + 8), ((*(a2 + 16) - *(a2 + 8)) >> 3) + ((*(a1 + 16) - *(a1 + 8)) >> 3));
  if (*v2 != v2[1])
  {
    v3 = **v2;
    sub_2982F31DC();
  }

  return sub_2982DDE3C(v2);
}

uint64_t sub_2982F3330(uint64_t a1)
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

  result = sub_2982F35DC(v2, v3, v5, 1);
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
        result = sub_2982FD604(v31, v21);
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

void *sub_2982F3540(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_2982DAE68(result, a2);
    }

    sub_2982DE7D0();
  }

  return result;
}

uint64_t sub_2982F35DC(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
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
            return sub_2982F4694(v4, v4 + 1, v327);
          case 4:
            return sub_2982F4954(v4, v4 + 1, v4 + 2, v327);
          case 5:
            return sub_2982F4B34(v4, v4 + 1, v4 + 2, v4 + 3, v327);
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
              return sub_2982FD558(v159, v157);
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
              return sub_2982FD558(v159, v157);
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
                    sub_2982FD600(v331, v173);
                    sub_2982FD604(v172[1], *v172);
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
                        sub_2982FD604(*v184, v186);
                        v185 -= 8;
                        if (!v185)
                        {
                          v184 = v4;
                          break;
                        }
                      }
                    }

                    sub_2982FD604(*v184, v331);
                    result = sub_2982FD51C(v331);
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
                sub_2982FD600(v331, v301);
                sub_2982FD604(*i, *(i - 1));
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

                    sub_2982FD604(*v313, v314);
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
                sub_2982FD604(*v300, v331);
                result = sub_2982FD51C(v331);
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
                  sub_2982FD600(v331, v214);
                  sub_2982FD604(v4[v199], *v201);
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

                      sub_2982FD604(*v201, v239);
                      v201 = v225;
                      if (v197 < v200)
                      {
                        goto LABEL_463;
                      }
                    }
                  }

                  v225 = v201;
LABEL_463:
                  sub_2982FD604(*v225, v331);
                  sub_2982FD51C(v331);
                }
              }
            }

            v198 = v199 - 1;
          }

          while (v199);
          do
          {
            sub_2982FD600(v330, *v4);
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

              sub_2982FD604(*v252, *v251);
            }

            while (v250 <= ((v8 - 2) >> 1));
            v266 = a2 - 1;
            if (v251 == --a2)
            {
              sub_2982FD604(*v251, v330);
            }

            else
            {
              v268 = v266;
              sub_2982FD604(*v251, *v266);
              sub_2982FD604(*v268, v330);
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
                    sub_2982FD600(v331, v274);
                    sub_2982FD604(*v251, *v272);
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

                        sub_2982FD604(*v285, v287);
                        v285 = &v4[v271];
                        if (v286 <= 1)
                        {
                          goto LABEL_537;
                        }
                      }

                      v272 = v285;
                    }

LABEL_537:
                    sub_2982FD604(*v272, v331);
                    sub_2982FD51C(v331);
                  }
                }
              }
            }

            result = sub_2982FD51C(v330);
          }

          while (v8-- > 2);
        }

        return result;
      }

      v10 = (v7 >> 1) & 0xFFFFFFFFFFFFFFF8;
      if (v8 < 0x81)
      {
        sub_2982F4694(v4 + v10, v4, v327);
      }

      else
      {
        sub_2982F4694(v4, (v4 + v10), v327);
        sub_2982F4694((v4 + 1), (v4 + v10 - 8), a2 - 2);
        sub_2982F4694((v4 + 2), (v4 + v10 + 8), a2 - 3);
        sub_2982F4694(v4 + v10 - 8, (v4 + v10), (v4 + v10 + 8));
        sub_2982FD558(*v4, *(v4 + v10));
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
            sub_2982FD600(v331, v11);
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
                sub_2982FD558(v122, v123);
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
              sub_2982FD604(*v4, *v146);
            }

            sub_2982FD604(*v146, v331);
            result = sub_2982FD51C(v331);
            a4 = 0;
            v5 = a2;
            goto LABEL_3;
          }
        }
      }

      sub_2982FD600(v331, v11);
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
          sub_2982FD558(v24, v61);
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
        sub_2982FD604(*v4, *v37);
      }

      sub_2982FD604(*v37, v331);
      sub_2982FD51C(v331);
      if (v23 < m)
      {
LABEL_159:
        result = sub_2982F35DC(v4, v37, a3, a4 & 1);
        a4 = 0;
        j = v37 + 1;
        v5 = a2;
        goto LABEL_3;
      }

      v88 = sub_2982F4D94(v4, v37);
      result = sub_2982F4D94(v37 + 1, a2);
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