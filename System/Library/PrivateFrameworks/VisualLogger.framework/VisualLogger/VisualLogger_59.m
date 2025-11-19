void sub_2715A7D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715A7DC8(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_2715A6AE8(&v7, a1);
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

void sub_2715A7F34(uint64_t a1, int a2)
{
  if (a2 == 8)
  {
LABEL_10:
    sub_2715A6D8C(&v7, a1);
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

uint64_t *sub_2715A80A0()
{
  if ((atomic_load_explicit(&qword_28087BC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC80))
  {
    sub_2715C800C();
  }

  if (byte_28087BD7F >= 0)
  {
    return &qword_28087BD68;
  }

  else
  {
    return qword_28087BD68;
  }
}

void sub_2715A8170(uint64_t a1, int a2)
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

void sub_2715A8888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A88C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A8934(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715A8BF0(uint64_t a1)
{
  *a1 = &unk_2881094E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715A8C68(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v13 = &unk_288109288;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_288109288;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271586050(a1, v11);
          v11[0] = &unk_288109288;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_288109288;
          v8 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_2715A8E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_2715A8E94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v18 = &unk_288109288;
          v19 = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v19;
            v7 = v20;
          }

          v12[0] = &unk_288109288;
          v12[1] = v6;
          v13 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271586050(&v14, v12);
          *a1 = v14;
          v8 = v16;
          *(a1 + 8) = v15;
          *(a1 + 24) = v8;
          *(a1 + 40) = v17;
          v12[0] = &unk_288109288;
          v9 = v13;
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v18 = &unk_288109288;
          v10 = v20;
          if (v20)
          {
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_2715A90C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_2717F319C((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_2715A90F4(uint64_t a1)
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
      sub_2715A8E94(v16, a1);
      sub_2715A8E94(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715A94EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A9500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A9514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A9528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271582FF4(v15);
  MEMORY[0x2743BF050](v14, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A9574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A9588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A959C(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715A9858(uint64_t a1, char **lpsrc)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C958, 0);
  if (!v6)
  {
    (*(v4 + 9))(v53, lpsrc, 17);
    v13 = *&v53[0];
    v15 = *(*&v53[0] + 16);
    v14 = *(*&v53[0] + 32);
    v37 = **&v53[0];
    v38 = v15;
    v39 = v14;
    *&v53[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715A8C68(v53, a1);
    sub_2712A2E80(&v37, v53);
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

  sub_2715A8E94(v43, v7);
  v48 = v43[0];
  v49 = v43[1];
  v50 = v44;
  if (HIDWORD(v44) <= 0x20)
  {
    v29 = 32;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v53[0]) = 3;
  DWORD1(v53[0]) = v44;
  *v51 = *&v53[0];
  LODWORD(v53[0]) = 1;
  *(v53 + 4) = DWORD2(v44) | (v29 << 32);
  *&v51[12] = *&v53[0];
  *&v51[8] = DWORD1(v44);
  *&v51[20] = v29;
  *&v51[24] = v44;
  v52 = *(v53 + 4);
  *&v37 = &unk_2881094E8;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_2715859F4(0, 17);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_271585E28(0, &v38, &v40);
  }

  else
  {
    v40 = *v51;
    v41 = *&v51[16];
    v42 = v52;
  }

  v53[0] = v48;
  v53[1] = v49;
  v53[2] = v50;
  sub_2715869E4(&v37, v53);
  *&v37 = &unk_28810A2F8;
  sub_2717F1E54(&v45);
  v30 = DWORD2(v39);
  *(a1 + 8) = DWORD2(v37);
  v31 = *(a1 + 40);
  if (v31 != -1)
  {
    if (v30 == -1)
    {
      (off_288133918[v31])(v53, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_45;
    }

LABEL_44:
    *&v53[0] = a1 + 16;
    (off_288133948[v30])(v53);
LABEL_45:
    v32 = DWORD2(v39);
    result = *&v40;
    v33 = v41;
    *(a1 + 48) = v40;
    *(a1 + 64) = v33;
    *(a1 + 80) = v42;
    *&v37 = &unk_2881094E8;
    if (v32 != -1)
    {
      (off_288133918[v32])(v53, &v38);
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

void sub_2715A9DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715A9E84(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
LABEL_10:
    sub_2715A8C68(&v7, a1);
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

void sub_2715A9FF0(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
LABEL_10:
    sub_2715A8E94(&v7, a1);
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

uint64_t *sub_2715AA15C()
{
  if ((atomic_load_explicit(&qword_28087BC88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC88))
  {
    sub_2715C8110();
  }

  if (byte_28087BD97 >= 0)
  {
    return &qword_28087BD80;
  }

  else
  {
    return qword_28087BD80;
  }
}

void sub_2715AA22C(uint64_t a1, int a2)
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

void sub_2715AA944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715AA980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715AA9F0(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715AACAC(uint64_t a1)
{
  *a1 = &unk_2881094E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715AAD24(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v13 = &unk_288109288;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_288109288;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271586050(a1, v11);
          v11[0] = &unk_288109288;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_288109288;
          v8 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_2715AAF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_2715AAF50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v18 = &unk_288109288;
          v19 = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v19;
            v7 = v20;
          }

          v12[0] = &unk_288109288;
          v12[1] = v6;
          v13 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271586050(&v14, v12);
          *a1 = v14;
          v8 = v16;
          *(a1 + 8) = v15;
          *(a1 + 24) = v8;
          *(a1 + 40) = v17;
          v12[0] = &unk_288109288;
          v9 = v13;
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v18 = &unk_288109288;
          v10 = v20;
          if (v20)
          {
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_2715AB180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_2717F319C((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_2715AB1B0(uint64_t a1)
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
      sub_2715AAF50(v16, a1);
      sub_2715AAF50(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715AB5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AB5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AB5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AB5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271582FF4(v15);
  MEMORY[0x2743BF050](v14, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AB630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AB644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AB658(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715AB914(uint64_t a1, char **lpsrc)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C928, 0);
  if (!v6)
  {
    (*(v4 + 9))(v53, lpsrc, 21);
    v13 = *&v53[0];
    v15 = *(*&v53[0] + 16);
    v14 = *(*&v53[0] + 32);
    v37 = **&v53[0];
    v38 = v15;
    v39 = v14;
    *&v53[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715AAD24(v53, a1);
    sub_2712A2E80(&v37, v53);
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

  sub_2715AAF50(v43, v7);
  v48 = v43[0];
  v49 = v43[1];
  v50 = v44;
  if (HIDWORD(v44) <= 0x20)
  {
    v29 = 32;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v53[0]) = 3;
  DWORD1(v53[0]) = v44;
  *v51 = *&v53[0];
  LODWORD(v53[0]) = 1;
  *(v53 + 4) = DWORD2(v44) | (v29 << 32);
  *&v51[12] = *&v53[0];
  *&v51[8] = DWORD1(v44);
  *&v51[20] = v29;
  *&v51[24] = v44;
  v52 = *(v53 + 4);
  *&v37 = &unk_2881094E8;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_2715859F4(0, 21);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_271585E28(0, &v38, &v40);
  }

  else
  {
    v40 = *v51;
    v41 = *&v51[16];
    v42 = v52;
  }

  v53[0] = v48;
  v53[1] = v49;
  v53[2] = v50;
  sub_2715869E4(&v37, v53);
  *&v37 = &unk_28810A1D8;
  sub_2717F1E54(&v45);
  v30 = DWORD2(v39);
  *(a1 + 8) = DWORD2(v37);
  v31 = *(a1 + 40);
  if (v31 != -1)
  {
    if (v30 == -1)
    {
      (off_288133918[v31])(v53, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_45;
    }

LABEL_44:
    *&v53[0] = a1 + 16;
    (off_288133948[v30])(v53);
LABEL_45:
    v32 = DWORD2(v39);
    result = *&v40;
    v33 = v41;
    *(a1 + 48) = v40;
    *(a1 + 64) = v33;
    *(a1 + 80) = v42;
    *&v37 = &unk_2881094E8;
    if (v32 != -1)
    {
      (off_288133918[v32])(v53, &v38);
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

void sub_2715ABE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715ABF40(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_2715AAD24(&v7, a1);
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

void sub_2715AC0AC(uint64_t a1, int a2)
{
  if (a2 == 21)
  {
LABEL_10:
    sub_2715AAF50(&v7, a1);
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

uint64_t *sub_2715AC218()
{
  if ((atomic_load_explicit(&qword_28087BC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC90))
  {
    sub_2715C8214();
  }

  if (byte_28087BDAF >= 0)
  {
    return &qword_28087BD98;
  }

  else
  {
    return qword_28087BD98;
  }
}

void sub_2715AC2E8(uint64_t a1, int a2)
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

void sub_2715ACA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715ACA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715ACAAC(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715ACD68(uint64_t a1)
{
  *a1 = &unk_288109338;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715ACDE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v13 = &unk_288109288;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_288109288;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158B9B4(a1, v11);
          v11[0] = &unk_288109288;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_288109288;
          v8 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_2715ACFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_2715AD00C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
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
          v18 = &unk_288109288;
          v19 = v6;
          v20 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v19;
            v7 = v20;
          }

          v12[0] = &unk_288109288;
          v12[1] = v6;
          v13 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158B9B4(&v14, v12);
          *a1 = v14;
          v8 = v16;
          *(a1 + 8) = v15;
          *(a1 + 24) = v8;
          *(a1 + 40) = v17;
          v12[0] = &unk_288109288;
          v9 = v13;
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v18 = &unk_288109288;
          v10 = v20;
          if (v20)
          {
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_2715AD23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_2717F319C((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_2715AD26C(uint64_t a1)
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
      sub_2715AD00C(v16, a1);
      sub_2715AD00C(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715AD664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AD678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AD68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AD6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_271582FF4(v15);
  MEMORY[0x2743BF050](v14, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AD6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AD700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AD714(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715AD9D0(uint64_t a1, char **lpsrc)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C910, 0);
  if (!v6)
  {
    (*(v4 + 9))(v53, lpsrc, 22);
    v13 = *&v53[0];
    v15 = *(*&v53[0] + 16);
    v14 = *(*&v53[0] + 32);
    v37 = **&v53[0];
    v38 = v15;
    v39 = v14;
    *&v53[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715ACDE0(v53, a1);
    sub_2712A3624(&v37, v53);
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

  sub_2715AD00C(v43, v7);
  v48 = v43[0];
  v49 = v43[1];
  v50 = v44;
  if (HIDWORD(v44) <= 0x10)
  {
    v29 = 16;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v53[0]) = 3;
  DWORD1(v53[0]) = v44;
  *v51 = *&v53[0];
  LODWORD(v53[0]) = 1;
  *(v53 + 4) = DWORD2(v44) | (v29 << 32);
  *&v51[12] = *&v53[0];
  *&v51[8] = DWORD1(v44);
  *&v51[20] = v29;
  *&v51[24] = v44;
  v52 = *(v53 + 4);
  *&v37 = &unk_288109338;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_27158B358(0, 22);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_27158B78C(0, &v38, &v40);
  }

  else
  {
    v40 = *v51;
    v41 = *&v51[16];
    v42 = v52;
  }

  v53[0] = v48;
  v53[1] = v49;
  v53[2] = v50;
  sub_27158C180(&v37, v53);
  *&v37 = &unk_28810A148;
  sub_2717F1E54(&v45);
  v30 = DWORD2(v39);
  *(a1 + 8) = DWORD2(v37);
  v31 = *(a1 + 40);
  if (v31 != -1)
  {
    if (v30 == -1)
    {
      (off_288133918[v31])(v53, a1 + 16);
      *(a1 + 40) = -1;
      goto LABEL_45;
    }

LABEL_44:
    *&v53[0] = a1 + 16;
    (off_288133948[v30])(v53);
LABEL_45:
    v32 = DWORD2(v39);
    result = *&v40;
    v33 = v41;
    *(a1 + 48) = v40;
    *(a1 + 64) = v33;
    *(a1 + 80) = v42;
    *&v37 = &unk_288109338;
    if (v32 != -1)
    {
      (off_288133918[v32])(v53, &v38);
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

void sub_2715ADF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715ADFFC(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_2715ACDE0(&v7, a1);
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

void sub_2715AE168(uint64_t a1, int a2)
{
  if (a2 == 22)
  {
LABEL_10:
    sub_2715AD00C(&v7, a1);
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

uint64_t *sub_2715AE2D4()
{
  if ((atomic_load_explicit(&qword_28087BC98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC98))
  {
    sub_2715C8318();
  }

  if (byte_28087BDC7 >= 0)
  {
    return &qword_28087BDB0;
  }

  else
  {
    return qword_28087BDB0;
  }
}

void sub_2715AE3A4(uint64_t a1, int a2)
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

void sub_2715AEABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715AEAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715AEB68(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715AEE24(uint64_t a1)
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

void sub_2715AEE9C(uint64_t a1, uint64_t a2)
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

void sub_2715AF124(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715AF140(uint64_t a1, uint64_t a2)
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

void sub_2715AF3E4(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715AF414(uint64_t a1)
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
      sub_2715AF140(v16, a1);
      sub_2715AF140(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715AF7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AF80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AF820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715AF834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AF880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AF894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715AF8A8(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715AFB64(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C8F8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 25);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715AEE9C(v50, a1);
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

  sub_2715AF140(v43, v7);
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
    sub_2715877A0(0, 25);
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
  *&v37 = &unk_28810A0B8;
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

void sub_2715B00D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B017C(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_2715AEE9C(&v7, a1);
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

void sub_2715B02E8(uint64_t a1, int a2)
{
  if (a2 == 25)
  {
LABEL_10:
    sub_2715AF140(&v7, a1);
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

uint64_t *sub_2715B0454()
{
  if ((atomic_load_explicit(&qword_28087BCA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCA0))
  {
    sub_2715C841C();
  }

  if (byte_28087BDDF >= 0)
  {
    return &qword_28087BDC8;
  }

  else
  {
    return qword_28087BDC8;
  }
}

void sub_2715B0524(uint64_t a1, int a2)
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

void sub_2715B0C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B0C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B0CE8(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715B0FA4(uint64_t a1)
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

void sub_2715B101C(uint64_t a1, uint64_t a2)
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

void sub_2715B12A4(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715B12C0(uint64_t a1, uint64_t a2)
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

void sub_2715B1564(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715B1594(uint64_t a1)
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
      sub_2715B12C0(v16, a1);
      sub_2715B12C0(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715B1978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B19A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B19B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B1A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B1A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B1A28(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715B1CE4(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C8E0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 29);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715B101C(v50, a1);
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

  sub_2715B12C0(v43, v7);
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
    sub_2715877A0(0, 29);
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
  *&v37 = &unk_28810A028;
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

void sub_2715B2250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B22FC(uint64_t a1, int a2)
{
  if (a2 == 29)
  {
LABEL_10:
    sub_2715B101C(&v7, a1);
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

void sub_2715B2468(uint64_t a1, int a2)
{
  if (a2 == 29)
  {
LABEL_10:
    sub_2715B12C0(&v7, a1);
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

uint64_t *sub_2715B25D4()
{
  if ((atomic_load_explicit(&qword_28087BCA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCA8))
  {
    sub_2715C8520();
  }

  if (byte_28087BDF7 >= 0)
  {
    return &qword_28087BDE0;
  }

  else
  {
    return qword_28087BDE0;
  }
}

void sub_2715B26A4(uint64_t a1, int a2)
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

void sub_2715B2DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B2DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B2E68(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715B3124(uint64_t a1)
{
  *a1 = &unk_288109848;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715B319C(uint64_t a1, uint64_t a2)
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

          sub_271592FB0(a1, v19);
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

void sub_2715B3424(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715B3440(uint64_t a1, uint64_t a2)
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

          sub_271592FB0(v25, v20);
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

void sub_2715B36E4(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715B3714(uint64_t a1)
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
      sub_2715B3440(v16, a1);
      sub_2715B3440(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715B3AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B3B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B3BA8(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715B3E64(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C8B0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 31);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715B319C(v50, a1);
    *&v43[0] = &v37;
    *(&v43[0] + 1) = v50;
    *&result = sub_2712A6EAC(v43);
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

  sub_2715B3440(v43, v7);
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
  *&v37 = &unk_288109848;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_271592954(0, 31);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_271592D88(0, &v38, &v40);
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
  sub_27159378C(&v37, v50);
  *&v37 = &unk_288109F08;
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
    *&v37 = &unk_288109848;
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

void sub_2715B43D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B4484(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_2715B319C(&v7, a1);
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

void sub_2715B45F0(uint64_t a1, int a2)
{
  if (a2 == 31)
  {
LABEL_10:
    sub_2715B3440(&v7, a1);
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

uint64_t *sub_2715B475C()
{
  if ((atomic_load_explicit(&qword_28087BCB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCB0))
  {
    sub_2715C8624();
  }

  if (byte_28087BE0F >= 0)
  {
    return &qword_28087BDF8;
  }

  else
  {
    return qword_28087BDF8;
  }
}

void sub_2715B482C(uint64_t a1, int a2)
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

void sub_2715B4F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B4F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B4FF0(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715B52AC(uint64_t a1)
{
  *a1 = &unk_288109698;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715B5324(uint64_t a1, uint64_t a2)
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

          sub_2715988A4(a1, v19);
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

void sub_2715B55AC(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715B55C8(uint64_t a1, uint64_t a2)
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

          sub_2715988A4(v25, v20);
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

void sub_2715B586C(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715B589C(uint64_t a1)
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
      sub_2715B55C8(v16, a1);
      sub_2715B55C8(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715B5C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B5C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B5CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715B5CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B5D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715B5D30(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715B5FEC(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C898, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 32);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715B5324(v50, a1);
    sub_271245B78(&v37, v50);
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

  sub_2715B55C8(v43, v7);
  if (HIDWORD(v44) <= 8)
  {
    v29 = 8;
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
  *&v37 = &unk_288109698;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_271598248(0, 32);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_27159867C(0, &v38, &v40);
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
  sub_271599080(&v37, v50);
  *&v37 = &unk_288109E78;
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
    *&v37 = &unk_288109698;
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

void sub_2715B6558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715B6604(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_2715B5324(&v7, a1);
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

void sub_2715B6770(uint64_t a1, int a2)
{
  if (a2 == 32)
  {
LABEL_10:
    sub_2715B55C8(&v7, a1);
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

uint64_t *sub_2715B68DC()
{
  if ((atomic_load_explicit(&qword_28087BCB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BCB8))
  {
    sub_2715C8728();
  }

  if (byte_28087BE27 >= 0)
  {
    return &qword_28087BE10;
  }

  else
  {
    return qword_28087BE10;
  }
}

void sub_2715B69AC(uint64_t a1, int a2)
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

void sub_2715B70C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B7100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715B7170(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715B742C(uint64_t a1)
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

void sub_2715B74A4(uint64_t a1, uint64_t a2)
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

void sub_2715B772C(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715B7748(uint64_t a1, uint64_t a2)
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