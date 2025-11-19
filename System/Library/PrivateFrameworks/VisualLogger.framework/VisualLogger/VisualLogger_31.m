void sub_271393F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271396310(va);
  _Unwind_Resume(a1);
}

void sub_271393F94(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v4) = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  LOBYTE(v8) = 0;
  v9 = 0;
  LOBYTE(v10) = 0;
  v11 = 0;
  LOBYTE(__p) = 0;
  v13 = 0;
  sub_271394340(v3, &v4);
}

void sub_2713942DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2713942F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_271396310(&a20);
  sub_2714FBE4C(&a10);
  sub_271134CBC(&a41);
  sub_271181F68(&a13);
  _Unwind_Resume(a1);
}

void sub_271394324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_271134CBC(&a41);
  sub_271181F68(&a13);
  _Unwind_Resume(a1);
}

void sub_271394340(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a2 + 24) == 1)
  {
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = 1;
  }

  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  LOBYTE(v16) = 0;
  v18 = 0;
  if (*(a2 + 80) == 1)
  {
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v24[0]) = 0;
      v26 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v20 = *(a2 + 112);
  v19 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v21 = _X2;
  v22 = 0;
  v23 = 1;
  LOBYTE(v24[0]) = 0;
  v26 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v11, v27);
    sub_271394710(&v10, a1);
  }

LABEL_6:
  *v24 = *(a2 + 160);
  v25 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v26 = 1;
  goto LABEL_7;
}

void sub_2713946E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(v3 + 16);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2713946FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_271394710(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (a2[2])
  {
    *(v3 + 16) = &v5;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    v4 = &v5;
  }

  operator new();
}

void sub_2713948A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  (*(*v11 + 8))(v11);
  sub_271167834(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_2713948E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  *(v11 + 8) = v12;
  sub_271167834(v13, *(v11 + 24));
  MEMORY[0x2743BF050](v11, 0x10B3C40C16B1FE9);
  sub_271167834(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_271394940(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_2713949B0(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));

  JUMPOUT(0x2743BF050);
}

void sub_271394A50(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878790, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878790))
    {
      sub_271395BEC();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_280878778, "{", __p, ",");
}

void sub_271394B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271394B6C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 3;
}

uint64_t sub_271394BE4(uint64_t a1)
{
  *a1 = &unk_288131398;
  sub_271167834(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_271394C30(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_271394CA0(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));

  JUMPOUT(0x2743BF050);
}

void sub_271394D30()
{
  if ((atomic_load_explicit(&qword_280878770, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878770))
    {
      sub_271395958();
    }
  }

  sub_27139540C(&xmmword_280878758, "{");
}

void sub_271394DE4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_271394E10(uint64_t a1)
{
  *a1 = &unk_288131398;
  sub_271167834(a1 + 8, *(a1 + 16));

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271394E7C(char *a1, char *lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_2881313B8, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = (result + 8);
      v7 = a1 + 8;
      return sub_2711B7DB8(&v7, &v6);
    }
  }

  return result;
}

void sub_271394F2C()
{
  if ((atomic_load_explicit(&qword_280878750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878750))
  {
    sub_2718519B4("cv3d::kit::viz::UpdateEnabledContexts]", 0x25uLL, &xmmword_280878738);
    __cxa_guard_release(&qword_280878750);
  }

  sub_271394FE0(&xmmword_280878738, "{");
}

void sub_271394FE0(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_27139518C();
}

void sub_271395124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139513C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713953C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139540C(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_271136F58(v8, &v3);
  sub_27139563C();
}

void sub_2713955AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713955C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713955D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713955EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713958D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280878750);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_271395A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271395BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271395BEC()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_271395E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_271395FA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881062A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_27139602C(void *a1, _BYTE *a2)
{
  v3 = *a2;
  if (v3 == 2)
  {
    v4 = "Enabled";
    v5 = 7;
  }

  else if (v3 == 1)
  {
    v4 = "DisabledIgnoreSync";
    v5 = 18;
  }

  else if (*a2)
  {
    v8 = sub_271120E64(a1, "invalid client sync type (", 26);
    a1 = MEMORY[0x2743BE7E0](v8, *a2);
    v4 = ")";
    v5 = 1;
  }

  else
  {
    v4 = "Disabled";
    v5 = 8;
  }

  return sub_271120E64(a1, v4, v5);
}

void *sub_2713960F0(void *a1, _BYTE *a2)
{
  v3 = *a2;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "Proceeding";
      v5 = 10;
    }

    else
    {
      if (v3 != 3)
      {
LABEL_12:
        v8 = sub_271120E64(a1, "invalid sync status (", 21);
        a1 = MEMORY[0x2743BE7E0](v8, *a2);
        v4 = ")";
        v5 = 1;

        return sub_271120E64(a1, v4, v5);
      }

      v4 = "ProceedingConditionally";
      v5 = 23;
    }
  }

  else
  {
    if (*a2)
    {
      if (v3 == 1)
      {
        v4 = "Waiting";
        v5 = 7;

        return sub_271120E64(a1, v4, v5);
      }

      goto LABEL_12;
    }

    v4 = "NotSyncing";
    v5 = 10;
  }

  return sub_271120E64(a1, v4, v5);
}

uint64_t sub_2713961E0(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = *(v2 + 23);
  if (v4 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = *(v3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = v3[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v10 = v4 >= 0 ? **a1 : *v2;
  v11 = *v3;
  v12 = (v7 >= 0 ? **a2 : *v3);
  if (memcmp(v10, v12, v5))
  {
    return 0;
  }

  v14 = *(v2 + 48);
  v15 = *(v3 + 48);
  if (v14 == v15 && v14 != 0)
  {
    v17 = *(v2 + 47);
    if (v17 >= 0)
    {
      v18 = *(v2 + 47);
    }

    else
    {
      v18 = *(v2 + 32);
    }

    v19 = *(v3 + 47);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = v3[4];
    }

    if (v18 == v19)
    {
      v21 = v3 + 3;
      v22 = v17 >= 0 ? (v2 + 24) : *(v2 + 24);
      v23 = *v21;
      v24 = v20 >= 0 ? v3 + 3 : *v21;
      if (!memcmp(v22, v24, v18))
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

  if (v14 != v15)
  {
    return 0;
  }

LABEL_35:

  return sub_2714FC08C(a1 + 2, a2 + 2);
}

uint64_t sub_271396310(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_2713963D8(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 16);
  v4 = v1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, sub_271396748);
  }

  return v1 + 24;
}

void *sub_271396440(void *result)
{
  *result = &unk_288131488;
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

void sub_2713964D4(void *a1)
{
  *a1 = &unk_288131488;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27139657C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v11 = 0;
  sub_271396A44(&v13, v10, v3);
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v12;
  (off_2881314F0[v11])(__p, &v13, v10);
  if (v11 != -1)
  {
    (off_2881314C0[v11])(&v13, v10);
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  result = sub_271120E64(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_271396668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271396684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271396698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713966AC(uint64_t result)
{
  v1 = *(result + 40);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    operator delete(*result);
    return v3;
  }

  v2 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v2;
  if (*(v2 + 23) < 0)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_271396748(std::string ****a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = ***a1;
  v2 = v1->__r_.__value_.__r.__words[0];
  if (*(v1->__r_.__value_.__r.__words[0] + 48) == 1)
  {
    if (*(v2 + 47) < 0)
    {
      sub_271127178(__p, v2[3], v2[4]);
      v2 = v1->__r_.__value_.__r.__words[0];
    }

    else
    {
      *__p = *(v2 + 3);
      v9 = v2[5];
    }
  }

  else
  {
    HIBYTE(v9) = 0;
    LOBYTE(__p[0]) = 0;
  }

  v3 = HIBYTE(v9);
  v4 = __p;
  if (v9 < 0)
  {
    v4 = __p[0];
    v3 = __p[1];
  }

  v11[0] = v4;
  v11[1] = v3;
  v11[2] = ":";
  v11[3] = 1;
  v5 = *(v2 + 23);
  v6 = v2[1];
  if ((v5 & 0x80u) != 0)
  {
    v2 = *v2;
    v5 = v6;
  }

  v11[4] = v2;
  v11[5] = v5;
  sub_271131230(v11, &v12, 0, 0, &v10);
  if (SHIBYTE(v1[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v1[1].__r_.__value_.__l.__data_);
  }

  v1[1] = v10;
  *(&v10.__r_.__value_.__s + 23) = 0;
  v10.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_271396890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713968CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288131530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271396920(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 24);
  if (v3 == v1)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 32);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 32);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 40;
  }

  while (v3 != v1);
  v4 = *(a1 + 24);
LABEL_13:
  *(a1 + 32) = v1;

  operator delete(v4);
}

uint64_t sub_271396A44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3[1] - *a3 > 39)
  {
    v8 = a2;
    v9 = "{";
    v10 = a2;
    v11 = "{";
    v12 = "{";
    v4 = *(a2 + 24);
    if (v4 != -1)
    {
      v13 = &v8;
      (*(&off_2881314A8 + v4))(&v13, a2);
      v6 = *a3;
      sub_271396BB0();
    }

LABEL_6:
    sub_2711308D4();
  }

  v8 = a2;
  v9 = "{}";
  v10 = a2;
  v11 = "{}";
  v12 = "{}";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_6;
  }

  v13 = &v8;
  return (*(&off_288131570 + v3))(&v13, a2);
}

void sub_27139728C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a35 < 0)
  {
    operator delete(__p);
    sub_2713966AC(&a23);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      v37 = a16;
      a16 = 0;
      if (!v37)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_7:
      sub_27184D728(&a16, v37);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_2713966AC(&a23);
    if ((a22 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a17);
  v37 = a16;
  a16 = 0;
  if (!v37)
  {
    goto LABEL_9;
  }

  goto LABEL_7;
}

uint64_t sub_2713973EC(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v5 = **a2;
  if (*(v5 + 23) < 0)
  {
    v7 = a3;
    sub_271127178(a1, *v5, *(v5 + 1));
    a3 = v7;
  }

  else
  {
    v6 = *v5;
    *(a1 + 16) = *(v5 + 2);
    *a1 = v6;
  }

  sub_27139A710(a1 + 24, (a2 + 2), a3);
  v8 = **a2;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(v8 + 48) == 1)
  {
    if (*(v8 + 47) < 0)
    {
      sub_271127178((a1 + 112), *(v8 + 24), *(v8 + 32));
    }

    else
    {
      v9 = *(v8 + 24);
      *(a1 + 128) = *(v8 + 40);
      *(a1 + 112) = v9;
    }

    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_2713974B4(_Unwind_Exception *a1)
{
  if (*(v1 + 136) == 1 && *(v1 + 135) < 0)
  {
    operator delete(*v2);
  }

  sub_271398534(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_2713974FC(uint64_t a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v26[0] = *(a1 + 8);
  *(v26 + 7) = *(a1 + 15);
  v3 = *(a1 + 23);
  v4 = *(a1 + 23);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = *(a1 + 136);
  if (v5 == 1)
  {
    v6 = *(a1 + 112);
    v25[0] = *(a1 + 120);
    *(v25 + 7) = *(a1 + 127);
    v1 = *(a1 + 135);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = 0;
  }

  else
  {
    v6 = 0;
  }

  v18 = v2;
  *v19 = v26[0];
  *&v19[7] = *(v26 + 7);
  v20 = v4;
  v26[0] = 0;
  *(v26 + 7) = 0;
  LOBYTE(__p) = 0;
  v24 = 0;
  if (v5)
  {
    __p = v6;
    *v22 = v25[0];
    *&v22[7] = *(v25 + 7);
    v23 = v1;
    v25[0] = 0;
    *(v25 + 7) = 0;
    v24 = 1;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *v19;
  }

  else
  {
    v2 = &v18;
  }

  if (!v3)
  {
    goto LABEL_70;
  }

  v7 = v2;
  if (v3 < 8)
  {
LABEL_73:
    v16 = v2 + v3;
    do
    {
      if (*v7 == 58)
      {
        *v7 = 95;
      }

      ++v7;
    }

    while (v7 != v16);
    goto LABEL_70;
  }

  if (v3 < 0x10)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v8 = v3 & 0xFFFFFFFFFFFFFFF0;
  v12 = v2 + 7;
  v13.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
  v13.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
  v14 = v3 & 0xFFFFFFFFFFFFFFF0;
  while (1)
  {
    v15 = vceqq_s8(*(v12 - 7), v13);
    if (v15.i8[0])
    {
      *(v12 - 7) = 95;
      if ((v15.i8[1] & 1) == 0)
      {
LABEL_38:
        if ((v15.i8[2] & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_55;
      }
    }

    else if ((v15.i8[1] & 1) == 0)
    {
      goto LABEL_38;
    }

    *(v12 - 6) = 95;
    if ((v15.i8[2] & 1) == 0)
    {
LABEL_39:
      if ((v15.i8[3] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v12 - 5) = 95;
    if ((v15.i8[3] & 1) == 0)
    {
LABEL_40:
      if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(v12 - 4) = 95;
    if ((v15.i8[4] & 1) == 0)
    {
LABEL_41:
      if ((v15.i8[5] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(v12 - 3) = 95;
    if ((v15.i8[5] & 1) == 0)
    {
LABEL_42:
      if ((v15.i8[6] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(v12 - 2) = 95;
    if ((v15.i8[6] & 1) == 0)
    {
LABEL_43:
      if ((v15.i8[7] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(v12 - 1) = 95;
    if ((v15.i8[7] & 1) == 0)
    {
LABEL_44:
      if ((v15.i8[8] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    *v12 = 95;
    if ((v15.i8[8] & 1) == 0)
    {
LABEL_45:
      if ((v15.i8[9] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    v12[1] = 95;
    if ((v15.i8[9] & 1) == 0)
    {
LABEL_46:
      if ((v15.i8[10] & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }

LABEL_62:
    v12[2] = 95;
    if ((v15.i8[10] & 1) == 0)
    {
LABEL_47:
      if ((v15.i8[11] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    v12[3] = 95;
    if ((v15.i8[11] & 1) == 0)
    {
LABEL_48:
      if ((v15.i8[12] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    v12[4] = 95;
    if ((v15.i8[12] & 1) == 0)
    {
LABEL_49:
      if ((v15.i8[13] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    v12[5] = 95;
    if ((v15.i8[13] & 1) == 0)
    {
LABEL_50:
      if ((v15.i8[14] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    v12[6] = 95;
    if ((v15.i8[14] & 1) == 0)
    {
LABEL_51:
      if (v15.i8[15])
      {
        goto LABEL_68;
      }

      goto LABEL_35;
    }

LABEL_67:
    v12[7] = 95;
    if (v15.i8[15])
    {
LABEL_68:
      v12[8] = 95;
    }

LABEL_35:
    v12 += 16;
    v14 -= 16;
    if (!v14)
    {
      if (v3 == v8)
      {
        goto LABEL_70;
      }

      if ((v3 & 8) == 0)
      {
        v7 = v2 + v8;
        goto LABEL_73;
      }

LABEL_13:
      v7 = v2 + (v3 & 0xFFFFFFFFFFFFFFF8);
      v9 = v8 - (v3 & 0xFFFFFFFFFFFFFFF8);
      v10 = v2 + v8 + 3;
      while (2)
      {
        v11 = vceq_s8(*(v10 - 3), 0x3A3A3A3A3A3A3A3ALL);
        if (v11.i8[0])
        {
          *(v10 - 3) = 95;
          if (v11.i8[1])
          {
            goto LABEL_25;
          }

LABEL_17:
          if ((v11.i8[2] & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_26:
          *(v10 - 1) = 95;
          if (v11.i8[3])
          {
            goto LABEL_27;
          }

LABEL_19:
          if ((v11.i8[4] & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_28:
          v10[1] = 95;
          if (v11.i8[5])
          {
            goto LABEL_29;
          }

LABEL_21:
          if ((v11.i8[6] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_30:
          v10[3] = 95;
          if (v11.i8[7])
          {
LABEL_31:
            v10[4] = 95;
          }
        }

        else
        {
          if ((v11.i8[1] & 1) == 0)
          {
            goto LABEL_17;
          }

LABEL_25:
          *(v10 - 2) = 95;
          if (v11.i8[2])
          {
            goto LABEL_26;
          }

LABEL_18:
          if ((v11.i8[3] & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_27:
          *v10 = 95;
          if (v11.i8[4])
          {
            goto LABEL_28;
          }

LABEL_20:
          if ((v11.i8[5] & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_29:
          v10[2] = 95;
          if (v11.i8[6])
          {
            goto LABEL_30;
          }

LABEL_22:
          if (v11.i8[7])
          {
            goto LABEL_31;
          }
        }

        v10 += 8;
        v9 += 8;
        if (!v9)
        {
          if (v3 != (v3 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_73;
          }

LABEL_70:
          sub_27139AAF0(a1 + 24, &v17);
          sub_271390BA0();
        }

        continue;
      }
    }
  }
}

void sub_271397954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_2714FBE4C(va);
  sub_271181F68(va1);
  if (v3)
  {
    if (v4 < 0)
    {
      operator delete(v2);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_271397988(void *a1, uint64_t a2, uint64_t *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a3;
  v6 = a3[1];
  v40[0] = a1 + 1;
  LOBYTE(v40[1]) = 0;
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v7 = *(a2 + 8);
  v9 = *v7;
  v8 = v7[1];
  memset(__p, 0, sizeof(__p));
  v10 = v8 - v9;
  if (v10)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v10 >> 3) <= 0x1C71C71C71C71C7)
    {
      *&v42 = __p;
      operator new();
    }

    sub_271135560();
  }

  v11 = a1;
  v12 = *v7;
  v13 = v7[1];
  if (*v7 != v13)
  {
    do
    {
      sub_2713973EC(v40, v12, a3);
      v14 = __p[1];
      if (__p[1] >= __p[2])
      {
        v20 = 0x8E38E38E38E38E39 * ((__p[1] - __p[0]) >> 4) + 1;
        if (v20 > 0x1C71C71C71C71C7)
        {
          sub_271135560();
        }

        if (0x1C71C71C71C71C72 * ((__p[2] - __p[0]) >> 4) > v20)
        {
          v20 = 0x1C71C71C71C71C72 * ((__p[2] - __p[0]) >> 4);
        }

        if (0x8E38E38E38E38E39 * ((__p[2] - __p[0]) >> 4) >= 0xE38E38E38E38E3)
        {
          v21 = 0x1C71C71C71C71C7;
        }

        else
        {
          v21 = v20;
        }

        v38 = __p;
        if (v21)
        {
          if (v21 <= 0x1C71C71C71C71C7)
          {
            operator new();
          }

          sub_2711270EC();
        }

        v22 = 16 * ((__p[1] - __p[0]) >> 4);
        v36[0] = 0;
        v36[1] = v22;
        v37 = v22;
        *v22 = *v40;
        *(v22 + 16) = v41;
        v40[0] = 0;
        v40[1] = 0;
        v41 = 0;
        *(v22 + 32) = v42;
        *(v22 + 48) = v43;
        v43 = 0;
        v42 = 0uLL;
        v23 = v46;
        *(v22 + 56) = v44;
        *(v22 + 64) = 0;
        *(v22 + 80) = -1;
        if (v23 != -1)
        {
          v39 = v22 + 64;
          (off_288131598[v23])(&v39, v45);
          *(v22 + 80) = v23;
        }

        v24 = v47;
        *(v22 + 112) = 0;
        *(v22 + 88) = v24;
        *(v22 + 104) = v48;
        v48 = 0;
        v47 = 0uLL;
        *(v22 + 136) = 0;
        if (v51 == 1)
        {
          *(v22 + 112) = v49;
          *(v22 + 128) = v50;
          v50 = 0;
          v49 = 0uLL;
          *(v22 + 136) = 1;
        }

        *&v37 = v22 + 144;
        v25 = (v22 + __p[0] - __p[1]);
        sub_2713987DC(__p, __p[0], __p[1], v25);
        v26 = __p[0];
        __p[0] = v25;
        v27 = v37;
        *&__p[1] = v37;
        if (v26)
        {
          v34 = v37;
          operator delete(v26);
          v27 = v34;
        }

        __p[1] = v27;
        if (v51 == 1)
        {
LABEL_33:
          if (SHIBYTE(v50) < 0)
          {
            operator delete(v49);
          }
        }
      }

      else
      {
        v15 = *v40;
        *(__p[1] + 2) = v41;
        *v14 = v15;
        v40[1] = 0;
        v41 = 0;
        v40[0] = 0;
        v16 = v43;
        v14[2] = v42;
        *(v14 + 6) = v16;
        v43 = 0;
        v42 = 0uLL;
        v17 = v44;
        *(v14 + 64) = 0;
        *(v14 + 14) = v17;
        *(v14 + 20) = -1;
        v18 = v46;
        if (v46 != -1)
        {
          v36[0] = v14 + 4;
          (off_288131598[v46])(v36, v45);
          *(v14 + 20) = v18;
        }

        *(v14 + 112) = 0;
        *(v14 + 11) = 0;
        *(v14 + 12) = 0;
        *(v14 + 13) = 0;
        *(v14 + 88) = v47;
        *(v14 + 13) = v48;
        v47 = 0uLL;
        v48 = 0;
        *(v14 + 136) = 0;
        if (v51 == 1)
        {
          v19 = v49;
          *(v14 + 16) = v50;
          v14[7] = v19;
          v50 = 0;
          v49 = 0uLL;
          *(v14 + 136) = 1;
        }

        __p[1] = v14 + 9;
        if (v51 == 1)
        {
          goto LABEL_33;
        }
      }

      v28 = v47;
      if (v47)
      {
        v29 = *(&v47 + 1);
        v30 = v47;
        if (*(&v47 + 1) != v47)
        {
          do
          {
            v31 = *(v29 - 8);
            if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v31->__on_zero_shared)(v31);
              std::__shared_weak_count::__release_weak(v31);
            }

            v29 -= 16;
          }

          while (v29 != v28);
          v30 = v47;
        }

        *(&v47 + 1) = v28;
        operator delete(v30);
      }

      v11 = a1;
      if (v46 != -1)
      {
        (off_288131588[v46])(v36, v45);
      }

      v46 = -1;
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
        if (SHIBYTE(v41) < 0)
        {
LABEL_50:
          operator delete(v40[0]);
        }
      }

      else if (SHIBYTE(v41) < 0)
      {
        goto LABEL_50;
      }

      v12 += 5;
    }

    while (v12 != v13);
  }

  *(v11 + 2) = *__p;
  v11[6] = __p[2];
  v32 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_271397F6C(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_271398788(va1);
  sub_271398728(va);
  sub_271347F18(a3);
  _Unwind_Resume(a1);
}

void sub_271397F90(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271398728(va);
  sub_271347F18(a3);
  _Unwind_Resume(a1);
}

void sub_27139801C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40) - *(a1 + 32);
  if (v3)
  {
    if (0x8E38E38E38E38E39 * (v3 >> 4) < 0x666666666666667)
    {
      operator new();
    }

    sub_271135560();
  }

  v4 = *(a1 + 32);
  if (v4 != *(a1 + 40))
  {
    sub_2713974FC(v4);
  }

  *a2 = &unk_288131488;
  operator new();
}

void sub_2713983EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void sub_271398400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_271396310(va1);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void sub_27139841C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void **sub_271398430(void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 1);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 4);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 4);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 40;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_271398534(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
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
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288131588[v6])(&v8, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_271398630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2713986AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_271398728(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_271398998(i))
    {
      i -= 144;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_271398788(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 144;
    sub_271398998(v3 - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2713987DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2 + 64;
    do
    {
      v8 = *(v7 - 64);
      *(v4 + 16) = *(v7 - 48);
      *v4 = v8;
      *(v7 - 56) = 0;
      *(v7 - 48) = 0;
      *(v7 - 64) = 0;
      v9 = *(v7 - 32);
      *(v4 + 48) = *(v7 - 16);
      *(v4 + 32) = v9;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      *(v7 - 32) = 0;
      v10 = *(v7 - 8);
      *(v4 + 64) = 0;
      *(v4 + 56) = v10;
      *(v4 + 80) = -1;
      v11 = *(v7 + 16);
      if (v11 != -1)
      {
        v15 = v4 + 64;
        (off_288131598[v11])(&v15, v7);
        *(v4 + 80) = v11;
      }

      v12 = v7 - 64;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 88) = *(v7 + 24);
      *(v4 + 104) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v4 + 112) = 0;
      *(v4 + 136) = 0;
      if (*(v7 + 72) == 1)
      {
        v13 = *(v7 + 48);
        *(v4 + 128) = *(v7 + 64);
        *(v4 + 112) = v13;
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        *(v7 + 48) = 0;
        *(v4 + 136) = 1;
      }

      v4 = v14 + 144;
      v14 += 144;
      v7 += 144;
    }

    while (v12 + 144 != a3);
    do
    {
      sub_271398998(v6);
      v6 += 144;
    }

    while (v6 != a3);
  }
}

void sub_27139895C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271398C10(va);
  _Unwind_Resume(a1);
}

__n128 sub_271398970(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

__n128 sub_271398984(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void sub_271398998(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 88);
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
      v4 = *(a1 + 88);
    }

    *(a1 + 96) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 80);
  if (v6 != -1)
  {
    (off_288131588[v6])(&v7, a1 + 64);
  }

  *(a1 + 80) = -1;
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(*a1);
    return;
  }

  operator delete(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    goto LABEL_19;
  }
}

uint64_t sub_271398ADC(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 88);
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
      v4 = *(a1 + 88);
    }

    *(a1 + 96) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 80);
  if (v6 != -1)
  {
    (off_288131588[v6])(&v8, a1 + 64);
  }

  *(a1 + 80) = -1;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_19:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_19;
  }

  return a1;
}

uint64_t sub_271398C10(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 144;
      sub_271398998(v3);
    }
  }

  return a1;
}

uint64_t sub_271398C6C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_271135560();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v7 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v8 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = 40 * v2 - (v10 - *a1);
  *v6 = v7;
  *(v6 + 16) = off_28810C940;
  *(v6 + 24) = v8;
  v12 = 40 * v2 + 40;
  if (v10 != v9)
  {
    v13 = 40 * v2 - 8 * (v10 - v9) + 16;
    v14 = v9;
    v15 = v11;
    do
    {
      *v15 = *v14;
      *v14 = 0;
      v14[1] = 0;
      *(v15 + 16) = off_28810C940;
      *(v15 + 24) = *(v14 + 3);
      v14[3] = 0;
      v14[4] = 0;
      v14 += 5;
      v15 += 40;
      v13 += 40;
    }

    while (v14 != v10);
    while (1)
    {
      v16 = v9[4];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v17 = v9[1];
        if (v17)
        {
LABEL_18:
          if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17);
            std::__shared_weak_count::__release_weak(v17);
          }
        }
      }

      else
      {
        v17 = v9[1];
        if (v17)
        {
          goto LABEL_18;
        }
      }

      v9 += 5;
      if (v9 == v10)
      {
        v9 = *a1;
        break;
      }
    }
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v12;
}

void sub_271399158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_guard_abort(&qword_28087B7E8);
  sub_27112F828(&a10);
  *v23 = v24;
  sub_271399744(v23);
  _Unwind_Resume(a1);
}

void *sub_271399200(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EB80;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2713992C0(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EB80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271399394(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087B7F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087B7F0))
    {
      sub_271399804();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_2711C1280(&xmmword_28087B7F8, "{", __p, ",");
}

void sub_271399488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713994A4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 6;
}

void sub_271399520(std::string *a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = "DictionaryData must only contain Number, Boolean, String, Array or Dictionary values, but contains ";
  v5[1] = 99;
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v5[2] = v3;
  v5[3] = v2;
  sub_271131230(v5, &v6, 0, 0, a1);
  v4 = *MEMORY[0x277D85DE8];
}

void *sub_2713995B0(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EB80;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271399670(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EB80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_271399744(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EB80;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271399804()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_271399A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

BOOL sub_271399AF0(void *a1, void *a2)
{
  if (!sub_27139E65C(&v31, a1, a2))
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a2[4];
  v6 = *(v4 + 24);
  v7 = *(v5 + 24);
  if (v6 != v7 || v6 == 0)
  {
    if (v6 != v7)
    {
      return 0;
    }
  }

  else
  {
    v10 = *(v4 + 23);
    if (v10 >= 0)
    {
      v11 = *(v4 + 23);
    }

    else
    {
      v11 = *(v4 + 8);
    }

    v12 = *(v5 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v5 + 8);
    }

    if (v11 != v12)
    {
      return 0;
    }

    v14 = v10 >= 0 ? a1[4] : *v4;
    v15 = v13 >= 0 ? a2[4] : *v5;
    if (memcmp(v14, v15, v11))
    {
      return 0;
    }
  }

  v16 = a1[5];
  v17 = a2[5];
  v18 = *(v17 + 24);
  v19 = *(v16 + 24);
  result = v19 == v18;
  if (v19 != v18 || v19 == 0)
  {
    return result;
  }

  v22 = *v16;
  v21 = v16[1];
  v23 = *v17;
  if (v21 - *v16 != v17[1] - *v17)
  {
    return 0;
  }

  if (v22 != v21)
  {
    while (1)
    {
      v24 = *(v22 + 23);
      if (v24 >= 0)
      {
        v25 = *(v22 + 23);
      }

      else
      {
        v25 = *(v22 + 8);
      }

      v26 = *(v23 + 23);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = v23[1];
      }

      if (v25 != v26)
      {
        break;
      }

      v28 = v24 >= 0 ? v22 : *v22;
      v29 = *v23;
      v30 = v27 >= 0 ? v23 : *v23;
      if (memcmp(v28, v30, v25))
      {
        break;
      }

      v22 += 24;
      v23 += 3;
      result = 1;
      if (v22 == v21)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_271399C9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_271127178((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_271127178((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_27139E814(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_271399E38(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271399EB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = (a2 + 16);
  *(a2 + 40) = 0;
  if (*(result + 48) == 1)
  {
    if (*(result + 47) < 0)
    {
      result = sub_271127178(v5, *(result + 24), *(result + 32));
    }

    else
    {
      *v5 = *(result + 24);
      *(a2 + 32) = *(result + 40);
    }

    *(a2 + 40) = 1;
  }

  if (*(v2 + 72) == 1)
  {
    v6 = *(v2 + 64);
    *(a2 + 48) = *(v2 + 56);
    *(a2 + 56) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a2 + 48) = 0;
  }

  *(a2 + 72) = 0;
  *(a2 + 64) = v7;
  *(a2 + 96) = 0;
  if (*(v2 + 104) == 1)
  {
    if (*(v2 + 103) < 0)
    {
      result = sub_271127178((a2 + 72), *(v2 + 80), *(v2 + 88));
    }

    else
    {
      *(a2 + 72) = *(v2 + 80);
      *(a2 + 88) = *(v2 + 96);
    }

    *(a2 + 96) = 1;
  }

  if (*(v2 + 136))
  {
    if (*(v2 + 135) < 0)
    {
      result = sub_271127178(v12, *(v2 + 112), *(v2 + 120));
    }

    else
    {
      v12[0] = *(v2 + 112);
      *&v12[1] = *(v2 + 128);
    }

    v10 = *(&v12[0] + 1);
    v11 = *(v12 + 15);
    *(a2 + 112) = *&v12[0];
    *(a2 + 120) = v10;
    *(a2 + 127) = v11;
    *(a2 + 135) = BYTE7(v12[1]);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    if (*(v2 + 168) != 1)
    {
      goto LABEL_21;
    }

LABEL_18:
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 152) - *(v2 + 144)) >> 3);
    memset(v12, 0, 24);
    sub_27139E20C(v12, v8);
    result = sub_27139E2F4(*(v2 + 144), *(v2 + 152), v12, sub_2714FB29C);
    v9 = *&v12[1];
    *(a2 + 176) = v12[0];
    *(a2 + 192) = v9;
    *(a2 + 200) = 1;
    return result;
  }

  *(a2 + 112) = 0;
  *(a2 + 160) = 0;
  if (*(v2 + 168) == 1)
  {
    goto LABEL_18;
  }

LABEL_21:
  *(a2 + 176) = 0;
  *(a2 + 200) = 0;
  return result;
}

void sub_27139A0A4(_Unwind_Exception *exception_object)
{
  if (v1[96] == 1 && v1[95] < 0)
  {
    operator delete(*v3);
  }

  if (v1[40] == 1 && v1[39] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27139A124(uint64_t result, void *a2)
{
  *(result + 8) = 0u;
  *(result + 40) = 0u;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = 0;
  *(result + 24) = 0u;
  *(result + 56) = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

void sub_27139A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  sub_27139A22C(v10);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27139A22C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    (off_288131650[v2])(&v4, a1);
  }

  *(a1 + 16) = -1;
  return a1;
}

void sub_27139A288(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (v2 == v3)
  {
LABEL_33:
    sub_2714C3340((a1 + 8), v21);
    sub_27139601C(v21);
  }

  v4 = (a1 + 8);
  while (1)
  {
    v6 = *v2;
    v5 = v2[1];
    v24 = *v2;
    v25 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = (*(*v6 + 16))(v6);
    v9 = *(a1 + 31);
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v8 == v9)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v2 += 2;
    if (v2 == v3)
    {
      goto LABEL_33;
    }
  }

  v10 = (a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_10:
  if (memcmp(v7, v10, v9))
  {
    goto LABEL_11;
  }

  (*(*v6 + 24))(&v22, v6, *(a1 + 32));
  v11 = v22;
  if (!v22)
  {
    if (*(a1 + 31) < 0)
    {
      sub_271127178(&v18, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v18 = *v4;
      v19 = *(a1 + 24);
    }

    v20 = *(a1 + 32);
    sub_2714C35E8(&v18, v21);
    sub_27139601C(v21);
  }

  v12 = *(a1 + 56);
  if (v12 != -1)
  {
    if (!v12)
    {
      v13 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(a1 + 48);
      *(a1 + 40) = v11;
      *(a1 + 48) = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      goto LABEL_26;
    }

    (off_288131650[v12])(v21, a1 + 40);
    v11 = v22;
  }

  *(a1 + 56) = -1;
  v15 = v23;
  *(a1 + 40) = v11;
  *(a1 + 48) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
LABEL_26:
  v16 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27139A584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_27112F828(v17 - 112);
  sub_27112F828(v17 - 96);
  _Unwind_Resume(a1);
}

void sub_27139A5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27139A608(uint64_t result, void *a2)
{
  *(result + 8) = 0u;
  *(result + 40) = 0u;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = 0;
  *(result + 24) = 0u;
  *(result + 56) = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

void sub_27139A6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  sub_27139A22C(v10);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27139A710(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_2714FCC00(a2);
  if (SHIBYTE(v14) < 0)
  {
    sub_271127178((a1 + 8), __p[0], __p[1]);
    v6 = SHIBYTE(v14);
    *(a1 + 32) = v15;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 8) = *__p;
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
  }

  sub_2714FCD68(a2);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2714FCC00(a2);
    sub_27139EAE4(&v16, __p);
    std::logic_error::logic_error(exception, &v16);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *a3;
  v8 = a3[1];
  __p[0] = (a1 + 64);
  LOBYTE(__p[1]) = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_27139A8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      sub_27112F828(&a10);
      if (*(v24 + 31) < 0)
      {
        operator delete(*(v24 + 8));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

uint64_t sub_27139A974(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v8;
  }

  v9 = *(a2 + 6);
  *(a1 + 40) = 0;
  *(a1 + 32) = v9;
  *(a1 + 56) = -1;
  v10 = *(a3 + 16);
  if (v10 != -1)
  {
    v14 = a1 + 40;
    (off_288131660[v10])(&v14, a3);
    *(a1 + 56) = v10;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v11 = *a4;
  v12 = a4[1];
  v14 = a1 + 64;
  v15 = 0;
  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_27139AAB4(_Unwind_Exception *a1)
{
  sub_27139EA48(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27139AAF0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 56) > 1u)
  {
LABEL_11:
    sub_2711308D4();
  }

  v3 = *(result + 40);
  v2 = *(result + 48);
  if (!v2 || (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_10:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = off_28810C940;
    return result;
  }

  v5 = result;
  v6 = a2;
  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  result = v5;
  a2 = v6;
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(result + 56))
  {
    goto LABEL_11;
  }

  v4 = *(**(result + 40) + 48);

  return v4();
}

void sub_27139ABFC(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (v2 == v3)
  {
LABEL_33:
    sub_2714C3340((a1 + 8), v21);
    sub_27139601C(v21);
  }

  v4 = (a1 + 8);
  while (1)
  {
    v6 = *v2;
    v5 = v2[1];
    v24 = *v2;
    v25 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = (*(*v6 + 16))(v6);
    v9 = *(a1 + 31);
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v8 == v9)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v2 += 2;
    if (v2 == v3)
    {
      goto LABEL_33;
    }
  }

  v10 = (a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_10:
  if (memcmp(v7, v10, v9))
  {
    goto LABEL_11;
  }

  (*(*v6 + 24))(&v22, v6, *(a1 + 32));
  v11 = v22;
  if (!v22)
  {
    if (*(a1 + 31) < 0)
    {
      sub_271127178(&v18, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v18 = *v4;
      v19 = *(a1 + 24);
    }

    v20 = *(a1 + 32);
    sub_2714C35E8(&v18, v21);
    sub_27139601C(v21);
  }

  v12 = *(a1 + 56);
  if (v12 != -1)
  {
    if (!v12)
    {
      v13 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(a1 + 48);
      *(a1 + 40) = v11;
      *(a1 + 48) = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      goto LABEL_26;
    }

    (off_288131650[v12])(v21, a1 + 40);
    v11 = v22;
  }

  *(a1 + 56) = -1;
  v15 = v23;
  *(a1 + 40) = v11;
  *(a1 + 48) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
LABEL_26:
  v16 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27139AEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_27112F828(v17 - 112);
  sub_27112F828(v17 - 96);
  _Unwind_Resume(a1);
}

void sub_27139AF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27139B104(int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(qword_28087B838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_28087B838))
  {
    operator new();
  }

  v2 = qword_28087B850;
  if (!qword_28087B850)
  {
    goto LABEL_9;
  }

  v3 = &qword_28087B850;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_28087B850 || *(v3 + 8) > a1)
  {
LABEL_9:
    v3 = &qword_28087B850;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3 + 5;
}

void sub_27139B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  sub_27139B4E8(v22);
  sub_27139B4E8(v23 - 104);
  sub_271233D2C(&a11);
  sub_27112F828(&a20);
  sub_27112F828(&a9);
  sub_271233D2C(&a17);
  sub_27112F828(&a22);
  sub_27112F828(&a15);
  __cxa_guard_abort(qword_28087B838);
  _Unwind_Resume(a1);
}

void *sub_27139B414(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 60))
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

uint64_t sub_27139B4E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
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
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_27139B59C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55[0] = a1;
  v55[1] = a2;
  LOBYTE(v42) = 0;
  v54 = 0;
  v41[0] = &unk_2881316B0;
  v41[1] = &v42;
  v41[2] = v55;
  sub_27184A384(v41, &v30);
  if (v40 == 1)
  {
    v18 = v53;
    if (v53 == 1)
    {
      v4 = v42;
      v42 = 0uLL;
      v7 = v4;
      *v8 = v43;
    }

    else
    {
      v7 = v42;
      LOBYTE(v8[0]) = 0;
      v17 = 0;
      if (v52 == 1)
      {
        v10 = 0;
        if (v45 == 1)
        {
          *v8 = v43;
          v9 = v44;
          v44 = 0;
          v43 = 0uLL;
          v10 = 1;
        }

        LOBYTE(v11[0]) = 0;
        v16 = 0;
        if (v51 == 1)
        {
          v12 = v47;
          *v11 = v46;
          v46 = 0uLL;
          v13 = v48;
          *v14 = v49;
          v15 = v50;
          v47 = 0;
          v49 = 0uLL;
          v50 = 0;
          v16 = 1;
        }

        v17 = 1;
      }
    }

    goto LABEL_30;
  }

  v19 = v30;
  LOBYTE(__p) = 0;
  v29 = 0;
  if (v39 == 1)
  {
    sub_27112F6CC(&__p, &v31);
    v29 = 1;
    v7 = v19;
    LOBYTE(v8[0]) = 0;
    v10 = 0;
    if (v22 == 1)
    {
      *v8 = __p;
      v9 = v21;
      v21 = 0;
      __p = 0uLL;
      v10 = 1;
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
LABEL_7:
        v17 = 1;
        v18 = 0;
        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = v24;
    *v11 = v23;
    v23 = 0uLL;
    v13 = v25;
    *v14 = v26;
    v15 = v27;
    v24 = 0;
    v26 = 0uLL;
    v27 = 0;
    v16 = 1;
    v17 = 1;
    v18 = 0;
    if (v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = v30;
    LOBYTE(v8[0]) = 0;
    v17 = 0;
    v18 = 0;
  }

LABEL_20:
  if ((v40 & 1) == 0 && v39 == 1)
  {
    if (v38 == 1)
    {
      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }
    }

    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }
  }

LABEL_30:
  if (v54 == 1)
  {
    if (v53 == 1)
    {
      v5 = *(&v42 + 1);
      if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else if (v52 == 1)
    {
      if (v51 == 1)
      {
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(v43);
      }
    }
  }

  sub_27139F114(a3, &v7);
  if (v18 == 1)
  {
    v6 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      if (!atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else if (v17 == 1)
  {
    if (v16 == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v10 == 1 && SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_27139BA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_27112D66C(v40 + 16);
  sub_27112E024(&a40);
  if (*(v41 - 64) == 1)
  {
    sub_27113827C(v41 - 192);
  }

  _Unwind_Resume(a1);
}

void sub_27139BA44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62[0] = a2;
  v62[1] = a1;
  v50[0] = 0;
  v61 = 0;
  v49[0] = &unk_288131750;
  v49[1] = v50;
  v49[2] = v62;
  sub_27184A384(v49, v36);
  if (v48 == 1)
  {
    v24 = v60;
    if (v60 == 1)
    {
      *v14 = off_28810C940;
      *&v14[8] = *&v50[8];
      *&v50[8] = 0;
      *&v50[16] = 0;
    }

    else
    {
      *v14 = *v50;
      v14[16] = 0;
      v23 = 0;
      if (v59 == 1)
      {
        v16 = 0;
        if (v52 == 1)
        {
          *&v14[16] = *&v50[16];
          v15 = v51;
          *&v50[24] = 0;
          v51 = 0;
          *&v50[16] = 0;
          v16 = 1;
        }

        LOBYTE(v17[0]) = 0;
        v22 = 0;
        if (v58 == 1)
        {
          v18 = v54;
          *v17 = v53;
          v53 = 0uLL;
          v19 = v55;
          *v20 = v56;
          v21 = v57;
          v54 = 0;
          v56 = 0uLL;
          v57 = 0;
          v22 = 1;
        }

        v23 = 1;
      }
    }

    goto LABEL_30;
  }

  v25 = *v36;
  LOBYTE(__p) = 0;
  v35 = 0;
  if (v47 == 1)
  {
    sub_27112F6CC(&__p, &v37);
    v35 = 1;
    *v14 = v25;
    v14[16] = 0;
    v16 = 0;
    if (v28 == 1)
    {
      *&v14[16] = __p;
      v15 = v27;
      v27 = 0;
      __p = 0uLL;
      v16 = 1;
      LOBYTE(v17[0]) = 0;
      v22 = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v17[0]) = 0;
      v22 = 0;
      if ((v34 & 1) == 0)
      {
LABEL_7:
        v23 = 1;
        v24 = 0;
        if (!v28)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    v18 = v30;
    *v17 = v29;
    v29 = 0uLL;
    v19 = v31;
    *v20 = v32;
    v21 = v33;
    v30 = 0;
    v32 = 0uLL;
    v33 = 0;
    v22 = 1;
    v23 = 1;
    v24 = 0;
    if (v28)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v14 = *v36;
    v14[16] = 0;
    v23 = 0;
    v24 = 0;
  }

LABEL_20:
  if ((v48 & 1) == 0 && v47 == 1)
  {
    if (v46 == 1)
    {
      if (v45 < 0)
      {
        operator delete(v42);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40);
      }
    }

    if (v39 == 1 && SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }
  }

LABEL_30:
  if (v61 == 1)
  {
    if (v60 == 1)
    {
      v4 = *&v50[16];
      if (*&v50[16] && !atomic_fetch_add((*&v50[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    else if (v59 == 1)
    {
      if (v58 == 1)
      {
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53);
        }
      }

      if (v52 == 1 && SHIBYTE(v51) < 0)
      {
        operator delete(*&v50[16]);
      }
    }
  }

  v5 = v24;
  if (v24 == 1)
  {
    *a3 = off_28810C940;
    *(a3 + 8) = *&v14[8];
    *&v14[8] = 0;
    *&v14[16] = 0;
    *(a3 + 120) = v5;
    goto LABEL_93;
  }

  if (*&v14[8] != &off_288132220)
  {
    sub_271847E00(v14, &v25);
    if (SBYTE7(__p) < 0)
    {
      sub_271127178(v36, v25, *(&v25 + 1));
    }

    else
    {
      *v36 = v25;
      *&v37 = __p;
    }

    BYTE8(v37) = 1;
    LOBYTE(v38) = 0;
    v43 = 0;
    v44 = 1;
    sub_27139F524(3u, v36, v50);
    *a3 = *v50;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v59 != 1)
    {
      *(a3 + 120) = 0;
      goto LABEL_67;
    }

    *(a3 + 40) = 0;
    v8 = v52;
    if (v52 == 1)
    {
      *(a3 + 16) = *&v50[16];
      *(a3 + 32) = v51;
      *&v50[24] = 0;
      v51 = 0;
      *&v50[16] = 0;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v58 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v58 & 1) == 0)
      {
LABEL_60:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v8)
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }
    }

    v10 = v55;
    *(v9 + 16) = v54;
    *v9 = v53;
    v53 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v56;
    *(a3 + 96) = v57;
    v54 = 0;
    v56 = 0uLL;
    v57 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v8)
    {
      goto LABEL_67;
    }

LABEL_65:
    if (SHIBYTE(v51) < 0)
    {
      operator delete(*&v50[16]);
    }

LABEL_67:
    if (v44 == 1)
    {
      if (v43 == 1)
      {
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v38);
        }
      }

      if (BYTE8(v37) == 1 && SBYTE7(v37) < 0)
      {
        operator delete(v36[0]);
      }
    }

    if (SBYTE7(__p) < 0)
    {
      v11 = v25;
LABEL_92:
      operator delete(v11);
      goto LABEL_93;
    }

    goto LABEL_93;
  }

  LOBYTE(v36[0]) = 0;
  v44 = 0;
  if (v23 == 1)
  {
    sub_27112F6CC(v36, &v14[16]);
    v44 = 1;
  }

  sub_27139F524(v14[0], v36, v50);
  *a3 = *v50;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v59 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_83;
  }

  *(a3 + 40) = 0;
  v6 = v52;
  if (v52 == 1)
  {
    *(a3 + 16) = *&v50[16];
    *(a3 + 32) = v51;
    *&v50[24] = 0;
    v51 = 0;
    *&v50[16] = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v7 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v58 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_80:
    v12 = v55;
    *(v7 + 16) = v54;
    *v7 = v53;
    v53 = 0uLL;
    *(a3 + 72) = v12;
    *(a3 + 80) = v56;
    *(a3 + 96) = v57;
    v54 = 0;
    v56 = 0uLL;
    v57 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v6)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  *(a3 + 48) = 0;
  v7 = a3 + 48;
  *(a3 + 104) = 0;
  if (v58)
  {
    goto LABEL_80;
  }

LABEL_54:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v6)
  {
    goto LABEL_83;
  }

LABEL_81:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(*&v50[16]);
  }

LABEL_83:
  if (v44 == 1)
  {
    if (v43 == 1)
    {
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v38);
      }
    }

    if (BYTE8(v37) == 1 && SBYTE7(v37) < 0)
    {
      v11 = v36[0];
      goto LABEL_92;
    }
  }

LABEL_93:
  if (v24 == 1)
  {
    v13 = *&v14[16];
    if (*&v14[16])
    {
      if (!atomic_fetch_add((*&v14[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }
  }

  else if (v23 == 1)
  {
    if (v22 == 1)
    {
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }
    }

    if (v16 == 1 && SHIBYTE(v15) < 0)
    {
      operator delete(*&v14[16]);
    }
  }
}

void sub_27139C250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_27112D66C(&a41);
  sub_271235250(&a9);
  _Unwind_Resume(a1);
}

void sub_27139C26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_271235250(&a9);
    _Unwind_Resume(a1);
  }

  sub_271235250(&a9);
  _Unwind_Resume(a1);
}

void sub_27139C308(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55[0] = a1;
  v55[1] = a2;
  LOBYTE(v42) = 0;
  v54 = 0;
  v41[0] = &unk_2881317A0;
  v41[1] = &v42;
  v41[2] = v55;
  sub_27184A384(v41, &v30);
  if (v40 == 1)
  {
    v18 = v53;
    if (v53 == 1)
    {
      v4 = v42;
      v42 = 0uLL;
      v7 = v4;
      *v8 = v43;
    }

    else
    {
      v7 = v42;
      LOBYTE(v8[0]) = 0;
      v17 = 0;
      if (v52 == 1)
      {
        v10 = 0;
        if (v45 == 1)
        {
          *v8 = v43;
          v9 = v44;
          v44 = 0;
          v43 = 0uLL;
          v10 = 1;
        }

        LOBYTE(v11[0]) = 0;
        v16 = 0;
        if (v51 == 1)
        {
          v12 = v47;
          *v11 = v46;
          v46 = 0uLL;
          v13 = v48;
          *v14 = v49;
          v15 = v50;
          v47 = 0;
          v49 = 0uLL;
          v50 = 0;
          v16 = 1;
        }

        v17 = 1;
      }
    }

    goto LABEL_30;
  }

  v19 = v30;
  LOBYTE(__p) = 0;
  v29 = 0;
  if (v39 == 1)
  {
    sub_27112F6CC(&__p, &v31);
    v29 = 1;
    v7 = v19;
    LOBYTE(v8[0]) = 0;
    v10 = 0;
    if (v22 == 1)
    {
      *v8 = __p;
      v9 = v21;
      v21 = 0;
      __p = 0uLL;
      v10 = 1;
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
LABEL_7:
        v17 = 1;
        v18 = 0;
        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = v24;
    *v11 = v23;
    v23 = 0uLL;
    v13 = v25;
    *v14 = v26;
    v15 = v27;
    v24 = 0;
    v26 = 0uLL;
    v27 = 0;
    v16 = 1;
    v17 = 1;
    v18 = 0;
    if (v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = v30;
    LOBYTE(v8[0]) = 0;
    v17 = 0;
    v18 = 0;
  }

LABEL_20:
  if ((v40 & 1) == 0 && v39 == 1)
  {
    if (v38 == 1)
    {
      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }
    }

    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }
  }

LABEL_30:
  if (v54 == 1)
  {
    if (v53 == 1)
    {
      v5 = *(&v42 + 1);
      if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else if (v52 == 1)
    {
      if (v51 == 1)
      {
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(v43);
      }
    }
  }

  sub_27139F114(a3, &v7);
  if (v18 == 1)
  {
    v6 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      if (!atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else if (v17 == 1)
  {
    if (v16 == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v10 == 1 && SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_27139C76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_27112D66C(v40 + 16);
  sub_27112E024(&a40);
  if (*(v41 - 64) == 1)
  {
    sub_27113827C(v41 - 192);
  }

  _Unwind_Resume(a1);
}

void sub_27139C7B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63[0] = a2;
  v63[1] = a1;
  LOBYTE(v51) = 0;
  v62 = 0;
  v50[0] = &unk_2881317E0;
  v50[1] = &v51;
  v50[2] = v63;
  sub_27184A384(v50, v37);
  if (v49 == 1)
  {
    v25 = v61;
    if (v61 == 1)
    {
      v15 = v51;
      v51 = 0uLL;
      *v16 = off_28810C940;
      *&v16[8] = *&v52[8];
      *&v52[8] = 0uLL;
    }

    else
    {
      v15 = v51;
      v16[0] = 0;
      v24 = 0;
      if (v60 == 1)
      {
        v17 = 0;
        if (v53 == 1)
        {
          *v16 = *v52;
          *&v16[16] = *&v52[16];
          memset(v52, 0, sizeof(v52));
          v17 = 1;
        }

        LOBYTE(v18[0]) = 0;
        v23 = 0;
        if (v59 == 1)
        {
          v19 = v55;
          *v18 = v54;
          v54 = 0uLL;
          v20 = v56;
          *v21 = v57;
          v22 = v58;
          v55 = 0;
          v57 = 0uLL;
          v58 = 0;
          v23 = 1;
        }

        v24 = 1;
      }
    }

    goto LABEL_30;
  }

  v26 = *v37;
  LOBYTE(__p) = 0;
  v36 = 0;
  if (v48 == 1)
  {
    sub_27112F6CC(&__p, &v38);
    v36 = 1;
    v15 = v26;
    v16[0] = 0;
    v17 = 0;
    if (v29 == 1)
    {
      *v16 = __p;
      *&v16[16] = v28;
      v28 = 0;
      __p = 0uLL;
      v17 = 1;
      LOBYTE(v18[0]) = 0;
      v23 = 0;
      if ((v35 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v18[0]) = 0;
      v23 = 0;
      if ((v35 & 1) == 0)
      {
LABEL_7:
        v24 = 1;
        v25 = 0;
        if (!v29)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    v19 = v31;
    *v18 = v30;
    v30 = 0uLL;
    v20 = v32;
    *v21 = v33;
    v22 = v34;
    v31 = 0;
    v33 = 0uLL;
    v34 = 0;
    v23 = 1;
    v24 = 1;
    v25 = 0;
    if (v29)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = *v37;
    v16[0] = 0;
    v24 = 0;
    v25 = 0;
  }

LABEL_20:
  if ((v49 & 1) == 0 && v48 == 1)
  {
    if (v47 == 1)
    {
      if (v46 < 0)
      {
        operator delete(v43);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
      }
    }

    if (v40 == 1 && SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }
  }

LABEL_30:
  if (v62 == 1)
  {
    if (v61 == 1)
    {
      v4 = *&v52[16];
      if (*&v52[16] && !atomic_fetch_add((*&v52[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      v5 = *(&v51 + 1);
      if (*(&v51 + 1) && !atomic_fetch_add((*(&v51 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else if (v60 == 1)
    {
      if (v59 == 1)
      {
        if (SHIBYTE(v58) < 0)
        {
          operator delete(v57);
        }

        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }
      }

      if (v53 == 1 && (v52[23] & 0x80000000) != 0)
      {
        operator delete(*v52);
      }
    }
  }

  if (v25 == 1)
  {
    *a3 = v15;
    v15 = 0uLL;
    *(a3 + 16) = off_28810C940;
    *(a3 + 24) = *&v16[8];
    *&v16[8] = 0;
    *&v16[16] = 0;
    *(a3 + 120) = 1;
    goto LABEL_96;
  }

  if (*(&v15 + 1) != &off_288132220)
  {
    sub_271847E00(&v15, &v26);
    if (SBYTE7(__p) < 0)
    {
      sub_271127178(v37, v26, *(&v26 + 1));
    }

    else
    {
      *v37 = v26;
      *&v38 = __p;
    }

    BYTE8(v38) = 1;
    LOBYTE(v39) = 0;
    v44 = 0;
    v45 = 1;
    sub_27139F524(3u, v37, &v51);
    *a3 = v51;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v60 != 1)
    {
      *(a3 + 120) = 0;
      goto LABEL_70;
    }

    *(a3 + 40) = 0;
    v8 = v53;
    if (v53 == 1)
    {
      *(a3 + 16) = *v52;
      *(a3 + 32) = *&v52[16];
      memset(v52, 0, sizeof(v52));
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v59 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v59 & 1) == 0)
      {
LABEL_63:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v8)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }
    }

    v10 = v56;
    *(v9 + 16) = v55;
    *v9 = v54;
    v54 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v57;
    *(a3 + 96) = v58;
    v55 = 0;
    v57 = 0uLL;
    v58 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v8)
    {
      goto LABEL_70;
    }

LABEL_68:
    if ((v52[23] & 0x80000000) != 0)
    {
      operator delete(*v52);
    }

LABEL_70:
    if (v45 == 1)
    {
      if (v44 == 1)
      {
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(v39);
        }
      }

      if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
      {
        operator delete(v37[0]);
      }
    }

    if (SBYTE7(__p) < 0)
    {
      v11 = v26;
LABEL_95:
      operator delete(v11);
      goto LABEL_96;
    }

    goto LABEL_96;
  }

  LOBYTE(v37[0]) = 0;
  v45 = 0;
  if (v24 == 1)
  {
    sub_27112F6CC(v37, v16);
    v45 = 1;
  }

  sub_27139F524(v15, v37, &v51);
  *a3 = v51;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v60 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_86;
  }

  *(a3 + 40) = 0;
  v6 = v53;
  if (v53 == 1)
  {
    *(a3 + 16) = *v52;
    *(a3 + 32) = *&v52[16];
    memset(v52, 0, sizeof(v52));
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v7 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v59 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_83:
    v12 = v56;
    *(v7 + 16) = v55;
    *v7 = v54;
    v54 = 0uLL;
    *(a3 + 72) = v12;
    *(a3 + 80) = v57;
    *(a3 + 96) = v58;
    v55 = 0;
    v57 = 0uLL;
    v58 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v6)
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  *(a3 + 48) = 0;
  v7 = a3 + 48;
  *(a3 + 104) = 0;
  if (v59)
  {
    goto LABEL_83;
  }

LABEL_57:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v6)
  {
    goto LABEL_86;
  }

LABEL_84:
  if ((v52[23] & 0x80000000) != 0)
  {
    operator delete(*v52);
  }

LABEL_86:
  if (v45 == 1)
  {
    if (v44 == 1)
    {
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v39);
      }
    }

    if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
    {
      v11 = v37[0];
      goto LABEL_95;
    }
  }

LABEL_96:
  if (v25 == 1)
  {
    v13 = *&v16[16];
    if (*&v16[16] && !atomic_fetch_add((*&v16[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      v14 = *(&v15 + 1);
      if (!*(&v15 + 1))
      {
        return;
      }
    }

    else
    {
      v14 = *(&v15 + 1);
      if (!*(&v15 + 1))
      {
        return;
      }
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else if (v24 == 1)
  {
    if (v23 == 1)
    {
      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }
    }

    if (v17 == 1 && (v16[23] & 0x80000000) != 0)
    {
      operator delete(*v16);
    }
  }
}

void sub_27139D068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_27112D66C(&a41);
  sub_271158CF0(&a9);
  _Unwind_Resume(a1);
}

void sub_27139D084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_271158CF0(&a9);
    _Unwind_Resume(a1);
  }

  sub_271158CF0(&a9);
  _Unwind_Resume(a1);
}

void sub_27139D120(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55[0] = a1;
  v55[1] = a2;
  LOBYTE(v42) = 0;
  v54 = 0;
  v41[0] = &unk_288131820;
  v41[1] = &v42;
  v41[2] = v55;
  sub_27184A384(v41, &v30);
  if (v40 == 1)
  {
    v18 = v53;
    if (v53 == 1)
    {
      v4 = v42;
      v42 = 0uLL;
      v7 = v4;
      *v8 = v43;
    }

    else
    {
      v7 = v42;
      LOBYTE(v8[0]) = 0;
      v17 = 0;
      if (v52 == 1)
      {
        v10 = 0;
        if (v45 == 1)
        {
          *v8 = v43;
          v9 = v44;
          v44 = 0;
          v43 = 0uLL;
          v10 = 1;
        }

        LOBYTE(v11[0]) = 0;
        v16 = 0;
        if (v51 == 1)
        {
          v12 = v47;
          *v11 = v46;
          v46 = 0uLL;
          v13 = v48;
          *v14 = v49;
          v15 = v50;
          v47 = 0;
          v49 = 0uLL;
          v50 = 0;
          v16 = 1;
        }

        v17 = 1;
      }
    }

    goto LABEL_30;
  }

  v19 = v30;
  LOBYTE(__p) = 0;
  v29 = 0;
  if (v39 == 1)
  {
    sub_27112F6CC(&__p, &v31);
    v29 = 1;
    v7 = v19;
    LOBYTE(v8[0]) = 0;
    v10 = 0;
    if (v22 == 1)
    {
      *v8 = __p;
      v9 = v21;
      v21 = 0;
      __p = 0uLL;
      v10 = 1;
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
LABEL_7:
        v17 = 1;
        v18 = 0;
        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = v24;
    *v11 = v23;
    v23 = 0uLL;
    v13 = v25;
    *v14 = v26;
    v15 = v27;
    v24 = 0;
    v26 = 0uLL;
    v27 = 0;
    v16 = 1;
    v17 = 1;
    v18 = 0;
    if (v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = v30;
    LOBYTE(v8[0]) = 0;
    v17 = 0;
    v18 = 0;
  }

LABEL_20:
  if ((v40 & 1) == 0 && v39 == 1)
  {
    if (v38 == 1)
    {
      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }
    }

    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }
  }

LABEL_30:
  if (v54 == 1)
  {
    if (v53 == 1)
    {
      v5 = *(&v42 + 1);
      if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else if (v52 == 1)
    {
      if (v51 == 1)
      {
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(v43);
      }
    }
  }

  sub_27139F114(a3, &v7);
  if (v18 == 1)
  {
    v6 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      if (!atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else if (v17 == 1)
  {
    if (v16 == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v10 == 1 && SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_27139D584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_27112D66C(v40 + 16);
  sub_27112E024(&a40);
  if (*(v41 - 64) == 1)
  {
    sub_27113827C(v41 - 192);
  }

  _Unwind_Resume(a1);
}

void sub_27139D5C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60[0] = a2;
  v60[1] = a1;
  v48[0] = 0;
  v59 = 0;
  v47[0] = &unk_288131860;
  v47[1] = v48;
  v47[2] = v60;
  sub_27184A384(v47, v34);
  if (v46 == 1)
  {
    v22 = v58;
    if (v58 == 1)
    {
      *v12 = &unk_288131488;
      *&v12[8] = *&v48[8];
      *&v48[8] = 0;
      *&v48[16] = 0;
    }

    else
    {
      *v12 = *v48;
      v12[16] = 0;
      v21 = 0;
      if (v57 == 1)
      {
        v14 = 0;
        if (v50 == 1)
        {
          *&v12[16] = *&v48[16];
          v13 = v49;
          *&v48[24] = 0;
          v49 = 0;
          *&v48[16] = 0;
          v14 = 1;
        }

        LOBYTE(v15[0]) = 0;
        v20 = 0;
        if (v56 == 1)
        {
          v16 = v52;
          *v15 = v51;
          v51 = 0uLL;
          v17 = v53;
          *v18 = v54;
          v19 = v55;
          v52 = 0;
          v54 = 0uLL;
          v55 = 0;
          v20 = 1;
        }

        v21 = 1;
      }
    }

    goto LABEL_30;
  }

  v23 = *v34;
  LOBYTE(__p) = 0;
  v33 = 0;
  if (v45 == 1)
  {
    sub_27112F6CC(&__p, &v35);
    v33 = 1;
    *v12 = v23;
    v12[16] = 0;
    v14 = 0;
    if (v26 == 1)
    {
      *&v12[16] = __p;
      v13 = v25;
      v25 = 0;
      __p = 0uLL;
      v14 = 1;
      LOBYTE(v15[0]) = 0;
      v20 = 0;
      if ((v32 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v15[0]) = 0;
      v20 = 0;
      if ((v32 & 1) == 0)
      {
LABEL_7:
        v21 = 1;
        v22 = 0;
        if (!v26)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    v16 = v28;
    *v15 = v27;
    v27 = 0uLL;
    v17 = v29;
    *v18 = v30;
    v19 = v31;
    v28 = 0;
    v30 = 0uLL;
    v31 = 0;
    v20 = 1;
    v21 = 1;
    v22 = 0;
    if (v26)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v12 = *v34;
    v12[16] = 0;
    v21 = 0;
    v22 = 0;
  }

LABEL_20:
  if ((v46 & 1) == 0 && v45 == 1)
  {
    if (v44 == 1)
    {
      if (v43 < 0)
      {
        operator delete(v40);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38);
      }
    }

    if (v37 == 1 && SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }
  }

LABEL_30:
  if (v59 == 1)
  {
    if (v58 == 1)
    {
      (**v48)(v48);
    }

    else if (v57 == 1)
    {
      if (v56 == 1)
      {
        if (SHIBYTE(v55) < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51);
        }
      }

      if (v50 == 1 && SHIBYTE(v49) < 0)
      {
        operator delete(*&v48[16]);
      }
    }
  }

  v4 = v22;
  if (v22 == 1)
  {
    *a3 = &unk_288131488;
    *(a3 + 8) = *&v12[8];
    *&v12[8] = 0;
    *&v12[16] = 0;
    *(a3 + 120) = v4;
    goto LABEL_91;
  }

  if (*&v12[8] != &off_288132220)
  {
    sub_271847E00(v12, &v23);
    if (SBYTE7(__p) < 0)
    {
      sub_271127178(v34, v23, *(&v23 + 1));
    }

    else
    {
      *v34 = v23;
      *&v35 = __p;
    }

    BYTE8(v35) = 1;
    LOBYTE(v36) = 0;
    v41 = 0;
    v42 = 1;
    sub_27139F524(3u, v34, v48);
    *a3 = *v48;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v57 != 1)
    {
      *(a3 + 120) = 0;
      goto LABEL_65;
    }

    *(a3 + 40) = 0;
    v7 = v50;
    if (v50 == 1)
    {
      *(a3 + 16) = *&v48[16];
      *(a3 + 32) = v49;
      *&v48[24] = 0;
      v49 = 0;
      *&v48[16] = 0;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v8 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v56 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v8 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v56 & 1) == 0)
      {
LABEL_58:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v7)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }
    }

    v9 = v53;
    *(v8 + 16) = v52;
    *v8 = v51;
    v51 = 0uLL;
    *(a3 + 72) = v9;
    *(a3 + 80) = v54;
    *(a3 + 96) = v55;
    v52 = 0;
    v54 = 0uLL;
    v55 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v7)
    {
      goto LABEL_65;
    }

LABEL_63:
    if (SHIBYTE(v49) < 0)
    {
      operator delete(*&v48[16]);
    }

LABEL_65:
    if (v42 == 1)
    {
      if (v41 == 1)
      {
        if (SHIBYTE(v40) < 0)
        {
          operator delete(v39);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v36);
        }
      }

      if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
      {
        operator delete(v34[0]);
      }
    }

    if (SBYTE7(__p) < 0)
    {
      v10 = v23;
LABEL_90:
      operator delete(v10);
      goto LABEL_91;
    }

    goto LABEL_91;
  }

  LOBYTE(v34[0]) = 0;
  v42 = 0;
  if (v21 == 1)
  {
    sub_27112F6CC(v34, &v12[16]);
    v42 = 1;
  }

  sub_27139F524(v12[0], v34, v48);
  *a3 = *v48;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v57 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_81;
  }

  *(a3 + 40) = 0;
  v5 = v50;
  if (v50 == 1)
  {
    *(a3 + 16) = *&v48[16];
    *(a3 + 32) = v49;
    *&v48[24] = 0;
    v49 = 0;
    *&v48[16] = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v6 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v56 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_78:
    v11 = v53;
    *(v6 + 16) = v52;
    *v6 = v51;
    v51 = 0uLL;
    *(a3 + 72) = v11;
    *(a3 + 80) = v54;
    *(a3 + 96) = v55;
    v52 = 0;
    v54 = 0uLL;
    v55 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v5)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  *(a3 + 48) = 0;
  v6 = a3 + 48;
  *(a3 + 104) = 0;
  if (v56)
  {
    goto LABEL_78;
  }

LABEL_52:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v5)
  {
    goto LABEL_81;
  }

LABEL_79:
  if (SHIBYTE(v49) < 0)
  {
    operator delete(*&v48[16]);
  }

LABEL_81:
  if (v42 == 1)
  {
    if (v41 == 1)
    {
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v36);
      }
    }

    if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
    {
      v10 = v34[0];
      goto LABEL_90;
    }
  }

LABEL_91:
  if (v22 == 1)
  {
    (**v12)(v12);
  }

  else if (v21 == 1)
  {
    if (v20 == 1)
    {
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(v15[0]);
      }
    }

    if (v14 == 1 && SHIBYTE(v13) < 0)
    {
      operator delete(*&v12[16]);
    }
  }
}

void sub_27139DD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_27112D66C(&a41);
  sub_271159B04(&a9);
  _Unwind_Resume(a1);
}

void sub_27139DDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_271159B04(&a9);
    _Unwind_Resume(a1);
  }

  sub_271159B04(&a9);
  _Unwind_Resume(a1);
}

void sub_27139E114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_27139E158(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      v5 = v3;
      if (*(v3 - 16) == 1 && *(v3 - 41) < 0)
      {
        operator delete(*(v3 - 8));
        v3 -= 12;
        if (*(v5 - 72) == 1)
        {
LABEL_8:
          if (*(v5 - 73) < 0)
          {
            operator delete(*v3);
          }
        }
      }

      else
      {
        v3 -= 12;
        if (*(v5 - 72) == 1)
        {
          goto LABEL_8;
        }
      }

      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

void *sub_27139E20C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_271135560();
  }

  return result;
}

void sub_27139E2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711DC24C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27139E2F4(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t *, uint64_t))
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v10 = *(v9 + 23);
      if (v10 < 0)
      {
        v11 = *v9;
        v10 = v9[1];
      }

      else
      {
        v11 = v9;
      }

      a4(v23, v11, v10);
      v12 = *(a3 + 8);
      if (v12 >= *(a3 + 16))
      {
        sub_27139E498(a3, v23);
      }

      else
      {
        *v12 = 0;
        *(v12 + 24) = 0;
        if (v25 == 1)
        {
          v13 = *v23;
          *(v12 + 16) = v24;
          *v12 = v13;
          v23[1] = 0;
          v24 = 0;
          v23[0] = 0;
          *(v12 + 24) = 1;
        }

        *(v12 + 32) = 0;
        *(v12 + 80) = 0;
        if (v28 == 1)
        {
          _X0 = 0;
          _X1 = 0;
          v16 = __p;
          *(v12 + 48) = v27;
          *(v12 + 32) = v16;
          v27 = 0;
          __p = 0uLL;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          *(v12 + 64) = _X0;
          *(v12 + 72) = 0;
          *(v12 + 80) = 1;
        }

        v22 = v12 + 96;
      }

      *(a3 + 8) = v22;
      if (v28 == 1 && SHIBYTE(v27) < 0)
      {
        operator delete(__p);
      }

      if (v25 == 1 && SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }

      v9 += 3;
    }

    while (v9 != a2);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a3;
}

double sub_27139E498(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = (32 * ((*(a1 + 8) - *a1) >> 5));
  *(&v19 + 1) = 0;
  *v7 = 0;
  v7[24] = 0;
  if (*(a2 + 24) == 1)
  {
    *v7 = *a2;
    *(96 * v2 + 0x10) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(96 * v2 + 0x18) = 1;
  }

  *(96 * v2 + 0x20) = 0;
  *(96 * v2 + 0x50) = 0;
  if (*(a2 + 80) == 1)
  {
    _X0 = 0;
    _X1 = 0;
    *(96 * v2 + 0x30) = *(a2 + 48);
    *(96 * v2 + 0x20) = *(a2 + 32);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    *(96 * v2 + 0x40) = _X0;
    *(96 * v2 + 0x48) = 0;
    *(96 * v2 + 0x50) = 1;
  }

  *&v19 = 96 * v2 + 96;
  v15 = *(a1 + 8);
  v16 = &v7[*a1 - v15];
  sub_2711DC160(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  result = *&v19;
  *(a1 + 8) = v19;
  if (v17)
  {
    operator delete(v17);
    *&result = 96 * v2 + 96;
  }

  return result;
}

void sub_27139E648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2711DC24C(va);
  _Unwind_Resume(a1);
}

BOOL sub_27139E65C(uint64_t a1, void *a2, void *a3)
{
  if (**a2 != **a3 || *(*a2 + 8) != *(*a3 + 8))
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a3[1];
  v5 = *(v3 + 24);
  v6 = *(v4 + 24);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = *(v3 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v3 + 8);
    }

    v11 = *(v4 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = v4[1];
    }

    if (v9 != v11)
    {
      return 0;
    }

    if (v10 >= 0)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = *v3;
    }

    if (v12 < 0)
    {
      v4 = *v4;
    }

    v14 = a2;
    v15 = a3;
    v16 = memcmp(v13, v4, v9);
    a2 = v14;
    a3 = v15;
    if (v16)
    {
      return 0;
    }
  }

  v17 = a2[2];
  v18 = a3[2];
  v19 = *(v17 + 16);
  v20 = *(v18 + 16);
  if (v19 != v20 || v19 == 0)
  {
    if (v19 != v20)
    {
      return 0;
    }
  }

  else if (*v17 != *v18 || *(v17 + 8) != *(v18 + 8))
  {
    return 0;
  }

  v22 = a2[3];
  v23 = a3[3];
  v24 = *(v23 + 24);
  v25 = *(v22 + 24);
  result = v25 == v24;
  if (v25 == v24 && v25 != 0)
  {
    v27 = *(v22 + 23);
    if (v27 >= 0)
    {
      v28 = *(v22 + 23);
    }

    else
    {
      v28 = *(v22 + 8);
    }

    v29 = *(v23 + 23);
    v30 = v29;
    if (v29 < 0)
    {
      v29 = v23[1];
    }

    if (v28 == v29)
    {
      if (v27 >= 0)
      {
        v31 = a2[3];
      }

      else
      {
        v31 = *v22;
      }

      if (v30 >= 0)
      {
        v32 = v23;
      }

      else
      {
        v32 = *v23;
      }

      return memcmp(v31, v32, v28) == 0;
    }

    return 0;
  }

  return result;
}

double sub_27139E814@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1;
  v8 = 0;
  v7 = 0uLL;
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  sub_27139E900(v5, v4, &v7);
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_27139E900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_27139DEA8();
  }

  return a3;
}

void sub_27139E9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139EA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139EA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139EA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27139EA48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    (off_288131650[v2])(&v4, a1);
  }

  *(a1 + 16) = -1;
  return a1;
}

void **sub_27139EAA4(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void **sub_27139EAC4(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_27139EAE4(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  v9 = v4;
  v10 = "data of type ";
  v11 = v4;
  v12 = "data of type ";
  v13 = "data of type ";
  v6[0] = &v9;
  sub_2711EF0C8(v6);
  v6[0] = a2;
  v6[1] = a2 + 3;
  v9 = v4;
  v10 = "{";
  v11 = v4;
  v12 = "{";
  v13 = "{";
  if (v5 == -1)
  {
    goto LABEL_8;
  }

  v8 = &v9;
  (*(&off_288131670 + v5))(&v8, v4);
  LOBYTE(v9) = 1;
  v10 = v4;
  v11 = &v7;
  sub_2712B32E4(v6, &v9);
  v9 = v4;
  v10 = "}";
  v11 = v4;
  v12 = "}";
  v13 = "}";
  if (v5 == -1)
  {
LABEL_8:
    sub_2711308D4();
  }

  v8 = &v9;
  (*(&off_288131670 + v5))(&v8, v4);
  v9 = v4;
  v10 = " is not serializable";
  v11 = v4;
  v12 = " is not serializable";
  v13 = " is not serializable";
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v6[0] = &v9;
  (*(&off_288131688 + v5))(v6, v4);
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v9 = v6;
  result = (off_288131638[v5])(&v9, v4);
  if (v5 != -1)
  {
    return (off_288131620[v5])(&v9, v4);
  }

  return result;
}

void sub_27139ECA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139ECB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139ECC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139ECDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139ECF0(uint64_t a1, uint64_t a2)
{
  qword_28087B858 = 0;
  qword_28087B850 = 0;
  qword_28087B848 = &qword_28087B850;
  if (a2)
  {
    operator new();
  }
}

void sub_27139EF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2711B5360(va1);
  sub_27139EF64(va);
  sub_27139F038(qword_28087B850);
  _Unwind_Resume(a1);
}

uint64_t sub_27139EF64(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        v4 = v1[6];
        v5 = v1[5];
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            if (v6)
            {
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }
            }

            v4 -= 16;
          }

          while (v4 != v3);
          v5 = v1[5];
        }

        v1[6] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_27139F038(void *a1)
{
  if (a1)
  {
    sub_27139F038(*a1);
    sub_27139F038(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
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
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void sub_27139F114(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120) == 1)
  {
    v3 = *a2;
    v4 = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 120) = 1;
    return;
  }

  if (*(a2 + 8) != &off_288132220)
  {
    sub_271847E00(a2, &v12);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = v12;
    }

    v14 = 1;
    LOBYTE(v15) = 0;
    v19 = 0;
    v20 = 1;
    sub_27139F524(3u, &v13, &v30);
    *a1 = v30;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v40 == 1)
    {
      *(a1 + 40) = 0;
      v8 = v33;
      if (v33 == 1)
      {
        *(a1 + 16) = v31;
        *(a1 + 32) = v32;
        v32 = 0;
        v31 = 0uLL;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v9 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v39 & 1) == 0)
        {
LABEL_18:
          *(a1 + 112) = 1;
          *(a1 + 120) = 0;
          if (!v8)
          {
            goto LABEL_26;
          }

LABEL_24:
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31);
          }

          goto LABEL_26;
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v9 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v39 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v10 = v36;
      *(v9 + 16) = v35;
      *v9 = v34;
      v34 = 0uLL;
      *(a1 + 72) = v10;
      *(a1 + 80) = v37;
      *(a1 + 96) = v38;
      v35 = 0;
      v37 = 0uLL;
      v38 = 0;
      *(a1 + 104) = 1;
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(a1 + 120) = 0;
    }

LABEL_26:
    if (v20 == 1)
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

      if (v14 == 1 && SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    return;
  }

  v5 = *a2;
  LOBYTE(v21[0]) = 0;
  v29 = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(v21, (a2 + 16));
    v29 = 1;
  }

  sub_27139F524(v5, v21, &v30);
  *a1 = v30;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v40 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_41;
  }

  *(a1 + 40) = 0;
  v6 = v33;
  if (v33 != 1)
  {
    *(a1 + 48) = 0;
    v7 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v39 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_38:
    v11 = v36;
    *(v7 + 16) = v35;
    *v7 = v34;
    v34 = 0uLL;
    *(a1 + 72) = v11;
    *(a1 + 80) = v37;
    *(a1 + 96) = v38;
    v35 = 0;
    v37 = 0uLL;
    v38 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v6)
    {
      goto LABEL_41;
    }

LABEL_39:
    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    goto LABEL_41;
  }

  *(a1 + 16) = v31;
  *(a1 + 32) = v32;
  v32 = 0;
  v31 = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v7 = a1 + 48;
  *(a1 + 104) = 0;
  if (v39)
  {
    goto LABEL_38;
  }

LABEL_12:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v6)
  {
    goto LABEL_39;
  }

LABEL_41:
  if (v29 == 1)
  {
    if (v28 == 1)
    {
      if (v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 < 0)
      {
        operator delete(v24);
      }
    }

    if (v23 == 1 && v22 < 0)
    {
      operator delete(v21[0]);
    }
  }
}

void sub_27139F4E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139F524(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27112F6CC(v8, a2);
    v16 = 1;
  }

  sub_27139F710(&v17, a1, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

uint64_t sub_27139F710(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result;
  v4 = a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a3 + 96) != 1)
  {
    *result = a2;
    *(result + 8) = &off_288132220;
    *(result + 16) = 0;
    *(result + 112) = 0;
    return result;
  }

  sub_27112F6CC(v6, a3);
  v15 = 1;
  *v3 = v4;
  *(v3 + 8) = &off_288132220;
  *(v3 + 16) = 0;
  *(v3 + 112) = 0;
  *(v3 + 40) = 0;
  if (v8 == 1)
  {
    *(v3 + 16) = *v6;
    *(v3 + 32) = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    *(v3 + 40) = 1;
  }

  *(v3 + 48) = 0;
  *(v3 + 104) = 0;
  if (v14)
  {
    v5 = v11;
    *(v3 + 64) = v10;
    *(v3 + 48) = *v9;
    v9[0] = 0;
    v9[1] = 0;
    *(v3 + 72) = v5;
    *(v3 + 80) = *__p;
    *(v3 + 96) = v13;
    __p[1] = 0;
    v13 = 0;
    v10 = 0;
    __p[0] = 0;
    *(v3 + 104) = 1;
    *(v3 + 112) = 1;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
LABEL_7:
        if (v8 != 1)
        {
          return v3;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v9[0]);
    if (v8 != 1)
    {
      return v3;
    }
  }

  else
  {
    *(v3 + 112) = 1;
    if (v8 != 1)
    {
      return v3;
    }
  }

LABEL_14:
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    return v3;
  }

  operator delete(v6[0]);
  return v3;
}

void sub_27139F8A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27139F8D0(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  sub_27139A710(v17, **(a1 + 16), *(*(a1 + 16) + 8));
  sub_2711218C8(&v8);
  v7[1] = 1;
  v7[2] = &v9;
  v7[0] = &unk_288134F58;
  LODWORD(v16) = 2;
  std::ostream::write();
  sub_27139FE54(v7, v17);
  if ((v15 & 0x10) != 0)
  {
    v3 = v14;
    if (v14 < v13)
    {
      v14 = v13;
      v3 = v13;
    }

    v4 = v12;
    v2 = v3 - v12;
    if (v3 - v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v15 & 8) == 0)
    {
      v2 = 0;
      v6 = 0;
      goto LABEL_12;
    }

    v4 = v10;
    v2 = v11 - v10;
    if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_271120DA8();
    }
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  v6 = v2;
  if (v2)
  {
    memmove(&__dst, v4, v2);
  }

LABEL_12:
  *(&__dst + v2) = 0;
  sub_27139FFEC();
}

void sub_27139FCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139FD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_271123F00(va);
  sub_27139FD58(v12 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_27139FD58(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
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
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288131650[v6])(&v8, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_27139FE54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::ostream::write();
  if (*(a2 + 31) < 0)
  {
    v5 = *(a2 + 16);
  }

  v6 = *(a1 + 16);
  std::ostream::write();
  v7 = *(a1 + 16);
  if (*(a2 + 31) < 0)
  {
    v8 = *(a2 + 8);
  }

  std::ostream::write();
  v9 = *(a1 + 16);
  std::ostream::write();
  if (*(a2 + 56) > 1u)
  {
    sub_2711308D4();
  }

  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = v10;
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v10 = v12;
    }
  }

  v15 = v10;
  v16 = (*(*v10 + 16))(v10);
  v13 = *(a1 + 16);
  std::ostream::write();
  return (*(*v15 + 32))(v15, a1, v16);
}

void sub_2713A01AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713A01F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881316F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A024C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void *sub_2713A0264(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2713A0264;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2713A0264;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_288131730;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000027188EB71)
      {
        if (((v5 & 0x800000027188EB71 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000027188EB71))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000027188EB71 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_27188EBC4)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2713A0430(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  sub_27139A608(v7, *v1);
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_2717252D8(&v6);
}

void sub_2713A0738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713A0788(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    LODWORD(v38) = 2;
    v5 = *(a1 + 16);
    std::istream::read();
    v38 = 0;
    v6 = *(a1 + 16);
    std::istream::read();
    v7 = *(a2 + 31);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v7 = *(a2 + 16);
      if (v7 >= v38)
      {
        v8 = *(a2 + 8);
        *(a2 + 16) = v38;
        goto LABEL_13;
      }
    }

    else if (v38 <= v7)
    {
      *(a2 + 31) = v38;
      v8 = (a2 + 8);
LABEL_13:
      *v8 = 0;
      goto LABEL_14;
    }

    std::string::append((a2 + 8), v38 - v7, 0);
LABEL_14:
    v13 = *(a1 + 16);
    if (*(a2 + 31) < 0)
    {
      v14 = *(a2 + 8);
    }

    std::istream::read();
    v15 = *(a1 + 16);
    std::istream::read();
    sub_27139ABFC(a2);
    if (*(a2 + 56))
    {
      sub_2711308D4();
    }

    v16 = *(a2 + 40);
    v38 = &unk_28810A568;
    v39.__r_.__value_.__r.__words[0] = v16;
    LODWORD(v31) = 2;
    v17 = *(a1 + 16);
    std::istream::read();
    (*(*v39.__r_.__value_.__l.__data_ + 40))(v39.__r_.__value_.__r.__words[0], a1, 2);
    goto LABEL_47;
  }

  sub_27139A124(&v38, (a2 + 64));
  LODWORD(v31) = 2;
  v9 = *(a1 + 16);
  std::istream::read();
  v31 = 0;
  v10 = *(a1 + 16);
  std::istream::read();
  size = SHIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v39.__r_.__value_.__l.__size_;
    if (v39.__r_.__value_.__l.__size_ >= v31)
    {
      v12 = v39.__r_.__value_.__r.__words[0];
      v39.__r_.__value_.__l.__size_ = v31;
      goto LABEL_19;
    }
  }

  else if (v31 <= SHIBYTE(v39.__r_.__value_.__r.__words[2]))
  {
    *(&v39.__r_.__value_.__s + 23) = v31;
    v12 = &v39;
LABEL_19:
    v31[v12] = 0;
    goto LABEL_20;
  }

  std::string::append(&v39, &v31[-size], 0);
LABEL_20:
  v18 = *(a1 + 16);
  std::istream::read();
  v19 = *(a1 + 16);
  std::istream::read();
  sub_27139A288(&v38);
  if (v41)
  {
    sub_2711308D4();
  }

  v31 = &unk_28810A5B0;
  v32 = v40;
  v30 = 1;
  v20 = *(a1 + 16);
  std::istream::read();
  (*(*v32 + 40))(v32, a1, 1);
  sub_2713A0DC8(&v31, &v38);
  sub_2713A0F0C(a2, &v31);
  v21 = __p;
  if (__p)
  {
    v22 = v37;
    v23 = __p;
    if (v37 != __p)
    {
      do
      {
        v24 = *(v22 - 1);
        if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }

        v22 -= 16;
      }

      while (v22 != v21);
      v23 = __p;
    }

    v37 = v21;
    operator delete(v23);
  }

  if (v35 != -1)
  {
    (off_288131650[v35])(&v30, &v34);
  }

  v35 = -1;
  if (v33 < 0)
  {
    operator delete(v32);
  }

  v25 = v42;
  if (v42)
  {
    v26 = v43;
    v27 = v42;
    if (v43 != v42)
    {
      do
      {
        v28 = *(v26 - 1);
        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v26 -= 16;
      }

      while (v26 != v25);
      v27 = v42;
    }

    v43 = v25;
    operator delete(v27);
  }

  if (v41 != -1)
  {
    (off_288131650[v41])(&v31, &v40);
  }

  v41 = -1;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

LABEL_47:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_2713A0C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713A0C88(uint64_t a1, uint64_t a2)
{
  *(&v10.__r_.__value_.__s + 23) = 0;
  v10.__r_.__value_.__s.__data_[0] = 0;
  v11 = 0;
  __n.__r_.__value_.__r.__words[0] = 0;
  v4 = *(a1 + 16);
  std::istream::read();
  *(&v10.__r_.__value_.__s + 23) = 0;
  v10.__r_.__value_.__s.__data_[0] = 0;
  v5 = *(a1 + 16);
  std::istream::read();
  v6 = *(a1 + 16);
  std::istream::read();
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&__n, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __n = v10;
  }

  v7 = v11;
  v9 = v11;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v7 = v9;
  }

  *a2 = __n;
  *(a2 + 24) = v7;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2713A0DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713A0DC8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_271127178(__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 8);
    v9 = *(a2 + 24);
  }

  v10 = *(a2 + 32);
  v6[0] = 0;
  v7 = -1;
  v4 = *(a2 + 56);
  if (v4 != -1)
  {
    v11 = v6;
    (off_288131660[v4])(&v11, a2 + 40);
    v7 = v4;
  }

  sub_27139A974(a1, __p, v6, (a2 + 64));
  if (v7 != -1)
  {
    (off_288131650[v7])(&v11, v6);
  }

  v7 = -1;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_2713A0ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_27139EA48(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713A0F0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (v5 == -1)
  {
    if (v6 == -1)
    {
      goto LABEL_8;
    }
  }

  else if (v6 == -1)
  {
    (off_288131650[v5])(&v14, a1 + 40);
    *(a1 + 56) = -1;
    goto LABEL_8;
  }

  v13 = a1 + 40;
  (off_288131780[v6])(&v13);
LABEL_8:
  v7 = (a1 + 64);
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(a1 + 72);
    v10 = *(a1 + 64);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v9 -= 16;
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 72) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return a1;
}

void sub_2713A1090(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = a3;
    (off_288131650[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    *(v3 + 16) = 0;
    return;
  }

  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = *(a2 + 8);
  *a2 = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_2713A117C(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v7 = a3;
    (off_288131650[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    *(v3 + 16) = 1;
    return;
  }

  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = *(a2 + 8);
  *a2 = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t sub_2713A1270(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
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
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288131650[v6])(&v8, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_2713A136C(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    if (*(result + 120) == 1)
    {
      v1 = *(result + 16);
      if (v1)
      {
        if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = result;
          (v1->__on_zero_shared)(v1);
          std::__shared_weak_count::__release_weak(v1);
          return v5;
        }
      }
    }

    else if (*(result + 112) == 1)
    {
      if (*(result + 104) == 1)
      {
        if (*(result + 103) < 0)
        {
          v2 = result;
          operator delete(*(result + 80));
          result = v2;
        }

        if (*(result + 71) < 0)
        {
          v3 = result;
          operator delete(*(result + 48));
          result = v3;
        }
      }

      if (*(result + 40) == 1 && *(result + 39) < 0)
      {
        v4 = result;
        operator delete(*(result + 16));
        return v4;
      }
    }
  }

  return result;
}

void sub_2713A1498(uint64_t a1)
{
  v17[18] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  sub_2713973EC(v17, **(a1 + 16), *(*(a1 + 16) + 8));
  sub_2711218C8(&v8);
  v7[1] = 1;
  v7[2] = &v9;
  v7[0] = &unk_288134F58;
  LODWORD(v16) = 2;
  std::ostream::write();
  sub_2713A1978(v7, v17, v16);
  if ((v15 & 0x10) != 0)
  {
    v3 = v14;
    if (v14 < v13)
    {
      v14 = v13;
      v3 = v13;
    }

    v4 = v12;
    v2 = v3 - v12;
    if (v3 - v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v15 & 8) == 0)
    {
      v2 = 0;
      v6 = 0;
      goto LABEL_12;
    }

    v4 = v10;
    v2 = v11 - v10;
    if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_271120DA8();
    }
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  v6 = v2;
  if (v2)
  {
    memmove(&__dst, v4, v2);
  }

LABEL_12:
  *(&__dst + v2) = 0;
  sub_27139FFEC();
}

void sub_2713A17C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271123F00(&a23);
    sub_2713A1844(v23 - 216);
    _Unwind_Resume(a1);
  }

  sub_271123F00(&a23);
  sub_2713A1844(v23 - 216);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A1844(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 88);
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
      v4 = *(a1 + 88);
    }

    *(a1 + 96) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 80);
  if (v6 != -1)
  {
    (off_288131650[v6])(&v8, a1 + 64);
  }

  *(a1 + 80) = -1;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_19:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_19;
  }

  return a1;
}

uint64_t sub_2713A1978(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (*(a2 + 23) < 0)
  {
    v6 = a2[1];
  }

  v7 = *(a1 + 16);
  std::ostream::write();
  v8 = *(a1 + 16);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  std::ostream::write();
  v10 = *(a1 + 16);
  std::ostream::write();
  result = sub_27139FE54(a1, (a2 + 3));
  if (a3 >= 2)
  {
    if (*(a2 + 136) == 1)
    {
      v12 = *(a1 + 16);
      std::ostream::write();
      if (*(a2 + 135) < 0)
      {
        v13 = a2[15];
      }

      v14 = *(a1 + 16);
      std::ostream::write();
      v15 = *(a1 + 16);
      v16 = *(a2 + 135);
      v17 = a2[14];
    }

    else
    {
      v18 = *(a1 + 16);
    }

    return std::ostream::write();
  }

  return result;
}

void sub_2713A1AB4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  memset(&v7[3], 0, 24);
  sub_27139A608(v8, v3);
  v8[88] = 0;
  v8[112] = 0;
  v4 = *(v1 + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  sub_2717252D8(v7);
}

void sub_2713A1D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_2717254C8(&a17);
  sub_2713A1844(&__p);
  _Unwind_Resume(a1);
}

void sub_2713A1DBC(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = *(a1 + 16);
  std::istream::read();
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    v8 = a2[1];
    v7 = *a2;
    a2[1] = 0;
  }

  else
  {
    *(a2 + 23) = 0;
    v7 = a2;
  }

  *v7 = 0;
  v9 = *(a1 + 16);
  if (*(a2 + 23) < 0)
  {
    v10 = *a2;
  }

  std::istream::read();
  v11 = *(a1 + 16);
  std::istream::read();
  sub_2713A0788(a1, (a2 + 3), 2u);
  if (a3 >= 2)
  {
    v12 = *(a1 + 16);
    std::istream::read();
    if (*(a2 + 136))
    {
      if (*(a2 + 135) < 0)
      {
        operator delete(a2[14]);
      }

      *(a2 + 136) = 0;
    }
  }
}

uint64_t sub_2713A1F88(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    if (*(result + 120) == 1)
    {
      v1 = *(result + 32);
      if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }

      v3 = *(result + 8);
      if (v3)
      {
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = result;
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
          return v7;
        }
      }
    }

    else if (*(result + 112) == 1)
    {
      if (*(result + 104) == 1)
      {
        if (*(result + 103) < 0)
        {
          v4 = result;
          operator delete(*(result + 80));
          result = v4;
        }

        if (*(result + 71) < 0)
        {
          v5 = result;
          operator delete(*(result + 48));
          result = v5;
        }
      }

      if (*(result + 40) == 1 && *(result + 39) < 0)
      {
        v6 = result;
        operator delete(*(result + 16));
        return v6;
      }
    }
  }

  return result;
}

void sub_2713A2104(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  sub_271397988(&v19, **(a1 + 16), *(*(a1 + 16) + 8));
  sub_2711218C8(&v10);
  v9[0] = &unk_288134F58;
  v9[1] = 1;
  v9[2] = &v11;
  LODWORD(v18) = 1;
  std::ostream::write();
  *&v18 = 0x8E38E38E38E38E39 * ((v21 - v20) >> 4);
  std::ostream::write();
  v2 = v20;
  for (i = v21; v2 != i; v2 += 18)
  {
    LODWORD(__dst) = 2;
    std::ostream::write();
    sub_2713A1978(v9, v2, 2u);
  }

  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v15)
    {
      v16 = v15;
      v5 = v15;
    }

    v6 = v14;
    v4 = v5 - v14;
    if (v5 - v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      v8 = 0;
      goto LABEL_14;
    }

    v6 = v12;
    v4 = v13 - v12;
    if ((v13 - v12) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_271120DA8();
    }
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memmove(&__dst, v6, v4);
  }

LABEL_14:
  *(&__dst + v4) = 0;
  sub_27139FFEC();
}

void sub_2713A2544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271123F00(&a23);
    sub_2713A25C4((v23 - 128));
    _Unwind_Resume(a1);
  }

  sub_271123F00(&a23);
  sub_2713A25C4((v23 - 128));
  _Unwind_Resume(a1);
}

void *sub_2713A25C4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_2713A1844(v3 - 144);
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    v6 = a1[2];
    v7 = a1[1];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 8);
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v6 -= 16;
      }

      while (v6 != v5);
      v7 = a1[1];
    }

    a1[2] = v5;
    operator delete(v7);
  }

  return a1;
}

void sub_2713A26C8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *v2;
  memset(v10, 0, 24);
  v4 = *v3;
  v5 = v3[1];
  v10[6] = v10;
  LOBYTE(v11) = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  memset(&v10[3], 0, 24);
  v6 = *(v2 + 8);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  sub_2717252D8(&v9);
}

void sub_2713A2D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_2713A1844(&__p);
  sub_2717254C8(&a12);
  sub_2713A25C4(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A2E48(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  sub_2713A2F3C(a1 + 24, a2 + 24);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178((a1 + 112), *(a2 + 14), *(a2 + 15));
    }

    else
    {
      v5 = a2[7];
      *(a1 + 128) = *(a2 + 16);
      *(a1 + 112) = v5;
    }

    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_2713A2EF4(_Unwind_Exception *a1)
{
  if (*(v1 + 136) == 1 && *(v1 + 135) < 0)
  {
    operator delete(*v2);
  }

  sub_27139FD58(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713A2F3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_271127178((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v5;
  *(a1 + 56) = -1;
  v6 = *(a2 + 56);
  if (v6 != -1)
  {
    v10 = a1 + 40;
    (off_288131660[v6])(&v10, a2 + 40);
    *(a1 + 56) = v6;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v10 = a1 + 64;
  v11 = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_2713A3074(_Unwind_Exception *a1)
{
  sub_27139EA48(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713A30B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_2713A1844(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2713A3104(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    if (*(result + 120) == 1)
    {
      v1 = result;
      (**result)();
      return v1;
    }

    if (*(result + 112) == 1)
    {
      if (*(result + 104) == 1)
      {
        if (*(result + 103) < 0)
        {
          v2 = result;
          operator delete(*(result + 80));
          result = v2;
        }

        if (*(result + 71) < 0)
        {
          v3 = result;
          operator delete(*(result + 48));
          result = v3;
        }
      }

      if (*(result + 40) == 1 && *(result + 39) < 0)
      {
        v1 = result;
        operator delete(*(result + 16));
        return v1;
      }
    }
  }

  return result;
}

uint64_t sub_2713A31E0(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      v3 = *(a1 + 152);
      v4 = *(a1 + 144);
      if (v3 != v2)
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
        v4 = *(a1 + 144);
      }

      *(a1 + 152) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if (*(a1 + 104) != 1)
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 104) != 1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

LABEL_16:
  if (*(a1 + 48) != 1 || (*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 24));
  return a1;
}

uint64_t sub_2713A32D8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_2881318A0[v2])(&v4, a1 + 32);
  }

  *(a1 + 96) = -1;
  return a1;
}

uint64_t sub_2713A3334@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = (a2 + 16);
  *(a2 + 40) = 0;
  if (*(result + 48) == 1)
  {
    if (*(result + 47) < 0)
    {
      result = sub_271127178(v5, *(result + 24), *(result + 32));
    }

    else
    {
      *v5 = *(result + 24);
      *(a2 + 32) = *(result + 40);
    }

    *(a2 + 40) = 1;
  }

  if (*(v2 + 72) == 1)
  {
    v6 = *(v2 + 64);
    *(a2 + 48) = *(v2 + 56);
    *(a2 + 56) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a2 + 48) = 0;
  }

  *(a2 + 72) = 0;
  *(a2 + 64) = v7;
  *(a2 + 96) = 0;
  if (*(v2 + 104) == 1)
  {
    if (*(v2 + 103) < 0)
    {
      result = sub_271127178((a2 + 72), *(v2 + 80), *(v2 + 88));
    }

    else
    {
      *(a2 + 72) = *(v2 + 80);
      *(a2 + 88) = *(v2 + 96);
    }

    *(a2 + 96) = 1;
  }

  if (*(v2 + 136))
  {
    if (*(v2 + 135) < 0)
    {
      result = sub_271127178(v14, *(v2 + 112), *(v2 + 120));
    }

    else
    {
      *v14 = *(v2 + 112);
      *&v14[16] = *(v2 + 128);
    }

    *&v15[7] = *&v14[15];
    *v15 = *&v14[8];
    v11 = v14[23];
    v12 = *&v14[8];
    *(a2 + 112) = *v14;
    *(a2 + 120) = v12;
    *(a2 + 127) = *&v15[7];
    *(a2 + 135) = v11;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    if (*(v2 + 168) != 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a2 + 112) = 0;
    *(a2 + 160) = 0;
    if (*(v2 + 168) != 1)
    {
LABEL_21:
      v10 = 0;
      *(a2 + 176) = 0;
      goto LABEL_22;
    }
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 152) - *(v2 + 144)) >> 3);
  memset(v14, 0, sizeof(v14));
  sub_27139E20C(v14, v8);
  result = sub_27139E2F4(*(v2 + 144), *(v2 + 152), v14, sub_2714FB29C);
  v9 = *&v14[16];
  *(a2 + 176) = *v14;
  *(a2 + 192) = v9;
  v10 = 1;
LABEL_22:
  *(a2 + 200) = v10;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2713A3550(_Unwind_Exception *exception_object)
{
  if (v1[96] == 1 && v1[95] < 0)
  {
    operator delete(*v3);
  }

  if (v1[40] == 1 && v1[39] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2713A35D0(void *a1, uint64_t a2)
{
  *a1 = &unk_28810BD40;
  a1[1] = &unk_28810BDB8;
  sub_2713B2524((a1 + 2), (a2 + 80));
  v11[0] = &unk_28810E7B8;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a2 + 56);
    v7 = *(a2 + 64);
    v8 = *(a2 + 68);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 64);
    v8 = *(a2 + 68);
  }

  v11[1] = v4;
  v12 = v5;
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = v6;
  v16 = v7;
  v17 = v8;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_2715F4CDC((a1 + 24), v11, 0);
  v9 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_2713A3778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271229D10(va);
  sub_2713A31E0(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_2713A3794(uint64_t a1)
{
  *a1 = &unk_28810BD40;
  *(a1 + 8) = &unk_28810BDB8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v1 = &unk_28810F9B8;
  sub_2713BE9C4();
}

void sub_2713A38AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2712B8A00(&a9);
  sub_2713A31E0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A38DC(uint64_t a1)
{
  *a1 = &unk_28810BD40;
  *(a1 + 8) = &unk_28810BDB8;
  v2 = *(a1 + 288);
  if (v2 != -1)
  {
    (off_2881318A0[v2])(&v8, a1 + 224);
  }

  *(a1 + 288) = -1;
  if (*(a1 + 184) == 1)
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      v4 = *(a1 + 168);
      v5 = *(a1 + 160);
      if (v4 != v3)
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
        v5 = *(a1 + 160);
      }

      *(a1 + 168) = v3;
      operator delete(v5);
    }
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if (*(a1 + 120) != 1)
    {
      goto LABEL_18;
    }
  }

  else if (*(a1 + 120) != 1)
  {
    goto LABEL_18;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

LABEL_18:
  if (*(a1 + 64) != 1 || (*(a1 + 63) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 40));
  return a1;
}

void sub_2713A3A58(uint64_t a1)
{
  sub_2713A38DC(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A3A90(uint64_t a1)
{
  sub_2713A38DC(a1 - 8);

  JUMPOUT(0x2743BF050);
}

void sub_2713A3ADC(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v6)
  {
    v7 = v6;
    if (**(v6 + 5) <= 1u)
    {
      v8 = v6[88];
      *(v6 + 9) = "info";
      *(v6 + 10) = 4;
      if ((v8 & 1) == 0)
      {
        v6[88] = 1;
      }
    }

    sub_27182791C((v6 + 48), v6 + 5);
    v9 = sub_2718289B0(v7);
    *(v7 + 40) = v9;
    if (*(v7 + 88))
    {
      *(v7 + 88) = 0;
    }

    if (*v9 < 2u && ((*(v7 + 72) = "version", *(v7 + 80) = 7, *(v7 + 88) = 1, v10 = *(v7 + 72), v11 = *v10, v12 = *(v10 + 3), v11 == *"version") ? (v13 = v12 == *"sion") : (v13 = 0), v13))
    {
      *(v7 + 96) = 6;
      *(v7 + 100) = 1;
      *(v7 + 88) = 0;
    }

    else
    {
      LOBYTE(__src) = 6;
      v56 = 6;
      v14 = sub_2718289B0(v7);
      v15 = *v14;
      *v14 = 6;
      LOBYTE(__src) = v15;
      v16 = v14[1];
      v14[1] = v56;
      v56 = v16;
      sub_2715CC40C(&v56, v15);
    }

    sub_2713B29CC(v7, a2 + 16);
  }

  v17 = *v4;
  v18 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v18)
  {
    v19 = v18;
    v20 = v18[3];
    if (*(v20 + 40) == 1)
    {
      __src = (v20 + 16);
      sub_2718460EC(&__src, 6u);
    }

    else
    {
      sub_27184636C(&__src, (v20 + 8));
    }

    sub_271840ADC(*(v19 + 24));
    sub_2713B5730(v19, a2 + 16, 6u);
    v33 = *(v19 + 24);
    v34 = *(v33[11] - 8);
    sub_2718404E0(v33 + 6, v33[2] - v34 - 9);
    v35 = v33[6];
    if (v35)
    {
      memmove((v33[3] + v34), v33[7], v35);
    }

    v33[6] = 0;
    v36 = v33[10];
    v37 = v33[11] - 8;
    v33[11] = v37;
    if (v36 == v37)
    {
      v38 = *v33;
      v40 = v33[2];
      v39 = v33[3];
      std::ostream::write();
      if (*(v33 + 40) == 1)
      {
        free(v33[3]);
        *(v33 + 40) = 0;
      }
    }

    sub_2713B61C4(v19, a2 + 192);
  }

  else
  {
    v21 = *v4;
    v22 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v22)
    {
      v23 = v22;
      if (**(v22 + 5) <= 1u)
      {
        v24 = v22[88];
        *(v22 + 9) = "info";
        *(v22 + 10) = 4;
        if ((v24 & 1) == 0)
        {
          v22[88] = 1;
        }
      }

      sub_2715DF0F0((v22 + 48), v22 + 5);
      v25 = sub_27182815C(v23);
      *(v23 + 40) = v25;
      if (*(v23 + 88))
      {
        *(v23 + 88) = 0;
      }

      if (*v25 < 2u && ((*(v23 + 72) = "version", *(v23 + 80) = 7, *(v23 + 88) = 1, v26 = *(v23 + 72), v27 = *v26, v28 = *(v26 + 3), v27 == *"version") ? (v29 = v28 == *"sion") : (v29 = 0), v29))
      {
        *(v23 + 96) = 6;
        *(v23 + 100) = 1;
        *(v23 + 88) = 0;
      }

      else
      {
        LOBYTE(__src) = 6;
        v56 = 6;
        v30 = sub_27182815C(v23);
        v31 = *v30;
        *v30 = 6;
        LOBYTE(__src) = v31;
        v32 = v30[1];
        v30[1] = v56;
        v56 = v32;
        sub_2715CA870(&v56, v31);
      }

      sub_2713B6988(v23, a2 + 16);
    }

    v41 = *v4;
    v42 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v42)
    {
      v43 = v42;
      if (v42[5])
      {
        v44 = v42[3];
        LOBYTE(__src) = *(v43 + 32);
        sub_271120E64(v44, &__src, 1);
      }

      MEMORY[0x2743BE7F0](*(v43 + 24), 6);
      ++*(v43 + 40);
      sub_2713B8244(v43, a2 + 16, 6u);
      v45 = *(v43 + 34);
      if (*(v43 + 40))
      {
        v46 = *(v43 + 24);
        LOBYTE(__src) = *(v43 + 32);
        sub_271120E64(v46, &__src, 1);
      }

      v47 = *(v43 + 24);
      LOBYTE(__src) = v45;
      sub_271120E64(v47, &__src, 1);
      ++*(v43 + 40);
      sub_2713B891C(v43, a2 + 192);
    }

    else
    {
      v48 = *v4;
      v49 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      if (v49)
      {
        LODWORD(__src) = 6;
        v50 = v49;
        sub_27173318C(v49 + 24, *(v49 + 4), &__src, &__src + 4, 4uLL);
        v51 = __src;
        sub_2717312C0(v50);
        sub_2713B93E0(v50, a2 + 16, v51);
        v52 = *(v50[7] - 8) + v50[3];
        *(v52 + 10) = v50[4] - v52 - 18;
        v50[7] -= 8;
        sub_2713B8FF0(v50, a2 + 192);
      }

      else
      {
        v53 = a1[2];
        LODWORD(__src) = 6;
        (*(v4 + 13))(a1, &__src);
        v54 = __src;
        if (v53 < 1)
        {
          sub_2713B9F84(a1, a2 + 16, __src);
        }

        else
        {
          if (v53 == 2)
          {
            LODWORD(__src) = 3;
            (*(*a1 + 104))(a1, &__src);
          }

          (*(*a1 + 16))(a1);
          sub_2713B9F84(a1, a2 + 16, v54);
          (*(*a1 + 24))(a1);
        }

        sub_2713B9D14(a1, a2 + 192);
      }
    }
  }
}

void sub_2713A420C(char **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v6)
  {
    v7 = v6[104];
    *(v6 + 11) = "info";
    *(v6 + 12) = 4;
    if ((v7 & 1) == 0)
    {
      v6[104] = 1;
    }

    sub_2713BB450(v6, a2 + 16);
  }

  v8 = *v4;
  v9 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v9)
  {
    LODWORD(__p[0]) = 6;
    v10 = v9;
    sub_27183FB7C(v9[6], __p);
    sub_2713BF6F4(__p, v10, a2 + 16, __p[0]);
    LODWORD(__p[0]) = 2;
    sub_27183FB7C(*(v10 + 48), __p);
    sub_2713C0350(v10, (a2 + 192), __p[0]);
  }

  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v12)
  {
    v13 = v12[104];
    *(v12 + 11) = "info";
    *(v12 + 12) = 4;
    if ((v13 & 1) == 0)
    {
      v12[104] = 1;
    }

    sub_2713C0E9C(v12, a2 + 16);
  }

  v14 = *v4;
  v15 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (!v15)
  {
    v19 = *v4;
    v20 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
    if (v20)
    {
      v21 = v20;
      sub_2713C49D0(__p, v20, a2 + 16);
      sub_2713C5500(v21, (a2 + 192));
    }

    sub_2713C8FB8(a2, a1);
  }

  v16 = v15;
  LODWORD(__p[0]) = 6;
  sub_27183A9AC(v15, __p);
  if (LODWORD(__p[0]) >= 6)
  {
    v17 = 6;
  }

  else
  {
    v17 = __p[0];
  }

  if (LODWORD(__p[0]) <= 2)
  {
    sub_2713C30AC(__p, v16, a2 + 16, v17);
LABEL_33:
    LODWORD(__p[0]) = 2;
    sub_27183A9AC(v16, __p);
    if (LODWORD(__p[0]) > 1)
    {
      sub_2713C43FC(v16, (a2 + 192));
    }

    sub_2713C3F40();
  }

  sub_2713C32B8(v16, a2 + 16, v17);
  while (1)
  {
    if ((*(v16 + 131) & 1) != 0 || (*(*(v16 + 16) + *(**(v16 + 16) - 24) + 32) & 2) != 0)
    {
      goto LABEL_33;
    }

    sub_27183D78C(v16, __p);
    if (v23 < 0)
    {
      if (__p[1] == 1 && *(v16 + 72) == *__p[0])
      {
LABEL_26:
        v18 = 0;
        if (v23 < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_17;
      }
    }

    else if (v23 == 1 && *(v16 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_26;
    }

    v18 = 1;
    if (v23 < 0)
    {
LABEL_29:
      operator delete(__p[0]);
    }

LABEL_17:
    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }
  }
}

void sub_2713A46C4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_2715F51B0(a1 + 192, v2);
  sub_2713A3334(a1 + 16, v3);
  sub_2713C8E9C();
}

void sub_2713A4884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271134CBC(v2 + 16);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

void sub_2713A48A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712B8A00(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A48C0(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D580, 8);
  if (result)
  {
    v5 = result;
    v7[0] = a1 + 24;
    v7[1] = a1 + 40;
    v7[2] = a1 + 72;
    v7[3] = a1 + 96;
    v7[4] = a1 + 128;
    v7[5] = a1 + 160;
    v6[0] = result + 24;
    v6[1] = result + 40;
    v6[2] = result + 72;
    v6[3] = result + 96;
    v6[4] = result + 128;
    v6[5] = result + 160;
    result = sub_271399AF0(v7, v6);
    if (result)
    {
      return sub_2715F56DC((a1 + 192), (v5 + 192));
    }
  }

  return result;
}

uint64_t sub_2713A499C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D580, 8);
  if (result)
  {
    v5 = result;
    v7[0] = a1 + 16;
    v7[1] = a1 + 32;
    v7[2] = a1 + 64;
    v7[3] = a1 + 88;
    v7[4] = a1 + 120;
    v7[5] = a1 + 152;
    v6[0] = result + 24;
    v6[1] = result + 40;
    v6[2] = result + 72;
    v6[3] = result + 96;
    v6[4] = result + 128;
    v6[5] = result + 160;
    result = sub_271399AF0(v7, v6);
    if (result)
    {
      return sub_2715F56DC((a1 + 184), (v5 + 192));
    }
  }

  return result;
}

uint64_t sub_2713A4AB8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28810AD28;
  *(a1 + 8) = &unk_28810ADA0;
  sub_2713B2524(a1 + 16, (a2 + 32));
  sub_2717221A8(a1 + 192, *(a2 + 16));
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  v4 = *(a2 + 16);
  if (*(v4 + 408) == 1)
  {
    *(a1 + 584) = sub_271127424(a1 + 576, v4 + 384);
  }

  return a1;
}

void sub_2713A4B60(_Unwind_Exception *a1)
{
  sub_27137F4D0((v1 + 576));
  sub_2713AE52C((v1 + 192));
  sub_2713A31E0(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_2713A4B98(uint64_t a1)
{
  *a1 = &unk_28810AD28;
  *(a1 + 8) = &unk_28810ADA0;
  v2 = *(a1 + 576);
  if (v2)
  {
    v3 = *(a1 + 584);
    v4 = *(a1 + 576);
    if (v3 != v2)
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
      v4 = *(a1 + 576);
    }

    *(a1 + 584) = v2;
    operator delete(v4);
  }

  sub_2713AE52C((a1 + 192));
  if (*(a1 + 184) == 1)
  {
    v6 = *(a1 + 160);
    if (v6)
    {
      v7 = *(a1 + 168);
      v8 = *(a1 + 160);
      if (v7 != v6)
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
        v8 = *(a1 + 160);
      }

      *(a1 + 168) = v6;
      operator delete(v8);
    }
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if (*(a1 + 120) != 1)
    {
      goto LABEL_24;
    }
  }

  else if (*(a1 + 120) != 1)
  {
    goto LABEL_24;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

LABEL_24:
  if (*(a1 + 64) != 1 || (*(a1 + 63) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 40));
  return a1;
}

void sub_2713A4D28(uint64_t a1)
{
  sub_2713A4B98(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A4D60(uint64_t a1)
{
  sub_2713A4B98(a1 - 8);

  JUMPOUT(0x2743BF050);
}

void sub_2713A4DD0(char **a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243E0, 0);
  if (v8)
  {
    v9 = *a3;

    sub_2713D8D2C(v8, a2);
  }

  v10 = *v6;
  v11 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
  if (v11)
  {
    v12 = *a3;

    sub_2713D8F50(v11, a2, v12);
  }

  else
  {
    v13 = *v6;
    v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
    if (v14)
    {
      v15 = *a3;

      sub_2713D912C(v14, a2);
    }

    v16 = *v6;
    v17 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812BD08, 0);
    if (v17)
    {
      v18 = *a3;

      sub_2713D9350(v17, a2, v18);
    }

    else
    {
      v19 = *v6;
      v20 = __dynamic_cast(a1, &unk_28812BF60, &unk_28811DD60, 0);
      v21 = *a3;
      if (v20)
      {

        sub_2713D954C(v20, a2, v21);
      }

      else
      {

        sub_2713D96B8(a1, a2, v21);
      }
    }
  }
}

void sub_2713A4FEC(char **a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245A0, 0);
  if (v8)
  {
    v9 = *a3;
    v10 = v8[104];
    *(v8 + 11) = "info";
    *(v8 + 12) = 4;
    if ((v10 & 1) == 0)
    {
      v8[104] = 1;
    }

    sub_2713BB450(v8, a2 + 16);
  }

  v11 = *v6;
  v12 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
  if (v12)
  {
    v13 = v12;
    v14 = *a3;
    LODWORD(__p) = 6;
    sub_27183FB7C(v12[6], &__p);
    sub_2713BF6F4(&__p, v13, a2 + 16, __p);
    LODWORD(__p) = 4;
    sub_27183FB7C(*(v13 + 48), &__p);
    sub_2713D210C(v13, a2 + 192, __p);
    if (v14 >= 3)
    {
      sub_2713BFFC0(v13, (a2 + 576));
    }

    return;
  }

  v15 = *v6;
  v16 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
  if (v16)
  {
    v17 = *a3;
    v18 = v16[104];
    *(v16 + 11) = "info";
    *(v16 + 12) = 4;
    if ((v18 & 1) == 0)
    {
      v16[104] = 1;
    }

    sub_2713C0E9C(v16, a2 + 16);
  }

  v19 = *v6;
  v20 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812BDC8, 0);
  if (v20)
  {
    v21 = v20;
    v22 = *a3;
    LODWORD(__p) = 6;
    sub_27183A9AC(v20, &__p);
    if (__p >= 6)
    {
      v23 = 6;
    }

    else
    {
      v23 = __p;
    }

    if (__p > 2)
    {
      sub_2713C32B8(v21, a2 + 16, v23);
      while (1)
      {
        if ((*(v21 + 131) & 1) != 0 || (*(*(v21 + 16) + *(**(v21 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_36;
        }

        sub_27183D78C(v21, &__p);
        if (v34 < 0)
        {
          if (v33 == 1 && *(v21 + 72) == *__p)
          {
LABEL_28:
            v24 = 0;
            if (v34 < 0)
            {
              goto LABEL_31;
            }

            goto LABEL_19;
          }
        }

        else if (v34 == 1 && *(v21 + 72) == __p)
        {
          goto LABEL_28;
        }

        v24 = 1;
        if (v34 < 0)
        {
LABEL_31:
          operator delete(__p);
        }

LABEL_19:
        if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    sub_2713C30AC(&__p, v21, a2 + 16, v23);
LABEL_36:
    LODWORD(__p) = 4;
    sub_27183A9AC(v21, &__p);
    if (__p >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = __p;
    }

    v30 = (a2 + 192);
    if (__p > 2)
    {
      sub_2713D5298(v21, v30, v29);
      while (1)
      {
        if ((*(v21 + 131) & 1) != 0 || (*(*(v21 + 16) + *(**(v21 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_55;
        }

        sub_27183D78C(v21, &__p);
        if (v34 < 0)
        {
          if (v33 == 1 && *(v21 + 72) == *__p)
          {
LABEL_50:
            v31 = 0;
            if (v34 < 0)
            {
              goto LABEL_53;
            }

            goto LABEL_41;
          }
        }

        else if (v34 == 1 && *(v21 + 72) == __p)
        {
          goto LABEL_50;
        }

        v31 = 1;
        if (v34 < 0)
        {
LABEL_53:
          operator delete(__p);
        }

LABEL_41:
        if ((v31 & 1) == 0)
        {
          goto LABEL_55;
        }
      }
    }

    sub_2713D4A48(v21, v30, v29);
LABEL_55:
    if (v22 >= 3)
    {
      sub_2713C3B9C(v21, (a2 + 576));
    }
  }

  else
  {
    v25 = *v6;
    v26 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28811DDA8, 0);
    v27 = *a3;
    if (v26)
    {
      v28 = v26;
      sub_2713C49D0(&__p, v26, a2 + 16);
      sub_2713D5A84(v28, a2 + 192);
      if (v27 >= 3)
      {
        sub_2713C53C4(v28, (a2 + 576));
      }
    }

    else
    {

      sub_2713D98A4(a1, a2, v27);
    }
  }
}