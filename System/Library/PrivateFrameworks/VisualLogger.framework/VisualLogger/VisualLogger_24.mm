uint64_t sub_2712F9B04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE39EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE39EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE39EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE39EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712F9B64(uint64_t a1, void *a2)
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
  *(a1 + 40) = 39;
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

void sub_2712F9CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712F9CBC(void *result)
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

uint64_t sub_2712F9D50@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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

void sub_2712FA280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712FA2F8(void *result)
{
  *result = &unk_288113798;
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

uint64_t *sub_2712FA38C(uint64_t *a1)
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

    (off_28812F3A0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712FA434(uint64_t a1, void *a2)
{
  *a1 = &unk_288113798;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 40);
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

void sub_2712FA64C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712FA668(void *a1)
{
  *a1 = &unk_288113798;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712FA73C(uint64_t a1)
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

void sub_2712FA7D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712FA808(uint64_t result)
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

    (off_28812F3A0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712FA8C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE40EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE40EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE40EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE40EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712FA920(uint64_t a1, void *a2)
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
  *(a1 + 40) = 40;
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

void sub_2712FAA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712FAA78(void *result)
{
  *result = &unk_288113798;
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

_BYTE *sub_2712FAB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712FAF1C(a2, v3);
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

size_t sub_2712FAC1C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812FB40[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2712FAD10(uint64_t *a1, uint64_t a2)
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
    (off_28812FB40[v9])(&v12, v2);
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

void sub_2712FAED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712FAF1C(uint64_t a1, const char *a2)
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

void sub_2712FB0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2712FB0E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712FB120(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2712FB150(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img12IImageBufferEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712FB380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2712FB3DC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    v8 = *(a2 + 52);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a2 + 40);
    v7 = *(a2 + 48);
    v8 = *(a2 + 52);
  }

  *&v11 = v4;
  *(&v11 + 1) = v5;
  *v12 = *(a2 + 24);
  *&v12[8] = *(a2 + 32);
  *&v12[16] = v6;
  *&v12[24] = v7;
  *&v12[28] = v8;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = a3;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    a3 = v9;
  }

  *a1 = &unk_28812ECD0;
  *(a1 + 8) = &unk_28812ED18;
  *(a1 + 16) = &unk_2881147D8;
  *(a1 + 24) = v11;
  *(a1 + 40) = *v12;
  *(a1 + 54) = *&v12[14];
  *(a1 + 80) = *a3;
  sub_27113523C(a1 + 96, a3 + 1);
  *a1 = &unk_28810C6D8;
  *a1 = &unk_28810A4D8;
  return a1;
}

void sub_2712FB5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712291B8(v2);
  sub_27115475C(va);
  _Unwind_Resume(a1);
}

void sub_2712FB60C(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, int32x2_t a8@<D0>)
{
  if (a4 < 3)
  {
    if (a3 - 1 < 0x28)
    {
      if (a1 != 1)
      {
        if (!a1)
        {
          v19[0] = a5;
          LODWORD(v44) = a6;
          if (a4 != 1)
          {
            if (!a4)
            {
              *&v20 = a2;
              sub_271791E64(a3, &v20, a8);
            }

            sub_2712CA9E4();
          }

          *&v20 = a2;
          sub_27179AB54(a3, &v20);
        }

        operator new();
      }

      v42 = a4;
      v43 = a3;
      v41 = a5;
      v40 = a6;
      if (a3 <= 0x26 && ((1 << a3) & 0x61826001BELL) != 0 && ((0x63A26201BEuLL >> a3) & 1) != 0)
      {
        sub_2712CA9E4();
      }

      v25 = xmmword_27187ABF8;
      *v26 = unk_27187AC08;
      v27 = xmmword_27187AC18;
      v28 = 0x2600000025;
      v45 = 0;
      v22[0] = &v44;
      v22[1] = "invalid image format '";
      v22[2] = &v44;
      v23 = "invalid image format '";
      v24 = "invalid image format '";
      __dst = v22;
      sub_2712C3BC8(&__dst);
      sub_27120AACC();
    }

    sub_2712FD28C(a3, &v29);
    *a7 = v29;
    *(a7 + 16) = 0;
    *(a7 + 112) = 0;
    if (v39 != 1)
    {
      *(a7 + 160) = 0;
      return;
    }

    *(a7 + 40) = 0;
    v11 = v32;
    if (v32 == 1)
    {
      *(a7 + 16) = *__p;
      *(a7 + 32) = v31;
      __p[1] = 0;
      v31 = 0;
      __p[0] = 0;
      *(a7 + 40) = 1;
      *(a7 + 48) = 0;
      v12 = a7 + 48;
      *(a7 + 104) = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(a7 + 48) = 0;
      v12 = a7 + 48;
      *(a7 + 104) = 0;
      if ((v38 & 1) == 0)
      {
LABEL_19:
        *(a7 + 112) = 1;
        *(a7 + 160) = 0;
        if (!v11)
        {
          return;
        }

LABEL_34:
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          return;
        }

        v14 = __p[0];
        goto LABEL_44;
      }
    }

    v15 = v35;
    *(v12 + 16) = v34;
    *v12 = *v33;
    v33[0] = 0;
    v33[1] = 0;
    *(a7 + 72) = v15;
    *(a7 + 80) = *v36;
    *(a7 + 96) = v37;
    v34 = 0;
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    *(a7 + 104) = 1;
    *(a7 + 112) = 1;
    *(a7 + 160) = 0;
    if (!v11)
    {
      return;
    }

    goto LABEL_34;
  }

  LODWORD(v23) = 0;
  *&v25 = v22;
  v26[0] = v22;
  v19[0] = &v25;
  sub_2711BF108(v19);
  if (v23 == -1)
  {
    sub_2711308D4();
  }

  *&v25 = v19;
  (off_288130958[v23])(&v20, &v25, v22);
  if (v23 != -1)
  {
    (off_288130910[v23])(&v25, v22);
  }

  *v16 = v20;
  v17 = v21;
  v20 = 0uLL;
  v21 = 0;
  v18 = 1;
  sub_271369D54(v16, &v29);
  *a7 = v29;
  *(a7 + 16) = 0;
  *(a7 + 112) = 0;
  if (v39 != 1)
  {
    *(a7 + 160) = 0;
    goto LABEL_26;
  }

  *(a7 + 40) = 0;
  v9 = v32;
  if (v32 == 1)
  {
    *(a7 + 16) = *__p;
    *(a7 + 32) = v31;
    __p[1] = 0;
    v31 = 0;
    __p[0] = 0;
    *(a7 + 40) = 1;
    *(a7 + 48) = 0;
    v10 = a7 + 48;
    *(a7 + 104) = 0;
    if ((v38 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a7 + 48) = 0;
    v10 = a7 + 48;
    *(a7 + 104) = 0;
    if ((v38 & 1) == 0)
    {
LABEL_8:
      *(a7 + 112) = 1;
      *(a7 + 160) = 0;
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  v13 = v35;
  *(v10 + 16) = v34;
  *v10 = *v33;
  v33[0] = 0;
  v33[1] = 0;
  *(a7 + 72) = v13;
  *(a7 + 80) = *v36;
  *(a7 + 96) = v37;
  v34 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  *(a7 + 104) = 1;
  *(a7 + 112) = 1;
  *(a7 + 160) = 0;
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_26:
  if (v18 == 1 && SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    v14 = v20;
LABEL_44:
    operator delete(v14);
  }
}

void sub_2712FD050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (*(v59 - 121) < 0)
  {
    operator delete(*(v59 - 144));
  }

  __cxa_guard_abort(&qword_28087B720);
  sub_27112E024(&a59);
  sub_271154B3C(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_2712FD124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (*(v53 - 184) == 1 && *(v53 - 185) < 0)
  {
    operator delete(*(v53 - 208));
  }

  if (*(v53 - 209) < 0)
  {
    operator delete(*(v53 - 232));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712FD28C(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  sub_2712FD374("invalid VZPixelFormat value '", &v3, "'");
  *__p = *v4;
  v7 = v5;
  v4[1] = 0;
  v5 = 0;
  v4[0] = 0;
  v8 = 1;
  sub_271369D54(__p, a2);
  if (v8 == 1 && SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_2712FD33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2712FD374(std::string *a1, unsigned int *a2, std::string *a3)
{
  v7 = 0;
  v10 = v6;
  v11 = a1;
  v12 = v6;
  v13 = a1;
  v14 = a1;
  v8.__r_.__value_.__r.__words[0] = &v10;
  sub_2712390A4(&v8);
  std::to_string(&v8, *a2);
  v10 = v6;
  v11 = &v8;
  v12 = v6;
  v13 = &v8;
  v14 = &v8;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v9 = &v10;
  (off_288130928[v7])(&v9, v6);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v10 = v6;
  v11 = a3;
  v12 = v6;
  v13 = a3;
  v14 = a3;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8.__r_.__value_.__r.__words[0] = &v10;
  (*(&off_288130940 + v7))(&v8, v6);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v10 = &v8;
  result = (off_288130958[v7])(&v10, v6);
  if (v7 != -1)
  {
    return (off_288130910[v7])(&v10, v6);
  }

  return result;
}

void sub_2712FD4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2712FD4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2712FD4ECLL);
}

void sub_2712FD520(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v14 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 48);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v6 = *(a2 + 56);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v12 = *(a2 + 8);
    v13 = 0;
    v5 = *(a2 + 48);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v6 = *(a2 + 56);
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  if (v3)
  {
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v3;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        v3 = v7;
      }
    }

    v8 = (*(*v3 + 104))(v3);
    *(a1 + 44) = v8 & ((v8 >> 1) >> 15);
    v4 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a1 + 44) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v9 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = v14;
  if (!v14)
  {
    return;
  }

LABEL_13:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_2712FD718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2712FD73C(int a1, uint64_t **a2)
{
  v453 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v3 = **a2;
      sub_2712D6134(a2[1], *a2[2], &v442);
      if ((v452 & 1) == 0)
      {
        v410 = v442;
        LOBYTE(v411[0]) = 0;
        v419 = 0;
        if (v451 == 1)
        {
          sub_27112F6CC(v411, &v443);
          v419 = 1;
        }

        goto LABEL_743;
      }

      v4 = a2[1];
      v5 = **a2;
      LODWORD(v410) = *a2[2];
      sub_27130440C(&v420, v5, v4, &v410);
      *&v431 = &unk_28810F638;
      sub_271304970(&v420, &v431 + 8);
      v407 = &unk_288114798;
      sub_271305110(&v408, &v431);
      sub_2712CADE8(&v410, &v407);
      sub_2712D6378(a2[3], &v410);
      sub_2712CAF40(&v410);
      v407 = &unk_288114798;
      v6 = v409;
      if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      sub_27112F828(&v431 + 8);
      v7 = v422;
      if (v422)
      {
        goto LABEL_373;
      }

      goto LABEL_752;
    case 2:
      sub_2712DA1A4(**a2, a2[1], *a2[2], &v442);
      if ((v452 & 1) == 0)
      {
        v410 = v442;
        LOBYTE(v411[0]) = 0;
        v419 = 0;
        if (v451 == 1)
        {
          sub_27112F6CC(v411, &v443);
          v419 = 1;
        }

        goto LABEL_743;
      }

      v293 = a2[1];
      v294 = **a2;
      LODWORD(v410) = *a2[2] >> 1;
      sub_271305334(&v420, v294, v293, &v410);
      *&v431 = &unk_28810F138;
      sub_271305898(&v420, &v431 + 8);
      v407 = &unk_288114798;
      sub_271305FF8(&v408, &v431);
      sub_2712CADE8(&v410, &v407);
      sub_2712D6378(a2[3], &v410);
      sub_2712CAF40(&v410);
      v407 = &unk_288114798;
      v295 = v409;
      if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v295->__on_zero_shared)(v295);
        std::__shared_weak_count::__release_weak(v295);
      }

      sub_27112F828(&v431 + 8);
      v7 = v422;
      if (!v422)
      {
        goto LABEL_752;
      }

      goto LABEL_373;
    case 3:
      sub_2712DAF50(**a2, a2[1], *a2[2], &v442);
      if ((v452 & 1) == 0)
      {
        v410 = v442;
        LOBYTE(v411[0]) = 0;
        v419 = 0;
        if (v451 == 1)
        {
          sub_27112F6CC(v411, &v443);
          v419 = 1;
        }

        goto LABEL_743;
      }

      v290 = a2[1];
      v291 = **a2;
      LODWORD(v410) = *a2[2] >> 1;
      sub_27130621C(&v420, v291, v290, &v410);
      *&v431 = &unk_28810EBB8;
      sub_271306780(&v420, &v431 + 8);
      v407 = &unk_288114798;
      sub_271306EF0(&v408, &v431);
      sub_2712CADE8(&v410, &v407);
      sub_2712D6378(a2[3], &v410);
      sub_2712CAF40(&v410);
      v407 = &unk_288114798;
      v292 = v409;
      if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v292->__on_zero_shared)(v292);
        std::__shared_weak_count::__release_weak(v292);
      }

      sub_27112F828(&v431 + 8);
      v7 = v422;
      if (v422)
      {
        goto LABEL_373;
      }

      goto LABEL_752;
    case 4:
      sub_2712DBCFC(**a2, a2[1], *a2[2], &v442);
      if (v452)
      {
        v184 = a2[1];
        v185 = **a2;
        LODWORD(v410) = *a2[2] >> 2;
        sub_271307114(&v420, v185, v184, &v410);
        *&v431 = &unk_28810EAB8;
        sub_271307678(&v420, &v431 + 8);
        v407 = &unk_288114798;
        sub_271307DD8(&v408, &v431);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v186 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v186->__on_zero_shared)(v186);
          std::__shared_weak_count::__release_weak(v186);
        }

        sub_27112F828(&v431 + 8);
        v7 = v422;
        if (v422)
        {
LABEL_373:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }
        }
      }

      else
      {
        v410 = v442;
        LOBYTE(v411[0]) = 0;
        v419 = 0;
        if (v451 == 1)
        {
          sub_27112F6CC(v411, &v443);
          v419 = 1;
        }

LABEL_743:
        sub_2712CD070(a2[3], &v410);
        if (v419 == 1)
        {
          if (v418 == 1)
          {
            if (v417 < 0)
            {
              operator delete(__p);
            }

            if (v415 < 0)
            {
              operator delete(v414);
            }
          }

          if (v413 == 1 && v412 < 0)
          {
            operator delete(v411[0]);
          }
        }
      }

LABEL_752:
      if ((v452 & 1) != 0 || v451 != 1)
      {
        goto LABEL_843;
      }

      if (v450 == 1)
      {
        if (v449 < 0)
        {
          operator delete(v448);
        }

        if (v447 < 0)
        {
          operator delete(v446);
        }
      }

      if (v445 != 1 || (v444 & 0x80000000) == 0)
      {
        goto LABEL_843;
      }

      v405 = v443;
      goto LABEL_842;
    case 5:
      v270 = **a2;
      sub_2712DCAB0(a2[1], *a2[2], &v431);
      if (v441)
      {
        v271 = a2[1];
        v272 = **a2;
        LODWORD(v410) = *a2[2];
        sub_271307FFC(&v420, v272, v271, &v410);
        *&v442 = &unk_28810E9F8;
        sub_2713085EC(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271308DD4(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v273 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v273->__on_zero_shared)(v273);
          std::__shared_weak_count::__release_weak(v273);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422 || atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 == 1)
      {
        if (v418 == 1)
        {
          if (v417 < 0)
          {
            operator delete(__p);
          }

          if (v415 < 0)
          {
            operator delete(v414);
          }
        }

        if (v413 == 1 && v412 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 6:
      sub_2712DD6C8(**a2, a2[1], *a2[2], &v431);
      if ((v441 & 1) == 0)
      {
        v410 = v431;
        LOBYTE(v411[0]) = 0;
        v419 = 0;
        if (v440 == 1)
        {
          sub_27112F6CC(v411, v432);
          v419 = 1;
        }

        sub_2712CD070(a2[3], &v410);
        if (v419 != 1)
        {
          goto LABEL_832;
        }

        if (v418 == 1)
        {
          if (v417 < 0)
          {
            operator delete(__p);
          }

          if (v415 < 0)
          {
            operator delete(v414);
          }
        }

        if (v413 != 1 || (v412 & 0x80000000) == 0)
        {
          goto LABEL_832;
        }

        goto LABEL_831;
      }

      v171 = a2[1];
      v172 = **a2;
      v173 = *a2[2];
      v420 = &unk_28810D238;
      if (*(v171 + 1))
      {
        v174 = *v171 == 0;
      }

      else
      {
        v174 = 1;
      }

      v175 = (v173 << 31) & 0x7FFFFFFF00000000;
      if (v174)
      {
        v175 = 0;
      }

      v176 = v175 | (2 * (*v171 != 0));
      v410 = 0uLL;
      v177 = *v171;
      if (v174)
      {
        v177 = 0;
      }

      *(&v442 + 4) = v177;
      v178 = v177;
      LODWORD(v442) = 2;
      v179 = v442;
      v180 = HIDWORD(v177);
      LODWORD(v442) = 1;
      *(&v442 + 4) = v176;
      v181 = v442;
      v182 = HIDWORD(v175);
      if (HIDWORD(v177) * HIDWORD(v175) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
      {
        goto LABEL_844;
      }

      v421 = 0;
      v422 = 0;
      v423 = v172;
      v424 = v179;
      v426 = v181;
      v425 = v180;
      v427 = v182;
      v428 = v178;
      v429 = v176;
      v430 = 0;
      *&v442 = &unk_28810E9B8;
      sub_27130938C(&v420, &v442 + 8);
      v407 = &unk_288114798;
      sub_271309B7C(&v408, &v442);
      sub_2712CADE8(&v410, &v407);
      sub_2712D6378(a2[3], &v410);
      sub_2712CAF40(&v410);
      v407 = &unk_288114798;
      v183 = v409;
      if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v183->__on_zero_shared)(v183);
        std::__shared_weak_count::__release_weak(v183);
      }

      sub_27112F828(&v442 + 8);
      v21 = v422;
      if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_453:
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

LABEL_832:
      if ((v441 & 1) == 0 && v440 == 1)
      {
        if (v439 == 1)
        {
          if (v438 < 0)
          {
            operator delete(v437);
          }

          if (v436 < 0)
          {
            operator delete(v435);
          }
        }

        if (v434 == 1 && v433 < 0)
        {
          v405 = v432[0];
LABEL_842:
          operator delete(v405);
        }
      }

LABEL_843:
      v406 = *MEMORY[0x277D85DE8];
      return;
    case 7:
      sub_2712DE480(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v136 = a2[1];
        v137 = **a2;
        LODWORD(v410) = *a2[2] >> 1;
        sub_271309DA0(&v420, v137, v136, &v410);
        *&v442 = &unk_28810E8F8;
        sub_27130A390(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_27130AB4C(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v138 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v138->__on_zero_shared)(v138);
          std::__shared_weak_count::__release_weak(v138);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422 || atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 == 1)
      {
        if (v418 == 1)
        {
          if (v417 < 0)
          {
            operator delete(__p);
          }

          if (v415 < 0)
          {
            operator delete(v414);
          }
        }

        if (v413 == 1 && v412 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 8:
      sub_2712DF238(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v287 = a2[1];
        v288 = **a2;
        LODWORD(v410) = *a2[2] >> 2;
        sub_27130AD70(&v420, v288, v287, &v410);
        *&v442 = &unk_28810E838;
        sub_27130B360(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_27130BB50(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v289 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v289->__on_zero_shared)(v289);
          std::__shared_weak_count::__release_weak(v289);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422 || atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 == 1)
      {
        if (v418 == 1)
        {
          if (v417 < 0)
          {
            operator delete(__p);
          }

          if (v415 < 0)
          {
            operator delete(v414);
          }
        }

        if (v413 == 1 && v412 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 9:
      v255 = **a2;
      sub_2712DFFF4(a2[1], *a2[2], &v431);
      if (v441)
      {
        v256 = a2[1];
        v257 = **a2;
        v258 = a2[2];
        v420 = &unk_28810D038;
        v259 = *v256 == 0;
        if (*v256)
        {
          v260 = 3;
        }

        else
        {
          v260 = 0;
        }

        if (!*(v256 + 1))
        {
          v259 = 1;
        }

        v261 = *v258 << 32;
        if (v259)
        {
          v261 = 0;
        }

        v262 = v261 | v260;
        v410 = 0uLL;
        v263 = *v256;
        if (v259)
        {
          v263 = 0;
        }

        *(&v442 + 4) = v263;
        v264 = v263;
        LODWORD(v442) = 3;
        v265 = v442;
        v266 = HIDWORD(v263);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v261 | v260;
        v267 = v442;
        v268 = HIDWORD(v261);
        if (HIDWORD(v263) * HIDWORD(v261) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v257;
          v424 = v265;
          v426 = v267;
          v425 = v266;
          v427 = v268;
          v428 = v264;
          v429 = v262;
          v430 = 0;
          *&v442 = &unk_28810E7F8;
          sub_27130C108(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27130C898(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v269 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v269->__on_zero_shared)(v269);
            std::__shared_weak_count::__release_weak(v269);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

LABEL_844:
        abort();
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 10:
      sub_2712E0C18(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v314 = a2[1];
        v315 = **a2;
        v316 = *a2[2];
        v420 = &unk_28810E738;
        v317 = *v314 == 0;
        if (*v314)
        {
          v318 = 3;
        }

        else
        {
          v318 = 0;
        }

        if (!*(v314 + 1))
        {
          v317 = 1;
        }

        v319 = (v316 << 31) & 0x7FFFFFFF00000000;
        if (v317)
        {
          v319 = 0;
        }

        v320 = v319 | v318;
        v410 = 0uLL;
        v321 = *v314;
        if (v317)
        {
          v321 = 0;
        }

        *(&v442 + 4) = v321;
        v322 = v321;
        LODWORD(v442) = 3;
        v323 = v442;
        v324 = HIDWORD(v321);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v319 | v318;
        v325 = v442;
        v326 = HIDWORD(v319);
        if (HIDWORD(v321) * HIDWORD(v319) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v315;
          v424 = v323;
          v426 = v325;
          v425 = v324;
          v427 = v326;
          v428 = v322;
          v429 = v320;
          v430 = 0;
          *&v442 = &unk_28810F978;
          sub_27130CE50(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27130D640(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v327 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v327->__on_zero_shared)(v327);
            std::__shared_weak_count::__release_weak(v327);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 11:
      sub_2712E19EC(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v300 = a2[1];
        v301 = **a2;
        v302 = *a2[2];
        v420 = &unk_28810E6B8;
        v303 = *v300 == 0;
        if (*v300)
        {
          v304 = 3;
        }

        else
        {
          v304 = 0;
        }

        if (!*(v300 + 1))
        {
          v303 = 1;
        }

        v305 = (v302 << 31) & 0x7FFFFFFF00000000;
        if (v303)
        {
          v305 = 0;
        }

        v306 = v305 | v304;
        v410 = 0uLL;
        v307 = *v300;
        if (v303)
        {
          v307 = 0;
        }

        *(&v442 + 4) = v307;
        v308 = v307;
        LODWORD(v442) = 3;
        v309 = v442;
        v310 = HIDWORD(v307);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v305 | v304;
        v311 = v442;
        v312 = HIDWORD(v305);
        if (HIDWORD(v307) * HIDWORD(v305) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v301;
          v424 = v309;
          v426 = v311;
          v425 = v310;
          v427 = v312;
          v428 = v308;
          v429 = v306;
          v430 = 0;
          *&v442 = &unk_28810F938;
          sub_27130DBF8(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27130E3B4(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v313 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v313->__on_zero_shared)(v313);
            std::__shared_weak_count::__release_weak(v313);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 12:
      sub_2712E27C0(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v40 = a2[1];
        v41 = **a2;
        v42 = *a2[2];
        v420 = &unk_28810E638;
        v43 = *v40 == 0;
        if (*v40)
        {
          v44 = 3;
        }

        else
        {
          v44 = 0;
        }

        if (!*(v40 + 1))
        {
          v43 = 1;
        }

        v45 = (v42 << 30) & 0x3FFFFFFF00000000;
        if (v43)
        {
          v45 = 0;
        }

        v46 = v45 | v44;
        v410 = 0uLL;
        v47 = *v40;
        if (v43)
        {
          v47 = 0;
        }

        *(&v442 + 4) = v47;
        v48 = v47;
        LODWORD(v442) = 3;
        v49 = v442;
        v50 = HIDWORD(v47);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v45 | v44;
        v51 = v442;
        v52 = HIDWORD(v45);
        if (HIDWORD(v47) * HIDWORD(v45) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v41;
          v424 = v49;
          v426 = v51;
          v425 = v50;
          v427 = v52;
          v428 = v48;
          v429 = v46;
          v430 = 0;
          *&v442 = &unk_28810F8F8;
          sub_27130E96C(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27130F15C(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v53 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v53->__on_zero_shared)(v53);
            std::__shared_weak_count::__release_weak(v53);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 13:
      v95 = **a2;
      sub_2712E3598(a2[1], *a2[2], &v431);
      if (v441)
      {
        v96 = a2[1];
        v97 = **a2;
        v98 = a2[2];
        v420 = &unk_28810E5B8;
        if (*(v96 + 1))
        {
          v99 = *v96 == 0;
        }

        else
        {
          v99 = 1;
        }

        v100 = *v98 << 32;
        if (v99)
        {
          v100 = 0;
        }

        v101 = v100 | (4 * (*v96 != 0));
        v410 = 0uLL;
        v102 = *v96;
        if (v99)
        {
          v102 = 0;
        }

        *(&v442 + 4) = v102;
        v103 = v102;
        LODWORD(v442) = 4;
        v104 = v442;
        v105 = HIDWORD(v102);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v101;
        v106 = v442;
        v107 = HIDWORD(v100);
        if (HIDWORD(v102) * HIDWORD(v100) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v97;
          v424 = v104;
          v426 = v106;
          v425 = v105;
          v427 = v107;
          v428 = v103;
          v429 = v101;
          v430 = 0;
          *&v442 = &unk_28810F8B8;
          sub_27130F714(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27130FEA4(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v108 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v108->__on_zero_shared)(v108);
            std::__shared_weak_count::__release_weak(v108);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 14:
      sub_2712E41A8(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v82 = a2[1];
        v83 = **a2;
        v84 = *a2[2];
        v420 = &unk_28810E538;
        if (*(v82 + 1))
        {
          v85 = *v82 == 0;
        }

        else
        {
          v85 = 1;
        }

        v86 = (v84 << 31) & 0x7FFFFFFF00000000;
        if (v85)
        {
          v86 = 0;
        }

        v87 = v86 | (4 * (*v82 != 0));
        v410 = 0uLL;
        v88 = *v82;
        if (v85)
        {
          v88 = 0;
        }

        *(&v442 + 4) = v88;
        v89 = v88;
        LODWORD(v442) = 4;
        v90 = v442;
        v91 = HIDWORD(v88);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v87;
        v92 = v442;
        v93 = HIDWORD(v86);
        if (HIDWORD(v88) * HIDWORD(v86) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v83;
          v424 = v90;
          v426 = v92;
          v425 = v91;
          v427 = v93;
          v428 = v89;
          v429 = v87;
          v430 = 0;
          *&v442 = &unk_28810F878;
          sub_27131045C(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_271310C4C(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v94 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v94->__on_zero_shared)(v94);
            std::__shared_weak_count::__release_weak(v94);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 15:
      sub_2712E4F60(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v359 = a2[1];
        v360 = **a2;
        v361 = *a2[2];
        v420 = &unk_28810E4B8;
        if (*(v359 + 1))
        {
          v362 = *v359 == 0;
        }

        else
        {
          v362 = 1;
        }

        v363 = (v361 << 31) & 0x7FFFFFFF00000000;
        if (v362)
        {
          v363 = 0;
        }

        v364 = v363 | (4 * (*v359 != 0));
        v410 = 0uLL;
        v365 = *v359;
        if (v362)
        {
          v365 = 0;
        }

        *(&v442 + 4) = v365;
        v366 = v365;
        LODWORD(v442) = 4;
        v367 = v442;
        v368 = HIDWORD(v365);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v364;
        v369 = v442;
        v370 = HIDWORD(v363);
        if (HIDWORD(v365) * HIDWORD(v363) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v360;
        v424 = v367;
        v426 = v369;
        v425 = v368;
        v427 = v370;
        v428 = v366;
        v429 = v364;
        v430 = 0;
        *&v442 = &unk_28810F838;
        sub_271311204(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_2713119C0(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v371 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v371->__on_zero_shared)(v371);
          std::__shared_weak_count::__release_weak(v371);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 16:
      sub_2712E5D18(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v274 = a2[1];
        v275 = **a2;
        v276 = *a2[2];
        v420 = &unk_28810E438;
        if (*(v274 + 1))
        {
          v277 = *v274 == 0;
        }

        else
        {
          v277 = 1;
        }

        v278 = (v276 << 30) & 0x3FFFFFFF00000000;
        if (v277)
        {
          v278 = 0;
        }

        v279 = v278 | (4 * (*v274 != 0));
        v410 = 0uLL;
        v280 = *v274;
        if (v277)
        {
          v280 = 0;
        }

        *(&v442 + 4) = v280;
        v281 = v280;
        LODWORD(v442) = 4;
        v282 = v442;
        v283 = HIDWORD(v280);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v279;
        v284 = v442;
        v285 = HIDWORD(v278);
        if (HIDWORD(v280) * HIDWORD(v278) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v275;
          v424 = v282;
          v426 = v284;
          v425 = v283;
          v427 = v285;
          v428 = v281;
          v429 = v279;
          v430 = 0;
          *&v442 = &unk_28810F7F8;
          sub_271311F78(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_271312768(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v286 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v286->__on_zero_shared)(v286);
            std::__shared_weak_count::__release_weak(v286);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 17:
      v372 = **a2;
      sub_2712E6AD4(a2[1], *a2[2], &v431);
      if (v441)
      {
        v373 = a2[1];
        v374 = **a2;
        v375 = a2[2];
        v420 = &unk_28810E3B8;
        v376 = *v373 == 0;
        if (*v373)
        {
          v377 = 3;
        }

        else
        {
          v377 = 0;
        }

        if (!*(v373 + 1))
        {
          v376 = 1;
        }

        v378 = *v375 << 32;
        if (v376)
        {
          v378 = 0;
        }

        v379 = v378 | v377;
        v410 = 0uLL;
        v380 = *v373;
        if (v376)
        {
          v380 = 0;
        }

        *(&v442 + 4) = v380;
        v381 = v380;
        LODWORD(v442) = 3;
        v382 = v442;
        v383 = HIDWORD(v380);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v378 | v377;
        v384 = v442;
        v385 = HIDWORD(v378);
        if (HIDWORD(v380) * HIDWORD(v378) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v374;
        v424 = v382;
        v426 = v384;
        v425 = v383;
        v427 = v385;
        v428 = v381;
        v429 = v379;
        v430 = 0;
        *&v442 = &unk_28810F778;
        sub_271312D20(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_2713134B0(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v386 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v386->__on_zero_shared)(v386);
          std::__shared_weak_count::__release_weak(v386);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 18:
      sub_2712E76F8(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v122 = a2[1];
        v123 = **a2;
        v124 = *a2[2];
        v420 = &unk_28810E338;
        v125 = *v122 == 0;
        if (*v122)
        {
          v126 = 3;
        }

        else
        {
          v126 = 0;
        }

        if (!*(v122 + 1))
        {
          v125 = 1;
        }

        v127 = (v124 << 31) & 0x7FFFFFFF00000000;
        if (v125)
        {
          v127 = 0;
        }

        v128 = v127 | v126;
        v410 = 0uLL;
        v129 = *v122;
        if (v125)
        {
          v129 = 0;
        }

        *(&v442 + 4) = v129;
        v130 = v129;
        LODWORD(v442) = 3;
        v131 = v442;
        v132 = HIDWORD(v129);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v127 | v126;
        v133 = v442;
        v134 = HIDWORD(v127);
        if (HIDWORD(v129) * HIDWORD(v127) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v123;
          v424 = v131;
          v426 = v133;
          v425 = v132;
          v427 = v134;
          v428 = v130;
          v429 = v128;
          v430 = 0;
          *&v442 = &unk_28810F738;
          sub_271313A68(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_271314258(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v135 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v135->__on_zero_shared)(v135);
            std::__shared_weak_count::__release_weak(v135);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 19:
      sub_2712E84CC(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v22 = a2[1];
        v23 = **a2;
        v24 = *a2[2];
        v420 = &unk_28810E2B8;
        v25 = *v22 == 0;
        if (*v22)
        {
          v26 = 3;
        }

        else
        {
          v26 = 0;
        }

        if (!*(v22 + 1))
        {
          v25 = 1;
        }

        v27 = (v24 << 31) & 0x7FFFFFFF00000000;
        if (v25)
        {
          v27 = 0;
        }

        v28 = v27 | v26;
        v410 = 0uLL;
        v29 = *v22;
        if (v25)
        {
          v29 = 0;
        }

        *(&v442 + 4) = v29;
        v30 = v29;
        LODWORD(v442) = 3;
        v31 = v442;
        v32 = HIDWORD(v29);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v27 | v26;
        v33 = v442;
        v34 = HIDWORD(v27);
        if (HIDWORD(v29) * HIDWORD(v27) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v23;
          v424 = v31;
          v426 = v33;
          v425 = v32;
          v427 = v34;
          v428 = v30;
          v429 = v28;
          v430 = 0;
          *&v442 = &unk_28810F6F8;
          sub_271314810(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_271314FCC(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v35 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 20:
      sub_2712E92A0(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v342 = a2[1];
        v343 = **a2;
        v344 = *a2[2];
        v420 = &unk_28810E178;
        v345 = *v342 == 0;
        if (*v342)
        {
          v346 = 3;
        }

        else
        {
          v346 = 0;
        }

        if (!*(v342 + 1))
        {
          v345 = 1;
        }

        v347 = (v344 << 30) & 0x3FFFFFFF00000000;
        if (v345)
        {
          v347 = 0;
        }

        v348 = v347 | v346;
        v410 = 0uLL;
        v349 = *v342;
        if (v345)
        {
          v349 = 0;
        }

        *(&v442 + 4) = v349;
        v350 = v349;
        LODWORD(v442) = 3;
        v351 = v442;
        v352 = HIDWORD(v349);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v347 | v346;
        v353 = v442;
        v354 = HIDWORD(v347);
        if (HIDWORD(v349) * HIDWORD(v347) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v343;
        v424 = v351;
        v426 = v353;
        v425 = v352;
        v427 = v354;
        v428 = v350;
        v429 = v348;
        v430 = 0;
        *&v442 = &unk_28810F5F8;
        sub_271315584(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271315D74(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v355 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v355->__on_zero_shared)(v355);
          std::__shared_weak_count::__release_weak(v355);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 21:
      v401 = **a2;
      sub_2712EA078(a2[1], *a2[2], &v431);
      if (v441)
      {
        v402 = a2[1];
        v403 = **a2;
        LODWORD(v410) = *a2[2];
        sub_271315F98(&v420, v403, v402, &v410);
        *&v442 = &unk_28810F538;
        sub_271316588(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271316D18(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v404 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v404->__on_zero_shared)(v404);
          std::__shared_weak_count::__release_weak(v404);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422 || atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 22:
      sub_2712EAC9C(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v152 = a2[1];
        v153 = **a2;
        LODWORD(v410) = *a2[2] >> 1;
        sub_271316F3C(&v420, v153, v152, &v410);
        *&v442 = &unk_28810F478;
        sub_27131752C(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271317D1C(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v154 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v154->__on_zero_shared)(v154);
          std::__shared_weak_count::__release_weak(v154);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422 || atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 == 1)
      {
        if (v418 == 1)
        {
          if (v417 < 0)
          {
            operator delete(__p);
          }

          if (v415 < 0)
          {
            operator delete(v414);
          }
        }

        if (v413 == 1 && v412 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 23:
      sub_2712EBA70(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v387 = a2[1];
        v388 = **a2;
        v389 = *a2[2];
        v420 = &unk_28810DF78;
        v390 = *v387 == 0;
        if (*v387)
        {
          v391 = 3;
        }

        else
        {
          v391 = 0;
        }

        if (!*(v387 + 1))
        {
          v390 = 1;
        }

        v392 = (v389 << 31) & 0x7FFFFFFF00000000;
        if (v390)
        {
          v392 = 0;
        }

        v393 = v392 | v391;
        v410 = 0uLL;
        v394 = *v387;
        if (v390)
        {
          v394 = 0;
        }

        *(&v442 + 4) = v394;
        v395 = v394;
        LODWORD(v442) = 3;
        v396 = v442;
        v397 = HIDWORD(v394);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v392 | v391;
        v398 = v442;
        v399 = HIDWORD(v392);
        if (HIDWORD(v394) * HIDWORD(v392) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v388;
        v424 = v396;
        v426 = v398;
        v425 = v397;
        v427 = v399;
        v428 = v395;
        v429 = v393;
        v430 = 0;
        *&v442 = &unk_28810F438;
        sub_2713182D4(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271318A90(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v400 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v400->__on_zero_shared)(v400);
          std::__shared_weak_count::__release_weak(v400);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 24:
      sub_2712EC844(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v68 = a2[1];
        v69 = **a2;
        v70 = *a2[2];
        v420 = &unk_28810DEF8;
        v71 = *v68 == 0;
        if (*v68)
        {
          v72 = 3;
        }

        else
        {
          v72 = 0;
        }

        if (!*(v68 + 1))
        {
          v71 = 1;
        }

        v73 = (v70 << 30) & 0x3FFFFFFF00000000;
        if (v71)
        {
          v73 = 0;
        }

        v74 = v73 | v72;
        v410 = 0uLL;
        v75 = *v68;
        if (v71)
        {
          v75 = 0;
        }

        *(&v442 + 4) = v75;
        v76 = v75;
        LODWORD(v442) = 3;
        v77 = v442;
        v78 = HIDWORD(v75);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v73 | v72;
        v79 = v442;
        v80 = HIDWORD(v73);
        if (HIDWORD(v75) * HIDWORD(v73) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v69;
          v424 = v77;
          v426 = v79;
          v425 = v78;
          v427 = v80;
          v428 = v76;
          v429 = v74;
          v430 = 0;
          *&v442 = &unk_28810F3F8;
          sub_271319048(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_271319838(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v81 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 25:
      v36 = **a2;
      sub_2712ED61C(a2[1], *a2[2], &v431);
      if (v441)
      {
        v37 = a2[1];
        v38 = **a2;
        LODWORD(v410) = *a2[2];
        sub_271319A5C(&v420, v38, v37, &v410);
        *&v442 = &unk_28810F338;
        sub_27131A04C(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_27131A7DC(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v39 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422 || atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 == 1)
      {
        if (v418 == 1)
        {
          if (v417 < 0)
          {
            operator delete(__p);
          }

          if (v415 < 0)
          {
            operator delete(v414);
          }
        }

        if (v413 == 1 && v412 < 0)
        {
          goto LABEL_831;
        }
      }

      goto LABEL_832;
    case 26:
      sub_2712EE22C(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v155 = a2[1];
        v156 = **a2;
        v157 = *a2[2];
        v420 = &unk_28810DDB8;
        if (*(v155 + 1))
        {
          v158 = *v155 == 0;
        }

        else
        {
          v158 = 1;
        }

        v159 = (v157 << 31) & 0x7FFFFFFF00000000;
        if (v158)
        {
          v159 = 0;
        }

        v160 = v159 | (4 * (*v155 != 0));
        v410 = 0uLL;
        v161 = *v155;
        if (v158)
        {
          v161 = 0;
        }

        *(&v442 + 4) = v161;
        v162 = v161;
        LODWORD(v442) = 4;
        v163 = v442;
        v164 = HIDWORD(v161);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v160;
        v165 = v442;
        v166 = HIDWORD(v159);
        if (HIDWORD(v161) * HIDWORD(v159) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v156;
          v424 = v163;
          v426 = v165;
          v425 = v164;
          v427 = v166;
          v428 = v162;
          v429 = v160;
          v430 = 0;
          *&v442 = &unk_28810F2F8;
          sub_27131AD94(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27131B584(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v167 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v167->__on_zero_shared)(v167);
            std::__shared_weak_count::__release_weak(v167);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 27:
      sub_2712EEFE4(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v8 = a2[1];
        v9 = **a2;
        v10 = *a2[2];
        v420 = &unk_28810DD38;
        if (*(v8 + 1))
        {
          v11 = *v8 == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = (v10 << 31) & 0x7FFFFFFF00000000;
        if (v11)
        {
          v12 = 0;
        }

        v13 = v12 | (4 * (*v8 != 0));
        v410 = 0uLL;
        v14 = *v8;
        if (v11)
        {
          v14 = 0;
        }

        *(&v442 + 4) = v14;
        v15 = v14;
        LODWORD(v442) = 4;
        v16 = v442;
        v17 = HIDWORD(v14);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v13;
        v18 = v442;
        v19 = HIDWORD(v12);
        if (HIDWORD(v14) * HIDWORD(v12) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v9;
          v424 = v16;
          v426 = v18;
          v425 = v17;
          v427 = v19;
          v428 = v15;
          v429 = v13;
          v430 = 0;
          *&v442 = &unk_28810F2B8;
          sub_27131BB3C(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27131C2F8(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v20 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 28:
      sub_2712EFD9C(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v187 = a2[1];
        v188 = **a2;
        v189 = *a2[2];
        v420 = &unk_28810DCB8;
        if (*(v187 + 1))
        {
          v190 = *v187 == 0;
        }

        else
        {
          v190 = 1;
        }

        v191 = (v189 << 30) & 0x3FFFFFFF00000000;
        if (v190)
        {
          v191 = 0;
        }

        v192 = v191 | (4 * (*v187 != 0));
        v410 = 0uLL;
        v193 = *v187;
        if (v190)
        {
          v193 = 0;
        }

        *(&v442 + 4) = v193;
        v194 = v193;
        LODWORD(v442) = 4;
        v195 = v442;
        v196 = HIDWORD(v193);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v192;
        v197 = v442;
        v198 = HIDWORD(v191);
        if (HIDWORD(v193) * HIDWORD(v191) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v188;
          v424 = v195;
          v426 = v197;
          v425 = v196;
          v427 = v198;
          v428 = v194;
          v429 = v192;
          v430 = 0;
          *&v442 = &unk_28810F278;
          sub_27131C8B0(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27131D0A0(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v199 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v199->__on_zero_shared)(v199);
            std::__shared_weak_count::__release_weak(v199);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 29:
      v54 = **a2;
      sub_2712F0B58(a2[1], *a2[2], &v431);
      if (v441)
      {
        v55 = a2[1];
        v56 = **a2;
        v57 = a2[2];
        v420 = &unk_28810DC38;
        if (*(v55 + 1))
        {
          v58 = *v55 == 0;
        }

        else
        {
          v58 = 1;
        }

        v59 = *v57 << 32;
        if (v58)
        {
          v59 = 0;
        }

        v60 = v59 | (4 * (*v55 != 0));
        v410 = 0uLL;
        v61 = *v55;
        if (v58)
        {
          v61 = 0;
        }

        *(&v442 + 4) = v61;
        v62 = v61;
        LODWORD(v442) = 4;
        v63 = v442;
        v64 = HIDWORD(v61);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v60;
        v65 = v442;
        v66 = HIDWORD(v59);
        if (HIDWORD(v61) * HIDWORD(v59) != -1 || !sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          v421 = 0;
          v422 = 0;
          v423 = v56;
          v424 = v63;
          v426 = v65;
          v425 = v64;
          v427 = v66;
          v428 = v62;
          v429 = v60;
          v430 = 0;
          *&v442 = &unk_28810F1F8;
          sub_27131D658(&v420, &v442 + 8);
          v407 = &unk_288114798;
          sub_27131DDE8(&v408, &v442);
          sub_2712CADE8(&v410, &v407);
          sub_2712D6378(a2[3], &v410);
          sub_2712CAF40(&v410);
          v407 = &unk_288114798;
          v67 = v409;
          if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v67->__on_zero_shared)(v67);
            std::__shared_weak_count::__release_weak(v67);
          }

          sub_27112F828(&v442 + 8);
          v21 = v422;
          if (v422 && !atomic_fetch_add(&v422->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_453;
          }

          goto LABEL_832;
        }

        goto LABEL_844;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      sub_2712CD070(a2[3], &v410);
      if (v419 != 1)
      {
        goto LABEL_832;
      }

      if (v418 == 1)
      {
        if (v417 < 0)
        {
          operator delete(__p);
        }

        if (v415 < 0)
        {
          operator delete(v414);
        }
      }

      if (v413 != 1 || (v412 & 0x80000000) == 0)
      {
        goto LABEL_832;
      }

      goto LABEL_831;
    case 30:
      sub_2712F1768(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v226 = a2[1];
        v227 = **a2;
        v228 = *a2[2];
        v420 = &unk_28810DAF8;
        if (*(v226 + 1))
        {
          v229 = *v226 == 0;
        }

        else
        {
          v229 = 1;
        }

        v230 = (v228 << 31) & 0x7FFFFFFF00000000;
        if (v229)
        {
          v230 = 0;
        }

        v231 = v230 | (4 * (*v226 != 0));
        v410 = 0uLL;
        v232 = *v226;
        if (v229)
        {
          v232 = 0;
        }

        *(&v442 + 4) = v232;
        v233 = v232;
        LODWORD(v442) = 4;
        v234 = v442;
        v235 = HIDWORD(v232);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v231;
        v236 = v442;
        v237 = HIDWORD(v230);
        if (HIDWORD(v232) * HIDWORD(v230) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v227;
        v424 = v234;
        v426 = v236;
        v425 = v235;
        v427 = v237;
        v428 = v233;
        v429 = v231;
        v430 = 0;
        *&v442 = &unk_28810F0F8;
        sub_27131E3A0(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_27131EB90(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v238 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v238->__on_zero_shared)(v238);
          std::__shared_weak_count::__release_weak(v238);
        }

        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422)
        {
          goto LABEL_832;
        }

LABEL_452:
        if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_832;
        }

        goto LABEL_453;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 31:
      sub_2712F2520(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v168 = a2[1];
        v169 = **a2;
        LODWORD(v410) = *a2[2] >> 1;
        sub_27131EDB4(&v420, v169, v168, &v410);
        *&v442 = &unk_28810F038;
        sub_27131F3A4(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_27131FB60(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v170 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 32:
      sub_2712F32D8(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v252 = a2[1];
        v253 = **a2;
        LODWORD(v410) = *a2[2] >> 2;
        sub_27131FD84(&v420, v253, v252, &v410);
        *&v442 = &unk_28810EF78;
        sub_271320374(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271320B64(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v254 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v254->__on_zero_shared)(v254);
          std::__shared_weak_count::__release_weak(v254);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 33:
      v328 = **a2;
      sub_2712F4094(a2[1], *a2[2], &v431);
      if (v441)
      {
        v329 = a2[1];
        v330 = **a2;
        v331 = a2[2];
        v420 = &unk_28810D8F8;
        if (*(v329 + 1))
        {
          v332 = *v329 == 0;
        }

        else
        {
          v332 = 1;
        }

        v333 = *v331 << 32;
        if (v332)
        {
          v333 = 0;
        }

        v334 = v333 | (4 * (*v329 != 0));
        v410 = 0uLL;
        v335 = *v329;
        if (v332)
        {
          v335 = 0;
        }

        *(&v442 + 4) = v335;
        v336 = v335;
        LODWORD(v442) = 4;
        v337 = v442;
        v338 = HIDWORD(v335);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v334;
        v339 = v442;
        v340 = HIDWORD(v333);
        if (HIDWORD(v335) * HIDWORD(v333) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v330;
        v424 = v337;
        v426 = v339;
        v425 = v338;
        v427 = v340;
        v428 = v336;
        v429 = v334;
        v430 = 0;
        *&v442 = &unk_28810EEF8;
        sub_27132111C(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_2713218AC(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v341 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v341->__on_zero_shared)(v341);
          std::__shared_weak_count::__release_weak(v341);
        }

LABEL_451:
        sub_27112F828(&v442 + 8);
        v21 = v422;
        if (!v422)
        {
          goto LABEL_832;
        }

        goto LABEL_452;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 34:
      sub_2712F4CA4(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v239 = a2[1];
        v240 = **a2;
        v241 = *a2[2];
        v420 = &unk_28810D878;
        if (*(v239 + 1))
        {
          v242 = *v239 == 0;
        }

        else
        {
          v242 = 1;
        }

        v243 = (v241 << 31) & 0x7FFFFFFF00000000;
        if (v242)
        {
          v243 = 0;
        }

        v244 = v243 | (4 * (*v239 != 0));
        v410 = 0uLL;
        v245 = *v239;
        if (v242)
        {
          v245 = 0;
        }

        *(&v442 + 4) = v245;
        v246 = v245;
        LODWORD(v442) = 4;
        v247 = v442;
        v248 = HIDWORD(v245);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v244;
        v249 = v442;
        v250 = HIDWORD(v243);
        if (HIDWORD(v245) * HIDWORD(v243) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v240;
        v424 = v247;
        v426 = v249;
        v425 = v248;
        v427 = v250;
        v428 = v246;
        v429 = v244;
        v430 = 0;
        *&v442 = &unk_28810EEB8;
        sub_271321E64(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271322654(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v251 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v251->__on_zero_shared)(v251);
          std::__shared_weak_count::__release_weak(v251);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 35:
      sub_2712F5A5C(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v213 = a2[1];
        v214 = **a2;
        v215 = *a2[2];
        v420 = &unk_28810D7F8;
        if (*(v213 + 1))
        {
          v216 = *v213 == 0;
        }

        else
        {
          v216 = 1;
        }

        v217 = (v215 << 31) & 0x7FFFFFFF00000000;
        if (v216)
        {
          v217 = 0;
        }

        v218 = v217 | (4 * (*v213 != 0));
        v410 = 0uLL;
        v219 = *v213;
        if (v216)
        {
          v219 = 0;
        }

        *(&v442 + 4) = v219;
        v220 = v219;
        LODWORD(v442) = 4;
        v221 = v442;
        v222 = HIDWORD(v219);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v218;
        v223 = v442;
        v224 = HIDWORD(v217);
        if (HIDWORD(v219) * HIDWORD(v217) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v214;
        v424 = v221;
        v426 = v223;
        v425 = v222;
        v427 = v224;
        v428 = v220;
        v429 = v218;
        v430 = 0;
        *&v442 = &unk_28810EE78;
        sub_271322C0C(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_2713233C8(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v225 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v225->__on_zero_shared)(v225);
          std::__shared_weak_count::__release_weak(v225);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 36:
      sub_2712F6814(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v200 = a2[1];
        v201 = **a2;
        v202 = *a2[2];
        v420 = &unk_28810D778;
        if (*(v200 + 1))
        {
          v203 = *v200 == 0;
        }

        else
        {
          v203 = 1;
        }

        v204 = (v202 << 30) & 0x3FFFFFFF00000000;
        if (v203)
        {
          v204 = 0;
        }

        v205 = v204 | (4 * (*v200 != 0));
        v410 = 0uLL;
        v206 = *v200;
        if (v203)
        {
          v206 = 0;
        }

        *(&v442 + 4) = v206;
        v207 = v206;
        LODWORD(v442) = 4;
        v208 = v442;
        v209 = HIDWORD(v206);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v205;
        v210 = v442;
        v211 = HIDWORD(v204);
        if (HIDWORD(v206) * HIDWORD(v204) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v201;
        v424 = v208;
        v426 = v210;
        v425 = v209;
        v427 = v211;
        v428 = v207;
        v429 = v205;
        v430 = 0;
        *&v442 = &unk_28810EE38;
        sub_271323980(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271324170(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v212 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v212->__on_zero_shared)(v212);
          std::__shared_weak_count::__release_weak(v212);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 37:
      v296 = **a2;
      sub_2712F75D0(a2[1], *a2[2], &v431);
      if (v441)
      {
        v297 = a2[1];
        v298 = **a2;
        LODWORD(v410) = *a2[2];
        sub_271324394(&v420, v298, v297, &v410);
        *&v442 = &unk_28810ED78;
        sub_271324984(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271325114(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v299 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v299->__on_zero_shared)(v299);
          std::__shared_weak_count::__release_weak(v299);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 38:
      sub_2712F81E0(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v356 = a2[1];
        v357 = **a2;
        LODWORD(v410) = *a2[2] >> 1;
        sub_271325338(&v420, v357, v356, &v410);
        *&v442 = &unk_28810ECB8;
        sub_271325928(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271326118(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v358 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v358->__on_zero_shared)(v358);
          std::__shared_weak_count::__release_weak(v358);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 39:
      sub_2712F8F98(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v139 = a2[1];
        v140 = **a2;
        v141 = *a2[2];
        v420 = &unk_28810D578;
        if (*(v139 + 1))
        {
          v142 = *v139 == 0;
        }

        else
        {
          v142 = 1;
        }

        v143 = (v141 << 31) & 0x7FFFFFFF00000000;
        if (v142)
        {
          v143 = 0;
        }

        v144 = v143 | (4 * (*v139 != 0));
        v410 = 0uLL;
        v145 = *v139;
        if (v142)
        {
          v145 = 0;
        }

        *(&v442 + 4) = v145;
        v146 = v145;
        LODWORD(v442) = 4;
        v147 = v442;
        v148 = HIDWORD(v145);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v144;
        v149 = v442;
        v150 = HIDWORD(v143);
        if (HIDWORD(v145) * HIDWORD(v143) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v140;
        v424 = v147;
        v426 = v149;
        v425 = v148;
        v427 = v150;
        v428 = v146;
        v429 = v144;
        v430 = 0;
        *&v442 = &unk_28810EC78;
        sub_2713266D0(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271326E8C(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v151 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    case 40:
      sub_2712F9D50(**a2, a2[1], *a2[2], &v431);
      if (v441)
      {
        v109 = a2[1];
        v110 = **a2;
        v111 = *a2[2];
        v420 = &unk_28810D438;
        if (*(v109 + 1))
        {
          v112 = *v109 == 0;
        }

        else
        {
          v112 = 1;
        }

        v113 = (v111 << 30) & 0x3FFFFFFF00000000;
        if (v112)
        {
          v113 = 0;
        }

        v114 = v113 | (4 * (*v109 != 0));
        v410 = 0uLL;
        v115 = *v109;
        if (v112)
        {
          v115 = 0;
        }

        *(&v442 + 4) = v115;
        v116 = v115;
        LODWORD(v442) = 4;
        v117 = v442;
        v118 = HIDWORD(v115);
        LODWORD(v442) = 1;
        *(&v442 + 4) = v114;
        v119 = v442;
        v120 = HIDWORD(v113);
        if (HIDWORD(v115) * HIDWORD(v113) == -1 && sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8))
        {
          goto LABEL_844;
        }

        v421 = 0;
        v422 = 0;
        v423 = v110;
        v424 = v117;
        v426 = v119;
        v425 = v118;
        v427 = v120;
        v428 = v116;
        v429 = v114;
        v430 = 0;
        *&v442 = &unk_28810EB78;
        sub_271327444(&v420, &v442 + 8);
        v407 = &unk_288114798;
        sub_271327C34(&v408, &v442);
        sub_2712CADE8(&v410, &v407);
        sub_2712D6378(a2[3], &v410);
        sub_2712CAF40(&v410);
        v407 = &unk_288114798;
        v121 = v409;
        if (v409 && !atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        goto LABEL_451;
      }

      v410 = v431;
      LOBYTE(v411[0]) = 0;
      v419 = 0;
      if (v440 == 1)
      {
        sub_27112F6CC(v411, v432);
        v419 = 1;
      }

      break;
    default:
      goto LABEL_843;
  }

  sub_2712CD070(a2[3], &v410);
  if (v419 != 1)
  {
    goto LABEL_832;
  }

  if (v418 == 1)
  {
    if (v417 < 0)
    {
      operator delete(__p);
    }

    if (v415 < 0)
    {
      operator delete(v414);
    }
  }

  if (v413 != 1 || (v412 & 0x80000000) == 0)
  {
    goto LABEL_832;
  }

LABEL_831:
  operator delete(v411[0]);
  goto LABEL_832;
}

void sub_2713031D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27112F828(&a17);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27112D66C(v47 + 16);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712CAF40(&a17);
  sub_27115494C(&a10);
  sub_27112F828(v47 + 8);
  sub_27131626C(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27131626C(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27132560C(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_271324668(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_27130557C(&a37);
  sub_27112E024(v37 - 240);
  _Unwind_Resume(a1);
}

void sub_271303E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_271306464(&a37);
  sub_27112E024(v37 - 240);
  _Unwind_Resume(a1);
}

void sub_271303E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27130B044(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2713082D0(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_271320058(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_27130735C(&a37);
  sub_27112E024(v37 - 240);
  _Unwind_Resume(a1);
}

void sub_271303EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27131F088(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_271317210(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27130A074(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_271304654(&a37);
  sub_27112E024(v37 - 240);
  _Unwind_Resume(a1);
}

void sub_271303F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_271319D30(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271303FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_27130400C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_27130407C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_2713040B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_2713040D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_2713040EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_27130415C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_2713041B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_2713041CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_2713041E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712C9E78(&a37);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

void sub_271304220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27112D71C(&a17);
  sub_27112E024(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_27130440C(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4)
{
  *a1 = &unk_28810E1F8;
  v6 = *a3;
  if (*a3)
  {
    v7 = a3[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a3;
  }

  if (HIDWORD(v9) * HIDWORD(v8) != -1)
  {
    goto LABEL_19;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (byte_28087C438 == 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_16:
        (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 += 16;
      }

      while (v10 != v11);
      if (byte_28087C430)
      {
        goto LABEL_18;
      }

LABEL_23:
      abort();
    }
  }

LABEL_18:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, 0, 0);
LABEL_19:
  if (v6)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v8;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2713045DC(uint64_t result)
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

uint64_t sub_271304654(uint64_t result)
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

void sub_2713046CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271304784(uint64_t a1)
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

void sub_271304828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713048E0(uint64_t a1)
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

uint64_t sub_271304970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 48) == 1 && *(a1 + 24) != 0)
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

    sub_271304CF0(v9);
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

  (*(*v5 + 32))(&v16);
  if (v16)
  {
    operator new();
  }

  v12 = *(a1 + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v17, 0, 1);
  v13 = v17;
  v14 = *(v17 + 16);
  *(a2 + 24) = *v17;
  *(a2 + 40) = v14;
  v17 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 48) = *(a2 + 24);
  *(a2 + 56) = *(a2 + 32);
  *(a2 + 72) = v12;
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271304C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271304CF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[10] = &unk_2881117B8;
  sub_2717BB090(&v1, v2);
  operator new();
}

void sub_271304F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271304F58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va);
  sub_2713050B8(va1);
  _Unwind_Resume(a1);
}

void sub_271304F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271304FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_271304FBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271304FF4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 48) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271305058(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE1EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE1EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE1EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE1EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_2713050B8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (v3)
    {
      free(v3);
    }

    *(v1 + 48) = 0;
    MEMORY[0x2743BF050](v1, 0x1091C406A8758A4);
    return v2;
  }

  return result;
}

void sub_271305110(uint64_t a1, void *a2)
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

void sub_2713052F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_271305318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271305334(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4)
{
  *a1 = &unk_28810DB78;
  v6 = *a3;
  if (*a3)
  {
    v7 = a3[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a3;
  }

  if (HIDWORD(v9) * HIDWORD(v8) != -1)
  {
    goto LABEL_19;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (byte_28087C438 == 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_16:
        (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 += 16;
      }

      while (v10 != v11);
      if (byte_28087C430)
      {
        goto LABEL_18;
      }

LABEL_23:
      abort();
    }
  }

LABEL_18:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, 0, 0);
LABEL_19:
  if (v6)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v8;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_271305504(uint64_t result)
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

uint64_t sub_27130557C(uint64_t result)
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

void sub_2713055F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713056AC(uint64_t a1)
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

void sub_271305750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271305808(uint64_t a1)
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

uint64_t sub_271305898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 48) == 1 && *(a1 + 24) != 0)
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

    sub_271305C18(v9);
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

  (*(*v5 + 32))(&v16);
  if (v16)
  {
    operator new();
  }

  v12 = *(a1 + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v17, 0, 2);
  v13 = v17;
  v14 = *(v17 + 16);
  *(a2 + 24) = *v17;
  *(a2 + 40) = v14;
  v17 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 48) = *(a2 + 24);
  *(a2 + 56) = *(a2 + 32);
  *(a2 + 72) = v12;
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271305BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271305C18(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[10] = &unk_288110F08;
  sub_2717BB2D8(&v1, v2);
  operator new();
}

void sub_271305E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271305E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va);
  sub_2713050B8(va1);
  _Unwind_Resume(a1);
}

void sub_271305EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271305EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_271305EFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271305F34(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 48) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271305F98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE2EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE2EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271305FF8(uint64_t a1, void *a2)
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

void sub_2713061DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_271306200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27130621C(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4)
{
  *a1 = &unk_28810D4B8;
  v6 = *a3;
  if (*a3)
  {
    v7 = a3[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a3;
  }

  if (HIDWORD(v9) * HIDWORD(v8) != -1)
  {
    goto LABEL_19;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (byte_28087C438 == 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_16:
        (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 += 16;
      }

      while (v10 != v11);
      if (byte_28087C430)
      {
        goto LABEL_18;
      }

LABEL_23:
      abort();
    }
  }

LABEL_18:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, 0, 0);
LABEL_19:
  if (v6)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v8;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2713063EC(uint64_t result)
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

uint64_t sub_271306464(uint64_t result)
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

void sub_2713064DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271306594(uint64_t a1)
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

void sub_271306638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713066F0(uint64_t a1)
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

uint64_t sub_271306780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 48) == 1 && *(a1 + 24) != 0)
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

    sub_271306B00(v9);
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

  (*(*v5 + 32))(&v16);
  if (v16)
  {
    operator new();
  }

  v12 = *(a1 + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v17, 0, 3);
  v13 = v17;
  v14 = *(v17 + 16);
  *(a2 + 24) = *v17;
  *(a2 + 40) = v14;
  v17 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 48) = *(a2 + 24);
  *(a2 + 56) = *(a2 + 32);
  *(a2 + 72) = v12;
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_271306AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271306B00(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[10] = &unk_288110618;
  sub_2717BB5D0(&v1, v2);
  operator new();
}

void sub_271306D48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va);
  sub_271306E9C(va1);
  _Unwind_Resume(a1);
}

void sub_271306D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271306E9C(va);
  _Unwind_Resume(a1);
}

void sub_271306D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27179E364(va);
  _Unwind_Resume(a1);
}

void sub_271306DC0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271306DF8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_27179E364(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271306E3C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE3EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE3EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_271306E9C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_27179E364(v2);
    MEMORY[0x2743BF050](v4, 0x1091C406A8758A4);
    return v3;
  }

  return v1;
}

void sub_271306EF0(uint64_t a1, void *a2)
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

void sub_2713070D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2713070F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271307114(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4)
{
  *a1 = &unk_28810D378;
  v6 = *a3;
  if (*a3)
  {
    v7 = a3[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a3;
  }

  if (HIDWORD(v9) * HIDWORD(v8) != -1)
  {
    goto LABEL_19;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (byte_28087C438 == 1)
  {
    v10 = qword_28087C408;
    v11 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_16:
        (*v10)(*(v10 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v10 += 16;
      }

      while (v10 != v11);
      if (byte_28087C430)
      {
        goto LABEL_18;
      }

LABEL_23:
      abort();
    }
  }

LABEL_18:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, 0, 0);
LABEL_19:
  if (v6)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v8;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2713072E4(uint64_t result)
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

uint64_t sub_27130735C(uint64_t result)
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

void sub_2713073D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130748C(uint64_t a1)
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

void sub_271307530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713075E8(uint64_t a1)
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

uint64_t sub_271307678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = a1 + 24;
    if (*(a1 + 48) == 1 && *(a1 + 24) != 0)
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

    sub_2713079F8(v9);
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

  (*(*v5 + 32))(&v16);
  if (v16)
  {
    operator new();
  }

  v12 = *(a1 + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(MEMORY[0] + 64))(&v17, 0, 4);
  v13 = v17;
  v14 = *(v17 + 16);
  *(a2 + 24) = *v17;
  *(a2 + 40) = v14;
  v17 = 0;
  MEMORY[0x2743BF050](v13, 0xC400A2AC0F1);
  *(a2 + 48) = *(a2 + 24);
  *(a2 + 56) = *(a2 + 32);
  *(a2 + 72) = v12;
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2713079A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713079F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[10] = &unk_288110478;
  sub_2717BB7DC(&v1, v2);
  operator new();
}

void sub_271307C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271307C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va);
  sub_2713050B8(va1);
  _Unwind_Resume(a1);
}

void sub_271307C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2713050B8(va);
  _Unwind_Resume(a1);
}

void sub_271307CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_271307CDC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271307D14(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 48) = 0;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_271307D78(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271307DD8(uint64_t a1, void *a2)
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

void sub_271307FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_271307FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271307FFC(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810D2B8;
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

  v9 = v8 | (2 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 2;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (2 * (*a3 != 0));
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

void sub_271308230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271308244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271308258(uint64_t result)
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

uint64_t sub_2713082D0(uint64_t result)
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

void sub_271308348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271308400(uint64_t a1)
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

void sub_2713084A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130855C(uint64_t a1)
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

uint64_t sub_2713085EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    sub_271308978(v9);
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
  (*(MEMORY[0] + 64))(&v19, 0, 5);
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

void sub_271308924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271308978(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2[14] = &unk_288110388;
  sub_2717BBC6C(&v1, v2);
  operator new();
}

void sub_271308BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271308C04(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_271308C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271308C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_271308C80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271308CB8(uint64_t result)
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

uint64_t sub_271308D1C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_271308D7C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 72);
    if (v3)
    {
      free(v3);
    }

    *(v1 + 72) = 0;
    MEMORY[0x2743BF050](v1, 0x1091C40A44A61E0);
    return v2;
  }

  return result;
}

void sub_271308DD4(uint64_t a1, void *a2)
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

void sub_271308FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_271308FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271308FF8(uint64_t result)
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

uint64_t sub_271309070(uint64_t result)
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

void sub_2713090E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713091A0(uint64_t a1)
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

void sub_271309244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713092FC(uint64_t a1)
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

uint64_t sub_27130938C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    sub_271309718(v9);
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
  (*(MEMORY[0] + 64))(&v19, 0, 6);
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

void sub_2713096C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_271309718(uint64_t a1)
{
  v1[0] = *(a1 + 12);
  v10 = &unk_2881102D8;
  sub_2717D6C8C(v11, v1);
  v2 = v11[0];
  v1[2] = &unk_288112098;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_2713099E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(v4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271309A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_271309A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271309A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271309A80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271309AB8(uint64_t result)
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

uint64_t sub_271309B1C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE6EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271309B7C(uint64_t a1, void *a2)
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
  *(a1 + 40) = 6;
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

void sub_271309D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_271309D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_271309DA0(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810D178;
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

  v9 = v8 | (2 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 2;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (2 * (*a3 != 0));
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

void sub_271309FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271309FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271309FFC(uint64_t result)
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

uint64_t sub_27130A074(uint64_t result)
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

void sub_27130A0EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130A1A4(uint64_t a1)
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

void sub_27130A248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130A300(uint64_t a1)
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

uint64_t sub_27130A390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    sub_27130A71C(v9);
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
  (*(MEMORY[0] + 64))(&v19, 0, 7);
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

void sub_27130A6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_27130A71C(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2[14] = &unk_2881101E8;
  sub_2717BC4E0(&v1, v2);
  operator new();
}

void sub_27130A988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_27130AAF8(va);
  _Unwind_Resume(a1);
}

void sub_27130A9A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va);
  sub_27130AAF8(va1);
  _Unwind_Resume(a1);
}

void sub_27130A9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27130AAF8(va);
  _Unwind_Resume(a1);
}

void sub_27130A9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2717A11C0(va);
  _Unwind_Resume(a1);
}

void sub_27130AA1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130AA54(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2717A11C0(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_27130AA98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_27130AAF8(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2717A11C0(v2);
    MEMORY[0x2743BF050](v4, 0x1091C40A44A61E0);
    return v3;
  }

  return v1;
}

void sub_27130AB4C(uint64_t a1, void *a2)
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

void sub_27130AD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_27130AD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27130AD70(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810D0B8;
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

  v9 = v8 | (2 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 2;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (2 * (*a3 != 0));
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

void sub_27130AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27130AFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27130AFCC(uint64_t result)
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

uint64_t sub_27130B044(uint64_t result)
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

void sub_27130B0BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130B174(uint64_t a1)
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

void sub_27130B218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130B2D0(uint64_t a1)
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

uint64_t sub_27130B360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    sub_27130B6EC(v9);
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
  (*(MEMORY[0] + 64))(&v19, 0, 8);
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

void sub_27130B698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_27130B6EC(uint64_t a1)
{
  v1[0] = *(a1 + 12);
  v10 = &unk_2881100F8;
  sub_2717D6E58(v11, v1);
  v2 = v11[0];
  v1[2] = &unk_288111F98;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_27130B9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(v4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27130B9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_27130BA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27130BA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27130BA54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130BA8C(uint64_t result)
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

uint64_t sub_27130BAF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27130BB50(uint64_t a1, void *a2)
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

void sub_27130BD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_27130BD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27130BD74(uint64_t result)
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

uint64_t sub_27130BDEC(uint64_t result)
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

void sub_27130BE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130BF1C(uint64_t a1)
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

void sub_27130BFC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130C078(uint64_t a1)
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

uint64_t sub_27130C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    sub_27130C494(v9);
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
  (*(MEMORY[0] + 64))(&v19, 0, 9);
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

void sub_27130C440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_27130C494(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2[14] = &unk_288110048;
  sub_2717BCD4C(&v1, v2);
  operator new();
}

void sub_27130C704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27130C720(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_27130C754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27130C768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_27130C79C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130C7D4(uint64_t result)
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

uint64_t sub_27130C838(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE9EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27130C898(uint64_t a1, void *a2)
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
  *(a1 + 40) = 9;
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

void sub_27130CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_27130CAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_27130CABC(uint64_t result)
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

uint64_t sub_27130CB34(uint64_t result)
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

void sub_27130CBAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130CC64(uint64_t a1)
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

void sub_27130CD08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130CDC0(uint64_t a1)
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

uint64_t sub_27130CE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    sub_27130D1DC(v9);
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
  (*(MEMORY[0] + 64))(&v19, 0, 10);
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

void sub_27130D188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_27130D1DC(uint64_t a1)
{
  v1[0] = *(a1 + 12);
  v10 = &unk_288111EF8;
  sub_2717D7028(v11, v1);
  v2 = v11[0];
  v1[2] = &unk_288113298;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_27130D4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(v4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27130D4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_27112F828(v12);
  sub_27112F828(&a9);
  sub_271308D7C(&a12);
  _Unwind_Resume(a1);
}

void sub_27130D4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27130D510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_27130D544(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27130D57C(uint64_t result)
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

uint64_t sub_27130D5E0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE10EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_27130D640(uint64_t a1, void *a2)
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
  *(a1 + 40) = 10;
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