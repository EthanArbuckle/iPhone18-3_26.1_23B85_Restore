void sub_271567674(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 2;
    *&v24[4] = v6;
    v7 = 2 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x1FFFFFFFFLL | ((v8 >> 1) << 33);
    v10 = __PAIR64__(*&v24[4], 2);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_288115A20;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_288115A20;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_27155BC54(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_288115A20;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_27156793C(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_27155D2B4(v4, a1);
  sub_271567674(v3, a1);
  sub_271567674(&v2, a1);
  operator new();
}

void sub_271567A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271567AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271567AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271567AE4(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124998, 0);
  if (v6)
  {
    v7 = v6;
    sub_27155D2B4(v32, v6);
    sub_271567674(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288115A40;
    if (HIDWORD(v31) <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 2;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_27155C30C(&v24, v34, v33);
    *&v24 = &unk_288115A40;
    sub_27157D2FC(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2881337B0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2881337F0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_288115750;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 8);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_2715673E0(a1, v33);
  *&result = sub_2712A2500(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271567DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271567E10(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_2715673E0(a1, &v7);
    operator new();
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271567F7C(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_271567674(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_2715680E8()
{
  if ((atomic_load_explicit(&qword_28087BAA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAA0))
  {
    sub_27157AEF0();
  }

  if (byte_28087BB87 >= 0)
  {
    return &qword_28087BB70;
  }

  else
  {
    return qword_28087BB70;
  }
}

void sub_2715681B8(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27155CC14(a1, &v2);
    operator new();
  }

  sub_27155D2B4(&v2, a1);
  operator new();
}

void sub_271568480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_2715684BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271568530(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288116100;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 3;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_288115510;
  *(a1 + 8) = 0;
  sub_271548FF0(0, 21, v14, a1 + 16);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v17);
    }
  }

LABEL_14:
  sub_271549728(&v16, v19);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288116100;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27156873C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_271568758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156878C(uint64_t a1)
{
  *a1 = &unk_288115510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271568804(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_27154608C(a1))
  {

    sub_27157497C(a2, 0, (a1 + 72));
    return;
  }

  v4 = *(a1 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v11 = &unk_288115A20;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v11 = &unk_288115A20;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_271549728(&v11, a2);
  v11 = &unk_288115A20;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_271568A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271568A1C(uint64_t a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {

    sub_27157497C(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v16 = &unk_288115A20;
    v17 = v8;
    v18 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v16 = &unk_288115A20;
        v17 = v6;
        v18 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_16:
  sub_271549728(&v16, &v12);
  *a1 = v12;
  v9 = v14;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v15;
  v16 = &unk_288115A20;
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_271568C68(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_27154ACFC(v4, a1);
  sub_271568A1C(v3, a1);
  sub_271568A1C(&v2, a1);
  operator new();
}

void sub_271568DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271568DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271568DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271568E10(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124AB8, 0);
  if (v6)
  {
    v7 = v6;
    sub_27154ACFC(v32, v6);
    sub_271568A1C(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288116100;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 3;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_271549DD8(&v24, v34, v33);
    *&v24 = &unk_288116100;
    sub_27157D2FC(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2881337B0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2881337F0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_288115510;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 21);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_271568804(a1, v33);
  sub_2712A2E80(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715690CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156913C(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_271568804(a1, &v7);
    operator new();
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2715692A8(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_271568A1C(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_271569414()
{
  if ((atomic_load_explicit(&qword_28087BAA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAA8))
  {
    sub_27157AFF4();
  }

  if (byte_28087BB9F >= 0)
  {
    return &qword_28087BB88;
  }

  else
  {
    return qword_28087BB88;
  }
}

void sub_2715694E4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27154A6D8(a1, &v2);
    operator new();
  }

  sub_27154ACFC(&v2, a1);
  operator new();
}

void sub_2715697AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_2715697E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156985C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288116070;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 3;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_288115360;
  *(a1 + 8) = 0;
  sub_27154F348(0, 22, v14, a1 + 16);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v17);
    }
  }

LABEL_14:
  sub_27154FA80(&v16, v19);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288116070;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271569A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_271569A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271569AB8(uint64_t a1)
{
  *a1 = &unk_288115360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271569B30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_27154608C(a1))
  {

    sub_27157497C(a2, 0, (a1 + 72));
    return;
  }

  v4 = *(a1 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v11 = &unk_288115A20;
    v12 = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v11 = &unk_288115A20;
        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_16:
  sub_27154FA80(&v11, a2);
  v11 = &unk_288115A20;
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_271569D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271569D48(uint64_t a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {

    sub_27157497C(a1, 0, (a2 + 72));
    return;
  }

  v4 = *(a2 + 40);
  if (v4 <= 1)
  {
    if (v4 >= 2)
    {
LABEL_23:
      sub_2711308D4();
    }

    goto LABEL_14;
  }

  if (v4 == 2)
  {
LABEL_14:
    v8 = *(a2 + 24);
    v7 = *(a2 + 32);
    v16 = &unk_288115A20;
    v17 = v8;
    v18 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    goto LABEL_23;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v5 = std::__shared_weak_count::lock(v5);
    if (v5)
    {
      v6 = *(a2 + 16);
      if (v6)
      {
        v16 = &unk_288115A20;
        v17 = v6;
        v18 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_21;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v16 = &unk_288115A20;
  if (v5)
  {
LABEL_21:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_16:
  sub_27154FA80(&v16, &v12);
  *a1 = v12;
  v9 = v14;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  *(a1 + 40) = v15;
  v16 = &unk_288115A20;
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_271569F94(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_271551064(v4, a1);
  sub_271569D48(v3, a1);
  sub_271569D48(&v2, a1);
  operator new();
}

void sub_27156A0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156A11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156A13C(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124AA0, 0);
  if (v6)
  {
    v7 = v6;
    sub_271551064(v32, v6);
    sub_271569D48(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288116070;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 3;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_271550138(&v24, v34, v33);
    *&v24 = &unk_288116070;
    sub_27157D2FC(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2881337B0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2881337F0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_288115360;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 22);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_271569B30(a1, v33);
  sub_2712A3624(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27156A3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156A468(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_271569B30(a1, &v7);
    operator new();
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156A5D4(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_271569D48(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156A740()
{
  if ((atomic_load_explicit(&qword_28087BAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAB0))
  {
    sub_27157B0F8();
  }

  if (byte_28087BBB7 >= 0)
  {
    return &qword_28087BBA0;
  }

  else
  {
    return qword_28087BBA0;
  }
}

void sub_27156A810(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271550A40(a1, &v2);
    operator new();
  }

  sub_271551064(&v2, a1);
  operator new();
}

void sub_27156AAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156AB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156AB88(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115FE0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_288115480;
  *(a1 + 8) = 0;
  sub_27154B108(0, 25, v14, a1 + 16);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v17);
    }
  }

LABEL_14:
  sub_27154B838(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288115FE0;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27156AD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_27156ADB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156ADE4(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156AE5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v20 = &unk_288115A20;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v20 = &unk_288115A20;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_27154B838(a2, &v20);
  *&v20 = &unk_288115A20;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_27156B0F0(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_288115A20;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_288115A20;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_27154B838(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_288115A20;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_27156B3B8(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_27154CE18(v4, a1);
  sub_27156B0F0(v3, a1);
  sub_27156B0F0(&v2, a1);
  operator new();
}

void sub_27156B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156B52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156B544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156B564(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A88, 0);
  if (v6)
  {
    v7 = v6;
    sub_27154CE18(v32, v6);
    sub_27156B0F0(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288115FE0;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_27154BE7C(&v24, 25, v34, v33);
    *&v24 = &unk_288115FE0;
    sub_27157D2FC(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2881337B0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2881337F0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_288115480;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 25);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_27156AE5C(a1, v33);
  sub_2712A6008(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27156B824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156B894(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_27156AE5C(a1, &v7);
    operator new();
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156BA00(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_27156B0F0(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156BB6C()
{
  if ((atomic_load_explicit(&qword_28087BAB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAB8))
  {
    sub_27157B1FC();
  }

  if (byte_28087BBCF >= 0)
  {
    return &qword_28087BBB8;
  }

  else
  {
    return qword_28087BBB8;
  }
}

void sub_27156BC3C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27154C774(&v2, a1);
    operator new();
  }

  sub_27154CE18(&v2, a1);
  operator new();
}

void sub_27156BF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156BFC0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115EC0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_288115870;
  *(a1 + 8) = 0;
  sub_2715575E4(0, 31, v14, a1 + 16);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v17);
    }
  }

LABEL_14:
  sub_271551BA4(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288115EC0;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27156C1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_27156C1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156C21C(uint64_t a1)
{
  *a1 = &unk_288115870;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156C294(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v20 = &unk_288115A20;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v20 = &unk_288115A20;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_271551BA4(a2, &v20);
  *&v20 = &unk_288115A20;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_27156C528(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_288115A20;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_288115A20;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_271551BA4(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_288115A20;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_27156C7F0(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_271558FF0(v4, a1);
  sub_27156C528(v3, a1);
  sub_27156C528(&v2, a1);
  operator new();
}

void sub_27156C934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156C960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156C978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156C998(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A58, 0);
  if (v6)
  {
    v7 = v6;
    sub_271558FF0(v32, v6);
    sub_27156C528(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288115EC0;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_271558040(&v24, v34, v33);
    *&v24 = &unk_288115EC0;
    sub_27157D2FC(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2881337B0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2881337F0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_288115870;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 31);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_27156C294(a1, v33);
  *&v30[0] = &v24;
  *(&v30[0] + 1) = v33;
  *&result = sub_2712A6EAC(v30);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27156CC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156CCCC(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_27156C294(a1, &v7);
    operator new();
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156CE38(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_27156C528(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156CFA4()
{
  if ((atomic_load_explicit(&qword_28087BAC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAC0))
  {
    sub_27157B300();
  }

  if (byte_28087BBE7 >= 0)
  {
    return &qword_28087BBD0;
  }

  else
  {
    return qword_28087BBD0;
  }
}

void sub_27156D074(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271558950(a1, &v2);
    operator new();
  }

  sub_271558FF0(&v2, a1);
  operator new();
}

void sub_27156D33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156D3EC(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115E30;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_2881156C0;
  *(a1 + 8) = 0;
  sub_27155D6C0(0, 32, v14, a1 + 16);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v17);
    }
  }

LABEL_14:
  sub_27155DDF4(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288115E30;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27156D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_27156D614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156D648(uint64_t a1)
{
  *a1 = &unk_2881156C0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156D6C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v20 = &unk_288115A20;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v20 = &unk_288115A20;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_27155DDF4(a2, &v20);
  *&v20 = &unk_288115A20;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_27156D954(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_288115A20;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_288115A20;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_27155DDF4(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_288115A20;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_27156DC1C(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_27155F454(v4, a1);
  sub_27156D954(v3, a1);
  sub_27156D954(&v2, a1);
  operator new();
}

void sub_27156DD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156DDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156DDC4(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A40, 0);
  if (v6)
  {
    v7 = v6;
    sub_27155F454(v32, v6);
    sub_27156D954(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288115E30;
    if (HIDWORD(v31) <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_27155E4AC(&v24, v34, v33);
    *&v24 = &unk_288115E30;
    sub_27157D2FC(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2881337B0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2881337F0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2881156C0;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 32);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_27156D6C0(a1, v33);
  sub_271245B78(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27156E080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156E0F0(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_27156D6C0(a1, &v7);
    operator new();
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156E25C(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_27156D954(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156E3C8()
{
  if ((atomic_load_explicit(&qword_28087BAC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAC8))
  {
    sub_27157B404();
  }

  if (byte_28087BBFF >= 0)
  {
    return &qword_28087BBE8;
  }

  else
  {
    return qword_28087BBE8;
  }
}

void sub_27156E498(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27155EDB4(a1, &v2);
    operator new();
  }

  sub_27155F454(&v2, a1);
  operator new();
}

void sub_27156E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156E79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156E810(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115DA0;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_288115480;
  *(a1 + 8) = 0;
  sub_27154B108(0, 37, v14, a1 + 16);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v17);
    }
  }

LABEL_14:
  sub_27154B838(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288115DA0;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27156EA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_27156EA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156EA6C(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156EAE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v20 = &unk_288115A20;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v20 = &unk_288115A20;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_27154B838(a2, &v20);
  *&v20 = &unk_288115A20;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_27156ED78(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_288115A20;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_288115A20;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_27154B838(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_288115A20;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_27156F040(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_27154CE18(v4, a1);
  sub_27156ED78(v3, a1);
  sub_27156ED78(&v2, a1);
  operator new();
}

void sub_27156F188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156F1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27156F1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_27156F1EC(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A28, 0);
  if (v6)
  {
    v7 = v6;
    sub_27154CE18(v32, v6);
    sub_27156ED78(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288115DA0;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_27154BE7C(&v24, 37, v34, v33);
    *&v24 = &unk_288115DA0;
    sub_27157D2FC(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2881337B0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2881337F0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_288115480;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 37);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_27156EAE4(a1, v33);
  sub_2712A6008(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27156F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27156F51C(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_27156EAE4(a1, &v7);
    operator new();
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_27156F688(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_27156ED78(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_27156F7F4()
{
  if ((atomic_load_explicit(&qword_28087BAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAD0))
  {
    sub_27157B508();
  }

  if (byte_28087BC17 >= 0)
  {
    return &qword_28087BC00;
  }

  else
  {
    return qword_28087BC00;
  }
}

void sub_27156F8C4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27154C774(&v2, a1);
    operator new();
  }

  sub_27154CE18(&v2, a1);
  operator new();
}

void sub_27156FB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156FBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156FC48(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115D10;
  v3 = *(a2 + 32);
  LODWORD(v4) = *(a2 + 36);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *v19 = 4;
  v5 = *(a2 + 24);
  *&v19[4] = v5;
  *v14 = *v19;
  *&v14[8] = HIDWORD(v5);
  *v19 = 1;
  *&v19[4] = v3 | (v4 << 32);
  *&v14[12] = *v19;
  *&v14[20] = v4;
  *&v14[24] = v5;
  v15 = *&v19[4];
  *a1 = &unk_2881152D0;
  *(a1 + 8) = 0;
  sub_271551470(0, 38, v14, a1 + 16);
  if (!*&v14[24] || !*&v14[28])
  {
    v11 = *&v14[16];
    *(a1 + 48) = *v14;
    *(a1 + 64) = v11;
    *(a1 + 80) = v15;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = v17;
  }

  v16 = &unk_2881152B0;
  if (v6)
  {
    v9 = *v6;
    v8 = v6[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v9)
    {
LABEL_13:
      sub_271581FB4(v17);
    }
  }

LABEL_14:
  sub_271551BA4(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288115D10;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27156FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_27156FE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156FEA4(uint64_t a1)
{
  *a1 = &unk_2881152D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27156FF1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a1))
  {
    if (*(a1 + 76))
    {
      v5 = *(a1 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a1 + 72);
    if (v5)
    {
      v6 = 0;
    }

    LODWORD(v20) = 4;
    *(&v20 + 4) = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(DWORD1(v20), 4);
    LODWORD(v20) = 1;
    *(&v20 + 4) = v9;
    v11 = v20;
    *a2 = 0;
    *(a2 + 8) = v10;
    *(a2 + 16) = HIDWORD(v6);
    *(a2 + 20) = v11;
    *(a2 + 28) = v8;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a1 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    *&v20 = &unk_288115A20;
    *(&v20 + 1) = v16;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a1 + 16);
      if (v14)
      {
        *&v20 = &unk_288115A20;
        *(&v20 + 1) = v14;
        v21 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  *(&v20 + 1) = 0;
  v21 = 0;
  *&v20 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_22:
  sub_271551BA4(a2, &v20);
  *&v20 = &unk_288115A20;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2715701B0(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (sub_27154608C(a2))
  {
    if (*(a2 + 76))
    {
      v5 = *(a2 + 72) == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
    }

    *v24 = 4;
    *&v24[4] = v6;
    v7 = 4 * (v6 != 0);
    LODWORD(v8) = v7 * v6;
    if (HIDWORD(v6))
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
    v10 = __PAIR64__(*&v24[4], 4);
    *v24 = 1;
    *&v24[4] = v9;
    v11 = *v24;
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = HIDWORD(v6);
    *(a1 + 20) = v11;
    *(a1 + 28) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v9;
    goto LABEL_25;
  }

  v12 = *(a2 + 40);
  if (v12 <= 1)
  {
    if (v12 >= 2)
    {
LABEL_29:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v12 == 2)
  {
LABEL_20:
    v16 = *(a2 + 24);
    v15 = *(a2 + 32);
    v21 = &unk_288115A20;
    v22 = v16;
    v23 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v12 != 3)
  {
    goto LABEL_29;
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
      if (v14)
      {
        v21 = &unk_288115A20;
        v22 = v14;
        v23 = v13;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_27;
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = &unk_288115A20;
  if (v13)
  {
LABEL_27:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v13;
      (v13->__on_zero_shared)(v13, v4);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_22:
  sub_271551BA4(v24, &v21);
  *a1 = *v24;
  v17 = v25;
  *(a1 + 8) = *&v24[8];
  *(a1 + 24) = v17;
  *(a1 + 40) = v26;
  v21 = &unk_288115A20;
  v18 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_271570478(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_271553204(v4, a1);
  sub_2715701B0(v3, a1);
  sub_2715701B0(&v2, a1);
  operator new();
}

void sub_2715705BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_2715705E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271570600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271570620(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A10, 0);
  if (v6)
  {
    v7 = v6;
    sub_271553204(v32, v6);
    sub_2715701B0(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288115D10;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = HIDWORD(v31);
    }

    *&v34[1] = v31;
    v34[0] = 4;
    LODWORD(v39[0]) = 1;
    *(v39 + 4) = DWORD2(v31) | (v8 << 32);
    v35 = v39[0];
    v36 = v8;
    v37 = v31;
    v38 = *(v39 + 4);
    sub_27155225C(&v24, v34, v33);
    *&v24 = &unk_288115D10;
    sub_27157D2FC(v32);
    v9 = DWORD2(v26);
    *(a1 + 8) = DWORD2(v24);
    v10 = *(a1 + 40);
    if (v10 == -1)
    {
      if (v9 == -1)
      {
        result = *&v27;
        v22 = v28;
        *(a1 + 48) = v27;
        *(a1 + 64) = v22;
        *(a1 + 80) = v29;
        v23 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else if (v9 == -1)
    {
      (off_2881337B0[v10])(v33, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_11;
    }

    *&v33[0] = a1 + 16;
    (off_2881337F0[v9])(v33);
LABEL_11:
    v19 = DWORD2(v26);
    result = *&v27;
    v20 = v28;
    *(a1 + 48) = v27;
    *(a1 + 64) = v20;
    *(a1 + 80) = v29;
    *&v24 = &unk_2881152D0;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 38);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_27156FF1C(a1, v33);
  sub_271244900(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715708DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157094C(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_27156FF1C(a1, &v7);
    operator new();
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 332, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_271570AB8(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_2715701B0(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 338, "F == format", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "F == format", 11, "", 0);
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "F == format", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

uint64_t *sub_271570C24()
{
  if ((atomic_load_explicit(&qword_28087BAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BAD8))
  {
    sub_27157B60C();
  }

  if (byte_28087BC2F >= 0)
  {
    return &qword_28087BC18;
  }

  else
  {
    return qword_28087BC18;
  }
}

void sub_271570CF4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271552B64(a1, &v2);
    operator new();
  }

  sub_271553204(&v2, a1);
  operator new();
}

void sub_271570FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271570FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

void *sub_27157106C@<X0>(_DWORD *a1@<X1>, char *a2@<X2>, unint64_t a3@<X8>)
{
  v3 = a3;
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = 2 * (*a1 != 0);
  LODWORD(a3) = v4 * *a1;
  if (a3 <= 0x20)
  {
    LODWORD(a3) = 32;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  v7 = *a2;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 32;
  }

  *v11 = 2;
  *&v11[4] = v5;
  *&v11[8] = v6;
  LODWORD(v13[0]) = 1;
  *(v13 + 4) = v4 & 0x1FFFFFFFFLL | ((a3 >> 1) << 33);
  *&v11[12] = v13[0];
  *&v11[20] = a3;
  *&v11[24] = v5;
  v12 = *(v13 + 4);
  LOBYTE(v13[0]) = v7;
  *v3 = &unk_2881155A0;
  *(v3 + 8) = 0;
  sub_271546E30(0, 5, v11, v3 + 16);
  if (*&v11[24] && *&v11[28])
  {
    sub_2715472F0(0, v3 + 16, v3 + 48);
  }

  else
  {
    v8 = *&v11[16];
    *(v3 + 48) = *v11;
    *(v3 + 64) = v8;
    *(v3 + 80) = v12;
  }

  result = sub_271547A6C(v3, v13);
  *v3 = &unk_288115B60;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2715711F4@<X0>(_DWORD *a1@<X1>, char *a2@<X2>, unint64_t a3@<X8>)
{
  v3 = a3;
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = 4 * (*a1 != 0);
  LODWORD(a3) = v4 * *a1;
  if (a3 <= 0x20)
  {
    LODWORD(a3) = 32;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  v7 = *a2;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 32;
  }

  *v11 = 4;
  *&v11[4] = v5;
  *&v11[8] = v6;
  LODWORD(v13[0]) = 1;
  *(v13 + 4) = v4 & 0x3FFFFFFFFLL | ((a3 >> 2) << 34);
  *&v11[12] = v13[0];
  *&v11[20] = a3;
  *&v11[24] = v5;
  v12 = *(v13 + 4);
  LOBYTE(v13[0]) = v7;
  *v3 = &unk_288115480;
  *(v3 + 8) = 0;
  sub_27154B108(0, 25, v11, v3 + 16);
  if (*&v11[24] && *&v11[28])
  {
    sub_27154B5C8(0, v3 + 16, v3 + 48);
  }

  else
  {
    v8 = *&v11[16];
    *(v3 + 48) = *v11;
    *(v3 + 64) = v8;
    *(v3 + 80) = v12;
  }

  result = sub_27154BD44(v3, v13);
  *v3 = &unk_288115FE0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_27157137C@<X0>(_DWORD *a1@<X1>, char *a2@<X2>, unint64_t a3@<X8>)
{
  v3 = a3;
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = 4 * (*a1 != 0);
  LODWORD(a3) = v4 * *a1;
  if (a3 <= 0x20)
  {
    LODWORD(a3) = 32;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  v7 = *a2;
  if (a1[1])
  {
    a3 = a3;
  }

  else
  {
    a3 = 32;
  }

  *v11 = 4;
  *&v11[4] = v5;
  *&v11[8] = v6;
  LODWORD(v13[0]) = 1;
  *(v13 + 4) = v4 & 0x3FFFFFFFFLL | ((a3 >> 2) << 34);
  *&v11[12] = v13[0];
  *&v11[20] = a3;
  *&v11[24] = v5;
  v12 = *(v13 + 4);
  LOBYTE(v13[0]) = v7;
  *v3 = &unk_288115480;
  *(v3 + 8) = 0;
  sub_27154B108(0, 37, v11, v3 + 16);
  if (*&v11[24] && *&v11[28])
  {
    sub_27154B5C8(0, v3 + 16, v3 + 48);
  }

  else
  {
    v8 = *&v11[16];
    *(v3 + 48) = *v11;
    *(v3 + 64) = v8;
    *(v3 + 80) = v12;
  }

  result = sub_27154BD44(v3, v13);
  *v3 = &unk_288115DA0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_271571504(void *a1)
{
  *a1 = &unk_288116240;
  sub_27157D2FC(a1 + 1);
  return a1;
}

void sub_271571548(void *a1)
{
  *a1 = &unk_288116240;
  sub_27157D2FC(a1 + 1);

  JUMPOUT(0x2743BF050);
}

void *sub_2715715AC(void *a1)
{
  *a1 = &unk_288116220;
  sub_27157D548(a1 + 1);
  return a1;
}

void sub_2715715F0(void *a1)
{
  *a1 = &unk_288116220;
  sub_27157D548(a1 + 1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271571654(uint64_t result)
{
  if (*(result + 32))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  return result;
}

uint64_t sub_2715716AC(uint64_t a1)
{
  *a1 = &unk_288115630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_271571738(uint64_t a1)
{
  *a1 = &unk_2881153F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_2715717C4(uint64_t a1)
{
  *a1 = &unk_288115990;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_271571850(uint64_t a1)
{
  *a1 = &unk_2881157E0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_2715718DC(uint64_t a1)
{
  *a1 = &unk_2881155A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571968(uint64_t a1)
{
  *a1 = &unk_288115900;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_2715719F4(uint64_t a1)
{
  *a1 = &unk_288115750;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571A80(uint64_t a1)
{
  *a1 = &unk_288115510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571B0C(uint64_t a1)
{
  *a1 = &unk_288115360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571B98(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571C24(uint64_t a1)
{
  *a1 = &unk_288115870;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571CB0(uint64_t a1)
{
  *a1 = &unk_2881156C0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571D3C(uint64_t a1)
{
  *a1 = &unk_288115480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

uint64_t sub_271571DC8(uint64_t a1)
{
  *a1 = &unk_2881152D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40ED729E16);
}

void sub_271571E54(uint64_t a1, void *a2)
{
  *a2 = &unk_288115A20;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_271571EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_271571F0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = a3;
    (off_2881337B0[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = &unk_288115A20;
    *(v3 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v3 + 24) = 0;
    return;
  }

  v5 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a2 + 16);
  *(a2 + 8) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

__n128 sub_271572014(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_2881337B0[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_2881152B0;
    *(v3 + 24) = 1;
    return result;
  }

  sub_27157D200(a2, a3);
  return result;
}

__n128 sub_2715720CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    v6 = a3;
    (off_2881337B0[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_288115290;
    *(v3 + 24) = 2;
    return result;
  }

  sub_27157D44C(a2, a3);
  return result;
}

__n128 sub_271572184(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[1].n128_i32[2];
  if (v4 == -1)
  {
    goto LABEL_8;
  }

  if (v4 != 3)
  {
    v7 = a3;
    (off_2881337B0[v4])(&v8, v3);
    a3 = v7;
LABEL_8:
    result = *a3;
    *v3 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v3[1].n128_u32[2] = 3;
    return result;
  }

  result = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  v6 = a2->n128_u64[1];
  *a2 = result;
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }

  return result;
}

void sub_271572434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271572488(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271572794(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_271572588(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288133810[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_271572748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271572794(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_271572930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271572944(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_2715729BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271572A74(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271572B18(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271572B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271572C48(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271572CEC(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271572D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271572E1C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271572EC0(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271572F38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271572FF0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573094(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_27157310C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715731C4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573268(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_2715732E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573398(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_27157343C(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_2715734B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27157356C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573610(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271573688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573740(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_2715737E4(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_27157385C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573914(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_2715739B8(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271573A30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573AE8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573B8C(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271573C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573CBC(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573D60(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271573DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271573E90(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271573F34(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271573FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271574064(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_271574108(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_271574180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271574238(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

uint64_t sub_2715742DC(int a1)
{
  result = 1;
  if (a1 <= 1278226487)
  {
    if (a1 > 875704421)
    {
      if (a1 > 875836533)
      {
        if (a1 != 875836534)
        {
          if (a1 == 1094862674)
          {
            return result;
          }

          v3 = 1111970369;
          goto LABEL_37;
        }
      }

      else if (a1 != 875704422 && a1 != 875704438 && a1 != 875836518)
      {
        goto LABEL_39;
      }

      return 2;
    }

    if (a1 > 843264055)
    {
      v4 = -843264056;
LABEL_26:
      v5 = a1 + v4;
      if (v5 > 0x30 || ((1 << v5) & 0x1400000000001) == 0)
      {
        goto LABEL_39;
      }

      return result;
    }

    if (a1 != 24 && a1 != 32)
    {
      v3 = 842285639;
      goto LABEL_37;
    }
  }

  else
  {
    if (a1 <= 1647392358)
    {
      if (a1 > 1278226741)
      {
        if (a1 > 1380410944)
        {
          if (a1 == 1380410945)
          {
            return result;
          }

          v3 = 1380411457;
        }

        else
        {
          if (a1 == 1278226742)
          {
            return result;
          }

          v3 = 1380401729;
        }

        goto LABEL_37;
      }

      v4 = -1278226488;
      goto LABEL_26;
    }

    if (a1 > 1717855599)
    {
      if (a1 > 1751410031)
      {
        if (a1 == 1751410032)
        {
          return result;
        }

        v3 = 1751411059;
      }

      else
      {
        if (a1 == 1717855600)
        {
          return result;
        }

        v3 = 1717856627;
      }

LABEL_37:
      if (a1 == v3)
      {
        return result;
      }

LABEL_39:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 396, "", 0, "not yet implemented", 0x13uLL, sub_271852CA8);
      abort();
    }

    if (a1 != 1647392359 && a1 != 1647589490)
    {
      v3 = 1647719521;
      goto LABEL_37;
    }
  }

  return result;
}

void *sub_271574524(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 != 1)
  {
    v9 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return result;
    }

    v12 = result[1];
    v13 = v9 - 1;
    v14 = *v1;
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(v1 + 5);
      v17 = *v12;
      if (v13)
      {
        for (i = 0; i != v15; ++i)
        {
          v19 = v13;
          v20 = v14;
          do
          {
            *v20 = v17;
            v20 += v2;
            --v19;
          }

          while (v19);
          v17 = *v12;
          *v20 = *v12;
          v14 += v16;
        }

        goto LABEL_20;
      }

      do
      {
        *v14 = v17;
        v14 += v16;
        --v15;
      }

      while (v15);
    }

    if (!v13)
    {
LABEL_21:
      *v14 = *v12;
      return result;
    }

    v17 = *v12;
    do
    {
LABEL_20:
      *v14 = v17;
      v14 += v2;
      --v13;
    }

    while (v13);
    goto LABEL_21;
  }

  v3 = *(v1 + 5);
  v4 = *(v1 + 2);
  v5 = result[1];
  if (v3 == v4)
  {
    v6 = (*(v1 + 3) * v3);
    v7 = *v1;
    v8 = *v5;

    return memset(v7, v8, v6);
  }

  v21 = *(v1 + 3);
  if (v4)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *v1;
    v24 = v21 - 1;
    if (v21 != 1)
    {
      do
      {
        memset(v23, *v5, v4);
        v23 += v3;
        --v24;
      }

      while (v24);
    }

    v8 = *v5;
    v7 = v23;
    v6 = v4;

    return memset(v7, v8, v6);
  }

  return result;
}

void *sub_2715746BC(void *result)
{
  v1 = *result;
  v2 = *(*result + 8);
  v3 = *(*result + 24);
  if (v3 != *(*result + 20) * v2)
  {
    v12 = *(v1 + 3);
    v11 = *(v1 + 4);
    if (v2)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v11 == 0)
    {
      return result;
    }

    v15 = result[1];
    v16 = v12 - 1;
    v17 = *v1;
    v18 = v11 - 1;
    if (v11 != 1)
    {
      v19 = *(v1 + 7);
      if (v12 != 1)
      {
        v20 = 0;
        do
        {
          v21 = v16;
          v22 = v17;
          do
          {
            memset(v22, *v15, v2);
            v22 += v3;
            --v21;
          }

          while (v21);
          memset(v22, *v15, v2);
          v17 += v19;
          ++v20;
        }

        while (v20 != v18);
        goto LABEL_20;
      }

      do
      {
        memset(v17, *v15, v2);
        v17 += v19;
        --v18;
      }

      while (v18);
    }

    if (!v16)
    {
LABEL_21:
      v10 = *v15;
      v9 = v17;
      v8 = v2;
      goto LABEL_34;
    }

    do
    {
LABEL_20:
      memset(v17, *v15, v2);
      v17 += v3;
      --v16;
    }

    while (v16);
    goto LABEL_21;
  }

  v4 = *(v1 + 7);
  v5 = *(v1 + 3);
  v6 = result[1];
  v7 = (v5 * v2);
  if (v4 == v5 * v3)
  {
    v8 = (*(v1 + 4) * v7);
    v9 = *v1;
    v10 = *v6;
LABEL_34:

    return memset(v9, v10, v8);
  }

  v23 = *(v1 + 4);
  if (v2)
  {
    v24 = v5 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && v23 != 0)
  {
    v26 = *v1;
    v27 = v23 - 1;
    if (v23 != 1)
    {
      do
      {
        memset(v26, *v6, v7);
        v26 += v4;
        --v27;
      }

      while (v27);
    }

    v10 = *v6;
    v9 = v26;
    v8 = v7;
    goto LABEL_34;
  }

  return result;
}

unint64_t sub_27157487C(unint64_t result)
{
  v1 = *result;
  if (*(*result + 20) == 1)
  {
    return sub_2715746BC(result);
  }

  v2 = *(v1 + 12);
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = *(result + 8);
    v7 = v2 - 1;
    v8 = *(v1 + 24);
    v9 = *v1;
    v10 = v3 - 1;
    if (v10)
    {
      v11 = *(v1 + 28);
      v12 = *v6;
      if (v7)
      {
        v13 = 0;
        v14 = v9 + 2;
        do
        {
          v15 = v14;
          LODWORD(result) = v7;
          do
          {
            *(v15 - 2) = v12;
            v12 = *v6;
            *(v15 - 1) = *v6;
            *v15 = v12;
            v15 += v8;
            result = (result - 1);
          }

          while (result);
          v16 = *v6;
          *(v15 - 2) = *v6;
          *(v15 - 1) = v16;
          v12 = *v6;
          *v15 = *v6;
          v9 += v11;
          ++v13;
          v14 += v11;
        }

        while (v13 != v10);
        goto LABEL_19;
      }

      do
      {
        *v9 = v12;
        v12 = *v6;
        v9[1] = *v6;
        v9[2] = v12;
        v9 += v11;
        --v10;
      }

      while (v10);
    }

    v12 = *v6;
    if (!v7)
    {
LABEL_21:
      *v9 = v12;
      v17 = *v6;
      v9[1] = v17;
      v9[2] = v17;
      return result;
    }

    do
    {
LABEL_19:
      *v9 = v12;
      v12 = *v6;
      v9[1] = *v6;
      v9[2] = v12;
      v9 += v8;
      --v7;
    }

    while (v7);
    v12 = *v6;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_27157497C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3[1])
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a3;
  if (v3)
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  if (HIDWORD(v4))
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v13) = 1;
  *(&v13 + 4) = v5 | (v6 << 32);
  *result = a2;
  *(result + 8) = __PAIR64__(v4, 3);
  *(result + 16) = HIDWORD(v4);
  *(result + 20) = v13;
  *(result + 28) = v6;
  *(result + 32) = v4;
  *(result + 40) = *(&v13 + 4);
  if (v6 * HIDWORD(v4) == -1)
  {
    v7 = result;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v9 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_20:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        result = v7;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v9 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v9);
    if (byte_28087C430)
    {
      goto LABEL_20;
    }

LABEL_22:
    abort();
  }

LABEL_21:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE ***sub_271574B58(_BYTE ***result, uint64_t a2)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = v2 - 1;
    v7 = *(a2 + 24);
    v8 = *a2;
    v9 = v3 - 1;
    if (v9)
    {
      v10 = *(a2 + 28);
      if (v6)
      {
        v11 = 0;
        v12 = v8 + 3;
        do
        {
          v13 = v12;
          v14 = v6;
          do
          {
            *(v13 - 3) = ***result;
            *(v13 - 2) = ***result;
            *(v13 - 1) = ***result;
            *v13 = ***result;
            v13 += v7;
            --v14;
          }

          while (v14);
          *(v13 - 3) = ***result;
          *(v13 - 2) = ***result;
          *(v13 - 1) = ***result;
          *v13 = ***result;
          v8 += v10;
          ++v11;
          v12 += v10;
        }

        while (v11 != v9);
        goto LABEL_17;
      }

      do
      {
        *v8 = ***result;
        v8[1] = ***result;
        v8[2] = ***result;
        v8[3] = ***result;
        v8 += v10;
        --v9;
      }

      while (v9);
    }

    if (!v6)
    {
LABEL_18:
      *v8 = ***result;
      v8[1] = ***result;
      v8[2] = ***result;
      v8[3] = ***result;
      return result;
    }

    do
    {
LABEL_17:
      *v8 = ***result;
      v8[1] = ***result;
      v8[2] = ***result;
      v8[3] = ***result;
      v8 += v7;
      --v6;
    }

    while (v6);
    goto LABEL_18;
  }

  return result;
}

void *sub_271574D20(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 != 1)
  {
    v10 = *(v1 + 8);
    v11 = *(v1 + 12);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    v13 = result[1];
    v14 = v10 - 1;
    v15 = *v1;
    v16 = 2 * v2;
    v17 = v11 - 1;
    if (v17)
    {
      v18 = *(v1 + 20);
      if (!v14)
      {
        v48 = *v13;
        do
        {
          v15->i16[0] = v48;
          v15 = (v15 + 2 * v18);
          --v17;
        }

        while (v17);
        goto LABEL_50;
      }

      v19 = 0;
      v20 = *v13;
      v21 = 2 * v18;
      do
      {
        v22 = v15;
        v23 = v14;
        do
        {
          v22->i16[0] = v20;
          v22 = (v22 + v16);
          --v23;
        }

        while (v23);
        v20 = *v13;
        v22->i16[0] = *v13;
        v15 = (v15 + v21);
        ++v19;
      }

      while (v19 != v17);
    }

    else
    {
      v20 = *v13;
      if (!v14)
      {
LABEL_51:
        v15->i16[0] = v20;
        return result;
      }
    }

    do
    {
      v15->i16[0] = v20;
      v15 = (v15 + v16);
      --v14;
    }

    while (v14);
LABEL_50:
    v20 = *v13;
    goto LABEL_51;
  }

  v3 = *(v1 + 20);
  v4 = *(v1 + 8);
  if (v3 != v4)
  {
    v24 = *(v1 + 12);
    if (v4)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v26 = result[1];
    v27 = *v1;
    v28 = v24 - 1;
    if (v28)
    {
      v29 = 0;
      result = (v4 & 3);
      v30 = v27 + 1;
      v31 = 2 * v3;
      do
      {
        v32 = *v26;
        v33 = v4;
        v34 = v27;
        if (v4 >= 4)
        {
          if (v4 < 0x10)
          {
            v35 = 0;
LABEL_31:
            v34 = (v27 + 2 * (v4 & 0xFFFFFFFC));
            v39 = vdup_n_s16(v32);
            v40 = 2 * v35;
            v41 = v35 - (v4 & 0xFFFFFFFC);
            do
            {
              *&v27->i8[v40] = v39;
              v40 += 8;
              v41 += 4;
            }

            while (v41);
            v33 = v4 & 3;
            if ((v4 & 0xFFFFFFFC) == v4)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v36 = vdupq_n_s16(v32);
          v37 = v4 & 0xFFFFFFF0;
          v38 = v30;
          do
          {
            v38[-1] = v36;
            *v38 = v36;
            v38 += 2;
            v37 -= 16;
          }

          while (v37);
          if ((v4 & 0xFFFFFFF0) == v4)
          {
            goto LABEL_23;
          }

          v35 = v4 & 0xFFFFFFF0;
          if ((v4 & 0xC) != 0)
          {
            goto LABEL_31;
          }

          v34 = (v27 + 2 * (v4 & 0xFFFFFFF0));
          v33 = v4 & 0xF;
        }

LABEL_36:
        v42 = v33 + 1;
        do
        {
          v34->i16[0] = v32;
          v34 = (v34 + 2);
          --v42;
        }

        while (v42 > 1);
LABEL_23:
        v27 = (v27 + v31);
        ++v29;
        v30 = (v30 + v31);
      }

      while (v29 != v28);
    }

    v43 = *v26;
    v44 = v4 - (v4 != 0) + 1;
    if (v44 < 4)
    {
      v45 = v27;
      goto LABEL_73;
    }

    if (v44 >= 0x10)
    {
      v47 = v44 & 0xFFFFFFFFFFFFFFF0;
      v55 = vdupq_n_s16(v43);
      v56 = v27 + 1;
      v57 = v44 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v56[-1] = v55;
        *v56 = v55;
        v56 += 2;
        v57 -= 16;
      }

      while (v57);
      if (v44 == v47)
      {
        return result;
      }

      if ((v44 & 0xC) == 0)
      {
        v45 = (v27 + 2 * v47);
        v4 -= v47;
        goto LABEL_73;
      }
    }

    else
    {
      v47 = 0;
    }

    v4 -= v44 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = (v27 + 2 * (v44 & 0xFFFFFFFFFFFFFFFCLL));
    v58 = vdup_n_s16(v43);
    v59 = (v27 + 2 * v47);
    v60 = v47 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v59++ = v58;
      v60 += 4;
    }

    while (v60);
    if (v44 == (v44 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_73:
    v62 = v4 + 1;
    do
    {
      v45->i16[0] = v43;
      v45 = (v45 + 2);
      --v62;
    }

    while (v62 > 1);
    return result;
  }

  v5 = (*(v1 + 12) * v3);
  if (!v5)
  {
    return result;
  }

  v6 = *v1;
  v7 = *result[1];
  if (v5 < 4)
  {
    v8 = (*(v1 + 12) * v3);
    v9 = *v1;
    goto LABEL_69;
  }

  if (v5 >= 0x10)
  {
    v46 = v5 & 0xFFFFFFF0;
    v49 = vdupq_n_s16(v7);
    v50 = v6 + 1;
    v51 = v46;
    do
    {
      v50[-1] = v49;
      *v50 = v49;
      v50 += 2;
      v51 -= 16;
    }

    while (v51);
    if (v46 == v5)
    {
      return result;
    }

    if ((v5 & 0xC) == 0)
    {
      v9 = (v6 + 2 * v46);
      v8 = v5 & 0xF;
LABEL_69:
      v61 = v8 + 1;
      do
      {
        v9->i16[0] = v7;
        v9 = (v9 + 2);
        --v61;
      }

      while (v61 > 1);
      return result;
    }
  }

  else
  {
    v46 = 0;
  }

  v8 = v5 & 3;
  v9 = (v6 + 2 * (v5 & 0xFFFFFFFC));
  v52 = vdup_n_s16(v7);
  v53 = (v6 + 2 * v46);
  v54 = v46 - (v5 & 0xFFFFFFFC);
  do
  {
    *v53++ = v52;
    v54 += 4;
  }

  while (v54);
  if ((v5 & 0xFFFFFFFC) != v5)
  {
    goto LABEL_69;
  }

  return result;
}

void *sub_271575070(void *result)
{
  v1 = *result;
  if (*(*result + 20) != 1)
  {
    v11 = *(v1 + 12);
    v12 = *(v1 + 16);
    if (*(v1 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return result;
    }

    v15 = result[1];
    v16 = v11 - 1;
    v17 = *v1;
    v18 = 2 * *(v1 + 24);
    v19 = v12 - 1;
    if (v12 == 1)
    {
      v22 = *v15;
      if (!v16)
      {
LABEL_54:
        v17->i16[0] = v22;
        v17->i16[1] = v22;
        v17->i16[2] = *v15;
        return result;
      }
    }

    else
    {
      v20 = *(v1 + 28);
      if (!v16)
      {
        v22 = *v15;
        do
        {
          v17->i16[0] = v22;
          v17->i16[1] = v22;
          v22 = *v15;
          v17->i16[2] = *v15;
          v17 = (v17 + 2 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_54;
      }

      v21 = 0;
      v22 = *v15;
      v23 = (v17->i64 + 4);
      do
      {
        result = v23;
        v24 = v16;
        do
        {
          *(result - 2) = v22;
          *(result - 1) = v22;
          v22 = *v15;
          *result = *v15;
          result = (result + v18);
          --v24;
        }

        while (v24);
        *(result - 2) = v22;
        *(result - 1) = v22;
        v22 = *v15;
        *result = *v15;
        v17 = (v17 + 2 * v20);
        ++v21;
        v23 = (v23 + 2 * v20);
      }

      while (v21 != v19);
    }

    do
    {
      v17->i16[0] = v22;
      v17->i16[1] = v22;
      v22 = *v15;
      v17->i16[2] = *v15;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_54;
  }

  v2 = *(v1 + 24);
  if (v2 != *(v1 + 8))
  {
    v25 = result[1];
    v65[0] = *result;
    v65[1] = v25;
    return sub_271575450(v65);
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 12);
  v5 = (v4 * v2);
  if (v3 != v5)
  {
    v26 = *(v1 + 16);
    if (v2)
    {
      v27 = v4 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27 || v26 == 0)
    {
      return result;
    }

    v29 = result[1];
    v30 = *v1;
    v31 = v26 - 1;
    if (v31)
    {
      if (!v5)
      {
        return result;
      }

      v32 = 0;
      result = (v5 & 3);
      v33 = v30 + 1;
      v34 = 2 * v3;
      do
      {
        v35 = *v29;
        v36 = v5;
        v37 = v30;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v38 = 0;
LABEL_41:
            v37 = (v30 + 2 * (v5 & 0xFFFFFFFC));
            v42 = vdup_n_s16(v35);
            v43 = 2 * v38;
            v44 = v38 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v30->i8[v43] = v42;
              v43 += 8;
              v44 += 4;
            }

            while (v44);
            v36 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          v39 = vdupq_n_s16(v35);
          v40 = v5 & 0xFFFFFFF0;
          v41 = v33;
          do
          {
            v41[-1] = v39;
            *v41 = v39;
            v41 += 2;
            v40 -= 16;
          }

          while (v40);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_33;
          }

          v38 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_41;
          }

          v37 = (v30 + 2 * (v5 & 0xFFFFFFF0));
          v36 = v5 & 0xF;
        }

LABEL_46:
        v45 = v36 + 1;
        do
        {
          v37->i16[0] = v35;
          v37 = (v37 + 2);
          --v45;
        }

        while (v45 > 1);
LABEL_33:
        v30 = (v30 + v34);
        ++v32;
        v33 = (v33 + v34);
      }

      while (v32 != v31);
    }

    if (!v5)
    {
      return result;
    }

    v46 = *v29;
    if (v5 < 4)
    {
      v47 = v5;
      v48 = v30;
      goto LABEL_83;
    }

    if (v5 >= 0x10)
    {
      v56 = v5 & 0xFFFFFFF0;
      v57 = vdupq_n_s16(v46);
      v58 = v30 + 1;
      v59 = v56;
      do
      {
        v58[-1] = v57;
        *v58 = v57;
        v58 += 2;
        v59 -= 16;
      }

      while (v59);
      if (v56 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
        v48 = (v30 + 2 * v56);
        v47 = v5 & 0xF;
        goto LABEL_83;
      }
    }

    else
    {
      v56 = 0;
    }

    v47 = v5 & 3;
    v48 = (v30 + 2 * (v5 & 0xFFFFFFFC));
    v60 = vdup_n_s16(v46);
    v61 = (v30 + 2 * v56);
    v62 = v56 - (v5 & 0xFFFFFFFC);
    do
    {
      *v61++ = v60;
      v62 += 4;
    }

    while (v62);
    if ((v5 & 0xFFFFFFFC) == v5)
    {
      return result;
    }

LABEL_83:
    v64 = v47 + 1;
    do
    {
      v48->i16[0] = v46;
      v48 = (v48 + 2);
      --v64;
    }

    while (v64 > 1);
    return result;
  }

  v6 = (*(v1 + 16) * v3);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = *result[1];
  if (v6 < 4)
  {
    v9 = (*(v1 + 16) * v3);
    v10 = *v1;
    goto LABEL_79;
  }

  if (v6 >= 0x10)
  {
    v49 = v6 & 0xFFFFFFF0;
    v50 = vdupq_n_s16(v8);
    v51 = v7 + 1;
    v52 = v49;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 16;
    }

    while (v52);
    if (v49 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v10 = (v7 + 2 * v49);
      v9 = v6 & 0xF;
LABEL_79:
      v63 = v9 + 1;
      do
      {
        v10->i16[0] = v8;
        v10 = (v10 + 2);
        --v63;
      }

      while (v63 > 1);
      return result;
    }
  }

  else
  {
    v49 = 0;
  }

  v9 = v6 & 3;
  v10 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v53 = vdup_n_s16(v8);
  v54 = (v7 + 2 * v49);
  v55 = v49 - (v6 & 0xFFFFFFFC);
  do
  {
    *v54++ = v53;
    v55 += 4;
  }

  while (v55);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_79;
  }

  return result;
}

unint64_t sub_271575450(unint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  v3 = *(*result + 12);
  v4 = *(*result + 16);
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = *(result + 8);
    v8 = v3 - 1;
    v9 = *v1;
    v10 = 2 * *(v1 + 6);
    v11 = v4 - 1;
    if (v11)
    {
      v12 = *(v1 + 7);
      v13 = v2 & 0xFFFFFFF0;
      v14 = 2 * v13;
      result = v2 & 0xFFFFFFFC;
      v15 = 2 * result;
      v16 = 0;
      v17 = v9 + 1;
      v18 = 2 * v12;
      if (!v8)
      {
        while (1)
        {
          v43 = *v7;
          v44 = v2;
          v45 = v9;
          if (v2 >= 4)
          {
            if (v2 < 0x10)
            {
              v46 = 0;
LABEL_53:
              v45 = (v9 + v15);
              v50 = vdup_n_s16(v43);
              v51 = 2 * v46;
              v52 = v46 - (v2 & 0xFFFFFFFC);
              do
              {
                *&v9->i8[v51] = v50;
                v51 += 8;
                v52 += 4;
              }

              while (v52);
              v44 = (v2 & 3);
              if (result == v2)
              {
                goto LABEL_45;
              }

              goto LABEL_58;
            }

            v47 = vdupq_n_s16(v43);
            v48 = v2 & 0xFFFFFFF0;
            v49 = v17;
            do
            {
              v49[-1] = v47;
              *v49 = v47;
              v49 += 2;
              v48 -= 16;
            }

            while (v48);
            if (v13 == v2)
            {
              goto LABEL_45;
            }

            v46 = v2 & 0xFFFFFFF0;
            if ((v2 & 0xC) != 0)
            {
              goto LABEL_53;
            }

            v45 = (v9 + v14);
            v44 = (v2 & 0xF);
          }

LABEL_58:
          v53 = v44 + 1;
          do
          {
            v45->i16[0] = v43;
            v45 = (v45 + 2);
            --v53;
          }

          while (v53 > 1);
LABEL_45:
          v9 = (v9 + v18);
          ++v16;
          v17 = (v17 + v18);
          if (v16 == v11)
          {
            goto LABEL_61;
          }
        }
      }

LABEL_12:
      v19 = 0;
      v20 = v9;
      v21 = v17;
      while (1)
      {
        v22 = *v7;
        v23 = v2;
        v24 = v20;
        if (v2 >= 4)
        {
          if (v2 < 0x10)
          {
            v25 = 0;
LABEL_21:
            v24 = (v20 + v15);
            v29 = vdup_n_s16(v22);
            v30 = 2 * v25;
            v31 = v25 - (v2 & 0xFFFFFFFC);
            do
            {
              *&v20->i8[v30] = v29;
              v30 += 8;
              v31 += 4;
            }

            while (v31);
            v23 = (v2 & 3);
            if (result == v2)
            {
              goto LABEL_13;
            }

            goto LABEL_26;
          }

          v26 = vdupq_n_s16(v22);
          v27 = v2 & 0xFFFFFFF0;
          v28 = v21;
          do
          {
            v28[-1] = v26;
            *v28 = v26;
            v28 += 2;
            v27 -= 16;
          }

          while (v27);
          if (v13 == v2)
          {
            goto LABEL_13;
          }

          v25 = v2 & 0xFFFFFFF0;
          if ((v2 & 0xC) != 0)
          {
            goto LABEL_21;
          }

          v24 = (v20 + v14);
          v23 = (v2 & 0xF);
        }

LABEL_26:
        v32 = v23 + 1;
        do
        {
          v24->i16[0] = v22;
          v24 = (v24 + 2);
          --v32;
        }

        while (v32 > 1);
LABEL_13:
        v20 = (v20 + v10);
        ++v19;
        v21 = (v21 + v10);
        if (v19 == v8)
        {
          v33 = *v7;
          if (v2 < 4)
          {
            v34 = v2;
            v35 = v20;
            goto LABEL_42;
          }

          if (v2 >= 0x10)
          {
            v37 = 0;
            v38 = vdupq_n_s16(v33);
            do
            {
              v20[v37 / 0x10] = v38;
              v21[v37 / 0x10] = v38;
              v37 += 32;
            }

            while (v14 != v37);
            if (v13 != v2)
            {
              v36 = v2 & 0xFFFFFFF0;
              if ((v2 & 0xC) == 0)
              {
                v35 = (v20 + v14);
                v34 = (v2 & 0xF);
                goto LABEL_42;
              }

              goto LABEL_37;
            }
          }

          else
          {
            v36 = 0;
LABEL_37:
            v35 = (v20 + v15);
            v39 = vdup_n_s16(v33);
            v40 = 2 * v36;
            v41 = v36 - (v2 & 0xFFFFFFFC);
            do
            {
              *&v20->i8[v40] = v39;
              v40 += 8;
              v41 += 4;
            }

            while (v41);
            v34 = (v2 & 3);
            if (result != v2)
            {
LABEL_42:
              v42 = v34 + 1;
              do
              {
                v35->i16[0] = v33;
                v35 = (v35 + 2);
                --v42;
              }

              while (v42 > 1);
            }
          }

          v9 = (v9 + v18);
          ++v16;
          v17 = (v17 + v18);
          if (v16 == v11)
          {
            break;
          }

          goto LABEL_12;
        }
      }
    }

LABEL_61:
    if (v8)
    {
      v54 = 0;
      v55 = v2 - (v2 != 0) + 1;
      result = v55 & 0xC;
      v56 = v9 + 1;
      do
      {
        v57 = *v7;
        v58 = v2;
        v59 = v9;
        if (v55 >= 4)
        {
          if (v55 < 0x10)
          {
            v60 = 0;
LABEL_71:
            v59 = (v9 + 2 * (v55 & 0xFFFFFFFFFFFFFFFCLL));
            v64 = vdup_n_s16(v57);
            v65 = 2 * v60;
            v66 = v60 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v9->i8[v65] = v64;
              v65 += 8;
              v66 += 4;
            }

            while (v66);
            v58 = v2 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
            if (v55 == (v55 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_63;
            }

            goto LABEL_76;
          }

          v61 = vdupq_n_s16(v57);
          v62 = v55 & 0xFFFFFFFFFFFFFFF0;
          v63 = v56;
          do
          {
            v63[-1] = v61;
            *v63 = v61;
            v63 += 2;
            v62 -= 16;
          }

          while (v62);
          if (v55 == (v55 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_63;
          }

          v60 = v55 & 0xFFFFFFFFFFFFFFF0;
          if ((v55 & 0xC) != 0)
          {
            goto LABEL_71;
          }

          v59 = (v9 + 2 * (v55 & 0xFFFFFFFFFFFFFFF0));
          v58 = v2 - (v55 & 0xFFFFFFFFFFFFFFF0);
        }

LABEL_76:
        v67 = (v58 + 1);
        do
        {
          v59->i16[0] = v57;
          v59 = (v59 + 2);
          --v67;
        }

        while (v67 > 1);
LABEL_63:
        v9 = (v9 + v10);
        ++v54;
        v56 = (v56 + v10);
      }

      while (v54 != v8);
    }

    v68 = *v7;
    v69 = v2 - (v2 != 0) + 1;
    if (v69 < 4)
    {
      v70 = v9;
      goto LABEL_92;
    }

    if (v69 >= 0x10)
    {
      v71 = v69 & 0xFFFFFFFFFFFFFFF0;
      v72 = vdupq_n_s16(v68);
      v73 = v9 + 1;
      v74 = v69 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v73[-1] = v72;
        *v73 = v72;
        v73 += 2;
        v74 -= 16;
      }

      while (v74);
      if (v69 == v71)
      {
        return result;
      }

      if ((v69 & 0xC) == 0)
      {
        v70 = (v9 + 2 * v71);
        v2 = (v2 - v71);
LABEL_92:
        v78 = v2 + 1;
        do
        {
          v70->i16[0] = v68;
          v70 = (v70 + 2);
          --v78;
        }

        while (v78 > 1);
        return result;
      }
    }

    else
    {
      v71 = 0;
    }

    v2 = (v2 - (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v70 = (v9 + 2 * (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v75 = vdup_n_s16(v68);
    v76 = (v9 + 2 * v71);
    v77 = v71 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v76++ = v75;
      v77 += 4;
    }

    while (v77);
    if (v69 != (v69 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_92;
    }
  }

  return result;
}

unint64_t sub_2715758B0(unint64_t result)
{
  v1 = *result;
  if (*(*result + 20) != 1)
  {
    v11 = *(v1 + 12);
    v12 = *(v1 + 16);
    if (*(v1 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return result;
    }

    v15 = *(result + 8);
    v16 = v11 - 1;
    v17 = *v1;
    v18 = 2 * *(v1 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v1 + 28);
      if (!v16)
      {
        do
        {
          v51 = *v15;
          v17->i16[0] = *v15;
          v17->i16[1] = v51;
          v52 = *v15;
          v17->i16[2] = *v15;
          v17->i16[3] = v52;
          v17 = (v17 + 2 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_53;
      }

      v21 = 0;
      v22 = &v17->i16[2];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 2) = *v15;
          *(v23 - 1) = v25;
          v26 = *v15;
          *v23 = *v15;
          v23[1] = v26;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v27 = *v15;
        *(v23 - 2) = *v15;
        *(v23 - 1) = v27;
        result = *v15;
        *v23 = result;
        v23[1] = result;
        v17 = (v17 + 2 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_53:
      v53 = *v15;
      v17->i16[0] = *v15;
      v17->i16[1] = v53;
      v54 = *v15;
      v17->i16[2] = v54;
      v17->i16[3] = v54;
      return result;
    }

    do
    {
      v49 = *v15;
      v17->i16[0] = *v15;
      v17->i16[1] = v49;
      v50 = *v15;
      v17->i16[2] = *v15;
      v17->i16[3] = v50;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_53;
  }

  v2 = *(v1 + 24);
  if (v2 != *(v1 + 8))
  {
    v28 = *(result + 8);
    v74[0] = *result;
    v74[1] = v28;
    return sub_271575450(v74);
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 12);
  v5 = (v4 * v2);
  if (v3 != v5)
  {
    v29 = *(v1 + 16);
    if (v2)
    {
      v30 = v4 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30 || v29 == 0)
    {
      return result;
    }

    v32 = *(result + 8);
    v33 = *v1;
    v34 = v29 - 1;
    if (v34)
    {
      if (!v5)
      {
        return result;
      }

      v35 = 0;
      result = v5 & 3;
      v36 = v33 + 1;
      v37 = 2 * v3;
      do
      {
        v38 = *v32;
        v39 = v5;
        v40 = v33;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v41 = 0;
LABEL_41:
            v40 = (v33 + 2 * (v5 & 0xFFFFFFFC));
            v45 = vdup_n_s16(v38);
            v46 = 2 * v41;
            v47 = v41 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v33->i8[v46] = v45;
              v46 += 8;
              v47 += 4;
            }

            while (v47);
            v39 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          v42 = vdupq_n_s16(v38);
          v43 = v5 & 0xFFFFFFF0;
          v44 = v36;
          do
          {
            v44[-1] = v42;
            *v44 = v42;
            v44 += 2;
            v43 -= 16;
          }

          while (v43);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_33;
          }

          v41 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_41;
          }

          v40 = (v33 + 2 * (v5 & 0xFFFFFFF0));
          v39 = v5 & 0xF;
        }

LABEL_46:
        v48 = v39 + 1;
        do
        {
          v40->i16[0] = v38;
          v40 = (v40 + 2);
          --v48;
        }

        while (v48 > 1);
LABEL_33:
        v33 = (v33 + v37);
        ++v35;
        v36 = (v36 + v37);
      }

      while (v35 != v34);
    }

    if (!v5)
    {
      return result;
    }

    v55 = *v32;
    if (v5 < 4)
    {
      v56 = v5;
      v57 = v33;
      goto LABEL_82;
    }

    if (v5 >= 0x10)
    {
      v65 = v5 & 0xFFFFFFF0;
      v66 = vdupq_n_s16(v55);
      v67 = v33 + 1;
      v68 = v65;
      do
      {
        v67[-1] = v66;
        *v67 = v66;
        v67 += 2;
        v68 -= 16;
      }

      while (v68);
      if (v65 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
        v57 = (v33 + 2 * v65);
        v56 = v5 & 0xF;
        goto LABEL_82;
      }
    }

    else
    {
      v65 = 0;
    }

    v56 = v5 & 3;
    v57 = (v33 + 2 * (v5 & 0xFFFFFFFC));
    v69 = vdup_n_s16(v55);
    v70 = (v33 + 2 * v65);
    v71 = v65 - (v5 & 0xFFFFFFFC);
    do
    {
      *v70++ = v69;
      v71 += 4;
    }

    while (v71);
    if ((v5 & 0xFFFFFFFC) == v5)
    {
      return result;
    }

LABEL_82:
    v73 = v56 + 1;
    do
    {
      v57->i16[0] = v55;
      v57 = (v57 + 2);
      --v73;
    }

    while (v73 > 1);
    return result;
  }

  v6 = (*(v1 + 16) * v3);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = **(result + 8);
  if (v6 < 4)
  {
    v9 = (*(v1 + 16) * v3);
    v10 = v7;
    goto LABEL_78;
  }

  if (v6 >= 0x10)
  {
    v58 = v6 & 0xFFFFFFF0;
    v59 = vdupq_n_s16(v8);
    v60 = v7 + 1;
    v61 = v58;
    do
    {
      v60[-1] = v59;
      *v60 = v59;
      v60 += 2;
      v61 -= 16;
    }

    while (v61);
    if (v58 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v10 = (v7 + 2 * v58);
      v9 = v6 & 0xF;
LABEL_78:
      v72 = v9 + 1;
      do
      {
        v10->i16[0] = v8;
        v10 = (v10 + 2);
        --v72;
      }

      while (v72 > 1);
      return result;
    }
  }

  else
  {
    v58 = 0;
  }

  v9 = v6 & 3;
  v10 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v62 = vdup_n_s16(v8);
  v63 = (v7 + 2 * v58);
  v64 = v58 - (v6 & 0xFFFFFFFC);
  do
  {
    *v63++ = v62;
    v64 += 4;
  }

  while (v64);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_78;
  }

  return result;
}

void *sub_271575CAC(void *result, int16x4_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3 != 1)
  {
    v10 = *(v2 + 8);
    v11 = *(v2 + 12);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    v13 = result[1];
    v14 = v10 - 1;
    v15 = *v2;
    v16 = 2 * v3;
    v17 = v11 - 1;
    if (v17)
    {
      v18 = *(v2 + 20);
      v19 = *v13;
      if (v14)
      {
        v20 = 0;
        v21 = 2 * v18;
        do
        {
          v22 = v15;
          v23 = v14;
          do
          {
            v22->i16[0] = v19;
            v22 = (v22 + v16);
            --v23;
          }

          while (v23);
          v19 = *v13;
          v22->i16[0] = *v13;
          v15 = (v15 + v21);
          ++v20;
        }

        while (v20 != v17);
        goto LABEL_48;
      }

      do
      {
        v15->i16[0] = v19;
        v15 = (v15 + 2 * v18);
        --v17;
      }

      while (v17);
    }

    if (!v14)
    {
LABEL_49:
      v15->i16[0] = *v13;
      return result;
    }

    v19 = *v13;
    do
    {
LABEL_48:
      v15->i16[0] = v19;
      v15 = (v15 + v16);
      --v14;
    }

    while (v14);
    goto LABEL_49;
  }

  v4 = *(v2 + 20);
  v5 = *(v2 + 8);
  if (v4 != v5)
  {
    v24 = *(v2 + 12);
    if (v5)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v26 = result[1];
    v27 = *v2;
    v28 = v24 - 1;
    if (v28)
    {
      v29 = 0;
      result = (v5 & 3);
      v30 = v27 + 1;
      v31 = 2 * v4;
      do
      {
        a2.i16[0] = *v26;
        v32 = v5;
        v33 = v27;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v34 = 0;
LABEL_31:
            v33 = (v27 + 2 * (v5 & 0xFFFFFFFC));
            v38 = vdup_lane_s16(a2, 0);
            v39 = 2 * v34;
            v40 = v34 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v27->i8[v39] = v38;
              v39 += 8;
              v40 += 4;
            }

            while (v40);
            v32 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v35 = vdupq_lane_s16(a2, 0);
          v36 = v5 & 0xFFFFFFF0;
          v37 = v30;
          do
          {
            v37[-1] = v35;
            *v37 = v35;
            v37 += 2;
            v36 -= 16;
          }

          while (v36);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_23;
          }

          v34 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_31;
          }

          v33 = (v27 + 2 * (v5 & 0xFFFFFFF0));
          v32 = v5 & 0xF;
        }

LABEL_36:
        v41 = v32 + 1;
        do
        {
          v33->i16[0] = a2.i16[0];
          v33 = (v33 + 2);
          --v41;
        }

        while (v41 > 1);
LABEL_23:
        v27 = (v27 + v31);
        ++v29;
        v30 = (v30 + v31);
      }

      while (v29 != v28);
    }

    a2.i16[0] = *v26;
    v42 = v5 - (v5 != 0) + 1;
    if (v42 < 4)
    {
      v43 = v27;
      goto LABEL_71;
    }

    if (v42 >= 0x10)
    {
      v45 = v42 & 0xFFFFFFFFFFFFFFF0;
      v52 = vdupq_lane_s16(a2, 0);
      v53 = v27 + 1;
      v54 = v42 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v53[-1] = v52;
        *v53 = v52;
        v53 += 2;
        v54 -= 16;
      }

      while (v54);
      if (v42 == v45)
      {
        return result;
      }

      if ((v42 & 0xC) == 0)
      {
        v43 = (v27 + 2 * v45);
        v5 -= v45;
        goto LABEL_71;
      }
    }

    else
    {
      v45 = 0;
    }

    v5 -= v42 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v27 + 2 * (v42 & 0xFFFFFFFFFFFFFFFCLL));
    v55 = vdup_lane_s16(a2, 0);
    v56 = (v27 + 2 * v45);
    v57 = v45 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v56++ = v55;
      v57 += 4;
    }

    while (v57);
    if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_71:
    v59 = v5 + 1;
    do
    {
      v43->i16[0] = a2.i16[0];
      v43 = (v43 + 2);
      --v59;
    }

    while (v59 > 1);
    return result;
  }

  v6 = (*(v2 + 12) * v4);
  if (!v6)
  {
    return result;
  }

  v7 = *v2;
  a2.i16[0] = *result[1];
  if (v6 < 4)
  {
    v8 = (*(v2 + 12) * v4);
    v9 = *v2;
    goto LABEL_67;
  }

  if (v6 >= 0x10)
  {
    v44 = v6 & 0xFFFFFFF0;
    v46 = vdupq_lane_s16(a2, 0);
    v47 = v7 + 1;
    v48 = v44;
    do
    {
      v47[-1] = v46;
      *v47 = v46;
      v47 += 2;
      v48 -= 16;
    }

    while (v48);
    if (v44 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v9 = (v7 + 2 * v44);
      v8 = v6 & 0xF;
LABEL_67:
      v58 = v8 + 1;
      do
      {
        v9->i16[0] = a2.i16[0];
        v9 = (v9 + 2);
        --v58;
      }

      while (v58 > 1);
      return result;
    }
  }

  else
  {
    v44 = 0;
  }

  v8 = v6 & 3;
  v9 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v49 = vdup_lane_s16(a2, 0);
  v50 = (v7 + 2 * v44);
  v51 = v44 - (v6 & 0xFFFFFFFC);
  do
  {
    *v50++ = v49;
    v51 += 4;
  }

  while (v51);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_67;
  }

  return result;
}

__int16 sub_271575FE8@<H0>(void *a1@<X0>, int16x4_t a2@<D0>)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v12 = *(v2 + 12);
    v13 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || v13 == 0)
    {
      return a2.i16[0];
    }

    v16 = a1[1];
    v17 = v12 - 1;
    v18 = *v2;
    v19 = 2 * *(v2 + 24);
    v20 = v13 - 1;
    if (v20)
    {
      v21 = *(v2 + 28);
      v22 = *v16;
      if (v17)
      {
        v23 = 0;
        v24 = &v18->i16[1];
        do
        {
          v25 = v24;
          v26 = v17;
          do
          {
            *(v25 - 1) = v22;
            v22 = *v16;
            *v25 = *v16;
            v25 = (v25 + v19);
            --v26;
          }

          while (v26);
          *(v25 - 1) = v22;
          v22 = *v16;
          *v25 = *v16;
          v18 = (v18 + 2 * v21);
          ++v23;
          v24 += v21;
        }

        while (v23 != v20);
        goto LABEL_60;
      }

      v52 = 2 * v21;
      do
      {
        v18->i16[0] = v22;
        v22 = *v16;
        v18->i16[1] = *v16;
        v18 = (v18 + v52);
        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = *v16;
    }

    if (!v17)
    {
LABEL_61:
      v18->i16[0] = v22;
      a2.i16[0] = *v16;
      v18->i16[1] = *v16;
      return a2.i16[0];
    }

    do
    {
LABEL_60:
      v18->i16[0] = v22;
      v22 = *v16;
      v18->i16[1] = *v16;
      v18 = (v18 + v19);
      --v17;
    }

    while (v17);
    goto LABEL_61;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    v27 = a1[1];
    v73 = 0;
    v72 = v4;
    v74[0] = &v73;
    v74[1] = &v72;
    v74[2] = v27;
    v29 = *(v2 + 12);
    v28 = *(v2 + 16);
    if (v4)
    {
      v30 = v29 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30 && v28 != 0)
    {
      v75[0] = 0;
      v75[1] = v4 - 1;
      v75[2] = 1;
      v75[3] = v29 - 1;
      v75[4] = v3;
      v75[5] = v28 - 1;
      v75[6] = *(v2 + 28);
      v32 = *v2;
      v76[0] = 0;
      v76[1] = 0;
      sub_271576400(v75, v76, v74, v32, a2);
    }

    return a2.i16[0];
  }

  v5 = *(v2 + 28);
  v6 = *(v2 + 12);
  v7 = (v6 * v3);
  if (v5 != v7)
  {
    v33 = *(v2 + 16);
    if (v3)
    {
      v34 = v6 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34 || v33 == 0)
    {
      return a2.i16[0];
    }

    v36 = a1[1];
    v37 = *v2;
    v38 = v33 - 1;
    if (v38)
    {
      if (!v7)
      {
        return a2.i16[0];
      }

      v39 = 0;
      v40 = v37 + 1;
      v41 = 2 * v5;
      do
      {
        a2.i16[0] = *v36;
        v42 = v7;
        v43 = v37;
        if (v7 >= 4)
        {
          if (v7 < 0x10)
          {
            v44 = 0;
LABEL_48:
            v43 = (v37 + 2 * (v7 & 0xFFFFFFFC));
            v48 = vdup_lane_s16(a2, 0);
            v49 = 2 * v44;
            v50 = v44 - (v7 & 0xFFFFFFFC);
            do
            {
              *&v37->i8[v49] = v48;
              v49 += 8;
              v50 += 4;
            }

            while (v50);
            v42 = v7 & 3;
            if ((v7 & 0xFFFFFFFC) == v7)
            {
              goto LABEL_40;
            }

            goto LABEL_53;
          }

          v45 = vdupq_lane_s16(a2, 0);
          v46 = v7 & 0xFFFFFFF0;
          v47 = v40;
          do
          {
            v47[-1] = v45;
            *v47 = v45;
            v47 += 2;
            v46 -= 16;
          }

          while (v46);
          if ((v7 & 0xFFFFFFF0) == v7)
          {
            goto LABEL_40;
          }

          v44 = v7 & 0xFFFFFFF0;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_48;
          }

          v43 = (v37 + 2 * (v7 & 0xFFFFFFF0));
          v42 = v7 & 0xF;
        }

LABEL_53:
        v51 = v42 + 1;
        do
        {
          v43->i16[0] = a2.i16[0];
          v43 = (v43 + 2);
          --v51;
        }

        while (v51 > 1);
LABEL_40:
        v37 = (v37 + v41);
        ++v39;
        v40 = (v40 + v41);
      }

      while (v39 != v38);
    }

    if (!v7)
    {
      return a2.i16[0];
    }

    a2.i16[0] = *v36;
    if (v7 < 4)
    {
      v53 = v7;
      v54 = v37;
      goto LABEL_90;
    }

    if (v7 >= 0x10)
    {
      v62 = v7 & 0xFFFFFFF0;
      v63 = vdupq_lane_s16(a2, 0);
      v64 = v37 + 1;
      v65 = v62;
      do
      {
        v64[-1] = v63;
        *v64 = v63;
        v64 += 2;
        v65 -= 16;
      }

      while (v65);
      if (v62 == v7)
      {
        return a2.i16[0];
      }

      if ((v7 & 0xC) == 0)
      {
        v54 = (v37 + 2 * v62);
        v53 = v7 & 0xF;
        goto LABEL_90;
      }
    }

    else
    {
      v62 = 0;
    }

    v53 = v7 & 3;
    v54 = (v37 + 2 * (v7 & 0xFFFFFFFC));
    v66 = vdup_lane_s16(a2, 0);
    v67 = (v37 + 2 * v62);
    v68 = v62 - (v7 & 0xFFFFFFFC);
    do
    {
      *v67++ = v66;
      v68 += 4;
    }

    while (v68);
    if ((v7 & 0xFFFFFFFC) == v7)
    {
      return a2.i16[0];
    }

LABEL_90:
    v70 = v53 + 1;
    do
    {
      v54->i16[0] = a2.i16[0];
      v54 = (v54 + 2);
      --v70;
    }

    while (v70 > 1);
    return a2.i16[0];
  }

  v8 = (*(v2 + 16) * v5);
  if (!v8)
  {
    return a2.i16[0];
  }

  v9 = *v2;
  a2.i16[0] = *a1[1];
  if (v8 < 4)
  {
    v10 = (*(v2 + 16) * v5);
    v11 = v9;
    goto LABEL_86;
  }

  if (v8 >= 0x10)
  {
    v55 = v8 & 0xFFFFFFF0;
    v56 = vdupq_lane_s16(a2, 0);
    v57 = v9 + 1;
    v58 = v55;
    do
    {
      v57[-1] = v56;
      *v57 = v56;
      v57 += 2;
      v58 -= 16;
    }

    while (v58);
    if (v55 == v8)
    {
      return a2.i16[0];
    }

    if ((v8 & 0xC) == 0)
    {
      v11 = (v9 + 2 * v55);
      v10 = v8 & 0xF;
LABEL_86:
      v69 = v10 + 1;
      do
      {
        v11->i16[0] = a2.i16[0];
        v11 = (v11 + 2);
        --v69;
      }

      while (v69 > 1);
      return a2.i16[0];
    }
  }

  else
  {
    v55 = 0;
  }

  v10 = v8 & 3;
  v11 = (v9 + 2 * (v8 & 0xFFFFFFFC));
  v59 = vdup_lane_s16(a2, 0);
  v60 = (v9 + 2 * v55);
  v61 = v55 - (v8 & 0xFFFFFFFC);
  do
  {
    *v60++ = v59;
    v61 += 4;
  }

  while (v61);
  if ((v8 & 0xFFFFFFFC) != v8)
  {
    goto LABEL_86;
  }

  return a2.i16[0];
}

_DWORD *sub_271576400(_DWORD *result, int16x8_t **a2, uint64_t a3, int16x8_t *a4, int16x4_t a5)
{
  if (result[5])
  {
    for (i = 0; i < result[5]; ++i)
    {
      *a2 = a4;
      v6 = result[3];
      v7 = *(a3 + 8);
      if (!v6)
      {
        v9 = a4;
        *a2 = a4;
        v22 = *v7;
        if (v22 >= 1)
        {
          goto LABEL_30;
        }

        goto LABEL_3;
      }

      if (*v7 < 1)
      {
        v9 = (a4 + (2 * (v6 - 1) + 2) * result[4]);
        *a2 = v9;
        v22 = *v7;
        if (v22 < 1)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }

      v8 = 0;
      v9 = a4;
      do
      {
        *a2 = v9;
        v10 = **(a3 + 8);
        if (v10 >= 1)
        {
          a5.i16[0] = **(a3 + 16);
          v11 = **(a3 + 8);
          v12 = v9;
          if (v10 < 4)
          {
            goto LABEL_22;
          }

          if (v10 >= 0x10)
          {
            v13 = v10 & 0x7FFFFFFFFFFFFFF0;
            v14 = vdupq_lane_s16(a5, 0);
            v15 = v9 + 1;
            v16 = v10 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v15[-1] = v14;
              *v15 = v14;
              v15 += 2;
              v16 -= 16;
            }

            while (v16);
            if (v10 != v13)
            {
              if ((v10 & 0xC) != 0)
              {
                goto LABEL_17;
              }

              v12 = (v9 + 2 * v13);
              v11 = v10 & 0xF;
LABEL_22:
              v20 = v11 + 1;
              do
              {
                v12->i16[0] = a5.i16[0];
                v12 = (v12 + 2);
                --v20;
              }

              while (v20 > 1);
            }
          }

          else
          {
            v13 = 0;
LABEL_17:
            v11 = v10 & 3;
            v12 = (v9 + 2 * (v10 & 0x7FFFFFFFFFFFFFFCLL));
            v17 = vdup_lane_s16(a5, 0);
            v18 = (v9 + 2 * v13);
            v19 = v13 - (v10 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              *v18++ = v17;
              v19 += 4;
            }

            while (v19);
            if (v10 != (v10 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_22;
            }
          }

          v6 = result[3];
        }

        v9 = (v9 + 2 * result[4]);
        ++v8;
      }

      while (v8 < v6);
      v21 = *(a3 + 8);
      *a2 = v9;
      v22 = *v21;
      if (v22 < 1)
      {
        goto LABEL_3;
      }

LABEL_30:
      a5.i16[0] = **(a3 + 16);
      if (v22 < 4)
      {
        v23 = v22;
        v24 = v9;
        goto LABEL_43;
      }

      if (v22 >= 0x10)
      {
        v25 = v22 & 0x7FFFFFFFFFFFFFF0;
        v26 = vdupq_lane_s16(a5, 0);
        v27 = v9 + 1;
        v28 = v22 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v27[-1] = v26;
          *v27 = v26;
          v27 += 2;
          v28 -= 16;
        }

        while (v28);
        if (v22 != v25)
        {
          if ((v22 & 0xC) == 0)
          {
            v24 = (v9 + 2 * v25);
            v23 = v22 & 0xF;
            goto LABEL_43;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v25 = 0;
LABEL_38:
        v23 = v22 & 3;
        v24 = (v9 + 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL));
        v29 = vdup_lane_s16(a5, 0);
        v30 = (v9 + 2 * v25);
        v31 = v25 - (v22 & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          *v30++ = v29;
          v31 += 4;
        }

        while (v31);
        if (v22 != (v22 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_43:
          v32 = v23 + 1;
          do
          {
            v24->i16[0] = a5.i16[0];
            v24 = (v24 + 2);
            --v32;
          }

          while (v32 > 1);
        }
      }

LABEL_3:
      a4 = (a4 + 2 * result[6]);
    }
  }

  *a2 = a4;
  v33 = result[3];
  if (v33)
  {
    if (**(a3 + 8) >= 1)
    {
      v34 = 0;
      while (1)
      {
        *a2 = a4;
        v35 = **(a3 + 8);
        if (v35 < 1)
        {
          goto LABEL_50;
        }

        a5.i16[0] = **(a3 + 16);
        v36 = **(a3 + 8);
        v37 = a4;
        if (v35 >= 4)
        {
          if (v35 < 0x10)
          {
            v38 = 0;
LABEL_59:
            v36 = v35 & 3;
            v37 = (a4 + 2 * (v35 & 0x7FFFFFFFFFFFFFFCLL));
            v42 = vdup_lane_s16(a5, 0);
            v43 = (a4 + 2 * v38);
            v44 = v38 - (v35 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              *v43++ = v42;
              v44 += 4;
            }

            while (v44);
            if (v35 == (v35 & 0x7FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_49;
            }

            goto LABEL_64;
          }

          v38 = v35 & 0x7FFFFFFFFFFFFFF0;
          v39 = vdupq_lane_s16(a5, 0);
          v40 = a4 + 1;
          v41 = v35 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v40[-1] = v39;
            *v40 = v39;
            v40 += 2;
            v41 -= 16;
          }

          while (v41);
          if (v35 == v38)
          {
            goto LABEL_49;
          }

          if ((v35 & 0xC) != 0)
          {
            goto LABEL_59;
          }

          v37 = (a4 + 2 * v38);
          v36 = v35 & 0xF;
        }

LABEL_64:
        v45 = v36 + 1;
        do
        {
          v37->i16[0] = a5.i16[0];
          v37 = (v37 + 2);
          --v45;
        }

        while (v45 > 1);
LABEL_49:
        v33 = result[3];
LABEL_50:
        a4 = (a4 + 2 * result[4]);
        if (++v34 >= v33)
        {
          goto LABEL_68;
        }
      }
    }

    a4 = (a4 + (2 * (v33 - 1) + 2) * result[4]);
  }

LABEL_68:
  *a2 = a4;
  v46 = **(a3 + 8);
  if (v46 >= 1)
  {
    a5.i16[0] = **(a3 + 16);
    if (v46 < 4)
    {
      v47 = **(a3 + 8);
      v48 = a4;
      goto LABEL_82;
    }

    if (v46 >= 0x10)
    {
      v49 = v46 & 0x7FFFFFFFFFFFFFF0;
      v50 = vdupq_lane_s16(a5, 0);
      v51 = a4 + 1;
      v52 = v46 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v51[-1] = v50;
        *v51 = v50;
        v51 += 2;
        v52 -= 16;
      }

      while (v52);
      if (v46 == v49)
      {
        return result;
      }

      if ((v46 & 0xC) == 0)
      {
        v48 = (a4 + 2 * v49);
        v47 = v46 & 0xF;
LABEL_82:
        v56 = v47 + 1;
        do
        {
          v48->i16[0] = a5.i16[0];
          v48 = (v48 + 2);
          --v56;
        }

        while (v56 > 1);
        return result;
      }
    }

    else
    {
      v49 = 0;
    }

    v47 = v46 & 3;
    v48 = (a4 + 2 * (v46 & 0x7FFFFFFFFFFFFFFCLL));
    v53 = vdup_lane_s16(a5, 0);
    v54 = (a4 + 2 * v49);
    v55 = v49 - (v46 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      *v54++ = v53;
      v55 += 4;
    }

    while (v55);
    if (v46 != (v46 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_82;
    }
  }

  return result;
}

void sub_2715767EC(uint64_t *a1, int16x4_t a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v59[0] = a1[1];
    if (*(v2 + 8))
    {
      v12 = *(v2 + 12) == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 && *(v2 + 16) != 0)
    {
      v60 = v59;
      sub_271576B58(&v60, v2);
    }

    return;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    v14 = a1[1];
    v58 = 0;
    v57 = v4;
    v59[0] = &v58;
    v59[1] = &v57;
    v59[2] = v14;
    v16 = *(v2 + 12);
    v15 = *(v2 + 16);
    if (v4)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17 && v15 != 0)
    {
      LODWORD(v60) = 0;
      HIDWORD(v60) = v4 - 1;
      v61 = 1;
      v62 = v16 - 1;
      v63 = v3;
      v64 = v15 - 1;
      v65 = *(v2 + 28);
      v19 = *v2;
      v66[0] = 0;
      v66[1] = 0;
      sub_271576400(&v60, v66, v59, v19, a2);
    }

    return;
  }

  v5 = *(v2 + 28);
  v6 = *(v2 + 12);
  v7 = (v6 * v3);
  if (v5 != v7)
  {
    v20 = *(v2 + 16);
    if (v3)
    {
      v21 = v6 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21 || v20 == 0)
    {
      return;
    }

    v23 = a1[1];
    v24 = *v2;
    v25 = v20 - 1;
    if (v25)
    {
      if (!v7)
      {
        return;
      }

      v26 = 0;
      v27 = v24 + 1;
      v28 = 2 * v5;
      do
      {
        a2.i16[0] = *v23;
        v29 = v7;
        v30 = v24;
        if (v7 >= 4)
        {
          if (v7 < 0x10)
          {
            v31 = 0;
LABEL_42:
            v30 = (v24 + 2 * (v7 & 0xFFFFFFFC));
            v35 = vdup_lane_s16(a2, 0);
            v36 = 2 * v31;
            v37 = v31 - (v7 & 0xFFFFFFFC);
            do
            {
              *&v24->i8[v36] = v35;
              v36 += 8;
              v37 += 4;
            }

            while (v37);
            v29 = v7 & 3;
            if ((v7 & 0xFFFFFFFC) == v7)
            {
              goto LABEL_34;
            }

            goto LABEL_47;
          }

          v32 = vdupq_lane_s16(a2, 0);
          v33 = v7 & 0xFFFFFFF0;
          v34 = v27;
          do
          {
            v34[-1] = v32;
            *v34 = v32;
            v34 += 2;
            v33 -= 16;
          }

          while (v33);
          if ((v7 & 0xFFFFFFF0) == v7)
          {
            goto LABEL_34;
          }

          v31 = v7 & 0xFFFFFFF0;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_42;
          }

          v30 = (v24 + 2 * (v7 & 0xFFFFFFF0));
          v29 = v7 & 0xF;
        }

LABEL_47:
        v38 = v29 + 1;
        do
        {
          v30->i16[0] = a2.i16[0];
          v30 = (v30 + 2);
          --v38;
        }

        while (v38 > 1);
LABEL_34:
        v24 = (v24 + v28);
        ++v26;
        v27 = (v27 + v28);
      }

      while (v26 != v25);
    }

    if (!v7)
    {
      return;
    }

    a2.i16[0] = *v23;
    if (v7 < 4)
    {
      v39 = v7;
      v40 = v24;
      goto LABEL_78;
    }

    if (v7 >= 0x10)
    {
      v48 = v7 & 0xFFFFFFF0;
      v49 = vdupq_lane_s16(a2, 0);
      v50 = v24 + 1;
      v51 = v48;
      do
      {
        v50[-1] = v49;
        *v50 = v49;
        v50 += 2;
        v51 -= 16;
      }

      while (v51);
      if (v48 == v7)
      {
        return;
      }

      if ((v7 & 0xC) == 0)
      {
        v40 = (v24 + 2 * v48);
        v39 = v7 & 0xF;
        goto LABEL_78;
      }
    }

    else
    {
      v48 = 0;
    }

    v39 = v7 & 3;
    v40 = (v24 + 2 * (v7 & 0xFFFFFFFC));
    v52 = vdup_lane_s16(a2, 0);
    v53 = (v24 + 2 * v48);
    v54 = v48 - (v7 & 0xFFFFFFFC);
    do
    {
      *v53++ = v52;
      v54 += 4;
    }

    while (v54);
    if ((v7 & 0xFFFFFFFC) == v7)
    {
      return;
    }

LABEL_78:
    v56 = v39 + 1;
    do
    {
      v40->i16[0] = a2.i16[0];
      v40 = (v40 + 2);
      --v56;
    }

    while (v56 > 1);
    return;
  }

  v8 = (*(v2 + 16) * v5);
  if (!v8)
  {
    return;
  }

  v9 = *v2;
  a2.i16[0] = *a1[1];
  if (v8 < 4)
  {
    v10 = (*(v2 + 16) * v5);
    v11 = *v2;
    goto LABEL_74;
  }

  if (v8 >= 0x10)
  {
    v41 = v8 & 0xFFFFFFF0;
    v42 = vdupq_lane_s16(a2, 0);
    v43 = v9 + 1;
    v44 = v41;
    do
    {
      v43[-1] = v42;
      *v43 = v42;
      v43 += 2;
      v44 -= 16;
    }

    while (v44);
    if (v41 == v8)
    {
      return;
    }

    if ((v8 & 0xC) == 0)
    {
      v11 = (v9 + 2 * v41);
      v10 = v8 & 0xF;
LABEL_74:
      v55 = v10 + 1;
      do
      {
        v11->i16[0] = a2.i16[0];
        v11 = (v11 + 2);
        --v55;
      }

      while (v55 > 1);
      return;
    }
  }

  else
  {
    v41 = 0;
  }

  v10 = v8 & 3;
  v11 = (v9 + 2 * (v8 & 0xFFFFFFFC));
  v45 = vdup_lane_s16(a2, 0);
  v46 = (v9 + 2 * v41);
  v47 = v41 - (v8 & 0xFFFFFFFC);
  do
  {
    *v46++ = v45;
    v47 += 4;
  }

  while (v47);
  if ((v8 & 0xFFFFFFFC) != v8)
  {
    goto LABEL_74;
  }
}