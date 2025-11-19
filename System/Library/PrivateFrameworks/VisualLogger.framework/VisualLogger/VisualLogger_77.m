void sub_2716EE944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;
  a20 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_27131626C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2716EF844@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a3;
    v6 = a2;
    if (v4 == a1)
    {
      v10 = v9;
      (*(*v4 + 24))(v4, v9);
    }

    else
    {
      v10 = (*(*v4 + 16))(v4);
    }

    a2 = v6;
    a3 = v5;
  }

  else
  {
    v10 = 0;
  }

  sub_2715E1E0C(v9, a2, 5, a3);
  result = v10;
  if (v10 == v9)
  {
    result = (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    result = (*(*v10 + 40))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2716EF9A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713BF0D4(va);
  _Unwind_Resume(a1);
}

void sub_2716EF9B4(uint64_t a1, int a2)
{
  v6 = a2;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        DeviceGray = CGColorSpaceCreateDeviceGray();
        sub_2716EFFB0(&v5, DeviceGray);
      }

      sub_2716EFC80();
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    sub_2716EFFB0(&v5, DeviceRGB);
  }

  DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
  sub_2716EFFB0(&v5, DeviceCMYK);
}

void sub_2716EFB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2716EFB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2716EFB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2716EFB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2716EFB5C(int a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_2716EFFB0(&v4, cf);
}

void sub_2716EFF1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2743BF050](v2, 0x10B2C40EED050F3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2716EFF48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2716EFF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2716EFF54);
}

void sub_2716EFF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = a18;
  a18 = 0;
  if (v19)
  {
    sub_27184D728(&a18, v19);
    sub_271137AE8(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2716EFF54);
}

void sub_2716F01B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2716F0234(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2716F026C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2716F0290(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP12CGColorSpaceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP12CGColorSpaceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP12CGColorSpaceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP12CGColorSpaceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2716F051C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2716F059C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2716F05D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2716F05F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14CGDataConsumerEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14CGDataConsumerEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14CGDataConsumerEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14CGDataConsumerEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2716F0658(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/DataProviderRef.cpp", 44, "IsValid()", 9uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_13:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
LABEL_14:
      v8 = CGDataProviderCopyData(*a1);
      sub_2711C268C(&v9, v8);
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "IsValid()", 9, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_13;
  }

LABEL_15:
  abort();
}

uint64_t sub_2716F0854(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(a1 + *(*a1 - 24) + 32) & 2) != 0)
  {
    result = 0;
  }

  else
  {
    std::istream::tellg();
    std::istream::seekg();
    if (a3 < 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = &unk_288117780;
      __cxa_throw(exception, &unk_28812C000, std::exception::~exception);
    }

    std::istream::read();
    result = a1[1];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2716F0950(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(a1 + *(*a1 - 24) + 32) & 2) != 0)
  {
    a2 = 0;
  }

  else
  {
    std::istream::tellg();
    std::istream::seekg();
    if ((*(a1 + *(*a1 - 24) + 32) & 2) == 0)
    {
      std::istream::tellg();
      a2 = v6 - v7;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_2716F0A2C(void *a1)
{
  std::istream::seekg();
  v2 = (a1 + *(*a1 - 24));

  std::ios_base::clear(v2, 0);
}

void sub_2716F0A84(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 200, "IsValid()", 9uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v5 = qword_28087C408, v6 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_13:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
LABEL_14:
      DataProvider = CGImageGetDataProvider(*a2);
      v10 = DataProvider;
      if (DataProvider)
      {
        CFRetain(DataProvider);
      }

      sub_2715E3924(&v11, v10);
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_17;
    }
  }

  do
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    v5 += 16;
    v8(v7, "IsValid()", 9, "", 0);
  }

  while (v5 != v6);
  if (byte_28087C430)
  {
    goto LABEL_13;
  }

LABEL_17:
  abort();
}

unint64_t sub_2716F0C90(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_4:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 224, "IsValid()", 9uLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_13:
          qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
          goto LABEL_14;
        }
      }

      else
      {
        v4 = qword_28087C408;
        v5 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_41;
        }
      }

      do
      {
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "IsValid()", 9, "", 0);
      }

      while (v4 != v5);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }
  }

  else if (!v3)
  {
    goto LABEL_4;
  }

LABEL_14:
  v9 = *a1;
  v8 = *(a1 + 8);
  if (v8 && (atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (!v9)
    {
LABEL_17:
      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 170, "IsValid()", 9uLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v10 = qword_28087C408, v11 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_26:
          qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
          goto LABEL_27;
        }
      }

      else
      {
        v10 = qword_28087C408;
        v11 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_41;
        }
      }

      do
      {
        v13 = *v10;
        v12 = *(v10 + 8);
        v10 += 16;
        v13(v12, "IsValid()", 9, "", 0);
      }

      while (v10 != v11);
      if ((byte_28087C430 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_26;
    }
  }

  else if (!v9)
  {
    goto LABEL_17;
  }

LABEL_27:
  Width = CGImageGetWidth(*a1);
  v16 = *a1;
  v15 = *(a1 + 8);
  if (v15 && (atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else if (!v16)
  {
LABEL_30:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 175, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v17 = qword_28087C408, v18 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_39:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        return Width | (CGImageGetHeight(*a1) << 32);
      }
    }

    else
    {
      v17 = qword_28087C408;
      v18 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_41;
      }
    }

    do
    {
      v20 = *v17;
      v19 = *(v17 + 8);
      v17 += 16;
      v20(v19, "IsValid()", 9, "", 0);
    }

    while (v17 != v18);
    if (byte_28087C430)
    {
      goto LABEL_39;
    }

LABEL_41:
    abort();
  }

  return Width | (CGImageGetHeight(*a1) << 32);
}

void sub_2716F10A8(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 180, "IsValid()", 9uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_13:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
LABEL_14:
      CGImageGetBitsPerComponent(*a1);
      v8 = *a1;
      v9 = *(a1 + 8);
      if (v9 && (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else if (v8)
      {
        goto LABEL_27;
      }

      sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 195, "IsValid()", 9uLL, "", 0, sub_271852CA8);
      if (byte_28087C430 == 1)
      {
        if (byte_28087C438 != 1 || (v10 = qword_28087C408, v11 = qword_28087C410, qword_28087C408 == qword_28087C410))
        {
LABEL_26:
          qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
LABEL_27:
          ColorSpace = CGImageGetColorSpace(*a1);
          v13 = ColorSpace;
          if (ColorSpace)
          {
            CFRetain(ColorSpace);
          }

          sub_2716EFFB0(&v14, v13);
        }
      }

      else
      {
        v10 = qword_28087C408;
        v11 = qword_28087C410;
        if (qword_28087C408 == qword_28087C410)
        {
          goto LABEL_30;
        }
      }

      do
      {
        (*v10)(*(v10 + 8), "IsValid()", 9, "", 0);
        v10 += 16;
      }

      while (v10 != v11);
      if (byte_28087C430)
      {
        goto LABEL_26;
      }

LABEL_30:
      abort();
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_30;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "IsValid()", 9, "", 0);
  }

  while (v4 != v5);
  if ((byte_28087C430 & 1) == 0)
  {
    goto LABEL_30;
  }

  goto LABEL_13;
}

void sub_2716F2918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_27112F828(&a16);
  sub_27137F4D0(&a18);
  _Unwind_Resume(a1);
}

void sub_2716F2A8C(uint64_t a1, CFIndex a2)
{
  v15 = &unk_28810E7B8;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 52);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 52);
  }

  v7 = *(a1 + 24);
  v16 = v2;
  v17 = v3;
  v18 = v7;
  v19 = *(a1 + 32);
  v20 = v4;
  v21 = v5;
  v22 = v6;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v8 = v20;
    if (v22 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = v20;
    if (v22 != 1)
    {
      goto LABEL_12;
    }
  }

  if (v8)
  {
    v9 = v16;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v9 = v16;
      }
    }

    (*(*v9 + 88))(v9, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    v8 = v20;
  }

LABEL_12:
  switch(v21)
  {
    case 0:
    case 5:
    case 6:
    case 7:
    case 8:
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
    case 26:
    case 27:
    case 28:
    case 34:
    case 35:
    case 36:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v23 = &unk_28810E1F8;
      sub_2715EF504(&v15, &v24);
      a2 = 0;
      if (!v26 || !v27)
      {
        goto LABEL_55;
      }

      v10 = (v27 - 1) * v29 + (v26 - 1) * v28;
      goto LABEL_48;
    case 2:
      v23 = &unk_28810DB78;
      sub_2715EFA94(&v15, &v24);
      goto LABEL_30;
    case 3:
      v23 = &unk_28810D4B8;
      sub_271683A48(&v15, &v24);
LABEL_30:
      a2 = 0;
      if (!v26 || !v27)
      {
        goto LABEL_55;
      }

      v12 = (v27 - 1) * v29 + (v26 - 1) * v28;
      goto LABEL_42;
    case 4:
      v23 = &unk_28810D378;
      sub_271683F50(&v15, &v24);
      a2 = 0;
      if (!v26 || !v27)
      {
        goto LABEL_55;
      }

      v11 = (v27 - 1) * v29 + (v26 - 1) * v28;
      goto LABEL_54;
    case 21:
      v23 = &unk_28810E0B8;
      sub_2715EFF9C(&v15, &v24);
      goto LABEL_44;
    case 22:
      v23 = &unk_28810DFF8;
      sub_271689E08(&v15, &v24);
      goto LABEL_38;
    case 23:
      v23 = &unk_28810DF78;
      sub_27168A3A4(&v15, &v24);
      goto LABEL_38;
    case 24:
      v23 = &unk_28810DEF8;
      sub_27168A940(&v15, &v24);
      goto LABEL_50;
    case 25:
      v23 = &unk_28810DE38;
      sub_27168AEDC(&v15, &v24);
      goto LABEL_44;
    case 29:
      v23 = &unk_28810DC38;
      sub_27168C548(&v15, &v24);
      goto LABEL_44;
    case 30:
      v23 = &unk_28810DAF8;
      sub_27168CAE0(&v15, &v24);
      goto LABEL_38;
    case 31:
      v23 = &unk_28810DA38;
      sub_27168D07C(&v15, &v24);
      goto LABEL_38;
    case 32:
      v23 = &unk_28810D978;
      sub_27168D618(&v15, &v24);
      goto LABEL_50;
    case 33:
      v23 = &unk_28810D8F8;
      sub_27168DBB4(&v15, &v24);
      goto LABEL_44;
    case 37:
      v23 = &unk_28810D6B8;
      sub_27168F220(&v15, &v24);
LABEL_44:
      a2 = 0;
      if (v26 && v27 && v28)
      {
        v10 = (v27 - 1) * v30 + (v26 - 1) * v29 + v31 * (v28 - 1);
LABEL_48:
        a2 = (v10 + 1);
      }

      goto LABEL_55;
    case 38:
      v23 = &unk_28810D5F8;
      sub_27168F7B8(&v15, &v24);
      goto LABEL_38;
    case 39:
      v23 = &unk_28810D578;
      sub_27168FD54(&v15, &v24);
LABEL_38:
      a2 = 0;
      if (v26 && v27 && v28)
      {
        v12 = (v27 - 1) * v30 + (v26 - 1) * v29 + v31 * (v28 - 1);
LABEL_42:
        a2 = 2 * (v12 + 1);
      }

      goto LABEL_55;
    case 40:
      v23 = &unk_28810D438;
      sub_2716902F0(&v15, &v24);
LABEL_50:
      a2 = 0;
      if (v26 && v27 && v28)
      {
        v11 = (v27 - 1) * v30 + (v26 - 1) * v29 + v31 * (v28 - 1);
LABEL_54:
        a2 = 4 * (v11 + 1);
      }

LABEL_55:
      v13 = v25;
      if (v25)
      {
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = a2;
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          a2 = v14;
        }
      }

      break;
    default:
      break;
  }

  sub_27180A264(v8, a2);
}

void sub_2716F3A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27112F828(v18);
  sub_27112F828(&a9);
  sub_27112F828(&a18);
  _Unwind_Resume(a1);
}

void sub_271706ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  sub_2712C9E78(&a36);
  sub_271573610(&a46);
  sub_27112F828(&a34);
  sub_27112F828(&a22);
  sub_27170E8F4(v51 - 160);
  sub_271573610(&a24);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271709124()
{
  v1 = 0;
  v2[0] = v0;
  v2[1] = "Cannot copy CGImage of format ";
  v2[2] = v0;
  v2[3] = "Cannot copy CGImage of format ";
  v2[4] = "Cannot copy CGImage of format ";
  v3 = v2;
  sub_2711FE8BC(&v3);
  sub_27120AACC();
}

void sub_271709258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27170926C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271709280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271709294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717092A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2717092BC(uint64_t a1, int a2, uint64_t *a3)
{
  switch(a2)
  {
    case 1:
      sub_2715E37F8(&provider, *a3);
    case 2:
      sub_2715E37F8(&provider, *a3);
    case 3:
      sub_2715E37F8(&provider, *a3);
    case 4:
      sub_2715E37F8(&provider, *a3);
    case 5:
      sub_2715E37F8(&space, *a3);
    case 6:
      sub_2715E37F8(&space, *a3);
    case 7:
      sub_2715E37F8(&space, *a3);
    case 8:
      sub_2715E37F8(&space, *a3);
    case 9:
      sub_2715E37F8(&space, *a3);
    case 10:
      sub_2715E37F8(&space, *a3);
    case 11:
      sub_2715E37F8(&space, *a3);
    case 12:
      sub_2715E37F8(&space, *a3);
    case 13:
      sub_2715E37F8(&space, *a3);
    case 14:
      sub_2715E37F8(&space, *a3);
    case 15:
      sub_2715E37F8(&space, *a3);
    case 16:
      sub_2715E37F8(&space, *a3);
    case 17:
      sub_2715E37F8(&space, *a3);
    case 18:
      sub_2715E37F8(&space, *a3);
    case 19:
      sub_2715E37F8(&space, *a3);
    case 20:
      sub_2715E37F8(&space, *a3);
    case 21:
      sub_2715E37F8(&provider, *a3);
    case 22:
      sub_2715E37F8(&provider, *a3);
    case 23:
      sub_2715E37F8(&provider, *a3);
    case 24:
      sub_2715E37F8(&provider, *a3);
    case 25:
      sub_2715E37F8(&provider, *a3);
    case 26:
      sub_2715E37F8(&space, *a3);
    case 27:
      sub_2715E37F8(&space, *a3);
    case 28:
      sub_2715E37F8(&space, *a3);
    case 29:
      sub_2715E37F8(&provider, *a3);
    case 30:
      sub_2715E37F8(&provider, *a3);
    case 31:
      sub_2715E37F8(&provider, *a3);
    case 32:
      sub_2715E37F8(&provider, *a3);
    case 33:
      sub_2715E37F8(&provider, *a3);
    case 34:
      sub_2715E37F8(&space, *a3);
    case 35:
      sub_2715E37F8(&space, *a3);
    case 36:
      sub_2715E37F8(&space, *a3);
    case 37:
      sub_2715E37F8(&provider, *a3);
    case 38:
      sub_2715E37F8(&provider, *a3);
    case 39:
      sub_2715E37F8(&provider, *a3);
    case 40:
      sub_2715E37F8(&provider, *a3);
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_27170BC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    if (!atomic_fetch_add(&a16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a16->__on_zero_shared)(a16);
      std::__shared_weak_count::__release_weak(a16);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_27170BCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_27112F828(va1);
  sub_27112F828(va2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170BF20(int a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_2715E34B8(&v4, cf);
}

void sub_27170C044(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v2 < v1)
  {
    operator new();
  }

  v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
  if (v3 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v1 - *a1) >> 3);
    v5 = 2 * v4;
    if (2 * v4 <= v3 + 1)
    {
      v5 = v3 + 1;
    }

    if (v4 >= 0x555555555555555)
    {
      v6 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      if (v6 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v7 = 8 * ((v2 - *a1) >> 3);
    operator new();
  }

  sub_271135560();
}

void sub_27170C204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_27170C220(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v2 < v1)
  {
    operator new();
  }

  v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
  if (v3 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v1 - *a1) >> 3);
    v5 = 2 * v4;
    if (2 * v4 <= v3 + 1)
    {
      v5 = v3 + 1;
    }

    if (v4 >= 0x555555555555555)
    {
      v6 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      if (v6 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v7 = 8 * ((v2 - *a1) >> 3);
    operator new();
  }

  sub_271135560();
}

void sub_27170C3E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

size_t sub_27170C3FC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288133EE8[v3])(&v7, v1);
  }

  *(v1 + 24) = -1;
  v4 = *v2;
  result = strlen(*v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v4, result);
  }

  *(v1 + v6) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_27170C4F4(uint64_t *a1, uint64_t a2)
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
  v7 = **(v2 + 24);
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
    (off_288133EE8[v10])(&v13, v3);
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

void sub_27170C6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27170C714(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v14 = (8 * (&v5[-*a2] >> 3));
    v21 = v14;
    v22 = v14;
    v15 = *v3;
    v16 = strlen(*v3);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v14[23] = v16;
    if (v16)
    {
      memmove(v14, v15, v16);
    }

    v14[v17] = 0;
    v13 = v14 + 24;
    v18 = *(a2 + 8) - *a2;
    v19 = &v14[-v18];
    memcpy(&v21[-v18], *a2, v18);
    v20 = *a2;
    *a2 = v19;
    *(a2 + 8) = v22 + 24;
    *(a2 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *v3;
    v7 = strlen(v6);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v5[23] = v7;
    if (v7)
    {
      memmove(v5, v6, v7);
    }

    v5[v8] = 0;
    v13 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v13;
}

void sub_27170C95C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27170C978(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3[1])
  {
    v4 = *a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a3;
  if (v4)
  {
    v5 = 0;
  }

  HIDWORD(v13) = v5;
  LODWORD(v13) = 4;
  v6 = v13;
  LODWORD(v13) = 1;
  HIDWORD(v13) = a4;
  *result = a2;
  *(result + 8) = v6;
  *(result + 16) = HIDWORD(v5);
  *(result + 20) = v13;
  *(result + 28) = HIDWORD(a4);
  *(result + 32) = v5;
  *(result + 40) = a4;
  if (HIDWORD(v5) * HIDWORD(a4) == -1)
  {
    v7 = result;
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v8 = qword_28087C408, v9 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_14:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        result = v7;
        goto LABEL_15;
      }
    }

    else
    {
      v8 = qword_28087C408;
      v9 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v9);
    if (byte_28087C430)
    {
      goto LABEL_14;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27170CB40(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_27170CBCC(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4)
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

void sub_27170CD9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a1 = v4;
      a2 = v5;
    }

    v2 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = a1;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        a2 = v9;
        if (*(v8 + 49) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 49) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 0);
}

void *sub_27170CEE8(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v5;
      result = v4;
    }

    v2 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = result;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        result = v8;
        if (*(v9 + 49) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *result = 0;
        return result;
      }
    }
  }

  if (*(a2 + 49) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  return v7(v2, 1);
}

uint64_t sub_27170D0A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881077E0;
  a2[1] = v2;
  return result;
}

void sub_27170D0D4(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 32) != *a2 || *(v5 + 36) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810E1B8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v15 = *(v5 + 48);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v16 = *(v5 + 24);
    *(a3 + 40) = *(v5 + 40);
    *(a3 + 24) = v16;
    *(a3 + 48) = v15;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 48);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 48) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_27170D348(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_1ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_1ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_1ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_1ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27170D3C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_27170D4BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107578;
  a2[1] = v2;
  return result;
}

void sub_27170D4E8(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 32) != *a2 || *(v5 + 36) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810DB38;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v15 = *(v5 + 48);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v16 = *(v5 + 24);
    *(a3 + 40) = *(v5 + 40);
    *(a3 + 24) = v16;
    *(a3 + 48) = v15;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 48);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 48) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_27170D75C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_2ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_2ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_2ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_2ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27170D7D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_27170D8D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881072B8;
  a2[1] = v2;
  return result;
}

void sub_27170D8FC(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 32) != *a2 || *(v5 + 36) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D478;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v15 = *(v5 + 48);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v16 = *(v5 + 24);
    *(a3 + 40) = *(v5 + 40);
    *(a3 + 24) = v16;
    *(a3 + 48) = v15;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 48);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 48) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_27170DB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_3ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_3ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_3ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_3ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27170DBE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27170DF4C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_27170DEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_27170DF4C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878ED0))
  {
    sub_271605E38();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878EB8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_27170E064(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_27170E160(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107208;
  a2[1] = v2;
  return result;
}

void sub_27170E18C(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 32) != *a2 || *(v5 + 36) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D338;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v15 = *(v5 + 48);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v16 = *(v5 + 24);
    *(a3 + 40) = *(v5 + 40);
    *(a3 + 24) = v16;
    *(a3 + 48) = v15;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 48);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 48) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_27170E400(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_4ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_4ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_4ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_4ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27170E478(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 4)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27170E7DC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_27170E78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_27170E7DC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878EF0))
  {
    sub_271606328();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878ED8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_27170E8F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_27170E980(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810E0B8;
  v6 = *a3 == 0;
  if (*a3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (!a3[1])
  {
    v6 = 1;
  }

  v8 = !v6;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a4 << 32;
  }

  v10 = v9 | v7;
  v11 = *a3;
  if (!v8)
  {
    v11 = 0;
  }

  *(&v20 + 4) = v11;
  v12 = v11;
  LODWORD(v20) = 3;
  v13 = v20;
  v14 = HIDWORD(v11);
  LODWORD(v21) = 1;
  HIDWORD(v21) = v9 | v7;
  v15 = HIDWORD(v9);
  if (HIDWORD(v11) * HIDWORD(v9) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_20;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 44) = v21;
  *(a1 + 52) = v15;
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27170EBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170EBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170EBDC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a1 = v4;
      a2 = v5;
    }

    v2 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = a1;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        a2 = v9;
        if (*(v8 + 73) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 73) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 0);
}

void *sub_27170ED28(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v5;
      result = v4;
    }

    v2 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = result;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        result = v8;
        if (*(v9 + 73) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *result = 0;
        return result;
      }
    }
  }

  if (*(a2 + 73) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  return v7(v2, 1);
}

uint64_t sub_27170EEE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107788;
  a2[1] = v2;
  return result;
}

void sub_27170EF14(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810E078;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_27170F198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_21ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_21ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_21ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_21ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27170F210(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_27170F30C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107730;
  a2[1] = v2;
  return result;
}

void sub_27170F338(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810DFB8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_27170F5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_22ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_22ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_22ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_22ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27170F634(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 22)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27170FA2C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v19 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v19 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_27170F9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27170FA2C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879110))
  {
    sub_27160FEEC();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_2808790F8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_27170FB44(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_27170FBD0(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810DF78;
  v6 = *a3 == 0;
  if (*a3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (!a3[1])
  {
    v6 = 1;
  }

  v8 = !v6;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a4 << 32;
  }

  v10 = v9 | v7;
  v11 = *a3;
  if (!v8)
  {
    v11 = 0;
  }

  *(&v20 + 4) = v11;
  v12 = v11;
  LODWORD(v20) = 3;
  v13 = v20;
  v14 = HIDWORD(v11);
  LODWORD(v21) = 1;
  HIDWORD(v21) = v9 | v7;
  v15 = HIDWORD(v9);
  if (HIDWORD(v11) * HIDWORD(v9) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_20;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 44) = v21;
  *(a1 + 52) = v15;
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27170FE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27170FE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27170FE9C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881076D8;
  a2[1] = v2;
  return result;
}

void sub_27170FEC8(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810DF38;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_27171014C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_23ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_23ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_23ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_23ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2717101C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 23)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2717105BC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v19 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v19 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_27171056C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_2717105BC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879130))
  {
    sub_2716105B0();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280879118, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_2717106D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271710760(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810DEF8;
  v6 = *a3 == 0;
  if (*a3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (!a3[1])
  {
    v6 = 1;
  }

  v8 = !v6;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a4 << 32;
  }

  v10 = v9 | v7;
  v11 = *a3;
  if (!v8)
  {
    v11 = 0;
  }

  *(&v20 + 4) = v11;
  v12 = v11;
  LODWORD(v20) = 3;
  v13 = v20;
  v14 = HIDWORD(v11);
  LODWORD(v21) = 1;
  HIDWORD(v21) = v9 | v7;
  v15 = HIDWORD(v9);
  if (HIDWORD(v11) * HIDWORD(v9) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v16 = qword_28087C408, v17 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_19:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_20;
      }
    }

    else
    {
      v16 = qword_28087C408;
      v17 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_21;
      }
    }

    do
    {
      (*v16)(*(v16 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v16 += 16;
    }

    while (v16 != v17);
    if (byte_28087C430)
    {
      goto LABEL_19;
    }

LABEL_21:
    abort();
  }

LABEL_20:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 44) = v21;
  *(a1 + 52) = v15;
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  v18 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271710994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2717109A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271710A2C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107680;
  a2[1] = v2;
  return result;
}

void sub_271710A58(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810DEB8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_271710CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_24ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_24ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_24ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_24ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271710D54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 24)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27171114C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v10 | v8;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v18 = qword_28087C408, v19 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_28087C408;
      v19 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_2717110FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27171114C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879150))
  {
    sub_271611060();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280879138, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_271711264(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_2717112F0(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810DE38;
  v5 = *a3 != 0;
  if (a3[1])
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a4 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
  sub_27170C978(v10, a2, a3, v7 | (4 * v5));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  *(a1 + 56) = v10[2];
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_271711408(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107628;
  a2[1] = v2;
  return result;
}

void sub_271711434(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810DDF8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_2717116B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_25ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_25ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_25ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_25ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271711730(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271711B24(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271711AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271711B24(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879170))
  {
    sub_27161193C();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280879158, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_271711C3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271711CC8(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810DC38;
  v5 = *a3 != 0;
  if (a3[1])
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a4 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
  sub_27170C978(v10, a2, a3, v7 | (4 * v5));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  *(a1 + 56) = v10[2];
  *(a1 + 72) = 0;
  return a1;
}

void *sub_271711D70(void *result, unsigned __int8 *a2, _DWORD **a3)
{
  *result = a2;
  v3 = *a3;
  result[2] = *a3;
  v4 = a2[3];
  if (v4 == 255)
  {
    *v3 = *a2;
    return result;
  }

  if (!a2[3])
  {
    *v3 = 0;
    return result;
  }

  v5 = 255.0;
  v6 = 255.0 / v4;
  v7 = &unk_2718A4592 + 256 * v4;
  v8 = *a2;
  v9 = floorf(v6 * v8);
  if (v9 <= 255.0)
  {
    v5 = v9;
  }

  v10 = v5;
  v11 = v7[v5];
  if (v11 != v8)
  {
    if (v11 >= v8 || v10 == 255)
    {
      if (v11 <= v8 || v10 == 0)
      {
        goto LABEL_39;
      }

      LOBYTE(v10) = v10 - 1;
    }

    else
    {
      LOBYTE(v10) = v10 + 1;
    }
  }

  *v3 = v10;
  v13 = *(*result + 1);
  v14 = floorf(v6 * v13);
  if (v14 > 255.0)
  {
    v14 = 255.0;
  }

  v15 = v14;
  v16 = v7[v14];
  if (v16 != v13)
  {
    if (v16 >= v13 || v15 == 255)
    {
      if (v16 <= v13 || v15 == 0)
      {
        goto LABEL_39;
      }

      LOBYTE(v15) = v15 - 1;
    }

    else
    {
      LOBYTE(v15) = v15 + 1;
    }
  }

  *(result[2] + 1) = v15;
  v18 = *(*result + 2);
  v19 = floorf(v6 * v18);
  if (v19 > 255.0)
  {
    v19 = 255.0;
  }

  v20 = v19;
  v21 = v7[v19];
  if (v21 == v18)
  {
    goto LABEL_38;
  }

  if (v21 >= v18 || v20 == 255)
  {
    if (v21 > v18 && v20 != 0)
    {
      LOBYTE(v20) = v20 - 1;
      goto LABEL_38;
    }

LABEL_39:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 70, "", 0, "Should not happen", 0x11uLL, sub_271852CA8);
    abort();
  }

  LOBYTE(v20) = v20 + 1;
LABEL_38:
  *(result[2] + 2) = v20;
  *(result[2] + 3) = *(*result + 3);
  return result;
}

uint64_t sub_271711FA4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881075D0;
  a2[1] = v2;
  return result;
}

void sub_271711FD0(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810DBF8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_271712254(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_29ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_29ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_29ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_29ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2717122CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 29)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2717126C0(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271712670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_2717126C0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808791F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808791F0))
  {
    sub_271613D34();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_2808791D8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_2717127D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271712864(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810DAF8;
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

void sub_271712A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271712AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271712B30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107520;
  a2[1] = v2;
  return result;
}

void sub_271712B5C(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810DAB8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_271712DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_30ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_30ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_30ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_30ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271712E58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 30)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271713250(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271713200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271713250(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879210))
  {
    sub_2716147E4();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_2808791F8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_271713368(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271713464(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881074C8;
  a2[1] = v2;
  return result;
}

void sub_271713490(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D9F8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_271713714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_31ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_31ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_31ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_31ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_27171378C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 31)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271713B84(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271713B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271713B84(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879230))
  {
    sub_2716150C0();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280879218, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_271713C9C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271713D98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107470;
  a2[1] = v2;
  return result;
}

void sub_271713DC4(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D938;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_271714048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_32ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_32ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_32ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_32ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2717140C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2717144B8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271714468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_2717144B8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879250))
  {
    sub_2716155B0();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280879238, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_2717145D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_27171465C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810D8F8;
  v5 = *a3 != 0;
  if (a3[1])
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a4 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
  sub_27170C978(v10, a2, a3, v7 | (4 * v5));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  *(a1 + 56) = v10[2];
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_271714774(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107418;
  a2[1] = v2;
  return result;
}

void sub_2717147A0(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D8B8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_271714A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_33ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_33ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_33ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_33ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271714A9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 33)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271714E90(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271714E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271714E90(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879270))
  {
    sub_271615AA0();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280879258, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_271714FA8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271715034(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  *a1 = &unk_28810D6B8;
  v5 = *a3 != 0;
  if (a3[1])
  {
    v6 = *a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *a4 << 32;
  if (v6)
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
  sub_27170C978(v10, a2, a3, v7 | (4 * v5));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = v10[1];
  *(a1 + 24) = v10[0];
  *(a1 + 40) = v8;
  *(a1 + 56) = v10[2];
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_27171514C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881073C0;
  a2[1] = v2;
  return result;
}

void sub_271715178(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D678;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_2717153FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_37ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_37ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_37ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_37ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271715474(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 37)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271715868(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271715818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271715868(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808792F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808792F0))
  {
    sub_271618284();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_2808792D8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_271715980(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271715A7C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107368;
  a2[1] = v2;
  return result;
}

void sub_271715AA8(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D5B8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_271715D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_38ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_38ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_38ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_38ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271715DA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 38)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_27171619C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_27171614C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_27171619C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879310))
  {
    sub_271618774();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_2808792F8, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_2717162B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271716340(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810D578;
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

void sub_271716574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271716588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27171660C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107310;
  a2[1] = v2;
  return result;
}

void sub_271716638(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D538;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_2717168BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_39ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_39ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_39ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_39ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_271716934(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 39)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_271716D2C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_271716CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_271716D2C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879330))
  {
    sub_271618E38();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280879318, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

uint64_t sub_271716E44(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_271716ED0(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810D438;
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

void sub_271717104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_271717118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27171719C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107260;
  a2[1] = v2;
  return result;
}

void sub_2717171C8(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (*(v5 + 56) != *a2 || *(v5 + 60) != a2[1])
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreGraphics/src/ImageRef.cpp", 542, "size == image.Size()", 0x14uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v6 = qword_28087C408, v7 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_10:
        qword_28087C420(*algn_28087C428, "size == image.Size()", 20, "", 0);
        v5 = *(a1 + 8);
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_28087C408;
      v7 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "size == image.Size()", 20, "", 0);
    }

    while (v6 != v7);
    if (byte_28087C430)
    {
      goto LABEL_10;
    }

LABEL_20:
    abort();
  }

LABEL_11:
  *a3 = &unk_28810D3F8;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  if (!v11)
  {
    v16 = *(v5 + 72);
    *(a3 + 8) = v10;
    *(a3 + 16) = 0;
    v17 = *(v5 + 24);
    v18 = *(v5 + 40);
    *(a3 + 56) = *(v5 + 56);
    *(a3 + 40) = v18;
    *(a3 + 24) = v17;
    *(a3 + 72) = v16;
    return;
  }

  p_shared_owners = &v11->__shared_owners_;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v5 + 72);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v5 + 24);
  v15 = *(v5 + 40);
  *(a3 + 56) = *(v5 + 56);
  *(a3 + 40) = v15;
  *(a3 + 24) = v14;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 72) = v13;
  if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v11->__on_zero_shared)(v11);

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t sub_27171744C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_40ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_40ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_40ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZNK4cv3d3kit2cg8ImageRef13CopyIntoImageENS0_3img9ImageViewILNS3_6FormatE0ENS3_13DynamicBufferELNS3_10MutabilityE1EEEENK3$_0clINS4_ILS5_40ES6_LS7_1EEEEEvRKT_EUlRKNS_3esn3arr5SizeTILj2ELNSG_8SizeTypeE0EvEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_2717174C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 40)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2717178BC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_27171786C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_2717178BC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280879350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280879350))
  {
    sub_2716198E8();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280879338, " from an ", &unk_280878DD8, " but the image is of incompatible format ");
}

void sub_2717179D4(_DWORD *a1)
{
  v1[10] = &unk_288110618;
  sub_2717BB5D0(a1, v1);
  operator new();
}

void sub_271717BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_271306E9C(&a9);
  _Unwind_Resume(a1);
}

void sub_271717C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_27179E364(va);
  _Unwind_Resume(a1);
}

void sub_271717C58(_DWORD *a1)
{
  v1[10] = &unk_288110478;
  sub_2717BB7DC(a1, v1);
  operator new();
}

void sub_271717E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_2713050B8(&a9);
  _Unwind_Resume(a1);
}

void sub_271717EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_271717EE0(_DWORD *a1)
{
  v10 = &unk_288111528;
  sub_2717D7028(v11, a1);
  v2 = v11[0];
  v1 = &unk_288112C18;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_271718194(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_2717181C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_2717181DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717181F4(_DWORD *a1)
{
  v1[14] = &unk_288111478;
  sub_2717C0830(a1, v1);
  operator new();
}

void sub_27171843C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_271318A3C(&a9);
  _Unwind_Resume(a1);
}

void sub_271718484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717AD3E8(va);
  _Unwind_Resume(a1);
}

void sub_271718498(_DWORD *a1)
{
  v10 = &unk_2881113C8;
  sub_2717D71EC(v11, a1);
  v2 = v11[0];
  v1 = &unk_288112B18;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_27171874C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271718780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271718794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717187AC(_DWORD *a1)
{
  v1[14] = &unk_2881112D8;
  sub_2717C1094(a1, v1);
  operator new();
}

void sub_2717189F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_271718A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_271718A58(_DWORD *a1)
{
  v1[14] = &unk_288110FF8;
  sub_2717C2188(a1, v1);
  operator new();
}

void sub_271718CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_271718CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_271718D04(_DWORD *a1)
{
  v10 = &unk_288110E58;
  sub_2717D73B0(v11, a1);
  v2 = v11[0];
  v1 = &unk_288112798;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_271718FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271718FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271719000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271719018(_DWORD *a1)
{
  v1[14] = &unk_288110D68;
  sub_2717C2A08(a1, v1);
  operator new();
}

void sub_271719260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_27131FB0C(&a9);
  _Unwind_Resume(a1);
}

void sub_2717192A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717B34FC(va);
  _Unwind_Resume(a1);
}

void sub_2717192BC(_DWORD *a1)
{
  v10 = &unk_288110C78;
  sub_2717D757C(v11, a1);
  v2 = v11[0];
  v1 = &unk_288112698;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_271719570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_2717195A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_2717195B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_2717195D0(_DWORD *a1)
{
  v1[14] = &unk_288110BA8;
  sub_2717C327C(a1, v1);
  operator new();
}

void sub_27171981C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_271719864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_27171987C(_DWORD *a1)
{
  v1[14] = &unk_2881108A8;
  sub_2717C4370(a1, v1);
  operator new();
}

void sub_271719AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_271719B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_271719B28(_DWORD *a1)
{
  v10 = &unk_2881107B8;
  sub_2717D73B0(v11, a1);
  v2 = v11[0];
  v1 = &unk_288112398;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_271719DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271719E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_271719E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_271719E3C(_DWORD *a1)
{
  v1[14] = &unk_288110708;
  sub_2717C4BF0(a1, v1);
  operator new();
}

void sub_27171A084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_271326E38(&a9);
  _Unwind_Resume(a1);
}

void sub_27171A0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717B960C(va);
  _Unwind_Resume(a1);
}

void sub_27171A0E0(_DWORD *a1)
{
  v10 = &unk_288110568;
  sub_2717D757C(v11, a1);
  v2 = v11[0];
  v1 = &unk_288112218;
  v3 = v11[1];
  v4 = v11[2];
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v9 = v16;
  v8 = v15;
  operator new();
}

void sub_27171A394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_27112F828(v2);
  sub_27112F828(va1);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27171A3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271308D7C(va);
  _Unwind_Resume(a1);
}

void sub_27171A3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27171A3F4(void *result, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      v3 = "per-vertex";
      v4 = result;
      v5 = 10;
    }

    else
    {
      v3 = "unknown";
      v4 = result;
      v5 = 7;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v3 = "per-face";
    v4 = result;
    v5 = 8;
LABEL_8:
    sub_271120E64(result, v3, v5);
    return v4;
  }

  if (v2 == 3)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMesh.cpp", 45, "", 0, "Unsupported type", 0x10uLL, sub_271852CA8);
    abort();
  }

  return result;
}

void sub_27171AAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17)
{
  if (*(v17 - 113) < 0)
  {
    operator delete(*(v17 - 136));
  }

  sub_27151CE44(a17);
  _Unwind_Resume(a1);
}

void sub_27171AAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(v16 - 136);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_27171AB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_27137F4D0(&a24);
  _Unwind_Resume(a1);
}

void sub_27171AB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2711B17FC((v11 - 136));
  sub_27151CE44(a10);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

void sub_27171AB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27151CE44(a10);
  sub_27137F4D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27171ABA4(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    *result = 0;
    *(result + 8) = 0;
    v2 = 0x100000000;
    *(result + 16) = 0;
    *(result + 24) = 0x100000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0x100000000;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0x100000000;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 128) = 0;
    *(result + 136) = 0x100000000;
    *(result + 144) = 0;
    *(result + 152) = 0;
    *(result + 160) = 0;
    *(result + 168) = 0x100000000;
    *(result + 176) = 0;
    *(result + 184) = 0;
    *(result + 192) = 0;
    *(result + 200) = 0x100000000;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0x100000000;
    *(result + 240) = 0;
    *(result + 248) = 0;
    *(result + 256) = 0;
    *(result + 264) = 0x100000000;
    *(result + 272) = 0;
    *(result + 280) = 0;
    *(result + 288) = 0;
    *(result + 296) = 0;
    *(result + 304) = 0x100000000;
  }

  else
  {
    if (a2 == 2)
    {
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/include/Kit/Mesh/TriMeshAllocator.h", 153, "", 0, "Invalid mode", 0xCuLL, sub_271852CA8);
      abort();
    }

    v2 = 0;
    *(result + 280) = 0u;
    *(result + 296) = 0u;
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0;
  }

  *(result + 312) = 0;
  *(result + 320) = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 344) = v2;
  *(result + 352) = 0;
  *(result + 356) = 0;
  *(result + 380) = 0;
  return result;
}

void sub_27171ACBC(void *a1, uint64_t **a2)
{
  sub_271120E64(a1, "TriMeshData{\n", 13);
  v4 = sub_271120E64(a1, "vertices={", 10);
  LODWORD(v22) = 0;
  sub_27171C2EC(&v21, a2);
  if (v22 != -1)
  {
    v16 = v17;
    (off_288133FD8[v22])(&__p, &v16, &v21);
    if (v22 != -1)
    {
      (off_288133FC0[v22])(&v16, &v21);
    }

    if ((v20 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v6 = v20;
    }

    else
    {
      v6 = v19;
    }

    v7 = sub_271120E64(v4, p_p, v6);
    sub_271120E64(v7, "}\n", 2);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    v8 = sub_271120E64(a1, "faces={", 7);
    LODWORD(v22) = 0;
    sub_27171C5A4(&v21, a2 + 14);
    if (v22 != -1)
    {
      v16 = v17;
      (off_288133FD8[v22])(&__p, &v16, &v21);
      if (v22 != -1)
      {
        (off_288133FC0[v22])(&v16, &v21);
      }

      if ((v20 & 0x80u) == 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      if ((v20 & 0x80u) == 0)
      {
        v10 = v20;
      }

      else
      {
        v10 = v19;
      }

      v11 = sub_271120E64(v8, v9, v10);
      sub_271120E64(v11, "}\n", 2);
      if (v20 < 0)
      {
        operator delete(__p);
      }

      v12 = sub_271120E64(a1, "normals={", 9);
      LODWORD(v22) = 0;
      sub_27171C2EC(&v21, a2 + 9);
      if (v22 != -1)
      {
        v16 = v17;
        (off_288133FD8[v22])(&__p, &v16, &v21);
        if (v22 != -1)
        {
          (off_288133FC0[v22])(&v16, &v21);
        }

        if ((v20 & 0x80u) == 0)
        {
          v13 = &__p;
        }

        else
        {
          v13 = __p;
        }

        if ((v20 & 0x80u) == 0)
        {
          v14 = v20;
        }

        else
        {
          v14 = v19;
        }

        v15 = sub_271120E64(v12, v13, v14);
        sub_271120E64(v15, "}\n", 2);
        if (v20 < 0)
        {
          operator delete(__p);
        }

        sub_271120E64(a1, "normals_type=", 13);
        LODWORD(v22) = 0;
        sub_2713CADFC();
      }

      sub_2711308D4();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_27171C048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a31 < 0)
  {
    operator delete(__p);
    sub_271130878(&a19);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_27171C2EC(uint64_t a1, uint64_t **a2)
{
  if (a2[1] - *a2 <= 11)
  {
    v24 = a1;
    v25 = "{}";
    v26 = a1;
    v27 = "{}";
    v28 = "{}";
    v3 = *(a1 + 24);
    if (v3 != -1)
    {
      v18 = &v24;
      return (*(&off_288133FF0 + v3))(&v18, a1);
    }

LABEL_18:
    sub_2711308D4();
  }

  v24 = a1;
  v25 = "{";
  v26 = a1;
  v27 = "{";
  v28 = "{";
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_18;
  }

  v18 = &v24;
  (*(&off_288134008 + v5))(&v18, a1);
  v7 = *a2;
  v8 = **a2;
  v23 = *(*a2 + 2);
  v22 = v8;
  v18 = 0x100000003;
  v19 = 3;
  v20 = &v22;
  v21 = 0;
  sub_27174950C(&v18, __p);
  v24 = a1;
  v25 = __p;
  v26 = a1;
  v27 = __p;
  v28 = __p;
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    sub_2711308D4();
  }

  v29 = &v24;
  (off_288133FA8[v9])(&v29, a1);
  if (v17 < 0)
  {
    operator delete(__p[0]);
    v10 = a2[1];
    v11 = (v7 + 12);
    if (v11 != v10)
    {
LABEL_12:
      do
      {
        v24 = a1;
        v25 = ",";
        v26 = a1;
        v27 = ",";
        v28 = ",";
        v12 = *(a1 + 24);
        if (v12 == -1)
        {
          goto LABEL_18;
        }

        v18 = &v24;
        (*(&off_288134008 + v12))(&v18, a1);
        v13 = *v11;
        v23 = *(v11 + 2);
        v22 = v13;
        v18 = 0x100000003;
        v19 = 3;
        v20 = &v22;
        v21 = 0;
        sub_27174950C(&v18, __p);
        v24 = a1;
        v25 = __p;
        v26 = a1;
        v27 = __p;
        v28 = __p;
        v14 = *(a1 + 24);
        if (v14 == -1)
        {
          sub_2711308D4();
        }

        v29 = &v24;
        (off_288133FA8[v14])(&v29, a1);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = (v11 + 12);
      }

      while (v11 != v10);
    }
  }

  else
  {
    v10 = a2[1];
    v11 = (v7 + 12);
    if (v11 != v10)
    {
      goto LABEL_12;
    }
  }

  v24 = a1;
  v25 = "}";
  v26 = a1;
  v27 = "}";
  v28 = "}";
  v15 = *(a1 + 24);
  if (v15 == -1)
  {
    goto LABEL_18;
  }

  v18 = &v24;
  return (*(&off_288134008 + v15))(&v18, a1);
}

void sub_27171C580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27171C5A4(uint64_t a1, uint64_t **a2)
{
  if (a2[1] - *a2 <= 11)
  {
    v24 = a1;
    v25 = "{}";
    v26 = a1;
    v27 = "{}";
    v28 = "{}";
    v3 = *(a1 + 24);
    if (v3 != -1)
    {
      v18 = &v24;
      return (*(&off_288133FF0 + v3))(&v18, a1);
    }

LABEL_18:
    sub_2711308D4();
  }

  v24 = a1;
  v25 = "{";
  v26 = a1;
  v27 = "{";
  v28 = "{";
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_18;
  }

  v18 = &v24;
  (*(&off_288134008 + v5))(&v18, a1);
  v7 = *a2;
  v8 = **a2;
  v23 = *(*a2 + 2);
  v22 = v8;
  v18 = 0x100000003;
  v19 = 3;
  v20 = &v22;
  v21 = 0;
  sub_271749108(&v18, __p);
  v24 = a1;
  v25 = __p;
  v26 = a1;
  v27 = __p;
  v28 = __p;
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    sub_2711308D4();
  }

  v29 = &v24;
  (off_288133FA8[v9])(&v29, a1);
  if (v17 < 0)
  {
    operator delete(__p[0]);
    v10 = a2[1];
    v11 = (v7 + 12);
    if (v11 != v10)
    {
LABEL_12:
      do
      {
        v24 = a1;
        v25 = ",";
        v26 = a1;
        v27 = ",";
        v28 = ",";
        v12 = *(a1 + 24);
        if (v12 == -1)
        {
          goto LABEL_18;
        }

        v18 = &v24;
        (*(&off_288134008 + v12))(&v18, a1);
        v13 = *v11;
        v23 = *(v11 + 2);
        v22 = v13;
        v18 = 0x100000003;
        v19 = 3;
        v20 = &v22;
        v21 = 0;
        sub_271749108(&v18, __p);
        v24 = a1;
        v25 = __p;
        v26 = a1;
        v27 = __p;
        v28 = __p;
        v14 = *(a1 + 24);
        if (v14 == -1)
        {
          sub_2711308D4();
        }

        v29 = &v24;
        (off_288133FA8[v14])(&v29, a1);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = (v11 + 12);
      }

      while (v11 != v10);
    }
  }

  else
  {
    v10 = a2[1];
    v11 = (v7 + 12);
    if (v11 != v10)
    {
      goto LABEL_12;
    }
  }

  v24 = a1;
  v25 = "}";
  v26 = a1;
  v27 = "}";
  v28 = "}";
  v15 = *(a1 + 24);
  if (v15 == -1)
  {
    goto LABEL_18;
  }

  v18 = &v24;
  return (*(&off_288134008 + v15))(&v18, a1);
}

void sub_27171C838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27171C85C(uint64_t a1, unsigned __int8 **a2)
{
  if (a2[1] - *a2 <= 0)
  {
    v15 = a1;
    v16 = "{}";
    v17 = a1;
    v18 = "{}";
    v19 = "{}";
    v9 = *(a1 + 24);
    if (v9 != -1)
    {
      v14.__r_.__value_.__r.__words[0] = &v15;
      return (*(&off_288133FF0 + v9))(&v14, a1);
    }

    goto LABEL_19;
  }

  v15 = a1;
  v16 = "{";
  v17 = a1;
  v18 = "{";
  v19 = "{";
  v3 = *(a1 + 24);
  if (v3 == -1)
  {
    goto LABEL_19;
  }

  v14.__r_.__value_.__r.__words[0] = &v15;
  (*(&off_288134008 + v3))(&v14, a1);
  v5 = *a2;
  std::to_string(&v14, **a2);
  v15 = a1;
  v16 = &v14;
  v17 = a1;
  v18 = &v14;
  v19 = &v14;
  v6 = *(a1 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v20 = &v15;
  (off_288133FA8[v6])(&v20, a1);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    v7 = a2[1];
    v8 = (v5 + 1);
    if (v8 == v7)
    {
      goto LABEL_16;
    }

LABEL_12:
    while (1)
    {
      v15 = a1;
      v16 = ",";
      v17 = a1;
      v18 = ",";
      v19 = ",";
      v11 = *(a1 + 24);
      if (v11 == -1)
      {
        break;
      }

      v14.__r_.__value_.__r.__words[0] = &v15;
      (*(&off_288134008 + v11))(&v14, a1);
      std::to_string(&v14, *v8);
      v15 = a1;
      v16 = &v14;
      v17 = a1;
      v18 = &v14;
      v19 = &v14;
      v12 = *(a1 + 24);
      if (v12 == -1)
      {
        sub_2711308D4();
      }

      v20 = &v15;
      (off_288133FA8[v12])(&v20, a1);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (++v8 == v7)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    sub_2711308D4();
  }

  v7 = a2[1];
  v8 = (v5 + 1);
  if (v8 != v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v15 = a1;
  v16 = "}";
  v17 = a1;
  v18 = "}";
  v19 = "}";
  v13 = *(a1 + 24);
  if (v13 == -1)
  {
    goto LABEL_19;
  }

  v14.__r_.__value_.__r.__words[0] = &v15;
  return (*(&off_288134008 + v13))(&v14, a1);
}

void sub_27171CA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27171CAAC(uint64_t a1, uint64_t *a2)
{
  if ((*a1 & 1) == 0)
  {
    v15 = *(a1 + 8);
    v16 = ",";
    v17 = v15;
    v18 = ",";
    v19 = ",";
    v4 = *(v15 + 24);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v9 = &v15;
    (*(&off_288134008 + v4))(&v9);
  }

  *a1 = 0;
  v5 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 2);
  v9 = 0x100000003;
  v10 = 3;
  v11 = &v13;
  v12 = 0;
  sub_27174950C(&v9, __p);
  v15 = v5;
  v16 = __p;
  v17 = v5;
  v18 = __p;
  v19 = __p;
  v6 = *(v5 + 24);
  if (v6 == -1)
  {
    sub_2711308D4();
  }

  v20 = &v15;
  (off_288133FA8[v6])(&v20, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27171CBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_27171CBE8(unint64_t result)
{
  if (result >= 2)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Mesh/src/TriMeshAllocator.cpp", 42, "", 0, "unknown allocator mode", 0x16uLL, sub_271852CA8);
    abort();
  }

  return result;
}