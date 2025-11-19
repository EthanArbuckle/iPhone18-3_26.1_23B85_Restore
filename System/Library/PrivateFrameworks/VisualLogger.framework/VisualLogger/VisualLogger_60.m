void sub_2715B79EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715B7A1C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v11 = v18;
    }

    v17 = &unk_288109268;
    if (!v11)
    {
      goto LABEL_25;
    }

    v14 = *v11;
    v13 = v11[1];
    if (!v13 || (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = v18;
    }

    v17 = &unk_288109268;
    if (!v7)
    {
      goto LABEL_25;
    }

    v10 = *v7;
    v9 = v7[1];
    if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = v18;
    }

    v17 = &unk_288109268;
    if (!v3)
    {
      goto LABEL_25;
    }

    v6 = *v3;
    v5 = v3[1];
    if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
LABEL_25:
      sub_2715B7748(v16, a1);
      sub_2715B7748(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715B7E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B7E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B7EB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F919C(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109268;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

double sub_2715B816C(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C880, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 33);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715B74A4(v50, a1);
    sub_2712A6008(&v37, v50);
LABEL_47:
    v34 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v25 = *(v6 + 3);
    v26 = *(v6 + 4);
    v46 = v25;
    v47 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      v25 = v46;
    }

    v45 = &unk_288109268;
    if (v25)
    {
      v28 = *v25;
      v27 = v25[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }
      }

      if (v28)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v8 == 1)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v46 = v21;
    v47 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v46;
    }

    v45 = &unk_288109268;
    if (v21)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      if (v24)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (v8)
    {
      sub_2711308D4();
    }

    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v46 = v9;
    v47 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v46;
    }

    v45 = &unk_288109268;
    if (v9)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      if (v12)
      {
LABEL_29:
        sub_2717F919C(v46);
      }
    }
  }

  sub_2715B7748(v43, v7);
  if (HIDWORD(v44) <= 0x20)
  {
    v29 = 32;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v50[0]) = 4;
  DWORD1(v50[0]) = v44;
  *v48 = *&v50[0];
  LODWORD(v50[0]) = 1;
  *(v50 + 4) = DWORD2(v44) | (v29 << 32);
  *&v48[12] = *&v50[0];
  *&v48[8] = DWORD1(v44);
  *&v48[20] = v29;
  *&v48[24] = v44;
  v49 = *(v50 + 4);
  *&v37 = &unk_288109458;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_2715877A0(0, 33);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_271587BD4(0, &v38, &v40);
  }

  else
  {
    v40 = *v48;
    v41 = *&v48[16];
    v42 = v49;
  }

  v50[0] = v43[0];
  v50[1] = v43[1];
  v50[2] = v44;
  sub_2715887D0(&v37, v50);
  *&v37 = &unk_288109DE8;
  sub_2717F1E54(&v45);
  v30 = DWORD2(v39);
  *(a1 + 8) = DWORD2(v37);
  v31 = *(a1 + 40);
  if (v31 != -1)
  {
    if (v30 == -1)
    {
      (off_288133918[v31])(v50, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_45;
    }

LABEL_44:
    *&v50[0] = a1 + 16;
    (off_288133948[v30])(v50);
LABEL_45:
    v32 = DWORD2(v39);
    result = *&v40;
    v33 = v41;
    *(a1 + 48) = v40;
    *(a1 + 64) = v33;
    *(a1 + 80) = v42;
    *&v37 = &unk_288109458;
    if (v32 != -1)
    {
      (off_288133918[v32])(v50, &v38);
    }

    goto LABEL_47;
  }

  if (v30 != -1)
  {
    goto LABEL_44;
  }

  result = *&v40;
  v35 = v41;
  *(a1 + 48) = v40;
  *(a1 + 64) = v35;
  *(a1 + 80) = v42;
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715B86D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B8784(uint64_t a1, int a2)
{
  if (a2 == 33)
  {
LABEL_10:
    sub_2715B74A4(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

void sub_2715B88F0(uint64_t a1, int a2)
{
  if (a2 == 33)
  {
LABEL_10:
    sub_2715B7748(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

uint64_t *sub_2715B8A5C()
{
  if ((atomic_load_explicit(&qword_28087BCC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCC0))
  {
    sub_2715C882C();
  }

  if (byte_28087BE3F >= 0)
  {
    return &qword_28087BE28;
  }

  else
  {
    return qword_28087BE28;
  }
}

void sub_2715B8B2C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    switch(v2)
    {
      case 2:
        v16 = *(a1 + 24);
        v17 = *(a1 + 32);
        v29 = v16;
        v30 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          v16 = v29;
        }

        v28 = &unk_288109248;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        v29 = v12;
        v30 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          v12 = v29;
        }

        v28 = &unk_288109248;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v3 = *(a1 + 24);
        v4 = *(a1 + 32);
        v29 = v3;
        v30 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          v3 = v29;
        }

        v28 = &unk_288109248;
        if (v3)
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }

          if (v6)
          {
LABEL_39:
            sub_2717F9298(v29);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_2711308D4();
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);
    v29 = v24;
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v29;
    }

    v28 = &unk_288109268;
    if (!v24)
    {
      goto LABEL_57;
    }

    v27 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    if (!v27)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_58;
      }

      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v29 = v8;
      v30 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v29;
      }

      v28 = &unk_288109268;
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
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v29 = v20;
    v30 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v29;
    }

    v28 = &unk_288109268;
    if (!v20)
    {
      goto LABEL_57;
    }

    v23 = *v20;
    v22 = v20[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    if (!v23)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_2717F919C(v29);
  goto LABEL_57;
}

void sub_2715B9244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B9280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B92F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F9298(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109248;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_2715B95AC(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715B9624(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_288109288;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_288109288;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271587DFC(a1, v19);
          v19[0] = &unk_288109288;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_288109288;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 4;
  *(&v21 + 4) = v12;
  v13 = 4 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
  v16 = __PAIR64__(DWORD1(v21), 4);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2715B98AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715B98C8(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v22 = &unk_288109288;
          v23 = v6;
          v24 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v23;
            v7 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271587DFC(v25, v20);
          *a1 = *v25;
          v8 = v26;
          *(a1 + 8) = *&v25[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v27;
          v20[0] = &unk_288109288;
          v9 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v22 = &unk_288109288;
          v10 = v24;
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v25 = 4;
  *&v25[4] = v13;
  v14 = 4 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x3FFFFFFFFLL | ((v15 >> 2) << 34);
  v17 = __PAIR64__(*&v25[4], 4);
  *v25 = 1;
  *&v25[4] = v16;
  v18 = *v25;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2715B9B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715B9B9C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v11 = v18;
    }

    v17 = &unk_288109268;
    if (!v11)
    {
      goto LABEL_25;
    }

    v14 = *v11;
    v13 = v11[1];
    if (!v13 || (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = v18;
    }

    v17 = &unk_288109268;
    if (!v7)
    {
      goto LABEL_25;
    }

    v10 = *v7;
    v9 = v7[1];
    if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = v18;
    }

    v17 = &unk_288109268;
    if (!v3)
    {
      goto LABEL_25;
    }

    v6 = *v3;
    v5 = v3[1];
    if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
LABEL_25:
      sub_2715B98C8(v16, a1);
      sub_2715B98C8(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715B9F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B9F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B9FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B9FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BA008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BA01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BA030(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F919C(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109268;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

double sub_2715BA2EC(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C868, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 37);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715B9624(v50, a1);
    sub_2712A6008(&v37, v50);
LABEL_47:
    v34 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v25 = *(v6 + 3);
    v26 = *(v6 + 4);
    v46 = v25;
    v47 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      v25 = v46;
    }

    v45 = &unk_288109268;
    if (v25)
    {
      v28 = *v25;
      v27 = v25[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }
      }

      if (v28)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v8 == 1)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v46 = v21;
    v47 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v46;
    }

    v45 = &unk_288109268;
    if (v21)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      if (v24)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (v8)
    {
      sub_2711308D4();
    }

    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v46 = v9;
    v47 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v46;
    }

    v45 = &unk_288109268;
    if (v9)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      if (v12)
      {
LABEL_29:
        sub_2717F919C(v46);
      }
    }
  }

  sub_2715B98C8(v43, v7);
  if (HIDWORD(v44) <= 0x20)
  {
    v29 = 32;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v50[0]) = 4;
  DWORD1(v50[0]) = v44;
  *v48 = *&v50[0];
  LODWORD(v50[0]) = 1;
  *(v50 + 4) = DWORD2(v44) | (v29 << 32);
  *&v48[12] = *&v50[0];
  *&v48[8] = DWORD1(v44);
  *&v48[20] = v29;
  *&v48[24] = v44;
  v49 = *(v50 + 4);
  *&v37 = &unk_288109458;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_2715877A0(0, 37);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_271587BD4(0, &v38, &v40);
  }

  else
  {
    v40 = *v48;
    v41 = *&v48[16];
    v42 = v49;
  }

  v50[0] = v43[0];
  v50[1] = v43[1];
  v50[2] = v44;
  sub_2715887D0(&v37, v50);
  *&v37 = &unk_288109D58;
  sub_2717F1E54(&v45);
  v30 = DWORD2(v39);
  *(a1 + 8) = DWORD2(v37);
  v31 = *(a1 + 40);
  if (v31 != -1)
  {
    if (v30 == -1)
    {
      (off_288133918[v31])(v50, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_45;
    }

LABEL_44:
    *&v50[0] = a1 + 16;
    (off_288133948[v30])(v50);
LABEL_45:
    v32 = DWORD2(v39);
    result = *&v40;
    v33 = v41;
    *(a1 + 48) = v40;
    *(a1 + 64) = v33;
    *(a1 + 80) = v42;
    *&v37 = &unk_288109458;
    if (v32 != -1)
    {
      (off_288133918[v32])(v50, &v38);
    }

    goto LABEL_47;
  }

  if (v30 != -1)
  {
    goto LABEL_44;
  }

  result = *&v40;
  v35 = v41;
  *(a1 + 48) = v40;
  *(a1 + 64) = v35;
  *(a1 + 80) = v42;
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715BA858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715BA904(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_2715B9624(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

void sub_2715BAA70(uint64_t a1, int a2)
{
  if (a2 == 37)
  {
LABEL_10:
    sub_2715B98C8(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

uint64_t *sub_2715BABDC()
{
  if ((atomic_load_explicit(&qword_28087BCC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCC8))
  {
    sub_2715C8930();
  }

  if (byte_28087BE57 >= 0)
  {
    return &qword_28087BE40;
  }

  else
  {
    return qword_28087BE40;
  }
}

void sub_2715BACAC(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    switch(v2)
    {
      case 2:
        v16 = *(a1 + 24);
        v17 = *(a1 + 32);
        v29 = v16;
        v30 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          v16 = v29;
        }

        v28 = &unk_288109248;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        v29 = v12;
        v30 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          v12 = v29;
        }

        v28 = &unk_288109248;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v3 = *(a1 + 24);
        v4 = *(a1 + 32);
        v29 = v3;
        v30 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          v3 = v29;
        }

        v28 = &unk_288109248;
        if (v3)
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }

          if (v6)
          {
LABEL_39:
            sub_2717F9298(v29);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_2711308D4();
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);
    v29 = v24;
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v29;
    }

    v28 = &unk_288109268;
    if (!v24)
    {
      goto LABEL_57;
    }

    v27 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    if (!v27)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_58;
      }

      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v29 = v8;
      v30 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v29;
      }

      v28 = &unk_288109268;
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
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v29 = v20;
    v30 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v29;
    }

    v28 = &unk_288109268;
    if (!v20)
    {
      goto LABEL_57;
    }

    v23 = *v20;
    v22 = v20[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    if (!v23)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_2717F919C(v29);
  goto LABEL_57;
}

void sub_2715BB3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715BB400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715BB470(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F9298(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109248;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_2715BB72C(uint64_t a1)
{
  *a1 = &unk_2881092A8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715BB7A4(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_288109288;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_288109288;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158D6DC(a1, v19);
          v19[0] = &unk_288109288;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_288109288;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 4;
  *(&v21 + 4) = v12;
  v13 = 4 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
  v16 = __PAIR64__(DWORD1(v21), 4);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2715BBA2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715BBA48(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v11 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v11;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v22 = &unk_288109288;
          v23 = v6;
          v24 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v23;
            v7 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158D6DC(v25, v20);
          *a1 = *v25;
          v8 = v26;
          *(a1 + 8) = *&v25[8];
          *(a1 + 24) = v8;
          *(a1 + 40) = v27;
          v20[0] = &unk_288109288;
          v9 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v22 = &unk_288109288;
          v10 = v24;
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v12 = *(a2 + 72) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a2 + 72);
  if (v12)
  {
    v13 = 0;
  }

  *v25 = 4;
  *&v25[4] = v13;
  v14 = 4 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x3FFFFFFFFLL | ((v15 >> 2) << 34);
  v17 = __PAIR64__(*&v25[4], 4);
  *v25 = 1;
  *&v25[4] = v16;
  v18 = *v25;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = HIDWORD(v13);
  *(a1 + 20) = v18;
  *(a1 + 28) = v15;
  *(a1 + 32) = v13;
  *(a1 + 40) = v16;
LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_2715BBCEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715BBD1C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v11 = v18;
    }

    v17 = &unk_288109268;
    if (!v11)
    {
      goto LABEL_25;
    }

    v14 = *v11;
    v13 = v11[1];
    if (!v13 || (atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else if (v2 == 1)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v7 = v18;
    }

    v17 = &unk_288109268;
    if (!v7)
    {
      goto LABEL_25;
    }

    v10 = *v7;
    v9 = v7[1];
    if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v18 = v3;
    v19 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      v3 = v18;
    }

    v17 = &unk_288109268;
    if (!v3)
    {
      goto LABEL_25;
    }

    v6 = *v3;
    v5 = v3[1];
    if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
LABEL_25:
      sub_2715BBA48(v16, a1);
      sub_2715BBA48(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715BC100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715BC13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BC188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BC19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715BC1B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109268;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F919C(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109268;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

double sub_2715BC46C(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C850, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 38);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715BB7A4(v50, a1);
    sub_271244900(&v37, v50);
LABEL_47:
    v34 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v25 = *(v6 + 3);
    v26 = *(v6 + 4);
    v46 = v25;
    v47 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      v25 = v46;
    }

    v45 = &unk_288109268;
    if (v25)
    {
      v28 = *v25;
      v27 = v25[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }
      }

      if (v28)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v8 == 1)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v46 = v21;
    v47 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v46;
    }

    v45 = &unk_288109268;
    if (v21)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }

      if (v24)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (v8)
    {
      sub_2711308D4();
    }

    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v46 = v9;
    v47 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v46;
    }

    v45 = &unk_288109268;
    if (v9)
    {
      v12 = *v9;
      v11 = v9[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      if (v12)
      {
LABEL_29:
        sub_2717F919C(v46);
      }
    }
  }

  sub_2715BBA48(v43, v7);
  if (HIDWORD(v44) <= 0x10)
  {
    v29 = 16;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v50[0]) = 4;
  DWORD1(v50[0]) = v44;
  *v48 = *&v50[0];
  LODWORD(v50[0]) = 1;
  *(v50 + 4) = DWORD2(v44) | (v29 << 32);
  *&v48[12] = *&v50[0];
  *&v48[8] = DWORD1(v44);
  *&v48[20] = v29;
  *&v48[24] = v44;
  v49 = *(v50 + 4);
  *&v37 = &unk_2881092A8;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_27158D080(0, 38);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_27158D4B4(0, &v38, &v40);
  }

  else
  {
    v40 = *v48;
    v41 = *&v48[16];
    v42 = v49;
  }

  v50[0] = v43[0];
  v50[1] = v43[1];
  v50[2] = v44;
  sub_27158DEA8(&v37, v50);
  *&v37 = &unk_288109CC8;
  sub_2717F1E54(&v45);
  v30 = DWORD2(v39);
  *(a1 + 8) = DWORD2(v37);
  v31 = *(a1 + 40);
  if (v31 != -1)
  {
    if (v30 == -1)
    {
      (off_288133918[v31])(v50, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_45;
    }

LABEL_44:
    *&v50[0] = a1 + 16;
    (off_288133948[v30])(v50);
LABEL_45:
    v32 = DWORD2(v39);
    result = *&v40;
    v33 = v41;
    *(a1 + 48) = v40;
    *(a1 + 64) = v33;
    *(a1 + 80) = v42;
    *&v37 = &unk_2881092A8;
    if (v32 != -1)
    {
      (off_288133918[v32])(v50, &v38);
    }

    goto LABEL_47;
  }

  if (v30 != -1)
  {
    goto LABEL_44;
  }

  result = *&v40;
  v35 = v41;
  *(a1 + 48) = v40;
  *(a1 + 64) = v35;
  *(a1 + 80) = v42;
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715BC9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715BCA84(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_2715BB7A4(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 314, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

void sub_2715BCBF0(uint64_t a1, int a2)
{
  if (a2 == 38)
  {
LABEL_10:
    sub_2715BBA48(&v7, a1);
    operator new();
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 321, "F == format", 0xBuLL, "", 0, sub_271852CA8);
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

uint64_t *sub_2715BCD5C()
{
  if ((atomic_load_explicit(&qword_28087BCD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCD0))
  {
    sub_2715C8A34();
  }

  if (byte_28087BE6F >= 0)
  {
    return &qword_28087BE58;
  }

  else
  {
    return qword_28087BE58;
  }
}

void sub_2715BCE2C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    switch(v2)
    {
      case 2:
        v16 = *(a1 + 24);
        v17 = *(a1 + 32);
        v29 = v16;
        v30 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          v16 = v29;
        }

        v28 = &unk_288109248;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 1:
        v12 = *(a1 + 24);
        v13 = *(a1 + 32);
        v29 = v12;
        v30 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          v12 = v29;
        }

        v28 = &unk_288109248;
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
            goto LABEL_39;
          }
        }

        goto LABEL_40;
      case 0:
        v3 = *(a1 + 24);
        v4 = *(a1 + 32);
        v29 = v3;
        v30 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
          v3 = v29;
        }

        v28 = &unk_288109248;
        if (v3)
        {
          v6 = *v3;
          v5 = v3[1];
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }

          if (v6)
          {
LABEL_39:
            sub_2717F9298(v29);
          }
        }

LABEL_40:
        operator new();
    }

LABEL_58:
    sub_2711308D4();
  }

  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v24 = *(a1 + 24);
    v25 = *(a1 + 32);
    v29 = v24;
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      v24 = v29;
    }

    v28 = &unk_288109268;
    if (!v24)
    {
      goto LABEL_57;
    }

    v27 = *v24;
    v26 = v24[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    if (!v27)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7)
      {
        goto LABEL_58;
      }

      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v29 = v8;
      v30 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v29;
      }

      v28 = &unk_288109268;
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
          goto LABEL_56;
        }
      }

LABEL_57:
      operator new();
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v29 = v20;
    v30 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      v20 = v29;
    }

    v28 = &unk_288109268;
    if (!v20)
    {
      goto LABEL_57;
    }

    v23 = *v20;
    v22 = v20[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    if (!v23)
    {
      goto LABEL_57;
    }
  }

LABEL_56:
  sub_2717F919C(v29);
  goto LABEL_57;
}

void sub_2715BD544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715BD580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715BD5F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v12;
    a2[2] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      v12 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v12)
    {
      return;
    }

    v15 = *v12;
    v14 = v12[1];
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v15)
      {
        return;
      }

      goto LABEL_24;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (!v15)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v3 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *a2 = &unk_288109288;
    a2[1] = v8;
    a2[2] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      v8 = a2[1];
    }

    *a2 = &unk_288109248;
    if (!v8)
    {
      return;
    }

    v11 = *v8;
    v10 = v8[1];
    if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v11)
      {
        return;
      }

      goto LABEL_24;
    }

    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }

LABEL_24:
    sub_2717F9298(a2[1]);
    return;
  }

  if (v3)
  {
    sub_2711308D4();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = &unk_288109288;
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = a2[1];
  }

  *a2 = &unk_288109248;
  if (v4)
  {
    v7 = *v4;
    v6 = v4[1];
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_24;
    }

    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v7)
    {
      goto LABEL_24;
    }
  }
}

double sub_2715BD8AC@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a1;
  if (a1[1])
  {
    v6 = v4;
  }

  else
  {
    v6 = 32;
  }

  *&v9 = *a1;
  *(&v9 + 1) = (*a1 != 0) | (v6 << 32);
  *a2 = &unk_288109608;
  *(a2 + 8) = 0;
  if (v5 && HIDWORD(v5))
  {
    sub_2715823BC(0, 1);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && HIDWORD(v5))
  {
    *(a2 + 48) = sub_2715827F0(0, a2 + 16, a3);
    *(a2 + 56) = v7;
    *a2 = &unk_28810A268;
  }

  else
  {
    result = *&v9;
    *(a2 + 48) = v9;
    *a2 = &unk_28810A268;
  }

  return result;
}

double sub_2715BD9F0@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a1;
  if (a1[1])
  {
    v6 = v4;
  }

  else
  {
    v6 = 16;
  }

  *&v9 = *a1;
  *(&v9 + 1) = (*a1 != 0) | (v6 << 32);
  *a2 = &unk_2881093C8;
  *(a2 + 8) = 0;
  if (v5 && HIDWORD(v5))
  {
    sub_271589604(0, 2);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && HIDWORD(v5))
  {
    *(a2 + 48) = sub_271589A38(0, a2 + 16, a3);
    *(a2 + 56) = v7;
    *a2 = &unk_288109F98;
  }

  else
  {
    result = *&v9;
    *(a2 + 48) = v9;
    *a2 = &unk_288109F98;
  }

  return result;
}

double sub_2715BDB34@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a1;
  if (a1[1])
  {
    v6 = v4;
  }

  else
  {
    v6 = 16;
  }

  *&v9 = *a1;
  *(&v9 + 1) = (*a1 != 0) | (v6 << 32);
  *a2 = &unk_288109968;
  *(a2 + 8) = 0;
  if (v5 && HIDWORD(v5))
  {
    sub_27158EE20(0, 3);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && HIDWORD(v5))
  {
    *(a2 + 48) = sub_27158F254(0, a2 + 16, a3);
    *(a2 + 56) = v7;
    *a2 = &unk_288109C38;
  }

  else
  {
    result = *&v9;
    *(a2 + 48) = v9;
    *a2 = &unk_288109C38;
  }

  return result;
}

double sub_2715BDC78@<D0>(unsigned int *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*a1 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *a1;
  if (a1[1])
  {
    v6 = v4;
  }

  else
  {
    v6 = 8;
  }

  *&v9 = *a1;
  *(&v9 + 1) = (*a1 != 0) | (v6 << 32);
  *a2 = &unk_2881097B8;
  *(a2 + 8) = 0;
  if (v5 && HIDWORD(v5))
  {
    sub_271594718(0, 4);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && HIDWORD(v5))
  {
    *(a2 + 48) = sub_271594B4C(0, a2 + 16, a3);
    *(a2 + 56) = v7;
    *a2 = &unk_288109BA8;
  }

  else
  {
    result = *&v9;
    *(a2 + 48) = v9;
    *a2 = &unk_288109BA8;
  }

  return result;
}

void sub_2715BDDBC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 2 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v9 = 2;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 2 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109578;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271583EF0(0, 5);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271584324(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  }

  *a2 = &unk_288109B18;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BDF5C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 2 * (*a1 != 0);
  if ((v3 * *a1) <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 16;
  }

  *v9 = 2;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 2 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_2881098D8;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271590B90(0, 7);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271590FC4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  }

  *a2 = &unk_288109A88;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BE0FC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 2 * (*a1 != 0);
  if ((v3 * *a1) <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 8;
  }

  *v9 = 2;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 2 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109728;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271596488(0, 8);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_2715968BC(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x1FFFFFFFFLL | ((v7 >> 1) << 33);
  }

  *a2 = &unk_2881099F8;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BE29C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v9 = 3;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = v3;
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_2881094E8;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715859F4(0, 17);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271585E28(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 | (v7 << 32);
  }

  *a2 = &unk_28810A2F8;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BE434(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v9 = 3;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = v3;
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_2881094E8;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715859F4(0, 21);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271585E28(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 | (v7 << 32);
  }

  *a2 = &unk_28810A1D8;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BE5CC(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 * *a1) <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 16;
  }

  *v9 = 3;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = v3;
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109338;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_27158B358(0, 22);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_27158B78C(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 | (v7 << 32);
  }

  *a2 = &unk_28810A148;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BE764(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v9 = 4;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 4 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109458;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715877A0(0, 25);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271587BD4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_28810A0B8;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BE904(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v9 = 4;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 4 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109458;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715877A0(0, 29);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271587BD4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_28810A028;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BEAA4(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 16;
  }

  *v9 = 4;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 4 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109848;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271592954(0, 31);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271592D88(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109F08;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BEC44(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 8;
  }

  *v9 = 4;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 4 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109698;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_271598248(0, 32);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_27159867C(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109E78;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BEDE4(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v9 = 4;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 4 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109458;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715877A0(0, 33);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271587BD4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109DE8;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BEF84(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 32;
  }

  *v9 = 4;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 4 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_288109458;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_2715877A0(0, 37);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_271587BD4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109D58;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2715BF124(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 4 * (*a1 != 0);
  if ((v3 * *a1) <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3 * *a1;
  }

  v5 = *a1;
  v6 = HIDWORD(*a1);
  if (a1[1])
  {
    v7 = v4;
  }

  else
  {
    v7 = 16;
  }

  *v9 = 4;
  *&v9[4] = *a1;
  LODWORD(v10) = 1;
  HIDWORD(v10) = 4 * (*a1 != 0);
  *&v9[12] = v10;
  *&v9[20] = v7;
  *&v9[24] = *a1;
  *a2 = &unk_2881092A8;
  *(a2 + 8) = 0;
  if (v5 && v6)
  {
    sub_27158D080(0, 38);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = &unk_288109288;
  *(a2 + 40) = 0;
  if (v5 && v6)
  {
    sub_27158D4B4(0, a2 + 16, a2 + 48);
  }

  else
  {
    *(a2 + 48) = *v9;
    *(a2 + 64) = *&v9[16];
    *(a2 + 80) = v3 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  }

  *a2 = &unk_288109CC8;
  v8 = *MEMORY[0x277D85DE8];
}

void *sub_2715BF2C4(void *a1)
{
  *a1 = &unk_28810A3A8;
  sub_2717F1E54(a1 + 1);
  return a1;
}

void sub_2715BF308(void *a1)
{
  *a1 = &unk_28810A3A8;
  sub_2717F1E54(a1 + 1);

  JUMPOUT(0x2743BF050);
}

void *sub_2715BF36C(void *a1)
{
  *a1 = &unk_28810A388;
  sub_2717F2278(a1 + 1);
  return a1;
}

void sub_2715BF3B0(void *a1)
{
  *a1 = &unk_28810A388;
  sub_2717F2278(a1 + 1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715BF414(uint64_t a1)
{
  *a1 = &unk_288109608;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40EE3858B8);
}

uint64_t sub_2715BF4A0(uint64_t a1)
{
  *a1 = &unk_2881093C8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40EE3858B8);
}

uint64_t sub_2715BF52C(uint64_t a1)
{
  *a1 = &unk_288109968;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40EE3858B8);
}

uint64_t sub_2715BF5B8(uint64_t a1)
{
  *a1 = &unk_2881097B8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C40EE3858B8);
}

uint64_t sub_2715BF644(uint64_t a1)
{
  *a1 = &unk_288109578;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF6D0(uint64_t a1)
{
  *a1 = &unk_2881098D8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF75C(uint64_t a1)
{
  *a1 = &unk_288109728;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF7E8(uint64_t a1)
{
  *a1 = &unk_2881094E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF874(uint64_t a1)
{
  *a1 = &unk_2881094E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF900(uint64_t a1)
{
  *a1 = &unk_288109338;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BF98C(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFA18(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFAA4(uint64_t a1)
{
  *a1 = &unk_288109848;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFB30(uint64_t a1)
{
  *a1 = &unk_288109698;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFBBC(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFC48(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

uint64_t sub_2715BFCD4(uint64_t a1)
{
  *a1 = &unk_2881092A8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x2743BF050](a1, 0x10A3C4049419736);
}

void sub_2715BFD60(uint64_t a1, void *a2)
{
  *a2 = &unk_288109288;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2715BFE08(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_288133918[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = &unk_288109288;
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

__n128 sub_2715BFF10(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_288133918[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_288109268;
    *(v3 + 24) = 1;
    return result;
  }

  sub_2717F1D58(a2, a3);
  return result;
}

__n128 sub_2715BFFC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    (off_288133918[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_288109248;
    *(v3 + 24) = 2;
    return result;
  }

  sub_2717F217C(a2, a3);
  return result;
}

uint64_t sub_2715C0080(uint64_t result)
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

void sub_2715C00F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715C01B0(uint64_t a1)
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

uint64_t sub_2715C0254(uint64_t result)
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

void sub_2715C02CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715C0384(uint64_t a1)
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

uint64_t sub_2715C0428(uint64_t result)
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

void sub_2715C04A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715C0558(uint64_t a1)
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

uint64_t sub_2715C05FC(uint64_t a1)
{
  result = sub_2717F4624(a1);
  if (result > 875836517)
  {
    if (result > 1111970368)
    {
      if (result == 1111970369 || result == 1278226488 || result == 1380401729)
      {
        return result;
      }
    }

    else if (result == 875836518 || result == 875836534 || result == 1094862674)
    {
      return result;
    }
  }

  else if (result > 843264055)
  {
    if (result == 843264056 || result == 875704422 || result == 875704438)
    {
      return result;
    }
  }

  else if (result == 24 || result == 32 || result == 842285639)
  {
    return result;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 118, "Contains(pf::formats::U8(), ref.Format())", 0x29uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (byte_28087C438 == 1)
  {
    v2 = qword_28087C408;
    v3 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_25:
        v5 = *v2;
        v4 = *(v2 + 8);
        v2 += 16;
        v5(v4, "Contains(pf::formats::U8(), ref.Format())", 41, "", 0);
      }

      while (v2 != v3);
      if (byte_28087C430)
      {
        goto LABEL_27;
      }

LABEL_30:
      abort();
    }
  }

LABEL_27:
  v7 = qword_28087C420;
  v6 = *algn_28087C428;

  return v7(v6, "Contains(pf::formats::U8(), ref.Format())", 41, "", 0);
}

void sub_2715C0864(double a1, uint64_t a2, int a3, unint64_t a4)
{
  v65[2] = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 1:
      v65[0] = &unk_2881117D8;
      if (a4 <= 0x20)
      {
        v4 = 32;
      }

      else
      {
        v4 = a4;
      }

      v5 = v4 << 32;
      if (!HIDWORD(a4))
      {
        v5 = 0x2000000000;
      }

      if (a4)
      {
        ++v5;
      }

      *v63 = a4;
      *&v63[8] = v5;
      if (HIDWORD(a4) && a4)
      {
        sub_2715823BC(0, 1);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        *&v59 = sub_2715827F0(0, &v55, a1);
        *(&v59 + 1) = v53;
      }

      else
      {
        v59 = *v63;
      }

      operator new();
    case 2:
      v65[0] = &unk_288110F28;
      if (a4 <= 0x10)
      {
        v23 = 16;
      }

      else
      {
        v23 = a4;
      }

      v24 = v23 << 32;
      if (!HIDWORD(a4))
      {
        v24 = 0x1000000000;
      }

      if (a4)
      {
        ++v24;
      }

      *v63 = a4;
      *&v63[8] = v24;
      if (HIDWORD(a4) && a4)
      {
        sub_271589604(0, 2);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        *&v59 = sub_271589A38(0, &v55, a1);
        *(&v59 + 1) = v52;
      }

      else
      {
        v59 = *v63;
      }

      operator new();
    case 3:
      v65[0] = &unk_288110638;
      if (a4 <= 0x10)
      {
        v21 = 16;
      }

      else
      {
        v21 = a4;
      }

      v22 = v21 << 32;
      if (!HIDWORD(a4))
      {
        v22 = 0x1000000000;
      }

      if (a4)
      {
        ++v22;
      }

      *v63 = a4;
      *&v63[8] = v22;
      if (HIDWORD(a4) && a4)
      {
        sub_27158EE20(0, 3);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        *&v59 = sub_27158F254(0, &v55, a1);
        *(&v59 + 1) = v51;
      }

      else
      {
        v59 = *v63;
      }

      operator new();
    case 4:
      v65[0] = &unk_288110498;
      if (a4 <= 8)
      {
        v40 = 8;
      }

      else
      {
        v40 = a4;
      }

      v41 = v40 << 32;
      if (!HIDWORD(a4))
      {
        v41 = 0x800000000;
      }

      if (a4)
      {
        ++v41;
      }

      *v63 = a4;
      *&v63[8] = v41;
      if (HIDWORD(a4) && a4)
      {
        sub_271594718(0, 4);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        *&v59 = sub_271594B4C(0, &v55, a1);
        *(&v59 + 1) = v54;
      }

      else
      {
        v59 = *v63;
      }

      operator new();
    case 5:
      v62 = &unk_2881103A8;
      v25 = 2 * (a4 != 0);
      if ((v25 * a4) <= 0x20)
      {
        v26 = 32;
      }

      else
      {
        v26 = v25 * a4;
      }

      if (HIDWORD(a4))
      {
        v27 = v26;
      }

      else
      {
        v27 = 32;
      }

      *v63 = 2;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v25 & 0x1FFFFFFFFLL | ((v27 >> 1) << 33);
      *&v63[12] = v65[0];
      *&v63[20] = v27;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_271583EF0(0, 5);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271584324(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 30:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, "", 0, "The buffer does not support the given format", 0x2CuLL, sub_271852CA8);
      abort();
    case 7:
      v62 = &unk_288110208;
      v42 = 2 * (a4 != 0);
      if ((v42 * a4) <= 0x10)
      {
        v43 = 16;
      }

      else
      {
        v43 = v42 * a4;
      }

      if (HIDWORD(a4))
      {
        v44 = v43;
      }

      else
      {
        v44 = 16;
      }

      *v63 = 2;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v42 & 0x1FFFFFFFFLL | ((v44 >> 1) << 33);
      *&v63[12] = v65[0];
      *&v63[20] = v44;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_271590B90(0, 7);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271590FC4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 8:
      v62 = &unk_288110118;
      v31 = 2 * (a4 != 0);
      if ((v31 * a4) <= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v31 * a4;
      }

      if (HIDWORD(a4))
      {
        v33 = v32;
      }

      else
      {
        v33 = 8;
      }

      *v63 = 2;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v31 & 0x1FFFFFFFFLL | ((v33 >> 1) << 33);
      *&v63[12] = v65[0];
      *&v63[20] = v33;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_271596488(0, 8);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_2715968BC(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 17:
      v62 = &unk_288111A28;
      if (a4)
      {
        v28 = 3;
      }

      else
      {
        v28 = 0;
      }

      if ((v28 * a4) <= 0x20)
      {
        v29 = 32;
      }

      else
      {
        v29 = v28 * a4;
      }

      if (HIDWORD(a4))
      {
        v30 = v29;
      }

      else
      {
        v30 = 32;
      }

      *v63 = 3;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v28 | (v30 << 32);
      *&v63[12] = v65[0];
      *&v63[20] = v30;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_2715859F4(0, 17);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271585E28(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 21:
      v62 = &unk_288111638;
      if (a4)
      {
        v15 = 3;
      }

      else
      {
        v15 = 0;
      }

      if ((v15 * a4) <= 0x20)
      {
        v16 = 32;
      }

      else
      {
        v16 = v15 * a4;
      }

      if (HIDWORD(a4))
      {
        v17 = v16;
      }

      else
      {
        v17 = 32;
      }

      *v63 = 3;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v15 | (v17 << 32);
      *&v63[12] = v65[0];
      *&v63[20] = v17;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_2715859F4(0, 21);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271585E28(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 22:
      v62 = &unk_288111548;
      if (a4)
      {
        v45 = 3;
      }

      else
      {
        v45 = 0;
      }

      if ((v45 * a4) <= 0x10)
      {
        v46 = 16;
      }

      else
      {
        v46 = v45 * a4;
      }

      if (HIDWORD(a4))
      {
        v47 = v46;
      }

      else
      {
        v47 = 16;
      }

      *v63 = 3;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v45 | (v47 << 32);
      *&v63[12] = v65[0];
      *&v63[20] = v47;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_27158B358(0, 22);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_27158B78C(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 25:
      v62 = &unk_2881112F8;
      v6 = 4 * (a4 != 0);
      if ((v6 * a4) <= 0x20)
      {
        v7 = 32;
      }

      else
      {
        v7 = v6 * a4;
      }

      if (HIDWORD(a4))
      {
        v8 = v7;
      }

      else
      {
        v8 = 32;
      }

      *v63 = 4;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v8;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_2715877A0(0, 25);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271587BD4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 29:
      v62 = &unk_288111018;
      v9 = 4 * (a4 != 0);
      if ((v9 * a4) <= 0x20)
      {
        v10 = 32;
      }

      else
      {
        v10 = v9 * a4;
      }

      if (HIDWORD(a4))
      {
        v11 = v10;
      }

      else
      {
        v11 = 32;
      }

      *v63 = 4;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v9 & 0x3FFFFFFFFLL | ((v11 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v11;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_2715877A0(0, 29);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271587BD4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 31:
      v62 = &unk_288110D88;
      v34 = 4 * (a4 != 0);
      if ((v34 * a4) <= 0x10)
      {
        v35 = 16;
      }

      else
      {
        v35 = v34 * a4;
      }

      if (HIDWORD(a4))
      {
        v36 = v35;
      }

      else
      {
        v36 = 16;
      }

      *v63 = 4;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v34 & 0x3FFFFFFFFLL | ((v36 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v36;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_271592954(0, 31);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271592D88(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 32:
      v62 = &unk_288110C98;
      v48 = 4 * (a4 != 0);
      if ((v48 * a4) <= 8)
      {
        v49 = 8;
      }

      else
      {
        v49 = v48 * a4;
      }

      if (HIDWORD(a4))
      {
        v50 = v49;
      }

      else
      {
        v50 = 8;
      }

      *v63 = 4;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v48 & 0x3FFFFFFFFLL | ((v50 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v50;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_271598248(0, 32);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_27159867C(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 33:
      v62 = &unk_288110BC8;
      v18 = 4 * (a4 != 0);
      if ((v18 * a4) <= 0x20)
      {
        v19 = 32;
      }

      else
      {
        v19 = v18 * a4;
      }

      if (HIDWORD(a4))
      {
        v20 = v19;
      }

      else
      {
        v20 = 32;
      }

      *v63 = 4;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v18 & 0x3FFFFFFFFLL | ((v20 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v20;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_2715877A0(0, 33);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271587BD4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 37:
      v62 = &unk_2881108C8;
      v12 = 4 * (a4 != 0);
      if ((v12 * a4) <= 0x20)
      {
        v13 = 32;
      }

      else
      {
        v13 = v12 * a4;
      }

      if (HIDWORD(a4))
      {
        v14 = v13;
      }

      else
      {
        v14 = 32;
      }

      *v63 = 4;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v12 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v14;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_2715877A0(0, 37);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_271587BD4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    case 38:
      v62 = &unk_2881107D8;
      v37 = 4 * (a4 != 0);
      if ((v37 * a4) <= 0x10)
      {
        v38 = 16;
      }

      else
      {
        v38 = v37 * a4;
      }

      if (HIDWORD(a4))
      {
        v39 = v38;
      }

      else
      {
        v39 = 16;
      }

      *v63 = 4;
      *&v63[4] = a4;
      LODWORD(v65[0]) = 1;
      *(v65 + 4) = v37 & 0x3FFFFFFFFLL | ((v39 >> 2) << 34);
      *&v63[12] = v65[0];
      *&v63[20] = v39;
      *&v63[24] = a4;
      v64 = *(v65 + 4);
      if (HIDWORD(a4) && a4)
      {
        sub_27158D080(0, 38);
      }

      v56 = 0;
      v57 = 0;
      v55 = &unk_288109288;
      v58 = 0;
      if (a4 && HIDWORD(a4))
      {
        sub_27158D4B4(0, &v55, &v59);
      }

      else
      {
        v59 = *v63;
        v60 = *&v63[16];
        v61 = v64;
      }

      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_2715C2DF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C2FEC(double a1, uint64_t a2, int a3, unsigned int *a4)
{
  v245 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 1:
      v236 = &unk_2881117D8;
      v4 = *a4 != 0;
      if (*a4 <= 0x20)
      {
        v5 = 32;
      }

      else
      {
        v5 = *a4;
      }

      v6 = *a4;
      if (a4[1])
      {
        v7 = v5;
      }

      else
      {
        v7 = 32;
      }

      *&v240 = *a4;
      *(&v240 + 1) = v4 | (v7 << 32);
      LOBYTE(v226) = 0;
      v227 = &unk_288109608;
      v228 = 0;
      if (HIDWORD(v6) && v6)
      {
        sub_2715823BC(0, 1);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v6 && HIDWORD(v6))
      {
        *&v233 = sub_2715827F0(0, &v229, a1);
        *(&v233 + 1) = v87;
      }

      else
      {
        v233 = v240;
      }

      if (v232 > 2)
      {
        goto LABEL_644;
      }

      if (!v230)
      {
        goto LABEL_478;
      }

      v100 = *v230;
      v99 = v230[1];
      if (v99)
      {
        atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v99->__on_zero_shared)(v99);
          std::__shared_weak_count::__release_weak(v99);
        }
      }

      if (!v100)
      {
        goto LABEL_478;
      }

      if (v232 == 2)
      {
        v160 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v160 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v160)
        {
          goto LABEL_477;
        }

        v162 = *v160;
        v161 = v160[1];
        if (v161)
        {
          atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v161->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v161->__on_zero_shared)(v161);
            std::__shared_weak_count::__release_weak(v161);
          }
        }

        if (!v162)
        {
          goto LABEL_477;
        }
      }

      else if (v232 == 1)
      {
        v150 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v150 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v150)
        {
          goto LABEL_477;
        }

        v152 = *v150;
        v151 = v150[1];
        if (v151)
        {
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v151->__on_zero_shared)(v151);
            std::__shared_weak_count::__release_weak(v151);
          }
        }

        if (!v152)
        {
          goto LABEL_477;
        }
      }

      else
      {
        if (v232)
        {
LABEL_644:
          sub_2711308D4();
        }

        v101 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v101 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v101)
        {
          goto LABEL_477;
        }

        v103 = *v101;
        v102 = v101[1];
        if (v102)
        {
          atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v102->__on_zero_shared)(v102);
            std::__shared_weak_count::__release_weak(v102);
          }
        }

        if (!v103)
        {
          goto LABEL_477;
        }
      }

      sub_2717F9298(*&v243[8]);
LABEL_477:
      sub_271583B94(v241, &v227);
      v237 = v241;
      v238 = &v226;
      sub_271574524(&v237);
      sub_2717F2278(v243);
LABEL_478:
      v227 = &unk_28810A268;
      operator new();
    case 2:
      v236 = &unk_288110F28;
      v37 = *a4 != 0;
      if (*a4 <= 0x10)
      {
        v38 = 16;
      }

      else
      {
        v38 = *a4;
      }

      v39 = *a4;
      if (a4[1])
      {
        v40 = v38;
      }

      else
      {
        v40 = 16;
      }

      *&v240 = *a4;
      *(&v240 + 1) = v37 | (v40 << 32);
      LOWORD(v226) = 0;
      v227 = &unk_2881093C8;
      v228 = 0;
      if (HIDWORD(v39) && v39)
      {
        sub_271589604(0, 2);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v39 && HIDWORD(v39))
      {
        *&v233 = sub_271589A38(0, &v229, a1);
        *(&v233 + 1) = v86;
      }

      else
      {
        v233 = v240;
      }

      if (v232 > 2)
      {
        goto LABEL_643;
      }

      if (!v230)
      {
        goto LABEL_468;
      }

      v95 = *v230;
      v94 = v230[1];
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v94->__on_zero_shared)(v94);
          std::__shared_weak_count::__release_weak(v94);
        }
      }

      if (!v95)
      {
        goto LABEL_468;
      }

      if (v232 == 2)
      {
        v157 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v157 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v157)
        {
          goto LABEL_467;
        }

        v159 = *v157;
        v158 = v157[1];
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
          }
        }

        if (!v159)
        {
          goto LABEL_467;
        }
      }

      else if (v232 == 1)
      {
        v147 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v147 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v147)
        {
          goto LABEL_467;
        }

        v149 = *v147;
        v148 = v147[1];
        if (v148)
        {
          atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v148->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v148->__on_zero_shared)(v148);
            std::__shared_weak_count::__release_weak(v148);
          }
        }

        if (!v149)
        {
          goto LABEL_467;
        }
      }

      else
      {
        if (v232)
        {
LABEL_643:
          sub_2711308D4();
        }

        v96 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v96 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v96)
        {
          goto LABEL_467;
        }

        v98 = *v96;
        v97 = v96[1];
        if (v97)
        {
          atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v97->__on_zero_shared)(v97);
            std::__shared_weak_count::__release_weak(v97);
          }
        }

        if (!v98)
        {
          goto LABEL_467;
        }
      }

      sub_2717F9298(*&v243[8]);
LABEL_467:
      sub_27158AFFC(v241, &v227);
      v237 = v241;
      v238 = &v226;
      sub_271574D20(&v237);
      sub_2717F2278(v243);
LABEL_468:
      v227 = &unk_288109F98;
      operator new();
    case 3:
      v236 = &unk_288110638;
      v33 = *a4 != 0;
      if (*a4 <= 0x10)
      {
        v34 = 16;
      }

      else
      {
        v34 = *a4;
      }

      v35 = *a4;
      if (a4[1])
      {
        v36 = v34;
      }

      else
      {
        v36 = 16;
      }

      *&v240 = *a4;
      *(&v240 + 1) = v33 | (v36 << 32);
      LOWORD(v226) = 0;
      v227 = &unk_288109968;
      v228 = 0;
      if (HIDWORD(v35) && v35)
      {
        sub_27158EE20(0, 3);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v35 && HIDWORD(v35))
      {
        *&v233 = sub_27158F254(0, &v229, a1);
        *(&v233 + 1) = v85;
      }

      else
      {
        v233 = v240;
      }

      if (v232 > 2)
      {
        goto LABEL_642;
      }

      if (!v230)
      {
        goto LABEL_458;
      }

      v90 = *v230;
      v89 = v230[1];
      if (v89)
      {
        atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v89->__on_zero_shared)(v89);
          std::__shared_weak_count::__release_weak(v89);
        }
      }

      if (!v90)
      {
        goto LABEL_458;
      }

      if (v232 == 2)
      {
        v153 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v153 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v153)
        {
          goto LABEL_457;
        }

        v155 = *v153;
        v154 = v153[1];
        if (v154)
        {
          atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v154->__on_zero_shared)(v154);
            std::__shared_weak_count::__release_weak(v154);
          }
        }

        if (!v155)
        {
          goto LABEL_457;
        }
      }

      else if (v232 == 1)
      {
        v144 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v144 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v144)
        {
          goto LABEL_457;
        }

        v146 = *v144;
        v145 = v144[1];
        if (v145)
        {
          atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v145->__on_zero_shared)(v145);
            std::__shared_weak_count::__release_weak(v145);
          }
        }

        if (!v146)
        {
          goto LABEL_457;
        }
      }

      else
      {
        if (v232)
        {
LABEL_642:
          sub_2711308D4();
        }

        v91 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v91 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v91)
        {
          goto LABEL_457;
        }

        v93 = *v91;
        v92 = v91[1];
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
          }
        }

        if (!v93)
        {
          goto LABEL_457;
        }
      }

      sub_2717F9298(*&v243[8]);
LABEL_457:
      sub_271590834(v241, &v227);
      v237 = v241;
      v238 = &v226;
      sub_271575CAC(&v237, v156);
      sub_2717F2278(v243);
LABEL_458:
      v227 = &unk_288109C38;
      operator new();
    case 4:
      v236 = &unk_288110498;
      v66 = *a4 != 0;
      if (*a4 <= 8)
      {
        v67 = 8;
      }

      else
      {
        v67 = *a4;
      }

      v68 = *a4;
      if (a4[1])
      {
        v69 = v67;
      }

      else
      {
        v69 = 8;
      }

      *&v240 = *a4;
      *(&v240 + 1) = v66 | (v69 << 32);
      v226 = 0;
      v227 = &unk_2881097B8;
      v228 = 0;
      if (HIDWORD(v68) && v68)
      {
        sub_271594718(0, 4);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v68 && HIDWORD(v68))
      {
        *&v233 = sub_271594B4C(0, &v229, a1);
        *(&v233 + 1) = v88;
      }

      else
      {
        v233 = v240;
      }

      if (v232 > 2)
      {
        goto LABEL_649;
      }

      if (!v230)
      {
        goto LABEL_596;
      }

      v125 = *v230;
      v124 = v230[1];
      if (v124)
      {
        atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v124->__on_zero_shared)(v124);
          std::__shared_weak_count::__release_weak(v124);
        }
      }

      if (!v125)
      {
        goto LABEL_596;
      }

      if (v232 == 2)
      {
        v208 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v208 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v208)
        {
          goto LABEL_595;
        }

        v210 = *v208;
        v209 = v208[1];
        if (v209)
        {
          atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v209->__on_zero_shared)(v209);
            std::__shared_weak_count::__release_weak(v209);
          }
        }

        if (!v210)
        {
          goto LABEL_595;
        }
      }

      else if (v232 == 1)
      {
        v192 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v192 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v192)
        {
          goto LABEL_595;
        }

        v194 = *v192;
        v193 = v192[1];
        if (v193)
        {
          atomic_fetch_add_explicit(&v193->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v193->__on_zero_shared)(v193);
            std::__shared_weak_count::__release_weak(v193);
          }
        }

        if (!v194)
        {
          goto LABEL_595;
        }
      }

      else
      {
        if (v232)
        {
LABEL_649:
          sub_2711308D4();
        }

        v126 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v126 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v126)
        {
          goto LABEL_595;
        }

        v128 = *v126;
        v127 = v126[1];
        if (v127)
        {
          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v127->__on_zero_shared)(v127);
            std::__shared_weak_count::__release_weak(v127);
          }
        }

        if (!v128)
        {
          goto LABEL_595;
        }
      }

      sub_2717F9298(*&v243[8]);
LABEL_595:
      sub_27159612C(v241, &v227);
      v237 = v241;
      v238 = &v226;
      sub_271576D2C(&v237, v211);
      sub_2717F2278(v243);
LABEL_596:
      v227 = &unk_288109BA8;
      operator new();
    case 5:
      v236 = &unk_2881103A8;
      v41 = 2 * (*a4 != 0);
      if (v41 * *a4 <= 0x20)
      {
        v42 = 32;
      }

      else
      {
        v42 = v41 * *a4;
      }

      v43 = *a4;
      v44 = HIDWORD(*a4);
      if (a4[1])
      {
        v45 = v42;
      }

      else
      {
        v45 = 32;
      }

      *v243 = 2;
      *&v243[4] = v43;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v41 & 0x1FFFFFFFFLL | ((v45 >> 1) << 33);
      *&v241[12] = *v243;
      *&v241[8] = v44;
      *&v241[20] = v45;
      *&v241[24] = v43;
      v242 = *&v243[4];
      LOBYTE(v226) = 0;
      v227 = &unk_288109578;
      v228 = 0;
      if (v44 && v43)
      {
        sub_271583EF0(0, 5);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v43 && v44)
      {
        sub_271584324(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_645;
      }

      if (!v230)
      {
        goto LABEL_640;
      }

      v105 = *v230;
      v104 = v230[1];
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v104->__on_zero_shared)(v104);
          std::__shared_weak_count::__release_weak(v104);
        }
      }

      if (!v105)
      {
        goto LABEL_640;
      }

      if (v232 == 2)
      {
        v166 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v166 = v238;
        }

        v237 = &unk_288109248;
        if (!v166)
        {
          goto LABEL_495;
        }

        v168 = *v166;
        v167 = v166[1];
        if (v167)
        {
          atomic_fetch_add_explicit(&v167->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v167->__on_zero_shared)(v167);
            std::__shared_weak_count::__release_weak(v167);
          }
        }

        if (!v168)
        {
          goto LABEL_495;
        }
      }

      else
      {
        if (v232 != 1)
        {
          if (v232)
          {
LABEL_645:
            sub_2711308D4();
          }

          v106 = v230;
          v238 = v230;
          v239 = v231;
          if (v231)
          {
            atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
            v106 = v238;
          }

          v237 = &unk_288109248;
          if (v106)
          {
            v108 = *v106;
            v107 = v106[1];
            if (v107)
            {
              atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v107->__on_zero_shared)(v107);
                std::__shared_weak_count::__release_weak(v107);
              }
            }

            if (v108)
            {
              goto LABEL_494;
            }
          }

LABEL_495:
          sub_271585750(v243, &v227);
          *&v240 = v243;
          *(&v240 + 1) = &v226;
          if (*&v243[20] == 1)
          {
            sub_2715746BC(&v240);
LABEL_639:
            sub_2717F2278(&v237);
LABEL_640:
            v227 = &unk_288109B18;
            operator new();
          }

          if (!*&v243[8] || !*&v243[12] || !*&v243[16])
          {
            goto LABEL_639;
          }

          v169 = *&v243[12] - 1;
          v170 = *&v243[24];
          v171 = *v243;
          v172 = *&v243[16] - 1;
          if (*&v243[16] == 1)
          {
            v174 = v226;
          }

          else
          {
            v173 = *&v243[28];
            v174 = v226;
            if (*&v243[12] != 1)
            {
              v175 = 0;
              v176 = *v243 + 1;
              do
              {
                v177 = v176;
                v178 = v169;
                do
                {
                  *(v177 - 1) = v174;
                  v174 = v226;
                  *v177 = v226;
                  v177 += v170;
                  --v178;
                }

                while (v178);
                *(v177 - 1) = v174;
                v174 = v226;
                *v177 = v226;
                v171 += v173;
                ++v175;
                v176 += v173;
              }

              while (v175 != v172);
              goto LABEL_637;
            }

            do
            {
              *v171 = v174;
              v174 = v226;
              v171[1] = v226;
              v171 += v173;
              --v172;
            }

            while (v172);
          }

          if (!v169)
          {
LABEL_638:
            *v171 = v174;
            v171[1] = v226;
            goto LABEL_639;
          }

          do
          {
LABEL_637:
            *v171 = v174;
            v174 = v226;
            v171[1] = v226;
            v171 += v170;
            --v169;
          }

          while (v169);
          goto LABEL_638;
        }

        v163 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v163 = v238;
        }

        v237 = &unk_288109248;
        if (!v163)
        {
          goto LABEL_495;
        }

        v165 = *v163;
        v164 = v163[1];
        if (v164)
        {
          atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
          }
        }

        if (!v165)
        {
          goto LABEL_495;
        }
      }

LABEL_494:
      sub_2717F9298(v238);
      goto LABEL_495;
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 30:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, "", 0, "The buffer does not support the given format", 0x2CuLL, sub_271852CA8);
      abort();
    case 7:
      v236 = &unk_288110208;
      v70 = 2 * (*a4 != 0);
      if (v70 * *a4 <= 0x10)
      {
        v71 = 16;
      }

      else
      {
        v71 = v70 * *a4;
      }

      v72 = *a4;
      v73 = HIDWORD(*a4);
      if (a4[1])
      {
        v74 = v71;
      }

      else
      {
        v74 = 16;
      }

      *v243 = 2;
      *&v243[4] = v72;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v70 & 0x1FFFFFFFFLL | ((v74 >> 1) << 33);
      *&v241[12] = *v243;
      *&v241[8] = v73;
      *&v241[20] = v74;
      *&v241[24] = v72;
      v242 = *&v243[4];
      LOWORD(v226) = 0;
      v227 = &unk_2881098D8;
      v228 = 0;
      if (v73 && v72)
      {
        sub_271590B90(0, 7);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v72 && v73)
      {
        sub_271590FC4(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_650;
      }

      if (!v230)
      {
        goto LABEL_606;
      }

      v130 = *v230;
      v129 = v230[1];
      if (v129)
      {
        atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v129->__on_zero_shared)(v129);
          std::__shared_weak_count::__release_weak(v129);
        }
      }

      if (!v130)
      {
        goto LABEL_606;
      }

      if (v232 == 2)
      {
        v212 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v212 = v238;
        }

        v237 = &unk_288109248;
        if (!v212)
        {
          goto LABEL_605;
        }

        v214 = *v212;
        v213 = v212[1];
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v213->__on_zero_shared)(v213);
            std::__shared_weak_count::__release_weak(v213);
          }
        }

        if (!v214)
        {
          goto LABEL_605;
        }
      }

      else if (v232 == 1)
      {
        v199 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v199 = v238;
        }

        v237 = &unk_288109248;
        if (!v199)
        {
          goto LABEL_605;
        }

        v201 = *v199;
        v200 = v199[1];
        if (v200)
        {
          atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v200->__on_zero_shared)(v200);
            std::__shared_weak_count::__release_weak(v200);
          }
        }

        if (!v201)
        {
          goto LABEL_605;
        }
      }

      else
      {
        if (v232)
        {
LABEL_650:
          sub_2711308D4();
        }

        v131 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v131 = v238;
        }

        v237 = &unk_288109248;
        if (!v131)
        {
          goto LABEL_605;
        }

        v133 = *v131;
        v132 = v131[1];
        if (v132)
        {
          atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v132->__on_zero_shared)(v132);
            std::__shared_weak_count::__release_weak(v132);
          }
        }

        if (!v133)
        {
          goto LABEL_605;
        }
      }

      sub_2717F9298(v238);
LABEL_605:
      sub_2715926B0(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_271575FE8(&v240, v215);
      sub_2717F2278(&v237);
LABEL_606:
      v227 = &unk_288109A88;
      operator new();
    case 8:
      v236 = &unk_288110118;
      v51 = 2 * (*a4 != 0);
      if (v51 * *a4 <= 8)
      {
        v52 = 8;
      }

      else
      {
        v52 = v51 * *a4;
      }

      v53 = *a4;
      v54 = HIDWORD(*a4);
      if (a4[1])
      {
        v55 = v52;
      }

      else
      {
        v55 = 8;
      }

      *v243 = 2;
      *&v243[4] = v53;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v51 & 0x1FFFFFFFFLL | ((v55 >> 1) << 33);
      *&v241[12] = *v243;
      *&v241[8] = v54;
      *&v241[20] = v55;
      *&v241[24] = v53;
      v242 = *&v243[4];
      v226 = 0;
      v227 = &unk_288109728;
      v228 = 0;
      if (v54 && v53)
      {
        sub_271596488(0, 8);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v53 && v54)
      {
        sub_2715968BC(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_646;
      }

      if (!v230)
      {
        goto LABEL_534;
      }

      v110 = *v230;
      v109 = v230[1];
      if (v109)
      {
        atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }
      }

      if (!v110)
      {
        goto LABEL_534;
      }

      if (v232 == 2)
      {
        v185 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v185 = v238;
        }

        v237 = &unk_288109248;
        if (!v185)
        {
          goto LABEL_533;
        }

        v187 = *v185;
        v186 = v185[1];
        if (v186)
        {
          atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v186->__on_zero_shared)(v186);
            std::__shared_weak_count::__release_weak(v186);
          }
        }

        if (!v187)
        {
          goto LABEL_533;
        }
      }

      else if (v232 == 1)
      {
        v179 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v179 = v238;
        }

        v237 = &unk_288109248;
        if (!v179)
        {
          goto LABEL_533;
        }

        v181 = *v179;
        v180 = v179[1];
        if (v180)
        {
          atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v180->__on_zero_shared)(v180);
            std::__shared_weak_count::__release_weak(v180);
          }
        }

        if (!v181)
        {
          goto LABEL_533;
        }
      }

      else
      {
        if (v232)
        {
LABEL_646:
          sub_2711308D4();
        }

        v111 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v111 = v238;
        }

        v237 = &unk_288109248;
        if (!v111)
        {
          goto LABEL_533;
        }

        v113 = *v111;
        v112 = v111[1];
        if (v112)
        {
          atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
          }
        }

        if (!v113)
        {
          goto LABEL_533;
        }
      }

      sub_2717F9298(v238);
LABEL_533:
      sub_271597FA4(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_271576F84(&v240, v188);
      sub_2717F2278(&v237);
LABEL_534:
      v227 = &unk_2881099F8;
      operator new();
    case 17:
      v237 = &unk_288111A28;
      if (*a4)
      {
        v46 = 3;
      }

      else
      {
        v46 = 0;
      }

      if (v46 * *a4 <= 0x20)
      {
        v47 = 32;
      }

      else
      {
        v47 = v46 * *a4;
      }

      v48 = *a4;
      v49 = HIDWORD(*a4);
      if (a4[1])
      {
        v50 = v47;
      }

      else
      {
        v50 = 32;
      }

      *&v243[4] = *a4;
      *v243 = 3;
      *&v243[8] = v49;
      *v241 = 1;
      *&v241[4] = v46 | (v50 << 32);
      *&v243[12] = *v241;
      *&v243[20] = v50;
      *&v243[24] = v48;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_2881094E8;
      v228 = 0;
      if (v49 && v48)
      {
        sub_2715859F4(0, 17);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v48 && v49)
      {
        sub_271585E28(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_27158664C(&v227, v241);
      v227 = &unk_28810A2F8;
      operator new();
    case 21:
      v237 = &unk_288111638;
      if (*a4)
      {
        v23 = 3;
      }

      else
      {
        v23 = 0;
      }

      if (v23 * *a4 <= 0x20)
      {
        v24 = 32;
      }

      else
      {
        v24 = v23 * *a4;
      }

      v25 = *a4;
      v26 = HIDWORD(*a4);
      if (a4[1])
      {
        v27 = v24;
      }

      else
      {
        v27 = 32;
      }

      *&v243[4] = *a4;
      *v243 = 3;
      *&v243[8] = v26;
      *v241 = 1;
      *&v241[4] = v23 | (v27 << 32);
      *&v243[12] = *v241;
      *&v243[20] = v27;
      *&v243[24] = v25;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_2881094E8;
      v228 = 0;
      if (v26 && v25)
      {
        sub_2715859F4(0, 21);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v25 && v26)
      {
        sub_271585E28(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_27158664C(&v227, v241);
      v227 = &unk_28810A1D8;
      operator new();
    case 22:
      v236 = &unk_288111548;
      if (*a4)
      {
        v75 = 3;
      }

      else
      {
        v75 = 0;
      }

      if (v75 * *a4 <= 0x10)
      {
        v76 = 16;
      }

      else
      {
        v76 = v75 * *a4;
      }

      v77 = *a4;
      v78 = HIDWORD(*a4);
      if (a4[1])
      {
        v79 = v76;
      }

      else
      {
        v79 = 16;
      }

      *v243 = 3;
      *&v243[4] = v77;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v75 | (v79 << 32);
      *&v241[12] = *v243;
      *&v241[8] = v78;
      *&v241[20] = v79;
      *&v241[24] = v77;
      v242 = *&v243[4];
      LOWORD(v226) = 0;
      v227 = &unk_288109338;
      v228 = 0;
      if (v78 && v77)
      {
        sub_27158B358(0, 22);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v77 && v78)
      {
        sub_27158B78C(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_651;
      }

      if (!v230)
      {
        goto LABEL_616;
      }

      v135 = *v230;
      v134 = v230[1];
      if (v134)
      {
        atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }
      }

      if (!v135)
      {
        goto LABEL_616;
      }

      if (v232 == 2)
      {
        v216 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v216 = v238;
        }

        v237 = &unk_288109248;
        if (!v216)
        {
          goto LABEL_615;
        }

        v218 = *v216;
        v217 = v216[1];
        if (v217)
        {
          atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v217->__on_zero_shared)(v217);
            std::__shared_weak_count::__release_weak(v217);
          }
        }

        if (!v218)
        {
          goto LABEL_615;
        }
      }

      else if (v232 == 1)
      {
        v205 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v205 = v238;
        }

        v237 = &unk_288109248;
        if (!v205)
        {
          goto LABEL_615;
        }

        v207 = *v205;
        v206 = v205[1];
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v206->__on_zero_shared)(v206);
            std::__shared_weak_count::__release_weak(v206);
          }
        }

        if (!v207)
        {
          goto LABEL_615;
        }
      }

      else
      {
        if (v232)
        {
LABEL_651:
          sub_2711308D4();
        }

        v136 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v136 = v238;
        }

        v237 = &unk_288109248;
        if (!v136)
        {
          goto LABEL_615;
        }

        v138 = *v136;
        v137 = v136[1];
        if (v137)
        {
          atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v137->__on_zero_shared)(v137);
            std::__shared_weak_count::__release_weak(v137);
          }
        }

        if (!v138)
        {
          goto LABEL_615;
        }
      }

      sub_2717F9298(v238);
LABEL_615:
      sub_27158CE54(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_271575070(&v240);
      sub_2717F2278(&v237);
LABEL_616:
      v227 = &unk_28810A148;
      operator new();
    case 25:
      v237 = &unk_2881112F8;
      v8 = 4 * (*a4 != 0);
      if (v8 * *a4 <= 0x20)
      {
        v9 = 32;
      }

      else
      {
        v9 = v8 * *a4;
      }

      v10 = *a4;
      v11 = HIDWORD(*a4);
      if (a4[1])
      {
        v12 = v9;
      }

      else
      {
        v12 = 32;
      }

      *&v243[4] = *a4;
      *v243 = 4;
      *&v243[8] = v11;
      *v241 = 1;
      *&v241[4] = v8 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
      *&v243[12] = *v241;
      *&v243[20] = v12;
      *&v243[24] = v10;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_288109458;
      v228 = 0;
      if (v11 && v10)
      {
        sub_2715877A0(0, 25);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v10 && v11)
      {
        sub_271587BD4(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_2715883F8(&v227, v241);
      v227 = &unk_28810A0B8;
      operator new();
    case 29:
      v237 = &unk_288111018;
      v13 = 4 * (*a4 != 0);
      if (v13 * *a4 <= 0x20)
      {
        v14 = 32;
      }

      else
      {
        v14 = v13 * *a4;
      }

      v15 = *a4;
      v16 = HIDWORD(*a4);
      if (a4[1])
      {
        v17 = v14;
      }

      else
      {
        v17 = 32;
      }

      *&v243[4] = *a4;
      *v243 = 4;
      *&v243[8] = v16;
      *v241 = 1;
      *&v241[4] = v13 & 0x3FFFFFFFFLL | ((v17 >> 2) << 34);
      *&v243[12] = *v241;
      *&v243[20] = v17;
      *&v243[24] = v15;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_288109458;
      v228 = 0;
      if (v16 && v15)
      {
        sub_2715877A0(0, 29);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v15 && v16)
      {
        sub_271587BD4(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_2715883F8(&v227, v241);
      v227 = &unk_28810A028;
      operator new();
    case 31:
      v236 = &unk_288110D88;
      v56 = 4 * (*a4 != 0);
      if (v56 * *a4 <= 0x10)
      {
        v57 = 16;
      }

      else
      {
        v57 = v56 * *a4;
      }

      v58 = *a4;
      v59 = HIDWORD(*a4);
      if (a4[1])
      {
        v60 = v57;
      }

      else
      {
        v60 = 16;
      }

      *v243 = 4;
      *&v243[4] = v58;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v56 & 0x3FFFFFFFFLL | ((v60 >> 2) << 34);
      *&v241[12] = *v243;
      *&v241[8] = v59;
      *&v241[20] = v60;
      *&v241[24] = v58;
      v242 = *&v243[4];
      LOWORD(v226) = 0;
      v227 = &unk_288109848;
      v228 = 0;
      if (v59 && v58)
      {
        sub_271592954(0, 31);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v58 && v59)
      {
        sub_271592D88(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_647;
      }

      if (!v230)
      {
        goto LABEL_560;
      }

      v115 = *v230;
      v114 = v230[1];
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v114->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v114->__on_zero_shared)(v114);
          std::__shared_weak_count::__release_weak(v114);
        }
      }

      if (!v115)
      {
        goto LABEL_560;
      }

      if (v232 == 2)
      {
        v195 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v195 = v238;
        }

        v237 = &unk_288109248;
        if (!v195)
        {
          goto LABEL_559;
        }

        v197 = *v195;
        v196 = v195[1];
        if (v196)
        {
          atomic_fetch_add_explicit(&v196->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v196->__on_zero_shared)(v196);
            std::__shared_weak_count::__release_weak(v196);
          }
        }

        if (!v197)
        {
          goto LABEL_559;
        }
      }

      else if (v232 == 1)
      {
        v182 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v182 = v238;
        }

        v237 = &unk_288109248;
        if (!v182)
        {
          goto LABEL_559;
        }

        v184 = *v182;
        v183 = v182[1];
        if (v183)
        {
          atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v183->__on_zero_shared)(v183);
            std::__shared_weak_count::__release_weak(v183);
          }
        }

        if (!v184)
        {
          goto LABEL_559;
        }
      }

      else
      {
        if (v232)
        {
LABEL_647:
          sub_2711308D4();
        }

        v116 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v116 = v238;
        }

        v237 = &unk_288109248;
        if (!v116)
        {
          goto LABEL_559;
        }

        v118 = *v116;
        v117 = v116[1];
        if (v117)
        {
          atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v117->__on_zero_shared)(v117);
            std::__shared_weak_count::__release_weak(v117);
          }
        }

        if (!v118)
        {
          goto LABEL_559;
        }
      }

      sub_2717F9298(v238);
LABEL_559:
      sub_271594474(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_2715767EC(&v240, v198);
      sub_2717F2278(&v237);
LABEL_560:
      v227 = &unk_288109F08;
      operator new();
    case 32:
      v236 = &unk_288110C98;
      v80 = 4 * (*a4 != 0);
      if (v80 * *a4 <= 8)
      {
        v81 = 8;
      }

      else
      {
        v81 = v80 * *a4;
      }

      v82 = *a4;
      v83 = HIDWORD(*a4);
      if (a4[1])
      {
        v84 = v81;
      }

      else
      {
        v84 = 8;
      }

      *v243 = 4;
      *&v243[4] = v82;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v80 & 0x3FFFFFFFFLL | ((v84 >> 2) << 34);
      *&v241[12] = *v243;
      *&v241[8] = v83;
      *&v241[20] = v84;
      *&v241[24] = v82;
      v242 = *&v243[4];
      v226 = 0;
      v227 = &unk_288109698;
      v228 = 0;
      if (v83 && v82)
      {
        sub_271598248(0, 32);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v82 && v83)
      {
        sub_27159867C(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_652;
      }

      if (!v230)
      {
        goto LABEL_634;
      }

      v140 = *v230;
      v139 = v230[1];
      if (v139)
      {
        atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }
      }

      if (!v140)
      {
        goto LABEL_634;
      }

      if (v232 == 2)
      {
        v222 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v222 = v238;
        }

        v237 = &unk_288109248;
        if (!v222)
        {
          goto LABEL_633;
        }

        v224 = *v222;
        v223 = v222[1];
        if (v223)
        {
          atomic_fetch_add_explicit(&v223->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v223->__on_zero_shared)(v223);
            std::__shared_weak_count::__release_weak(v223);
          }
        }

        if (!v224)
        {
          goto LABEL_633;
        }
      }

      else if (v232 == 1)
      {
        v219 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v219 = v238;
        }

        v237 = &unk_288109248;
        if (!v219)
        {
          goto LABEL_633;
        }

        v221 = *v219;
        v220 = v219[1];
        if (v220)
        {
          atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v220->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v220->__on_zero_shared)(v220);
            std::__shared_weak_count::__release_weak(v220);
          }
        }

        if (!v221)
        {
          goto LABEL_633;
        }
      }

      else
      {
        if (v232)
        {
LABEL_652:
          sub_2711308D4();
        }

        v141 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v141 = v238;
        }

        v237 = &unk_288109248;
        if (!v141)
        {
          goto LABEL_633;
        }

        v143 = *v141;
        v142 = v141[1];
        if (v142)
        {
          atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v142->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v142->__on_zero_shared)(v142);
            std::__shared_weak_count::__release_weak(v142);
          }
        }

        if (!v143)
        {
          goto LABEL_633;
        }
      }

      sub_2717F9298(v238);
LABEL_633:
      sub_271599D64(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_271577500(&v240, v225);
      sub_2717F2278(&v237);
LABEL_634:
      v227 = &unk_288109E78;
      operator new();
    case 33:
      v237 = &unk_288110BC8;
      v28 = 4 * (*a4 != 0);
      if (v28 * *a4 <= 0x20)
      {
        v29 = 32;
      }

      else
      {
        v29 = v28 * *a4;
      }

      v30 = *a4;
      v31 = HIDWORD(*a4);
      if (a4[1])
      {
        v32 = v29;
      }

      else
      {
        v32 = 32;
      }

      *&v243[4] = *a4;
      *v243 = 4;
      *&v243[8] = v31;
      *v241 = 1;
      *&v241[4] = v28 & 0x3FFFFFFFFLL | ((v32 >> 2) << 34);
      *&v243[12] = *v241;
      *&v243[20] = v32;
      *&v243[24] = v30;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_288109458;
      v228 = 0;
      if (v31 && v30)
      {
        sub_2715877A0(0, 33);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v30 && v31)
      {
        sub_271587BD4(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_2715883F8(&v227, v241);
      v227 = &unk_288109DE8;
      operator new();
    case 37:
      v237 = &unk_2881108C8;
      v18 = 4 * (*a4 != 0);
      if (v18 * *a4 <= 0x20)
      {
        v19 = 32;
      }

      else
      {
        v19 = v18 * *a4;
      }

      v20 = *a4;
      v21 = HIDWORD(*a4);
      if (a4[1])
      {
        v22 = v19;
      }

      else
      {
        v22 = 32;
      }

      *&v243[4] = *a4;
      *v243 = 4;
      *&v243[8] = v21;
      *v241 = 1;
      *&v241[4] = v18 & 0x3FFFFFFFFLL | ((v22 >> 2) << 34);
      *&v243[12] = *v241;
      *&v243[20] = v22;
      *&v243[24] = v20;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_288109458;
      v228 = 0;
      if (v21 && v20)
      {
        sub_2715877A0(0, 37);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v20 && v21)
      {
        sub_271587BD4(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_2715883F8(&v227, v241);
      v227 = &unk_288109D58;
      operator new();
    case 38:
      v236 = &unk_2881107D8;
      v61 = 4 * (*a4 != 0);
      if (v61 * *a4 <= 0x10)
      {
        v62 = 16;
      }

      else
      {
        v62 = v61 * *a4;
      }

      v63 = *a4;
      v64 = HIDWORD(*a4);
      if (a4[1])
      {
        v65 = v62;
      }

      else
      {
        v65 = 16;
      }

      *v243 = 4;
      *&v243[4] = v63;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v61 & 0x3FFFFFFFFLL | ((v65 >> 2) << 34);
      *&v241[12] = *v243;
      *&v241[8] = v64;
      *&v241[20] = v65;
      *&v241[24] = v63;
      v242 = *&v243[4];
      LOWORD(v226) = 0;
      v227 = &unk_2881092A8;
      v228 = 0;
      if (v64 && v63)
      {
        sub_27158D080(0, 38);
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v63 && v64)
      {
        sub_27158D4B4(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_648;
      }

      if (!v230)
      {
        goto LABEL_578;
      }

      v120 = *v230;
      v119 = v230[1];
      if (v119)
      {
        atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v119->__on_zero_shared)(v119);
          std::__shared_weak_count::__release_weak(v119);
        }
      }

      if (!v120)
      {
        goto LABEL_578;
      }

      if (v232 == 2)
      {
        v202 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v202 = v238;
        }

        v237 = &unk_288109248;
        if (!v202)
        {
          goto LABEL_577;
        }

        v204 = *v202;
        v203 = v202[1];
        if (v203)
        {
          atomic_fetch_add_explicit(&v203->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
          }
        }

        if (!v204)
        {
          goto LABEL_577;
        }
      }

      else if (v232 == 1)
      {
        v189 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v189 = v238;
        }

        v237 = &unk_288109248;
        if (!v189)
        {
          goto LABEL_577;
        }

        v191 = *v189;
        v190 = v189[1];
        if (v190)
        {
          atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v190->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v190->__on_zero_shared)(v190);
            std::__shared_weak_count::__release_weak(v190);
          }
        }

        if (!v191)
        {
          goto LABEL_577;
        }
      }

      else
      {
        if (v232)
        {
LABEL_648:
          sub_2711308D4();
        }

        v121 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v121 = v238;
        }

        v237 = &unk_288109248;
        if (!v121)
        {
          goto LABEL_577;
        }

        v123 = *v121;
        v122 = v121[1];
        if (v122)
        {
          atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
          }
        }

        if (!v123)
        {
          goto LABEL_577;
        }
      }

      sub_2717F9298(v238);
LABEL_577:
      sub_27158EB7C(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_2715758B0(&v240);
      sub_2717F2278(&v237);
LABEL_578:
      v227 = &unk_288109CC8;
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_2715C7298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_271599008(va);
  _Unwind_Resume(a1);
}

void sub_2715C7394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_271584B48(va);
  _Unwind_Resume(a1);
}

void sub_2715C73B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F1CC4((v2 - 136));
  sub_271582F7C(va);
  _Unwind_Resume(a1);
}

void sub_2715C7578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_2717F2278(va1);
  sub_271584B48(va);
  _Unwind_Resume(a1);
}

void sub_2715C7594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C80E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C81E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C82E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C83EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C84F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C85F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C86F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C87FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C8900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C8A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C8B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C8B38(_BYTE *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[8] = 0;
  v2 = *a2;
  operator new();
}

void sub_2715C8C48(_Unwind_Exception *a1)
{
  sub_2715CB200(*(v1 + 176));
  std::mutex::~mutex(v4);
  sub_27157C440(v3);
  sub_27112F828(v2);
  if (*(v1 + 24) == 1)
  {
    sub_27181A92C((v1 + 16));
    if (*(v1 + 8) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_27181A638(v1);
  _Unwind_Resume(a1);
}

void sub_2715C8DD4(_Unwind_Exception *a1)
{
  sub_2715CB200(*(v1 + 176));
  std::mutex::~mutex(v5);
  sub_27157C440(v4);
  sub_27112F828(v3);
  if (*(v1 + 24) == 1)
  {
    sub_27181A92C(v2);
    if (*(v1 + 8) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_27181A638(v1);
  _Unwind_Resume(a1);
}

void sub_2715C8E3C(_BYTE *a1)
{
  *a1 = 0;
  a1[8] = 0;
  a1[16] = 0;
  a1[24] = 0;
  operator new();
}

void sub_2715C8FE4(_Unwind_Exception *a1)
{
  sub_2715CB200(*v5);
  std::mutex::~mutex(v4);
  sub_27157C440(v3);
  sub_27112F828(v1 + 32);
  if (*(v1 + 24) == 1)
  {
    sub_27181A92C(v2);
    if (*(v1 + 8) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_27181A638(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2715C9054(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *a2;
  v5 = (a1 + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 88) = 0;
  v6 = a1 + 88;
  *(v6 - 24) = 1;
  *(v6 + 16) = 850045863;
  *(v6 - 16) = 0;
  *(v6 - 8) = 0;
  *(v6 + 8) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 96) = 0;
  *(v6 + 88) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = v6 + 88;
  if (atomic_load_explicit(v6, memory_order_acquire) != -1)
  {
    v18 = v19;
    v20.__r_.__value_.__r.__words[0] = &v18;
    std::__call_once(v6, &v20, nullsub_310);
  }

  if (a3 == 1)
  {
    v7 = sub_2715D0DE8();
    if ((sub_27180B444(v5, v7, v8) & 1) == 0)
    {
      v15 = v9;
      __cxa_allocate_exception(0x10uLL);
      sub_27112B400(v19, "CFDictionary cannot be used to create dict::Dictionary. It must only hold trivially serializable types: Boolean, Number, String, Array or Dictionary values");
      v16 = CFCopyTypeIDDescription(v15);
      sub_2715C965C(&v17, v16, 0);
    }
  }

  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return a1;
    }
  }

  else if (!v11)
  {
    return a1;
  }

  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  if (v12 && (atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else if (!v13)
  {
    goto LABEL_16;
  }

  if (!CFDictionaryGetCount(*v5))
  {
LABEL_16:
    operator new();
  }

  return a1;
}

void sub_2715C9374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a17 == 1 && a16 < 0)
  {
    operator delete(a11);
  }

  sub_27112F828(&a9);
  if (a23 < 0)
  {
    operator delete(a18);
    if ((v35 & 1) == 0)
    {
LABEL_11:
      sub_2715CB200(*(v29 + 176));
      std::mutex::~mutex(v33);
      sub_27157C440(v32);
      sub_27112F828(v31);
      if (*(v29 + 24) == 1)
      {
        sub_27181A92C(v30);
        if (*(v29 + 8) != 1)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }
      }

      else if (*(v29 + 8) != 1)
      {
        goto LABEL_13;
      }

      sub_27181A638(v29);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_11;
  }

  __cxa_free_exception(v34);
  goto LABEL_11;
}

uint64_t sub_2715C9484(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = -1;
  if (*(a2 + 23) < 0)
  {
    sub_271127178(&v5, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
  }

  v7 = 1;
  v8 = &v5;
  v9 = ", but contains ";
  v10 = &v5;
  v11 = ", but contains ";
  v12 = ", but contains ";
  sub_2714C5198(&v10, &v5);
  if (*(a3 + 24) == 1)
  {
    v8 = &v5;
    v9 = a3;
    v10 = &v5;
    v11 = a3;
    v12 = a3;
    if (v7 != -1)
    {
      v13 = &v8;
      (off_288133960[v7])(&v13, &v5);
      goto LABEL_9;
    }

LABEL_13:
    sub_2711308D4();
  }

  v8 = &v5;
  v9 = "nullopt";
  v10 = &v5;
  v11 = "nullopt";
  v12 = "nullopt";
  if (v7 == -1)
  {
    goto LABEL_13;
  }

  v13 = &v8;
  (*(&off_288133990 + v7))(&v13, &v5);
LABEL_9:
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v13;
  result = (off_2881339A8[v7])(&v8, &v5);
  if (v7 != -1)
  {
    return (off_288133978[v7])(&v8, &v5);
  }

  return result;
}

void sub_2715C965C(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_2715CB2C0(&v4, cf);
}

uint64_t sub_2715C971C(uint64_t a1, std::mutex **a2)
{
  if (a2)
  {
    v4 = 0;
    LOBYTE(v11) = 0;
    v13 = 0;
    v5 = *(a1 + 32);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!*(a1 + 184))
    {
      v8[0] = 0;
      v8[1] = 0;
      v9 = 1;
      if (a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = &v11;
      }

      sub_2715C9874(&v10, a1, v8, v7);
    }

    v5 = *(*(a1 + 168) + 56);
    if ((v4 & 1) == 0)
    {
      return v5;
    }

    goto LABEL_13;
  }

  std::mutex::lock((a1 + 104));
  v11 = (a1 + 104);
  v4 = 1;
  v12 = 1;
  v13 = 1;
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return v5;
  }

LABEL_13:
  std::mutex::unlock(v11);
  return v5;
}

void sub_2715C984C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::mutex *a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a17 & 1) != 0 && a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C9874(uint64_t a1, std::once_flag::_State_type *a2, unsigned int *a3, uint64_t a4)
{
  if ((a2[12] & 1) != 0 || *(a2 + 24) == 1)
  {
    v9 = a2;
    v10 = &v11;
    v11 = a4;
    if (atomic_load_explicit(a2 + 10, memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once(a2 + 10, &v12, sub_2715CB904);
    }

    v6 = a2[2];
    sub_2718195E0(a3, &v8);
  }

  v9 = a2;
  v10 = &v11;
  v11 = a4;
  if (atomic_load_explicit(a2 + 9, memory_order_acquire) != -1)
  {
    v13 = &v9;
    v12 = &v13;
    std::__call_once(a2 + 9, &v12, sub_2715CB600);
  }

  v7 = *a2;
  sub_271818E78(a3, &v8);
}

void sub_2715C9BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_2715CA6A0(&a9);
  sub_27112F828(&a14);
  _Unwind_Resume(a1);
}

void sub_2715C9BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715C9C00(uint64_t a1, uint64_t *a2)
{
  v32 = (a1 + 104);
  v33 = 1;
  std::mutex::lock((a1 + 104));
  v4 = *(a1 + 176);
  if (!v4)
  {
    goto LABEL_49;
  }

  v5 = *(a2 + 8);
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v5)
  {
    v8 = a1 + 176;
    do
    {
      if (*(v4 + 40) == 1)
      {
        v12 = *(v4 + 32);
        v13 = v12 == v6;
        if (v12 >= v6)
        {
          v9 = 1;
        }

        else
        {
          v9 = -1;
        }

        if (v13)
        {
          v14 = *(v4 + 48);
          v15 = v14 == v7;
          v9 = v14 >= v7 ? 1 : -1;
          if (v15)
          {
            v9 = 0;
          }
        }
      }

      else
      {
        v9 = -1;
      }

      v10 = v9 & 0x80;
      v13 = v10 == 0;
      v11 = v10 >> 4;
      if (v13)
      {
        v8 = v4;
      }

      v4 = *(v4 + v11);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 176;
    do
    {
      v16 = v4;
      if ((*(v4 + 40) & 1) != 0 || (v17 = *(v4 + 48), v18 = v17 >= v7, v13 = v17 == v7, v16 = v4, v13) || (v18 ? (v19 = 0) : (v19 = 1), v16 = (v4 + 8 * v19), v18))
      {
        v8 = v4;
      }

      v4 = *v16;
    }

    while (*v16);
  }

  if (v8 == a1 + 176)
  {
LABEL_49:
    sub_2715C9874(&v31, a1, a2, &v32);
  }

  if (a2[1] & 1) != 0 && (*(v8 + 40))
  {
    v20 = *(v8 + 32);
    v21 = v6 == v20;
    if (v6 >= v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    if (!v21)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v23 = v5 & 1;
  v24 = *(v8 + 40) & ~v5 & 1;
  v22 = -1;
  if (!v24)
  {
    v22 = 1;
  }

  if (v24 == v23)
  {
LABEL_41:
    v25 = *(v8 + 48);
    v26 = *(a2 + 16);
    v18 = v26 >= v25;
    v27 = v26 == v25;
    v28 = -1;
    if (v18)
    {
      v28 = 1;
    }

    if (v27)
    {
      v22 = 0;
    }

    else
    {
      v22 = v28;
    }
  }

LABEL_47:
  if (v22 < 0)
  {
    goto LABEL_49;
  }

  v29 = *(v8 + 56);
  std::mutex::unlock(v32);
  return v29;
}