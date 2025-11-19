void sub_26149A288(void *a1)
{
  *a1 = &unk_2873D1228;
  v1 = a1[6];
  if (v1)
  {
    MEMORY[0x2667045B0](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_26149A304(void *a1)
{
  *a1 = &unk_2873D1228;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x2667045B0](v2, 0x1000C8052888210);
  }

  return a1;
}

void sub_26149A360(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1228;
  v2 = (a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = (v2 * a2) >> 5;
  operator new[]();
}

void sub_26149A3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1228;
  v3 = (a2 + 31) & 0xFFFFFFFFFFFFFFE0;
  *(a1 + 16) = a2;
  *(a1 + 24) = v3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = (v3 * a3) >> 5;
  operator new[]();
}

void *sub_26149A480(void *result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (((a3 | a2) & 0x8000000000000000) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "topI and leftJ must be nonnegative");
    goto LABEL_16;
  }

  if (!a4 || !a5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "height and width must be at least 1");
LABEL_16:
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  if (a4 + a2 > result[2] || (v5 = a5 + a3, a5 + a3 > result[4]))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "top + height and left + width must be <= matrix dimension");
    goto LABEL_16;
  }

  if (v5 > a3)
  {
    v6 = result[3];
    v7 = a2 + v6 * a3;
    do
    {
      if (a4 + a2 > a2)
      {
        v8 = result[6];
        v9 = v7;
        v10 = a4;
        do
        {
          *(v8 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v9;
          ++v9;
          --v10;
        }

        while (v10);
      }

      ++a3;
      v7 += v6;
    }

    while (a3 != v5);
  }

  return result;
}

uint64_t *sub_26149A5B4(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_26149A840((a1 + 1), 16);
  return a1;
}

void sub_26149A6F8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x266704550](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_26149A720(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_26149A840(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x266704500](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_26149A8FC(a1);
  return a1;
}

void sub_26149A8D4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_26149A8FC(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_26149AA04(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_26149AA60(exception, a1);
  __cxa_throw(exception, off_279AD85E0, MEMORY[0x277D825F8]);
}

std::logic_error *sub_26149AA60(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t MRCSegmentationMaskGetTypeID()
{
  if (qword_27FEB4198 != -1)
  {
    dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
  }

  return qword_27FEB41A0;
}

uint64_t sub_26149AAE8()
{
  v3 = *MEMORY[0x277D85DE8];
  if (qword_281EB25B8)
  {
    _os_assumes_log();
  }

  if (qword_27FEB41A0)
  {
    _os_assumes_log();
  }

  qword_281EB25B8 = "MRCSegmentationMask";
  qword_27FEB41A0 = _CFRuntimeRegisterClass();
  v2 = 0;
  sub_2614BAFE0(qword_27FEB41A0, v1);
  return sub_26147B420(v1);
}

void sub_26149AB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26147B420(va);
  _Unwind_Resume(a1);
}

CFStringRef sub_26149ABAC(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"<%s %p> {\n", "MRCSegmentationMask", cf);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    data %p\n", cf[2]);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    dataDeallocatorContext %p\n", cf[3]);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    dataDeallocator %p\n", cf[4]);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    dataType %ld\n", cf[5]);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    width %zu\n", cf[6]);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    height %zu\n", cf[7]);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    bytesPerRow %zu\n", cf[8]);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    scalingMode %ld\n", cf[9]);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    symbologies %@\n", atomic_load_explicit(cf + 10, memory_order_acquire));
    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"}");
    Copy = CFStringCreateCopy(v3, atomic_load_explicit(&Mutable, memory_order_acquire));
    sub_2614959D0(&Mutable);
    if (Copy)
    {
      return Copy;
    }
  }

  else
  {
    sub_2614959D0(&Mutable);
  }

  return CFStringCreateWithFormat(v3, 0, @"<%s %p>", "MRCSegmentationMask", cf);
}

void sub_26149AE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2614959D0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_26149AE14(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  v3 = 0x9DDFEA08EB382D69 * ((((((cf + 16) >> 3) & 0x3FFFFFF) << 6) | 8) ^ ((cf + 16) >> 32));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (((cf + 16) >> 32) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (((cf + 16) >> 32) ^ (v3 >> 47) ^ v3)) >> 47));
}

BOOL sub_26149AED4(CFTypeRef cf, CFTypeRef a2)
{
  if (!cf)
  {
    goto LABEL_5;
  }

  v4 = CFGetTypeID(cf);
  if (qword_27FEB4198 != -1)
  {
    dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
  }

  if (v4 != qword_27FEB41A0)
  {
    _os_assumes_log();
    if (!a2)
    {
      return cf == a2;
    }
  }

  else
  {
LABEL_5:
    if (!a2)
    {
      return cf == a2;
    }
  }

  v5 = CFGetTypeID(a2);
  if (qword_27FEB4198 != -1)
  {
    dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
  }

  if (v5 != qword_27FEB41A0)
  {
    _os_assumes_log();
  }

  return cf == a2;
}

atomic_ullong *sub_26149AFCC(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }

    v3 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v3 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  v4 = cf[4];
  if (v4)
  {
    v4(cf[2], cf[3]);
  }

  return sub_261476A0C(cf + 10);
}

unint64_t MRCSegmentationMaskCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CFTypeRef cf)
{
  if (qword_27FEB4198 != -1)
  {
    dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
  }

  Instance = _CFRuntimeCreateInstance();
  v18 = Instance;
  if (Instance)
  {
    v26 = a7;
    v19 = CFGetTypeID(Instance);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v19 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }

    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = a4;
    v18[6] = a5;
    v18[7] = a6;
    v18[8] = v26;
    v18[9] = a8;
    if (cf)
    {
      v20 = CFRetain(cf);
    }

    else
    {
      _os_assumes_log();
      v20 = 0;
    }

    v18[10] = v20;
    if (!v18[2])
    {
      _os_assumes_log();
    }

    v21 = v18[6];
    if (!v21 || !v18[7])
    {
      _os_assumes_log();
      v21 = v18[6];
    }

    if (v18[8] < v21)
    {
      _os_assumes_log();
    }

    v22 = CFGetTypeID(v18);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v22 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  v27 = v18;
  v23 = atomic_exchange(&v27, 0);
  v24 = atomic_exchange(&v27, 0);
  if (v24)
  {
    CFRelease(v24);
  }

  return v23;
}

uint64_t MRCSegmentationMaskGetData(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 2);
}

uint64_t MRCSegmentationMaskGetDataType(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 5);
}

uint64_t MRCSegmentationMaskGetWidth(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 6);
}

uint64_t MRCSegmentationMaskGetHeight(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 7);
}

uint64_t MRCSegmentationMaskGetBytesPerRow(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 8);
}

uint64_t MRCSegmentationMaskGetScalingMode(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  return *(cf + 9);
}

unint64_t MRCSegmentationMaskGetSymbologies(atomic_ullong *cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_27FEB4198 != -1)
    {
      dispatch_once_f(&qword_27FEB4198, 0, sub_26149AAE8);
    }

    if (v2 != qword_27FEB41A0)
    {
      _os_assumes_log();
    }
  }

  return atomic_load_explicit(cf + 10, memory_order_acquire);
}

void sub_26149B6A0(uint64_t *a1)
{
  if (a1[3] == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = a1[4];
      if (v3)
      {
        v4 = a1[5];
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = 0;
          v8 = v3 - 1;
          v9 = v4 - 1;
          do
          {
            for (i = 0; i != v3; ++i)
            {
              if (i >= v8)
              {
                v11 = v8;
              }

              else
              {
                v11 = i;
              }

              if (i <= v5)
              {
                v12 = v5;
              }

              else
              {
                v12 = i;
              }

              if (v7 >= v9)
              {
                v13 = v9;
              }

              else
              {
                v13 = v7;
              }

              if (v7 <= v6)
              {
                v14 = v6;
              }

              else
              {
                v14 = v7;
              }

              if (*(v2 + 4 * i) >= 0.1)
              {
                v6 = v14;
                v9 = v13;
                v5 = v12;
                v8 = v11;
              }
            }

            ++v7;
            v2 += a1[6];
          }

          while (v7 != v4);
          if (v8 <= v5 && v9 <= v6)
          {
            v15 = (v6 - v9 + 1);
            v16 = (v5 - v8 + 1);
            v17 = v9;
            v18 = v8;
            v21.origin.x = v8;
            v21.origin.y = v9;
            v21.size.width = v16;
            v21.size.height = v15;
            v19 = CGRectGetWidth(v21) * -0.25;
            v22.origin.x = v18;
            v22.origin.y = v17;
            v22.size.width = v16;
            v22.size.height = v15;
            v20 = CGRectGetHeight(v22) * -0.25;
            v23.origin.x = v18;
            v23.origin.y = v17;
            v23.size.width = v16;
            v23.size.height = v15;
            v24 = CGRectInset(v23, v19, v20);
            v25.size.width = a1[4];
            v25.size.height = a1[5];
            v25.origin.x = 0.0;
            v25.origin.y = 0.0;
            CGRectIntersection(v24, v25);
          }
        }
      }
    }
  }
}

uint64_t *sub_26149B834(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (*(v2 + 8) == 1)
    {
      sub_26149B8D0(v2);
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

atomic_ullong *sub_26149B8D0(atomic_ullong *a1)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    VTPixelTransferSessionInvalidate(atomic_load_explicit(a1, memory_order_acquire));
  }

  return sub_26149B918(a1);
}

atomic_ullong *sub_26149B918(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t sub_26149B94C(unint64_t *a1, atomic_ullong *a2, uint64_t a3, uint64_t a4)
{
  v54[2] = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit(a2, memory_order_acquire) || (*(a3 + 16) & 1) == 0)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v14 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v14, OS_LOG_TYPE_ERROR, "Invalid pixel buffer state.", buf, 2u);
    }

    *buf = -2004;
    *v37 = @"Invalid pixel buffer state.";
    result = sub_261476754(a4, buf, v37);
    goto LABEL_24;
  }

  v33 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
  if (PixelFormatType != 875704422)
  {
    if (PixelFormatType == 1278226488)
    {
      result = atomic_load_explicit(a2, memory_order_acquire);
      if (result)
      {
        result = CFRetain(result);
      }

      *a1 = result;
      return result;
    }

    if (PixelFormatType != 875704438)
    {
      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v16 = qword_280CB3EB8;
      if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240960;
        *&buf[4] = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire)) >> 24;
        LOWORD(v39) = 1026;
        *(&v39 + 2) = (CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire)) << 8) >> 24;
        HIWORD(v39) = 1026;
        *v40 = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire)) >> 8;
        *&v40[4] = 1026;
        *&v40[6] = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
        _os_log_error_impl(&dword_26146F000, v16, OS_LOG_TYPE_ERROR, "Unsupported pixel format type: %{public}c%{public}c%{public}c%{public}c", buf, 0x1Au);
      }

      *buf = -2004;
      *v37 = @"Unsupported pixel format type.";
      result = sub_261476754(a4, buf, v37);
      goto LABEL_24;
    }
  }

  IOSurface = CVPixelBufferGetIOSurface(atomic_load_explicit(a2, memory_order_acquire));
  v9 = MEMORY[0x277CBECE8];
  if (IOSurface)
  {
    v10 = CVPixelBufferGetIOSurface(atomic_load_explicit(a2, memory_order_acquire));
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    v32 = v10;
    if (atomic_load_explicit(&v32, memory_order_acquire))
    {
      if (IOSurfaceGetPlaneCount(atomic_load_explicit(&v32, memory_order_acquire)))
      {
        buf[0] = 0;
        LOBYTE(v39) = 0;
        v40[0] = 0;
        v40[8] = 0;
        LOBYTE(HeightOfPlane) = 0;
        v43 = 0;
        LOBYTE(BytesPerRowOfPlane) = 0;
        v45 = 0;
        LOBYTE(v47) = 0;
        BYTE8(v47) = 0;
        LOBYTE(v48) = 0;
        BYTE8(v48) = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        LOBYTE(v52) = 0;
        v53 = 0;
        v54[0] = 0;
        *v40 = IOSurfaceGetWidthOfPlane(atomic_load_explicit(&v32, memory_order_acquire), 0);
        v40[8] = 1;
        HeightOfPlane = IOSurfaceGetHeightOfPlane(atomic_load_explicit(&v32, memory_order_acquire), 0);
        v43 = 1;
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(atomic_load_explicit(&v32, memory_order_acquire), 0);
        v45 = 1;
        *buf = HeightOfPlane * BytesPerRowOfPlane;
        LOBYTE(v39) = 1;
        *&v47 = IOSurfaceGetBytesPerElementOfPlane(atomic_load_explicit(&v32, memory_order_acquire), 0);
        BYTE8(v47) = 1;
        BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(atomic_load_explicit(&v32, memory_order_acquire), 0);
        *&v48 = BaseAddressOfPlane - IOSurfaceGetBaseAddress(atomic_load_explicit(&v32, memory_order_acquire));
        BYTE8(v48) = 1;
        v52 = 1278226488;
        v53 = 1;
        v34 = 0;
        sub_2614E2464(&v35, buf, &v34);
        if (atomic_load_explicit(&v32, memory_order_acquire))
        {
          if (atomic_load_explicit(&v35, memory_order_acquire))
          {
            atomic_load_explicit(&v32, memory_order_acquire);
            atomic_load_explicit(&v35, memory_order_acquire);
            ChildSurface = IOSurfaceCreateChildSurface();
            if (ChildSurface)
            {
LABEL_55:
              v31 = ChildSurface;
              sub_26148D93C(&v35);
              sub_26148D93C(&v34);
              sub_26148E848(v54);
              goto LABEL_56;
            }

            if (qword_27FEB4200 != -1)
            {
              dispatch_once(&qword_27FEB4200, &unk_2873D0720);
            }

            v13 = qword_27FEB41F8;
            if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
            {
              *v37 = 0;
              _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "IOSurfaceCreateChildSurface failed", v37, 2u);
            }

            v36 = @"IOSurfaceCreateChildSurface failed.";
            *v37 = -2003;
            sub_261476754(a4, v37, &v36);
          }

          else
          {
            if (qword_27FEB4200 != -1)
            {
              dispatch_once(&qword_27FEB4200, &unk_2873D0720);
            }

            v20 = qword_27FEB41F8;
            if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
            {
              *v37 = 0;
              _os_log_error_impl(&dword_26146F000, v20, OS_LOG_TYPE_ERROR, "Invalid surface properties", v37, 2u);
            }

            v36 = @"Invalid surface properties.";
            *v37 = -2006;
            sub_261476754(a4, v37, &v36);
          }
        }

        else
        {
          if (qword_27FEB4200 != -1)
          {
            dispatch_once(&qword_27FEB4200, &unk_2873D0720);
          }

          v19 = qword_27FEB41F8;
          if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
          {
            *v37 = 0;
            _os_log_error_impl(&dword_26146F000, v19, OS_LOG_TYPE_ERROR, "Invalid parent surface", v37, 2u);
          }

          v36 = @"Invalid parent surface.";
          *v37 = -2006;
          sub_261476754(a4, v37, &v36);
        }

        ChildSurface = 0;
        goto LABEL_55;
      }

      if (qword_27FEB4200 != -1)
      {
        dispatch_once(&qword_27FEB4200, &unk_2873D0720);
      }

      v18 = qword_27FEB41F8;
      if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26146F000, v18, OS_LOG_TYPE_ERROR, "Invalid non-planar parent surface", buf, 2u);
      }

      *buf = -2006;
      *v37 = @"Invalid non-planar parent surface.";
      sub_261476754(a4, buf, v37);
    }

    else
    {
      if (qword_27FEB4200 != -1)
      {
        dispatch_once(&qword_27FEB4200, &unk_2873D0720);
      }

      v17 = qword_27FEB41F8;
      if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26146F000, v17, OS_LOG_TYPE_ERROR, "Invalid parent surface", buf, 2u);
      }

      *buf = -2006;
      *v37 = @"Invalid parent surface.";
      sub_261476754(a4, buf, v37);
    }

    v31 = 0;
LABEL_56:
    if (atomic_load_explicit(&v31, memory_order_acquire))
    {
      *buf = 0;
      v21 = CVPixelBufferCreateWithIOSurface(*v9, atomic_load_explicit(&v31, memory_order_acquire), 0, buf);
      if (!v21)
      {
        *a1 = *buf;
        sub_261483CA4(&v31);
        return sub_261483CA4(&v32);
      }

      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v22 = qword_280CB3EB8;
      if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
      {
        *v37 = 67240192;
        *&v37[4] = v21;
        _os_log_error_impl(&dword_26146F000, v22, OS_LOG_TYPE_ERROR, "CVPixelBufferCreateWithIOSurface failed when creating child Yp8: %{public}d", v37, 8u);
      }
    }

    else
    {
      *buf = -1;
      v39 = 0;
      v40[0] = 0;
      v40[4] = 0;
      v40[8] = 0;
      v41 = 0;
      LOBYTE(HeightOfPlane) = 0;
      v43 = 0;
      LOBYTE(BytesPerRowOfPlane) = 0;
      BYTE4(BytesPerRowOfPlane) = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0u;
      v48 = 0u;
      if (*(a4 + 96) == 1)
      {
        sub_261501098(buf);
        sub_26150122C(buf, a4);
        if (*(a4 + 96) == 1)
        {
          sub_261501098(a4);
          *(a4 + 96) = 0;
        }
      }

      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v23 = qword_280CB3EB8;
      if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
      {
        sub_261501518(&v36, buf);
        explicit = atomic_load_explicit(&v36, memory_order_acquire);
        *v37 = 138543362;
        *&v37[4] = explicit;
        _os_log_error_impl(&dword_26146F000, v23, OS_LOG_TYPE_ERROR, "Failed to create child Yp8 surface: %{public}@", v37, 0xCu);
        sub_261476C54(&v36);
      }

      sub_261501098(buf);
    }

    sub_261483CA4(&v31);
    sub_261483CA4(&v32);
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
  v25 = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
  v26 = CVPixelBufferGetBaseAddressOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
  v27 = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
  result = CVPixelBufferCreateWithBytes(*v9, WidthOfPlane, v25, 0x4C303038u, v26, v27, 0, 0, 0, &v33);
  v28 = result;
  if (result)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v29 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "CVPixelBufferCreate failed when creating shallow Yp8: %{public}d", buf, 8u);
    }

    *buf = -2003;
    *v37 = @"CVPixelBufferCreate failed when creating shallow Yp8.";
    result = sub_261476754(a4, buf, v37);
    *(a4 + 24) = v28;
    *(a4 + 28) = 1;
LABEL_24:
    *a1 = 0;
    return result;
  }

  *a1 = v33;
  return result;
}

void sub_26149C31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_261501098(va2);
  sub_261483CA4(va);
  sub_261483CA4(va1);
  _Unwind_Resume(a1);
}

BOOL sub_26149C398(uint64_t a1, atomic_ullong *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(*a1, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v44 = explicit;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(v5 + 16);
  v43.origin = *v5;
  v43.size = v7;
  Count = CFArrayGetCount(atomic_load_explicit(v6, memory_order_acquire));
  if (Count < 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    propertyKey = *MEMORY[0x277CE28B8];
    v40 = *MEMORY[0x277CE2868];
    v38 = *MEMORY[0x277CBEE40];
    allocator = *MEMORY[0x277CBECE8];
    v36 = *MEMORY[0x277CE2898];
    v37 = *MEMORY[0x277CE28A0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(*(a1 + 16), memory_order_acquire), v10);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      v42 = ValueAtIndex;
      Width = CVPixelBufferGetWidth(atomic_load_explicit(&v42, memory_order_acquire));
      v13 = sub_26149CBB8(&v42);
      PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(&v42, memory_order_acquire));
      v15 = sub_26149CC78(&v43, Width, v13, PixelFormatType);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      CGAffineTransformMakeScale(&v49, 2.0, 2.0);
      v55.origin.x = v15;
      v55.origin.y = v17;
      v55.size.width = v19;
      v55.size.height = v21;
      v56 = CGRectApplyAffineTransform(v55, &v49);
      v43 = v56;
      v23 = *(a1 + 24);
      v22 = *(a1 + 32);
      if (!atomic_load_explicit(a2, memory_order_acquire))
      {
        break;
      }

      if (!atomic_load_explicit(&v44, memory_order_acquire) || !atomic_load_explicit(&v42, memory_order_acquire))
      {
        if (qword_280CB3EC0 != -1)
        {
          dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
        }

        v31 = qword_280CB3EB8;
        if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v49.a) = 0;
          _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Invalid source and/or destination buffer.", &v49, 2u);
        }

        v49.a = NAN;
        *buf = @"Invalid source and/or destination buffer.";
        sub_261476754(v23, &v49, buf);
        goto LABEL_53;
      }

      x = v56.origin.x;
      y = v56.origin.y;
      v26 = v56.size.width;
      height = v56.size.height;
      v51[0] = &unk_2873D4018;
      v52 = v51;
      v50[0] = &unk_2873D4098;
      v50[3] = v50;
      v49.a = v22;
      sub_261489C64(&v49.b, v50);
      if (*(*&v49.a + 8) == 1 && v52)
      {
        sub_261489CFC(v52, **&v49.a);
      }

      sub_261489D4C(v50);
      sub_261489D4C(v51);
      v46 = 0;
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = v26;
      v57.size.height = height;
      *buf = CGRectCreateDictionaryRepresentation(v57);
      v28 = atomic_exchange(&v46, atomic_exchange(buf, 0));
      if (v28)
      {
        CFRelease(v28);
      }

      sub_26148D93C(buf);
      v45 = 0;
      v58.origin.x = v15;
      v58.origin.y = v17;
      v58.size.width = v19;
      v58.size.height = v21;
      *buf = CGRectCreateDictionaryRepresentation(v58);
      v29 = atomic_exchange(&v45, atomic_exchange(buf, 0));
      if (v29)
      {
        CFRelease(v29);
      }

      sub_26148D93C(buf);
      VTSessionSetProperty(atomic_load_explicit(a2, memory_order_acquire), propertyKey, atomic_load_explicit(&v46, memory_order_acquire));
      VTSessionSetProperty(atomic_load_explicit(a2, memory_order_acquire), v40, atomic_load_explicit(&v45, memory_order_acquire));
      v30 = VTPixelTransferSessionTransferImage(atomic_load_explicit(a2, memory_order_acquire), atomic_load_explicit(&v44, memory_order_acquire), atomic_load_explicit(&v42, memory_order_acquire));
      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v31 = qword_280CB3EB8;
      if (v30)
      {
        if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v30;
          _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "VTPixelTransferSessionTransferImage failed: %{public}d", buf, 8u);
        }

        *buf = -2004;
        propertyValueOut = @"VTPixelTransferSessionTransferImage failed.";
        sub_261476754(v23, buf, &propertyValueOut);
        *buf = CFErrorCreate(allocator, v38, v30, 0);
        v32 = atomic_exchange(v23 + 8, atomic_exchange(buf, 0));
        if (v32)
        {
          CFRelease(v32);
        }

        sub_261476C54(buf);
      }

      else if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
      {
        propertyValueOut = 0;
        if (!VTSessionCopyProperty(atomic_load_explicit(a2, memory_order_acquire), v37, allocator, &propertyValueOut))
        {
          v33 = propertyValueOut;
          if (propertyValueOut)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v33;
              _os_log_debug_impl(&dword_26146F000, v31, OS_LOG_TYPE_DEBUG, "PixelTransferSession: mostRecentConversionType: %{public}@", buf, 0xCu);
              v33 = propertyValueOut;
            }

            CFRelease(v33);
          }
        }

        v47 = 0;
        if (!VTSessionCopyProperty(atomic_load_explicit(a2, memory_order_acquire), v36, allocator, &v47))
        {
          v34 = v47;
          if (v47)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v34;
              _os_log_debug_impl(&dword_26146F000, v31, OS_LOG_TYPE_DEBUG, "PixelTransferSession: mostRecentChainDescription: %{public}@", buf, 0xCu);
              v34 = v47;
            }

            CFRelease(v34);
          }
        }
      }

      sub_26148D93C(&v45);
      sub_26148D93C(&v46);
      if (*(*&v49.a + 8) == 1 && *&v49.tx)
      {
        sub_261489CFC(*&v49.tx, **&v49.a);
      }

      sub_261489D4C(&v49.b);
      if (v30)
      {
        goto LABEL_53;
      }

      sub_261478704(&v44, atomic_load_explicit(&v42, memory_order_acquire));
      v43.origin.x = v15;
      v43.origin.y = v17;
      v43.size.width = v19;
      v43.size.height = v21;
      sub_2614776F0(&v42);
      v9 = ++v10 >= Count;
      if (Count == v10)
      {
        goto LABEL_56;
      }
    }

    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v31 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49.a) = 0;
      _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Invalid pixel transfer session.", &v49, 2u);
    }

    v49.a = NAN;
    *buf = @"Invalid pixel transfer session.";
    sub_261476754(v23, &v49, buf);
LABEL_53:
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v49.a) = 134349056;
      *(&v49.a + 4) = v10;
      _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Failed to transfer image at level #%{public}ld.", &v49, 0xCu);
    }

    sub_2614776F0(&v42);
  }

LABEL_56:
  sub_2614776F0(&v44);
  return v9;
}

void sub_26149CAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, atomic_ullong a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, atomic_ullong a26)
{
  sub_2614776F0(&a20);
  sub_2614776F0(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_26149CB74(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = sub_2614F5408(*a1, *(a1 + 8)) ^ 1;
  }

  return a1;
}

size_t sub_26149CBB8(atomic_ullong *a1)
{
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    return -1;
  }

  IsPlanar = CVPixelBufferIsPlanar(atomic_load_explicit(a1, memory_order_acquire));
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (IsPlanar)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(explicit);
    if (PlaneCount)
    {
      v5 = PlaneCount;
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a1, memory_order_acquire), 0);
      if (v5 != 1)
      {
        for (i = 1; i != v5; ++i)
        {
          v8 = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a1, memory_order_acquire), i);
          BytesPerRowOfPlane = sub_26149D39C(BytesPerRowOfPlane, v8);
        }
      }

      return BytesPerRowOfPlane;
    }

    return -1;
  }

  return CVPixelBufferGetBytesPerRow(explicit);
}

double sub_26149CC78(CGRect *a1, unint64_t a2, char a3, OSType a4)
{
  v8 = floor(CGRectGetMinX(*a1) * 0.5);
  v9 = floor(CGRectGetMinY(*a1) * 0.5);
  v10 = ceil(CGRectGetMaxX(*a1) * 0.5) - v8;
  v11 = ceil(CGRectGetMaxY(*a1) * 0.5) - v9;
  if ((a3 & 0xF) == 0)
  {
    v27 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], a4);
    if (!atomic_load_explicit(&v27, memory_order_acquire))
    {
      goto LABEL_11;
    }

    explicit = atomic_load_explicit(&v27, memory_order_acquire);
    Value = CFDictionaryGetValue(explicit, *MEMORY[0x277CC4F70]);
    if (Value)
    {
      Count = CFArrayGetCount(Value);
      if (Count)
      {
        if (!(Count >> 61))
        {
          sub_261470B0C(Count);
        }

        sub_2614709BC();
      }

      goto LABEL_11;
    }

    v15 = atomic_load_explicit(&v27, memory_order_acquire);
    v16 = CFDictionaryGetValue(v15, *MEMORY[0x277CC4ED0]);
    v17 = v16;
    if (!v16 || (v18 = CFGetTypeID(v16), v18 != CFNumberGetTypeID()))
    {
LABEL_11:
      sub_26148D93C(&v27);
      return v8;
    }

    v25 = a2;
    valuePtr = 0;
    v19 = CFNumberGetValue(v17, kCFNumberIntType, &valuePtr);
    v20 = valuePtr;
    sub_26148D93C(&v27);
    if (v19)
    {
      v28.origin.x = v8;
      v28.origin.y = v9;
      v28.size.width = v10;
      v28.size.height = v11;
      MinX = CGRectGetMinX(v28);
      v29.origin.x = v8;
      v29.origin.y = v9;
      v29.size.width = v10;
      v29.size.height = v11;
      CGRectGetMaxX(v29);
      v22 = ((v20 | (v20 >> 8 << 8)) + 7) >> 3;
      v24 = ((v22 * MinX) & 0xFFFFFFFFFFFFFFF0) / v22;
      if (v24 >= v25)
      {
        return v25;
      }

      return v24;
    }
  }

  return v8;
}

void sub_26149D06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_26148D93C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26149D0C0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120PixelTransferSessionILNS_25PyramidGenerationBehaviorE0EE13transferImageERKNS_5CFRefIP10__CVBufferEES9_RKNSt3__18optionalI6CGRectEESF_RNSB_INS_5ErrorEEERKNSB_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26149D0FC(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "PixelTransferSession::transferImage", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26149D234(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120PixelTransferSessionILNS_25PyramidGenerationBehaviorE0EE13transferImageERKNS_5CFRefIP10__CVBufferEES9_RKNSt3__18optionalI6CGRectEESF_RNSB_INS_5ErrorEEERKNSB_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26149D270(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PixelTransferSession::transferImage", &unk_26159692B, v4, 2u);
    }
  }
}

unint64_t sub_26149D39C(unint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  if (!v3)
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v4)
  {
    v5 = v4 >> __clz(__rbit64(v4));
    v6 = result;
    do
    {
      v7 = v6 >> __clz(__rbit64(v6));
      v6 = v7 - v5;
      if (v5 > v7)
      {
        v6 = v5 - v7;
      }

      if (v5 >= v7)
      {
        v5 = v7;
      }
    }

    while (v6);
    return v5 << __clz(__rbit64(v4 | result));
  }

  return result;
}

uint64_t sub_26149D414(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE0EE15generatePyramidERKNS_6SampleERKNSt3__18optionalI6CGRectEERNS7_INS_5ErrorEEERKNS7_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26149D450(uint64_t a1, os_signpost_id_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = vcvtpd_u64_f64(CGRectGetWidth(*(**(a1 + 8) + 8)));
      v11 = *(**(a1 + 8) + 8);
      v6 = 134349312;
      v7 = v5;
      v8 = 2050;
      v9 = vcvtpd_u64_f64(CGRectGetHeight(v11));
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v3, "PyramidGenerationSession::generatePyramid", "masterPixelBufferWidth=%{public, signpost.description:attribute}zu, masterPixelBufferHeight=%{public, signpost.description:attribute}zu", &v6, 0x16u);
    }
  }
}

uint64_t sub_26149D57C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4298;
  a2[1] = v2;
  return result;
}

uint64_t sub_26149D61C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE0EE15generatePyramidERKNS_6SampleERKNSt3__18optionalI6CGRectEERNS7_INS_5ErrorEEERKNS7_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26149D658(uint64_t a1, os_signpost_id_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = vcvtpd_u64_f64(CGRectGetWidth(*(**(a1 + 8) + 8)));
      v11 = *(**(a1 + 8) + 8);
      v6 = 134349312;
      v7 = v5;
      v8 = 2050;
      v9 = vcvtpd_u64_f64(CGRectGetHeight(v11));
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PyramidGenerationSession::generatePyramid", "masterPixelBufferWidth=%{public, signpost.description:attribute}zu, masterPixelBufferHeight=%{public, signpost.description:attribute}zu", &v6, 0x16u);
    }
  }
}

uint64_t sub_26149D784(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4218;
  a2[1] = v2;
  return result;
}

void sub_26149D818(void *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = 0;
  operator new();
}

void sub_26149D8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26149DEE4(va);
  sub_261476A0C(v2);
  _Unwind_Resume(a1);
}

void sub_26149D910(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a2 + 24);
  if (!*(a2 + 24))
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  v5 = &unk_261568E60;
  v6 = sub_26149DF64((a1 + 24), &unk_261568E60);
  if (!v6)
  {
    v11[0] = &unk_261568E60;
    v11[1] = v11;
    v11[2] = "PyramidGenerationSessionContext";
    v11[3] = 31;
    operator new();
  }

  if (v6[3] != &unk_261568E60)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  v7 = v6[6];
  if (!v7)
  {
LABEL_29:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_30:
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
LABEL_13:
    v10 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(context[0]) = 0;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "Unable to retrieve or instantiate concrete PyramidGenerationSession context.", context, 2u);
    }

    LOBYTE(v17) = 0;
    v18 = 0;
    sub_261500FD8(v14, -1, 0);
    sub_26150122C(context, v14);
    v16 = 1;
    if (!*v2)
    {
      sub_261477FC4();
    }

    (*(**v2 + 48))(*v2, &v17, context);
    if (v16 == 1)
    {
      sub_261501098(context);
    }

    sub_261501098(v14);
    if (v5)
    {
      goto LABEL_26;
    }

    return;
  }

  v8 = *v7;
  v5 = v7[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 8));
  if (!v8)
  {
    if (qword_280CB3EC0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  v9 = *v2;
  if (!*v2)
  {
    v2 = &v13;
    goto LABEL_21;
  }

  if (v9 != a2)
  {
    v13 = *v2;
LABEL_21:
    *v2 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  (*(*v9 + 24))(v9, v12);
LABEL_23:
  if (v13)
  {
    context[0] = &unk_2873D4C38;
    context[1] = v8;
    context[2] = v12;
    context[3] = context;
    dispatch_barrier_async_and_wait_f(*(v8 + 8), context, sub_26149E7EC);
    sub_261477CFC(context);
  }

  sub_26149DEE4(v12);
  if (v5)
  {
LABEL_26:
    sub_26149E780(v5);
  }
}

void sub_26149DDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26149DEE4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_26149DF64(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_26149E04C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 200) == 1)
    {
      sub_261501098((v2 + 104));
    }

    if (*(v2 + 96) == 1)
    {
      sub_26149B834((v2 + 88), 0);
    }

    sub_26148D890((v2 + 40));
    sub_26148D890((v2 + 32));
    v3 = *(v2 + 8);
    *v2 = &unk_2873D4B48;
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(v2 + 16))();
    }

    MEMORY[0x2667045D0](v2, 0x10E3C400794066BLL);
  }

  return a1;
}

uint64_t sub_26149E0FC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_26149E17C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = v1;
    v2 = result[4];
    if (!v2)
    {
      sub_261477FC4();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

uint64_t sub_26149E1E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_26149E750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26149E17C(v3);
  sub_26149E1E4(v2 + 56);
  sub_2614A3170(va);
  _Unwind_Resume(a1);
}

void sub_26149E780(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_26149E7EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_26149E840(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_131PyramidGenerationSessionContextILNS_25PyramidGenerationBehaviorE0EE7performENSt3__18functionIFvONS4_8optionalINS4_17reference_wrapperINS_24PyramidGenerationSessionILS2_0EEEEEEEONS6_INS_5ErrorEEEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_26149E87C(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (*(v2 + 200) == 1)
  {
    v3 = *(a1 + 16);
    LOBYTE(v37) = 0;
    v38[0] = 0;
    sub_2615010E4(v40, v2 + 104);
    v43 = 1;
    v4 = *(v3 + 24);
    if (!v4)
    {
      sub_261477FC4();
    }

    result = (*(*v4 + 48))(v4, &v37, v40);
LABEL_49:
    if (v43 != 1)
    {
      return result;
    }

    v27 = v40;
    return sub_261501098(v27);
  }

  if (*(v2 + 96))
  {
    goto LABEL_47;
  }

  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v31 = os_signpost_id_make_with_pointer(qword_280CB3EB8, v2);
  v32 = 1;
  v45[0] = &unk_2873D43A8;
  v46 = v45;
  v44[0] = &unk_2873D4428;
  v44[3] = v44;
  v37 = &v31;
  sub_261489C64(v38, v44);
  if (*(v37 + 8) == 1 && v46 != 0)
  {
    sub_261489CFC(v46, *v37);
  }

  sub_261489D4C(v44);
  sub_261489D4C(v45);
  v49 = &unk_2873D44A8;
  v51 = &v49;
  v48[0] = &unk_2873D4528;
  v48[3] = v48;
  *v40 = &v31;
  sub_261489C64(v41, v48);
  if (*(*v40 + 8) == 1 && v51)
  {
    sub_261489CFC(v51, **v40);
  }

  sub_261489D4C(v48);
  sub_261489D4C(&v49);
  pixelTransferSessionOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = VTPixelTransferSessionCreate(*MEMORY[0x277CBECE8], &pixelTransferSessionOut);
  if (v8)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v9 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "VTPixelTransferSessionCreate failed: %{public}d", buf, 8u);
    }

    *buf = -2003;
    v35 = @"VTPixelTransferSessionCreate failed.";
    sub_261476754((v2 + 104), buf, &v35);
    *buf = CFErrorCreate(v7, *MEMORY[0x277CBEE40], v8, 0);
    v10 = atomic_exchange((v2 + 168), atomic_exchange(buf, 0));
    if (v10)
    {
      CFRelease(v10);
    }

    sub_261476C54(buf);
    LOBYTE(v33) = 0;
    v34 = 0;
  }

  else
  {
    v35 = pixelTransferSessionOut;
    *buf = atomic_exchange(&v35, 0);
    if (atomic_load_explicit(buf, memory_order_acquire))
    {
      explicit = atomic_load_explicit(buf, memory_order_acquire);
      VTSessionSetProperty(explicit, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]);
      v12 = atomic_load_explicit(buf, memory_order_acquire);
      VTSessionSetProperty(v12, *MEMORY[0x277CE2870], *MEMORY[0x277CE2780]);
      v13 = *(v2 + 48);
      HIDWORD(v15) = v13 - 9;
      LODWORD(v15) = v13 - 9;
      v14 = v15 >> 2;
      v16 = MEMORY[0x277CBED28];
      if (v14 <= 6 && ((0x22u >> v14) & 1) == 0)
      {
        if (((1 << v14) & 0x5D) == 0)
        {
          v13 = qos_class_self();
        }

        if (v13 == QOS_CLASS_USER_INTERACTIVE)
        {
          v17 = atomic_load_explicit(buf, memory_order_acquire);
          VTSessionSetProperty(v17, *MEMORY[0x277CE28A8], *v16);
        }
      }

      v18 = atomic_load_explicit(buf, memory_order_acquire);
      v19 = *v16;
      VTSessionSetProperty(v18, *MEMORY[0x277CE2888], v19);
      v20 = atomic_load_explicit(buf, memory_order_acquire);
      v21 = *MEMORY[0x277CBED10];
      VTSessionSetProperty(v20, *MEMORY[0x277CE28C8], *MEMORY[0x277CBED10]);
      v22 = _os_feature_enabled_impl();
      v23 = atomic_load_explicit(buf, memory_order_acquire);
      v24 = *MEMORY[0x277CE2880];
      if (v22)
      {
        VTSessionSetProperty(v23, v24, v19);
        v23 = atomic_load_explicit(buf, memory_order_acquire);
        v24 = *MEMORY[0x277CE28C0];
      }

      else
      {
        v19 = v21;
      }

      VTSessionSetProperty(v23, v24, v19);
    }

    v33 = atomic_exchange(buf, 0);
    v34 = 1;
    sub_26149B8D0(buf);
    sub_26149B918(&v35);
  }

  if (*(*v40 + 8) == 1 && v42)
  {
    sub_261489CFC(v42, **v40);
  }

  sub_261489D4C(v41);
  if (!v8)
  {
    operator new();
  }

  v40[0] = 0;
  v41[0] = 0;
  if (*(v37 + 8) == 1 && v39)
  {
    sub_261489CFC(v39, *v37);
  }

  sub_261489D4C(v38);
  if (*(v2 + 96))
  {
    sub_26149B834((v2 + 88), 0);
    *(v2 + 96) = 0;
  }

  if (*(v2 + 96))
  {
LABEL_47:
    v25 = *(a1 + 16);
    v37 = (v2 + 88);
    v38[0] = 1;
    v40[0] = 0;
    v43 = 0;
    v26 = *(v25 + 24);
    if (!v26)
    {
      sub_261477FC4();
    }

    result = (*(*v26 + 48))(v26, &v37, v40);
    goto LABEL_49;
  }

  v28 = *(a1 + 16);
  LOBYTE(v49) = 0;
  v50 = 0;
  v29 = *(v2 + 200);
  if (v29 == 1)
  {
    sub_2615010E4(v40, v2 + 104);
  }

  else
  {
    sub_261500FD8(&v37, -1, 0);
    sub_26150122C(v40, &v37);
  }

  v43 = 1;
  v30 = *(v28 + 24);
  if (!v30)
  {
    sub_261477FC4();
  }

  result = (*(*v30 + 48))(v30, &v49, v40);
  if (v43 == 1)
  {
    result = sub_261501098(v40);
  }

  if ((v29 & 1) == 0)
  {
    v27 = &v37;
    return sub_261501098(v27);
  }

  return result;
}

void sub_26149F114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_26148D890((v3 + 40));
  MEMORY[0x2667045D0](v3, 0x10C1C40764D44F6);
  if (v7 == 1)
  {
    sub_26149B8D0(va);
  }

  sub_261489DCC(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_26149F290(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_26148D890((v2 + 48));
    sub_26148D890((v2 + 40));
    MEMORY[0x2667045D0](v2, 0x10C1C40764D44F6);
  }

  return a1;
}

uint64_t sub_26149F304@<X0>(atomic_ullong *a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v4 = qword_280CB3EB8;
  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "virtual CFRef<CFArrayRef> mrc::(anonymous namespace)::PlaceholderPyramidAllocator<mrc::PyramidGenerationBehavior::Default>::allocate(std::optional<Error> &, const std::optional<os_signpost_id_t> &) const [_Behavior = mrc::PyramidGenerationBehavior::Default]";
    _os_log_fault_impl(&dword_26146F000, v4, OS_LOG_TYPE_FAULT, "Unexpected invocation: %{public}s", buf, 0xCu);
  }

  v6 = @"PlaceholderPyramidAllocator::allocate should never be invoked.";
  *buf = -2011;
  result = sub_261476754(a1, buf, &v6);
  *a2 = 0;
  return result;
}

void sub_26149F408(uint64_t a1)
{
  if (*(a1 + 89) == 1 && (*(a1 + 88) & 1) != 0)
  {
    _os_feature_enabled_impl();
    operator new();
  }

  operator new();
}

void sub_26149F5B8(void *a1, uint64_t *a2, atomic_ullong *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v7 = qword_280CB3EB8;
  if (v6)
  {
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "EphemeralPyramidAllocator";
      v10 = 2050;
      v11 = v6;
      _os_log_debug_impl(&dword_26146F000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}p is ready", buf, 0x16u);
      v6 = *a2;
    }

    *a2 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "EphemeralPyramidAllocator";
      _os_log_error_impl(&dword_26146F000, v7, OS_LOG_TYPE_ERROR, "Failed to allocate pyramid allocator: %{public}s", buf, 0xCu);
    }

    v8 = @"Failed to allocate pyramid allocator.";
    *buf = -2003;
    sub_261476754(a3, buf, &v8);
    v6 = 0;
  }

  *a1 = v6;
}

void sub_26149F738(void *a1, _BYTE **a2, atomic_ullong *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (!*a2)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v11 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "CachedPyramidAllocator";
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "Failed to allocate pyramid allocator: %{public}s", buf, 0xCu);
    }

    v12 = @"Failed to allocate pyramid allocator.";
    *buf = -2003;
    sub_261476754(a3, buf, &v12);
    goto LABEL_17;
  }

  v9 = v6[96];
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v10 = qword_280CB3EB8;
  if (v9)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "CachedPyramidAllocator";
    v14 = 2050;
    v15 = v6;
    _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}p is being prepared", buf, 0x16u);
    v6 = *a2;
  }

  if (!sub_26149FA14(v6, a3, a4))
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v6 = *a2;
LABEL_9:
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "CachedPyramidAllocator";
    v14 = 2050;
    v15 = v6;
    _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}p is ready", buf, 0x16u);
    v6 = *a2;
  }

  *a2 = 0;
LABEL_18:
  *a1 = v6;
}

uint64_t *sub_26149F978(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    for (i = 72; i != 40; i -= 8)
    {
      sub_26149F9E0((v2 + i));
    }

    MEMORY[0x2667045D0](v2, 0x10E3C4081D78B51);
  }

  return a1;
}

atomic_ullong *sub_26149F9E0(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_26149FA14(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  if ((a1[96] & 1) == 0)
  {
    v20[0] = &unk_2873D4818;
    v20[1] = a1;
    v21 = v20;
    v22 = a3;
    v19[0] = &unk_2873D4898;
    v19[1] = a1;
    v19[3] = v19;
    sub_261489C64(v23, v19);
    if (*(v22 + 8) == 1 && v21 != 0)
    {
      sub_261489CFC(v21, *v22);
    }

    sub_261489D4C(v19);
    sub_261489D4C(v20);
    LOBYTE(v9) = 0;
    v17 = 0;
    if (a1[28])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v17 = 1;
      BYTE4(v15) = 1;
      LODWORD(v15) = 1024;
      WORD4(v15) = 257;
    }

    else
    {
      v5 = a1[29];
      if (v5 == 1)
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        v17 = 1;
      }
    }

    v7[0] = 0;
    v7[128] = 0;
    v8 = 0;
    sub_26149FE38(v7, &v9);
    v18 = 0;
    operator new();
  }

  return 1;
}

void sub_26149FDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_26149FE38(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = a2[3];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v5;
      *a1 = v3;
      *(a1 + 16) = v4;
      v6 = a2[4];
      v7 = a2[5];
      v8 = a2[6];
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 80) = v7;
      *(a1 + 96) = v8;
      *(a1 + 64) = v6;
      explicit = atomic_load_explicit(a2 + 15, memory_order_acquire);
      v10 = (a1 + 120);

      sub_261478704(v10, explicit);
    }
  }

  else if (*(a1 + 128))
  {
    sub_26148E848((a1 + 120));
    *(a1 + 128) = 0;
  }

  else
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v13;
    *a1 = v11;
    *(a1 + 16) = v12;
    v14 = a2[4];
    v15 = a2[5];
    v16 = a2[6];
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 80) = v15;
    *(a1 + 96) = v16;
    *(a1 + 64) = v14;
    v17 = atomic_load_explicit(a2 + 15, memory_order_acquire);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(a1 + 120) = v17;
    *(a1 + 128) = 1;
  }
}

uint64_t sub_26149FF14(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = vcvtpd_u64_f64(vcvtd_n_f64_u64(a1, 1uLL));
  if (v3)
  {
    v5 = 0;
    v6 = a1;
    v7 = a2;
    v8 = ceil(a2 * 0.5);
    v9 = 0.5;
    v10 = a2;
    v11 = a1;
    do
    {
      v12 = v11;
      v13 = v8;
      v11 = v3;
      v14 = v10;
      v10 = v8;
      v15 = v12 <= v3 || v13 == 0;
      if (v15 || v14 <= v10)
      {
        break;
      }

      v17 = v13 >= v3 ? v3 : v8;
      if (v17 < 0x40 || v5 > 3)
      {
        break;
      }

      v22 = v3;
      v23 = v5;
      v21 = v8;
      v19 = *(a3 + 24);
      if (!v19)
      {
        sub_261477FC4();
      }

      result = (*(*v19 + 48))(v19, &v23, &v22, &v21);
      if (!result)
      {
        return result;
      }

      ++v5;
      v9 = v9 * 0.5;
      v8 = ceil(v9 * v7);
      v3 = vcvtpd_u64_f64(v9 * v6);
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_2614A0028(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2614A00B4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE0EE8prepare_ERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlmmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2614A00F0(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  *v8 = *a3;
  *(v8 + 8) = 1;
  v9 = *(a1 + 8);
  *(v9 + 16) = v6;
  *(v9 + 24) = 1;
  if (*(*(a1 + 8) + 208) == 1)
  {
    *buf = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"MRC: Cached Pyramid Level #%zu", v5);
    v10 = atomic_exchange((*(a1 + 8) + 200), atomic_exchange(buf, 0));
    if (v10)
    {
      CFRelease(v10);
    }

    sub_26148E848(buf);
  }

  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v11 = qword_280CB3EB8;
  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "CachedPyramidAllocator";
    v25 = 2050;
    v26 = v5;
    _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: attempting to create a CVPixelBufferPool at level #%{public}zu", buf, 0x16u);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 8);
    v21 = 0;
    v22 = 0;
    sub_2614E2974(&v23, v17, &v22, &v21);
    explicit = atomic_load_explicit(&v23, memory_order_acquire);
    *buf = 136446722;
    *&buf[4] = "CachedPyramidAllocator";
    v25 = 2050;
    v26 = v5;
    v27 = 2114;
    v28 = explicit;
    _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: at level #%{public}zu, pixelBufferAttributes: %{public}@", buf, 0x20u);
    sub_26148D93C(&v23);
    sub_26148D93C(&v21);
    sub_26148D93C(&v22);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 16);
    v22 = 0;
    sub_2614E2EDC(&v23, v19, &v22);
    v20 = atomic_load_explicit(&v23, memory_order_acquire);
    *buf = 136446722;
    *&buf[4] = "CachedPyramidAllocator";
    v25 = 2050;
    v26 = v5;
    v27 = 2114;
    v28 = v20;
    _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: at level #%{public}zu, pixelBufferPoolAttributes: %{public}@", buf, 0x20u);
    sub_26148D93C(&v23);
    sub_26148D93C(&v22);
  }

  sub_2614E3234(buf, *(a1 + 16), *(a1 + 8), *(a1 + 32));
  v12 = (v7 + 48 + 8 * v5);
  v13 = atomic_exchange(v12, atomic_exchange(buf, 0));
  if (v13)
  {
    CFRelease(v13);
  }

  sub_26149F9E0(buf);
  v14 = atomic_load_explicit(v12, memory_order_acquire);
  if (v14)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = atomic_load_explicit(v12, memory_order_acquire);
      *buf = 136446722;
      *&buf[4] = "CachedPyramidAllocator";
      v25 = 2050;
      v26 = v5;
      v27 = 2114;
      v28 = v15;
      _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: at level #%{public}zu, allocated pixel buffer pool: %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "CachedPyramidAllocator";
    v25 = 2050;
    v26 = v5;
    _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "%{public}s: failed to create pixel buffer pool at level #%{public}zu", buf, 0x16u);
  }

  return v14 != 0;
}

void sub_2614A04A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_26148E848(va);
  _Unwind_Resume(a1);
}

__n128 sub_2614A04F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D4918;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2614A05B0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE0EE8prepare_ERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A05EC(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "CachedPyramidAllocator::prepare_", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A0790(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4898;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A0830(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE0EE8prepare_ERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A086C(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CachedPyramidAllocator::prepare_", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A0A10(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4818;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A0AB8@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t a3@<X2>, CFArrayRef *a4@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v37[0] = &unk_2873D4A00;
  v37[1] = a1;
  v38 = v37;
  v36[0] = &unk_2873D4A80;
  v36[1] = a1;
  v36[3] = v36;
  v39 = a3;
  sub_261489C64(v40, v36);
  if (*(v39 + 8) == 1 && v38 != 0)
  {
    sub_261489CFC(v38, *v39);
  }

  sub_261489D4C(v36);
  sub_261489D4C(v37);
  if (*(a1 + 96))
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(a1 + 88), MEMORY[0x277CBF128]);
    if (atomic_load_explicit(&Mutable, memory_order_acquire))
    {
      v9 = *(a1 + 88);
      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v10 = qword_280CB3EB8;
      if (v9)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = (*(a1 + 80) + v11);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            explicit = atomic_load_explicit(v13, memory_order_acquire);
            *buf = 136446722;
            *&buf[4] = "CachedPyramidAllocator";
            v30 = 2050;
            v31 = v12;
            v32 = 2050;
            v33 = explicit;
            _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: attempting to create a CVPixelBuffer at level #%{public}zu from pool %{public}p", buf, 0x20u);
          }

          sub_2614E33C0(&v27, v13, a2);
          if (!atomic_load_explicit(&v27, memory_order_acquire))
          {
            break;
          }

          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), atomic_load_explicit(&v27, memory_order_acquire));
          sub_2614776F0(&v27);
          ++v12;
          v11 += 8;
          if (v12 >= *(a1 + 88))
          {
            goto LABEL_22;
          }
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v26 = atomic_load_explicit(v13, memory_order_acquire);
          *buf = 136446722;
          *&buf[4] = "CachedPyramidAllocator";
          v30 = 2050;
          v31 = v12;
          v32 = 2050;
          v33 = v26;
          _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "%{public}s: failed to create pixel buffer at level #%{public}zu from pool %{public}p", buf, 0x20u);
        }

        *a4 = 0;
        sub_2614776F0(&v27);
      }

      else
      {
LABEL_22:
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v19 = atomic_load_explicit(&Mutable, memory_order_acquire);
          Count = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
          *buf = 136446722;
          *&buf[4] = "CachedPyramidAllocator";
          v30 = 2050;
          v31 = v19;
          v32 = 2050;
          v33 = Count;
          _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: allocated pyramid %{public}p with %{public}ld level(s)", buf, 0x20u);
          v27 = CFStringCreateMutable(v8, 0);
          v21 = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
          if (v21 >= 1)
          {
            for (i = 0; i != v21; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), i);
              if (ValueAtIndex)
              {
                ValueAtIndex = CFRetain(ValueAtIndex);
              }

              *buf = ValueAtIndex;
              sub_26153B6C8(&v27, buf);
              sub_2614776F0(buf);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                v24 = atomic_load_explicit(&Mutable, memory_order_acquire);
                v25 = atomic_load_explicit(&v27, memory_order_acquire);
                *buf = 136446978;
                *&buf[4] = "CachedPyramidAllocator";
                v30 = 2050;
                v31 = i;
                v32 = 2050;
                v33 = v24;
                v34 = 2114;
                v35 = v25;
                _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: level #%{public}ld of pyramid %{public}p: %{public}@", buf, 0x2Au);
              }

              CFStringReplaceAll(atomic_load_explicit(&v27, memory_order_acquire), &stru_2873D7F70);
            }
          }

          sub_2614959D0(&v27);
        }

        *a4 = CFArrayCreateCopy(v8, atomic_load_explicit(&Mutable, memory_order_acquire));
      }
    }

    else
    {
      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v16 = qword_280CB3EB8;
      if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26146F000, v16, OS_LOG_TYPE_ERROR, "CFArrayCreateMutable failed", buf, 2u);
      }

      *buf = -2003;
      v27 = @"CFArrayCreateMutable failed.";
      sub_261476754(a2, buf, &v27);
      *a4 = 0;
    }

    sub_26147743C(&Mutable);
  }

  else
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v15 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "CachedPyramidAllocator";
      _os_log_error_impl(&dword_26146F000, v15, OS_LOG_TYPE_ERROR, "%{public}s: effective pixel buffer pools are not yet ready", buf, 0xCu);
    }

    Mutable = @"Effective pixel buffer pools are not yet ready.";
    *buf = -2011;
    sub_261476754(a2, buf, &Mutable);
    *a4 = 0;
  }

  if (*(v39 + 8) == 1 && v41 != 0)
  {
    sub_261489CFC(v41, *v39);
  }

  return sub_261489D4C(v40);
}

void sub_2614A1070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_2614959D0(va);
  sub_26147743C(va1);
  sub_261489DCC((v3 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_2614A1124(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE0EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A1160(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "CachedPyramidAllocator::allocate", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A1304(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4A80;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A13A4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE0EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A13E0(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CachedPyramidAllocator::allocate", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A1584(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4A00;
  a2[1] = v2;
  return result;
}

void sub_2614A1744(uint64_t a1)
{
  for (i = 72; i != 40; i -= 8)
  {
    sub_26149F9E0((a1 + i));
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614A17A0(uint64_t a1)
{
  for (i = 72; i != 40; i -= 8)
  {
    sub_26149F9E0((a1 + i));
  }

  return a1;
}

uint64_t sub_2614A17E8@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2873D4688;
  v14[1] = a1;
  v15 = v14;
  v13[0] = &unk_2873D4708;
  v13[1] = a1;
  v13[3] = v13;
  v16 = a3;
  sub_261489C64(v17, v13);
  if (*(v16 + 8) == 1 && v15 != 0)
  {
    sub_261489CFC(v15, *v16);
  }

  sub_261489D4C(v13);
  sub_261489D4C(v14);
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF128]);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    v12 = 0;
    operator new();
  }

  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v7 = qword_280CB3EB8;
  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26146F000, v7, OS_LOG_TYPE_ERROR, "CFArrayCreateMutable failed", buf, 2u);
  }

  *buf = -2003;
  v9 = @"CFArrayCreateMutable failed.";
  sub_261476754(a2, buf, &v9);
  *a4 = 0;
  sub_26147743C(&Mutable);
  if (*(v16 + 8) == 1 && v18)
  {
    sub_261489CFC(v18, *v16);
  }

  return sub_261489D4C(v17);
}

void sub_2614A1C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_2614959D0(va);
  sub_26147743C(va1);
  sub_261489DCC((v3 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_2614A1D10(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_125EphemeralPyramidAllocatorILNS_25PyramidGenerationBehaviorE0EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlmmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2614A1D4C(uint64_t a1, void *a2, size_t *a3, size_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *(a1 + 8);
  v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"MRC: Ephemeral Pyramid Level #%zu", *a2);
  sub_2614A1EF0(&v12, v6, v7, *(v8 + 24), &v13, *(a1 + 16));
  explicit = atomic_load_explicit(&v12, memory_order_acquire);
  if (explicit)
  {
    CFArrayAppendValue(atomic_load_explicit(*(a1 + 24), memory_order_acquire), atomic_load_explicit(&v12, memory_order_acquire));
  }

  else
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v10 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "EphemeralPyramidAllocator";
      v16 = 2050;
      v17 = v5;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "%{public}s: failed to create IOSurface-backed pixel buffer at level #%{public}zu", buf, 0x16u);
    }
  }

  sub_2614776F0(&v12);
  sub_26148E848(&v13);
  return explicit != 0;
}

void sub_2614A1ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_2614776F0(va);
  sub_26148E848(va1);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2614A1EF0(CVPixelBufferRef *a1, size_t a2, size_t a3, unsigned int a4, atomic_ullong *a5, uint64_t a6)
{
  v62 = *MEMORY[0x277D85DE8];
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v12 = qword_280CB3EB8;
  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
  {
    v18 = HIBYTE(a4);
    v19 = vshl_u32(vdup_n_s32(a4), 0xFFFFFFF0FFFFFFF8);
    v20 = a4;
    if (HIBYTE(a4) - 32 >= 0x5Fu)
    {
      v18 = 46;
    }

    if (a4 - 32 >= 0x5F)
    {
      v20 = 46;
    }

    v21 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v19, 0xE0000000E0), 0xFF000000FFLL)), v19, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
    BYTE4(v24) = 0;
    LODWORD(v24) = v21.i32[0] | (v20 << 24) | v18 | v21.i32[1];
    *buf = 134349826;
    *&buf[4] = a2;
    v45 = 2050;
    v46 = a3;
    v47 = 1042;
    v48 = 4;
    v49 = 2082;
    v50 = &v24;
    _os_log_debug_impl(&dword_26146F000, v12, OS_LOG_TYPE_DEBUG, "Attempting to create an IOSurface-backed CVPixelBuffer: width=%{public}zu, height=%{public}zu, pixelFormatType=%{public}.4s", buf, 0x26u);
  }

  v41 = 0;
  *buf = FigCreateIOSurfacePropertiesDictionary();
  v13 = atomic_exchange(&v41, atomic_exchange(buf, 0));
  if (v13)
  {
    CFRelease(v13);
  }

  sub_26148D93C(buf);
  LOBYTE(v24) = 0;
  BYTE8(v24) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v36 = 1;
  v35 = 1280;
  sub_261478704(&v40, atomic_load_explicit(a5, memory_order_acquire));
  buf[0] = 0;
  buf[8] = 0;
  BYTE2(v46) = 0;
  LOBYTE(v48) = 0;
  BYTE2(v50) = 0;
  BYTE6(v50) = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v57[0] = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  sub_2614A2328(v57, &v24);
  v22 = 0;
  sub_2614E2974(&v23, buf, &v22, &v41);
  pixelBufferOut = 0;
  v14 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], a2, a3, a4, atomic_load_explicit(&v23, memory_order_acquire), &pixelBufferOut);
  if (v14)
  {
    if (qword_27FEB4200 != -1)
    {
      dispatch_once(&qword_27FEB4200, &unk_2873D0720);
    }

    v15 = qword_27FEB41F8;
    if (os_log_type_enabled(qword_27FEB41F8, OS_LOG_TYPE_ERROR))
    {
      *v61 = 67240192;
      *&v61[4] = v14;
      _os_log_error_impl(&dword_26146F000, v15, OS_LOG_TYPE_ERROR, "CVPixelBufferCreate failed: %{public}d", v61, 8u);
    }

    *v61 = -2003;
    v42 = @"CVPixelBufferCreate failed.";
    sub_261476754(a6, v61, &v42);
    v16 = 0;
    *(a6 + 24) = v14;
    *(a6 + 28) = 1;
  }

  else
  {
    v16 = pixelBufferOut;
  }

  *a1 = v16;
  sub_26148D93C(&v23);
  sub_26148D93C(&v22);
  if (v59 == 1)
  {
    sub_26148E848(&v58);
  }

  sub_26148E848(&v40);
  return sub_26148D93C(&v41);
}

void sub_2614A22B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, atomic_ullong a28, uint64_t a29, uint64_t a30, atomic_ullong a31)
{
  sub_26148D93C(&a31);
  sub_26148D93C(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_2614A2328(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 128);
  v4 = a2[3];
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  v8 = a2[5];
  v7 = a2[6];
  v9 = a2[4];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v8;
  *(a1 + 96) = v7;
  *(a1 + 64) = v9;
  if (v3 == 1)
  {
    sub_261478704((a1 + 120), atomic_load_explicit(a2 + 15, memory_order_acquire));
  }

  else
  {
    explicit = atomic_load_explicit(a2 + 15, memory_order_acquire);
    if (explicit)
    {
      explicit = CFRetain(explicit);
    }

    *(a1 + 120) = explicit;
    *(a1 + 128) = 1;
  }

  return a1;
}

__n128 sub_2614A23B8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D4788;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2614A2470(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_125EphemeralPyramidAllocatorILNS_25PyramidGenerationBehaviorE0EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A24AC(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "EphemeralPyramidAllocator::allocate", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A2650(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4708;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A26F0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_125EphemeralPyramidAllocatorILNS_25PyramidGenerationBehaviorE0EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A272C(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "EphemeralPyramidAllocator::allocate", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A28D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4688;
  a2[1] = v2;
  return result;
}

void sub_2614A2A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x2667045D0](a9, v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614A2A74(uint64_t a1)
{
  sub_26148D890((a1 + 48));
  sub_26148D890((a1 + 40));

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614A2AC8(uint64_t a1)
{
  sub_26148D890((a1 + 48));
  sub_26148D890((a1 + 40));
  return a1;
}

uint64_t sub_2614A2B08(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120PixelTransferSessionILNS_25PyramidGenerationBehaviorE0EE6createERKNS_7Context7OptionsERNSt3__18optionalINS_5ErrorEEERKNS9_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A2B44(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "PixelTransferSession::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614A2C7C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120PixelTransferSessionILNS_25PyramidGenerationBehaviorE0EE6createERKNS_7Context7OptionsERNSt3__18optionalINS_5ErrorEEERKNS9_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A2CB8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PixelTransferSession::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614A2DF0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE0EE6createERKNS_7Context7OptionsERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A2E2C(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "PyramidGenerationSession::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614A2F64(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE0EE6createERKNS_7Context7OptionsERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A2FA0(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PyramidGenerationSession::create", &unk_26159692B, v4, 2u);
    }
  }
}

__n128 sub_2614A30D4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D4C38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2614A3170(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_26149E17C(v2 + 6);
      sub_26149E1E4((v2 + 7));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2614A31D0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7Context3Any4makeINS_12_GLOBAL__N_131PyramidGenerationSessionContextILNS_25PyramidGenerationBehaviorE0EEEvEES1_RKNS0_7OptionsEP16dispatch_queue_sEUlPvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A320C(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 8);
    if (v2)
    {
      sub_26149E780(v2);
    }

    JUMPOUT(0x2667045D0);
  }
}

uint64_t sub_2614A32F8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "NSt3__110shared_ptrIN3mrc12_GLOBAL__N_131PyramidGenerationSessionContextILNS1_25PyramidGenerationBehaviorE0EEEE27__shared_ptr_default_deleteIS5_S5_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614A3330(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 200) == 1)
    {
      sub_261501098((v1 + 104));
    }

    if (*(v1 + 96) == 1)
    {
      sub_26149B834((v1 + 88), 0);
    }

    sub_26148D890((v1 + 40));
    sub_26148D890((v1 + 32));
    v2 = *(v1 + 8);
    *v1 = &unk_2873D4B48;
    *(v1 + 8) = 0;
    if (v2)
    {
      (*(v1 + 16))();
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

void sub_2614A33EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_2614A3428(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    sub_261501098((a1 + 104));
  }

  if (*(a1 + 96) == 1)
  {
    sub_26149B834((a1 + 88), 0);
  }

  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v2 = *(a1 + 8);
  *a1 = &unk_2873D4B48;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614A34D4(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    sub_261501098((a1 + 104));
  }

  if (*(a1 + 96) == 1)
  {
    sub_26149B834((a1 + 88), 0);
  }

  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v2 = *(a1 + 8);
  *a1 = &unk_2873D4B48;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

void sub_2614A3560(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D4B48;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614A35D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D4B48;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

uint64_t sub_2614A362C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE0EE26generatePyramidWithContextERNS_7ContextERKNS_6SampleERKNSt3__18optionalI6CGRectEERNS9_INS_5ErrorEEERKNS9_IyEEEUlOT_OT0_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_2614A3668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) != 1 || *(a3 + 96) == 1)
  {
    sub_261477470(*(a1 + 8), a3);
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v4 = qword_280CB3EB8;
    result = os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v28 = *(a1 + 8);
    if (*(v28 + 96) == 1)
    {
      sub_2615010E4(v62, v28);
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
      *v62 = -1;
      v63 = 0;
      v66 = 0u;
      v67 = 0u;
      BYTE12(v64) = 0;
      BYTE4(v66) = 0;
      v68 = 0u;
    }

    sub_261501518(v73, v62);
    explicit = atomic_load_explicit(v73, memory_order_acquire);
    *buf = 138543362;
    *&buf[4] = explicit;
    v30 = "Cannot retrieve or instantiate pyramid generation session: %{public}@";
LABEL_42:
    _os_log_error_impl(&dword_26146F000, v4, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    sub_261476C54(v73);
    return sub_261501098(v62);
  }

  v6 = *a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 8);
  v10 = *(a1 + 40);
  if (atomic_load_explicit(v7 + 6, memory_order_acquire))
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v11 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
    {
      *v62 = 0;
      _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "Sample has existing pyramid, skipping...", v62, 2u);
    }

    v12 = atomic_load_explicit(v7 + 6, memory_order_acquire);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    v54 = v12;
    goto LABEL_91;
  }

  v73[0] = &unk_2873D4218;
  v73[1] = v7;
  v74 = v73;
  v72[0] = &unk_2873D4298;
  v72[1] = v7;
  v72[3] = v72;
  *v62 = v10;
  sub_261489C64(&v63, v72);
  if (*(v10 + 8) == 1 && v74 != 0)
  {
    sub_261489CFC(v74, **v62);
  }

  sub_261489D4C(v72);
  sub_261489D4C(v73);
  v59 = *v7;
  v60 = v9;
  v61 = sub_2614F54AC(v59, v9);
  if ((v61 & 1) == 0)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v27 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      v42 = *(v9 + 24);
      *buf = 67240192;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_26146F000, v27, OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed: %{public}d", buf, 8u);
    }

    v54 = 0;
    goto LABEL_87;
  }

  sub_26149B94C(&v58, *v7, &v59, v9);
  if (!atomic_load_explicit(&v58, memory_order_acquire))
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v31 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Failed to get or create shallow Yp8 pixel buffer.", buf, 2u);
    }

    goto LABEL_52;
  }

  Width = CVPixelBufferGetWidth(atomic_load_explicit(&v58, memory_order_acquire));
  Height = CVPixelBufferGetHeight(atomic_load_explicit(&v58, memory_order_acquire));
  CVPixelBufferGetPixelFormatType(atomic_load_explicit(&v58, memory_order_acquire));
  v16 = (*v6)[2];
  if (!v16)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v32 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v32, OS_LOG_TYPE_ERROR, "Invalid pyramid allocator", buf, 2u);
    }

    *buf = -2011;
    *&v55 = @"Invalid pyramid allocator.";
    sub_261476754(v9, buf, &v55);
LABEL_52:
    v54 = 0;
    goto LABEL_85;
  }

  v17 = Width;
  v18 = Height;
  v19 = (*(*v16 + 16))(v16, Width);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v20 = qword_280CB3EB8;
  v21 = os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      v48 = (*(*(*v6)[2] + 40))((*v6)[2]);
      v49 = (*v6)[2];
      *buf = 136446466;
      *&buf[4] = v48;
      *&buf[12] = 2050;
      *&buf[14] = v49;
      _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Resetting pyramid allocator <%{public}s %{public}p>", buf, 0x16u);
    }

    (*(*(*v6)[2] + 24))(&v55);
    v22 = v55;
    if (v55)
    {
      v23 = *v6;
      *&v55 = 0;
      v24 = v23[2];
      v23[2] = v22;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v25 = (*(*(*v6)[2] + 40))((*v6)[2]);
        v26 = (*v6)[2];
        *buf = 136446466;
        *&buf[4] = v25;
        *&buf[12] = 2050;
        *&buf[14] = v26;
        _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "New pyramid allocator: <%{public}s %{public}p>", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v52 = (*(*(*v6)[2] + 40))((*v6)[2]);
        v53 = (*v6)[2];
        *buf = 136446466;
        *&buf[4] = v52;
        *&buf[12] = 2050;
        *&buf[14] = v53;
        _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Unable to reset pyramid allocator <%{public}s %{public}p>", buf, 0x16u);
      }

      v54 = 0;
    }

    v35 = v55;
    *&v55 = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    if (!v22)
    {
      goto LABEL_85;
    }
  }

  else if (v21)
  {
    v33 = (*(*(*v6)[2] + 40))((*v6)[2]);
    v34 = (*v6)[2];
    *buf = 136446466;
    *&buf[4] = v33;
    *&buf[12] = 2050;
    *&buf[14] = v34;
    _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Pyramid allocator <%{public}s %{public}p> can be reused", buf, 0x16u);
  }

  (*(*(*v6)[2] + 32))(&v57);
  if (!atomic_load_explicit(&v57, memory_order_acquire))
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v50 = (*(*(*v6)[2] + 40))((*v6)[2]);
      v51 = (*v6)[2];
      *buf = 136446466;
      *&buf[4] = v50;
      *&buf[12] = 2050;
      *&buf[14] = v51;
      _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Pyramid allocator <%{public}s %{public}p>: unable to allocate pyramid", buf, 0x16u);
    }

    v54 = 0;
    goto LABEL_84;
  }

  v36 = *(v7 + 2);
  v37 = *(v7 + 3);
  v38 = *(v7 + 4);
  v39 = *(v7 + 5);
  v76.origin.x = v36;
  v76.origin.y = v37;
  v76.size.width = v38;
  v76.size.height = v39;
  if (CGRectIsNull(v76))
  {
    goto LABEL_63;
  }

  v77.origin.x = v36;
  v77.origin.y = v37;
  v77.size.width = v38;
  v77.size.height = v39;
  if (CGRectIsInfinite(v77))
  {
    x = *MEMORY[0x277CBF348];
    y = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v83.origin.x = 0.0;
    v83.origin.y = 0.0;
    v78.origin.x = v36;
    v78.origin.y = v37;
    v78.size.width = v38;
    v78.size.height = v39;
    v83.size.width = v17;
    v83.size.height = Height;
    v79 = CGRectIntersection(v78, v83);
    x = v79.origin.x;
    y = v79.origin.y;
    v17 = v79.size.width;
    v18 = v79.size.height;
    if (CGRectIsNull(v79))
    {
LABEL_63:
      x = *MEMORY[0x277CBF3A0];
      y = *(MEMORY[0x277CBF3A0] + 8);
      v17 = *(MEMORY[0x277CBF3A0] + 16);
      v18 = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  *&v55 = x;
  *(&v55 + 1) = y;
  *&v56 = v17;
  *(&v56 + 1) = v18;
  if (*(v8 + 32) == 1 && !CGRectIsNull(*v8) && !CGRectIsInfinite(*v8))
  {
    v80.origin.x = x;
    v80.origin.y = y;
    v80.size.width = v17;
    v80.size.height = v18;
    v81 = CGRectIntersection(v80, *v8);
    x = v81.origin.x;
    y = v81.origin.y;
    v17 = v81.size.width;
    v18 = v81.size.height;
    *&v55 = v81.origin.x;
    *(&v55 + 1) = *&v81.origin.y;
    *&v56 = v81.size.width;
    *(&v56 + 1) = *&v81.size.height;
    if (CGRectIsNull(v81))
    {
      v43 = *(MEMORY[0x277CBF3A0] + 16);
      v55 = *MEMORY[0x277CBF3A0];
      v56 = v43;
      y = *(&v55 + 1);
      x = *&v55;
      v18 = *(&v43 + 1);
      v17 = *&v43;
    }
  }

  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = v17;
  v82.size.height = v18;
  if (CGRectIsEmpty(v82))
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Empty effective region-of-interest.", buf, 2u);
    }

    v44 = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
  }

  else
  {
    *buf = &v58;
    *&buf[8] = &v55;
    *&buf[16] = &v57;
    v70 = v9;
    v71 = v10;
    if (sub_26149C398(buf, *v6))
    {
      v44 = atomic_load_explicit(&v57, memory_order_acquire);
      if (v44)
      {
        v44 = CFRetain(v44);
      }
    }

    else
    {
      v44 = 0;
    }
  }

  v54 = v44;
LABEL_84:
  sub_261476A0C(&v57);
LABEL_85:
  sub_2614776F0(&v58);
  if (v61)
  {
    sub_2614F5408(v59, v60);
  }

LABEL_87:
  if (*(*v62 + 8) == 1 && v65)
  {
    sub_261489CFC(v65, **v62);
  }

  sub_261489D4C(&v63);
LABEL_91:
  v45 = atomic_exchange(*(a1 + 16), atomic_exchange(&v54, 0));
  if (v45)
  {
    CFRelease(v45);
  }

  result = sub_261476A0C(&v54);
  if (!atomic_load_explicit(*(a1 + 16), memory_order_acquire) || *(*(a1 + 8) + 96) == 1)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v4 = qword_280CB3EB8;
    result = os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v46 = *(a1 + 8);
      if (*(v46 + 96) == 1)
      {
        sub_2615010E4(v62, v46);
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        *v62 = -1;
        v63 = 0;
        v66 = 0u;
        v67 = 0u;
        BYTE12(v64) = 0;
        BYTE4(v66) = 0;
        v68 = 0u;
      }

      sub_261501518(v73, v62);
      v47 = atomic_load_explicit(v73, memory_order_acquire);
      *buf = 138543362;
      *&buf[4] = v47;
      v30 = "Cannot generate pyramid: %{public}@";
      goto LABEL_42;
    }
  }

  return result;
}

void sub_2614A425C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va3, a10);
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  sub_261476A0C(va);
  sub_2614776F0(va1);
  sub_26149CB74(va2);
  sub_261489DCC(va3);
  _Unwind_Resume(a1);
}

__n128 sub_2614A4380(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D4318;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

atomic_ullong *sub_2614A443C@<X0>(uint64_t a1@<X0>, CFErrorRef *a2@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  LOBYTE(v4[0]) = 0;
  v5 = 0;
  v6[0] = &unk_2873D4CB8;
  v6[1] = v4;
  v6[3] = v6;
  sub_26149D910(a1, v6);
  result = sub_26149DEE4(v6);
  if (v5 == 1)
  {
    result = sub_261501518(a2, v4);
    if (v5)
    {
      return sub_261501098(v4);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2614A4500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    sub_261501098(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614A453C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE0EE19preflightForContextERNS_7ContextEEUlOT_OT0_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614A4578(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    return sub_261477470(*(result + 8), a3);
  }

  return result;
}

uint64_t sub_2614A4598(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4CB8;
  a2[1] = v2;
  return result;
}

uint64_t *sub_2614A462C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (*(v2 + 8) == 1)
    {
      sub_2614A46C8(v2);
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

atomic_ullong *sub_2614A46C8(atomic_ullong *a1)
{
  if (atomic_load_explicit(a1, memory_order_acquire))
  {
    VTPixelTransferSessionInvalidate(atomic_load_explicit(a1, memory_order_acquire));
  }

  return sub_26149B918(a1);
}

BOOL sub_2614A4710(uint64_t a1, atomic_ullong *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(*a1, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v44 = explicit;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(v5 + 16);
  v43.origin = *v5;
  v43.size = v7;
  Count = CFArrayGetCount(atomic_load_explicit(v6, memory_order_acquire));
  if (Count < 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    propertyKey = *MEMORY[0x277CE28B8];
    v40 = *MEMORY[0x277CE2868];
    v38 = *MEMORY[0x277CBEE40];
    allocator = *MEMORY[0x277CBECE8];
    v36 = *MEMORY[0x277CE2898];
    v37 = *MEMORY[0x277CE28A0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(*(a1 + 16), memory_order_acquire), v10);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      v42 = ValueAtIndex;
      Width = CVPixelBufferGetWidth(atomic_load_explicit(&v42, memory_order_acquire));
      v13 = sub_26149CBB8(&v42);
      PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(&v42, memory_order_acquire));
      v15 = sub_26149CC78(&v43, Width, v13, PixelFormatType);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      CGAffineTransformMakeScale(&v49, 2.0, 2.0);
      v55.origin.x = v15;
      v55.origin.y = v17;
      v55.size.width = v19;
      v55.size.height = v21;
      v56 = CGRectApplyAffineTransform(v55, &v49);
      v43 = v56;
      v23 = *(a1 + 24);
      v22 = *(a1 + 32);
      if (!atomic_load_explicit(a2, memory_order_acquire))
      {
        break;
      }

      if (!atomic_load_explicit(&v44, memory_order_acquire) || !atomic_load_explicit(&v42, memory_order_acquire))
      {
        if (qword_280CB3EC0 != -1)
        {
          dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
        }

        v31 = qword_280CB3EB8;
        if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v49.a) = 0;
          _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Invalid source and/or destination buffer.", &v49, 2u);
        }

        v49.a = NAN;
        *buf = @"Invalid source and/or destination buffer.";
        sub_261476754(v23, &v49, buf);
        goto LABEL_53;
      }

      x = v56.origin.x;
      y = v56.origin.y;
      v26 = v56.size.width;
      height = v56.size.height;
      v51[0] = &unk_2873D4118;
      v52 = v51;
      v50[0] = &unk_2873D4198;
      v50[3] = v50;
      v49.a = v22;
      sub_261489C64(&v49.b, v50);
      if (*(*&v49.a + 8) == 1 && v52)
      {
        sub_261489CFC(v52, **&v49.a);
      }

      sub_261489D4C(v50);
      sub_261489D4C(v51);
      v46 = 0;
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = v26;
      v57.size.height = height;
      *buf = CGRectCreateDictionaryRepresentation(v57);
      v28 = atomic_exchange(&v46, atomic_exchange(buf, 0));
      if (v28)
      {
        CFRelease(v28);
      }

      sub_26148D93C(buf);
      v45 = 0;
      v58.origin.x = v15;
      v58.origin.y = v17;
      v58.size.width = v19;
      v58.size.height = v21;
      *buf = CGRectCreateDictionaryRepresentation(v58);
      v29 = atomic_exchange(&v45, atomic_exchange(buf, 0));
      if (v29)
      {
        CFRelease(v29);
      }

      sub_26148D93C(buf);
      VTSessionSetProperty(atomic_load_explicit(a2, memory_order_acquire), propertyKey, atomic_load_explicit(&v46, memory_order_acquire));
      VTSessionSetProperty(atomic_load_explicit(a2, memory_order_acquire), v40, atomic_load_explicit(&v45, memory_order_acquire));
      v30 = VTPixelTransferSessionTransferImage(atomic_load_explicit(a2, memory_order_acquire), atomic_load_explicit(&v44, memory_order_acquire), atomic_load_explicit(&v42, memory_order_acquire));
      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v31 = qword_280CB3EB8;
      if (v30)
      {
        if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v30;
          _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "VTPixelTransferSessionTransferImage failed: %{public}d", buf, 8u);
        }

        *buf = -2004;
        propertyValueOut = @"VTPixelTransferSessionTransferImage failed.";
        sub_261476754(v23, buf, &propertyValueOut);
        *buf = CFErrorCreate(allocator, v38, v30, 0);
        v32 = atomic_exchange(v23 + 8, atomic_exchange(buf, 0));
        if (v32)
        {
          CFRelease(v32);
        }

        sub_261476C54(buf);
      }

      else if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
      {
        propertyValueOut = 0;
        if (!VTSessionCopyProperty(atomic_load_explicit(a2, memory_order_acquire), v37, allocator, &propertyValueOut))
        {
          v33 = propertyValueOut;
          if (propertyValueOut)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v33;
              _os_log_debug_impl(&dword_26146F000, v31, OS_LOG_TYPE_DEBUG, "PixelTransferSession: mostRecentConversionType: %{public}@", buf, 0xCu);
              v33 = propertyValueOut;
            }

            CFRelease(v33);
          }
        }

        v47 = 0;
        if (!VTSessionCopyProperty(atomic_load_explicit(a2, memory_order_acquire), v36, allocator, &v47))
        {
          v34 = v47;
          if (v47)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v34;
              _os_log_debug_impl(&dword_26146F000, v31, OS_LOG_TYPE_DEBUG, "PixelTransferSession: mostRecentChainDescription: %{public}@", buf, 0xCu);
              v34 = v47;
            }

            CFRelease(v34);
          }
        }
      }

      sub_26148D93C(&v45);
      sub_26148D93C(&v46);
      if (*(*&v49.a + 8) == 1 && *&v49.tx)
      {
        sub_261489CFC(*&v49.tx, **&v49.a);
      }

      sub_261489D4C(&v49.b);
      if (v30)
      {
        goto LABEL_53;
      }

      sub_261478704(&v44, atomic_load_explicit(&v42, memory_order_acquire));
      v43.origin.x = v15;
      v43.origin.y = v17;
      v43.size.width = v19;
      v43.size.height = v21;
      sub_2614776F0(&v42);
      v9 = ++v10 >= Count;
      if (Count == v10)
      {
        goto LABEL_56;
      }
    }

    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v31 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49.a) = 0;
      _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Invalid pixel transfer session.", &v49, 2u);
    }

    v49.a = NAN;
    *buf = @"Invalid pixel transfer session.";
    sub_261476754(v23, &v49, buf);
LABEL_53:
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v49.a) = 134349056;
      *(&v49.a + 4) = v10;
      _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Failed to transfer image at level #%{public}ld.", &v49, 0xCu);
    }

    sub_2614776F0(&v42);
  }

LABEL_56:
  sub_2614776F0(&v44);
  return v9;
}

void sub_2614A4E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, atomic_ullong a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, atomic_ullong a26)
{
  sub_2614776F0(&a20);
  sub_2614776F0(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_2614A4EF8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120PixelTransferSessionILNS_25PyramidGenerationBehaviorE1EE13transferImageERKNS_5CFRefIP10__CVBufferEES9_RKNSt3__18optionalI6CGRectEESF_RNSB_INS_5ErrorEEERKNSB_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A4F34(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "PixelTransferSession::transferImage", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614A506C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120PixelTransferSessionILNS_25PyramidGenerationBehaviorE1EE13transferImageERKNS_5CFRefIP10__CVBufferEES9_RKNSt3__18optionalI6CGRectEESF_RNSB_INS_5ErrorEEERKNSB_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A50A8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PixelTransferSession::transferImage", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614A51E0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE1EE15generatePyramidERKNS_6SampleERKNSt3__18optionalI6CGRectEERNS7_INS_5ErrorEEERKNS7_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A521C(uint64_t a1, os_signpost_id_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = vcvtpd_u64_f64(CGRectGetWidth(*(**(a1 + 8) + 8)));
      v11 = *(**(a1 + 8) + 8);
      v6 = 134349312;
      v7 = v5;
      v8 = 2050;
      v9 = vcvtpd_u64_f64(CGRectGetHeight(v11));
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v3, "PyramidGenerationSession::generatePyramid", "masterPixelBufferWidth=%{public, signpost.description:attribute}zu, masterPixelBufferHeight=%{public, signpost.description:attribute}zu", &v6, 0x16u);
    }
  }
}

uint64_t sub_2614A5348(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4DB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A53E8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE1EE15generatePyramidERKNS_6SampleERKNSt3__18optionalI6CGRectEERNS7_INS_5ErrorEEERKNS7_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A5424(uint64_t a1, os_signpost_id_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = vcvtpd_u64_f64(CGRectGetWidth(*(**(a1 + 8) + 8)));
      v11 = *(**(a1 + 8) + 8);
      v6 = 134349312;
      v7 = v5;
      v8 = 2050;
      v9 = vcvtpd_u64_f64(CGRectGetHeight(v11));
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PyramidGenerationSession::generatePyramid", "masterPixelBufferWidth=%{public, signpost.description:attribute}zu, masterPixelBufferHeight=%{public, signpost.description:attribute}zu", &v6, 0x16u);
    }
  }
}

uint64_t sub_2614A5550(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D4D38;
  a2[1] = v2;
  return result;
}

void sub_2614A55E4(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a2 + 24);
  if (!*(a2 + 24))
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  v5 = &unk_26156AC50;
  v6 = sub_26149DF64((a1 + 24), &unk_26156AC50);
  if (!v6)
  {
    v11[0] = &unk_26156AC50;
    v11[1] = v11;
    v11[2] = "LegacyPyramidGenerationSessionContext";
    v11[3] = 37;
    operator new();
  }

  if (v6[3] != &unk_26156AC50)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  v7 = v6[6];
  if (!v7)
  {
LABEL_29:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_30:
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
LABEL_13:
    v10 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(context[0]) = 0;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "Unable to retrieve or instantiate concrete PyramidGenerationSession context.", context, 2u);
    }

    LOBYTE(v17) = 0;
    v18 = 0;
    sub_261500FD8(v14, -1, 0);
    sub_26150122C(context, v14);
    v16 = 1;
    if (!*v2)
    {
      sub_261477FC4();
    }

    (*(**v2 + 48))(*v2, &v17, context);
    if (v16 == 1)
    {
      sub_261501098(context);
    }

    sub_261501098(v14);
    if (v5)
    {
      goto LABEL_26;
    }

    return;
  }

  v8 = *v7;
  v5 = v7[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 8));
  if (!v8)
  {
    if (qword_280CB3EC0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  v9 = *v2;
  if (!*v2)
  {
    v2 = &v13;
    goto LABEL_21;
  }

  if (v9 != a2)
  {
    v13 = *v2;
LABEL_21:
    *v2 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  (*(*v9 + 24))(v9, v12);
LABEL_23:
  if (v13)
  {
    context[0] = &unk_2873D5748;
    context[1] = v8;
    context[2] = v12;
    context[3] = context;
    dispatch_barrier_async_and_wait_f(*(v8 + 8), context, sub_2614A5CE8);
    sub_261477CFC(context);
  }

  sub_2614A5BB8(v12);
  if (v5)
  {
LABEL_26:
    sub_26149E780(v5);
  }
}

void sub_2614A5AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614A5BB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_2614A5C38(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 200) == 1)
    {
      sub_261501098((v2 + 104));
    }

    if (*(v2 + 96) == 1)
    {
      sub_2614A462C((v2 + 88), 0);
    }

    sub_26148D890((v2 + 40));
    sub_26148D890((v2 + 32));
    v3 = *(v2 + 8);
    *v2 = &unk_2873D5658;
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(v2 + 16))();
    }

    MEMORY[0x2667045D0](v2, 0x10E3C400794066BLL);
  }

  return a1;
}

uint64_t sub_2614A5CE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_2614A5D3C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_131PyramidGenerationSessionContextILNS_25PyramidGenerationBehaviorE1EE7performENSt3__18functionIFvONS4_8optionalINS4_17reference_wrapperINS_24PyramidGenerationSessionILS2_1EEEEEEEONS6_INS_5ErrorEEEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_2614A5D78(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (*(v2 + 200) == 1)
  {
    v3 = *(a1 + 16);
    LOBYTE(v35) = 0;
    v36[0] = 0;
    sub_2615010E4(v38, v2 + 104);
    v41 = 1;
    v4 = *(v3 + 24);
    if (!v4)
    {
      sub_261477FC4();
    }

    result = (*(*v4 + 48))(v4, &v35, v38);
LABEL_46:
    if (v41 != 1)
    {
      return result;
    }

    v25 = v38;
    return sub_261501098(v25);
  }

  if (*(v2 + 96))
  {
    goto LABEL_44;
  }

  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v29 = os_signpost_id_make_with_pointer(qword_280CB3EB8, v2);
  v30 = 1;
  v43[0] = &unk_2873D4EC8;
  v44 = v43;
  v42[0] = &unk_2873D4F48;
  v42[3] = v42;
  v35 = &v29;
  sub_261489C64(v36, v42);
  if (*(v35 + 8) == 1 && v44 != 0)
  {
    sub_261489CFC(v44, *v35);
  }

  sub_261489D4C(v42);
  sub_261489D4C(v43);
  v47 = &unk_2873D4FC8;
  v49 = &v47;
  v46[0] = &unk_2873D5048;
  v46[3] = v46;
  *v38 = &v29;
  sub_261489C64(v39, v46);
  if (*(*v38 + 8) == 1 && v49)
  {
    sub_261489CFC(v49, **v38);
  }

  sub_261489D4C(v46);
  sub_261489D4C(&v47);
  pixelTransferSessionOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = VTPixelTransferSessionCreate(*MEMORY[0x277CBECE8], &pixelTransferSessionOut);
  if (v8)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v9 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_26146F000, v9, OS_LOG_TYPE_ERROR, "VTPixelTransferSessionCreate failed: %{public}d", buf, 8u);
    }

    *buf = -2003;
    v33 = @"VTPixelTransferSessionCreate failed.";
    sub_261476754((v2 + 104), buf, &v33);
    *buf = CFErrorCreate(v7, *MEMORY[0x277CBEE40], v8, 0);
    v10 = atomic_exchange((v2 + 168), atomic_exchange(buf, 0));
    if (v10)
    {
      CFRelease(v10);
    }

    sub_261476C54(buf);
    LOBYTE(v31) = 0;
    v32 = 0;
  }

  else
  {
    v33 = pixelTransferSessionOut;
    *buf = atomic_exchange(&v33, 0);
    if (atomic_load_explicit(buf, memory_order_acquire))
    {
      explicit = atomic_load_explicit(buf, memory_order_acquire);
      VTSessionSetProperty(explicit, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]);
      v12 = atomic_load_explicit(buf, memory_order_acquire);
      VTSessionSetProperty(v12, *MEMORY[0x277CE2870], *MEMORY[0x277CE2780]);
      v13 = *(v2 + 48);
      HIDWORD(v15) = v13 - 9;
      LODWORD(v15) = v13 - 9;
      v14 = v15 >> 2;
      v16 = MEMORY[0x277CBED28];
      if (v14 <= 6 && ((0x22u >> v14) & 1) == 0)
      {
        if (((1 << v14) & 0x5D) == 0)
        {
          v13 = qos_class_self();
        }

        if (v13 == QOS_CLASS_USER_INTERACTIVE)
        {
          v17 = atomic_load_explicit(buf, memory_order_acquire);
          VTSessionSetProperty(v17, *MEMORY[0x277CE28A8], *v16);
        }
      }

      v18 = atomic_load_explicit(buf, memory_order_acquire);
      VTSessionSetProperty(v18, *MEMORY[0x277CE2888], *v16);
      v19 = atomic_load_explicit(buf, memory_order_acquire);
      v20 = *MEMORY[0x277CBED10];
      VTSessionSetProperty(v19, *MEMORY[0x277CE28C8], *MEMORY[0x277CBED10]);
      v21 = atomic_load_explicit(buf, memory_order_acquire);
      VTSessionSetProperty(v21, *MEMORY[0x277CE2880], v20);
      v22 = atomic_load_explicit(buf, memory_order_acquire);
      VTSessionSetProperty(v22, *MEMORY[0x277CE2878], v20);
    }

    v31 = atomic_exchange(buf, 0);
    v32 = 1;
    sub_2614A46C8(buf);
    sub_26149B918(&v33);
  }

  if (*(*v38 + 8) == 1 && v40)
  {
    sub_261489CFC(v40, **v38);
  }

  sub_261489D4C(v39);
  if (!v8)
  {
    operator new();
  }

  v38[0] = 0;
  v39[0] = 0;
  if (*(v35 + 8) == 1 && v37)
  {
    sub_261489CFC(v37, *v35);
  }

  sub_261489D4C(v36);
  if (*(v2 + 96))
  {
    sub_2614A462C((v2 + 88), 0);
    *(v2 + 96) = 0;
  }

  if (*(v2 + 96))
  {
LABEL_44:
    v23 = *(a1 + 16);
    v35 = (v2 + 88);
    v36[0] = 1;
    v38[0] = 0;
    v41 = 0;
    v24 = *(v23 + 24);
    if (!v24)
    {
      sub_261477FC4();
    }

    result = (*(*v24 + 48))(v24, &v35, v38);
    goto LABEL_46;
  }

  v26 = *(a1 + 16);
  LOBYTE(v47) = 0;
  v48 = 0;
  v27 = *(v2 + 200);
  if (v27 == 1)
  {
    sub_2615010E4(v38, v2 + 104);
  }

  else
  {
    sub_261500FD8(&v35, -1, 0);
    sub_26150122C(v38, &v35);
  }

  v41 = 1;
  v28 = *(v26 + 24);
  if (!v28)
  {
    sub_261477FC4();
  }

  result = (*(*v28 + 48))(v28, &v47, v38);
  if (v41 == 1)
  {
    result = sub_261501098(v38);
  }

  if ((v27 & 1) == 0)
  {
    v25 = &v35;
    return sub_261501098(v25);
  }

  return result;
}

void sub_2614A65E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_26148D890((v3 + 40));
  MEMORY[0x2667045D0](v3, 0x10C1C40764D44F6);
  if (v7 == 1)
  {
    sub_2614A46C8(va);
  }

  sub_261489DCC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2614A6778@<X0>(atomic_ullong *a1@<X1>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v4 = qword_280CB3EB8;
  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "virtual CFRef<CFArrayRef> mrc::(anonymous namespace)::PlaceholderPyramidAllocator<mrc::PyramidGenerationBehavior::Legacy>::allocate(std::optional<Error> &, const std::optional<os_signpost_id_t> &) const [_Behavior = mrc::PyramidGenerationBehavior::Legacy]";
    _os_log_fault_impl(&dword_26146F000, v4, OS_LOG_TYPE_FAULT, "Unexpected invocation: %{public}s", buf, 0xCu);
  }

  v6 = @"PlaceholderPyramidAllocator::allocate should never be invoked.";
  *buf = -2011;
  result = sub_261476754(a1, buf, &v6);
  *a2 = 0;
  return result;
}

void sub_2614A687C(uint64_t a1)
{
  if (*(a1 + 89) == 1 && (*(a1 + 88) & 1) != 0)
  {
    operator new();
  }

  operator new();
}

void sub_2614A6A0C(void *a1, uint64_t *a2, atomic_ullong *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v7 = qword_280CB3EB8;
  if (v6)
  {
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "EphemeralPyramidAllocator";
      v10 = 2050;
      v11 = v6;
      _os_log_debug_impl(&dword_26146F000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}p is ready", buf, 0x16u);
      v6 = *a2;
    }

    *a2 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "EphemeralPyramidAllocator";
      _os_log_error_impl(&dword_26146F000, v7, OS_LOG_TYPE_ERROR, "Failed to allocate pyramid allocator: %{public}s", buf, 0xCu);
    }

    v8 = @"Failed to allocate pyramid allocator.";
    *buf = -2003;
    sub_261476754(a3, buf, &v8);
    v6 = 0;
  }

  *a1 = v6;
}

void sub_2614A6B8C(void *a1, _BYTE **a2, atomic_ullong *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (!*a2)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v11 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "CachedPyramidAllocator";
      _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "Failed to allocate pyramid allocator: %{public}s", buf, 0xCu);
    }

    v12 = @"Failed to allocate pyramid allocator.";
    *buf = -2003;
    sub_261476754(a3, buf, &v12);
    goto LABEL_17;
  }

  v9 = v6[96];
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v10 = qword_280CB3EB8;
  if (v9)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "CachedPyramidAllocator";
    v14 = 2050;
    v15 = v6;
    _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}p is being prepared", buf, 0x16u);
    v6 = *a2;
  }

  if (!sub_2614A6DCC(v6, a3, a4))
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v6 = *a2;
LABEL_9:
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "CachedPyramidAllocator";
    v14 = 2050;
    v15 = v6;
    _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}p is ready", buf, 0x16u);
    v6 = *a2;
  }

  *a2 = 0;
LABEL_18:
  *a1 = v6;
}

uint64_t sub_2614A6DCC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  if ((a1[96] & 1) == 0)
  {
    v20[0] = &unk_2873D5328;
    v20[1] = a1;
    v21 = v20;
    v22 = a3;
    v19[0] = &unk_2873D53A8;
    v19[1] = a1;
    v19[3] = v19;
    sub_261489C64(v23, v19);
    if (*(v22 + 8) == 1 && v21 != 0)
    {
      sub_261489CFC(v21, *v22);
    }

    sub_261489D4C(v19);
    sub_261489D4C(v20);
    LOBYTE(v9) = 0;
    v17 = 0;
    if (a1[28])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v17 = 1;
      BYTE4(v15) = 1;
      LODWORD(v15) = 1024;
      WORD4(v15) = 257;
    }

    else
    {
      v5 = a1[29];
      if (v5 == 1)
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        v17 = 1;
      }
    }

    v7[0] = 0;
    v7[128] = 0;
    v8 = 0;
    sub_26149FE38(v7, &v9);
    v18 = 0;
    operator new();
  }

  return 1;
}

void sub_2614A7160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614A71FC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE1EE8prepare_ERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlmmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2614A7238(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  *v8 = *a3;
  *(v8 + 8) = 1;
  v9 = *(a1 + 8);
  *(v9 + 16) = v6;
  *(v9 + 24) = 1;
  if (*(*(a1 + 8) + 208) == 1)
  {
    *buf = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"MRC: Cached Pyramid Level #%zu", v5);
    v10 = atomic_exchange((*(a1 + 8) + 200), atomic_exchange(buf, 0));
    if (v10)
    {
      CFRelease(v10);
    }

    sub_26148E848(buf);
  }

  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v11 = qword_280CB3EB8;
  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "CachedPyramidAllocator";
    v25 = 2050;
    v26 = v5;
    _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: attempting to create a CVPixelBufferPool at level #%{public}zu", buf, 0x16u);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 8);
    v21 = 0;
    v22 = 0;
    sub_2614E2974(&v23, v17, &v22, &v21);
    explicit = atomic_load_explicit(&v23, memory_order_acquire);
    *buf = 136446722;
    *&buf[4] = "CachedPyramidAllocator";
    v25 = 2050;
    v26 = v5;
    v27 = 2114;
    v28 = explicit;
    _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: at level #%{public}zu, pixelBufferAttributes: %{public}@", buf, 0x20u);
    sub_26148D93C(&v23);
    sub_26148D93C(&v21);
    sub_26148D93C(&v22);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 16);
    v22 = 0;
    sub_2614E2EDC(&v23, v19, &v22);
    v20 = atomic_load_explicit(&v23, memory_order_acquire);
    *buf = 136446722;
    *&buf[4] = "CachedPyramidAllocator";
    v25 = 2050;
    v26 = v5;
    v27 = 2114;
    v28 = v20;
    _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: at level #%{public}zu, pixelBufferPoolAttributes: %{public}@", buf, 0x20u);
    sub_26148D93C(&v23);
    sub_26148D93C(&v22);
  }

  sub_2614E3234(buf, *(a1 + 16), *(a1 + 8), *(a1 + 32));
  v12 = (v7 + 48 + 8 * v5);
  v13 = atomic_exchange(v12, atomic_exchange(buf, 0));
  if (v13)
  {
    CFRelease(v13);
  }

  sub_26149F9E0(buf);
  v14 = atomic_load_explicit(v12, memory_order_acquire);
  if (v14)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = atomic_load_explicit(v12, memory_order_acquire);
      *buf = 136446722;
      *&buf[4] = "CachedPyramidAllocator";
      v25 = 2050;
      v26 = v5;
      v27 = 2114;
      v28 = v15;
      _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "%{public}s: at level #%{public}zu, allocated pixel buffer pool: %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "CachedPyramidAllocator";
    v25 = 2050;
    v26 = v5;
    _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "%{public}s: failed to create pixel buffer pool at level #%{public}zu", buf, 0x16u);
  }

  return v14 != 0;
}

void sub_2614A75EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_26148E848(va);
  _Unwind_Resume(a1);
}

__n128 sub_2614A7640(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D5428;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2614A76F8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE1EE8prepare_ERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A7734(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "CachedPyramidAllocator::prepare_", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A78D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D53A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A7978(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE1EE8prepare_ERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A79B4(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CachedPyramidAllocator::prepare_", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A7B58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D5328;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A7C00@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t a3@<X2>, CFArrayRef *a4@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v37[0] = &unk_2873D5510;
  v37[1] = a1;
  v38 = v37;
  v36[0] = &unk_2873D5590;
  v36[1] = a1;
  v36[3] = v36;
  v39 = a3;
  sub_261489C64(v40, v36);
  if (*(v39 + 8) == 1 && v38 != 0)
  {
    sub_261489CFC(v38, *v39);
  }

  sub_261489D4C(v36);
  sub_261489D4C(v37);
  if (*(a1 + 96))
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(a1 + 88), MEMORY[0x277CBF128]);
    if (atomic_load_explicit(&Mutable, memory_order_acquire))
    {
      v9 = *(a1 + 88);
      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v10 = qword_280CB3EB8;
      if (v9)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = (*(a1 + 80) + v11);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            explicit = atomic_load_explicit(v13, memory_order_acquire);
            *buf = 136446722;
            *&buf[4] = "CachedPyramidAllocator";
            v30 = 2050;
            v31 = v12;
            v32 = 2050;
            v33 = explicit;
            _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: attempting to create a CVPixelBuffer at level #%{public}zu from pool %{public}p", buf, 0x20u);
          }

          sub_2614E33C0(&v27, v13, a2);
          if (!atomic_load_explicit(&v27, memory_order_acquire))
          {
            break;
          }

          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), atomic_load_explicit(&v27, memory_order_acquire));
          sub_2614776F0(&v27);
          ++v12;
          v11 += 8;
          if (v12 >= *(a1 + 88))
          {
            goto LABEL_22;
          }
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v26 = atomic_load_explicit(v13, memory_order_acquire);
          *buf = 136446722;
          *&buf[4] = "CachedPyramidAllocator";
          v30 = 2050;
          v31 = v12;
          v32 = 2050;
          v33 = v26;
          _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "%{public}s: failed to create pixel buffer at level #%{public}zu from pool %{public}p", buf, 0x20u);
        }

        *a4 = 0;
        sub_2614776F0(&v27);
      }

      else
      {
LABEL_22:
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v19 = atomic_load_explicit(&Mutable, memory_order_acquire);
          Count = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
          *buf = 136446722;
          *&buf[4] = "CachedPyramidAllocator";
          v30 = 2050;
          v31 = v19;
          v32 = 2050;
          v33 = Count;
          _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: allocated pyramid %{public}p with %{public}ld level(s)", buf, 0x20u);
          v27 = CFStringCreateMutable(v8, 0);
          v21 = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
          if (v21 >= 1)
          {
            for (i = 0; i != v21; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), i);
              if (ValueAtIndex)
              {
                ValueAtIndex = CFRetain(ValueAtIndex);
              }

              *buf = ValueAtIndex;
              sub_26153B6C8(&v27, buf);
              sub_2614776F0(buf);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                v24 = atomic_load_explicit(&Mutable, memory_order_acquire);
                v25 = atomic_load_explicit(&v27, memory_order_acquire);
                *buf = 136446978;
                *&buf[4] = "CachedPyramidAllocator";
                v30 = 2050;
                v31 = i;
                v32 = 2050;
                v33 = v24;
                v34 = 2114;
                v35 = v25;
                _os_log_debug_impl(&dword_26146F000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: level #%{public}ld of pyramid %{public}p: %{public}@", buf, 0x2Au);
              }

              CFStringReplaceAll(atomic_load_explicit(&v27, memory_order_acquire), &stru_2873D7F70);
            }
          }

          sub_2614959D0(&v27);
        }

        *a4 = CFArrayCreateCopy(v8, atomic_load_explicit(&Mutable, memory_order_acquire));
      }
    }

    else
    {
      if (qword_280CB3EC0 != -1)
      {
        dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
      }

      v16 = qword_280CB3EB8;
      if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26146F000, v16, OS_LOG_TYPE_ERROR, "CFArrayCreateMutable failed", buf, 2u);
      }

      *buf = -2003;
      v27 = @"CFArrayCreateMutable failed.";
      sub_261476754(a2, buf, &v27);
      *a4 = 0;
    }

    sub_26147743C(&Mutable);
  }

  else
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v15 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = "CachedPyramidAllocator";
      _os_log_error_impl(&dword_26146F000, v15, OS_LOG_TYPE_ERROR, "%{public}s: effective pixel buffer pools are not yet ready", buf, 0xCu);
    }

    Mutable = @"Effective pixel buffer pools are not yet ready.";
    *buf = -2011;
    sub_261476754(a2, buf, &Mutable);
    *a4 = 0;
  }

  if (*(v39 + 8) == 1 && v41 != 0)
  {
    sub_261489CFC(v41, *v39);
  }

  return sub_261489D4C(v40);
}

void sub_2614A81B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_2614959D0(va);
  sub_26147743C(va1);
  sub_261489DCC((v3 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_2614A826C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE1EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A82A8(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "CachedPyramidAllocator::allocate", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A844C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D5590;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A84EC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_122CachedPyramidAllocatorILNS_25PyramidGenerationBehaviorE1EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A8528(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CachedPyramidAllocator::allocate", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A86CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D5510;
  a2[1] = v2;
  return result;
}

void sub_2614A888C(uint64_t a1)
{
  for (i = 72; i != 40; i -= 8)
  {
    sub_26149F9E0((a1 + i));
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614A88E8(uint64_t a1)
{
  for (i = 72; i != 40; i -= 8)
  {
    sub_26149F9E0((a1 + i));
  }

  return a1;
}

uint64_t sub_2614A8930@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2873D51A8;
  v14[1] = a1;
  v15 = v14;
  v13[0] = &unk_2873D5228;
  v13[1] = a1;
  v13[3] = v13;
  v16 = a3;
  sub_261489C64(v17, v13);
  if (*(v16 + 8) == 1 && v15 != 0)
  {
    sub_261489CFC(v15, *v16);
  }

  sub_261489D4C(v13);
  sub_261489D4C(v14);
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF128]);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    v12 = 0;
    operator new();
  }

  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v7 = qword_280CB3EB8;
  if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26146F000, v7, OS_LOG_TYPE_ERROR, "CFArrayCreateMutable failed", buf, 2u);
  }

  *buf = -2003;
  v9 = @"CFArrayCreateMutable failed.";
  sub_261476754(a2, buf, &v9);
  *a4 = 0;
  sub_26147743C(&Mutable);
  if (*(v16 + 8) == 1 && v18)
  {
    sub_261489CFC(v18, *v16);
  }

  return sub_261489D4C(v17);
}

void sub_2614A8DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_2614959D0(va);
  sub_26147743C(va1);
  sub_261489DCC((v3 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_2614A8E58(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_125EphemeralPyramidAllocatorILNS_25PyramidGenerationBehaviorE1EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlmmmE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2614A8E94(uint64_t a1, void *a2, size_t *a3, size_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = *(a1 + 8);
  v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"MRC: Ephemeral Pyramid Level #%zu", *a2);
  sub_2614A1EF0(&v12, v6, v7, *(v8 + 24), &v13, *(a1 + 16));
  explicit = atomic_load_explicit(&v12, memory_order_acquire);
  if (explicit)
  {
    CFArrayAppendValue(atomic_load_explicit(*(a1 + 24), memory_order_acquire), atomic_load_explicit(&v12, memory_order_acquire));
  }

  else
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v10 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "EphemeralPyramidAllocator";
      v16 = 2050;
      v17 = v5;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "%{public}s: failed to create IOSurface-backed pixel buffer at level #%{public}zu", buf, 0x16u);
    }
  }

  sub_2614776F0(&v12);
  sub_26148E848(&v13);
  return explicit != 0;
}

void sub_2614A9014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_2614776F0(va);
  sub_26148E848(va1);
  _Unwind_Resume(a1);
}

__n128 sub_2614A9040(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D52A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2614A90F8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_125EphemeralPyramidAllocatorILNS_25PyramidGenerationBehaviorE1EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A9134(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_END, v2, "EphemeralPyramidAllocator::allocate", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A92D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D5228;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614A9378(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc12_GLOBAL__N_125EphemeralPyramidAllocatorILNS_25PyramidGenerationBehaviorE1EE8allocateERNSt3__18optionalINS_5ErrorEEERKNS5_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_2614A93B4(uint64_t a1, os_signpost_id_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      v8 = HIBYTE(v7);
      v9 = v7;
      if (HIBYTE(v7) - 32 >= 0x5Fu)
      {
        v8 = 46;
      }

      if (v7 - 32 >= 0x5F)
      {
        v9 = 46;
      }

      v10 = vshl_u32(vdup_n_s32(v7), 0xFFFFFFF0FFFFFFF8);
      v11 = vshl_u32(vand_s8(vbsl_s8(vcgt_u32(0x5F0000005FLL, vand_s8(vadd_s32(v10, 0xE0000000E0), 0xFF000000FFLL)), v10, 0x2E0000002ELL), 0xFF000000FFLL), 0x800000010);
      v14 = 0;
      v13 = v11.i32[0] | (v9 << 24) | v8 | v11.i32[1];
      *buf = 134349826;
      v16 = v5;
      v17 = 2050;
      v18 = v6;
      v19 = 1042;
      v20 = 4;
      v21 = 2082;
      v22 = &v13;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "EphemeralPyramidAllocator::allocate", "masterWidth=%{public, signpost.description:attribute}zu, masterHeight=%{public, signpost.description:attribute}zu, pixelFormatType=%{public, signpost.description:attribute}.4s", buf, 0x26u);
    }
  }

  return result;
}

uint64_t sub_2614A9558(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D51A8;
  a2[1] = v2;
  return result;
}

void sub_2614A96C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x2667045D0](a9, v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614A96FC(uint64_t a1)
{
  sub_26148D890((a1 + 48));
  sub_26148D890((a1 + 40));

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614A9750(uint64_t a1)
{
  sub_26148D890((a1 + 48));
  sub_26148D890((a1 + 40));
  return a1;
}

uint64_t sub_2614A9790(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120PixelTransferSessionILNS_25PyramidGenerationBehaviorE1EE6createERKNS_7Context7OptionsERNSt3__18optionalINS_5ErrorEEERKNS9_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A97CC(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "PixelTransferSession::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614A9904(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc12_GLOBAL__N_120PixelTransferSessionILNS_25PyramidGenerationBehaviorE1EE6createERKNS_7Context7OptionsERNSt3__18optionalINS_5ErrorEEERKNS9_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A9940(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PixelTransferSession::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614A9A78(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE1EE6createERKNS_7Context7OptionsERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEEUlyE0_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A9AB4(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "PyramidGenerationSession::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614A9BEC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE1EE6createERKNS_7Context7OptionsERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEEUlyE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A9C28(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3EB8;
    if (os_signpost_enabled(qword_280CB3EB8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "PyramidGenerationSession::create", &unk_26159692B, v4, 2u);
    }
  }
}

__n128 sub_2614A9D5C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D5748;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2614A9E04(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7Context3Any4makeINS_12_GLOBAL__N_131PyramidGenerationSessionContextILNS_25PyramidGenerationBehaviorE1EEEvEES1_RKNS0_7OptionsEP16dispatch_queue_sEUlPvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614A9E40(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 8);
    if (v2)
    {
      sub_26149E780(v2);
    }

    JUMPOUT(0x2667045D0);
  }
}

uint64_t sub_2614A9F2C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "NSt3__110shared_ptrIN3mrc12_GLOBAL__N_131PyramidGenerationSessionContextILNS1_25PyramidGenerationBehaviorE1EEEE27__shared_ptr_default_deleteIS5_S5_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614A9F64(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 200) == 1)
    {
      sub_261501098((v1 + 104));
    }

    if (*(v1 + 96) == 1)
    {
      sub_2614A462C((v1 + 88), 0);
    }

    sub_26148D890((v1 + 40));
    sub_26148D890((v1 + 32));
    v2 = *(v1 + 8);
    *v1 = &unk_2873D5658;
    *(v1 + 8) = 0;
    if (v2)
    {
      (*(v1 + 16))();
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

void sub_2614AA020(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_2614AA05C(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    sub_261501098((a1 + 104));
  }

  if (*(a1 + 96) == 1)
  {
    sub_2614A462C((a1 + 88), 0);
  }

  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v2 = *(a1 + 8);
  *a1 = &unk_2873D5658;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614AA108(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    sub_261501098((a1 + 104));
  }

  if (*(a1 + 96) == 1)
  {
    sub_2614A462C((a1 + 88), 0);
  }

  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v2 = *(a1 + 8);
  *a1 = &unk_2873D5658;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

void sub_2614AA194(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D5658;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614AA204(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D5658;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

uint64_t sub_2614AA260(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE1EE26generatePyramidWithContextERNS_7ContextERKNS_6SampleERKNSt3__18optionalI6CGRectEERNS9_INS_5ErrorEEERKNS9_IyEEEUlOT_OT0_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_2614AA29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) != 1 || *(a3 + 96) == 1)
  {
    sub_261477470(*(a1 + 8), a3);
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v4 = qword_280CB3EB8;
    result = os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v28 = *(a1 + 8);
    if (*(v28 + 96) == 1)
    {
      sub_2615010E4(v62, v28);
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
      *v62 = -1;
      v63 = 0;
      v66 = 0u;
      v67 = 0u;
      BYTE12(v64) = 0;
      BYTE4(v66) = 0;
      v68 = 0u;
    }

    sub_261501518(v73, v62);
    explicit = atomic_load_explicit(v73, memory_order_acquire);
    *buf = 138543362;
    *&buf[4] = explicit;
    v30 = "Cannot retrieve or instantiate pyramid generation session: %{public}@";
LABEL_42:
    _os_log_error_impl(&dword_26146F000, v4, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    sub_261476C54(v73);
    return sub_261501098(v62);
  }

  v6 = *a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 8);
  v10 = *(a1 + 40);
  if (atomic_load_explicit(v7 + 6, memory_order_acquire))
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v11 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG))
    {
      *v62 = 0;
      _os_log_debug_impl(&dword_26146F000, v11, OS_LOG_TYPE_DEBUG, "Sample has existing pyramid, skipping...", v62, 2u);
    }

    v12 = atomic_load_explicit(v7 + 6, memory_order_acquire);
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    v54 = v12;
    goto LABEL_91;
  }

  v73[0] = &unk_2873D4D38;
  v73[1] = v7;
  v74 = v73;
  v72[0] = &unk_2873D4DB8;
  v72[1] = v7;
  v72[3] = v72;
  *v62 = v10;
  sub_261489C64(&v63, v72);
  if (*(v10 + 8) == 1 && v74 != 0)
  {
    sub_261489CFC(v74, **v62);
  }

  sub_261489D4C(v72);
  sub_261489D4C(v73);
  v59 = *v7;
  v60 = v9;
  v61 = sub_2614F54AC(v59, v9);
  if ((v61 & 1) == 0)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v27 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      v42 = *(v9 + 24);
      *buf = 67240192;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_26146F000, v27, OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed: %{public}d", buf, 8u);
    }

    v54 = 0;
    goto LABEL_87;
  }

  sub_26149B94C(&v58, *v7, &v59, v9);
  if (!atomic_load_explicit(&v58, memory_order_acquire))
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v31 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Failed to get or create shallow Yp8 pixel buffer.", buf, 2u);
    }

    goto LABEL_52;
  }

  Width = CVPixelBufferGetWidth(atomic_load_explicit(&v58, memory_order_acquire));
  Height = CVPixelBufferGetHeight(atomic_load_explicit(&v58, memory_order_acquire));
  CVPixelBufferGetPixelFormatType(atomic_load_explicit(&v58, memory_order_acquire));
  v16 = (*v6)[2];
  if (!v16)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v32 = qword_280CB3EB8;
    if (os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v32, OS_LOG_TYPE_ERROR, "Invalid pyramid allocator", buf, 2u);
    }

    *buf = -2011;
    *&v55 = @"Invalid pyramid allocator.";
    sub_261476754(v9, buf, &v55);
LABEL_52:
    v54 = 0;
    goto LABEL_85;
  }

  v17 = Width;
  v18 = Height;
  v19 = (*(*v16 + 16))(v16, Width);
  if (qword_280CB3EC0 != -1)
  {
    dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
  }

  v20 = qword_280CB3EB8;
  v21 = os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      v48 = (*(*(*v6)[2] + 40))((*v6)[2]);
      v49 = (*v6)[2];
      *buf = 136446466;
      *&buf[4] = v48;
      *&buf[12] = 2050;
      *&buf[14] = v49;
      _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Resetting pyramid allocator <%{public}s %{public}p>", buf, 0x16u);
    }

    (*(*(*v6)[2] + 24))(&v55);
    v22 = v55;
    if (v55)
    {
      v23 = *v6;
      *&v55 = 0;
      v24 = v23[2];
      v23[2] = v22;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v25 = (*(*(*v6)[2] + 40))((*v6)[2]);
        v26 = (*v6)[2];
        *buf = 136446466;
        *&buf[4] = v25;
        *&buf[12] = 2050;
        *&buf[14] = v26;
        _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "New pyramid allocator: <%{public}s %{public}p>", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v52 = (*(*(*v6)[2] + 40))((*v6)[2]);
        v53 = (*v6)[2];
        *buf = 136446466;
        *&buf[4] = v52;
        *&buf[12] = 2050;
        *&buf[14] = v53;
        _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Unable to reset pyramid allocator <%{public}s %{public}p>", buf, 0x16u);
      }

      v54 = 0;
    }

    v35 = v55;
    *&v55 = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    if (!v22)
    {
      goto LABEL_85;
    }
  }

  else if (v21)
  {
    v33 = (*(*(*v6)[2] + 40))((*v6)[2]);
    v34 = (*v6)[2];
    *buf = 136446466;
    *&buf[4] = v33;
    *&buf[12] = 2050;
    *&buf[14] = v34;
    _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Pyramid allocator <%{public}s %{public}p> can be reused", buf, 0x16u);
  }

  (*(*(*v6)[2] + 32))(&v57);
  if (!atomic_load_explicit(&v57, memory_order_acquire))
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v50 = (*(*(*v6)[2] + 40))((*v6)[2]);
      v51 = (*v6)[2];
      *buf = 136446466;
      *&buf[4] = v50;
      *&buf[12] = 2050;
      *&buf[14] = v51;
      _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Pyramid allocator <%{public}s %{public}p>: unable to allocate pyramid", buf, 0x16u);
    }

    v54 = 0;
    goto LABEL_84;
  }

  v36 = *(v7 + 2);
  v37 = *(v7 + 3);
  v38 = *(v7 + 4);
  v39 = *(v7 + 5);
  v76.origin.x = v36;
  v76.origin.y = v37;
  v76.size.width = v38;
  v76.size.height = v39;
  if (CGRectIsNull(v76))
  {
    goto LABEL_63;
  }

  v77.origin.x = v36;
  v77.origin.y = v37;
  v77.size.width = v38;
  v77.size.height = v39;
  if (CGRectIsInfinite(v77))
  {
    x = *MEMORY[0x277CBF348];
    y = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v83.origin.x = 0.0;
    v83.origin.y = 0.0;
    v78.origin.x = v36;
    v78.origin.y = v37;
    v78.size.width = v38;
    v78.size.height = v39;
    v83.size.width = v17;
    v83.size.height = Height;
    v79 = CGRectIntersection(v78, v83);
    x = v79.origin.x;
    y = v79.origin.y;
    v17 = v79.size.width;
    v18 = v79.size.height;
    if (CGRectIsNull(v79))
    {
LABEL_63:
      x = *MEMORY[0x277CBF3A0];
      y = *(MEMORY[0x277CBF3A0] + 8);
      v17 = *(MEMORY[0x277CBF3A0] + 16);
      v18 = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  *&v55 = x;
  *(&v55 + 1) = y;
  *&v56 = v17;
  *(&v56 + 1) = v18;
  if (*(v8 + 32) == 1 && !CGRectIsNull(*v8) && !CGRectIsInfinite(*v8))
  {
    v80.origin.x = x;
    v80.origin.y = y;
    v80.size.width = v17;
    v80.size.height = v18;
    v81 = CGRectIntersection(v80, *v8);
    x = v81.origin.x;
    y = v81.origin.y;
    v17 = v81.size.width;
    v18 = v81.size.height;
    *&v55 = v81.origin.x;
    *(&v55 + 1) = *&v81.origin.y;
    *&v56 = v81.size.width;
    *(&v56 + 1) = *&v81.size.height;
    if (CGRectIsNull(v81))
    {
      v43 = *(MEMORY[0x277CBF3A0] + 16);
      v55 = *MEMORY[0x277CBF3A0];
      v56 = v43;
      y = *(&v55 + 1);
      x = *&v55;
      v18 = *(&v43 + 1);
      v17 = *&v43;
    }
  }

  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = v17;
  v82.size.height = v18;
  if (CGRectIsEmpty(v82))
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26146F000, v20, OS_LOG_TYPE_DEBUG, "Empty effective region-of-interest.", buf, 2u);
    }

    v44 = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
  }

  else
  {
    *buf = &v58;
    *&buf[8] = &v55;
    *&buf[16] = &v57;
    v70 = v9;
    v71 = v10;
    if (sub_2614A4710(buf, *v6))
    {
      v44 = atomic_load_explicit(&v57, memory_order_acquire);
      if (v44)
      {
        v44 = CFRetain(v44);
      }
    }

    else
    {
      v44 = 0;
    }
  }

  v54 = v44;
LABEL_84:
  sub_261476A0C(&v57);
LABEL_85:
  sub_2614776F0(&v58);
  if (v61)
  {
    sub_2614F5408(v59, v60);
  }

LABEL_87:
  if (*(*v62 + 8) == 1 && v65)
  {
    sub_261489CFC(v65, **v62);
  }

  sub_261489D4C(&v63);
LABEL_91:
  v45 = atomic_exchange(*(a1 + 16), atomic_exchange(&v54, 0));
  if (v45)
  {
    CFRelease(v45);
  }

  result = sub_261476A0C(&v54);
  if (!atomic_load_explicit(*(a1 + 16), memory_order_acquire) || *(*(a1 + 8) + 96) == 1)
  {
    if (qword_280CB3EC0 != -1)
    {
      dispatch_once(&qword_280CB3EC0, &unk_2873D0700);
    }

    v4 = qword_280CB3EB8;
    result = os_log_type_enabled(qword_280CB3EB8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v46 = *(a1 + 8);
      if (*(v46 + 96) == 1)
      {
        sub_2615010E4(v62, v46);
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        *v62 = -1;
        v63 = 0;
        v66 = 0u;
        v67 = 0u;
        BYTE12(v64) = 0;
        BYTE4(v66) = 0;
        v68 = 0u;
      }

      sub_261501518(v73, v62);
      v47 = atomic_load_explicit(v73, memory_order_acquire);
      *buf = 138543362;
      *&buf[4] = v47;
      v30 = "Cannot generate pyramid: %{public}@";
      goto LABEL_42;
    }
  }

  return result;
}

void sub_2614AAE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va3, a10);
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  sub_261476A0C(va);
  sub_2614776F0(va1);
  sub_26149CB74(va2);
  sub_261489DCC(va3);
  _Unwind_Resume(a1);
}

__n128 sub_2614AAFB4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D4E38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

atomic_ullong *sub_2614AB070@<X0>(uint64_t a1@<X0>, CFErrorRef *a2@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  LOBYTE(v4[0]) = 0;
  v5 = 0;
  v6[0] = &unk_2873D57C8;
  v6[1] = v4;
  v6[3] = v6;
  sub_2614A55E4(a1, v6);
  result = sub_2614A5BB8(v6);
  if (v5 == 1)
  {
    result = sub_261501518(a2, v4);
    if (v5)
    {
      return sub_261501098(v4);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2614AB134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    sub_261501098(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614AB170(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc24PyramidGenerationSessionILNS_25PyramidGenerationBehaviorE1EE19preflightForContextERNS_7ContextEEUlOT_OT0_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2614AB1AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    return sub_261477470(*(result + 8), a3);
  }

  return result;
}

uint64_t sub_2614AB1CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873D57C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2614AB260(uint64_t a1, int a2)
{
  if (a2 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "cannot read <1 or >32 bits");
    goto LABEL_19;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5 = *(a1 + 40);
  v4 = *(a1 + 44);
  if (8 * (*(v2 + 24) - v3 - v5) - v4 < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614C5F94(exception, "reading more bits than are available");
LABEL_19:
    __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
  }

  if (v4 < 1)
  {
    v7 = 0;
  }

  else
  {
    if (8 - v4 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = 8 - v4;
    }

    v7 = ((0xFFu >> (8 - v6) << (8 - v4 - v6)) & *(v3 + v5)) >> (8 - v4 - v6);
    a2 -= v6;
    v4 += v6;
    *(a1 + 44) = v4;
    if (v4 == 8)
    {
      v4 = 0;
      *(a1 + 40) = ++v5;
    }
  }

  if (a2 >= 1)
  {
    if (a2 < 8)
    {
      goto LABEL_15;
    }

    v8 = (v3 + v5);
    do
    {
      v9 = *v8++;
      v7 = v9 | (v7 << 8);
      *(a1 + 40) = ++v5;
      a2 -= 8;
    }

    while (a2 > 7);
    if (a2)
    {
LABEL_15:
      v7 = (((-1 << (8 - a2)) & *(v3 + v5)) >> (8 - a2)) | (v7 << a2);
      *(a1 + 44) = v4 + a2;
    }
  }

  return v7;
}

void sub_2614AB3DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = a3[3];
  v9 = a3[2];
  if (*a3 != v9 + 1)
  {
    goto LABEL_8;
  }

  *&__str.__r_.__value_.__l.__data_ = xmmword_261560F40;
  v10 = sub_2614AB8E8(v7, 7);
  v11 = 0;
  v12 = &__str.__r_.__value_.__s.__data_[16];
  while (*(&__str.__r_.__value_.__l.__data_ + v11) != v10)
  {
    v11 += 4;
    if (v11 == 16)
    {
      goto LABEL_7;
    }
  }

  v12 = &__str + v11;
LABEL_7:
  if (v12 - &__str == 16)
  {
LABEL_8:
    v13 = v7 + 4;
    if (v7 + 4 >= v8)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(v7 + 2);
      v7 = v13;
      do
      {
        v14 += *(v13 + v15);
        v15 += 2;
      }

      while (v15 != 14);
      if (vcvts_n_f32_u32(v14, 1uLL) <= v16)
      {
        *&__str.__r_.__value_.__l.__data_ = xmmword_261560F40;
        v17 = sub_2614AB8E8(v13, 7);
        v18 = 0;
        while (*(&__str.__r_.__value_.__l.__data_ + v18) != v17)
        {
          v18 += 4;
          if (v18 == 16)
          {
            v19 = &__str.__r_.__value_.__s.__data_[16];
            goto LABEL_17;
          }
        }

        v19 = &__str + v18;
LABEL_17:
        if (v19 - &__str != 16)
        {
          break;
        }
      }

      v13 += 4;
      if (v7 + 4 >= v8)
      {
        goto LABEL_21;
      }
    }
  }

  v13 = v7;
LABEL_21:
  if (v13 >= v8)
  {
    *a4 = 1;
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;
    *(a4 + 4) = 0u;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 52) = 0u;
    *(a4 + 68) = 0u;
    *(a4 + 84) = 0;
    *(a4 + 96) = a4 + 104;
    *(a4 + 120) = 0;
    *(a4 + 124) = 0;
    *(a4 + 128) = 0;
  }

  else
  {
    if (v9 == v13)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v21 = v9;
      do
      {
        v22 = *v21++;
        v20 += v22;
      }

      while (v21 != v13);
    }

    v23 = 0;
    for (i = 0; i != 14; i += 2)
    {
      v23 += *(v13 + i);
    }

    memset(&__str, 0, sizeof(__str));
    v25 = sub_2614AB880(v13, 7);
    std::string::push_back(&__str, v25);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v27 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    p_str = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    else
    {
      p_str = &__str;
    }

    if (p_str->__r_.__value_.__s.__data_[size - 1] - 65 <= 3 && v13 + 14 < v8)
    {
      v29 = (v13 + 16);
      while (v29 <= v8 && v23 >> 1 > *(v29 - 1))
      {
        v30 = sub_2614AB880(v29, 7);
        std::string::push_back(&__str, v30);
        v27 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v32 = *(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1);
          if (v32 < 0)
          {
            break;
          }
        }

        else
        {
          v32 = *(&v46 + SHIBYTE(__str.__r_.__value_.__r.__words[2]));
          if (v32 < 0)
          {
            break;
          }
        }

        if (v32 - 65 <= 3)
        {
          v34 = __str.__r_.__value_.__l.__size_;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          if (v34 < 4)
          {
            break;
          }

          if (v29 + 7 != (v8 - 2))
          {
            v35 = 0;
            v36 = 0;
            LOWORD(v31) = v29[7];
            v37 = v31;
            do
            {
              v36 += v29[v35++];
            }

            while (v35 != 7);
            if (vcvts_n_f32_u32(v36, 1uLL) > v37)
            {
              break;
            }
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            std::string::basic_string(&v45, &__str, 1uLL, v34 - 2, &v46);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = v45;
          }

          if (v9 == v29)
          {
            v41 = -1;
          }

          else
          {
            v38 = 0;
            v39 = v9 - 1;
            do
            {
              v40 = v39[1];
              ++v39;
              v38 += v40;
            }

            while (v39 != v29 - 1);
            v41 = v38 - 1;
          }

          v42 = 0;
          v43 = 14;
          do
          {
            v44 = *v29++;
            v42 += v44;
            v43 -= 2;
          }

          while (v43);
          memset(&v45, 0, sizeof(v45));
          sub_261539A18(a4, &__str, a2, v20, v41 + v42, &v45);
          if (v45.__r_.__value_.__r.__words[0])
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            return;
          }

          goto LABEL_53;
        }

        v33 = v29 + 7;
        v29 += 8;
        if (v33 >= v8)
        {
          break;
        }
      }
    }

    *a4 = 1;
    *(a4 + 104) = 0;
    *(a4 + 112) = 0;
    *(a4 + 4) = 0u;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 52) = 0u;
    *(a4 + 68) = 0u;
    *(a4 + 84) = 0;
    *(a4 + 96) = a4 + 104;
    *(a4 + 120) = 0;
    *(a4 + 124) = 0;
    *(a4 + 128) = 0;
    if (v27 < 0)
    {
LABEL_53:
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2614AB848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614AB880(uint64_t a1, int a2)
{
  v2 = sub_2614AB8E8(a1, a2);
  v3 = 0;
  while (dword_26156B374[v3] != v2)
  {
    if (++v3 == 20)
    {
      return -1;
    }
  }

  if ((~(v3 * 4) & 0x3FFFFFFFCLL) == 0)
  {
    return -1;
  }

  return a0123456789Abcd[((v3 * 4) >> 2)];
}

uint64_t sub_2614AB8E8(uint64_t a1, int a2)
{
  v24 = 0;
  v25 = -1;
  if (a2 >= 1)
  {
    for (i = 0; i != a2; *(&v24 + (i++ & 1)) = v3)
    {
      v3 = *(a1 + 2 * i);
      v4 = *(&v25 + (i & 1));
      if (v3 < v4)
      {
        LOWORD(v4) = *(a1 + 2 * i);
      }

      *(&v25 + (i & 1)) = v4;
      if (*(&v24 + (i & 1)) > v3)
      {
        LOWORD(v3) = *(&v24 + (i & 1));
      }
    }
  }

  v5 = &v25;
  v6 = &v24;
  v23 = 0;
  v22 = 0;
  v7 = &v23;
  v8 = 1;
  v9 = &v24 + 1;
  v10 = (&v25 + 2);
  do
  {
    v11 = v8;
    v12 = *v6;
    v13 = *v5;
    if (4 * v13 + 4 < v12 || 3 * *v9 < v12 || 2 * *v10 + 2 < v13)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = 0;
    v14 = (v13 + v12) >> 1;
    if (v14 <= v13 + (v13 >> 1))
    {
      LOWORD(v14) = v13 + (v13 >> 1);
    }

    *v7 = v14;
    v10 = &v25;
    v9 = &v24;
    v7 = &v22;
    v6 = &v24 + 1;
    v5 = (&v25 + 2);
  }

  while ((v11 & 1) != 0);
  v25 = v23 | (v22 << 16);
  if (v23)
  {
    v15 = v22 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  v17 = (v16 << 31 >> 31);
  if (!v15 && a2 >= 1)
  {
    v18 = 0;
    LODWORD(v17) = 0;
    while (1)
    {
      v19 = *(a1 + 2 * v18);
      v20 = *(&v25 & 0xFFFFFFFFFFFFFFFDLL | (2 * (v18 & 1)));
      if (v19 > 2 * v20)
      {
        break;
      }

      v17 = (v19 > v20) | (2 * v17);
      if (a2 == ++v18)
      {
        return v17;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v17;
}

void sub_2614ABA58(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  *&v126[8] = *MEMORY[0x277D85DE8];
  v9 = *a4;
  if (!*a4)
  {
    operator new();
  }

  v119 = 0;
  v120 = 0;
  v121 = 0;
  sub_261498AEC(&v119, 0x50uLL);
  v11 = *a3;
  v10 = *(a3 + 8);
  if (v10 != *a3)
  {
    while (*v11)
    {
      if (++v11 == v10)
      {
        v11 = *(a3 + 8);
        break;
      }
    }
  }

  if (v11 == v10)
  {
    goto LABEL_26;
  }

  while (1)
  {
    if (v10 == v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11;
      while (*v12 != (*v11 == 0))
      {
        if (++v12 == v10)
        {
          v12 = v10;
          break;
        }
      }
    }

    v13 = v12 - v11;
    if (v10 == v12)
    {
      break;
    }

    LODWORD(v115) = v13;
    sub_261498B78(&v119, &v115);
    v10 = *(a3 + 8);
    v11 = v12;
  }

  LODWORD(v115) = v13;
  sub_261498B78(&v119, &v115);
  v108 = a1;
  v118 = 0;
  v14 = v119;
  v15 = v120;
  v111 = (v120 - v119) >> 2;
  if (v111 < 2)
  {
LABEL_26:
    *a5 = 1;
    *(a5 + 104) = 0;
    *(a5 + 112) = 0;
    *(a5 + 4) = 0u;
    *(a5 + 20) = 0u;
    *(a5 + 36) = 0u;
    *(a5 + 52) = 0u;
    *(a5 + 68) = 0u;
    *(a5 + 84) = 0;
    *(a5 + 96) = a5 + 104;
    *(a5 + 120) = 0;
    *(a5 + 124) = 0;
    *(a5 + 128) = 0;
    goto LABEL_27;
  }

  v16 = 9;
  v107 = 1;
  v17 = v119;
  v18 = 1;
  while (1)
  {
    v19 = sub_2614AC444(v14, v15, v18, &v118 + 1);
    if ((v19 & 0x80000000) == 0)
    {
      v20 = memchr("ABCD", a0123456789Abcd[v19], 5uLL);
      if (v20)
      {
        if (((v20 - "ABCD") & 0x80000000) == 0)
        {
          v21 = 0;
          for (i = 4; i != 32; i += 4)
          {
            v21 += *&v17[i];
          }

          if (v18 == 1)
          {
            goto LABEL_31;
          }

          if (v14[v18 - 1] >= v21 / 2)
          {
            break;
          }
        }
      }
    }

    v18 += 2;
    v16 += 2;
    v17 += 8;
    if (v18 >= v111)
    {
      goto LABEL_26;
    }
  }

  v107 = v18;
LABEL_31:
  v110 = v14;
  v104 = a2;
  v106 = a5;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  sub_261498AEC(&v115, 0x14uLL);
  v105 = v9;
  v23 = v18 + 7;
  v25 = v116;
  v24 = v117;
  v26 = v115;
  v109 = v15;
  while (1)
  {
    v27 = v16 - 8;
    v28 = sub_2614AC444(v110, v15, v16 - 8, &v118);
    if (v28 < 0)
    {
      v117 = v24;
      v30 = v26;
      v115 = v26;
LABEL_83:
      *v106 = 1;
      *(v106 + 104) = 0;
      *(v106 + 112) = 0;
      *(v106 + 4) = 0u;
      *(v106 + 20) = 0u;
      *(v106 + 36) = 0u;
      *(v106 + 52) = 0u;
      *(v106 + 68) = 0u;
      *(v106 + 84) = 0;
      *(v106 + 96) = v106 + 104;
      *(v106 + 120) = 0;
      *(v106 + 124) = 0;
      *(v106 + 128) = 0;
      if (!v30)
      {
        goto LABEL_27;
      }

      goto LABEL_84;
    }

    v29 = v28;
    v30 = v26;
    if (v25 >= v24)
    {
      v32 = v24;
      v33 = v23;
      v34 = v25 - v26;
      v35 = (v25 - v26) >> 2;
      v36 = v35 + 1;
      if ((v35 + 1) >> 62)
      {
        v115 = v26;
        sub_2614709BC();
      }

      v37 = v32 - v26;
      v38 = (v32 - v26) >> 1;
      if (v38 > v36)
      {
        v36 = v38;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v39 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v36;
      }

      if (v39)
      {
        sub_261472B30(v39);
      }

      v40 = (4 * v35);
      *v40 = v29;
      v25 = (v40 + 1);
      memcpy(0, v26, v34);
      if (v26)
      {
        operator delete(v26);
      }

      v30 = 0;
      v23 = v33;
      v24 = 0;
      v15 = v109;
      v31 = v110;
    }

    else
    {
      *v25 = v29;
      v25 += 4;
      v31 = v110;
    }

    v41 = v25 - v30;
    if ((v25 - v30) >= 5)
    {
      break;
    }

    if (v16 >= v111)
    {
      v112 = v23;
      goto LABEL_60;
    }

    v26 = v30;
LABEL_57:
    v23 += 8;
    v16 += 8;
  }

  v26 = v30;
  v42 = memchr("ABCD", a0123456789Abcd[v29], 5uLL);
  if (((v42 - "ABCD") <= -1 || v42 == 0) && v16 < v111)
  {
    goto LABEL_57;
  }

  v112 = v23;
  v30 = v26;
  v31 = v110;
LABEL_60:
  v45 = 0;
  v116 = v25;
  v117 = v24;
  v115 = v30;
  v46 = *(v31 + 4 * (v16 - 1));
  v47 = v31 + 4 * v16;
  v48 = -32;
  p_size = &__str.__r_.__value_.__l.__size_;
  v49 = &v113.__r_.__value_.__l.__size_;
  do
  {
    v45 += *(v47 + v48);
    v48 += 4;
  }

  while (v48 != -4);
  v51 = v45 / 2;
  if (v16 < ((v120 - v110) >> 2) && v46 < v51)
  {
    goto LABEL_83;
  }

  *&__str.__r_.__value_.__l.__data_ = 0uLL;
  *&v113.__r_.__value_.__l.__data_ = 0uLL;
  v53 = v30;
  v54 = v126;
  v55 = &v123;
  if (v30 != v25)
  {
    v56 = v30;
    v57 = v110 + 4 * v107;
    do
    {
      v58 = dword_26156B374[*v56];
      for (j = 6; j != -1; --j)
      {
        v60 = j & 1 | (2 * (v58 & 1));
        *(&__str.__r_.__value_.__l.__data_ + v60) += *(v57 + 4 * j);
        ++*(&v113.__r_.__value_.__l.__data_ + v60);
        v58 >>= 1;
      }

      v56 += 4;
      v57 += 32;
    }

    while (v56 != v25);
  }

  v122 = 0;
  p_str = &__str;
  v62 = &v113;
  v63 = v124;
  v64 = 1;
  do
  {
    v65 = v64;
    v66 = *p_size;
    v67 = *v49;
    v68 = ((SLODWORD(p_str->__r_.__value_.__l.__data_) / SLODWORD(v62->__r_.__value_.__l.__data_)) + (v66 / v67)) * 0.5;
    *v55 = v68;
    *v63 = v68;
    v63 = &v125;
    v62 = (v113.__r_.__value_.__r.__words + 4);
    p_str = (__str.__r_.__value_.__r.__words + 4);
    v55 = &v123 + 1;
    *v54 = ((v66 * 2.0) + 1.5) / v67;
    v54 = &v126[4];
    v49 = (&v113.__r_.__value_.__r.__words[1] + 4);
    p_size = (&__str.__r_.__value_.__r.__words[1] + 4);
    v64 = 0;
  }

  while ((v65 & 1) != 0);
  if (v30 != v25)
  {
    v69 = v30;
    v70 = v110 + 4 * v107;
LABEL_75:
    v71 = dword_26156B374[*v69];
    v72 = 6;
    while (1)
    {
      v73 = v72 & 1 | (2 * (v71 & 1u));
      v74 = *(v70 + 4 * v72);
      if (*(&v122 + v73) > v74 || v124[v73] < v74)
      {
        goto LABEL_83;
      }

      v71 >>= 1;
      if (--v72 == -1)
      {
        v69 += 4;
        v70 += 32;
        if (v69 != v25)
        {
          goto LABEL_75;
        }

        break;
      }
    }
  }

  memset(&__str, 0, sizeof(__str));
  std::string::reserve(&__str, v41 >> 2);
  while (v53 != v25)
  {
    std::string::push_back(&__str, a0123456789Abcd[*v53]);
    v53 += 4;
  }

  v75 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v76 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v77 = &__str;
  }

  else
  {
    v77 = __str.__r_.__value_.__r.__words[0];
  }

  v78 = memchr("ABCD", v77->__r_.__value_.__s.__data_[0], 5uLL);
  if (!v78 || ((v78 - "ABCD") & 0x80000000) != 0)
  {
    v82 = v106;
LABEL_132:
    *v82 = 1;
    *(v82 + 104) = 0;
    *(v82 + 112) = 0;
    *(v82 + 4) = 0u;
    *(v82 + 20) = 0u;
    *(v82 + 36) = 0u;
    *(v82 + 52) = 0u;
    *(v82 + 68) = 0u;
    *(v82 + 84) = 0;
    *(v82 + 96) = v82 + 104;
    v93 = 0;
    v94 = 0;
    *(v82 + 120) = 0;
    goto LABEL_133;
  }

  size = __str.__r_.__value_.__l.__size_;
  if (v76 >= 0)
  {
    v80 = v75;
  }

  else
  {
    v80 = __str.__r_.__value_.__l.__size_;
  }

  v81 = memchr("ABCD", v77->__r_.__value_.__s.__data_[v80 - 1], 5uLL);
  v82 = v106;
  if (!v81 || ((v81 - "ABCD") & 0x80000000) != 0 || v80 <= 3)
  {
    goto LABEL_132;
  }

  if (*(v108 + 8))
  {
    v83 = v104;
  }

  else
  {
    std::string::basic_string(&v113, &__str, 1uLL, v80 - 2, v124);
    v83 = v104;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v113;
    v75 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    size = v113.__r_.__value_.__l.__size_;
    LOBYTE(v76) = *(&v113.__r_.__value_.__s + 23);
  }

  v84 = v76;
  if ((v76 & 0x80u) != 0)
  {
    v75 = size;
  }

  if (v75 > 7)
  {
    goto LABEL_105;
  }

  v95 = *(v105 + 8);
  v96 = *(v105 + 16);
  if (v95 == v96)
  {
LABEL_131:
    sub_2614AC5AC((v105 + 8), &__str);
    goto LABEL_132;
  }

  if (v84 >= 0)
  {
    v97 = &__str;
  }

  else
  {
    v97 = __str.__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    v98 = *(v95 + 23);
    v99 = v98 >= 0 ? *(v95 + 23) : *(v95 + 8);
    v100 = v98 >= 0 ? v95 : *v95;
    v101 = v99 >= v75 ? v75 : v99;
    v102 = memcmp(v97, v100, v101);
    if (v99 == v75 && v102 == 0)
    {
      break;
    }

    v95 += 24;
    if (v95 == v96)
    {
      goto LABEL_131;
    }
  }

LABEL_105:
  v85 = 0;
  v86 = v119;
  v87 = v107;
  do
  {
    v88 = *v86++;
    v85 += v88;
    --v87;
  }

  while (v87);
  v89 = v85;
  if (v27 + 7 > v18)
  {
    v90 = v112 - v107;
    v91 = &v119[4 * v107];
    v89 = v85;
    do
    {
      v92 = *v91;
      v91 += 4;
      v89 += v92;
      --v90;
    }

    while (v90);
  }

  memset(&v113, 0, sizeof(v113));
  sub_261539A18(v106, &__str, v83, v85, v89, &v113);
  if (v113.__r_.__value_.__r.__words[0])
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  v93 = HIDWORD(v118);
  v94 = v118;
LABEL_133:
  *(v82 + 124) = v93;
  *(v82 + 128) = v94;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v30 = v115;
  if (v115)
  {
LABEL_84:
    v116 = v30;
    operator delete(v30);
  }

LABEL_27:
  if (v119)
  {
    operator delete(v119);
  }
}

void sub_2614AC3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 184))
  {
    operator delete(*(v36 - 184));
  }

  v38 = *(v36 - 152);
  if (v38)
  {
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2614AC444(uint64_t a1, uint64_t a2, int a3, float *a4)
{
  if (a3 + 7 >= ((a2 - a1) >> 2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = (a1 + 4 * a3);
  v6.i32[0] = *v5;
  v6.i32[1] = v5[2];
  v6.i32[2] = v5[4];
  v6.i32[3] = v5[6];
  v7 = vmaxq_s32(v6, 0);
  v8 = vminvq_s32(v6);
  v9 = a3 + 1;
  v10 = 0x7FFFFFFF;
  do
  {
    v11 = *(a1 + 4 * v9);
    if (v11 < v10)
    {
      v10 = *(a1 + 4 * v9);
    }

    if (v11 > v4)
    {
      v4 = *(a1 + 4 * v9);
    }

    v9 += 2;
  }

  while (v9 < a3 + 7);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = vmaxvq_s32(v7) + v8;
  v17 = v8;
  v18 = v10;
  v19 = v16 / 2;
  v20 = (v10 + v4) / 2;
  v21 = v17 / 3.0;
  v22 = v18 + 1.5;
  v23 = v18 * 1.5;
  if (v22 >= v23)
  {
    v23 = v22;
  }

  if (v21 < v23)
  {
    v21 = v23;
  }

  if (v21 < v4)
  {
    v4 = v20;
  }

  v24 = 128;
  do
  {
    if (v12)
    {
      v25 = v4;
    }

    else
    {
      v25 = v19;
    }

    v24 >>= 1;
    v26 = v5[v12];
    v27 = v26 <= v25;
    if (v26 > v25)
    {
      v28 = v24;
    }

    else
    {
      v28 = 0;
    }

    v15 |= v28;
    if (v27)
    {
      v29 = v5[v12];
    }

    else
    {
      v29 = 0;
    }

    v14 += v29;
    if (v27)
    {
      ++v13;
    }

    ++v12;
  }

  while (v12 != 7);
  if (v13)
  {
    v30 = v14 / v13;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = 0;
  *a4 = v30;
  while (dword_26156B374[v31] != v15)
  {
    if (++v31 == 20)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (v31 * 4) >> 2;
}

size_t *sub_2614AC5AC(size_t *result, __int128 *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2614709BC();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v22 = result;
    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2614709D4();
    }

    v11 = 24 * v6;
    v18 = 0;
    v19 = v11;
    v12 = 0;
    v20 = v11;
    v21 = 0;
    if (*(a2 + 23) < 0)
    {
      sub_261480F94(v11, *a2, *(a2 + 1));
      v11 = v19;
      v13 = v20;
      v12 = v21;
    }

    else
    {
      *v11 = *a2;
      *(v11 + 16) = *(a2 + 2);
      v13 = v11;
    }

    v10 = v13 + 24;
    v14 = v2[1] - *v2;
    v15 = v11 - v14;
    memcpy((v11 - v14), *v2, v14);
    v16 = *v2;
    *v2 = v15;
    v2[1] = v10;
    v17 = v2[2];
    v2[2] = v12;
    v20 = v16;
    v21 = v17;
    v18 = v16;
    v19 = v16;
    result = sub_2614AC754(&v18);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_261480F94(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      *(v4 + 16) = *(a2 + 2);
      *v4 = v5;
    }

    v10 = v4 + 24;
    v2[1] = v4 + 24;
  }

  v2[1] = v10;
  return result;
}

void sub_2614AC734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614AC754(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2614AC754(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2614AC7B8(uint64_t a1)
{
  *a1 = &unk_2873D1BF8;
  v1 = (a1 + 8);
  sub_2614AC830(&v1);

  JUMPOUT(0x2667045D0);
}

void sub_2614AC830(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2614AC8BC(uint64_t a1)
{
  *a1 = &unk_2873D1BF8;
  v3 = (a1 + 8);
  sub_2614AC830(&v3);
  return a1;
}

void sub_2614ACAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2667045D0](v14, 0xD0C40BFC0A3C0);
  _Unwind_Resume(a1);
}

uint64_t *sub_2614ACB30(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_2614ACC14(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_2614ACC9C(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_2614ACC9C(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_2614ACC9C(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void sub_2614ACFB8()
{
  if (atomic_load_explicit(&qword_27FEB4138, memory_order_acquire) != -1)
  {
    v3[1] = v0;
    v3[2] = v1;
    v2 = v3;
    v3[0] = sub_2614ACD1C;
    std::__call_once(&qword_27FEB4138, &v2, sub_2614AD020);
  }
}

uint64_t sub_2614AD02C(int a1)
{
  v6 = a1;
  sub_2614ACFB8();
  if (a1 > 0x383)
  {
    goto LABEL_10;
  }

  v2 = *(qword_27FEB4128 + 8);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = qword_27FEB4128 + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == qword_27FEB4128 + 8 || *(v3 + 32) > a1)
  {
LABEL_10:
    exception = __cxa_allocate_exception(0x20uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &unk_2873D1A30;
    exception[1] = 0;
    __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
  }

  v7 = &v6;
  return sub_2614ACB30(qword_27FEB4128, a1)[5];
}

uint64_t sub_2614AD104(void *a1)
{
  sub_2614ACFB8();
  v2 = qword_27FEB4130;
  v3 = qword_27FEB4130 + 8;
  v4 = *(qword_27FEB4130 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = qword_27FEB4130 + 8;
  do
  {
    v6 = sub_2614ACC9C((v4 + 32), a1);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v4 = *(v4 + ((v6 >> 4) & 8));
  }

  while (v4);
  if (v5 == v3 || (sub_2614ACC9C(a1, (v5 + 32)) & 0x80) != 0)
  {
LABEL_11:
    exception = __cxa_allocate_exception(0x20uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &unk_2873D1A30;
    exception[1] = 0;
    __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
  }

  v7 = *sub_2614ACC14(v2, &v10, a1);
  if (!v7)
  {
    operator new();
  }

  return *(v7 + 56);
}

void sub_2614AD270(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL sub_2614AD320(uint64_t a1, atomic_ullong *a2, uint64_t a3, __CFString *a4)
{
  v127 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 24))(a1))
  {
    v108[0] = &unk_2873D5AF0;
    v109 = v108;
    v110 = a4;
    v107[0] = &unk_2873D5B70;
    v107[3] = v107;
    sub_261489C64(v111, v107);
    if (*(v110 + 8) == 1 && v109 != 0)
    {
      sub_261489CFC(v109, *v110);
    }

    sub_261489D4C(v107);
    sub_261489D4C(v108);
    if (atomic_load_explicit(a2, memory_order_acquire))
    {
      if ((CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire)) | 0x10) == 0x34323076)
      {
        v100 = a2;
        v101 = sub_2614F54AC(a2, a3);
        if (v101)
        {
          v125[0] = &unk_2873D5BF0;
          v126 = v125;
          *v119 = &unk_2873D5C70;
          v120 = v119;
          v121 = a4;
          sub_261489C64(v122, v119);
          if (LOBYTE(v121->info) == 1 && v126)
          {
            sub_261489CFC(v126, v121->isa);
          }

          sub_261489D4C(v119);
          sub_261489D4C(v125);
          PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
          if (PixelFormatType == 875704422)
          {
            v10 = &unk_26157A21C;
          }

          else
          {
            if (PixelFormatType != 875704438)
            {
              LOBYTE(v10) = 0;
              v17 = 0;
LABEL_44:
              src.data = CVPixelBufferGetBaseAddressOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
              src.height = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
              src.width = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
              src.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
              v105.data = CVPixelBufferGetBaseAddressOfPlane(atomic_load_explicit(a2, memory_order_acquire), 1uLL);
              v105.height = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a2, memory_order_acquire), 1uLL);
              v105.width = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(a2, memory_order_acquire), 1uLL);
              v105.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a2, memory_order_acquire), 1uLL);
              v18 = *(a1 + 368);
              *&dest.data = *(a1 + 352);
              *&dest.width = v18;
              v19 = *(a1 + 408);
              *&v103.data = *(a1 + 392);
              *&v103.width = v19;
              *(a1 + 28) = 0;
              width = dest.width;
              height = dest.height;
              v22 = dest.width / dest.height;
              if (vabdd_f64(1.0, v22) >= 2.22044605e-16)
              {
                v23 = src.width / src.height;
                v24 = 1.0 / v23;
                if (v23 <= v22)
                {
                  v27 = ceil(v23 * height);
                  if (v23 < v22)
                  {
                    v26 = v27;
                  }

                  else
                  {
                    v26 = dest.width;
                  }

                  v25 = dest.height;
                }

                else
                {
                  v25 = ceil(width / v23);
                  v26 = dest.width;
                }

                if (v24 <= v22)
                {
                  if (v24 < v22)
                  {
                    width = ceil(v24 * height);
                  }
                }

                else
                {
                  height = ceil(width / v24);
                }

                if (v25 * v26 < height * width)
                {
                  v99 = v17;
                  v28 = (a1 + 472);
                  if ((*(a1 + 504) & 1) == 0)
                  {
                    *v28 = 0u;
                    *(a1 + 488) = 0u;
                    *(a1 + 504) = 1;
                    v29 = MEMORY[0x266705020](a1 + 472, *(a1 + 8), *(a1 + 16), 8, 0);
                    if (v29)
                    {
                      if (*(a1 + 504) == 1)
                      {
                        *(a1 + 504) = 0;
                      }

                      if (qword_280CB3F00 != -1)
                      {
                        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                      }

                      v30 = qword_280CB3EF8;
                      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf.data) = 134349056;
                        *(&buf.data + 4) = v29;
                        _os_log_impl(&dword_26146F000, v30, OS_LOG_TYPE_INFO, "vImageBuffer_Init failed for 90CW_420Yp8: %{public}zd", &buf, 0xCu);
                      }
                    }

                    else
                    {
                      if (qword_280CB3F00 != -1)
                      {
                        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                      }

                      v33 = qword_280CB3EF8;
                      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_DEBUG))
                      {
                        v86 = *(a1 + 472);
                        v87 = *(a1 + 480);
                        v88 = *(a1 + 488);
                        v89 = *(a1 + 496);
                        LODWORD(buf.data) = 136447234;
                        *(&buf.data + 4) = "90CW_420Yp8";
                        WORD2(buf.height) = 2050;
                        *(&buf.height + 6) = v86;
                        HIWORD(buf.width) = 2050;
                        buf.rowBytes = v87;
                        *v116 = 2050;
                        *&v116[2] = v88;
                        v117 = 2050;
                        v118 = v89;
                        _os_log_debug_impl(&dword_26146F000, v33, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", &buf, 0x34u);
                      }
                    }
                  }

                  if ((*(a1 + 544) & 1) == 0)
                  {
                    *(a1 + 512) = 0u;
                    *(a1 + 528) = 0u;
                    *(a1 + 544) = 1;
                    v34 = MEMORY[0x266705020](a1 + 512, *(a1 + 8) >> 1, *(a1 + 16) >> 1, 16, 0);
                    if (v34)
                    {
                      if (*(a1 + 544) == 1)
                      {
                        *(a1 + 544) = 0;
                      }

                      if (qword_280CB3F00 != -1)
                      {
                        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                      }

                      v35 = qword_280CB3EF8;
                      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf.data) = 134349056;
                        *(&buf.data + 4) = v34;
                        _os_log_impl(&dword_26146F000, v35, OS_LOG_TYPE_INFO, "vImageBuffer_Init failed for 90CW_420CbCr8: %{public}zd", &buf, 0xCu);
                      }
                    }

                    else
                    {
                      if (qword_280CB3F00 != -1)
                      {
                        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                      }

                      v36 = qword_280CB3EF8;
                      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_DEBUG))
                      {
                        v90 = *(a1 + 512);
                        v91 = *(a1 + 520);
                        v92 = *(a1 + 528);
                        v93 = *(a1 + 536);
                        LODWORD(buf.data) = 136447234;
                        *(&buf.data + 4) = "90CW_420CbCr8";
                        WORD2(buf.height) = 2050;
                        *(&buf.height + 6) = v90;
                        HIWORD(buf.width) = 2050;
                        buf.rowBytes = v91;
                        *v116 = 2050;
                        *&v116[2] = v92;
                        v117 = 2050;
                        v118 = v93;
                        _os_log_debug_impl(&dword_26146F000, v36, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", &buf, 0x34u);
                      }
                    }
                  }

                  v17 = v99;
                  if (*(a1 + 504) == 1 && *(a1 + 544) == 1)
                  {
                    *(a1 + 28) = 1;
                    v37 = *(a1 + 488);
                    *&dest.data = *v28;
                    *&dest.width = v37;
                    v38 = *(a1 + 528);
                    *&v103.data = *(a1 + 512);
                    *&v103.width = v38;
                  }
                }
              }

              v39 = src.width / src.height;
              v40 = dest.width / dest.height;
              if (v39 <= v40)
              {
                if (v39 >= v40)
                {
                  goto LABEL_88;
                }

                p_width = &dest.width;
                v42 = v39 * dest.height;
              }

              else
              {
                p_width = &dest.height;
                v42 = dest.width / v39;
              }

              *p_width = vcvtpd_u64_f64(v42);
LABEL_88:
              v43 = v105.width / v105.height;
              v44 = v103.width / v103.height;
              if (v43 <= v44)
              {
                if (v43 >= v44)
                {
LABEL_93:
                  v47 = vImageScale_Planar8(&src, &dest, 0, 0);
                  if (v47 || (v47 = vImageScale_CbCr8(&v105, &v103, 0, 0)) != 0)
                  {
                    if (qword_280CB3F00 != -1)
                    {
                      dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                    }

                    v48 = qword_280CB3EF8;
                    if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(buf.data) = 134349056;
                      *(&buf.data + 4) = v47;
                      _os_log_error_impl(&dword_26146F000, v48, OS_LOG_TYPE_ERROR, "vImageScale_{Planar8,CbCr8} failed: %{public}zd", &buf, 0xCu);
                    }

                    buf.data = -2004;
                    v114.data = @"vImageScale_{Planar8,CbCr8} failed.";
                    sub_261476754(a3, &buf, &v114.data);
                    goto LABEL_100;
                  }

                  v55 = (v17 | v10);
                  if (*(a1 + 28))
                  {
                    v56 = *v55;
                    v57 = v55[1];
                    v58 = *(a1 + 352);
                    *&buf.height = vextq_s8(*&dest.height, *&dest.height, 8uLL);
                    buf.rowBytes = *(a1 + 376);
                    v59 = *(a1 + 392);
                    *&v114.height = vextq_s8(*&v103.height, *&v103.height, 8uLL);
                    v60 = *(a1 + 416);
                    v114.data = v59;
                    v114.rowBytes = v60;
                    buf.data = v58;
                    v47 = vImageRotate90_Planar8(&dest, &buf, 3u, v56, 0);
                    if (v47 || (v47 = vImageRotate90_Planar16U(&v103, &v114, 3u, v57 | (v57 << 8), 0)) != 0)
                    {
                      if (qword_280CB3F00 != -1)
                      {
                        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                      }

                      v61 = qword_280CB3EF8;
                      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
                      {
                        *v113 = 134349056;
                        *&v113[4] = v47;
                        _os_log_error_impl(&dword_26146F000, v61, OS_LOG_TYPE_ERROR, "vImageRotate90_{Planar8,Planar16U} failed: %{public}zd", v113, 0xCu);
                      }

                      *v113 = -2004;
                      *color = @"vImageRotate90_{Planar8,Planar16U} failed.";
                      sub_261476754(a3, v113, color);
                      goto LABEL_100;
                    }

                    v64 = (a1 + 32);
                    v85 = dest.height;
                    v63 = dest.width;
                    if (*(a1 + 28))
                    {
                      *(a1 + 32) = dest.height;
                      *(a1 + 40) = v63;
                      v62 = v85;
                      v65 = v103.height;
                      v66 = v103.width;
LABEL_138:
                      *(a1 + 48) = v65;
                      *(a1 + 56) = v66;
                      v67 = *(a1 + 360);
                      if (v63 >= v67)
                      {
                        v78 = *(a1 + 368);
                        if (v62 < v78)
                        {
                          if (v67)
                          {
                            for (i = 0; i < v67; ++i)
                            {
                              v80 = *v64;
                              if (*v64 < v78)
                              {
                                do
                                {
                                  *(*(a1 + 352) + i * *(a1 + 376) + v80++) = *v55;
                                  v78 = *(a1 + 368);
                                }

                                while (v80 < v78);
                                v67 = *(a1 + 360);
                              }
                            }

                            v65 = *(a1 + 48);
                          }

                          v81 = *(a1 + 400);
                          buf.data = (*(a1 + 392) + 2 * v65);
                          buf.height = v81;
                          v82 = *(a1 + 416);
                          buf.width = *(a1 + 408) - v65;
                          buf.rowBytes = v82;
                          color[0] = *(v55 + 4);
                          color[1] = color[0];
                          v47 = vImageBufferFill_CbCr8(&buf, color, 0);
                          if (v47)
                          {
                            if (qword_280CB3F00 != -1)
                            {
                              dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                            }

                            v83 = qword_280CB3EF8;
                            if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
                            {
                              LODWORD(v114.data) = 134349056;
                              *(&v114.data + 4) = v47;
                              _os_log_error_impl(&dword_26146F000, v83, OS_LOG_TYPE_ERROR, "vImageBufferFill_CbCr8 failed: %{public}zd", &v114, 0xCu);
                            }

                            goto LABEL_145;
                          }
                        }
                      }

                      else
                      {
                        do
                        {
                          memset((*(a1 + 352) + *(a1 + 376) * v63++), *v55, *(a1 + 376));
                        }

                        while (v63 < *(a1 + 360));
                        v68 = *(a1 + 56);
                        v69 = *(a1 + 400);
                        v71 = *(a1 + 408);
                        v70 = *(a1 + 416);
                        buf.data = (*(a1 + 392) + v70 * v68);
                        buf.height = v69 - v68;
                        buf.width = v71;
                        buf.rowBytes = v70;
                        color[0] = *(v55 + 4);
                        color[1] = color[0];
                        v47 = vImageBufferFill_CbCr8(&buf, color, 0);
                        if (v47)
                        {
                          if (qword_280CB3F00 != -1)
                          {
                            dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
                          }

                          v72 = qword_280CB3EF8;
                          if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
                          {
                            LODWORD(v114.data) = 134349056;
                            *(&v114.data + 4) = v47;
                            _os_log_error_impl(&dword_26146F000, v72, OS_LOG_TYPE_ERROR, "vImageBufferFill_CbCr8 failed: %{public}zd", &v114, 0xCu);
                          }

LABEL_145:
                          v114.data = -2004;
                          *v113 = @"vImageBufferFill_CbCr8 failed.";
                          sub_261476754(a3, &v114, v113);
LABEL_100:
                          v49 = 0;
                          *(a3 + 32) = v47;
                          *(a3 + 40) = 1;
                          goto LABEL_101;
                        }
                      }

                      v49 = 1;
LABEL_101:
                      if (LOBYTE(v121->info) == 1 && v124 != 0)
                      {
                        sub_261489CFC(v124, v121->isa);
                      }

                      sub_261489D4C(v122);
                      if (!v49)
                      {
                        v12 = 0;
LABEL_127:
                        sub_2614F5408(v100, a3);
LABEL_36:
                        if (*(v110 + 8) == 1 && v112)
                        {
                          sub_261489CFC(v112, *v110);
                        }

                        sub_261489D4C(v111);
                        return v12;
                      }

                      v51 = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
                      v52 = *(a1 + 24);
                      v121 = &unk_2873CF748;
                      v123 = &v121;
                      v125[0] = &unk_2873CF6F0;
                      v126 = v125;
                      buf.data = a4;
                      sub_261489C64(&buf.height, v125);
                      if (*(buf.data + 8) == 1 && v123)
                      {
                        sub_261489CFC(v123, *buf.data);
                      }

                      sub_261489D4C(v125);
                      sub_261489D4C(&v121);
                      if (*(a1 + 192) != 1 || (*(a1 + 336) & 1) == 0)
                      {
                        if (qword_280CB3EE0 != -1)
                        {
                          dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                        }

                        v54 = qword_280CB3ED8;
                        if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                        {
                          *v119 = 0;
                          _os_log_error_impl(&dword_26146F000, v54, OS_LOG_TYPE_ERROR, "YpCbCrToRGBImageConverter is not ready.", v119, 2u);
                        }

                        *v119 = -2005;
                        src.data = @"YpCbCrToRGBImageConverter is not ready.";
                        sub_261476754(a3, v119, &src.data);
                        goto LABEL_122;
                      }

                      if ((v51 | 0x10) != 0x34323076)
                      {
                        if (qword_280CB3EE0 != -1)
                        {
                          dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                        }

                        v73 = qword_280CB3ED8;
                        if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                        {
                          *v119 = 67240192;
                          *&v119[4] = v51;
                          _os_log_error_impl(&dword_26146F000, v73, OS_LOG_TYPE_ERROR, "Unsupported input pixel format type: %{public}u", v119, 8u);
                        }

                        *v119 = -2001;
                        src.data = @"Unsupported input pixel format type.";
                        sub_261476754(a3, v119, &src.data);
                        goto LABEL_122;
                      }

                      if (v52 > 1111970368)
                      {
                        if (v52 == 1111970369)
                        {
                          goto LABEL_154;
                        }

                        v53 = 1380401729;
                      }

                      else
                      {
                        if (v52 == 32)
                        {
                          goto LABEL_154;
                        }

                        v53 = 1094862674;
                      }

                      if (v52 != v53)
                      {
                        if (qword_280CB3EE0 != -1)
                        {
                          dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                        }

                        v84 = qword_280CB3ED8;
                        if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                        {
                          *v119 = 67240192;
                          *&v119[4] = v52;
                          _os_log_error_impl(&dword_26146F000, v84, OS_LOG_TYPE_ERROR, "Unsupported output pixel format type: %{public}u", v119, 8u);
                        }

                        *v119 = -2001;
                        src.data = @"Unsupported output pixel format type.";
                        sub_261476754(a3, v119, &src.data);
                        goto LABEL_122;
                      }

LABEL_154:
                      if (*(a1 + 352) && (v74 = *(a1 + 360)) != 0 && (v75 = *(a1 + 368), v75 - 1 < *(a1 + 376)) && *(a1 + 392) && *(a1 + 400) == v74 >> 1 && (v76 = *(a1 + 408), v76 == v75 >> 1) && *(a1 + 416) >= (2 * v76))
                      {
                        if (*(a1 + 432) && *(a1 + 440) == v74 && *(a1 + 448) == v75 && *(a1 + 456) >= 4 * v75)
                        {
                          v95 = 144;
                          if (v51 == 875704438)
                          {
                            v95 = 0;
                          }

                          LODWORD(v105.data) = 50462976;
                          LODWORD(dest.data) = 66051;
                          LODWORD(v103.data) = 16909056;
                          LODWORD(v114.data) = 197121;
                          if (v52 > 1111970368)
                          {
                            if (v52 == 1380401729)
                            {
                              p_dest = &v114;
                            }

                            else
                            {
                              p_dest = &dest;
                            }
                          }

                          else if (v52 == 32)
                          {
                            p_dest = &v105;
                          }

                          else
                          {
                            p_dest = &v103;
                          }

                          v97 = vImageConvert_420Yp8_CbCr8ToARGB8888((a1 + 352), (a1 + 392), (a1 + 432), (a1 + 64 + v95), p_dest, 0xFFu, 0);
                          v12 = v97 == 0;
                          if (v97)
                          {
                            if (qword_280CB3EE0 != -1)
                            {
                              dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                            }

                            v98 = qword_280CB3ED8;
                            if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                            {
                              *v119 = 134349056;
                              *&v119[4] = v97;
                              _os_log_error_impl(&dword_26146F000, v98, OS_LOG_TYPE_ERROR, "vImageConvert_420Yp8_CbCr8ToARGB8888 failed: %{public}zd", v119, 0xCu);
                            }

                            *v119 = -2005;
                            src.data = @"vImageConvert_420Yp8_CbCr8ToARGB8888 failed.";
                            sub_261476754(a3, v119, &src.data);
                            *(a3 + 32) = v97;
                            *(a3 + 40) = 1;
                          }

LABEL_123:
                          if (*(buf.data + 8) == 1 && *v116)
                          {
                            sub_261489CFC(*v116, *buf.data);
                          }

                          sub_261489D4C(&buf.height);
                          if ((v101 & 1) == 0)
                          {
                            goto LABEL_36;
                          }

                          goto LABEL_127;
                        }

                        if (qword_280CB3EE0 != -1)
                        {
                          dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                        }

                        v94 = qword_280CB3ED8;
                        if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                        {
                          *v119 = 0;
                          _os_log_error_impl(&dword_26146F000, v94, OS_LOG_TYPE_ERROR, "Invalid output image buffer.", v119, 2u);
                        }

                        *v119 = -2005;
                        src.data = @"Invalid output image buffer.";
                        sub_261476754(a3, v119, &src.data);
                      }

                      else
                      {
                        if (qword_280CB3EE0 != -1)
                        {
                          dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
                        }

                        v77 = qword_280CB3ED8;
                        if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
                        {
                          *v119 = 0;
                          _os_log_error_impl(&dword_26146F000, v77, OS_LOG_TYPE_ERROR, "Invalid input image buffer.", v119, 2u);
                        }

                        *v119 = -2005;
                        src.data = @"Invalid input image buffer.";
                        sub_261476754(a3, v119, &src.data);
                      }

LABEL_122:
                      v12 = 0;
                      goto LABEL_123;
                    }

                    *(a1 + 32) = dest.width;
                    *(a1 + 40) = v85;
                    v62 = v63;
                    v63 = v85;
                  }

                  else
                  {
                    v63 = dest.height;
                    v62 = dest.width;
                    *(a1 + 32) = dest.width;
                    *(a1 + 40) = v63;
                    v64 = (a1 + 32);
                  }

                  v66 = v103.height;
                  v65 = v103.width;
                  goto LABEL_138;
                }

                p_height = &v103.width;
                v46 = v43 * v103.height;
              }

              else
              {
                p_height = &v103.height;
                v46 = v103.width / v43;
              }

              *p_height = vcvtpd_u64_f64(v46);
              goto LABEL_93;
            }

            v10 = &dword_261573B20;
          }

          v17 = v10 & 0xFFFFFFFFFFFFFF00;
          goto LABEL_44;
        }

        if (qword_280CB3F00 != -1)
        {
          dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
        }

        v15 = qword_280CB3EF8;
        if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
        {
          v32 = *(a3 + 24);
          LODWORD(buf.data) = 67240192;
          HIDWORD(buf.data) = v32;
          _os_log_error_impl(&dword_26146F000, v15, OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed: %{public}d", &buf, 8u);
        }
      }

      else
      {
        if (qword_280CB3F00 != -1)
        {
          dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
        }

        v14 = qword_280CB3EF8;
        if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
        {
          v31 = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
          LODWORD(buf.data) = 67240192;
          HIDWORD(buf.data) = v31;
          _os_log_error_impl(&dword_26146F000, v14, OS_LOG_TYPE_ERROR, "Unsupported pixel format: %{public}u", &buf, 8u);
        }

        buf.data = -2001;
        v121 = @"Unsupported pixel format.";
        sub_261476754(a3, &buf, &v121);
      }
    }

    else
    {
      if (qword_280CB3F00 != -1)
      {
        dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
      }

      v13 = qword_280CB3EF8;
      if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "Missing pixel buffer.", &buf, 2u);
      }

      buf.data = -6008;
      v121 = @"Missing pixel buffer.";
      sub_261476754(a3, &buf, &v121);
    }

    v12 = 0;
    goto LABEL_36;
  }

  if (qword_280CB3F00 != -1)
  {
    dispatch_once(&qword_280CB3F00, &unk_2873D06C0);
  }

  v11 = qword_280CB3EF8;
  if (os_log_type_enabled(qword_280CB3EF8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.data) = 0;
    _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "ANMDImagePreprocessor_Accelerate_32BGRA is not ready.", &buf, 2u);
  }

  buf.data = -6008;
  v121 = @"ANMDImagePreprocessor_Accelerate_32BGRA is not ready.";
  sub_261476754(a3, &buf, &v121);
  return 0;
}