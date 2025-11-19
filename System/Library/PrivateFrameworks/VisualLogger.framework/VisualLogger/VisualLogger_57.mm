void sub_271589C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271589C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271589C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271589C44(uint64_t *a1, uint64_t a2)
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_65;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v41[0] = &unk_288109288;
  v41[1] = v12;
  v42 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_31;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
  v41[0] = &unk_288109288;
  v16 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v39 = *(a2 + 8);
    v40 = v17;
    if (v17)
    {
      goto LABEL_34;
    }

LABEL_38:
    v38 = &unk_288109288;
    goto LABEL_39;
  }

  v17 = *(a2 + 16);
  v39 = *(a2 + 8);
  v40 = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_39:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v35 = &unk_288109288;
  v36 = v19;
  v37 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v35, 0);
  v43[0] = &unk_288109288;
  v43[1] = v36;
  v44 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(v43);
  v22 = sub_2717F3958(v43);
  v23 = sub_2717F3D9C(v43);
  v24 = v21;
  v25 = sub_2717F41E0(v43) << 31;
  v43[0] = &unk_288109288;
  v26 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v35 = &unk_288109288;
  v28 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *a1 = v20;
  a1[1] = v30;
  a1[2] = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  if (HIDWORD(v25) * HIDWORD(v30) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_63:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v35);
        return;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v34 = *v31;
      v33 = *(v31 + 8);
      v31 += 16;
      v34(v33, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }
}

void sub_27158A2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158A310(uint64_t a1)
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

void sub_27158A388(uint64_t a1, unint64_t a2)
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
        sub_27158AFFC(v20, a1);
        sub_271254000(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158A654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158A668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158A67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158A690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158A6A4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881093C8;
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
  v32 = &unk_288109288;
  v33 = v4;
  v34 = v8;
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
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0, &unk_288109288);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
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
      goto LABEL_82;
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
  v40[0] = &unk_288109288;
  v40[1] = v33;
  v41 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v40);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_32:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_41:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0, v32);
          goto LABEL_42;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_82;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_41;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_32;
  }

LABEL_42:
  v40[0] = &unk_288109288;
  v16 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = v34;
    v38 = v33;
    v39 = v34;
    if (v34)
    {
      goto LABEL_45;
    }

LABEL_49:
    v37 = &unk_288109288;
    goto LABEL_50;
  }

  v17 = v34;
  v38 = v33;
  v39 = v34;
  if (!v34)
  {
    goto LABEL_49;
  }

LABEL_45:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_288109288;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_50:
  v35[0] = &unk_288109288;
  v35[1] = v33;
  v36 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(v35);
  v19 = sub_2717F3958(v35);
  v20 = sub_2717F3D9C(v35);
  v21 = sub_2717F41E0(v35);
  v35[0] = &unk_288109288;
  v22 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v23 = v21;
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v21 = v23;
  }

  *(a1 + 48) = v18 | (v19 << 32);
  *(a1 + 56) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    v24 = *(a2 + 8);
    if (v24)
    {
      goto LABEL_58;
    }

LABEL_66:
    v28 = 0;
    goto LABEL_67;
  }

  v24 = *(a2 + 8);
  if (!v24)
  {
    goto LABEL_66;
  }

LABEL_58:
  v25 = *(v24 + 8);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v26 = *(a2 + 8);
      if (v26)
      {
        goto LABEL_61;
      }

LABEL_71:
      v28 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_72;
      }

LABEL_68:
      if ((v28 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_73;
    }
  }

  v26 = *(a2 + 8);
  if (!v26)
  {
    goto LABEL_71;
  }

LABEL_61:
  v28 = *v26;
  v27 = v26[1];
  if (!v27 || (atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_67:
    if (!*(a1 + 48))
    {
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if (*(a1 + 48))
  {
    goto LABEL_68;
  }

LABEL_72:
  if (v28)
  {
LABEL_73:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v29 = qword_28087C408, v30 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_80:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0, &unk_288109288);
        return a1;
      }
    }

    else
    {
      v29 = qword_28087C408;
      v30 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
      }
    }

    do
    {
      (*v29)(*(v29 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v29 += 16;
    }

    while (v29 != v30);
    if (byte_28087C430)
    {
      goto LABEL_80;
    }

LABEL_82:
    abort();
  }

  return a1;
}

void sub_27158AEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_271582FF4(v9);
  _Unwind_Resume(a1);
}

void sub_27158AF58(uint64_t a1, uint64_t a2)
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

void sub_27158AFFC(uint64_t *a1, uint64_t a2)
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

void sub_27158B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_27158B358(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_27158B740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27158B78C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158B9B4(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_27158B9B4(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158B9B4(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_27158B978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B98C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158B9B4(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_65;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_31;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
  v42[0] = &unk_288109288;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_34;
    }

LABEL_38:
    v39 = &unk_288109288;
    goto LABEL_39;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_39:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(&v44);
  v22 = sub_2717F3958(&v44);
  v23 = sub_2717F3D9C(&v44);
  v24 = v21;
  v25 = sub_2717F41E0(&v44) << 31;
  *&v44 = &unk_288109288;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_288109288;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 3;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v33 = qword_28087C408, v34 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_63:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_64;
      }
    }

    else
    {
      v33 = qword_28087C408;
      v34 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_28087C430)
    {
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }

LABEL_64:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_27158C0AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158C0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158C0D4(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_27158C0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158C108(uint64_t a1)
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

void sub_27158C180(uint64_t a1, uint64_t a2)
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
        sub_27158CE54(v20, a1);
        sub_2712A3624(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158C44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158C460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158C474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158C488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158C49C(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109338;
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
        goto LABEL_82;
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
      goto LABEL_82;
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
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_32:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_41:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_42;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_82;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_41;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_32;
  }

LABEL_42:
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
      goto LABEL_45;
    }

LABEL_49:
    v38 = &unk_288109288;
    goto LABEL_50;
  }

  v17 = v35;
  v39 = v34;
  v40 = v35;
  if (!v35)
  {
    goto LABEL_49;
  }

LABEL_45:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_50:
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
  LODWORD(v43[0]) = 3;
  HIDWORD(v43[0]) = v24;
  *(a1 + 48) = v43[0];
  *(a1 + 56) = v19;
  LODWORD(v43[0]) = 1;
  *(v43 + 4) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v21 >> 1;
  *(a1 + 72) = v24;
  *(a1 + 80) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v25 = *(a2 + 8);
    if (v25)
    {
      goto LABEL_58;
    }

LABEL_66:
    v29 = 0;
    goto LABEL_67;
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_66;
  }

LABEL_58:
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
        goto LABEL_61;
      }

LABEL_71:
      v29 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_72;
      }

LABEL_68:
      if ((v29 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_81;
      }

      goto LABEL_73;
    }
  }

  v27 = *(a2 + 8);
  if (!v27)
  {
    goto LABEL_71;
  }

LABEL_61:
  v29 = *v27;
  v28 = v27[1];
  if (!v28 || (atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_67:
    if (!*(a1 + 72))
    {
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  if (*(a1 + 72))
  {
    goto LABEL_68;
  }

LABEL_72:
  if (v29)
  {
LABEL_73:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v30 = qword_28087C408, v31 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_80:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_81;
      }
    }

    else
    {
      v30 = qword_28087C408;
      v31 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
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
      goto LABEL_80;
    }

LABEL_82:
    abort();
  }

LABEL_81:
  v32 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27158CD40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_27158CDB0(uint64_t a1, uint64_t a2)
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

void sub_27158CE54(uint64_t a1, uint64_t a2)
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

void sub_27158D064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_27158D080(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_27158D468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27158D4B4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158D6DC(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_27158D6DC(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158D6DC(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_27158D6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D6B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158D6DC(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_65;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_21:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_30:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_31;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_65;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_30;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_21;
  }

LABEL_31:
  v42[0] = &unk_288109288;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_34;
    }

LABEL_38:
    v39 = &unk_288109288;
    goto LABEL_39;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_38;
  }

LABEL_34:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_39:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(&v44);
  v22 = sub_2717F3958(&v44);
  v23 = sub_2717F3D9C(&v44);
  v24 = v21;
  v25 = sub_2717F41E0(&v44) << 31;
  *&v44 = &unk_288109288;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_288109288;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 4;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v33 = qword_28087C408, v34 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_63:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_64;
      }
    }

    else
    {
      v33 = qword_28087C408;
      v34 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_65;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_28087C430)
    {
      goto LABEL_63;
    }

LABEL_65:
    abort();
  }

LABEL_64:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_27158DDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158DDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158DDFC(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_27158DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158DE30(uint64_t a1)
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

void sub_27158DEA8(uint64_t a1, uint64_t a2)
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
        sub_27158EB7C(v20, a1);
        sub_271244900(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158E174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158E188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158E19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158E1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158E1C4(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881092A8;
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
        goto LABEL_82;
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
      goto LABEL_82;
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
  if (v13 > 1647589489)
  {
    if (v13 != 1647589490 && v13 != 1647719521)
    {
LABEL_32:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 120, "Contains(pf::formats::U16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_41:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
          goto LABEL_42;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_82;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::U16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_41;
    }
  }

  else if (v13 != 1278226742 && v13 != 1647392359)
  {
    goto LABEL_32;
  }

LABEL_42:
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
      goto LABEL_45;
    }

LABEL_49:
    v38 = &unk_288109288;
    goto LABEL_50;
  }

  v17 = v35;
  v39 = v34;
  v40 = v35;
  if (!v35)
  {
    goto LABEL_49;
  }

LABEL_45:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_50:
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
  *(v43 + 4) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v21 >> 1;
  *(a1 + 72) = v24;
  *(a1 + 80) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    v25 = *(a2 + 8);
    if (v25)
    {
      goto LABEL_58;
    }

LABEL_66:
    v29 = 0;
    goto LABEL_67;
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_66;
  }

LABEL_58:
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
        goto LABEL_61;
      }

LABEL_71:
      v29 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_72;
      }

LABEL_68:
      if ((v29 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_81;
      }

      goto LABEL_73;
    }
  }

  v27 = *(a2 + 8);
  if (!v27)
  {
    goto LABEL_71;
  }

LABEL_61:
  v29 = *v27;
  v28 = v27[1];
  if (!v28 || (atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_67:
    if (!*(a1 + 72))
    {
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  if (*(a1 + 72))
  {
    goto LABEL_68;
  }

LABEL_72:
  if (v29)
  {
LABEL_73:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v30 = qword_28087C408, v31 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_80:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_81;
      }
    }

    else
    {
      v30 = qword_28087C408;
      v31 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_82;
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
      goto LABEL_80;
    }

LABEL_82:
    abort();
  }

LABEL_81:
  v32 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27158EA68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_27158EAD8(uint64_t a1, uint64_t a2)
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

void sub_27158EB7C(uint64_t a1, uint64_t a2)
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

void sub_27158EE04(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_27158EE20(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_27158F208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158F228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27158F254(int a1, uint64_t a2, double a3)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      v12[0] = &unk_288109288;
      v12[1] = v10;
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_27158F460(&v18, v12);
      a3 = *&v19;
      v12[0] = &unk_288109288;
      v5 = v13;
      if (!v13)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    if (*(a2 + 24) == 1)
    {
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      v14[0] = &unk_288109288;
      v14[1] = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_27158F460(&v18, v14);
      a3 = *&v19;
      v14[0] = &unk_288109288;
      v5 = v15;
      if (!v15)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

LABEL_20:
    sub_2711308D4();
  }

  if (a1)
  {
    return *&a3;
  }

  if (*(a2 + 24))
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v16[0] = &unk_288109288;
  v16[1] = v4;
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_27158F460(&v18, v16);
  a3 = *&v19;
  v16[0] = &unk_288109288;
  v5 = v17;
  if (!v17)
  {
    return *&a3;
  }

LABEL_18:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return *&a3;
  }

  v11 = a3;
  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return *&v11;
}

void sub_27158F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158F438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158F44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158F460(uint64_t *a1, uint64_t a2)
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_66;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v41[0] = &unk_288109288;
  v41[1] = v12;
  v42 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_22;
  }

LABEL_32:
  v41[0] = &unk_288109288;
  v16 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v39 = *(a2 + 8);
    v40 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v38 = &unk_288109288;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v39 = *(a2 + 8);
  v40 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v35 = &unk_288109288;
  v36 = v19;
  v37 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v35, 0);
  v43[0] = &unk_288109288;
  v43[1] = v36;
  v44 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(v43);
  v22 = sub_2717F3958(v43);
  v23 = sub_2717F3D9C(v43);
  v24 = v21;
  v25 = sub_2717F41E0(v43) << 31;
  v43[0] = &unk_288109288;
  v26 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v35 = &unk_288109288;
  v28 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *a1 = v20;
  a1[1] = v30;
  a1[2] = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  if (HIDWORD(v25) * HIDWORD(v30) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_64:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v35);
        return;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v34 = *v31;
      v33 = *(v31 + 8);
      v31 += 16;
      v34(v33, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }
}

void sub_27158FB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2717F319C(&a18);
  sub_2717F319C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_27158FB38(uint64_t a1)
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

void sub_27158FBB0(uint64_t a1, uint64_t a2)
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
        sub_271590834(v20, a1);
        sub_27123D99C(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158FE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158FE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158FEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158FEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158FECC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288109968;
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
  v32 = &unk_288109288;
  v33 = v4;
  v34 = v8;
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
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0, &unk_288109288);
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
  v40[0] = &unk_288109288;
  v40[1] = v33;
  v41 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v40);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0, v32);
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
        (*v14)(*(v14 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_33;
  }

LABEL_43:
  v40[0] = &unk_288109288;
  v16 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = v34;
    v38 = v33;
    v39 = v34;
    if (v34)
    {
      goto LABEL_46;
    }

LABEL_50:
    v37 = &unk_288109288;
    goto LABEL_51;
  }

  v17 = v34;
  v38 = v33;
  v39 = v34;
  if (!v34)
  {
    goto LABEL_50;
  }

LABEL_46:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_288109288;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_51:
  v35[0] = &unk_288109288;
  v35[1] = v33;
  v36 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(v35);
  v19 = sub_2717F3958(v35);
  v20 = sub_2717F3D9C(v35);
  v21 = sub_2717F41E0(v35);
  v35[0] = &unk_288109288;
  v22 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v23 = v21;
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v21 = v23;
  }

  *(a1 + 48) = v18 | (v19 << 32);
  *(a1 + 56) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    v24 = *(a2 + 8);
    if (v24)
    {
      goto LABEL_59;
    }

LABEL_67:
    v28 = 0;
    goto LABEL_68;
  }

  v24 = *(a2 + 8);
  if (!v24)
  {
    goto LABEL_67;
  }

LABEL_59:
  v25 = *(v24 + 8);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v26 = *(a2 + 8);
      if (v26)
      {
        goto LABEL_62;
      }

LABEL_72:
      v28 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_73;
      }

LABEL_69:
      if ((v28 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_74;
    }
  }

  v26 = *(a2 + 8);
  if (!v26)
  {
    goto LABEL_72;
  }

LABEL_62:
  v28 = *v26;
  v27 = v26[1];
  if (!v27 || (atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_68:
    if (!*(a1 + 48))
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if (*(a1 + 48))
  {
    goto LABEL_69;
  }

LABEL_73:
  if (v28)
  {
LABEL_74:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v29 = qword_28087C408, v30 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_81:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0, &unk_288109288);
        return a1;
      }
    }

    else
    {
      v29 = qword_28087C408;
      v30 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_83;
      }
    }

    do
    {
      (*v29)(*(v29 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v29 += 16;
    }

    while (v29 != v30);
    if (byte_28087C430)
    {
      goto LABEL_81;
    }

LABEL_83:
    abort();
  }

  return a1;
}

void sub_271590720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_271582FF4(v9);
  _Unwind_Resume(a1);
}

void sub_271590790(uint64_t a1, uint64_t a2)
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

void sub_271590834(uint64_t *a1, uint64_t a2)
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

void sub_271590B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_271590B90(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_271590F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271590F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271590FC4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2715911EC(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_2715911EC(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2715911EC(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_2715911B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715911C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715911D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715911EC(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_66;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_288109288;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_288109288;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(&v44);
  v22 = sub_2717F3958(&v44);
  v23 = sub_2717F3D9C(&v44);
  v24 = v21;
  v25 = sub_2717F41E0(&v44) << 31;
  *&v44 = &unk_288109288;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_288109288;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 2;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v33 = qword_28087C408, v34 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_64:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_65;
      }
    }

    else
    {
      v33 = qword_28087C408;
      v34 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_28087C430)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }

LABEL_65:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2715918F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271591908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27159191C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271591930(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_271591950(uint64_t a1)
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

void sub_2715919C8(uint64_t a1, uint64_t a2)
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
        sub_2715926B0(v20, a1);
        v24[0] = a2;
        v24[1] = v20;
        sub_2712A0BBC(v24);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271591C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271591CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271591CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271591CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271591CE8(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881098D8;
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
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
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
        (*v14)(*(v14 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
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
  LODWORD(v43[0]) = 2;
  HIDWORD(v43[0]) = v24;
  *(a1 + 48) = v43[0];
  *(a1 + 56) = v19;
  LODWORD(v43[0]) = 1;
  *(v43 + 4) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v21 >> 1;
  *(a1 + 72) = v24;
  *(a1 + 80) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
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

void sub_27159259C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_27159260C(uint64_t a1, uint64_t a2)
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

void sub_2715926B0(uint64_t a1, uint64_t a2)
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

void sub_271592938(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_271592954(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_271592D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271592D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271592D88(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271592FB0(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_271592FB0(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271592FB0(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271592F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271592F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271592F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271592FB0(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_66;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_66;
        }
      }

      do
      {
        (*v14)(*(v14 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
        v14 += 16;
      }

      while (v14 != v15);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_288109288;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_288109288;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(&v44);
  v22 = sub_2717F3958(&v44);
  v23 = sub_2717F3D9C(&v44);
  v24 = v21;
  v25 = sub_2717F41E0(&v44) << 31;
  *&v44 = &unk_288109288;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_288109288;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 4;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 1);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v33 = qword_28087C408, v34 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_64:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_65;
      }
    }

    else
    {
      v33 = qword_28087C408;
      v34 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_28087C430)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }

LABEL_65:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2715936B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715936CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715936E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715936F4(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_271593714(uint64_t a1)
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

void sub_27159378C(uint64_t a1, uint64_t a2)
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
        sub_271594474(v20, a1);
        v24[0] = a2;
        v24[1] = v20;
        sub_2712A6EAC(v24);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271593A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271593A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271593A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271593A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271593AAC(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109848;
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
  if (v13 <= 1380411456)
  {
    if (v13 != 843264104 && v13 != 1278226536)
    {
LABEL_33:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 122, "Contains(pf::formats::F16(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_42:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
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
        (*v14)(*(v14 + 8), "Contains(pf::formats::F16(), ref.Format())", 42, "", 0);
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

  else if (v13 != 1380411457 && v13 != 1751410032 && v13 != 1751411059)
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
  *(v43 + 4) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
  *(a1 + 60) = v43[0];
  *(a1 + 68) = v21 >> 1;
  *(a1 + 72) = v24;
  *(a1 + 80) = (v21 << 31) & 0xFFFFFFFF00000000 | (v20 >> 1);
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

void sub_271594360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_2715943D0(uint64_t a1, uint64_t a2)
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

void sub_271594474(uint64_t a1, uint64_t a2)
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

void sub_2715946FC(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_271594718(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_271594B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271594B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271594B4C(int a1, uint64_t a2, double a3)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      v12[0] = &unk_288109288;
      v12[1] = v10;
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_271594D58(&v18, v12);
      a3 = *&v19;
      v12[0] = &unk_288109288;
      v5 = v13;
      if (!v13)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    if (*(a2 + 24) == 1)
    {
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      v14[0] = &unk_288109288;
      v14[1] = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_271594D58(&v18, v14);
      a3 = *&v19;
      v14[0] = &unk_288109288;
      v5 = v15;
      if (!v15)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

LABEL_20:
    sub_2711308D4();
  }

  if (a1)
  {
    return *&a3;
  }

  if (*(a2 + 24))
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v16[0] = &unk_288109288;
  v16[1] = v4;
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_271594D58(&v18, v16);
  a3 = *&v19;
  v16[0] = &unk_288109288;
  v5 = v17;
  if (!v17)
  {
    return *&a3;
  }

LABEL_18:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return *&a3;
  }

  v11 = a3;
  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return *&v11;
}

void sub_271594D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271594D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271594D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271594D58(uint64_t *a1, uint64_t a2)
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_66;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v41[0] = &unk_288109288;
  v41[1] = v12;
  v42 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v41);
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_66;
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
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
  {
    goto LABEL_22;
  }

LABEL_32:
  v41[0] = &unk_288109288;
  v16 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v39 = *(a2 + 8);
    v40 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v38 = &unk_288109288;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v39 = *(a2 + 8);
  v40 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v38 = &unk_288109288;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v35 = &unk_288109288;
  v36 = v19;
  v37 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v35, 0);
  v43[0] = &unk_288109288;
  v43[1] = v36;
  v44 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(v43);
  v22 = sub_2717F3958(v43);
  v23 = sub_2717F3D9C(v43);
  v24 = v21;
  v25 = sub_2717F41E0(v43) << 30;
  v43[0] = &unk_288109288;
  v26 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v35 = &unk_288109288;
  v28 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *a1 = v20;
  a1[1] = v30;
  a1[2] = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  if (HIDWORD(v25) * HIDWORD(v30) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_64:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v35);
        return;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v34 = *v31;
      v33 = *(v31 + 8);
      v31 += 16;
      v34(v33, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }
}

void sub_2715953FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271595414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2717F319C(&a18);
  sub_2717F319C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271595430(uint64_t a1)
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

void sub_2715954A8(uint64_t a1, char **a2)
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
        sub_27159612C(v20, a1);
        sub_27125505C(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271595774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271595788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27159579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715957B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715957C4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881097B8;
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
  v32 = &unk_288109288;
  v33 = v4;
  v34 = v8;
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
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0, &unk_288109288);
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
  v40[0] = &unk_288109288;
  v40[1] = v33;
  v41 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v40);
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
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0, v32);
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
  v40[0] = &unk_288109288;
  v16 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = v34;
    v38 = v33;
    v39 = v34;
    if (v34)
    {
      goto LABEL_46;
    }

LABEL_50:
    v37 = &unk_288109288;
    goto LABEL_51;
  }

  v17 = v34;
  v38 = v33;
  v39 = v34;
  if (!v34)
  {
    goto LABEL_50;
  }

LABEL_46:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_288109288;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_51:
  v35[0] = &unk_288109288;
  v35[1] = v33;
  v36 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(v35);
  v19 = sub_2717F3958(v35);
  v20 = sub_2717F3D9C(v35);
  v21 = sub_2717F41E0(v35);
  v35[0] = &unk_288109288;
  v22 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v23 = v21;
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v21 = v23;
  }

  *(a1 + 48) = v18 | (v19 << 32);
  *(a1 + 56) = (v21 << 30) & 0xFFFFFFFF00000000 | (v20 >> 2);
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    v24 = *(a2 + 8);
    if (v24)
    {
      goto LABEL_59;
    }

LABEL_67:
    v28 = 0;
    goto LABEL_68;
  }

  v24 = *(a2 + 8);
  if (!v24)
  {
    goto LABEL_67;
  }

LABEL_59:
  v25 = *(v24 + 8);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v26 = *(a2 + 8);
      if (v26)
      {
        goto LABEL_62;
      }

LABEL_72:
      v28 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_73;
      }

LABEL_69:
      if ((v28 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_74;
    }
  }

  v26 = *(a2 + 8);
  if (!v26)
  {
    goto LABEL_72;
  }

LABEL_62:
  v28 = *v26;
  v27 = v26[1];
  if (!v27 || (atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_68:
    if (!*(a1 + 48))
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if (*(a1 + 48))
  {
    goto LABEL_69;
  }

LABEL_73:
  if (v28)
  {
LABEL_74:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v29 = qword_28087C408, v30 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_81:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0, &unk_288109288);
        return a1;
      }
    }

    else
    {
      v29 = qword_28087C408;
      v30 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_83;
      }
    }

    do
    {
      (*v29)(*(v29 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v29 += 16;
    }

    while (v29 != v30);
    if (byte_28087C430)
    {
      goto LABEL_81;
    }

LABEL_83:
    abort();
  }

  return a1;
}

void sub_271596018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2717F319C(&a9);
  sub_271582FF4(v9);
  _Unwind_Resume(a1);
}

void sub_271596088(uint64_t a1, uint64_t a2)
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

void sub_27159612C(uint64_t *a1, uint64_t a2)
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

void sub_27159646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_271596488(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_271596870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271596890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715968BC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271596AE4(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_271596AE4(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271596AE4(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271596AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271596ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271596AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271596AE4(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_66;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_66;
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
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_288109288;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_288109288;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(&v44);
  v22 = sub_2717F3958(&v44);
  v23 = sub_2717F3D9C(&v44);
  v24 = v21;
  v25 = sub_2717F41E0(&v44) << 30;
  *&v44 = &unk_288109288;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_288109288;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 2;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v33 = qword_28087C408, v34 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_64:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_65;
      }
    }

    else
    {
      v33 = qword_28087C408;
      v34 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_28087C430)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }

LABEL_65:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2715971EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271597200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271597214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271597228(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_271597248(uint64_t a1)
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

void sub_2715972C0(uint64_t a1, uint64_t a2)
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
        sub_271597FA4(v20, a1);
        sub_2712A2500(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27159758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715975A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715975B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_2715975C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715975DC(uint64_t a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109728;
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
  LODWORD(v43[0]) = 2;
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

void sub_271597E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_271597F00(uint64_t a1, uint64_t a2)
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

void sub_271597FA4(uint64_t a1, uint64_t a2)
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

void sub_27159822C(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_271598248(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_271598630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_27159867C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2715988A4(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_2715988A4(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2715988A4(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271598868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27159887C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271598890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715988A4(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
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
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_66;
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
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v42[0] = &unk_288109288;
  v42[1] = v12;
  v43 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_2717F4624(v42);
  if (v13 <= 1380410944)
  {
    if (v13 != 843264102 && v13 != 1278226534)
    {
LABEL_22:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 124, "Contains(pf::formats::F32(), ref.Format())", 0x2AuLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_31:
          qword_28087C420(*algn_28087C428, "Contains(pf::formats::F32(), ref.Format())", 42, "", 0);
          goto LABEL_32;
        }
      }

      else
      {
        v14 = qword_28087C408;
        v15 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_66;
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
        goto LABEL_66;
      }

      goto LABEL_31;
    }
  }

  else if (v13 != 1380410945 && v13 != 1717855600 && v13 != 1717856627)
  {
    goto LABEL_22;
  }

LABEL_32:
  v42[0] = &unk_288109288;
  v16 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    v17 = *(a2 + 16);
    v40 = *(a2 + 8);
    v41 = v17;
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_39:
    v39 = &unk_288109288;
    goto LABEL_40;
  }

  v17 = *(a2 + 16);
  v40 = *(a2 + 8);
  v41 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

LABEL_35:
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = &unk_288109288;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_40:
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v36 = &unk_288109288;
  v37 = v19;
  v38 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_2717F1FA4(&v36, 0);
  *&v44 = &unk_288109288;
  *(&v44 + 1) = v37;
  v45 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_2717F3514(&v44);
  v22 = sub_2717F3958(&v44);
  v23 = sub_2717F3D9C(&v44);
  v24 = v21;
  v25 = sub_2717F41E0(&v44) << 30;
  *&v44 = &unk_288109288;
  v26 = v45;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21 | (v22 << 32);
  v36 = &unk_288109288;
  v28 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  if (v22)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  *(&v44 + 4) = v30;
  LODWORD(v44) = 4;
  v31 = v44;
  LODWORD(v44) = 1;
  *(&v44 + 4) = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  v32 = v44;
  *a1 = v20;
  *(a1 + 8) = v31;
  *(a1 + 16) = HIDWORD(v30);
  *(a1 + 20) = v32;
  *(a1 + 28) = HIDWORD(v25);
  *(a1 + 32) = v30;
  *(a1 + 40) = v25 & 0xFFFFFFFF00000000 | (v23 >> 2);
  if (HIDWORD(v30) * HIDWORD(v25) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v33 = qword_28087C408, v34 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_64:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_65;
      }
    }

    else
    {
      v33 = qword_28087C408;
      v34 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_66;
      }
    }

    do
    {
      (*v33)(*(v33 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v33 += 16;
    }

    while (v33 != v34);
    if (byte_28087C430)
    {
      goto LABEL_64;
    }

LABEL_66:
    abort();
  }

LABEL_65:
  v35 = *MEMORY[0x277D85DE8];
}