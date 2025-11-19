void sub_2712E03AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E0404(void *result)
{
  *result = &unk_288113318;
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

uint64_t *sub_2712E0498(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EFC0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E0540(uint64_t a1, void *a2)
{
  *a1 = &unk_288113318;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 9);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E0758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E0774(void *a1)
{
  *a1 = &unk_288113318;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E0848(uint64_t a1)
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

void sub_2712E08DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E0914(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EFC0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E09CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE9EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE9EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE9EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE9EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E0A2C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 9;
  *(a1 + 44) = 0;
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

void sub_2712E0B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E0B84(void *result)
{
  *result = &unk_288113318;
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

uint64_t sub_2712E0C18@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E1160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E11D8(void *result)
{
  *result = &unk_288114758;
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

uint64_t *sub_2712E126C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EFE0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E1314(uint64_t a1, void *a2)
{
  *a1 = &unk_288114758;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 10);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E152C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E1548(void *a1)
{
  *a1 = &unk_288114758;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E161C(uint64_t a1)
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

void sub_2712E16B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E16E8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EFE0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E17A0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE10EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE10EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE10EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE10EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E1800(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 10;
  *(a1 + 44) = 0;
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

void sub_2712E1944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E1958(void *result)
{
  *result = &unk_288114758;
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

uint64_t sub_2712E19EC@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E1F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E1FAC(void *result)
{
  *result = &unk_288114718;
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

uint64_t *sub_2712E2040(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F000[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E20E8(uint64_t a1, void *a2)
{
  *a1 = &unk_288114718;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 11);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E2300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E231C(void *a1)
{
  *a1 = &unk_288114718;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E23F0(uint64_t a1)
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

void sub_2712E2484(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E24BC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F000[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E2574(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE11EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE11EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE11EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE11EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E25D4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 11;
  *(a1 + 44) = 0;
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

void sub_2712E2718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E272C(void *result)
{
  *result = &unk_288114718;
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

uint64_t sub_2712E27C0@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (12 * *a2 > a3)
    {
      v6 = 12 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 2) >= 0x15555556)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if ((result & 3) != 0)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E2D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E2D84(void *result)
{
  *result = &unk_2881146D8;
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

uint64_t *sub_2712E2E18(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F020[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E2EC0(uint64_t a1, void *a2)
{
  *a1 = &unk_2881146D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 12);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E30D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E30F4(void *a1)
{
  *a1 = &unk_2881146D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E31C8(uint64_t a1)
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

void sub_2712E325C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E3294(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F020[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E334C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE12EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE12EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE12EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE12EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E33AC(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 12;
  *(a1 + 44) = 0;
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

void sub_2712E34F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E3504(void *result)
{
  *result = &unk_2881146D8;
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

void sub_2712E3598(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
    }

    if ((a2 & 3) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v5, " is invalid for pixel format ");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712E393C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E3994(void *result)
{
  *result = &unk_288114698;
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

uint64_t *sub_2712E3A28(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F040[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E3AD0(uint64_t a1, void *a2)
{
  *a1 = &unk_288114698;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 13);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E3CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E3D04(void *a1)
{
  *a1 = &unk_288114698;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E3DD8(uint64_t a1)
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

void sub_2712E3E6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E3EA4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F040[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E3F5C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE13EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE13EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE13EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE13EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E3FBC(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 13;
  *(a1 + 44) = 0;
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

void sub_2712E4100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E4114(void *result)
{
  *result = &unk_288114698;
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

uint64_t sub_2712E41A8@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E46D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E474C(void *result)
{
  *result = &unk_288114658;
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

uint64_t *sub_2712E47E0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F060[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E4888(uint64_t a1, void *a2)
{
  *a1 = &unk_288114658;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 14);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E4AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E4ABC(void *a1)
{
  *a1 = &unk_288114658;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E4B90(uint64_t a1)
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

void sub_2712E4C24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E4C5C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F060[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E4D14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE14EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE14EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE14EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE14EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E4D74(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 14;
  *(a1 + 44) = 0;
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

void sub_2712E4EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E4ECC(void *result)
{
  *result = &unk_288114658;
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

uint64_t sub_2712E4F60@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E5504(void *result)
{
  *result = &unk_288114618;
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

uint64_t *sub_2712E5598(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F080[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E5640(uint64_t a1, void *a2)
{
  *a1 = &unk_288114618;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 15);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E5858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E5874(void *a1)
{
  *a1 = &unk_288114618;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E5948(uint64_t a1)
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

void sub_2712E59DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E5A14(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F080[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E5ACC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE15EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE15EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE15EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE15EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E5B2C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 15;
  *(a1 + 44) = 0;
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

void sub_2712E5C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E5C84(void *result)
{
  *result = &unk_288114618;
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

uint64_t sub_2712E5D18@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 0xF) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if ((result & 3) != 0)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E6248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E62C0(void *result)
{
  *result = &unk_2881145D8;
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

uint64_t *sub_2712E6354(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F0A0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E63FC(uint64_t a1, void *a2)
{
  *a1 = &unk_2881145D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 16);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E6614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E6630(void *a1)
{
  *a1 = &unk_2881145D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E6704(uint64_t a1)
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

void sub_2712E6798(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E67D0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F0A0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E6888(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE16EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE16EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE16EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE16EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E68E8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 16;
  *(a1 + 44) = 0;
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

void sub_2712E6A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E6A40(void *result)
{
  *result = &unk_2881145D8;
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

void sub_2712E6AD4(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (3 * *a1 > a2)
    {
      v4 = 3 * *a1;
      sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
    }

    if (-1431655765 * a2 >= 0x55555556)
    {
      sub_2712D6B3C("Image row byte stride ", &v5, " is invalid for pixel format ");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712E6E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E6EE4(void *result)
{
  *result = &unk_288114598;
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

uint64_t *sub_2712E6F78(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F0C0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E7020(uint64_t a1, void *a2)
{
  *a1 = &unk_288114598;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 17);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E7238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E7254(void *a1)
{
  *a1 = &unk_288114598;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E7328(uint64_t a1)
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

void sub_2712E73BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E73F4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F0C0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E74AC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE17EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE17EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE17EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE17EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E750C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 17;
  *(a1 + 44) = 0;
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

void sub_2712E7650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E7664(void *result)
{
  *result = &unk_288114598;
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

uint64_t sub_2712E76F8@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E7C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E7CB8(void *result)
{
  *result = &unk_288114558;
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

uint64_t *sub_2712E7D4C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F0E0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E7DF4(uint64_t a1, void *a2)
{
  *a1 = &unk_288114558;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 18);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E800C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E8028(void *a1)
{
  *a1 = &unk_288114558;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E80FC(uint64_t a1)
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

void sub_2712E8190(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E81C8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F0E0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E8280(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE18EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE18EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE18EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE18EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E82E0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 18;
  *(a1 + 44) = 0;
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

void sub_2712E8424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E8438(void *result)
{
  *result = &unk_288114558;
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

uint64_t sub_2712E84CC@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E8A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E8A8C(void *result)
{
  *result = &unk_288114518;
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

uint64_t *sub_2712E8B20(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F100[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E8BC8(uint64_t a1, void *a2)
{
  *a1 = &unk_288114518;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 19);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E8DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E8DFC(void *a1)
{
  *a1 = &unk_288114518;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E8ED0(uint64_t a1)
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

void sub_2712E8F64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E8F9C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F100[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E9054(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE19EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE19EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE19EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE19EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E90B4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 19;
  *(a1 + 44) = 0;
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

void sub_2712E91F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E920C(void *result)
{
  *result = &unk_288114518;
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

uint64_t sub_2712E92A0@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (12 * *a2 > a3)
    {
      v6 = 12 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 2) >= 0x15555556)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if ((result & 3) != 0)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712E97EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712E9864(void *result)
{
  *result = &unk_2881143D8;
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

uint64_t *sub_2712E98F8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F120[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712E99A0(uint64_t a1, void *a2)
{
  *a1 = &unk_2881143D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 20);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712E9BB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712E9BD4(void *a1)
{
  *a1 = &unk_2881143D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E9CA8(uint64_t a1)
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

void sub_2712E9D3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712E9D74(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F120[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712E9E2C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE20EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE20EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE20EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE20EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712E9E8C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 20;
  *(a1 + 44) = 0;
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

void sub_2712E9FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712E9FE4(void *result)
{
  *result = &unk_2881143D8;
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

void sub_2712EA078(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (3 * *a1 > a2)
    {
      v4 = 3 * *a1;
      sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
    }

    if (-1431655765 * a2 >= 0x55555556)
    {
      sub_2712D6B3C("Image row byte stride ", &v5, " is invalid for pixel format ");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712EA430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EA488(void *result)
{
  *result = &unk_2881142D8;
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

uint64_t *sub_2712EA51C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F140[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EA5C4(uint64_t a1, void *a2)
{
  *a1 = &unk_2881142D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 21);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EA7DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EA7F8(void *a1)
{
  *a1 = &unk_2881142D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EA8CC(uint64_t a1)
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

void sub_2712EA960(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EA998(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F140[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EAA50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE21EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE21EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE21EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE21EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EAAB0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 21;
  *(a1 + 44) = 0;
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

void sub_2712EABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EAC08(void *result)
{
  *result = &unk_2881142D8;
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

uint64_t sub_2712EAC9C@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712EB1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EB25C(void *result)
{
  *result = &unk_2881141D8;
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

uint64_t *sub_2712EB2F0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F160[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EB398(uint64_t a1, void *a2)
{
  *a1 = &unk_2881141D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 22);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EB5B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EB5CC(void *a1)
{
  *a1 = &unk_2881141D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EB6A0(uint64_t a1)
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

void sub_2712EB734(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EB76C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F160[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EB824(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE22EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE22EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE22EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE22EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EB884(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 22;
  *(a1 + 44) = 0;
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

void sub_2712EB9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EB9DC(void *result)
{
  *result = &unk_2881141D8;
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

uint64_t sub_2712EBA70@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (6 * *a2 > a3)
    {
      v6 = 6 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 1) >= 0x2AAAAAAB)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712EBFB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EC030(void *result)
{
  *result = &unk_288114198;
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

uint64_t *sub_2712EC0C4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F180[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EC16C(uint64_t a1, void *a2)
{
  *a1 = &unk_288114198;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 23);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EC384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EC3A0(void *a1)
{
  *a1 = &unk_288114198;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EC474(uint64_t a1)
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

void sub_2712EC508(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EC540(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F180[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EC5F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE23EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE23EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE23EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE23EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EC658(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 23;
  *(a1 + 44) = 0;
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

void sub_2712EC79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EC7B0(void *result)
{
  *result = &unk_288114198;
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

uint64_t sub_2712EC844@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = result;
  v7 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (12 * *a2 > a3)
    {
      v6 = 12 * *a2;
      sub_2712D669C("Image row byte stride ", &v7, " is invalid for the given size ");
    }

    HIDWORD(v5) = -1431655765 * a3;
    LODWORD(v5) = -1431655765 * a3;
    if ((v5 >> 2) >= 0x15555556)
    {
      sub_2712D6B3C("Image row byte stride ", &v7, " is invalid for pixel format ");
    }

    if ((result & 3) != 0)
    {
      sub_2712D6E10("Image base address ", &v8, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712ECD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712ECE08(void *result)
{
  *result = &unk_288114158;
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

uint64_t *sub_2712ECE9C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F1A0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712ECF44(uint64_t a1, void *a2)
{
  *a1 = &unk_288114158;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 24);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712ED15C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712ED178(void *a1)
{
  *a1 = &unk_288114158;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712ED24C(uint64_t a1)
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

void sub_2712ED2E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712ED318(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F1A0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712ED3D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE24EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE24EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE24EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE24EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712ED430(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 24;
  *(a1 + 44) = 0;
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

void sub_2712ED574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712ED588(void *result)
{
  *result = &unk_288114158;
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

void sub_2712ED61C(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
    }

    if ((a2 & 3) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v5, " is invalid for pixel format ");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712ED9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EDA18(void *result)
{
  *result = &unk_288114058;
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

uint64_t *sub_2712EDAAC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F1C0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EDB54(uint64_t a1, void *a2)
{
  *a1 = &unk_288114058;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 25);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EDD6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EDD88(void *a1)
{
  *a1 = &unk_288114058;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EDE5C(uint64_t a1)
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

void sub_2712EDEF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EDF28(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F1C0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EDFE0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE25EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE25EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE25EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE25EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EE040(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 25;
  *(a1 + 44) = 0;
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

void sub_2712EE184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EE198(void *result)
{
  *result = &unk_288114058;
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

uint64_t sub_2712EE22C@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712EE758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EE7D0(void *result)
{
  *result = &unk_288114018;
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

uint64_t *sub_2712EE864(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F1E0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EE90C(uint64_t a1, void *a2)
{
  *a1 = &unk_288114018;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 26);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EEB24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EEB40(void *a1)
{
  *a1 = &unk_288114018;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EEC14(uint64_t a1)
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

void sub_2712EECA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EECE0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F1E0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EED98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE26EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE26EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE26EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE26EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EEDF8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 26;
  *(a1 + 44) = 0;
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

void sub_2712EEF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EEF50(void *result)
{
  *result = &unk_288114018;
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

uint64_t sub_2712EEFE4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712EF510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712EF588(void *result)
{
  *result = &unk_288113FD8;
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

uint64_t *sub_2712EF61C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F200[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712EF6C4(uint64_t a1, void *a2)
{
  *a1 = &unk_288113FD8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 27);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712EF8DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712EF8F8(void *a1)
{
  *a1 = &unk_288113FD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EF9CC(uint64_t a1)
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

void sub_2712EFA60(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712EFA98(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F200[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712EFB50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE27EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE27EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE27EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE27EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712EFBB0(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 27;
  *(a1 + 44) = 0;
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

void sub_2712EFCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712EFD08(void *result)
{
  *result = &unk_288113FD8;
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

uint64_t sub_2712EFD9C@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 0xF) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if ((result & 3) != 0)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F02CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F0344(void *result)
{
  *result = &unk_288113F98;
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

uint64_t *sub_2712F03D8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F220[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F0480(uint64_t a1, void *a2)
{
  *a1 = &unk_288113F98;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 28);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F0698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F06B4(void *a1)
{
  *a1 = &unk_288113F98;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F0788(uint64_t a1)
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

void sub_2712F081C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F0854(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F220[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F090C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE28EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE28EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE28EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE28EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F096C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 28;
  *(a1 + 44) = 0;
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

void sub_2712F0AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F0AC4(void *result)
{
  *result = &unk_288113F98;
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

void sub_2712F0B58(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
    }

    if ((a2 & 3) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v5, " is invalid for pixel format ");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712F0EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F0F54(void *result)
{
  *result = &unk_288113F58;
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

uint64_t *sub_2712F0FE8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F240[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F1090(uint64_t a1, void *a2)
{
  *a1 = &unk_288113F58;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 29);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F12A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F12C4(void *a1)
{
  *a1 = &unk_288113F58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F1398(uint64_t a1)
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

void sub_2712F142C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F1464(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F240[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F151C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE29EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE29EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE29EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE29EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F157C(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 29;
  *(a1 + 44) = 0;
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

void sub_2712F16C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F16D4(void *result)
{
  *result = &unk_288113F58;
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

uint64_t sub_2712F1768@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F1C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F1D0C(void *result)
{
  *result = &unk_288113E18;
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

uint64_t *sub_2712F1DA0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F260[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F1E48(uint64_t a1, void *a2)
{
  *a1 = &unk_288113E18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 30);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F2060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F207C(void *a1)
{
  *a1 = &unk_288113E18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F2150(uint64_t a1)
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

void sub_2712F21E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F221C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F260[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F22D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE30EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE30EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE30EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE30EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F2334(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 30;
  *(a1 + 44) = 0;
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

void sub_2712F2478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F248C(void *result)
{
  *result = &unk_288113E18;
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

uint64_t sub_2712F2520@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F2A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F2AC4(void *result)
{
  *result = &unk_288113D18;
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

uint64_t *sub_2712F2B58(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F280[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F2C00(uint64_t a1, void *a2)
{
  *a1 = &unk_288113D18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 31);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F2E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F2E34(void *a1)
{
  *a1 = &unk_288113D18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F2F08(uint64_t a1)
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

void sub_2712F2F9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F2FD4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F280[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F308C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE31EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE31EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE31EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE31EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F30EC(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 31;
  *(a1 + 44) = 0;
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

void sub_2712F3230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F3244(void *result)
{
  *result = &unk_288113D18;
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

uint64_t sub_2712F32D8@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 0xF) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if ((result & 3) != 0)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F3808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F3880(void *result)
{
  *result = &unk_288113C18;
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

uint64_t *sub_2712F3914(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F2A0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F39BC(uint64_t a1, void *a2)
{
  *a1 = &unk_288113C18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 32);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F3BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F3BF0(void *a1)
{
  *a1 = &unk_288113C18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F3CC4(uint64_t a1)
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

void sub_2712F3D58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F3D90(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F2A0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F3E48(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE32EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE32EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE32EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE32EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F3EA8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 32;
  *(a1 + 44) = 0;
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

void sub_2712F3FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F4000(void *result)
{
  *result = &unk_288113C18;
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

void sub_2712F4094(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
    }

    if ((a2 & 3) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v5, " is invalid for pixel format ");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712F4438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F4490(void *result)
{
  *result = &unk_288113BD8;
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

uint64_t *sub_2712F4524(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F2C0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F45CC(uint64_t a1, void *a2)
{
  *a1 = &unk_288113BD8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 33);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F47E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F4800(void *a1)
{
  *a1 = &unk_288113BD8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F48D4(uint64_t a1)
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

void sub_2712F4968(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F49A0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F2C0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F4A58(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE33EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE33EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE33EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE33EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F4AB8(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 33;
  *(a1 + 44) = 0;
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

void sub_2712F4BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F4C10(void *result)
{
  *result = &unk_288113BD8;
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

uint64_t sub_2712F4CA4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F51D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F5248(void *result)
{
  *result = &unk_288113B98;
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

uint64_t *sub_2712F52DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F2E0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F5384(uint64_t a1, void *a2)
{
  *a1 = &unk_288113B98;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 34);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F559C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F55B8(void *a1)
{
  *a1 = &unk_288113B98;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F568C(uint64_t a1)
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

void sub_2712F5720(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F5758(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F2E0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F5810(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE34EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE34EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE34EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE34EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F5870(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 34;
  *(a1 + 44) = 0;
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

void sub_2712F59B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F59C8(void *result)
{
  *result = &unk_288113B98;
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

uint64_t sub_2712F5A5C@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F5F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F6000(void *result)
{
  *result = &unk_288113B58;
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

uint64_t *sub_2712F6094(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F300[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F613C(uint64_t a1, void *a2)
{
  *a1 = &unk_288113B58;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 35);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F6354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F6370(void *a1)
{
  *a1 = &unk_288113B58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F6444(uint64_t a1)
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

void sub_2712F64D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F6510(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F300[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F65C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE35EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE35EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE35EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE35EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F6628(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 35;
  *(a1 + 44) = 0;
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

void sub_2712F676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F6780(void *result)
{
  *result = &unk_288113B58;
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

uint64_t sub_2712F6814@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (16 * *a2 > a3)
    {
      v5 = 16 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 0xF) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if ((result & 3) != 0)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F6D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F6DBC(void *result)
{
  *result = &unk_288113B18;
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

uint64_t *sub_2712F6E50(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F320[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F6EF8(uint64_t a1, void *a2)
{
  *a1 = &unk_288113B18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 36);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F7110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F712C(void *a1)
{
  *a1 = &unk_288113B18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F7200(uint64_t a1)
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

void sub_2712F7294(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F72CC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F320[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F7384(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE36EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE36EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE36EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE36EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F73E4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 4);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 36;
  *(a1 + 44) = 0;
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

void sub_2712F7528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F753C(void *result)
{
  *result = &unk_288113B18;
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

void sub_2712F75D0(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (*a1)
  {
    v3 = a1[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (4 * *a1 > a2)
    {
      v4 = 4 * *a1;
      sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
    }

    if ((a2 & 3) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v5, " is invalid for pixel format ");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712F7974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F79CC(void *result)
{
  *result = &unk_288113A18;
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

uint64_t *sub_2712F7A60(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F340[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F7B08(uint64_t a1, void *a2)
{
  *a1 = &unk_288113A18;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 37);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F7D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F7D3C(void *a1)
{
  *a1 = &unk_288113A18;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F7E10(uint64_t a1)
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

void sub_2712F7EA4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F7EDC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F340[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F7F94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F7FF4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 1);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 37;
  *(a1 + 44) = 0;
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

void sub_2712F8138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F814C(void *result)
{
  *result = &unk_288113A18;
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

uint64_t sub_2712F81E0@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F870C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F8784(void *result)
{
  *result = &unk_288113918;
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

uint64_t *sub_2712F8818(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F360[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F88C0(uint64_t a1, void *a2)
{
  *a1 = &unk_288113918;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 38);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F8AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F8AF4(void *a1)
{
  *a1 = &unk_288113918;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F8BC8(uint64_t a1)
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

void sub_2712F8C5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F8C94(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F360[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712F8D4C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F8DAC(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 3, a2 + 44, 3, 2);
  v6 = a2[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = 38;
  *(a1 + 44) = 0;
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

void sub_2712F8EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F8F04(void *result)
{
  *result = &unk_288113918;
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

uint64_t sub_2712F8F98@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = result;
  v6 = a3;
  if (*a2)
  {
    v4 = a2[1] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (8 * *a2 > a3)
    {
      v5 = 8 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 7) != 0)
    {
      sub_2712D6B3C("Image row byte stride ", &v6, " is invalid for pixel format ");
    }

    if (result)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712F94C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2712F953C(void *result)
{
  *result = &unk_2881138D8;
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

uint64_t *sub_2712F95D0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 160);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v3(*(v2 + 56), *(v2 + 48));
        LODWORD(v3) = *(v2 + 160);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812F380[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712F9678(uint64_t a1, void *a2)
{
  *a1 = &unk_2881138D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 39);
  v4 = v7[1];
  v3 = v7[2];
  *(a1 + 24) = *v7;
  *(a1 + 40) = v4;
  *(a1 + 56) = v3;
  v7 = 0;
  MEMORY[0x2743BF050]();
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  return a1;
}

void sub_2712F9890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712F98AC(void *a1)
{
  *a1 = &unk_2881138D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F9980(uint64_t a1)
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

void sub_2712F9A14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712F9A4C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 160);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 160) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 64);
      if (v2)
      {
        v2(*(v1 + 56), *(v1 + 48));
        LODWORD(v2) = *(v1 + 160);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812F380[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}