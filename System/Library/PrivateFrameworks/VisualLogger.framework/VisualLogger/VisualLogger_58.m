void sub_271598FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598FE8(_Unwind_Exception *a1, uint64_t a2, ...)
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
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271599008(uint64_t a1)
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

void sub_271599080(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

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

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

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

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

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

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271599D64(v20, a1);
        sub_271245B78(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27159934C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271599360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271599374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271599388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27159939C(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109698;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v34 = v4;
  v35 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_83;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v41[0] = &unk_288109288;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
          goto LABEL_43;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_83;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_42;
    }
  }

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
  {
    goto LABEL_33;
  }

LABEL_43:
  v41[0] = &unk_288109288;
  v16 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = v35;
    v39 = v34;
    v40 = v35;
    if (v35)
    {
      goto LABEL_46;
    }

LABEL_50:
    v38 = &unk_288109288;
    goto LABEL_51;
  }

  v17 = v35;
  v39 = v34;
  v40 = v35;
  if (!v35)
  {
    goto LABEL_50;
  }

LABEL_46:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_51:
  v36[0] = &unk_288109288;
  v36[1] = v34;
  v37 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(v36);
  v19 = sub_2717F3958(v36);
  v20 = sub_2717F3D9C(v36);
  v21 = sub_2717F41E0(v36);
  v36[0] = &unk_288109288;
  v22 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v23 = v21;
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v21 = v23;
  }

  v24 = v18 | (v19 << 32);
  LODWORD(v43[0]) = 4;
  HIDWORD(v43[0]) = v24;
  *(a1 + 48) = v43[0];
  *(a1 + 56) = v19;
  LODWORD(v43[0]) = 1;
  *(v43 + 4) = (v21 << 30) & 0xFFFFFFFF00000000 | (v20 >> 2);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v21 >> 2;
  *(a1 + 72) = v24;
  *(a1 + 80) = (v21 << 30) & 0xFFFFFFFF00000000 | (v20 >> 2);
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v25 = *(a2 + 8);
    if (v25)
    {
      goto LABEL_59;
    }

LABEL_67:
    v29 = 0;
    goto LABEL_68;
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_67;
  }

LABEL_59:
  v26 = *(v25 + 8);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
      v27 = *(a2 + 8);
      if (v27)
      {
        goto LABEL_62;
      }

LABEL_72:
      v29 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_73;
      }

LABEL_69:
      if ((v29 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_82;
      }

      goto LABEL_74;
    }
  }

  v27 = *(a2 + 8);
  if (!v27)
  {
    goto LABEL_72;
  }

LABEL_62:
  v29 = *v27;
  v28 = v27[1];
  if (!v28 || (atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_68:
    if (!*(a1 + 72))
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  if (*(a1 + 72))
  {
    goto LABEL_69;
  }

LABEL_73:
  if (v29)
  {
LABEL_74:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v30 = qword_28087C408, v31 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_81:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_82;
      }
    }

    else
    {
      v30 = qword_28087C408;
      v31 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_83;
      }
    }

    do
    {
      (*v30)(*(v30 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v30 += 16;
    }

    while (v30 != v31);
    if (byte_28087C430)
    {
      goto LABEL_81;
    }

LABEL_83:
    abort();
  }

LABEL_82:
  v32 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271599C50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_271599CC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271599D64(uint64_t a1, uint64_t a2)
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

void sub_271599FEC(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_27159A008(uint64_t a1)
{
  *a1 = &unk_288109608;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27159A080(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
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
          v22 = &unk_288109288;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_2715829FC(a1, v20);
          v20[0] = &unk_288109288;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_288109288;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_27159A3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_27159A3DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_288109288;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_2715829FC(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_288109288;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_288109288;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_27159A72C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_27159A75C(uint64_t a1)
{
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
      sub_27159A3DC(v16, a1);
      sub_27159A3DC(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_27159AACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159AAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159AAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159AB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_271582FF4(v9);
  MEMORY[0x2743BF050](v8, 0x10A3C40EE3858B8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159AB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159AB7C(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_27159AE38(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C940, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v41, lpsrc, 1);
    v13 = v41;
    v14 = *(v41 + 16);
    v31 = *v41;
    v32[0] = v14;
    *&v41 = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v15);
    sub_27159A080(&v41, a1);
    sub_271253768(&v31, &v41);
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v38 = v21;
    v39 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v38;
    }

    v37 = &unk_288109268;
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
        goto LABEL_30;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    v38 = v17;
    v39 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v17 = v38;
    }

    v37 = &unk_288109268;
    if (v17)
    {
      v20 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (v20)
      {
        goto LABEL_30;
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
    v38 = v9;
    v39 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v38;
    }

    v37 = &unk_288109268;
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
LABEL_30:
        sub_2717F919C(v38);
      }
    }
  }

  sub_27159A3DC(&v35, v7);
  if (HIDWORD(v36) <= 0x20)
  {
    v26 = 32;
  }

  else
  {
    v26 = HIDWORD(v36);
  }

  *&v40 = *(&v35 + 1);
  *(&v40 + 1) = v36 | (v26 << 32);
  *&v31 = &unk_288109608;
  DWORD2(v31) = 0;
  if (HIDWORD(*(&v35 + 1)) && DWORD2(v35))
  {
    sub_2715823BC(0, 1);
  }

  v32[1] = 0;
  v32[2] = 0;
  v32[0] = &unk_288109288;
  v33 = 0;
  if (DWORD2(v35) && HIDWORD(v35))
  {
    *&v34 = sub_2715827F0(0, v32, v25);
    *(&v34 + 1) = v27;
  }

  else
  {
    v34 = v40;
  }

  v41 = v35;
  v42 = v36;
  sub_271583050(&v31, &v41);
  *&v31 = &unk_28810A268;
  sub_2717F1E54(&v37);
  v28 = v33;
  *(a1 + 8) = DWORD2(v31);
  v29 = *(a1 + 40);
  if (v29 == -1)
  {
    if (v28 == -1)
    {
      result = *&v34;
      *(a1 + 48) = v34;
      return result;
    }
  }

  else if (v28 == -1)
  {
    (off_288133918[v29])(&v41, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_46;
  }

  *&v41 = a1 + 16;
  (off_288133948[v28])(&v41);
LABEL_46:
  v30 = v33;
  result = *&v34;
  *(a1 + 48) = v34;
  *&v31 = &unk_288109608;
  if (v30 != -1)
  {
    (off_288133918[v30])(&v41, v32);
  }

  return result;
}

void sub_27159B2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159B2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159B310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159B328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_271582FF4(v12);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_271582F7C(&a9);
  sub_2717F1E54(&a20);
  _Unwind_Resume(a1);
}

void sub_27159B378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159B3B8(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_27159A080(&v7, a1);
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

void sub_27159B524(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
LABEL_10:
    sub_27159A3DC(&v7, a1);
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

uint64_t *sub_27159B690()
{
  if ((atomic_load_explicit(&qword_28087BC50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC50))
  {
    sub_2715C79F4();
  }

  if (byte_28087BCEF >= 0)
  {
    return &qword_28087BCD8;
  }

  else
  {
    return qword_28087BCD8;
  }
}

void sub_27159B760(uint64_t a1, int a2)
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

void sub_27159BE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_27159BEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_27159BF24(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_27159C1E0(uint64_t a1)
{
  *a1 = &unk_2881093C8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27159C258(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
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
          v22 = &unk_288109288;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271589C44(a1, v20);
          v20[0] = &unk_288109288;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_288109288;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_27159C598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_27159C5B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_288109288;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271589C44(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_288109288;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_288109288;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_27159C904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_27159C934(uint64_t a1)
{
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
      sub_27159C5B4(v16, a1);
      sub_27159C5B4(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_27159CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159CCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159CCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_271582FF4(v9);
  MEMORY[0x2743BF050](v8, 0x10A3C40EE3858B8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159CD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159CD54(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_27159D010(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C8C8, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v41, lpsrc, 2);
    v13 = v41;
    v14 = *(v41 + 16);
    v31 = *v41;
    v32[0] = v14;
    *&v41 = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v15);
    sub_27159C258(&v41, a1);
    sub_271254000(&v31, &v41);
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v38 = v21;
    v39 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v38;
    }

    v37 = &unk_288109268;
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
        goto LABEL_30;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    v38 = v17;
    v39 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v17 = v38;
    }

    v37 = &unk_288109268;
    if (v17)
    {
      v20 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (v20)
      {
        goto LABEL_30;
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
    v38 = v9;
    v39 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v38;
    }

    v37 = &unk_288109268;
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
LABEL_30:
        sub_2717F919C(v38);
      }
    }
  }

  sub_27159C5B4(&v35, v7);
  if (HIDWORD(v36) <= 0x10)
  {
    v26 = 16;
  }

  else
  {
    v26 = HIDWORD(v36);
  }

  *&v40 = *(&v35 + 1);
  *(&v40 + 1) = v36 | (v26 << 32);
  *&v31 = &unk_2881093C8;
  DWORD2(v31) = 0;
  if (HIDWORD(*(&v35 + 1)) && DWORD2(v35))
  {
    sub_271589604(0, 2);
  }

  v32[1] = 0;
  v32[2] = 0;
  v32[0] = &unk_288109288;
  v33 = 0;
  if (DWORD2(v35) && HIDWORD(v35))
  {
    *&v34 = sub_271589A38(0, v32, v25);
    *(&v34 + 1) = v27;
  }

  else
  {
    v34 = v40;
  }

  v41 = v35;
  v42 = v36;
  sub_27158A388(&v31, &v41);
  *&v31 = &unk_288109F98;
  sub_2717F1E54(&v37);
  v28 = v33;
  *(a1 + 8) = DWORD2(v31);
  v29 = *(a1 + 40);
  if (v29 == -1)
  {
    if (v28 == -1)
    {
      result = *&v34;
      *(a1 + 48) = v34;
      return result;
    }
  }

  else if (v28 == -1)
  {
    (off_288133918[v29])(&v41, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_46;
  }

  *&v41 = a1 + 16;
  (off_288133948[v28])(&v41);
LABEL_46:
  v30 = v33;
  result = *&v34;
  *(a1 + 48) = v34;
  *&v31 = &unk_2881093C8;
  if (v30 != -1)
  {
    (off_288133918[v30])(&v41, v32);
  }

  return result;
}

void sub_27159D4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159D4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159D4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159D500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_271582FF4(v12);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159D534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_27158A310(&a9);
  sub_2717F1E54(&a20);
  _Unwind_Resume(a1);
}

void sub_27159D550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159D590(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_27159C258(&v7, a1);
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

void sub_27159D6FC(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
LABEL_10:
    sub_27159C5B4(&v7, a1);
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

uint64_t *sub_27159D868()
{
  if ((atomic_load_explicit(&qword_28087BC58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC58))
  {
    sub_2715C7AF8();
  }

  if (byte_28087BD07 >= 0)
  {
    return &qword_28087BCF0;
  }

  else
  {
    return qword_28087BCF0;
  }
}

void sub_27159D938(uint64_t a1, int a2)
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

void sub_27159E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_27159E08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_27159E0FC(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_27159E3B8(uint64_t a1)
{
  *a1 = &unk_288109968;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_27159E430(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
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
          v22 = &unk_288109288;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158F460(a1, v20);
          v20[0] = &unk_288109288;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_288109288;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_27159E770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_27159E78C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_288109288;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158F460(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_288109288;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_288109288;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_27159EADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_27159EB0C(uint64_t a1)
{
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
      sub_27159E78C(v16, a1);
      sub_27159E78C(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_27159EE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159EE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159EEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159EEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_271582FF4(v9);
  MEMORY[0x2743BF050](v8, 0x10A3C40EE3858B8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159EF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159EF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159EF2C(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_27159F1E8(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C838, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v41, lpsrc, 3);
    v13 = v41;
    v14 = *(v41 + 16);
    v31 = *v41;
    v32[0] = v14;
    *&v41 = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v15);
    sub_27159E430(&v41, a1);
    *&result = sub_27123D99C(&v31, &v41);
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v38 = v21;
    v39 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v38;
    }

    v37 = &unk_288109268;
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
        goto LABEL_30;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    v38 = v17;
    v39 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v17 = v38;
    }

    v37 = &unk_288109268;
    if (v17)
    {
      v20 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (v20)
      {
        goto LABEL_30;
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
    v38 = v9;
    v39 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v38;
    }

    v37 = &unk_288109268;
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
LABEL_30:
        sub_2717F919C(v38);
      }
    }
  }

  sub_27159E78C(&v35, v7);
  if (HIDWORD(v36) <= 0x10)
  {
    v26 = 16;
  }

  else
  {
    v26 = HIDWORD(v36);
  }

  *&v40 = *(&v35 + 1);
  *(&v40 + 1) = v36 | (v26 << 32);
  *&v31 = &unk_288109968;
  DWORD2(v31) = 0;
  if (HIDWORD(*(&v35 + 1)) && DWORD2(v35))
  {
    sub_27158EE20(0, 3);
  }

  v32[1] = 0;
  v32[2] = 0;
  v32[0] = &unk_288109288;
  v33 = 0;
  if (DWORD2(v35) && HIDWORD(v35))
  {
    *&v34 = sub_27158F254(0, v32, v25);
    *(&v34 + 1) = v27;
  }

  else
  {
    v34 = v40;
  }

  v41 = v35;
  v42 = v36;
  sub_27158FBB0(&v31, &v41);
  *&v31 = &unk_288109C38;
  sub_2717F1E54(&v37);
  v28 = v33;
  *(a1 + 8) = DWORD2(v31);
  v29 = *(a1 + 40);
  if (v29 == -1)
  {
    if (v28 == -1)
    {
      result = *&v34;
      *(a1 + 48) = v34;
      return result;
    }
  }

  else if (v28 == -1)
  {
    (off_288133918[v29])(&v41, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_46;
  }

  *&v41 = a1 + 16;
  (off_288133948[v28])(&v41);
LABEL_46:
  v30 = v33;
  result = *&v34;
  *(a1 + 48) = v34;
  *&v31 = &unk_288109968;
  if (v30 != -1)
  {
    (off_288133918[v30])(&v41, v32);
  }

  return result;
}

void sub_27159F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159F6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159F6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159F6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_271582FF4(v12);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159F70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_27158FB38(&a9);
  sub_2717F1E54(&a20);
  _Unwind_Resume(a1);
}

void sub_27159F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_27159F768(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_27159E430(&v7, a1);
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

void sub_27159F8D4(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
LABEL_10:
    sub_27159E78C(&v7, a1);
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

uint64_t *sub_27159FA40()
{
  if ((atomic_load_explicit(&qword_28087BC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC60))
  {
    sub_2715C7BFC();
  }

  if (byte_28087BD1F >= 0)
  {
    return &qword_28087BD08;
  }

  else
  {
    return qword_28087BD08;
  }
}

void sub_27159FB10(uint64_t a1, int a2)
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

void sub_2715A0228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A0264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A02D4(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715A0590(uint64_t a1)
{
  *a1 = &unk_2881097B8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715A0608(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
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
          v22 = &unk_288109288;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271594D58(a1, v20);
          v20[0] = &unk_288109288;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_288109288;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_2715A0948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_2715A0964(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *v3;
    v4 = v3[1];
    if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v10 = a2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      a2 = v10;
      if (v5)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v6 = *(a2 + 24);
          v7 = *(a2 + 32);
          v24 = &unk_288109288;
          v25 = v6;
          v26 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v6 = v25;
            v7 = v26;
          }

          v20[0] = &unk_288109288;
          v20[1] = v6;
          v21 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271594D58(&v22, v20);
          *a1 = v22;
          *(a1 + 8) = v23;
          v20[0] = &unk_288109288;
          v8 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v24 = &unk_288109288;
          v9 = v26;
          if (v26)
          {
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v5)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_2715A0CB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715A0CE4(uint64_t a1)
{
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
      sub_2715A0964(v16, a1);
      sub_2715A0964(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715A1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A1068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A1090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_271582FF4(v9);
  MEMORY[0x2743BF050](v8, 0x10A3C40EE3858B8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A10F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A1104(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715A13C0(uint64_t a1, char **lpsrc)
{
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C820, 0);
  if (!v6)
  {
    (*(v4 + 9))(&v41, lpsrc, 4);
    v13 = v41;
    v14 = *(v41 + 16);
    v31 = *v41;
    v32[0] = v14;
    *&v41 = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v15);
    sub_2715A0608(&v41, a1);
    *&result = sub_27125505C(&v31, &v41);
    return result;
  }

  v7 = v6;
  v8 = v6[10];
  if (v8 == 2)
  {
    v21 = *(v6 + 3);
    v22 = *(v6 + 4);
    v38 = v21;
    v39 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      v21 = v38;
    }

    v37 = &unk_288109268;
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
        goto LABEL_30;
      }
    }
  }

  else if (v8 == 1)
  {
    v17 = *(v6 + 3);
    v18 = *(v6 + 4);
    v38 = v17;
    v39 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      v17 = v38;
    }

    v37 = &unk_288109268;
    if (v17)
    {
      v20 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (v20)
      {
        goto LABEL_30;
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
    v38 = v9;
    v39 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      v9 = v38;
    }

    v37 = &unk_288109268;
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
LABEL_30:
        sub_2717F919C(v38);
      }
    }
  }

  sub_2715A0964(&v35, v7);
  if (HIDWORD(v36) <= 8)
  {
    v26 = 8;
  }

  else
  {
    v26 = HIDWORD(v36);
  }

  *&v40 = *(&v35 + 1);
  *(&v40 + 1) = v36 | (v26 << 32);
  *&v31 = &unk_2881097B8;
  DWORD2(v31) = 0;
  if (HIDWORD(*(&v35 + 1)) && DWORD2(v35))
  {
    sub_271594718(0, 4);
  }

  v32[1] = 0;
  v32[2] = 0;
  v32[0] = &unk_288109288;
  v33 = 0;
  if (DWORD2(v35) && HIDWORD(v35))
  {
    *&v34 = sub_271594B4C(0, v32, v25);
    *(&v34 + 1) = v27;
  }

  else
  {
    v34 = v40;
  }

  v41 = v35;
  v42 = v36;
  sub_2715954A8(&v31, &v41);
  *&v31 = &unk_288109BA8;
  sub_2717F1E54(&v37);
  v28 = v33;
  *(a1 + 8) = DWORD2(v31);
  v29 = *(a1 + 40);
  if (v29 == -1)
  {
    if (v28 == -1)
    {
      result = *&v34;
      *(a1 + 48) = v34;
      return result;
    }
  }

  else if (v28 == -1)
  {
    (off_288133918[v29])(&v41, a1 + 16);
    *(a1 + 40) = -1;
    goto LABEL_46;
  }

  *&v41 = a1 + 16;
  (off_288133948[v28])(&v41);
LABEL_46:
  v30 = v33;
  result = *&v34;
  *(a1 + 48) = v34;
  *&v31 = &unk_2881097B8;
  if (v30 != -1)
  {
    (off_288133918[v30])(&v41, v32);
  }

  return result;
}

void sub_2715A1870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A1884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A1898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A18B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_271582FF4(v12);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A18E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_271595430(&a9);
  sub_2717F1E54(&a20);
  _Unwind_Resume(a1);
}

void sub_2715A1900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A1940(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_2715A0608(&v7, a1);
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

void sub_2715A1AAC(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
LABEL_10:
    sub_2715A0964(&v7, a1);
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

uint64_t *sub_2715A1C18()
{
  if ((atomic_load_explicit(&qword_28087BC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC68))
  {
    sub_2715C7D00();
  }

  if (byte_28087BD37 >= 0)
  {
    return &qword_28087BD20;
  }

  else
  {
    return qword_28087BD20;
  }
}

void sub_2715A1CE8(uint64_t a1, int a2)
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

void sub_2715A2400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A243C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A24AC(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715A2768(uint64_t a1)
{
  *a1 = &unk_288109578;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715A27E0(uint64_t a1, uint64_t a2)
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

          sub_27158454C(a1, v19);
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

  LODWORD(v21) = 2;
  *(&v21 + 4) = v12;
  v13 = 2 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
  v16 = __PAIR64__(DWORD1(v21), 2);
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

void sub_2715A2A68(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715A2A84(uint64_t a1, uint64_t a2)
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

          sub_27158454C(v25, v20);
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

  *v25 = 2;
  *&v25[4] = v13;
  v14 = 2 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x1FFFFFFFFLL | ((v15 >> 1) << 33);
  v17 = __PAIR64__(*&v25[4], 2);
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

void sub_2715A2D28(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715A2D58(uint64_t a1)
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
      sub_2715A2A84(v16, a1);
      sub_2715A2A84(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715A313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A3150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A3164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A3178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A31C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A31D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A31EC(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715A34A8(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C808, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 5);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715A27E0(v50, a1);
    sub_27129F754(&v37, v50);
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

  sub_2715A2A84(v43, v7);
  if (HIDWORD(v44) <= 0x20)
  {
    v29 = 32;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v50[0]) = 2;
  DWORD1(v50[0]) = v44;
  *v48 = *&v50[0];
  LODWORD(v50[0]) = 1;
  *(v50 + 4) = DWORD2(v44) | (v29 << 32);
  *&v48[12] = *&v50[0];
  *&v48[8] = DWORD1(v44);
  *&v48[20] = v29;
  *&v48[24] = v44;
  v49 = *(v50 + 4);
  *&v37 = &unk_288109578;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_271583EF0(0, 5);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_271584324(0, &v38, &v40);
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
  sub_271584BC0(&v37, v50);
  *&v37 = &unk_288109B18;
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
    *&v37 = &unk_288109578;
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

void sub_2715A3A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715A3AC0(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_2715A27E0(&v7, a1);
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

void sub_2715A3C2C(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
LABEL_10:
    sub_2715A2A84(&v7, a1);
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

uint64_t *sub_2715A3D98()
{
  if ((atomic_load_explicit(&qword_28087BC70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC70))
  {
    sub_2715C7E04();
  }

  if (byte_28087BD4F >= 0)
  {
    return &qword_28087BD38;
  }

  else
  {
    return qword_28087BD38;
  }
}

void sub_2715A3E68(uint64_t a1, int a2)
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

void sub_2715A4580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A45BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A462C(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715A48E8(uint64_t a1)
{
  *a1 = &unk_2881098D8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715A4960(uint64_t a1, uint64_t a2)
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

          sub_2715911EC(a1, v19);
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

  LODWORD(v21) = 2;
  *(&v21 + 4) = v12;
  v13 = 2 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
  v16 = __PAIR64__(DWORD1(v21), 2);
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

void sub_2715A4BE8(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715A4C04(uint64_t a1, uint64_t a2)
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

          sub_2715911EC(v25, v20);
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

  *v25 = 2;
  *&v25[4] = v13;
  v14 = 2 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x1FFFFFFFFLL | ((v15 >> 1) << 33);
  v17 = __PAIR64__(*&v25[4], 2);
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

void sub_2715A4EA8(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715A4ED8(uint64_t a1)
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
      sub_2715A4C04(v16, a1);
      sub_2715A4C04(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715A52BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A52D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A52E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A52F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A5344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A5358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A536C(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715A5628(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C7F0, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 7);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715A4960(v50, a1);
    *&v43[0] = &v37;
    *(&v43[0] + 1) = v50;
    *&result = sub_2712A0BBC(v43);
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

  sub_2715A4C04(v43, v7);
  if (HIDWORD(v44) <= 0x10)
  {
    v29 = 16;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v50[0]) = 2;
  DWORD1(v50[0]) = v44;
  *v48 = *&v50[0];
  LODWORD(v50[0]) = 1;
  *(v50 + 4) = DWORD2(v44) | (v29 << 32);
  *&v48[12] = *&v50[0];
  *&v48[8] = DWORD1(v44);
  *&v48[20] = v29;
  *&v48[24] = v44;
  v49 = *(v50 + 4);
  *&v37 = &unk_2881098D8;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_271590B90(0, 7);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_271590FC4(0, &v38, &v40);
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
  sub_2715919C8(&v37, v50);
  *&v37 = &unk_288109A88;
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
    *&v37 = &unk_2881098D8;
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

void sub_2715A5B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715A5C48(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_2715A4960(&v7, a1);
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

void sub_2715A5DB4(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
LABEL_10:
    sub_2715A4C04(&v7, a1);
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

uint64_t *sub_2715A5F20()
{
  if ((atomic_load_explicit(&qword_28087BC78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC78))
  {
    sub_2715C7F08();
  }

  if (byte_28087BD67 >= 0)
  {
    return &qword_28087BD50;
  }

  else
  {
    return qword_28087BD50;
  }
}

void sub_2715A5FF0(uint64_t a1, int a2)
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

void sub_2715A6708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F1E54(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F1E54(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A6744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F1CC4(v13);
  sub_2717F2278(&a12);
  MEMORY[0x2743BF050](v12, 0xA1C40711E6FFCLL);
  sub_2717F2278(&a9);
  _Unwind_Resume(a1);
}

void sub_2715A67B4(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_2715A6A70(uint64_t a1)
{
  *a1 = &unk_288109728;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715A6AE8(uint64_t a1, uint64_t a2)
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

          sub_271596AE4(a1, v19);
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

  LODWORD(v21) = 2;
  *(&v21 + 4) = v12;
  v13 = 2 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
  v16 = __PAIR64__(DWORD1(v21), 2);
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

void sub_2715A6D70(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715A6D8C(uint64_t a1, uint64_t a2)
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

          sub_271596AE4(v25, v20);
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

  *v25 = 2;
  *&v25[4] = v13;
  v14 = 2 * (v13 != 0);
  LODWORD(v15) = v14 * v13;
  if (HIDWORD(v13))
  {
    v15 = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 & 0x1FFFFFFFFLL | ((v15 >> 1) << 33);
  v17 = __PAIR64__(*&v25[4], 2);
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

void sub_2715A7030(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_2715A7060(uint64_t a1)
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
      sub_2715A6D8C(v16, a1);
      sub_2715A6D8C(&v15, a1);
      operator new();
    }
  }

LABEL_24:
  sub_2717F919C(v18);
  goto LABEL_25;
}

void sub_2715A7444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A7458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715A7480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271582FF4(v14);
  MEMORY[0x2743BF050](v13, 0x10A3C4049419736);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A74CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A74E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2717F1E54(va);
  _Unwind_Resume(a1);
}

void sub_2715A74F4(uint64_t a1@<X0>, void *a2@<X8>)
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

double sub_2715A77B0(uint64_t a1, char **lpsrc)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *lpsrc;
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_288123908, &unk_28811C7D8, 0);
  if (!v6)
  {
    (*(v4 + 9))(v50, lpsrc, 8);
    v13 = *&v50[0];
    v15 = *(*&v50[0] + 16);
    v14 = *(*&v50[0] + 32);
    v37 = **&v50[0];
    v38 = v15;
    v39 = v14;
    *&v50[0] = 0;
    MEMORY[0x2743BF050](v13, 0xC400A2AC0F1, v16, v17, v18, v19);
    sub_2715A6AE8(v50, a1);
    *&result = sub_2712A2500(&v37, v50);
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

  sub_2715A6D8C(v43, v7);
  if (HIDWORD(v44) <= 8)
  {
    v29 = 8;
  }

  else
  {
    v29 = HIDWORD(v44);
  }

  LODWORD(v50[0]) = 2;
  DWORD1(v50[0]) = v44;
  *v48 = *&v50[0];
  LODWORD(v50[0]) = 1;
  *(v50 + 4) = DWORD2(v44) | (v29 << 32);
  *&v48[12] = *&v50[0];
  *&v48[8] = DWORD1(v44);
  *&v48[20] = v29;
  *&v48[24] = v44;
  v49 = *(v50 + 4);
  *&v37 = &unk_288109728;
  DWORD2(v37) = 0;
  if (DWORD1(v44) && v44)
  {
    sub_271596488(0, 8);
  }

  *(&v38 + 1) = 0;
  *&v39 = 0;
  *&v38 = &unk_288109288;
  DWORD2(v39) = 0;
  if (v44 && DWORD1(v44))
  {
    sub_2715968BC(0, &v38, &v40);
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
  sub_2715972C0(&v37, v50);
  *&v37 = &unk_2881099F8;
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
    *&v37 = &unk_288109728;
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