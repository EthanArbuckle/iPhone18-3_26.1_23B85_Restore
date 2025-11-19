void sub_29B220A2C(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B220A8C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B220B04(a1, i + 2, (i + 2));
  }

  return a1;
}

void *sub_29B220B04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      result = *v10;
      if (*v10)
      {
        do
        {
          v12 = result[1];
          if (v12 == v7)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v3)
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

  sub_29B220D68(a1, v7, a3, &v23);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    result = v23;
    *v23 = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23;
    *v23 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v3) = a1 + 16;
    result = v23;
    if (*v23)
    {
      v22 = *(*v23 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23;
      result = v23;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B220D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29AE14114(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29B220D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  *(result + 1) = a2;
  *(result + 2) = *a3;
  if (*(a3 + 31) < 0)
  {
    result = sub_29A008D14(result + 24, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *(result + 24) = *(a3 + 8);
    *(result + 5) = *(a3 + 24);
  }

  *(a4 + 16) = 1;
  return result;
}

void sub_29B220DFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AE14114(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29B220E18@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B220E64(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B220E64(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9B40;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9AA8;
  return a1;
}

void sub_29B220F0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B220F78(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_29B220B04(a1, a2, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_29B220FF0(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_29B22106C(a1, a2, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

void *sub_29B22106C(uint64_t a1, void *a2, void *a3)
{
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      result = *v10;
      if (*v10)
      {
        do
        {
          v12 = result[1];
          if (v12 == v7)
          {
            if (result[2] == *a2)
            {
              return result;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v3)
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

  sub_29B2212C4(a1, v7, a3, &v23);
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    result = v23;
    *v23 = *v20;
    *v20 = result;
  }

  else
  {
    v21 = v23;
    *v23 = *(a1 + 16);
    *(a1 + 16) = v21;
    *(v19 + 8 * v3) = a1 + 16;
    result = v23;
    if (*v23)
    {
      v22 = *(*v23 + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v22 >= v8)
        {
          v22 %= v8;
        }
      }

      else
      {
        v22 &= v8 - 1;
      }

      *(*a1 + 8 * v22) = v23;
      result = v23;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29B2212AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29B221340(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29B2212C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v8[2] = *a3;
  result = sub_29B220A8C((v8 + 3), (a3 + 1));
  *(a4 + 16) = 1;
  return result;
}

void sub_29B221340(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AE14178(v2 + 24);
    }

    operator delete(v2);
  }
}

uint64_t sub_29B22139C(uint64_t a1)
{
  sub_29B2213D8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29B2213D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AE14178((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29B22141C(void *a1)
{
  result = sub_29B23F978(a1);
  *result = &unk_2A20C9B90;
  return result;
}

void sub_29B221450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(&v28, off_2A14FE6F8);
  v5 = sub_29B22FF64(a4, &v28);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  v6 = sub_29B240E54(v5);
  v27 = 1038323257;
  v26 = 1025758986;
  v25 = 1017589509;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  LODWORD(__p) = 1065353216;
  sub_29A0C2184(&v28, &__p);
  v7 = 9;
  do
  {
    sub_29A0C2184(&v28, &v27);
    --v7;
  }

  while (v7);
  v8 = 25;
  do
  {
    sub_29A0C2184(&v28, &v26);
    --v8;
  }

  while (v8);
  v9 = 49;
  do
  {
    sub_29A0C2184(&v28, &v25);
    --v9;
  }

  while (v9);
  v10 = sub_29B246E58();
  sub_29A008E78(&__p, "c_box_filter_weights");
  sub_29B2007A8(&v28, v19);
  v21 = *v19;
  sub_29B240028(v6, v10, &__p, &v21, 0);
  if (*(&v21 + 1))
  {
    sub_29A014BEC(*(&v21 + 1));
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  LODWORD(v19[0]) = 1065353216;
  sub_29A0C2184(&__p, v19);
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      *v19 = dword_2A14FE608[i] * dword_2A14FE608[j];
      sub_29A0C2184(&__p, v19);
    }
  }

  for (k = 0; k != 5; ++k)
  {
    for (m = 0; m != 5; ++m)
    {
      *v19 = dword_2A14FE614[k] * dword_2A14FE614[m];
      sub_29A0C2184(&__p, v19);
    }
  }

  for (n = 0; n != 7; ++n)
  {
    for (ii = 0; ii != 7; ++ii)
    {
      *v19 = dword_2A14FE628[n] * dword_2A14FE628[ii];
      sub_29A0C2184(&__p, v19);
    }
  }

  v17 = sub_29B246E58();
  sub_29A008E78(v19, "c_gaussian_filter_weights");
  sub_29B2007A8(&__p, &v31);
  v18 = v31;
  sub_29B240028(v6, v17, v19, &v18, 0);
  if (*(&v18 + 1))
  {
    sub_29A014BEC(*(&v18 + 1));
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_29B221718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v27 = *(v25 - 88);
  if (v27)
  {
    *(v25 - 80) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_29B2217DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if ((v3 & 0x40000) != 0)
  {
    sub_29A008E78(__p, "texcoord");
    v5 = sub_29B23EC38(a2, __p);
    v6 = v5;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v6[3];
    Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v5);
  }

  else
  {
    if ((v3 & 0x80000) == 0)
    {
      return 0;
    }

    sub_29A008E78(__p, "position");
    v6 = sub_29B23EC38(a2, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v6[3];
    Vector2Name = sub_29B2470A0();
  }

  if (sub_29A1B00DC(v7, Vector2Name))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_29B2218A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2218C0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, float a9, float a10)
{
  sub_29A012CE4(a8);
  v19 = *a6;
  sub_29A008E78(&v104, "in");
  v20 = sub_29B23EC38(a2, &v104);
  v85 = a4;
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104);
  }

  if (!v20)
  {
    goto LABEL_126;
  }

  v21 = v20[30];
  if (v21 && v21[3] && (*(*a1 + 112))(a1))
  {
    v22 = v21[2];
    if (!v22)
    {
      goto LABEL_29;
    }

    if ((*(v22 + 42) & 4) == 0)
    {
      goto LABEL_29;
    }

    v23 = **(v22 + 152);
    if (!v23)
    {
      goto LABEL_29;
    }

    if (a3 < 2)
    {
      if (!a3)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v82 = *(v22 + 176);
      v83 = v22;
      v24 = (*(*a1 + 128))(a1, v22);
      if (v24)
      {
        v81 = *(v24 + 3);
        v84 = v24;
        if (v81 == pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v24))
        {
          v25 = **(a2 + 152);
          (*(*v19 + 224))(&v104, v19, v84, a6);
          v79 = v25;
          if (*(v25 + 127) >= 0)
          {
            v26 = *(v25 + 127);
          }

          else
          {
            v26 = *(v25 + 112);
          }

          v27 = sub_29A022DE0(&v103, v26 + 12);
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = &v103;
          }

          else
          {
            v28 = v103.__r_.__value_.__r.__words[0];
          }

          if (v26)
          {
            if (*(v79 + 127) >= 0)
            {
              v29 = (v79 + 104);
            }

            else
            {
              v29 = *(v79 + 104);
            }

            v80 = v28;
            v27 = memmove(v28, v29, v26);
            v28 = v80;
          }

          strcpy(v28 + v26, "_sample_size");
          v30 = v19[1];
          Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v27);
          v32 = sub_29B2438AC(v30, Vector2Name);
          if (*(v32 + 23) < 0)
          {
            sub_29A008D14(&__dst, *v32, *(v32 + 8));
          }

          else
          {
            v33 = *v32;
            v102 = *(v32 + 16);
            __dst = v33;
          }

          if (v102 >= 0)
          {
            v36 = HIBYTE(v102);
          }

          else
          {
            v36 = *(&__dst + 1);
          }

          v37 = &v89;
          sub_29A022DE0(&v89, v36 + 1);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v37 = v89.__r_.__value_.__r.__words[0];
          }

          if (v36)
          {
            if (v102 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            memmove(v37, p_dst, v36);
          }

          *(&v37->__r_.__value_.__l.__data_ + v36) = 32;
          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &v103;
          }

          else
          {
            v39 = v103.__r_.__value_.__r.__words[0];
          }

          if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v103.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v103.__r_.__value_.__l.__size_;
          }

          v41 = std::string::append(&v89, v39, size);
          v42 = *&v41->__r_.__value_.__l.__data_;
          v90.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
          *&v90.__r_.__value_.__l.__data_ = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          v43 = std::string::append(&v90, " = ");
          v44 = *&v43->__r_.__value_.__l.__data_;
          v91.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v91.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          v45 = *(a5 + 23);
          if (v45 >= 0)
          {
            v46 = a5;
          }

          else
          {
            v46 = *a5;
          }

          if (v45 >= 0)
          {
            v47 = *(a5 + 23);
          }

          else
          {
            v47 = *(a5 + 8);
          }

          v48 = std::string::append(&v91, v46, v47);
          v49 = *&v48->__r_.__value_.__l.__data_;
          v92.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
          *&v92.__r_.__value_.__l.__data_ = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          v50 = std::string::append(&v92, "(");
          v51 = *&v50->__r_.__value_.__l.__data_;
          v93.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
          *&v93.__r_.__value_.__l.__data_ = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          if (v105 >= 0)
          {
            v52 = &v104;
          }

          else
          {
            v52 = v104;
          }

          if (v105 >= 0)
          {
            v53 = HIBYTE(v105);
          }

          else
          {
            v53 = *(&v104 + 1);
          }

          v54 = std::string::append(&v93, v52, v53);
          v55 = *&v54->__r_.__value_.__l.__data_;
          v94.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
          *&v94.__r_.__value_.__l.__data_ = v55;
          v54->__r_.__value_.__l.__size_ = 0;
          v54->__r_.__value_.__r.__words[2] = 0;
          v54->__r_.__value_.__r.__words[0] = 0;
          v56 = std::string::append(&v94, ",");
          v57 = *&v56->__r_.__value_.__l.__data_;
          v95.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
          *&v95.__r_.__value_.__l.__data_ = v57;
          v56->__r_.__value_.__l.__size_ = 0;
          v56->__r_.__value_.__r.__words[2] = 0;
          v56->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v88, a9);
          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = &v88;
          }

          else
          {
            v58 = v88.__r_.__value_.__r.__words[0];
          }

          if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v59 = v88.__r_.__value_.__l.__size_;
          }

          v60 = std::string::append(&v95, v58, v59);
          v61 = *&v60->__r_.__value_.__l.__data_;
          v96.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
          *&v96.__r_.__value_.__l.__data_ = v61;
          v60->__r_.__value_.__l.__size_ = 0;
          v60->__r_.__value_.__r.__words[2] = 0;
          v60->__r_.__value_.__r.__words[0] = 0;
          v62 = std::string::append(&v96, ",");
          v63 = *&v62->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v87, a10);
          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = &v87;
          }

          else
          {
            v64 = v87.__r_.__value_.__r.__words[0];
          }

          if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v65 = v87.__r_.__value_.__l.__size_;
          }

          v66 = std::string::append(&v97, v64, v65);
          v67 = *&v66->__r_.__value_.__l.__data_;
          v98.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
          *&v98.__r_.__value_.__l.__data_ = v67;
          v66->__r_.__value_.__l.__size_ = 0;
          v66->__r_.__value_.__r.__words[2] = 0;
          v66->__r_.__value_.__r.__words[0] = 0;
          v68 = std::string::append(&v98, ")");
          v69 = *&v68->__r_.__value_.__l.__data_;
          v100 = v68->__r_.__value_.__r.__words[2];
          v99 = v69;
          v68->__r_.__value_.__l.__size_ = 0;
          v68->__r_.__value_.__r.__words[2] = 0;
          v68->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v87.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v88.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
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

          (*(*v19 + 80))(v19, &v99, a7, 1);
          memset(&v98, 0, sizeof(v98));
          (*(*a1 + 120))(a1, &v103, &__dst, v85, &v98);
          v70 = 0;
          v71 = 0;
          do
          {
            sub_29B20D0DC(a6, v84, (v98.__r_.__value_.__r.__words[0] + v70));
            std::operator+<char>();
            std::to_string(&v95, v71);
            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v72 = &v95;
            }

            else
            {
              v72 = v95.__r_.__value_.__r.__words[0];
            }

            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v73 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v73 = v95.__r_.__value_.__l.__size_;
            }

            v74 = std::string::append(&v96, v72, v73);
            v75 = *&v74->__r_.__value_.__l.__data_;
            v97.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
            *&v97.__r_.__value_.__l.__data_ = v75;
            v74->__r_.__value_.__l.__size_ = 0;
            v74->__r_.__value_.__r.__words[2] = 0;
            v74->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v95.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v96.__r_.__value_.__l.__data_);
            }

            sub_29B20D1CC(a6, v23, &v97);
            (*(*v82 + 72))(v82, v83, a6, a7);
            sub_29B20D138(a6, v84);
            sub_29B20D228(a6, v23);
            pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier((v23 + 104), &v97.__r_.__value_.__l.__data_, &v96);
            sub_29A091654(a8, &v96);
            if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v96.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v97.__r_.__value_.__l.__data_);
            }

            ++v71;
            v70 += 24;
          }

          while (a3 != v71);
          v97.__r_.__value_.__r.__words[0] = &v98;
          sub_29A012C90(&v97);
          if (SHIBYTE(v100) < 0)
          {
            operator delete(v99);
          }

          if (SHIBYTE(v102) < 0)
          {
            operator delete(__dst);
          }

          if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v103.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(v104);
          }

          goto LABEL_29;
        }
      }
    }

    sub_29A070BA0(a8);
  }

  v35 = v20[16];
  v34 = v20[17];
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v34);
  }

  if (!v35)
  {
LABEL_126:
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v77 = std::string::append(&v103, "'");
    v78 = *&v77->__r_.__value_.__l.__data_;
    v105 = v77->__r_.__value_.__r.__words[2];
    v104 = v78;
    v77->__r_.__value_.__l.__size_ = 0;
    v77->__r_.__value_.__r.__words[2] = 0;
    v77->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v104);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

LABEL_29:
  if (*a8 == *(a8 + 8))
  {
    (*(*v19 + 224))(&v104, v19, v20, a6);
    if (a3)
    {
      sub_29A070BA0(a8);
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v104);
    }
  }
}

void sub_29B2221C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  a53 = (v53 - 256);
  sub_29A012C90(&a53);
  if (*(v53 - 201) < 0)
  {
    operator delete(*(v53 - 224));
  }

  if (*(v53 - 169) < 0)
  {
    operator delete(*(v53 - 192));
  }

  if (*(v53 - 145) < 0)
  {
    operator delete(*(v53 - 168));
  }

  if (*(v53 - 121) < 0)
  {
    operator delete(*(v53 - 144));
  }

  _Unwind_Resume(a1);
}

double sub_29B222424@<D0>(_OWORD *a1@<X8>)
{
  sub_29B223D1C(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B222460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE550[0]);
  v7 = sub_29B22FF64(a4, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE6F8);
  v8 = sub_29B22FF64(a4, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 147) == 1)
  {
    sub_29A008E78(__p, off_2A14FE4E0[0]);
    v9 = sub_29B2470A0();
    sub_29A008E78(&v30, off_2A14FE190[0]);
    v10 = sub_29B240AA4(v7, __p);
    v35 = 0;
    v36 = 0;
    sub_29B240028(v10, v9, &v30, &v35, 0);
    if (v36)
    {
      sub_29A014BEC(v36);
    }

    if (v32 < 0)
    {
      operator delete(v30);
    }

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, off_2A14FE4E0[0]);
    v11 = sub_29B2470A0();
    sub_29A008E78(&v30, off_2A14FE198[0]);
    v12 = sub_29B240AA4(v7, __p);
    v35 = 0;
    v36 = 0;
    sub_29B240028(v12, v11, &v30, &v35, 0);
  }

  else
  {
    sub_29A008E78(__p, off_2A14FE4E0[0]);
    v13 = sub_29B2470A0();
    sub_29A008E78(&v30, off_2A14FE1A0[0]);
    v14 = sub_29B240AA4(v7, __p);
    v35 = 0;
    v36 = 0;
    sub_29B240028(v14, v13, &v30, &v35, 0);
  }

  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (v32 < 0)
  {
    operator delete(v30);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE170[0]);
  v15 = sub_29B23EC38(a2, __p);
  v16 = v15;
  if (v34 < 0)
  {
    operator delete(__p[0]);
    if (!v16)
    {
      goto LABEL_48;
    }
  }

  else if (!v15)
  {
LABEL_48:
    sub_29A008E78(__p, off_2A14FE4E8[0]);
    v29 = sub_29B2470A0();
    sub_29A008E78(&v30, off_2A14FE1F8[0]);
    sub_29B211DA4(__p, v29, &v30, v7, v8, 0);
    if (v32 < 0)
    {
      operator delete(v30);
    }

LABEL_50:
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  v17 = v16[16];
  v18 = v16[17];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *sub_29B1F3CC0(v17);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v19 != 2)
  {
    goto LABEL_48;
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v20 = sub_29B2470A0();
  sub_29A008E78(&v30, off_2A14FE1D8[0]);
  sub_29B211DA4(__p, v20, &v30, v7, v8, 0);
  if (v32 < 0)
  {
    operator delete(v30);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4F0[0]);
  v21 = sub_29B247E64();
  v22 = sub_29B20E488();
  v23 = sub_29B2408C8(v7, __p);
  v30 = 0;
  v31 = 0;
  sub_29B240028(v23, v21, v22, &v30, 0);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 147) == 1)
  {
    sub_29A008E78(__p, off_2A14FE4E8[0]);
    v24 = sub_29B2470A0();
    sub_29A008E78(&v30, off_2A14FE1C8[0]);
    sub_29B211DA4(__p, v24, &v30, v7, v8, 0);
    if (v32 < 0)
    {
      operator delete(v30);
    }

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, off_2A14FE4E8[0]);
    v25 = sub_29B2470A0();
    sub_29A008E78(&v30, off_2A14FE1D0[0]);
    sub_29B211DA4(__p, v25, &v30, v7, v8, 0);
    if (v32 < 0)
    {
      operator delete(v30);
    }

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, off_2A14FE4F0[0]);
    v26 = sub_29B247E64();
    v27 = sub_29B20E608();
    v28 = sub_29B2408C8(v7, __p);
    v30 = 0;
    v31 = 0;
    sub_29B240028(v28, v26, v27, &v30, 0);
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    goto LABEL_50;
  }
}

void sub_29B222934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B222A10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  sub_29A008E78(&v149, off_2A14FE170[0]);
  v8 = sub_29B23EC38(a2, &v149);
  v9 = v8;
  if (v151 < 0)
  {
    operator delete(v149);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = v9[16];
  v11 = v9[17];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *sub_29B1F3CC0(v10) == 2;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

LABEL_9:
  v13 = strlen(off_2A14FE550[0]);
  v14 = v13;
  v15 = *(a4 + 23);
  if (v15 < 0)
  {
    if (v13 != *(a4 + 8))
    {
      goto LABEL_166;
    }

    if (v13 == -1)
    {
      sub_29A0F26CC();
    }

    v16 = *a4;
  }

  else
  {
    v16 = a4;
    if (v14 != v15)
    {
      goto LABEL_166;
    }
  }

  if (memcmp(v16, off_2A14FE550[0], v14))
  {
    goto LABEL_166;
  }

  sub_29A008E78(&v149, off_2A14FE4E8[0]);
  v17 = sub_29B240C7C(a4, &v149);
  if (v151 < 0)
  {
    operator delete(v149);
  }

  (*(*v7 + 264))(&v149, v7, v17);
  if (!v12)
  {
    sub_29A008E78(&v147, off_2A14FE1F8[0]);
    v87 = sub_29B23FE4C(v17, &v147);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147);
    }

    v88 = *(v87 + 58);
    if ((v88 & 2) != 0)
    {
      goto LABEL_163;
    }

    *(v87 + 58) = v88 | 2;
    if (*(a3 + 147) != 1)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v149, v87 + 13, &v145);
      v116 = std::string::append(&v145, " = ");
      v117 = *&v116->__r_.__value_.__l.__data_;
      v146.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
      *&v146.__r_.__value_.__l.__data_ = v117;
      v116->__r_.__value_.__l.__size_ = 0;
      v116->__r_.__value_.__r.__words[2] = 0;
      v116->__r_.__value_.__r.__words[0] = 0;
      v118 = std::string::append(&v146, off_2A14FE1A0[0]);
      v119 = *&v118->__r_.__value_.__l.__data_;
      v148 = v118->__r_.__value_.__r.__words[2];
      v147 = v119;
      v118->__r_.__value_.__l.__size_ = 0;
      v118->__r_.__value_.__r.__words[2] = 0;
      v118->__r_.__value_.__r.__words[0] = 0;
      (*(*v7 + 80))(v7, &v147, a4, 1);
      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147);
      }

      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v146.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_163;
      }

      v86 = v145.__r_.__value_.__r.__words[0];
      goto LABEL_162;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v149, v87 + 13, &v142);
    v89 = std::string::append(&v142, " = cross(");
    v90 = *&v89->__r_.__value_.__l.__data_;
    v143.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
    *&v143.__r_.__value_.__l.__data_ = v90;
    v89->__r_.__value_.__l.__size_ = 0;
    v89->__r_.__value_.__r.__words[2] = 0;
    v89->__r_.__value_.__r.__words[0] = 0;
    v91 = std::string::append(&v143, off_2A14FE190[0]);
    v92 = *&v91->__r_.__value_.__l.__data_;
    v144.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
    *&v144.__r_.__value_.__l.__data_ = v92;
    v91->__r_.__value_.__l.__size_ = 0;
    v91->__r_.__value_.__r.__words[2] = 0;
    v91->__r_.__value_.__r.__words[0] = 0;
    v93 = std::string::append(&v144, ", ");
    v94 = *&v93->__r_.__value_.__l.__data_;
    v145.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
    *&v145.__r_.__value_.__l.__data_ = v94;
    v93->__r_.__value_.__l.__size_ = 0;
    v93->__r_.__value_.__r.__words[2] = 0;
    v93->__r_.__value_.__r.__words[0] = 0;
    v95 = std::string::append(&v145, off_2A14FE198[0]);
    v96 = *&v95->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v96;
    v95->__r_.__value_.__l.__size_ = 0;
    v95->__r_.__value_.__r.__words[2] = 0;
    v95->__r_.__value_.__r.__words[0] = 0;
    v97 = std::string::append(&v146, ")");
    v98 = *&v97->__r_.__value_.__l.__data_;
    v148 = v97->__r_.__value_.__r.__words[2];
    v147 = v98;
    v97->__r_.__value_.__l.__size_ = 0;
    v97->__r_.__value_.__r.__words[2] = 0;
    v97->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v147, a4, 1);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147);
    }

    if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_148:
      if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v145.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_163;
      }

      v86 = v142.__r_.__value_.__r.__words[0];
      goto LABEL_162;
    }

    v99 = v146.__r_.__value_.__r.__words[0];
LABEL_147:
    operator delete(v99);
    goto LABEL_148;
  }

  sub_29A008E78(&v147, off_2A14FE1D8[0]);
  v18 = sub_29B23FE4C(v17, &v147);
  if (SHIBYTE(v148) < 0)
  {
    operator delete(v147);
  }

  v19 = *(v18 + 58);
  if ((v19 & 2) != 0)
  {
    goto LABEL_163;
  }

  *(v18 + 58) = v19 | 2;
  if (*(a3 + 147) != 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v149, v18 + 13, &v142);
    v100 = std::string::append(&v142, " = normalize((");
    v101 = *&v100->__r_.__value_.__l.__data_;
    v143.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v143.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v102 = sub_29B20E488();
    v103 = v102[23];
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
      v105 = *(v102 + 1);
    }

    v106 = std::string::append(&v143, v104, v105);
    v107 = *&v106->__r_.__value_.__l.__data_;
    v144.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v144.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    v108 = std::string::append(&v144, " * vec4(");
    v109 = *&v108->__r_.__value_.__l.__data_;
    v145.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
    *&v145.__r_.__value_.__l.__data_ = v109;
    v108->__r_.__value_.__l.__size_ = 0;
    v108->__r_.__value_.__r.__words[2] = 0;
    v108->__r_.__value_.__r.__words[0] = 0;
    sub_29A008E78(&__p, off_2A14FE1A0[0]);
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

    v112 = std::string::append(&v145, p_p, size);
    v113 = *&v112->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v113;
    v112->__r_.__value_.__l.__size_ = 0;
    v112->__r_.__value_.__r.__words[2] = 0;
    v112->__r_.__value_.__r.__words[0] = 0;
    v114 = std::string::append(&v146, ", 0.0)).xyz)");
    v115 = *&v114->__r_.__value_.__l.__data_;
    v148 = v114->__r_.__value_.__r.__words[2];
    v147 = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v147, a4, 1);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    v99 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_147;
  }

  sub_29A008E78(&v147, off_2A14FE1C8[0]);
  v20 = sub_29B23FE4C(v17, &v147);
  if (SHIBYTE(v148) < 0)
  {
    operator delete(v147);
  }

  v21 = *(v20 + 58);
  if ((v21 & 2) == 0)
  {
    *(v20 + 58) = v21 | 2;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v149, v20 + 13, &v142);
    v22 = std::string::append(&v142, " = normalize((");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v143.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v143.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = sub_29B20E608();
    v25 = v24[23];
    if (v25 >= 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = *v24;
    }

    if (v25 >= 0)
    {
      v27 = *(v24 + 23);
    }

    else
    {
      v27 = *(v24 + 1);
    }

    v28 = std::string::append(&v143, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v144.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v144.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v144, " * vec4(");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v145.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v145.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    sub_29A008E78(&__p, off_2A14FE190[0]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = __p.__r_.__value_.__l.__size_;
    }

    v34 = std::string::append(&v145, v32, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v146, ", 0.0)).xyz)");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v148 = v36->__r_.__value_.__r.__words[2];
    v147 = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v147, a4, 1);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&v147, off_2A14FE1D0[0]);
  v38 = sub_29B23FE4C(v17, &v147);
  if (SHIBYTE(v148) < 0)
  {
    operator delete(v147);
  }

  v39 = *(v38 + 58);
  if ((v39 & 2) == 0)
  {
    *(v38 + 58) = v39 | 2;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v149, v38 + 13, &v142);
    v40 = std::string::append(&v142, " = normalize((");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v143.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v143.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = sub_29B20E488();
    v43 = v42[23];
    if (v43 >= 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = *v42;
    }

    if (v43 >= 0)
    {
      v45 = *(v42 + 23);
    }

    else
    {
      v45 = *(v42 + 1);
    }

    v46 = std::string::append(&v143, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v144.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v144.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v144, " * vec4(");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v145.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v145.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    sub_29A008E78(&__p, off_2A14FE198[0]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &__p;
    }

    else
    {
      v50 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v51 = __p.__r_.__value_.__l.__size_;
    }

    v52 = std::string::append(&v145, v50, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v146, ", 0.0)).xyz)");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v148 = v54->__r_.__value_.__r.__words[2];
    v147 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v147, a4, 1);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v144.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v149, v18 + 13, &v140);
  v56 = std::string::append(&v140, " = cross(");
  v57 = *&v56->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  if ((v151 & 0x80u) == 0)
  {
    v58 = &v149;
  }

  else
  {
    v58 = v149;
  }

  if ((v151 & 0x80u) == 0)
  {
    v59 = v151;
  }

  else
  {
    v59 = v150;
  }

  v60 = std::string::append(&__p, v58, v59);
  v61 = *&v60->__r_.__value_.__l.__data_;
  v142.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&v142.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  v64 = *(v20 + 13);
  v63 = v20 + 104;
  v62 = v64;
  v65 = v63[23];
  if (v65 >= 0)
  {
    v66 = v63;
  }

  else
  {
    v66 = v62;
  }

  if (v65 >= 0)
  {
    v67 = v63[23];
  }

  else
  {
    v67 = *(v63 + 1);
  }

  v68 = std::string::append(&v142, v66, v67);
  v69 = *&v68->__r_.__value_.__l.__data_;
  v143.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
  *&v143.__r_.__value_.__l.__data_ = v69;
  v68->__r_.__value_.__l.__size_ = 0;
  v68->__r_.__value_.__r.__words[2] = 0;
  v68->__r_.__value_.__r.__words[0] = 0;
  v70 = std::string::append(&v143, ", ");
  v71 = *&v70->__r_.__value_.__l.__data_;
  v144.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
  *&v144.__r_.__value_.__l.__data_ = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
  if ((v151 & 0x80u) == 0)
  {
    v72 = &v149;
  }

  else
  {
    v72 = v149;
  }

  if ((v151 & 0x80u) == 0)
  {
    v73 = v151;
  }

  else
  {
    v73 = v150;
  }

  v74 = std::string::append(&v144, v72, v73);
  v75 = *&v74->__r_.__value_.__l.__data_;
  v145.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
  *&v145.__r_.__value_.__l.__data_ = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v78 = *(v38 + 13);
  v77 = v38 + 104;
  v76 = v78;
  v79 = v77[23];
  if (v79 >= 0)
  {
    v80 = v77;
  }

  else
  {
    v80 = v76;
  }

  if (v79 >= 0)
  {
    v81 = v77[23];
  }

  else
  {
    v81 = *(v77 + 1);
  }

  v82 = std::string::append(&v145, v80, v81);
  v83 = *&v82->__r_.__value_.__l.__data_;
  v146.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
  *&v146.__r_.__value_.__l.__data_ = v83;
  v82->__r_.__value_.__l.__size_ = 0;
  v82->__r_.__value_.__r.__words[2] = 0;
  v82->__r_.__value_.__r.__words[0] = 0;
  v84 = std::string::append(&v146, ")");
  v85 = *&v84->__r_.__value_.__l.__data_;
  v148 = v84->__r_.__value_.__r.__words[2];
  v147 = v85;
  v84->__r_.__value_.__l.__size_ = 0;
  v84->__r_.__value_.__r.__words[2] = 0;
  v84->__r_.__value_.__r.__words[0] = 0;
  (*(*v7 + 80))(v7, &v147, a4, 1);
  if (SHIBYTE(v148) < 0)
  {
    operator delete(v147);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_163;
  }

  v86 = v140.__r_.__value_.__r.__words[0];
LABEL_162:
  operator delete(v86);
LABEL_163:
  if (v151 < 0)
  {
    operator delete(v149);
  }

  LOBYTE(v15) = *(a4 + 23);
LABEL_166:
  v120 = strlen(off_2A14FE6F8);
  v121 = v120;
  if ((v15 & 0x80) != 0)
  {
    if (v120 != *(a4 + 8))
    {
      return;
    }

    if (v120 == -1)
    {
      sub_29A0F26CC();
    }

    v122 = *a4;
  }

  else
  {
    v122 = a4;
    if (v121 != v15)
    {
      return;
    }
  }

  if (!memcmp(v122, off_2A14FE6F8, v121))
  {
    sub_29A008E78(&v149, off_2A14FE4E8[0]);
    v123 = sub_29B240AA4(a4, &v149);
    if (v151 < 0)
    {
      operator delete(v149);
    }

    (*(*v7 + 264))(&v149, v7, v123);
    (*(*v7 + 48))(v7, a4);
    (*(*v7 + 192))(v7, **(a2 + 152), 1, 0, a3, a4);
    if (v12)
    {
      sub_29A008E78(&v147, off_2A14FE1D8[0]);
      v124 = sub_29B23FE4C(v123, &v147);
      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147);
      }

      std::operator+<char>();
      v127 = v124[13];
      v126 = (v124 + 13);
      v125 = v127;
      v128 = v126[23];
      if (v128 >= 0)
      {
        v129 = v126;
      }

      else
      {
        v129 = v125;
      }

      if (v128 >= 0)
      {
        v130 = v126[23];
      }

      else
      {
        v130 = *(v126 + 1);
      }
    }

    else
    {
      sub_29A008E78(&v147, off_2A14FE1F8[0]);
      v131 = sub_29B23FE4C(v123, &v147);
      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147);
      }

      std::operator+<char>();
      v134 = v131[13];
      v133 = (v131 + 13);
      v132 = v134;
      v135 = v133[23];
      if (v135 >= 0)
      {
        v129 = v133;
      }

      else
      {
        v129 = v132;
      }

      if (v135 >= 0)
      {
        v130 = v133[23];
      }

      else
      {
        v130 = *(v133 + 1);
      }
    }

    v136 = std::string::append(&v145, v129, v130);
    v137 = *&v136->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v137;
    v136->__r_.__value_.__l.__size_ = 0;
    v136->__r_.__value_.__r.__words[2] = 0;
    v136->__r_.__value_.__r.__words[0] = 0;
    v138 = std::string::append(&v146, ")");
    v139 = *&v138->__r_.__value_.__l.__data_;
    v148 = v138->__r_.__value_.__r.__words[2];
    v147 = v139;
    v138->__r_.__value_.__l.__size_ = 0;
    v138->__r_.__value_.__r.__words[2] = 0;
    v138->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, &v147, a4);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 56))(v7, a4, 1);
    if (v151 < 0)
    {
      operator delete(v149);
    }
  }
}

void sub_29B223994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v49 - 97) < 0)
  {
    operator delete(*(v49 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B223C6C(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B223CBC(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B223D1C@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B223D68(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B223D68(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9CD8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9C40;
  return a1;
}

void sub_29B223E10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B223E7C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B224290(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B223EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE6F8);
  v5 = sub_29B22FF64(a4, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4F0[0]);
  v6 = sub_29B246C60();
  sub_29A008E78(v8, off_2A14FE278[0]);
  v7 = sub_29B2408C8(v5, __p);
  v12 = 0;
  v13 = 0;
  sub_29B240028(v7, v6, v8, &v12, 0);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B223F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *(v20 - 24);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

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

uint64_t sub_29B223FE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = strlen(off_2A14FE6F8);
  v8 = result;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (result != *(a4 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a4;
  }

  else
  {
    result = a4;
    if (v8 != v9)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v8);
  if (!result)
  {
    v10 = *a3;
    (*(**a3 + 48))(*a3, a4);
    (*(*v10 + 192))(v10, **(a2 + 152), 1, 0, a3, a4);
    sub_29A008E78(&v13, off_2A14FE278[0]);
    v11 = std::string::insert(&v13, 0, " = ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    (*(*v10 + 72))(v10, __p, a4);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    return (*(*v10 + 56))(v10, a4, 1);
  }

  return result;
}

void sub_29B2241A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29B2241E0(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B224230(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B224290@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B2242DC(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B2242DC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9DC0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9D28;
  return a1;
}

void sub_29B224384(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B2243F0@<D0>(_OWORD *a1@<X8>)
{
  sub_29B224B58(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B22442C(uint64_t a1, std::string::size_type a2)
{
  v3 = sub_29A008E78(__p, qword_2A14FE648);
  Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v3);
  v5 = sub_29B23D9F0(a2, __p, Vector2Name);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = operator new(0x28uLL);
  *&v6->__shared_owners_ = 0u;
  v6->__vftable = &unk_2A20C8348;
  v6[1].__vftable = &unk_2A20C8398;
  __asm { FMOV            V0.2S, #1.0 }

  v6[1].__shared_owners_ = _D0;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = *(v5 + 136);
  *(v5 + 128) = v6 + 1;
  *(v5 + 136) = v6;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  sub_29A014BEC(v6);
  v13 = sub_29A008E78(__p, qword_2A14FE650);
  v14 = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v13);
  v15 = sub_29B23D9F0(a2, __p, v14);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = operator new(0x28uLL);
  v16->__shared_owners_ = 0;
  v16->__vftable = &unk_2A20C8348;
  v16->__shared_weak_owners_ = 0;
  v16[1].__vftable = &unk_2A20C8398;
  v16[1].__shared_owners_ = 0;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = *(v15 + 136);
  *(v15 + 128) = v16 + 1;
  *(v15 + 136) = v16;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  sub_29A014BEC(v16);
}

void sub_29B2245C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2245E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 144) == 1)
  {
    sub_29A008E78(__p, "file");
    sub_29AAC1E24(a2, __p, &v41);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    if (v41)
    {
      v6 = sub_29AAC0680(v41);
      v7 = off_2A14FDE08[0];
      v8 = *(v6 + 23);
      if (v8 >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      if (v8 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = *(v6 + 1);
      }

      v11 = strlen(off_2A14FDE08[0]);
      if (v11)
      {
        v12 = v11;
        if (v10 >= v11)
        {
          v13 = v9 + v10;
          v14 = *off_2A14FDE08[0];
          v15 = v9;
          do
          {
            if (v10 - v12 == -1)
            {
              break;
            }

            v16 = memchr(v15, v14, v10 - v12 + 1);
            if (!v16)
            {
              break;
            }

            v17 = v16;
            if (!memcmp(v16, v7, v12))
            {
              if (v17 == v13 || v17 - v9 == -1)
              {
                break;
              }

              goto LABEL_21;
            }

            v15 = (v17 + 1);
            v10 = v13 - (v17 + 1);
          }

          while (v10 >= v12);
        }
      }

      else
      {
LABEL_21:
        sub_29B1D8ACC(a2, &v35);
        v18 = v35;
        sub_29A008E78(__p, off_2A14FDE18[0]);
        sub_29A008E78(&v34, off_2A14FDE00[0]);
        sub_29B1C81F4(v18, __p, &v34, &v37);
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v40 < 0)
        {
          operator delete(__p[0]);
        }

        if (v36)
        {
          sub_29A014BEC(v36);
        }

        if (v37 && sub_29B1F9E50(v37))
        {
          v19 = sub_29B1F9EB4(v37);
          sub_29B24B784(v19, __p);
          __asm { FMOV            V0.2S, #1.0 }

          v35 = _D0;
          v33 = 0;
          sub_29B24B9E0(__p, &v35, &v33, _D0);
          sub_29A008E78(&v34, qword_2A14FE648);
          v25 = sub_29B23EB84(a3, &v34.__r_.__value_.__l.__data_);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          if (v25)
          {
            v26 = operator new(0x28uLL);
            v26->__shared_owners_ = 0;
            v26->__vftable = &unk_2A20C8348;
            v27 = v35;
            v26->__shared_weak_owners_ = 0;
            v26[1].__vftable = &unk_2A20C8398;
            v26[1].__shared_owners_ = v27;
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            v28 = v25[17];
            v25[16] = &v26[1];
            v25[17] = v26;
            if (v28)
            {
              sub_29A014BEC(v28);
            }

            sub_29A014BEC(v26);
          }

          sub_29A008E78(&v34, qword_2A14FE650);
          v29 = sub_29B23EB84(a3, &v34.__r_.__value_.__l.__data_);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          if (v29)
          {
            v30 = operator new(0x28uLL);
            v30->__shared_owners_ = 0;
            v30->__vftable = &unk_2A20C8348;
            v31 = v33;
            v30->__shared_weak_owners_ = 0;
            v30[1].__vftable = &unk_2A20C8398;
            v30[1].__shared_owners_ = v31;
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            v32 = v29[17];
            v29[16] = &v30[1];
            v29[17] = v30;
            if (v32)
            {
              sub_29A014BEC(v32);
            }

            sub_29A014BEC(v30);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        if (v38)
        {
          sub_29A014BEC(v38);
        }
      }
    }

    if (v42)
    {
      sub_29A014BEC(v42);
    }
  }
}

void sub_29B22493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  v28 = *(v26 - 72);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B224A0C(uint64_t a1)
{
  *a1 = &unk_2A20CA8D0;
  v3 = (a1 + 96);
  sub_29A012C90(&v3);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B224AB0(void **a1)
{
  *a1 = &unk_2A20CA8D0;
  v2 = a1 + 12;
  sub_29A012C90(&v2);
  if (*(a1 + 95) < 0)
  {
    operator delete(a1[9]);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

  operator delete(a1);
}

uint64_t sub_29B224B58@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  result = sub_29B224BA4(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B224BA4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9EA8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  sub_29B23F978((a1 + 24));
  *(a1 + 132) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = &unk_2A20C9E10;
  return a1;
}

void sub_29B224C78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B224CE4@<D0>(_OWORD *a1@<X8>)
{
  sub_29B225A68(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B224D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE550[0]);
  v6 = sub_29B22FF64(a4, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE6F8);
  v7 = sub_29B22FF64(a4, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E0[0]);
  v8 = sub_29B2470A0();
  sub_29A008E78(&v20, off_2A14FE190[0]);
  v9 = sub_29B240AA4(v6, __p);
  v25 = 0;
  v26 = 0;
  sub_29B240028(v9, v8, &v20, &v25, 0);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (v22 < 0)
  {
    operator delete(v20);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE170[0]);
  v10 = sub_29B23EC38(a2, __p);
  v11 = v10;
  if (v24 < 0)
  {
    operator delete(__p[0]);
    if (!v11)
    {
LABEL_25:
      sub_29A008E78(__p, off_2A14FE4E8[0]);
      v19 = sub_29B2470A0();
      sub_29A008E78(&v20, off_2A14FE1E8[0]);
      sub_29B211DA4(__p, v19, &v20, v6, v7, 0);
      goto LABEL_26;
    }
  }

  else if (!v10)
  {
    goto LABEL_25;
  }

  v12 = v11[16];
  v13 = v11[17];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *sub_29B1F3CC0(v12);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v14 != 2)
  {
    goto LABEL_25;
  }

  sub_29A008E78(__p, off_2A14FE4F0[0]);
  v15 = sub_29B247E64();
  v16 = sub_29B20E608();
  v17 = sub_29B2408C8(v6, __p);
  v20 = 0;
  v21 = 0;
  sub_29B240028(v17, v15, v16, &v20, 0);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v18 = sub_29B2470A0();
  sub_29A008E78(&v20, off_2A14FE1C8[0]);
  sub_29B211DA4(__p, v18, &v20, v6, v7, 0);
LABEL_26:
  if (v22 < 0)
  {
    operator delete(v20);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B224FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
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

void sub_29B225068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  sub_29A008E78(v68, off_2A14FE170[0]);
  v8 = sub_29B23EC38(a2, v68);
  v9 = v8;
  if (v69 < 0)
  {
    operator delete(v68[0]);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = v9[16];
  v11 = v9[17];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *sub_29B1F3CC0(v10) == 2;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

LABEL_9:
  v13 = strlen(off_2A14FE550[0]);
  v14 = v13;
  v15 = *(a4 + 23);
  if (v15 < 0)
  {
    if (v13 != *(a4 + 8))
    {
      goto LABEL_53;
    }

    if (v13 == -1)
    {
      sub_29A0F26CC();
    }

    v16 = *a4;
  }

  else
  {
    v16 = a4;
    if (v14 != v15)
    {
      goto LABEL_53;
    }
  }

  if (memcmp(v16, off_2A14FE550[0], v14))
  {
    goto LABEL_53;
  }

  sub_29A008E78(v68, off_2A14FE4E8[0]);
  v17 = sub_29B240C7C(a4, v68);
  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  (*(*v7 + 264))(v68, v7, v17);
  if (v12)
  {
    sub_29A008E78(&v66, off_2A14FE1C8[0]);
    v18 = sub_29B23FE4C(v17, &v66);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    v19 = *(v18 + 58);
    if ((v19 & 2) != 0)
    {
      goto LABEL_50;
    }

    *(v18 + 58) = v19 | 2;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v68, v18 + 13, &v61);
    v20 = std::string::append(&v61, " = normalize((");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = sub_29B20E608();
    v23 = v22[23];
    if (v23 >= 0)
    {
      v24 = v22;
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
      v25 = *(v22 + 1);
    }

    v26 = std::string::append(&v62, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v63, " * vec4(");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v64, off_2A14FE190[0]);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v65, ",0.0)).xyz)");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v67 = v32->__r_.__value_.__r.__words[2];
    v66 = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v66, a4, 1);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v34 = v61.__r_.__value_.__r.__words[0];
  }

  else
  {
    sub_29A008E78(&v66, off_2A14FE1E8[0]);
    v35 = sub_29B23FE4C(v17, &v66);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    v36 = *(v35 + 58);
    if ((v36 & 2) != 0)
    {
      goto LABEL_50;
    }

    *(v35 + 58) = v36 | 2;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v68, v35 + 13, &v64);
    v37 = std::string::append(&v64, " = ");
    v38 = *&v37->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v65, off_2A14FE190[0]);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v67 = v39->__r_.__value_.__r.__words[2];
    v66 = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v66, a4, 1);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    v34 = v64.__r_.__value_.__r.__words[0];
  }

  operator delete(v34);
LABEL_50:
  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  LOBYTE(v15) = *(a4 + 23);
LABEL_53:
  v41 = strlen(off_2A14FE6F8);
  v42 = v41;
  if ((v15 & 0x80) != 0)
  {
    if (v41 != *(a4 + 8))
    {
      return;
    }

    if (v41 == -1)
    {
      sub_29A0F26CC();
    }

    v43 = *a4;
  }

  else
  {
    v43 = a4;
    if (v42 != v15)
    {
      return;
    }
  }

  if (!memcmp(v43, off_2A14FE6F8, v42))
  {
    sub_29A008E78(v68, off_2A14FE4E8[0]);
    v44 = sub_29B240AA4(a4, v68);
    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    (*(*v7 + 264))(v68, v7, v44);
    (*(*v7 + 48))(v7, a4);
    (*(*v7 + 192))(v7, **(a2 + 152), 1, 0, a3, a4);
    if (v12)
    {
      sub_29A008E78(&v66, off_2A14FE1C8[0]);
      v45 = sub_29B23FE4C(v44, &v66);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      std::operator+<char>();
      v48 = v45[13];
      v47 = (v45 + 13);
      v46 = v48;
      v49 = v47[23];
      if (v49 >= 0)
      {
        v50 = v47;
      }

      else
      {
        v50 = v46;
      }

      if (v49 >= 0)
      {
        v51 = v47[23];
      }

      else
      {
        v51 = *(v47 + 1);
      }
    }

    else
    {
      sub_29A008E78(&v66, off_2A14FE1E8[0]);
      v52 = sub_29B23FE4C(v44, &v66);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      std::operator+<char>();
      v55 = v52[13];
      v54 = (v52 + 13);
      v53 = v55;
      v56 = v54[23];
      if (v56 >= 0)
      {
        v50 = v54;
      }

      else
      {
        v50 = v53;
      }

      if (v56 >= 0)
      {
        v51 = v54[23];
      }

      else
      {
        v51 = *(v54 + 1);
      }
    }

    v57 = std::string::append(&v64, v50, v51);
    v58 = *&v57->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = std::string::append(&v65, ")");
    v60 = *&v59->__r_.__value_.__l.__data_;
    v67 = v59->__r_.__value_.__r.__words[2];
    v66 = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, &v66, a4);
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 56))(v7, a4, 1);
    if (v69 < 0)
    {
      operator delete(v68[0]);
    }
  }
}

void sub_29B225848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
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

  if (*(v42 - 81) < 0)
  {
    operator delete(*(v42 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2259B8(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B225A08(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B225A68@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B225AB4(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B225AB4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20C9F90;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9EF8;
  return a1;
}

void sub_29B225B5C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20C9F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B225BC8@<D0>(_OWORD *a1@<X8>)
{
  sub_29B227904(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

uint64_t sub_29B225C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE550[0]);
  v6 = sub_29B22FF64(a4, __p);
  sub_29B226778(__dst, v6);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(v20, off_2A14FE6F8);
  v7 = sub_29B22FF64(a4, v20);
  sub_29B226778(__p, v7);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  sub_29A008E78(v20, off_2A14FE4E0[0]);
  v8 = sub_29B2470A0();
  sub_29A008E78(v18, off_2A14FE188[0]);
  v9 = sub_29B240AA4(__dst, v20);
  v25 = 0;
  v26 = 0;
  sub_29B240028(v9, v8, v18, &v25, 0);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  sub_29A008E78(v20, off_2A14FE170[0]);
  v10 = sub_29B23EC38(a2, v20);
  v11 = v10;
  if (v21 < 0)
  {
    operator delete(v20[0]);
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else if (!v10)
  {
    goto LABEL_21;
  }

  v12 = v11[16];
  v13 = v11[17];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *sub_29B1F3CC0(v12);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v14 == 2)
  {
    sub_29A008E78(v20, off_2A14FE4E8[0]);
    v15 = sub_29B2470A0();
    sub_29A008E78(v18, off_2A14FE1C0[0]);
    sub_29B211DA4(v20, v15, v18, __dst, __p, 0);
    goto LABEL_22;
  }

LABEL_21:
  sub_29A008E78(v20, off_2A14FE4E8[0]);
  v16 = sub_29B2470A0();
  sub_29A008E78(v18, off_2A14FE1E0[0]);
  sub_29B211DA4(v20, v16, v18, __dst, __p, 0);
LABEL_22:
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  sub_29B227818(__p);
  return sub_29B227818(__dst);
}

void sub_29B225E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_29B227818(&a21);
  sub_29B227818(&a72);
  _Unwind_Resume(a1);
}

void sub_29B225F14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29B225EFCLL);
}

void sub_29B225F2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29B225F04);
}

void sub_29B225F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  sub_29A008E78(__p, off_2A14FE170[0]);
  v8 = sub_29B23EC38(a2, __p);
  v9 = v8;
  if (v52 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = v9[16];
  v11 = v9[17];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *sub_29B1F3CC0(v10) == 2;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

LABEL_9:
  v13 = strlen(off_2A14FE550[0]);
  v14 = v13;
  v15 = *(a4 + 23);
  if (v15 < 0)
  {
    if (v13 != *(a4 + 8))
    {
      goto LABEL_39;
    }

    if (v13 == -1)
    {
      sub_29A0F26CC();
    }

    v16 = *a4;
  }

  else
  {
    v16 = a4;
    if (v14 != v15)
    {
      goto LABEL_39;
    }
  }

  if (memcmp(v16, off_2A14FE550[0], v14))
  {
    goto LABEL_39;
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v17 = sub_29B240C7C(a4, __p);
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v7 + 264))(__p, v7, v17);
  if (v12)
  {
    sub_29A008E78(v49, off_2A14FE1C0[0]);
    v18 = sub_29B23FE4C(v17, v49);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    v19 = *(v18 + 58);
    if ((v19 & 2) != 0)
    {
      goto LABEL_36;
    }

    *(v18 + 58) = v19 | 2;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(__p, v18 + 13, &v48);
    v20 = std::string::append(&v48, " = hPositionWorld.xyz");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v50 = v20->__r_.__value_.__r.__words[2];
    *v49 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, v49, a4, 1);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v22 = v48.__r_.__value_.__r.__words[0];
  }

  else
  {
    sub_29A008E78(v49, off_2A14FE1E0[0]);
    v23 = sub_29B23FE4C(v17, v49);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    v24 = *(v23 + 58);
    if ((v24 & 2) != 0)
    {
      goto LABEL_36;
    }

    *(v23 + 58) = v24 | 2;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(__p, v23 + 13, &v47);
    v25 = std::string::append(&v47, " = ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v48, off_2A14FE188[0]);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v50 = v27->__r_.__value_.__r.__words[2];
    *v49 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, v49, a4, 1);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v22 = v47.__r_.__value_.__r.__words[0];
  }

  operator delete(v22);
LABEL_36:
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  LOBYTE(v15) = *(a4 + 23);
LABEL_39:
  v29 = strlen(off_2A14FE6F8);
  v30 = v29;
  if ((v15 & 0x80) != 0)
  {
    if (v29 != *(a4 + 8))
    {
      return;
    }

    if (v29 == -1)
    {
      sub_29A0F26CC();
    }

    v31 = *a4;
  }

  else
  {
    v31 = a4;
    if (v30 != v15)
    {
      return;
    }
  }

  if (!memcmp(v31, off_2A14FE6F8, v30))
  {
    sub_29A008E78(__p, off_2A14FE4E8[0]);
    v32 = sub_29B240AA4(a4, __p);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v7 + 264))(__p, v7, v32);
    (*(*v7 + 48))(v7, a4);
    (*(*v7 + 192))(v7, **(a2 + 152), 1, 0, a3, a4);
    if (v12)
    {
      sub_29A008E78(v49, off_2A14FE1C0[0]);
      v33 = sub_29B23FE4C(v32, v49);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49[0]);
      }

      std::operator+<char>();
      v36 = v33[13];
      v35 = (v33 + 13);
      v34 = v36;
      v37 = v35[23];
      if (v37 >= 0)
      {
        v38 = v35;
      }

      else
      {
        v38 = v34;
      }

      if (v37 >= 0)
      {
        v39 = v35[23];
      }

      else
      {
        v39 = *(v35 + 1);
      }
    }

    else
    {
      sub_29A008E78(v49, off_2A14FE1E0[0]);
      v40 = sub_29B23FE4C(v32, v49);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49[0]);
      }

      std::operator+<char>();
      v43 = v40[13];
      v42 = (v40 + 13);
      v41 = v43;
      v44 = v42[23];
      if (v44 >= 0)
      {
        v38 = v42;
      }

      else
      {
        v38 = v41;
      }

      if (v44 >= 0)
      {
        v39 = v42[23];
      }

      else
      {
        v39 = *(v42 + 1);
      }
    }

    v45 = std::string::append(&v48, v38, v39);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v50 = v45->__r_.__value_.__r.__words[2];
    *v49 = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, v49, a4);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 56))(v7, a4, 1);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B2265C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
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
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2266C8(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B226718(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

char *sub_29B226778(char *__dst, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  v6 = *(a2 + 7);
  *(__dst + 6) = *(a2 + 6);
  *(__dst + 7) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 16);
  *(__dst + 9) = 0;
  *(__dst + 16) = v7;
  *(__dst + 10) = 0;
  *(__dst + 11) = 0;
  sub_29B2269E8(__dst + 9, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 5);
  sub_29A3479FC(__dst + 12, a2 + 12);
  sub_29A3479FC(__dst + 15, a2 + 15);
  sub_29B226F60(__dst + 18, (a2 + 9));
  sub_29B227040(__dst + 168, (a2 + 168));
  sub_29B2274DC((__dst + 280), a2 + 280);
  sub_29B2274DC((__dst + 320), (a2 + 20));
  sub_29B2274DC((__dst + 360), a2 + 360);
  if (*(a2 + 423) < 0)
  {
    sub_29A008D14(__dst + 400, *(a2 + 50), *(a2 + 51));
  }

  else
  {
    v8 = a2[25];
    *(__dst + 52) = *(a2 + 52);
    *(__dst + 25) = v8;
  }

  return __dst;
}

void sub_29B2268BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AD97000(v2 + 360);
  sub_29AD97000(v2 + 320);
  sub_29AD97000(v2 + 280);
  sub_29B22698C(v2 + 168);
  sub_29A082B84(v2 + 144, *(v2 + 152));
  sub_29A019EE8(v2 + 120, *(v2 + 128));
  sub_29A019EE8(v2 + 96, *(v2 + 104));
  sub_29B226ED4(va);
  v4 = *(v2 + 56);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B22698C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_29AD97000(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29B2269E8(void *result, _DWORD *a2, _DWORD *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29B226A70(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29B226A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29B226ED4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29B226A70(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      sub_29B226B1C((v4 + 8), (v6 + 2));
      v6 += 8;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_29B226E50(v8);
  return v4;
}

uint64_t *sub_29B226B1C(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29B226B74(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29B226B74(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29B226BFC(v5, v5 + 1, (v4 + 4), v4 + 2);
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

uint64_t *sub_29B226BFC(uint64_t **a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  v6 = sub_29B226C84(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29B226C84(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_3;
  }

  v5 = *a5;
  v6 = a2[4];
  if (*a5 < v6)
  {
    goto LABEL_3;
  }

  if (v6 < v5)
  {
LABEL_9:
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        a4 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v13 = *a4 == v17;
        v17 = a4;
      }

      while (!v13);
    }

    if (a4 != a1 + 1)
    {
      v18 = a4[4];
      if (v5 >= v18 && (v18 < v5 || *(a5 + 8) >= *(a4 + 10)))
      {
        return sub_29B226DE8(a1, a3, a5);
      }
    }

    if (v10)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }

    return a4;
  }

  v15 = *(a5 + 8);
  v16 = *(a2 + 10);
  if (v15 >= v16)
  {
    if (v16 >= v15)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    v14 = v9[4];
    if (v14 >= *a5 && (*a5 < v14 || *(v9 + 10) >= *(a5 + 8)))
    {
      return sub_29B226DE8(a1, a3, a5);
    }
  }

  if (v7)
  {
    *a3 = v9;
    return v9 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

uint64_t *sub_29B226DE8(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 10);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_29B226E50(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B226E88(a1);
  }

  return a1;
}

void sub_29B226E88(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      sub_29A082B84(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_29B226ED4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        sub_29A082B84((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_29B226F60(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29B226FB8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29B226FB8(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29ABA8444(v5, v5 + 1, v4 + 4, v4 + 4);
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

char *sub_29B227040(char *__dst, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  sub_29B227124((__dst + 48), (a2 + 3));
  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_29B227460(__dst + 11, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
  return __dst;
}

void sub_29B2270E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B227124(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B22719C(a1, i + 2, i + 1);
  }

  return a1;
}

const void **sub_29B22719C(uint64_t a1, const void **a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B2273F0(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
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
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B2273D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B2273F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A151A98(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

void *sub_29B227460(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29B2274C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2274DC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B227554(a1, i + 2, i + 1);
  }

  return a1;
}

const void **sub_29B227554(uint64_t a1, const void **a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29B2277A8(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
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
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29B227790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29B2277A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29A151A98(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29B227818(uint64_t a1)
{
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  sub_29AD97000(a1 + 360);
  sub_29AD97000(a1 + 320);
  sub_29AD97000(a1 + 280);
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  sub_29AD97000(a1 + 216);
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_29A082B84(a1 + 144, *(a1 + 152));
  sub_29A019EE8(a1 + 120, *(a1 + 128));
  sub_29A019EE8(a1 + 96, *(a1 + 104));
  v5 = (a1 + 72);
  sub_29B226ED4(&v5);
  v3 = *(a1 + 56);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29B227904@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B227950(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B227950(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA078;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20C9FE0;
  return a1;
}

void sub_29B2279F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B227A64@<D0>(_OWORD *a1@<X8>)
{
  sub_29B228828(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B227AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE550[0]);
  v6 = sub_29B22FF64(a4, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE6F8);
  v7 = sub_29B22FF64(a4, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E0[0]);
  v8 = sub_29B2470A0();
  sub_29A008E78(&v20, off_2A14FE198[0]);
  v9 = sub_29B240AA4(v6, __p);
  v25 = 0;
  v26 = 0;
  sub_29B240028(v9, v8, &v20, &v25, 0);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  if (v22 < 0)
  {
    operator delete(v20);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE170[0]);
  v10 = sub_29B23EC38(a2, __p);
  v11 = v10;
  if (v24 < 0)
  {
    operator delete(__p[0]);
    if (!v11)
    {
LABEL_25:
      sub_29A008E78(__p, off_2A14FE4E8[0]);
      v19 = sub_29B2470A0();
      sub_29A008E78(&v20, off_2A14FE1F0[0]);
      sub_29B211DA4(__p, v19, &v20, v6, v7, 0);
      goto LABEL_26;
    }
  }

  else if (!v10)
  {
    goto LABEL_25;
  }

  v12 = v11[16];
  v13 = v11[17];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *sub_29B1F3CC0(v12);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v14 != 2)
  {
    goto LABEL_25;
  }

  sub_29A008E78(__p, off_2A14FE4F0[0]);
  v15 = sub_29B247E64();
  v16 = sub_29B20E608();
  v17 = sub_29B2408C8(v6, __p);
  v20 = 0;
  v21 = 0;
  sub_29B240028(v17, v15, v16, &v20, 0);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v18 = sub_29B2470A0();
  sub_29A008E78(&v20, off_2A14FE1D0[0]);
  sub_29B211DA4(__p, v18, &v20, v6, v7, 0);
LABEL_26:
  if (v22 < 0)
  {
    operator delete(v20);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B227D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
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

void sub_29B227DE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  sub_29A008E78(v72, off_2A14FE170[0]);
  v8 = sub_29B23EC38(a2, v72);
  v9 = v8;
  if (v73 < 0)
  {
    operator delete(v72[0]);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = v9[16];
  v11 = v9[17];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *sub_29B1F3CC0(v10) == 2;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

LABEL_9:
  v13 = strlen(off_2A14FE550[0]);
  v14 = v13;
  v15 = *(a4 + 23);
  if (v15 < 0)
  {
    if (v13 != *(a4 + 8))
    {
      goto LABEL_61;
    }

    if (v13 == -1)
    {
      sub_29A0F26CC();
    }

    v16 = *a4;
  }

  else
  {
    v16 = a4;
    if (v14 != v15)
    {
      goto LABEL_61;
    }
  }

  if (memcmp(v16, off_2A14FE550[0], v14))
  {
    goto LABEL_61;
  }

  sub_29A008E78(v72, off_2A14FE4E8[0]);
  v17 = sub_29B240C7C(a4, v72);
  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  (*(*v7 + 264))(v72, v7, v17);
  if (v12)
  {
    sub_29A008E78(&v70, off_2A14FE1D0[0]);
    v18 = sub_29B23FE4C(v17, &v70);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    v19 = *(v18 + 58);
    if ((v19 & 2) != 0)
    {
      goto LABEL_58;
    }

    *(v18 + 58) = v19 | 2;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v72, v18 + 13, &v65);
    v20 = std::string::append(&v65, " = normalize(");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v66.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v66.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = sub_29B20E608();
    v23 = v22[23];
    if (v23 >= 0)
    {
      v24 = v22;
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
      v25 = *(v22 + 1);
    }

    v26 = std::string::append(&v66, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v67, " * vec4(");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    sub_29A008E78(__p, off_2A14FE198[0]);
    if ((v64 & 0x80u) == 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    if ((v64 & 0x80u) == 0)
    {
      v31 = v64;
    }

    else
    {
      v31 = __p[1];
    }

    v32 = std::string::append(&v68, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v69, ",0.0)).xyz)");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v71 = v34->__r_.__value_.__r.__words[2];
    v70 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v70, a4, 1);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (v64 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    v36 = v65.__r_.__value_.__r.__words[0];
  }

  else
  {
    sub_29A008E78(&v70, off_2A14FE1F0[0]);
    v37 = sub_29B23FE4C(v17, &v70);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    v38 = *(v37 + 58);
    if ((v38 & 2) != 0)
    {
      goto LABEL_58;
    }

    *(v37 + 58) = v38 | 2;
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v72, v37 + 13, &v68);
    v39 = std::string::append(&v68, " = ");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v69, off_2A14FE198[0]);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v71 = v41->__r_.__value_.__r.__words[2];
    v70 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 80))(v7, &v70, a4, 1);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    v36 = v68.__r_.__value_.__r.__words[0];
  }

  operator delete(v36);
LABEL_58:
  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  LOBYTE(v15) = *(a4 + 23);
LABEL_61:
  v43 = strlen(off_2A14FE6F8);
  v44 = v43;
  if ((v15 & 0x80) != 0)
  {
    if (v43 != *(a4 + 8))
    {
      return;
    }

    if (v43 == -1)
    {
      sub_29A0F26CC();
    }

    v45 = *a4;
  }

  else
  {
    v45 = a4;
    if (v44 != v15)
    {
      return;
    }
  }

  if (!memcmp(v45, off_2A14FE6F8, v44))
  {
    sub_29A008E78(v72, off_2A14FE4E8[0]);
    v46 = sub_29B240AA4(a4, v72);
    if (v73 < 0)
    {
      operator delete(v72[0]);
    }

    (*(*v7 + 264))(v72, v7, v46);
    (*(*v7 + 48))(v7, a4);
    (*(*v7 + 192))(v7, **(a2 + 152), 1, 0, a3, a4);
    if (v12)
    {
      sub_29A008E78(&v70, off_2A14FE1D0[0]);
      v47 = sub_29B23FE4C(v46, &v70);
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v70);
      }

      std::operator+<char>();
      v50 = v47[13];
      v49 = (v47 + 13);
      v48 = v50;
      v51 = v49[23];
      if (v51 >= 0)
      {
        v52 = v49;
      }

      else
      {
        v52 = v48;
      }

      if (v51 >= 0)
      {
        v53 = v49[23];
      }

      else
      {
        v53 = *(v49 + 1);
      }
    }

    else
    {
      sub_29A008E78(&v70, off_2A14FE1F0[0]);
      v54 = sub_29B23FE4C(v46, &v70);
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v70);
      }

      std::operator+<char>();
      v57 = v54[13];
      v56 = (v54 + 13);
      v55 = v57;
      v58 = v56[23];
      if (v58 >= 0)
      {
        v52 = v56;
      }

      else
      {
        v52 = v55;
      }

      if (v58 >= 0)
      {
        v53 = v56[23];
      }

      else
      {
        v53 = *(v56 + 1);
      }
    }

    v59 = std::string::append(&v68, v52, v53);
    v60 = *&v59->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v60;
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    v61 = std::string::append(&v69, ")");
    v62 = *&v61->__r_.__value_.__l.__data_;
    v71 = v61->__r_.__value_.__r.__words[2];
    v70 = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, &v70, a4);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 56))(v7, a4, 1);
    if (v73 < 0)
    {
      operator delete(v72[0]);
    }
  }
}

void sub_29B2285F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a40 < 0)
  {
    operator delete(a35);
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
  }

  if (*(v47 - 65) < 0)
  {
    operator delete(*(v47 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B228778(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B2287C8(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B228828@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B228874(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B228874(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA160;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA0C8;
  return a1;
}

void sub_29B22891C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B228988@<D0>(_OWORD *a1@<X8>)
{
  sub_29B2296C8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B2289C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = **(a2 + 152);
  (*(*a1 + 112))(&v29);
  sub_29A008E78(__p, off_2A14FE550[0]);
  v6 = sub_29B22FF64(a4, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE6F8);
  v7 = sub_29B22FF64(a4, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E0[0]);
  v8 = *(v5 + 24);
  sub_29A008E78(&v23, off_2A14FE1A8[0]);
  v9 = std::string::append(&v23, "_");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((v31 & 0x80u) == 0)
  {
    v11 = &v29;
  }

  else
  {
    v11 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v12 = v31;
  }

  else
  {
    v12 = v30;
  }

  v13 = std::string::append(&v24, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v26 = v13->__r_.__value_.__r.__words[2];
  *v25 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = sub_29B240AA4(v6, __p);
  v32 = 0;
  v33 = 0;
  sub_29B240028(v15, v8, v25, &v32, 1);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v16 = *(v5 + 24);
  sub_29A008E78(&v23, off_2A14FE200[0]);
  v17 = std::string::append(&v23, "_");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if ((v31 & 0x80u) == 0)
  {
    v19 = &v29;
  }

  else
  {
    v19 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v20 = v31;
  }

  else
  {
    v20 = v30;
  }

  v21 = std::string::append(&v24, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v26 = v21->__r_.__value_.__r.__words[2];
  *v25 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  sub_29B211DA4(__p, v16, v25, v6, v7, 1);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v29);
  }
}

void sub_29B228C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
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
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B228D3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  (*(*a1 + 112))(&v63);
  sub_29A008E78(&__dst, off_2A14FE200[0]);
  v8 = std::string::append(&__dst, "_");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if ((v65 & 0x80u) == 0)
  {
    v10 = &v63;
  }

  else
  {
    v10 = v63;
  }

  if ((v65 & 0x80u) == 0)
  {
    v11 = v65;
  }

  else
  {
    v11 = v64;
  }

  v12 = std::string::append(&v60, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v62 = v12->__r_.__value_.__r.__words[2];
  v61 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v14 = **(a2 + 152);
  v15 = strlen(off_2A14FE550[0]);
  v16 = v15;
  v17 = *(a4 + 23);
  if (v17 < 0)
  {
    if (v15 != *(a4 + 8))
    {
      goto LABEL_41;
    }

    if (v15 == -1)
    {
      sub_29A0F26CC();
    }

    v18 = *a4;
  }

  else
  {
    v18 = a4;
    if (v16 != v17)
    {
      goto LABEL_41;
    }
  }

  if (!memcmp(v18, off_2A14FE550[0], v16))
  {
    sub_29A008E78(&v60, off_2A14FE4E8[0]);
    v19 = sub_29B240C7C(a4, &v60.__r_.__value_.__l.__data_);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 264))(&v60, v7, v19);
    v20 = sub_29B23FE4C(v19, &v61);
    if ((v20[29] & 2) == 0)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v60.__r_.__value_.__l.__data_, v20 + 13, &v55);
      v21 = std::string::append(&v55, " = ");
      v22 = *&v21->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v56, off_2A14FE1A8[0]);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      v25 = std::string::append(&v57, "_");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if ((v65 & 0x80u) == 0)
      {
        v27 = &v63;
      }

      else
      {
        v27 = v63;
      }

      if ((v65 & 0x80u) == 0)
      {
        v28 = v65;
      }

      else
      {
        v28 = v64;
      }

      v29 = std::string::append(&v58, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      (*(*v7 + 80))(v7, &__dst, a4, 1);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      *(v20 + 58) |= 2u;
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    LOBYTE(v17) = *(a4 + 23);
  }

LABEL_41:
  v31 = strlen(off_2A14FE6F8);
  v32 = v31;
  if ((v17 & 0x80) != 0)
  {
    if (v31 != *(a4 + 8))
    {
      goto LABEL_80;
    }

    if (v31 == -1)
    {
      sub_29A0F26CC();
    }

    v33 = *a4;
  }

  else
  {
    v33 = a4;
    if (v32 != v17)
    {
      goto LABEL_80;
    }
  }

  if (memcmp(v33, off_2A14FE6F8, v32))
  {
    goto LABEL_80;
  }

  sub_29A008E78(&v60, off_2A14FE4E8[0]);
  v34 = sub_29B240AA4(a4, &v60.__r_.__value_.__l.__data_);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  (*(*v7 + 264))(&v60, v7, v34);
  v35 = sub_29B23FE4C(v34, &v61);
  (*(*v7 + 48))(v7, a4);
  (*(*v7 + 192))(v7, v14, 1, 0, a3, a4);
  v36 = sub_29B1F31FC();
  if (v36[23] < 0)
  {
    v36 = sub_29A008D14(&__dst, *v36, *(v36 + 1));
  }

  else
  {
    v37 = *v36;
    __dst.__r_.__value_.__r.__words[2] = *(v36 + 2);
    *&__dst.__r_.__value_.__l.__data_ = v37;
  }

  v38 = *(v14 + 24);
  Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v36);
  if (sub_29A1B00DC(v38, Vector2Name))
  {
    v40 = ".xy";
LABEL_57:
    MEMORY[0x29C2C1A60](&__dst, v40);
    goto LABEL_58;
  }

  v41 = *(v14 + 24);
  v42 = sub_29B2470A0();
  if (sub_29A1B00DC(v41, v42))
  {
    v40 = ".xyz";
    goto LABEL_57;
  }

LABEL_58:
  std::operator+<char>();
  v45 = v35[13];
  v44 = (v35 + 13);
  v43 = v45;
  v46 = v44[23];
  if (v46 >= 0)
  {
    v47 = v44;
  }

  else
  {
    v47 = v43;
  }

  if (v46 >= 0)
  {
    v48 = v44[23];
  }

  else
  {
    v48 = *(v44 + 1);
  }

  v49 = std::string::append(&v56, v47, v48);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
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
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v53 = std::string::append(&v57, p_dst, size);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  (*(*v7 + 72))(v7, &v58, a4);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  (*(*v7 + 56))(v7, a4, 1);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

LABEL_80:
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  if (v65 < 0)
  {
    operator delete(v63);
  }
}

void sub_29B2293B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
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

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  if (*(v42 - 65) < 0)
  {
    operator delete(*(v42 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B229528(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_29A008E78(__p, qword_2A14FE658);
  v4 = sub_29B23EC38(a1, __p);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_29A008E78(a2, "0");
    return;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = v5[16];
  v7 = v5[17];
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

void sub_29B2295E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B229618(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B229668(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B2296C8@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B229714(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B229714(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA250;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA1B0;
  return a1;
}

void sub_29B2297BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B229828@<D0>(_OWORD *a1@<X8>)
{
  sub_29B229D70(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B229864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE6F8);
  v5 = sub_29B22FF64(a4, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4F0[0]);
  v6 = sub_29B246C60();
  sub_29A008E78(v8, off_2A14FE278[0]);
  v7 = sub_29B2408C8(v5, __p);
  v12 = 0;
  v13 = 0;
  sub_29B240028(v7, v6, v8, &v12, 0);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B229940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *(v20 - 24);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

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

void sub_29B229990(uint64_t a1, uint64_t a2, void *a3, const void **a4)
{
  v7 = strlen(off_2A14FE6F8);
  v8 = v7;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (v7 != a4[1])
    {
      return;
    }

    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v8 != v9)
    {
      return;
    }
  }

  if (!memcmp(v10, off_2A14FE6F8, v8))
  {
    v11 = *a3;
    (*(**a3 + 48))(*a3, a4);
    (*(*v11 + 192))(v11, **(a2 + 152), 1, 0, a3, a4);
    sub_29A008E78(&v19, off_2A14FE278[0]);
    v12 = std::string::insert(&v19, 0, " = ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v20, " / ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v22 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    (*(*v11 + 72))(v11, __p, a4);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(__p, "fps");
    v16 = sub_29B23EC38(a2, __p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    v17 = v16[16];
    v18 = v16[17];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v17 + 32))(__p);
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    (*(*v11 + 72))(v11, __p, a4);
    (*(*v11 + 56))(v11, a4, 1);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B229C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B229CC0(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B229D10(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B229D70@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B229DBC(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B229DBC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA338;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA2A0;
  return a1;
}

void sub_29B229E64(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B229ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 160))(v17);
  (*(*a1 + 152))(v15, a1, a2);
  v7 = (*(*a1 + 112))(a1, v15, v17);
  v8 = v7;
  v9 = *(v7 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v7 + 8);
  }

  if (v9)
  {
    sub_29A008E78(__p, off_2A14FE6F8);
    v10 = sub_29B22FF64(a4, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, off_2A14FE4F0[0]);
    v11 = sub_29B247E64();
    v12 = sub_29B2408C8(v10, __p);
    v19 = 0;
    v20 = 0;
    sub_29B240028(v12, v11, v8, &v19, 0);
    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_29B22A05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = *(v27 - 40);
  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B22A0C8(uint64_t a1, uint64_t a2, void **a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    v13 = **(a2 + 152);
    sub_29A008E78(&v58, "in");
    v14 = sub_29B23EC38(a2, &v58);
    if (v59 < 0)
    {
      operator delete(v58);
    }

    v15 = v14[3];
    if (v15 != sub_29B2470A0())
    {
      v16 = v14[3];
      if (v16 != sub_29B2471EC())
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_29A008E78(&v58, "Transform node must have 'in' type of vector3 or vector4.");
        sub_29AAD6B14(exception, &v58);
        *exception = &unk_2A20C8F68;
        __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
      }
    }

    (*(*v12 + 48))(v12, a4);
    (*(*v12 + 192))(v12, v13, 1, 0, a3, a4);
    sub_29A008E78(&v58, " = (");
    (*(*v12 + 72))(v12, &v58, a4);
    if (v59 < 0)
    {
      operator delete(v58);
    }

    (*(*a1 + 160))(&v58, a1, a2);
    (*(*a1 + 152))(v56, a1, a2);
    v17 = (*(*a1 + 112))(a1, v56, &v58);
    v18 = v17;
    if (*(v17 + 23) >= 0)
    {
      v19 = *(v17 + 23);
    }

    else
    {
      v19 = *(v17 + 8);
    }

    if (v19)
    {
      p_dst = &__dst;
      sub_29A022DE0(&__dst, v19 + 3);
      if (v55 < 0)
      {
        p_dst = __dst;
      }

      if (v18[23] >= 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = *v18;
      }

      memmove(p_dst, v21, v19);
      *(p_dst + v19) = 2107936;
      (*(*v12 + 72))(v12, &__dst, a4);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__dst);
      }
    }

    v22 = v12[1];
    v23 = sub_29B2471EC();
    v24 = sub_29B2438AC(v22, v23);
    if (*(v24 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v24, *(v24 + 8));
    }

    else
    {
      v25 = *v24;
      v55 = *(v24 + 16);
      __dst = v25;
    }

    (*(*v12 + 224))(v52, v12, v14, a3);
    if (v55 >= 0)
    {
      v26 = HIBYTE(v55);
    }

    else
    {
      v26 = *(&__dst + 1);
    }

    v27 = &v46;
    sub_29A022DE0(&v46, v26 + 1);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v46.__r_.__value_.__r.__words[0];
    }

    if (v26)
    {
      if (v55 >= 0)
      {
        v28 = &__dst;
      }

      else
      {
        v28 = __dst;
      }

      memmove(v27, v28, v26);
    }

    *(&v27->__r_.__value_.__l.__data_ + v26) = 40;
    if ((v53 & 0x80u) == 0)
    {
      v29 = v52;
    }

    else
    {
      v29 = v52[0];
    }

    if ((v53 & 0x80u) == 0)
    {
      v30 = v53;
    }

    else
    {
      v30 = v52[1];
    }

    v31 = std::string::append(&v46, v29, v30);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    v33 = std::string::append(&v47, ", ");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 136))(v44, a1);
    if ((v45 & 0x80u) == 0)
    {
      v35 = v44;
    }

    else
    {
      v35 = v44[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v36 = v45;
    }

    else
    {
      v36 = v44[1];
    }

    v37 = std::string::append(&v48, v35, v36);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v49, ")).xyz");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v51 = v39->__r_.__value_.__r.__words[2];
    *__p = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    (*(*v12 + 72))(v12, __p, a4);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    (*(*v12 + 56))(v12, a4, 1);
    if ((*(*a1 + 144))(a1))
    {
      (*(*v12 + 48))(v12, a4);
      (*(*v12 + 192))(v12, v13, 0, 0, a3, a4);
      std::operator+<char>();
      v41 = std::string::append(&v49, ")");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v51 = v41->__r_.__value_.__r.__words[2];
      *__p = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 72))(v12, __p, a4);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      (*(*v12 + 56))(v12, a4, 1);
    }

    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(__dst);
    }

    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }
  }
}

void sub_29B22A84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (*(v55 - 81) < 0)
  {
    operator delete(*(v55 - 104));
    if ((v54 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v54)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v53);
  goto LABEL_6;
}

void sub_29B22A9C0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_29A008E78(__p, qword_2A14FE660);
  v4 = sub_29B23EC38(a1, __p);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    sub_29B23C3BC(v5, a2);
    return;
  }

  v6 = sub_29B1F31FC();
  if (*(v6 + 23) < 0)
  {
    sub_29A008D14(a2, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    *(a2 + 16) = *(v6 + 2);
    *a2 = v7;
  }
}

void sub_29B22AA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B22AA7C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_29A008E78(__p, qword_2A14FE668);
  v4 = sub_29B23EC38(a1, __p);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    sub_29B23C3BC(v5, a2);
    return;
  }

  v6 = sub_29B1F31FC();
  if (*(v6 + 23) < 0)
  {
    sub_29A008D14(a2, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    *(a2 + 16) = *(v6 + 2);
    *a2 = v7;
  }
}

void sub_29B22AB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29B22AB38(uint64_t a1, const void **a2, const void **a3)
{
  v6 = qword_2A14FE670;
  v7 = strlen(qword_2A14FE670);
  v8 = v7;
  v9 = *(a2 + 23);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    if (v8 != v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!memcmp(v10, qword_2A14FE670, v8))
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v7 == a2[1])
  {
    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a2;
    goto LABEL_7;
  }

LABEL_8:
  v11 = strlen(qword_2A14FE678);
  v12 = v11;
  if ((v9 & 0x80000000) != 0)
  {
    if (v11 != a2[1])
    {
      goto LABEL_22;
    }

    if (v11 == -1)
    {
      sub_29A0F26CC();
    }

    v13 = *a2;
  }

  else
  {
    v13 = a2;
    if (v12 != v9)
    {
      goto LABEL_22;
    }
  }

  if (memcmp(v13, qword_2A14FE678, v12))
  {
    goto LABEL_22;
  }

LABEL_15:
  v14 = strlen(qword_2A14FE680);
  v15 = v14;
  v16 = *(a3 + 23);
  if (v16 < 0)
  {
    if (v14 != a3[1])
    {
      goto LABEL_22;
    }

    if (v14 == -1)
    {
      sub_29A0F26CC();
    }

    v17 = *a3;
  }

  else
  {
    v17 = a3;
    if (v15 != v16)
    {
      goto LABEL_22;
    }
  }

  if (!memcmp(v17, qword_2A14FE680, v15))
  {
    v23 = *(*a1 + 120);
    v24 = a1;

    return v23(v24);
  }

LABEL_22:
  v18 = strlen(qword_2A14FE680);
  if ((v9 & 0x80000000) == 0)
  {
    if (v18 != v9)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (memcmp(a2, qword_2A14FE680, v18))
    {
      goto LABEL_29;
    }

    v20 = *(a3 + 23);
    if (v20 < 0)
    {
      if (v8 != a3[1])
      {
        goto LABEL_39;
      }

      if (v8 == -1)
      {
        sub_29A0F26CC();
      }

      v21 = *a3;
    }

    else
    {
      v21 = a3;
      if (v8 != v20)
      {
        goto LABEL_39;
      }
    }

    if (!memcmp(v21, v6, v8))
    {
LABEL_49:
      v23 = *(*a1 + 128);
      v24 = a1;

      return v23(v24);
    }

LABEL_39:
    v22 = strlen(qword_2A14FE678);
    if ((v20 & 0x80000000) != 0)
    {
      if (v22 != a3[1])
      {
        goto LABEL_29;
      }

      if (v22 == -1)
      {
        sub_29A0F26CC();
      }

      a3 = *a3;
    }

    else if (v22 != v20)
    {
      goto LABEL_29;
    }

    if (memcmp(a3, qword_2A14FE678, v22))
    {
      goto LABEL_29;
    }

    goto LABEL_49;
  }

  if (v18 == a2[1])
  {
    if (v18 == -1)
    {
      sub_29A0F26CC();
    }

    a2 = *a2;
    goto LABEL_28;
  }

LABEL_29:

  return sub_29B1F31FC();
}

double sub_29B22AE2C@<D0>(_OWORD *a1@<X8>)
{
  sub_29B22AEE8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

double sub_29B22AE68@<D0>(_OWORD *a1@<X8>)
{
  sub_29B22B110(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

double sub_29B22AEA4@<D0>(_OWORD *a1@<X8>)
{
  sub_29B22B330(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

uint64_t sub_29B22AEE8@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B22AF34(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B22AF34(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA3A0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA3F0;
  return a1;
}

void sub_29B22AFDC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA3A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B22B048(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B22B098(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B22B110@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B22B15C(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B22B15C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA4C0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA510;
  return a1;
}

void sub_29B22B204(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B22B270(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B22B2C0(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B22B330@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B22B37C(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B22B37C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA5E0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA630;
  return a1;
}

void sub_29B22B424(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA5E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B22B490(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B22B4E0(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

double sub_29B22B560@<D0>(_OWORD *a1@<X8>)
{
  sub_29B22BE98(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B22B59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE550[0]);
  v5 = sub_29B22FF64(a4, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE6F8);
  v6 = sub_29B22FF64(a4, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E0[0]);
  v7 = sub_29B2470A0();
  sub_29A008E78(v12, off_2A14FE188[0]);
  v8 = sub_29B240AA4(v5, __p);
  v16 = 0;
  v17 = 0;
  sub_29B240028(v8, v7, v12, &v16, 0);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v9 = sub_29B2470A0();
  sub_29A008E78(v12, off_2A14FE1C0[0]);
  sub_29B211DA4(__p, v9, v12, v5, v6, 0);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4F0[0]);
  v10 = sub_29B2470A0();
  sub_29A008E78(v12, off_2A14FE268[0]);
  v11 = sub_29B2408C8(v6, __p);
  v16 = 0;
  v17 = 0;
  sub_29B240028(v11, v10, v12, &v16, 0);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B22B7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_29A014BEC(a22);
  }

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

void sub_29B22B810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = strlen(off_2A14FE550[0]);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != *(a4 + 8))
    {
      goto LABEL_20;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      goto LABEL_20;
    }
  }

  if (!memcmp(v11, off_2A14FE550[0], v9))
  {
    sub_29A008E78(v42, off_2A14FE4E8[0]);
    v12 = sub_29B240C7C(a4, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    (*(*v7 + 264))(v42, v7, v12);
    sub_29A008E78(&v40, off_2A14FE1C0[0]);
    v13 = sub_29B23FE4C(v12, &v40);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    v14 = *(v13 + 58);
    if ((v14 & 2) == 0)
    {
      *(v13 + 58) = v14 | 2;
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(v42, v13 + 13, &v39);
      v15 = std::string::append(&v39, " = hPositionWorld.xyz");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v41 = v15->__r_.__value_.__r.__words[2];
      v40 = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      (*(*v7 + 80))(v7, &v40, a4, 1);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    LOBYTE(v10) = *(a4 + 23);
  }

LABEL_20:
  v17 = strlen(off_2A14FE6F8);
  v18 = v17;
  if ((v10 & 0x80) != 0)
  {
    if (v17 != *(a4 + 8))
    {
      return;
    }

    if (v17 == -1)
    {
      sub_29A0F26CC();
    }

    v19 = *a4;
  }

  else
  {
    v19 = a4;
    if (v18 != v10)
    {
      return;
    }
  }

  if (!memcmp(v19, off_2A14FE6F8, v18))
  {
    sub_29A008E78(v42, off_2A14FE4E8[0]);
    v20 = sub_29B240AA4(a4, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    (*(*v7 + 264))(v42, v7, v20);
    sub_29A008E78(&v40, off_2A14FE1C0[0]);
    v21 = sub_29B23FE4C(v20, &v40);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    (*(*v7 + 48))(v7, a4);
    (*(*v7 + 192))(v7, **(a2 + 152), 1, 0, a3, a4);
    std::operator+<char>();
    v24 = v21[13];
    v23 = (v21 + 13);
    v22 = v24;
    v25 = v23[23];
    if (v25 >= 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = v22;
    }

    if (v25 >= 0)
    {
      v27 = v23[23];
    }

    else
    {
      v27 = *(v23 + 1);
    }

    v28 = std::string::append(&v36, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v37, " - ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&v38, off_2A14FE268[0]);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v39, ")");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v41 = v34->__r_.__value_.__r.__words[2];
    v40 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, &v40, a4);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 56))(v7, a4, 1);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }
  }
}

void sub_29B22BCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B22BDE8(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B22BE38(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B22BE98@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B22BEE4(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B22BEE4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA798;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA700;
  return a1;
}

void sub_29B22BF8C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B22BFF8@<D0>(_OWORD *a1@<X8>)
{
  sub_29B22C4E0(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B22C034(uint64_t a1, uint64_t a2)
{
  sub_29A008E78(__p, off_2A14FE6B0[0]);
  v3 = sub_29B23EB84(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v3)
  {
    v4 = v3[30];
    if (v4)
    {
      *(a2 + 40) |= *(v4[2] + 40);
    }
  }
}

void sub_29B22C0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B22C0CC(uint64_t a1, uint64_t a2, void *a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    sub_29A008E78(__p, off_2A14FE6B0[0]);
    v12 = sub_29B23EB84(a2, __p);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v12[30];
    if (v13)
    {
      v14 = *a3;
      v15 = *(*a3 + 8);
      (*(**a3 + 128))(*a3, v13[2], a3, a4);
      v16 = *(a2 + 152);
      v17 = *v16;
      v18 = sub_29B2438AC(v15, *(*v16 + 24));
      v19 = v18;
      if (*(v18 + 23) >= 0)
      {
        v20 = *(v18 + 23);
      }

      else
      {
        v20 = *(v18 + 8);
      }

      v21 = &v42;
      sub_29A022DE0(&v42, v20 + 1);
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v42.__r_.__value_.__r.__words[0];
      }

      if (v20)
      {
        if (v19[23] >= 0)
        {
          v22 = v19;
        }

        else
        {
          v22 = *v19;
        }

        memmove(v21, v22, v20);
      }

      *(&v21->__r_.__value_.__l.__data_ + v20) = 32;
      v25 = *(v17 + 104);
      v24 = v17 + 104;
      v23 = v25;
      v26 = *(v24 + 23);
      if (v26 >= 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = v23;
      }

      if (v26 >= 0)
      {
        v28 = *(v24 + 23);
      }

      else
      {
        v28 = *(v24 + 8);
      }

      v29 = std::string::append(&v42, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v43.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v43.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v43, " = ");
      v32 = *&v31->__r_.__value_.__l.__data_;
      v44.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v44.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = v12[30];
      v36 = v33[13];
      v34 = (v33 + 13);
      v35 = v36;
      v37 = v34[23];
      if (v37 >= 0)
      {
        v38 = v34;
      }

      else
      {
        v38 = v35;
      }

      if (v37 >= 0)
      {
        v39 = v34[23];
      }

      else
      {
        v39 = *(v34 + 1);
      }

      v40 = std::string::append(&v44, v38, v39);
      v41 = *&v40->__r_.__value_.__l.__data_;
      v46 = v40->__r_.__value_.__r.__words[2];
      *__p = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      (*(*v14 + 80))(v14, __p, a4, 1);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      (*(*a1 + 80))(a1, a2, a3, a4);
    }
  }
}

void sub_29B22C3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
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

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B22C430(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B22C480(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B22C4E0@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B22C52C(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B22C52C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA880;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA7E8;
  return a1;
}

void sub_29B22C5D4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B22C640@<D0>(_OWORD *a1@<X8>)
{
  sub_29B22E678(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

unint64_t sub_29B22C67C(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v49 = *MEMORY[0x29EDCA608];
  sub_29B23F9EC(a1, a2);
  v6 = sub_29B1F31FC();
  if ((sub_29B22CFC0(a2, v6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v38 = std::string::append(&v40, "' is not an Implementation element");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v46 = v38->__r_.__value_.__r.__words[2];
    __dst = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &__dst);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29A008E78(&__dst, "sourcecode");
  v7 = sub_29A8877BC(&a2[6].__r_.__value_.__r.__words[2], &__dst);
  if (v7)
  {
    v8 = (v7 + 5);
  }

  else
  {
    v8 = sub_29B1F31FC();
  }

  std::string::operator=((a1 + 72), v8);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__dst);
  }

  if ((*(a1 + 95) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 80))
    {
      goto LABEL_11;
    }
  }

  else if (!*(a1 + 95))
  {
LABEL_11:
    v9 = sub_29B22D06C(a2);
    sub_29AAC9330(&v40, v9);
    sub_29AE0EA4C(&__dst);
  }

  sub_29A008E78(&__dst, "function");
  v10 = sub_29A8877BC(&a2[6].__r_.__value_.__r.__words[2], &__dst);
  if (v10)
  {
    v11 = (v10 + 5);
  }

  else
  {
    v11 = sub_29B1F31FC();
  }

  v12 = (a1 + 48);
  std::string::operator=((a1 + 48), v11);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__dst);
  }

  v13 = *(a1 + 71);
  if (v13 < 0)
  {
    v14 = *(a1 + 56);
    *(a1 + 40) = v14 == 0;
    if (v14)
    {
      sub_29A008D14(&__dst, *v12, v14);
LABEL_22:
      (*(**(*a3 + 8) + 176))(*(*a3 + 8), &__dst);
      v15 = *(a1 + 71);
      if (v15 >= 0)
      {
        v16 = *(a1 + 71);
      }

      else
      {
        v16 = *(a1 + 56);
      }

      v17 = HIBYTE(v46);
      v18 = SHIBYTE(v46);
      if (v46 < 0)
      {
        v17 = *(&__dst + 1);
      }

      if (v16 != v17 || (v15 >= 0 ? (v19 = (a1 + 48)) : (v19 = *v12), (v20 = __dst, v46 >= 0) ? (p_dst = &__dst) : (p_dst = __dst), memcmp(v19, p_dst, v16)))
      {
        v24 = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v25 = std::string::append(&v42, "' used by implementation '");
        v26 = *&v25->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        data = a2[2].__r_.__value_.__l.__data_;
        v28 = a2 + 2;
        v27 = data;
        v30 = SHIBYTE(v28->__r_.__value_.__r.__words[2]);
        if (v30 >= 0)
        {
          v31 = v28;
        }

        else
        {
          v31 = v27;
        }

        if (v30 >= 0)
        {
          size = HIBYTE(v28->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v28->__r_.__value_.__l.__size_;
        }

        v33 = std::string::append(&__p, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v44.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v44.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        v35 = std::string::append(&v44, "' is not a valid identifier.");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(v24, &v40);
        *v24 = &unk_2A20C8F68;
        __cxa_throw(v24, &unk_2A20C8EF8, sub_29B20BED4);
      }

      if (v18 < 0)
      {
        v22 = v20;
LABEL_48:
        operator delete(v22);
        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  else
  {
    *(a1 + 40) = v13 == 0;
    if (v13)
    {
      __dst = *v12;
      v46 = *(a1 + 64);
      goto LABEL_22;
    }
  }

  if (*(a1 + 95) < 0)
  {
    sub_29A008D14(&v41, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    v41 = *(a1 + 72);
  }

  sub_29B22E56C(&__dst, "\n", "");
  sub_29AB974A4(&v40, &__dst, 1);
  sub_29B1F37E0(&v41, &v40, &v44);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 72) = v44;
  *(&v44.__r_.__value_.__s + 23) = 0;
  v44.__r_.__value_.__s.__data_[0] = 0;
  sub_29A89AD9C(&v40);
  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    v22 = v41.__r_.__value_.__r.__words[0];
    goto LABEL_48;
  }

LABEL_49:
  result = sub_29A12A708(&__dst, a1 + 48);
  *(a1 + 32) = result;
  return result;
}

void sub_29B22CD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v43 & 1) == 0)
    {
LABEL_14:
      __p = (v44 - 112);
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v42);
  goto LABEL_14;
}

uint64_t sub_29B22CFC0(uint64_t a1, const void **a2)
{
  sub_29B1D7B90(a1, &v15);
  v4 = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : a2[1];
  if (!v6)
  {
    return 1;
  }

  v7 = *(a1 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 32);
  }

  if (v7 == v6 && ((v11 = *(a1 + 24), v10 = (a1 + 24), v9 = v11, v8 >= 0) ? (v12 = v10) : (v12 = v9), v5 >= 0 ? (v13 = a2) : (v13 = *a2), !memcmp(v12, v13, v6)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

__int128 *sub_29B22D06C(uint64_t a1)
{
  sub_29A014C58(&v7, (a1 + 8));
  v1 = v7;
  if (v7)
  {
    while (1)
    {
      v2 = *(v1 + 95);
      if (v2 < 0)
      {
        v2 = *(v1 + 80);
      }

      if (v2)
      {
        break;
      }

      v3 = *(v1 + 232);
      if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0)
      {
        v1 = *(v1 + 224);
      }

      else
      {
        v1 = 0;
      }

      v4 = v8;
      v7 = v1;
      v8 = v3;
      if (v4)
      {
        sub_29A014BEC(v4);
        v1 = v7;
      }

      if (!v1)
      {
        goto LABEL_12;
      }
    }

    v5 = 0;
    v1 += 72;
  }

  else
  {
LABEL_12:
    v5 = 1;
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v5)
  {
    return sub_29B1F31FC();
  }

  return v1;
}

void sub_29B22D11C(uint64_t a1, uint64_t a2, void *a3)
{
  memset(v6, 0, sizeof(v6));
  sub_29AE13C50(v6, *(a1 + 152), *(a1 + 160), (*(a1 + 160) - *(a1 + 152)) >> 5);
  if (*a3 != a3[1])
  {
    sub_29B20B69C(v6, v6[0], a3);
  }

  sub_29B2081CC(v6, a2, v5);
}

void sub_29B22D1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  a9 = &a13;
  sub_29AAC9380(&a9);
  _Unwind_Resume(a1);
}

void sub_29B22D1FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = strlen(off_2A14FE6F8);
  v8 = v7;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (v7 != *(a4 + 8))
    {
      return;
    }

    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v8 != v9)
    {
      return;
    }
  }

  if (!memcmp(v10, off_2A14FE6F8, v8))
  {
    v11 = *(a1 + 95);
    if (v11 < 0)
    {
      v11 = *(a1 + 80);
    }

    if (v11)
    {
      if (*(a1 + 96) != *(a1 + 104))
      {
        sub_29B241DF8(a4, (a1 + 96));
      }

      if ((*(a1 + 40) & 1) == 0)
      {
        v12 = *a3;
        (*(**a3 + 96))(*a3, a1 + 72, a1 + 96, a3, a4);
        v13 = *(*v12 + 64);

        v13(v12, a4);
      }
    }
  }
}

void sub_29B22D350(uint64_t a1, uint64_t a2, void **a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    if (*(a1 + 40) == 1)
    {
      v13 = (a1 + 72);
      v14 = *(a1 + 95);
      if (v14 < 0)
      {
        v15 = *(a1 + 72);
        v14 = *(a1 + 80);
      }

      else
      {
        v15 = (a1 + 72);
      }

      v23 = &v15[v14];
      if (v14 >= 2)
      {
        v24 = v15;
        do
        {
          v25 = memchr(v24, 123, v14 - 1);
          if (!v25)
          {
            break;
          }

          if (*v25 == 31611)
          {
            goto LABEL_40;
          }

          v24 = v25 + 1;
          v14 = v23 - v24;
        }

        while (v23 - v24 > 1);
      }

      v25 = v23;
LABEL_40:
      v26 = 0;
      v119 = 0;
      v120 = 0;
      v117 = 0;
      v118 = &v119;
      v115 = 0;
      v116 = 0;
      if (v25 != v23)
      {
        v27 = v25 - v15;
        if (v25 - v15 != -1)
        {
          v26 = 0;
          v99 = a3;
          do
          {
            std::string::basic_string(&__p, v13, v26, v27 - v26, &v114);
            sub_29A091654(&v115, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v28 = *(a1 + 95);
            if ((v28 & 0x8000000000000000) != 0)
            {
              v29 = *(a1 + 72);
              v28 = *(a1 + 80);
            }

            else
            {
              v29 = v13;
            }

            v30 = v28 - (v27 + 2);
            if (v28 < v27 + 2 || v30 < 2)
            {
              goto LABEL_187;
            }

            v31 = v29 + v28;
            v32 = &v29->__r_.__value_.__s.__data_[v27 + 2];
            while (1)
            {
              v33 = memchr(v32, 125, v30 - 1);
              if (!v33)
              {
                goto LABEL_187;
              }

              if (*v33 == 32125)
              {
                break;
              }

              v32 = v33 + 1;
              v30 = v31 - v32;
              if (v31 - v32 < 2)
              {
                goto LABEL_187;
              }
            }

            if (v33 == v31 || (v34 = (v33 - v29), v34 == -1))
            {
LABEL_187:
              exception = __cxa_allocate_exception(0x20uLL);
              std::operator+<char>();
              sub_29AAD6B14(exception, &__p);
              *exception = &unk_2A20C8F68;
              __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
            }

            std::string::basic_string(&v114, (a1 + 72), v27 + 2, &v34[-v27 - 2], &v113);
            v35 = sub_29B23EC38(a2, &v114.__r_.__value_.__l.__data_);
            a3 = v99;
            v36 = v35;
            v13 = (a1 + 72);
            if (!v35)
            {
              v89 = __cxa_allocate_exception(0x20uLL);
              std::operator+<char>();
              v90 = std::string::append(&v111, "' on node '");
              v91 = *&v90->__r_.__value_.__l.__data_;
              __dst.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
              *&__dst.__r_.__value_.__l.__data_ = v91;
              v90->__r_.__value_.__l.__size_ = 0;
              v90->__r_.__value_.__r.__words[2] = 0;
              v90->__r_.__value_.__r.__words[0] = 0;
              v92 = *(a2 + 39);
              if (v92 >= 0)
              {
                v93 = (a2 + 16);
              }

              else
              {
                v93 = *(a2 + 16);
              }

              if (v92 >= 0)
              {
                v94 = *(a2 + 39);
              }

              else
              {
                v94 = *(a2 + 24);
              }

              v95 = std::string::append(&__dst, v93, v94);
              v96 = *&v95->__r_.__value_.__l.__data_;
              v113.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
              *&v113.__r_.__value_.__l.__data_ = v96;
              v95->__r_.__value_.__l.__size_ = 0;
              v95->__r_.__value_.__r.__words[2] = 0;
              v95->__r_.__value_.__r.__words[0] = 0;
              v97 = std::string::append(&v113, "'");
              v98 = *&v97->__r_.__value_.__l.__data_;
              __p.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
              *&__p.__r_.__value_.__l.__data_ = v98;
              v97->__r_.__value_.__l.__size_ = 0;
              v97->__r_.__value_.__r.__words[2] = 0;
              v97->__r_.__value_.__r.__words[0] = 0;
              sub_29AAD6B14(v89, &__p);
              *v89 = &unk_2A20C8F68;
              __cxa_throw(v89, &unk_2A20C8EF8, sub_29B20BED4);
            }

            if (!v35[30])
            {
              if (*(a2 + 39) >= 0)
              {
                v37 = *(a2 + 39);
              }

              else
              {
                v37 = *(a2 + 24);
              }

              sub_29A022DE0(&__dst, v37 + 1);
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__r_.__value_.__r.__words[0];
              }

              if (v37)
              {
                if (*(a2 + 39) >= 0)
                {
                  v39 = (a2 + 16);
                }

                else
                {
                  v39 = *(a2 + 16);
                }

                memmove(p_dst, v39, v37);
              }

              *(&p_dst->__r_.__value_.__l.__data_ + v37) = 95;
              v40 = *(v36 + 55);
              if (v40 >= 0)
              {
                v41 = (v36 + 4);
              }

              else
              {
                v41 = v36[4];
              }

              if (v40 >= 0)
              {
                v42 = *(v36 + 55);
              }

              else
              {
                v42 = v36[5];
              }

              v43 = std::string::append(&__dst, v41, v42);
              v44 = *&v43->__r_.__value_.__l.__data_;
              __p.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
              *&__p.__r_.__value_.__l.__data_ = v44;
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              v45 = std::string::append(&__p, "_tmp");
              v46 = *&v45->__r_.__value_.__l.__data_;
              v113.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
              *&v113.__r_.__value_.__l.__data_ = v46;
              v45->__r_.__value_.__l.__size_ = 0;
              v45->__r_.__value_.__r.__words[2] = 0;
              v45->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if (!sub_29A00AF58(&v118, &v113.__r_.__value_.__l.__data_))
              {
                v47 = v36[3];
                v48 = v36[17];
                v103 = v36[16];
                v104 = v48;
                if (v48)
                {
                  atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_29B23C2B0(&__p, 0, v47, &v113, &v103);
                if (v104)
                {
                  sub_29A014BEC(v104);
                }

                (*(*v12 + 48))(v12, a4);
                v49 = v12[1];
                v50 = v109;
                v51 = v110;
                if (v110)
                {
                  atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v52 = v106;
                if (v50)
                {
                  v53 = v109;
                  v54 = v110;
                  if (v110)
                  {
                    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v49 + 24))(&__dst, v49, v52, v53, 0);
                  if (v54)
                  {
                    sub_29A014BEC(v54);
                  }
                }

                else
                {
                  v55 = sub_29B243874(v49, v106, 0);
                  if (*(v55 + 23) < 0)
                  {
                    sub_29A008D14(&__dst, *v55, *(v55 + 8));
                  }

                  else
                  {
                    v56 = *v55;
                    __dst.__r_.__value_.__r.__words[2] = *(v55 + 16);
                    *&__dst.__r_.__value_.__l.__data_ = v56;
                  }
                }

                if (v51)
                {
                  sub_29A014BEC(v51);
                }

                v57 = (*(*v49 + 72))(v49);
                v58 = v57;
                if (*(v57 + 23) >= 0)
                {
                  v59 = *(v57 + 23);
                }

                else
                {
                  v59 = *(v57 + 8);
                }

                if (v59)
                {
                  sub_29A022DE0(&v111, v59 + 1);
                  if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v60 = &v111;
                  }

                  else
                  {
                    v60 = v111.__r_.__value_.__r.__words[0];
                  }

                  if (v58[23] >= 0)
                  {
                    v61 = v58;
                  }

                  else
                  {
                    v61 = *v58;
                  }

                  memmove(v60, v61, v59);
                  *(&v60->__r_.__value_.__l.__data_ + v59) = 32;
                }

                else
                {
                  v62 = sub_29B1F31FC();
                  if (*(v62 + 23) < 0)
                  {
                    sub_29A008D14(&v111, *v62, *(v62 + 1));
                  }

                  else
                  {
                    v63 = *v62;
                    v111.__r_.__value_.__r.__words[2] = *(v62 + 2);
                    *&v111.__r_.__value_.__l.__data_ = v63;
                  }
                }

                v64 = sub_29B2438AC(v49, v106);
                v65 = v64;
                if (*(v64 + 23) >= 0)
                {
                  v66 = *(v64 + 23);
                }

                else
                {
                  v66 = *(v64 + 8);
                }

                sub_29A022DE0(&v100, v66 + 1);
                if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v67 = &v100;
                }

                else
                {
                  v67 = v100.__r_.__value_.__r.__words[0];
                }

                if (v66)
                {
                  if (v65[23] >= 0)
                  {
                    v68 = v65;
                  }

                  else
                  {
                    v68 = *v65;
                  }

                  memmove(v67, v68, v66);
                }

                *(&v67->__r_.__value_.__l.__data_ + v66) = 32;
                if ((v108 & 0x80u) == 0)
                {
                  v69 = v107;
                }

                else
                {
                  v69 = v107[0];
                }

                if ((v108 & 0x80u) == 0)
                {
                  v70 = v108;
                }

                else
                {
                  v70 = v107[1];
                }

                v71 = std::string::append(&v100, v69, v70);
                v72 = *&v71->__r_.__value_.__l.__data_;
                v102 = v71->__r_.__value_.__r.__words[2];
                *v101 = v72;
                v71->__r_.__value_.__l.__size_ = 0;
                v71->__r_.__value_.__r.__words[2] = 0;
                v71->__r_.__value_.__r.__words[0] = 0;
                if (v102 >= 0)
                {
                  v73 = v101;
                }

                else
                {
                  v73 = v101[0];
                }

                if (v102 >= 0)
                {
                  v74 = HIBYTE(v102);
                }

                else
                {
                  v74 = v101[1];
                }

                std::string::append(&v111, v73, v74);
                if (SHIBYTE(v102) < 0)
                {
                  operator delete(v101[0]);
                }

                if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v100.__r_.__value_.__l.__data_);
                }

                size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  size = __dst.__r_.__value_.__l.__size_;
                }

                if (size)
                {
                  std::operator+<char>();
                }

                else
                {
                  v76 = sub_29B1F31FC();
                  if (*(v76 + 23) < 0)
                  {
                    sub_29A008D14(v101, *v76, *(v76 + 1));
                  }

                  else
                  {
                    v77 = *v76;
                    v102 = *(v76 + 2);
                    *v101 = v77;
                  }
                }

                if (v102 >= 0)
                {
                  v78 = v101;
                }

                else
                {
                  v78 = v101[0];
                }

                if (v102 >= 0)
                {
                  v79 = HIBYTE(v102);
                }

                else
                {
                  v79 = v101[1];
                }

                std::string::append(&v111, v78, v79);
                if (SHIBYTE(v102) < 0)
                {
                  operator delete(v101[0]);
                }

                (*(*v12 + 72))(v12, &v111, a4);
                (*(*v12 + 56))(v12, a4, 1);
                sub_29A095658(&v118, &v113.__r_.__value_.__l.__data_, &v113);
                if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v111.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                sub_29B22E5C0(&__p);
              }

              sub_29A070BA0(&v115);
            }

            (*(*v12 + 224))(&__p, v12, v35, v99);
            sub_29A091654(&v115, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v80 = *(a1 + 95);
            if ((v80 & 0x8000000000000000) != 0)
            {
              v81 = *(a1 + 72);
              v80 = *(a1 + 80);
            }

            else
            {
              v81 = a1 + 72;
            }

            v26 = (v34 + 2);
            v82 = v80 - (v34 + 2);
            if (v80 >= (v34 + 2))
            {
              v83 = (v81 + v80);
              if (v82 >= 2)
              {
                v84 = (v81 + v26);
                do
                {
                  v85 = memchr(v84, 123, v82 - 1);
                  if (!v85)
                  {
                    break;
                  }

                  if (*v85 == 31611)
                  {
                    goto LABEL_172;
                  }

                  v84 = v85 + 1;
                  v82 = v83 - v84;
                }

                while (v83 - v84 > 1);
              }

              v85 = v83;
LABEL_172:
              if (v85 == v83)
              {
                v27 = -1;
              }

              else
              {
                v27 = &v85[-v81];
              }
            }

            else
            {
              v27 = -1;
            }

            if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v114.__r_.__value_.__l.__data_);
            }
          }

          while (v27 != -1);
        }
      }

      std::string::basic_string(&__p, v13, v26, 0xFFFFFFFFFFFFFFFFLL, &v114);
      sub_29A091654(&v115, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      (*(*v12 + 48))(v12, a4);
      (*(*v12 + 192))(v12, **(a2 + 152), 1, 0, a3, a4);
      sub_29A008E78(&__p, " = ");
      (*(*v12 + 72))(v12, &__p, a4);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v86 = v115;
      v87 = v116;
      while (v86 != v87)
      {
        (*(*v12 + 72))(v12, v86, a4);
        v86 += 24;
      }

      (*(*v12 + 56))(v12, a4, 1);
      __p.__r_.__value_.__r.__words[0] = &v115;
      sub_29A012C90(&__p);
      sub_29A019EE8(&v118, v119);
    }

    else
    {
      (*(*a1 + 80))(a1, a2, a3, a4);
      (*(*v12 + 48))(v12, a4);
      sub_29A008E78(&__p, "");
      if (*(a1 + 71) >= 0)
      {
        v16 = *(a1 + 71);
      }

      else
      {
        v16 = *(a1 + 56);
      }

      sub_29A022DE0(&v118, v16 + 1);
      if (v120 >= 0)
      {
        v17 = &v118;
      }

      else
      {
        v17 = v118;
      }

      if (v16)
      {
        if (*(a1 + 71) >= 0)
        {
          v18 = (a1 + 48);
        }

        else
        {
          v18 = *(a1 + 48);
        }

        memmove(v17, v18, v16);
      }

      *(v17 + v16) = 40;
      (*(*v12 + 72))(v12, &v118, a4);
      if (SHIBYTE(v120) < 0)
      {
        operator delete(v118);
      }

      v19 = *(a2 + 88);
      for (i = *(a2 + 96); v19 != i; ++v19)
      {
        v21 = *v19;
        (*(*v12 + 72))(v12, &__p, a4);
        (*(*v12 + 184))(v12, v21, a3, a4);
        MEMORY[0x29C2C1A60](&__p, ", ");
      }

      if (*(a2 + 160) != *(a2 + 152))
      {
        v22 = 0;
        do
        {
          (*(*v12 + 72))(v12, &__p, a4);
          (*(*v12 + 192))(v12, *(*(a2 + 152) + 8 * v22), 0, 0, a3, a4);
          MEMORY[0x29C2C1A60](&__p, ", ");
          ++v22;
        }

        while (v22 < (*(a2 + 160) - *(a2 + 152)) >> 3);
      }

      sub_29A008E78(&v118, ")");
      (*(*v12 + 72))(v12, &v118, a4);
      if (SHIBYTE(v120) < 0)
      {
        operator delete(v118);
      }

      (*(*v12 + 56))(v12, a4, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_29B22E174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v63 - 185) < 0)
  {
    operator delete(*(v63 - 208));
  }

  if (*(v63 - 217) < 0)
  {
    operator delete(*(v63 - 240));
  }

  if (a61 < 0)
  {
    operator delete(a56);
    if ((v62 & 1) == 0)
    {
LABEL_12:
      if (*(v63 - 153) < 0)
      {
        operator delete(*(v63 - 176));
      }

      __p = (v63 - 152);
      sub_29A012C90(&__p);
      sub_29A019EE8(v63 - 128, *(v63 - 120));
      _Unwind_Resume(a1);
    }
  }

  else if (!v62)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v61);
  goto LABEL_12;
}

uint64_t sub_29B22E420(uint64_t a1)
{
  *a1 = &unk_2A20CA8D0;
  v3 = (a1 + 96);
  sub_29A012C90(&v3);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B22E4C4(void **a1)
{
  *a1 = &unk_2A20CA8D0;
  v2 = a1 + 12;
  sub_29A012C90(&v2);
  if (*(a1 + 95) < 0)
  {
    operator delete(a1[9]);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

  operator delete(a1);
}

void *sub_29B22E56C(void *a1, char *a2, char *a3)
{
  v5 = sub_29A008E78(a1, a2);
  sub_29A008E78(v5 + 3, a3);
  return a1;
}

void sub_29B22E5A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B22E5C0(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

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

  v4 = *(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t sub_29B22E678@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x98uLL);
  result = sub_29B22E6C4(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B22E6C4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CA968;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CA8D0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 132) = 0u;
  return a1;
}

void sub_29B22E798(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CA968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t *sub_29B22E804()
{
  *&v8 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1787288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787288))
  {
    sub_29A008E78(&v2, "in1");
    sub_29A008E78(v3, "in2");
    sub_29A008E78(v4, "in3");
    sub_29A008E78(v5, "in4");
    sub_29A008E78(v6, "in5");
    sub_29A008E78(v7, "which");
    qword_2A1787270 = 0;
    *algn_2A1787278 = 0;
    qword_2A1787280 = 0;
    sub_29A280C48(&qword_2A1787270, &v2, &v8, 6uLL);
    for (i = 0; i != -18; i -= 3)
    {
      if (SHIBYTE(v7[i + 2]) < 0)
      {
        operator delete(v7[i]);
      }
    }

    __cxa_guard_release(&qword_2A1787288);
  }

  return &qword_2A1787270;
}

void sub_29B22E95C(_Unwind_Exception *a1)
{
  v3 = (v1 + 143);
  v4 = -144;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A1787288);
      _Unwind_Resume(a1);
    }
  }
}

double sub_29B22E9CC@<D0>(_OWORD *a1@<X8>)
{
  sub_29B22EFF4(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

uint64_t sub_29B22EA08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = strlen(off_2A14FE6F8);
  v8 = result;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (result != *(a4 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a4;
  }

  else
  {
    result = a4;
    if (v8 != v9)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v8);
  if (!result)
  {
    v10 = *a3;
    (*(**a3 + 48))(*a3, a4);
    v11 = 1;
    (*(*v10 + 192))(v10, **(a2 + 152), 1, 1, a3, a4);
    (*(*v10 + 56))(v10, a4, 1);
    sub_29B22E804();
    v12 = sub_29B23EC38(a2, (qword_2A1787270 + 120));
    for (i = 0; i != 120; i += 24)
    {
      sub_29B22E804();
      result = sub_29B23EC38(a2, (qword_2A1787270 + i));
      if (!result)
      {
        break;
      }

      v14 = result;
      (*(*v10 + 48))(v10, a4);
      if (i)
      {
        sub_29A008E78(__p, "else ");
        (*(*v10 + 72))(v10, __p, a4);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_29A008E78(__p, "if (float(");
      (*(*v10 + 72))(v10, __p, a4);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v10 + 184))(v10, v12, a3, a4);
      sub_29A008E78(__p, ") < float(");
      (*(*v10 + 72))(v10, __p, a4);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v11;
      sub_29B22F154(a4);
      sub_29A008E78(__p, "))");
      (*(*v10 + 72))(v10, __p, a4);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v10 + 56))(v10, a4, 0);
      (*(*v10 + 32))(v10, a4, 1);
      (*(*v10 + 48))(v10, a4);
      (*(*v10 + 192))(v10, **(a2 + 152), 0, 0, a3, a4);
      sub_29A008E78(__p, " = ");
      (*(*v10 + 72))(v10, __p, a4);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*v10 + 184))(v10, v14, a3, a4);
      (*(*v10 + 56))(v10, a4, 1);
      result = (*(*v10 + 40))(v10, a4, 0, 1);
      ++v11;
    }
  }

  return result;
}