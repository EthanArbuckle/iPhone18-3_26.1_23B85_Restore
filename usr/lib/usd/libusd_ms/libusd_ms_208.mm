void sub_29B23B7C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A892918(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B23B7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x50uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B23B860((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29B23B860(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  return a1;
}

void sub_29B23B8F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B23B910(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      result = *v11;
      if (*v11)
      {
        do
        {
          v13 = result[1];
          if (v13 == v8)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= v9)
              {
                v13 %= v9;
              }
            }

            else
            {
              v13 &= v9 - 1;
            }

            if (v13 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29B23BB68(a1, v8, a3, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v23 >= v9)
        {
          v23 %= v9;
        }
      }

      else
      {
        v23 &= v9 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B23BB50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B23BCD8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B23BB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x68uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B23BBE8((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29B23BBE8(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  if (*(a3 + 79) < 0)
  {
    sub_29A008D14((a1 + 64), *(a3 + 7), *(a3 + 8));
  }

  else
  {
    v7 = *(a3 + 56);
    *(a1 + 80) = *(a3 + 9);
    *(a1 + 64) = v7;
  }

  return a1;
}

void sub_29B23BCA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23BCD8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29B23A62C(v2 + 16);
    }

    operator delete(v2);
  }
}

void *sub_29B23BD34(uint64_t a1, void *a2, void *a3, __int128 *a4)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }
    }

    else
    {
      v4 = v8 & (v9 - 1);
    }

    v11 = *(*a1 + 8 * v4);
    if (v11)
    {
      result = *v11;
      if (*v11)
      {
        do
        {
          v13 = result[1];
          if (v13 == v8)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v13 >= v9)
              {
                v13 %= v9;
              }
            }

            else
            {
              v13 &= v9 - 1;
            }

            if (v13 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29B23BF8C(a1, v8, a3, a4, &v24);
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v9 || (v15 * v9) < v14)
  {
    v16 = 1;
    if (v9 >= 3)
    {
      v16 = (v9 & (v9 - 1)) != 0;
    }

    v17 = v16 | (2 * v9);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    sub_29A019AA0(a1, v19);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v4 = v8 % v9;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v9 - 1) & v8;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    result = v24;
    *v24 = *v21;
    *v21 = result;
  }

  else
  {
    v22 = v24;
    *v24 = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    result = v24;
    if (*v24)
    {
      v23 = *(*v24 + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v23 >= v9)
        {
          v23 %= v9;
        }
      }

      else
      {
        v23 &= v9 - 1;
      }

      *(*a1 + 8 * v23) = v24;
      result = v24;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B23BF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B23BCD8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B23BF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x68uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  v10[1] = a2;
  result = sub_29B23C00C((v10 + 2), a3, a4);
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_29B23C00C(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  if (*(a3 + 79) < 0)
  {
    sub_29A008D14((a1 + 64), *(a3 + 7), *(a3 + 8));
  }

  else
  {
    v7 = *(a3 + 56);
    *(a1 + 80) = *(a3 + 9);
    *(a1 + 64) = v7;
  }

  return a1;
}

void sub_29B23C0C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B23C0FC(void *a1)
{
  *a1 = &unk_2A20CADB8;
  sub_29B23A5AC((a1 + 56));
  sub_29B23A570((a1 + 51));
  sub_29B23A5AC((a1 + 46));
  sub_29B23A570((a1 + 41));
  sub_29A0EB4E8((a1 + 36));
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  sub_29AD97000((a1 + 28));
  v3 = a1[27];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return sub_29B2341F8(a1);
}

uint64_t sub_29B23C198(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v8;
  }

  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 104), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 120) = *(a4 + 2);
    *(a1 + 104) = v9;
  }

  v10 = a5[1];
  *(a1 + 128) = *a5;
  *(a1 + 136) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 220) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  return a1;
}

void sub_29B23C260(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23C2B4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (*(v4 + 39) >= 0)
  {
    v5 = *(v4 + 39);
  }

  else
  {
    v5 = *(v4 + 24);
  }

  p_p = &__p;
  sub_29A022DE0(&__p, v5 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(v4 + 16);
    v8 = (v4 + 16);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(p_p, v10, v5);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v5) = 95;
  v13 = *(a1 + 32);
  v12 = a1 + 32;
  v11 = v13;
  v14 = *(v12 + 23);
  if (v14 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v14 >= 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = *(v12 + 8);
  }

  v17 = std::string::append(&__p, v15, v16);
  *a2 = *v17;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29B23C3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23C3BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = *(a1 + 128);
    v7 = *(a1 + 136);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 32))(v6);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  else
  {
    v8 = sub_29B1F31FC();
    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(a2, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      *(a2 + 16) = *(v8 + 2);
      *a2 = v9;
    }
  }

  if (v5)
  {

    sub_29A014BEC(v5);
  }
}

void sub_29B23C4A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23C4CC(void *a1, uint64_t a2)
{
  if (a1[30] != a2)
  {
    v6[3] = v2;
    v6[4] = v3;
    sub_29B23C524(a1);
    if (a2)
    {
      a1[30] = a2;
      v6[0] = a1;
      sub_29A0A71C8(a2 + 240, v6);
    }
  }
}

void *sub_29B23C524(void *result)
{
  v1 = result[30];
  if (v1)
  {
    v2 = result;
    v4 = *(v1 + 240);
    v3 = *(v1 + 248);
    if (v4 != v3)
    {
      v5 = *(v1 + 240);
      while (*v5 != result)
      {
        ++v5;
        ++v4;
        if (v5 == v3)
        {
          v4 = *(v1 + 248);
          break;
        }
      }
    }

    if (v3 != v4)
    {
      v6 = (v3 - (v4 + 1));
      if (v3 != v4 + 1)
      {
        result = memmove(v4, v4 + 1, v3 - (v4 + 1));
      }

      *(v1 + 248) = &v6[v4];
    }

    v2[30] = 0;
  }

  return result;
}

uint64_t sub_29B23C5B0(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (*(v2 + 8) == *(*(a1 + 16) + 8))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void *sub_29B23C5EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 240);
  v4 = *(a1 + 248);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        goto LABEL_4;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_4:
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29B23C2B4(a1, &v17);
    v7 = std::string::insert(&v17, 0, "Cannot break non-existent connection from output: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v18, " to input: ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_29B23C2B4(a2, &v16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v16;
    }

    else
    {
      v11 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v19, v11, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21 = v13->__r_.__value_.__r.__words[2];
    v20 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v20);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  return sub_29B23C524(a2);
}

void sub_29B23C768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

void sub_29B23C81C(uint64_t a1)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_29B214228(&v20, *(a1 + 240), *(a1 + 248), (*(a1 + 248) - *(a1 + 240)) >> 3);
  v2 = v20;
  v3 = v21;
  while (v2 != v3)
  {
    v4 = *v2++;
    sub_29B23C524(v4);
  }

  if (*(a1 + 240) != *(a1 + 248))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::to_string(&v15, (*(a1 + 248) - *(a1 + 240)) >> 3);
    v6 = std::string::insert(&v15, 0, "Number of output connections not broken properly'");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v16, " for output: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29B23C2B4(a1, &v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v17, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v19 = v12->__r_.__value_.__r.__words[2];
    v18 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v18);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_29B23C9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      v37 = *(v35 - 56);
      if (v37)
      {
        *(v35 - 48) = v37;
        operator delete(v37);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v33);
  goto LABEL_14;
}

uint64_t sub_29B23CA70(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_2A20CAE08;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return a1;
}

void sub_29B23CB10(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t **a3@<X2>, void *a4@<X3>, std::string::size_type *a5@<X8>)
{
  v121 = a1;
  sub_29B23ECE8(&v121, a2, a5);
  v8 = *a4;
  (*(**a4 + 232))(&v119, *a4, a3, a4);
  v9 = *a5;
  v10 = v119;
  v119 = 0uLL;
  v11 = *(v9 + 184);
  *(v9 + 176) = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
    if (*(&v119 + 1))
    {
      sub_29A014BEC(*(&v119 + 1));
    }
  }

  if (!*(*a5 + 176))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29AABE2F0(a3);
    std::operator+<char>();
    v100 = std::string::append(&__p, "' matching target '");
    v101 = *&v100->__r_.__value_.__l.__data_;
    v117.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v117.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v102 = (*(*v8 + 16))(v8);
    v103 = *(v102 + 23);
    if (v103 >= 0)
    {
      v104 = v102;
    }

    else
    {
      v104 = *v102;
    }

    if (v103 >= 0)
    {
      v105 = *(v102 + 23);
    }

    else
    {
      v105 = *(v102 + 8);
    }

    v106 = std::string::append(&v117, v104, v105);
    v107 = *&v106->__r_.__value_.__l.__data_;
    v118.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v118.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    v108 = std::string::append(&v118, "'");
    v109 = *&v108->__r_.__value_.__l.__data_;
    v120 = v108->__r_.__value_.__r.__words[2];
    v119 = v109;
    v108->__r_.__value_.__l.__size_ = 0;
    v108->__r_.__value_.__r.__words[2] = 0;
    v108->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v119);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B1EB1E0(a3, &v119);
  v13 = *(&v119 + 1);
  for (i = v119; i != v13; i += 2)
  {
    v14 = (*(**i + 64))();
    v15 = sub_29B246738(v14);
    v16 = *i;
    v17 = sub_29B1F31FC();
    if (sub_29B1D18A4(v16, v17))
    {
      sub_29B23D768(*a5, (*i + 48), v15);
    }

    else
    {
      v18 = *i;
      v19 = sub_29B1F31FC();
      if (sub_29AAC1EC0(v18, v19))
      {
        v20 = *i;
        v114 = 0;
        v115 = 0;
        sub_29B1DB034(v20, &v114, &v118);
        if (v115)
        {
          sub_29A014BEC(v115);
        }

        memset(&v117, 0, sizeof(v117));
        v21 = *i;
        sub_29A008E78(&__p, off_2A14FDC88[0]);
        v22 = sub_29A8877BC((v21 + 160), &__p.__r_.__value_.__l.__data_);
        if (v22)
        {
          v23 = (v22 + 5);
        }

        else
        {
          v23 = sub_29B1F31FC();
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v24 = (*(**(*a4 + 8) + 200))(*(*a4 + 8), &v118, v15, v23, &v117);
        v25 = *a5;
        v26 = *i;
        if (v24)
        {
          v27 = sub_29B23D9F0(v25, (v26 + 48), v117.__r_.__value_.__l.__data_);
          v28 = v27;
          v30 = v117.__r_.__value_.__r.__words[2];
          size = v117.__r_.__value_.__l.__size_;
          if (v117.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v117.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v31 = *(v27 + 136);
          *(v28 + 128) = size;
          *(v28 + 136) = v30;
          if (v31)
          {
            sub_29A014BEC(v31);
          }

          if (!v30)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v28 = sub_29B23D9F0(v25, (v26 + 48), v15);
          v32 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
          if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v32 = v118.__r_.__value_.__l.__size_;
          }

          if (!v32)
          {
            goto LABEL_34;
          }

          v33 = *i;
          v110 = 0;
          v111 = 0;
          sub_29B2345F4(v33, &v110, &v112);
          v35 = v112;
          v34 = v113;
          if (v113)
          {
            atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v36 = *(v28 + 136);
          *(v28 + 128) = v35;
          *(v28 + 136) = v34;
          if (v36)
          {
            sub_29A014BEC(v36);
          }

          if (v113)
          {
            sub_29A014BEC(v113);
          }

          v30 = v111;
          if (!v111)
          {
            goto LABEL_34;
          }
        }

        sub_29A014BEC(v30);
LABEL_34:
        if (sub_29B2346E8(*i))
        {
          *(v28 + 232) |= 1u;
        }

        if (v117.__r_.__value_.__r.__words[2])
        {
          sub_29A014BEC(v117.__r_.__value_.__r.__words[2]);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v118.__r_.__value_.__r.__words[0] = &v119;
  sub_29A0176E4(&v118);
  (*(**(*a5 + 176) + 32))(*(*a5 + 176), *a5, a4);
  v37 = *a5;
  if (*(*a5 + 160) == *(*a5 + 152))
  {
    sub_29A008E78(&v119, "out");
    v38 = ((*a3)[8])(a3);
    v39 = sub_29B246738(v38);
    sub_29B23D768(v37, &v119, v39);
    if (SHIBYTE(v120) < 0)
    {
      operator delete(v119);
    }
  }

  v40 = sub_29B1EE708(a3);
  v41 = *a5;
  *(v41 + 40) = 1;
  v42 = *(v41 + 152);
  v43 = *v42;
  v44 = *(*v42 + 24);
  v45 = sub_29B24883C();
  if (sub_29A1B00DC(v44, v45))
  {
    v46 = *a5;
    v47 = 8;
LABEL_69:
    *(v46 + 40) = v47;
    goto LABEL_70;
  }

  v48 = *(v43 + 24);
  v49 = sub_29B24844C();
  v50 = sub_29A1B00DC(v48, v49);
  v51 = a3 + 6;
  if (v50)
  {
    v52 = *(a3 + 71);
    if (v52 < 0)
    {
      if (a3[7] != 16)
      {
        goto LABEL_60;
      }

      v53 = *v51;
    }

    else
    {
      v53 = (a3 + 6);
      if (v52 != 16)
      {
        goto LABEL_60;
      }
    }

    v59 = *v53;
    v58 = v53[1];
    if (v59 == 0x61667275735F444ELL && v58 == 0x74696C6E755F6563)
    {
      goto LABEL_66;
    }

LABEL_60:
    sub_29A008E78(&v119, "ND_convert_");
    if (sub_29B1F3958(a3 + 6, &v119))
    {
      sub_29A008E78(&v118, "_surfaceshader");
      v61 = sub_29B1F39FC(a3 + 6, &v118);
      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v61 = 0;
    }

    if (SHIBYTE(v120) < 0)
    {
      operator delete(v119);
      if (v61)
      {
        goto LABEL_66;
      }
    }

    else if (v61)
    {
LABEL_66:
      v46 = *a5;
      v47 = 147460;
      goto LABEL_69;
    }

    v46 = *a5;
    v47 = 16390;
    goto LABEL_69;
  }

  v54 = *(v43 + 24);
  v55 = sub_29B248548();
  if (sub_29A1B00DC(v54, v55))
  {
    v46 = *a5;
    v47 = 32774;
    goto LABEL_69;
  }

  v56 = *(v43 + 24);
  v57 = sub_29B248740();
  if (sub_29A1B00DC(v56, v57))
  {
    v46 = *a5;
    v47 = 65542;
    goto LABEL_69;
  }

  v77 = *(v43 + 24);
  v78 = sub_29B248158();
  if (!sub_29A1B00DC(v77, v78))
  {
    v81 = *(v43 + 24);
    v82 = sub_29B248254();
    if (sub_29A1B00DC(v81, v82))
    {
      v46 = *a5;
      v47 = 1026;
      goto LABEL_69;
    }

    v83 = *(v43 + 24);
    v84 = sub_29B248350();
    if (sub_29A1B00DC(v83, v84))
    {
      v46 = *a5;
      v47 = 2050;
      goto LABEL_69;
    }

    v92 = sub_29AABE2F0(a3);
    if (sub_29A0F2648(v92, qword_2A14FE698))
    {
      v46 = *a5;
      v47 = 65;
      goto LABEL_69;
    }

    v98 = sub_29AABE2F0(a3);
    if (sub_29A0F2648(v98, qword_2A14FE6A0))
    {
      v46 = *a5;
      v47 = 2097153;
      goto LABEL_69;
    }

    if (sub_29A0F2648(v40, qword_2A14FE6D0) || sub_29A0F2648(v40, qword_2A14FE6D8))
    {
      v46 = *a5;
      v47 = 17;
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  *(*a5 + 40) = 130;
  sub_29A008E78(&v119, "bsdf");
  v79 = sub_29A8877BC(a3 + 20, &v119);
  if (v79)
  {
    v80 = (v79 + 5);
  }

  else
  {
    v80 = sub_29B1F31FC();
  }

  if (SHIBYTE(v120) < 0)
  {
    operator delete(v119);
  }

  v85 = strlen(qword_2A14FE6C0);
  v86 = v85;
  v87 = *(v80 + 23);
  if (v87 < 0)
  {
    if (v85 != *(v80 + 1))
    {
      goto LABEL_127;
    }

    if (v85 == -1)
    {
      sub_29A0F26CC();
    }

    v88 = *v80;
  }

  else
  {
    v88 = v80;
    if (v86 != v87)
    {
      goto LABEL_127;
    }
  }

  if (!memcmp(v88, qword_2A14FE6C0, v86))
  {
    v46 = *a5;
    v91 = *(*a5 + 40) | 0x100;
    goto LABEL_133;
  }

LABEL_127:
  v89 = sub_29A0F2648(v80, qword_2A14FE6C8);
  v46 = *a5;
  v90 = *(*a5 + 40);
  if (v89)
  {
    v91 = v90 | 0x200;
  }

  else
  {
    v91 = v90 | 0x300;
  }

LABEL_133:
  *(v46 + 40) = v91;
  v93 = *(a3 + 71);
  if ((v93 & 0x80000000) == 0)
  {
    v94 = (a3 + 6);
    if (v93 != 13)
    {
      goto LABEL_142;
    }

LABEL_138:
    v95 = *v94;
    v96 = *(v94 + 5);
    if (v95 == 0x726579616C5F444ELL && v96 == 0x666473625F726579)
    {
      goto LABEL_144;
    }

    goto LABEL_142;
  }

  if (a3[7] == 13)
  {
    v94 = *v51;
    goto LABEL_138;
  }

LABEL_142:
  if (sub_29A0F2648(a3 + 6, "ND_layer_vdf"))
  {
    v46 = *a5;
LABEL_144:
    v47 = *(v46 + 40) | 0x1000;
    goto LABEL_69;
  }

  if (sub_29A0F2648(a3 + 6, "ND_thin_film_bsdf"))
  {
    v46 = *a5;
    v47 = *(*a5 + 40) | 0x2000;
    goto LABEL_69;
  }

LABEL_70:
  v62 = strlen(qword_2A14FE6D0);
  v63 = v62;
  v64 = *(v40 + 23);
  if (v64 < 0)
  {
    if (v62 != *(v40 + 1))
    {
      goto LABEL_77;
    }

    if (v62 == -1)
    {
      sub_29A0F26CC();
    }

    v65 = *v40;
  }

  else
  {
    v65 = v40;
    if (v63 != v64)
    {
      goto LABEL_77;
    }
  }

  if (!memcmp(v65, qword_2A14FE6D0, v63))
  {
    goto LABEL_87;
  }

LABEL_77:
  v66 = strlen(qword_2A14FE6E0);
  v67 = v66;
  if ((v64 & 0x80000000) != 0)
  {
    if (v66 != *(v40 + 1))
    {
      goto LABEL_84;
    }

    if (v66 == -1)
    {
      sub_29A0F26CC();
    }

    v68 = *v40;
LABEL_83:
    if (memcmp(v68, qword_2A14FE6E0, v67))
    {
      goto LABEL_84;
    }

LABEL_87:
    v72 = 0x40000;
LABEL_108:
    *(*a5 + 40) |= v72;
    goto LABEL_109;
  }

  v68 = v40;
  if (v67 == v64)
  {
    goto LABEL_83;
  }

LABEL_84:
  v69 = strlen(qword_2A14FE6D8);
  v70 = v69;
  if ((v64 & 0x80000000) != 0)
  {
    if (v69 != *(v40 + 1))
    {
      goto LABEL_92;
    }

    if (v69 == -1)
    {
      sub_29A0F26CC();
    }

    v71 = *v40;
  }

  else
  {
    v71 = v40;
    if (v70 != v64)
    {
      goto LABEL_92;
    }
  }

  if (!memcmp(v71, qword_2A14FE6D8, v70))
  {
LABEL_102:
    v72 = 0x80000;
    goto LABEL_108;
  }

LABEL_92:
  v73 = strlen(qword_2A14FE6E8);
  v74 = v73;
  if ((v64 & 0x80000000) != 0)
  {
    if (v73 != *(v40 + 1))
    {
      goto LABEL_99;
    }

    if (v73 == -1)
    {
      sub_29A0F26CC();
    }

    v75 = *v40;
LABEL_98:
    if (memcmp(v75, qword_2A14FE6E8, v74))
    {
      goto LABEL_99;
    }

    goto LABEL_102;
  }

  v75 = v40;
  if (v74 == v64)
  {
    goto LABEL_98;
  }

LABEL_99:
  v76 = strlen(qword_2A14FE6F0);
  if ((v64 & 0x80000000) != 0)
  {
    if (v76 != *(v40 + 1))
    {
      goto LABEL_109;
    }

    if (v76 == -1)
    {
      sub_29A0F26CC();
    }

    v40 = *v40;
  }

  else if (v76 != v64)
  {
    goto LABEL_109;
  }

  if (!memcmp(v40, qword_2A14FE6F0, v76))
  {
    v72 = 0x100000;
    goto LABEL_108;
  }

LABEL_109:
  sub_29B23DC78(*a5, a3, a4);
}

void sub_29B23D5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      v39 = *(v34 + 8);
      if (v39)
      {
        sub_29A014BEC(v39);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v35);
  goto LABEL_12;
}

uint64_t sub_29B23D768(std::string::size_type a1, const void **a2, uint64_t a3)
{
  v31 = a3;
  v5 = sub_29A5DAB7C((a1 + 112), a2);
  if (v5 && v5[5])
  {
    v12 = a1;
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v14 = std::string::append(&v26, "' already exists on node '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v18 = *(v12 + 16);
    v17 = v12 + 16;
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

    if (v19 >= 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = *(v17 + 8);
    }

    v22 = std::string::append(&v27, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v28, "'");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v30 = v24->__r_.__value_.__r.__words[2];
    v29 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v29);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v28.__r_.__value_.__r.__words[0] = a1;
  sub_29B23F484(&v28, &v31, a2, &v29);
  v28.__r_.__value_.__r.__words[0] = a2;
  v6 = sub_29B23F668(a1 + 112, a2, &unk_29B7695AC, &v28);
  v8 = *(&v29 + 1);
  v7 = v29;
  if (*(&v29 + 1))
  {
    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[6];
  v6[5] = v7;
  v6[6] = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
    v7 = v29;
  }

  v28.__r_.__value_.__r.__words[0] = v7;
  sub_29A0A71C8(a1 + 152, &v28);
  v10 = v29;
  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  return v10;
}

void sub_29B23D940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
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
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

uint64_t sub_29B23D9F0(std::string::size_type a1, const void **a2, uint64_t a3)
{
  v31 = a3;
  v5 = sub_29A5DAB7C((a1 + 48), a2);
  if (v5 && v5[5])
  {
    v12 = a1;
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v14 = std::string::append(&v26, "' already exists on node '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v18 = *(v12 + 16);
    v17 = v12 + 16;
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

    if (v19 >= 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = *(v17 + 8);
    }

    v22 = std::string::append(&v27, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v28, "'");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v30 = v24->__r_.__value_.__r.__words[2];
    v29 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v29);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v28.__r_.__value_.__r.__words[0] = a1;
  sub_29B23EF8C(&v28, &v31, a2, &v29);
  v28.__r_.__value_.__r.__words[0] = a2;
  v6 = sub_29B23F174(a1 + 48, a2, &unk_29B7695AC, &v28);
  v8 = *(&v29 + 1);
  v7 = v29;
  if (*(&v29 + 1))
  {
    atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[6];
  v6[5] = v7;
  v6[6] = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
    v7 = v29;
  }

  v28.__r_.__value_.__r.__words[0] = v7;
  sub_29A0A71C8(a1 + 88, &v28);
  v10 = v29;
  if (*(&v29 + 1))
  {
    sub_29A014BEC(*(&v29 + 1));
  }

  return v10;
}

void sub_29B23DBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
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
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

void sub_29B23DC78(uint64_t a1, void *a2, uint64_t a3)
{
  sub_29A008E78(__p, off_2A14FE690[0]);
  sub_29B2328AC(a3, __p, &v56);
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  if (v56 && v56[4] != v56[3])
  {
    v6 = *(a1 + 192);
    v7 = *(a1 + 200);
    v46 = a1;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = a2[25];
    v8 = a2[26];
    if (v9 != v8)
    {
      while (1)
      {
        v10 = v56;
        v11 = sub_29A5DAB7C(v56 + 6, v9);
        if (v11)
        {
          v12 = v10[3];
          if (v12)
          {
            v13 = v11[5];
            v14 = sub_29A8877BC(a2 + 20, v9);
            if (v14)
            {
              v15 = (v14 + 5);
            }

            else
            {
              v15 = sub_29B1F31FC();
            }

            if ((*(v15 + 23) & 0x8000000000000000) != 0)
            {
              if (*(v15 + 1))
              {
LABEL_15:
                v16 = v12 + 48 * v13;
                sub_29B1FB24C(v15, *(v16 + 24), &v50);
                v17 = v50;
                if (v50)
                {
                  goto LABEL_21;
                }

                v17 = *(v16 + 32);
                v18 = *(v16 + 40);
                if (v18)
                {
                  atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
                }

                v19 = *(&v50 + 1);
                *&v50 = v17;
                *(&v50 + 1) = v18;
                if (v19)
                {
                  sub_29A014BEC(v19);
                  v17 = v50;
                }

                if (v17)
                {
LABEL_21:
                  if (v6)
                  {
                    v20 = v7;
                  }

                  else
                  {
                    v20 = operator new(0x30uLL);
                    v20->__shared_owners_ = 0;
                    v20->__shared_weak_owners_ = 0;
                    v20->__vftable = &unk_2A20CAED0;
                    v20[1].__vftable = 0;
                    v6 = &v20[1];
                    v20[1].__shared_owners_ = 0;
                    v20[1].__shared_weak_owners_ = 0;
                    if (v7)
                    {
                      sub_29A014BEC(v7);
                    }

                    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                    v21 = *(v46 + 200);
                    *(v46 + 192) = v6;
                    *(v46 + 200) = v20;
                    if (v21)
                    {
                      sub_29A014BEC(v21);
                    }

                    sub_29A014BEC(v20);
                    v17 = v50;
                  }

                  v22 = *(v16 + 24);
                  v51 = v17;
                  v52 = *(&v50 + 1);
                  if (*(&v50 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_29B233000(__p, v16, v22, &v51);
                  sub_29B23EBA8(v6, __p);
                  if (v55)
                  {
                    sub_29A014BEC(v55);
                  }

                  if (v54 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v52)
                  {
                    sub_29A014BEC(v52);
                  }
                }

                else
                {
                  v20 = v7;
                }

                if (*(&v50 + 1))
                {
                  sub_29A014BEC(*(&v50 + 1));
                }

                goto LABEL_25;
              }
            }

            else if (*(v15 + 23))
            {
              goto LABEL_15;
            }
          }
        }

        v20 = v7;
LABEL_25:
        v9 += 3;
        v7 = v20;
        if (v9 == v8)
        {
          goto LABEL_44;
        }
      }
    }

    v20 = v7;
LABEL_44:
    sub_29B1EB1E0(a2, &v50);
    v23 = *(&v50 + 1);
    v24 = v50;
    v25 = v46;
    if (v50 != *(&v50 + 1))
    {
      v45 = *(&v50 + 1);
      do
      {
        v26 = sub_29A5DAB7C((v25 + 48), (*v24 + 48));
        if (v26)
        {
          v27 = v26[5];
          if (v27)
          {
            v28 = v27[27];
            v29 = v27[28];
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v31 = *(*v24 + 200);
            v30 = *(*v24 + 208);
            if (v31 != v30)
            {
              while (1)
              {
                v32 = v56;
                v33 = sub_29A5DAB7C(v56 + 6, v31);
                if (v33)
                {
                  v34 = v32[3];
                  if (v34)
                  {
                    v35 = v33[5];
                    v36 = sub_29A8877BC((*v24 + 160), v31);
                    if (v36)
                    {
                      v37 = (v36 + 5);
                    }

                    else
                    {
                      v37 = sub_29B1F31FC();
                    }

                    if ((*(v37 + 23) & 0x8000000000000000) != 0)
                    {
                      if (*(v37 + 1))
                      {
LABEL_58:
                        v38 = v34 + 48 * v35;
                        v39 = *(v38 + 24);
                        if (!v39)
                        {
                          v39 = v27[3];
                        }

                        sub_29B1FB24C(v37, v39, &v49);
                        v40 = v49;
                        if (v49)
                        {
                          goto LABEL_66;
                        }

                        v40 = *(v38 + 32);
                        v41 = *(v38 + 40);
                        if (v41)
                        {
                          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
                        }

                        v42 = *(&v49 + 1);
                        *&v49 = v40;
                        *(&v49 + 1) = v41;
                        if (v42)
                        {
                          sub_29A014BEC(v42);
                          v40 = v49;
                        }

                        if (v40)
                        {
LABEL_66:
                          if (v28)
                          {
                            v43 = v29;
                          }

                          else
                          {
                            v43 = operator new(0x30uLL);
                            v43->__shared_owners_ = 0;
                            v43->__shared_weak_owners_ = 0;
                            v43->__vftable = &unk_2A20CAED0;
                            v43[1].__vftable = 0;
                            v28 = &v43[1];
                            v43[1].__shared_owners_ = 0;
                            v43[1].__shared_weak_owners_ = 0;
                            if (v29)
                            {
                              sub_29A014BEC(v29);
                            }

                            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
                            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
                            v44 = v27[28];
                            v27[27] = v28;
                            v27[28] = v43;
                            if (v44)
                            {
                              sub_29A014BEC(v44);
                            }

                            sub_29A014BEC(v43);
                            v40 = v49;
                          }

                          v47 = v40;
                          v48 = *(&v49 + 1);
                          if (*(&v49 + 1))
                          {
                            atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
                          }

                          sub_29B233000(__p, v38, v39, &v47);
                          sub_29B23EBA8(v28, __p);
                          if (v55)
                          {
                            sub_29A014BEC(v55);
                          }

                          if (v54 < 0)
                          {
                            operator delete(__p[0]);
                          }

                          if (v48)
                          {
                            sub_29A014BEC(v48);
                          }
                        }

                        else
                        {
                          v43 = v29;
                        }

                        if (*(&v49 + 1))
                        {
                          sub_29A014BEC(*(&v49 + 1));
                        }

                        goto LABEL_70;
                      }
                    }

                    else if (*(v37 + 23))
                    {
                      goto LABEL_58;
                    }
                  }
                }

                v43 = v29;
LABEL_70:
                v31 += 3;
                v29 = v43;
                if (v31 == v30)
                {
                  goto LABEL_89;
                }
              }
            }

            v43 = v29;
LABEL_89:
            v23 = v45;
            v25 = v46;
            if (v43)
            {
              sub_29A014BEC(v43);
            }
          }
        }

        v24 += 16;
      }

      while (v24 != v23);
    }

    __p[0] = &v50;
    sub_29A0176E4(__p);
    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  if (v57)
  {
    sub_29A014BEC(v57);
  }
}

void sub_29B23E130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v29 = *(v27 - 96);
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B23E23C(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v12 = a1;
  sub_29B23ECE8(&v12, a2, a5);
  v8 = *a5;
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v8 + 184);
  *(v8 + 176) = v10;
  *(v8 + 184) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  *(*a5 + 40) = a4;
}

void sub_29B23E2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29B1EA6E8(a2, &v71);
  v7 = v71;
  v8 = v72;
  v56 = a1;
  while (v7 != v8)
  {
    v10 = *v7;
    v9 = v7[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = sub_29A5DAB7C((a1 + 48), (v10 + 48));
    if (v11)
    {
      v12 = v11[5];
    }

    else
    {
      v12 = 0;
    }

    sub_29B1EAF90(a3, (v10 + 48), &v69);
    if (!v12 || !v69)
    {
      goto LABEL_43;
    }

    v66 = 0;
    v67 = 0;
    sub_29B2345F4(v10, &v66, &v68);
    if (v67)
    {
      sub_29A014BEC(v67);
    }

    v13 = v68;
    if (v68)
    {
      goto LABEL_19;
    }

    sub_29B1E9A10(v10, &__str);
    if (__str.__r_.__value_.__r.__words[0])
    {
      sub_29B1C8518(__str.__r_.__value_.__l.__data_, &v64);
      v14 = *&v64.__r_.__value_.__l.__data_;
      *&v64.__r_.__value_.__l.__data_ = 0uLL;
      v15 = *(&v68 + 1);
      v68 = v14;
      if (v15)
      {
        sub_29A014BEC(v15);
        if (v64.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(v64.__r_.__value_.__l.__size_);
        }
      }
    }

    if (__str.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__str.__r_.__value_.__l.__size_);
    }

    v13 = v68;
    if (v68)
    {
LABEL_19:
      (*(*v13 + 32))(&__str);
    }

    else
    {
      v26 = sub_29B1F31FC();
      if (*(v26 + 23) < 0)
      {
        sub_29A008D14(&__str, *v26, *(v26 + 1));
      }

      else
      {
        v27 = *v26;
        __str.__r_.__value_.__r.__words[2] = *(v26 + 2);
        *&__str.__r_.__value_.__l.__data_ = v27;
      }
    }

    memset(&v64, 0, sizeof(v64));
    v16 = v69;
    sub_29A008E78(&__p, off_2A14FDC88[0]);
    v17 = sub_29A8877BC((v16 + 160), &__p.__r_.__value_.__l.__data_);
    if (v17)
    {
      v18 = (v17 + 5);
    }

    else
    {
      v18 = sub_29B1F31FC();
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v19 = (*(*v69 + 64))(v69);
    v20 = sub_29B246738(v19);
    if ((*(**(*a4 + 8) + 200))(*(*a4 + 8), &__str, v20, v18, &v64))
    {
      v22 = v64.__r_.__value_.__r.__words[2];
      size = v64.__r_.__value_.__l.__size_;
      if (v64.__r_.__value_.__r.__words[2])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = __str.__r_.__value_.__l.__size_;
      }

      if (!v24)
      {
        goto LABEL_37;
      }

      v22 = *(&v68 + 1);
      size = v68;
      if (*(&v68 + 1))
      {
LABEL_27:
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v23 = *(v12 + 17);
    *(v12 + 16) = size;
    *(v12 + 17) = v22;
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    if (v22)
    {
      sub_29A014BEC(v22);
    }

LABEL_37:
    v25 = sub_29B1D22C0(v10);
    std::string::operator=((v12 + 248), v25);
    if (v64.__r_.__value_.__r.__words[2])
    {
      sub_29A014BEC(v64.__r_.__value_.__r.__words[2]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (*(&v68 + 1))
    {
      sub_29A014BEC(*(&v68 + 1));
    }

LABEL_43:
    if (v70)
    {
      sub_29A014BEC(v70);
    }

    a1 = v56;
    if (v9)
    {
      sub_29A014BEC(v9);
    }

    v7 += 2;
  }

  __str.__r_.__value_.__r.__words[0] = &v71;
  sub_29A0176E4(&__str);
  v28 = *(a1 + 176);
  if (v28)
  {
    (*(*v28 + 40))(v28, a2, a1, a4);
  }

  sub_29B1EB1E0(a2, &v71);
  v29 = v71;
  v30 = v72;
  while (v29 != v30)
  {
    v31 = sub_29A5DAB7C((a1 + 48), (*v29 + 48));
    if (v31)
    {
      v32 = v31[5];
      if (v32)
      {
        v33 = *v29;
        v61 = 0;
        v62 = 0;
        sub_29B1D8824(v33, &v61, &__str);
        if (v62)
        {
          sub_29A014BEC(v62);
        }

        sub_29B1D7C40(*v29, &__p);
        if (__p.__r_.__value_.__r.__words[0])
        {
          sub_29B1E9A10(__p.__r_.__value_.__l.__data_, &v69);
          if (v69)
          {
            v59 = 0;
            v60 = 0;
            sub_29B1D8824(v69, &v59, &v64);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = v64;
            *(&v64.__r_.__value_.__s + 23) = 0;
            v64.__r_.__value_.__s.__data_[0] = 0;
            if (v60)
            {
              sub_29A014BEC(v60);
            }
          }

          if (v70)
          {
            sub_29A014BEC(v70);
          }
        }

        std::string::operator=((v32 + 56), &__str);
        if (__p.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(__p.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }
    }

    v29 += 2;
  }

  __str.__r_.__value_.__r.__words[0] = &v71;
  sub_29A0176E4(&__str);
  v57 = 0;
  v58 = 0;
  sub_29B1D8824(a2, &v57, &v71);
  if (v58)
  {
    sub_29A014BEC(v58);
  }

  sub_29B1EA6E8(a3, &__str);
  v35 = __str.__r_.__value_.__l.__size_;
  for (i = __str.__r_.__value_.__r.__words[0]; i != v35; i += 2)
  {
    v36 = *i;
    v37 = i[1];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = sub_29A5DAB7C((a1 + 48), (v36 + 48));
    if (v38)
    {
      v39 = v38[5];
      if (v39)
      {
        if ((v39[79] & 0x8000000000000000) != 0)
        {
          if (*(v39 + 8))
          {
            goto LABEL_106;
          }
        }

        else if (v39[79])
        {
          goto LABEL_106;
        }

        v40 = off_2A14FDF40[0];
        if ((v73 & 0x80u) == 0)
        {
          v41 = v73;
        }

        else
        {
          v41 = v72;
        }

        v42 = strlen(off_2A14FDF40[0]);
        sub_29A022DE0(&__p, v41 + v42);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v41)
        {
          if ((v73 & 0x80u) == 0)
          {
            v44 = &v71;
          }

          else
          {
            v44 = v71;
          }

          memmove(p_p, v44, v41);
        }

        v45 = p_p + v41;
        if (v42)
        {
          memmove(v45, v40, v42);
        }

        v45[v42] = 0;
        v46 = *(v36 + 71);
        if (v46 >= 0)
        {
          v47 = (v36 + 48);
        }

        else
        {
          v47 = *(v36 + 48);
        }

        if (v46 >= 0)
        {
          v48 = *(v36 + 71);
        }

        else
        {
          v48 = *(v36 + 56);
        }

        v49 = std::string::append(&__p, v47, v48);
        a1 = v56;
        v50 = *&v49->__r_.__value_.__l.__data_;
        v64.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
        *&v64.__r_.__value_.__l.__data_ = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        std::string::operator=((v39 + 56), &v64);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v37)
          {
            continue;
          }

LABEL_107:
          sub_29A014BEC(v37);
          continue;
        }
      }
    }

LABEL_106:
    if (v37)
    {
      goto LABEL_107;
    }
  }

  v64.__r_.__value_.__r.__words[0] = &__str;
  sub_29A0176E4(&v64);
  if ((*(a1 + 40) & 0x80) != 0)
  {
    sub_29A008E78(&__str, qword_2A14FE6B8);
    sub_29AAC1E24(a2, &__str.__r_.__value_.__l.__data_, &v64);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v64.__r_.__value_.__r.__words[0])
    {
      v51 = sub_29AAC0680(v64.__r_.__value_.__l.__data_);
    }

    else
    {
      v51 = sub_29B1F31FC();
    }

    v52 = v51;
    v53 = strlen(qword_2A14FE6C8);
    v54 = *(v52 + 23);
    if (v54 < 0)
    {
      if (v53 != *(v52 + 1))
      {
        goto LABEL_126;
      }

      if (v53 == -1)
      {
        sub_29A0F26CC();
      }

      v52 = *v52;
    }

    else if (v53 != v54)
    {
LABEL_126:
      if (v64.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(v64.__r_.__value_.__l.__size_);
      }

      goto LABEL_128;
    }

    if (!memcmp(v52, qword_2A14FE6C8, v53))
    {
      *(a1 + 40) = *(a1 + 40) & 0xFFFFFCFF | 0x200;
    }

    goto LABEL_126;
  }

LABEL_128:
  if (v73 < 0)
  {
    operator delete(v71);
  }
}

void sub_29B23E9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, std::__shared_weak_count *a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a25)
  {
    sub_29A014BEC(a25);
  }

  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B23EB84(uint64_t a1, const void **a2)
{
  result = sub_29A5DAB7C((a1 + 48), a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

uint64_t sub_29B23EBA8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29B23EE40(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

const void **sub_29B23EC14(uint64_t a1, const void **a2)
{
  result = sub_29A5DAB7C((a1 + 112), a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

const void **sub_29B23EC38(uint64_t a1, const void **a2)
{
  result = sub_29A8877BC((a1 + 48), a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

void sub_29B23EC7C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAE80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B23ECE8@<X0>(uint64_t *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xE8uLL);
  result = sub_29B23ED4C(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29B23ED4C(void *a1, uint64_t *a2, __int128 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CAE80;
  sub_29B23CA70((a1 + 3), *a2, a3);
  return a1;
}

void sub_29B23EDCC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B23EE40(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[48 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[48 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 5) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v18 = v8 + 48;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_29B233568(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_29B233714(&v16);
  return v15;
}

void sub_29B23EF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29B233714(va);
  _Unwind_Resume(a1);
}

void sub_29B23EF8C(uint64_t *a1@<X1>, uint64_t *a2@<X2>, __int128 *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x128uLL);
  sub_29B23F018(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;

  sub_29A017894(a4, v8 + 3, (v8 + 3));
}

uint64_t sub_29B23F018(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A20CAF20;
  v5 = *a2;
  v6 = *a3;
  v8 = 0u;
  sub_29B23C198(a1 + 24, v5, v6, a4, &v8);
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return a1;
}

void sub_29B23F0BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAF20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B23F130(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 271) < 0)
  {
    operator delete(*(a2 + 248));
  }

  return sub_29B22E5C0(a2);
}

const void **sub_29B23F174(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B23F3E0(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B23F3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B23F3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29B23F484(uint64_t *a1@<X1>, uint64_t *a2@<X2>, __int128 *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x120uLL);
  sub_29B23F510(v8, a1, a2, a3);
  *a4 = v8 + 3;
  a4[1] = v8;

  sub_29A017894(a4, v8 + 3, (v8 + 3));
}

uint64_t sub_29B23F510(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A20CAF70;
  v5 = *a2;
  v6 = *a3;
  v8 = 0u;
  sub_29B23C198(a1 + 24, v5, v6, a4, &v8);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  return a1;
}

void sub_29B23F5B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CAF70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B23F624(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 240);
  if (v3)
  {
    *(a2 + 248) = v3;
    operator delete(v3);
  }

  return sub_29B22E5C0(a2);
}

const void **sub_29B23F668(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B23F8D4(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B23F8BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B23F8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

void *sub_29B23F978(void *a1)
{
  *a1 = &unk_2A20CAFC0;
  v2 = a1 + 1;
  v3 = sub_29B1F31FC();
  if (*(v3 + 23) < 0)
  {
    sub_29A008D14(v2, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    v2[2] = *(v3 + 2);
    *v2 = v4;
  }

  a1[4] = 0;
  return a1;
}

unint64_t sub_29B23F9EC(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 8), a2 + 2);
  result = sub_29A12A708(&v4, a1 + 8);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_29B23FA48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a2 + 160) != *(a2 + 152))
  {
    v7 = 0;
    v8 = *a3;
    do
    {
      (*(*v8 + 48))(v8, a4);
      (*(*v8 + 192))(v8, *(*(a2 + 152) + 8 * v7), 1, 1, a3, a4);
      result = (*(*v8 + 56))(v8, a4, 1);
      ++v7;
    }

    while (v7 < (*(a2 + 160) - *(a2 + 152)) >> 3);
  }

  return result;
}

double sub_29B23FB50@<D0>(_OWORD *a1@<X8>)
{
  sub_29B23FC3C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

uint64_t sub_29B23FB8C(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B23FBDC(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B23FC3C@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B23FC88(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B23FC88(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CB050;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CB0A0;
  return a1;
}

void sub_29B23FD30(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B23FD9C(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B23FDEC(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

const void *sub_29B23FE4C(uint64_t a1, const void **a2)
{
  v3 = sub_29A5DAB7C((a1 + 48), a2);
  if (!v3 || (result = v3[5]) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v6 = std::string::append(&v15, "' exists for block '");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = std::string::append(&v16, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v17, "'");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v19 = v13->__r_.__value_.__r.__words[2];
    v18 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v18);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  return result;
}

void sub_29B23FF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
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
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

void *sub_29B240028(uint64_t a1, uint64_t a2, const void **a3, uint64_t *a4, int a5)
{
  v44 = a2;
  v10 = sub_29A5DAB7C((a1 + 48), a3);
  if (v10)
  {
    v11 = v10;
    v12 = v10[5];
    v13 = v12[3];
    if (a5)
    {
      if (*(v13 + 32) < *(a2 + 32))
      {
        v12[3] = a2;
      }
    }

    else if (v13 != a2)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v20 = std::string::append(&v37, "' with type '");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = *(a2 + 23);
      if (v22 >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      if (v22 >= 0)
      {
        v24 = *(a2 + 23);
      }

      else
      {
        v24 = *(a2 + 8);
      }

      v25 = std::string::append(&v38, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v39, "', but existing shader port with type '");
      v28 = *&v27->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = *(v11[5] + 3);
      v30 = *(v29 + 23);
      if (v30 >= 0)
      {
        v31 = *(v11[5] + 3);
      }

      else
      {
        v31 = *v29;
      }

      if (v30 >= 0)
      {
        v32 = *(v29 + 23);
      }

      else
      {
        v32 = *(v29 + 8);
      }

      v33 = std::string::append(&v40, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v41, "' was found");
      v36 = *&v35->__r_.__value_.__l.__data_;
      v43 = v35->__r_.__value_.__r.__words[2];
      v42 = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &v42);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }
  }

  else
  {
    v41.__r_.__value_.__r.__words[0] = 0;
    sub_29B242144(&v41, &v44, a3, a4, &v42);
    v41.__r_.__value_.__r.__words[0] = a3;
    v14 = sub_29B242340(a1 + 48, a3, &unk_29B7696E4, &v41);
    v16 = *(&v42 + 1);
    v15 = v42;
    if (*(&v42 + 1))
    {
      atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v17 = v14[6];
    v14[5] = v15;
    v14[6] = v16;
    if (v17)
    {
      sub_29A014BEC(v17);
      v15 = v42;
    }

    v41.__r_.__value_.__r.__words[0] = v15;
    sub_29A0A71C8(a1 + 88, &v41);
    v12 = v42;
    if (*(&v42 + 1))
    {
      sub_29A014BEC(*(&v42 + 1));
    }
  }

  return v12;
}

void sub_29B2402B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
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
    if ((v43 & 1) == 0)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_16;
  }

  __cxa_free_exception(v42);
  goto LABEL_16;
}

void sub_29B240398(uint64_t a1, const void ***a2)
{
  if (!sub_29A8877BC((a1 + 48), *a2 + 4))
  {
    v8 = *a2 + 4;
    v4 = sub_29B242340(a1 + 48, v8, &unk_29B7696E4, &v8);
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }

    v7 = v4[6];
    v4[5] = v6;
    v4[6] = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }

    v8 = *a2;
    sub_29A0A71C8(a1 + 88, &v8);
  }
}

char *sub_29B240438(char *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  *(__dst + 6) = *a3;
  v6 = a3[1];
  *(__dst + 7) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(__dst + 9) = 0;
  *(__dst + 16) = 0;
  *(__dst + 10) = 0;
  *(__dst + 11) = 0;
  *(__dst + 13) = 0;
  *(__dst + 12) = __dst + 104;
  *(__dst + 16) = 0;
  *(__dst + 14) = 0;
  *(__dst + 15) = __dst + 128;
  *(__dst + 17) = 0;
  *(__dst + 19) = 0;
  *(__dst + 18) = __dst + 152;
  *(__dst + 20) = 0;
  sub_29A008E78(v10, "Constants");
  sub_29A008E78(__p, "cn");
  sub_29B242094(__dst + 168, v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  *(__dst + 280) = 0u;
  *(__dst + 296) = 0u;
  *(__dst + 78) = 1065353216;
  *(__dst + 20) = 0u;
  *(__dst + 21) = 0u;
  *(__dst + 88) = 1065353216;
  *(__dst + 360) = 0u;
  *(__dst + 376) = 0u;
  *(__dst + 98) = 1065353216;
  *(__dst + 51) = 0;
  *(__dst + 52) = 0;
  *(__dst + 50) = 0;
  return __dst;
}

void sub_29B2405A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_29A082B84(v23, *(v20 + 152));
  sub_29A019EE8(v22, *(v20 + 128));
  sub_29A019EE8(v21, *(v20 + 104));
  sub_29B226ED4(&a15);
  v26 = *(v20 + 56);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (*(v20 + 47) < 0)
  {
    operator delete(*v24);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(a1);
}

void sub_29B240640(uint64_t a1@<X0>, const void **a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  v8 = sub_29A5DAB7C((a1 + 280), a2);
  if (v8)
  {
    v9 = v8[6];
    *a4 = v8[5];
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B242650(a2, a3, a4);
    v14 = a2;
    v10 = sub_29B242814(a1 + 280, a2, &unk_29B7696E4, &v14);
    v12 = *a4;
    v11 = a4[1];
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = v10[6];
    v10[5] = v12;
    v10[6] = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }
}

void sub_29B240700(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B240718(uint64_t a1@<X0>, const void **a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  v8 = sub_29A5DAB7C((a1 + 320), a2);
  if (v8)
  {
    v9 = v8[6];
    *a4 = v8[5];
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B242650(a2, a3, a4);
    v14 = a2;
    v10 = sub_29B242814(a1 + 320, a2, &unk_29B7696E4, &v14);
    v12 = *a4;
    v11 = a4[1];
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = v10[6];
    v10[5] = v12;
    v10[6] = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }
}

void sub_29B2407D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2407F0(uint64_t a1@<X0>, const void **a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  v8 = sub_29A5DAB7C((a1 + 360), a2);
  if (v8)
  {
    v9 = v8[6];
    *a4 = v8[5];
    a4[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_29B242650(a2, a3, a4);
    v14 = a2;
    v10 = sub_29B242814(a1 + 360, a2, &unk_29B7696E4, &v14);
    v12 = *a4;
    v11 = a4[1];
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = v10[6];
    v10[5] = v12;
    v10[6] = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }
  }
}

void sub_29B2408B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_29B2408C8(uint64_t a1, const void **a2)
{
  v3 = sub_29A5DAB7C((a1 + 280), a2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v6 = std::string::append(&v15, "' exists for shader stage '");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = std::string::append(&v16, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v17, "'");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v19 = v13->__r_.__value_.__r.__words[2];
    v18 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v18);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  return v3[5];
}

void sub_29B240A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
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
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

const void *sub_29B240AA4(uint64_t a1, const void **a2)
{
  v3 = sub_29A5DAB7C((a1 + 320), a2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v6 = std::string::append(&v15, "' exists for shader stage '");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = std::string::append(&v16, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v17, "'");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v19 = v13->__r_.__value_.__r.__words[2];
    v18 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v18);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  return v3[5];
}

void sub_29B240BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
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
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

const void *sub_29B240C7C(uint64_t a1, const void **a2)
{
  v3 = sub_29A5DAB7C((a1 + 360), a2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v6 = std::string::append(&v15, "' exists for shader stage '");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = std::string::append(&v16, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v17, "'");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v19 = v13->__r_.__value_.__r.__words[2];
    v18 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v18);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  return v3[5];
}

void sub_29B240DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
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
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

void sub_29B240E5C(uint64_t a1, int a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      sub_29B2410E4(a1);
      (*(**(a1 + 48) + 88))(*(a1 + 48));
      std::operator+<char>();
      if (SHIBYTE(v8[0]) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (SHIBYTE(v8[0]) >= 0)
      {
        v5 = HIBYTE(v8[0]);
      }

      else
      {
        v5 = v7;
      }
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_32;
      }

      sub_29B2410E4(a1);
      (*(**(a1 + 48) + 88))(*(a1 + 48));
      std::operator+<char>();
      if (SHIBYTE(v8[0]) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (SHIBYTE(v8[0]) >= 0)
      {
        v5 = HIBYTE(v8[0]);
      }

      else
      {
        v5 = v7;
      }
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_32;
    }

    sub_29B2410E4(a1);
    (*(**(a1 + 48) + 88))(*(a1 + 48));
    std::operator+<char>();
    if (SHIBYTE(v8[0]) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (SHIBYTE(v8[0]) >= 0)
    {
      v5 = HIBYTE(v8[0]);
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    sub_29B2410E4(a1);
    (*(**(a1 + 48) + 88))(*(a1 + 48));
    std::operator+<char>();
    if (SHIBYTE(v8[0]) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (SHIBYTE(v8[0]) >= 0)
    {
      v5 = HIBYTE(v8[0]);
    }

    else
    {
      v5 = v7;
    }
  }

  std::string::append((a1 + 400), p_p, v5);
  if (SHIBYTE(v8[0]) < 0)
  {
    operator delete(__p);
  }

LABEL_32:
  ++*(a1 + 64);
  LODWORD(__p) = a2;
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  sub_29B241170((a1 + 72), &__p);
  sub_29A082B84(&v7, v8[0]);
}

void sub_29B2410A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29B2410E4(std::string *result)
{
  if (SLODWORD(result[2].__r_.__value_.__r.__words[2]) >= 1)
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = (*(*v1[2].__r_.__value_.__l.__data_ + 96))(v1[2].__r_.__value_.__r.__words[0]);
      v4 = *(v3 + 23);
      if (v4 >= 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = *v3;
      }

      if (v4 >= 0)
      {
        v6 = *(v3 + 23);
      }

      else
      {
        v6 = *(v3 + 8);
      }

      result = std::string::append((v1 + 400), v5, v6);
      ++v2;
    }

    while (v2 < SLODWORD(v1[2].__r_.__value_.__r.__words[2]));
  }

  return result;
}

uint64_t sub_29B241170(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29B242B24(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 8) = *(a2 + 8);
    v5 = (a2 + 16);
    v6 = *(a2 + 16);
    *v3 = v4;
    *(v3 + 16) = v6;
    v7 = v3 + 16;
    v8 = *(a2 + 24);
    *(v3 + 24) = v8;
    if (v8)
    {
      *(v6 + 16) = v7;
      *(a2 + 8) = v5;
      *v5 = 0;
      *(a2 + 24) = 0;
    }

    else
    {
      *(v3 + 8) = v7;
    }

    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_29B2411F0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 80);
  if (*(a1 + 72) == v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v16, "End scope called with no scope active, please check your beginScope/endScope calls");
    sub_29AAD6B14(exception, &v16);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v9 = *(v3 - 32);
  v8 = v3 - 32;
  v7 = v9;
  sub_29A082B84(v8 + 8, *(v8 + 16));
  *(a1 + 80) = v8;
  --*(a1 + 64);
  if (v9 > 3)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

LABEL_15:
    std::string::append((a1 + 400), ";");
    if (!a3)
    {
      return;
    }

    goto LABEL_5;
  }

  v14 = off_29F296D00[v7];
  sub_29B2410E4(a1);
  std::string::append((a1 + 400), v14);
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (!a3)
  {
    return;
  }

LABEL_5:
  v10 = (*(**(a1 + 48) + 88))(*(a1 + 48));
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = *v10;
  }

  if (v11 >= 0)
  {
    v13 = *(v10 + 23);
  }

  else
  {
    v13 = *(v10 + 8);
  }

  std::string::append((a1 + 400), v12, v13);
}

void sub_29B241380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

std::string *sub_29B2413B8(uint64_t a1, int a2)
{
  if (a2)
  {
    std::string::append((a1 + 400), ";");
  }

  return sub_29B241400(a1);
}

std::string *sub_29B241400(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 88))(*(a1 + 48));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  return std::string::append((a1 + 400), v4, v5);
}

std::string *sub_29B241474(uint64_t a1, const std::string::value_type *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::string::append((a1 + 400), a2, v3);
}

std::string *sub_29B241494(uint64_t a1, uint64_t a2, int a3)
{
  sub_29B2410E4(a1);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  std::string::append((a1 + 400), v7, v8);
  if (a3)
  {
    std::string::append((a1 + 400), ";");
  }

  return sub_29B241400(a1);
}

std::string *sub_29B241510(uint64_t a1, const void **a2)
{
  sub_29B2410E4(a1);
  v4 = (*(**(a1 + 48) + 120))(*(a1 + 48));
  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v4, a2, __p);
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  std::string::append((a1 + 400), v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_29B241400(a1);
}

void sub_29B2415B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2415D4(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(**(a1 + 48) + 112))(*(a1 + 48));
  v7 = (*(**(a1 + 48) + 104))(*(a1 + 48));
  sub_29A9EE25C(v39, a2, 24);
  memset(&__str, 0, sizeof(__str));
LABEL_2:
  while (1)
  {
    std::ios_base::getloc((v39 + *(v39[0] - 24)));
    v8 = std::locale::use_facet(&v36, MEMORY[0x29EDC93D0]);
    v9 = (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v36);
    v10 = sub_29A0DE07C(v39, &__str, v9);
    if ((*(v10 + *(*v10 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v13 = *(v6 + 23);
    if (v13 >= 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = *v6;
    }

    if (v13 >= 0)
    {
      v15 = *(v6 + 23);
    }

    else
    {
      v15 = *(v6 + 8);
    }

    if (v15)
    {
      if (size >= v15)
      {
        v16 = p_str + size;
        v17 = *v14;
        v18 = size;
        v19 = p_str;
        do
        {
          v20 = v18 - v15;
          if (v20 == -1)
          {
            break;
          }

          v21 = memchr(v19, v17, v20 + 1);
          if (!v21)
          {
            break;
          }

          v22 = v21;
          if (!memcmp(v21, v14, v15))
          {
            if (v22 == v16 || v22 - p_str == -1)
            {
              break;
            }

            goto LABEL_26;
          }

          v19 = (v22 + 1);
          v18 = v16 - (v22 + 1);
        }

        while (v18 >= v15);
      }

      sub_29B241494(a1, &__str, 0);
    }

    else
    {
LABEL_26:
      v23 = *(v7 + 23);
      if (v23 >= 0)
      {
        v24 = v7;
      }

      else
      {
        v24 = *v7;
      }

      if (v23 >= 0)
      {
        v25 = *(v7 + 23);
      }

      else
      {
        v25 = *(v7 + 8);
      }

      v26 = -1;
      if (size && v25)
      {
        v27 = p_str + size;
        v28 = p_str;
LABEL_35:
        v29 = v25;
        v30 = v24;
        while (v28->__r_.__value_.__s.__data_[0] != *v30)
        {
          ++v30;
          if (!--v29)
          {
            v28 = (v28 + 1);
            if (v28 != v27)
            {
              goto LABEL_35;
            }

            v28 = (p_str + size);
            break;
          }
        }

        if (v28 == v27)
        {
          v26 = -1;
        }

        else
        {
          v26 = v28 - p_str;
        }
      }

      if (v25)
      {
        while (size)
        {
          if (memchr(v24, *(&p_str[-1].__r_.__value_.__r.__words[2] + size-- + 7), v25))
          {
            if (v26 != -1 && size != -1 && size > v26 && ~v26 + size)
            {
              std::string::basic_string(&v37, &__str, v26 + 1, ~v26 + size, &v36);
              sub_29AAC9330(&v36, &v37);
              sub_29B241A9C(a1, &v36, a3, a4);
              v44 = &v36;
              sub_29A012C90(&v44);
              if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v37.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_2;
          }
        }
      }
    }
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v39[0] = *MEMORY[0x29EDC9528];
  v32 = *(MEMORY[0x29EDC9528] + 72);
  *(v39 + *(v39[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v39[2] = v32;
  v40 = MEMORY[0x29EDC9570] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v43);
}

void sub_29B241A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  *(v28 - 96) = &a12;
  sub_29A012C90((v28 - 96));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_29A008B0C(&a28);
  _Unwind_Resume(a1);
}

void sub_29B241A9C(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  sub_29B206794(a2, 1, &v7);
  sub_29B24B500((*a4 + 96), &v7);
  sub_29AAC9330(&__p, &v7);
  sub_29AE0EA4C(v5);
}

void sub_29B241CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
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
    if ((v37 & 1) == 0)
    {
LABEL_10:
      if (a36 < 0)
      {
        operator delete(a31);
      }

      a31 = (v38 - 104);
      sub_29A012C90(&a31);
      if (*(v38 - 49) < 0)
      {
        operator delete(*(v38 - 72));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v36);
  goto LABEL_10;
}

void sub_29B241DF8(uint64_t a1, char **a2)
{
  sub_29B206794(a2, 1, &__p);
  v4 = sub_29A00AF58(a1 + 120, &__p.__r_.__value_.__l.__data_);
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      return;
    }
  }

  else if (v4)
  {
    return;
  }

  sub_29B206794(a2, 1, &__p);
  sub_29AA9E938((a1 + 120), &__p.__r_.__value_.__l.__data_, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29B241E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B241EB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 176);
  v7 = v6[4];
  v10 = v7;
  for (i = *(result + 152); i; i = *i)
  {
    v9 = i[4];
    if (v7 >= v9)
    {
      if (v9 >= v7)
      {
        return result;
      }

      ++i;
    }
  }

  sub_29A0F2BE4((result + 144), &v10, &v10);
  return (*(*v6 + 64))(v6, a2, a3, v5);
}

uint64_t *sub_29B241F68(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 368);
  if (v8 == *(a3 + 360))
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = *(v8 - 8);
    if (v9)
    {
      LODWORD(v9) = *v9;
    }
  }

  *&v11 = a2;
  DWORD2(v11) = v9;
  result = sub_29B242DD4((*(a1 + 80) - 24), &v11, &v11);
  if (a4)
  {
    return (*(**(a2 + 176) + 72))(*(a2 + 176), a2, a3, a1);
  }

  return result;
}

uint64_t sub_29B242018(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 368);
  if (v3 == *(a3 + 360))
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = *(v3 - 8);
    if (v4)
    {
      LODWORD(v4) = *v4;
    }
  }

  for (i = *(a1 + 72); ; i += 32)
  {
    if (i == *(a1 + 80))
    {
      return 0;
    }

    v6 = *(i + 16);
    if (v6)
    {
      break;
    }

LABEL_14:
    ;
  }

  while (1)
  {
    v7 = v6[4];
    if (v7 <= a2)
    {
      if (v7 < a2)
      {
        goto LABEL_12;
      }

      v8 = *(v6 + 10);
      if (v4 >= v8)
      {
        break;
      }
    }

LABEL_13:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (v8 < v4)
  {
LABEL_12:
    ++v6;
    goto LABEL_13;
  }

  return 1;
}

char *sub_29B242094(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  *(__dst + 3) = 0u;
  *(__dst + 4) = 0u;
  *(__dst + 20) = 1065353216;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  *(__dst + 11) = 0;
  return __dst;
}

void sub_29B242128(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B242144(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0x108uLL);
  sub_29B2421D8(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;

  sub_29A017894(a5, v10 + 3, (v10 + 3));
}

void *sub_29B2421D8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB138;
  sub_29B2422C4(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_29B242274(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB138;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B2422C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a4;
  v7 = a6[1];
  v8 = *a6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B23C2B0(a2, 0, v6, a5, &v8);
  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29B242328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B242340(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B2425AC(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B242594(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B2425AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B242650@<X0>(__int128 *a1@<X1>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x88uLL);
  result = sub_29B2426B4(v6, a1, a2);
  *a3 = v6 + 24;
  a3[1] = v6;
  return result;
}

uint64_t sub_29B2426B4(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CB188;
  sub_29B242094((a1 + 24), a2, a3);
  return a1;
}

void sub_29B242730(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B2427A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    *(a2 + 96) = v3;
    operator delete(v3);
  }

  sub_29AD97000(a2 + 48);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

const void **sub_29B242814(uint64_t a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v8 = sub_29A12A708(a1, a2);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v4 = v8;
      if (v8 >= v10)
      {
        v4 = v8 % v10;
      }
    }

    else
    {
      v4 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v4);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v12 > 1)
          {
            if (v15 >= v10)
            {
              v15 %= v10;
            }
          }

          else
          {
            v15 &= v10 - 1;
          }

          if (v15 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B242A80(a1, v9, a4, v27);
  v16 = (*(a1 + 24) + 1);
  v17 = *(a1 + 32);
  if (!v10 || (v17 * v10) < v16)
  {
    v18 = 1;
    if (v10 >= 3)
    {
      v18 = (v10 & (v10 - 1)) != 0;
    }

    v19 = v18 | (2 * v10);
    v20 = vcvtps_u32_f32(v16 / v17);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    sub_29A019AA0(a1, v21);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v4);
  if (v23)
  {
    i = v27[0];
    *v27[0] = *v23;
    *v23 = i;
  }

  else
  {
    v24 = v27[0];
    *v27[0] = *(a1 + 16);
    *(a1 + 16) = v24;
    *(v22 + 8 * v4) = a1 + 16;
    i = v27[0];
    if (*v27[0])
    {
      v25 = *(*v27[0] + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v25 >= v10)
        {
          v25 %= v10;
        }
      }

      else
      {
        v25 &= v10 - 1;
      }

      *(*a1 + 8 * v25) = v27[0];
      i = v27[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B242A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B242A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B242B24(uint64_t *a1, int *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v24 = a1;
  if (v7)
  {
    v8 = sub_29A10CB10(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v21 = v8;
  v22 = v9;
  *(&v23 + 1) = &v8[32 * v7];
  v10 = *a2;
  *(v9 + 1) = *(a2 + 1);
  v11 = a2 + 4;
  v12 = *(a2 + 2);
  *v9 = v10;
  *(v9 + 2) = v12;
  v13 = v9 + 16;
  v14 = *(a2 + 3);
  *(v9 + 3) = v14;
  if (v14)
  {
    *(v12 + 16) = v13;
    *(a2 + 1) = v11;
    *v11 = 0;
    *(a2 + 3) = 0;
  }

  else
  {
    *(v9 + 1) = v13;
  }

  *&v23 = v9 + 32;
  v15 = a1[1];
  v16 = &v9[*a1 - v15];
  sub_29B242C64(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_29B242D54(&v21);
  return v20;
}

void sub_29B242C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29B242D54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B242C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = a4 + v5;
      v7 = *(a2 + v5);
      *(v6 + 8) = *(a2 + v5 + 8);
      v8 = (a2 + v5 + 16);
      v9 = *v8;
      *v6 = v7;
      *(a4 + v5 + 16) = v9;
      v10 = a4 + v5 + 16;
      v11 = *(a2 + v5 + 24);
      *(v6 + 24) = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v5 + 8) = v8;
        *v8 = 0;
        *(a2 + v5 + 24) = 0;
      }

      else
      {
        *(v6 + 8) = v10;
      }

      v5 += 32;
    }

    while (a2 + v5 != a3);
    v18 = a4 + v5;
    v16 = 1;
    if (a2 != a3)
    {
      v12 = a2 + 8;
      do
      {
        sub_29A082B84(v12, *(v12 + 8));
        v13 = v12 + 24;
        v12 += 32;
      }

      while (v13 != a3);
    }
  }

  return sub_29B226E50(v15);
}

void **sub_29B242D54(void **a1)
{
  sub_29B242D88(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29B242D88(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_29A082B84(i - 24, *(i - 16));
  }
}

uint64_t *sub_29B242DD4(uint64_t **a1, unint64_t *a2, _OWORD *a3)
{
  v5 = sub_29B226DE8(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x30uLL);
    *(v6 + 2) = *a3;
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

void *sub_29B242E58()
{
  if ((atomic_load_explicit(&qword_2A17872F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17872F0))
  {
    sub_29A008E78(qword_2A17872D8, "\n");
    __cxa_guard_release(&qword_2A17872F0);
  }

  return qword_2A17872D8;
}

void *sub_29B242ED8()
{
  if ((atomic_load_explicit(&qword_2A1787310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787310))
  {
    sub_29A008E78(qword_2A17872F8, ";");
    __cxa_guard_release(&qword_2A1787310);
  }

  return qword_2A17872F8;
}

void *sub_29B242F58()
{
  if ((atomic_load_explicit(&qword_2A1787330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787330))
  {
    sub_29A008E78(qword_2A1787318, ",");
    __cxa_guard_release(&qword_2A1787330);
  }

  return qword_2A1787318;
}

void *sub_29B242FD8()
{
  if ((atomic_load_explicit(&qword_2A1787350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787350))
  {
    sub_29A008E78(qword_2A1787338, "    ");
    __cxa_guard_release(&qword_2A1787350);
  }

  return qword_2A1787338;
}

void *sub_29B243058()
{
  if ((atomic_load_explicit(&qword_2A1787370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787370))
  {
    sub_29A008E78(qword_2A1787358, "");
    __cxa_guard_release(&qword_2A1787370);
  }

  return qword_2A1787358;
}

void *sub_29B2430D8()
{
  if ((atomic_load_explicit(&qword_2A1787390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787390))
  {
    sub_29A008E78(qword_2A1787378, "#include");
    __cxa_guard_release(&qword_2A1787390);
  }

  return qword_2A1787378;
}

void *sub_29B243158()
{
  if ((atomic_load_explicit(&qword_2A17873B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17873B0))
  {
    sub_29A008E78(qword_2A1787398, "// ");
    __cxa_guard_release(&qword_2A17873B0);
  }

  return qword_2A1787398;
}

void *sub_29B2431D8()
{
  if ((atomic_load_explicit(&qword_2A17873D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17873D0))
  {
    __cxa_guard_release(&qword_2A17873F0);
  }

  return qword_2A17873D8;
}

void *sub_29B2432D8()
{
  v2 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787420))
  {
    v1[4] = xmmword_29B769780;
    v1[5] = unk_29B769790;
    v1[6] = xmmword_29B7697A0;
    v1[7] = unk_29B7697B0;
    v1[0] = xmmword_29B769740;
    v1[1] = unk_29B769750;
    v1[2] = xmmword_29B769760;
    v1[3] = unk_29B769770;
    sub_29B245E94(&unk_2A17873F8, v1, 8);
    __cxa_guard_release(&qword_2A1787420);
  }

  return &unk_2A17873F8;
}

double sub_29B2433B4(uint64_t a1)
{
  *a1 = &unk_2A20CB1D8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  return result;
}

void sub_29B243408(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = a2;
  v5 = sub_29AC246C0((a1 + 32), &v16);
  if (v5)
  {
    v6 = (*(a1 + 8) + 16 * v5[3]);
    v8 = *a3;
    v7 = *(a3 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6[1];
    *v6 = v8;
    v6[1] = v7;
    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    sub_29A017F80((a1 + 8), a3);
    v11 = *(a1 + 8);
    v10 = *(a1 + 16);
    v14 = &v16;
    sub_29B246128(a1 + 32, &v16, &unk_29B7698A3, &v14)[3] = ((v10 - v11) >> 4) - 1;
  }

  v12 = *a3;
  if (*(*a3 + 31) < 0)
  {
    sub_29A008D14(__p, *(v12 + 8), *(v12 + 16));
  }

  else
  {
    v13 = *(v12 + 8);
    v18 = *(v12 + 24);
    *__p = v13;
  }

  sub_29A9FDE68(&v14, __p, 1);
  sub_29A347A54((a1 + 72), v14, &v15);
  sub_29A019EE8(&v14, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B243564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, char *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_29A019EE8(&a11, a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_29B2435AC(const void **result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      result = sub_29B1D70D0((v3 + 12), v2 + 2, v2 + 1);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_29B2435EC(uint64_t a1, __int128 *a2)
{
  v14 = a2;
  v3 = sub_29B20D628((a1 + 32), &v14);
  if (!v3)
  {
    if (v14)
    {
      if (*(v14 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v14, *(v14 + 1));
      }

      else
      {
        v5 = *v14;
        v13 = *(v14 + 2);
        __dst = v5;
      }
    }

    else
    {
      sub_29A008E78(&__dst, "nullptr");
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v7 = std::string::append(&v9, "'.");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v10);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  return *(*(a1 + 8) + 16 * v3[3]);
}

void sub_29B243720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_8:
      if (a28 < 0)
      {
        operator delete(a23);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v28);
  goto LABEL_8;
}

uint64_t sub_29B243790(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_29B2435EC(a1, *(a2 + 24)) + 16);

  return v2();
}

uint64_t sub_29B243804(uint64_t a1, __int128 *a2)
{
  v2 = *(*sub_29B2435EC(a1, a2) + 24);

  return v2();
}

uint64_t sub_29B243874(uint64_t a1, __int128 *a2, int a3)
{
  v4 = sub_29B2435EC(a1, a2);
  v5 = 32;
  if (a3)
  {
    v5 = 56;
  }

  return v4 + v5;
}

void sub_29B2438C8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_29B2435EC(a1, a2);
  v6 = (*(*a1 + 64))(a1);
  if (*(v6 + 23) >= 0)
  {
    v7 = *(v6 + 23);
  }

  else
  {
    v7 = *(v6 + 8);
  }

  if (v7)
  {
    v8 = v6;
    p_p = &__p;
    sub_29A022DE0(&__p, v7 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = *v8;
    }

    memmove(p_p, v10, v7);
    *(&p_p->__r_.__value_.__l.__data_ + v7) = 32;
    v13 = *(v5 + 8);
    v12 = v5 + 8;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::string::append(&__p, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    *(a3 + 16) = *(&v17->__r_.__value_.__l + 2);
    *a3 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else if (*(v5 + 31) < 0)
  {
    v19 = *(v5 + 8);
    v20 = *(v5 + 16);

    sub_29A008D14(a3, v19, v20);
  }

  else
  {
    *a3 = *(v5 + 8);
    *(a3 + 16) = *(v5 + 24);
  }
}

void sub_29B243A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B243A4C(uint64_t a1, const void **a2, uint64_t a3, uint64_t *a4, __int128 *a5)
{
  v10 = sub_29B2435EC(a1, a3);
  v36 = sub_29B2435EC(a1, a5);
  memset(v44, 0, 24);
  v11 = *(a4 + 23);
  v12 = a4[1];
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *(a4 + 23);
  }

  if (v12)
  {
    v13 = 0;
    v14 = v11 >> 63;
    do
    {
      if (v14)
      {
        v15 = *a4;
      }

      else
      {
        v15 = a4;
      }

      v16 = *(v15 + v13);
      v43 = v16;
      if ((v16 & 0xFE) == 0x30)
      {
        HIBYTE(v42) = 1;
        LOWORD(__p[0]) = v16;
        sub_29A091654(v44, __p);
      }

      else
      {
        sub_29B2432D8();
        v17 = sub_29B246380(qword_2A17873F8, &v43);
        sub_29B2432D8();
        if (!v17)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          std::operator+<char>();
          v34 = std::string::append(&v40, "'.");
          v35 = *&v34->__r_.__value_.__l.__data_;
          v42 = v34->__r_.__value_.__r.__words[2];
          *__p = v35;
          v34->__r_.__value_.__l.__size_ = 0;
          v34->__r_.__value_.__r.__words[2] = 0;
          v34->__r_.__value_.__r.__words[0] = 0;
          sub_29AAD6B14(exception, __p);
          *exception = &unk_2A20C8F68;
          __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
        }

        if (*(v10 + 128) == *(v10 + 136))
        {
          sub_29A070BA0(v44);
        }

        v18 = sub_29B2466FC(a3, v43);
        if (v18 < 0 || (v19 = *(v10 + 128), v18 >= (-1431655765 * ((*(v10 + 136) - v19) >> 3))))
        {
          v21 = __cxa_allocate_exception(0x20uLL);
          *(&v37.__r_.__value_.__s + 23) = 1;
          LOWORD(v37.__r_.__value_.__l.__data_) = v43;
          v22 = std::string::insert(&v37, 0, "Given channel index: '");
          v23 = *&v22->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          v24 = std::string::append(&v38, "' in channels pattern is incorrect for type '");
          v25 = *&v24->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          v26 = *(a3 + 23);
          if (v26 >= 0)
          {
            v27 = a3;
          }

          else
          {
            v27 = *a3;
          }

          if (v26 >= 0)
          {
            v28 = *(a3 + 23);
          }

          else
          {
            v28 = *(a3 + 8);
          }

          v29 = std::string::append(&v39, v27, v28);
          v30 = *&v29->__r_.__value_.__l.__data_;
          v40.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
          *&v40.__r_.__value_.__l.__data_ = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          v31 = std::string::append(&v40, "'.");
          v32 = *&v31->__r_.__value_.__l.__data_;
          v42 = v31->__r_.__value_.__r.__words[2];
          *__p = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          sub_29AAD6B14(v21, __p);
          *v21 = &unk_2A20C8F68;
          __cxa_throw(v21, &unk_2A20C8EF8, sub_29B20BED4);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(a2, (v19 + 24 * v18), __p);
        sub_29A091654(v44, __p);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      ++v13;
      v20 = *(a4 + 23);
      v14 = v20 >> 63;
      if ((v20 & 0x80000000) != 0)
      {
        v20 = a4[1];
      }
    }

    while (v13 < v20);
  }

  (*(*v36 + 32))(v36, v44, 0);
  __p[0] = v44;
  sub_29A012C90(__p);
}

void sub_29B243DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v45 & 1) == 0)
    {
LABEL_14:
      __p = (v46 - 112);
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v44);
  goto LABEL_14;
}

uint64_t sub_29B243F34@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, const void **a5@<X4>, _OWORD *a6@<X8>)
{
  v9 = sub_29B2435EC(a1, a3);
  sub_29A008864(v64);
  sub_29A008E78(&v61, ", ");
  for (i = 0; ; ++i)
  {
    v11 = *(a4 + 23);
    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    v12 = *(a4 + 23);
    if (i >= v11)
    {
      goto LABEL_97;
    }

LABEL_6:
    if (i == v12 - 1)
    {
      if (v63 < 0)
      {
        *v61 = 0;
        v62 = 0;
        LOBYTE(v11) = *(a4 + 23);
      }

      else
      {
        LOBYTE(v61) = 0;
        v63 = 0;
      }
    }

    if ((v11 & 0x80u) == 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    v14 = *(v13 + i);
    v60 = v14;
    if ((v14 & 0xFE) != 0x30)
    {
      sub_29B2432D8();
      v15 = sub_29B246380(qword_2A17873F8, &v60);
      sub_29B2432D8();
      if (!v15)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v51 = std::string::append(&v58, "'.");
        v52 = *&v51->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(exception, &__p);
        *exception = &unk_2A20C8F68;
        __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
      }

      if (*(v9 + 128) == *(v9 + 136))
      {
        (*(**a2 + 32))(&__p);
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

        goto LABEL_87;
      }

      v16 = sub_29B2466FC(a3, v60);
      v17 = v16;
      if (v16 < 0 || v16 >= (-1431655765 * ((*(v9 + 136) - *(v9 + 128)) >> 3)))
      {
        v38 = __cxa_allocate_exception(0x20uLL);
        *(&v55.__r_.__value_.__s + 23) = 1;
        LOWORD(v55.__r_.__value_.__l.__data_) = v60;
        v39 = std::string::insert(&v55, 0, "Given channel index: '");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v56.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v56.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = std::string::append(&v56, "' in channels pattern is incorrect for type '");
        v42 = *&v41->__r_.__value_.__l.__data_;
        v57.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
        *&v57.__r_.__value_.__l.__data_ = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        v43 = *(a3 + 23);
        if (v43 >= 0)
        {
          v44 = a3;
        }

        else
        {
          v44 = *a3;
        }

        if (v43 >= 0)
        {
          v45 = *(a3 + 23);
        }

        else
        {
          v45 = *(a3 + 8);
        }

        v46 = std::string::append(&v57, v44, v45);
        v47 = *&v46->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        v48 = std::string::append(&v58, "'.");
        v49 = *&v48->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v38, &__p);
        *v38 = &unk_2A20C8F68;
        __cxa_throw(v38, &unk_2A20C8EF8, sub_29B20BED4);
      }

      v18 = sub_29B246C60();
      if (sub_29A1B00DC(a3, v18))
      {
        v19 = sub_29B1F487C(*a2);
        std::to_string(&__p, *v19);
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

        goto LABEL_87;
      }

      v22 = sub_29B246A68();
      if (sub_29A1B00DC(a3, v22))
      {
        v23 = sub_29B1F3CC0(*a2);
        std::to_string(&__p, *v23);
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

        goto LABEL_87;
      }

      v24 = sub_29B24696C();
      if (sub_29A1B00DC(a3, v24))
      {
        v25 = sub_29B1F44B4(*a2);
        std::to_string(&__p, *v25);
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

        goto LABEL_87;
      }

      v26 = sub_29B247ADC();
      if (sub_29A1B00DC(a3, v26))
      {
        v27 = sub_29B1F58F8(*a2);
        v58.__r_.__value_.__r.__words[0] = *v27;
        LODWORD(v58.__r_.__value_.__r.__words[1]) = *(v27 + 2);
        if (v17 >= 3)
        {
          sub_29A0F26E4("array::at");
        }

        std::to_string(&__p, *(&v58.__r_.__value_.__l.__data_ + v17));
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

        goto LABEL_87;
      }

      v28 = sub_29B247C28();
      v29 = sub_29A1B00DC(a3, v28);
      if (v29)
      {
        *&v58.__r_.__value_.__l.__data_ = *sub_29B1F5D78(*a2);
        if (v17 >= 4)
        {
          sub_29A0F26E4("array::at");
        }

        std::to_string(&__p, *(&v58.__r_.__value_.__l.__data_ + v17));
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

        goto LABEL_87;
      }

      Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v29);
      if (sub_29A1B00DC(a3, Vector2Name))
      {
        v58.__r_.__value_.__r.__words[0] = *sub_29B1F61F4(*a2);
        if (v17 >= 2)
        {
          sub_29A0F26E4("array::at");
        }

        std::to_string(&__p, *(&v58.__r_.__value_.__l.__data_ + v17));
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

        goto LABEL_87;
      }

      v31 = sub_29B2470A0();
      if (sub_29A1B00DC(a3, v31))
      {
        v32 = sub_29B1F6664(*a2);
        v58.__r_.__value_.__r.__words[0] = *v32;
        LODWORD(v58.__r_.__value_.__r.__words[1]) = *(v32 + 2);
        if (v17 >= 3)
        {
          sub_29A0F26E4("array::at");
        }

        std::to_string(&__p, *(&v58.__r_.__value_.__l.__data_ + v17));
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

        goto LABEL_87;
      }

      v33 = sub_29B2471EC();
      if (sub_29A1B00DC(a3, v33))
      {
        *&v58.__r_.__value_.__l.__data_ = *sub_29B1F6AE4(*a2);
        if (v17 >= 4)
        {
          sub_29A0F26E4("array::at");
        }

        std::to_string(&__p, *(&v58.__r_.__value_.__l.__data_ + v17));
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

LABEL_87:
        sub_29A00911C(&v65, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if ((v63 & 0x80u) == 0)
      {
        v34 = &v61;
      }

      else
      {
        v34 = v61;
      }

      if ((v63 & 0x80u) == 0)
      {
        v35 = v63;
      }

      else
      {
        v35 = v62;
      }

      sub_29A00911C(&v65, v34, v35);
      continue;
    }

    *(&__p.__r_.__value_.__s + 23) = 1;
    LOWORD(__p.__r_.__value_.__l.__data_) = v14;
    sub_29A00911C(&v65, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v12 = a4[1];
  if (i < v12)
  {
    goto LABEL_6;
  }

LABEL_97:
  std::stringbuf::str();
  sub_29B1FB24C(&__p, a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v63 < 0)
  {
    operator delete(v61);
  }

  v64[0] = *MEMORY[0x29EDC9528];
  v36 = *(MEMORY[0x29EDC9528] + 72);
  *(v64 + *(v64[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v65 = v36;
  v66 = MEMORY[0x29EDC9570] + 16;
  if (v68 < 0)
  {
    operator delete(v67[7].__locale_);
  }

  v66 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v67);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v69);
}

void sub_29B2447A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_29A008B0C(&a53);
  _Unwind_Resume(a1);
}

void sub_29B244978(uint64_t a1@<X1>, const void *a2@<X2>, void *a3@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  if (sub_29B1F9A9C(a2))
  {
    v5 = sub_29B1F9B00(a2);
    std::to_string(&v12, (*(v5 + 1) - *v5) >> 2);
    v6 = std::string::insert(&v12, 0, "[");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v13, "]");
  }

  else
  {
    if (!sub_29B1F9314(a2))
    {
LABEL_2:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return;
    }

    v9 = sub_29B1F9378(a2);
    std::to_string(&v12, (*(v9 + 1) - *v9) >> 2);
    v10 = std::string::insert(&v12, 0, "[");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v13, "]");
  }

  *a3 = *&v8->__r_.__value_.__l.__data_;
  a3[2] = *(&v8->__r_.__value_.__l + 2);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_29B244ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B244AF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v7 = MEMORY[0x29EDCA600];
    do
    {
      v8 = *v5;
      if ((v8 & 0x80000000) != 0)
      {
        v9 = __maskrune(*v5, 0x500uLL);
      }

      else
      {
        v9 = *(v7 + 4 * v8 + 60) & 0x500;
      }

      if (v8 != 95 && v9 == 0)
      {
        *v5 = 95;
      }

      ++v5;
      --v6;
    }

    while (v6);
    LOBYTE(v4) = *(a2 + 23);
  }

  if ((v4 & 0x80) != 0)
  {
    sub_29A008D14(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  sub_29B1F37E0(&__p, a1 + 96, &v12);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v12;
  *(a2 + 16) = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29B244C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B244C34(uint64_t a1, std::string::size_type a2, void *a3)
{
  v17[2] = *MEMORY[0x29EDCA608];
  (*(*a1 + 176))(a1);
  v5 = sub_29A5DAB7C(a3, a2);
  if (v5)
  {
    v6 = v5;
    memset(&__p, 0, sizeof(__p));
    do
    {
      v7 = v6[5];
      v6[5] = (v7 + 1);
      std::to_string(&v15, v7);
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

      v11 = std::string::insert(&v15, 0, v9, v10);
      v12 = v11->__r_.__value_.__r.__words[0];
      v17[0] = v11->__r_.__value_.__l.__size_;
      *(v17 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v12;
      __p.__r_.__value_.__l.__size_ = v17[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v17 + 7);
      *(&__p.__r_.__value_.__s + 23) = v13;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    while (sub_29A8877BC(a3, &__p.__r_.__value_.__l.__data_));
    std::string::operator=(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  result = sub_29B23307C(a3, a2, &unk_29B7698A3, &__p);
  result[5] = 1;
  return result;
}

void sub_29B244DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B244E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(a4, *a2, *(a2 + 8));
  }

  else
  {
    *a4 = *a2;
    *(a4 + 16) = *(a2 + 16);
  }

  return (*(*a1 + 184))(a1, a4, a3);
}

void sub_29B244E90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29B244EB4()
{
  if ((atomic_load_explicit(&qword_2A1787428, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D1C1C();
  }

  return &qword_2A1787430;
}

void sub_29B244EEC(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  *a1 = &unk_2A20CB2B8;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v11;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v12;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v13;
  }

  if (*(a5 + 23) < 0)
  {
    sub_29A008D14((a1 + 80), *a5, *(a5 + 1));
  }

  else
  {
    v14 = *a5;
    *(a1 + 96) = *(a5 + 2);
    *(a1 + 80) = v14;
  }

  if (*(a6 + 23) < 0)
  {
    sub_29A008D14((a1 + 104), *a6, *(a6 + 1));
  }

  else
  {
    v15 = *a6;
    *(a1 + 120) = *(a6 + 2);
    *(a1 + 104) = v15;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B245050(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2450CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v9 = *(a2 + 128);
    v8 = *(a2 + 136);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v8);
      if (v9)
      {
        v9 = *(a2 + 128);
        v10 = *(a2 + 136);
        if (v10)
        {
          v11 = 0;
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_9;
        }

LABEL_8:
        v11 = 1;
LABEL_9:
        (*(*a1 + 24))(a1, v9, a3);
        if ((v11 & 1) == 0)
        {

          sub_29A014BEC(v10);
        }

        return;
      }
    }

    else if (v9)
    {
      v10 = 0;
      goto LABEL_8;
    }
  }

  v12 = 32;
  if (a3)
  {
    v12 = 56;
  }

  v13 = a1 + v12;
  if (*(v13 + 23) < 0)
  {
    v14 = *v13;
    v15 = *(v13 + 8);

    sub_29A008D14(a4, v14, v15);
  }

  else
  {
    *a4 = *v13;
    *(a4 + 16) = *(v13 + 16);
  }
}

void sub_29B245208(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2452D0(uint64_t a1, uint64_t **a2)
{
  if (*a2 == a2[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v9, "No values given to construct a value");
    sub_29AAD6B14(exception, &v9);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29A008864(&v9);
  v3 = *(*a2 + 23);
  if (v3 >= 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = **a2;
  }

  if (v3 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  sub_29A00911C(&v10, v4, v5);
  std::stringbuf::str();
  *&v9 = *MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 72);
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v10 = v6;
  v11 = MEMORY[0x29EDC9570] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v14);
}

void sub_29B2454F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_29B2455C0(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  (*(*a1 + 32))(&v6, a1);
  v3 = std::string::insert(&v6, 0, "");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, "");
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_29B245688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B2456F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*a2 + 32))(__p, a2);
  if (SHIBYTE(v17) < 0)
  {
    if (!__p[1])
    {
      sub_29A008D14(a3, __p[0], 0);
      goto LABEL_26;
    }
  }

  else if (!HIBYTE(v17))
  {
    *a3 = *__p;
    *(a3 + 16) = v17;
    goto LABEL_26;
  }

  if (*(a1 + 31) >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = &v14;
  sub_29A022DE0(&v14, v5 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v14.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a1 + 31) >= 0)
    {
      v7 = (a1 + 8);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 40;
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v17 >= 0)
  {
    v9 = HIBYTE(v17);
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v14, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v15, ")");
  v13 = *&v12->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v12->__r_.__value_.__l + 2);
  *a3 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

LABEL_26:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B245884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2458D4(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v28, "No values given to construct a value");
    sub_29AAD6B14(exception, &v28);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29A008864(&v28);
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  v10 = sub_29A00911C(&v29, v8, v9);
  v11 = sub_29A00911C(v10, "(", 1);
  v12 = *(*a2 + 23);
  if (v12 >= 0)
  {
    v13 = *a2;
  }

  else
  {
    v13 = **a2;
  }

  if (v12 >= 0)
  {
    v14 = *(*a2 + 23);
  }

  else
  {
    v14 = *(*a2 + 8);
  }

  sub_29A00911C(v11, v13, v14);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 2)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = sub_29A00911C(&v29, ", ", 2);
      v18 = *a2 + v15;
      v21 = *(v18 + 24);
      v19 = v18 + 24;
      v20 = v21;
      v22 = *(v19 + 23);
      if (v22 >= 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = v20;
      }

      if (v22 >= 0)
      {
        v24 = *(v19 + 23);
      }

      else
      {
        v24 = *(v19 + 8);
      }

      sub_29A00911C(v17, v23, v24);
      ++v16;
      v15 += 24;
    }

    while (v16 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  sub_29A00911C(&v29, ")", 1);
  std::stringbuf::str();
  *&v28 = *MEMORY[0x29EDC9528];
  v25 = *(MEMORY[0x29EDC9528] + 72);
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v29 = v25;
  v30 = MEMORY[0x29EDC9570] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v33);
}

void sub_29B245BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

__int128 *sub_29B245D08@<X0>(uint64_t a1@<X8>)
{
  result = sub_29B1F31FC();
  if (*(result + 23) < 0)
  {
    v4 = *result;
    v5 = *(result + 1);

    return sub_29A008D14(a1, v4, v5);
  }

  else
  {
    v3 = *result;
    *(a1 + 16) = *(result + 2);
    *a1 = v3;
  }

  return result;
}

void sub_29B245D6C(uint64_t a1)
{
  v1 = sub_29B245DEC(a1);

  operator delete(v1);
}

void sub_29B245D98(uint64_t a1)
{
  v1 = sub_29B245DEC(a1);

  operator delete(v1);
}

void sub_29B245DC4(uint64_t a1)
{
  v1 = sub_29B245DEC(a1);

  operator delete(v1);
}

uint64_t sub_29B245DEC(uint64_t a1)
{
  *a1 = &unk_2A20CB2B8;
  v3 = (a1 + 128);
  sub_29A012C90(&v3);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29B245E94(uint64_t a1, char *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_29B245F0C(a1, a2, a2);
      a2 += 16;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *sub_29B245F0C(uint64_t a1, char *a2, _OWORD *a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v6)
          {
            if (*(v10 + 16) == v6)
            {
              return v10;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v10 = operator new(0x20uLL);
  *v10 = 0;
  v10[1] = v6;
  *(v10 + 1) = *a3;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *v10 = *v19;
LABEL_38:
    *v19 = v10;
    goto LABEL_39;
  }

  *v10 = *(a1 + 16);
  *(a1 + 16) = v10;
  *(v18 + 8 * v3) = a1 + 16;
  if (*v10)
  {
    v20 = *(*v10 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v10;
}

void *sub_29B246128(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v9;
  i[2] = **a4;
  i[3] = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v4);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v23 >= v10)
      {
        v23 %= v10;
      }
    }

    else
    {
      v23 &= v10 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

uint64_t **sub_29B246380(void *a1, char *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_29B246434(void *__dst, __int128 *a2, char a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v13;
  }

  *(__dst + 24) = a3;
  *(__dst + 25) = a4;
  __dst[4] = a5;
  *(__dst + 40) = a6;
  sub_29AE168E8((__dst + 6), a7);
  return __dst;
}

void sub_29B2464C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29B2464E0(const void **a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  sub_29B2466CC();
  if (sub_29A5DAB7C(qword_2A1787640, a1))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v20 = std::string::append(&v22, "' is already registered");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v24 = v20->__r_.__value_.__r.__words[2];
    v23 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v23);
    __cxa_throw(exception, &unk_2A2070D08, sub_29AAD6BD4);
  }

  v12 = operator new(0x58uLL);
  sub_29B246434(v12, a1, a2, a3, a4, a5, a6);
  *&v23 = a1;
  v13 = sub_29B248B54(qword_2A1787640, a1, &unk_29B769934, &v23);
  v16 = v13[5];
  v14 = v13 + 5;
  v15 = v16;
  v22.__r_.__value_.__r.__words[0] = 0;
  *v14 = v12;
  if (v16)
  {
    sub_29B248F18(v14, v15);
    v17 = v22.__r_.__value_.__r.__words[0];
    v22.__r_.__value_.__r.__words[0] = 0;
    if (v17)
    {
      sub_29B248F18(&v22, v17);
    }
  }

  return v12;
}

void sub_29B246644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_29B2466CC()
{
  if ((atomic_load_explicit(&qword_2A1787638, memory_order_acquire) & 1) == 0)
  {
    sub_29B2D1C74();
  }
}

uint64_t sub_29B2466FC(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = sub_29B246380((a1 + 48), &v4);
  if (v2)
  {
    return *(v2 + 5);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const void **sub_29B246738(const void **a1)
{
  sub_29B2466CC();
  result = sub_29A8877BC(qword_2A1787640, a1);
  if (result)
  {
    return result[5];
  }

  return result;
}

uint64_t sub_29B246774()
{
  if ((atomic_load_explicit(&qword_2A1787450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787450))
  {
    sub_29A008E78(__p, "none");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 0, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787448 = v1;
    __cxa_guard_release(&qword_2A1787450);
  }

  return qword_2A1787448;
}

void sub_29B246834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787450);
  _Unwind_Resume(a1);
}

uint64_t sub_29B246870()
{
  if ((atomic_load_explicit(&qword_2A1787460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787460))
  {
    sub_29A008E78(__p, "multioutput");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 0, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787458 = v1;
    __cxa_guard_release(&qword_2A1787460);
  }

  return qword_2A1787458;
}

void sub_29B246930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787460);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24696C()
{
  if ((atomic_load_explicit(&qword_2A1787470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787470))
  {
    sub_29A008E78(__p, "BOOLean");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 1, 0, 1, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787468 = v1;
    __cxa_guard_release(&qword_2A1787470);
  }

  return qword_2A1787468;
}

void sub_29B246A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787470);
  _Unwind_Resume(a1);
}

uint64_t sub_29B246A68()
{
  if ((atomic_load_explicit(&qword_2A1787480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787480))
  {
    sub_29A008E78(__p, "integer");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 2, 0, 1, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787478 = v1;
    __cxa_guard_release(&qword_2A1787480);
  }

  return qword_2A1787478;
}

void sub_29B246B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787480);
  _Unwind_Resume(a1);
}

uint64_t sub_29B246B64()
{
  if ((atomic_load_explicit(&qword_2A1787490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787490))
  {
    sub_29A008E78(__p, "integerarray");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 2, 0, 0, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787488 = v1;
    __cxa_guard_release(&qword_2A1787490);
  }

  return qword_2A1787488;
}

void sub_29B246C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787490);
  _Unwind_Resume(a1);
}

uint64_t sub_29B246C60()
{
  if ((atomic_load_explicit(&qword_2A17874A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17874A0))
  {
    sub_29A008E78(__p, "float");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 4, 0, 1, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787498 = v1;
    __cxa_guard_release(&qword_2A17874A0);
  }

  return qword_2A1787498;
}

void sub_29B246D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17874A0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B246D5C()
{
  if ((atomic_load_explicit(&qword_2A17874B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17874B0))
  {
    sub_29A008E78(__p, "half");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 3, 0, 1, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17874A8 = v1;
    __cxa_guard_release(&qword_2A17874B0);
  }

  return qword_2A17874A8;
}

void sub_29B246E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17874B0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B246E58()
{
  if ((atomic_load_explicit(&qword_2A17874C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17874C0))
  {
    sub_29A008E78(__p, "floatarray");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 4, 0, 0, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17874B8 = v1;
    __cxa_guard_release(&qword_2A17874C0);
  }

  return qword_2A17874B8;
}

void sub_29B246F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17874C0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17874D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17874D0))
  {
    sub_29A008E78(__p, "vector2");
    v6[0] = 120;
    v7 = 0;
    v8 = 121;
    v9 = 1;
    sub_29B248F6C(v3, v6, 2);
    v2 = sub_29B2464E0(__p, 4, 2, 2, 1, v3);
    sub_29A0EB570(v3);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17874C8 = v2;
    __cxa_guard_release(&qword_2A17874D0);
  }

  return qword_2A17874C8;
}

void sub_29B24705C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_29A0EB570(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17874D0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2470A0()
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17874E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17874E0))
  {
    sub_29A008E78(__p, "vector3");
    v5 = xmmword_29B7698C4;
    v6 = 0x20000007ALL;
    sub_29B248F6C(v2, &v5, 3);
    v1 = sub_29B2464E0(__p, 4, 2, 3, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17874D8 = v1;
    __cxa_guard_release(&qword_2A17874E0);
  }

  return qword_2A17874D8;
}

void sub_29B2471A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17874E0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2471EC()
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17874F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17874F0))
  {
    sub_29A008E78(__p, "vector4");
    v5[0] = xmmword_29B7698DC;
    v5[1] = unk_29B7698EC;
    sub_29B248F6C(v2, v5, 4);
    v1 = sub_29B2464E0(__p, 4, 2, 4, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17874E8 = v1;
    __cxa_guard_release(&qword_2A17874F0);
  }

  return qword_2A17874E8;
}

void sub_29B2472E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17874F0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24732C()
{
  v9 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787500))
  {
    sub_29A008E78(__p, "half2");
    v5[0] = 120;
    v6 = 0;
    v7 = 121;
    v8 = 1;
    sub_29B248F6C(v2, v5, 2);
    v1 = sub_29B2464E0(__p, 3, 2, 2, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17874F8 = v1;
    __cxa_guard_release(&qword_2A1787500);
  }

  return qword_2A17874F8;
}

void sub_29B247434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_29A0EB570(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787500);
  _Unwind_Resume(a1);
}

uint64_t sub_29B247478()
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787510))
  {
    sub_29A008E78(__p, "half3");
    v5 = xmmword_29B7698C4;
    v6 = 0x20000007ALL;
    sub_29B248F6C(v2, &v5, 3);
    v1 = sub_29B2464E0(__p, 3, 2, 3, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787508 = v1;
    __cxa_guard_release(&qword_2A1787510);
  }

  return qword_2A1787508;
}

void sub_29B247580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787510);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2475C4()
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787520))
  {
    sub_29A008E78(__p, "half4");
    v5[0] = xmmword_29B7698DC;
    v5[1] = unk_29B7698EC;
    sub_29B248F6C(v2, v5, 4);
    v1 = sub_29B2464E0(__p, 3, 2, 4, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787518 = v1;
    __cxa_guard_release(&qword_2A1787520);
  }

  return qword_2A1787518;
}

void sub_29B2476C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787520);
  _Unwind_Resume(a1);
}

uint64_t sub_29B247704()
{
  v9 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787530))
  {
    sub_29A008E78(__p, "integer2");
    v5[0] = 120;
    v6 = 0;
    v7 = 121;
    v8 = 1;
    sub_29B248F6C(v2, v5, 2);
    v1 = sub_29B2464E0(__p, 2, 2, 2, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787528 = v1;
    __cxa_guard_release(&qword_2A1787530);
  }

  return qword_2A1787528;
}

void sub_29B24780C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_29A0EB570(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787530);
  _Unwind_Resume(a1);
}

uint64_t sub_29B247850()
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787540))
  {
    sub_29A008E78(__p, "integer3");
    v5 = xmmword_29B7698C4;
    v6 = 0x20000007ALL;
    sub_29B248F6C(v2, &v5, 3);
    v1 = sub_29B2464E0(__p, 2, 2, 3, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787538 = v1;
    __cxa_guard_release(&qword_2A1787540);
  }

  return qword_2A1787538;
}

void sub_29B247958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787540);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24799C()
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787550))
  {
    sub_29A008E78(__p, "integer4");
    v5[0] = xmmword_29B7698DC;
    v5[1] = unk_29B7698EC;
    sub_29B248F6C(v2, v5, 4);
    v1 = sub_29B2464E0(__p, 2, 2, 4, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787548 = v1;
    __cxa_guard_release(&qword_2A1787550);
  }

  return qword_2A1787548;
}

void sub_29B247A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787550);
  _Unwind_Resume(a1);
}

uint64_t sub_29B247ADC()
{
  v7 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787560))
  {
    sub_29A008E78(__p, "color3");
    v5 = xmmword_29B7698FC;
    v6 = 0x200000062;
    sub_29B248F6C(v2, &v5, 3);
    v1 = sub_29B2464E0(__p, 4, 1, 3, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787558 = v1;
    __cxa_guard_release(&qword_2A1787560);
  }

  return qword_2A1787558;
}

void sub_29B247BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787560);
  _Unwind_Resume(a1);
}

uint64_t sub_29B247C28()
{
  v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787570))
  {
    sub_29A008E78(__p, "color4");
    v5[0] = xmmword_29B769914;
    v5[1] = unk_29B769924;
    sub_29B248F6C(v2, v5, 4);
    v1 = sub_29B2464E0(__p, 4, 1, 4, 1, v2);
    sub_29A0EB570(v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787568 = v1;
    __cxa_guard_release(&qword_2A1787570);
  }

  return qword_2A1787568;
}

void sub_29B247D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787570);
  _Unwind_Resume(a1);
}

uint64_t sub_29B247D68()
{
  if ((atomic_load_explicit(&qword_2A1787580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787580))
  {
    sub_29A008E78(__p, "matrix33");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 4, 3, 9, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787578 = v1;
    __cxa_guard_release(&qword_2A1787580);
  }

  return qword_2A1787578;
}

void sub_29B247E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787580);
  _Unwind_Resume(a1);
}

uint64_t sub_29B247E64()
{
  if ((atomic_load_explicit(&qword_2A1787590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787590))
  {
    sub_29A008E78(__p, "matrix44");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 4, 3, 16, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787588 = v1;
    __cxa_guard_release(&qword_2A1787590);
  }

  return qword_2A1787588;
}

void sub_29B247F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787590);
  _Unwind_Resume(a1);
}

uint64_t sub_29B247F60()
{
  if ((atomic_load_explicit(&qword_2A17875A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17875A0))
  {
    sub_29A008E78(__p, "string");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 5, 0, 1, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787598 = v1;
    __cxa_guard_release(&qword_2A17875A0);
  }

  return qword_2A1787598;
}

void sub_29B248020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17875A0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24805C()
{
  if ((atomic_load_explicit(&qword_2A17875B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17875B0))
  {
    sub_29A008E78(__p, "filename");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 5, 4, 1, 1, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17875A8 = v1;
    __cxa_guard_release(&qword_2A17875B0);
  }

  return qword_2A17875A8;
}

void sub_29B24811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17875B0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B248158()
{
  if ((atomic_load_explicit(&qword_2A17875C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17875C0))
  {
    sub_29A008E78(__p, "BSDF");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 5, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17875B8 = v1;
    __cxa_guard_release(&qword_2A17875C0);
  }

  return qword_2A17875B8;
}

void sub_29B248218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17875C0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B248254()
{
  if ((atomic_load_explicit(&qword_2A17875D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17875D0))
  {
    sub_29A008E78(__p, "EDF");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 5, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17875C8 = v1;
    __cxa_guard_release(&qword_2A17875D0);
  }

  return qword_2A17875C8;
}

void sub_29B248314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17875D0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B248350()
{
  if ((atomic_load_explicit(&qword_2A17875E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17875E0))
  {
    sub_29A008E78(__p, "VDF");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 5, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17875D8 = v1;
    __cxa_guard_release(&qword_2A17875E0);
  }

  return qword_2A17875D8;
}

void sub_29B248410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17875E0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24844C()
{
  if ((atomic_load_explicit(&qword_2A17875F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17875F0))
  {
    sub_29A008E78(__p, "surfaceshader");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 6, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17875E8 = v1;
    __cxa_guard_release(&qword_2A17875F0);
  }

  return qword_2A17875E8;
}

void sub_29B24850C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A17875F0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B248548()
{
  if ((atomic_load_explicit(&qword_2A1787600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787600))
  {
    sub_29A008E78(__p, "volumeshader");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 6, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A17875F8 = v1;
    __cxa_guard_release(&qword_2A1787600);
  }

  return qword_2A17875F8;
}

void sub_29B248608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787600);
  _Unwind_Resume(a1);
}

uint64_t sub_29B248644()
{
  if ((atomic_load_explicit(&qword_2A1787610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787610))
  {
    sub_29A008E78(__p, "displacementshader");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 6, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787608 = v1;
    __cxa_guard_release(&qword_2A1787610);
  }

  return qword_2A1787608;
}

void sub_29B248704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787610);
  _Unwind_Resume(a1);
}

uint64_t sub_29B248740()
{
  if ((atomic_load_explicit(&qword_2A1787620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787620))
  {
    sub_29A008E78(__p, "lightshader");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 6, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787618 = v1;
    __cxa_guard_release(&qword_2A1787620);
  }

  return qword_2A1787618;
}

void sub_29B248800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787620);
  _Unwind_Resume(a1);
}

uint64_t sub_29B24883C()
{
  if ((atomic_load_explicit(&qword_2A1787630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787630))
  {
    sub_29A008E78(__p, "material");
    memset(v2, 0, sizeof(v2));
    v3 = 1065353216;
    v1 = sub_29B2464E0(__p, 0, 7, 1, 0, v2);
    sub_29A0EB570(v2);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    qword_2A1787628 = v1;
    __cxa_guard_release(&qword_2A1787630);
  }

  return qword_2A1787628;
}

void sub_29B2488FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_29A0EB570(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_2A1787630);
  _Unwind_Resume(a1);
}

void *sub_29B248938(uint64_t a1, char *a2, void *a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v6)
          {
            if (*(v10 + 16) == v6)
            {
              return v10;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v10 = operator new(0x18uLL);
  *v10 = 0;
  v10[1] = v6;
  v10[2] = *a3;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *v10 = *v19;
LABEL_38:
    *v19 = v10;
    goto LABEL_39;
  }

  *v10 = *(a1 + 16);
  *(a1 + 16) = v10;
  *(v18 + 8 * v3) = a1 + 16;
  if (*v10)
  {
    v20 = *(*v10 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v10;
}