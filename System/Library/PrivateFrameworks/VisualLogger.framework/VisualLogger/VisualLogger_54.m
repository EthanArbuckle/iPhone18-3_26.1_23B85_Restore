void sub_271556EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271556F44(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
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
    v10 = __PAIR64__(DWORD1(v20), 2);
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
  sub_271555B70(a2, &v20);
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

void sub_2715571D8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271555F00((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27155758C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715575E4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((a2 - 1) <= 0x25)
    {
      v5 = (dword_27189ABD0[a2 - 1] | *&a8_27[4 * (a2 - 1)]);
    }

    operator new();
  }

  if (result == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }

  return result;
}

void sub_271557A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_271557A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271557AA4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_271551BA4(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_271557D18(a2, &v12);
      sub_271551BA4(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
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
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_271551BA4(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_271557CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271557CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271557D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271557D18(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_271557E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int16 a5)
{
  v6 = a2;
  v13 = a5;
  *a1 = &unk_288115870;
  *(a1 + 8) = a2;
  sub_2715575E4(a2, a3, a4, a1 + 16);
  if (*(a4 + 24))
  {
    v8 = *(a4 + 28) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = *(a4 + 16);
    *(a1 + 80) = *(a4 + 32);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_271557AA4(v6, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_271558950(a1, v15);
    sub_271558D5C(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_2715767EC(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_271557F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_271557FC8(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_271557FC8(uint64_t a1)
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

uint64_t sub_271558040(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_288115870;
  *(a1 + 8) = 0;
  sub_2715575E4(0, 31, a2, a1 + 16);
  if (*(a2 + 24))
  {
    v6 = *(a2 + 28) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = *(a2 + 16);
    *(a1 + 80) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_271557AA4(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271558950(a1, v13);
    sub_271558D5C(a1, v12);
    v14[0] = v11;
    v14[1] = v12;
    sub_2712A6EAC(v14);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271558148(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 72));
  sub_271557FC8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271558178(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115870;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v28) = 4;
  HIDWORD(v28) = v18;
  *(a1 + 48) = v28;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x400000001;
  *(a1 + 68) = v17 >> 1;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 1) << 32) | 4;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_49;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_49;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

LABEL_49:
  v26 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2715586A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_271558950(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271557D18((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_271558D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271558D5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_271558FF0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271557D18((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_2715593A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715593FC@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v4 = a3[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((a2 - 1) <= 0x25)
    {
      v5 = (dword_27189ABD0[a2 - 1] | *&a8_27[4 * (a2 - 1)]);
    }

    operator new();
  }

  if (result == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }

  return result;
}

void sub_271559880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_2715598A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715598BC(int a1, uint64_t a2, double a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (*(a2 + 24) != 1)
        {
LABEL_26:
          sub_2711308D4();
        }

        goto LABEL_24;
      }

      return *&a3;
    }

    if (*(a2 + 24))
    {
      goto LABEL_26;
    }

    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v11 = v5;
    v12 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = v11;
    }

    v10 = &unk_2881152B0;
    if (v5)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      if (v8)
      {
        sub_271581FB4(v11);
      }
    }

    sub_271559B00(&v13, &v10);
    v9 = *&v14;
    sub_27157D2FC(&v10);
    return *&v9;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return *&a3;
    }

    if (*(a2 + 24) != 3)
    {
      goto LABEL_26;
    }

    sub_271559DF8(a2, &v10);
    sub_271559B00(&v13, &v10);
    a3 = *&v14;
    v10 = &unk_288115A20;
    v3 = v12;
    if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return *&a3;
    }

    v9 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return *&v9;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_271559B00(&v13, a2);
  return v14;
}

void sub_271559AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271559AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271559AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271559B00(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = v12;
  v16 = v12 | (v13 << 32);
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  *a1 = v11;
  a1[1] = v18;
  a1[2] = ((result >> 2) << 32) | 1;
  if (HIDWORD(v18) * (result >> 2) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_27:
        v24 = qword_28087C420;
        v23 = *algn_28087C428;

        return v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_32;
      }
    }

    do
    {
      v22 = *v19;
      v21 = *(v19 + 8);
      v19 += 16;
      v22(v21, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_27;
    }

LABEL_32:
    abort();
  }

  return result;
}

void sub_271559DF8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_271559F7C(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, float a5)
{
  v6 = a2;
  v13 = a5;
  *a1 = &unk_2881157E0;
  *(a1 + 8) = a2;
  sub_2715593FC(a2, a3, a4, a1 + 16);
  if (*a4)
  {
    v9 = a4[1] == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(a1 + 48) = *a4;
  }

  else
  {
    *(a1 + 48) = sub_2715598BC(v6, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_27154608C(a1))
  {
    sub_27155A9B4(a1, v15);
    sub_27155ADC0(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271576D2C(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_27155A070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27157D548(va);
  sub_27155A0A0(v6);
  _Unwind_Resume(a1);
}

uint64_t sub_27155A0A0(uint64_t a1)
{
  *a1 = &unk_2881157E0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_27155A118(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_2881157E0;
  *(a1 + 8) = 0;
  sub_2715593FC(0, 4, a2, a1 + 16);
  if (*a2)
  {
    v7 = a2[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a1 + 48) = *a2;
  }

  else
  {
    *(a1 + 48) = sub_2715598BC(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_27154608C(a1))
  {
    sub_27155A9B4(a1, v13);
    sub_27155ADC0(a1, v12);
    sub_27125505C(&v10, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155A210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_27155A0A0(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_27155A240(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881157E0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  *(a1 + 48) = v15 | (v16 << 32);
  *(a1 + 56) = ((v17 >> 2) << 32) | 1;
  v18 = *(a2 + 8);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_33;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v20 = *(a2 + 8);
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_39:
      v22 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v22 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_41;
    }
  }

  v20 = *(a2 + 8);
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_28:
  v22 = *v20;
  v21 = v20[1];
  if (!v21 || (atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 48))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (*(a1 + 48))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v22)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v23 = qword_28087C408, v24 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        return a1;
      }
    }

    else
    {
      v23 = qword_28087C408;
      v24 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v23)(*(v23 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v23 += 16;
    }

    while (v23 != v24);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

  return a1;
}

void sub_27155A70C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27155A9B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271559DF8((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_27155AD68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155ADC0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271559B00(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_27155B100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155B114(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_271559DF8((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27155B4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27155B520@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((a2 - 1) <= 0x25)
    {
      v5 = (dword_27189ABD0[a2 - 1] | *&a8_27[4 * (a2 - 1)]);
    }

    operator new();
  }

  if (result == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }

  return result;
}

void sub_27155B9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_27155B9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27155B9E0(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_27155BC54(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_27155BFE4(a2, &v12);
      sub_27155BC54(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
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
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_27155BC54(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_27155BC18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27155BC2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27155BC40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27155BC54(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_33;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = result >> 2;
  v16 = v12;
  v17 = v12 | (v13 << 32);
  if (v13)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  HIDWORD(v28) = v19;
  LODWORD(v28) = 2;
  *a1 = v11;
  *(a1 + 8) = v28;
  *(a1 + 16) = HIDWORD(v19);
  *(a1 + 20) = 0x200000001;
  *(a1 + 28) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = ((result >> 2) << 32) | 2;
  if (HIDWORD(v19) * v15 != -1)
  {
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v21 = qword_28087C408;
    v22 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (byte_28087C438 == 1)
  {
    v21 = qword_28087C408;
    v22 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_26:
        v24 = *v21;
        v23 = *(v21 + 8);
        v21 += 16;
        v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v21 != v22);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_33:
      abort();
    }
  }

LABEL_28:
  v26 = qword_28087C420;
  v25 = *algn_28087C428;
  v27 = *MEMORY[0x277D85DE8];

  return v26(v25, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

void sub_27155BFE4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27155C168(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v6 = a2;
  v13 = a5;
  *a1 = &unk_288115750;
  *(a1 + 8) = a2;
  sub_27155B520(a2, a3, a4, a1 + 16);
  if (*(a4 + 24))
  {
    v8 = *(a4 + 28) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = *(a4 + 16);
    *(a1 + 80) = *(a4 + 32);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_27155B9E0(v6, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_27155CC14(a1, v15);
    sub_27155D020(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271576F84(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_27155C264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_27155C294(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_27155C294(uint64_t a1)
{
  *a1 = &unk_288115750;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_27155C30C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_288115750;
  *(a1 + 8) = 0;
  sub_27155B520(0, 8, a2, a1 + 16);
  if (*(a2 + 24))
  {
    v6 = *(a2 + 28) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = *(a2 + 16);
    *(a1 + 80) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_27155B9E0(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_27155CC14(a1, v13);
    sub_27155D020(a1, v12);
    sub_2712A2500(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155C40C(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_27155C294(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27155C43C(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115750;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v28) = 2;
  HIDWORD(v28) = v18;
  *(a1 + 48) = v28;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x200000001;
  *(a1 + 68) = v17 >> 2;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 2) << 32) | 2;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_49;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_49;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

LABEL_49:
  v26 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27155C96C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27155CC14(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27155BFE4((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_27155CFC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155D020(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
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
    v10 = __PAIR64__(DWORD1(v20), 2);
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
  sub_27155BC54(a2, &v20);
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

void sub_27155D2B4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27155BFE4((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27155D668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27155D6C0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 24))
  {
    v4 = *(a3 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((a2 - 1) <= 0x25)
    {
      v5 = (dword_27189ABD0[a2 - 1] | *&a8_27[4 * (a2 - 1)]);
    }

    operator new();
  }

  if (result == 3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 3;
  }

  else
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = &unk_288115A20;
    *(a4 + 24) = 0;
  }

  return result;
}

void sub_27155DB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_27155DB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27155DB80(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (*(a2 + 24) != 2)
      {
        goto LABEL_25;
      }

LABEL_23:
      sub_27155DDF4(v15, a2);
      v11 = v17;
      *a3 = v16;
      *(a3 + 16) = v11;
      *(a3 + 32) = v18;
      return;
    }

    if (a1 == 3)
    {
      if (*(a2 + 24) != 3)
      {
        goto LABEL_25;
      }

      sub_27155E184(a2, &v12);
      sub_27155DDF4(v15, &v12);
      v4 = v17;
      *a3 = v16;
      *(a3 + 16) = v4;
      *(a3 + 32) = v18;
      v12 = &unk_288115A20;
      v5 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (*(a2 + 24) != 1)
      {
LABEL_25:
        sub_2711308D4();
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_25;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v13 = v6;
    v14 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v13;
    }

    v12 = &unk_2881152B0;
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
        }
      }

      if (v9)
      {
        sub_271581FB4(v13);
      }
    }

    sub_27155DDF4(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_27155DDB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27155DDCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27155DDE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27155DDF4(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 774, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_33;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = sub_27157CE68(a2, 0);
  v12 = sub_27157F398(a2);
  v13 = sub_27157F5D4(a2);
  result = sub_27157F810(a2);
  v15 = result >> 2;
  v16 = v12;
  v17 = v12 | (v13 << 32);
  if (v13)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  HIDWORD(v28) = v19;
  LODWORD(v28) = 4;
  *a1 = v11;
  *(a1 + 8) = v28;
  *(a1 + 16) = HIDWORD(v19);
  *(a1 + 20) = 0x400000001;
  *(a1 + 28) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = ((result >> 2) << 32) | 4;
  if (HIDWORD(v19) * v15 != -1)
  {
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v21 = qword_28087C408;
    v22 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (byte_28087C438 == 1)
  {
    v21 = qword_28087C408;
    v22 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_26:
        v24 = *v21;
        v23 = *(v21 + 8);
        v21 += 16;
        v24(v23, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v21 != v22);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_33:
      abort();
    }
  }

LABEL_28:
  v26 = qword_28087C420;
  v25 = *algn_28087C428;
  v27 = *MEMORY[0x277D85DE8];

  return v26(v25, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

void sub_27155E184(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0 && (v5 = *a1) != 0)
  {
    *a2 = &unk_288115A20;
    a2[1] = v5;
    a2[2] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a2[1] = 0;
    a2[2] = 0;
    *a2 = &unk_288115A20;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a2[1];
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  if (!v9)
  {
LABEL_13:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 223, "", 0, "Attempt to access an expired PixelBuffer. Note that an image buffer  created by an ImageView does not keep the buffer alive.", 0x7CuLL, sub_271852CA8);
    abort();
  }
}

uint64_t sub_27155E308(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  v6 = a2;
  v13 = a5;
  *a1 = &unk_2881156C0;
  *(a1 + 8) = a2;
  sub_27155D6C0(a2, a3, a4, a1 + 16);
  if (*(a4 + 24))
  {
    v8 = *(a4 + 28) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4;
    v10 = *(a4 + 16);
    *(a1 + 80) = *(a4 + 32);
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
  }

  else
  {
    sub_27155DB80(v6, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_27155EDB4(a1, v15);
    sub_27155F1C0(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271577500(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_27155E404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_27155E434(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_27155E434(uint64_t a1)
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

uint64_t sub_27155E4AC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_2881156C0;
  *(a1 + 8) = 0;
  sub_27155D6C0(0, 32, a2, a1 + 16);
  if (*(a2 + 24))
  {
    v6 = *(a2 + 28) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *a2;
    v8 = *(a2 + 16);
    *(a1 + 80) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
  }

  else
  {
    sub_27155DB80(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_27155EDB4(a1, v13);
    sub_27155F1C0(a1, v12);
    sub_271245B78(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155E5AC(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_27155E434(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27155E5DC(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881156C0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v4 = *(a2 + 8);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v4 = *(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = *(v4 + 4);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

LABEL_10:
  *(a1 + 8) = v8;
  *(a1 + 16) = &unk_288115A20;
  *(a1 + 24) = v4;
  v9 = *(a2 + 16);
  *(a1 + 32) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  v10 = *(a2 + 8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = *v10;
  v11 = v10[1];
  if (!v11 || (atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/include/Kit/CoreVideo/PixelBufferRef.h", 718, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "IsValid()", 9, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_23;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v15 = sub_27157F398(a2);
  v16 = sub_27157F5D4(a2);
  v17 = sub_27157F810(a2);
  v18 = v15 | (v16 << 32);
  LODWORD(v28) = 4;
  HIDWORD(v28) = v18;
  *(a1 + 48) = v28;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x400000001;
  *(a1 + 68) = v17 >> 2;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 2) << 32) | 4;
  v19 = *(a2 + 8);
  if (!v19)
  {
    v23 = 0;
    goto LABEL_33;
  }

  v20 = *(v19 + 8);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
      v21 = *(a2 + 8);
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_39:
      v23 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((v23 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_49;
      }

      goto LABEL_41;
    }
  }

  v21 = *(a2 + 8);
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_28:
  v23 = *v21;
  v22 = v21[1];
  if (!v22 || (atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_33:
    if (!*(a1 + 72))
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(a1 + 72))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v23)
  {
LABEL_41:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/CVImage.cpp", 114, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v24 = qword_28087C408, v25 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_48:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_49;
      }
    }

    else
    {
      v24 = qword_28087C408;
      v25 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_50;
      }
    }

    do
    {
      (*v24)(*(v24 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v24 += 16;
    }

    while (v24 != v25);
    if (byte_28087C430)
    {
      goto LABEL_48;
    }

LABEL_50:
    abort();
  }

LABEL_49:
  v26 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27155EB0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    if (v3 >= 2)
    {
LABEL_26:
      sub_2711308D4();
    }

    goto LABEL_10;
  }

  if (v3 == 2)
  {
LABEL_10:
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v14 = &unk_288115A20;
    v15 = v8;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_12;
  }

  if (v3 != 3)
  {
    goto LABEL_26;
  }

  if (!*(a1 + 24))
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = std::__shared_weak_count::lock(*(a1 + 24));
  if (!v5 || (v6 = *(a1 + 16)) == 0)
  {
LABEL_23:
    v15 = 0;
    v16 = 0;
    v14 = &unk_288115A20;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v14 = &unk_288115A20;
  v15 = v6;
  v16 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_24:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v5;
    (v5->__on_zero_shared)(v5, a2);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_12:
  sub_27157F1D8(&v14, &v17);
  v9 = v18;
  v18 = 0uLL;
  v10 = *(a2 + 16);
  *(a2 + 8) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v17 = &unk_288109288;
  v11 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14 = &unk_288115A20;
  v12 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_27155EDB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_2715820B8(a2[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27155E184((a1 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a2 = &unk_288115A20;
    a2[1] = v16;
    a2[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_2715820B8(a2[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *a2 = &unk_288115A20;
    a2[1] = v4;
    a2[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a2[1];
    }

    *a2 = &unk_288115290;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_2715820B8(a2[1]);
      }
    }
  }
}

void sub_27155F168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155F1C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_27155F454(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v12;
    a1[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v12)
    {
      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (v15)
      {
        sub_271581FB4(a1[1]);
      }
    }
  }

  else if (v3 == 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v8;
    a1[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v8)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  else if (v3)
  {
    if (v3 != 3)
    {
      sub_2711308D4();
    }

    sub_27155E184((a2 + 16), v21);
    v16 = v21[1];
    v17 = v22;
    *a1 = &unk_288115A20;
    a1[1] = v16;
    a1[2] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v16)
    {
      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (v19)
      {
        sub_271581FB4(a1[1]);
      }
    }

    v21[0] = &unk_288115A20;
    v20 = v22;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *a1 = &unk_288115A20;
    a1[1] = v4;
    a1[2] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[1];
    }

    *a1 = &unk_2881152B0;
    if (v4)
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }

      if (v7)
      {
LABEL_11:
        sub_271581FB4(a1[1]);
      }
    }
  }
}

void sub_27155F808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27155F860(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288116190;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_288115630;
  *(a1 + 8) = 0;
  sub_271544900(0, 1, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2881152B0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_271581FB4(v14);
    }
  }

LABEL_14:
  sub_271545004(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_27157D2FC(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_288116190;
  return a1;
}

void sub_27155F9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  sub_271545618(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_27155FA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  sub_271545618(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27155FA40(uint64_t a1)
{
  *a1 = &unk_288115630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27155FAB8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271545004(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_27155FDF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27155FE0C(void *a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_288115A20;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_288115A20;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271545004(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_288115A20;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271560160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271560188(uint64_t a1)
{
  sub_271546A24(v4, a1);
  sub_27155FE0C(&v3, a1);
  sub_27155FE0C(&v2, a1);
  operator new();
}

void sub_271560264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x2743BF050](v8, 0x10A3C40A1F8E8FFLL);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271560290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_2715602A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_2715602C4(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124AD0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 1);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v13);
    sub_27155FAB8(a1, &v23);
    sub_271253768(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_271546A24(v22, v6);
  sub_27155FE0C(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_288116190;
  if (HIDWORD(v21) <= 0x20)
  {
    v8 = 32;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_271545674(&v16, v25, &v23);
  *&v16 = &unk_288116190;
  sub_27157D2FC(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_2881337B0[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2881337F0[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_288115630;
  if (v15 != -1)
  {
    (off_2881337B0[v15])(&v23, v17);
  }

  return result;
}

void sub_271560518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271560554(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_27155FAB8(a1, &v7);
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

void sub_2715606C0(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_27155FE0C(&v7, a1);
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

uint64_t *sub_27156082C()
{
  if ((atomic_load_explicit(&qword_28087BA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA70))
  {
    sub_27157A8D8();
  }

  if (byte_28087BAF7 >= 0)
  {
    return &qword_28087BAE0;
  }

  else
  {
    return qword_28087BAE0;
  }
}

void sub_2715608FC(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_2715462C4(a1, &v2);
    operator new();
  }

  sub_271546A24(&v2, a1);
  operator new();
}

void sub_271560BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271560C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271560C74(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115F50;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_2881153F0;
  *(a1 + 8) = 0;
  sub_27154D224(0, 2, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2881152B0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_271581FB4(v14);
    }
  }

LABEL_14:
  sub_27154D928(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_27157D2FC(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_288115F50;
  return a1;
}

void sub_271560E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  sub_271545618(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_271560E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  sub_271545618(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271560E54(uint64_t a1)
{
  *a1 = &unk_2881153F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271560ECC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_27156120C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271561220(void *a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_288115A20;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_288115A20;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_288115A20;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271561574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27156159C(uint64_t a1)
{
  sub_27154EF3C(v4, a1);
  sub_271561220(&v3, a1);
  sub_271561220(&v2, a1);
  operator new();
}

void sub_271561678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x2743BF050](v8, 0x10A3C40A1F8E8FFLL);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_2715616A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_2715616B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_2715616D8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_288124A70, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 2);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v13);
    sub_271560ECC(a1, &v23);
    sub_271254000(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_27154EF3C(v22, v6);
  sub_271561220(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_288115F50;
  if (HIDWORD(v21) <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_27154DF40(&v16, v25, &v23);
  *&v16 = &unk_288115F50;
  sub_27157D2FC(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_2881337B0[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2881337F0[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_2881153F0;
  if (v15 != -1)
  {
    (off_2881337B0[v15])(&v23, v17);
  }

  return result;
}

void sub_27156192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271561968(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_271560ECC(a1, &v7);
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

void sub_271561AD4(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_271561220(&v7, a1);
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

uint64_t *sub_271561C40()
{
  if ((atomic_load_explicit(&qword_28087BA78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA78))
  {
    sub_27157A9DC();
  }

  if (byte_28087BB0F >= 0)
  {
    return &qword_28087BAF8;
  }

  else
  {
    return qword_28087BAF8;
  }
}

void sub_271561D10(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27154E7DC(a1, &v2);
    operator new();
  }

  sub_27154EF3C(&v2, a1);
  operator new();
}

void sub_271561FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271562014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271562088(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115C80;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_288115990;
  *(a1 + 8) = 0;
  sub_271553610(0, 3, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2881152B0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_271581FB4(v14);
    }
  }

LABEL_14:
  sub_27154D928(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_27157D2FC(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_288115C80;
  return a1;
}

void sub_27156221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  sub_271545618(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_271562238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  sub_271545618(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271562268(uint64_t a1)
{
  *a1 = &unk_288115990;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715622E0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271562620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271562634(void *a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_288115A20;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_288115A20;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_27154D928(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_288115A20;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271562988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_2715629B0(uint64_t a1)
{
  sub_271555030(v4, a1);
  sub_271562634(&v3, a1);
  sub_271562634(&v2, a1);
  operator new();
}

void sub_271562A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x2743BF050](v8, 0x10A3C40A1F8E8FFLL);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271562AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271562ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271562AEC(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881249F8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 3);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v13);
    sub_2715622E0(a1, &v23);
    *&result = sub_27123D99C(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_271555030(v22, v6);
  sub_271562634(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_288115C80;
  if (HIDWORD(v21) <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_271554034(&v16, v25, &v23);
  *&v16 = &unk_288115C80;
  sub_27157D2FC(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_2881337B0[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2881337F0[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_288115990;
  if (v15 != -1)
  {
    (off_2881337B0[v15])(&v23, v17);
  }

  return result;
}

void sub_271562D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271562D7C(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_2715622E0(a1, &v7);
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

void sub_271562EE8(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_271562634(&v7, a1);
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

uint64_t *sub_271563054()
{
  if ((atomic_load_explicit(&qword_28087BA80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA80))
  {
    sub_27157AAE0();
  }

  if (byte_28087BB27 >= 0)
  {
    return &qword_28087BB10;
  }

  else
  {
    return qword_28087BB10;
  }
}

void sub_271563124(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_2715548D0(a1, &v2);
    operator new();
  }

  sub_271555030(&v2, a1);
  operator new();
}

void sub_2715633EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271563428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156349C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115BF0;
  v3 = *(a2 + 8);
  LODWORD(v4) = *(a2 + 12);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v4;
  }

  *&v12 = *a2;
  *(&v12 + 1) = v3 | (v4 << 32);
  *a1 = &unk_2881157E0;
  *(a1 + 8) = 0;
  sub_2715593FC(0, 4, &v12, a1 + 16);
  if (!v12 || !DWORD1(v12))
  {
    *(a1 + 48) = v12;
    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    sub_2711308D4();
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = v14;
  }

  v13 = &unk_2881152B0;
  if (v5)
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    if (v8)
    {
LABEL_13:
      sub_271581FB4(v14);
    }
  }

LABEL_14:
  sub_271559B00(v16, &v13);
  v9 = v16[1];
  v10 = v16[2];
  sub_27157D2FC(&v13);
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
LABEL_16:
  *a1 = &unk_288115BF0;
  return a1;
}

void sub_271563630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  sub_271545618(v3 + 16);
  _Unwind_Resume(a1);
}

void sub_27156364C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  sub_271545618(v3 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_27156367C(uint64_t a1)
{
  *a1 = &unk_2881157E0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715636F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_27154608C(a1))
  {
    if (*(a1 + 52))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a1 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a2 = 0;
    a2[1] = v5;
    a2[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a1 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v20 = &unk_288115A20;
    v21 = v11;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v20 = &unk_288115A20;
        v21 = v9;
        v22 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v20 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271559B00(a2, &v20);
  v20 = &unk_288115A20;
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271563A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271563A48(void *a1, uint64_t a2)
{
  if (sub_27154608C(a2))
  {
    if (*(a2 + 52))
    {
      v4 = *(a2 + 48) == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = *(a2 + 48);
    if (v4)
    {
      v5 = 0;
    }

    v6 = 0x100000000;
    if (v5 > 0x100000000)
    {
      v6 = v5;
    }

    *a1 = 0;
    a1[1] = v5;
    a1[2] = (v5 != 0) | (v6 << 32);
    if (HIDWORD(v5) * v6 != -1)
    {
      return;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_35:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v13;
      v16 = *(v13 + 8);
      v13 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_35;
    }

LABEL_38:
    abort();
  }

  v7 = *(a2 + 40);
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
LABEL_39:
      sub_2711308D4();
    }

    goto LABEL_20;
  }

  if (v7 == 2)
  {
LABEL_20:
    v11 = *(a2 + 24);
    v10 = *(a2 + 32);
    v22 = &unk_288115A20;
    v23 = v11;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  if (v7 != 3)
  {
    goto LABEL_39;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v8 = std::__shared_weak_count::lock(v8);
    if (v8)
    {
      v9 = *(a2 + 16);
      if (v9)
      {
        v22 = &unk_288115A20;
        v23 = v9;
        v24 = v8;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_30;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v22 = &unk_288115A20;
  if (v8)
  {
LABEL_30:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_22:
  sub_271559B00(&v20, &v22);
  *a1 = v20;
  *(a1 + 1) = v21;
  v22 = &unk_288115A20;
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_271563D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271563DC4(uint64_t a1)
{
  sub_27155B114(v4, a1);
  sub_271563A48(&v3, a1);
  sub_271563A48(&v2, a1);
  operator new();
}

void sub_271563EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEMORY[0x2743BF050](v8, 0x10A3C40A1F8E8FFLL);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271563ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271563EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271563F00(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881249E0, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v23, lpsrc, 4);
    v11 = v23;
    v12 = *(v23 + 16);
    v16 = *v23;
    v17[0] = v12;
    *&v23 = 0;
    MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v13);
    sub_2715636F4(a1, &v23);
    *&result = sub_27125505C(&v16, &v23);
    return result;
  }

  v7 = v6;
  sub_27155B114(v22, v6);
  sub_271563A48(&v20, v7);
  v23 = v20;
  v24 = v21;
  *&v16 = &unk_288115BF0;
  if (HIDWORD(v21) <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = HIDWORD(v21);
  }

  v25[0] = *(&v20 + 1);
  v25[1] = v21 | (v8 << 32);
  sub_27155A118(&v16, v25, &v23);
  *&v16 = &unk_288115BF0;
  sub_27157D2FC(v22);
  v9 = v18;
  *(a1 + 8) = DWORD2(v16);
  v10 = *(a1 + 40);
  if (v10 == -1)
  {
    if (v9 == -1)
    {
      result = *&v19;
      *(a1 + 48) = v19;
      return result;
    }
  }

  else if (v9 == -1)
  {
    (off_2881337B0[v10])(&v23, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_12;
  }

  *&v23 = a1 + 16;
  (off_2881337F0[v9])(&v23);
LABEL_12:
  v15 = v18;
  result = *&v19;
  *(a1 + 48) = v19;
  *&v16 = &unk_2881157E0;
  if (v15 != -1)
  {
    (off_2881337B0[v15])(&v23, v17);
  }

  return result;
}

void sub_271564154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271564190(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_2715636F4(a1, &v7);
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

void sub_2715642FC(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_271563A48(&v7, a1);
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

uint64_t *sub_271564468()
{
  if ((atomic_load_explicit(&qword_28087BA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA88))
  {
    sub_27157ABE4();
  }

  if (byte_28087BB3F >= 0)
  {
    return &qword_28087BB28;
  }

  else
  {
    return qword_28087BB28;
  }
}

void sub_271564538(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_27155A9B4(a1, &v2);
    operator new();
  }

  sub_27155B114(&v2, a1);
  operator new();
}

void sub_271564800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_27156483C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2715648B0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115B60;
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

  *v19 = 2;
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
  *a1 = &unk_2881155A0;
  *(a1 + 8) = 0;
  sub_271546E30(0, 5, v14, a1 + 16);
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
  sub_271547560(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288115B60;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271564ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_271564AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271564B0C(uint64_t a1)
{
  *a1 = &unk_2881155A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271564B84(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
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
    v10 = __PAIR64__(DWORD1(v20), 2);
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
  sub_271547560(a2, &v20);
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

void sub_271564E18(uint64_t a1, uint64_t a2)
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
  sub_271547560(v24, &v21);
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

void sub_2715650E0(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_271548BE4(v4, a1);
  sub_271564E18(v3, a1);
  sub_271564E18(&v2, a1);
  operator new();
}

void sub_271565224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271565250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271565268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_271565288(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881249C8, 0);
  if (v6)
  {
    v7 = v6;
    sub_271548BE4(v32, v6);
    sub_271564E18(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288115B60;
    if (HIDWORD(v31) <= 0x20)
    {
      v8 = 32;
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
    sub_271547C40(&v24, v34, v33);
    *&v24 = &unk_288115B60;
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
    *&v24 = &unk_2881155A0;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 5);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_271564B84(a1, v33);
  sub_27129F754(&v24, v33);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_271565544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715655B4(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_271564B84(a1, &v7);
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

void sub_271565720(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_271564E18(&v7, a1);
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

uint64_t *sub_27156588C()
{
  if ((atomic_load_explicit(&qword_28087BA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BA90))
  {
    sub_27157ACE8();
  }

  if (byte_28087BB57 >= 0)
  {
    return &qword_28087BB40;
  }

  else
  {
    return qword_28087BB40;
  }
}

void sub_27156595C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271548540(&v2, a1);
    operator new();
  }

  sub_271548BE4(&v2, a1);
  operator new();
}

void sub_271565C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271565C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271565CE0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115AD0;
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

  *v19 = 2;
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
  *a1 = &unk_288115900;
  *(a1 + 8) = 0;
  sub_27155543C(0, 7, v14, a1 + 16);
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
  sub_271555B70(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288115AD0;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271565EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_271565F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271565F3C(uint64_t a1)
{
  *a1 = &unk_288115900;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271565FB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
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
    v10 = __PAIR64__(DWORD1(v20), 2);
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
  sub_271555B70(a2, &v20);
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

void sub_271566248(uint64_t a1, uint64_t a2)
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
  sub_271555B70(v24, &v21);
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

void sub_271566510(uint64_t a1)
{
  v4[16] = *MEMORY[0x277D85DE8];
  sub_2715571D8(v4, a1);
  sub_271566248(v3, a1);
  sub_271566248(&v2, a1);
  operator new();
}

void sub_271566654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  MEMORY[0x2743BF050](v14, 0x10A3C40ED729E16);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271566680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271566698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

double sub_2715666B8(uint64_t a1, char **lpsrc)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_2881249B0, 0);
  if (v6)
  {
    v7 = v6;
    sub_2715571D8(v32, v6);
    sub_271566248(v30, v7);
    v33[0] = v30[0];
    v33[1] = v30[1];
    v33[2] = v31;
    *&v24 = &unk_288115AD0;
    if (HIDWORD(v31) <= 0x10)
    {
      v8 = 16;
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
    sub_271556228(&v24, v34, v33);
    *&v24 = &unk_288115AD0;
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
    *&v24 = &unk_288115900;
    if (v19 != -1)
    {
      (off_2881337B0[v19])(v33, &v25);
    }

    goto LABEL_13;
  }

  (*(v4 + 9))(v33, lpsrc, 7);
  v11 = *&v33[0];
  v13 = *(*&v33[0] + 16);
  v12 = *(*&v33[0] + 32);
  v24 = **&v33[0];
  v25 = v13;
  v26 = v12;
  *&v33[0] = 0;
  MEMORY[0x2743BF050](v11, 0xC400A2AC0F1, v14, v15, v16, v17);
  sub_271565FB4(a1, v33);
  *&v30[0] = &v24;
  *(&v30[0] + 1) = v33;
  *&result = sub_2712A0BBC(v30);
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27156697C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715669EC(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_271565FB4(a1, &v7);
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

void sub_271566B58(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_271566248(&v7, a1);
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

uint64_t *sub_271566CC4()
{
  if ((atomic_load_explicit(&byte_28087BA98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&byte_28087BA98))
  {
    sub_27157ADEC();
  }

  if (byte_28087BB6F >= 0)
  {
    return &qword_28087BB58;
  }

  else
  {
    return qword_28087BB58;
  }
}

void sub_271566D94(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_271556B38(a1, &v2);
    operator new();
  }

  sub_2715571D8(&v2, a1);
  operator new();
}

void sub_27156705C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D2FC(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D2FC(&a9);
  _Unwind_Resume(a1);
}

void sub_271567098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(v13);
  sub_27157D548(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_27157D548(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27156710C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115A40;
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

  *v19 = 2;
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
  *a1 = &unk_288115750;
  *(a1 + 8) = 0;
  sub_27155B520(0, 8, v14, a1 + 16);
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
  sub_27155BC54(v19, &v16);
  v10 = v20;
  *(a1 + 48) = *&v19[8];
  *(a1 + 64) = v10;
  *(a1 + 80) = v21;
  sub_27157D2FC(&v16);
LABEL_16:
  *a1 = &unk_288115A40;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271567318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D16C(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_271567334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27157D2FC(va);
  sub_271545618(v7 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_271567368(uint64_t a1)
{
  *a1 = &unk_288115750;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2881337B0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715673E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    LODWORD(v20) = 2;
    *(&v20 + 4) = v6;
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
    v10 = __PAIR64__(DWORD1(v20), 2);
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
  sub_27155BC54(a2, &v20);
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