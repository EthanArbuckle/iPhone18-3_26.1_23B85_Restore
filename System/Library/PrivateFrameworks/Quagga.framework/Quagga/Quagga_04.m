void *sub_2614C1C8C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 4)
  {
    if (a3 < 0x3FFFFFFFFFFFFFF8)
    {
      if ((a3 | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (a3 | 1) + 1;
      }

      sub_261472B30(v3);
    }

    sub_261481038();
  }

  __dst[23] = a3;
  v4 = 4 * a3 + 4;

  return memmove(__dst, __src, v4);
}

uint64_t sub_2614C1D28(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    operator new[]();
  }

  if (*(a1 + 52) >= 1)
  {
    v3 = 0;
    do
    {
      (*(*a1 + 40))(a1, v3, v2 + *(a1 + 48) * v3);
      v3 = (v3 + 1);
    }

    while (v3 < *(a1 + 52));
  }

  return v2;
}

_BYTE *sub_2614C1DD4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((a2 & 0x80000000) != 0 || (*(*a1 + 24))(a1) <= a2)
  {
    sub_26149A5B4(&v15);
    sub_26148EA44(&v15, "Requested row is outside the image: ", 36);
    MEMORY[0x266704400](&v15, a2);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C1FCC(v13, &v16);
    if (v14 >= 0)
    {
      v12 = v13;
    }

    else
    {
      v12 = v13[0];
    }

    sub_2614EB5DC(exception, v12);
    *exception = &unk_2873D1808;
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  v6 = (*(*a1 + 16))(a1);
  if (!a3)
  {
    operator new[]();
  }

  if (v6 >= 1)
  {
    v7 = *(a1 + 32) - (*(a1 + 44) + a2) + *(a1 + 32) * *(a1 + 40);
    v8 = v6;
    v9 = a3;
    do
    {
      *v9++ = *(*(a1 + 16) + v7);
      v7 += *(a1 + 32);
      --v8;
    }

    while (v8);
  }

  return a3;
}

void sub_2614C1F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (v20 < 0)
  {
    operator delete(v19);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      sub_26149A720(&a5);
      MEMORY[0x266704550](va);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

const void *sub_2614C1FCC(_BYTE *a1, uint64_t a2)
{
  result = sub_2614C2074(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t sub_2614C2074(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void sub_2614C20D8(void *a1)
{
  *a1 = &unk_2873D17A0;
  v1 = a1[3];
  if (v1)
  {
    MEMORY[0x2667045B0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2614C2154(void *a1)
{
  *a1 = &unk_2873D17A0;
  v2 = a1[3];
  if (v2)
  {
    MEMORY[0x2667045B0](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_2614C21B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  }

  if (*a4)
  {
    atomic_fetch_add_explicit((*a4 + 8), 1u, memory_order_relaxed);
  }

  sub_2614C227C();
}

void sub_2614C2258(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2614705CC(v2);
  }

  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614C25FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (v25 < 0)
  {
    operator delete(v24);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_26149A720(&a9);
      MEMORY[0x266704550](va);
      v29 = *(v27 - 128);
      if (v29)
      {
        *(v27 - 120) = v29;
        operator delete(v29);
      }

      sub_2614705CC(v22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void sub_2614C26BC()
{
  if (atomic_load_explicit(qword_280CB32A8, memory_order_acquire) != -1)
  {
    v3[1] = v0;
    v3[2] = v1;
    v2 = v3;
    v3[0] = sub_2614C268C;
    std::__call_once(qword_280CB32A8, &v2, sub_2614AD020);
  }
}

void sub_2614C27C8(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_2614705CC(v3);
  }

  MEMORY[0x2667045D0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2614C27EC(uint64_t a1, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
    sub_2614C0F6C(a1, a2);
    sub_2614705CC(a2);
  }

  else
  {
    sub_2614C0F6C(a1, 0);
  }

  *a1 = &unk_2873D1A00;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_261560F50;
  *(a1 + 72) = 0x1800000007;
  return a1;
}

atomic_uint *sub_2614C2880@<X0>(atomic_uint *result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 6);
  if (v3)
  {
    goto LABEL_14;
  }

  v4 = result;
  v5 = *(result + 2);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
    sub_2614705CC(v5);
  }

  if ((*(*v5 + 16))(v5) >= *(v4 + 76) && (*(*v5 + 24))(v5) >= *(v4 + 76))
  {
    (*(*v5 + 48))(v5);
    (*(*v5 + 16))(v5);
    (*(*v5 + 24))(v5);
    (*(*v5 + 32))(v5);
    operator new[]();
  }

  sub_2614C1000(v4, &v7);
  v6 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
  }

  result = *(v4 + 48);
  if (result)
  {
    result = sub_2614705CC(result);
  }

  *(v4 + 48) = v6;
  if (v6)
  {
    result = sub_2614705CC(v6);
  }

  v3 = *(v4 + 48);
  if (v3)
  {
LABEL_14:
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  *a2 = v3;
  return result;
}

void sub_2614C2E7C(void *a1)
{
  sub_2614C2EB4(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614C2EB4(void *a1)
{
  *a1 = &unk_2873D1A00;
  v2 = a1[6];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return sub_2614C1520(a1);
}

void sub_2614C2F14(std::string *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 <= 1)
  {
    goto LABEL_80;
  }

  if (*(v2 + 1))
  {
    if (v3 > 47)
    {
      memset(&v26, 0, sizeof(v26));
      std::string::append(&v26, "01", 2uLL);
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v6 = v26.__r_.__value_.__r.__words[1];
      }

      v7 = *(a2 + 2) - *a2;
      if (v7 < 5)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        if (v7 >= 8)
        {
          v7 = 8;
        }

        v9 = (*a2 + 4);
        v10 = v7 - 4;
        do
        {
          v11 = *v9++;
          v8 = (v11 != 0) | (2 * v8);
          --v10;
        }

        while (v10);
      }

      std::to_string(&v24, v8);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v24;
      }

      else
      {
        v12 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      std::string::append(&v26, v12, size);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      sub_2614C3580(&v26, a2, 8u, v6);
      v14 = sub_2614CFCFC(a2, 48, &v26);
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (v3 == 2)
  {
LABEL_80:
    sub_2614C3568();
  }

  if (!*(v2 + 2))
  {
    memset(&v26, 0, sizeof(v26));
    v14 = sub_2614CFCFC(a2, 5, &v26);
LABEL_28:
    if (v14)
    {
      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a1 = v26;
    }

    return;
  }

  if (v3 <= 4)
  {
LABEL_16:
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v15 = 0;
  v16 = 0;
  v17 = v2 + 1;
  do
  {
    v16 = (*(v17 + v15++) != 0) | (2 * v16);
  }

  while (v15 != 4);
  if (v16 == 5)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    if ((v3 & 0x7FFFFFFF) != 0x3C)
    {
      return;
    }

    sub_2614C3778(a1, a2, 5u);
    v26.__r_.__value_.__r.__words[0] = &unk_2873CF900;
    v27 = &v26;
    v24.__r_.__value_.__r.__words[0] = &unk_2873CF8A8;
    v25 = &v24;
    sub_2614C37F8(a1, *a2, a2[1], 0x2Du, 15, &v26, &v24);
LABEL_41:
    sub_2614C3984(&v24);
    sub_2614C3A04(&v26);
    return;
  }

  if (v16 == 4)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    if ((v3 & 0x7FFFFFFF) != 0x3C)
    {
      return;
    }

    sub_2614C3778(a1, a2, 5u);
    v26.__r_.__value_.__r.__words[0] = &unk_2873D0E00;
    v27 = &v26;
    v24.__r_.__value_.__r.__words[0] = &unk_2873D0DA8;
    v25 = &v24;
    sub_2614C37F8(a1, *a2, a2[1], 0x2Du, 15, &v26, &v24);
    goto LABEL_41;
  }

  if (v3 == 5)
  {
    goto LABEL_16;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v19 = (*(v17 + v18++) != 0) | (2 * v19);
  }

  while (v18 != 5);
  if (v19 == 13)
  {

    sub_2614C3C08(a1, a2);
  }

  else if (v19 == 12)
  {

    sub_2614C3A84(a1, a2);
  }

  else
  {
    if (v3 <= 7)
    {
      goto LABEL_16;
    }

    v20 = 0;
    v21 = 0;
    do
    {
      v21 = (*(v17 + v20++) != 0) | (2 * v21);
    }

    while (v20 != 7);
    if (v21 > 59)
    {
      if (v21 > 61)
      {
        if (v21 == 62)
        {
          v22 = "310";
        }

        else
        {
          if (v21 != 63)
          {
            goto LABEL_16;
          }

          v22 = "320";
        }

        v23 = "17";
      }

      else
      {
        if (v21 == 60)
        {
          v22 = "310";
        }

        else
        {
          v22 = "320";
        }

        v23 = "15";
      }
    }

    else if (v21 > 57)
    {
      if (v21 == 58)
      {
        v22 = "310";
      }

      else
      {
        v22 = "320";
      }

      v23 = "13";
    }

    else
    {
      if (v21 == 56)
      {
        v22 = "310";
      }

      else
      {
        if (v21 != 57)
        {
          goto LABEL_16;
        }

        v22 = "320";
      }

      v23 = "11";
    }

    sub_2614C3E54(a1, a2, v22, v23);
  }
}

void sub_2614C34F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2614C3984(&__p);
  sub_2614C3A04(&a17);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(a1);
}

void sub_2614C3580(std::string *this, uint64_t *a2, unsigned int a3, int a4)
{
  v7 = 0;
  v8 = -a3;
  v9 = a3;
  do
  {
    v10 = v9 + 10 * v7;
    v11 = *a2;
    v12 = a2[1];
    if ((v12 - *a2 - v10) < 1)
    {
      v13 = 0;
LABEL_9:
      std::string::push_back(this, 48);
      goto LABEL_10;
    }

    v13 = 0;
    v14 = (v10 + v11);
    v15 = v8 + v12 - v11;
    if (v15 >= 10)
    {
      v15 = 10;
    }

    do
    {
      v16 = *v14++;
      v13 = (v16 != 0) | (2 * v13);
      --v15;
    }

    while (v15);
    if ((v13 + 99) <= 0xC6)
    {
      goto LABEL_9;
    }

LABEL_10:
    if ((v13 + 9) <= 0x12)
    {
      std::string::push_back(this, 48);
    }

    std::to_string(&v28, v13);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v28;
    }

    else
    {
      v17 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    std::string::append(this, v17, size);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    ++v7;
    v8 -= 10;
  }

  while (v7 != 4);
  v19 = 0;
  v20 = 0;
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = this;
  }

  else
  {
    v21 = this->__r_.__value_.__r.__words[0];
  }

  v22 = v21 + a4;
  do
  {
    v23 = v22[v19] - 48;
    if ((v19 & 1) == 0)
    {
      v23 *= 3;
    }

    v20 += v23;
    ++v19;
  }

  while (v19 != 13);
  v24 = v20 % 10;
  if (v24)
  {
    v25 = 10 - v24;
  }

  else
  {
    v25 = 0;
  }

  std::to_string(&v28, v25);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v28;
  }

  else
  {
    v26 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v28.__r_.__value_.__l.__size_;
  }

  std::string::append(this, v26, v27);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_2614C3758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614C3778(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  std::string::append(a1, "01", 2uLL);
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  std::string::push_back(a1, 57);

  sub_2614C3580(a1, a2, a3, v6);
}

void sub_2614C37F8(std::string *a1, uint64_t a2, int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v9 = a3 - a2 - a4;
  if (v9 >= a5)
  {
    v9 = a5;
  }

  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (a2 + a4);
    do
    {
      v12 = *v11++;
      v10 = (v12 != 0) | (2 * v10);
      --v9;
    }

    while (v9);
  }

  LODWORD(v19.__r_.__value_.__l.__data_) = v10;
  if (!a6 || ((*(*a6 + 48))(a6, a1, &v19), LODWORD(v19.__r_.__value_.__l.__data_) = v10, (v13 = *(a7 + 24)) == 0))
  {
    sub_261477FC4();
  }

  v14 = (*(*v13 + 48))(v13, &v19);
  v15 = 100000;
  v16 = 5;
  do
  {
    if (!(v14 / v15))
    {
      std::string::push_back(a1, 48);
    }

    v15 /= 10;
    --v16;
  }

  while (v16);
  std::to_string(&v19, v14);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v19;
  }

  else
  {
    v17 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v17, size);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }
}

void sub_2614C3968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614C3984(uint64_t a1)
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

uint64_t sub_2614C3A04(uint64_t a1)
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

double sub_2614C3A84(std::string *a1, uint64_t a2)
{
  if (*(a2 + 8) - *a2 > 49)
  {
    memset(&v13, 0, sizeof(v13));
    sub_2614C3778(&v13, a2, 8u);
    v4 = *(a2 + 8) - *a2;
    if (v4 < 49)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      if (v4 >= 0x32)
      {
        v4 = 50;
      }

      v6 = (*a2 + 48);
      v7 = v4 - 48;
      do
      {
        v8 = *v6++;
        v5 = (v8 != 0) | (2 * v5);
        --v7;
      }

      while (v7);
    }

    std::string::append(&v13, "392", 3uLL);
    std::to_string(&__p, v5);
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

    std::string::append(&v13, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (sub_2614CF16C(a2, 50, &v13))
    {
      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      result = *&v13.__r_.__value_.__l.__data_;
      *a1 = v13;
    }
  }

  else
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
  }

  return result;
}

void sub_2614C3BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

double sub_2614C3C08(std::string *a1, uint64_t a2)
{
  if (*(a2 + 8) - *a2 <= 59)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    return result;
  }

  memset(&v20, 0, sizeof(v20));
  sub_2614C3778(&v20, a2, 8u);
  v4 = *(a2 + 8) - *a2;
  if (v4 < 49)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (v4 >= 0x32)
    {
      v4 = 50;
    }

    v6 = (*a2 + 48);
    v7 = v4 - 48;
    do
    {
      v8 = *v6++;
      v5 = (v8 != 0) | (2 * v5);
      --v7;
    }

    while (v7);
  }

  std::string::append(&v20, "393", 3uLL);
  std::to_string(&__p, v5);
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

  std::string::append(&v20, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *(a2 + 8) - *a2;
  if (v11 < 51)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    if (v11 >= 0x3C)
    {
      v11 = 60;
    }

    v13 = (*a2 + 50);
    v14 = v11 - 50;
    do
    {
      v15 = *v13++;
      v12 = (v15 != 0) | (2 * v12);
      --v14;
    }

    while (v14);
    if ((v12 + 99) > 0xC6)
    {
      goto LABEL_27;
    }
  }

  std::string::push_back(&v20, 48);
LABEL_27:
  if ((v12 + 9) <= 0x12)
  {
    std::string::push_back(&v20, 48);
  }

  std::to_string(&__p, v12);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v20, v16, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (sub_2614CF16C(a2, 60, &v20))
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    result = *&v20.__r_.__value_.__l.__data_;
    *a1 = v20;
  }

  return result;
}

void sub_2614C3E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_2614C3E54(std::string *a1, uint64_t a2, std::string::size_type a3, const char *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8) - *a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (v4 != 84)
  {
    return;
  }

  sub_2614C3778(a1, a2, 8u);
  v26.__r_.__value_.__r.__words[0] = &unk_2873CF850;
  v26.__r_.__value_.__l.__size_ = a3;
  v27 = &v26;
  v25[0] = &unk_2873CF7F8;
  v25[3] = v25;
  sub_2614C37F8(a1, *a2, *(a2 + 8), 0x30u, 20, &v26, v25);
  sub_2614C3984(v25);
  sub_2614C3A04(&v26);
  v9 = *a2;
  v10 = *(a2 + 8) - *a2;
  if (v10 < 69)
  {
    v11 = 0;
LABEL_10:
    v15 = strlen(a4);
    std::string::append(a1, a4, v15);
    if (v11 >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = v11 + 31;
    }

    if ((v11 + 3839) <= 0x1DFE)
    {
      std::string::push_back(a1, 48);
    }

    std::to_string(&v26, v11 / 384);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v26;
    }

    else
    {
      v17 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v17, size);
    v19 = (v16 >> 5) % 12;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if ((v19 + 10) <= 0x12)
    {
      std::string::push_back(a1, 48);
    }

    std::to_string(&v26, v19 + 1);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v20, v21);
    v22 = v11 - (v16 & 0xFFFFFFE0);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if ((v22 + 9) <= 0x12)
    {
      std::string::push_back(a1, 48);
    }

    std::to_string(&v26, v22);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v26;
    }

    else
    {
      v23 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v23, v24);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    return;
  }

  v11 = 0;
  if (v10 >= 0x54)
  {
    v10 = 84;
  }

  v12 = (v9 + 68);
  v13 = v10 - 68;
  do
  {
    v14 = *v12++;
    v11 = (v14 != 0) | (2 * v11);
    --v13;
  }

  while (v13);
  if (v11 != 38400)
  {
    goto LABEL_10;
  }
}

void sub_2614C411C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 + 23) < 0)
  {
    operator delete(*v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614C4190(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN5ZXing9__Nu_book4OneD3RSSL16DecodeAI013x0x1xERKNS0_8BitArrayEPKcS7_E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614C428C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN5ZXing9__Nu_book4OneD3RSSL16DecodeAI013x0x1xERKNS0_8BitArrayEPKcS7_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614C42C8(uint64_t a1, std::string *a2, int *a3)
{
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = strlen(v5);
  std::string::append(a2, v5, v6);
  std::to_string(&v9, v4 / 100000);
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v9;
  }

  else
  {
    v7 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v7, size);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_2614C436C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614C4390(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873CF850;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614C4430(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN5ZXing9__Nu_book4OneD3RSSL14DecodeAI01320xERKNS0_8BitArrayEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614C446C(uint64_t a1, unsigned int *a2)
{
  if (*a2 >= 10000)
  {
    return *a2 - 10000;
  }

  else
  {
    return *a2;
  }
}

uint64_t sub_2614C451C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN5ZXing9__Nu_book4OneD3RSSL14DecodeAI01320xERKNS0_8BitArrayEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *sub_2614C4558(int a1, std::string *this, int *a3)
{
  if (*a3 >= 10000)
  {
    v4 = "3203";
  }

  else
  {
    v4 = "3202";
  }

  return std::string::append(this, v4, 4uLL);
}

uint64_t sub_2614C4618(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN5ZXing9__Nu_book4OneD3RSSL14DecodeAI013103ERKNS0_8BitArrayEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614C46F0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN5ZXing9__Nu_book4OneD3RSSL14DecodeAI013103ERKNS0_8BitArrayEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614C47C8(int a1@<W1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v84[2] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  if (!*a4)
  {
    operator new();
  }

  v69 = 0;
  v70 = 0;
  v71 = 0;
  sub_2614C4FCC(&v69, *a2, a2[1], a2[1] - *a2);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  sub_2614C4FCC(&v66, *a3, a3[1], a3[1] - *a3);
  v9 = v8 + 8;
  sub_2614C5048(v73, &v69, v66, 0, a1);
  sub_2614C5638(v8 + 8, v73);
  if (v69 != v70)
  {
    v10 = v70 - 1;
    if (v70 - 1 > v69)
    {
      v11 = v69 + 1;
      do
      {
        v12 = *(v11 - 1);
        *(v11 - 1) = *v10;
        *v10-- = v12;
        v13 = v11++ >= v10;
      }

      while (!v13);
    }
  }

  v14 = v66;
  v15 = v67 - 1;
  if (v66 != v67 && v15 > v66)
  {
    v17 = v66 + 1;
    do
    {
      v18 = *(v17 - 1);
      *(v17 - 1) = *v15;
      *v15-- = v18;
      v13 = v17++ >= v15;
    }

    while (!v13);
  }

  sub_2614C5048(v73, &v69, v14, 1, a1);
  sub_2614C5638(v8 + 32, v73);
  v19 = *(v8 + 16);
  if (v19 != v9)
  {
    while (*(v19 + 72) < 2)
    {
LABEL_29:
      v19 = *(v19 + 8);
      if (v19 == v9)
      {
        goto LABEL_30;
      }
    }

    for (i = *(v8 + 40); ; i = *(i + 8))
    {
      if (i == v8 + 32)
      {
        goto LABEL_29;
      }

      if (*(i + 72) >= 2)
      {
        v21 = *(v19 + 40);
        v22 = *(i + 40);
        if (v21 < v22)
        {
          v23 = *(v19 + 64);
          v24 = *(i + 64);
          v25 = vabds_f32(v23, v24);
          v26 = *(v19 + 56);
          v27 = *(i + 56);
          v28 = v25 + 1.0;
          if (vabds_f32(v26, v27) <= v28 || ((v29 = vabds_f32(v27, v21), vabds_f32(v26, v22) <= v28) ? (v30 = v29 > v28) : (v30 = 1), !v30))
          {
            v31 = 9 * *(v19 + 24) + *(i + 24);
            if ((*(v19 + 20) + 16 * *(i + 20)) % 79 == v31 - (v31 > 72) - (v31 - (v31 > 72) > 8))
            {
              break;
            }
          }
        }
      }
    }

    v32 = *(i + 16) + 4537077 * *(v19 + 16);
    v33 = v32 - 10000000000000;
    if ((v32 - 10000000000000) >= 0x9184E72A000)
    {
      v34 = *(i + 16) + 4537077 * *(v19 + 16);
    }

    else
    {
      v34 = v32 - 10000000000000;
    }

    sub_261498DCC(v73);
    v35 = v74;
    *(v77 + *(v74 - 3)) = 13;
    v36 = &v74 + *(v35 - 3);
    if (*(v36 + 36) == -1)
    {
      std::ios_base::getloc((&v74 + *(v35 - 3)));
      v37 = std::locale::use_facet(&__dst, MEMORY[0x277D82688]);
      (v37->__vftable[3].__on_zero_shared)(v37, 32);
      std::locale::~locale(&__dst);
    }

    *(v36 + 36) = 48;
    MEMORY[0x266704470](&v74, v34);
    v38 = 0;
    for (j = 0; j != 13; ++j)
    {
      v40 = std::wistream::get() - 48;
      if ((j & 1) == 0)
      {
        v40 *= 3;
      }

      v38 += v40;
    }

    std::wostream::put();
    v41.f64[0] = *(v19 + 48);
    v42 = *(v19 + 56);
    v43 = *(i + 40);
    v44 = *(i + 56);
    v45 = *(v19 + 40);
    v41.f64[1] = *(i + 48);
    v65 = v41;
    if ((v82 & 0x10) != 0)
    {
      v47 = v81;
      if (v81 < v78)
      {
        v81 = v78;
        v47 = v78;
      }

      v48 = v77[3];
    }

    else
    {
      if ((v82 & 8) == 0)
      {
        v46 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_56:
        __dst.__r_.__value_.__s.__data_[v46] = 0;
        v51 = std::wstring::insert(&__dst, 0, dword_26156EB58, 2uLL);
        v52 = v42;
        v53 = v45;
        v54 = (v52 - v53) / 46.0;
        v55 = v43;
        v56 = v44;
        v57 = (v55 - v56) / 46.0;
        v58.f32[0] = v53 - v54;
        v59 = v51->__r_.__value_.__r.__words[0];
        v84[0] = v51->__r_.__value_.__l.__size_;
        *(v84 + 7) = *(&v51->__r_.__value_.__r.__words[1] + 7);
        v60 = HIBYTE(v51->__r_.__value_.__r.__words[2]);
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        v58.f32[1] = v55 + (v57 * 2.0);
        *a5 = 0x100000000000;
        v61 = vcvt_s32_f32(v58);
        *(a5 + 23) = *(v84 + 7);
        v62 = v84[0];
        *(a5 + 8) = v59;
        *(a5 + 16) = v62;
        *(a5 + 31) = v60;
        v63.i64[0] = v61.u32[0];
        v63.i64[1] = v61.u32[1];
        v64 = vorrq_s8(vshll_n_s32(vcvt_s32_f32(vcvt_f32_f64(v65)), 0x20uLL), v63);
        *(a5 + 32) = v64;
        *(a5 + 48) = vextq_s8(v64, v64, 8uLL);
        *(a5 + 112) = 0;
        *(a5 + 104) = 0;
        *(a5 + 72) = 0;
        *(a5 + 80) = 0;
        *(a5 + 64) = 0;
        *(a5 + 96) = a5 + 104;
        *(a5 + 120) = 0;
        *(a5 + 124) = 0;
        *(a5 + 128) = 0;
        *(a5 + 88) = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        *(a5 + 120) = v33 < 0x9184E72A000;
        *(a5 + 124) = v54;
        *(a5 + 128) = v57;
        v73[0] = &unk_2873D09D8;
        v83 = &unk_2873D0A28;
        v74 = &unk_2873D0A00;
        v75 = &unk_2873D0A48;
        if (v80 < 0)
        {
          operator delete(__p);
        }

        v75 = (MEMORY[0x277D82870] + 16);
        std::locale::~locale(&v76);
        std::wostream::~wostream();
        std::wistream::~wistream();
        MEMORY[0x266704560](&v83);
        goto LABEL_61;
      }

      v48 = v77[0];
      v47 = v77[2];
    }

    v49 = v47 - v48;
    v46 = (v47 - v48) >> 2;
    if (v46 >= 0x3FFFFFFFFFFFFFF8)
    {
      sub_261481038();
    }

    if (v46 >= 5)
    {
      if ((v46 | 1) == 5)
      {
        v50 = 7;
      }

      else
      {
        v50 = (v46 | 1) + 1;
      }

      sub_261472B30(v50);
    }

    *(&__dst.__r_.__value_.__s + 23) = v49 >> 2;
    if (v47 == v48)
    {
      v46 = 0;
    }

    else
    {
      memmove(&__dst, v48, v49);
    }

    goto LABEL_56;
  }

LABEL_30:
  *a5 = 1;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0;
  *(a5 + 4) = 0u;
  *(a5 + 20) = 0u;
  *(a5 + 36) = 0u;
  *(a5 + 52) = 0u;
  *(a5 + 68) = 0u;
  *(a5 + 84) = 0;
  *(a5 + 96) = a5 + 104;
  *(a5 + 120) = 0;
  *(a5 + 124) = 0;
  *(a5 + 128) = 0;
LABEL_61:
  if (v66)
  {
    operator delete(v66);
  }

  if (v69)
  {
    operator delete(v69);
  }
}

void sub_2614C4F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  std::locale::~locale(&a10);
  sub_2614990AC(&a16);
  MEMORY[0x266704560](va);
  if (__p)
  {
    operator delete(__p);
  }

  if (a7)
  {
    operator delete(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2614C4FCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_261483280(result, a4);
  }

  return result;
}

void sub_2614C502C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2614C5048(unint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v5 = result;
  v99 = *MEMORY[0x277D85DE8];
  v96 = 0uLL;
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 - *a2;
  v9 = (*a2 + 18);
  if (v8 < 50 || v9 == v6)
  {
    goto LABEL_6;
  }

  while (*v9 != (a4 ^ 1))
  {
    if (++v9 == v6)
    {
      v9 = a2[1];
      break;
    }
  }

  if (v9 == v6)
  {
    goto LABEL_6;
  }

  v15 = 0;
  v16 = v9;
  v17 = v9;
  while (1)
  {
    v18 = *v9 == 0;
    v19 = &v9[v6 - v16];
    while (*v9 != v18)
    {
      if (++v9 == v6)
      {
        v9 = v19;
        break;
      }
    }

    if (v9 == v6)
    {
      v96.i32[v15] = v6 - v16;
      goto LABEL_6;
    }

    v96.i32[v15++] = v9 - v16;
    if (v15 != 4)
    {
      goto LABEL_51;
    }

    v20 = vaddvq_s32(v96);
    v21 = v20;
    v22 = v20;
    v23 = v20 / 14.0;
    v24 = v21 / 12.0;
    v25 = v23 >= 4.0 ? 0.0 : 0.5;
    v26 = v25 + (v24 * 0.5);
    v27 = (v96.i32[3] + v96.i32[2]);
    v28 = -(v26 - (v23 * 2.0));
    v29 = v28 > v27 || (v26 + (v24 * 2.0)) < v27;
    v30 = v96.i32[0];
    v31 = v23 - v26;
    v32 = !v29 && v31 <= v30;
    v33 = !v32 || (v26 + (v24 * 8.0)) < v30;
    v34 = v96.i32[1];
    v35 = !v33 && v28 <= v34;
    v36 = !v35 || (v26 + (v24 * 9.0)) < v34;
    v37 = v24 + v26;
    v38 = v96.i32[2];
    v39 = !v36 && v31 <= v38;
    v40 = !v39 || v37 < v38;
    v41 = v96.i32[3];
    v42 = !v40 && v31 <= v41;
    v43 = !v42 || v37 < v41;
    if (!v43 && &v17[-v7] > v9 - v17 && v6 - v9 > v9 - v17)
    {
      break;
    }

    v17 += v96.i32[1] + v96.i32[0];
    v96.i64[0] = v96.i64[1];
    v15 = 2;
LABEL_51:
    v16 = v9;
  }

  if (v17 >= v9 || v7 == v17)
  {
    goto LABEL_6;
  }

  v44 = v17;
  while (v44 != v7)
  {
    v45 = *--v44;
    if (v45 == *v17)
    {
      v46 = v44 + 1;
      goto LABEL_62;
    }
  }

  v46 = v7;
LABEL_62:
  v92 = v46;
  v47 = v22 + v17 - v46;
  v91 = &v9[-v7];
  v90 = v9 - v7 - v47;
  bzero(v98, 0x400uLL);
  if (v47 < 1)
  {
    v51 = 0.0;
    v49 = 0.0;
    result = v91;
  }

  else
  {
    result = v91;
    v48 = v91 - v90;
    v49 = 0.0;
    v50 = (a3 + v90);
    v51 = 0.0;
    do
    {
      v52 = *v50++;
      v49 = v49 + v52;
      v51 = v51 + (v52 * v52);
      ++v98[v52];
      --v48;
    }

    while (v48);
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v57 = (v51 / (v47 + 1)) - ((v49 / (v47 + 1)) * (v49 / (v47 + 1)));
  v58 = (v47 * 0.3);
  while (1)
  {
    v59 = v98[v53];
    if (v59 + v55 >= v58)
    {
      break;
    }

    v54 += v59 * v53++;
    v55 += v59;
    if (v53 == 255)
    {
      goto LABEL_72;
    }
  }

  v54 += (v58 - v55) * v53;
LABEL_72:
  v60 = 0;
  v61 = 0;
  v62 = (v54 / v58);
  v63 = 255;
  while (1)
  {
    v64 = v98[v63];
    if (v64 + v61 >= v58)
    {
      break;
    }

    v60 += v64 * v63;
    v61 += v64;
    v32 = v63-- > 1;
    if (!v32)
    {
      goto LABEL_77;
    }
  }

  v60 += (v58 - v61) * v63;
LABEL_77:
  v65 = 0;
  v66 = (v60 / v58);
  v67 = 1.0 / (v57 + v57);
  v68 = &unk_26156EA38;
  v69 = -1;
  v70 = -0.15;
  do
  {
    v71 = 0;
    v72 = 0;
    do
    {
      v72 += *&v68[v71 * 4];
      v56 = v47 / 15.0;
      v97[v71++] = ((v56 * v72) + 0.5);
    }

    while (v71 != 5);
    v73 = 0;
    v74 = 0.0;
    do
    {
      if (v73)
      {
        v75 = v97[v73 - 1];
      }

      else
      {
        v75 = 0;
      }

      v76 = v97[v73];
      if (v75 < v76)
      {
        v77 = v76 - v75;
        v78 = (a3 + v90 + v75);
        do
        {
          v79 = *v78++;
          v80 = v79;
          if ((v73 ^ a4))
          {
            v81 = fmax((v80 - v62), 0.0);
          }

          else
          {
            v81 = fmin((v80 - v66), 0.0);
          }

          v82 = v81;
          v74 = v74 + (v67 * (v82 * v82));
          --v77;
        }

        while (v77);
      }

      ++v73;
    }

    while (v73 != 5);
    v83 = -v74 / v47;
    if (v83 > v70)
    {
      v69 = v65;
      v70 = v83;
    }

    ++v65;
    v68 += 20;
  }

  while (v65 != 9);
  v84 = a4 ? v8 + ~(v92 - v7) : v92 - v7;
  v85 = a4 ? v8 + ~result : result;
  LODWORD(v93) = v69;
  DWORD1(v93) = v92 - v7;
  DWORD2(v93) = result;
  *&v94 = v84;
  *(&v94 + 1) = a5;
  *&v95 = v85;
  *(&v95 + 1) = a5;
  if (v69 < 0 || (v98[0] = 0, result = sub_2614C5704(v7, v6, &v93, 1, v98), v86 = result, result == 0x7FFFFFFF) || (v97[0] = 0, result = sub_2614C5704(*a2, a2[1], &v93, 0, v97), result == 0x7FFFFFFF))
  {
LABEL_6:
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *v5 = xmmword_261560F60;
    *(v5 + 16) = 0u;
    *(v5 + 16) = -1;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0;
  }

  else
  {
    v87 = v98[0];
    v88 = v97[0];
    if (a4)
    {
      v88 = -v97[0];
      v87 = -v98[0];
    }

    *&v94 = (v84 - v87);
    *(&v94 + 1) = a5;
    *&v95 = (v85 + v88);
    *(&v95 + 1) = *(&v94 + 1);
    *v5 = result + 1597 * v86;
    *(v5 + 4) = ((result >> 30) & 0xFFFFFFFC) + HIDWORD(v86);
    v89 = v94;
    *(v5 + 8) = v93;
    *(v5 + 24) = v89;
    *(v5 + 40) = v95;
    *(v5 + 56) = 1;
  }

  return result;
}

uint64_t sub_2614C5638(uint64_t result, _DWORD *a2)
{
  if (*a2 != 0x7FFFFFFF)
  {
    v2 = *(result + 8);
    if (v2 == result)
    {
LABEL_7:
      operator new();
    }

    while (*(v2 + 16) != *a2 || *(v2 + 20) != a2[1] || a2[2] != *(v2 + 24))
    {
      v2 = *(v2 + 8);
      if (v2 == result)
      {
        goto LABEL_7;
      }
    }

    ++*(v2 + 72);
  }

  return result;
}

uint64_t sub_2614C5704(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, int *a5)
{
  v109 = 0u;
  v110 = 0u;
  if (!a4)
  {
    v12 = (a1 + *(a3 + 8));
    v13 = sub_2614C5D98(v12, a2, &v109);
    v15 = v14 != a2 || v110.i32[3] == 0;
    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v17 = a2;
    }

    if (v16 >= v17)
    {
      goto LABEL_22;
    }

    v18 = &v110.i8[12];
    v19 = &v109.i8[4];
    do
    {
      v20 = *(v19 - 1);
      *(v19 - 1) = *v18;
      *v18 = v20;
      v18 -= 4;
      v21 = v19 >= v18;
      v19 += 4;
    }

    while (!v21);
    v10 = 15;
LABEL_18:
    v22 = vaddvq_s32(vaddq_s32(v110, v109));
    *a5 = v22;
    v23 = v22 / v10;
    v24 = (*(a3 + 8) - *(a3 + 4)) / 15.0;
    if ((v23 * 1.5) < v24 || v23 > (v24 * 1.5))
    {
      goto LABEL_22;
    }

    for (i = 0; i != 8; ++i)
    {
      v29 = v109.i32[i] / v23;
      v30 = (v29 + 0.5);
      if (v30 >= 8)
      {
        v30 = 8;
      }

      if (v30 <= 1)
      {
        v30 = 1;
      }

      v31 = i >> 1;
      v32 = v29 - v30;
      if (i)
      {
        v33 = &v107;
      }

      else
      {
        v33 = &v108;
      }

      if (i)
      {
        v34 = &v103;
      }

      else
      {
        v34 = &v105;
      }

      v33->i32[v31] = v30;
      v34[v31] = v32;
    }

    v35 = vaddvq_s32(v108);
    v36 = vaddvq_s32(v107);
    v37 = vaddvq_s32(vaddq_s32(v107, v108));
    v38 = v37 - v10;
    if (a4)
    {
      v39 = 12;
    }

    else
    {
      v39 = 11;
    }

    if (a4)
    {
      v40 = 4;
    }

    else
    {
      v40 = 5;
    }

    if (a4)
    {
      v41 = 12;
    }

    else
    {
      v41 = 10;
    }

    v42 = v35 > v39;
    v43 = v36 > v41;
    v44 = v36 < 4;
    if (v38 == -1)
    {
      if (((v35 ^ a4) & 1) == 0)
      {
        v45 = 0;
        v46 = 0x7FFFFFFF;
        if ((v36 & 1) != 0 || v35 > v39)
        {
          goto LABEL_120;
        }

LABEL_63:
        v47 = v105;
        v48 = &v105;
        v49 = v106;
        v50 = 12;
        v51 = v106;
        do
        {
          v52 = *v51++;
          v53 = v52;
          if (v47 < v52)
          {
            v47 = v53;
            v48 = v49;
          }

          v49 = v51;
          v50 -= 4;
        }

        while (v50);
        v54 = v48 - &v105;
        v55 = *(v108.i32 + v54) + 1;
        goto LABEL_86;
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_119;
      }

      v44 = 1;
    }

    else if (v38 == 1)
    {
      if ((v35 ^ a4))
      {
        if ((v36 & 1) == 0)
        {
          goto LABEL_119;
        }

        v43 = 1;
      }

      else
      {
        if (v36)
        {
          goto LABEL_119;
        }

        v42 = 1;
      }
    }

    else
    {
      if (v37 != v10)
      {
        goto LABEL_119;
      }

      if (((v35 ^ a4) & 1) == 0)
      {
        if ((v36 & 1) == 0)
        {
          goto LABEL_119;
        }

        v42 = v35 >= v36 || v35 > v39;
        v44 = v35 >= v36 || v36 < 4;
        v43 = v36 > v41 || v35 < v36;
        if (v35 < v40 || v35 < v36)
        {
          goto LABEL_59;
        }

        goto LABEL_80;
      }

      if (v36)
      {
        goto LABEL_119;
      }
    }

    if (v35 < v40)
    {
LABEL_59:
      if (v42)
      {
        goto LABEL_119;
      }

      goto LABEL_63;
    }

LABEL_80:
    if (!v42)
    {
      if (v44)
      {
        goto LABEL_87;
      }

      goto LABEL_94;
    }

    v56 = v105;
    v57 = &v105;
    v58 = v106;
    v59 = 12;
    v60 = v106;
    do
    {
      v61 = *v60++;
      v62 = v61;
      if (v61 < v56)
      {
        v56 = v62;
        v57 = v58;
      }

      v58 = v60;
      v59 -= 4;
    }

    while (v59);
    v54 = v57 - &v105;
    v55 = *(v108.i32 + v54) - 1;
LABEL_86:
    *(v108.i32 + v54) = v55;
    if (v44)
    {
LABEL_87:
      if (v43)
      {
        goto LABEL_119;
      }

      v63 = v103;
      v64 = &v103;
      v65 = v104;
      v66 = 12;
      v67 = v104;
      do
      {
        v68 = *v67++;
        v69 = v68;
        if (v63 < v68)
        {
          v63 = v69;
          v64 = v65;
        }

        v65 = v67;
        v66 -= 4;
      }

      while (v66);
      v70 = 1;
      goto LABEL_100;
    }

LABEL_94:
    if (!v43)
    {
LABEL_101:
      v77 = v108.i32[0];
      v78 = 1;
      v79 = &v108;
      do
      {
        if (v108.i32[v78] < v77)
        {
          v77 = v108.i32[v78];
          v79 = (&v108 + v78 * 4);
        }

        ++v78;
      }

      while (v78 != 4);
      if (v79->i32[0])
      {
        v80 = v107.i32[0];
        v81 = 1;
        v82 = &v107;
        do
        {
          if (v107.i32[v81] < v80)
          {
            v80 = v107.i32[v81];
            v82 = (&v107 + v81 * 4);
          }

          ++v81;
        }

        while (v81 != 4);
        if (v82->i32[0])
        {
          v83 = 0;
          for (j = 3; j != -1; --j)
          {
            v83 = v108.i32[j] + 9 * v83;
          }

          v85 = 0;
          for (k = 3; k != -1; --k)
          {
            v85 = v107.i32[k] + 9 * v85;
          }

          v87 = (3 * v85 + v83);
          v45 = 0;
          if (a4)
          {
            v88 = vaddvq_s32(v108);
            v46 = 0x7FFFFFFF;
            if ((v88 & 1) != 0 || (v88 - 13) < 0xFFFFFFF7)
            {
              goto LABEL_120;
            }

            v89 = (12 - v88) >> 1;
            v90 = dword_26156EAEC[v89];
            v91 = 9 - v90;
            v92 = sub_26150A8EC(v108.i32, 4u, v90, 1);
            v93 = sub_26150A8EC(v107.i32, 4u, v91, 0);
            v94 = dword_26156EB14[v89];
            v95 = v93 + dword_26156EB00[v89] * v92;
          }

          else
          {
            v97 = vaddvq_s32(v107);
            v46 = 0x7FFFFFFF;
            if ((v97 & 1) != 0 || (v97 - 11) < 0xFFFFFFF9)
            {
              goto LABEL_120;
            }

            v98 = (10 - v97) >> 1;
            v99 = dword_26156EB28[v98];
            v100 = 9 - v99;
            v101 = sub_26150A8EC(v108.i32, 4u, v99, 0);
            v102 = sub_26150A8EC(v107.i32, 4u, v100, 1);
            v94 = dword_26156EB48[v98];
            v95 = v101 + dword_26156EB38[v98] * v102;
          }

          v46 = v95 + v94;
          v45 = v87;
LABEL_120:
          v26 = v45 << 32;
          v27 = v46;
          return v26 | v27;
        }
      }

LABEL_119:
      v45 = 0;
      v46 = 0x7FFFFFFF;
      goto LABEL_120;
    }

    v71 = v103;
    v64 = &v103;
    v72 = v104;
    v73 = 12;
    v74 = v104;
    do
    {
      v75 = *v74++;
      v76 = v75;
      if (v75 < v71)
      {
        v71 = v76;
        v64 = v72;
      }

      v72 = v74;
      v73 -= 4;
    }

    while (v73);
    v70 = -1;
LABEL_100:
    *(v107.i32 + v64 - &v103) += v70;
    goto LABEL_101;
  }

  v8 = sub_2614C5CC4(a1, *(a3 + 4) + a1, &v109);
  if (v8 < v9)
  {
    v10 = 16;
    goto LABEL_18;
  }

LABEL_22:
  v26 = 0;
  v27 = 0x7FFFFFFFLL;
  return v26 | v27;
}

uint64_t sub_2614C5CC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 28) = 0;
  v3 = (a3 + 28);
  if (a2 == result)
  {
    v4 = 1;
    v5 = result;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    while (1)
    {
      v8 = v7;
      while (v8 != result)
      {
        v9 = *--v8;
        if (v9 == (*(v7 - 1) == 0))
        {
          v5 = v8 + 1;
          goto LABEL_9;
        }
      }

      v5 = result;
LABEL_9:
      *(a3 + v6) = v7 - v5;
      if (v5 == result)
      {
        break;
      }

      v6 += 4;
      v7 = v5;
      if (v6 == 32)
      {
        goto LABEL_13;
      }
    }

    v5 = result;
LABEL_13:
    v4 = *v3 == 0;
  }

  v10 = a3 + 4;
  do
  {
    v11 = *(v10 - 4);
    *(v10 - 4) = *v3;
    *v3-- = v11;
    v12 = v10 >= v3;
    v10 += 4;
  }

  while (!v12);
  if (v5 != result || v4)
  {
    return v5;
  }

  return result;
}

_BYTE *sub_2614C5D98(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v4 = 0;
    v5 = a1;
    v6 = a1;
    while (1)
    {
      if (*v6 == (*v5 == 0))
      {
        goto LABEL_6;
      }

      if (++v6 == v3)
      {
        v6 = v3;
LABEL_6:
        if (v6 == v3)
        {
          *(a3 + v4) = v3 - v5;
          return v3;
        }

        *(a3 + v4) = v6 - v5;
        v4 += 4;
        v5 = v6;
        if (v4 == 32)
        {
          return a1;
        }
      }
    }
  }

  return v3;
}

void sub_2614C5E14(void *a1)
{
  *a1 = &unk_2873D1C18;
  v1 = a1 + 1;
  sub_2614C5E88(a1 + 4);
  sub_2614C5E88(v1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614C5E88(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void *sub_2614C5EEC(void *a1)
{
  *a1 = &unk_2873D1C18;
  v2 = a1 + 1;
  sub_2614C5E88(a1 + 4);
  sub_2614C5E88(v2);
  return a1;
}

void sub_2614C5F58(std::exception *a1)
{
  sub_2614EB578(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614C5F94(uint64_t a1, char *a2)
{
  result = sub_2614EB5DC(a1, a2);
  *result = &unk_2873D1808;
  return result;
}

float sub_2614C5FC8(float *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if ((v3 >> 2) >= 1)
  {
    v4 = 0;
    v5 = (v3 >> 2) & 0x7FFFFFFF;
    do
    {
      v6 = (v2 + 4 * v4);
      v7 = *v6;
      v8 = v6[1];
      v9 = a1[11] + ((v8 * a1[10]) + (a1[9] * *v6));
      *v6 = (a1[5] + ((v8 * a1[4]) + (a1[3] * *v6))) / v9;
      result = (a1[8] + ((v8 * a1[7]) + (a1[6] * v7))) / v9;
      v6[1] = result;
      v4 += 2;
    }

    while (v4 < v5);
  }

  return result;
}

void sub_2614C6188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    sub_2614705CC(v11);
  }

  if (v12)
  {
    sub_2614705CC(v12);
  }

  if (v11)
  {
    sub_2614705CC(v11);
  }

  _Unwind_Resume(exception_object);
}

double sub_2614C6544(void *a1, float *a2)
{
  v2 = ((a2[3] * ((a2[7] * a2[11]) - (a2[10] * a2[8]))) - (a2[6] * ((a2[4] * a2[11]) - (a2[10] * a2[5])))) + (a2[9] * ((a2[4] * a2[8]) - (a2[7] * a2[5])));
  *a1 = 0;
  result = fabsf(v2);
  if (result > 0.00001)
  {
    sub_2614C6468();
  }

  return result;
}

uint64_t sub_2614C661C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v13[48] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  v8 = (v6 - v5) >> 2;
  if (v8 >= 4)
  {
    memset(v13, 0, 24);
    sub_26149087C(v13, v5, v6, v8);
    memset(v12, 0, sizeof(v12));
    sub_26149087C(v12, *a3, a3[1], (a3[1] - *a3) >> 2);
    sub_2614C6B68(v11, a2, v13);
    sub_2614C6B68(v10, a3, v12);
    if (v11[36] == 1 && v10[36] == 1)
    {
      operator new[]();
    }

    if (v12[0])
    {
      operator delete(v12[0]);
    }

    if (v13[0])
    {
      operator delete(v13[0]);
    }
  }

  return 0;
}

void sub_2614C6B5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_261470E34(a1);
}

void sub_2614C6B68(uint64_t a1, void *a2, void *a3)
{
  v6 = (a2[1] - *a2) >> 2;
  v7 = v6 >> 1;
  sub_26148F908(&__p, v6 >> 1);
  sub_26148F908(&v40, v6 >> 1);
  v8 = __p;
  if (v6 >= 2)
  {
    v9 = v40;
    v10 = (*a2 + 4);
    v11 = __p;
    v12 = v6 >> 1;
    do
    {
      *v11++ = *(v10 - 1);
      v13 = *v10;
      v10 += 2;
      *v9++ = v13;
      --v12;
    }

    while (v12);
  }

  v14 = 0.0;
  v15 = 0.0;
  if (v8 != v43)
  {
    v16 = v8;
    do
    {
      v17 = *v16++;
      v15 = v15 + v17;
    }

    while (v16 != v43);
  }

  v18 = v7;
  v19 = v40;
  if (v40 != v41)
  {
    v14 = 0.0;
    v20 = v40;
    do
    {
      v21 = *v20++;
      v14 = v14 + v21;
    }

    while (v20 != v41);
  }

  v22 = v15 / v18;
  v23 = 0.0;
  v24 = v14 / v18;
  if (v6 >= 2)
  {
    v25 = v8;
    v26 = v40;
    v27 = v6 >> 1;
    do
    {
      v28 = *v25++;
      v29 = v23 + ((v28 - v22) * (v28 - v22));
      v30 = *v26++;
      v23 = v29 + ((v30 - v24) * (v30 - v24));
      --v27;
    }

    while (v27);
  }

  v31 = 1.41421356 / sqrtf(v23 / v18);
  v32 = -(v31 * v24);
  if (v6 < 2)
  {
LABEL_17:
    *a1 = v31;
    *(a1 + 8) = 0;
    *(a1 + 4) = 0;
    *(a1 + 16) = v31;
    *(a1 + 20) = 0;
    *(a1 + 24) = -(v31 * v22);
    *(a1 + 28) = v32;
    *(a1 + 32) = 1065353216;
    *(a1 + 36) = 1;
    if (!v19)
    {
      if (!v8)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v33 = (*a3 + 4);
    v34 = v8;
    v35 = v40;
    while (1)
    {
      v36 = *v34;
      v37 = *v35 * 0.0;
      v38 = (v37 + (*v34 * 0.0)) + 1.0;
      if (v38 == 0.0)
      {
        break;
      }

      v39 = v32 + ((*v35 * v31) + (v36 * 0.0));
      *(v33 - 1) = ((v37 + (v31 * v36)) - (v31 * v22)) / v38;
      *v33 = v39 / v38;
      v33 += 2;
      ++v35;
      ++v34;
      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    *a1 = 0;
    *(a1 + 36) = 0;
  }

  v41 = v19;
  operator delete(v19);
  v8 = __p;
  if (!__p)
  {
    return;
  }

LABEL_19:
  v43 = v8;
  operator delete(v8);
}

void sub_2614C6D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614C6DA0(int a1, float *a2, int a3, float *a4, uint64_t a5)
{
  result = 2;
  if (a3 >= 15 && (a3 & 3) == 3 && (a1 == a3 || a3 + 1 == a1) && *a2 <= *a4)
  {
    v11 = (a3 - 1);
    v12 = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
    v13 = 0;
    do
    {
      v12[v13] = a2[v13 + 1] - a2[v13];
      ++v13;
    }

    while (v11 != v13);
    v14 = 0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v15 = v15 + v14;
      v16 = v16 + (v14 * v14);
      v19 = v12[v14];
      v17 = v17 + (v14 * v19);
      v18 = v18 + v19;
      ++v14;
    }

    while (v11 != v14);
    v20 = 0;
    v21 = ((v11 * v17) - (v15 * v18)) / ((v11 * v16) - (v15 * v15));
    v22 = (v18 - (v21 * v15)) / v11;
    v23 = 0.0;
    do
    {
      v23 = v23 + (((v22 + (v21 * v20)) - v12[v20]) * ((v22 + (v21 * v20)) - v12[v20]));
      ++v20;
    }

    while (v11 != v20);
    v24 = v23 * v11;
    v25 = (v18 * v18) * 0.01;
    free(v12);
    if (v24 > v25)
    {
      return 2;
    }

    v26 = (a2[1] - *a2) / 3.0;
    if (fabsf((*a4 - *a2) + (v26 * -2.0)) > (v26 * 0.5))
    {
      return 2;
    }

    *(a5 + 72) = v26;
    v27 = *(a5 + 64);
    v27[12] = *a2;
    v28 = a2[v11];
    v27[10] = 0;
    v29 = (a3 - 2);
    v30 = a2[v29];
    v31 = (v28 - v30) / 3.0;
    if (vabds_f32(a4[v11] - v28, v31) > (v31 * 0.5) || vabds_f32(a4[v29] - v30, v31) > (v31 * 0.5))
    {
      return 2;
    }

    else
    {
      *(a5 + 76) = v31;
      v27[11] = 0;
      v27[13] = LODWORD(a4[v11]);
      v32 = *(a5 + 16);
      if (v32)
      {
        free(v32);
      }

      v33 = (a3 - 3) >> 2;
      *(a5 + 8) = v33;
      *(a5 + 16) = 0;
      v34 = malloc_type_calloc(v33, 1uLL, 0x100004077774924uLL);
      LOBYTE(v35) = 0;
      *(a5 + 16) = v34;
      v36 = a4 + 1;
      v37 = a2 + 2;
      v38 = 2;
      do
      {
        v39 = v38 - 1;
        v35 = (2 * v35);
        if ((*v36 - *(v37 - 1)) > (*v37 - *v36))
        {
          ++v35;
        }

        if ((v39 & 3) == 0)
        {
          if (v35 > 9)
          {
            goto LABEL_37;
          }

          *(*(a5 + 16) + (v39 >> 2) - 1) = v35;
          LOBYTE(v35) = 0;
        }

        ++v38;
        ++v36;
        ++v37;
      }

      while (1 - v29 + v38 != 2);
      v40 = *(a5 + 8);
      if (v40 >= 1)
      {
        v41 = 0;
        v42 = *(a5 + 16);
        v43 = 1;
        v44 = *(a5 + 8) & 0x7FFFFFFFLL;
        do
        {
          v45 = *(v42 - 1 + v44);
          if (!v43)
          {
            v45 = dword_26156EC7C[*(v42 - 1 + v44)];
          }

          --v44;
          v41 += v45;
          v43 ^= 1u;
        }

        while ((v44 + 1) > 1);
        HIDWORD(v46) = -858993459 * v41 + 429496728;
        LODWORD(v46) = HIDWORD(v46);
        if ((v46 >> 1) >= 0x19999999)
        {
          v47 = *(v42 + (*(a5 + 8) & 0x7FFFFFFFLL) - 1);
          if (v40 != 1)
          {
            v48 = (v40 - 2);
            v49 = 2;
            do
            {
              if (v49 > 7)
              {
                v49 = 2;
              }

              v47 += v49 * *(v42 + v48--);
              ++v49;
            }

            while (v48 != -1);
          }

          if ((-1171354717 * v47 + 195225786) >= 0x1745D175)
          {
LABEL_37:
            *(a5 + 8) = 0;
            *(a5 + 24) = 0;
            return 2;
          }
        }
      }

      result = 0;
      *(a5 + 24) = 1065353216;
      *(a5 + 80) = 1;
      *(a5 + 84) = v40;
      *(*(a5 + 64) + 20) = a3;
    }
  }

  return result;
}

uint64_t sub_2614C7158(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
  if ((a3 - 1) >= *(result + 8))
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      *(a2 + i) = *(*(result + 16) + i) + 48;
    }
  }

  *(a2 + v3) = 0;
  return result;
}

void sub_2614C74EC(void *a1)
{
  *a1 = &unk_2873D11C0;
  v2 = a1[9];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2614C7584(void *a1)
{
  *a1 = &unk_2873D11C0;
  v2 = a1[9];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_2614C75FC(uint64_t a1)
{
  v2 = a1;
  v1 = (a1 + 88);
  if (atomic_load_explicit(v1, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(v1, &v3, sub_2614C7654);
  }
}

void sub_2614C7654(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  sub_2614C7A4C((*v1 + 16), *(*v1 + 80));
  sub_2614C7A4C((v2 + 40), *(v2 + 80));
  if (*(v2 + 80) >= 1)
  {
    v3 = 0;
    v4 = *(v2 + 16);
    v5 = 1;
    do
    {
      *(v4 + 4 * v3) = v5;
      v5 *= 2;
      v6 = *(v2 + 80);
      if (v5 >= v6)
      {
        v5 = (*(v2 + 84) ^ v5) & (v6 - 1);
      }

      ++v3;
    }

    while (v3 < v6);
    if (v6 >= 2)
    {
      v7 = 0;
      v8 = *(v2 + 40);
      do
      {
        *(v8 + 4 * *(v4 + 4 * v7)) = v7;
        ++v7;
      }

      while (v7 < *(v2 + 80) - 1);
    }
  }

  operator new();
}

void sub_2614C79BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a16)
  {
    sub_2614705CC(a16);
  }

  sub_2614705CC(v16);
  sub_2614705CC(v16);
  MEMORY[0x2667045D0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_2614C7A4C(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_261472B30(v10);
      }

      sub_2614709BC();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

void sub_2614C7B60()
{
  if (atomic_load_explicit(qword_280CB3268, memory_order_acquire) != -1)
  {
    v3[1] = v0;
    v3[2] = v1;
    v2 = v3;
    v3[0] = sub_2614C71A4;
    std::__call_once(qword_280CB3268, &v2, sub_2614AD020);
  }
}

void sub_2614C7BC8(void *a1, uint64_t a2, int a3, int a4)
{
  sub_2614C75FC(a2);
  if (a3 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "Degree must be non-negative");
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  if (a4)
  {
    operator new();
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
  }

  *a1 = v8;
}

uint64_t sub_2614C7E40(uint64_t a1, int a2)
{
  sub_2614C75FC(a1);
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "Cannot calculate the inverse of 0");
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  return *(*(a1 + 16) + 4 * (*(a1 + 80) + ~*(*(a1 + 40) + 4 * a2)));
}

uint64_t sub_2614C7ED4(uint64_t a1, int a2, int a3)
{
  sub_2614C75FC(a1);
  result = 0;
  if (a2)
  {
    if (a3)
    {
      return *(*(a1 + 16) + 4 * ((*(*(a1 + 40) + 4 * a3) + *(*(a1 + 40) + 4 * a2)) % (*(a1 + 80) - 1)));
    }
  }

  return result;
}

uint64_t sub_2614C7F3C(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1A78;
  *(a1 + 16) = 0;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    v7 = *(a1 + 16);
    if (v7)
    {
      sub_2614705CC(v7);
    }
  }

  *(a1 + 16) = v6;
  *(a1 + 32) = 0;
  *(a1 + 24) = &unk_2873D1298;
  *(a1 + 40) = 0;
  v8 = *(a3 + 16);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24) - v9;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "need coefficients");
    *exception = &unk_2873D1808;
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  v11 = v10 >> 2;
  if ((v10 >> 2) < 2 || *v9)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
    v12 = *(a1 + 40);
    if (v12)
    {
      sub_2614705CC(v12);
    }

    *(a1 + 40) = v8;
  }

  else
  {
    v14 = (v10 >> 2) & 0x7FFFFFFF;
    v15 = 1;
    while (!v9[v15])
    {
      if (v14 == ++v15)
      {
        goto LABEL_16;
      }
    }

    if (v15 != v11)
    {
      operator new();
    }

LABEL_16:
    v16 = *a2;
    sub_2614C75FC(*a2);
    v17 = *(v16 + 64);
    if (v17)
    {
      atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
    }

    sub_261483470(&v21, (v17 + 6));
    v18 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(v22 + 2, 1u, memory_order_relaxed);
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      sub_2614705CC(v19);
    }

    *(a1 + 40) = v18;
    v21 = &unk_2873D1298;
    if (v22)
    {
      sub_2614705CC(v22);
    }

    v22 = 0;
    if (v17)
    {
      sub_2614705CC(v17);
    }
  }

  return a1;
}

void sub_2614C823C(_Unwind_Exception *a1)
{
  MEMORY[0x2667045D0](v3, 0x1091C403A844E10);
  v1[3] = v2;
  v5 = v1[5];
  if (v5)
  {
    sub_2614705CC(v5);
  }

  v1[5] = 0;
  v6 = v1[2];
  if (v6)
  {
    sub_2614705CC(v6);
  }

  _Unwind_Resume(a1);
}

void sub_2614C82A0(void *a1)
{
  *a1 = &unk_2873D1A78;
  a1[3] = &unk_2873D1298;
  v2 = a1[5];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[5] = 0;
  v3 = a1[2];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2614C833C(void *a1)
{
  *a1 = &unk_2873D1A78;
  a1[3] = &unk_2873D1298;
  v2 = a1[5];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[5] = 0;
  v3 = a1[2];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  return a1;
}

uint64_t sub_2614C83B8(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 40) + 16);
  v3 = *(*(a1 + 40) + 24) - v2;
  if (!a2)
  {
    return *(*(*(a1 + 40) + 24) - 4);
  }

  v5 = v3 >> 2;
  if (a2 == 1)
  {
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      LODWORD(v6) = 0;
      v7 = (v3 >> 2) & 0x7FFFFFFF;
      do
      {
        v8 = *v2++;
        v6 = v8 ^ v6;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v6 = *v2;
    if (v5 >= 2)
    {
      v10 = (v3 >> 2) & 0x7FFFFFFF;
      v11 = 1;
      do
      {
        v6 = *(*(*(a1 + 40) + 16) + 4 * v11++) ^ sub_2614C7ED4(*(a1 + 16), a2, v6);
      }

      while (v10 != v11);
    }
  }

  return v6;
}

void *sub_2614C8478(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(a2 + 16) != *(*a3 + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "GenericGFPolys do not have same GenericGF field");
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  if (**(*(a2 + 40) + 16))
  {
    if (**(*(v3 + 40) + 16))
    {
      sub_261483470(v12, a2 + 24);
      sub_261483470(&v10, *a3 + 24);
      if (*(v13 + 3) - *(v13 + 2) > *(v11 + 3) - *(v11 + 2))
      {
        sub_261483470(&v8, v12);
        v5 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
        }

        if (v13)
        {
          sub_2614705CC(v13);
        }

        v13 = v5;
        v6 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
        }

        if (v11)
        {
          sub_2614705CC(v11);
        }

        v11 = v6;
        v8 = &unk_2873D1298;
        if (v9)
        {
          sub_2614705CC(v9);
        }
      }

      operator new();
    }

    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    *result = a2;
  }

  else
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    *result = v3;
  }

  return result;
}

void sub_2614C8810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, atomic_uint *a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  if (a11)
  {
    sub_2614705CC(a11);
  }

  if (v21)
  {
    sub_2614705CC(v21);
  }

  MEMORY[0x2667045D0](v22, 0x10E1C405E447FC4);
  if (a15)
  {
    sub_2614705CC(a15);
  }

  if (a18)
  {
    sub_2614705CC(a18);
  }

  if (a21)
  {
    sub_2614705CC(a21);
  }

  _Unwind_Resume(a1);
}

void sub_2614C8914(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 != *(*a3 + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "GenericGFPolys do not have same GenericGF field");
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  if (**(*(a2 + 40) + 16) && **(*(*a3 + 40) + 16))
  {
    sub_261483470(&v9, a2 + 24);
    sub_261483470(&v8, *a3 + 24);
    operator new();
  }

  sub_2614C75FC(*(a2 + 16));
  v6 = *(v3 + 64);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  *a1 = v6;
}

void sub_2614C8C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17, uint64_t a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22, atomic_uint *a23)
{
  if (a13)
  {
    sub_2614705CC(a13);
  }

  if (v23)
  {
    sub_2614705CC(v23);
  }

  MEMORY[0x2667045D0](v24, 0x10E1C405E447FC4);
  if (a17)
  {
    sub_2614705CC(a17);
  }

  if (a20)
  {
    sub_2614705CC(a20);
  }

  if (a23)
  {
    sub_2614705CC(a23);
  }

  _Unwind_Resume(a1);
}

void sub_2614C8D54(void *a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    if (a2)
    {
      atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    }

    *a1 = a2;
  }

  else
  {
    if (a3)
    {
      operator new();
    }

    v4 = *(a2 + 16);
    sub_2614C75FC(v4);
    v5 = *(v4 + 64);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    *a1 = v5;
  }
}

void sub_2614C8F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15)
{
  if (a11)
  {
    sub_2614705CC(a11);
  }

  if (v15)
  {
    sub_2614705CC(v15);
  }

  MEMORY[0x2667045D0](v16, 0x10E1C405E447FC4);
  if (a15)
  {
    sub_2614705CC(a15);
  }

  _Unwind_Resume(a1);
}

void sub_2614CA108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, atomic_uint *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, atomic_uint *a37)
{
  *(v39 - 112) = v38;
  v41 = *(v39 - 96);
  if (v41)
  {
    sub_2614705CC(v41);
  }

  *(v39 - 96) = 0;
  if (v37)
  {
    sub_2614705CC(v37);
  }

  *(v39 - 112) = &a27;
  sub_261480A80((v39 - 112));
  if (a30)
  {
    sub_2614705CC(a30);
  }

  sub_2614705CC(a12);
  a35 = a13;
  if (a37)
  {
    sub_2614705CC(a37);
  }

  sub_2614705CC(a16);
  _Unwind_Resume(a1);
}

void sub_2614CA614(std::exception *a1)
{
  sub_2614EB578(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614CA650(uint64_t a1, char *a2)
{
  result = sub_2614EB5DC(a1, a2);
  *result = &unk_2873D18E8;
  return result;
}

void MRCSegmentationMaskGetEstimatedRegionOfInterest(uint64_t *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  sub_26149B6A0(cf + 2);
}

BOOL MRCSegmentationMaskWritePGMToFile(const void *a1, const __CFURL *a2)
{
  v2 = 0;
  v30 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    Data = MRCSegmentationMaskGetData(a1);
    DataType = MRCSegmentationMaskGetDataType(a1);
    Width = MRCSegmentationMaskGetWidth(a1);
    Height = MRCSegmentationMaskGetHeight(a1);
    BytesPerRow = MRCSegmentationMaskGetBytesPerRow(a1);
    if (DataType == 1 && (v9 = BytesPerRow, CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024)))
    {
      sub_2614CAC08(&v26);
      if ((v27[*(v26 - 24) + 24] & 5) != 0)
      {
        v2 = 0;
      }

      else
      {
        sub_26148EA44(&v26, "P2", 2);
        std::ios_base::getloc(&v27[*(v26 - 24) - 8]);
        v10 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
        (v10->__vftable[2].~facet_0)(v10, 10);
        std::locale::~locale(&v25);
        std::ostream::put();
        std::ostream::flush();
        v11 = MEMORY[0x266704420](&v26, Width);
        v12 = sub_26148EA44(v11, " ", 1);
        v13 = MEMORY[0x266704420](v12, Height);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v25);
        std::ostream::put();
        std::ostream::flush();
        v15 = MEMORY[0x266704420](&v26, 255);
        std::ios_base::getloc((v15 + *(*v15 - 24)));
        v16 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(&v25);
        std::ostream::put();
        std::ostream::flush();
        if (Height)
        {
          v17 = 0;
          v18 = MEMORY[0x277D82680];
          do
          {
            v19 = Data;
            for (i = Width; i; --i)
            {
              v21 = MEMORY[0x266704420](&v26, (*v19 * 255.0));
              sub_26148EA44(v21, " ", 1);
              ++v19;
            }

            std::ios_base::getloc(&v27[*(v26 - 24) - 8]);
            v22 = std::locale::use_facet(&v25, v18);
            (v22->__vftable[2].~facet_0)(v22, 10);
            std::locale::~locale(&v25);
            std::ostream::put();
            std::ostream::flush();
            ++v17;
            Data += v9;
          }

          while (v17 != Height);
        }

        v2 = (v27[*(v26 - 24) + 24] & 5) == 0;
      }

      v26 = *MEMORY[0x277D82810];
      *&v27[*(v26 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
      MEMORY[0x266704380](v27);
      std::ostream::~ostream();
      MEMORY[0x266704550](&v28);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_2614CABBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a11);
  sub_2614CADBC(&a12);
  MEMORY[0x266704550](&a64);
  _Unwind_Resume(a1);
}

uint64_t *sub_2614CAC08(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x266704370](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2614CAD84(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x266704550](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2614CADBC(void *a1)
{
  v1 = MEMORY[0x277D82810];
  v2 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x266704380](a1 + 1);

  return std::ostream::~ostream();
}

CGImageRef MRCSegmentationMaskCreateJetColorMapImage(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Data = MRCSegmentationMaskGetData(a1);
  DataType = MRCSegmentationMaskGetDataType(a1);
  Width = MRCSegmentationMaskGetWidth(a1);
  Height = MRCSegmentationMaskGetHeight(a1);
  BytesPerRow = MRCSegmentationMaskGetBytesPerRow(a1);
  if (DataType != 1)
  {
    return 0;
  }

  v7 = BytesPerRow;
  v8 = (4 * (Width & 0x7FFFFFFFFFFFFFFLL) + 15) & 0x3FFFFFFFFFFFFFF0;
  v9 = malloc_type_malloc(v8 * Height, 0x100004077774924uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_2614CB028;
  block[3] = &unk_279AD8D80;
  block[4] = Data;
  block[5] = v7;
  block[6] = v9;
  block[7] = v8;
  block[8] = Width;
  dispatch_apply(Height, 0, block);
  v10 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v9, v8 * Height, *MEMORY[0x277CBECF0]);
  v11 = CGDataProviderCreateWithCFData(v10);
  CFRelease(v10);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, v8, DeviceRGB, 0x2002u, v11, 0, 0, kCGRenderingIntentDefault);
  CGColorSpaceRelease(DeviceRGB);
  CGDataProviderRelease(v11);
  return v13;
}

void *sub_2614CB028(void *result, uint64_t a2)
{
  if (result[8])
  {
    v2 = 0;
    v3 = result[4] + result[5] * a2;
    v4 = result[6] + result[7] * a2;
    do
    {
      v5 = *(v3 + 4 * v2);
      *(v4 + 4 * v2 + 3) = -1;
      v6 = v5;
      v7 = 5;
      v8 = &unk_26156ECF0;
      do
      {
        v9 = v7 >> 1;
        v10 = &v8[3 * (v7 >> 1)];
        v12 = *v10;
        v11 = v10 + 3;
        v7 += ~(v7 >> 1);
        if (v12 > v6)
        {
          v7 = v9;
        }

        else
        {
          v8 = v11;
        }
      }

      while (v7);
      if (v8 == &unk_26156ECF0)
      {
        LOBYTE(v13) = 0;
      }

      else if (v8 == &unk_26156ED68)
      {
        LOBYTE(v13) = 127;
      }

      else
      {
        v13 = ((*(v8 - 1) + (v8[1] - *(v8 - 1)) * ((v6 - *(v8 - 3)) / (*v8 - *(v8 - 3)))) * 255.0);
      }

      v14 = 6;
      v15 = &unk_26156ED68;
      do
      {
        v16 = v14 >> 1;
        v17 = &v15[3 * (v14 >> 1)];
        v19 = *v17;
        v18 = v17 + 3;
        v14 += ~(v14 >> 1);
        if (v19 > v6)
        {
          v14 = v16;
        }

        else
        {
          v15 = v18;
        }
      }

      while (v14);
      if (v15 == &unk_26156ED68 || v15 == &unk_26156EDF8)
      {
        LOBYTE(v21) = 0;
      }

      else
      {
        v21 = ((*(v15 - 1) + (v15[1] - *(v15 - 1)) * ((v6 - *(v15 - 3)) / (*v15 - *(v15 - 3)))) * 255.0);
      }

      v22 = 5;
      v23 = &unk_26156EDF8;
      do
      {
        v24 = v22 >> 1;
        v25 = &v23[3 * (v22 >> 1)];
        v27 = *v25;
        v26 = v25 + 3;
        v22 += ~(v22 >> 1);
        if (v27 > v6)
        {
          v22 = v24;
        }

        else
        {
          v23 = v26;
        }
      }

      while (v22);
      if (v23 == &unk_26156EDF8)
      {
        LOBYTE(v28) = 127;
      }

      else if (v23 == "N5zxing6StringE")
      {
        LOBYTE(v28) = 0;
      }

      else
      {
        v28 = ((*(v23 - 1) + (v23[1] - *(v23 - 1)) * ((v6 - *(v23 - 3)) / (*v23 - *(v23 - 3)))) * 255.0);
      }

      *(v4 + ((4 * v2) | 2)) = v13;
      *(v4 + ((4 * v2) | 1)) = v21;
      *(v4 + 4 * v2++) = v28;
    }

    while (v2 < result[8]);
  }

  return result;
}

void sub_2614CB230(uint64_t a1)
{
  *a1 = &unk_2873D1588;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614CB2A0(uint64_t a1)
{
  *a1 = &unk_2873D1588;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

float sub_2614CB2F0(float *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    v5 = 0;
    v6 = v4 >> 2;
    do
    {
      v7 = (v2 + 4 * v5);
      v8 = *v7;
      v9 = v7[1];
      *v7 = ((((a1[3] + (a1[4] * *v7)) + (a1[5] * v9)) + ((*v7 * a1[6]) * *v7)) + ((*v7 * a1[7]) * v9)) + ((v9 * a1[8]) * v9);
      result = ((((a1[9] + (a1[10] * v8)) + (a1[11] * v9)) + ((v8 * a1[12]) * v8)) + ((v8 * a1[13]) * v9)) + ((v9 * a1[14]) * v9);
      v7[1] = result;
      v5 += 2;
    }

    while (v6 > v5);
  }

  return result;
}

uint64_t sub_2614CB394(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != a2[1] || *a3 != a3[1])
  {
    if (a1)
    {
      atomic_fetch_add_explicit((a1 + 8), 1u, memory_order_relaxed);
      sub_2614CB41C();
    }

    sub_2614CB41C();
  }

  return 1;
}

void sub_2614CB764(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_261470E34(a1);
}

void sub_2614CB770(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 144);
  if (v3)
  {
    goto LABEL_11;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2614CBA5C;
  v14[3] = &unk_279AD8DA0;
  v14[4] = a1;
  v15 = v14;
  v17[0] = &unk_2873D0D50;
  v17[1] = &v15;
  v17[3] = v17;
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 128);
    sub_2614CBBD8(v20, v17);
    sub_2614CBC70(v5, v20);
    sub_2614CC1E0(v20);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v18 = @"_MRCContextOptionIsOneShot";
    v19 = MEMORY[0x277CBEC38];
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, &v19, &v18, 1);
    v16 = MRCContextCreateWithOptions(v8);
    explicit = atomic_load_explicit(&v16, memory_order_acquire);
    if (explicit)
    {
      v10 = CFGetTypeID(explicit);
      if (qword_280CB34E0 != -1)
      {
        v13 = v10;
        dispatch_once_f(&qword_280CB34E0, 0, sub_26147CA1C);
        v10 = v13;
      }

      if (v10 != qword_280CB35D8)
      {
        _os_assumes_log();
      }
    }

    sub_2614CBBD8(v20, v17);
    sub_2614CBC70(explicit + 16, v20);
    sub_2614CC1E0(v20);
    sub_2614CC260(&v16);

    objc_autoreleasePoolPop(v6);
  }

  sub_2614CC1E0(v17);

  v3 = *(a1 + 144);
  if (v3)
  {
LABEL_11:
    *a2 = 0;
  }

  else
  {
    sub_2614CDE10(a1, v20);
    v11 = v20[0];
    if (v20[0])
    {
      atomic_fetch_add_explicit(v20[0] + 2, 1u, memory_order_relaxed);
    }

    v12 = *(a1 + 144);
    if (v12)
    {
      sub_2614705CC(v12);
    }

    *(a1 + 144) = v11;
    if (!v11)
    {
      v3 = 0;
      *a2 = 0;
      goto LABEL_13;
    }

    sub_2614705CC(v11);
    v3 = *(a1 + 144);
    *a2 = 0;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
LABEL_13:
  *a2 = v3;
}

void sub_2614CB9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  sub_2614CC1E0(v10 - 88);
  sub_2614CC260(va);

  sub_2614CC1E0(va1);
  _Unwind_Resume(a1);
}

void sub_2614CBA5C(uint64_t a1, void *a2)
{
  if (objc_msgSend_newTextureByBinarizingPixelBuffer_error_(a2, a2, *(*(a1 + 32) + 88), 0))
  {
    operator new();
  }
}

void sub_2614CBBA8(_Unwind_Exception *a1)
{
  MEMORY[0x2667045D0](v2, 0x1091C409401DBA8);

  _Unwind_Resume(a1);
}

uint64_t sub_2614CBBD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_2614CBC70(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v2 = (a2 + 24);
  if (!*(a2 + 24))
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  v5 = sub_26149DF64((a1 + 24), &unk_26156EEC0);
  if (!v5)
  {
    v10[0] = &unk_26156EEC0;
    v10[1] = v10;
    v10[2] = "MetalHybridBinarizerContext";
    v10[3] = 27;
    operator new();
  }

  if (v5[3] != &unk_26156EEC0)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_26:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v6 = v5[6];
  if (!v6)
  {
    goto LABEL_26;
  }

  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 8));
  if (!v8)
  {
    v16[0] = 0;
    sub_261500FD8(v13, -1, 0);
    sub_26150122C(context, v13);
    v15 = 1;
    if (!*v2)
    {
      sub_261477FC4();
    }

    (*(**v2 + 48))(*v2, v16, context);
    if (v15 == 1)
    {
      sub_261501098(context);
    }

    sub_261501098(v13);
    sub_26148D890(v16);
    if (v7)
    {
      goto LABEL_23;
    }

    return;
  }

  v9 = *v2;
  if (!*v2)
  {
    v2 = &v12;
    goto LABEL_18;
  }

  if (v9 != a2)
  {
    v12 = *v2;
LABEL_18:
    *v2 = 0;
    goto LABEL_20;
  }

  v12 = v11;
  (*(*v9 + 24))(v9, v11);
LABEL_20:
  if (v12)
  {
    context[0] = &unk_2873D0CF8;
    context[1] = v8;
    context[2] = v11;
    context[3] = context;
    dispatch_barrier_async_and_wait_f(*(v8 + 8), context, sub_2614CC334);
    sub_261477CFC(context);
  }

  sub_2614CC1E0(v11);
  if (v7)
  {
LABEL_23:
    sub_26149E780(v7);
  }
}

void sub_2614CC0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614CC1E0(uint64_t a1)
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

atomic_ullong *sub_2614CC260(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_2614CC294(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 192) == 1)
    {
      sub_261501098((v2 + 96));
    }

    sub_26148D890((v2 + 88));
    sub_26148D890((v2 + 40));
    sub_26148D890((v2 + 32));
    v3 = *(v2 + 8);
    *v2 = &unk_2873D1F28;
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(v2 + 16))();
    }

    MEMORY[0x2667045D0](v2, 0x10E1C404D37DDCCLL);
  }

  return a1;
}

uint64_t sub_2614CC334(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_2614CC388(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN6quagga12_GLOBAL__N_127MetalHybridBinarizerContext7performENSt3__18functionIFvRKN3mrc5CFRefIPKvEEONS2_8optionalINS4_5ErrorEEEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_2614CC3C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 192) == 1)
  {
    v3 = *(a1 + 16);
    v43[0] = 0;
    sub_2615010E4(v44, v2 + 96);
    v45 = 1;
    v4 = *(v3 + 24);
    if (!v4)
    {
      sub_261477FC4();
    }

    (*(*v4 + 48))(v4, v43, v44);
    if (v45 == 1)
    {
      sub_261501098(v44);
    }

    v5 = v43;
    return sub_26148D890(v5);
  }

  v6 = (v2 + 88);
  if (!atomic_load_explicit((v2 + 88), memory_order_acquire))
  {
    v7 = objc_autoreleasePoolPush();
    sub_261525508(v44, v2 + 24);
    v8 = atomic_load_explicit(v44, memory_order_acquire);
    sub_26148D890(v44);
    v9 = [_MRCMetalContext alloc];
    v44[0] = 0;
    v11 = objc_msgSend_initWithDevice_libraryURL_error_(v9, v10, v8, 0, v44);
    v12 = v44[0];
    v15 = v12;
    if (v11)
    {
      HIDWORD(v17) = *(v2 + 48) - 9;
      LODWORD(v17) = HIDWORD(v17);
      v16 = v17 >> 2;
      if (v16 <= 6 && ((0x22u >> v16) & 1) == 0)
      {
        v19 = objc_msgSend_commandQueue(v11, v13, v14);
        v20 = *(v2 + 48) - 9;
        HIDWORD(v22) = v20;
        LODWORD(v22) = v20;
        v21 = v22 >> 2;
        v23 = v21 > 6;
        v24 = (1 << v21) & 0x5D;
        if (v23 || v24 == 0)
        {
          v20 = qos_class_self() - 9;
        }

        HIDWORD(v27) = v20;
        LODWORD(v27) = v20;
        v26 = v27 >> 2;
        if (v26 <= 2)
        {
          v28 = 2;
          objc_msgSend_setGPUPriority_(v19, v18, 2);
        }

        else if (v26 == 3)
        {
          v28 = 1;
          objc_msgSend_setGPUPriority_(v19, v18, 1);
        }

        else
        {
          v28 = 4;
          objc_msgSend_setGPUPriority_(v19, v18, 4);
        }

        objc_msgSend_setBackgroundGPUPriority_(v19, v29, v28);
      }

      v31 = [_MRCMetalHybridBinarizer alloc];
      v46 = v15;
      v33 = objc_msgSend_initWithMetalContext_error_(v31, v32, v11, &v46);
      v30 = v46;

      v34 = v33;
      v43[0] = v34;
      v35 = atomic_exchange(v6, atomic_exchange(v43, 0));
      if (v35)
      {
        CFRelease(v35);
      }

      sub_26148D890(v43);
    }

    else
    {
      v30 = v12;
    }

    if (v30)
    {
      v44[0] = CFRetain(v30);
      if (*(v2 + 192) == 1)
      {
        sub_261501098((v2 + 96));
      }

      *(v2 + 160) = 0u;
      *(v2 + 128) = 0u;
      *(v2 + 144) = 0u;
      *(v2 + 112) = 0u;
      *(v2 + 96) = -1;
      *(v2 + 104) = 0;
      *(v2 + 176) = 0u;
      *(v2 + 192) = 1;
      v36 = atomic_exchange((v2 + 160), atomic_exchange(v44, 0));
      if (v36)
      {
        CFRelease(v36);
      }

      sub_261476C54(v44);
    }

    objc_autoreleasePoolPop(v7);
  }

  explicit = atomic_load_explicit(v6, memory_order_acquire);
  v38 = *(a1 + 16);
  if (!explicit)
  {
    v46 = 0;
    v41 = *(v2 + 192);
    if (v41 == 1)
    {
      sub_2615010E4(v44, v2 + 96);
    }

    else
    {
      sub_261500FD8(v43, -1, 0);
      sub_26150122C(v44, v43);
    }

    v45 = 1;
    v42 = *(v38 + 24);
    if (!v42)
    {
      sub_261477FC4();
    }

    (*(*v42 + 48))(v42, &v46, v44);
    if (v45 == 1)
    {
      sub_261501098(v44);
    }

    if ((v41 & 1) == 0)
    {
      sub_261501098(v43);
    }

    v5 = &v46;
    return sub_26148D890(v5);
  }

  LOBYTE(v44[0]) = 0;
  v45 = 0;
  v39 = *(v38 + 24);
  if (!v39)
  {
    sub_261477FC4();
  }

  result = (*(*v39 + 48))(v39, v2 + 88, v44);
  if (v45 == 1)
  {
    return sub_261501098(v44);
  }

  return result;
}

__n128 sub_2614CC89C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D0CF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2614CC944(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7Context3Any4makeIN6quagga12_GLOBAL__N_127MetalHybridBinarizerContextEvEES1_RKNS0_7OptionsEP16dispatch_queue_sEUlPvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614CC980(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 8);
    if (v2)
    {
      sub_26149E780(v2);
    }

    JUMPOUT(0x2667045D0);
  }
}

uint64_t sub_2614CCA6C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "NSt3__110shared_ptrIN6quagga12_GLOBAL__N_127MetalHybridBinarizerContextEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614CCAA4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 192) == 1)
    {
      sub_261501098((v1 + 96));
    }

    sub_26148D890((v1 + 88));
    sub_26148D890((v1 + 40));
    sub_26148D890((v1 + 32));
    v2 = *(v1 + 8);
    *v1 = &unk_2873D1F28;
    *(v1 + 8) = 0;
    if (v2)
    {
      (*(v1 + 16))();
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

void sub_2614CCB50(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_2614CCB8C(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    sub_261501098((a1 + 96));
  }

  sub_26148D890((a1 + 88));
  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1F28;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614CCC28(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    sub_261501098((a1 + 96));
  }

  sub_26148D890((a1 + 88));
  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1F28;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

void sub_2614CCCA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1F28;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614CCD14(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1F28;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

uint64_t sub_2614CCD70(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN6quagga12_GLOBAL__N_118performWithContextERKNSt3__18optionalINS1_17reference_wrapperIN3mrc7ContextEEEEEU13block_pointerFvP24_MRCMetalHybridBinarizerEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614CCDAC(uint64_t a1, atomic_ullong *a2)
{
  v4 = objc_autoreleasePoolPush();
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  v6 = **(a1 + 8);
  if (explicit)
  {
    v7 = atomic_load_explicit(a2, memory_order_acquire);
  }

  else
  {
    v7 = 0;
  }

  (*(v6 + 16))(v6, v7);

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_2614CCE24(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D0D50;
  a2[1] = v2;
  return result;
}

void sub_2614CCEB8(uint64_t a1)
{
  sub_2614CCEF0(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614CCEF0(uint64_t a1)
{
  *a1 = &unk_2873D1170;
  CVPixelBufferRelease(*(a1 + 88));
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return sub_2614CF10C(a1);
}

atomic_ullong *sub_2614CCF5C@<X0>(uint64_t a1@<X0>, CFErrorRef *a2@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  LOBYTE(v4[0]) = 0;
  v5 = 0;
  v6[0] = &unk_2873CF7A0;
  v6[1] = v4;
  v6[3] = v6;
  sub_2614CBC70(a1, v6);
  result = sub_2614CC1E0(v6);
  if (v5 == 1)
  {
    result = sub_261501518(a2, v4);
    if (v5)
    {
      return sub_261501098(v4);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2614CD020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    sub_261501098(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614CD05C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN6quagga20MetalHybridBinarizer19preflightForContextERN3mrc7ContextEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614CD098(uint64_t result, atomic_ullong *a2, uint64_t a3)
{
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    return sub_261477470(*(result + 8), a3);
  }

  return result;
}

uint64_t sub_2614CD0B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873CF7A0;
  a2[1] = v2;
  return result;
}

std::string *sub_2614CD14C(std::string *a1, const std::string::value_type *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x266704AD0]("UTF-8", a3);
  if (v6 == -1)
  {
    if (qword_27FEB4220 != -1)
    {
      dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
    }

    v18 = qword_27FEB4218;
    if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
    {
      v24 = *__error();
      *__len = 136446722;
      *&__len[4] = "UTF-8";
      v29 = 2082;
      v30 = a3;
      v31 = 1026;
      v32 = v24;
      _os_log_error_impl(&dword_26146F000, v18, OS_LOG_TYPE_ERROR, "[ZXing] iconv_open(%{public}s, %{public}s) failed: %{public, errno}d", __len, 0x1Cu);
    }

    v19 = a2[23];
    if (v19 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 1);
    }

    return std::string::append(a1, v20, v21);
  }

  else
  {
    v7 = v6;
    v8 = a2[23];
    if (v8 < 0)
    {
      v8 = *(a2 + 1);
    }

    v27 = v8;
    *__len = 4 * v8;
    v9 = malloc_type_malloc((4 * v8) | 1, 0x100004077774924uLL);
    v10 = v9;
    if (a2[23] >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    v25 = v11;
    __src = v9;
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && v8 != 0)
    {
      while (1)
      {
        while (1)
        {
          v15 = __src;
          v16 = MEMORY[0x266704AB0](v7, &v25, &v27, &__src, __len);
          if (__src - v15 >= 1)
          {
            std::string::append(a1, v10, __src - v15);
          }

          if (v16 == -1)
          {
            break;
          }

          v8 = v27;
          if (!v27)
          {
            goto LABEL_15;
          }
        }

        if (*__error() != 7)
        {
          if (qword_27FEB4220 != -1)
          {
            dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
          }

          v22 = qword_27FEB4218;
          if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_43;
          }

          goto LABEL_15;
        }

        v17 = v27;
        if (v8 == v27)
        {
          break;
        }

        memmove(v10, __src, *__len);
        __src = v10;
        v8 = v17;
        if (!v17)
        {
          goto LABEL_15;
        }
      }

      if (qword_27FEB4220 != -1)
      {
        dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
      }

      v22 = qword_27FEB4218;
      if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
      {
LABEL_43:
        v23 = *__error();
        *buf = 67240192;
        v34 = v23;
        _os_log_error_impl(&dword_26146F000, v22, OS_LOG_TYPE_ERROR, "[ZXing] iconv failed: %{public, errno}d", buf, 8u);
      }
    }

LABEL_15:
    free(v10);
    return MEMORY[0x266704AC0](v7);
  }
}

void sub_2614CD528(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_2614705CC(v3);
  }

  MEMORY[0x2667045D0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_2614CD54C(void *a1, atomic_uint **a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
    v5 = v4;
    sub_261497D08(a1, &v5);
    sub_2614705CC(v4);
  }

  else
  {
    v5 = 0;
    sub_261497D08(a1, &v5);
  }

  *a1 = &unk_2873D1960;
  a1[3] = 0;
  (*(**a2 + 16))();
  (*(**a2 + 24))();
  operator new[]();
}

void sub_2614CD664(_Unwind_Exception *exception_object)
{
  v3 = v1[3];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  *v1 = &unk_2873D1248;
  v4 = v1[2];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614CD6A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 24);
  if (!v3)
  {
    v4 = *(result + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
    }

    (*(*v4 + 16))(v4);
    (*(*v4 + 24))(v4);
    operator new();
  }

  atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  *a2 = v3;
  return result;
}

void sub_2614CDBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  sub_2614705CC(v13);
  sub_2614705CC(a13);
  _Unwind_Resume(a1);
}

void sub_2614CDBF4(void *a1)
{
  sub_2614CDC2C(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614CDC2C(void *a1)
{
  *a1 = &unk_2873D1960;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x2667045B0](v2, 0x1000C8052888210);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  *a1 = &unk_2873D1248;
  v4 = a1[2];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  return a1;
}

void sub_2614CDD64(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_2614705CC(v3);
  }

  MEMORY[0x2667045D0](v2, v1);
  _Unwind_Resume(a1);
}

void *sub_2614CDD88(void *a1, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  sub_2614C27EC(a1, a2);
  if (a2)
  {
    sub_2614705CC(a2);
  }

  *a1 = &unk_2873D1FC0;
  a1[10] = 0;
  return a1;
}

void sub_2614CDDF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_2614CDE10@<X0>(atomic_uint *result@<X0>, atomic_uint **a2@<X8>)
{
  v3 = *(result + 10);
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
    *a2 = v3;
  }

  else
  {
    v4 = result;
    v5 = *(result + 2);
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
    }

    v6 = (*(*v5 + 48))(v5);
    v7 = (*(*v5 + 16))(v5);
    v8 = (*(*v5 + 24))(v5);
    v9 = (*(*v5 + 32))(v5);
    *a2 = 0;
    if ((v9 & 7) == 0 && (v6 & 7) == 0 && v7 >= 0x18 && v8 > 0x17)
    {
      operator new();
    }

    sub_2614C2880(v4, &v15);
    v13 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 2, 1u, memory_order_relaxed);
      sub_2614705CC(v13);
      *a2 = v13;
      atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
    }

    else
    {
      *a2 = 0;
    }

    v14 = *(v4 + 10);
    if (v14)
    {
      sub_2614705CC(v14);
    }

    *(v4 + 10) = v13;

    return sub_2614705CC(v5);
  }

  return result;
}

void sub_2614CF078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, atomic_uint *a17)
{
  sub_2614705CC(a17);
  sub_2614705CC(a15);
  _Unwind_Resume(a1);
}

void sub_2614CF0D4(void *a1)
{
  sub_2614CF10C(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614CF10C(void *a1)
{
  *a1 = &unk_2873D1FC0;
  v2 = a1[10];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return sub_2614C2EB4(a1);
}

uint64_t sub_2614CF16C(uint64_t *a1, int a2, std::string *a3)
{
  v11[0] = a2;
  v11[1] = 0;
  memset(&v7, 0, sizeof(v7));
  sub_2614CF254(v8, v11, a1, &v7);
  if ((v10 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a3, v4, v5);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_2614CF200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2614CF1F0);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614CF254(uint64_t a1, int *a2, uint64_t *a3, std::string *this)
{
  while (1)
  {
    v8 = *a2;
    v7 = a2[1];
    switch(v7)
    {
      case 3:
        v9 = v8 + 5;
        v21 = *a3;
        v22 = *(a3 + 2) - *a3;
        if (v8 + 5 > v22)
        {
          goto LABEL_37;
        }

        v23 = *a2;
        while (1)
        {
          v24 = v22 - v23;
          v25 = v22 - v23 >= 5 ? 5 : v22 - v23;
          if (v24 < 1)
          {
            break;
          }

          v26 = 0;
          v27 = (v21 + v23);
          v28 = v27;
          do
          {
            v29 = v26;
            v30 = *v28++;
            v26 = (v30 != 0) | (2 * v26);
            --v25;
          }

          while (v25);
          if ((2 * v29) <= 0x19)
          {
            goto LABEL_35;
          }

          if (v26 == 31)
          {
LABEL_182:
            *a2 = v9;
            goto LABEL_184;
          }

          v31 = v23 + 6;
          if (v23 + 6 > v22)
          {
            goto LABEL_37;
          }

          v32 = 0;
          v33 = v24 >= 6 ? 6 : v24;
          do
          {
            v34 = v32;
            v35 = *v27++;
            v32 = (v35 != 0) | (2 * v32);
            --v33;
          }

          while (v33);
          if ((2 * v34 - 52) > 9)
          {
            goto LABEL_37;
          }

          v36 = v32 - 4;
          *a2 = v31;
          if (v36 == 36)
          {
            goto LABEL_184;
          }

LABEL_36:
          std::string::push_back(this, v36);
          v23 = *a2;
          v9 = *a2 + 5;
          v21 = *a3;
          v22 = *(a3 + 2) - *a3;
          if (v9 > v22)
          {
            goto LABEL_37;
          }
        }

        LOBYTE(v26) = 0;
LABEL_35:
        v36 = v26 + 65;
        *a2 = v9;
        goto LABEL_36;
      case 2:
        v16 = v8 + 5;
        v17 = *a3;
        v18 = a3[1];
        v19 = v18 - *a3;
        v20 = *a2;
        if (v8 + 5 <= v19)
        {
          while (1)
          {
            v64 = v19 - v20;
            if (v19 - v20 >= 5)
            {
              v65 = 5;
            }

            else
            {
              v65 = v19 - v20;
            }

            if (v64 < 1)
            {
              goto LABEL_11;
            }

            v66 = 0;
            v67 = (v17 + v20);
            v68 = v65;
            v69 = v67;
            do
            {
              v70 = *v69++;
              v66 = (v70 != 0) | (2 * v66);
              --v68;
            }

            while (v68);
            if ((v66 - 5) >= 0xB)
            {
              if (v20 + 7 > v19)
              {
                goto LABEL_11;
              }

              v71 = 0;
              v72 = v64 >= 7 ? 7 : v19 - v20;
              v73 = (v17 + v20);
              do
              {
                v74 = v71;
                v75 = *v73++;
                v71 = (v75 != 0) | (2 * v71);
                --v72;
              }

              while (v72);
              if ((2 * v74 - 64) >= 0x34)
              {
                if (v20 + 8 > v19)
                {
                  goto LABEL_11;
                }

                v76 = 0;
                v77 = v64 >= 8 ? 8 : v19 - v20;
                v78 = (v17 + v20);
                do
                {
                  v79 = *v78++;
                  v76 = (v79 != 0) | (2 * v76);
                  --v77;
                }

                while (v77);
                if ((v76 - 232) > 0x14)
                {
                  goto LABEL_11;
                }
              }
            }

            v80 = 0;
            v81 = (v17 + v20);
            do
            {
              v82 = *v81++;
              v80 = (v82 != 0) | (2 * v80);
              --v65;
            }

            while (v65);
            if (v80 == 15)
            {
              break;
            }

            if ((v80 - 5) > 9)
            {
              v84 = 0;
              if (v64 >= 7)
              {
                v85 = 7;
              }

              else
              {
                v85 = v64;
              }

              v86 = (v17 + v20);
              do
              {
                v87 = v84;
                v88 = *v86++;
                v84 = (v88 != 0) | (2 * v84);
                --v85;
              }

              while (v85);
              if ((2 * v87 - 64) > 0x19)
              {
                if ((2 * v87 - 90) > 0x19)
                {
                  LODWORD(v90) = 0;
                  if (v64 >= 8)
                  {
                    v64 = 8;
                  }

                  do
                  {
                    v91 = *v67++;
                    v90 = (v91 != 0) | (2 * v90);
                    --v64;
                  }

                  while (v64);
                  if ((v90 - 253) <= 0xFFFFFFEA)
                  {
                    exception = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x266704230](exception, "Decoding invalid ISO-IEC-646 value");
LABEL_213:
                    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  v83 = asc_261587EA5[v90 - 232];
                  v89 = v20 + 8;
                }

                else
                {
                  v89 = v20 + 7;
                  v83 = v84 + 7;
                }
              }

              else
              {
                v89 = v20 + 7;
                v83 = v84 + 1;
              }

              *a2 = v89;
              if (v83 == 36)
              {
                goto LABEL_184;
              }
            }

            else
            {
              v83 = v80 + 43;
              *a2 = v16;
            }

            std::string::push_back(this, v83);
            v20 = *a2;
            v16 = *a2 + 5;
            v17 = *a3;
            v18 = a3[1];
            v19 = v18 - *a3;
            if (v16 > v19)
            {
              goto LABEL_11;
            }
          }

          *a2 = v16;
LABEL_184:
          std::string::push_back(this, 29);
          a2[1] = 0;
          v63 = *a2;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            sub_261480F94(&__dst, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = *this;
          }

          v37 = __dst.__r_.__value_.__r.__words[0];
          v38 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
LABEL_177:
          v48 = -1;
          goto LABEL_178;
        }

LABEL_11:
        v14 = v20 + 3;
        if (v20 + 3 <= v19)
        {
          v112 = 0;
          do
          {
            if (*(v17 + v20 + v112))
            {
              goto LABEL_12;
            }

            ++v112;
          }

          while (v112 != 3);
LABEL_174:
          v15 = 0;
          goto LABEL_175;
        }

LABEL_12:
        if (sub_2614CFC7C(v17, v18, v20))
        {
          v14 = *a2 + 5;
          if (v14 >= *(a3 + 2) - *a3)
          {
            v14 = *(a3 + 2) - *a3;
          }

          v15 = 1;
          goto LABEL_175;
        }

LABEL_37:
        v37 = 0;
        v38 = 0;
LABEL_176:
        v63 = 0x7FFFFFFF;
        goto LABEL_177;
      case 1:
        v9 = v8 + 5;
        v10 = *a3;
        v11 = a3[1];
        v12 = v11 - *a3;
        v13 = *a2;
        if (v8 + 5 <= v12)
        {
          do
          {
            v92 = v12 - v13;
            if (v12 - v13 >= 5)
            {
              v93 = 5;
            }

            else
            {
              v93 = v12 - v13;
            }

            if (v92 < 1)
            {
              break;
            }

            v94 = 0;
            v95 = (v10 + v13);
            v96 = v93;
            v97 = v95;
            do
            {
              v98 = *v97++;
              v94 = (v98 != 0) | (2 * v94);
              --v96;
            }

            while (v96);
            if ((v94 - 5) >= 0xB)
            {
              if (v13 + 6 > v12)
              {
                break;
              }

              v99 = 0;
              v100 = v92 >= 6 ? 6 : v12 - v13;
              v101 = (v10 + v13);
              do
              {
                v102 = *v101++;
                v99 = (v102 != 0) | (2 * v99);
                --v100;
              }

              while (v100);
              if ((v99 - 16) > 0x2E)
              {
                break;
              }
            }

            v103 = 0;
            v104 = (v10 + v13);
            do
            {
              v105 = *v104++;
              v103 = (v105 != 0) | (2 * v103);
              --v93;
            }

            while (v93);
            if (v103 == 15)
            {
              goto LABEL_182;
            }

            if ((v103 - 5) > 9)
            {
              LODWORD(v107) = 0;
              if (v92 >= 6)
              {
                v108 = 6;
              }

              else
              {
                v108 = v92;
              }

              do
              {
                v109 = v107;
                v110 = *v95++;
                v107 = (v110 != 0) | (2 * v107);
                --v108;
              }

              while (v108);
              if ((2 * v109 - 32) > 0x19)
              {
                if ((v107 - 63) <= 0xFFFFFFFA)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x266704230](exception, "Decoding invalid alphanumeric value");
                  goto LABEL_213;
                }

                v106 = asc_261587E7C[v107 - 58];
              }

              else
              {
                v106 = v107 + 33;
              }

              *a2 = v13 + 6;
              if (v106 == 36)
              {
                goto LABEL_184;
              }
            }

            else
            {
              v106 = v103 + 43;
              *a2 = v9;
            }

            std::string::push_back(this, v106);
            v13 = *a2;
            v9 = *a2 + 5;
            v10 = *a3;
            v11 = a3[1];
            v12 = v11 - *a3;
          }

          while (v9 <= v12);
        }

        v14 = v13 + 3;
        if (v13 + 3 <= v12)
        {
          v111 = 0;
          while (!*(v10 + v13 + v111))
          {
            if (++v111 == 3)
            {
              goto LABEL_174;
            }
          }
        }

        if (sub_2614CFC7C(v10, v11, v13))
        {
          v14 = *a2 + 5;
          if (v14 >= *(a3 + 2) - *a3)
          {
            v14 = *(a3 + 2) - *a3;
          }

          v15 = 2;
LABEL_175:
          v37 = 0;
          v38 = 0;
          *a2 = v14;
          a2[1] = v15;
          goto LABEL_176;
        }

        goto LABEL_37;
    }

    for (i = *a2; ; i = *a2)
    {
      v40 = i + 7;
      v41 = *a3;
      v42 = *(a3 + 2) - *a3;
      if (i + 7 <= v42)
      {
        break;
      }

      if (i + 4 > v42)
      {
        goto LABEL_86;
      }

      if ((v42 - i) >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v42 - i;
      }

      if (v42 - i <= 0)
      {
        goto LABEL_188;
      }

      v44 = 0;
      v45 = (v41 + i);
      do
      {
        v46 = *v45++;
        v44 = (v46 != 0) | (2 * v44);
        --v43;
      }

      while (v43);
      if (!v44)
      {
LABEL_188:
        *a2 = v42;
        std::string::push_back(this, 29);
        goto LABEL_190;
      }

      v47 = v44 - 1;
      if ((v44 - 1) > 0xA)
      {
        goto LABEL_86;
      }

      v48 = 10;
      v40 = *(a3 + 2) - *a3;
LABEL_66:
      if (v40 == 0x7FFFFFFF)
      {
        goto LABEL_86;
      }

      *a2 = v40;
      if (v47 == 10)
      {
        std::string::push_back(this, 29);
        if (v48 == 10)
        {
LABEL_190:
          std::string::push_back(this, 29);
          v63 = *a2;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            sub_261480F94(&__dst, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = *this;
          }

          v37 = __dst.__r_.__value_.__r.__words[0];
          v48 = -1;
        }

        else
        {
          v63 = *a2;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            sub_261480F94(&__dst, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = *this;
          }

          v37 = __dst.__r_.__value_.__r.__words[0];
        }

        v38 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        goto LABEL_178;
      }

      std::to_string(&__dst, v47);
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

      std::string::append(this, p_dst, size);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v48 == 10)
      {
        goto LABEL_190;
      }

      std::to_string(&__dst, v48);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &__dst;
      }

      else
      {
        v58 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(this, v58, v59);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    v49 = 0;
    v50 = (v41 + i);
    while (!v50[v49])
    {
      if (++v49 == 4)
      {
        goto LABEL_86;
      }
    }

    if (v42 - i >= 7)
    {
      v51 = 7;
    }

    else
    {
      v51 = v42 - i;
    }

    if (v42 - i < 1)
    {
      v54 = -8;
    }

    else
    {
      v52 = 0;
      do
      {
        v53 = *v50++;
        v52 = (v53 != 0) | (2 * v52);
        --v51;
      }

      while (v51);
      v54 = v52 - 8;
    }

    v47 = v54 / 11;
    v48 = v54 % 11;
    if ((v54 / 11) <= 0xA && v48 <= 0xA)
    {
      goto LABEL_66;
    }

LABEL_86:
    if (v42 > i)
    {
      v60 = 0;
      v61 = v41 + i;
      while (!*(v61 + v60))
      {
        if (v60 <= 2)
        {
          v62 = i + 1 + v60++;
          if (v62 < v42)
          {
            continue;
          }
        }

        v37 = 0;
        v38 = 0;
        *a2 = i + 4;
        a2[1] = 1;
        goto LABEL_93;
      }
    }

    v37 = 0;
    v38 = 0;
LABEL_93:
    v48 = -1;
    v63 = 0x7FFFFFFF;
LABEL_178:
    v113 = *a2;
    if (v63 != 0x7FFFFFFF || v8 == v113)
    {
      break;
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }
  }

  v114 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v63 == 0x7FFFFFFF || (v48 & 0x80000000) != 0)
  {
    if (v114 < 0)
    {
      v115 = v119;
      sub_261480F94(v119, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
      v48 = -1;
    }

    else
    {
      v48 = -1;
      v115 = v119;
LABEL_205:
      *v115 = *&this->__r_.__value_.__l.__data_;
      *(v115 + 2) = *(&this->__r_.__value_.__l + 2);
    }
  }

  else
  {
    if ((v114 & 0x80000000) == 0)
    {
      v115 = v120;
      goto LABEL_205;
    }

    v115 = v120;
    sub_261480F94(v120, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  *a1 = v113;
  v116 = *v115;
  *(a1 + 24) = *(v115 + 2);
  *(a1 + 8) = v116;
  *(v115 + 1) = 0;
  *(v115 + 2) = 0;
  *v115 = 0;
  *(a1 + 32) = v48;
  if (v38 < 0)
  {
    operator delete(v37);
  }
}

void sub_2614CFC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22 < 0)
  {
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614CFC7C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 - a1;
  if (a2 - a1 <= a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = a3 + 2;
  for (i = 2; i != -3; --i)
  {
    if ((a2 - a1 - a3) + i == 2)
    {
      break;
    }

    if (i)
    {
      if (v3 <= v4)
      {
        goto LABEL_13;
      }

      if (*(a1 + v4))
      {
        return 0;
      }
    }

    else
    {
      if (v3 <= v5)
      {
LABEL_13:
        sub_2614C3568();
      }

      if (!*(a1 + v5))
      {
        return 0;
      }
    }

    ++v4;
  }

  return 1;
}

uint64_t sub_2614CFCFC(uint64_t *a1, int a2, std::string *a3)
{
  v6 = 0;
  size = 0;
  v8 = 0;
  v25[1] = 0;
  memset(v24, 0, 7);
  do
  {
    v25[0] = a2;
    if (v8 < 0)
    {
      sub_261480F94(&__p, v6, size);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = v6;
      __p.__r_.__value_.__l.__size_ = size;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v24[0];
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v24 + 3);
      *(&__p.__r_.__value_.__s + 23) = v8;
    }

    sub_2614CF254(&v20, v25, a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v22 & 0x80u) == 0)
    {
      v9 = v21;
    }

    else
    {
      v9 = v21[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v10 = v22;
    }

    else
    {
      v10 = v21[1];
    }

    std::string::append(a3, v9, v10);
    if (__val < 0)
    {
      if (v8 < 0)
      {
        size = 0;
        *v6 = 0;
      }

      else
      {
        v8 = 0;
        v6 &= 0xFFFFFFFFFFFFFF00;
      }
    }

    else
    {
      std::to_string(&v18, __val);
      if (v8 < 0)
      {
        operator delete(v6);
      }

      size = v18.__r_.__value_.__l.__size_;
      v6 = v18.__r_.__value_.__r.__words[0];
      v24[0] = v18.__r_.__value_.__r.__words[2];
      *(v24 + 3) = *(&v18.__r_.__value_.__r.__words[2] + 3);
      v8 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    v11 = v20;
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    v12 = a2 == v11;
    a2 = v11;
  }

  while (!v12);
  while (1)
  {
    v13 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v13 < 0)
    {
      break;
    }

    if (!*(&a3->__r_.__value_.__s + 23) || *(&a3[-1].__r_.__value_.__r.__words[2] + v13 + 7) != 29)
    {
      goto LABEL_32;
    }

    v14 = v13 - 1;
    *(&a3->__r_.__value_.__s + 23) = v13 - 1;
    v15 = a3;
LABEL_31:
    v15->__r_.__value_.__s.__data_[v14] = 0;
  }

  v16 = a3->__r_.__value_.__l.__size_;
  if (v16)
  {
    v15 = a3->__r_.__value_.__r.__words[0];
    if (*(a3->__r_.__value_.__r.__words[0] + v16 - 1) == 29)
    {
      v14 = v16 - 1;
      a3->__r_.__value_.__l.__size_ = v14;
      goto LABEL_31;
    }
  }

LABEL_32:
  if (v8 < 0)
  {
    operator delete(v6);
  }

  return 0;
}

void sub_2614CFEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v25);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2614CFEA4);
  }

  _Unwind_Resume(a1);
}

atomic_uint *sub_2614CFF30@<X0>(uint64_t a1@<X1>, atomic_uint ***a2@<X2>, atomic_uint **a3@<X8>)
{
  (*(**(*a1 + 16) + 16))(&v20);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
LABEL_18:
    v11 = a2[3];
    v10 = a2[4];
    if (v11 == v10)
    {
LABEL_35:
      v9 = 0;
    }

    else
    {
      while (1)
      {
        v12 = *v11;
        if (*v11)
        {
          atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
        }

        v13 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(v20 + 2, 1u, memory_order_relaxed);
        }

        v16 = v13;
        if (v12)
        {
          atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
        }

        v15 = v12;
        sub_2614DB5C4(&v19, &v16, &v15, 1);
        v9 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(v19 + 2, 1u, memory_order_relaxed);
          sub_2614705CC(v9);
        }

        if (v12)
        {
          sub_2614705CC(v12);
        }

        if (v13)
        {
          sub_2614705CC(v13);
        }

        if (v12)
        {
          sub_2614705CC(v12);
        }

        if (v9)
        {
          break;
        }

        if (++v11 == v10)
        {
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v7 = *v5;
      if (*v5)
      {
        atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
      }

      v8 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20 + 2, 1u, memory_order_relaxed);
      }

      v18 = v8;
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
      }

      v17 = v7;
      sub_2614DB5C4(&v19, &v18, &v17, 0);
      v9 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19 + 2, 1u, memory_order_relaxed);
        sub_2614705CC(v9);
      }

      if (v7)
      {
        sub_2614705CC(v7);
      }

      if (v8)
      {
        sub_2614705CC(v8);
      }

      if (v7)
      {
        sub_2614705CC(v7);
      }

      if (v9)
      {
        break;
      }

      if (++v5 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  *a3 = v9;
  result = v20;
  if (v20)
  {
    return sub_2614705CC(v20);
  }

  return result;
}

void sub_2614D0100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  *v14 = 0;
  if (v15)
  {
    sub_2614705CC(v15);
    if (!v16)
    {
LABEL_3:
      if (!v15)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  sub_2614705CC(v16);
  if (!v15)
  {
LABEL_5:
    if (a14)
    {
      sub_2614705CC(a14);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_2614705CC(v15);
  goto LABEL_5;
}

atomic_ullong *sub_2614D018C@<X0>(uint64_t a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  LOBYTE(v14[0]) = 0;
  v15 = 0;
  sub_2614D0378(&v13, a1, *MEMORY[0x277CE28A0], v14);
  if (v15 == 1 || atomic_load_explicit(&v13, memory_order_acquire) && (v4 = CFGetTypeID(atomic_load_explicit(&v13, memory_order_acquire)), v4 != CFStringGetTypeID()))
  {
    *a2 = 0;
  }

  else
  {
    sub_2614D0378(&v12, a1, *MEMORY[0x277CE2898], v14);
    if (v15 == 1 || atomic_load_explicit(&v12, memory_order_acquire) && (v5 = CFGetTypeID(atomic_load_explicit(&v12, memory_order_acquire)), v5 != CFArrayGetTypeID()))
    {
      *a2 = 0;
    }

    else
    {
      *keys = xmmword_279AD8DC0;
      values = 0;
      v17 = 0;
      v6 = MEMORY[0x277CBEEE8];
      v7 = atomic_load_explicit(&v13, memory_order_acquire);
      v8 = *v6;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      v10 = atomic_load_explicit(&v12, memory_order_acquire);
      if (!v10)
      {
        v10 = v8;
      }

      values = v9;
      v17 = v10;
      *a2 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    sub_26148D890(&v12);
  }

  result = sub_26148D890(&v13);
  if (v15 == 1)
  {
    return sub_261501098(v14);
  }

  return result;
}

void sub_2614D0330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_ullong a10, atomic_ullong a11, atomic_ullong a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_26148D890(&a10);
  sub_26148D890(&a11);
  if (a24 == 1)
  {
    sub_261501098(&a12);
  }

  _Unwind_Resume(a1);
}

void sub_2614D0378(void *a1, uint64_t a2, CFStringRef propertyKey, atomic_ullong *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  propertyValueOut = 0;
  explicit = atomic_load_explicit((a2 + 24), memory_order_acquire);
  v8 = VTSessionCopyProperty(explicit, propertyKey, *MEMORY[0x277CBECE8], &propertyValueOut);
  if (v8 == -12900)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  if (v8)
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v11 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240450;
      *&buf[4] = v9;
      v16 = 2114;
      v17 = propertyKey;
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "VTSessionCopyProperty failed with status %{public}d, key=%{public}@", buf, 0x12u);
    }

    *buf = -2011;
    v13 = @"VTSessionCopyProperty failed.";
    v12 = sub_261476754(a4, buf, &v13);
    sub_2615013A8(v12, v9);
    goto LABEL_9;
  }

  v10 = propertyValueOut;
LABEL_10:
  *a1 = v10;
}

uint64_t sub_2614D04E0(uint64_t a1, atomic_ullong *a2, atomic_ullong *a3, uint64_t a4, uint64_t a5, atomic_ullong *a6, uint64_t a7)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit((a1 + 24), memory_order_acquire))
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v20 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v20, OS_LOG_TYPE_ERROR, "Invalid pixel transfer session.", buf, 2u);
    }

    *buf = -2004;
    v24 = @"Invalid pixel transfer session.";
    sub_261476754(a6, buf, &v24);
    return 0;
  }

  if (!atomic_load_explicit(a2, memory_order_acquire) || !atomic_load_explicit(a3, memory_order_acquire))
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v19 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v19, OS_LOG_TYPE_ERROR, "Invalid source and/or destination buffer.", buf, 2u);
    }

    *buf = -2004;
    v24 = @"Invalid source and/or destination buffer.";
    sub_261476754(a6, buf, &v24);
    return 0;
  }

  v27[0] = &unk_2873D6578;
  v27[1] = a1;
  v28 = v27;
  *buf = a7;
  v26[0] = &unk_2873D65F8;
  v26[1] = a1;
  v26[3] = v26;
  sub_261489C64(v30, v26);
  if (*(*buf + 8) == 1 && v28 != 0)
  {
    sub_261489CFC(v28, **buf);
  }

  sub_261489D4C(v26);
  sub_261489D4C(v27);
  v24 = 0;
  if (*(a4 + 32) == 1)
  {
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*a4);
    v14 = atomic_exchange(&v24, atomic_exchange(&DictionaryRepresentation, 0));
    if (v14)
    {
      CFRelease(v14);
    }

    sub_26148D93C(&DictionaryRepresentation);
  }

  DictionaryRepresentation = 0;
  if (*(a5 + 32) == 1)
  {
    *v25 = CGRectCreateDictionaryRepresentation(*a5);
    v15 = atomic_exchange(&DictionaryRepresentation, atomic_exchange(v25, 0));
    if (v15)
    {
      CFRelease(v15);
    }

    sub_26148D93C(v25);
  }

  if (!sub_2614D098C(a1, *MEMORY[0x277CE28B8], atomic_load_explicit(&v24, memory_order_acquire), a6) || !sub_2614D098C(a1, *MEMORY[0x277CE2868], atomic_load_explicit(&DictionaryRepresentation, memory_order_acquire), a6))
  {
    goto LABEL_25;
  }

  v16 = VTPixelTransferSessionTransferImage(atomic_load_explicit((a1 + 24), memory_order_acquire), atomic_load_explicit(a2, memory_order_acquire), atomic_load_explicit(a3, memory_order_acquire));
  if (v16)
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v17 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *v25 = 67240192;
      *&v25[4] = v16;
      _os_log_error_impl(&dword_26146F000, v17, OS_LOG_TYPE_ERROR, "VTPixelTransferSessionTransferImage failed: %{public}d", v25, 8u);
    }

    *v25 = -2004;
    v22 = @"VTPixelTransferSessionTransferImage failed.";
    sub_261476754(a6, v25, &v22);
    sub_2615013A8(a6, v16);
LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  v18 = 1;
LABEL_26:
  sub_26148D93C(&DictionaryRepresentation);
  sub_26148D93C(&v24);
  if (*(*buf + 8) == 1 && v31)
  {
    sub_261489CFC(v31, **buf);
  }

  sub_261489D4C(v30);
  return v18;
}

void sub_2614D0900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_26148D93C(va);
  sub_26148D93C(va1);
  sub_261489DCC(va2);
  _Unwind_Resume(a1);
}

BOOL sub_2614D098C(uint64_t a1, const __CFString *a2, __CFString *a3, atomic_ullong *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = VTSessionSetProperty(atomic_load_explicit((a1 + 24), memory_order_acquire), a2, a3);
  if (v7)
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v8 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      v11 = @"<null>";
      *buf = 67240706;
      if (a3)
      {
        v11 = a3;
      }

      *&buf[4] = v7;
      v14 = 2114;
      v15 = a2;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "VTSessionSetProperty failed with status %{public}d, key=%{public}@, value=%{public}@", buf, 0x1Cu);
    }

    v12 = @"VTSessionSetProperty failed.";
    *buf = -2011;
    v9 = sub_261476754(a4, buf, &v12);
    sub_2615013A8(v9, v7);
  }

  return v7 == 0;
}

uint64_t sub_2614D0AE4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7imaging20PixelTransferSession13transferImageERKNS_5CFRefIP10__CVBufferEES7_RKNSt3__18optionalI6CGRectEESD_RNS9_INS_5ErrorEEERKNS9_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614D0B20(uint64_t a1, os_signpost_id_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_27FEB4200 != -1)
  {
    dispatch_once(&qword_27FEB4200, &unk_2873D0720);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_27FEB41F8;
    if (os_signpost_enabled(qword_27FEB41F8))
    {
      explicit = atomic_load_explicit((v3 + 16), memory_order_acquire);
      if (!explicit)
      {
        explicit = @"<anonymous>";
      }

      v6 = 138543362;
      v7 = explicit;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "PixelTransferSession::transferImage", "name=%{public, signpost.description:attribute}@", &v6, 0xCu);
    }
  }
}

uint64_t sub_2614D0C28(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D65F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614D0CC8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7imaging20PixelTransferSession13transferImageERKNS_5CFRefIP10__CVBufferEES7_RKNSt3__18optionalI6CGRectEESD_RNS9_INS_5ErrorEEERKNS9_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614D0D04(uint64_t a1, os_signpost_id_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_27FEB4200 != -1)
  {
    dispatch_once(&qword_27FEB4200, &unk_2873D0720);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_27FEB41F8;
    if (os_signpost_enabled(qword_27FEB41F8))
    {
      explicit = atomic_load_explicit((v3 + 16), memory_order_acquire);
      if (!explicit)
      {
        explicit = @"<anonymous>";
      }

      v6 = 138543362;
      v7 = explicit;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PixelTransferSession::transferImage", "name=%{public, signpost.description:attribute}@", &v6, 0xCu);
    }
  }
}

uint64_t sub_2614D0E0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D6578;
  a2[1] = v2;
  return result;
}

void sub_2614D0EA0(void *a1)
{
  sub_2614D0ED8(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614D0ED8(void *a1)
{
  v2 = a1 + 3;
  if (atomic_load_explicit(a1 + 3, memory_order_acquire))
  {
    VTPixelTransferSessionInvalidate(atomic_load_explicit(v2, memory_order_acquire));
  }

  *a1 = &unk_2873D6508;
  sub_26149B918(v2);
  *a1 = &unk_2873D63F0;
  sub_26148E848(a1 + 2);
  return a1;
}

atomic_ullong *sub_2614D0F74@<X0>(uint64_t a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  propertyValueOut[1] = *MEMORY[0x277D85DE8];
  LOBYTE(v14[0]) = 0;
  v15 = 0;
  v3 = *MEMORY[0x277CE2848];
  propertyValueOut[0] = 0;
  explicit = atomic_load_explicit((a1 + 24), memory_order_acquire);
  v5 = *MEMORY[0x277CBECE8];
  v6 = VTSessionCopyProperty(explicit, v3, *MEMORY[0x277CBECE8], propertyValueOut);
  v7 = v6;
  if (v6 == -12900)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (v6)
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v9 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(keys) = 67240450;
      HIDWORD(keys) = v7;
      v18 = 2114;
      v19 = v3;
      _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "VTSessionCopyProperty failed with status %{public}d, key=%{public}@", &keys, 0x12u);
    }

    v16 = @"VTSessionCopyProperty failed.";
    keys = -2011;
    sub_261476754(v14, &keys, &v16);
    sub_2615013A8(v14, v7);
    goto LABEL_9;
  }

  v8 = propertyValueOut[0];
LABEL_10:
  v13 = v8;
  if (v15 == 1 || atomic_load_explicit(&v13, memory_order_acquire) && (v10 = CFGetTypeID(atomic_load_explicit(&v13, memory_order_acquire)), v10 != CFArrayGetTypeID()))
  {
    *a2 = 0;
  }

  else
  {
    keys = @"MostRecentChainDescription";
    propertyValueOut[0] = 0;
    v11 = atomic_load_explicit(&v13, memory_order_acquire);
    if (!v11)
    {
      v11 = *MEMORY[0x277CBEEE8];
    }

    propertyValueOut[0] = v11;
    *a2 = CFDictionaryCreate(v5, &keys, propertyValueOut, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  result = sub_26148D890(&v13);
  if (v15 == 1)
  {
    return sub_261501098(v14);
  }

  return result;
}

void sub_2614D1190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_ullong a10, atomic_ullong a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_26148D890(&a10);
  if (a23 == 1)
  {
    sub_261501098(&a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2614D11C8(uint64_t a1, atomic_ullong *a2, atomic_ullong *a3, uint64_t a4, uint64_t a5, atomic_ullong *a6, uint64_t a7)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit((a1 + 24), memory_order_acquire))
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v15 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v15, OS_LOG_TYPE_ERROR, "Invalid pixel rotation session.", buf, 2u);
    }

    *buf = -2004;
    *v29 = @"Invalid pixel rotation session.";
    sub_261476754(a6, buf, v29);
    return 0;
  }

  if (!atomic_load_explicit(a2, memory_order_acquire) || !atomic_load_explicit(a3, memory_order_acquire))
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v14 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v14, OS_LOG_TYPE_ERROR, "Invalid source and/or destination buffer.", buf, 2u);
    }

    *buf = -2004;
    *v29 = @"Invalid source and/or destination buffer.";
    sub_261476754(a6, buf, v29);
    return 0;
  }

  v24[0] = &unk_2873D6678;
  v24[1] = a1;
  v25 = v24;
  *buf = a7;
  v23[0] = &unk_2873D66F8;
  v23[1] = a1;
  v23[3] = v23;
  sub_261489C64(v27, v23);
  if (*(*buf + 8) == 1 && v25 != 0)
  {
    sub_261489CFC(v25, **buf);
  }

  sub_261489D4C(v23);
  sub_261489D4C(v24);
  if ((*(a4 + 32) & 1) != 0 || *(a5 + 32) == 1)
  {
    atomic_load_explicit((a1 + 24), memory_order_acquire);
    atomic_load_explicit(a2, memory_order_acquire);
    if (*(a4 + 32) != 1)
    {
      CVPixelBufferGetWidth(atomic_load_explicit(a2, memory_order_acquire));
      CVPixelBufferGetHeight(atomic_load_explicit(a2, memory_order_acquire));
    }

    atomic_load_explicit(a3, memory_order_acquire);
    if (*(a5 + 32) != 1)
    {
      CVPixelBufferGetWidth(atomic_load_explicit(a3, memory_order_acquire));
      CVPixelBufferGetHeight(atomic_load_explicit(a3, memory_order_acquire));
    }

    v17 = VTPixelRotationSessionRotateSubImage();
    if (v17)
    {
      if (qword_27FEB4200 != -1)
      {
        dispatch_once(&qword_27FEB4200, &unk_2873D0720);
      }

      v18 = qword_27FEB41F8;
      if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
      {
        *v29 = 67240192;
        *&v29[4] = v17;
        _os_log_error_impl(&dword_26146F000, v18, OS_LOG_TYPE_ERROR, "VTPixelRotationSessionRotateSubImage failed: %{public}d", v29, 8u);
      }

      *v29 = -2004;
      v22 = @"VTPixelRotationSessionRotateSubImage failed.";
      sub_261476754(a6, v29, &v22);
      sub_2615013A8(a6, v17);
LABEL_39:
      v16 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v19 = VTPixelRotationSessionRotateImage(atomic_load_explicit((a1 + 24), memory_order_acquire), atomic_load_explicit(a2, memory_order_acquire), atomic_load_explicit(a3, memory_order_acquire));
    if (v19)
    {
      if (qword_27FEB4200 != -1)
      {
        dispatch_once(&qword_27FEB4200, &unk_2873D0720);
      }

      v20 = qword_27FEB41F8;
      if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
      {
        *v29 = 67240192;
        *&v29[4] = v19;
        _os_log_error_impl(&dword_26146F000, v20, OS_LOG_TYPE_ERROR, "VTPixelRotationSessionRotateImage failed: %{public}d", v29, 8u);
      }

      *v29 = -2004;
      v22 = @"VTPixelRotationSessionRotateImage failed.";
      sub_261476754(a6, v29, &v22);
      sub_2615013A8(a6, v19);
      goto LABEL_39;
    }
  }

  v16 = 1;
LABEL_41:
  if (*(*buf + 8) == 1 && v28)
  {
    sub_261489CFC(v28, **buf);
  }

  sub_261489D4C(v27);
  return v16;
}

void sub_2614D1698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_261489DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2614D1704(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7imaging20PixelRotationSession11rotateImageERKNS_5CFRefIP10__CVBufferEES7_RKNSt3__18optionalI6CGRectEESD_RNS9_INS_5ErrorEEERKNS9_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614D1740(uint64_t a1, os_signpost_id_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_27FEB4200 != -1)
  {
    dispatch_once(&qword_27FEB4200, &unk_2873D0720);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_27FEB41F8;
    if (os_signpost_enabled(qword_27FEB41F8))
    {
      explicit = atomic_load_explicit((v3 + 16), memory_order_acquire);
      if (!explicit)
      {
        explicit = @"<anonymous>";
      }

      v6 = 138543362;
      v7 = explicit;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "PixelRotationSession::rotateImage", "name=%{public, signpost.description:attribute}@", &v6, 0xCu);
    }
  }
}

uint64_t sub_2614D1848(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D66F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614D18E8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7imaging20PixelRotationSession11rotateImageERKNS_5CFRefIP10__CVBufferEES7_RKNSt3__18optionalI6CGRectEESD_RNS9_INS_5ErrorEEERKNS9_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614D1924(uint64_t a1, os_signpost_id_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_27FEB4200 != -1)
  {
    dispatch_once(&qword_27FEB4200, &unk_2873D0720);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_27FEB41F8;
    if (os_signpost_enabled(qword_27FEB41F8))
    {
      explicit = atomic_load_explicit((v3 + 16), memory_order_acquire);
      if (!explicit)
      {
        explicit = @"<anonymous>";
      }

      v6 = 138543362;
      v7 = explicit;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PixelRotationSession::rotateImage", "name=%{public, signpost.description:attribute}@", &v6, 0xCu);
    }
  }
}

uint64_t sub_2614D1A2C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D6678;
  a2[1] = v2;
  return result;
}

void sub_2614D1AC0(void *a1)
{
  sub_2614D1AF8(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_2614D1AF8(void *a1)
{
  v2 = a1 + 3;
  if (atomic_load_explicit(a1 + 3, memory_order_acquire))
  {
    VTPixelRotationSessionInvalidate(atomic_load_explicit(v2, memory_order_acquire));
  }

  *a1 = &unk_2873D6540;
  sub_2614D1B7C(v2);
  *a1 = &unk_2873D63F0;
  sub_26148E848(a1 + 2);
  return a1;
}

atomic_ullong *sub_2614D1B7C(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_2614D1BBC(uint64_t a1, int a2, atomic_ullong *a3)
{
  *a1 = &unk_2873D63F0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_261478704((a1 + 16), atomic_load_explicit(a3, memory_order_acquire));
  return a1;
}

void sub_2614D1C20(_Unwind_Exception *a1)
{
  *v1 = v2;
  sub_26148E848(v3);
  _Unwind_Resume(a1);
}

void **sub_2614D1C38(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2614D0ED8(v2);
    MEMORY[0x2667045D0](v3, 0x10E1C408CF0B0E2);
  }

  return a1;
}

void **sub_2614D1C80(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2614D1AF8(v2);
    MEMORY[0x2667045D0](v3, 0x10E1C40D9779C66);
  }

  return a1;
}

void sub_2614D1CC8(uint64_t a1, uint64_t a2, int *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v12[1] = &v13;
  v12[2] = &v14;
  v12[3] = &v15;
  v13 = 0;
  (*(**(*a2 + 16) + 16))(v12);
  LODWORD(v22) = 0;
  v21 = &unk_2873D1B58;
  v23 = 0;
  v3 = v12[0];
  if (v12[0])
  {
    atomic_fetch_add_explicit((v12[0] + 8), 1u, memory_order_relaxed);
    if (v23)
    {
      sub_2614705CC(v23);
      v4 = v12[0];
      v23 = v3;
      if (!v12[0])
      {
        goto LABEL_7;
      }
    }

    else
    {
      v23 = v3;
      v4 = v3;
    }

    sub_2614705CC(v4);
    v3 = v23;
  }

LABEL_7:
  v5 = *a3;
  v6 = *(v3 + 7);
  v7 = -v6;
  v8 = *(v3 + 4);
  v9 = v8 & -v6--;
  v10 = *(v3 + 2);
  v17 = 0;
  v18 = v10 & v6 | v9;
  v19 = v8 & v6 | v10 & v7;
  v20 = 0;
  atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
  if (v20)
  {
    sub_2614705CC(v20);
  }

  v20 = v3;
  if ((v5 & 0x80000000) == 0)
  {
    sub_261529B78(&v16);
  }

  operator new();
}

void sub_2614D5590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, atomic_uint *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, atomic_uint *a56, atomic_uint *a57, atomic_uint *a58, uint64_t a59)
{
  if (v61)
  {
    sub_2614705CC(v61);
  }

  if (v60)
  {
    sub_2614705CC(v60);
  }

  v63 = 24;
  while (1)
  {
    v64 = *(&a59 + v63);
    if (v64)
    {
      sub_2614705CC(v64);
    }

    v63 -= 8;
    if (v63 == -8)
    {
      STACK[0x428] = &STACK[0x2C8];
      sub_261470CC4(&STACK[0x428]);
      v65 = 24;
      while (1)
      {
        v66 = *(&STACK[0x460] + v65);
        if (v66)
        {
          sub_2614705CC(v66);
        }

        v65 -= 8;
        if (v65 == -8)
        {
          sub_2614705CC(v59);
          if (a49)
          {
            sub_2614705CC(a49);
          }

          if (a56)
          {
            sub_2614705CC(a56);
          }

          if (a57)
          {
            sub_2614705CC(a57);
          }

          if (a58)
          {
            sub_2614705CC(a58);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void sub_2614D5E9C(uint64_t a1, uint64_t **a2)
{
  v2 = *(*a2[1] + 12);
  v3 = **a2;
  v4 = &unk_261585850;
  *(sub_261480070(v3 + 96, 9) + 8) = v2;
  operator new();
}

void sub_2614D6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, atomic_uint *a18)
{
  sub_2614802C0(a11);
  *(v20 - 40) = &a13;
  sub_261470CC4((v20 - 40));
  a16 = &unk_2873D12B8;
  if (a18)
  {
    sub_2614705CC(a18);
  }

  a18 = 0;
  MEMORY[0x2667045D0](v19, v18);
  _Unwind_Resume(a1);
}

void sub_2614D6080(void *a1)
{
  *a1 = &unk_2873D1BB8;
  v1 = a1[2];
  if (v1)
  {
    sub_2614705CC(v1);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2614D60EC(void *a1)
{
  *a1 = &unk_2873D1BB8;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return a1;
}

void sub_2614D6138(void *a1)
{
  *a1 = &unk_2873D1B58;
  v1 = a1[2];
  if (v1)
  {
    sub_2614705CC(v1);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2614D61A4(void *a1)
{
  *a1 = &unk_2873D1B58;
  v2 = a1[2];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  return a1;
}

atomic_ullong *sub_2614D61F0(atomic_ullong *a1, atomic_ullong *a2, atomic_ullong *a3)
{
  for (i = a1; i != a2; ++i)
  {
    explicit = atomic_load_explicit(a3, memory_order_acquire);
    v7 = atomic_load_explicit(i, memory_order_acquire);
    if (v7 == explicit)
    {
      break;
    }

    v8 = !explicit || v7 == 0;
    if (!v8 && CFEqual(v7, explicit))
    {
      break;
    }
  }

  return i;
}

void *sub_2614D625C(void *result, char *__src, char *a3)
{
  v5 = result;
  v6 = result[2];
  v7 = *result;
  if ((v6 - *result) < 0x20)
  {
    if (v7)
    {
      result[1] = v7;
      operator delete(v7);
      v6 = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v8 = v6 >> 1;
    if ((v6 >> 1) <= 8)
    {
      v8 = 8;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    sub_261472AF0(v5, v9);
  }

  v10 = result[1];
  v11 = v10 - v7;
  if ((v10 - v7) > 0x1F)
  {
    v16 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v7[v16];
  }

  else
  {
    if (v10 != v7)
    {
      result = memmove(*result, __src, v10 - v7);
      v10 = v5[1];
    }

    v12 = &__src[v11];
    v13 = v10;
    if (&__src[v11] != a3)
    {
      v13 = v10;
      do
      {
        v14 = *v12;
        v12 += 4;
        *v13 = v14;
        v13 += 4;
      }

      while (v12 != a3);
    }

    v15 = v13;
  }

  v5[1] = v15;
  return result;
}

uint64_t **sub_2614D6380(uint64_t **a1)
{
  v2 = *a1;
  if (*(*a1 + 8) == 1)
  {
    v3 = a1[4];
    if (v3)
    {
      sub_261489CFC(v3, *v2);
    }
  }

  sub_261489D4C((a1 + 1));
  return a1;
}

void sub_2614D6614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26148E848(va);
  MEMORY[0x2667045D0](v3, v2);
  _Unwind_Resume(a1);
}

void sub_2614D67CC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_26148E848(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2614D685C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder24postProcessForComposite_ERNS_13DecoderResultERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614D6898(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3ED0 != -1)
  {
    dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EC8;
    if (os_signpost_enabled(qword_280CB3EC8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "Decoder::postProcessForComposite_", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614D69D0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc7Decoder24postProcessForComposite_ERNS_13DecoderResultERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614D6A0C(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3ED0 != -1)
  {
    dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EC8;
    if (os_signpost_enabled(qword_280CB3EC8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Decoder::postProcessForComposite_", &unk_26159692B, v4, 2u);
    }
  }
}

void sub_2614D6B38(atomic_uint **a1, atomic_uint *a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
    goto LABEL_3;
  }

  v5 = a3[14];
  v6 = -v5;
  v7 = a3[4];
  v8 = v7 & -v5--;
  v9 = a3[8];
  v10 = v9 & v5 | v8;
  v11 = v7 & v5 | v9 & v6;
  if ((v11 | v10))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_261524120(exception, "Number of rows and columns must be even");
    goto LABEL_15;
  }

  if (atomic_load_explicit(&qword_27FEB4190, memory_order_acquire) != -1)
  {
    v15 = &v16;
    v16 = sub_2614E411C;
    std::__call_once(&qword_27FEB4190, &v15, sub_2614E4110);
  }

  v12 = *qword_27FEB4188;
  if (*(qword_27FEB4188 + 8) == *qword_27FEB4188)
  {
    v4 = *a1;
LABEL_14:
    *a1 = v4;
    exception = __cxa_allocate_exception(0x20uLL);
    sub_261524120(exception, "Error version not found");
LABEL_15:
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  v13 = 0;
  while (1)
  {
    v4 = *(v12 + 8 * v13);
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
    }

    if (v4[4] == v10 && v4[5] == v11)
    {
      break;
    }

    sub_2614705CC(v4);
    ++v13;
    v12 = *qword_27FEB4188;
    if (v13 >= (*(qword_27FEB4188 + 8) - *qword_27FEB4188) >> 3)
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  *a1 = v4;
}

void sub_2614D6CE8(void *a1)
{
  *a1 = &unk_2873D1B98;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_2614D6D6C(void *a1)
{
  *a1 = &unk_2873D1B98;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  return a1;
}

uint64_t sub_2614D6DD0(uint64_t a1, int a2, signed int a3, int a4, int a5)
{
  v10 = a2 - 2;
  v11 = a3 - 2;
  if (sub_2614D6F24(a1, a2 - 2, a3 - 2, a4, a5))
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | sub_2614D6F24(a1, v10, a3 - 1, a4, a5);
  if (sub_2614D6F24(a1, a2 - 1, v11, a4, a5))
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 | (4 * v13) | sub_2614D6F24(a1, a2 - 1, a3 - 1, a4, a5);
  if (sub_2614D6F24(a1, a2 - 1, a3, a4, a5))
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | (4 * v15) | sub_2614D6F24(a1, a2, v11, a4, a5);
  if (sub_2614D6F24(a1, a2, a3 - 1, a4, a5))
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  return v18 | (4 * v17) | sub_2614D6F24(a1, a2, a3, a4, a5);
}

uint64_t sub_2614D6F24(uint64_t a1, int a2, signed int a3, int a4, int a5)
{
  v5 = a4 + a2;
  v6 = (a4 & 7 ^ 0xFFFFFFFB) + a3 + 5;
  if (a2 >= 0)
  {
    v6 = a3;
    v5 = a2;
  }

  if (v6 < 0)
  {
    v6 += a5;
    v5 += (a5 & 7 ^ 0xFFFFFFFB) + 5;
  }

  v7 = *(a1 + 32);
  v8 = v5;
  v9 = *(v7 + 24) * v5 + v6;
  *(*(v7 + 48) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v9;
  return sub_261470964(*(a1 + 16), v6, v8);
}

void sub_2614D6FA4(void *a1)
{
  *a1 = &unk_2873D1B38;
  a1[2] = &unk_2873D12B8;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[4] = 0;

  JUMPOUT(0x2667045D0);
}

void *sub_2614D7034(void *a1)
{
  *a1 = &unk_2873D1B38;
  a1[2] = &unk_2873D12B8;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[4] = 0;
  return a1;
}

const void *sub_2614D70A4(_BYTE *a1, uint64_t a2)
{
  result = sub_2614C2074(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t sub_2614D7150(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x266704550](a1 + 112);
  return a1;
}

void sub_2614D7270(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  sub_26149A8FC(a1);
}

void sub_2614D73A8(void *a1, uint64_t *a2)
{
  *a1 = 0;
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  v3 = v2;
  sub_2614D8EFC(&v4, &v3);
}

void sub_2614D7494(void *a1)
{
  sub_2614705CC(v1);
  *(v1 + 56) = 0;
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2614D7480);
}

void sub_2614D74B4(void *a1)
{
  if (v1)
  {
    sub_2614705CC(v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2614D7420);
}

void sub_2614D74D4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    sub_2614705CC(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614D74EC(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  sub_2614830DC(&v2, a2);
  operator new();
}

void sub_2614D8B2C(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_26149A5B4(&STACK[0x278]);
    sub_261483148(&STACK[0x260], "Unsupported ECI: ");
    sub_2614D7270(&STACK[0x280], &STACK[0x260]);
    if (SLOBYTE(STACK[0x277]) < 0)
    {
      operator delete(STACK[0x260]);
    }

    MEMORY[0x266704400](&STACK[0x278], v2);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614D70A4(&STACK[0x260], &STACK[0x278]);
    if (SLOBYTE(STACK[0x277]) >= 0)
    {
      v4 = &STACK[0x260];
    }

    else
    {
      v4 = STACK[0x260];
    }

    sub_2614EB5DC(exception, v4);
    *exception = &unk_2873D1A30;
    __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
  }

  JUMPOUT(0x2614D8EF4);
}

void sub_2614D8BFC()
{
  if (v0 < 0)
  {
    operator delete(v2);
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
LABEL_6:
    sub_2614D7150(&STACK[0x278]);
    __cxa_end_catch();
    JUMPOUT(0x2614D8E30);
  }

  __cxa_free_exception(v1);
  goto LABEL_6;
}

void sub_2614D8C64(void *a1, int a2)
{
  if (a2)
  {
    sub_261470E34(a1);
  }

  JUMPOUT(0x2614D8EF4);
}

void sub_2614D8C74()
{
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  JUMPOUT(0x2614D8E30);
}

void sub_2614D8C90()
{
  MEMORY[0x2667045D0](v0, 0x1093C40E92185C3);
  STACK[0x278] = &unk_2873D12B8;
  if (STACK[0x288])
  {
    sub_2614705CC(STACK[0x288]);
  }

  JUMPOUT(0x2614D8EA0);
}

void sub_2614D8D3C(void *a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x28F]) < 0)
    {
      operator delete(STACK[0x278]);
    }

    __cxa_begin_catch(a1);
    sub_261483148(&STACK[0x278], "ISO-8859-1");
    sub_2614AD104(&STACK[0x278]);
    if (SLOBYTE(STACK[0x28F]) < 0)
    {
      operator delete(STACK[0x278]);
    }

    __cxa_end_catch();
    JUMPOUT(0x2614D75DCLL);
  }

  JUMPOUT(0x2614D8EF4);
}

void sub_2614D8DA4()
{
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  __cxa_end_catch();
  JUMPOUT(0x2614D8EA0);
}

void sub_2614D8E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, uint64_t a14, atomic_uint *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  __cxa_free_exception(v55);
  sub_2614705CC(a12);
  sub_2614D7150(&a16);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  sub_2614D7150(&a55);
  sub_2614705CC(a12);
  if (a15)
  {
    sub_2614705CC(a15);
  }

  _Unwind_Resume(a1);
}

void sub_2614D8EFC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  if (*(v2 + 16) - 8) > 0x88 || (*(v2 + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "Dimension must be even, > 8 < 144");
    *exception = &unk_2873D19D8;
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  sub_2614D6B38(&v7, 0, v2);
  v4 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
  }

  if (v4)
  {
    sub_2614705CC(v4);
  }

  sub_2614705CC(v2);
  atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  if (v4[4] == (*(v2 + 32) & (*(v2 + 56) - 1) | *(v2 + 16) & -*(v2 + 56)))
  {
    operator new();
  }

  v6 = __cxa_allocate_exception(0x20uLL);
  sub_2614EB5DC(v6, "Dimension of bitMatrix must match the version size");
  *v6 = &unk_2873D1808;
  __cxa_throw(v6, &unk_2873D2AD8, sub_2614C5F90);
}

void sub_2614DA4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, atomic_uint *a36, uint64_t a37, uint64_t a38, atomic_uint *a39, void *a40, uint64_t a41, atomic_uint *a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *(v47 - 136) = &unk_2873D1298;
  v49 = *(v47 - 120);
  if (v49)
  {
    sub_2614705CC(v49);
  }

  *a12 = v46;
  if (a36)
  {
    sub_2614705CC(a36);
  }

  if (a39)
  {
    sub_2614705CC(a39);
  }

  if (v45)
  {
    sub_2614705CC(v45);
  }

  a40 = &unk_2873D12B8;
  if (a42)
  {
    sub_2614705CC(a42);
  }

  a40 = (v47 - 248);
  sub_261480A80(&a40);
  *(v47 - 224) = &unk_2873D12B8;
  v50 = *(v47 - 208);
  if (v50)
  {
    sub_2614705CC(v50);
  }

  sub_2614DA810((v47 - 200));
  _Unwind_Resume(a1);
}

void *sub_2614DA810(void *a1)
{
  *a1 = &unk_2873D1B98;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  return a1;
}

uint64_t sub_2614DA9B0(uint64_t a1, atomic_uint **a2, atomic_uint **a3, float a4)
{
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
  }

  v43 = v8;
  if (sub_2614DA874(a1, &v43))
  {
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
    }

    v42 = v9;
    v10 = !sub_2614DA874(a1, &v42);
    if (v9)
    {
      sub_2614705CC(v9);
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8)
  {
    sub_2614705CC(v8);
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = (*(**a2 + 16))();
  v13 = (*(**a2 + 24))();
  v14 = (*(**a3 + 16))();
  v15 = (*(**a3 + 24))();
  if (v15 - v13 >= 0)
  {
    v16 = v15 - v13;
  }

  else
  {
    v16 = v13 - v15;
  }

  if (v14 - v12 >= 0)
  {
    v17 = v14 - v12;
  }

  else
  {
    v17 = v12 - v14;
  }

  if (v16 > v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v16 > v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  if (v16 > v17)
  {
    v20 = v14;
  }

  else
  {
    v20 = v15;
  }

  if (v16 > v17)
  {
    v21 = v15;
  }

  else
  {
    v21 = v14;
  }

  if (v16 > v17)
  {
    v22 = v12;
  }

  else
  {
    v22 = v13;
  }

  if (v16 > v17)
  {
    v23 = v13;
  }

  else
  {
    v23 = v12;
  }

  v39 = v20;
  if (v22 < v20)
  {
    v24 = 1;
  }

  else
  {
    v24 = -1;
  }

  v38 = v24;
  if (v23 < v21)
  {
    v25 = 1;
  }

  else
  {
    v25 = -1;
  }

  v40 = v25;
  v41 = v18;
  if (v23 == v21)
  {
    return 0;
  }

  v26 = *(a1 + 16);
  v27 = sub_261470964(v26, v12, v13);
  v28 = 0;
  v29 = v19;
  LODWORD(v11) = 0;
  v37 = v29;
  v30 = -v29 >> 1;
  do
  {
    if (v16 <= v17)
    {
      v31 = v23;
    }

    else
    {
      v31 = v22;
    }

    v32 = v31;
    if (v16 <= v17)
    {
      v33 = v22;
    }

    else
    {
      v33 = v23;
    }

    v34 = sub_261470964(v26, v32, v33);
    v35 = (v27 ^ v34) & (v28 >= (a4 * 0.5));
    v11 = (v11 + v35);
    if (v35)
    {
      v28 = 1;
    }

    else
    {
      ++v28;
    }

    if (v35)
    {
      v27 = v34;
    }

    v30 += v41;
    if (v30 >= 1)
    {
      if (v22 == v39)
      {
        return v11;
      }

      v22 += v38;
      v30 -= v37;
    }

    v23 += v40;
  }

  while (v21 != v23);
  return v11;
}

void sub_2614DAC4C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2614705CC(v2);
  }

  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614DAC78(uint64_t a1, atomic_uint **a2, atomic_uint **a3)
{
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

  v9 = v5;
  v6 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

  v8 = v6;
  v7.n128_f32[0] = sub_261524A00(&v9, &v8);
  if (v6)
  {
    sub_2614705CC(v6);
  }

  if (v5)
  {
    sub_2614705CC(v5);
  }

  (*(**a3 + 16))(v7);
  (*(**a2 + 16))();
  (*(**a3 + 24))();
  (*(**a2 + 24))();
  operator new();
}

void sub_2614DAEBC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2614705CC(v2);
  }

  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614DAEF4(uint64_t a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
{
  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
  }

  v16 = v7;
  v8 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
  }

  v15 = v8;
  sub_261524A00(&v16, &v15);
  if (v8)
  {
    sub_2614705CC(v8);
  }

  if (v7)
  {
    sub_2614705CC(v7);
  }

  v9 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
  }

  v14 = v9;
  v10 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v10 + 2, 1u, memory_order_relaxed);
  }

  v13 = v10;
  v11.n128_f32[0] = sub_261524A00(&v14, &v13);
  if (v10)
  {
    sub_2614705CC(v10);
  }

  if (v9)
  {
    sub_2614705CC(v9);
  }

  (*(**a3 + 16))(v11);
  (*(**a2 + 16))();
  (*(**a4 + 16))(*a4, v12);
  (*(**a2 + 16))();
  (*(**a3 + 24))();
  (*(**a2 + 24))();
  (*(**a4 + 24))();
  (*(**a2 + 24))();
  operator new();
}

void sub_2614DB290(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2614705CC(v2);
  }

  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614DB2CC(_OWORD *a1, atomic_uint **a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v2 + 2, 1u, memory_order_relaxed);
  }

  v7 = v2;
  v3 = a2[3];
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
  }

  v6 = v3;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  }

  v5 = v4;
  sub_2614DAEF4(&v8, &v7, &v6, &v5);
}

void sub_2614DB420(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    sub_2614705CC(v4);
    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
LABEL_5:
        v6 = 24;
        while (1)
        {
          v7 = *(v1 + v6);
          if (v7)
          {
            sub_2614705CC(v7);
          }

          v6 -= 8;
          if (v6 == -8)
          {
            _Unwind_Resume(exception_object);
          }
        }
      }

LABEL_4:
      sub_2614705CC(v2);
      goto LABEL_5;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  sub_2614705CC(v3);
  if (!v2)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

atomic_uint *sub_2614DB478(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3)
{
  v4 = a2;
  v6 = a2;
  while (1)
  {
    result = sub_2614DB518(a1++, v4);
    if (++v4 == a3)
    {
      break;
    }

    if (a1 == v6)
    {
      v6 = v4;
    }
  }

  if (a1 != v6)
  {
    v8 = v6;
    do
    {
      while (1)
      {
        result = sub_2614DB518(a1++, v6);
        if (++v6 == a3)
        {
          break;
        }

        if (a1 == v8)
        {
          v8 = v6;
        }
      }

      v6 = v8;
    }

    while (a1 != v8);
  }

  return result;
}

atomic_uint *sub_2614DB518(atomic_uint **a1, atomic_uint **a2)
{
  v4 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  }

  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

  v6 = *a1;
  if (*a1)
  {
    sub_2614705CC(v6);
  }

  *a1 = v5;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  }

  result = *a2;
  if (*a2)
  {
    result = sub_2614705CC(result);
  }

  *a2 = v4;
  if (v4)
  {

    return sub_2614705CC(v4);
  }

  return result;
}

atomic_uint *sub_2614DB5C4(void *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v72[1] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  sub_2614DCF90(v63, a2, a4);
  v5 = (*(**a3 + 16))();
  v59 = LODWORD(v5);
  *&v6 = (*(**a3 + 24))();
  v7 = *(*a3 + 20);
  v8 = COERCE_DOUBLE(vcvt_s32_f32(__PAIR64__(v6, v59)));
  *&v70 = v63;
  *(&v70 + 1) = v8;
  *(&v71 + 1) = 1;
  *&v71 = 0;
  if (sub_261473198(v63, 1, v8))
  {
    if (!sub_261473208(&v70, v7))
    {
      goto LABEL_66;
    }

    goto LABEL_28;
  }

  v10 = 0;
  v11 = v7;
  v68 = 0uLL;
  v69 = 0;
  do
  {
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = qword_261570210[v10];
      v14 = v64;
      *&v9 = v8;
      v15 = v63[0];
      while (1)
      {
        *&v9 = vadd_s32(*&v9, v13);
        v60 = v9;
        if (v15 != sub_261470964(v14, v9, SDWORD1(v9)))
        {
          break;
        }

        ++v12;
        v9 = v60;
        if (v11 == v12)
        {
          goto LABEL_11;
        }
      }

      v16 = v60;
      DWORD2(v16) = v12;
      *v67 = v16;
      sub_261471160(&v68, v67);
    }

LABEL_11:
    ++v10;
  }

  while (v10 != 8);
  v17 = v68;
  v18 = 126 - 2 * __clz((*(&v68 + 1) - v68) >> 4);
  if (*(&v68 + 1) == v68)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_261471230(v68, *(&v68 + 1), v19, 1);
  memset(v67, 0, 24);
  if (*(&v17 + 1) != v17)
  {
    v20 = v17;
    do
    {
      v62 = *v20;
      sub_261471F5C(v67, &v62);
      v20 += 2;
    }

    while (v20 != *(&v17 + 1));
  }

  if (v17)
  {
    operator delete(v17);
  }

  v21 = v67[0];
  v22 = v67[1];
  if (v67[0] == v67[1])
  {
    v24 = 0;
    if (v67[0])
    {
LABEL_26:
      operator delete(v21);
    }
  }

  else
  {
    v23 = v67[0] + 8;
    do
    {
      *(&v70 + 1) = *(v23 - 1);
      v24 = sub_261473208(&v70, v7);
      if (v24)
      {
        break;
      }

      v25 = v23 == v22;
      v23 += 8;
    }

    while (!v25);
    if (v21)
    {
      goto LABEL_26;
    }
  }

  if (!v24)
  {
LABEL_66:
    v66 = 0;
    v52 = 0uLL;
    __p = 0u;
    goto LABEL_71;
  }

LABEL_28:
  v26 = v7 * 7.0;
  v27 = *(&v70 + 8);
  *&v71 = 0x100000000;
  v28 = (v7 * 7.0);
  if (sub_26147337C(&v70, 3, v28, (v7 / 5.0), (v7 * 0.5)) == -1)
  {
    goto LABEL_66;
  }

  v30 = *(&v70 + 8);
  v29.i32[0] = -DWORD1(v71);
  v58 = vzip1_s32(v29, *&v71);
  *&v71 = v58;
  v68 = 0uLL;
  v69 = 0;
  sub_261471EB8(&v68, vcvts_n_u32_f32(v26, 2uLL));
  v31 = 0;
  v32 = v26 * 8.0;
  v33 = v70;
  *&v34 = v30;
  do
  {
    v61 = v34;
    v67[0] = vadd_f32(vcvt_f32_s32(*&v34), 0x3F0000003F000000);
    sub_261471F5C(&v68, v67);
    v35 = vsub_s32(*&v61, v27);
    v36 = v35.i32[1];
    v37 = v35.i32[0];
    if (v35.i32[0] >= 0)
    {
      v38 = v35.i32[0];
    }

    else
    {
      v38 = -v35.i32[0];
    }

    if (v35.i32[1] >= 0)
    {
      v39 = v35.u32[1];
    }

    else
    {
      v39 = -v35.i32[1];
    }

    if (v38 <= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v38;
    }

    v35.i32[0] = -v58.i32[1];
    v41 = vzip1_s32(v35, v58);
    v42 = vneg_s32(v41);
    v43 = sub_2614735B0(v33, *&v61, v42);
    v34 = v61;
    if (v43 == -1)
    {
      goto LABEL_47;
    }

    if (sub_2614735B0(v33, *&v61, v58) == -1)
    {
      v42 = v58;
LABEL_46:
      v34 = v61;
      goto LABEL_47;
    }

    if (sub_2614735B0(v33, *&v61, v41) == -1)
    {
      v42 = v41;
      goto LABEL_46;
    }

    v44.i32[1] = v58.i32[1];
    v44.i32[0] = -v58.i32[0];
    v42 = vzip1_s32(v44, v41);
    v45 = sub_2614735B0(v33, *&v61, v42);
    v34 = v61;
    if (v45 != -1)
    {
      goto LABEL_67;
    }

LABEL_47:
    *&v34 = vadd_s32(v42, *&v34);
    if ((v34 & 0x80000000) != 0 || *(v33 + 8) <= v34 || (DWORD1(v34) & 0x80000000) != 0 || *(v33 + 16) <= DWORD1(v34))
    {
      goto LABEL_67;
    }

    v46 = vsub_s32(*&v34, v27);
    v47 = v46.i32[1];
    v48 = v46.i32[0];
    if (v46.i32[0] < 0)
    {
      v48 = -v46.i32[0];
    }

    if (v46.i32[1] < 0)
    {
      v47 = -v46.i32[1];
    }

    if (v48 > v47)
    {
      v47 = v48;
    }

    if (v47 > v28 || (v49 = vceq_s32(*&v34, v27), (vpmin_u32(v49, v49).u32[0] & 0x80000000) != 0) || (v50 = v68, v32 < ((*(&v68 + 1) - v68) >> 3)))
    {
LABEL_67:
      v50 = v68;
      goto LABEL_68;
    }

    v31 |= 1 << (v37 / v40 + 3 * (v36 / v40) + 4);
    v51 = vceq_s32(*&v34, v30);
    v58 = v42;
  }

  while ((vpmin_u32(v51, v51).u32[0] & 0x80000000) == 0);
  if (v31 != 495)
  {
LABEL_68:
    __p = 0uLL;
    v66 = 0;
    if (v50)
    {
      operator delete(v50);
    }

    v52 = 0uLL;
    goto LABEL_71;
  }

  __p = v68;
  v66 = v69;
  if (v68 != *(&v68 + 1))
  {
    sub_26147202C(vadd_f32(vcvt_f32_s32(v27), 0x3F0000003F000000), &v70, &__p);
  }

  v52 = 0uLL;
  if (v68)
  {
    *(&__p + 1) = v68;
    operator delete(v68);
    v52 = 0uLL;
  }

LABEL_71:
  v53 = v52.i64[0];
  if ((vmovn_s64(vceqq_s64(v52, vdupq_laneq_s64(v52, 1))).u32[0] & 1) == 0)
  {
    sub_26148F908(&v62, 8uLL);
    v54 = 0;
    v55 = v62 + 4;
    do
    {
      *(v55 - 1) = *(v53 + v54);
      *v55 = *(v53 + v54 + 4);
      v55 += 2;
      v54 += 8;
    }

    while (v54 != 32);
    if (*a2)
    {
      atomic_fetch_add_explicit((*a2 + 8), 1u, memory_order_relaxed);
    }

    v70 = xmmword_2615701AC;
    v71 = unk_2615701BC;
    v69 = 0;
    v68 = 0uLL;
    sub_261472A80(&v68, &v70, v72, 8uLL);
  }

  if (v52.i64[0])
  {
    operator delete(v52.i64[0]);
  }

  result = v64;
  if (v64)
  {
    return sub_2614705CC(v64);
  }

  return result;
}

void sub_2614DCCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint **a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, atomic_uint *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  if (v46)
  {
    sub_2614705CC(v46);
  }

  sub_2614705CC(v47);
  if (a22)
  {
    sub_2614705CC(a22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v50 = *(v48 - 208);
  if (v50)
  {
    operator delete(v50);
  }

  if (a45)
  {
    operator delete(a45);
  }

  v51 = *(v48 - 256);
  if (v51)
  {
    *(v48 - 248) = v51;
    operator delete(v51);
  }

  sub_2614705CC(v47);
  if (a33)
  {
    operator delete(a33);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a39)
  {
    sub_2614705CC(a39);
  }

  if (*a11)
  {
    sub_2614705CC(*a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2614DCF90(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = *(*a2 + 56);
  v5 = -v4;
  v6 = *(*a2 + 32);
  v7 = v6 & -v4--;
  v8 = *(*a2 + 16);
  *a1 = a3;
  *(a1 + 8) = v8 & v4 | v7;
  *(a1 + 16) = v6 & v4 | v8 & v5;
  *(a1 + 24) = 0;
  v9 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    v10 = *(a1 + 24);
    if (v10)
    {
      sub_2614705CC(v10);
    }
  }

  *(a1 + 24) = v9;
  return a1;
}

char *sub_2614DD014(char *__src, char *a2, char *a3)
{
  v3 = a2 - __src;
  if (a2 != __src)
  {
    v4 = a3 - a2;
    if (a3 != a2)
    {
      v5 = __src;
      if (__src + 4 == a2)
      {
        v6 = *__src;
        __src = memmove(__src, a2, a3 - a2);
        *(v5 + v4) = v6;
      }

      else if (a2 + 4 == a3)
      {
        v7 = *(a3 - 1);
        if (a3 - 4 != __src)
        {
          __src = memmove(__src + 4, __src, a3 - 4 - __src);
        }

        *v5 = v7;
      }

      else
      {
        v8 = v3 >> 2;
        if (v3 >> 2 == v4 >> 2)
        {
          v9 = __src + 4;
          v10 = a2 + 4;
          do
          {
            v11 = *(v9 - 1);
            *(v9 - 1) = *(v10 - 1);
            *(v10 - 1) = v11;
            if (v9 == a2)
            {
              break;
            }

            v9 += 4;
            v12 = v10 == a3;
            v10 += 4;
          }

          while (!v12);
        }

        else
        {
          v13 = v4 >> 2;
          v14 = v3 >> 2;
          do
          {
            v15 = v14;
            v14 = v13;
            v13 = v15 % v13;
          }

          while (v13);
          v16 = &__src[4 * v14];
          do
          {
            v17 = *(v16 - 1);
            v16 -= 4;
            v18 = v17;
            v19 = &v16[v3];
            v20 = v16;
            do
            {
              v21 = v19;
              *v20 = *v19;
              v22 = &v19[4 * v8];
              v23 = __OFSUB__(v8, (a3 - v19) >> 2);
              v25 = v8 - ((a3 - v19) >> 2);
              v24 = (v25 < 0) ^ v23;
              v19 = &__src[4 * v25];
              if (v24)
              {
                v19 = v22;
              }

              v20 = v21;
            }

            while (v19 != v16);
            *v21 = v18;
          }

          while (v16 != __src);
        }
      }
    }
  }

  return __src;
}

uint64_t sub_2614DD150(uint64_t a1, int a2, float a3, float a4, float a5, float a6, float a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a6 - a4;
  v10 = a7 - a5;
  v11 = sqrtf((v10 * v10) + (v9 * v9));
  if (v11 < 0.00001)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = (a3 * 0.5);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v43 = v12;
  v13 = v8;
  if (v8 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v7;
  result = 0xFFFFFFFFLL;
  if ((v15 & 0x80000000) == 0)
  {
    v17 = *(a1 + 56);
    v18 = -v17;
    v19 = *(a1 + 32);
    v20 = v17 - 1;
    v21 = *(a1 + 16);
    v22 = v21 & v20 | v19 & v18;
    if (v13 < v22)
    {
      v23 = v19 & v20 | v21 & v18;
      if (v15 < v23)
      {
        result = 0;
        v24 = v11;
        if (v11 >= 1)
        {
          v42 = ((a3 * 2.0) + 0.5);
          if ((v42 & 0x80000000) == 0)
          {
            v26 = v9 / v11;
            v27 = v10 / v11;
            LOBYTE(v28) = sub_261470964(a1, v8, v15);
            v29 = v28;
            v30 = 0;
            v31 = 0;
            v32 = 1;
            do
            {
              v33 = v7;
              v34 = v33 >= v23 || v13 >= v22;
              if (v34 || (v33 & 0x80000000) != 0)
              {
                break;
              }

              v28 = sub_261470964(a1, v13, v33);
              v35 = v29 ^ v28;
              v36 = v28 ^ a2;
              if (v30 < v43)
              {
                v36 = 0;
              }

              v37 = v31 + v36;
              if ((v29 ^ v28))
              {
                v29 = v28;
                v30 = 1;
              }

              else
              {
                ++v30;
              }

              if (v35)
              {
                v31 = v37;
              }

              if (v32 >= v24)
              {
                break;
              }

              if (v30 > v42)
              {
                break;
              }

              v8 = v26 + v8;
              v7 = v27 + v7;
              v13 = v8;
              ++v32;
            }

            while ((v8 & 0x80000000) == 0);
            v39 = v30 < v43 || v30 > v42;
            v40 = v31 - v39;
            if ((v28 ^ a2))
            {
              v41 = v40;
            }

            else
            {
              v41 = v31;
            }

            if (v31 >= 1)
            {
              return v41;
            }

            else
            {
              return v31;
            }
          }
        }
      }
    }
  }

  return result;
}