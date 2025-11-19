uint64_t sub_2712C27C0(uint64_t result)
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

void *sub_2712C2838(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109458;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C28D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C298C(uint64_t a1)
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

void sub_2712C2A20(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C2A58(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109458;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C2B04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE33EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE33EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE33EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE33EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C2B64(uint64_t result)
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

void *sub_2712C2BDC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288109458;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C2C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C2D30(uint64_t a1)
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

void sub_2712C2DC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C2DFC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_288109458;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C2EA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2712C2F08(uint64_t result)
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

void *sub_2712C2F80(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881092A8;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_288133918[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C4049419736);
    return v2;
  }

  return result;
}

void sub_2712C301C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C30D4(uint64_t a1)
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

void sub_2712C3168(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C31A0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2881092A8;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_288133918[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2712C324C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit6iosimg20IOSurfaceImageBufferILNS2_3img6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712C34B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712C3508(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712C3908(a2, v3);
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

size_t sub_2712C3608(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812FA50[v3])(&v6, v1);
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

void sub_2712C36FC(uint64_t *a1, uint64_t a2)
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
    (off_28812FA50[v9])(&v12, v2);
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

void sub_2712C38BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712C3908(uint64_t a1, const char *a2)
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

void sub_2712C3AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2712C3AC8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712C3EC8(a2, v3);
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

size_t sub_2712C3BC8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812FA50[v3])(&v6, v1);
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

void sub_2712C3CBC(uint64_t *a1, uint64_t a2)
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
    (off_28812FA50[v9])(&v12, v2);
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

void sub_2712C3E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712C3EC8(uint64_t a1, const char *a2)
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

void sub_2712C4064(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2712C4088(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712C4488(a2, v3);
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

size_t sub_2712C4188(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812FA50[v3])(&v6, v1);
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

void sub_2712C427C(uint64_t *a1, uint64_t a2)
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
    (off_28812FA50[v9])(&v12, v2);
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

void sub_2712C443C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712C4488(uint64_t a1, const char *a2)
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

void sub_2712C4624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2712C4648(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712C4A48(a2, v3);
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

size_t sub_2712C4748(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812FA50[v3])(&v6, v1);
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

void sub_2712C483C(uint64_t *a1, uint64_t a2)
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
    (off_28812FA50[v9])(&v12, v2);
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

void sub_2712C49FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712C4A48(uint64_t a1, const char *a2)
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

void sub_2712C4BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2712C4BF8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  sub_2712C4D88(a2, &v8);
  *a1 = &unk_28812ECD0;
  *(a1 + 8) = &unk_28812ED18;
  *(a1 + 16) = &unk_2881147D8;
  v5 = v9[0];
  *(a1 + 24) = v8;
  v8 = 0uLL;
  *(a1 + 40) = v5;
  *(a1 + 54) = *(v9 + 14);
  *(a1 + 80) = *a3;
  sub_27113523C(a1 + 96, a3 + 1);
  *a1 = &unk_28810C6D8;
  v6 = *(&v8 + 1);
  if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_28810A4D8;
  return a1;
}

void sub_2712C4D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2712291B8(v2);
  sub_2712C4FAC(va);
  _Unwind_Resume(a1);
}

void sub_2712C4D88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v13 = 0;
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  if (v4)
  {
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v8;
      }
    }

    v9 = (*(*v4 + 104))(v4);
    *(a2 + 44) = v9 & ((v9 >> 1) >> 15);
    v5 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a2 + 44) = 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v10 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = v14;
  if (!v14)
  {
    return;
  }

LABEL_13:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_2712C4F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void *sub_2712C4FAC(void *result)
{
  *result = &unk_2881147D8;
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

void sub_2712C5040(double a1, uint64_t a2, int a3, unsigned int *a4)
{
  v7 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 1:
      v6 = &unk_28810F678;
      v5 = &unk_2881117D8;
      sub_2715BD8AC(a4, &v4, a1);
      operator new();
    case 2:
      v6 = &unk_28810F178;
      v5 = &unk_288110F28;
      sub_2715BD9F0(a4, &v4, a1);
      operator new();
    case 3:
      v6 = &unk_28810EBF8;
      v5 = &unk_288110638;
      sub_2715BDB34(a4, &v4, a1);
      operator new();
    case 4:
      v6 = &unk_28810EAF8;
      v5 = &unk_288110498;
      sub_2715BDC78(a4, &v4, a1);
      operator new();
    case 5:
      v6 = &unk_28810EA38;
      v5 = &unk_2881103A8;
      sub_2715BDDBC(a4, &v4);
      operator new();
    case 7:
      v6 = &unk_28810E938;
      v5 = &unk_288110208;
      sub_2715BDF5C(a4, &v4);
      operator new();
    case 8:
      v6 = &unk_28810E878;
      v5 = &unk_288110118;
      sub_2715BE0FC(a4, &v4);
      operator new();
    case 17:
      v6 = &unk_28810F7B8;
      v5 = &unk_288111A28;
      sub_2715BE29C(a4, &v4);
      operator new();
    case 21:
      v6 = &unk_28810F578;
      v5 = &unk_288111638;
      sub_2715BE434(a4, &v4);
      operator new();
    case 22:
      v6 = &unk_28810F4B8;
      v5 = &unk_288111548;
      sub_2715BE5CC(a4, &v4);
      operator new();
    case 25:
      v6 = &unk_28810F378;
      v5 = &unk_2881112F8;
      sub_2715BE764(a4, &v4);
      operator new();
    case 29:
      v6 = &unk_28810F238;
      v5 = &unk_288111018;
      sub_2715BE904(a4, &v4);
      operator new();
    case 31:
      v6 = &unk_28810F078;
      v5 = &unk_288110D88;
      sub_2715BEAA4(a4, &v4);
      operator new();
    case 32:
      v6 = &unk_28810EFB8;
      v5 = &unk_288110C98;
      sub_2715BEC44(a4, &v4);
      operator new();
    case 33:
      v6 = &unk_28810EF38;
      v5 = &unk_288110BC8;
      sub_2715BEDE4(a4, &v4);
      operator new();
    case 37:
      v6 = &unk_28810EDB8;
      v5 = &unk_2881108C8;
      sub_2715BEF84(a4, &v4);
      operator new();
    case 38:
      v6 = &unk_28810ECF8;
      v5 = &unk_2881107D8;
      sub_2715BF124(a4, &v4);
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_2712C8F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2712C9878(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_288109288;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

__n128 sub_2712C98A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_288109268;
  return result;
}

__n128 sub_2712C98D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_288109248;
  return result;
}

uint64_t sub_2712C9A88(uint64_t result)
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

void sub_2712C9B00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v13 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v13 = 0;
    v6 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v7 = *(a1 + 56);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  if (v4)
  {
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v8;
      }
    }

    v9 = (*(*v4 + 104))(v4);
    *(a2 + 44) = v9 & ((v9 >> 1) >> 15);
    v5 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a2 + 44) = 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v10 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = v14;
  if (!v14)
  {
    return;
  }

LABEL_13:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_2712C9D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_2712C9D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712C9DC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_2712C9DD4(uint64_t a1)
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

uint64_t sub_2712C9E78(uint64_t result)
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

void sub_2712C9EF4(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28812FA50[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2712CA0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2712CA110(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_2712CA350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_2712CA36C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812FA50[v3])(&v6, v1);
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

void sub_2712CA460(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 - 1 > 0x27)
  {
    sub_2712FD28C(a1, &v7);
    *a2 = v7;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (v17 != 1)
    {
      *(a2 + 120) = 0;
      return;
    }

    *(a2 + 40) = 0;
    v4 = v10;
    if (v10 == 1)
    {
      *(a2 + 16) = __p;
      *(a2 + 32) = v9;
      v9 = 0;
      __p = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v5 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v16 & 1) == 0)
      {
LABEL_8:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (!v4)
        {
          return;
        }

LABEL_17:
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v5 = a2 + 48;
      *(a2 + 104) = 0;
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v6 = v13;
    *(v5 + 16) = v12;
    *v5 = v11;
    v11 = 0uLL;
    *(a2 + 72) = v6;
    *(a2 + 80) = v14;
    *(a2 + 96) = v15;
    v12 = 0;
    v14 = 0uLL;
    v15 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  v3 = 1;
  if (a1 - 1 >= 4)
  {
    if (a1 - 5 < 4)
    {
      *a2 = 2;
      *(a2 + 120) = 1;
      return;
    }

    if (a1 - 9 < 0x10 && ((0xFF0Fu >> (a1 - 9)) & 1) != 0)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
      if (a1 - 13 >= 4 && a1 - 25 >= 0x10)
      {
        sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/Format.h", 493, "", 0, "unsupported format", 0x12uLL, sub_271852CA8);
        abort();
      }
    }
  }

  *a2 = v3;
  *(a2 + 120) = 1;
}

void sub_2712CA66C(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 - 1 <= 0x27)
  {
    v3 = 1;
    if (a1 - 1 >= 4)
    {
      if (a1 - 5 >= 4)
      {
        if (a1 - 9 < 0x10 && ((0xFF0Fu >> (a1 - 9)) & 1) != 0)
        {
          v3 = 3;
        }

        else
        {
          v3 = 4;
          if (a1 - 13 >= 4 && a1 - 25 >= 0x10)
          {
            sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/Format.h", 493, "", 0, "unsupported format", 0x12uLL, sub_271852CA8);
            abort();
          }
        }
      }

      else
      {
        v3 = 2;
      }
    }

    *a2 = dword_271870C80[a1 & 3] * v3;
    *(a2 + 120) = 1;
    return;
  }

  sub_2712FD28C(a1, &v7);
  *a2 = v7;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v17 != 1)
  {
    *(a2 + 120) = 0;
    return;
  }

  *(a2 + 40) = 0;
  v4 = v10;
  if (v10 != 1)
  {
    *(a2 + 48) = 0;
    v5 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v6 = v13;
    *(v5 + 16) = v12;
    *v5 = v11;
    v11 = 0uLL;
    *(a2 + 72) = v6;
    *(a2 + 80) = v14;
    *(a2 + 96) = v15;
    v12 = 0;
    v14 = 0uLL;
    v15 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_16;
  }

  *(a2 + 16) = __p;
  *(a2 + 32) = v9;
  v9 = 0;
  __p = 0uLL;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v5 = a2 + 48;
  *(a2 + 104) = 0;
  if (v16)
  {
    goto LABEL_15;
  }

LABEL_8:
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v4)
  {
    return;
  }

LABEL_16:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_2712CA87C(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 - 1 <= 0x27)
  {
    *a2 = dword_271870C80[a1 & 3];
    *(a2 + 120) = 1;
    return;
  }

  sub_2712FD28C(a1, &v6);
  *a2 = v6;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v16 != 1)
  {
    *(a2 + 120) = 0;
    return;
  }

  *(a2 + 40) = 0;
  v3 = v9;
  if (v9 == 1)
  {
    *(a2 + 16) = __p;
    *(a2 + 32) = v8;
    v8 = 0;
    __p = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v15 & 1) == 0)
    {
LABEL_7:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v3)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v4 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = v12;
  *(v4 + 16) = v11;
  *v4 = v10;
  v10 = 0uLL;
  *(a2 + 72) = v5;
  *(a2 + 80) = v13;
  *(a2 + 96) = v14;
  v11 = 0;
  v13 = 0uLL;
  v14 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v3)
  {
    return;
  }

LABEL_12:
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_2712CA9E4()
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_2717CD2D0(&v0, &v2, &v3, 1, &v1, 1, 0);
  operator new();
}

void sub_2712CAD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_27112F828(v8 + 8);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712CADD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2712CADE8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2881177F0;
  *(a1 + 8) = &unk_2881147D8;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = a2 + 8;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
  }

  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  v9 = *(a2 + 24);
  v8 = a2 + 24;
  *(a1 + 40) = *(v8 + 8);
  *(a1 + 32) = v9;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 60) = v7;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = a1;
    v11 = v8;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v8 = v11;
    a1 = v10;
  }

  *(a1 + 64) = &unk_288114798;
  *(a1 + 72) = *v4;
  *v4 = 0;
  *(v4 + 8) = 0;
  result = *v8;
  *(a1 + 102) = *(v8 + 14);
  *(a1 + 88) = result;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_2712CAF40(uint64_t result)
{
  *result = &unk_2881177F0;
  if (*(result + 152) == 1)
  {
    *(result + 128) = &unk_288115A20;
    v1 = *(result + 144);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }
    }
  }

  if (*(result + 120) == 1)
  {
    *(result + 64) = &unk_288114798;
    v3 = *(result + 80);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        result = v4;
      }
    }
  }

  *(result + 8) = &unk_2881147D8;
  v5 = *(result + 24);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

void sub_2712CB0F0(uint64_t a1)
{
  sub_2712CAF40(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712CB128(_DWORD *a1)
{
  v1 = a1[8];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[9];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[14];
  if ((v3 - 1) >= 4)
  {
    if ((v3 - 5) >= 4)
    {
      if (v3 - 9) < 0x10 && ((0xFF0Fu >> (v3 - 9)))
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
        if ((v3 - 13) >= 4 && (v3 - 25) >= 0x10)
        {
          if (!v3)
          {
            sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/Format.h", 491, "", 0, "dynamic format properties only known at runtime", 0x2FuLL, sub_271852CA8);
            abort();
          }

          sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/Format.h", 493, "", 0, "unsupported format", 0x12uLL, sub_271852CA8);
          abort();
        }
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  return (a1[10] * (v2 - 1)) + qword_27187ABD8[v3 & 3] * (v4 * v1);
}

uint64_t sub_2712CB250(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 60) == 1 && *(a1 + 48))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v6;
      }
    }

    (*(*v4 + 88))(v4, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (*(a2 + 60) == 1 && v8 != 0)
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v12 = v10;
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = v12;
      }
    }

    (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/SharedImage.h:1237");
    v8 = *(a2 + 48);
  }

  if (v7 == v8)
  {
    if (*(a1 + 48) == v7)
    {
      if (*(a1 + 56) == *(a2 + 56))
      {
        result = 0;
        if (*(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36))
        {
          return *(a1 + 40) == *(a2 + 40);
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return sub_271229730(a1 + 8, a2 + 8);
  }

  return result;
}

void sub_2712CB4A8(unsigned int a1@<W1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24 = a1;
  v25 = a3;
  v22 = a4;
  v23 = a2;
  v21 = a5;
  if (a1 - 1 < 0x28)
  {
    sub_2712CA9E4();
  }

  sub_2712FD28C(a1, &v10);
  *a6 = v10;
  *(a6 + 16) = 0;
  *(a6 + 112) = 0;
  if (v20 != 1)
  {
    *(a6 + 160) = 0;
    return;
  }

  *(a6 + 40) = 0;
  v7 = v13;
  if (v13 != 1)
  {
    *(a6 + 48) = 0;
    v8 = a6 + 48;
    *(a6 + 104) = 0;
    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v9 = v16;
    *(v8 + 16) = v15;
    *v8 = v14;
    v14 = 0uLL;
    *(a6 + 72) = v9;
    *(a6 + 80) = v17;
    *(a6 + 96) = v18;
    v15 = 0;
    v17 = 0uLL;
    v18 = 0;
    *(a6 + 104) = 1;
    *(a6 + 112) = 1;
    *(a6 + 160) = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_11;
  }

  *(a6 + 16) = v11;
  *(a6 + 32) = v12;
  v12 = 0;
  v11 = 0uLL;
  *(a6 + 40) = 1;
  *(a6 + 48) = 0;
  v8 = a6 + 48;
  *(a6 + 104) = 0;
  if (v19)
  {
    goto LABEL_10;
  }

LABEL_6:
  *(a6 + 112) = 1;
  *(a6 + 160) = 0;
  if (!v7)
  {
    return;
  }

LABEL_11:
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_2712CBA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112D66C(v16 + 16);
  sub_27112E024(va);
  sub_271154B3C(v17 - 248);
  _Unwind_Resume(a1);
}

void sub_2712CBA90(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v4 = *a2;
      v5 = *(a2 + 8);
      if (*(a2 + 56) != 1)
      {
LABEL_14:
        *&v25 = v4;
        BYTE8(v25) = v5;
        sub_27113523C(v26, (a2 + 32));
        sub_2712FB3DC(&v41, a1 + 8, &v25);
        sub_271228D08();
      }
    }

    else
    {
      v41 = &unk_28810A440;
      v4 = sub_271815924();
      v5 = 2;
      if (*(a2 + 56) != 1)
      {
        goto LABEL_14;
      }
    }

    sub_2711DAE40((a2 + 32), 1000000000);
    goto LABEL_14;
  }

  LOBYTE(v13) = 0;
  LOBYTE(v14) = 0;
  LOBYTE(v15) = 0;
  v16 = 0;
  v17 = v13;
  v18 = v14;
  LOBYTE(v19) = 0;
  v20 = 0;
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  sub_27113523C(&v42, &v15);
  *&v25 = sub_271815924();
  BYTE8(v25) = 2;
  LOBYTE(v26[0]) = 0;
  v27 = 0;
  if (v44 == 1)
  {
    *v26 = v42;
    v26[2] = v43;
    v43 = 0;
    v42 = 0uLL;
    v27 = 1;
  }

  v28 = v45;
  v29 = v46;
  LOBYTE(v30) = 0;
  v32 = 0;
  if (v49 == 1)
  {
    v30 = v47;
    v31 = v48;
    v48 = 0;
    v47 = 0uLL;
    v32 = 1;
    LOBYTE(v33) = 0;
    v37 = 0;
    if (v52 != 1)
    {
LABEL_9:
      LOBYTE(v38) = 0;
      v40 = 0;
      if ((v55 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v33) = 0;
    v37 = 0;
    if (v52 != 1)
    {
      goto LABEL_9;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v34 = v51;
  v33 = v50;
  v51 = 0;
  v50 = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v35 = _X0;
  v36 = 0;
  v37 = 1;
  LOBYTE(v38) = 0;
  v40 = 0;
  if ((v55 & 1) == 0)
  {
LABEL_10:
    if (v52 != 1)
    {
      goto LABEL_20;
    }

LABEL_18:
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

LABEL_20:
    if (v49 == 1 && SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    if (v44 == 1 && SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    sub_2712FB3DC(&v41, a1 + 8, &v25);
    sub_271228D08();
  }

LABEL_17:
  v38 = v53;
  v39 = v54;
  v54 = 0;
  v53 = 0uLL;
  v40 = 1;
  if (v52 != 1)
  {
    goto LABEL_20;
  }

  goto LABEL_18;
}

void sub_2712CC7C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2712CC8BC(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 55);
  v5 = *(a1 + 56);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = **v4;
    v7 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811D018, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v7)
      {
        goto LABEL_9;
      }

LABEL_15:
      v29 = 0;
      v30 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_9:
  v8 = *(a1 + 55);
  v9 = *(a1 + 56);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = v8;
  v30 = v9;
  if (!v8)
  {
LABEL_16:
    v31 = *"cv3d.viz";
    v32 = 0x800000000000000;
    v33 = 1;
    sub_2711BE814(&v28, &v31, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(&v25, *a1, *(a1 + 1));
    }

    else
    {
      v25 = *a1;
      v26 = *(a1 + 2);
    }

    v27 = *(a1 + 6);
    operator new();
  }

  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *(v8 + 56);
    v13 = *(v8 + 64);
    v14 = *(v8 + 68);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v12 = *(v8 + 56);
    v13 = *(v8 + 64);
    v14 = *(v8 + 68);
  }

  *&v17 = v10;
  *(&v17 + 1) = v11;
  *v18 = *(v8 + 40);
  *&v18[8] = *(v8 + 48);
  *&v18[16] = v12;
  *&v18[24] = v13;
  *&v18[28] = v14;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v19[0] = &unk_2881177F0;
  v19[1] = &unk_2881147D8;
  v19[2] = 0;
  *v20 = *v18;
  *&v20[14] = *&v18[14];
  LOBYTE(v21) = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  *a2 = &unk_2881177F0;
  *(a2 + 8) = &unk_2881147D8;
  v19[3] = 0;
  *(a2 + 16) = v17;
  *(a2 + 32) = *v18;
  *(a2 + 46) = *&v18[14];
  *(a2 + 64) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  sub_2712CAF40(v19);
  v15 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2712CCE74(_Unwind_Exception *a1)
{
  sub_2711BEA2C((v1 - 136));
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  sub_27112F828(v1 - 112);
  _Unwind_Resume(a1);
}

void sub_2712CCEFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2712CD20C(&v16, **v1, *(v1 + 8));
  if ((v18 & 1) == 0)
  {
    v2 = SHIBYTE(v17);
    if (SHIBYTE(v17) < 0)
    {
      sub_271127178(v3, v16, *(&v16 + 1));
    }

    else
    {
      *v3 = v16;
      v4 = v17;
    }

    v5 = 1;
    sub_271369D54(v3, &v6);
    sub_2712CD070(*(v1 + 16), &v6);
    if (v15 == 1)
    {
      if (v14 == 1)
      {
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v11 < 0)
        {
          operator delete(v10);
        }
      }

      if (v9 == 1 && v8 < 0)
      {
        operator delete(v7);
      }
    }

    if (v5 == 1 && SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }

    if (v2 < 0)
    {
      operator delete(v16);
    }
  }
}

uint64_t sub_2712CD070(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a2 + 112) == 1)
  {
    v8 = 0;
    if (*(a2 + 40) == 1)
    {
      *v6 = a2[1];
      v7 = *(a2 + 4);
      *(a2 + 3) = 0;
      *(a2 + 4) = 0;
      *(a2 + 2) = 0;
      v8 = 1;
    }

    LOBYTE(v9[0]) = 0;
    v14 = 0;
    if (*(a2 + 104) == 1)
    {
      v3 = *(a2 + 9);
      v10 = *(a2 + 8);
      *v9 = a2[3];
      *(a2 + 7) = 0;
      *(a2 + 8) = 0;
      *(a2 + 6) = 0;
      v11 = v3;
      *__p = a2[5];
      v13 = *(a2 + 12);
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
      *(a2 + 12) = 0;
      v14 = 1;
    }

    v15 = 1;
  }

  v16 = 0;
  sub_2712D959C(&v5, a1);
  if (v16 == 1)
  {
    (*v5)(&v5);
    return a1;
  }

  if (v15 != 1)
  {
    return a1;
  }

  if (v14 == 1)
  {
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }
  }

  if (v8 != 1 || (SHIBYTE(v7) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v6[0]);
  return a1;
}

void sub_2712CD20C(uint64_t a1, int a2, uint64_t **a3)
{
  v204 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v72 = **a3;
      sub_2712D6134(a3[1], *a3[2], &v180);
      if (v190)
      {
        v73 = *a3[2];
        v74 = *a3[1];
        v75 = **a3;
        v76 = *a3[4];
        v77 = *a3[5];
        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 2:
      sub_2712DA1A4(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v56 = *a3[2];
        v57 = *a3[1];
        v58 = **a3;
        v59 = *a3[4];
        v60 = *a3[5];
        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 3:
      sub_2712DAF50(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v64 = *a3[2];
        v65 = *a3[1];
        v66 = **a3;
        v67 = *a3[4];
        v68 = *a3[5];
        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 4:
      sub_2712DBCFC(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v34 = *a3[2];
        v35 = *a3[1];
        v36 = **a3;
        v37 = *a3[4];
        v38 = *a3[5];
        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 5:
      v88 = **a3;
      sub_2712DCAB0(a3[1], *a3[2], &v180);
      if (v190)
      {
        v163 = **a3;
        v89 = *a3[4];
        v90 = *a3[5];
        if (*a3[1])
        {
          v91 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v91 << 32) | 2;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 6:
      sub_2712DD6C8(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v166 = **a3;
        v100 = *a3[4];
        v101 = *a3[5];
        if (*a3[1])
        {
          v102 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v102 << 32) | 2;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 7:
      sub_2712DE480(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v159 = **a3;
        v69 = *a3[4];
        v70 = *a3[5];
        if (*a3[1])
        {
          v71 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v71 << 32) | 2;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 8:
      sub_2712DF238(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v169 = **a3;
        v109 = *a3[4];
        v110 = *a3[5];
        if (*a3[1])
        {
          v111 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v111 << 32) | 2;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 9:
      v45 = **a3;
      sub_2712DFFF4(a3[1], *a3[2], &v180);
      if (v190)
      {
        v155 = **a3;
        v46 = *a3[4];
        v47 = *a3[5];
        if (*a3[1])
        {
          v48 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v48 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 10:
      sub_2712E0C18(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v168 = **a3;
        v106 = *a3[4];
        v107 = *a3[5];
        if (*a3[1])
        {
          v108 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v108 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 11:
      sub_2712E19EC(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v152 = **a3;
        v31 = *a3[4];
        v32 = *a3[5];
        if (*a3[1])
        {
          v33 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v33 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 12:
      sub_2712E27C0(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v154 = **a3;
        v42 = *a3[4];
        v43 = *a3[5];
        if (*a3[1])
        {
          v44 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v44 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 13:
      v96 = **a3;
      sub_2712E3598(a3[1], *a3[2], &v180);
      if (v190)
      {
        v165 = **a3;
        v97 = *a3[4];
        v98 = *a3[5];
        if (*a3[1])
        {
          v99 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v99 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 14:
      sub_2712E41A8(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v150 = **a3;
        v24 = *a3[4];
        v25 = *a3[5];
        if (*a3[1])
        {
          v26 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v26 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 15:
      sub_2712E4F60(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v158 = **a3;
        v61 = *a3[4];
        v62 = *a3[5];
        if (*a3[1])
        {
          v63 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v63 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 16:
      sub_2712E5D18(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v149 = **a3;
        v21 = *a3[4];
        v22 = *a3[5];
        if (*a3[1])
        {
          v23 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v23 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 17:
      v81 = **a3;
      sub_2712E6AD4(a3[1], *a3[2], &v180);
      if (v190)
      {
        v161 = **a3;
        v82 = *a3[4];
        v83 = *a3[5];
        if (*a3[1])
        {
          v84 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v84 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 18:
      sub_2712E76F8(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v167 = **a3;
        v103 = *a3[4];
        v104 = *a3[5];
        if (*a3[1])
        {
          v105 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v105 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 19:
      sub_2712E84CC(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v174 = **a3;
        v124 = *a3[4];
        v125 = *a3[5];
        if (*a3[1])
        {
          v126 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v126 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 20:
      sub_2712E92A0(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v162 = **a3;
        v85 = *a3[4];
        v86 = *a3[5];
        if (*a3[1])
        {
          v87 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v87 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 21:
      v92 = **a3;
      sub_2712EA078(a3[1], *a3[2], &v180);
      if (v190)
      {
        v164 = **a3;
        v93 = *a3[4];
        v94 = *a3[5];
        if (*a3[1])
        {
          v95 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v95 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 22:
      sub_2712EAC9C(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v172 = **a3;
        v118 = *a3[4];
        v119 = *a3[5];
        if (*a3[1])
        {
          v120 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v120 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 23:
      sub_2712EBA70(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v175 = **a3;
        v127 = *a3[4];
        v128 = *a3[5];
        if (*a3[1])
        {
          v129 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v129 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 24:
      sub_2712EC844(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v157 = **a3;
        v53 = *a3[4];
        v54 = *a3[5];
        if (*a3[1])
        {
          v55 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v55 << 32) | 3;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 25:
      v49 = **a3;
      sub_2712ED61C(a3[1], *a3[2], &v180);
      if (v190)
      {
        v156 = **a3;
        v50 = *a3[4];
        v51 = *a3[5];
        if (*a3[1])
        {
          v52 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v52 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 26:
      sub_2712EE22C(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v179 = **a3;
        v140 = *a3[4];
        v141 = *a3[5];
        if (*a3[1])
        {
          v142 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v142 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 == 1)
      {
        if (BYTE8(v200) == 1)
        {
          if (SBYTE7(v200) < 0)
          {
            operator delete(__p);
          }

          if (SBYTE7(v198) < 0)
          {
            operator delete(v197);
          }
        }

        if (BYTE8(v196) == 1 && SBYTE7(v196) < 0)
        {
          goto LABEL_435;
        }
      }

      goto LABEL_519;
    case 27:
      sub_2712EEFE4(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v147 = **a3;
        v15 = *a3[4];
        v16 = *a3[5];
        if (*a3[1])
        {
          v17 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v17 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 28:
      sub_2712EFD9C(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v176 = **a3;
        v130 = *a3[4];
        v131 = *a3[5];
        if (*a3[1])
        {
          v132 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v132 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 29:
      v133 = **a3;
      sub_2712F0B58(a3[1], *a3[2], &v180);
      if (v190)
      {
        v177 = **a3;
        v134 = *a3[4];
        v135 = *a3[5];
        if (*a3[1])
        {
          v136 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v136 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 30:
      sub_2712F1768(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v170 = **a3;
        v112 = *a3[4];
        v113 = *a3[5];
        if (*a3[1])
        {
          v114 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v114 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      sub_2712CD070(a3[3], &v194);
      if (v201 != 1)
      {
        goto LABEL_519;
      }

      if (BYTE8(v200) == 1)
      {
        if (SBYTE7(v200) < 0)
        {
          operator delete(__p);
        }

        if (SBYTE7(v198) < 0)
        {
          operator delete(v197);
        }
      }

      if (BYTE8(v196) != 1 || (SBYTE7(v196) & 0x80000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_435;
    case 31:
      sub_2712F2520(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v160 = **a3;
        v78 = *a3[4];
        v79 = *a3[5];
        if (*a3[1])
        {
          v80 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v80 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 32:
      sub_2712F32D8(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v171 = **a3;
        v115 = *a3[4];
        v116 = *a3[5];
        if (*a3[1])
        {
          v117 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v117 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 33:
      v27 = **a3;
      sub_2712F4094(a3[1], *a3[2], &v180);
      if (v190)
      {
        v151 = **a3;
        v28 = *a3[4];
        v29 = *a3[5];
        if (*a3[1])
        {
          v30 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v30 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 34:
      sub_2712F4CA4(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v148 = **a3;
        v18 = *a3[4];
        v19 = *a3[5];
        if (*a3[1])
        {
          v20 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v20 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 35:
      sub_2712F5A5C(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v145 = **a3;
        v9 = *a3[4];
        v10 = *a3[5];
        if (*a3[1])
        {
          v11 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v11 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 36:
      sub_2712F6814(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v146 = **a3;
        v12 = *a3[4];
        v13 = *a3[5];
        if (*a3[1])
        {
          v14 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v14 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 37:
      v5 = **a3;
      sub_2712F75D0(a3[1], *a3[2], &v180);
      if (v190)
      {
        v144 = **a3;
        v6 = *a3[4];
        v7 = *a3[5];
        if (*a3[1])
        {
          v8 = *a3[2];
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v8 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 38:
      sub_2712F81E0(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v178 = **a3;
        v137 = *a3[4];
        v138 = *a3[5];
        if (*a3[1])
        {
          v139 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v139 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 39:
      sub_2712F8F98(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v173 = **a3;
        v121 = *a3[4];
        v122 = *a3[5];
        if (*a3[1])
        {
          v123 = *a3[2] >> 1;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v123 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

      goto LABEL_427;
    case 40:
      sub_2712F9D50(**a3, a3[1], *a3[2], &v180);
      if (v190)
      {
        v153 = **a3;
        v39 = *a3[4];
        v40 = *a3[5];
        if (*a3[1])
        {
          v41 = *a3[2] >> 2;
          LODWORD(v194) = 1;
          *(&v194 + 4) = (v41 << 32) | 4;
        }

        else
        {
          LODWORD(v194) = 1;
          *(&v194 + 4) = 0;
        }

        operator new();
      }

      v194 = v180;
      LOBYTE(v195) = 0;
      LOBYTE(v201) = 0;
      if (v189 == 1)
      {
        sub_27112F6CC(&v195, &v181);
        LOBYTE(v201) = 1;
      }

LABEL_427:
      sub_2712CD070(a3[3], &v194);
      if (v201 == 1)
      {
        if (BYTE8(v200) == 1)
        {
          if (SBYTE7(v200) < 0)
          {
            operator delete(__p);
          }

          if (SBYTE7(v198) < 0)
          {
            operator delete(v197);
          }
        }

        if (BYTE8(v196) == 1 && SBYTE7(v196) < 0)
        {
LABEL_435:
          operator delete(v195);
        }
      }

LABEL_519:
      if ((v190 & 1) == 0 && v189 == 1)
      {
        if (v188 == 1)
        {
          if (v187 < 0)
          {
            operator delete(v186);
          }

          if (v185 < 0)
          {
            operator delete(v184);
          }
        }

        if (v183 == 1 && SHIBYTE(v182) < 0)
        {
          operator delete(v181);
        }
      }

      *(a1 + 24) = 1;
      v143 = *MEMORY[0x277D85DE8];
      return;
    default:
      v200 = xmmword_27187AA9C;
      v201 = unk_27187AAAC;
      v202 = xmmword_27187AABC;
      v203 = unk_27187AACC;
      v196 = xmmword_27187AA5C;
      v197 = unk_27187AA6C;
      v198 = xmmword_27187AA7C;
      __p = unk_27187AA8C;
      v194 = xmmword_27187AA3C;
      v195 = unk_27187AA4C;
      v192 = 0;
      *&v180 = v191;
      *(&v180 + 1) = "Invalid runtime format ";
      *&v181 = v191;
      *(&v181 + 1) = "Invalid runtime format ";
      v182 = "Invalid runtime format ";
      v193 = &v180;
      sub_2711D0C58(&v193);
      sub_27120AACC();
  }
}

void sub_2712D5040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112D66C(v6 + 16);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D50F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_2712CAF40(&a47);
  sub_27115475C(&a40);
  sub_2712EEF50(&a30);
  sub_2712EE864(&a12);
  sub_2712EE864(&a13);
  sub_27112E024(&a14);
  _Unwind_Resume(a1);
}

void sub_2712D5CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_27112D71C(&a47);
  sub_27112E024(&a14);
  _Unwind_Resume(a1);
}

void sub_2712D5D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D5FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D6088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2712D60B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2712D6134(unsigned int *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a2;
  if (*a1 > a2 && a1[1] != 0)
  {
    v4 = *a1;
    sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
  }

  *(a3 + 120) = 1;
}

void sub_2712D6340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a28 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2712D6378(uint64_t a1, uint64_t a2)
{
  v8[0] = &unk_2881177F0;
  v8[1] = &unk_2881147D8;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *v9 = v3;
  *v10 = v4;
  *&v10[14] = *(a2 + 46);
  LOBYTE(v11) = 0;
  v14 = 0;
  if (*(a2 + 120) == 1)
  {
    v11 = &unk_288114798;
    v5 = *(a2 + 72);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    v6 = *(a2 + 88);
    *__p = v5;
    *v13 = v6;
    *&v13[14] = *(a2 + 102);
    v14 = 1;
  }

  LOBYTE(v15) = 0;
  v17 = 0;
  if (*(a2 + 152) == 1)
  {
    v15 = &unk_288115A20;
    v16 = *(a2 + 136);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    v17 = 1;
  }

  v18 = 1;
  sub_2712D959C(v8, a1);
  if (v18 == 1)
  {
    (*v8[0])(v8);
    return a1;
  }

  if (v13[24] != 1)
  {
    return a1;
  }

  if (v13[16] == 1)
  {
    if ((v13[15] & 0x80000000) != 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(*&v10[16]);
    }
  }

  if (v10[8] != 1 || (v10[7] & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v9[0]);
  return a1;
}

void sub_2712D654C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271154B3C(va);
  _Unwind_Resume(a1);
}

void *sub_2712D6560(void *result)
{
  *result = &unk_288114418;
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

uint64_t *sub_2712D65F4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 104);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v3(*(v2 + 32), *(v2 + 24));
        LODWORD(v3) = *(v2 + 104);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EEC0[v3])(&v5, v2 + 24);
LABEL_8:
    *(v2 + 104) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C406B89191FLL);
  }

  return a1;
}

void sub_2712D669C(std::string *a1, unsigned int *a2, std::string *a3)
{
  v6 = 0;
  v9 = v5;
  v10 = a1;
  v11 = v5;
  v12 = a1;
  v13 = a1;
  v7.__r_.__value_.__r.__words[0] = &v9;
  sub_2712C3BC8(&v7);
  std::to_string(&v7, *a2);
  v9 = v5;
  v10 = &v7;
  v11 = v5;
  v12 = &v7;
  v13 = &v7;
  if (v6 != -1)
  {
    v8 = &v9;
    (off_28812FB58[v6])(&v8, v5);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v9 = v5;
    v10 = a3;
    v11 = v5;
    v12 = a3;
    v13 = a3;
    if (v6 != -1)
    {
      v7.__r_.__value_.__r.__words[0] = &v9;
      (*(&off_28812FB70 + v6))(&v7, v5);
      sub_2712D7094();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2712D6B3C(std::string *a1, unsigned int *a2, std::string *a3)
{
  v6 = 0;
  v9 = v5;
  v10 = a1;
  v11 = v5;
  v12 = a1;
  v13 = a1;
  v7.__r_.__value_.__r.__words[0] = &v9;
  sub_2712C3BC8(&v7);
  std::to_string(&v7, *a2);
  v9 = v5;
  v10 = &v7;
  v11 = v5;
  v12 = &v7;
  v13 = &v7;
  if (v6 != -1)
  {
    v8 = &v9;
    (off_28812FB58[v6])(&v8, v5);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v9 = v5;
    v10 = a3;
    v11 = v5;
    v12 = a3;
    v13 = a3;
    if (v6 != -1)
    {
      v7.__r_.__value_.__r.__words[0] = &v9;
      (*(&off_28812FC30 + v6))(&v7, v5);
      sub_27120AACC();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2712D6E10(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = 0;
  v9 = v6;
  v10 = a1;
  v11 = v6;
  v12 = a1;
  v13 = a1;
  v8.__r_.__value_.__r.__words[0] = &v9;
  sub_2712C3608(&v8);
  sub_271136C48(&v5, v6, a2);
  v9 = v6;
  v10 = a3;
  v11 = v6;
  v12 = a3;
  v13 = a3;
  if (v7 != -1)
  {
    v8.__r_.__value_.__r.__words[0] = &v9;
    (*(&off_28812FC30 + v7))(&v8, v6);
    sub_27120AACC();
  }

  sub_2711308D4();
}

void sub_2712D7330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  v27 = a15;
  a15 = 0;
  if (!v27)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(&a15, v27);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2712D73B8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28812FBA0 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_28812FB58[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28812FBA0 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_2711308D4();
  }

  v17 = &v12;
  (off_28812FB58[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_2711308D4();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28812FBA0 + v9))(&v11, a2);
}

void sub_2712D7554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712D7588(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D7988(a2, v3);
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

size_t sub_2712D7688(uint64_t **a1)
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

void sub_2712D777C(uint64_t *a1, uint64_t a2)
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

void sub_2712D793C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712D7988(uint64_t a1, const char *a2)
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

void sub_2712D7B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2712D7B48(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D7E54(a2, v3);
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

void sub_2712D7C48(uint64_t *a1, uint64_t a2)
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

void sub_2712D7E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712D7E54(uint64_t a1, const char *a2)
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

void sub_2712D7FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2712D8014(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D8320(a2, v3);
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

void sub_2712D8114(uint64_t *a1, uint64_t a2)
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

void sub_2712D82D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712D8320(uint64_t a1, const char *a2)
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

void sub_2712D84BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2712D84E0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D88E0(a2, v3);
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

size_t sub_2712D85E0(uint64_t **a1)
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

void sub_2712D86D4(uint64_t *a1, uint64_t a2)
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

void sub_2712D8894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712D88E0(uint64_t a1, const char *a2)
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

void sub_2712D8A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2712D8AA0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2712D8DAC(a2, v3);
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

void sub_2712D8BA0(uint64_t *a1, uint64_t a2)
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

void sub_2712D8D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2712D8DAC(uint64_t a1, const char *a2)
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

void sub_2712D8F48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2712D8F5C(uint64_t a1, void *a2)
{
  *a1 = &unk_288114418;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v6, 0, 1);
  v3 = *(v6 + 16);
  *(a1 + 24) = *v6;
  *(a1 + 40) = v3;
  v6 = 0;
  MEMORY[0x2743BF050]();
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

void sub_2712D9170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712D918C(void *a1)
{
  *a1 = &unk_288114418;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712D9260(uint64_t a1)
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

void sub_2712D92F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712D932C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 104);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 104) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v2(*(v1 + 32), *(v1 + 24));
        LODWORD(v2) = *(v1 + 104);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EEC0[v2])(&v3, v1 + 24);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712D93E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE1EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE1EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE1EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE1EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712D9444(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 1);
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
  *(a1 + 40) = 1;
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

void sub_2712D9588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712D959C(uint64_t a1, uint64_t a2)
{
  v46[2] = *MEMORY[0x277D85DE8];
  LOBYTE(v8) = *(a2 + 160);
  if (*(a1 + 160) == 1)
  {
    if (*(a2 + 160))
    {
      *&v34 = &unk_2881177F0;
      *(&v34 + 1) = &unk_2881147D8;
      v9 = *(a1 + 16);
      v10 = *(a1 + 32);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v35 = v9;
      v36[0] = v10;
      *(v36 + 14) = *(a1 + 46);
      LOBYTE(v37) = 0;
      v40 = 0;
      if (*(a1 + 120) == 1)
      {
        v37 = &unk_288114798;
        v38 = *(a1 + 72);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        v39[0] = *(a1 + 88);
        *(v39 + 14) = *(a1 + 102);
        v40 = 1;
      }

      LOBYTE(v41) = 0;
      v43 = 0;
      if (*(a1 + 152) == 1)
      {
        v41 = &unk_288115A20;
        v42 = *(a1 + 136);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        v43 = 1;
      }

      sub_2712D9DB8(a1, a2);
      sub_2712D9DB8(a2, &v34);
LABEL_41:
      sub_2712CAF40(&v34);
LABEL_42:
      v23 = *MEMORY[0x277D85DE8];
      return;
    }

    v34 = *a2;
    v14 = *(a2 + 112);
    if (v14 != 1)
    {
      v15 = 0;
LABEL_48:
      *a2 = &unk_2881177F0;
      *(a2 + 8) = &unk_2881147D8;
      *(a2 + 16) = *(a1 + 16);
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      v24 = *(a1 + 32);
      v25 = *(a1 + 46);
      *(a2 + 64) = 0;
      *(a2 + 46) = v25;
      *(a2 + 32) = v24;
      *(a2 + 120) = 0;
      if (*(a1 + 120) == 1)
      {
        *(a2 + 64) = &unk_288114798;
        *(a2 + 72) = *(a1 + 72);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        v26 = *(a1 + 88);
        *(a2 + 102) = *(a1 + 102);
        *(a2 + 88) = v26;
        *(a2 + 120) = 1;
      }

      *(a2 + 128) = 0;
      *(a2 + 152) = 0;
      if (*(a1 + 152) == 1)
      {
        *(a2 + 128) = &unk_288115A20;
        *(a2 + 136) = *(a1 + 136);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a2 + 152) = 1;
      }

      (**a1)(a1);
      *a1 = v34;
      *(a1 + 16) = 0;
      *(a1 + 112) = 0;
      if (v14)
      {
        *(a1 + 40) = 0;
        if (v2)
        {
          *(a1 + 16) = v15;
          *(a1 + 24) = v46[0];
          *(a1 + 31) = *(v46 + 7);
          *(a1 + 39) = v5;
          *(a1 + 40) = 1;
          v15 = 0;
          v5 = 0;
        }

        *(a1 + 48) = 0;
        *(a1 + 104) = 0;
        if (v4)
        {
          v27 = v45[0];
          *(a1 + 48) = v3;
          *(a1 + 56) = v27;
          *(a1 + 63) = *(v45 + 7);
          *(a1 + 71) = v32;
          *(a1 + 72) = v31;
          *(a1 + 80) = v30;
          *(a1 + 88) = v44[0];
          *(a1 + 95) = *(v44 + 7);
          *(a1 + 103) = v33;
          *(a1 + 104) = 1;
        }

        v28 = *(a1 + 160);
        *(a1 + 112) = 1;
        *(a1 + 160) = *(a2 + 160);
        *(a2 + 160) = v28;
        if ((v2 & (v5 < 0)) == 1)
        {
          operator delete(v15);
        }
      }

      else
      {
        v29 = *(a1 + 160);
        *(a1 + 160) = *(a2 + 160);
        *(a2 + 160) = v29;
      }

      goto LABEL_42;
    }

    v2 = *(a2 + 40);
    if (v2 == 1)
    {
      v15 = *(a2 + 16);
      v46[0] = *(a2 + 24);
      v8 = *(a2 + 31);
      *(v46 + 7) = v8;
      v5 = *(a2 + 39);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      v4 = *(a2 + 104);
      if (v4 != 1)
      {
LABEL_21:
        v3 = 0;
LABEL_45:
        v33 = v8;
        if (v2 && *(a2 + 39) < 0)
        {
          operator delete(*(a2 + 16));
          LOBYTE(v2) = 1;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v15 = 0;
      v4 = *(a2 + 104);
      if (v4 != 1)
      {
        goto LABEL_21;
      }
    }

    v3 = *(a2 + 48);
    v45[0] = *(a2 + 56);
    *(v45 + 7) = *(a2 + 63);
    v32 = *(a2 + 71);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    v30 = *(a2 + 80);
    v31 = *(a2 + 72);
    v44[0] = *(a2 + 88);
    *(v44 + 7) = *(a2 + 95);
    LOBYTE(v8) = *(a2 + 103);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    goto LABEL_45;
  }

  if (*(a2 + 160))
  {
    *&v34 = &unk_2881177F0;
    v11 = *(a2 + 16);
    *(&v34 + 1) = &unk_2881147D8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v12 = *(a2 + 32);
    v35 = v11;
    v36[0] = v12;
    *(v36 + 14) = *(a2 + 46);
    LOBYTE(v37) = 0;
    v40 = 0;
    if (*(a2 + 120) == 1)
    {
      v37 = &unk_288114798;
      v38 = *(a2 + 72);
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      v39[0] = *(a2 + 88);
      *(v39 + 14) = *(a2 + 102);
      v40 = 1;
    }

    LOBYTE(v41) = 0;
    v43 = 0;
    if (*(a2 + 152) == 1)
    {
      v41 = &unk_288115A20;
      v42 = *(a2 + 136);
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      v43 = 1;
    }

    (**a2)(a2);
    *a2 = *a1;
    *(a2 + 16) = 0;
    *(a2 + 112) = 0;
    if (*(a1 + 112) != 1)
    {
      goto LABEL_36;
    }

    *(a2 + 40) = 0;
    if (*(a1 + 40) == 1)
    {
      v17 = *(a1 + 16);
      *(a2 + 32) = *(a1 + 32);
      *(a2 + 16) = v17;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v13 = a2 + 48;
      *(a2 + 104) = 0;
      if (*(a1 + 104) != 1)
      {
LABEL_16:
        *(a2 + 112) = 1;
        if ((*(a1 + 112) & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v13 = a2 + 48;
      *(a2 + 104) = 0;
      if (*(a1 + 104) != 1)
      {
        goto LABEL_16;
      }
    }

    v18 = *(a1 + 48);
    *(v13 + 16) = *(a1 + 64);
    *v13 = v18;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a2 + 72) = *(a1 + 72);
    v19 = *(a1 + 80);
    *(a2 + 96) = *(a1 + 96);
    *(a2 + 80) = v19;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    if ((*(a1 + 112) & 1) == 0)
    {
LABEL_36:
      *a1 = &unk_2881177F0;
      *(a1 + 8) = &unk_2881147D8;
      v20 = v35;
      v35 = 0uLL;
      v21 = v36[0];
      *(a1 + 16) = v20;
      *(a1 + 32) = v21;
      *(a1 + 46) = *(v36 + 14);
      *(a1 + 64) = 0;
      *(a1 + 120) = 0;
      if (v40 == 1)
      {
        *(a1 + 64) = &unk_288114798;
        *(a1 + 72) = v38;
        v38 = 0uLL;
        *(a1 + 88) = v39[0];
        *(a1 + 102) = *(v39 + 14);
        *(a1 + 120) = 1;
      }

      *(a1 + 128) = 0;
      *(a1 + 152) = 0;
      if (v43 == 1)
      {
        *(a1 + 128) = &unk_288115A20;
        *(a1 + 136) = v42;
        v42 = 0uLL;
        *(a1 + 152) = 1;
      }

      v22 = *(a1 + 160);
      *(a1 + 160) = *(a2 + 160);
      *(a2 + 160) = v22;
      goto LABEL_41;
    }

LABEL_28:
    if (*(a1 + 104) == 1)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }
    }

    if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    goto LABEL_36;
  }

  v16 = *MEMORY[0x277D85DE8];

  sub_27112F120(a1, a2);
}

uint64_t sub_2712D9DB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 32) = v6;
  sub_2712D9F9C(a1 + 64, a2 + 64);
  v7 = *(a1 + 152);
  if (v7 == *(a2 + 152))
  {
    if (*(a1 + 152) && (v8 = *(a2 + 136), *(a2 + 136) = 0, *(a2 + 144) = 0, v9 = *(a1 + 144), *(a1 + 136) = v8, v9) && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      return a1;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 128) = &unk_288115A20;
    if (v7)
    {
      v11 = *(a1 + 144);
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        *(a1 + 152) = 0;
        return a1;
      }

      else
      {
        *(a1 + 152) = 0;
        return a1;
      }
    }

    else
    {
      *(a1 + 136) = *(a2 + 136);
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a1 + 152) = 1;
      return a1;
    }
  }
}

void sub_2712D9F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v4 = *(a1 + 16);
      *(a1 + 8) = v3;
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = a1;
          v6 = a2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          a2 = v6;
          a1 = v5;
        }
      }

      v7 = *(a2 + 24);
      *(a1 + 38) = *(a2 + 38);
      *(a1 + 24) = v7;
    }
  }

  else
  {
    *a1 = &unk_288114798;
    if (v2)
    {
      v8 = *(a1 + 16);
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = a1;
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        *(v10 + 56) = 0;
      }

      else
      {
        *(a1 + 56) = 0;
      }
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v9 = *(a2 + 24);
      *(a1 + 38) = *(a2 + 38);
      *(a1 + 24) = v9;
      *(a1 + 56) = 1;
    }
  }
}

void *sub_2712DA110(void *result)
{
  *result = &unk_288114418;
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

uint64_t sub_2712DA1A4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    if (2 * *a2 > a3)
    {
      v5 = 2 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if (a3)
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

void sub_2712DA6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DA740(void *result)
{
  *result = &unk_288113E58;
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

uint64_t *sub_2712DA7D4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 104);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v3(*(v2 + 32), *(v2 + 24));
        LODWORD(v3) = *(v2 + 104);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EEE0[v3])(&v5, v2 + 24);
LABEL_8:
    *(v2 + 104) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C406B89191FLL);
  }

  return a1;
}

uint64_t sub_2712DA87C(uint64_t a1, void *a2)
{
  *a1 = &unk_288113E58;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v6, 0, 2);
  v3 = *(v6 + 16);
  *(a1 + 24) = *v6;
  *(a1 + 40) = v3;
  v6 = 0;
  MEMORY[0x2743BF050]();
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

void sub_2712DAA90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DAAAC(void *a1)
{
  *a1 = &unk_288113E58;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DAB80(uint64_t a1)
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

void sub_2712DAC14(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DAC4C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 104);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 104) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v2(*(v1 + 32), *(v1 + 24));
        LODWORD(v2) = *(v1 + 104);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EEE0[v2])(&v3, v1 + 24);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DAD04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE2EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE2EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DAD64(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 2);
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
  *(a1 + 40) = 2;
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

void sub_2712DAEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DAEBC(void *result)
{
  *result = &unk_288113E58;
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

uint64_t sub_2712DAF50@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    if (2 * *a2 > a3)
    {
      v5 = 2 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if (a3)
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

void sub_2712DB474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DB4EC(void *result)
{
  *result = &unk_2881137D8;
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

uint64_t *sub_2712DB580(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 104);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v3(*(v2 + 32), *(v2 + 24));
        LODWORD(v3) = *(v2 + 104);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EF00[v3])(&v5, v2 + 24);
LABEL_8:
    *(v2 + 104) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C406B89191FLL);
  }

  return a1;
}

uint64_t sub_2712DB628(uint64_t a1, void *a2)
{
  *a1 = &unk_2881137D8;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v6, 0, 3);
  v3 = *(v6 + 16);
  *(a1 + 24) = *v6;
  *(a1 + 40) = v3;
  v6 = 0;
  MEMORY[0x2743BF050]();
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

void sub_2712DB83C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DB858(void *a1)
{
  *a1 = &unk_2881137D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DB92C(uint64_t a1)
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

void sub_2712DB9C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DB9F8(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 104);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 104) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v2(*(v1 + 32), *(v1 + 24));
        LODWORD(v2) = *(v1 + 104);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EF00[v2])(&v3, v1 + 24);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DBAB0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE3EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE3EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DBB10(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 2);
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
  *(a1 + 40) = 3;
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

void sub_2712DBC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DBC68(void *result)
{
  *result = &unk_2881137D8;
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

uint64_t sub_2712DBCFC@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    if (4 * *a2 > a3)
    {
      v5 = 4 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 3) != 0)
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

void sub_2712DC228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DC2A0(void *result)
{
  *result = &unk_288113698;
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

uint64_t *sub_2712DC334(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LODWORD(v3) = *(v2 + 104);
    if (v3)
    {
      if (v3 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v3(*(v2 + 32), *(v2 + 24));
        LODWORD(v3) = *(v2 + 104);
        if (v3 == -1)
        {
          goto LABEL_8;
        }
      }
    }

    (off_28812EF20[v3])(&v5, v2 + 24);
LABEL_8:
    *(v2 + 104) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C406B89191FLL);
  }

  return a1;
}

uint64_t sub_2712DC3DC(uint64_t a1, void *a2)
{
  *a1 = &unk_288113698;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v6, 0, 4);
  v3 = *(v6 + 16);
  *(a1 + 24) = *v6;
  *(a1 + 40) = v3;
  v6 = 0;
  MEMORY[0x2743BF050]();
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  return a1;
}

void sub_2712DC5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DC60C(void *a1)
{
  *a1 = &unk_288113698;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DC6E0(uint64_t a1)
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

void sub_2712DC774(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DC7AC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    LODWORD(v2) = *(v1 + 104);
    if (v2)
    {
      if (v2 == -1)
      {
LABEL_9:
        *(v1 + 104) = -1;

        JUMPOUT(0x2743BF050);
      }
    }

    else
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v2(*(v1 + 32), *(v1 + 24));
        LODWORD(v2) = *(v1 + 104);
        if (v2 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    (off_28812EF20[v2])(&v3, v1 + 24);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DC864(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DC8C4(uint64_t a1, void *a2)
{
  v5 = a2[1];
  v4 = a2[2];
  v10 = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2717F1B04(&v8, (a2 + 4), 2, (a2 + 5), 2, 4);
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
  *(a1 + 40) = 4;
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

void sub_2712DCA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DCA1C(void *result)
{
  *result = &unk_288113698;
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

void sub_2712DCAB0(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
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
    if (2 * *a1 > a2)
    {
      v4 = 2 * *a1;
      sub_2712D669C("Image row byte stride ", &v5, " is invalid for the given size ");
    }

    if (a2)
    {
      sub_2712D6B3C("Image row byte stride ", &v5, " is invalid for pixel format ");
    }
  }

  *(a3 + 120) = 1;
}

void sub_2712DCE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
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

void *sub_2712DCEB4(void *result)
{
  *result = &unk_288113598;
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

uint64_t *sub_2712DCF48(uint64_t *a1)
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

    (off_28812EF40[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712DCFF0(uint64_t a1, void *a2)
{
  *a1 = &unk_288113598;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 5);
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

void sub_2712DD208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DD224(void *a1)
{
  *a1 = &unk_288113598;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DD2F8(uint64_t a1)
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

void sub_2712DD38C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DD3C4(uint64_t result)
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

    (off_28812EF40[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DD47C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DD4DC(uint64_t a1, void *a2)
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
  *(a1 + 40) = 5;
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

void sub_2712DD620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DD634(void *result)
{
  *result = &unk_288113598;
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

uint64_t sub_2712DD6C8@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    if (4 * *a2 > a3)
    {
      v5 = 4 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 3) != 0)
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

void sub_2712DDBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DDC6C(void *result)
{
  *result = &unk_288113558;
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

uint64_t *sub_2712DDD00(uint64_t *a1)
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

    (off_28812EF60[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712DDDA8(uint64_t a1, void *a2)
{
  *a1 = &unk_288113558;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 6);
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

void sub_2712DDFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DDFDC(void *a1)
{
  *a1 = &unk_288113558;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DE0B0(uint64_t a1)
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

void sub_2712DE144(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DE17C(uint64_t result)
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

    (off_28812EF60[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DE234(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE6EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE6EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE6EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE6EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DE294(uint64_t a1, void *a2)
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
  *(a1 + 40) = 6;
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

void sub_2712DE3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DE3EC(void *result)
{
  *result = &unk_288113558;
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

uint64_t sub_2712DE480@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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
    if (4 * *a2 > a3)
    {
      v5 = 4 * *a2;
      sub_2712D669C("Image row byte stride ", &v6, " is invalid for the given size ");
    }

    if ((a3 & 3) != 0)
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

void sub_2712DE9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DEA24(void *result)
{
  *result = &unk_288113458;
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

uint64_t *sub_2712DEAB8(uint64_t *a1)
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

    (off_28812EF80[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712DEB60(uint64_t a1, void *a2)
{
  *a1 = &unk_288113458;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 7);
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

void sub_2712DED78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DED94(void *a1)
{
  *a1 = &unk_288113458;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DEE68(uint64_t a1)
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

void sub_2712DEEFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DEF34(uint64_t result)
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

    (off_28812EF80[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DEFEC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DF04C(uint64_t a1, void *a2)
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
  *(a1 + 40) = 7;
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

void sub_2712DF190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DF1A4(void *result)
{
  *result = &unk_288113458;
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

uint64_t sub_2712DF238@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
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

    if ((result & 3) != 0)
    {
      sub_2712D6E10("Image base address ", &v7, " is invalid for pixel format ");
    }
  }

  *(a4 + 120) = 1;
  return result;
}

void sub_2712DF768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
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

void *sub_2712DF7E0(void *result)
{
  *result = &unk_288113358;
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

uint64_t *sub_2712DF874(uint64_t *a1)
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

    (off_28812EFA0[v3])(&v5, v2 + 48);
LABEL_8:
    *(v2 + 160) = -1;
    MEMORY[0x2743BF050](v2, 0x1093C40699DA9F5);
  }

  return a1;
}

uint64_t sub_2712DF91C(uint64_t a1, void *a2)
{
  *a1 = &unk_288113358;
  if (*a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  (*(MEMORY[0] + 72))(&v7, 0, 8);
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

void sub_2712DFB34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(v2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2712DFB50(void *a1)
{
  *a1 = &unk_288113358;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DFC24(uint64_t a1)
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

void sub_2712DFCB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2712DFCF0(uint64_t result)
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

    (off_28812EFA0[v2])(&v3, v1 + 48);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2712DFDA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIKN4cv3d2vl13visual_logger14ExternalBufferILNS1_3kit3img6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2712DFE08(uint64_t a1, void *a2)
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
  *(a1 + 40) = 8;
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

void sub_2712DFF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2712DFF60(void *result)
{
  *result = &unk_288113358;
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

void sub_2712DFFF4(_DWORD *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
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