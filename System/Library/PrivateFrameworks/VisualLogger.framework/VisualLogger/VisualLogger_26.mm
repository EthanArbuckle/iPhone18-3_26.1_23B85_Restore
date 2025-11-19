void sub_271321D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271321DD4(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

uint64_t sub_271321E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_2713221F0(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 34);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27132219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713221F0(uint64_t a1)
{
  v1[0] = *(a1 + 12);
  v10 = &unk_288110AF8;
  sub_2717D73B0(v11, v1);
  v2 = v11[0];
  v1[2] = &unk_288112598;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_2713224C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(v4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_2713224DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271322510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271322524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271322558(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271322590(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2713225F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE34EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271322654(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 34;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271322838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27132285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271322878(uint64_t result)
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

uint64_t sub_2713228F0(uint64_t result)
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

void sub_271322968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271322A20(uint64_t a1)
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

void sub_271322AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271322B7C(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

uint64_t sub_271322C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271322F98(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 35);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271322F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271322F98(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2[14] = &unk_288110A48;
  sub_2717C3AFC(&v1, v2);
  operator new();
}

void sub_271323204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_271323374(va);
  _Unwind_Resume(a1);
}

void sub_271323220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va);
  sub_271323374(va1);
  _Unwind_Resume(a1);
}

void sub_271323254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271323374(va);
  _Unwind_Resume(a1);
}

void sub_271323268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2717B6584(va);
  _Unwind_Resume(a1);
}

void sub_271323298(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713232D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2717B6584(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271323314(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE35EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_271323374(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2717B6584(v2);
    MEMORY[0x2743BF050](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

void sub_2713233C8(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 35;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713235AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_2713235D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2713235EC(uint64_t result)
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

uint64_t sub_271323664(uint64_t result)
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

void sub_2713236DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271323794(uint64_t a1)
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

void sub_271323838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713238F0(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

uint64_t sub_271323980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271323D0C(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 36);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271323CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271323D0C(uint64_t a1)
{
  v1[0] = *(a1 + 12);
  v10 = &unk_288110998;
  sub_2717D757C(v11, v1);
  v2 = v11[0];
  v1[2] = &unk_288112498;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_271323FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(v4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271323FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_27132402C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271324040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271324074(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713240AC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271324110(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE36EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271324170(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 4);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 36;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271324354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271324378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271324394(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810D6B8;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_16:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2713245C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713245DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713245F0(uint64_t result)
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

uint64_t sub_271324668(uint64_t result)
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

void sub_2713246E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271324798(uint64_t a1)
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

void sub_27132483C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713248F4(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

uint64_t sub_271324984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271324D10(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 37);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271324CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271324D10(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2[14] = &unk_2881108A8;
  sub_2717C4370(&v1, v2);
  operator new();
}

void sub_271324F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271324F9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va);
  sub_271308D7C(va1);
  _Unwind_Resume(a1);
}

void sub_271324FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271324FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_271325018(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271325050(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2713250B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271325114(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 37;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713252F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27132531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271325338(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810D5F8;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v15 = qword_28087C408, v16 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_16:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_28087C408;
      v16 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_28087C430)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27132556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271325580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271325594(uint64_t result)
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

uint64_t sub_27132560C(uint64_t result)
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

void sub_271325684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27132573C(uint64_t a1)
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

void sub_2713257E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271325898(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

uint64_t sub_271325928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271325CB4(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 38);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271325C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271325CB4(uint64_t a1)
{
  v1[0] = *(a1 + 12);
  v10 = &unk_2881107B8;
  sub_2717D73B0(v11, v1);
  v2 = v11[0];
  v1[2] = &unk_288112398;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_271325F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(v4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271325FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271325FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271325FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27132601C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271326054(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2713260B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271326118(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 38;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713262FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271326320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27132633C(uint64_t result)
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

uint64_t sub_2713263B4(uint64_t result)
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

void sub_27132642C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713264E4(uint64_t a1)
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

void sub_271326588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271326640(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

uint64_t sub_2713266D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_271326A5C(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 39);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271326A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271326A5C(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2[14] = &unk_288110708;
  sub_2717C4BF0(&v1, v2);
  operator new();
}

void sub_271326CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_271326E38(va);
  _Unwind_Resume(a1);
}

void sub_271326CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va);
  sub_271326E38(va1);
  _Unwind_Resume(a1);
}

void sub_271326D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271326E38(va);
  _Unwind_Resume(a1);
}

void sub_271326D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2717B960C(va);
  _Unwind_Resume(a1);
}

void sub_271326D5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271326D94(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2717B960C(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271326DD8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE39EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_271326E38(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2717B960C(v2);
    MEMORY[0x2743BF050](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

void sub_271326E8C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 39;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271327070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271327094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2713270B0(uint64_t result)
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

uint64_t sub_271327128(uint64_t result)
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

void sub_2713271A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271327258(uint64_t a1)
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

void sub_2713272FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713273B4(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

uint64_t sub_271327444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 72) == 1 && *(a1 + 24) != 0)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    }

    sub_2713277D0(v9);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v5;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v5 = v8;
      }
    }
  }

  (*(*v5 + 32))(&v18);
  if (v18)
  {
    operator new();
  }

  v12 = *(a1 + 72);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v19, 0, 40);
  v13 = v19;
  v15 = v19[1];
  v14 = v19[2];
  *(a2 + 24) = *v19;
  *(a2 + 40) = v15;
  *(a2 + 56) = v14;
  v19 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 72) = *(a2 + 24);
  v16 = *(a2 + 48);
  *(a2 + 80) = *(a2 + 32);
  *(a2 + 96) = v16;
  *(a2 + 112) = *(a2 + 64);
  *(a2 + 120) = v12;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_27132777C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713277D0(uint64_t a1)
{
  v1[0] = *(a1 + 12);
  v10 = &unk_288110568;
  sub_2717D757C(v11, v1);
  v2 = v11[0];
  v1[2] = &unk_288112218;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_271327AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(v4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271327ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271327AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271327B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271327B38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271327B70(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271327BD4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE40EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271327C34(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 4);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 40;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271327E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271327E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

_BYTE *sub_271327E68(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271328174(a2, v3);
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

void sub_271327F68(uint64_t *a1, uint64_t a2)
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
    (off_288130910[v9])(&v12, v2);
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

void sub_271328128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271328174(uint64_t a1, const char *a2)
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

void sub_271328310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_271328334(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_271328640(a2, v3);
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

void sub_271328434(uint64_t *a1, uint64_t a2)
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
    (off_288130910[v9])(&v12, v2);
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

void sub_2713285F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_271328640(uint64_t a1, const char *a2)
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

void sub_2713287DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_271328808(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = **v1;
  v3 = *(v1 + 24);
  v4[0] = *(v1 + 8);
  v4[1] = v3;
  v5 = *(v1 + 40);
  sub_27132884C(v2, v4);
}

void sub_27132884C(int a1, int **a2)
{
  v165[2] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 0:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v3 = **a2;
      if (v3 == 1)
      {
        v86 = a2[2];
        *&v137 = &unk_288114498;
        sub_271331834(&v123, v86);
      }

      if (!v3)
      {
        v4 = a2[2];
        *&v154 = &unk_288114498;
        v165[0] = &unk_2881117F8;
        LODWORD(v5) = *v4;
        v6 = v4[1];
        v7 = *v4 != 0;
        if (*v4 <= 0x20)
        {
          LODWORD(v5) = 32;
        }

        v8 = *v4;
        *&v137 = &unk_288116190;
        if (v6)
        {
          v5 = v5;
        }

        else
        {
          v5 = 32;
        }

        v123 = v8;
        *&v124 = v7 | (v5 << 32);
        sub_27154547C(&v137, 0, 1, &v123, 0);
        *&v137 = &unk_288116190;
        operator new();
      }

      v110 = *a2[3];
      sub_2712D6134(a2[2], *a2[4], &v137);
      if (v147)
      {
        v111 = a2[2];
        v112 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_27130440C(&v123, v112, v111, &v125);
        *&v154 = &unk_28810F6B8;
        sub_271331B00(&v154 + 8, &v123);
      }

      v125 = v137;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v146 == 1)
      {
        sub_27112F6CC(&v126, v138);
        v134 = 1;
      }

      goto LABEL_179;
    case 2:
      v55 = **a2;
      if (v55 == 1)
      {
        v87 = a2[2];
        *&v137 = &unk_288113ED8;
        sub_271332704(&v123, v87);
      }

      if (!v55)
      {
        v56 = a2[2];
        *&v154 = &unk_288113ED8;
        v165[0] = &unk_288110F48;
        LODWORD(v57) = *v56;
        v58 = v56[1];
        v59 = *v56 != 0;
        if (*v56 <= 0x10)
        {
          LODWORD(v57) = 16;
        }

        v60 = *v56;
        *&v137 = &unk_288115F50;
        if (v58)
        {
          v57 = v57;
        }

        else
        {
          v57 = 16;
        }

        v123 = v60;
        *&v124 = v59 | (v57 << 32);
        sub_27154DDA4(&v137, 0, 2, &v123, 0);
        *&v137 = &unk_288115F50;
        operator new();
      }

      sub_2712DA1A4(*a2[3], a2[2], *a2[4], &v137);
      if (v147)
      {
        v113 = a2[2];
        v114 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271305334(&v123, v114, v113, &v125);
        *&v154 = &unk_28810F1B8;
        sub_2713329D0(&v154 + 8, &v123);
      }

      v125 = v137;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v146 == 1)
      {
        sub_27112F6CC(&v126, v138);
        v134 = 1;
      }

      goto LABEL_179;
    case 3:
      v35 = **a2;
      if (v35 == 1)
      {
        v82 = a2[2];
        *&v137 = &unk_288113858;
        sub_2713335D4(&v123, v82);
      }

      if (!v35)
      {
        v36 = a2[2];
        *&v154 = &unk_288113858;
        v165[0] = &unk_288110658;
        LODWORD(v37) = *v36;
        v38 = v36[1];
        v39 = *v36 != 0;
        if (*v36 <= 0x10)
        {
          LODWORD(v37) = 16;
        }

        v40 = *v36;
        *&v137 = &unk_288115C80;
        if (v38)
        {
          v37 = v37;
        }

        else
        {
          v37 = 16;
        }

        v123 = v40;
        *&v124 = v39 | (v37 << 32);
        sub_271553E98(&v137, 0, 3, &v123, 0);
        *&v137 = &unk_288115C80;
        operator new();
      }

      sub_2712DAF50(*a2[3], a2[2], *a2[4], &v137);
      if (v147)
      {
        v101 = a2[2];
        v102 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_27130621C(&v123, v102, v101, &v125);
        *&v154 = &unk_28810EC38;
        sub_2713338A0(&v154 + 8, &v123);
      }

      v125 = v137;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v146 == 1)
      {
        sub_27112F6CC(&v126, v138);
        v134 = 1;
      }

      goto LABEL_179;
    case 4:
      v47 = **a2;
      if (v47 == 1)
      {
        v84 = a2[2];
        *&v137 = &unk_288113718;
        sub_27133485C(&v123, v84);
      }

      if (!v47)
      {
        v48 = a2[2];
        *&v154 = &unk_288113718;
        v165[0] = &unk_2881104B8;
        LODWORD(v49) = *v48;
        v50 = v48[1];
        v51 = *v48 != 0;
        if (*v48 <= 8)
        {
          LODWORD(v49) = 8;
        }

        v52 = *v48;
        *&v137 = &unk_288115BF0;
        if (v50)
        {
          v49 = v49;
        }

        else
        {
          v49 = 8;
        }

        v123 = v52;
        *&v124 = v51 | (v49 << 32);
        sub_271559F7C(&v137, 0, 4, &v123, 0.0);
        *&v137 = &unk_288115BF0;
        operator new();
      }

      sub_2712DBCFC(*a2[3], a2[2], *a2[4], &v137);
      if (v147)
      {
        v105 = a2[2];
        v106 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271307114(&v123, v106, v105, &v125);
        *&v154 = &unk_28810EB38;
        sub_271334B28(&v154 + 8, &v123);
      }

      v125 = v137;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v146 == 1)
      {
        sub_27112F6CC(&v126, v138);
        v134 = 1;
      }

LABEL_179:
      sub_2712CD070(a2[1], &v125);
      if (v134 == 1)
      {
        if (v133 == 1)
        {
          if (v132 < 0)
          {
            operator delete(__p);
          }

          if (v130 < 0)
          {
            operator delete(v129);
          }
        }

        if (v128 == 1 && v127 < 0)
        {
          operator delete(v126);
        }
      }

      if ((v147 & 1) == 0 && v146 == 1)
      {
        if (v145 == 1)
        {
          if (v144 < 0)
          {
            operator delete(v143);
          }

          if (v142 < 0)
          {
            operator delete(v141);
          }
        }

        if (v140 == 1 && v139 < 0)
        {
          operator delete(v138[0]);
        }
      }

      break;
    case 5:
      v21 = **a2;
      if (v21 == 1)
      {
        v77 = a2[2];
        *&v137 = &unk_288113618;
        sub_27133572C(&v148, v77);
      }

      if (!v21)
      {
        v22 = a2[2];
        LOBYTE(v136) = 0;
        *&v154 = &unk_288113618;
        v135 = &unk_2881103C8;
        sub_27157106C(v22, &v136, &v137);
        operator new();
      }

      v90 = *a2[3];
      sub_2712DCAB0(a2[2], *a2[4], &v154);
      if (v164)
      {
        v91 = a2[2];
        v92 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271307FFC(&v148, v92, v91, &v125);
        *&v137 = &unk_28810EA78;
        sub_271335A80(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 7:
      v29 = **a2;
      if (v29 == 1)
      {
        v81 = a2[2];
        *&v137 = &unk_2881134D8;
        sub_271336728(&v148, v81);
      }

      if (!v29)
      {
        v30 = a2[2];
        *&v154 = &unk_2881134D8;
        v136 = &unk_288110228;
        v31 = v30[1];
        v32 = 2 * (*v30 != 0);
        LODWORD(v33) = v32 * *v30;
        if (v33 <= 0x10)
        {
          LODWORD(v33) = 16;
        }

        v34 = *v30;
        *&v137 = &unk_288115AD0;
        if (v31)
        {
          v33 = v33;
        }

        else
        {
          v33 = 16;
        }

        v149 = v34;
        v148 = 2;
        LODWORD(v165[0]) = 1;
        *(v165 + 4) = v32 & 0x1FFFFFFFFLL | ((v33 >> 1) << 33);
        v150 = v165[0];
        v151 = v33;
        v152 = v34;
        v153 = *(v165 + 4);
        sub_271556084(&v137, 0, 7, &v148, 0);
        *&v137 = &unk_288115AD0;
        operator new();
      }

      sub_2712DE480(*a2[3], a2[2], *a2[4], &v154);
      if (v164)
      {
        v99 = a2[2];
        v100 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271309DA0(&v148, v100, v99, &v125);
        *&v137 = &unk_28810E978;
        sub_271336A7C(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 8:
      v69 = **a2;
      if (v69 == 1)
      {
        v98 = a2[2];
        *&v137 = &unk_2881133D8;
        sub_271337734(&v148, v98);
      }

      if (!v69)
      {
        v70 = a2[2];
        *&v154 = &unk_2881133D8;
        v136 = &unk_288110138;
        v71 = v70[1];
        v72 = 2 * (*v70 != 0);
        LODWORD(v73) = v72 * *v70;
        if (v73 <= 8)
        {
          LODWORD(v73) = 8;
        }

        v74 = *v70;
        *&v137 = &unk_288115A40;
        if (v71)
        {
          v73 = v73;
        }

        else
        {
          v73 = 8;
        }

        v149 = v74;
        v148 = 2;
        LODWORD(v165[0]) = 1;
        *(v165 + 4) = v72 & 0x1FFFFFFFFLL | ((v73 >> 1) << 33);
        v150 = v165[0];
        v151 = v73;
        v152 = v74;
        v153 = *(v165 + 4);
        sub_27155C168(&v137, 0, 8, &v148, 0.0);
        *&v137 = &unk_288115A40;
        operator new();
      }

      sub_2712DF238(*a2[3], a2[2], *a2[4], &v154);
      if (v164)
      {
        v120 = a2[2];
        v121 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_27130AD70(&v148, v121, v120, &v125);
        *&v137 = &unk_28810E8B8;
        sub_271337A88(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 21:
      v23 = **a2;
      if (v23 == 1)
      {
        v78 = a2[2];
        *&v137 = &unk_288114358;
        sub_271338730(&v148, v78);
      }

      if (!v23)
      {
        v24 = a2[2];
        *&v154 = &unk_288114358;
        v136 = &unk_288111658;
        v25 = v24[1];
        if (*v24)
        {
          v26 = 3;
        }

        else
        {
          v26 = 0;
        }

        LODWORD(v27) = v26 * *v24;
        if (v27 <= 0x20)
        {
          LODWORD(v27) = 32;
        }

        v28 = *v24;
        *&v137 = &unk_288116100;
        if (v25)
        {
          v27 = v27;
        }

        else
        {
          v27 = 32;
        }

        v149 = v28;
        v148 = 3;
        LODWORD(v165[0]) = 1;
        *(v165 + 4) = v26 | (v27 << 32);
        v150 = v165[0];
        v151 = v27;
        v152 = v28;
        v153 = *(v165 + 4);
        sub_271549C34(&v137, 0, 21, &v148, 0);
        *&v137 = &unk_288116100;
        operator new();
      }

      v93 = *a2[3];
      sub_2712EA078(a2[2], *a2[4], &v154);
      if (v164)
      {
        v94 = a2[2];
        v95 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271315F98(&v148, v95, v94, &v125);
        *&v137 = &unk_28810F5B8;
        sub_271338A7C(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 22:
      v63 = **a2;
      if (v63 == 1)
      {
        v97 = a2[2];
        *&v137 = &unk_288114258;
        sub_27133971C(&v148, v97);
      }

      if (!v63)
      {
        v64 = a2[2];
        *&v154 = &unk_288114258;
        v136 = &unk_288111568;
        v65 = v64[1];
        if (*v64)
        {
          v66 = 3;
        }

        else
        {
          v66 = 0;
        }

        LODWORD(v67) = v66 * *v64;
        if (v67 <= 0x10)
        {
          LODWORD(v67) = 16;
        }

        v68 = *v64;
        *&v137 = &unk_288116070;
        if (v65)
        {
          v67 = v67;
        }

        else
        {
          v67 = 16;
        }

        v149 = v68;
        v148 = 3;
        LODWORD(v165[0]) = 1;
        *(v165 + 4) = v66 | (v67 << 32);
        v150 = v165[0];
        v151 = v67;
        v152 = v68;
        v153 = *(v165 + 4);
        sub_27154FF94(&v137, 0, 22, &v148, 0);
        *&v137 = &unk_288116070;
        operator new();
      }

      sub_2712EAC9C(*a2[3], a2[2], *a2[4], &v154);
      if (v164)
      {
        v118 = a2[2];
        v119 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271316F3C(&v148, v119, v118, &v125);
        *&v137 = &unk_28810F4F8;
        sub_271339A68(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 25:
      v61 = **a2;
      if (v61 == 1)
      {
        v96 = a2[2];
        *&v137 = &unk_2881140D8;
        sub_27133A708(&v148, v96);
      }

      if (!v61)
      {
        v62 = a2[2];
        LOBYTE(v136) = 0;
        *&v154 = &unk_2881140D8;
        v135 = &unk_288111318;
        sub_2715711F4(v62, &v136, &v137);
        operator new();
      }

      v115 = *a2[3];
      sub_2712ED61C(a2[2], *a2[4], &v154);
      if (v164)
      {
        v116 = a2[2];
        v117 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271319A5C(&v148, v117, v116, &v125);
        *&v137 = &unk_28810F3B8;
        sub_27133AA5C(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 31:
      v41 = **a2;
      if (v41 == 1)
      {
        v83 = a2[2];
        *&v137 = &unk_288113D98;
        sub_27133B704(&v148, v83);
      }

      if (!v41)
      {
        v42 = a2[2];
        *&v154 = &unk_288113D98;
        v136 = &unk_288110DA8;
        v43 = v42[1];
        v44 = 4 * (*v42 != 0);
        LODWORD(v45) = v44 * *v42;
        if (v45 <= 0x10)
        {
          LODWORD(v45) = 16;
        }

        v46 = *v42;
        *&v137 = &unk_288115EC0;
        if (v43)
        {
          v45 = v45;
        }

        else
        {
          v45 = 16;
        }

        v149 = v46;
        v148 = 4;
        LODWORD(v165[0]) = 1;
        *(v165 + 4) = v44 & 0x3FFFFFFFFLL | ((v45 >> 2) << 34);
        v150 = v165[0];
        v151 = v45;
        v152 = v46;
        v153 = *(v165 + 4);
        sub_271557E9C(&v137, 0, 31, &v148, 0);
        *&v137 = &unk_288115EC0;
        operator new();
      }

      sub_2712F2520(*a2[3], a2[2], *a2[4], &v154);
      if (v164)
      {
        v103 = a2[2];
        v104 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_27131EDB4(&v148, v104, v103, &v125);
        *&v137 = &unk_28810F0B8;
        sub_27133BA58(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 32:
      v15 = **a2;
      if (v15 == 1)
      {
        v76 = a2[2];
        *&v137 = &unk_288113C98;
        sub_27133C710(&v148, v76);
      }

      if (!v15)
      {
        v16 = a2[2];
        *&v154 = &unk_288113C98;
        v136 = &unk_288110CB8;
        v17 = v16[1];
        v18 = 4 * (*v16 != 0);
        LODWORD(v19) = v18 * *v16;
        if (v19 <= 8)
        {
          LODWORD(v19) = 8;
        }

        v20 = *v16;
        *&v137 = &unk_288115E30;
        if (v17)
        {
          v19 = v19;
        }

        else
        {
          v19 = 8;
        }

        v149 = v20;
        v148 = 4;
        LODWORD(v165[0]) = 1;
        *(v165 + 4) = v18 & 0x3FFFFFFFFLL | ((v19 >> 2) << 34);
        v150 = v165[0];
        v151 = v19;
        v152 = v20;
        v153 = *(v165 + 4);
        sub_27155E308(&v137, 0, 32, &v148, 0.0);
        *&v137 = &unk_288115E30;
        operator new();
      }

      sub_2712F32D8(*a2[3], a2[2], *a2[4], &v154);
      if (v164)
      {
        v88 = a2[2];
        v89 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_27131FD84(&v148, v89, v88, &v125);
        *&v137 = &unk_28810EFF8;
        sub_27133CA64(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 37:
      v53 = **a2;
      if (v53 == 1)
      {
        v85 = a2[2];
        *&v137 = &unk_288113A98;
        sub_27133D92C(&v148, v85);
      }

      if (!v53)
      {
        v54 = a2[2];
        LOBYTE(v136) = 0;
        *&v154 = &unk_288113A98;
        v135 = &unk_2881108E8;
        sub_27157137C(v54, &v136, &v137);
        operator new();
      }

      v107 = *a2[3];
      sub_2712F75D0(a2[2], *a2[4], &v154);
      if (v164)
      {
        v108 = a2[2];
        v109 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271324394(&v148, v109, v108, &v125);
        *&v137 = &unk_28810EDF8;
        sub_27133DC80(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

      goto LABEL_206;
    case 38:
      v9 = **a2;
      if (v9 == 1)
      {
        v75 = a2[2];
        *&v137 = &unk_288113998;
        sub_27133E928(&v148, v75);
      }

      if (!v9)
      {
        v10 = a2[2];
        *&v154 = &unk_288113998;
        v136 = &unk_2881107F8;
        v11 = v10[1];
        v12 = 4 * (*v10 != 0);
        LODWORD(v13) = v12 * *v10;
        if (v13 <= 0x10)
        {
          LODWORD(v13) = 16;
        }

        v14 = *v10;
        *&v137 = &unk_288115D10;
        if (v11)
        {
          v13 = v13;
        }

        else
        {
          v13 = 16;
        }

        v149 = v14;
        v148 = 4;
        LODWORD(v165[0]) = 1;
        *(v165 + 4) = v12 & 0x3FFFFFFFFLL | ((v13 >> 2) << 34);
        v150 = v165[0];
        v151 = v13;
        v152 = v14;
        v153 = *(v165 + 4);
        sub_2715520B8(&v137, 0, 38, &v148, 0);
        *&v137 = &unk_288115D10;
        operator new();
      }

      sub_2712F81E0(*a2[3], a2[2], *a2[4], &v154);
      if (v164)
      {
        v79 = a2[2];
        v80 = *a2[3];
        LODWORD(v125) = *a2[4];
        sub_271325338(&v148, v80, v79, &v125);
        *&v137 = &unk_28810ED38;
        sub_27133EC7C(&v137 + 8, &v148);
      }

      v125 = v154;
      LOBYTE(v126) = 0;
      v134 = 0;
      if (v163 == 1)
      {
        sub_27112F6CC(&v126, &v155);
        v134 = 1;
      }

LABEL_206:
      sub_2712CD070(a2[1], &v125);
      if (v134 == 1)
      {
        if (v133 == 1)
        {
          if (v132 < 0)
          {
            operator delete(__p);
          }

          if (v130 < 0)
          {
            operator delete(v129);
          }
        }

        if (v128 == 1 && v127 < 0)
        {
          operator delete(v126);
        }
      }

      if ((v164 & 1) == 0 && v163 == 1)
      {
        if (v162 == 1)
        {
          if (v161 < 0)
          {
            operator delete(v160);
          }

          if (v159 < 0)
          {
            operator delete(v158);
          }
        }

        if (v157 == 1 && v156 < 0)
        {
          operator delete(v155);
        }
      }

      break;
    default:
      break;
  }

  v122 = *MEMORY[0x277D85DE8];
}

void sub_271330040(_Unwind_Exception *a1)
{
  sub_27112D66C(v1 + 16);
  sub_27112E024(v2 - 232);
  _Unwind_Resume(a1);
}

void sub_2713300A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713315A4(uint64_t result)
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

__n128 sub_271331634(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288115A20;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

__n128 sub_271331664(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_2881152B0;
  return result;
}

__n128 sub_271331694(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_288115290;
  return result;
}

__n128 sub_2713316C4(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void sub_2713316D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 2, (a1 + 5), 2, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 1;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271331820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271331834(uint64_t a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_2881117F8;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_27155F860(v5, v6);
  operator new();
}

void sub_2713319A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715455A0(va);
  _Unwind_Resume(a1);
}

void sub_2713319B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271331A70(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271331B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v13 = v3;
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v13 = *(a2 + 8);
      v14 = 0;
    }

    (*(*v3 + 72))(&v18);
    v12 = v18[2];
    v16 = *v18;
    v17 = v12;
    v18 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v18 = *(&v16 + 1);
    v15 = 0;
    sub_271331834(&v13, &v18);
  }

  if (*(a2 + 48) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 32);
  v18 = &unk_2881117F8;
  v11 = 0x100000000;
  if (v10 > 0x100000000)
  {
    v11 = v10;
  }

  v13 = v10;
  v14 = (v10 != 0) | (v11 << 32);
  sub_27155F860(&v16, &v13);
  operator new();
}

void sub_271332208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(v6);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_271332224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_2711FF004(va1);
  _Unwind_Resume(a1);
}

void sub_271332250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_271332264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715455A0(va);
  _Unwind_Resume(a1);
}

void sub_271332278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_27133228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_27112F828(v15);
  sub_27112F828(&a15);
  sub_27112F828(&a9);
  sub_2711FF004(&a14);
  _Unwind_Resume(a1);
}

void sub_2713322B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_2713322CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713322E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711FF004(va);
  _Unwind_Resume(a1);
}

void sub_2713322F4(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 8), 2, (a2 + 9), 2, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 1;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713324D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_2713324FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271332518(uint64_t result)
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

void sub_2713325A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 2, (a1 + 5), 2, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 2;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2713326F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271332704(uint64_t a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_288110F48;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_271560C74(v5, v6);
  operator new();
}

void sub_271332874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27154DEC8(va);
  _Unwind_Resume(a1);
}

void sub_271332888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271332940(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_2713329D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v13 = v3;
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v13 = *(a2 + 8);
      v14 = 0;
    }

    (*(*v3 + 72))(&v18);
    v12 = v18[2];
    v16 = *v18;
    v17 = v12;
    v18 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v18 = *(&v16 + 1);
    v15 = 0;
    sub_271332704(&v13, &v18);
  }

  if (*(a2 + 48) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 32);
  v18 = &unk_288110F48;
  v11 = 0x100000000;
  if (v10 > 0x100000000)
  {
    v11 = v10;
  }

  v13 = v10;
  v14 = (v10 != 0) | (v11 << 32);
  sub_271560C74(&v16, &v13);
  operator new();
}

void sub_2713330D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(v6);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_2713330F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_2711FF85C(va1);
  _Unwind_Resume(a1);
}

void sub_271333120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_271333134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27154DEC8(va);
  _Unwind_Resume(a1);
}

void sub_271333148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_27133315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_27112F828(v15);
  sub_27112F828(&a15);
  sub_27112F828(&a9);
  sub_2711FF85C(&a14);
  _Unwind_Resume(a1);
}

void sub_271333188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_27133319C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713331B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2711FF85C(va);
  _Unwind_Resume(a1);
}

void sub_2713331C4(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 8), 2, (a2 + 9), 2, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 2;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713333A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_2713333CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2713333E8(uint64_t result)
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

void sub_271333478(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 2, (a1 + 5), 2, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 3;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2713335C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2713335D4(uint64_t a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_288110658;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_271562088(v5, v6);
  operator new();
}

void sub_271333744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271553FBC(va);
  _Unwind_Resume(a1);
}

void sub_271333758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271333810(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_2713338A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v16 = v3;
      v17 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v16 = *(a2 + 8);
      v17 = 0;
    }

    (*(*v3 + 72))(v18);
    v12 = *v18[0];
    v13 = *(v18[0] + 8);
    v15 = *(v18[0] + 16);
    v14 = *(v18[0] + 20);
    v18[0] = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v18[0] = v13;
    v19 = 0;
    sub_2713335D4(&v16, v18);
  }

  if (*(a2 + 48) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 32);
  v19 = &unk_288110658;
  v11 = 0x100000000;
  if (v10 > 0x100000000)
  {
    v11 = v10;
  }

  v18[0] = v10;
  v18[1] = (v10 != 0) | (v11 << 32);
  sub_271562088(&v16, v18);
  operator new();
}

void sub_27133437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va1);
  sub_27112F828(va2);
  sub_2712000B4(va);
  _Unwind_Resume(a1);
}

void sub_2713343A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2712000B4(va);
  _Unwind_Resume(a1);
}

void sub_2713343BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271553FBC(va);
  _Unwind_Resume(a1);
}

void sub_2713343E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a12);
  sub_27112F828(&a9);
  sub_2712000B4((v13 - 72));
  _Unwind_Resume(a1);
}

void sub_271334438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133444C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 8), 2, (a2 + 9), 2, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 3;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271334630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271334654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271334670(uint64_t result)
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

void sub_271334700(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 2, (a1 + 5), 2, 4);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 4;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271334848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133485C(uint64_t a1, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  v3 = *a2 != 0;
  if (a2[1])
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *a2;
  v5[8] = &unk_2881104B8;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_27156349C(v5, v6);
  operator new();
}

void sub_2713349CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27155A0A0(va);
  _Unwind_Resume(a1);
}

void sub_2713349E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271334A98(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271334B28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v13 = v3;
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v13 = *(a2 + 8);
      v14 = 0;
    }

    (*(*v3 + 72))(&v18);
    v12 = v18[2];
    v16 = *v18;
    v17 = v12;
    v18 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v18 = *(&v16 + 1);
    v15 = 0;
    sub_27133485C(&v13, &v18);
  }

  if (*(a2 + 48) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 32);
  v18 = &unk_2881104B8;
  v11 = 0x100000000;
  if (v10 > 0x100000000)
  {
    v11 = v10;
  }

  v13 = v10;
  v14 = (v10 != 0) | (v11 << 32);
  sub_27156349C(&v16, &v13);
  operator new();
}

void sub_271335230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112F828(v6);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_27133524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  sub_27112F828(v3);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_27120090C(va1);
  _Unwind_Resume(a1);
}

void sub_271335278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_27133528C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27155A0A0(va);
  _Unwind_Resume(a1);
}

void sub_2713352A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_2713352B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_27112F828(v15);
  sub_27112F828(&a15);
  sub_27112F828(&a9);
  sub_27120090C(&a14);
  _Unwind_Resume(a1);
}

void sub_2713352E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_2713352F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271335308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27120090C(va);
  _Unwind_Resume(a1);
}

void sub_27133531C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 8), 2, (a2 + 9), 2, 4);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 4;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271335500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271335524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271335540(uint64_t result)
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

void sub_2713355D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 5;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271335718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133572C(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 2;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_2881103C8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_2715648B0(v5, v6);
  operator new();
}

void sub_271335904(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271335938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713359F0(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271335A80(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_27133572C(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_2881103C8;
  v11 = 2 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 2;
  *v22 = 1;
  *&v22[4] = v11 & 0x1FFFFFFFFLL | ((v12 >> 1) << 33);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_2715648B0(v15, v18);
  operator new();
}

void sub_271336204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271201164(va);
  _Unwind_Resume(a1);
}

void sub_2713362B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271201164(va2);
  _Unwind_Resume(a1);
}

void sub_2713362DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271201164(va);
  _Unwind_Resume(a1);
}

void sub_271336304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271201164(va);
  _Unwind_Resume(a1);
}

void sub_271336318(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 5;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713364FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271336520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133653C(uint64_t result)
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

void sub_2713365CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 7;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271336714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271336728(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 2;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288110228;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_271565CE0(v5, v6);
  operator new();
}

void sub_271336900(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271336934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713369EC(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271336A7C(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v18 = v3;
      *v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v18 = *(a2 + 8);
      *v19 = 0;
    }

    (*(*v3 + 72))(v23);
    v14 = *(*v23 + 16);
    v13 = *(*v23 + 32);
    *v15 = **v23;
    *&v15[16] = v14;
    v16 = v13;
    *v23 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v17 = *&v15[12];
    sub_271336728(&v18, &v17);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v11 = 2 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  HIDWORD(v18) = *(a2 + 36);
  LODWORD(v18) = 2;
  v17 = &unk_288110228;
  *v19 = HIDWORD(v10);
  *v23 = 1;
  *&v23[4] = v11 & 0x1FFFFFFFFLL | ((v12 >> 1) << 33);
  *&v19[4] = *v23;
  v20 = v12;
  v21 = v10;
  v22 = *&v23[4];
  sub_271565CE0(v15, &v18);
  operator new();
}

void sub_271337210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713372A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712019BC(va);
  _Unwind_Resume(a1);
}

void sub_2713372BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  sub_27112F828(v2);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_2712019BC(va1);
  _Unwind_Resume(a1);
}

void sub_2713372E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712019BC(va);
  _Unwind_Resume(a1);
}

void sub_271337310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2712019BC(va);
  _Unwind_Resume(a1);
}

void sub_271337324(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 7;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271337508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271337548(uint64_t result)
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

void sub_2713375D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 4);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 8;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271337720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271337734(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 2;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288110138;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156710C(v5, v6);
  operator new();
}

void sub_27133790C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271337940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713379F8(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271337A88(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_271337734(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_288110138;
  v11 = 2 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 2;
  *v22 = 1;
  *&v22[4] = v11 & 0x1FFFFFFFFLL | ((v12 >> 1) << 33);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_27156710C(v15, v18);
  operator new();
}

void sub_27133820C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713382A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271202214(va);
  _Unwind_Resume(a1);
}

void sub_2713382B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271202214(va2);
  _Unwind_Resume(a1);
}

void sub_2713382E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271202214(va);
  _Unwind_Resume(a1);
}

void sub_27133830C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271202214(va);
  _Unwind_Resume(a1);
}

void sub_271338320(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 4);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 8;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_271338504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271338528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271338544(uint64_t result)
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

void sub_2713385D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 21;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271338730(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 3;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288111658;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 | (v3 << 32);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_271568530(v5, v6);
  operator new();
}

void sub_271338900(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271338934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713389EC(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271338A7C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_271338730(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_288111658;
  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 3;
  *v22 = 1;
  *&v22[4] = v11 | (v12 << 32);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_271568530(v15, v18);
  operator new();
}

void sub_2713391F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271339290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271202A6C(va);
  _Unwind_Resume(a1);
}

void sub_2713392A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271202A6C(va2);
  _Unwind_Resume(a1);
}

void sub_2713392D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271202A6C(va);
  _Unwind_Resume(a1);
}

void sub_2713392F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271202A6C(va);
  _Unwind_Resume(a1);
}

void sub_27133930C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 21;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2713394F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_271339514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271339530(uint64_t result)
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

void sub_2713395C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 22;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_271339708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133971C(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 3;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288111568;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 | (v3 << 32);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156985C(v5, v6);
  operator new();
}

void sub_2713398EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271339920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713399D8(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_271339A68(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_27133971C(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_288111568;
  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 3;
  *v22 = 1;
  *&v22[4] = v11 | (v12 << 32);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_27156985C(v15, v18);
  operator new();
}

void sub_27133A1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133A27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2712032C4(va);
  _Unwind_Resume(a1);
}

void sub_27133A290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_2712032C4(va2);
  _Unwind_Resume(a1);
}

void sub_27133A2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2712032C4(va);
  _Unwind_Resume(a1);
}

void sub_27133A2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_2712032C4(va);
  _Unwind_Resume(a1);
}

void sub_27133A2F8(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 22;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133A4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133A500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133A51C(uint64_t result)
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

void sub_27133A5AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 25;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133A6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133A708(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288111318;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156AB88(v5, v6);
  operator new();
}

void sub_27133A8E0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133A914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133A9CC(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27133AA5C(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_27133A708(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_288111318;
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 4;
  *v22 = 1;
  *&v22[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_27156AB88(v15, v18);
  operator new();
}

void sub_27133B1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133B278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271203B1C(va);
  _Unwind_Resume(a1);
}

void sub_27133B28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271203B1C(va2);
  _Unwind_Resume(a1);
}

void sub_27133B2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271203B1C(va);
  _Unwind_Resume(a1);
}

void sub_27133B2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271203B1C(va);
  _Unwind_Resume(a1);
}

void sub_27133B2F4(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 25;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133B4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133B4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133B518(uint64_t result)
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

void sub_27133B5A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 31;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133B6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133B704(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288110DA8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156BFC0(v5, v6);
  operator new();
}

void sub_27133B8DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133B910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133B9C8(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27133BA58(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      v18 = v3;
      *v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      v18 = *(a2 + 8);
      *v19 = 0;
    }

    (*(*v3 + 72))(v23);
    v14 = *(*v23 + 16);
    v13 = *(*v23 + 32);
    *v15 = **v23;
    *&v15[16] = v14;
    v16 = v13;
    *v23 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v17 = *&v15[12];
    sub_27133B704(&v18, &v17);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  HIDWORD(v18) = *(a2 + 36);
  LODWORD(v18) = 4;
  v17 = &unk_288110DA8;
  *v19 = HIDWORD(v10);
  *v23 = 1;
  *&v23[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v19[4] = *v23;
  v20 = v12;
  v21 = v10;
  v22 = *&v23[4];
  sub_27156BFC0(v15, &v18);
  operator new();
}

void sub_27133C1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133C284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271204374(va);
  _Unwind_Resume(a1);
}

void sub_27133C298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  sub_27112F828(v2);
  sub_27112F828(va2);
  sub_27112F828(va);
  sub_271204374(va1);
  _Unwind_Resume(a1);
}

void sub_27133C2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271204374(va);
  _Unwind_Resume(a1);
}

void sub_27133C2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271204374(va);
  _Unwind_Resume(a1);
}

void sub_27133C300(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 2);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 31;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133C4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133C524(uint64_t result)
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

void sub_27133C5B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 4);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 32;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133C710(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_288110CB8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156D3EC(v5, v6);
  operator new();
}

void sub_27133C8E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133C91C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133C9D4(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27133CA64(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      __dst = v3;
      *v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      __dst = *(a2 + 8);
      *v19 = 0;
    }

    (*(*v3 + 72))(v23);
    v14 = *(*v23 + 16);
    v13 = *(*v23 + 32);
    *__src = **v23;
    *&__src[16] = v14;
    v16 = v13;
    *v23 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v23 = *&__src[12];
    v17 = 0;
    sub_27133C710(&__dst, v23);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  HIDWORD(__dst) = *(a2 + 36);
  LODWORD(__dst) = 4;
  v17 = &unk_288110CB8;
  *v19 = HIDWORD(v10);
  *v23 = 1;
  *&v23[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v19[4] = *v23;
  v20 = v12;
  v21 = v10;
  v22 = *&v23[4];
  sub_27156D3EC(__src, &__dst);
  operator new();
}

void sub_27133D408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133D4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_27112F828(v29);
  sub_27112F828(&a17);
  sub_27112F828(&a14);
  sub_271204BCC(&a29);
  _Unwind_Resume(a1);
}

void sub_27133D51C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 4);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 32;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133D700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133D724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133D740(uint64_t result)
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

void sub_27133D7D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 1);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 37;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133D918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133D92C(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_2881108E8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156E810(v5, v6);
  operator new();
}

void sub_27133DB04(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133DB38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133DBF0(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27133DC80(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      *v18 = v3;
      *&v18[8] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      *v18 = *(a2 + 8);
      *&v18[8] = 0;
    }

    (*(*v3 + 72))(v22);
    v14 = *(*v22 + 16);
    v13 = *(*v22 + 32);
    *v15 = **v22;
    *&v15[16] = v14;
    v16 = v13;
    *v22 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v22 = *&v15[12];
    v17 = 0;
    sub_27133D92C(v18, v22);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v17 = &unk_2881108E8;
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  *&v18[4] = v10;
  *v18 = 4;
  *v22 = 1;
  *&v22[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v18[12] = *v22;
  v19 = v12;
  v20 = v10;
  v21 = *&v22[4];
  sub_27156E810(v15, v18);
  operator new();
}

void sub_27133E404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133E49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271205424(va);
  _Unwind_Resume(a1);
}

void sub_27133E4B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_27112F828(va);
  sub_271205424(va2);
  _Unwind_Resume(a1);
}

void sub_27133E4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271205424(va);
  _Unwind_Resume(a1);
}

void sub_27133E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271205424(va);
  _Unwind_Resume(a1);
}

void sub_27133E518(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3 = a2[2];
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v4;
    v12 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v11 = v4;
    v12 = 0;
  }

  v5 = a2[4];
  sub_2717F1B04(&v9, (a2 + 11), 3, a2 + 100, 3, 1);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 40) = 37;
  if (!v4)
  {
    *(a1 + 44) = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = (*(*v4 + 104))(v4);
  *(a1 + 44) = v7 & ((v7 >> 1) >> 15);
  v6 = v12;
  if (v12)
  {
LABEL_13:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_15:
  v8 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_27133E6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v3);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

void sub_27133E720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27133E73C(uint64_t result)
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

void sub_27133E7CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a1 + 4), 3, a1 + 44, 3, 2);
  v6 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = 38;
  *(a2 + 44) = 256;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v7 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_27133E914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27133E928(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v6[0] = 4;
  v4 = *a2;
  v6[1] = *a2;
  v5[11] = &unk_2881107F8;
  v6[2] = HIDWORD(v4);
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v4;
  v10 = *(v11 + 4);
  sub_27156FC48(v5, v6);
  operator new();
}

void sub_27133EB00(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27133EB34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27133EBEC(uint64_t a1)
{
  result = *(a1 + 8);
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

  return result;
}

void sub_27133EC7C(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = a2;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        a2 = v5;
      }

      v3 = *(a2 + 8);
      v6 = *(a2 + 16);
      __dst = v3;
      *v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v6 = 0;
      __dst = *(a2 + 8);
      *v19 = 0;
    }

    (*(*v3 + 72))(v23);
    v14 = *(*v23 + 16);
    v13 = *(*v23 + 32);
    *__src = **v23;
    *&__src[16] = v14;
    v16 = v13;
    *v23 = 0;
    MEMORY[0x2743BF050]();
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    *v23 = *&__src[12];
    v17 = 0;
    sub_27133E928(&__dst, v23);
  }

  if (*(a2 + 72) == 1 && *(a2 + 24) != 0)
  {
    v8 = a2;
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    (*(v2 + 88))(0, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1290");
    a2 = v8;
  }

  v10 = *(a2 + 36);
  v11 = 4 * (v10 != 0);
  LODWORD(v12) = v11 * v10;
  if (HIDWORD(v10))
  {
    v12 = v12;
  }

  else
  {
    v12 = 0;
  }

  HIDWORD(__dst) = *(a2 + 36);
  LODWORD(__dst) = 4;
  v17 = &unk_2881107F8;
  *v19 = HIDWORD(v10);
  *v23 = 1;
  *&v23[4] = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
  *&v19[4] = *v23;
  v20 = v12;
  v21 = v10;
  v22 = *&v23[4];
  sub_27156FC48(__src, &__dst);
  operator new();
}

void sub_27133F620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}