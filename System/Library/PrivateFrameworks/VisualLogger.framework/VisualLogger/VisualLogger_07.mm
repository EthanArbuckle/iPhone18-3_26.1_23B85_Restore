uint64_t VZSE3GetValueType(uint64_t a1)
{
  if (sub_2711A352C("VZSE3GetValueType", a1, 0))
  {
    return 255;
  }

  v3 = *(*(a1 + 16) + 136);
  if (v3 == 2 || v3 == 5)
  {
    return 12;
  }

  else
  {
    return 11;
  }
}

BOOL sub_2711A352C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_280877C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C90))
    {
      sub_2711A61D8(&xmmword_280877C78);
      __cxa_guard_release(&qword_280877C90);
    }

    if (byte_280877C8F < 0)
    {
      sub_271127178(v7, xmmword_280877C78, *(&xmmword_280877C78 + 1));
    }

    else
    {
      *v7 = xmmword_280877C78;
      v8 = unk_280877C88;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_2711A37A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZSE3GetSEType(uint64_t a1)
{
  if (sub_2711A352C("VZSE3GetSEType", a1, 0))
  {
    return 255;
  }

  else
  {
    return (*(*(a1 + 16) + 136) & 0xFE) == 4;
  }
}

uint64_t VZSE3GetAlgebraRotationF(uint64_t a1, uint64_t a2)
{
  if (sub_2711A352C("VZSE3GetAlgebraRotationF", a1, 0))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v6 = (a1 + 16);
  result = v7;
  v8 = *(v7 + 136);
  v9 = v8 > 5;
  v10 = (1 << v8) & 0x34;
  if (!v9 && v10 != 0)
  {
    if (!a2)
    {
      return 0;
    }

    sub_27153B8AC(v6, &v13, v4);
    result = 0;
    v12 = v13;
    goto LABEL_14;
  }

  if (*(result + 128) != 2)
  {
    sub_2711308D4();
  }

  if (a2)
  {
    *&v12 = *result;
    DWORD2(v12) = *(result + 8);
LABEL_14:
    *(a2 + 8) = DWORD2(v12);
    *a2 = v12;
  }

  return result;
}

int8x16_t *VZSE3GetAlgebraRotationD(uint64_t a1, int8x16_t *a2)
{
  if (sub_2711A352C("VZSE3GetAlgebraRotationD", a1, 0))
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v5 = (a1 + 16);
  result = v6;
  if (v6[8].i8[8] != 2)
  {
    if (!a2)
    {
      return 0;
    }

    sub_27153BBA0(v5, &v9);
    result = 0;
    v7 = v10;
    v8 = v9;
LABEL_10:
    a2[1].i64[0] = v7;
    v8.i64[1] = vextq_s8(v8, v8, 8uLL).u64[0];
    *a2 = v8;
    return result;
  }

  if (result[8].i32[0] != 3)
  {
    sub_2711308D4();
  }

  if (a2)
  {
    v7 = result[1].i64[0];
    v8 = *result;
    goto LABEL_10;
  }

  return result;
}

uint64_t *VZSE3GetAlgebraTranslationF(uint64_t a1, uint64_t a2)
{
  if (sub_2711A352C("VZSE3GetAlgebraTranslationF", a1, 0))
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v7 = (a1 + 16);
  v6 = v8;
  v9 = *(v8 + 136);
  v10 = v9 > 5;
  v11 = (1 << v9) & 0x34;
  if (!v10 && v11 != 0)
  {
    if (!a2)
    {
      return 0;
    }

    sub_27153B8AC(v7, v15, v4);
    result = 0;
    v13 = v16;
    v14 = &v17;
    goto LABEL_14;
  }

  if (*(v6 + 128) != 2)
  {
    sub_2711308D4();
  }

  result = (v6 + 12);
  if (a2)
  {
    v13 = *result;
    v14 = (v6 + 20);
LABEL_14:
    *(a2 + 8) = *v14;
    *a2 = v13;
  }

  return result;
}

int8x16_t *VZSE3GetAlgebraTranslationD(uint64_t a1, int8x16_t *a2)
{
  if (sub_2711A352C("VZSE3GetAlgebraTranslationD", a1, 0))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v6 = (a1 + 16);
  v5 = v7;
  if (*(v7 + 136) != 2)
  {
    if (!a2)
    {
      return 0;
    }

    sub_27153BBA0(v6, v10);
    result = 0;
    v8 = v10[5];
    v9 = *&v10[3];
LABEL_10:
    a2[1].i64[0] = v8;
    v9.i64[1] = vextq_s8(v9, v9, 8uLL).u64[0];
    *a2 = v9;
    return result;
  }

  if (*(v5 + 128) != 3)
  {
    sub_2711308D4();
  }

  result = (v5 + 24);
  if (a2)
  {
    v8 = *(v5 + 40);
    v9 = *result;
    goto LABEL_10;
  }

  return result;
}

uint64_t VZSE3GetMatrix4x4F(uint64_t a1, int a2, int32x4_t *a3)
{
  v6 = sub_2711A352C("VZSE3GetMatrix4x4F", a1, 0);
  result = 0;
  if (v6)
  {
    return result;
  }

  sub_27136BDEC((a1 + 16), a2, a3, v9, v7);
  v31 = "VZSE3GetMatrix4x4F";
  if (v18)
  {
    return v9[0];
  }

  sub_27113F150("in function ", &v31);
  sub_271849064(v9, &v19, v21);
  sub_27112B960(v21, 0);
  if (v30 == 1)
  {
    if (v29 == 1)
    {
      if (v28 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }
    }

    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }
  }

  if (v20 < 0)
  {
    operator delete(v19);
    if (v18)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v17 != 1)
  {
    return 0;
  }

  if (v16 == 1)
  {
    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }
  }

  result = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9[2]);
    return 0;
  }

  return result;
}

void sub_2711A3D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  sub_27112D71C(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    sub_27112E024(&a10);
    _Unwind_Resume(a1);
  }

  sub_27112E024(&a10);
  _Unwind_Resume(a1);
}

uint64_t VZSE3GetMatrix4x4D(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_2711A352C("VZSE3GetMatrix4x4D", a1, 0);
  result = 0;
  if (v6)
  {
    return result;
  }

  sub_27136C07C((a1 + 16), a2, a3, v10, v7, v8);
  v32 = "VZSE3GetMatrix4x4D";
  if (v19)
  {
    return v10[0];
  }

  sub_27113F150("in function ", &v32);
  sub_271849064(v10, &v20, v22);
  sub_27112B960(v22, 0);
  if (v31 == 1)
  {
    if (v30 == 1)
    {
      if (v29 < 0)
      {
        operator delete(__p);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }
    }

    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }
  }

  if (v21 < 0)
  {
    operator delete(v20);
    if (v19)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v18 != 1)
  {
    return 0;
  }

  if (v17 == 1)
  {
    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  result = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10[2]);
    return 0;
  }

  return result;
}

void sub_2711A3F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  sub_27112D71C(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    sub_27112E024(&a10);
    _Unwind_Resume(a1);
  }

  sub_27112E024(&a10);
  _Unwind_Resume(a1);
}

void VZSE3GetAffine3x4F(uint64_t a1, int a2, uint64_t a3)
{
  if (!sub_2711A352C("VZSE3GetAffine3x4F", a1, 0))
  {
    sub_27136C32C((a1 + 16), a2, a3, v7, v6);
    sub_27114062C("VZSE3GetAffine3x4F", v7, 0);
    if ((v17 & 1) == 0 && v16 == 1)
    {
      if (v15 == 1)
      {
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v12 < 0)
        {
          operator delete(v11);
        }
      }

      if (v10 == 1 && v9 < 0)
      {
        operator delete(v8);
      }
    }
  }
}

void VZSE3GetAffine3x4D(uint64_t a1, int a2, uint64_t a3)
{
  if (!sub_2711A352C("VZSE3GetAffine3x4D", a1, 0))
  {
    sub_27136C5CC((a1 + 16), a2, a3, v8, v6, v7);
    sub_27114062C("VZSE3GetAffine3x4D", v8, 0);
    if ((v18 & 1) == 0 && v17 == 1)
    {
      if (v16 == 1)
      {
        if (v15 < 0)
        {
          operator delete(__p);
        }

        if (v13 < 0)
        {
          operator delete(v12);
        }
      }

      if (v11 == 1 && v10 < 0)
      {
        operator delete(v9);
      }
    }
  }
}

uint64_t sub_2711A4160(uint64_t result)
{
  if (atomic_fetch_add((result + 24), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711A419C()
{
  if (atomic_load_explicit(&qword_28087AB58, memory_order_acquire))
  {
    return qword_28087AB50;
  }

  if (__cxa_guard_acquire(&qword_28087AB58))
  {
    qword_28087AB50 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AB58);
  }

  return qword_28087AB50;
}

uint64_t *sub_2711A4200(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C3E0, 0);
  if (result)
  {
    return sub_27153C728((a1 + 16), result + 2);
  }

  return result;
}

uint64_t sub_2711A4284(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_2711A4AD4();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_280877C58, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711A42DC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877C70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877C70))
    {
      sub_2718519B4("VZSE3]", 5uLL, qword_280877C58);
      __cxa_guard_release(&qword_280877C70);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711A4780(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_280877C70);
  __cxa_begin_catch(a1);
  sub_2711A4AD4();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_280877C58, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711A46F0);
}

double sub_2711A48C0()
{
  *(&v9.__r_.__value_.__s + 23) = 7;
  strcpy(&v9, "float32");
  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v3 = v7;
LABEL_10:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087ABA0 = v7;
  unk_28087ABB0 = v8;
  return result;
}

void sub_2711A4AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711A4AD4()
{
  if ((atomic_load_explicit(&qword_280877C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C70))
  {
    sub_2718519B4("VZSE3]", 5uLL, qword_280877C58);

    __cxa_guard_release(&qword_280877C70);
  }
}

void sub_2711A4B64()
{
  v14 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "std::span");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&v11.__r_.__value_.__s + 23) = 7;
  strcpy(&v11, "float32");
  v0 = std::string::insert(&v11, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  sub_271851C68("3UL]", 3, &v13);
  sub_2711309E8(v10, &__p, 2uLL);
  sub_271851AD8(v8, v10, &xmmword_28087ABB8);
  v2 = v10[0];
  if (v10[0])
  {
    v3 = v10[1];
    v4 = v10[0];
    if (v10[1] != v10[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v10[0];
    }

    v10[1] = v2;
    operator delete(v4);
  }

  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(v8[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v9 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711A4D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_27137F4D0(&a16);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

double sub_2711A4DCC()
{
  *(&v9.__r_.__value_.__s + 23) = 7;
  strcpy(&v9, "float64");
  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v3 = v7;
LABEL_10:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087ABD0 = v7;
  unk_28087ABE0 = v8;
  return result;
}

void sub_2711A4FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711A4FE0()
{
  v14 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "std::span");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&v11.__r_.__value_.__s + 23) = 7;
  strcpy(&v11, "float64");
  v0 = std::string::insert(&v11, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  sub_271851C68("3UL]", 3, &v13);
  sub_2711309E8(v10, &__p, 2uLL);
  sub_271851AD8(v8, v10, &xmmword_28087ABE8);
  v2 = v10[0];
  if (v10[0])
  {
    v3 = v10[1];
    v4 = v10[0];
    if (v10[1] != v10[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v10[0];
    }

    v10[1] = v2;
    operator delete(v4);
  }

  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(v8[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v9 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711A51CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_27137F4D0(&a16);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_2711A5248(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C70))
  {
    sub_2718519B4("VZSE3]", 5uLL, qword_280877C58);
    __cxa_guard_release(&qword_280877C70);
  }

  if ((atomic_load_explicit(&qword_28087AB80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AB80))
  {
    sub_2718519B4("cv3d::vl::visual_logger::MatrixLayout]", 0x25uLL, &xmmword_28087AC00);
    __cxa_guard_release(&qword_28087AB80);
  }

  if (byte_28087AC17 < 0)
  {
    sub_271127178(&v23, xmmword_28087AC00, *(&xmmword_28087AC00 + 1));
  }

  else
  {
    v23 = xmmword_28087AC00;
    v24 = unk_28087AC10;
  }

  if ((atomic_load_explicit(&qword_28087AB88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AB88))
  {
    sub_2711A586C();
    __cxa_guard_release(&qword_28087AB88);
  }

  if (byte_28087AC2F < 0)
  {
    sub_271127178(&v25, xmmword_28087AC18, *(&xmmword_28087AC18 + 1));
  }

  else
  {
    v25 = xmmword_28087AC18;
    v26 = unk_28087AC28;
  }

  if ((atomic_load_explicit(&qword_28087AB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AB90))
  {
    sub_2718519B4("cv3d::vl::visual_logger::ArgOptions]", 0x23uLL, &xmmword_28087AC30);
    __cxa_guard_release(&qword_28087AB90);
  }

  if (byte_28087AC47 < 0)
  {
    sub_271127178(&v27, xmmword_28087AC30, *(&xmmword_28087AC30 + 1));
  }

  else
  {
    v27 = xmmword_28087AC30;
    v28 = unk_28087AC40;
  }

  sub_2711309E8(&v21, &v23, 3uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877C58, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_43:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v27);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711A55E4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087AB90);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 112))
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_2711A56E4(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_27112F660(v3, v1);
    sub_271130228(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_2711A575C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2711A5770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_2711A57A0(uint64_t *result)
{
  if (*(result + 120) == 1)
  {
    v1 = *result;
    *result = 0;
    if (!v1)
    {
      return result;
    }

    v2 = result;
    MEMORY[0x2743BF050](v1, 0x1000C4072FAA15ELL);
    return v2;
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v3 = result;
        operator delete(result[10]);
        result = v3;
      }

      if (*(result + 71) < 0)
      {
        v4 = result;
        operator delete(result[6]);
        result = v4;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v2 = result;
      operator delete(result[2]);
      return v2;
    }
  }

  return result;
}

void sub_2711A586C()
{
  v14 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "std::span");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&v11.__r_.__value_.__s + 23) = 7;
  strcpy(&v11, "float32");
  v0 = std::string::insert(&v11, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  sub_271851C68("12UL]", 4, &v13);
  sub_2711309E8(v10, &__p, 2uLL);
  sub_271851AD8(v8, v10, &xmmword_28087AC18);
  v2 = v10[0];
  if (v10[0])
  {
    v3 = v10[1];
    v4 = v10[0];
    if (v10[1] != v10[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v10[0];
    }

    v10[1] = v2;
    operator delete(v4);
  }

  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(v8[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v9 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711A5A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_27137F4D0(&a16);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_2711A5AD4(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C70))
  {
    sub_2718519B4("VZSE3]", 5uLL, qword_280877C58);
    __cxa_guard_release(&qword_280877C70);
  }

  if ((atomic_load_explicit(&qword_28087AB80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AB80))
  {
    sub_2718519B4("cv3d::vl::visual_logger::MatrixLayout]", 0x25uLL, &xmmword_28087AC00);
    __cxa_guard_release(&qword_28087AB80);
  }

  if (byte_28087AC17 < 0)
  {
    sub_271127178(&v23, xmmword_28087AC00, *(&xmmword_28087AC00 + 1));
  }

  else
  {
    v23 = xmmword_28087AC00;
    v24 = unk_28087AC10;
  }

  if ((atomic_load_explicit(&qword_28087AB98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AB98))
  {
    sub_2711A5F70();
    __cxa_guard_release(&qword_28087AB98);
  }

  if (byte_28087AC5F < 0)
  {
    sub_271127178(&v25, xmmword_28087AC48, *(&xmmword_28087AC48 + 1));
  }

  else
  {
    v25 = xmmword_28087AC48;
    v26 = unk_28087AC58;
  }

  if ((atomic_load_explicit(&qword_28087AB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AB90))
  {
    sub_2718519B4("cv3d::vl::visual_logger::ArgOptions]", 0x23uLL, &xmmword_28087AC30);
    __cxa_guard_release(&qword_28087AB90);
  }

  if (byte_28087AC47 < 0)
  {
    sub_271127178(&v27, xmmword_28087AC30, *(&xmmword_28087AC30 + 1));
  }

  else
  {
    v27 = xmmword_28087AC30;
    v28 = unk_28087AC40;
  }

  sub_2711309E8(&v21, &v23, 3uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_280877C58, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_43:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v27);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2711A5E70(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087AB90);
  while (1)
  {
    v4 = *(v1 - 1);
    v1 -= 3;
    if (v4 < 0)
    {
      operator delete(*v1);
    }

    if (v1 == (v2 - 112))
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_2711A5F70()
{
  v14 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "std::span");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&v11.__r_.__value_.__s + 23) = 7;
  strcpy(&v11, "float64");
  v0 = std::string::insert(&v11, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  sub_271851C68("12UL]", 4, &v13);
  sub_2711309E8(v10, &__p, 2uLL);
  sub_271851AD8(v8, v10, &xmmword_28087AC48);
  v2 = v10[0];
  if (v10[0])
  {
    v3 = v10[1];
    v4 = v10[0];
    if (v10[1] != v10[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v10[0];
    }

    v10[1] = v2;
    operator delete(v4);
  }

  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(v8[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v9 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2711A615C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_27137F4D0(&a16);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

double sub_2711A61D8@<D0>(uint64_t a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 5;
  strcpy(&__p, "VZSE3");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = std::string::insert(&v11, 0, "const ", 6uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v10 = v2->__r_.__value_.__r.__words[2];
  v9 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v5 = &v9;
      if (v4 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = SHIBYTE(v10);
    if ((SHIBYTE(v10) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v4 = *(&v9 + 1);
  v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v6 == *(&v9 + 1))
  {
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v5 = v9;
LABEL_12:
  *(v5 + v4) = 42;
  v7 = v4 + 1;
  if (SHIBYTE(v10) < 0)
  {
    *(&v9 + 1) = v7;
  }

  else
  {
    HIBYTE(v10) = v7 & 0x7F;
  }

  *(v5 + v7) = 0;
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

void sub_2711A63F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711A6430(void *a1)
{
  v2 = a1[48];
  a1[48] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[47];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[45];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[43];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[41];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[39];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[37];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[35];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = a1[33];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    sub_2711B039C((a1 + 2));
    return a1;
  }

  else
  {
    sub_2711B039C((a1 + 2));
    return a1;
  }
}

void sub_2711A66F0(void *a1)
{
  sub_2711A6430(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711A6728(uint64_t a1)
{
  sub_2711A6430((a1 - 8));

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711A6764(uint64_t a1)
{
  v2 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  sub_2711B039C(a1 + 24);
  return a1;
}

uint64_t sub_2711A67C0(uint64_t a1)
{
  v2 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return sub_2711B039C(a1 + 16);
}

void sub_2711A6824(uint64_t a1)
{
  v2 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  sub_2711B039C(a1 + 24);

  JUMPOUT(0x2743BF050);
}

void sub_2711A68A0(uint64_t a1)
{
  v2 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  sub_2711B039C(a1 + 16);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711A6920(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  sub_271167834(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_2711A6980(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(a1 + 16);

  sub_271167834(a1 + 8, v3);
}

void sub_2711A69E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  sub_271167834(a1 + 16, *(a1 + 24));

  JUMPOUT(0x2743BF050);
}

void sub_2711A6A68(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  sub_271167834(a1 + 8, *(a1 + 16));

  JUMPOUT(0x2743BF050);
}

void sub_2711A6B20(uint64_t a1)
{
  sub_2711B054C(a1 + 16);

  JUMPOUT(0x2743BF050);
}

void sub_2711A6B6C(uint64_t a1)
{
  sub_2711B054C(a1 + 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711A6BB8(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }

  v4 = *(a1 + 24);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_2711A6CB8(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 56) == 1 && (v3 = *(a1 + 32)) != 0 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *(a1 + 16);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_2711A6DC8(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }

  v4 = *(a1 + 24);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711A6ED8(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }

  v4 = *(a1 + 16);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711A6FE8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2711A7060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2711A70DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711A7168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZPeerInfoGetTypeID()
{
  if (atomic_load_explicit(&qword_28087ACB8, memory_order_acquire))
  {
    return qword_28087ACB0;
  }

  if (__cxa_guard_acquire(&qword_28087ACB8))
  {
    qword_28087ACB0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087ACB8);
  }

  return qword_28087ACB0;
}

uint64_t VZConnectionInfoGetTypeID()
{
  if (atomic_load_explicit(&qword_28087ACC8, memory_order_acquire))
  {
    return qword_28087ACC0;
  }

  if (__cxa_guard_acquire(&qword_28087ACC8))
  {
    qword_28087ACC0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087ACC8);
  }

  return qword_28087ACC0;
}

uint64_t VZConnectionInfoGetConnectionType(uint64_t a1)
{
  if (sub_2711A7308("VZConnectionInfoGetConnectionType", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

BOOL sub_2711A7308(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087ACD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087ACD0))
    {
      sub_2711B4270();
      __cxa_guard_release(&qword_28087ACD0);
    }

    if (byte_28087AE97 < 0)
    {
      sub_271127178(v5, xmmword_28087AE80, *(&xmmword_28087AE80 + 1));
    }

    else
    {
      *v5 = xmmword_28087AE80;
      v6 = unk_28087AE90;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_2711A756C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZConnectionInfoGetClientInfo(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (sub_2711A7308("VZConnectionInfoGetClientInfo", a1))
  {
    result = 0;
    goto LABEL_17;
  }

  result = *(a1 + 264);
  if (result)
  {
    goto LABEL_17;
  }

  v3 = operator new(0x188uLL, MEMORY[0x277D826F0]);
  if (v3)
  {
    v4 = v3;
    *v3 = &unk_288117810;
    v3[1] = *(a1 + 24);
    *(v3 + 8) = *(a1 + 40);
    *(v3 + 40) = 0;
    *(v3 + 64) = 0;
    if (*(a1 + 72) == 1)
    {
      if (*(a1 + 71) < 0)
      {
        sub_271127178(v3 + 40, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *(v3 + 40) = *(a1 + 48);
        *(v3 + 7) = *(a1 + 64);
      }

      *(v4 + 64) = 1;
    }

    *(v4 + 72) = 0;
    *(v4 + 216) = 0;
    if (*(a1 + 224) == 1)
    {
      sub_2711B0ED4(v4 + 72, (a1 + 80));
      *(v4 + 216) = 1;
    }

    v5 = 0;
    v4[14] = *(a1 + 232);
    v6 = *(a1 + 248);
    *(v4 + 62) = 1;
    *(v4 + 30) = v6;
    *v4 = &unk_288119B58;
    *(v4 + 1) = &unk_288119BA8;
    v4[16] = 0u;
    v4[17] = 0u;
    v4[18] = 0u;
    v4[19] = 0u;
    v4[20] = 0u;
    v4[21] = 0u;
    v4[22] = 0u;
    v4[23] = 0u;
    *(v4 + 48) = 0;
    atomic_fetch_add(v4 + 62, 1u);
    v7 = *(a1 + 264);
    *(a1 + 264) = v4;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087AC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC68))
    {
      sub_2718519B4("VZPeerInfo]", 0xAuLL, qword_28087ADA8);
      __cxa_guard_release(&qword_28087AC68);
    }

    if ((atomic_load_explicit(&qword_28087AC70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC70))
    {
      sub_2711B10C0();
    }

    if (byte_28087ADD7 < 0)
    {
      sub_271127178(&v26, xmmword_28087ADC0, *(&xmmword_28087ADC0 + 1));
    }

    else
    {
      v26 = xmmword_28087ADC0;
      v27 = unk_28087ADD0;
    }

    sub_2711309E8(&v24, &v26, 1uLL);
    LOBYTE(v13) = 0;
    v23 = 0;
    sub_27112E0C4(qword_28087ADA8, &v24, &v13, 0);
    if (v23 == 1 && v22 == 1)
    {
      if (v21 == 1)
      {
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }
      }

      if (v16 == 1 && v15 < 0)
      {
        operator delete(v14);
      }
    }

    v9 = v24;
    if (v24)
    {
      v10 = v25;
      v11 = v24;
      if (v25 != v24)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = v24;
      }

      v25 = v9;
      operator delete(v11);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    v4 = 0;
    v5 = 1;
    v7 = *(a1 + 264);
    *(a1 + 264) = 0;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  (*(*v7 + 24))(v7);
LABEL_14:
  if ((v5 & 1) == 0)
  {
    (*(*v4 + 24))(v4);
  }

  result = *(a1 + 264);
LABEL_17:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711A79DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087AC70);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711A7A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711A7A14);
  }

  sub_271120E50(a1);
}

uint64_t VZPeerInfoGetUUID(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetUUID", a1))
  {
    return 0;
  }

  v4 = *(a1 + 256);
  v3 = *(a1 + 264);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
        return *(a1 + 256);
      }

LABEL_8:
      Default = CFAllocatorGetDefault();
      v6 = CFUUIDCreateFromUUIDBytes(Default, *(a1 + 16));
      sub_271143910(&v7, v6);
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return *(a1 + 256);
}

BOOL sub_2711A7BB4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087ACD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087ACD8))
    {
      sub_2711B44CC();
      __cxa_guard_release(&qword_28087ACD8);
    }

    if (byte_28087AEAF < 0)
    {
      sub_271127178(v5, xmmword_28087AE98, *(&xmmword_28087AE98 + 1));
    }

    else
    {
      *v5 = xmmword_28087AE98;
      v6 = unk_28087AEA8;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_2711A7E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZPeerInfoGetDeviceUserGivenName(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetDeviceUserGivenName", a1))
  {
    return 0;
  }

  v4 = *(a1 + 272);
  v3 = *(a1 + 280);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
        return *(a1 + 272);
      }

LABEL_8:
      v5 = (a1 + 72);
      if (!*(a1 + 216))
      {
        v5 = &unk_271893EE0;
      }

      v6 = v5[23];
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = v5[23];
      }

      else
      {
        v8 = *(v5 + 1);
      }

      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v8, 0x8000100u, 0);
      sub_2715CB2C0(&v10, v9);
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return *(a1 + 272);
}

uint64_t VZPeerInfoGetDeviceProductName(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetDeviceProductName", a1))
  {
    return 0;
  }

  v4 = *(a1 + 288);
  v3 = *(a1 + 296);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
        return *(a1 + 288);
      }

LABEL_8:
      if (*(a1 + 216))
      {
        v5 = (a1 + 96);
      }

      else
      {
        v5 = &unk_271893EE0;
      }

      v6 = v5[23];
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = v5[23];
      }

      else
      {
        v8 = *(v5 + 1);
      }

      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v8, 0x8000100u, 0);
      sub_2715CB2C0(&v10, v9);
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return *(a1 + 288);
}

uint64_t VZPeerInfoGetDeviceType(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetDeviceType", a1))
  {
    return 0;
  }

  v4 = *(a1 + 304);
  v3 = *(a1 + 312);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
        return *(a1 + 304);
      }

LABEL_8:
      if (*(a1 + 216))
      {
        v5 = (a1 + 120);
      }

      else
      {
        v5 = &unk_271893EE0;
      }

      v6 = v5[23];
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = v5[23];
      }

      else
      {
        v8 = *(v5 + 1);
      }

      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v8, 0x8000100u, 0);
      sub_2715CB2C0(&v10, v9);
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return *(a1 + 304);
}

uint64_t VZPeerInfoGetDeviceSerialNumber(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetDeviceSerialNumber", a1))
  {
    return 0;
  }

  v4 = *(a1 + 320);
  v3 = *(a1 + 328);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
        return *(a1 + 320);
      }

LABEL_8:
      if (*(a1 + 216))
      {
        v5 = (a1 + 144);
      }

      else
      {
        v5 = &unk_271893EE0;
      }

      v6 = v5[23];
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = v5[23];
      }

      else
      {
        v8 = *(v5 + 1);
      }

      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v8, 0x8000100u, 0);
      sub_2715CB2C0(&v10, v9);
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return *(a1 + 320);
}

uint64_t VZPeerInfoGetDeviceOSBuildVersion(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetDeviceOSBuildVersion", a1))
  {
    return 0;
  }

  v4 = *(a1 + 336);
  v3 = *(a1 + 344);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
        return *(a1 + 336);
      }

LABEL_8:
      if (*(a1 + 216))
      {
        v5 = (a1 + 168);
      }

      else
      {
        v5 = &unk_271893EE0;
      }

      v6 = v5[23];
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = v5[23];
      }

      else
      {
        v8 = *(v5 + 1);
      }

      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v8, 0x8000100u, 0);
      sub_2715CB2C0(&v10, v9);
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return *(a1 + 336);
}

uint64_t VZPeerInfoGetDeviceOSProductVersion(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetDeviceOSProductVersion", a1))
  {
    return 0;
  }

  v4 = *(a1 + 352);
  v3 = *(a1 + 360);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
        return *(a1 + 352);
      }

LABEL_8:
      if (*(a1 + 216))
      {
        v5 = (a1 + 192);
      }

      else
      {
        v5 = &unk_271893EE0;
      }

      v6 = v5[23];
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = v5[23];
      }

      else
      {
        v8 = *(v5 + 1);
      }

      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v8, 0x8000100u, 0);
      sub_2715CB2C0(&v10, v9);
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return *(a1 + 352);
}

uint64_t VZPeerInfoGetProcessId(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetProcessId", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t VZPeerInfoGetProcessName(uint64_t a1)
{
  if (sub_2711A7BB4("VZPeerInfoGetProcessName", a1))
  {
    return 0;
  }

  v4 = *(a1 + 368);
  v3 = *(a1 + 376);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      if (v4)
      {
        return *(a1 + 368);
      }

LABEL_8:
      v5 = (a1 + 40);
      if (!*(a1 + 64))
      {
        v5 = &unk_271893EE0;
      }

      v6 = v5[23];
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = v5[23];
      }

      else
      {
        v8 = *(v5 + 1);
      }

      v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v7, v8, 0x8000100u, 0);
      sub_2715CB2C0(&v10, v9);
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return *(a1 + 368);
}

uint64_t VZPeerInfoGetCurrentProtocolVersion(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (sub_2711A7BB4("VZPeerInfoGetCurrentProtocolVersion", a1))
  {
    result = 0;
    goto LABEL_10;
  }

  result = *(a1 + 384);
  if (result)
  {
    goto LABEL_10;
  }

  v3 = operator new(0x20uLL, MEMORY[0x277D826F0]);
  v4 = v3;
  if (!v3)
  {
    if ((atomic_load_explicit(&qword_280877C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877C50))
    {
      sub_2718519B4("VZProtocolVersion]", 0x11uLL, qword_280877C38);
      __cxa_guard_release(&qword_280877C50);
    }

    if ((atomic_load_explicit(&qword_28087AC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC60))
    {
      sub_2711B0BC0();
    }

    if (byte_28087ADA7 < 0)
    {
      sub_271127178(&v26, xmmword_28087AD90, *(&xmmword_28087AD90 + 1));
    }

    else
    {
      v26 = xmmword_28087AD90;
      v27 = unk_28087ADA0;
    }

    sub_2711309E8(&v24, &v26, 1uLL);
    LOBYTE(v13) = 0;
    v23 = 0;
    sub_27112E0C4(qword_280877C38, &v24, &v13, 0);
    if (v23 == 1 && v22 == 1)
    {
      if (v21 == 1)
      {
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }
      }

      if (v16 == 1 && v15 < 0)
      {
        operator delete(v14);
      }
    }

    v9 = v24;
    if (v24)
    {
      v10 = v25;
      v11 = v24;
      if (v25 != v24)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = v24;
      }

      v25 = v9;
      operator delete(v11);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    v6 = 0;
    v7 = *(a1 + 384);
    *(a1 + 384) = 0;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(a1 + 224);
  v3[6] = *(a1 + 232);
  v3[7] = 1;
  *v3 = &unk_2881194A8;
  *(v3 + 1) = &unk_2881194F8;
  *(v3 + 2) = v5;
  off_2881194B8(v3);
  v6 = v4;
  v7 = *(a1 + 384);
  *(a1 + 384) = v4;
  if (v7)
  {
LABEL_6:
    (*(*v7 + 24))(v7);
  }

LABEL_7:
  if (v4)
  {
    (*(*v6 + 24))(v6);
  }

  result = *(a1 + 384);
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711A8E60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087AC60);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VZLoggerUpdateGetTypeID()
{
  if (atomic_load_explicit(&qword_28087ACE8, memory_order_acquire))
  {
    return qword_28087ACE0;
  }

  if (__cxa_guard_acquire(&qword_28087ACE8))
  {
    qword_28087ACE0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087ACE8);
  }

  return qword_28087ACE0;
}

uint64_t VZLoggerUpdateGetEnableStateChanges(void *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if ((atomic_load_explicit(&qword_28087ACF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087ACF0))
    {
      sub_2711B4730();
      __cxa_guard_release(&qword_28087ACF0);
    }

    if (byte_28087AEC7 < 0)
    {
      sub_271127178(v21, xmmword_28087AEB0, *(&xmmword_28087AEB0 + 1));
    }

    else
    {
      *v21 = xmmword_28087AEB0;
      v22 = unk_28087AEC0;
    }

    v23 = 1;
    sub_27112D7CC("VZLoggerUpdateGetEnableStateChanges", v21, &v24);
    v35 = v24;
    LOBYTE(v36) = 0;
    v45 = 0;
    if (v34 == 1)
    {
      v38 = 0;
      if (v27 == 1)
      {
        v36 = v25;
        v37 = v26;
        v26 = 0;
        v25 = 0uLL;
        v38 = 1;
      }

      LOBYTE(v39) = 0;
      v44 = 0;
      if (v33 == 1)
      {
        v40 = v29;
        v39 = *v28;
        v28[0] = 0;
        v28[1] = 0;
        v41 = v30;
        *__p = *v31;
        v43 = v32;
        v29 = 0;
        v31[0] = 0;
        v31[1] = 0;
        v32 = 0;
        v44 = 1;
      }

      v45 = 1;
    }

    v46 = 0;
    sub_27112B960(&v35, 0);
    if ((v46 & 1) == 0 && v45 == 1)
    {
      if (v44 == 1)
      {
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39);
        }
      }

      if (v38 == 1 && SHIBYTE(v37) < 0)
      {
        operator delete(v36);
      }
    }

    if (v34 == 1)
    {
      if (v33 == 1)
      {
        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31[0]);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[0]);
        }
      }

      if (v27 == 1 && SHIBYTE(v26) < 0)
      {
        operator delete(v25);
      }
    }

    if (v23 == 1 && SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    result = 0;
    goto LABEL_46;
  }

  result = a1[6];
  if (result)
  {
LABEL_46:
    v11 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = operator new(0x30uLL, MEMORY[0x277D826F0]);
  if (!v3)
  {
    if ((atomic_load_explicit(&qword_280877BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877BB0))
    {
      sub_2718519B4("VZEnableStates]", 0xEuLL, qword_280877B98);
      __cxa_guard_release(&qword_280877BB0);
    }

    if ((atomic_load_explicit(&qword_28087AC78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC78))
    {
      sub_2711B1864();
    }

    if (byte_28087ADEF < 0)
    {
      sub_271127178(&v47, xmmword_28087ADD8, *(&xmmword_28087ADD8 + 1));
    }

    else
    {
      v47 = xmmword_28087ADD8;
      v48 = unk_28087ADE8;
    }

    sub_2711309E8(v21, &v47, 1uLL);
    LOBYTE(v35) = 0;
    v46 = 0;
    sub_27112E0C4(qword_280877B98, v21, &v35, 0);
    if (v46 == 1 && v45 == 1)
    {
      if (v44 == 1)
      {
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39);
        }
      }

      if (v38 == 1 && SHIBYTE(v37) < 0)
      {
        operator delete(v36);
      }
    }

    v17 = v21[0];
    if (v21[0])
    {
      v18 = v21[1];
      v19 = v21[0];
      if (v21[1] != v21[0])
      {
        do
        {
          v20 = *(v18 - 1);
          v18 -= 3;
          if (v20 < 0)
          {
            operator delete(*v18);
          }
        }

        while (v18 != v17);
        v19 = v21[0];
      }

      v21[1] = v17;
      operator delete(v19);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
      v4 = 0;
      v14 = 1;
      v15 = a1[6];
      a1[6] = 0;
      if (!v15)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v4 = 0;
      v14 = 1;
      v15 = a1[6];
      a1[6] = 0;
      if (!v15)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v4 = v3;
  *v3 = &unk_288117810;
  *(&v24 + 1) = 0;
  *&v25 = 0;
  *&v24 = &v24 + 8;
  v5 = a1[2];
  if (v5 == a1 + 3)
  {
    v6 = 0;
    v3[3] = 0;
    v3[4] = 0;
    v7 = v3 + 3;
  }

  else
  {
    do
    {
      sub_2711B1344(&v24, &v24 + 1, v5 + 4);
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != a1 + 3);
    v6 = *(&v24 + 1);
    v12 = v24;
    v13 = v25;
    *(v4 + 24) = *(&v24 + 1);
    v7 = (v4 + 24);
    *(v4 + 16) = v12;
    *(v4 + 32) = v13;
    if (v13)
    {
      *(v6 + 16) = v7;
      *&v24 = &v24 + 8;
      *(&v24 + 1) = 0;
      *&v25 = 0;
      v6 = 0;
      goto LABEL_50;
    }
  }

  *(v4 + 16) = v7;
LABEL_50:
  sub_271167834(&v24, v6);
  *(v4 + 40) = 1;
  *v4 = &unk_288119848;
  *(v4 + 8) = &unk_288119898;
  off_288119858(v4);
  v14 = 0;
  v15 = a1[6];
  a1[6] = v4;
  if (v15)
  {
LABEL_51:
    (*(*v15 + 24))(v15);
  }

LABEL_52:
  if ((v14 & 1) == 0)
  {
    (*(*v4 + 24))(v4);
  }

  result = a1[6];
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711A95D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087AC78);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711A95EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280877BB0);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711A9608(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711A9614);
  }

  sub_271120E50(a1);
}

uint64_t VZServerOptionsGetTypeID()
{
  if (atomic_load_explicit(&qword_28087AD00, memory_order_acquire))
  {
    return qword_28087ACF8;
  }

  if (__cxa_guard_acquire(&qword_28087AD00))
  {
    qword_28087ACF8 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AD00);
  }

  return qword_28087ACF8;
}

_OWORD *VZServerOptionsCreate()
{
  v0 = operator new(0xA0uLL, MEMORY[0x277D826F0]);
  if (v0)
  {
    *v0 = 0u;
    v0[8] = 0u;
    v0[9] = 0u;
    v0[6] = 0u;
    v0[7] = 0u;
    v0[4] = 0u;
    v0[5] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
    v0[1] = 0u;
    v1 = v0;
    *v0 = &unk_288117810;
    sub_27136C864((v0 + 1));
    result = v1;
    *(v1 + 38) = 1;
    *v1 = &unk_288119688;
    *(v1 + 1) = &unk_2881196D8;
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087AD08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD08))
    {
      sub_2718519B4("VZServerOptions]", 0xFuLL, qword_28087AEC8);
      __cxa_guard_release(&qword_28087AD08);
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v7) = 0;
    v17 = 0;
    sub_27112E0C4(qword_28087AEC8, &v18, &v7, 0);
    if (v17 == 1 && v16 == 1)
    {
      if (v15 == 1)
      {
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v12 < 0)
        {
          operator delete(v11);
        }
      }

      if (v10 == 1 && v9 < 0)
      {
        operator delete(v8);
      }
    }

    v3 = v18;
    if (v18)
    {
      v4 = v19;
      v5 = v18;
      if (v19 != v18)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = v18;
      }

      v19 = v3;
      operator delete(v5);
    }

    return 0;
  }

  return result;
}

BOOL VZServerOptionsSetTcpIpPort(uint64_t a1, unsigned int a2)
{
  result = sub_2711A9924("VZServerOptionsSetTcpIpPort", a1);
  if (!result)
  {
    if (a2)
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        *(a1 + 24) = 1;
      }

      *(a1 + 16) = a2;
    }

    else if (*(a1 + 24))
    {
      *(a1 + 24) = 0;
    }
  }

  return result;
}

BOOL sub_2711A9924(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD10))
    {
      sub_2711B4A24();
      __cxa_guard_release(&qword_28087AD10);
    }

    if (byte_28087AEF7 < 0)
    {
      sub_271127178(v5, xmmword_28087AEE0, *(&xmmword_28087AEE0 + 1));
    }

    else
    {
      *v5 = xmmword_28087AEE0;
      v6 = unk_28087AEF0;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_2711A9B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZServerOptionsSetSyncType(uint64_t a1, unsigned int a2)
{
  if (!sub_2711A9924("VZServerOptionsSetSyncType", a1))
  {
    sub_27136CBA0(a1 + 16, a2, v4);
    sub_27114062C("VZServerOptionsSetSyncType", v4, 0);
    if ((v14 & 1) == 0 && v13 == 1)
    {
      if (v12 == 1)
      {
        if (v11 < 0)
        {
          operator delete(__p);
        }

        if (v9 < 0)
        {
          operator delete(v8);
        }
      }

      if (v7 == 1 && v6 < 0)
      {
        operator delete(v5);
      }
    }
  }
}

uint64_t VZServerOptionsSetConnectionStatusChangedBlock(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = sub_2711A9924("VZServerOptionsSetConnectionStatusChangedBlock", a1);
  if ((result & 1) == 0)
  {
    if (a2)
    {
      operator new();
    }

    v6[0] = &unk_28812DB28;
    v6[1] = 0;
    v6[2] = 0;
    v7 = v6;
    sub_27136CDE4(a1 + 16, v6);
    result = v7;
    if (v7 == v6)
    {
      result = (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      result = (*(*v7 + 40))();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711A9DFC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_2711A9E14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711A9E28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2711A9E28(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t VZServerOptionsSetConnectionStatusChangedFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = sub_2711A9924("VZServerOptionsSetConnectionStatusChangedFunction", a1);
  if ((result & 1) == 0)
  {
    v8[0] = &unk_28812DC28;
    v8[1] = a3;
    v8[2] = a2;
    v9 = v8;
    sub_27136CDE4(a1 + 16, v8);
    result = v9;
    if (v9 == v8)
    {
      result = (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      result = (*(*v9 + 40))();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711A9FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711A9E28(va);
  _Unwind_Resume(a1);
}

uint64_t VZServerOptionsSetLoggerUpdatedBlock(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = sub_2711A9924("VZServerOptionsSetLoggerUpdatedBlock", a1);
  if ((result & 1) == 0)
  {
    if (a2)
    {
      operator new();
    }

    v6[0] = &unk_28812DBA8;
    v6[1] = 0;
    v6[2] = 0;
    v7 = v6;
    sub_27136D1EC(a1 + 16, v6);
    result = v7;
    if (v7 == v6)
    {
      result = (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      result = (*(*v7 + 40))();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711AA130(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_2711AA148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711AA15C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2711AA15C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t VZServerOptionsSetLoggerUpdatedFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = sub_2711A9924("VZServerOptionsSetLoggerUpdatedFunction", a1);
  if ((result & 1) == 0)
  {
    v8[0] = &unk_28812DCA8;
    v8[1] = a3;
    v8[2] = a2;
    v9 = v8;
    sub_27136D1EC(a1 + 16, v8);
    result = v9;
    if (v9 == v8)
    {
      result = (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      result = (*(*v9 + 40))();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2711AA2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711AA15C(va);
  _Unwind_Resume(a1);
}

uint64_t VZServerGetTypeID()
{
  if (atomic_load_explicit(&qword_28087AD20, memory_order_acquire))
  {
    return qword_28087AD18;
  }

  if (__cxa_guard_acquire(&qword_28087AD20))
  {
    qword_28087AD18 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AD20);
  }

  return qword_28087AD18;
}

uint64_t VZServerCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    operator new();
  }

  v50[0] = &unk_28812DAA8;
  v50[1] = 0;
  v50[2] = 0;
  v51 = v50;
  if (a2)
  {
    sub_2711B50EC(v38, (a2 + 16));
    v49 = 1;
  }

  else
  {
    v38[0] = 0;
    v49 = 0;
  }

  v36 = &v37;
  v37 = a3;
  if (v51)
  {
    if (v51 == v50)
    {
      v68 = v67;
      (*(*v51 + 24))();
    }

    else
    {
      v68 = v51;
      v51 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  v4 = 1;
  v69 = 1;
  v55[0] = 0;
  v66 = 0;
  if (v49 == 1)
  {
    *v55 = *v38;
    *&v55[5] = *&v38[5];
    LOBYTE(v56) = 0;
    v58 = 0;
    if (v41 == 1)
    {
      v56 = v39;
      v57 = v40;
      v40 = 0;
      v39 = 0uLL;
      v58 = 1;
    }

    v59 = v42;
    v60 = 0;
    v62 = 0;
    if (v45 == 1)
    {
      if (v44)
      {
        if (v44 == &v43)
        {
          v61 = &v60;
          (*(*v44 + 24))();
        }

        else
        {
          v61 = v44;
          v44 = 0;
        }
      }

      else
      {
        v61 = 0;
      }

      v62 = 1;
    }

    v63 = 0;
    v65 = 0;
    if (v48 == 1)
    {
      if (v47)
      {
        if (v47 == &v46)
        {
          v64 = &v63;
          (*(*v47 + 24))();
        }

        else
        {
          v64 = v47;
          v47 = 0;
        }
      }

      else
      {
        v64 = 0;
      }

      v65 = 1;
    }

    v66 = 1;
  }

  v52[0] = &unk_288108A18;
  v52[1] = sub_271141150;
  v53 = v52;
  v54 = 1;
  sub_27136E240(v67, v55, v52, &v26);
  if (v54 != 1)
  {
LABEL_33:
    if (v66 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v53 != v52)
  {
    if (v53)
    {
      (*(*v53 + 40))();
    }

    goto LABEL_33;
  }

  (*(*v53 + 32))(v53);
  if (v66 == 1)
  {
LABEL_34:
    sub_2711B054C(v55);
  }

LABEL_35:
  if (v69 != 1)
  {
    goto LABEL_39;
  }

  if (v68 != v67)
  {
    if (v68)
    {
      (*(*v68 + 40))(v68);
    }

LABEL_39:
    v5 = v35;
    if (v35)
    {
      goto LABEL_40;
    }

LABEL_48:
    v15 = v26;
    LOBYTE(v16) = 0;
    v24 = 0;
    if (v34 == 1)
    {
      sub_27112F6CC(&v16, v27);
      v24 = 1;
    }

    v25 = 1;
    sub_2711B5708(&v36, &v15);
    if (v25 == 1 && v24 == 1)
    {
      if (v23 == 1)
      {
        if (v22 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }
      }

      if (v18 == 1 && v17 < 0)
      {
        operator delete(v16);
        if (v35 == 1)
        {
          goto LABEL_74;
        }

        goto LABEL_82;
      }
    }

    goto LABEL_73;
  }

  (*(*v68 + 32))(v68);
  v5 = v35;
  if ((v35 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_40:
  sub_2711B5B88(&v26);
  v6 = operator new(0x58uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    LOBYTE(v15) = 0;
    v25 = 0;
    sub_2711B5708(&v36, &v15);
    if (v25 == 1)
    {
      if (v24 != 1)
      {
        v4 = 0;
        if (v35 == 1)
        {
          goto LABEL_74;
        }

LABEL_82:
        if (v34 == 1)
        {
          if (v33 == 1)
          {
            if (v32 < 0)
            {
              operator delete(v31);
            }

            if (v30 < 0)
            {
              operator delete(v29);
            }
          }

          if (BYTE8(v28) == 1 && SBYTE7(v28) < 0)
          {
            operator delete(v27[0]);
          }
        }

        goto LABEL_91;
      }

      if (v23 == 1)
      {
        if (v22 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }
      }

      v4 = 0;
      if (v18 == 1 && v17 < 0)
      {
        operator delete(v16);
        v4 = 0;
        if (v35 == 1)
        {
          goto LABEL_74;
        }

        goto LABEL_82;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_73:
    if (v35 == 1)
    {
      goto LABEL_74;
    }

    goto LABEL_82;
  }

  v4 = v6;
  v6[1] = v26;
  v26 = 0uLL;
  *(v6 + 32) = 0;
  *(v6 + 64) = 0;
  v7 = v29;
  if (v29 == 1)
  {
    v8 = *v27;
    v9 = v28;
    v27[0] = 0;
    v27[1] = 0;
    v6[2] = v8;
    v6[3] = v9;
    *(v6 + 64) = v7;
  }

  *(v6 + 18) = 1;
  *v6 = &unk_288118E18;
  *(v6 + 1) = &unk_288118E68;
  *(v6 + 10) = 0;
  if (v35 != 1)
  {
    goto LABEL_82;
  }

LABEL_74:
  if (v29 == 1)
  {
    v10 = v27[1];
    if (v27[1])
    {
      if (!atomic_fetch_add(v27[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v11 = *(&v26 + 1);
  if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_91:
  if (v5)
  {
    if (v49 != 1)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v4 = 0;
    if (v49 != 1)
    {
LABEL_93:
      v12 = v51;
      if (v51 != v50)
      {
        goto LABEL_94;
      }

LABEL_98:
      (*(*v12 + 32))(v12);
      goto LABEL_99;
    }
  }

  sub_2711B054C(v38);
  v12 = v51;
  if (v51 == v50)
  {
    goto LABEL_98;
  }

LABEL_94:
  if (v12)
  {
    (*(*v12 + 40))(v12);
  }

LABEL_99:
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t VZServerCreateWithFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    sub_2711B50EC(v42, (a3 + 16));
    v7 = 1;
    v53 = 1;
  }

  else
  {
    v7 = 0;
    v42[0] = 0;
    v53 = 0;
  }

  v40 = &v41;
  v41 = a4;
  v69[0] = &unk_28812DD28;
  v69[1] = a2;
  v69[2] = a1;
  v70 = v69;
  v8 = 1;
  v71 = 1;
  v57[0] = 0;
  v68 = 0;
  if (v7)
  {
    *v57 = *v42;
    *&v57[5] = *&v42[5];
    LOBYTE(v58) = 0;
    v60 = 0;
    if (v45 == 1)
    {
      v58 = v43;
      v59 = v44;
      v44 = 0;
      v43 = 0uLL;
      v60 = 1;
    }

    v61 = v46;
    v62 = 0;
    v64 = 0;
    if (v49 == 1)
    {
      if (v48)
      {
        if (v48 == &v47)
        {
          v63 = &v62;
          (*(*v48 + 24))();
        }

        else
        {
          v63 = v48;
          v48 = 0;
        }
      }

      else
      {
        v63 = 0;
      }

      v64 = 1;
    }

    v65 = 0;
    v67 = 0;
    if (v52 == 1)
    {
      if (v51)
      {
        if (v51 == &v50)
        {
          v66 = &v65;
          (*(*v51 + 24))();
        }

        else
        {
          v66 = v51;
          v51 = 0;
        }
      }

      else
      {
        v66 = 0;
      }

      v67 = 1;
    }

    v68 = 1;
  }

  v54[0] = &unk_288108A18;
  v54[1] = sub_271141150;
  v55 = v54;
  v56 = 1;
  sub_27136E240(v69, v57, v54, &v30);
  if (v56 != 1)
  {
LABEL_26:
    if (v68 != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v55 != v54)
  {
    if (v55)
    {
      (*(*v55 + 40))();
    }

    goto LABEL_26;
  }

  (*(*v55 + 32))(v55);
  if (v68 == 1)
  {
LABEL_27:
    sub_2711B054C(v57);
  }

LABEL_28:
  if (v71 != 1)
  {
    goto LABEL_32;
  }

  if (v70 != v69)
  {
    if (v70)
    {
      (*(*v70 + 40))(v70);
    }

LABEL_32:
    v9 = v39;
    if (v39)
    {
      goto LABEL_33;
    }

LABEL_41:
    v19 = v30;
    LOBYTE(v20) = 0;
    v28 = 0;
    if (v38 == 1)
    {
      sub_27112F6CC(&v20, v31);
      v28 = 1;
    }

    v29 = 1;
    sub_2711B6094(&v40, &v19);
    if (v29 == 1 && v28 == 1)
    {
      if (v27 == 1)
      {
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20);
        if (v39 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_75;
      }
    }

    goto LABEL_66;
  }

  (*(*v70 + 32))(v70);
  v9 = v39;
  if ((v39 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_33:
  sub_2711B5B88(&v30);
  v10 = operator new(0x58uLL, MEMORY[0x277D826F0]);
  if (!v10)
  {
    LOBYTE(v19) = 0;
    v29 = 0;
    sub_2711B6094(&v40, &v19);
    if (v29 == 1)
    {
      if (v28 != 1)
      {
        v8 = 0;
        if (v39 == 1)
        {
          goto LABEL_67;
        }

LABEL_75:
        if (v38 == 1)
        {
          if (v37 == 1)
          {
            if (v36 < 0)
            {
              operator delete(v35);
            }

            if (v34 < 0)
            {
              operator delete(v33);
            }
          }

          if (BYTE8(v32) == 1 && SBYTE7(v32) < 0)
          {
            operator delete(v31[0]);
          }
        }

        goto LABEL_84;
      }

      if (v27 == 1)
      {
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }
      }

      v8 = 0;
      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20);
        v8 = 0;
        if (v39 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_66:
    if (v39 == 1)
    {
      goto LABEL_67;
    }

    goto LABEL_75;
  }

  v8 = v10;
  v10[1] = v30;
  v30 = 0uLL;
  *(v10 + 32) = 0;
  *(v10 + 64) = 0;
  v11 = v33;
  if (v33 == 1)
  {
    v12 = *v31;
    v13 = v32;
    v31[0] = 0;
    v31[1] = 0;
    v10[2] = v12;
    v10[3] = v13;
    *(v10 + 64) = v11;
  }

  *(v10 + 18) = 1;
  *v10 = &unk_288118E18;
  *(v10 + 1) = &unk_288118E68;
  *(v10 + 10) = 0;
  if (v39 != 1)
  {
    goto LABEL_75;
  }

LABEL_67:
  if (v33 == 1)
  {
    v14 = v31[1];
    if (v31[1])
    {
      if (!atomic_fetch_add(v31[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  v15 = *(&v30 + 1);
  if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_84:
  if ((v9 & 1) == 0)
  {
    v8 = 0;
    if (v53 != 1)
    {
      goto LABEL_86;
    }

LABEL_89:
    sub_2711B054C(v42);
    v18 = *MEMORY[0x277D85DE8];
    return v8;
  }

  if (v53 == 1)
  {
    goto LABEL_89;
  }

LABEL_86:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t VZServerIsClientLoggerEnabled(uint64_t a1, const void *a2, char *a3, uint64_t a4)
{
  if (sub_2711AB980("VZServerIsClientLoggerEnabled", a1, a4) || sub_2711ABC30("VZServerIsClientLoggerEnabled", a2, a4))
  {
    goto LABEL_3;
  }

  if (!a2 || (v10 = CFUUIDGetTypeID(), CFGetTypeID(a2) != v10))
  {
    LOBYTE(v12[0]) = 0;
    v13 = 0;
    sub_2711B0B74();
  }

  v26 = CFUUIDGetUUIDBytes(a2);
  v12[0] = sub_271813EA8(&v26);
  v12[1] = v11;
  v13 = 1;
  sub_27136E900(a3, (a1 + 16), v12, v14);
  v36 = "VZServerIsClientLoggerEnabled";
  if (v23)
  {
    v8 = v14[0];
    return v8 & 1;
  }

  sub_27113F150("in function ", &v36);
  sub_271849064(v14, &v24, &v26);
  sub_27112B960(&v26, a4);
  if (v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(__p);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if ((v23 & 1) != 0 || v22 != 1)
  {
    goto LABEL_3;
  }

  if (v21 == 1)
  {
    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }

  v8 = 0;
  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14[2]);
LABEL_3:
    v8 = 0;
  }

  return v8 & 1;
}

void sub_2711AB938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  sub_27112D71C(&a34);
  if (a33 < 0)
  {
    operator delete(__p);
    sub_27112E024(&a12);
    _Unwind_Resume(a1);
  }

  sub_27112E024(&a12);
  _Unwind_Resume(a1);
}

BOOL sub_2711AB980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AD48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD48))
    {
      sub_2711B69B0();
      __cxa_guard_release(&qword_28087AD48);
    }

    if (byte_28087AF6F < 0)
    {
      sub_271127178(v7, xmmword_28087AF58, *(&xmmword_28087AF58 + 1));
    }

    else
    {
      *v7 = xmmword_28087AF58;
      v8 = unk_28087AF68;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_2711ABBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2711ABC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AD50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD50))
    {
      sub_2711B6C10();
      __cxa_guard_release(&qword_28087AD50);
    }

    if (byte_28087AF87 < 0)
    {
      sub_271127178(v7, xmmword_28087AF70, *(&xmmword_28087AF70 + 1));
    }

    else
    {
      *v7 = xmmword_28087AF70;
      v8 = unk_28087AF80;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_2711ABEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZServerGetClientLoggerEnableState(uint64_t a1, const void *a2, char *a3, uint64_t a4)
{
  if (sub_2711AB980("VZServerGetClientLoggerEnableState", a1, a4))
  {
    return 255;
  }

  if (sub_2711ABC30("VZServerGetClientLoggerEnableState", a2, a4))
  {
    return 255;
  }

  if (!a2 || (v9 = CFUUIDGetTypeID(), CFGetTypeID(a2) != v9))
  {
    sub_2711B0B74();
  }

  v26 = CFUUIDGetUUIDBytes(a2);
  v14[0] = sub_271813EA8(&v26);
  v14[1] = v10;
  v15 = 1;
  sub_27136EB44(a3, (a1 + 16), v14, v16);
  result = sub_27116683C("VZServerGetClientLoggerEnableState", v16, 255, a4);
  if ((v25 & 1) == 0 && v24 == 1)
  {
    if (v23 == 1)
    {
      if (v22 < 0)
      {
        v11 = result;
        operator delete(__p);
        result = v11;
      }

      if (v20 < 0)
      {
        v12 = result;
        operator delete(v19);
        result = v12;
      }
    }

    if (v18 == 1 && v17 < 0)
    {
      v13 = result;
      operator delete(v16[2]);
      return v13;
    }
  }

  return result;
}

void sub_2711AC078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void VZServerCopyClientLoggerEnableStates(uint64_t a1, const void *a2, uint64_t a3)
{
  if (sub_2711AB980("VZServerCopyClientLoggerEnableStates", a1, a3) || sub_2711ABC30("VZServerCopyClientLoggerEnableStates", a2, a3))
  {
    return;
  }

  if (!a2 || (v6 = CFUUIDGetTypeID(), CFGetTypeID(a2) != v6))
  {
    LOBYTE(v12[0]) = 0;
    v13 = 0;
    sub_2711B0B74();
  }

  v25 = CFUUIDGetUUIDBytes(a2);
  v12[0] = sub_271813EA8(&v25);
  v12[1] = v7;
  v13 = 1;
  v36 = &v37;
  v37 = a3;
  sub_27136ED88(a1 + 16, v12, &v25);
  if ((v35 & 1) == 0)
  {
    v14 = v25;
    LOBYTE(v15) = 0;
    v23 = 0;
    if (v34 == 1)
    {
      sub_27112F6CC(&v15, &v26);
      v23 = 1;
    }

    v24 = 1;
    sub_2711B6E70(&v36, &v14);
    if (v24 == 1 && v23 == 1)
    {
      if (v22 == 1)
      {
        if (v21 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }
      }

      if (v17 == 1 && v16 < 0)
      {
        operator delete(v15);
        if (v35 != 1)
        {
          goto LABEL_36;
        }

LABEL_33:
        sub_271167834(&v25, *&v25.byte8);
        return;
      }
    }

LABEL_32:
    if (v35 != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v8 = operator new(0x30uLL, MEMORY[0x277D826F0]);
  if (!v8)
  {
    v14.byte0 = 0;
    v24 = 0;
    sub_2711B6E70(&v36, &v14);
    if (v24 == 1 && v23 == 1)
    {
      if (v22 == 1)
      {
        if (v21 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }
      }

      if (v17 == 1 && v16 < 0)
      {
        operator delete(v15);
      }
    }

    goto LABEL_32;
  }

  v9 = v25;
  v8[3] = *&v25.byte8;
  v10 = (v8 + 3);
  v8[2] = *&v9.byte0;
  v11 = v26;
  v8[4] = v26;
  if (v11)
  {
    *(*&v9.byte8 + 16) = v10;
    *&v25.byte0 = &v25.byte8;
    *&v25.byte8 = 0;
    *&v26 = 0;
  }

  else
  {
    v8[2] = v10;
  }

  *(v8 + 10) = 1;
  *v8 = &unk_288119848;
  v8[1] = &unk_288119898;
  if (v35 == 1)
  {
    goto LABEL_33;
  }

LABEL_36:
  if (v34 == 1)
  {
    if (v33 == 1)
    {
      if (v32 < 0)
      {
        operator delete(v31);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }
    }

    if (v28 == 1 && v27 < 0)
    {
      operator delete(v26);
    }
  }
}

void sub_2711AC3DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const char *a13, std::logic_error a14, int a15, __int16 a16, char a17, char a18, char a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::runtime_error __p, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_2711307D4(&a41);
  sub_2711B7470(v42 - 192);
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a14, exception_ptr);
    a14.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a13 = std::logic_error::what(&a14);
    sub_27113604C(&__p, &a13);
    sub_271369D54(&__p, &a20);
    *(v41 + 128) = a20;
    sub_27184A2B4(v42 - 176, &a21);
    *(v42 - 72) = 1;
    sub_2711B6E70((v42 - 64), v42 - 192);
    sub_2711307D4(v42 - 192);
    sub_27112D71C(&a20);
    if (a38 == 1 && a37 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a14);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v46 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v46);
    __cxa_begin_catch(a1);
    v47 = (a39 + 48);
    if (*(a39 + 71) < 0)
    {
      v47 = *v47;
    }

    a13 = v47;
    sub_27113604C(&a14, &a13);
    sub_27136A868(&a14, &a20);
    *(v41 + 128) = a20;
    sub_27184A2B4(v42 - 176, &a21);
    *(v42 - 72) = 1;
    sub_2711B6E70((v42 - 64), v42 - 192);
    sub_2711307D4(v42 - 192);
    sub_27112D71C(&a20);
    if (a19 == 1 && a18 < 0)
    {
      operator delete(a14.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v42 - 192) = 0;
    *(v42 - 72) = 0;
    sub_2711B6E70((v42 - 64), v42 - 192);
    sub_2711307D4(v42 - 192);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711AC3B4);
}

BOOL VZServerEnableClientLogger(uint64_t a1, const __CFUUID *a2, char *a3, uint64_t a4)
{
  result = sub_2711AC718("VZServerEnableClientLogger", a1, a4);
  if (!result)
  {
    if (a2 && (v8 = CFUUIDGetTypeID(), CFGetTypeID(a2) == v8))
    {
      v12 = CFUUIDGetUUIDBytes(a2);
      v10[0] = sub_271813EA8(&v12);
      v10[1] = v9;
      v11 = 1;
    }

    else
    {
      LOBYTE(v10[0]) = 0;
      v11 = 0;
    }

    sub_27136EFB0((a1 + 16), v10, a3);
  }

  return result;
}

void sub_2711AC704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

BOOL sub_2711AC718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AD68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD68))
    {
      sub_2711B7524();
      __cxa_guard_release(&qword_28087AD68);
    }

    if (byte_28087AFCF < 0)
    {
      sub_271127178(v7, xmmword_28087AFB8, *(&xmmword_28087AFB8 + 1));
    }

    else
    {
      *v7 = xmmword_28087AFB8;
      v8 = unk_28087AFC8;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_2711AC988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL VZServerDisableClientLogger(uint64_t a1, const __CFUUID *a2, char *a3, uint64_t a4)
{
  result = sub_2711AC718("VZServerDisableClientLogger", a1, a4);
  if (!result)
  {
    if (a2 && (v8 = CFUUIDGetTypeID(), CFGetTypeID(a2) == v8))
    {
      v12 = CFUUIDGetUUIDBytes(a2);
      v10[0] = sub_271813EA8(&v12);
      v10[1] = v9;
      v11 = 1;
    }

    else
    {
      LOBYTE(v10[0]) = 0;
      v11 = 0;
    }

    sub_27136F30C((a1 + 16), v10, a3);
  }

  return result;
}

void sub_2711ACAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void VZServerSetClientLoggerEnableState(uint64_t a1, const __CFUUID *a2, char *a3, unsigned int a4, uint64_t a5)
{
  if (!sub_2711AC718("VZServerSetClientLoggerEnableState", a1, a5))
  {
    if (a2 && (v10 = CFUUIDGetTypeID(), CFGetTypeID(a2) == v10))
    {
      v25 = CFUUIDGetUUIDBytes(a2);
      v12[0] = sub_271813EA8(&v25);
      v12[1] = v11;
      v13 = 1;
    }

    else
    {
      LOBYTE(v12[0]) = 0;
      v13 = 0;
    }

    sub_27136F668(a3, (a1 + 16), v12, a4, v14);
    sub_27114062C("VZServerSetClientLoggerEnableState", v14, a5);
    if ((v24 & 1) == 0 && v23 == 1)
    {
      if (v22 == 1)
      {
        if (v21 < 0)
        {
          operator delete(__p);
        }

        if (v19 < 0)
        {
          operator delete(v18);
        }
      }

      if (v17 == 1 && v16 < 0)
      {
        operator delete(v15);
      }
    }
  }
}

void sub_2711ACC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

BOOL VZServerSetClientLoggerEnableStates(uint64_t a1, const __CFUUID *a2, uint64_t a3, uint64_t a4)
{
  result = sub_2711AC718("VZServerSetClientLoggerEnableStates", a1, a4);
  if (!result)
  {
    result = sub_2711663C4("VZServerSetClientLoggerEnableStates", a3, a4);
    if (!result)
    {
      if (a2 && (v9 = CFUUIDGetTypeID(), CFGetTypeID(a2) == v9))
      {
        v13 = CFUUIDGetUUIDBytes(a2);
        v11[0] = sub_271813EA8(&v13);
        v11[1] = v10;
        v12 = 1;
      }

      else
      {
        LOBYTE(v11[0]) = 0;
        v12 = 0;
      }

      sub_27136FACC((a1 + 16), v11, (a3 + 16));
    }
  }

  return result;
}

void sub_2711ACD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

uint64_t VZSyncControlGetTypeID()
{
  if (atomic_load_explicit(&qword_28087AD78, memory_order_acquire))
  {
    return qword_28087AD70;
  }

  if (__cxa_guard_acquire(&qword_28087AD78))
  {
    qword_28087AD70 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AD78);
  }

  return qword_28087AD70;
}

void *VZServerGetSyncControl(uint64_t a1)
{
  if (sub_2711AB980("VZServerGetSyncControl", a1, 0))
  {
    return 0;
  }

  result = *(a1 + 80);
  if (!result)
  {
    if (*(a1 + 64) == 1)
    {
      result = sub_2711B2188(a1 + 32);
      v3 = *(a1 + 80);
      *(a1 + 80) = result;
      if (v3)
      {
        (*(*v3 + 24))(v3);
        return *(a1 + 80);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *VZServerGetSyncControlMutable(uint64_t a1)
{
  if (sub_2711AC718("VZServerGetSyncControlMutable", a1, 0))
  {
    return 0;
  }

  result = *(a1 + 80);
  if (!result)
  {
    if (*(a1 + 64) == 1)
    {
      result = sub_2711B2188(a1 + 32);
      v3 = *(a1 + 80);
      *(a1 + 80) = result;
      if (v3)
      {
        (*(*v3 + 24))(v3);
        return *(a1 + 80);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VZSyncControlGetStateId(uint64_t a1)
{
  if (a1)
  {
    v1 = *(**(a1 + 32) + 56);

    return v1();
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087AD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD80))
    {
      sub_2711B7724();
      __cxa_guard_release(&qword_28087AD80);
    }

    if (byte_28087AFE7 < 0)
    {
      sub_271127178(v3, xmmword_28087AFD0, *(&xmmword_28087AFD0 + 1));
    }

    else
    {
      *v3 = xmmword_28087AFD0;
      v4 = unk_28087AFE0;
    }

    v5 = 1;
    sub_27112D7CC("VZSyncControlGetStateId", v3, &v6);
    v17 = v6;
    LOBYTE(v18) = 0;
    v27 = 0;
    if (v16 == 1)
    {
      v20 = 0;
      if (v9 == 1)
      {
        v18 = v7;
        v19 = v8;
        v8 = 0;
        v7 = 0uLL;
        v20 = 1;
      }

      LOBYTE(v21) = 0;
      v26 = 0;
      if (v15 == 1)
      {
        v22 = v11;
        v21 = *v10;
        v10[0] = 0;
        v10[1] = 0;
        v23 = v12;
        v24 = *__p;
        v25 = v14;
        v11 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v14 = 0;
        v26 = 1;
      }

      v27 = 1;
    }

    v28 = 0;
    sub_27112B960(&v17, 0);
    if ((v28 & 1) == 0 && v27 == 1)
    {
      if (v26 == 1)
      {
        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21);
        }
      }

      if (v20 == 1 && SHIBYTE(v19) < 0)
      {
        operator delete(v18);
      }
    }

    if (v16 == 1)
    {
      if (v15 == 1)
      {
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v11) < 0)
        {
          operator delete(v10[0]);
        }
      }

      if (v9 == 1 && SHIBYTE(v8) < 0)
      {
        operator delete(v7);
      }
    }

    if (v5 == 1 && SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }

    return 0;
  }
}

void sub_2711AD214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  sub_27112E024(v17 - 144);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZSyncControlWaitIndefinitely(uint64_t a1)
{
  if (!sub_2711AD320("VZSyncControlWaitIndefinitely", a1))
  {
    sub_27136D710(a1 + 16, v2);
    sub_27114062C("VZSyncControlWaitIndefinitely", v2, 0);
    if ((v12 & 1) == 0 && v11 == 1)
    {
      if (v10 == 1)
      {
        if (v9 < 0)
        {
          operator delete(__p);
        }

        if (v7 < 0)
        {
          operator delete(v6);
        }
      }

      if (v5 == 1 && v4 < 0)
      {
        operator delete(v3);
      }
    }
  }
}

BOOL sub_2711AD320(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087AD88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD88))
    {
      sub_2711B7988();
      __cxa_guard_release(&qword_28087AD88);
    }

    if (byte_28087AFFF < 0)
    {
      sub_271127178(v5, xmmword_28087AFE8, *(&xmmword_28087AFE8 + 1));
    }

    else
    {
      *v5 = xmmword_28087AFE8;
      v6 = unk_28087AFF8;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_2711AD584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VZSyncControlProceedIndefinitely(uint64_t a1)
{
  if (!sub_2711AD320("VZSyncControlProceedIndefinitely", a1))
  {
    sub_27136D9AC(a1 + 16, v2);
    sub_27114062C("VZSyncControlProceedIndefinitely", v2, 0);
    if ((v12 & 1) == 0 && v11 == 1)
    {
      if (v10 == 1)
      {
        if (v9 < 0)
        {
          operator delete(__p);
        }

        if (v7 < 0)
        {
          operator delete(v6);
        }
      }

      if (v5 == 1 && v4 < 0)
      {
        operator delete(v3);
      }
    }
  }
}

void VZSyncControlContinue(uint64_t a1)
{
  if (!sub_2711AD320("VZSyncControlContinue", a1))
  {
    (*(**(a1 + 32) + 40))(*(a1 + 32));
    v12 = 1;
    sub_27114062C("VZSyncControlContinue", &v2, 0);
    if ((v12 & 1) == 0 && v11 == 1)
    {
      if (v10 == 1)
      {
        if (v9 < 0)
        {
          operator delete(__p);
        }

        if (v7 < 0)
        {
          operator delete(v6);
        }
      }

      if (v5 == 1 && v4 < 0)
      {
        operator delete(v3);
      }
    }
  }
}

BOOL VZSyncControlEngageLockstepPattern(uint64_t a1)
{
  result = sub_2711AD320("VZSyncControlEngageLockstepPattern", a1);
  if (!result)
  {
    sub_27136DC48(a1 + 16);
  }

  return result;
}

uint64_t sub_2711AD85C(uint64_t result)
{
  if (atomic_fetch_add((result + 248), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711AD898()
{
  if (atomic_load_explicit(&qword_28087ACB8, memory_order_acquire))
  {
    return qword_28087ACB0;
  }

  if (__cxa_guard_acquire(&qword_28087ACB8))
  {
    qword_28087ACB0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087ACB8);
  }

  return qword_28087ACB0;
}

char *sub_2711AD8FC(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C808, 0);
  if (result)
  {
    v6[0] = a1 + 16;
    v6[1] = a1 + 32;
    v6[2] = a1 + 72;
    v6[3] = a1 + 224;
    v5[0] = result + 16;
    v5[1] = result + 32;
    v5[2] = result + 72;
    v5[3] = result + 224;
    return sub_2714F8C34(v6, v5);
  }

  return result;
}

uint64_t sub_2711AD9AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  __cxa_begin_catch(a1);
  sub_2711B0E44();
  sub_27112B400(v28, "failed to compare equal");
  sub_27112DB38(qword_28087ADA8, v28, 0);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711ADA04(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087AC68, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087AC68))
    {
      sub_2718519B4("VZPeerInfo]", 0xAuLL, qword_28087ADA8);
      __cxa_guard_release(&qword_28087AC68);
    }
  }

  v2 = a1;
  operator new();
}

uint64_t sub_2711ADD48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_guard_abort(&qword_28087AC68);
  __cxa_begin_catch(a1);
  sub_2711B0E44();
  sub_27112B400(v34, "failed to create description");
  sub_27112DB38(qword_28087ADA8, v34, 0);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  __cxa_end_catch();
  return 0;
}

uint64_t sub_2711ADE58(uint64_t result)
{
  if (atomic_fetch_add((result + 256), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711ADE94()
{
  if (atomic_load_explicit(&qword_28087ACC8, memory_order_acquire))
  {
    return qword_28087ACC0;
  }

  if (__cxa_guard_acquire(&qword_28087ACC8))
  {
    qword_28087ACC0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087ACC8);
  }

  return qword_28087ACC0;
}

char *sub_2711ADEF8(uint64_t a1, char **lpsrc, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C568, 0);
  if (result)
  {
    if (*(a1 + 16) == result[16])
    {
      v19[0] = a1 + 24;
      v19[1] = a1 + 40;
      v19[2] = a1 + 80;
      v19[3] = a1 + 232;
      v18[0] = result + 24;
      v18[1] = result + 40;
      v18[2] = result + 80;
      v18[3] = result + 232;
      return sub_2714F8C34(v19, v18);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2711AE010(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087AC90, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087AC90))
    {
      sub_2718519B4("VZConnectionInfo]", 0x10uLL, &unk_28087AE20);
      __cxa_guard_release(&qword_28087AC90);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711AE4B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087AC90);
  __cxa_begin_catch(a1);
  sub_2711B2FC0();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(&unk_28087AE20, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711AE424);
}

uint64_t sub_2711AE604(uint64_t result)
{
  if (atomic_fetch_add((result + 40), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711AE640()
{
  if (atomic_load_explicit(&qword_28087ACE8, memory_order_acquire))
  {
    return qword_28087ACE0;
  }

  if (__cxa_guard_acquire(&qword_28087ACE8))
  {
    qword_28087ACE0 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087ACE8);
  }

  return qword_28087ACE0;
}

char *sub_2711AE6A4(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C610, 0);
  if (result)
  {
    v6 = a1 + 16;
    v5 = result + 16;
    return sub_2711B7DB8(&v6, &v5);
  }

  return result;
}

uint64_t sub_2711AE73C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  __cxa_begin_catch(a1);
  sub_2711B3F5C();
  sub_27112B400(v22, "failed to compare equal");
  sub_27112DB38(&unk_28087AE50, v22, 0);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711AE794(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087ACA0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087ACA0))
    {
      sub_2718519B4("VZLoggerUpdate]", 0xEuLL, &unk_28087AE50);
      __cxa_guard_release(&qword_28087ACA0);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711AEC68(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087ACA0);
  __cxa_begin_catch(a1);
  sub_2711B3F5C();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(&unk_28087AE50, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711AEBD8);
}

uint64_t sub_2711AEDB8(uint64_t result)
{
  if (atomic_fetch_add((result + 152), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711AEDF4()
{
  if (atomic_load_explicit(&qword_28087AD00, memory_order_acquire))
  {
    return qword_28087ACF8;
  }

  if (__cxa_guard_acquire(&qword_28087AD00))
  {
    qword_28087ACF8 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AD00);
  }

  return qword_28087ACF8;
}

_BYTE *sub_2711AEE58(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C5A0, 0);
  if (result)
  {
    if (*(a1 + 24) == 1)
    {
      if (!result[24])
      {
        return 0;
      }

      if (*(a1 + 16) != *(result + 8) || *(a1 + 20) != *(result + 5))
      {
        return 0;
      }
    }

    else if (result[24])
    {
      return 0;
    }

    if (*(a1 + 28) == result[28])
    {
      v6 = *(a1 + 56);
      v7 = result[56];
      if (v6 != v7 || v6 == 0)
      {
        if (v6 == v7)
        {
          return (*(a1 + 64) == *(result + 16));
        }
      }

      else
      {
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        v11 = *(result + 4);
        if (v9 - v10 == *(result + 5) - v11)
        {
          if (v10 != v9)
          {
            while (*v10 == *v11)
            {
              v10 += 16;
              v11 += 2;
              if (v10 == v9)
              {
                return (*(a1 + 64) == *(result + 16));
              }
            }

            return 0;
          }

          return (*(a1 + 64) == *(result + 16));
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_2711AEF98(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087AD08, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087AD08))
    {
      sub_2718519B4("VZServerOptions]", 0xFuLL, qword_28087AEC8);
      __cxa_guard_release(&qword_28087AD08);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711AF43C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087AD08);
  __cxa_begin_catch(a1);
  sub_2711B4994();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087AEC8, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711AF3ACLL);
}

uint64_t sub_2711AF58C(uint64_t result)
{
  if (atomic_fetch_add((result + 72), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711AF5C8()
{
  if (atomic_load_explicit(&qword_28087AD20, memory_order_acquire))
  {
    return qword_28087AD18;
  }

  if (__cxa_guard_acquire(&qword_28087AD20))
  {
    qword_28087AD18 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AD20);
  }

  return qword_28087AD18;
}

void *sub_2711AF62C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C178, 0);
  if (result)
  {
    return (*(a1 + 16) == result[2]);
  }

  return result;
}

void sub_2711AF6A8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087AD30, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087AD30))
    {
      sub_2718519B4("VZServer]", 8uLL, qword_28087AF10);
      __cxa_guard_release(&qword_28087AD30);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711AFB4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087AD30);
  __cxa_begin_catch(a1);
  sub_2711B5DA8();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087AF10, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711AFABCLL);
}

uint64_t sub_2711AFC9C(uint64_t result)
{
  if (atomic_fetch_add((result + 48), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711AFCD8()
{
  if (atomic_load_explicit(&qword_28087AD78, memory_order_acquire))
  {
    return qword_28087AD70;
  }

  if (__cxa_guard_acquire(&qword_28087AD78))
  {
    qword_28087AD70 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087AD78);
  }

  return qword_28087AD70;
}

void *sub_2711AFD3C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C6B8, 0);
  if (result)
  {
    return (*(a1 + 16) == result[2]);
  }

  return result;
}

void sub_2711AFDB8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087AC80, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087AC80))
    {
      sub_2718519B4("VZSyncControl]", 0xDuLL, qword_28087ADF0);
      __cxa_guard_release(&qword_28087AC80);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711B025C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087AC80);
  __cxa_begin_catch(a1);
  sub_2711B2470();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087ADF0, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711B01CCLL);
}

uint64_t sub_2711B039C(uint64_t a1)
{
  if (*(a1 + 200) != 1)
  {
    goto LABEL_8;
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
LABEL_4:
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 175) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(a1 + 152));
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    operator delete(*(a1 + 104));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      operator delete(*(a1 + 56));
      if (*(a1 + 48) != 1)
      {
        return a1;
      }

      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_13:
  operator delete(*(a1 + 128));
  if (*(a1 + 127) < 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (*(a1 + 48) != 1)
  {
    return a1;
  }

LABEL_9:
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 24));
  return a1;
}

uint64_t sub_2711B0490(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_13;
  }

LABEL_11:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_13:
  operator delete(*a1);
  return a1;
}

uint64_t sub_2711B054C(uint64_t a1)
{
  if (*(a1 + 128) != 1)
  {
    goto LABEL_5;
  }

  v2 = *(a1 + 120);
  if (v2 != a1 + 96)
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

LABEL_5:
    if (*(a1 + 88) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  (*(*v2 + 32))(v2);
  if (*(a1 + 88) != 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v3 = *(a1 + 80);
  if (v3 == a1 + 56)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

LABEL_12:
  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(a1 + 24);
      v6 = *(a1 + 16);
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 8);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v5 -= 16;
        }

        while (v5 != v4);
        v6 = *(a1 + 16);
      }

      *(a1 + 24) = v4;
      operator delete(v6);
    }
  }

  return a1;
}

uint64_t sub_2711B06F0(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_2711B0788(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_2711B0820(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(a1 + 24);
      v4 = *(a1 + 16);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = *(a1 + 16);
      }

      *(a1 + 24) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

char **sub_2711B08E0(char **a1)
{
  if (*(a1 + 24) == 1)
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
          v5 = *(v3 - 1);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = *a1;
      }

      a1[1] = v2;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_2711B09C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105F58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711B0A14(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_2711B0A5C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105EE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711B0AB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_2711B0AF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288105F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711B0B4C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_2711B0B74()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_2711B0E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B0E44()
{
  if ((atomic_load_explicit(&qword_28087AC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC68))
  {
    sub_2718519B4("VZPeerInfo]", 0xAuLL, qword_28087ADA8);

    __cxa_guard_release(&qword_28087AC68);
  }
}

uint64_t sub_2711B0ED4(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_271127178((a1 + 24), *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    sub_271127178((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_271127178((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_271127178((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_271127178((a1 + 120), *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v9;
  }

  return a1;
}

void sub_2711B0FFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
    if ((*(v1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 72));
  if ((*(v1 + 71) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v1 + 48));
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_2711B1304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B1344(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = sub_2711B1458(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_2711B1444(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711B17FC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2711B1458(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
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
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
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

void *sub_2711B17FC(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_2711B1864()
{
  v2 = *MEMORY[0x277D85DE8];
  *(&__s.__r_.__value_.__s + 23) = 8;
  strcpy(&__s, "std::map");
  sub_27184BC8C(&__s, "std::__1::", 10, "std::", 5uLL, 0, 0, &v0);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  *(&__s.__r_.__value_.__s + 23) = 11;
  strcpy(&__s, "std::string");
  operator new();
}

void sub_2711B1FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (v30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B204C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  sub_27137F4D0(&a33);
  if (*(v51 - 129) < 0)
  {
    operator delete(*(v51 - 152));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  while (1)
  {
    v52 = *(v50 - 1);
    v50 -= 3;
    if (v52 < 0)
    {
      operator delete(*v50);
    }

    if (v50 == (v51 - 248))
    {
      JUMPOUT(0x2711B2034);
    }
  }
}

void sub_2711B2174()
{
  if (*(v0 - 225) < 0)
  {
    v1 = *(v0 - 248);
    JUMPOUT(0x2711B2040);
  }

  JUMPOUT(0x2711B2044);
}

void *sub_2711B2188(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  result = operator new(0x38uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *result = &unk_288117810;
    v3 = *(a1 + 8);
    result[2] = *a1;
    result[3] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    *(result + 2) = *(a1 + 16);
    *(result + 12) = 1;
    *result = &unk_2881198B8;
    result[1] = &unk_288119908;
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087AC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC80))
    {
      sub_2718519B4("VZSyncControl]", 0xDuLL, qword_28087ADF0);
      __cxa_guard_release(&qword_28087AC80);
    }

    if ((atomic_load_explicit(&qword_28087AC88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC88))
    {
      sub_2711B2500();
    }

    if (byte_28087AE1F < 0)
    {
      sub_271127178(&v23, xmmword_28087AE08, *(&xmmword_28087AE08 + 1));
    }

    else
    {
      v23 = xmmword_28087AE08;
      v24 = unk_28087AE18;
    }

    sub_2711309E8(&v21, &v23, 1uLL);
    LOBYTE(v10) = 0;
    v20 = 0;
    sub_27112E0C4(qword_28087ADF0, &v21, &v10, 0);
    if (v20 == 1 && v19 == 1)
    {
      if (v18 == 1)
      {
        if (v17 < 0)
        {
          operator delete(__p);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }
      }

      if (v13 == 1 && v12 < 0)
      {
        operator delete(v11);
      }
    }

    v5 = v21;
    if (v21)
    {
      v6 = v22;
      v7 = v21;
      if (v22 != v21)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = v21;
      }

      v22 = v5;
      operator delete(v7);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    result = 0;
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_2711B242C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087AC88);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B2470()
{
  if ((atomic_load_explicit(&qword_28087AC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC80))
  {
    sub_2718519B4("VZSyncControl]", 0xDuLL, qword_28087ADF0);

    __cxa_guard_release(&qword_28087AC80);
  }
}

void sub_2711B26F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711B2728(void *result)
{
  *result = &unk_28812DAA8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2711B27BC(void *a1)
{
  *a1 = &unk_28812DAA8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711B28D0(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28812DAA8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2711B2908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2711B2984(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t sub_2711B2A1C(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 8))
  {
    v4 = result;
    v5 = sub_2711B2BE4(a2);
    v6 = sub_27115FBA0(0, a3);
    result = (*(**(v4 + 8) + 16))();
    if (v6)
    {
      result = (*(*v6 + 24))(v6);
    }

    if (v5)
    {
      v7 = *(*v5 + 24);

      return v7(v5);
    }
  }

  return result;
}

void sub_2711B2AFC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  (*(*v1 + 24))(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B2B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z30ForwardReceivedMessageFunctionU13block_pointerFvPK16VZConnectionInfoPK12VZLogMessageEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z30ForwardReceivedMessageFunctionU13block_pointerFvPK16VZConnectionInfoPK12VZLogMessageEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z30ForwardReceivedMessageFunctionU13block_pointerFvPK16VZConnectionInfoPK12VZLogMessageEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z30ForwardReceivedMessageFunctionU13block_pointerFvPK16VZConnectionInfoPK12VZLogMessageEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

char *sub_2711B2BE4(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = operator new(0x110uLL, MEMORY[0x277D826F0]);
  if (v2)
  {
    v3 = v2;
    *v2 = &unk_288117810;
    v2[16] = *a1;
    *(v2 + 24) = *(a1 + 8);
    *(v2 + 10) = *(a1 + 24);
    v2[48] = 0;
    v2[72] = 0;
    if (*(a1 + 56) == 1)
    {
      if (*(a1 + 55) < 0)
      {
        sub_271127178(v2 + 48, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        *(v2 + 3) = *(a1 + 32);
        *(v2 + 8) = *(a1 + 48);
      }

      v3[72] = 1;
    }

    v3[80] = 0;
    v3[224] = 0;
    if (*(a1 + 208) == 1)
    {
      sub_2711B0ED4((v3 + 80), (a1 + 64));
      v3[224] = 1;
    }

    *(v3 + 232) = *(a1 + 216);
    *(v3 + 31) = *(a1 + 232);
    *(v3 + 64) = 1;
    *v3 = &unk_288119618;
    *(v3 + 1) = &unk_288119668;
    *(v3 + 33) = 0;
    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087AC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC90))
    {
      sub_2718519B4("VZConnectionInfo]", 0x10uLL, qword_28087AE20);
      __cxa_guard_release(&qword_28087AC90);
    }

    if ((atomic_load_explicit(&qword_28087AC98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC98))
    {
      sub_2711B3050();
    }

    if (byte_28087AE4F < 0)
    {
      sub_271127178(&v24, xmmword_28087AE38, *(&xmmword_28087AE38 + 1));
    }

    else
    {
      v24 = xmmword_28087AE38;
      v25 = unk_28087AE48;
    }

    sub_2711309E8(&v22, &v24, 1uLL);
    LOBYTE(v11) = 0;
    v21 = 0;
    sub_27112E0C4(qword_28087AE20, &v22, &v11, 0);
    if (v21 == 1 && v20 == 1)
    {
      if (v19 == 1)
      {
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }
      }

      if (v14 == 1 && v13 < 0)
      {
        operator delete(v12);
      }
    }

    v6 = v22;
    if (v22)
    {
      v7 = v23;
      v8 = v22;
      if (v23 != v22)
      {
        do
        {
          v9 = *(v7 - 1);
          v7 -= 3;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = v22;
      }

      v23 = v6;
      operator delete(v8);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    v3 = 0;
    v10 = *MEMORY[0x277D85DE8];
  }

  return v3;
}

void sub_2711B2F78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087AC98);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711B2FA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711B2FB0);
  }

  sub_271120E50(a1);
}

void sub_2711B2FC0()
{
  if ((atomic_load_explicit(&qword_28087AC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AC90))
  {
    sub_2718519B4("VZConnectionInfo]", 0x10uLL, &unk_28087AE20);

    __cxa_guard_release(&qword_28087AC90);
  }
}

void sub_2711B3294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711B32D4(void *result)
{
  *result = &unk_28812DB28;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2711B3368(void *a1)
{
  *a1 = &unk_28812DB28;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711B347C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28812DB28;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2711B34B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2711B3530(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t sub_2711B35C8(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  if (*(result + 8))
  {
    v3 = result;
    v4 = *a3;
    v5 = sub_2711B2BE4(a2);
    result = (*(**(v3 + 8) + 16))();
    if (v5)
    {
      v6 = *(*v5 + 24);

      return v6(v5);
    }
  }

  return result;
}

void sub_2711B366C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B36A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z30ForwardConnectionStatusChangedU13block_pointerFvPK16VZConnectionInfohEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z30ForwardConnectionStatusChangedU13block_pointerFvPK16VZConnectionInfohEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z30ForwardConnectionStatusChangedU13block_pointerFvPK16VZConnectionInfohEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z30ForwardConnectionStatusChangedU13block_pointerFvPK16VZConnectionInfohEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_2711B371C(void *result)
{
  *result = &unk_28812DBA8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2711B37B0(void *a1)
{
  *a1 = &unk_28812DBA8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711B38C4(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28812DBA8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2711B38FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_2711B3978(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t sub_2711B3A10(uint64_t result, uint64_t a2, const void ***a3)
{
  if (*(result + 8))
  {
    v4 = result;
    v5 = sub_2711B2BE4(a2);
    v6 = sub_2711B3BD4(a3);
    result = (*(**(v4 + 8) + 16))();
    if (v6)
    {
      result = (*(*v6 + 24))(v6);
    }

    if (v5)
    {
      v7 = *(*v5 + 24);

      return v7(v5);
    }
  }

  return result;
}

void sub_2711B3AEC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  (*(*v1 + 24))(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B3B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z20ForwardLoggerUpdatedU13block_pointerFvPK16VZConnectionInfoPK14VZLoggerUpdateEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z20ForwardLoggerUpdatedU13block_pointerFvPK16VZConnectionInfoPK14VZLoggerUpdateEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z20ForwardLoggerUpdatedU13block_pointerFvPK16VZConnectionInfoPK14VZLoggerUpdateEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z20ForwardLoggerUpdatedU13block_pointerFvPK16VZConnectionInfoPK14VZLoggerUpdateEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_2711B3BD4(const void ***a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = operator new(0x38uLL, MEMORY[0x277D826F0]);
  if (v2)
  {
    v3 = v2;
    *v2 = &unk_288117810;
    v2[3] = 0;
    v4 = v2 + 3;
    v2[2] = v2 + 3;
    v5 = (v2 + 2);
    v2[4] = 0;
    v8 = *a1;
    v6 = a1 + 1;
    v7 = v8;
    if (v8 != v6)
    {
      do
      {
        sub_2711B1344(v5, v4, v7 + 4);
        v11 = v7[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v7[2];
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != v6);
    }

    *(v3 + 10) = 1;
    *v3 = &unk_288119768;
    v3[1] = &unk_2881197B8;
    v3[6] = 0;
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if ((atomic_load_explicit(&qword_28087ACA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087ACA0))
    {
      sub_2718519B4("VZLoggerUpdate]", 0xEuLL, qword_28087AE50);
      __cxa_guard_release(&qword_28087ACA0);
    }

    if ((atomic_load_explicit(&qword_28087ACA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087ACA8))
    {
      sub_2711B3FEC();
    }

    if (byte_28087AE7F < 0)
    {
      sub_271127178(&v32, xmmword_28087AE68, *(&xmmword_28087AE68 + 1));
    }

    else
    {
      v32 = xmmword_28087AE68;
      v33 = unk_28087AE78;
    }

    sub_2711309E8(&v30, &v32, 1uLL);
    LOBYTE(v19) = 0;
    v29 = 0;
    sub_27112E0C4(qword_28087AE50, &v30, &v19, 0);
    if (v29 == 1 && v28 == 1)
    {
      if (v27 == 1)
      {
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20);
      }
    }

    v14 = v30;
    if (v30)
    {
      v15 = v31;
      v16 = v30;
      if (v31 != v30)
      {
        do
        {
          v17 = *(v15 - 1);
          v15 -= 3;
          if (v17 < 0)
          {
            operator delete(*v15);
          }
        }

        while (v15 != v14);
        v16 = v30;
      }

      v31 = v14;
      operator delete(v16);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    v3 = 0;
    v18 = *MEMORY[0x277D85DE8];
  }

  return v3;
}

void sub_2711B3F14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087ACA8);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711B3F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711B3F4CLL);
  }

  sub_271120E50(a1);
}

void sub_2711B3F5C()
{
  if ((atomic_load_explicit(&qword_28087ACA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087ACA0))
  {
    sub_2718519B4("VZLoggerUpdate]", 0xEuLL, &unk_28087AE50);

    __cxa_guard_release(&qword_28087ACA0);
  }
}

void sub_2711B4230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B4270()
{
  *(&__p.__r_.__value_.__s + 23) = 16;
  strcpy(&__p, "VZConnectionInfo");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AE80 = v7;
  unk_28087AE90 = v8;
  return result;
}

void sub_2711B448C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B44CC()
{
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "VZPeerInfo");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AE98 = v7;
  unk_28087AEA8 = v8;
  return result;
}

void sub_2711B46F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B4730()
{
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "VZLoggerUpdate");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AEB0 = v7;
  unk_28087AEC0 = v8;
  return result;
}

void sub_2711B4954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B4994()
{
  if ((atomic_load_explicit(&qword_28087AD08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD08))
  {
    sub_2718519B4("VZServerOptions]", 0xFuLL, qword_28087AEC8);

    __cxa_guard_release(&qword_28087AD08);
  }
}

double sub_2711B4A24()
{
  *(&__p.__r_.__value_.__s + 23) = 15;
  strcpy(&__p, "VZServerOptions");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087AEE0 = v5;
  unk_28087AEF0 = v6;
  return result;
}

void sub_2711B4BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2711B4C9C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28812DC28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2711B4CCC(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  if (*(result + 8))
  {
    v3 = result;
    v4 = *a3;
    v5 = sub_2711B2BE4(a2);
    result = (*(v3 + 8))(*(v3 + 16), v5, v4);
    if (v5)
    {
      v6 = *(*v5 + 24);

      return v6(v5);
    }
  }

  return result;
}

void sub_2711B4D64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B4D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z49VZServerOptionsSetConnectionStatusChangedFunctionE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z49VZServerOptionsSetConnectionStatusChangedFunctionE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z49VZServerOptionsSetConnectionStatusChangedFunctionE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z49VZServerOptionsSetConnectionStatusChangedFunctionE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_2711B4E88(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28812DCA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2711B4EB8(uint64_t result, uint64_t a2, const void ***a3)
{
  if (*(result + 8))
  {
    v4 = result;
    v5 = sub_2711B2BE4(a2);
    v6 = sub_2711B3BD4(a3);
    result = (*(v4 + 8))(*(v4 + 16), v5, v6);
    if (v6)
    {
      result = (*(*v6 + 24))(v6);
    }

    if (v5)
    {
      v7 = *(*v5 + 24);

      return v7(v5);
    }
  }

  return result;
}

void sub_2711B4F88(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  (*(*v1 + 24))(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B4FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z39VZServerOptionsSetLoggerUpdatedFunctionE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z39VZServerOptionsSetLoggerUpdatedFunctionE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z39VZServerOptionsSetLoggerUpdatedFunctionE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z39VZServerOptionsSetLoggerUpdatedFunctionE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2711B5070()
{
  if ((atomic_load_explicit(&qword_28087AD28, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087AD28))
    {
      sub_2711B5424();
    }
  }
}

uint64_t sub_2711B50EC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v5 = a2[2];
    v6 = a2[3];
    if (v6 != v5)
    {
      if (((v6 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_271135560();
    }

    *(a1 + 40) = 1;
  }

  v7 = *(a2 + 12);
  *(a1 + 56) = 0;
  *(a1 + 48) = v7;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v8 = a2[10];
    if (v8)
    {
      if (v8 == a2 + 7)
      {
        *(a1 + 80) = a1 + 56;
        (*(*a2[10] + 24))(a2[10], a1 + 56);
        goto LABEL_12;
      }

      v8 = (*(*v8 + 16))(v8);
    }

    *(a1 + 80) = v8;
LABEL_12:
    *(a1 + 88) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v9 = a2[15];
    if (v9)
    {
      if (v9 == a2 + 12)
      {
        *(a1 + 120) = a1 + 96;
        (*(*a2[15] + 24))(a2[15], a1 + 96);
        goto LABEL_19;
      }

      v9 = (*(*v9 + 16))(v9);
    }

    *(a1 + 120) = v9;
LABEL_19:
    *(a1 + 128) = 1;
  }

  return a1;
}

void sub_2711B5304(_Unwind_Exception *a1)
{
  sub_2711B06F0(v3);
  sub_2711B0788(v2);
  sub_2711B0820(v1);
  _Unwind_Resume(a1);
}

void sub_2711B5328(_Unwind_Exception *a1)
{
  sub_2711B0788(v2);
  sub_2711B0820(v1);
  _Unwind_Resume(a1);
}

void sub_2711B5344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  sub_2711B08E0(v9);
  _Unwind_Resume(a1);
}

void ***sub_2711B5360(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_2711B5424()
{
  v2 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "std::optional");
  sub_27184BC8C(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, &v0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_2711B5600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_27137F4D0(&a16);
  if (*(v24 - 25) < 0)
  {
    operator delete(*(v24 - 48));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711B5670(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void sub_2711B5708(uint64_t **a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087AD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD30))
  {
    sub_2718519B4("VZServer]", 8uLL, qword_28087AF10);
    __cxa_guard_release(&qword_28087AD30);
  }

  if ((atomic_load_explicit(&qword_28087AD38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD38))
  {
    sub_2711B5E38();
  }

  if (byte_28087AF3F < 0)
  {
    sub_271127178(&v23, xmmword_28087AF28, *(&xmmword_28087AF28 + 1));
  }

  else
  {
    v23 = xmmword_28087AF28;
    v24 = unk_28087AF38;
  }

  if ((atomic_load_explicit(&qword_28087AD28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087AD28))
  {
    sub_2711B5424();
  }

  if (byte_28087AF0F < 0)
  {
    sub_271127178(&v25, xmmword_28087AEF8, *(&xmmword_28087AEF8 + 1));
  }

  else
  {
    v25 = xmmword_28087AEF8;
    v26 = unk_28087AF08;
  }

  if ((atomic_load_explicit(&qword_280877990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877990))
  {
    sub_271144B04();
  }

  if (byte_28087798F < 0)
  {
    sub_271127178(&v27, xmmword_280877978, *(&xmmword_280877978 + 1));
  }

  else
  {
    v27 = xmmword_280877978;
    v28 = unk_280877988;
  }

  sub_2711309E8(&v21, &v23, 3uLL);
  LOBYTE(v10) = 0;
  v20 = 0;
  if (*(a2 + 120) == 1)
  {
    v10 = *a2;
    LOBYTE(v11) = 0;
    v19 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v11, (a2 + 16));
      v19 = 1;
    }

    v20 = 1;
  }

  sub_27112E0C4(qword_28087AF10, &v21, &v10, **a1);
  if (v20 == 1 && v19 == 1)
  {
    if (v18 == 1)
    {
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14);
      }
    }

    if (v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }
  }

  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = v21;
    if (v22 != v21)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v21;
    }

    v22 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    operator delete(v25);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_43:
    operator delete(v23);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v27);
  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  v8 = *MEMORY[0x277D85DE8];
}