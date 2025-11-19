void sub_2715478E8(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0 && (v5 = *a2) != 0)
  {
    *a1 = &unk_288115A20;
    a1[1] = v5;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = &unk_288115A20;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a1[1];
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

void *sub_271547A6C(uint64_t a1, char *a2)
{
  result = sub_27154608C(a1);
  if ((result & 1) == 0)
  {
    sub_271548540(v22, a1);
    sub_27154894C(&v15, a1);
    v23[0] = &v15;
    v23[1] = a2;
    if (v19 == 1)
    {
      sub_2715746BC(v23);
      return sub_27157D548(v22);
    }

    if (!v16 || !v17 || !v18)
    {
      return sub_27157D548(v22);
    }

    v5 = v17 - 1;
    v6 = v20;
    v7 = v15;
    v8 = v18 - 1;
    if (v18 == 1)
    {
      v10 = *a2;
    }

    else
    {
      v9 = v21;
      v10 = *a2;
      if (v17 != 1)
      {
        v11 = 0;
        v12 = v15 + 1;
        do
        {
          v13 = v12;
          v14 = v5;
          do
          {
            *(v13 - 1) = v10;
            v10 = *a2;
            *v13 = *a2;
            v13 += v6;
            --v14;
          }

          while (v14);
          *(v13 - 1) = v10;
          v10 = *a2;
          *v13 = *a2;
          v7 += v9;
          ++v11;
          v12 += v9;
        }

        while (v11 != v8);
        goto LABEL_18;
      }

      do
      {
        *v7 = v10;
        v10 = *a2;
        v7[1] = *a2;
        v7 += v9;
        --v8;
      }

      while (v8);
    }

    if (!v5)
    {
LABEL_19:
      *v7 = v10;
      v7[1] = *a2;
      return sub_27157D548(v22);
    }

    do
    {
LABEL_18:
      *v7 = v10;
      v10 = *a2;
      v7[1] = *a2;
      v7 += v6;
      --v5;
    }

    while (v5);
    goto LABEL_19;
  }

  return result;
}

void sub_271547BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271547BC8(uint64_t a1)
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

uint64_t sub_271547C40(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_2881155A0;
  *(a1 + 8) = 0;
  sub_271546E30(0, 5, a2, a1 + 16);
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
    sub_2715472F0(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271548540(v13, a1);
    sub_27154894C(v12, a1);
    sub_27129F754(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271547D40(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_271547BC8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271547D70(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881155A0;
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
  *(a1 + 68) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = (v17 << 32) | 2;
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

void sub_271548298(uint64_t a1, uint64_t a2)
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

void sub_271548540(void *a1, uint64_t a2)
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

    *a1 = &unk_288115290;
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
        sub_2715820B8(a1[1]);
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

    *a1 = &unk_288115290;
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

    sub_2715478E8(v21, (a2 + 16));
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

    *a1 = &unk_288115290;
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
        sub_2715820B8(a1[1]);
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

    *a1 = &unk_288115290;
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
        sub_2715820B8(a1[1]);
      }
    }
  }
}

void sub_2715488F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154894C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
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

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
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
  sub_271547560(a1, &v20);
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

void sub_271548BE4(void *a1, uint64_t a2)
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

    sub_2715478E8(v21, (a2 + 16));
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

void sub_271548F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271548FF0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

void sub_271549474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_271549494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715494B0(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
      sub_271549728(a2, v15);
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

      sub_271549AB0(a2, &v12);
      sub_271549728(&v12, v15);
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

    sub_271549728(&v12, v15);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_2715496EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271549700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271549714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271549728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
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
  v11 = sub_27157CE68(a1, 0);
  v12 = sub_27157F398(a1);
  v13 = sub_27157F5D4(a1);
  result = sub_27157F810(a1);
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

  HIDWORD(v27) = v18;
  LODWORD(v27) = 3;
  *a2 = v11;
  *(a2 + 8) = v27;
  *(a2 + 16) = HIDWORD(v18);
  *(a2 + 20) = 0x300000001;
  *(a2 + 28) = result;
  *(a2 + 32) = v18;
  *(a2 + 40) = (result << 32) | 3;
  if (HIDWORD(v18) * result != -1)
  {
    v19 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v20 = qword_28087C408;
    v21 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (byte_28087C438 == 1)
  {
    v20 = qword_28087C408;
    v21 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_26:
        v23 = *v20;
        v22 = *(v20 + 8);
        v20 += 16;
        v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v20 != v21);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_33:
      abort();
    }
  }

LABEL_28:
  v25 = qword_28087C420;
  v24 = *algn_28087C428;
  v26 = *MEMORY[0x277D85DE8];

  return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

void sub_271549AB0(uint64_t *a1@<X0>, void *a2@<X8>)
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

uint64_t sub_271549C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = a2;
  v12 = a5;
  *a1 = &unk_288115510;
  *(a1 + 8) = a2;
  sub_271548FF0(a2, a3, a4, a1 + 16);
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
    sub_2715494B0(v6, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_27154A6D8(a1, v14);
    sub_27154AAE4(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_27157487C(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_271549D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_271549D60(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_271549D60(uint64_t a1)
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

uint64_t sub_271549DD8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_288115510;
  *(a1 + 8) = 0;
  sub_271548FF0(0, 21, a2, a1 + 16);
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
    sub_2715494B0(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_27154A6D8(a1, v13);
    sub_27154AAE4(a1, v12);
    sub_2712A2E80(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271549ED8(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_271549D60(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271549F08(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115510;
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
  LODWORD(v28) = 3;
  HIDWORD(v28) = v18;
  *(a1 + 48) = v28;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x300000001;
  *(a1 + 68) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = (v17 << 32) | 3;
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

void sub_27154A430(uint64_t a1, uint64_t a2)
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

void sub_27154A6D8(uint64_t a1@<X0>, void *a2@<X8>)
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

    sub_271549AB0((a1 + 16), v21);
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

void sub_27154AA8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154AAE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_27154ACE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154ACFC(void *a1, uint64_t a2)
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

    sub_271549AB0((a2 + 16), v21);
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

void sub_27154B0B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27154B108@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

void sub_27154B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_27154B5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27154B5C8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
      sub_27154B838(v15, a2);
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

      sub_27154BBC0(&v12, a2);
      sub_27154B838(v15, &v12);
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

    sub_27154B838(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_27154B7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27154B810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27154B824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27154B838(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
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

  HIDWORD(v27) = v18;
  LODWORD(v27) = 4;
  *a1 = v11;
  *(a1 + 8) = v27;
  *(a1 + 16) = HIDWORD(v18);
  *(a1 + 20) = 0x400000001;
  *(a1 + 28) = result;
  *(a1 + 32) = v18;
  *(a1 + 40) = (result << 32) | 4;
  if (HIDWORD(v18) * result != -1)
  {
    v19 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v20 = qword_28087C408;
    v21 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (byte_28087C438 == 1)
  {
    v20 = qword_28087C408;
    v21 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_26:
        v23 = *v20;
        v22 = *(v20 + 8);
        v20 += 16;
        v23(v22, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v20 != v21);
      if (byte_28087C430)
      {
        goto LABEL_28;
      }

LABEL_33:
      abort();
    }
  }

LABEL_28:
  v25 = qword_28087C420;
  v24 = *algn_28087C428;
  v26 = *MEMORY[0x277D85DE8];

  return v25(v24, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
}

void sub_27154BBC0(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0 && (v5 = *a2) != 0)
  {
    *a1 = &unk_288115A20;
    a1[1] = v5;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = &unk_288115A20;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_8:
  v7 = a1[1];
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

void *sub_27154BD44(uint64_t a1, uint64_t a2)
{
  result = sub_27154608C(a1);
  if ((result & 1) == 0)
  {
    sub_27154C774(v10, a1);
    sub_27154CB80(v5, a1);
    v11[0] = v5;
    v11[1] = a2;
    if (v9 == 1)
    {
      sub_2715746BC(v11);
    }

    else
    {
      v12 = a2;
      if (v6 && v7)
      {
        if (v8)
        {
          v13 = &v12;
          sub_271574B58(&v13, v5);
        }
      }
    }

    return sub_27157D548(v10);
  }

  return result;
}

void sub_27154BDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27154BE04(uint64_t a1)
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

uint64_t sub_27154BE7C(uint64_t a1, int a2, uint64_t a3, _OWORD *a4)
{
  *a1 = &unk_288115480;
  *(a1 + 8) = 0;
  sub_27154B108(0, a2, a3, a1 + 16);
  if (*(a3 + 24))
  {
    v7 = *(a3 + 28) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *a3;
    v9 = *(a3 + 16);
    *(a1 + 80) = *(a3 + 32);
    *(a1 + 48) = v8;
    *(a1 + 64) = v9;
  }

  else
  {
    sub_27154B5C8(0, a1 + 16, a1 + 48);
  }

  v10 = a4[1];
  v12[0] = *a4;
  v12[1] = v10;
  v12[2] = a4[2];
  if (!sub_27154608C(a1))
  {
    sub_27154C774(v14, a1);
    sub_27154CB80(v13, a1);
    sub_2712A6008(v12, v13);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_27154BF74(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_27154BE04(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27154BFA4(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115480;
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
  *(a1 + 68) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = (v17 << 32) | 4;
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

void sub_27154C4CC(uint64_t a1, uint64_t a2)
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

void sub_27154C774(void *a1, uint64_t a2)
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

    *a1 = &unk_288115290;
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
        sub_2715820B8(a1[1]);
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

    *a1 = &unk_288115290;
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

    sub_27154BBC0(v21, (a2 + 16));
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

    *a1 = &unk_288115290;
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
        sub_2715820B8(a1[1]);
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

    *a1 = &unk_288115290;
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
        sub_2715820B8(a1[1]);
      }
    }
  }
}

void sub_27154CB28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154CB80(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
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

  v13 = *(a2 + 24);
  if (v13)
  {
    v13 = std::__shared_weak_count::lock(v13);
    if (v13)
    {
      v14 = *(a2 + 16);
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
  sub_27154B838(a1, &v20);
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

void sub_27154CE18(void *a1, uint64_t a2)
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

    sub_27154BBC0(v21, (a2 + 16));
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

void sub_27154D1CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27154D224@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
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

void sub_27154D6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_27154D6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27154D6E4(int a1, uint64_t a2, double a3)
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

    sub_27154D928(&v13, &v10);
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

    sub_27154DC20(a2, &v10);
    sub_27154D928(&v13, &v10);
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
  sub_27154D928(&v13, a2);
  return v14;
}

void sub_27154D8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27154D900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27154D914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27154D928(uint64_t *a1, uint64_t a2)
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
  a1[2] = ((result >> 1) << 32) | 1;
  if (HIDWORD(v18) * (result >> 1) == -1)
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

void sub_27154DC20(uint64_t *a1@<X0>, void *a2@<X8>)
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

uint64_t sub_27154DDA4(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, __int16 a5)
{
  v6 = a2;
  v12 = a5;
  *a1 = &unk_2881153F0;
  *(a1 + 8) = a2;
  sub_27154D224(a2, a3, a4, a1 + 16);
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
    *(a1 + 48) = sub_27154D6E4(v6, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_27154608C(a1))
  {
    sub_27154E7DC(a1, v14);
    sub_27154EBE8(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_271574D20(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_27154DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27157D548(va);
  sub_27154DEC8(v6);
  _Unwind_Resume(a1);
}

uint64_t sub_27154DEC8(uint64_t a1)
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

uint64_t sub_27154DF40(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_2881153F0;
  *(a1 + 8) = 0;
  sub_27154D224(0, 2, a2, a1 + 16);
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
    *(a1 + 48) = sub_27154D6E4(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_27154608C(a1))
  {
    sub_27154E7DC(a1, v13);
    sub_27154EBE8(a1, v12);
    sub_271254000(&v10, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27154E038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_27154DEC8(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_27154E068(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881153F0;
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
  *(a1 + 56) = ((v17 >> 1) << 32) | 1;
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

void sub_27154E534(uint64_t a1, uint64_t a2)
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

void sub_27154E7DC(uint64_t a1@<X0>, void *a2@<X8>)
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

    sub_27154DC20((a1 + 16), v21);
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

void sub_27154EB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154EBE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

void sub_27154EF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_27154EF3C(void *a1, uint64_t a2)
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

    sub_27154DC20((a2 + 16), v21);
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

void sub_27154F2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27154F348@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

void sub_27154F7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_27154F7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27154F808(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
      sub_27154FA80(a2, v15);
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

      sub_27154FE10(a2, &v12);
      sub_27154FA80(&v12, v15);
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

    sub_27154FA80(&v12, v15);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_27154FA44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_27154FA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_27154FA6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_27154FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
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
  v11 = sub_27157CE68(a1, 0);
  v12 = sub_27157F398(a1);
  v13 = sub_27157F5D4(a1);
  result = sub_27157F810(a1);
  v15 = result >> 1;
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
  LODWORD(v28) = 3;
  *a2 = v11;
  *(a2 + 8) = v28;
  *(a2 + 16) = HIDWORD(v19);
  *(a2 + 20) = 0x300000001;
  *(a2 + 28) = v15;
  *(a2 + 32) = v19;
  *(a2 + 40) = ((result >> 1) << 32) | 3;
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

void sub_27154FE10(uint64_t *a1@<X0>, void *a2@<X8>)
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

uint64_t sub_27154FF94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int16 a5)
{
  v6 = a2;
  v12 = a5;
  *a1 = &unk_288115360;
  *(a1 + 8) = a2;
  sub_27154F348(a2, a3, a4, a1 + 16);
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
    sub_27154F808(v6, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_271550A40(a1, v14);
    sub_271550E4C(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_271575070(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_271550090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_2715500C0(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_2715500C0(uint64_t a1)
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

uint64_t sub_271550138(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_288115360;
  *(a1 + 8) = 0;
  sub_27154F348(0, 22, a2, a1 + 16);
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
    sub_27154F808(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271550A40(a1, v13);
    sub_271550E4C(a1, v12);
    sub_2712A3624(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271550238(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_2715500C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271550268(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115360;
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
  LODWORD(v28) = 3;
  HIDWORD(v28) = v18;
  *(a1 + 48) = v28;
  *(a1 + 56) = v16;
  *(a1 + 60) = 0x300000001;
  *(a1 + 68) = v17 >> 1;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 1) << 32) | 3;
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

void sub_271550798(uint64_t a1, uint64_t a2)
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

void sub_271550A40(uint64_t a1@<X0>, void *a2@<X8>)
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

    sub_27154FE10((a1 + 16), v21);
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

void sub_271550DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271550E4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_271551050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271551064(void *a1, uint64_t a2)
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

    sub_27154FE10((a2 + 16), v21);
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

void sub_271551418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271551470@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

void sub_2715518F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_271551914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271551930(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

      sub_271551F34(a2, &v12);
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

void sub_271551B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271551B7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271551B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271551BA4(uint64_t a1, uint64_t a2)
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
  v15 = result >> 1;
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
  *(a1 + 40) = ((result >> 1) << 32) | 4;
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

void sub_271551F34(uint64_t *a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715520B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int16 a5)
{
  v6 = a2;
  v12 = a5;
  *a1 = &unk_2881152D0;
  *(a1 + 8) = a2;
  sub_271551470(a2, a3, a4, a1 + 16);
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
    sub_271551930(v6, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_271552B64(a1, v14);
    sub_271552F70(a1, v13);
    v15[0] = v13;
    v15[1] = &v12;
    sub_2715758B0(v15);
    sub_27157D548(v14);
  }

  return a1;
}

void sub_2715521B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_2715521E4(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_2715521E4(uint64_t a1)
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

uint64_t sub_27155225C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_2881152D0;
  *(a1 + 8) = 0;
  sub_271551470(0, 38, a2, a1 + 16);
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
    sub_271551930(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271552B64(a1, v13);
    sub_271552F70(a1, v12);
    sub_271244900(v11, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155235C(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 56));
  sub_2715521E4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_27155238C(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881152D0;
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

void sub_2715528BC(uint64_t a1, uint64_t a2)
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

void sub_271552B64(uint64_t a1@<X0>, void *a2@<X8>)
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

    sub_271551F34((a1 + 16), v21);
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

void sub_271552F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271552F70(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_271553204(void *a1, uint64_t a2)
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

    sub_271551F34((a2 + 16), v21);
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

void sub_2715535B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271553610@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
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

void sub_271553A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_271553AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271553AD0(int a1, uint64_t a2, double a3)
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

    sub_27154D928(&v13, &v10);
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

    sub_271553D14(a2, &v10);
    sub_27154D928(&v13, &v10);
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
  sub_27154D928(&v13, a2);
  return v14;
}

void sub_271553CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271553CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271553D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271553D14(uint64_t *a1@<X0>, void *a2@<X8>)
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

uint64_t sub_271553E98(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, __int16 a5)
{
  v6 = a2;
  v13 = a5;
  *a1 = &unk_288115990;
  *(a1 + 8) = a2;
  sub_271553610(a2, a3, a4, a1 + 16);
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
    *(a1 + 48) = sub_271553AD0(v6, a1 + 16, v8);
    *(a1 + 56) = v10;
  }

  if (!sub_27154608C(a1))
  {
    sub_2715548D0(a1, v15);
    sub_271554CDC(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271575CAC(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_271553F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27157D548(va);
  sub_271553FBC(v6);
  _Unwind_Resume(a1);
}

uint64_t sub_271553FBC(uint64_t a1)
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

uint64_t sub_271554034(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = &unk_288115990;
  *(a1 + 8) = 0;
  sub_271553610(0, 3, a2, a1 + 16);
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
    *(a1 + 48) = sub_271553AD0(0, a1 + 16, v6);
    *(a1 + 56) = v8;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  if (!sub_27154608C(a1))
  {
    sub_2715548D0(a1, v13);
    sub_271554CDC(a1, v12);
    sub_27123D99C(&v10, v12);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_27155412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_271553FBC(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_27155415C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288115990;
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
  *(a1 + 56) = ((v17 >> 1) << 32) | 1;
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

void sub_271554628(uint64_t a1, uint64_t a2)
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

void sub_2715548D0(uint64_t a1@<X0>, void *a2@<X8>)
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

    sub_271553D14((a1 + 16), v21);
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

void sub_271554C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271554CDC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

void sub_27155501C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

void sub_271555030(void *a1, uint64_t a2)
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

    sub_271553D14((a2 + 16), v21);
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

void sub_2715553E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(v2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27155543C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

void sub_2715558C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27157D16C(&a9);
  sub_27157E54C(&a12);
  _Unwind_Resume(a1);
}

void sub_2715558E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715558FC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
      sub_271555B70(v15, a2);
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

      sub_271555F00(a2, &v12);
      sub_271555B70(v15, &v12);
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

    sub_271555B70(v15, &v12);
    v10 = v17;
    *a3 = v16;
    *(a3 + 16) = v10;
    *(a3 + 32) = v18;
    sub_27157D2FC(&v12);
  }
}

void sub_271555B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D16C(va);
  _Unwind_Resume(a1);
}

void sub_271555B48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157D2FC(va);
  _Unwind_Resume(a1);
}

void sub_271555B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27157E54C(va);
  _Unwind_Resume(a1);
}

size_t sub_271555B70(uint64_t a1, uint64_t a2)
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
  v15 = result >> 1;
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
  *(a1 + 40) = ((result >> 1) << 32) | 2;
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

void sub_271555F00(uint64_t *a1@<X0>, void *a2@<X8>)
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

uint64_t sub_271556084(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int16 a5)
{
  v6 = a2;
  v13 = a5;
  *a1 = &unk_288115900;
  *(a1 + 8) = a2;
  sub_27155543C(a2, a3, a4, a1 + 16);
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
    sub_2715558FC(v6, a1 + 16, a1 + 48);
  }

  if (!sub_27154608C(a1))
  {
    sub_271556B38(a1, v15);
    sub_271556F44(a1, v14);
    v16[0] = v14;
    v16[1] = &v13;
    sub_271575FE8(v16, v11);
    sub_27157D548(v15);
  }

  return a1;
}

void sub_271556180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27157D548(va);
  sub_2715561B0(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_2715561B0(uint64_t a1)
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

uint64_t sub_271556228(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_288115900;
  *(a1 + 8) = 0;
  sub_27155543C(0, 7, a2, a1 + 16);
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
    sub_2715558FC(0, a1 + 16, a1 + 48);
  }

  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = a3[2];
  if (!sub_27154608C(a1))
  {
    sub_271556B38(a1, v13);
    sub_271556F44(a1, v12);
    v14[0] = v11;
    v14[1] = v12;
    sub_2712A0BBC(v14);
    sub_27157D548(v13);
  }

  return a1;
}

void sub_271556330(_Unwind_Exception *a1)
{
  sub_27157D548((v2 - 72));
  sub_2715561B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_271556360(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288115900;
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
  *(a1 + 68) = v17 >> 1;
  *(a1 + 72) = v18;
  *(a1 + 80) = ((v17 >> 1) << 32) | 2;
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

void sub_271556890(uint64_t a1, uint64_t a2)
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

void sub_271556B38(uint64_t a1@<X0>, void *a2@<X8>)
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

    sub_271555F00((a1 + 16), v21);
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