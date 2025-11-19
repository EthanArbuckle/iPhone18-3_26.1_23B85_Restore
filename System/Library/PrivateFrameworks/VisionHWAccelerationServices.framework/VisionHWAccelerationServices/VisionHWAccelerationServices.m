uint64_t sub_2710059B8(uint64_t a1)
{
  if (**(a1 + 32))
  {
    FigBaseObject = FigCaptureDeviceGetFigBaseObject();
    if (FigBaseObject)
    {
      VTable = CMBaseObjectGetVTable();
      v4 = *(*(VTable + 8) + 24);
      if (v4)
      {
        v5 = *(VTable + 8) + 24;
        v4(FigBaseObject);
      }
    }

    CFRelease(**(a1 + 32));
    **(a1 + 32) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  if (!CMNotificationCenterRemoveListener() || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_271022540();
  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6)
  {
LABEL_9:
    MEMORY[0x2743BADE0](v6, 0x1020C403A5D3213);
  }

LABEL_10:
  v7 = *(a1 + 24);
  if (v7 == a1)
  {
    (*(*v7 + 32))(v7);
    return a1;
  }

  else
  {
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    return a1;
  }
}

void sub_271005B60(int a1, uint64_t a2, CFTypeRef cf2)
{
  if (CFEqual(*MEMORY[0x277CF69F8], cf2))
  {
    v7 = 1;
    v5 = *(a2 + 24);
    if (v5)
    {
      (*(*v5 + 48))(v5, &v7);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_2710225B8();
    }
  }

  else if (CFEqual(*MEMORY[0x277CF69F0], cf2))
  {
    v8 = 2;
    v6 = *(a2 + 24);
    if (v6)
    {
      (*(*v6 + 48))(v6, &v8);
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_2710225FC();
  }
}

BOOL sub_271005CB4(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD2898];
  v3 = 4;
  v4 = *MEMORY[0x277CBECE8];
  v5 = MEMORY[0x277D86220];
  while (1)
  {
    v6 = *(a1 + 32);
    cf = 0;
    v7 = IOServiceMatching("AppleH16CamIn");
    if (IOServiceGetMatchingService(v2, v7))
    {
      v8 = dlopen("/System/Library/MediaCapture/H16ISP.mediacapture", 4);
      if (v8 && (v9 = dlsym(v8, "H16ISPCaptureDeviceCreate")) != 0)
      {
        v10 = v9(v4, 0, &cf);
        v11 = cf;
        if (cf)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = 0;
        v11 = cf;
        if (cf)
        {
LABEL_8:
          v12 = off_279E2C100;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v13 = IOServiceMatching("AppleH13CamIn");
    if (IOServiceGetMatchingService(v2, v13))
    {
      v14 = dlopen("/System/Library/MediaCapture/H13ISP.mediacapture", 4);
      if (v14 && (v15 = dlsym(v14, "H13ISPCaptureDeviceCreate")) != 0)
      {
        v10 = v15(v4, 0, &cf);
        v11 = cf;
        if (cf)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v10 = 0;
        v11 = cf;
        if (cf)
        {
LABEL_25:
          v12 = off_279E2C120;
          goto LABEL_30;
        }
      }
    }

    v16 = IOServiceMatching("AppleH10CamIn");
    if (IOServiceGetMatchingService(v2, v16))
    {
      v17 = dlopen("/System/Library/MediaCapture/H10ISP.mediacapture", 4);
      if (v17 && (v18 = dlsym(v17, "H10ISPCaptureDeviceCreate")) != 0)
      {
        v10 = v18(v4, 0, &cf);
        v11 = cf;
        if (cf)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = 0;
        v11 = cf;
        if (cf)
        {
LABEL_27:
          v12 = off_279E2C140;
          goto LABEL_30;
        }
      }
    }

    v19 = IOServiceMatching("AppleH9CamIn");
    if (IOServiceGetMatchingService(v2, v19))
    {
      v20 = dlopen("/System/Library/MediaCapture/H9ISP.mediacapture", 4);
      if (v20 && (v21 = dlsym(v20, "H9ISPCaptureDeviceCreate")) != 0)
      {
        v10 = v21(v4, 0, &cf);
        v11 = cf;
        if (!cf)
        {
LABEL_22:
          if (!v6)
          {
            goto LABEL_32;
          }

          v11 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v10 = 0;
        v11 = cf;
        if (!cf)
        {
          goto LABEL_22;
        }
      }

      v12 = off_279E2C160;
LABEL_30:
      *(v6 + 8) = *(v12 + 6);
LABEL_31:
      *v6 = v11;
      goto LABEL_32;
    }

    v11 = cf;
    if (v6)
    {
      goto LABEL_31;
    }

    if (cf)
    {
      CFRelease(cf);
    }

LABEL_32:
    if (v10 != -536870186)
    {
      break;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_271022640(buf, v3 - 2, &v28);
      if (--v3 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (--v3 <= 1)
    {
      goto LABEL_43;
    }
  }

  if (!v10)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v22 = **(a1 + 32);
    CMNotificationCenterAddListener();
    result = **(a1 + 32) != 0;
    v24 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_43:
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_27102268C();
    result = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27100605C(int a1@<W0>, uint64_t *a2@<X8>)
{
  if (atomic_load_explicit(&qword_280874790, memory_order_acquire))
  {
    v4 = qword_2808747A0;
    if (!qword_2808747A0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_271022704();
    v4 = qword_2808747A0;
    if (!qword_2808747A0)
    {
      goto LABEL_13;
    }
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = qword_280874798) == 0)
  {
LABEL_13:
    operator new();
  }

  v7 = v5;
  if (**(qword_280874798 + 32))
  {
    v8 = 1;
  }

  else
  {
    v8 = a1 == 0;
  }

  if (v8 || sub_271005CB4(qword_280874798))
  {
    *a2 = v6;
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_2710062A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271014ADC(va);
  _Unwind_Resume(a1);
}

void sub_2710062BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_271014ADC(va);
  sub_271014ADC(va1);
  _Unwind_Resume(a1);
}

void sub_2710062D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_271007220(va1);
  sub_271014ADC(va);
  _Unwind_Resume(a1);
}

void sub_2710062F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = sub_2710070B4(v4);
  MEMORY[0x2743BADE0](v6, 0x1020C40BD065CB0);
  sub_271014ADC(va);
  _Unwind_Resume(a1);
}

void sub_271006324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_271014ADC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271006338(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 8));
    return v1;
  }

  return result;
}

uint64_t sub_271006370(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (**(a1 + 32) && (v11 = *MEMORY[0x277CF6A20], v12[0] = &unk_2880F9B38, v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1], v3 = **(a1 + 32), VTable = CMBaseObjectGetVTable(), (v5 = *(*(VTable + 16) + 8)) != 0))
  {
    v6 = *(VTable + 16) + 8;
    if (v5(v3, *MEMORY[0x277CBECE8], v2, &v10))
    {
      result = 0;
    }

    else
    {
      result = v10;
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    result = 0;
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_2710064AC(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v7 = v6;
      (*(*v3 + 24))(v3, v6);
    }

    else
    {
      v7 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_271007274(v6, a1);
  result = v7;
  if (v7 == v6)
  {
    result = (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    result = (*(*v7 + 40))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2710065E0(uint64_t a1, void *a2)
{
  v3 = a2;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 56);
  if (v5)
  {
    v6 = *(VTable + 8) + 56;
    v7 = v5(a1, *MEMORY[0x277CF6AB0], v3);
  }

  else
  {
    v7 = -12782;
  }

  v8 = v7 == 0;

  return v8;
}

BOOL sub_2710066A0(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_27100683C;
  v11[3] = &unk_279E2C0E0;
  v13 = &v14;
  v3 = v2;
  v12 = v3;
  v4 = v11;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 8);
  if (!v6)
  {

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = *(VTable + 16) + 8;
  v8 = v6(a1, v4);

  if (v8 == -12780)
  {
    v9 = 1;
    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_7;
  }

  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *(v15 + 6) == 0;
LABEL_8:

  _Block_object_dispose(&v14, 8);
  return v9;
}

void sub_271006814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_271006850(const void *a1)
{
  if (a1)
  {
    VTable = CMBaseObjectGetVTable();
    v3 = *(*(VTable + 16) + 24);
    if (!v3 || (v4 = *(VTable + 16) + 24, v3(a1)))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_271022774();
        v5 = 0;
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v5 = 0;
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (!v6)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v5 = 1;
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (!v6)
      {
LABEL_14:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          sub_2710227EC();
        }

LABEL_10:
        v5 = 0;
        goto LABEL_11;
      }
    }

    if (!v6(a1))
    {
LABEL_11:
      CFRelease(a1);
      return v5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

BOOL sub_271006A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 16);
  if (v8)
  {
    v9 = *(VTable + 16) + 16;
    v10 = v8(a2, 0, 0, a3, a4, 0);
    kdebug_trace();
    if (!v10)
    {
      goto LABEL_22;
    }

    kdebug_trace();
    if ((v10 + 12788) > 8)
    {
LABEL_19:
      kdebug_trace();
      if (v10)
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
        if (result)
        {
          sub_2710228B0();
LABEL_24:
          result = 0;
          goto LABEL_18;
        }

        goto LABEL_18;
      }

LABEL_22:
      result = 1;
      goto LABEL_18;
    }

    if (((1 << (v10 - 12)) & 0x1DB) == 0)
    {
      v11 = 0;
      v12 = MEMORY[0x277D86220];
      while (1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_271022864(v21, v10, &v22);
        }

        usleep(0x3E8u);
        v14 = CMBaseObjectGetVTable();
        v15 = *(*(v14 + 16) + 16);
        if (!v15)
        {
          break;
        }

        v16 = *(v14 + 16) + 16;
        v17 = v15(a2, 0, 0, a3, a4, 0);
        v10 = v17;
        if ((v17 == -12786 || v17 == -12783) && v11++ < 9)
        {
          continue;
        }

        goto LABEL_19;
      }

      v10 = -12782;
      goto LABEL_19;
    }
  }

  else
  {
    kdebug_trace();
    kdebug_trace();
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_271022920();
    goto LABEL_24;
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_271006D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7)
{
  kdebug_trace();
  v13 = a6[1] - *a6;
  if ((v13 >> 3) != -3)
  {
    if ((v13 >> 3) > -4)
    {
      operator new();
    }

    sub_271014AC4();
  }

  v14 = (v13 << 29) >> 28;
  *v14 = @"OperationsList";
  *(v14 + 8) = a3;
  v15 = ((v13 << 29) + 0x100000000) >> 28;
  *v15 = @"ActionsList";
  *(v15 + 8) = a4;
  v16 = ((v13 << 29) + 0x200000000) >> 28;
  *v16 = @"StatsBuffer";
  *(v16 + 8) = a5;
  v17 = kdebug_trace();
  v18 = sub_271006A18(v17, a2, ((v13 >> 3) + 3), 0);
  if (v18 & a7)
  {
    kdebug_trace();
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v19)
    {
      v20 = v19(a2);
    }

    else
    {
      v20 = -12782;
    }

    kdebug_trace();
    if (v20)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        sub_271022990();
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  operator delete(0);
  return v18;
}

void sub_271007024(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_271007080(exception, a1);
  __cxa_throw(exception, off_279E2C0C8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_271007080(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2710070B4(uint64_t a1)
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

void sub_271007144(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BADE0);
}

uint64_t sub_27100717C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2710059B8(result);

    JUMPOUT(0x2743BADE0);
  }

  return result;
}

uint64_t sub_2710071C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN3isp11HxISPDeviceEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN3isp11HxISPDeviceEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN3isp11HxISPDeviceEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN3isp11HxISPDeviceEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_271007220(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2710059B8(v2);
    MEMORY[0x2743BADE0](v4, 0x1020C40BD065CB0);
    return v3;
  }

  return v1;
}

void *sub_271007274(void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2710074F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271005B4C(a1);
}

void sub_27100751C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

void sub_27100771C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_271007770(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D46FB0] descriptor];
  [v4 setValues:1];
  [v3 setStateDescriptor:v4];
  v5 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:*(a1 + 32)];
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_271022AC8();
  }

  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v3 setPredicates:v6];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_271007928;
  v8[3] = &unk_279E2C1B0;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setUpdateHandler:v8];
  objc_destroyWeak(&v9);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2710078D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));

  _Unwind_Resume(a1);
}

void sub_271007928(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _process:v7 didUpdateState:v6];
}

void sub_271007A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AppStateMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_271007CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak(&a9);

  _Unwind_Resume(a1);
}

void *sub_271007D48(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  v3 = [v1 taskState];
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return v2;
      }

      goto LABEL_9;
    }

    return v2;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      return v2;
    }

LABEL_9:
    v5 = [v2 endowmentNamespaces];
    [v5 containsObject:@"com.apple.frontboard.visibility"];

    return v2;
  }

  return v2;
}

void sub_271007ED8(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *(a1 + 24) = 0;
  operator new();
}

void sub_2710080C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak(&a9);
  sub_2710084C4(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_2710080FC(int a1, uint64_t a2, CFTypeRef cf2)
{
  if (CFEqual(@"AppIsSuspended", cf2))
  {
    sub_2710082FC(a2);
  }

  result = [**(a2 + 40) currentAppState];
  if (result > 2)
  {
    if ((result - 3) < 2)
    {
      *(*(a2 + 40) + 8) = 3;
      return result;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        *(*(a2 + 40) + 8) = 0;
        return result;
      case 1:
        v5 = *(a2 + 40);
        *(v5 + 8) = 1;
        *(v5 + 32) = 1;
        return result;
      case 2:
        *(*(a2 + 40) + 8) = 2;
        return result;
    }
  }

  v6 = *(a2 + 40);
  if (*(v6 + 8) == 1)
  {
    *(v6 + 32) = 1;
  }

  return result;
}

uint64_t sub_2710081F0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x2743BADE0](v2, 0x10A0C40ACFE8555);
  }

  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
    return a1;
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    return a1;
  }
}

void sub_2710082FC(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [**(a1 + 40) currentAppState];
  if (v2 >= 3)
  {
    if (v2 - 3 <= 1)
    {
      *(*(a1 + 40) + 8) = 3;
      goto LABEL_16;
    }

    v4 = *(a1 + 40);
    v3 = *(v4 + 8);
    if (v3 == 3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = v2;
    v4 = *(a1 + 40);
    *(v4 + 8) = v2;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    if (v3 == 1)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v6 = CMNotificationCenterRemoveListener();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        *buf = 67109376;
        v13 = v7;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_271001000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Application PID=%d terminated with status %d", buf, 0xEu);
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 24);
    }

    v8 = *(v4 + 8) == 1;
    *buf = *(a1 + 32);
    v11 = v8;
    if (!v5)
    {
      sub_2710087E0();
    }

    (*(*v5 + 48))(v5, buf, &v11);
    v9 = *(a1 + 40);
    if (*(v9 + 8) == 1)
    {
      [*v9 invalidate];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_271022B10();
  }

LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2710084C4(uint64_t a1)
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

void *sub_271008550(void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2710087D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_271005B4C(a1);
}

void sub_2710087E0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

const char *sub_27100882C(int a1, int a2)
{
  if (a1 <= 61)
  {
    if (a1 == 8 || a1 == 10)
    {
      if (a2 > 1879048221)
      {
        if (a2 == 1879048222)
        {
          return "SHT_MIPS_DWARF";
        }

        if (a2 == 1879048234)
        {
          return "SHT_MIPS_ABIFLAGS";
        }
      }

      else
      {
        if (a2 == 1879048198)
        {
          return "SHT_MIPS_REGINFO";
        }

        if (a2 == 1879048205)
        {
          return "SHT_MIPS_OPTIONS";
        }
      }
    }

    else if (a1 == 40)
    {
      v3 = a2 - 1879048193;
      if ((a2 - 1879048193) < 5)
      {
        v4 = *&asc_271023C78[8 * v3];
        return off_279E2C1F8[v3];
      }
    }
  }

  else if (a1 > 163)
  {
    if (a1 == 164)
    {
      if (a2 == 1879048192)
      {
        return "SHT_HEX_ORDERED";
      }
    }

    else if (a1 == 243 && a2 == 1879048195)
    {
      return "SHT_RISCV_ATTRIBUTES";
    }
  }

  else if (a1 == 62)
  {
    if (a2 == 1879048193)
    {
      return "SHT_X86_64_UNWIND";
    }
  }

  else if (a1 == 105 && a2 == 1879048195)
  {
    return "SHT_MSP430_ATTRIBUTES";
  }

  if (a2 <= 1610612736)
  {
    return "SHT_NOBITS";
  }

  if (a2 > 1879002118)
  {
    if (a2 > 1879048180)
    {
      if (a2 <= 1879048188)
      {
        if (a2 == 1879048181)
        {
          return "SHT_GNU_ATTRIBUTES";
        }

        if (a2 == 1879048182)
        {
          return "SHT_GNU_HASH";
        }
      }

      else
      {
        switch(a2)
        {
          case 1879048189:
            return "SHT_GNU_verdef";
          case 1879048190:
            return "SHT_GNU_verneed";
          case 1879048191:
            return "SHT_GNU_versym";
        }
      }

      return "Unknown";
    }

    if (a2 <= 1879002120)
    {
      if (a2 == 1879002119)
      {
        return "SHT_LLVM_PART_PHDR";
      }

      else
      {
        return "SHT_LLVM_BB_ADDR_MAP";
      }
    }

    if (a2 == 1879002121)
    {
      return "SHT_LLVM_CALL_GRAPH_PROFILE";
    }

    if (a2 == 1879047936)
    {
      return "SHT_ANDROID_RELR";
    }

    return "Unknown";
  }

  if (a2 <= 1879002114)
  {
    if (a2 > 1879002111)
    {
      if (a2 == 1879002112)
      {
        return "SHT_LLVM_ODRTAB";
      }

      if (a2 == 1879002113)
      {
        return "SHT_LLVM_LINKER_OPTIONS";
      }
    }

    else
    {
      if (a2 == 1610612737)
      {
        return "SHT_ANDROID_REL";
      }

      if (a2 == 1610612738)
      {
        return "SHT_ANDROID_RELA";
      }
    }

    return "Unknown";
  }

  if (a2 > 1879002116)
  {
    if (a2 == 1879002117)
    {
      return "SHT_LLVM_SYMPART";
    }

    else
    {
      return "SHT_LLVM_PART_EHDR";
    }
  }

  else if (a2 == 1879002115)
  {
    return "SHT_LLVM_ADDRSIG";
  }

  else
  {
    return "SHT_LLVM_DEPENDENT_LIBRARIES";
  }
}

void sub_271008DA0(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a2 + 4) == 3)
  {
    goto LABEL_10;
  }

  sub_27100930C(a1, a2, &v30);
  v10 = std::string::insert(&v30, 0, "invalid sh_type for string table section ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v31, ": expected SHT_STRTAB, but got ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v35 = v12->__r_.__value_.__r.__words[2];
  v34 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = sub_27100882C(*(*a1 + 18), *(a2 + 4));
  v32[0] = &v34;
  v32[2] = v14;
  v32[3] = v15;
  v33 = 1284;
  a3(&v29, a4, v32);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_4:
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(v30.__r_.__value_.__l.__data_);
      v16 = v29.__r_.__value_.__r.__words[0];
      if (v29.__r_.__value_.__r.__words[0])
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = v29.__r_.__value_.__r.__words[0];
  if (v29.__r_.__value_.__r.__words[0])
  {
LABEL_6:
    *(a5 + 16) |= 1u;
    *a5 = v16;
    goto LABEL_19;
  }

LABEL_10:
  sub_271009560(a1, a2, &v34);
  v17 = v34;
  if (v35)
  {
    *&v34 = 0;
    *(a5 + 16) |= 1u;
    *a5 = v17;
    if ((v35 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v18 = *(&v34 + 1);
  if (!*(&v34 + 1))
  {
    sub_27100930C(a1, a2, &v29);
    v23 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v30, " is empty");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v33 = 260;
    v32[0] = &v31;
    operator new();
  }

  if (*(v34 + *(&v34 + 1) - 1))
  {
    sub_27100930C(a1, a2, &v29);
    v19 = std::string::insert(&v29, 0, "SHT_STRTAB string table section ");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v30, " is non-null terminated");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v33 = 260;
    v32[0] = &v31;
    operator new();
  }

  *(a5 + 16) &= ~1u;
  *a5 = v17;
  *(a5 + 8) = v18;
  if (v35)
  {
LABEL_17:
    v27 = v34;
    *&v34 = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }
  }

LABEL_19:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_271009170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MEMORY[0x2743BADE0](v28, 0x10F3C401C2224D9);
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v29 - 64) & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a10);
  if ((*(v29 - 64) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v31 = *(v29 - 80);
  *(v29 - 80) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void sub_27100930C(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2710099F0(a1, v13);
  if ((v14 & 1) == 0)
  {
    std::to_string(&v11, 0xCCCCCCCCCCCCCCCDLL * ((a2 - v13[0]) >> 3));
    v6 = std::string::insert(&v11, 0, "[index ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v12, "]");
    *a3 = *v8;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_8:
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }

    else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(v11.__r_.__value_.__l.__data_);
    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v5 = v13[0];
  v13[0] = 0;
  v11.__r_.__value_.__r.__words[0] = v5;
  sub_27100BE20(&v11, &v12);
  if (v11.__r_.__value_.__r.__words[0])
  {
    (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
  }

  a3[23] = 15;
  strcpy(a3, "[unknown index]");
  if (v14)
  {
LABEL_9:
    v9 = v13[0];
    v13[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2710094CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v21 - 32))
  {
    v23 = *(v21 - 48);
    *(v21 - 48) = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_271009560@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  if (__CFADD__(v5, v4))
  {
    sub_27100930C(result, a2, &v26);
    v6 = std::string::insert(&v26, 0, "section ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v21, " has a sh_offset (0x");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v20.__r_.__value_.__r.__words[0] = v5;
    v27[0] = __p;
    v28 = &v20;
    v29 = 3588;
    v30[0] = v27;
    v31 = ") + sh_size (0x";
    v32 = 770;
    v19.__r_.__value_.__r.__words[0] = v4;
    v33[0] = v30;
    v34 = &v19;
    v35 = 3586;
    v36 = v33;
    v37 = ") that cannot be represented";
    v38 = 770;
    operator new();
  }

  if (result[1] < (v4 + v5))
  {
    v10 = result;
    sub_27100930C(result, a2, &v19);
    v11 = std::string::insert(&v19, 0, "section ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, " has a sh_offset (0x");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = v4;
    v18 = v5;
    v21.__r_.__value_.__r.__words[0] = &v26;
    v21.__r_.__value_.__r.__words[2] = &v18;
    v22 = 3588;
    __p[0] = &v21;
    v24 = ") + sh_size (0x";
    v25 = 770;
    v27[0] = __p;
    v28 = &v17;
    v29 = 3586;
    v30[0] = v27;
    v31 = ") that is greater than the file size (0x";
    v32 = 770;
    v16 = v10[1];
    v33[0] = v30;
    v34 = &v16;
    v35 = 3586;
    v36 = v33;
    v37 = ")";
    v38 = 770;
    operator new();
  }

  v15 = *result + v5;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v4;
  return result;
}

void sub_2710098D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  MEMORY[0x2743BADE0](v48, 0x10F3C401C2224D9);
  if (a48 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_5:
      operator delete(a18);
      if ((a17 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a12);
      goto LABEL_9;
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_5;
  }

  if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void *sub_2710099F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 32);
  if (v4)
  {
    v5 = *(v3 + 46);
    if (v5 != 40)
    {
      v11 = "invalid e_shentsize in ELF header: ";
      v12 = v5;
      v13 = 2307;
      operator new();
    }

    v6 = result[1];
    if (v4 > 0xFFFFFFD7 || v4 + 40 > v6)
    {
      v10 = *(*result + 32);
      v11 = "section header table goes past the end of the file: e_shoff = 0x";
      v12 = &v10;
      v13 = 3587;
      operator new();
    }

    v8 = v3 + v4;
    v9 = *(v3 + 48);
    if (v9)
    {
      if (v4 + 40 * v9 > v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = *(v8 + 20);
      if (v4 + 40 * v9 > v6)
      {
LABEL_13:
        v11 = "section table goes past the end of file";
        v13 = 259;
        operator new();
      }
    }

    *(a2 + 16) &= ~1u;
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) &= ~1u;
  }

  return result;
}

void sub_271009BEC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 4);
  if (v6 != 2 && v6 != 11)
  {
    v9[0] = "invalid sh_type for symbol table, expected SHT_SYMTAB or SHT_DYNSYM";
    v10 = 259;
    operator new();
  }

  v8 = *(a2 + 24);
  if (a4 <= v8)
  {
    v9[0] = "invalid section index: ";
    v9[2] = v8;
    v10 = 2051;
    operator new();
  }

  v9[0] = sub_271009D4C;
  sub_271008DA0(a1, a3 + 40 * v8, sub_27100C124, v9, a5);
}

uint64_t sub_271009DD0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 0x33)
  {
    v4 = a2;
    v5[0] = "invalid buffer: the size (";
    v5[2] = &v4;
    v6 = 2563;
    v7[0] = v5;
    v7[2] = ") is smaller than an ELF header (";
    v8 = 770;
    v3 = 52;
    v9[0] = v7;
    v9[2] = &v3;
    v10 = 2562;
    v11 = v9;
    v12 = ")";
    v13 = 770;
    operator new();
  }

  *(a3 + 16) &= ~1u;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void *sub_271009F00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 44);
  if (*(*result + 44))
  {
    v5 = *(v3 + 42);
    if (v5 != 32)
    {
      v22 = "invalid e_phentsize: ";
      v23 = v5;
      v24 = 2307;
      operator new();
    }
  }

  else
  {
    v5 = *(v3 + 42);
  }

  v6 = *(v3 + 28);
  v7 = result[1];
  if (v6 + v5 * *(*result + 44) > v7)
  {
    v8 = *(v3 + 28);
    v9 = v7;
    v10[0] = "program headers are longer than binary of size ";
    v10[2] = &v9;
    v11 = 2563;
    v12[0] = v10;
    v12[2] = ": e_phoff = 0x";
    v13 = 770;
    v14[0] = v12;
    v14[2] = &v8;
    v15 = 3586;
    v16[0] = v14;
    v16[2] = ", e_phnum = ";
    v17 = 770;
    v18[0] = v16;
    v18[2] = v4;
    v19 = 2306;
    v20[0] = v18;
    v20[2] = ", e_phentsize = ";
    v21 = 770;
    v22 = v20;
    v23 = v5;
    v24 = 2306;
    operator new();
  }

  *(a2 + 16) &= ~1u;
  *a2 = v3 + v6;
  *(a2 + 8) = v4;
  return result;
}

void *sub_27100A0F4@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2[9] != 16)
  {
    sub_27100930C(result, a2, &v32);
    v11 = std::string::insert(&v32, 0, "section ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v34, " has invalid sh_entsize: expected ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v38 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v36.__r_.__value_.__r.__words[0] = 16;
    v40[0] = __p;
    v41 = &v36;
    v42 = 2564;
    v43[0] = v40;
    v44 = ", but got ";
    v45 = 770;
    v15 = a2[9];
    v46 = v43;
    v47 = v15;
    v48 = 2050;
    operator new();
  }

  v5 = a2[5];
  if ((v5 & 0xF) != 0)
  {
    sub_27100930C(result, a2, &v36);
    v6 = std::string::insert(&v36, 0, "section ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v32, " has an invalid sh_size (");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    __p[0] = &v34;
    v38 = v5;
    v39 = 2052;
    v40[0] = __p;
    v41 = ") which is not a multiple of its sh_entsize (";
    v42 = 770;
    v10 = a2[9];
    v43[0] = v40;
    v44 = v10;
    v45 = 2050;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    operator new();
  }

  v16 = a2[4];
  if (__CFADD__(v16, v5))
  {
    sub_27100930C(result, a2, &v36);
    v17 = std::string::insert(&v36, 0, "section ");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v32, " has a sh_offset (0x");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v31.__r_.__value_.__r.__words[0] = v16;
    __p[0] = &v34;
    v38 = &v31;
    v39 = 3588;
    v40[0] = __p;
    v41 = ") + sh_size (0x";
    v42 = 770;
    v30.__r_.__value_.__r.__words[0] = v5;
    v43[0] = v40;
    v44 = &v30;
    v45 = 3586;
    v46 = v43;
    v47 = ") that cannot be represented";
    v48 = 770;
    operator new();
  }

  if (result[1] < (v5 + v16))
  {
    v21 = result;
    sub_27100930C(result, a2, &v30);
    v22 = std::string::insert(&v30, 0, "section ");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v31, " has a sh_offset (0x");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v28 = v5;
    v29 = v16;
    v32.__r_.__value_.__r.__words[0] = &v36;
    v32.__r_.__value_.__r.__words[2] = &v29;
    v33 = 3588;
    v34.__r_.__value_.__r.__words[0] = &v32;
    v34.__r_.__value_.__r.__words[2] = ") + sh_size (0x";
    v35 = 770;
    __p[0] = &v34;
    v38 = &v28;
    v39 = 3586;
    v40[0] = __p;
    v41 = ") that is greater than the file size (0x";
    v42 = 770;
    v27 = v21[1];
    v43[0] = v40;
    v44 = &v27;
    v45 = 3586;
    v46 = v43;
    v47 = ")";
    v48 = 770;
    operator new();
  }

  v26 = *result + v16;
  *(a3 + 16) &= ~1u;
  *a3 = v26;
  *(a3 + 8) = v5 >> 4;
  return result;
}

void sub_27100A6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  MEMORY[0x2743BADE0](v55, 0x10F3C401C2224D9);
  if (a48 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_5:
      operator delete(a18);
      if ((a17 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a12);
      goto LABEL_9;
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_5;
  }

  if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_27100A894(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void (*a4)(std::string *__return_ptr, uint64_t, void *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(*a1 + 50);
  if (v7 == 0xFFFF)
  {
    if (!a3)
    {
      v11 = "e_shstrndx == SHN_XINDEX, but the section header table is empty";
      v13 = 259;
      operator new();
    }

    v7 = *(a2 + 24);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a6 + 16) &= ~1u;
    *a6 = "";
    *(a6 + 8) = 0;
    return;
  }

  if (!*(*a1 + 50))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a3 <= v7)
  {
    v9[0] = "section header string table index ";
    v9[2] = v7;
    v10 = 2051;
    v11 = v9;
    v12 = " does not exist";
    v13 = 770;
    operator new();
  }

  v8 = a2 + 40 * v7;

  sub_271008DA0(a1, v8, a4, a5, a6);
}

void *sub_27100AA3C@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, void (*a3)(std::string *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_2710099F0(a1, v16);
  if ((v17 & 1) == 0)
  {
    sub_27100A894(a1, v16[0], v16[1], a3, a4, v14);
    if (v15)
    {
      v11 = v14[0];
      v14[0] = 0;
      *(a5 + 16) |= 1u;
      *a5 = v11;
    }

    else
    {
      result = sub_27100AC14(a1, a2, v14[0], v14[1], a5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = v14[0];
    v14[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

LABEL_8:
    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v10 = v16[0];
  v16[0] = 0;
  *(a5 + 16) |= 1u;
  *a5 = v10;
LABEL_9:
  result = v16[0];
  v16[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27100AB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14)
  {
    sub_271022B8C(&a12);
    exception_object = a10;
  }

  if (a17)
  {
    v18 = a15;
    a15 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_27100AC14@<X0>(void *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  if (v6)
  {
    if (a4 <= v6)
    {
      sub_27100930C(result, a2, &v13);
      v8 = std::string::insert(&v13, 0, "a section ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v14, " has an invalid sh_name (0x");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v16 = v10->__r_.__value_.__r.__words[2];
      *__p = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = v6;
      v17[0] = __p;
      v17[2] = &v12;
      v18 = 3588;
      v19 = v17;
      v20 = ") offset which goes past the end of the section name string table";
      v21 = 770;
      operator new();
    }

    v7 = (a3 + v6);
    result = strlen(v7);
    *(a5 + 16) &= ~1u;
    *a5 = v7;
    *(a5 + 8) = result;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) &= ~1u;
  }

  return result;
}

void sub_27100ADB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MEMORY[0x2743BADE0](v28, 0x10F3C401C2224D9);
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void *sub_27100AE4C@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 20);
  if (__CFADD__(v5, v4))
  {
    sub_27100930C(result, a2, &v26);
    v6 = std::string::insert(&v26, 0, "section ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v21, " has a sh_offset (0x");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v20.__r_.__value_.__r.__words[0] = v5;
    v27[0] = __p;
    v28 = &v20;
    v29 = 3588;
    v30[0] = v27;
    v31 = ") + sh_size (0x";
    v32 = 770;
    v19.__r_.__value_.__r.__words[0] = v4;
    v33[0] = v30;
    v34 = &v19;
    v35 = 3586;
    v36 = v33;
    v37 = ") that cannot be represented";
    v38 = 770;
    operator new();
  }

  if (result[1] < (v4 + v5))
  {
    v10 = result;
    sub_27100930C(result, a2, &v19);
    v11 = std::string::insert(&v19, 0, "section ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v20, " has a sh_offset (0x");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v17 = v4;
    v18 = v5;
    v21.__r_.__value_.__r.__words[0] = &v26;
    v21.__r_.__value_.__r.__words[2] = &v18;
    v22 = 3588;
    __p[0] = &v21;
    v24 = ") + sh_size (0x";
    v25 = 770;
    v27[0] = __p;
    v28 = &v17;
    v29 = 3586;
    v30[0] = v27;
    v31 = ") that is greater than the file size (0x";
    v32 = 770;
    v16 = v10[1];
    v33[0] = v30;
    v34 = &v16;
    v35 = 3586;
    v36 = v33;
    v37 = ")";
    v38 = 770;
    operator new();
  }

  v15 = *result + v5;
  *(a3 + 16) &= ~1u;
  *a3 = v15;
  *(a3 + 8) = v4;
  return result;
}

void sub_27100B1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  MEMORY[0x2743BADE0](v48, 0x10F3C401C2224D9);
  if (a48 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_5:
      operator delete(a18);
      if ((a17 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a12);
      goto LABEL_9;
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_5;
  }

  if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_27100B2DC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (!v6)
  {
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return;
  }

  if (!v7)
  {
    *a3 = v6;
    *a1 = 0;
    return;
  }

  if (!(*(*v6 + 48))(v6, &unk_280874BB9))
  {
    if (!*a2 || !(*(**a2 + 48))(*a2, &unk_280874BB9))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v17 = *a1;
    *a1 = 0;
    sub_27100B790(v13, v14, &v17);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v7 = *a2;
    goto LABEL_16;
  }

  v8 = *a1;
  if (!*a2)
  {
    v10 = 0;
LABEL_19:
    v17 = v10;
    *a2 = 0;
    sub_27100B670(v8 + 8, &v17);
    v16 = v17;
    v17 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    goto LABEL_21;
  }

  v9 = (*(**a2 + 48))(*a2, &unk_280874BB9);
  v10 = *a2;
  if (!v9)
  {
    goto LABEL_19;
  }

  *a2 = 0;
  v11 = v10[1];
  v12 = v10[2];
  if (v11 == v12)
  {
    goto LABEL_9;
  }

  do
  {
    sub_27100B670(v8 + 8, v11++);
  }

  while (v11 != v12);
  if (v10)
  {
LABEL_9:
    (*(*v10 + 8))(v10);
  }

LABEL_21:
  *a3 = *a1;
  *a1 = 0;
}

void sub_27100B5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t *a12)
{
  if (a12)
  {
    sub_271022B58(a12);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27100B658(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_271022C44(v1);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x27100B650);
}

void sub_27100B670(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_271014AC4();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_27100BA50();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

char *sub_27100B790(void *a1, char *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (a2 == v6)
    {
      v15 = *a3;
      *a3 = 0;
      *v6 = v15;
      a1[1] = v6 + 8;
      return v4;
    }

    v8 = a2 + 8;
    v9 = v6 - 8;
    if (v6 < 8)
    {
      a1[1] = v6;
      if (v6 == v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *v9;
      *v9 = 0;
      *v6 = v10;
      a1[1] = v6 + 8;
      if (v6 == v8)
      {
LABEL_24:
        v27 = *a3;
        *a3 = 0;
        v28 = *v4;
        *v4 = v27;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        return v4;
      }
    }

    v23 = a2 - v6 + 8;
    v24 = v6 - 16;
    do
    {
      v25 = *v24;
      *v24 = 0;
      v26 = *v9;
      *v9 = v25;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      v9 -= 8;
      v24 -= 8;
      v23 += 8;
    }

    while (v23);
    goto LABEL_24;
  }

  v11 = *a1;
  v12 = (&v6[-*a1] >> 3) + 1;
  if (v12 >> 61)
  {
    sub_271014AC4();
  }

  v13 = v7 - v11;
  if (v13 >> 2 > v12)
  {
    v12 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  v33 = a1;
  if (v14)
  {
    if (!(v14 >> 61))
    {
      operator new();
    }

    sub_27100BA50();
  }

  v30 = 0;
  v31 = 8 * ((a2 - v11) >> 3);
  v32 = v31;
  sub_27100BA84(&v30, a3);
  v16 = v31;
  memcpy(v32, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v31;
  *&v32 = v32 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v32;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  v30 = v21;
  v31 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void sub_27100B9C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27100B9D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27100B9D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_27100BA50()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_27100BA84(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = v4;
  if (v4 == result[3])
  {
    v6 = result[1];
    v7 = v6 - *result;
    if (v6 <= *result)
    {
      v10 = (v4 - *result) >> 2;
      if (v4 == *result)
      {
        v10 = 1;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_27100BA50();
    }

    v8 = ((v7 >> 3) + 1) / -2;
    v5 = &v6[-(((v7 >> 3) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6 = 0;
        result = *v5;
        *v5 = v9;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        ++v6;
        ++v5;
      }

      while (v6 != v4);
      v6 = v3[1];
    }

    v3[1] = &v6[v8];
  }

  v11 = *a2;
  *a2 = 0;
  *v5 = v11;
  v3[2] = v5 + 1;
  return result;
}

void *sub_27100BCBC(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_27100BD78();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void *sub_27100BD90(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_27100BE20@<X0>(void **result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &unk_280874BB9))
    {
      v4 = v3[1];
      v5 = v3[2];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &unk_280874BB8))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          sub_27100B2DC(&v10, &v9, &v11);
          v6 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      *a2 = v6;
      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &unk_280874BB8);
      if (result)
      {
        *a2 = 0;
        v8 = *(*v3 + 8);

        return v8(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_27100C130(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t sub_27100C164()
{
  if (!atomic_load_explicit(&qword_2808747A8, memory_order_acquire))
  {
    sub_27100DEEC(&qword_2808747A8, sub_27100C3A0, sub_27100C3E8);
  }

  return qword_2808747A8;
}

void sub_27100C1CC(uint64_t a1, uint64_t a2)
{
  std::error_code::message(&v5, (a1 + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  sub_2710119AC(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_27100C244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27100C260(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2880F8E80;
  v13 = v14;
  sub_271011550(&v5, 0, 0, 0);
  (*(*a1 + 16))(a1, &v5);
  if (*(v13 + 23) < 0)
  {
    sub_27100BCBC(a2, *v13, v13[1]);
  }

  else
  {
    v4 = *v13;
    *(a2 + 16) = v13[2];
    *a2 = v4;
  }

  sub_2710113AC(&v5);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_27100C36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2710113AC(&a9);
  if (*(v9 - 17) < 0)
  {
    operator delete(*(v9 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27100C3E8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_27100C418(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BADE0);
}

double sub_27100C45C@<D0>(int a1@<W1>, char *a2@<X8>)
{
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        operator new();
      }

      operator new();
    }

    if (a1 == 3)
    {
      operator new();
    }

    operator new();
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      operator new();
    }

    a2[23] = 20;
    result = *"Invalid symbol index";
    strcpy(a2, "Invalid symbol index");
  }

  else
  {
    if (a1 == 5)
    {
      operator new();
    }

    a2[23] = 21;
    result = *"Invalid section index";
    strcpy(a2, "Invalid section index");
  }

  return result;
}

void *sub_27100C738(void *result, void *a2, uint64_t a3)
{
  if (*result)
  {
    v4 = result;
    result = sub_271010F04(a3, a2);
    v5 = *v4;
    *v4 = 0;
    if (v5)
    {
      if ((*(*v5 + 48))(v5, &unk_280874BB9))
      {
        v6 = v5[1];
        v7 = v5[2];
        if (v6 != v7)
        {
          v8 = 0;
          do
          {
            v13 = v8;
            v9 = *v6;
            *v6 = 0;
            if ((*(*v9 + 48))(v9, &unk_280874BB8))
            {
              (*(*v9 + 16))(v9, a2);
              v10 = a2[4];
              if (a2[3] == v10)
              {
                sub_2710119AC(a2, "\n", 1uLL);
              }

              else
              {
                *v10 = 10;
                ++a2[4];
              }

              v12 = 0;
              (*(*v9 + 8))(v9);
            }

            else
            {
              v12 = v9;
            }

            sub_27100B2DC(&v13, &v12, &v14);
            v8 = v14;
            v14 = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }

            if (v13)
            {
              (*(*v13 + 8))(v13);
            }

            ++v6;
          }

          while (v6 != v7);
        }
      }

      else
      {
        (*(*v5 + 48))(v5, &unk_280874BB8);
        (*(*v5 + 16))(v5, a2);
        v11 = a2[4];
        if (a2[3] == v11)
        {
          sub_2710119AC(a2, "\n", 1uLL);
        }

        else
        {
          *v11 = 10;
          ++a2[4];
        }
      }

      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

uint64_t sub_27100CAB8()
{
  if (!atomic_load_explicit(qword_2808747C0, memory_order_acquire))
  {
    sub_27100DEEC(qword_2808747C0, sub_27100D51C, sub_27100D564);
  }

  return 1;
}

uint64_t sub_27100CB28@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_27100CBD4(void **a1)
{
  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(*v2 + 48))(v2, &unk_280874BB9))
    {
      v3 = v2[1];
      v4 = v2[2];
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v11.__r_.__value_.__r.__words[0] = v5;
          v6 = *v3;
          *v3 = 0;
          if ((*(*v6 + 48))(v6, &unk_280874BB8))
          {
            *&v14.__val_ = (*(*v6 + 32))(v6);
            v14.__cat_ = v7;
            v15 = 0;
            (*(*v6 + 8))(v6);
          }

          else
          {
            v15 = v6;
          }

          sub_27100B2DC(&v11, &v15, &v12);
          v5 = v12;
          v12 = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (v11.__r_.__value_.__r.__words[0])
          {
            (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
          }

          ++v3;
        }

        while (v3 != v4);
      }
    }

    else
    {
      (*(*v2 + 48))(v2, &unk_280874BB8);
      *&v14.__val_ = (*(*v2 + 32))(v2);
      v14.__cat_ = v8;
    }

    (*(*v2 + 8))(v2);
  }

  if (!atomic_load_explicit(qword_2808747C0, memory_order_acquire))
  {
    sub_27100DEEC(qword_2808747C0, sub_27100D51C, sub_27100D564);
  }

  if (v14.__cat_ == qword_2808747C0[0] && v14.__val_ == 3)
  {
    std::error_code::message(&v11, &v14);
    v13 = 260;
    v12 = &v11;
    sub_27100C720();
  }

  return *&v14.__val_;
}

uint64_t sub_27100CF6C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2880F8AA8;
  sub_271010AB0(a2, a1 + 8);
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  return a1;
}

void sub_27100CFD4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 31);
    if (v4 >= 0)
    {
      v5 = (a1 + 8);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 31);
    }

    else
    {
      v6 = *(a1 + 16);
    }

    sub_2710119AC(a2, v5, v6);
    return;
  }

  std::error_code::message(&v12, (a1 + 32));
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v12;
  }

  else
  {
    v7 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  sub_2710119AC(a2, v7, size);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = *(a1 + 31);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (!*(a1 + 16))
    {
      return;
    }

    goto LABEL_23;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  v9 = *(a1 + 31);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!v9)
  {
    return;
  }

LABEL_23:
  std::operator+<char>();
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v12;
  }

  else
  {
    v10 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v12.__r_.__value_.__l.__size_;
  }

  sub_2710119AC(a2, v10, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_27100D110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27100D13C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_27100D1CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743BADE0);
}

uint64_t sub_27100D27C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if ((*(a2 + 24) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(a2 + 32) += 17;
    v5 = *(result + 8);
    for (i = *(result + 16); v5 != i; ++v5)
    {
LABEL_7:
      while (1)
      {
        result = (*(**v5 + 16))(*v5, a2);
        v7 = *(a2 + 32);
        if (*(a2 + 24) == v7)
        {
          break;
        }

        *v7 = 10;
        ++*(a2 + 32);
        if (++v5 == i)
        {
          return result;
        }
      }

      result = sub_2710119AC(a2, "\n", 1uLL);
    }
  }

  else
  {
    result = sub_2710119AC(a2, "Multiple errors:\n", 0x11uLL);
    v5 = *(v3 + 8);
    i = *(v3 + 16);
    if (v5 != i)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_27100D400(uint64_t result)
{
  *result = &unk_2880F8AA8;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_27100D45C(uint64_t a1)
{
  *a1 = &unk_2880F8AA8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x2743BADE0);
}

uint64_t sub_27100D564(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_27100D594(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BADE0);
}

void sub_27100D5D8(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 3)
  {
    operator new();
  }

  if (a1 == 2)
  {
    a2[23] = 22;
    strcpy(a2, "A file error occurred.");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "Multiple errors");
  }
}

uint64_t sub_27100D6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  *&v50 = a1;
  *(&v50 + 1) = a2;
  v4 = sub_271010798(&v50, "{}", 2, 0);
  if (v4 >= *(&v50 + 1))
  {
    v5 = *(&v50 + 1);
  }

  else
  {
    v5 = v4;
  }

  v6 = *(&v50 + 1) - v5;
  *&v52[0] = v50 + v5;
  *(&v52[0] + 1) = *(&v50 + 1) - v5;
  v7 = sub_271010818(v52, "{}", 2, 0xFFFFFFFFFFFFFFFFLL);
  if ((v7 + 1) < *(&v52[0] + 1))
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = *(&v52[0] + 1);
  }

  v9 = *(&v52[0] + 1) - v6 + v8;
  if (*(&v52[0] + 1) < v9)
  {
    v9 = *(&v52[0] + 1);
  }

  v48 = *&v52[0];
  v49 = v9;
  v10 = sub_271010798(&v48, " \t\n\v\f\r", 6, 0);
  if (v10 >= v49)
  {
    v11 = v49;
  }

  else
  {
    v11 = v10;
  }

  v12 = v49 - v11;
  *&v52[0] = &v48[v11];
  *(&v52[0] + 1) = v49 - v11;
  v13 = sub_271010818(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  if ((v13 + 1) < *(&v52[0] + 1))
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = *(&v52[0] + 1);
  }

  v15 = *(&v52[0] + 1) - v12 + v14;
  if (*(&v52[0] + 1) < v15)
  {
    v15 = *(&v52[0] + 1);
  }

  v48 = *&v52[0];
  v49 = v15;
  *&v52[0] = 0;
  result = sub_2710108A8(&v48, 0, v52);
  if (result)
  {
    memset(v52, 0, sizeof(v52));
    *(a3 + 8) = 0u;
    memset(v51, 0, sizeof(v51));
    *a3 = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 2;
    *(a3 + 44) = 0;
    *(a3 + 60) = 0;
    *(a3 + 45) = *v51;
    goto LABEL_68;
  }

  v17 = *&v52[0];
  v18 = sub_271010798(&v48, " \t\n\v\f\r", 6, 0);
  if (v18 >= v49)
  {
    v19 = v49;
  }

  else
  {
    v19 = v18;
  }

  v20 = v49 - v19;
  *&v52[0] = &v48[v19];
  *(&v52[0] + 1) = v49 - v19;
  v21 = sub_271010818(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  if ((v21 + 1) < *(&v52[0] + 1))
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = *(&v52[0] + 1);
  }

  v23 = *(&v52[0] + 1) - v20 + v22;
  if (*(&v52[0] + 1) < v23)
  {
    v23 = *(&v52[0] + 1);
  }

  v48 = *&v52[0];
  v49 = v23;
  if (!v23 || **&v52[0] != 44)
  {
    v28 = 0;
    v24 = 32;
    v25 = 2;
    goto LABEL_43;
  }

  v24 = 32;
  v25 = 2;
  v48 = (*&v52[0] + 1);
  v49 = v23 - 1;
  if (v23 == 1)
  {
    v28 = 0;
    goto LABEL_43;
  }

  if (v23 != 2)
  {
    v26 = (*&v52[0] + 2);
    v27 = *(*&v52[0] + 2);
    switch(v27)
    {
      case '+':
LABEL_38:
        v24 = *(*&v52[0] + 1);
        v26 = (*&v52[0] + 3);
        v29 = -3;
LABEL_39:
        v48 = v26;
        v49 = v23 + v29;
        goto LABEL_40;
      case '-':
        v25 = 0;
        goto LABEL_38;
      case '=':
        v25 = 1;
        goto LABEL_38;
    }

    v47 = *(*&v52[0] + 1);
    switch(v47)
    {
      case '+':
LABEL_74:
        v29 = -2;
        goto LABEL_39;
      case '-':
        v25 = 0;
        goto LABEL_74;
      case '=':
        v25 = 1;
        goto LABEL_74;
    }
  }

LABEL_40:
  *&v52[0] = 0;
  if (sub_2710108A8(&v48, 0, v52))
  {
    v28 = 0;
  }

  else
  {
    v28 = *&v52[0];
  }

LABEL_43:
  v30 = sub_271010798(&v48, " \t\n\v\f\r", 6, 0);
  if (v30 >= v49)
  {
    v31 = v49;
  }

  else
  {
    v31 = v30;
  }

  v32 = v49 - v31;
  *&v52[0] = &v48[v31];
  *(&v52[0] + 1) = v49 - v31;
  v33 = sub_271010818(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  if ((v33 + 1) < *(&v52[0] + 1))
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = *(&v52[0] + 1);
  }

  v35 = *(&v52[0] + 1) - v32 + v34;
  if (*(&v52[0] + 1) < v35)
  {
    v35 = *(&v52[0] + 1);
  }

  v48 = *&v52[0];
  v49 = v35;
  if (v35 && **&v52[0] == 58)
  {
    *v51 = *&v52[0] + 1;
    *&v51[8] = v35 - 1;
    v36 = sub_271010798(v51, " \t\n\v\f\r", 6, 0);
    if (v36 >= *&v51[8])
    {
      v37 = *&v51[8];
    }

    else
    {
      v37 = v36;
    }

    v38 = *&v51[8] - v37;
    *&v52[0] = *v51 + v37;
    *(&v52[0] + 1) = *&v51[8] - v37;
    v39 = sub_271010818(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    v40 = *&v52[0];
    if ((v39 + 1) < *(&v52[0] + 1))
    {
      v41 = v39 + 1;
    }

    else
    {
      v41 = *(&v52[0] + 1);
    }

    v42 = *(&v52[0] + 1) - v38 + v41;
    if (*(&v52[0] + 1) >= v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = *(&v52[0] + 1);
    }

    v48 = 0;
    v49 = 0;
  }

  else
  {
    v43 = 0;
    v40 = 0;
  }

  v44 = sub_271010798(&v48, " \t\n\v\f\r", 6, 0);
  if (v44 >= v49)
  {
    v45 = v49;
  }

  else
  {
    v45 = v44;
  }

  *&v52[0] = &v48[v45];
  *(&v52[0] + 1) = v49 - v45;
  result = sub_271010818(v52, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  *a3 = 1;
  *(a3 + 8) = v50;
  *(a3 + 24) = v17;
  *(a3 + 32) = v28;
  *(a3 + 40) = v25;
  *(a3 + 44) = v24;
  *(a3 + 48) = v40;
  *(a3 + 56) = v43;
LABEL_68:
  *(a3 + 64) = 1;
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_27100DB08@<X0>(_BYTE *__s@<X0>, size_t __n@<X1>, uint64_t a3@<X8>)
{
  v3 = __s;
  v24 = *MEMORY[0x277D85DE8];
  if (__n)
  {
    v5 = __n;
    while (2)
    {
      if (*v3 == 123)
      {
        v6 = 1;
        do
        {
          if (v5 == v6)
          {
            v8 = -1;
            if (v5 != -1)
            {
              v8 = v5;
            }

            if (v8 >= 2)
            {
              goto LABEL_39;
            }

            goto LABEL_14;
          }

          v7 = v3[v6++];
        }

        while (v7 == 123);
        v8 = v6 - 1;
        if (v5 < v8)
        {
          v8 = v5;
        }

        if (v8 >= 2)
        {
LABEL_39:
          v16 = v8 >> 1;
          if (v5 < v8 >> 1)
          {
            v16 = v5;
          }

          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
          v17 = v8 & 0xFFFFFFFFFFFFFFFELL;
          *&v20[11] = 0;
          if (v5 < v17)
          {
            v17 = v5;
          }

          *&v20[3] = 0;
          *a3 = 2;
          *(a3 + 8) = v3;
          *(a3 + 16) = v16;
          *(a3 + 40) = 2;
          *(a3 + 44) = 0;
          *(a3 + 45) = *v20;
          *(a3 + 60) = 0;
          *(a3 + 64) = &v3[v17];
          *(a3 + 72) = v5 - v17;
          goto LABEL_33;
        }

LABEL_14:
        __s = memchr(v3, 125, v5);
        if (!__s || (v9 = __s - v3, __s - v3 == -1))
        {
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
          *&v20[11] = 0;
          *&v20[3] = 0;
          *(a3 + 64) = 0;
          *(a3 + 72) = 0;
          *a3 = 2;
          *(a3 + 8) = v3;
          *(a3 + 16) = v5;
          goto LABEL_32;
        }

        if (v5 == 1 || (__s = memchr(v3 + 1, 123, v5 - 1)) == 0 || (v10 = __s - v3, __s - v3 >= v9))
        {
          if (v9 <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = v9;
          }

          if (v5 < v9)
          {
            v11 = v5;
          }

          v12 = v11 - 1;
          if (v5 >= v9 + 1)
          {
            v13 = v9 + 1;
          }

          else
          {
            v13 = v5;
          }

          v14 = &v3[v13];
          v5 -= v13;
          __s = sub_27100D6C8((v3 + 1), v12, v20);
          if (v23 == 1)
          {
            v18 = *&v20[16];
            *a3 = *v20;
            *(a3 + 16) = v18;
            v19 = v22;
            *(a3 + 32) = v21;
            *(a3 + 48) = v19;
            *(a3 + 64) = v14;
            *(a3 + 72) = v5;
            goto LABEL_33;
          }

          v3 = v14;
          if (v5)
          {
            continue;
          }

          v3 = v14;
          goto LABEL_30;
        }

        if (v5 < v10)
        {
          v10 = v5;
        }

        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        *&v20[11] = 0;
      }

      else
      {
        __s = memchr(v3, 123, v5);
        v10 = __s - v3;
        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        if (!__s)
        {
          v10 = -1;
        }

        *&v20[11] = 0;
        if (v5 < v10)
        {
          v10 = v5;
        }
      }

      break;
    }

    *&v20[3] = 0;
    *a3 = 2;
    *(a3 + 8) = v3;
    *(a3 + 16) = v10;
    *(a3 + 40) = 2;
    *(a3 + 44) = 0;
    *(a3 + 45) = *v20;
    *(a3 + 60) = *&v20[15];
    *(a3 + 64) = &v3[v10];
    *(a3 + 72) = v5 - v10;
    goto LABEL_33;
  }

LABEL_30:
  *&v20[11] = 0;
  *&v20[3] = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *a3 = 2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
LABEL_32:
  *(a3 + 40) = 2;
  *(a3 + 44) = 0;
  *(a3 + 45) = *v20;
  *(a3 + 60) = *&v20[15];
LABEL_33:
  v15 = *MEMORY[0x277D85DE8];
  return __s;
}

double sub_27100DD90@<D0>(_BYTE *__s@<X0>, size_t __n@<X1>, uint64_t a3@<X8>)
{
  v4 = a3 + 16;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x200000000;
  *v21 = 0;
  *&v5 = 0;
  memset(&v21[8], 0, 32);
  *&v21[40] = 2;
  v21[44] = 0;
  v22 = 0uLL;
  if (__n)
  {
    v6 = __n;
    do
    {
      sub_27100DB08(__s, v6, v16);
      *v21 = v16[0];
      *&v21[16] = v16[1];
      *&v5 = v17;
      *&v21[32] = v17;
      v22 = v18;
      __s = v19;
      v6 = v20;
      if (!LODWORD(v16[0]))
      {
        continue;
      }

      v13 = *(a3 + 8);
      v8 = *a3;
      if (v13 >= *(a3 + 12))
      {
        if (v8 <= v21 && v8 + (v13 << 6) > v21)
        {
          sub_2710101E8(a3, v4, v13 + 1, 64);
          v14 = &v21[-v8];
          v8 = *a3;
          v9 = &v14[*a3];
          goto LABEL_5;
        }

        sub_2710101E8(a3, v4, v13 + 1, 64);
        v8 = *a3;
      }

      v9 = v21;
LABEL_5:
      v10 = (v8 + (*(a3 + 8) << 6));
      v5 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v10[2] = v9[2];
      v10[3] = v12;
      *v10 = v5;
      v10[1] = v11;
      ++*(a3 + 8);
    }

    while (v6);
  }

  return *&v5;
}

void sub_27100DECC(_Unwind_Exception *exception_object)
{
  if (*v2 != v1)
  {
    free(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_27100DEEC(unint64_t *a1, uint64_t (*a2)(void), unint64_t a3)
{
  if (sub_271010AA8())
  {
    if ((atomic_load_explicit(&qword_2808747E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808747E0))
    {
      MEMORY[0x2743BAC80](&stru_2808747E8);
      __cxa_atexit(MEMORY[0x277D82658], &stru_2808747E8, &dword_271001000);
      __cxa_guard_release(&qword_2808747E0);
    }

    std::recursive_mutex::lock(&stru_2808747E8);
    if (!*a1)
    {
      atomic_store(a2(), a1);
      v6 = qword_2808747D8;
      a1[1] = a3;
      a1[2] = v6;
      qword_2808747D8 = a1;
    }

    std::recursive_mutex::unlock(&stru_2808747E8);
  }

  else
  {
    atomic_store(a2(), a1);
    v7 = qword_2808747D8;
    a1[1] = a3;
    a1[2] = v7;
    qword_2808747D8 = a1;
  }
}

char *sub_27100E01C(uint64_t a1, uint64_t a2)
{
  v14[32] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_271023D30;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_10;
  }

  v3 = *(a2 + 32);
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v4 = *a2;
      if (*a2)
      {
        v5 = strlen(*a2);
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_11;
    }

LABEL_10:
    sub_271010E38(a2, &v12);
    v4 = v12;
    v5 = v13;
    goto LABEL_11;
  }

  if (v3 != 4)
  {
    if (v3 == 5)
    {
      v4 = *a2;
      v5 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = *a2;
  v11 = *(*a2 + 23);
  if (v11 >= 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = *v10;
  }

  if (v11 >= 0)
  {
    v5 = v10[23];
  }

  else
  {
    v5 = *(v10 + 1);
  }

LABEL_11:
  v6 = operator new(a1 + v5 + 1);
  v7 = &v6[a1];
  if (v5)
  {
    memcpy(v7, v4, v5);
  }

  v7[v5] = 0;
  if (v12 != v14)
  {
    free(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_27100E178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 != v9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27100E1B8(uint64_t a1, uint64_t a2, size_t a3, off_t a4, int a5, int a6, char a7)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  sub_27100FB48(a2, v13, 0, &v21);
  if (v22)
  {
    v14 = v21;
    v21 = 0;
    v20 = v14;
    v15 = sub_27100CBD4(&v20);
    *(a1 + 16) |= 1u;
    *a1 = v15;
    *(a1 + 8) = v16;
    result = v20;
    if (v20)
    {
      result = (*(*v20 + 8))(v20);
    }
  }

  else
  {
    v19 = v21;
    sub_27100E578(a1, v21, a2, 0xFFFFFFFFFFFFFFFFLL, a3, a4, a6, a7);
    result = sub_27100FC8C(&v19);
  }

  if (v22)
  {
    result = v21;
    v21 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27100E310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *a12, uint64_t a13, uint64_t a14, char a15)
{
  if ((*(v15 + 16) & 1) == 0)
  {
    sub_271022C74(v15);
    exception_object = a12;
  }

  if (a15)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_27100E39C(size_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19[32] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = xmmword_271023D30;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_10;
  }

  v5 = *(a2 + 32);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = strlen(*a2);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_11;
    }

LABEL_10:
    sub_271010E38(a2, &v17);
    v6 = v17;
    v7 = v18;
    goto LABEL_11;
  }

  if (v5 != 4)
  {
    if (v5 == 5)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v15 = *a2;
  v16 = *(*a2 + 23);
  if (v16 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *v15;
  }

  if (v16 >= 0)
  {
    v7 = *(*a2 + 23);
  }

  else
  {
    v7 = *(v15 + 1);
  }

LABEL_11:
  v8 = (v7 + 40) & 0xFFFFFFFFFFFFFFF0;
  v9 = a1 + v8 + 1;
  if (v9 <= a1)
  {
    v11 = 0;
  }

  else
  {
    v10 = operator new(v9, MEMORY[0x277D826F0]);
    v11 = v10;
    if (v10)
    {
      v12 = (v10 + 3);
      if (v7)
      {
        memcpy(v10 + 3, v6, v7);
      }

      v12[v7] = 0;
      v13 = v11 + v8 + a1;
      *v13 = 0;
      *v11 = &unk_2880F8CC0;
      v11[1] = v11 + v8;
      v11[2] = v13;
    }
  }

  *a3 = v11;
  if (v17 != v19)
  {
    free(v17);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_27100E55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 != v9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_27100E578(uint64_t a1, int a2, uint64_t a3, size_t a4, size_t a5, off_t a6, int a7, char a8)
{
  v47 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280874838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874838))
  {
    dword_28087482C = sub_27100ED04();
    __cxa_guard_release(&qword_280874838);
  }

  if (a5 == -1 && (a5 = a4, a4 == -1))
  {
    v42 = 0u;
    memset(v43, 0, sizeof(v43));
    v44 = 0xFFFFLL;
    v45 = 0;
    v46 = 0;
    v25 = sub_27100F878(a2, &v42);
    if (v25)
    {
      *(a1 + 16) |= 1u;
      *a1 = v25;
      *(a1 + 8) = v26;
      goto LABEL_50;
    }

    if (*&v43[24] != 2 && *&v43[24] != 5)
    {
      sub_27100EAE0();
      v36 = *(a1 + 16);
      if (v41)
      {
        v37 = v36 | 1;
        v38 = v40[0];
        *(a1 + 8) = v40[1];
      }

      else
      {
        v37 = v36 & 0xFE;
        v38 = v40[0];
      }

      *(a1 + 16) = v37;
      *a1 = v38;
      goto LABEL_50;
    }

    a5 = *&v43[16];
    a4 = *&v43[16];
    v16 = dword_28087482C;
    if (a7)
    {
LABEL_5:
      if (a8)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v16 = dword_28087482C;
    if (a7)
    {
      goto LABEL_5;
    }
  }

  v18 = (a5 & 0xFFFFFFFFFFFFC000) != 0 && a5 >= v16;
  if (!v18 || a7 == 0)
  {
    if (v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a4 == -1)
    {
      v42 = 0u;
      memset(v43, 0, sizeof(v43));
      v44 = 0xFFFFLL;
      v45 = 0;
      v46 = 0;
      if (sub_27100F878(a2, &v42))
      {
        goto LABEL_29;
      }

      a4 = *&v43[16];
      if (a5 + a6 != *&v43[16])
      {
        goto LABEL_29;
      }
    }

    else if (a5 + a6 != a4)
    {
      goto LABEL_29;
    }

    if ((a4 & (v16 - 1)) != 0)
    {
LABEL_22:
      LODWORD(v42) = 0;
      *(&v42 + 1) = std::system_category();
      v20 = sub_27100E01C(48, a3);
      *v20 = &unk_2880F8D10;
      v21 = sub_27100F99C();
      v22 = sub_27100F99C();
      sub_27100F8B4((v20 + 24), a2, 0, ((v21 - 1) & a6) + a5, -v22 & a6, &v42);
      if (!v42)
      {
        v23 = sub_27100F628((v20 + 24));
        v24 = v23 + ((sub_27100F99C() - 1) & a6);
        *(v20 + 1) = v24;
        *(v20 + 2) = v24 + a5;
        if (!v42)
        {
          *(a1 + 16) &= ~1u;
          *a1 = v20;
          goto LABEL_50;
        }
      }

      (*(*v20 + 8))(v20);
    }
  }

LABEL_29:
  sub_27100E39C(a5, a3, v40);
  if (!v40[0])
  {
    v34 = std::generic_category();
    *(a1 + 16) |= 1u;
    *a1 = 12;
    *(a1 + 8) = v34;
    goto LABEL_50;
  }

  v27 = *(v40[0] + 8);
  v28 = *(v40[0] + 16) - v27;
  do
  {
    if (!v28)
    {
      goto LABEL_46;
    }

    sub_27100FBC8(a2, v27, v28, a6, &v42);
    if (BYTE8(v42))
    {
      v29 = v42;
      *&v42 = 0;
      v39 = v29;
      v30 = sub_27100CBD4(&v39);
      *(a1 + 16) |= 1u;
      *a1 = v30;
      *(a1 + 8) = v31;
      if (v39)
      {
        (*(*v39 + 8))(v39);
        v32 = 1;
        if ((BYTE8(v42) & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v32 = 1;
        if ((BYTE8(v42) & 1) == 0)
        {
          continue;
        }
      }
    }

    else if (v42)
    {
      v32 = 0;
      v28 -= v42;
      v27 += v42;
      a6 += v42;
      if ((BYTE8(v42) & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      bzero(v27, v28);
      v32 = 3;
      if ((BYTE8(v42) & 1) == 0)
      {
        continue;
      }
    }

    v33 = v42;
    *&v42 = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }
  }

  while (!v32);
  if (v32 == 3)
  {
LABEL_46:
    *(a1 + 16) &= ~1u;
    *a1 = v40[0];
    goto LABEL_50;
  }

  if (v40[0])
  {
    (*(*v40[0] + 8))(v40[0]);
  }

LABEL_50:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_27100EAE0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v17[2048] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = xmmword_271023E70;
  sub_27100F630(v4, &v15, 0x4000uLL, &v14);
  if (v14)
  {
    v13 = v14;
    v14 = 0;
    v5 = sub_27100CBD4(&v13);
    *(v3 + 16) |= 1u;
    *v3 = v5;
    *(v3 + 8) = v6;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (v14)
    {
      (*(*v14 + 8))(v14);
      v7 = v15;
      if (v15 == v17)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = v15;
    v9 = v16;
    sub_27100E39C(v16, v2, &v14);
    v10 = v14;
    if (!v14)
    {
      v12 = std::generic_category();
      *(v3 + 16) |= 1u;
      *v3 = 12;
      *(v3 + 8) = v12;
      v7 = v15;
      if (v15 == v17)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    memcpy(*(v14 + 8), v8, v9);
    *(v3 + 16) &= ~1u;
    *v3 = v10;
  }

  v7 = v15;
  if (v15 != v17)
  {
LABEL_10:
    free(v7);
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_27100EC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11 == v11)
  {
    _Unwind_Resume(exception_object);
  }

  free(a11);
  _Unwind_Resume(exception_object);
}

uint64_t sub_27100ED04()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_27100FCA0(&v6);
  if (v7)
  {
    v0 = v6;
    v6 = 0;
    v4 = v0;
    sub_27100BE20(&v4, &v5);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (v7)
    {
      v1 = v6;
      v6 = 0;
      if (v1)
      {
        (*(*v1 + 8))(v1);
      }
    }

    result = 4096;
  }

  else
  {
    result = v6;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27100EDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t *a13, uint64_t a14, uint64_t *a15, char a16)
{
  if (a13)
  {
    sub_271022B58(a13);
  }

  sub_271022CC8(&a12, &a16, &a15);
  _Unwind_Resume(a1);
}

void *sub_27100EE64(void *a1)
{
  *a1 = &unk_2880F8D10;
  sub_27100F968(a1 + 3);
  return a1;
}

void sub_27100EEAC(size_t *a1)
{
  *a1 = &unk_2880F8D10;
  sub_27100F968(a1 + 3);

  operator delete(a1);
}

uint64_t sub_27100EF4C(void *a1, unint64_t a2, size_t a3, int a4, int a5)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (!HIDWORD(a2))
  {
    v8 = *MEMORY[0x277D85DE8];

    return sub_27100F2E4(a1, a2, a3, a4, a5);
  }

  v10 = 0;
  v11 = 0;
  *&v12 = 0x3030303030303030;
  *(&v12 + 1) = 0x3030303030303030;
  v27[6] = v12;
  v27[7] = v12;
  v27[4] = v12;
  v27[5] = v12;
  v27[2] = v12;
  v27[3] = v12;
  v27[0] = v12;
  v27[1] = v12;
  do
  {
    *(&v27[7] + v11-- + 15) = (a2 % 0xA) | 0x30;
    v10 += 0x100000000;
    v13 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v13);
  v14 = v10 >> 32;
  if (!a5)
  {
LABEL_10:
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v15 = a1[4];
  if (v15 < a1[3])
  {
    a1[4] = v15 + 1;
    *v15 = 45;
    goto LABEL_10;
  }

  sub_2710118DC(a1, 45);
  if (a4 != 1)
  {
LABEL_11:
    if (v14 < a3)
    {
      v16 = v14;
      do
      {
        while (1)
        {
          v17 = a1[4];
          if (v17 >= a1[3])
          {
            break;
          }

          a1[4] = v17 + 1;
          *v17 = 48;
          if (++v16 >= a3)
          {
            goto LABEL_16;
          }
        }

        sub_2710118DC(a1, 48);
        ++v16;
      }

      while (v16 < a3);
    }
  }

LABEL_16:
  v18 = v28 - v14;
  if (a4 == 1)
  {
    v19 = (v14 - 1) % 3;
    v20 = v19 + 1;
    v21 = v14 - (v19 + 1);
    if (v14 >= v19 + 1)
    {
      v22 = v19 + 1;
    }

    else
    {
      v22 = v14;
    }

    result = sub_2710119AC(a1, v18, v22);
    if (v21)
    {
      v23 = &v18[v20];
      v24 = -3 * ((-v11 - 1) / 3uLL);
      do
      {
        v25 = a1[4];
        if (v25 < a1[3])
        {
          a1[4] = v25 + 1;
          *v25 = 44;
        }

        else
        {
          sub_2710118DC(a1, 44);
        }

        result = sub_2710119AC(a1, v23, 3uLL);
        v23 += 3;
        v24 += 3;
      }

      while (v24);
    }
  }

  else
  {
    result = sub_2710119AC(a1, v28 - v14, v14);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27100F1C8(void *a1, unint64_t a2, size_t a3, int a4)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_27100EF4C(a1, a2, a3, a4, v4);
}

uint64_t sub_27100F1E0(uint64_t a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v12[6] = v6;
  v12[7] = v6;
  v12[4] = v6;
  v12[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v12[2] = v6;
  v12[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v12[0] = v6;
  v12[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v12[0]) = 120;
  }

  if (a2)
  {
    v8 = &v12[-1] + v7 + 15;
    do
    {
      *v8-- = a0123456789abcd[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  result = sub_2710119AC(a1, v12, v7);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_27100F2E4(void *a1, unsigned int a2, size_t a3, int a4, int a5)
{
  v8 = 0;
  v9 = 0;
  v27[1] = *MEMORY[0x277D85DE8];
  *&v10 = 0x3030303030303030;
  *(&v10 + 1) = 0x3030303030303030;
  v26[6] = v10;
  v26[7] = v10;
  v26[4] = v10;
  v26[5] = v10;
  v26[2] = v10;
  v26[3] = v10;
  v26[0] = v10;
  v26[1] = v10;
  do
  {
    *(&v26[7] + v9-- + 15) = (a2 % 0xA) | 0x30;
    v8 += 0x100000000;
    v11 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v11);
  v12 = v8 >> 32;
  if (a5)
  {
    v13 = a1[4];
    if (v13 >= a1[3])
    {
      sub_2710118DC(a1, 45);
      if (a4 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    a1[4] = v13 + 1;
    *v13 = 45;
  }

  if (a4 == 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v12 < a3)
  {
    v14 = v12;
    do
    {
      while (1)
      {
        v15 = a1[4];
        if (v15 >= a1[3])
        {
          break;
        }

        a1[4] = v15 + 1;
        *v15 = 48;
        if (++v14 >= a3)
        {
          goto LABEL_12;
        }
      }

      sub_2710118DC(a1, 48);
      ++v14;
    }

    while (v14 < a3);
  }

LABEL_12:
  v16 = v27 - v12;
  if (a4 == 1)
  {
    v17 = (v12 - 1) % 3;
    v18 = v17 + 1;
    v19 = v12 - (v17 + 1);
    if (v12 >= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v12;
    }

    result = sub_2710119AC(a1, v16, v20);
    if (v19)
    {
      v22 = &v16[v18];
      v23 = -3 * ((-v9 - 1) / 3uLL);
      do
      {
        v24 = a1[4];
        if (v24 < a1[3])
        {
          a1[4] = v24 + 1;
          *v24 = 44;
        }

        else
        {
          sub_2710118DC(a1, 44);
        }

        result = sub_2710119AC(a1, v22, 3uLL);
        v22 += 3;
        v23 += 3;
      }

      while (v23);
    }
  }

  else
  {
    result = sub_2710119AC(a1, v27 - v12, v12);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_27100F508(uint64_t a1, int *a2, int a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = sub_27100F9A0(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v11 = strlen(__s);
        v12 = a4[1];
        if (a4[2] < v12 + v11)
        {
          sub_271010304(a4, a4 + 3, v12 + v11, 1);
          v12 = a4[1];
        }

        if (v11)
        {
          memcpy((*a4 + v12), __s, v11);
          v12 = a4[1];
        }

        a4[1] = v12 + v11;
      }
    }

    std::system_category();
    v8 = 0;
    v13 = *MEMORY[0x277D85DE8];
  }

  return v8 | v7;
}

ssize_t sub_27100F630@<X0>(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2[1];
  v11 = v8 + a3;
  v12 = v8 > v8 + a3;
  if (v8 != v8 + a3)
  {
LABEL_5:
    if (!v12 && a2[2] < v11)
    {
      sub_271010304(a2, a2 + 3, v11, 1);
    }

    a2[1] = v11;
  }

  while (1)
  {
    v13 = *a2;
    while (1)
    {
      *__error() = 0;
      result = read(a1, (v13 + v10), v9);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        std::generic_category();
        result = sub_27100CB28(v16, &v18);
        v17 = v18;
        goto LABEL_16;
      }
    }

    if (!result)
    {
      break;
    }

    v10 += result;
    v15 = a2[1];
    v11 = v10 + a3;
    v12 = v15 > v10 + a3;
    if (v15 != v10 + a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_16:
  *a4 = v17;
  a2[1] = v10;
  return result;
}

uint64_t sub_27100F760(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *__error();
    std::generic_category();
    result = v4;
    if (v4 == 2)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0xFFFF00000001;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      return 2;
    }

    else
    {
      *(a3 + 28) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 44) = 0xFFFFLL;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    v6 = a2[10];
    v7 = a2[14];
    v8 = *(a2 + 2);
    v9 = v8 & 0xFFF;
    v10 = v8 >> 12;
    if (v10 == 7)
    {
      v11 = 9;
    }

    else
    {
      v11 = dword_271023F58[v10 ^ 8];
    }

    v12 = *a2;
    v13 = *(a2 + 3);
    v14 = *(a2 + 1);
    v15 = *(a2 + 6);
    v16 = *(a2 + 12);
    v17 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v15;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 24) = v17;
    *(a3 + 32) = v16;
    *(a3 + 40) = v11;
    *(a3 + 44) = v9;
    *(a3 + 48) = v12;
    *(a3 + 52) = v13;
    *(a3 + 56) = v14;
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t sub_27100F8B4(uint64_t a1, int a2, int a3, size_t a4, off_t a5, void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *sub_27100F968(size_t *a1)
{
  result = a1[1];
  if (result)
  {
    return munmap(result, *a1);
  }

  return result;
}

void *sub_27100F980(size_t *a1)
{
  result = a1[1];
  if (result)
  {
    return posix_madvise(result, *a1, 4);
  }

  return result;
}

uint64_t sub_27100F9A0(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v24[16] = *MEMORY[0x277D85DE8];
  v9 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v9 = 1;
  }

  if (a4 == 1)
  {
    v9 = 0;
  }

  v10 = a5 & 4;
  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v12 = v9 | 0x600;
  v13 = v9 | 0x200;
  if (a3 == 1)
  {
    v9 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v9 = v13;
  }

  if (a3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  v22 = v24;
  v23 = xmmword_271023F40;
  v15 = sub_271010F50(a1, &v22);
  v16 = ((a5 << 20) & 0x1000000 | (2 * v10)) ^ 0x1000000;
  while (1)
  {
    *__error() = 0;
    v17 = open(v15, v14 | v16, a6);
    if (v17 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_22;
    }
  }

  *a2 = v17;
  if ((v17 & 0x80000000) == 0)
  {
    std::system_category();
    v18 = 0;
    v19 = v22;
    if (v22 == v24)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_22:
  v18 = *__error();
  std::generic_category();
  v19 = v22;
  if (v22 == v24)
  {
    goto LABEL_24;
  }

LABEL_23:
  free(v19);
LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_27100FB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11 != v11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_27100FB48@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  result = sub_27100F508(a1, &v7, a2, a3);
  if (result)
  {
    result = sub_27100CB28(result, &v6);
    *(a4 + 8) |= 1u;
    *a4 = v6;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v7;
  }

  return result;
}

ssize_t sub_27100FBC8@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      std::generic_category();
      sub_27100CB28(v11, &v12);
      *(a5 + 8) |= 1u;
      result = v12;
      goto LABEL_8;
    }
  }

  *(a5 + 8) &= ~1u;
LABEL_8:
  *a5 = result;
  return result;
}

uint64_t sub_27100FC8C(int *a1)
{
  v1 = *a1;
  *a1 = -1;
  return sub_27100FD4C(v1);
}

void sub_27100FCA0(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(qword_280874860, memory_order_acquire))
  {
    v2 = dword_280874858;
    if (dword_280874858 != -1)
    {
LABEL_3:
      *(a1 + 8) &= ~1u;
      *a1 = v2;
      return;
    }
  }

  else
  {
    sub_271022D14();
    v2 = dword_280874858;
    if (dword_280874858 != -1)
    {
      goto LABEL_3;
    }
  }

  v3 = *__error();
  std::generic_category();
  sub_27100CB28(v3, &v4);
  *(a1 + 8) |= 1u;
  *a1 = v4;
}

uint64_t sub_27100FD4C(int a1)
{
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(a1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

BOOL sub_27100FE00()
{
  v0 = getenv("TERM");
  v1 = v0;
  if (!v0)
  {
    return 0;
  }

  v2 = strlen(v0);
  if (v2 == 6)
  {
    if (*v1 == 2003269987 && *(v1 + 2) == 28265)
    {
      return v1 != 0;
    }

LABEL_22:
    if (*v1 == 1701995379 && *(v1 + 2) == 28261)
    {
      return v1 != 0;
    }

LABEL_26:
    if (*v1 == 1919251576 && v1[4] == 109)
    {
      return v1 != 0;
    }

    v8 = *v1 == 808547446 && v1[4] == 48;
    if (v8 || *v1 == 1953921138)
    {
      return v1 != 0;
    }

    if (*&v1[v2 - 5] == 1869377379 && v1[v2 - 1] == 114)
    {
      return v1 != 0;
    }

    return 0;
  }

  if (v2 == 5)
  {
    if (*v1 == 1970170220 && v1[4] == 120)
    {
      return v1 != 0;
    }

    goto LABEL_26;
  }

  if (v2 != 4)
  {
    if (v2 < 6)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (*v1 != 1769172577 && *v1 != 1953921138)
  {
    return 0;
  }

  return v1 != 0;
}

BOOL sub_27100FFB0(int a1)
{
  if (!isatty(a1))
  {
    return 0;
  }

  if (!atomic_load_explicit(qword_280874840, memory_order_acquire))
  {
    sub_27100DEEC(qword_280874840, sub_27101015C, sub_2710101A8);
  }

  v2 = qword_280874840[0];
  std::mutex::lock(qword_280874840[0]);
  v3 = set_curterm(0);
  v8 = 0;
  if (setupterm(0, a1, &v8))
  {
    v4 = 0;
  }

  else
  {
    v6 = tigetnum("colors");
    if (v6 < 0)
    {
      v4 = sub_27100FE00();
    }

    else
    {
      v4 = v6 != 0;
    }

    v7 = set_curterm(v3);
    del_curterm(v7);
  }

  std::mutex::unlock(v2);
  return v4;
}

std::mutex *sub_2710101A8(std::mutex *result)
{
  if (result)
  {
    std::mutex::~mutex(result);

    JUMPOUT(0x2743BADE0);
  }

  return result;
}

void *sub_2710101E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    sub_271010400(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    sub_271010698(0xFFFFFFFFuLL);
  }

  if (((2 * *(a1 + 12)) | 1uLL) > a3)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 0xFFFFFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v8 = *a1;
  v9 = v7 * a4;
  if (*a1 == a2)
  {
    v12 = malloc_type_malloc(v7 * a4, 0x3C0F72FBuLL);
    if (!v12 && (v9 || (v12 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
    {
LABEL_18:
      sub_27100C720();
    }

    v13 = v12;
    result = memcpy(v12, *a1, *(a1 + 8) * a4);
    *a1 = v13;
    *(a1 + 12) = v7;
  }

  else
  {
    result = malloc_type_realloc(v8, v7 * a4, 0xF4063A16uLL);
    if (!result)
    {
      if (v9)
      {
        goto LABEL_18;
      }

      result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
      if (!result)
      {
        goto LABEL_18;
      }
    }

    *a1 = result;
    *(a1 + 12) = v7;
  }

  return result;
}

void *sub_271010304(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_271010698(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v6 = 2 * v4 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = *a1;
  v8 = v6 * a4;
  if (v7 == a2)
  {
    v11 = malloc_type_malloc(v6 * a4, 0x3C0F72FBuLL);
    if (!v11 && (v8 || (v11 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
    {
LABEL_14:
      sub_27100C720();
    }

    v12 = v11;
    result = memcpy(v11, *a1, *(a1 + 8) * a4);
    *a1 = v12;
    *(a1 + 16) = v6;
  }

  else
  {
    result = malloc_type_realloc(v7, v6 * a4, 0xF4063A16uLL);
    if (!result)
    {
      if (v8)
      {
        goto LABEL_14;
      }

      result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
      if (!result)
      {
        goto LABEL_14;
      }
    }

    *a1 = result;
    *(a1 + 16) = v6;
  }

  return result;
}

void sub_271010400(unint64_t a1)
{
  std::to_string(&v13, a1);
  v1 = std::string::insert(&v13, 0, "SmallVector unable to grow. Requested capacity (");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v14, ") is larger than maximum value for size type (");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, 0xFFFFFFFFuLL);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = std::string::append(&v15, p_p, size);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v16, ")");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, &v17);
    exception->__vftable = (MEMORY[0x277D828E0] + 16);
    __cxa_throw(exception, off_279E2C0C8, MEMORY[0x277D825F0]);
  }

LABEL_12:
  operator delete(v13.__r_.__value_.__l.__data_);
  goto LABEL_13;
}

void sub_2710105A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27101061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x271010628);
  }

  JUMPOUT(0x2710105E8);
}

void sub_27101063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x271010648);
  }

  JUMPOUT(0x2710105F0);
}

void sub_27101065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    JUMPOUT(0x271010668);
  }

  JUMPOUT(0x2710105F8);
}

void sub_27101067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    JUMPOUT(0x271010688);
  }

  JUMPOUT(0x271010600);
}

void sub_271010698(unint64_t a1)
{
  std::to_string(&v4, a1);
  v1 = std::string::insert(&v4, 0, "SmallVector capacity unable to grow. Already at maximum size ");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v5.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v5.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, &v5);
  exception->__vftable = (MEMORY[0x277D828E0] + 16);
  __cxa_throw(exception, off_279E2C0C8, MEMORY[0x277D825F0]);
}

void sub_271010744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271010778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x271010774);
}

uint64_t sub_271010798(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t sub_271010818(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t sub_2710108A8(unsigned __int8 **a1, unsigned int a2, unint64_t *a3)
{
  if (a2)
  {
    v5 = a1[1];
    if (!v5)
    {
      return 1;
    }
  }

  else
  {
    a2 = sub_2710109B8(a1);
    v5 = a1[1];
    if (!v5)
    {
      return 1;
    }
  }

  v6 = 0;
  v7 = *a1;
  *a3 = 0;
  v8 = v5;
  do
  {
    if (*v7 < 48)
    {
      break;
    }

    v9 = *v7;
    if (v9 >= 0x3A)
    {
      if (v9 < 0x61)
      {
        if (v9 - 65 > 0x19)
        {
          break;
        }

        v10 = v9 - 55;
        if (v10 >= a2)
        {
          break;
        }
      }

      else
      {
        if (v9 >= 0x7B)
        {
          break;
        }

        v10 = v9 - 87;
        if (v10 >= a2)
        {
          break;
        }
      }
    }

    else
    {
      v10 = v9 - 48;
      if (v10 >= a2)
      {
        break;
      }
    }

    v11 = v6 * a2 + v10;
    *a3 = v11;
    if (v11 / a2 < v6)
    {
      return 1;
    }

    ++v7;
    v6 = v11;
    --v8;
  }

  while (v8);
  if (v5 == v8)
  {
    return 1;
  }

  result = 0;
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_2710109B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 2)
  {
    return 10;
  }

  v3 = *a1;
  if (**a1 == 30768 || *v3 == 22576)
  {
    *a1 = v3 + 2;
    *(a1 + 8) = v1 - 2;
    return 16;
  }

  else if (*v3 == 25136 || *v3 == 16944)
  {
    *a1 = v3 + 2;
    *(a1 + 8) = v1 - 2;
    return 2;
  }

  else if (*v3 == 28464)
  {
    *a1 = v3 + 2;
    *(a1 + 8) = v1 - 2;
    return 8;
  }

  else
  {
    if (*v3 != 48)
    {
      return 10;
    }

    v5 = v3[1];
    v4 = v3 + 1;
    if ((v5 - 48) > 9)
    {
      return 10;
    }

    *a1 = v4;
    *(a1 + 8) = v1 - 1;
    return 8;
  }
}

void sub_271010AB0(void **a1@<X0>, uint64_t a2@<X8>)
{
  v20[32] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  if (v3 == 6)
  {
    if (v4 == 1)
    {
      v7 = *a1;
      v8 = *MEMORY[0x277D85DE8];

      sub_271010D5C(v7, a2);
      return;
    }

    goto LABEL_10;
  }

  if (v3 != 4)
  {
    v18 = v20;
    v19 = xmmword_271023D30;
    if (v4 == 1)
    {
      if (v3 > 3)
      {
        if (v3 == 5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v3 == 1)
        {
          goto LABEL_25;
        }

        if (v3 == 3)
        {
          v9 = *a1;
          if (v9)
          {
            v10 = v9;
            v11 = strlen(v9);
            v12 = v10;
            goto LABEL_21;
          }

LABEL_25:
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          v13 = v18;
          if (v18 == v20)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }
    }

LABEL_18:
    sub_271010E38(a1, &v18);
    a1 = &v18;
LABEL_19:
    if (*a1)
    {
      v11 = a1[1];
      v12 = *a1;
LABEL_21:
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_27100BD78();
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      *(a2 + 23) = v11;
      if (v11)
      {
        memmove(a2, v12, v11);
      }

      *(a2 + v11) = 0;
      v13 = v18;
      if (v18 == v20)
      {
        goto LABEL_31;
      }

LABEL_30:
      free(v13);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (v4 != 1)
  {
LABEL_10:
    v18 = v20;
    v19 = xmmword_271023D30;
    goto LABEL_18;
  }

  v5 = *a1;
  if ((*(*a1 + 23) & 0x80000000) == 0)
  {
    v6 = *v5;
    *(a2 + 16) = v5[2];
    *a2 = v6;
LABEL_31:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = *v5;
  v16 = v5[1];
  v17 = *MEMORY[0x277D85DE8];

  sub_27100BCBC(a2, v15, v16);
}

void sub_271010D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 != v9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271010D5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v4 = &unk_2880F8E80;
  v12 = a2;
  sub_271011550(&v4, 0, 0, 0);
  sub_271011C54(&v4, a1);
  if (v8 != v6)
  {
    sub_271011830(&v4);
  }

  return sub_2710113AC(&v4);
}

void sub_271010E10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2710113AC(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271010E38(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v6 = &unk_2880F8F10;
  v14 = a2;
  v3 = sub_271011550(&v6, 0, 0, 0);
  v4 = sub_271011038(v3, &v6, *a1, *(a1 + 8), *(a1 + 32));
  sub_271011038(v4, &v6, *(a1 + 16), *(a1 + 24), *(a1 + 33));
  return sub_2710113AC(&v6);
}

void sub_271010EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2710113AC(va);
  _Unwind_Resume(a1);
}

void sub_271010EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2710113AC(va);
  _Unwind_Resume(a1);
}

void *sub_271010F04(uint64_t a1, void *a2)
{
  v4 = sub_271011038(a1, a2, *a1, *(a1 + 8), *(a1 + 32));
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 33);

  return sub_271011038(v4, a2, v5, v6, v7);
}

const char *sub_271010F50(uint64_t a1, const char **a2)
{
  if (*(a1 + 33) != 1 || (v3 = *(a1 + 32), v3 < 2))
  {
LABEL_8:
    sub_271010E38(a1, a2);
    v6 = a2[1];
    if (v6 + 1 > a2[2])
    {
      sub_271010304(a2, a2 + 3, (v6 + 1), 1);
      a2[1][*a2] = 0;
    }

    else
    {
      v6[*a2] = 0;
    }

    result = *a2;
    v7 = a2[1];
    return result;
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      v4 = *a1;
      if (!*a1)
      {
        return 0;
      }

      strlen(*a1);
      return v4;
    }

    goto LABEL_8;
  }

  result = *a1;
  if ((result[23] & 0x8000000000000000) != 0)
  {
    v9 = result;
    result = *result;
    v8 = *(v9 + 1);
  }

  return result;
}

void *sub_271011038(void *result, void *a2, uint64_t a3, size_t a4, unsigned __int8 a5)
{
  v7 = a5;
  if (a5 == 2)
  {
    do
    {
      result = sub_271011038(result, a2, *a3, *(a3 + 8), *(a3 + 32));
      v8 = *(a3 + 33);
      v9 = a3 + 16;
      a3 = *(a3 + 16);
      a4 = *(v9 + 8);
      v7 = v8;
    }

    while (v8 == 2);
  }

  if (v7 > 8)
  {
    if (v7 > 11)
    {
      if (v7 == 12)
      {
        v15 = *a3;
        v16 = a2;

        return sub_2710115D8(v16, v15);
      }

      if (v7 != 13)
      {
        if (v7 == 14)
        {
          v17 = *a3;

          return sub_271011638(a2, v17);
        }

        return result;
      }

      v13 = *a3;
      v14 = a2;
    }

    else if (v7 == 9)
    {
      v13 = a3;
      v14 = a2;
    }

    else
    {
      if (v7 == 10)
      {
        v15 = *a3;
        v16 = a2;

        return sub_2710115D8(v16, v15);
      }

      v13 = *a3;
      v14 = a2;
    }

    return sub_271011608(v14, v13);
  }

  if (v7 > 5)
  {
    if (v7 == 6)
    {

      return sub_271011C54(a2, a3);
    }

    if (v7 == 7)
    {
      v19 = a2[4];
      if (v19 >= a2[3])
      {

        return sub_2710118DC(a2, a3);
      }

      else
      {
        a2[4] = v19 + 1;
        *v19 = a3;
      }

      return result;
    }

    v15 = a3;
    v16 = a2;

    return sub_2710115D8(v16, v15);
  }

  switch(v7)
  {
    case 3:
      if (a3)
      {
        v20 = strlen(a3);
        result = a2[4];
        if (v20 > a2[3] - result)
        {
          v10 = a2;
          v11 = a3;
          v12 = v20;

          return sub_2710119AC(v10, v11, v12);
        }

        if (v20)
        {
          result = memcpy(result, a3, v20);
          a2[4] += v20;
        }
      }

      break;
    case 4:
      v18 = *(a3 + 23);
      if (v18 >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      if (v18 >= 0)
      {
        v12 = *(a3 + 23);
      }

      else
      {
        v12 = *(a3 + 8);
      }

      v10 = a2;

      return sub_2710119AC(v10, v11, v12);
    case 5:
      result = a2[4];
      if (a4 > a2[3] - result)
      {
        v10 = a2;
        v11 = a3;
        v12 = a4;

        return sub_2710119AC(v10, v11, v12);
      }

      if (a4)
      {
        v21 = a3;
        v22 = a4;
        result = memcpy(result, v21, a4);
        a2[4] += v22;
      }

      break;
  }

  return result;
}

uint64_t sub_2710113AC(uint64_t result)
{
  *result = &unk_2880F8D60;
  if (*(result + 56) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = result;
      MEMORY[0x2743BADC0](v1, 0x1000C8077774924);
      return v2;
    }
  }

  return result;
}

uint64_t sub_27101142C(uint64_t *a1)
{
  result = (*(*a1 + 88))(a1);
  v4 = a1 + 2;
  v3 = a1[2];
  v5 = a1[4];
  if (result)
  {
    if (v5 != v3)
    {
      a1[4] = v3;
      sub_271011844(a1);
    }

    operator new[]();
  }

  v6 = v5 - v3;
  if (v5 != v3)
  {
    a1[4] = v3;
    result = sub_271011844(a1);
  }

  if (*(a1 + 14) == 1)
  {
    result = *v4;
    if (*v4)
    {
      result = MEMORY[0x2743BADC0](result, 0x1000C8077774924, v6);
    }
  }

  *(a1 + 14) = 0;
  a1[3] = 0;
  a1[4] = 0;
  *v4 = 0;
  return result;
}

uint64_t sub_271011550(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 56) == 1)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      v8 = a3;
      MEMORY[0x2743BADC0](v4, 0x1000C8077774924);
      a3 = v8;
      a2 = v6;
      result = v5;
      a4 = v7;
    }
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 56) = a4;
  return result;
}

uint64_t sub_27101166C(uint64_t a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24) - *(a1 + 32);
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      *(a1 + 32) += v7;
      goto LABEL_29;
    }
  }

  v15 = v17;
  v16 = xmmword_271023F40;
  do
  {
    v8 = v16;
    if (v16 != v7)
    {
      if (v16 <= v7)
      {
        if (*(&v16 + 1) < v7)
        {
          sub_271010304(&v15, v17, v7, 1);
          v8 = v16;
        }

        if (v7 != v8)
        {
          bzero(v15 + v8, v7 - v8);
        }
      }

      *&v16 = v7;
    }

    v9 = (*(*a2 + 8))(a2, v15, v7);
    if (v9 < v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = (2 * v7);
    }

    v12 = v7 >= v11;
    v7 = v11;
  }

  while (!v12);
  sub_2710119AC(a1, v15, v11);
  if (v15 != v17)
  {
    free(v15);
  }

LABEL_29:
  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27101180C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9 != v9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271011830(void *a1)
{
  v1 = a1[2];
  v2 = a1[4] - v1;
  a1[4] = v1;
  return sub_271011844(a1);
}

uint64_t sub_271011844(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 32) - v2;
    if (v3)
    {
      *(v1 + 32) = v2;
      v4 = a1;
      sub_271011844(v1, v2, v3);
      a1 = v4;
    }
  }

  v5 = *(*a1 + 72);

  return v5();
}

void *sub_2710118DC(void *result, char a2)
{
  v2 = result[4];
  if (v2 < result[3])
  {
LABEL_2:
    result[4] = v2 + 1;
    *v2 = a2;
    return result;
  }

  v3 = a2;
  v4 = result[2];
  if (v4)
  {
LABEL_4:
    result[4] = v4;
    v5 = result;
    sub_271011844(result);
    result = v5;
    v2 = v5[4];
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = result;
    if (!*(result + 14))
    {
      break;
    }

    sub_27101142C(result);
    v2 = v6[4];
    if (v2 < v6[3])
    {
      result = v6;
      goto LABEL_5;
    }

    result = v6;
    v4 = v6[2];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  sub_271011844(result);
  return v6;
}

uint64_t sub_2710119AC(uint64_t result, _BYTE *a2, size_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 24) - v3;
  if (v4 < a3)
  {
    while (1)
    {
      v6 = *(result + 16);
      if (!v6)
      {
        break;
      }

LABEL_16:
      v11 = a3;
      if (v3 == v6)
      {
        v4 *= a3 / v4;
        v7 = a3 - v4;
        v8 = result;
        v9 = a2;
        sub_271011844(result);
        v3 = *(v8 + 32);
        result = v8;
        v10 = *(v8 + 24) - v3;
        a3 = v7;
        if (v7 <= v10)
        {
          sub_271011B9C(v8, &v9[v4], v7);
          return v8;
        }
      }

      else
      {
        v12 = result;
        v9 = a2;
        sub_271011B9C(result, a2, v4);
        v13 = v12[4];
        v12[4] = v12[2];
        sub_271011844(v12);
        result = v12;
        a3 = v11 - v4;
        v3 = v12[4];
        v10 = v12[3] - v3;
      }

      a2 = &v9[v4];
      v4 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v16 = a2;
      v17 = a3;
      v5 = result;
      if (!*(result + 56))
      {
        sub_271011844(result);
        return v5;
      }

      sub_27101142C(result);
      v3 = v5[4];
      v4 = v5[3] - v3;
      if (v4 >= v17)
      {
        break;
      }

      result = v5;
      v6 = v5[2];
      a2 = v16;
      a3 = v17;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    result = v5;
    a2 = v16;
    a3 = v17;
    if (v17 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_2:
    if (a3 > 1)
    {
LABEL_3:
      switch(a3)
      {
        case 2uLL:
LABEL_8:
          v3[1] = a2[1];
          v3 = *(result + 32);
LABEL_23:
          *v3 = *a2;
          goto LABEL_24;
        case 3uLL:
LABEL_7:
          v3[2] = a2[2];
          v3 = *(result + 32);
          goto LABEL_8;
        case 4uLL:
          v3[3] = a2[3];
          v3 = *(result + 32);
          goto LABEL_7;
      }

LABEL_25:
      v14 = result;
      v15 = a3;
      memcpy(v3, a2, a3);
      a3 = v15;
      result = v14;
      goto LABEL_24;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 32) += a3;
  return result;
}

uint64_t sub_271011B9C(uint64_t result, _BYTE *a2, int64_t a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_11:
      *(result + 32) += a3;
      return result;
    }

    if (a3 == 1)
    {
LABEL_10:
      **(result + 32) = *a2;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(result + 32) + 1) = a2[1];
        goto LABEL_10;
      case 3:
LABEL_6:
        *(*(result + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(result + 32) + 3) = a2[3];
        goto LABEL_6;
    }
  }

  v3 = result;
  memcpy(*(result + 32), a2, a3);
  result = v3;
  *(v3 + 32) += a3;
  return result;
}

void sub_271011C84(uint64_t a1, uint64_t a2)
{
  v25[16] = *MEMORY[0x277D85DE8];
  sub_27100DD90(*a1, *(a1 + 8), &v23);
  v4 = v23;
  if (v24)
  {
    v5 = v23 + 32;
    v6 = v24 << 6;
    do
    {
      v7 = *(v5 - 8);
      if (v7)
      {
        if (v7 == 2 || (v8 = *(v5 - 1), v8 >= *(a1 + 24)))
        {
          v14 = *(v5 - 3);
          v15 = *(v5 - 2);
          v16 = *(a2 + 32);
          if (v15 > *(a2 + 24) - v16)
          {
            sub_2710119AC(a2, v14, v15);
          }

          else if (v15)
          {
            v17 = *(v5 - 2);
            memcpy(v16, v14, v15);
            *(a2 + 32) += v17;
          }
        }

        else
        {
          v9 = *(v5 + 2);
          v10 = *v5;
          v11 = v5[12];
          v19 = *(*(a1 + 16) + 8 * v8);
          v20 = v9;
          v21 = v10;
          v22 = v11;
          v12 = *(v5 + 2);
          v13 = *(v5 + 3);
          sub_271012A0C(&v19, a2);
        }
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v4 = v23;
  }

  if (v4 != v25)
  {
    free(v4);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_271011DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  if (a14 == &a16)
  {
    _Unwind_Resume(exception_object);
  }

  free(a14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_271011DFC(uint64_t result)
{
  *result = &unk_2880F8D60;
  if (*(result + 56) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = result;
      MEMORY[0x2743BADC0](v1, 0x1000C8077774924);
      return v2;
    }
  }

  return result;
}

uint64_t sub_271011E6C(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 40) == 1 && (!sub_271010108() || (*(*a1 + 48))(a1)))
  {
    if (sub_271010108())
    {
      v8 = *(a1 + 16);
      if (*(a1 + 32) != v8)
      {
        *(a1 + 32) = v8;
        sub_271011844(a1);
      }
    }

    if (a2 == 8)
    {
      v9 = sub_271010138();
      if (!v9)
      {
        return a1;
      }

      goto LABEL_11;
    }

    v9 = sub_271010110(a2, a3, a4);
    if (v9)
    {
LABEL_11:
      v10 = v9;
      v11 = strlen(v9);
      sub_2710119AC(a1, v10, v11);
    }
  }

  return a1;
}

uint64_t sub_271011F4C(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (!sub_271010108() || (*(*a1 + 48))(a1)))
  {
    if (sub_271010108())
    {
      v2 = *(a1 + 16);
      if (*(a1 + 32) != v2)
      {
        *(a1 + 32) = v2;
        sub_271011844(a1);
      }
    }

    v3 = sub_271010150();
    if (v3)
    {
      v4 = v3;
      v5 = strlen(v3);
      sub_2710119AC(a1, v4, v5);
    }
  }

  return a1;
}

uint64_t sub_271011FF4(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (!sub_271010108() || (*(*a1 + 48))(a1)))
  {
    if (sub_271010108())
    {
      v2 = *(a1 + 16);
      if (*(a1 + 32) != v2)
      {
        *(a1 + 32) = v2;
        sub_271011844(a1);
      }
    }

    v3 = sub_271010144();
    if (v3)
    {
      v4 = v3;
      v5 = strlen(v3);
      sub_2710119AC(a1, v4, v5);
    }
  }

  return a1;
}

uint64_t sub_2710120A4(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a4 ^ 1;
  *(a1 + 60) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2880F8DD8;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 65) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 64) = 0;
    return a1;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 64) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v12, 0, sizeof(v12));
    v13 = 0xFFFFLL;
    v14 = 0;
    v15 = 0;
    v9 = sub_27100F878(*(a1 + 60), v12);
    *(a1 + 66) = *&v12[40] == 2;
    *(a1 + 65) = v9 == 0 && v8 != -1;
    if (v9 == 0 && v8 != -1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 88) = v10;
    return a1;
  }
}

uint64_t sub_2710121E4(uint64_t a1)
{
  *a1 = &unk_2880F8DD8;
  if ((*(a1 + 60) & 0x80000000) == 0)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 32) != v2)
    {
      *(a1 + 32) = v2;
      sub_271011844(a1);
    }

    if (*(a1 + 64) == 1)
    {
      v3 = sub_27100FD4C(*(a1 + 60));
      if (v3)
      {
        *(a1 + 72) = v3;
        *(a1 + 80) = v4;
      }
    }
  }

  if (*(a1 + 72))
  {
    v11 = "IO failure on output stream: ";
    v12 = 259;
    v7 = *(a1 + 72);
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    sub_271012E68(&v11, &v9, v13);
    sub_27100C720();
  }

  *a1 = &unk_2880F8D60;
  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      MEMORY[0x2743BADC0](v5, 0x1000C8077774924);
    }
  }

  return a1;
}

void sub_271012318(uint64_t a1)
{
  sub_2710121E4(a1);

  JUMPOUT(0x2743BADE0);
}

uint64_t sub_271012350(uint64_t a1, char *__buf, unint64_t a3)
{
  v3 = a3;
  *(a1 + 88) += a3;
  while (1)
  {
    v6 = v3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v3;
    result = write(*(a1 + 60), __buf, v6);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    v3 -= result;
LABEL_3:
    if (!v3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_3;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_3;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_3;
  }

  v8 = *__error();
  result = std::generic_category();
  *(a1 + 72) = v8;
  *(a1 + 80) = result;
  return result;
}

off_t sub_2710123F8(int *a1, _BYTE *a2, size_t a3, off_t a4)
{
  v8 = (*(*a1 + 80))(a1);
  v9 = *(a1 + 4);
  v10 = *(a1 + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(a1 + 4) = v10;
    sub_271011844(a1);
  }

  v12 = v11 - v10;
  v13 = lseek(a1[15], a4, 0);
  *(a1 + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(a1 + 9) = v14;
    *(a1 + 10) = v15;
  }

  sub_2710119AC(a1, a2, a3);
  v16 = *(a1 + 2);
  if (*(a1 + 4) != v16)
  {
    *(a1 + 4) = v16;
    sub_271011844(a1);
  }

  result = lseek(a1[15], v12, 0);
  *(a1 + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(a1 + 9) = v18;
    *(a1 + 10) = result;
  }

  return result;
}

uint64_t sub_271012518(int *a1)
{
  if (fstat(a1[15], &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  return v3.st_blksize;
}

BOOL sub_2710125C0(uint64_t a1)
{
  if (*(a1 + 68) == 1)
  {
    return *(a1 + 67) & 1;
  }

  v3 = sub_27100FFB0(*(a1 + 60));
  if ((*(a1 + 68) & 1) == 0)
  {
    *(a1 + 68) = 1;
  }

  *(a1 + 67) = v3;
  return v3;
}

void *sub_271012624()
{
  if ((atomic_load_explicit(qword_280874870, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(qword_280874870))
  {
    return &unk_280874920;
  }

  sub_2710120A4(&unk_280874920, 2u, 0, 1, 0);
  __cxa_atexit(sub_271012314, &unk_280874920, &dword_271001000);
  __cxa_guard_release(qword_280874870);
  return &unk_280874920;
}

void *sub_2710126F0(void *result, const void *a2, size_t __n)
{
  v4 = result[8];
  v5 = v4[1];
  v6 = v5 + __n;
  if (v4[2] < v6)
  {
    v7 = a2;
    result = sub_271010304(result[8], v4 + 3, v6, 1);
    a2 = v7;
    v5 = v4[1];
  }

  if (__n)
  {
    result = memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
  return result;
}

void sub_2710127B8(uint64_t a1)
{
  *a1 = &unk_2880F8D60;
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      MEMORY[0x2743BADC0](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x2743BADE0);
}

void sub_271012844(void *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];

  std::string::reserve(v2, v3);
}

uint64_t sub_2710128C0(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_2710128D8(uint64_t a1)
{
  *a1 = &unk_2880F8D60;
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      MEMORY[0x2743BADC0](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x2743BADE0);
}

void *sub_271012964(void *a1, uint64_t a2)
{
  v4 = a1[8];
  result = (*(*a1 + 80))(a1);
  v6 = result + a2 + a1[4] - a1[2];
  if (*(v4 + 16) < v6)
  {

    return sub_271010304(v4, (v4 + 24), v6, 1);
  }

  return result;
}

void sub_271012A0C(void *a1, uint64_t a2)
{
  v42[8] = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v40 = v42;
    v41 = xmmword_2710240E0;
    v31 = 0;
    v35 = 0;
    v36 = 0;
    v38 = &v40;
    v37 = 0;
    v30 = &unk_2880F8F10;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    (*(**a1 + 24))(*a1, &v30);
    v4 = a1[2];
    v5 = v41;
    v6 = v4 - v41;
    if (v4 > v41)
    {
      v7 = *(a1 + 2);
      if (!v7)
      {
        sub_2710119AC(a2, v40, v41);
        if (v6)
        {
          v16 = 0;
          do
          {
            v17 = *(a1 + 24);
            while (1)
            {
              v18 = *(a2 + 32);
              if (v18 < *(a2 + 24))
              {
                goto LABEL_29;
              }

              v19 = *(a2 + 16);
              if (v19)
              {
                *(a2 + 32) = v19;
                sub_271011844(a2);
                v18 = *(a2 + 32);
LABEL_29:
                *(a2 + 32) = v18 + 1;
                *v18 = v17;
                goto LABEL_30;
              }

              if (!*(a2 + 56))
              {
                break;
              }

              sub_27101142C(a2);
            }

            v39 = v17;
            sub_271011844(a2);
LABEL_30:
            ++v16;
          }

          while (v16 != v6);
        }

        goto LABEL_58;
      }

      if (v7 == 1)
      {
        v8 = v6 >> 1;
        if ((v6 >> 1))
        {
          v9 = 0;
          do
          {
            v10 = *(a1 + 24);
            while (1)
            {
              v11 = *(a2 + 32);
              if (v11 < *(a2 + 24))
              {
                goto LABEL_13;
              }

              v12 = *(a2 + 16);
              if (v12)
              {
                *(a2 + 32) = v12;
                sub_271011844(a2);
                v11 = *(a2 + 32);
LABEL_13:
                *(a2 + 32) = v11 + 1;
                *v11 = v10;
                goto LABEL_14;
              }

              if (!*(a2 + 56))
              {
                break;
              }

              sub_27101142C(a2);
            }

            v39 = v10;
            sub_271011844(a2);
LABEL_14:
            ++v9;
          }

          while (v9 != v8);
          v5 = v41;
        }

        sub_2710119AC(a2, v40, v5);
        v24 = v6 - v8;
        if (v24)
        {
          for (i = 0; i != v24; ++i)
          {
            v26 = *(a1 + 24);
            while (1)
            {
              v27 = *(a2 + 32);
              if (v27 < *(a2 + 24))
              {
                goto LABEL_53;
              }

              v28 = *(a2 + 16);
              if (v28)
              {
                *(a2 + 32) = v28;
                sub_271011844(a2);
                v27 = *(a2 + 32);
LABEL_53:
                *(a2 + 32) = v27 + 1;
                *v27 = v26;
                goto LABEL_54;
              }

              if (!*(a2 + 56))
              {
                break;
              }

              sub_27101142C(a2);
            }

            v39 = v26;
            sub_271011844(a2);
LABEL_54:
            ;
          }
        }

        goto LABEL_58;
      }

      if (v6)
      {
        v20 = 0;
        do
        {
          v21 = *(a1 + 24);
          while (1)
          {
            v22 = *(a2 + 32);
            if (v22 < *(a2 + 24))
            {
              goto LABEL_41;
            }

            v23 = *(a2 + 16);
            if (v23)
            {
              *(a2 + 32) = v23;
              sub_271011844(a2);
              v22 = *(a2 + 32);
LABEL_41:
              *(a2 + 32) = v22 + 1;
              *v22 = v21;
              goto LABEL_42;
            }

            if (!*(a2 + 56))
            {
              break;
            }

            sub_27101142C(a2);
          }

          v39 = v21;
          sub_271011844(a2);
LABEL_42:
          ++v20;
        }

        while (v20 != v6);
        v5 = v41;
      }
    }

    sub_2710119AC(a2, v40, v5);
LABEL_58:
    v30 = &unk_2880F8D60;
    if (v37 == 1 && v32)
    {
      MEMORY[0x2743BADC0](v32, 0x1000C8077774924);
    }

    if (v40 != v42)
    {
      free(v40);
    }

    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *a1;
  v14 = *(**a1 + 24);
  v15 = *MEMORY[0x277D85DE8];

  v14();
}

void sub_271012E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  sub_271011DFC(&a9);
  if (a19 != v19)
  {
    free(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_271012E68@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *(result + 33);
      if (v7 == 1)
      {
        v8 = result;
        result = *result;
        v7 = v8[1];
      }

      else
      {
        LOBYTE(v3) = 2;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = result;
      *(a3 + 8) = v7;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

BOOL sub_271012F00(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, int a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3 + *(a3 + 4);
  v8 = *(v7 + 144);
  if (v8 != 20)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109120;
    v30 = v8;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: action buffer contains unexpected number of buffer entries: %d";
    goto LABEL_16;
  }

  *(v7 + 220) = 0u;
  *(v7 + 204) = 0u;
  *(v7 + 188) = 0u;
  *(v7 + 172) = 0u;
  *(v7 + 156) = 0u;
  *(v7 + 1248) = 0u;
  *(v7 + 1264) = 0u;
  *(v7 + 1280) = 0u;
  *(v7 + 1296) = 0u;
  *(v7 + 1312) = 0u;
  *(v7 + 152) = 0x7FFFFFFF;
  *(v7 + 1244) = 0x7FFFFFFF;
  if (a4)
  {
    *(v7 + 152) = 0;
    *(v7 + 160) = 64;
    *(v7 + 162) = a4 >> 6;
    *(v7 + 164) = 524352;
  }

  if (a6)
  {
    *(v7 + 1244) = 1;
    *(v7 + 1252) = 64;
    *(v7 + 1254) = a6 >> 6;
    *(v7 + 1256) = 524352;
  }

  if (!*a2)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109120;
    v30 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer contains unexpected number of total items: %d";
LABEL_16:
    v20 = 8;
LABEL_17:
    _os_log_error_impl(&dword_271001000, v18, OS_LOG_TYPE_ERROR, v19, &v29, v20);
    result = 0;
    goto LABEL_43;
  }

  v9 = a2 + a2[1];
  v10 = *(v9 + 3);
  if (v10 != 3776)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109376;
    v30 = v10;
    v31 = 2048;
    v32 = 3776;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer item size of config %d is different from expected size %zu";
    v20 = 18;
    goto LABEL_17;
  }

  v11 = *(v9 + 1);
  if (v11 != 21)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109376;
    v30 = v11;
    v31 = 1024;
    LODWORD(v32) = 21;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer primitive ID %d is different from expected ID %u";
    v20 = 14;
    goto LABEL_17;
  }

  if (!a4)
  {
    *(v9 + 926) = 0;
    *(v9 + 462) = 0;
    v13 = *(v9 + 5) & 0xFFFFFFF3;
    *(v9 + 5) = v13;
    if (a6)
    {
      goto LABEL_11;
    }

LABEL_23:
    v14 = 0;
    v15 = 0;
    v16 = v13 & 0xFFFFFFCF;
    goto LABEL_24;
  }

  *(v9 + 926) = a4;
  v12 = *(a1 + 24);
  *(v9 + 925) = HIDWORD(v12);
  *(v9 + 924) = v12 + a5;
  v13 = *(v9 + 5) & 0xFFFFFFF3 | 4;
  *(v9 + 5) = v13;
  if (!a6)
  {
    goto LABEL_23;
  }

LABEL_11:
  v14 = *(a1 + 28);
  v15 = *(a1 + 24) + a7;
  v16 = v13 & 0xFFFFFFCF | 0x10;
LABEL_24:
  *(v9 + 929) = a6;
  *(v9 + 928) = v14;
  *(v9 + 927) = v15;
  v25 = (v16 & 0x300) == 0x200 || (v16 & 0xC0) == 128 || (v16 & 0xC00) == 2048 || (v16 & 0x3000) == 0x2000 || (v16 & 0xC000) == 0x8000 || (v16 & 0x30000) == 0x20000;
  v26 = v16 & 0xFFFFFFFC;
  result = 1;
  if (v25)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  *(v9 + 5) = v27 | v26;
LABEL_43:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_271013234(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, int a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3 + *(a3 + 4);
  v8 = *(v7 + 144);
  if (v8 != 18)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109120;
    v30 = v8;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: action buffer contains unexpected number of buffer entries: %d";
    goto LABEL_16;
  }

  *(v7 + 220) = 0u;
  *(v7 + 204) = 0u;
  *(v7 + 188) = 0u;
  *(v7 + 172) = 0u;
  *(v7 + 156) = 0u;
  *(v7 + 1080) = 0u;
  *(v7 + 1096) = 0u;
  *(v7 + 1112) = 0u;
  *(v7 + 1128) = 0u;
  *(v7 + 1144) = 0u;
  *(v7 + 152) = 0x7FFFFFFF;
  *(v7 + 1076) = 0x7FFFFFFF;
  if (a4)
  {
    *(v7 + 152) = 0;
    *(v7 + 160) = 64;
    *(v7 + 162) = a4 >> 6;
    *(v7 + 164) = 524352;
  }

  if (a6)
  {
    *(v7 + 1076) = 1;
    *(v7 + 1084) = 64;
    *(v7 + 1086) = a6 >> 6;
    *(v7 + 1088) = 524352;
  }

  if (!*a2)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109120;
    v30 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer contains unexpected number of total items: %d";
LABEL_16:
    v20 = 8;
LABEL_17:
    _os_log_error_impl(&dword_271001000, v18, OS_LOG_TYPE_ERROR, v19, &v29, v20);
    result = 0;
    goto LABEL_43;
  }

  v9 = a2 + a2[1];
  v10 = *(v9 + 3);
  if (v10 != 6528)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109376;
    v30 = v10;
    v31 = 2048;
    v32 = 6528;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer item size of config %d is different from expected size %zu";
    v20 = 18;
    goto LABEL_17;
  }

  v11 = *(v9 + 1);
  if (v11 != 26)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109376;
    v30 = v11;
    v31 = 1024;
    LODWORD(v32) = 26;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer primitive ID %d is different from expected ID %u";
    v20 = 14;
    goto LABEL_17;
  }

  if (!a4)
  {
    *(v9 + 1600) = 0;
    *(v9 + 799) = 0;
    v13 = *(v9 + 5) & 0xFFFFFFF3;
    *(v9 + 5) = v13;
    if (a6)
    {
      goto LABEL_11;
    }

LABEL_23:
    v14 = 0;
    v15 = 0;
    v16 = v13 & 0xFFFFFFCF;
    goto LABEL_24;
  }

  *(v9 + 1600) = a4;
  v12 = *(a1 + 24);
  *(v9 + 1599) = HIDWORD(v12);
  *(v9 + 1598) = v12 + a5;
  v13 = *(v9 + 5) & 0xFFFFFFF3 | 4;
  *(v9 + 5) = v13;
  if (!a6)
  {
    goto LABEL_23;
  }

LABEL_11:
  v14 = *(a1 + 28);
  v15 = *(a1 + 24) + a7;
  v16 = v13 & 0xFFFFFFCF | 0x10;
LABEL_24:
  *(v9 + 1603) = a6;
  *(v9 + 1602) = v14;
  *(v9 + 1601) = v15;
  v25 = (v16 & 0x300) == 0x200 || (v16 & 0xC0) == 128 || (v16 & 0xC00) == 2048 || (v16 & 0x3000) == 0x2000 || (v16 & 0xC000) == 0x8000 || (v16 & 0x30000) == 0x20000;
  v26 = v16 & 0xFFFFFFFC;
  result = 1;
  if (v25)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  *(v9 + 5) = v27 | v26;
LABEL_43:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_271013568(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, int a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3 + *(a3 + 4);
  v8 = *(v7 + 144);
  if (v8 != 18)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109120;
    v30 = v8;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: action buffer contains unexpected number of buffer entries: %d";
    goto LABEL_16;
  }

  *(v7 + 220) = 0u;
  *(v7 + 204) = 0u;
  *(v7 + 188) = 0u;
  *(v7 + 172) = 0u;
  *(v7 + 156) = 0u;
  *(v7 + 1080) = 0u;
  *(v7 + 1096) = 0u;
  *(v7 + 1112) = 0u;
  *(v7 + 1128) = 0u;
  *(v7 + 1144) = 0u;
  *(v7 + 152) = 0x7FFFFFFF;
  *(v7 + 1076) = 0x7FFFFFFF;
  if (a4)
  {
    *(v7 + 152) = 0;
    *(v7 + 160) = 64;
    *(v7 + 162) = a4 >> 6;
    *(v7 + 164) = 524352;
  }

  if (a6)
  {
    *(v7 + 1076) = 1;
    *(v7 + 1084) = 64;
    *(v7 + 1086) = a6 >> 6;
    *(v7 + 1088) = 524352;
  }

  if (!*a2)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109120;
    v30 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer contains unexpected number of total items: %d";
LABEL_16:
    v20 = 8;
LABEL_17:
    _os_log_error_impl(&dword_271001000, v18, OS_LOG_TYPE_ERROR, v19, &v29, v20);
    result = 0;
    goto LABEL_43;
  }

  v9 = a2 + a2[1];
  v10 = *(v9 + 3);
  if (v10 != 6528)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109376;
    v30 = v10;
    v31 = 2048;
    v32 = 6528;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer item size of config %d is different from expected size %zu";
    v20 = 18;
    goto LABEL_17;
  }

  v11 = *(v9 + 1);
  if (v11 != 29)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109376;
    v30 = v11;
    v31 = 1024;
    LODWORD(v32) = 29;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer primitive ID %d is different from expected ID %u";
    v20 = 14;
    goto LABEL_17;
  }

  if (!a4)
  {
    *(v9 + 1600) = 0;
    *(v9 + 799) = 0;
    v13 = *(v9 + 5) & 0xFFFFFFF3;
    *(v9 + 5) = v13;
    if (a6)
    {
      goto LABEL_11;
    }

LABEL_23:
    v14 = 0;
    v15 = 0;
    v16 = v13 & 0xFFFFFFCF;
    goto LABEL_24;
  }

  *(v9 + 1600) = a4;
  v12 = *(a1 + 24);
  *(v9 + 1599) = HIDWORD(v12);
  *(v9 + 1598) = v12 + a5;
  v13 = *(v9 + 5) & 0xFFFFFFF3 | 4;
  *(v9 + 5) = v13;
  if (!a6)
  {
    goto LABEL_23;
  }

LABEL_11:
  v14 = *(a1 + 28);
  v15 = *(a1 + 24) + a7;
  v16 = v13 & 0xFFFFFFCF | 0x10;
LABEL_24:
  *(v9 + 1603) = a6;
  *(v9 + 1602) = v14;
  *(v9 + 1601) = v15;
  v25 = (v16 & 0x300) == 0x200 || (v16 & 0xC0) == 128 || (v16 & 0xC00) == 2048 || (v16 & 0x3000) == 0x2000 || (v16 & 0xC000) == 0x8000 || (v16 & 0x30000) == 0x20000;
  v26 = v16 & 0xFFFFFFFC;
  result = 1;
  if (v25)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  *(v9 + 5) = v27 | v26;
LABEL_43:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_27101389C(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, int a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3 + *(a3 + 4);
  v8 = *(v7 + 144);
  if (v8 != 18)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109120;
    v30 = v8;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: action buffer contains unexpected number of buffer entries: %d";
    goto LABEL_16;
  }

  *(v7 + 220) = 0u;
  *(v7 + 204) = 0u;
  *(v7 + 188) = 0u;
  *(v7 + 172) = 0u;
  *(v7 + 156) = 0u;
  *(v7 + 1080) = 0u;
  *(v7 + 1096) = 0u;
  *(v7 + 1112) = 0u;
  *(v7 + 1128) = 0u;
  *(v7 + 1144) = 0u;
  *(v7 + 152) = 0x7FFFFFFF;
  *(v7 + 1076) = 0x7FFFFFFF;
  if (a4)
  {
    *(v7 + 152) = 0;
    *(v7 + 160) = 64;
    *(v7 + 162) = a4 >> 6;
    *(v7 + 164) = 524352;
  }

  if (a6)
  {
    *(v7 + 1076) = 1;
    *(v7 + 1084) = 64;
    *(v7 + 1086) = a6 >> 6;
    *(v7 + 1088) = 524352;
  }

  if (!*a2)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109120;
    v30 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer contains unexpected number of total items: %d";
LABEL_16:
    v20 = 8;
LABEL_17:
    _os_log_error_impl(&dword_271001000, v18, OS_LOG_TYPE_ERROR, v19, &v29, v20);
    result = 0;
    goto LABEL_43;
  }

  v9 = a2 + a2[1];
  v10 = *(v9 + 3);
  if (v10 != 6528)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109376;
    v30 = v10;
    v31 = 2048;
    v32 = 6528;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer item size of config %d is different from expected size %zu";
    v20 = 18;
    goto LABEL_17;
  }

  v11 = *(v9 + 1);
  if (v11 != 32)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_43;
    }

    v29 = 67109376;
    v30 = v11;
    v31 = 1024;
    LODWORD(v32) = 32;
    v18 = MEMORY[0x277D86220];
    v19 = "VisionHWAProgramLoader: operation buffer primitive ID %d is different from expected ID %u";
    v20 = 14;
    goto LABEL_17;
  }

  if (!a4)
  {
    *(v9 + 1600) = 0;
    *(v9 + 799) = 0;
    v13 = *(v9 + 5) & 0xFFFFFFF3;
    *(v9 + 5) = v13;
    if (a6)
    {
      goto LABEL_11;
    }

LABEL_23:
    v14 = 0;
    v15 = 0;
    v16 = v13 & 0xFFFFFFCF;
    goto LABEL_24;
  }

  *(v9 + 1600) = a4;
  v12 = *(a1 + 24);
  *(v9 + 1599) = HIDWORD(v12);
  *(v9 + 1598) = v12 + a5;
  v13 = *(v9 + 5) & 0xFFFFFFF3 | 4;
  *(v9 + 5) = v13;
  if (!a6)
  {
    goto LABEL_23;
  }

LABEL_11:
  v14 = *(a1 + 28);
  v15 = *(a1 + 24) + a7;
  v16 = v13 & 0xFFFFFFCF | 0x10;
LABEL_24:
  *(v9 + 1603) = a6;
  *(v9 + 1602) = v14;
  *(v9 + 1601) = v15;
  v25 = (v16 & 0x300) == 0x200 || (v16 & 0xC0) == 128 || (v16 & 0xC00) == 2048 || (v16 & 0x3000) == 0x2000 || (v16 & 0xC000) == 0x8000 || (v16 & 0x30000) == 0x20000;
  v26 = v16 & 0xFFFFFFFC;
  result = 1;
  if (v25)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  *(v9 + 5) = v27 | v26;
LABEL_43:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_271013C50(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  *a1 = &unk_2880F9100;
  *(a1 + 8) = pixelBuffer;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0xFFFFFFFFLL;
  *(a1 + 80) = -1;
  *(a1 + 84) = 0;
  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;
  *(a1 + 88) = CVPixelBufferGetBaseAddress(pixelBuffer);
  *(a1 + 96) = CVPixelBufferGetBaseAddress(*(a1 + 16));
  v4 = sub_271020E14();
  v5 = *v4;
  v6 = v4[1];
  v12 = *v4;
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 64))(v5);
  if (v8)
  {
    if (v7 <= 33073)
    {
      switch(v7)
      {
        case 33056:
          operator new();
        case 33058:
          operator new();
        case 33072:
          operator new();
      }
    }

    else if (v7 > 33089)
    {
      if (v7 == 33090)
      {
        operator new();
      }

      if (v7 == 33104)
      {
        operator new();
      }
    }

    else
    {
      if (v7 == 33074)
      {
        operator new();
      }

      if (v7 == 33088)
      {
        operator new();
      }
    }

    v9 = *(a1 + 104);
    *(a1 + 104) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_271001000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "VisionHWAServer: unsupported platform", v11, 2u);
    }
  }

  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void sub_271014104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = v11[13];
  v11[13] = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v11[6];
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v15 = v11[6];
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  v11[7] = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v11[4] = v16;
  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void *sub_27101418C(void *a1)
{
  *a1 = &unk_2880F9100;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_27101421C(void *a1)
{
  *a1 = &unk_2880F9100;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743BADE0);
}

void *sub_2710142CC(void *result)
{
  result[4] = result[3];
  result[7] = result[6];
  v1 = result[13];
  result[9] = *(v1 + 12);
  result[10] = *(v1 + 20);
  return result;
}

uint64_t sub_2710142F4(void *a1, int a2, unsigned int a3, size_t __len, void *__src, int a6)
{
  if (!__src)
  {
    return 0;
  }

  v6 = a1[12];
  if (v6)
  {
    v6 = *(a1[13] + 20) > a3;
    if (__len)
    {
      if (*(a1[13] + 20) > a3)
      {
        v7 = a3 != a6;
        v8 = a1[7];
        v9 = a1[8];
        if (v8 >= v9)
        {
          v11 = a1[6];
          v12 = v8 - v11;
          v13 = v12 >> 4;
          v14 = (v12 >> 4) + 1;
          if (v14 >> 60)
          {
            sub_271014AC4();
          }

          v15 = v9 - v11;
          if (v15 >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          v17 = a1;
          if (v16)
          {
            if (!(v16 >> 60))
            {
              operator new();
            }

            sub_27100BA50();
          }

          v18 = __src;
          v19 = 16 * v13;
          v20 = a3;
          *v19 = a3;
          *(v19 + 4) = a6;
          v21 = __len;
          *(v19 + 8) = __len;
          *(v19 + 12) = v7;
          v10 = 16 * v13 + 16;
          v22 = (v19 - 16 * (v12 >> 4));
          memcpy(v22, v11, v12);
          v17[6] = v22;
          v17[7] = v10;
          v17[8] = 0;
          if (v11)
          {
            operator delete(v11);
          }

          a1 = v17;
          __src = v18;
          LODWORD(__len) = v21;
          a3 = v20;
        }

        else
        {
          *v8 = a3;
          *(v8 + 4) = a6;
          *(v8 + 8) = __len;
          v10 = v8 + 16;
          *(v8 + 12) = v7;
        }

        a1[7] = v10;
        v23 = *(a1 + 20);
        v24 = *(a1 + 21);
        if (v23 >= a3)
        {
          v23 = a3;
        }

        if (v24 <= __len + a3)
        {
          v24 = __len + a3;
        }

        *(a1 + 20) = v23;
        *(a1 + 21) = v24;
        memmove((a1[12] + a3), __src, __len);
        return 1;
      }
    }
  }

  return v6;
}

uint64_t sub_2710144B8(void *a1, int a2, unsigned int a3, size_t __len, void *__src, unsigned int a6)
{
  if (!__src)
  {
    return 0;
  }

  if (!a1[11])
  {
    return 0;
  }

  v6 = a1[13];
  v7 = *(v6 + 8);
  if (v7 > a3)
  {
    return 0;
  }

  v8 = *(v6 + 12);
  if (v7 > a6 || v8 <= a3)
  {
    return 0;
  }

  if (__len)
  {
    v12 = a1[3];
    v11 = a1[4];
    v13 = a3 != a6;
    v14 = v12;
    if (a3 == a6)
    {
      if (v12 != v11)
      {
        v14 = a1[3];
        while (*v14 != a3)
        {
          v14 += 16;
          if (v14 == v11)
          {
            goto LABEL_25;
          }
        }
      }

      if (v14 != v11)
      {
        v13 = 1;
      }
    }

    else
    {
      if (v12 != v11)
      {
        v14 = a1[3];
        while (*v14 != a3)
        {
          v14 += 16;
          if (v14 == v11)
          {
            goto LABEL_25;
          }
        }
      }

      if (v14 != v11)
      {
        v14[12] = 1;
      }
    }

LABEL_25:
    v15 = a1[5];
    if (v11 >= v15)
    {
      v17 = v11 - v12;
      v18 = v17 >> 4;
      v19 = (v17 >> 4) + 1;
      if (v19 >> 60)
      {
        sub_271014AC4();
      }

      v20 = v15 - v12;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v22 = a1;
      if (v21)
      {
        if (!(v21 >> 60))
        {
          operator new();
        }

        sub_27100BA50();
      }

      v23 = __src;
      v24 = 16 * v18;
      *v24 = a3;
      *(v24 + 4) = a6;
      v25 = a6;
      v26 = __len;
      *(v24 + 8) = __len;
      *(v24 + 12) = v13;
      v16 = 16 * v18 + 16;
      v27 = (v24 - 16 * (v17 >> 4));
      memcpy(v27, v12, v17);
      v22[3] = v27;
      v22[4] = v16;
      v22[5] = 0;
      if (v12)
      {
        operator delete(v12);
      }

      a1 = v22;
      __len = v26;
      __src = v23;
      a6 = v25;
    }

    else
    {
      *v11 = a3;
      *(v11 + 1) = a6;
      *(v11 + 2) = __len;
      v16 = (v11 + 16);
      v11[12] = v13;
    }

    a1[4] = v16;
    if (__len)
    {
      memmove((a1[11] + a6 - *(a1[13] + 8)), __src, __len);
    }
  }

  return 1;
}

uint64_t sub_2710146EC(void *a1, int a2, uint64_t a3, size_t a4)
{
  if (!a1[12] || *(a1[13] + 20) <= a3)
  {
    return 0;
  }

  v4 = a1[7];
  v5 = a1[8];
  if (v4 >= v5)
  {
    v8 = a1[6];
    v9 = v4 - v8;
    v10 = v9 >> 4;
    v11 = (v9 >> 4) + 1;
    if (v11 >> 60)
    {
      sub_271014AC4();
    }

    v12 = v5 - v8;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v14 = a1;
    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      sub_27100BA50();
    }

    v15 = 16 * v10;
    *v15 = a3;
    *(v15 + 4) = a3;
    v16 = a3;
    v17 = a4;
    *(v15 + 8) = a4;
    *(v15 + 12) = 0;
    v6 = 16 * v10 + 16;
    memcpy(0, v8, v9);
    v14[6] = 0;
    v14[7] = v6;
    v14[8] = 0;
    if (v8)
    {
      operator delete(v8);
    }

    a1 = v14;
    a4 = v17;
    a3 = v16;
  }

  else
  {
    *v4 = a3;
    *(v4 + 4) = a3;
    *(v4 + 8) = a4;
    v6 = v4 + 16;
    *(v4 + 12) = 0;
  }

  a1[7] = v6;
  v18 = *(a1 + 20);
  v19 = *(a1 + 21);
  if (v18 >= a3)
  {
    v18 = a3;
  }

  if (v19 <= a4 + a3)
  {
    v19 = a4 + a3;
  }

  *(a1 + 20) = v18;
  *(a1 + 21) = v19;
  if (a4)
  {
    bzero((a1[12] + a3), a4);
  }

  return 1;
}

uint64_t sub_2710148A8(uint64_t a1, uint64_t a2)
{
  BaseAddress = CVPixelBufferGetBaseAddress(*(a2 + 16));
  v5 = CVPixelBufferGetBaseAddress(*(a2 + 24));
  if (BaseAddress)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_error_impl(&dword_271001000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "VisionHWAServer: Unable to access action/operation buffer", v28, 2u);
    }

    return 0;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a1 + 24);
    if (v9 == v10)
    {
      *(a1 + 72) = 0;
    }

    else
    {
      v11 = v10 + 8;
      v12 = 1;
      do
      {
        v13 = v11 - 8;
        v14 = *(v11 - 8);
        if ((*(v11 + 4) & 1) == 0)
        {
          v15 = *v11 + v14;
          if ((v12 & 1) == 0)
          {
            if (v14 >= *(a1 + 72))
            {
              v14 = *(a1 + 72);
            }

            if (*(a1 + 76) > v15)
            {
              v15 = *(a1 + 76);
            }
          }

          v12 = 0;
          *(a1 + 72) = v14;
          *(a1 + 76) = v15;
        }

        v11 += 16;
      }

      while (v13 + 16 != v9);
    }

    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 48);
    if (v17 == v18)
    {
      v25 = 0;
      v24 = 0;
    }

    else
    {
      v19 = v18 + 8;
      v20 = 1;
      do
      {
        v21 = v19 - 8;
        v22 = *(v19 - 8);
        if ((*(v19 + 4) & 1) == 0)
        {
          v23 = *v19 + v22;
          if ((v20 & 1) == 0)
          {
            if (v22 >= *(a1 + 80))
            {
              v22 = *(a1 + 80);
            }

            if (*(a1 + 84) > v23)
            {
              v23 = *(a1 + 84);
            }
          }

          v20 = 0;
          *(a1 + 80) = v22;
          *(a1 + 84) = v23;
        }

        v19 += 16;
      }

      while (v21 + 16 != v17);
      v24 = *(a1 + 80) & 0xFFFFFFC0;
      v25 = (*(a1 + 84) + 63) & 0xFFFFFFC0;
    }

    v26 = (*(a1 + 76) + 63) & 0xFFFFFFC0;
    *(a1 + 72) &= 0xFFFFFFC0;
    *(a1 + 76) = v26;
    *(a1 + 80) = v24;
    *(a1 + 84) = v25;
    v27 = *(**(a1 + 104) + 16);

    return v27();
  }
}

uint64_t sub_271014ADC(uint64_t result)
{
  v1 = *(result + 8);
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

void sub_271014B54(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      CVPixelBufferUnlockBaseAddress(v4, 0);
      CVPixelBufferRelease(*(a2 + 24));
      *(a2 + 24) = 0;
    }

    v5 = *(a2 + 16);
    if (v5)
    {
      CVPixelBufferUnlockBaseAddress(v5, 0);
      CVPixelBufferRelease(*(a2 + 16));
      *(a2 + 16) = 0;
    }

    v6 = *(a2 + 32);
    if (v6)
    {
      CVPixelBufferUnlockBaseAddress(v6, 0);
      CVPixelBufferRelease(*(a2 + 32));
      *(a2 + 32) = 0;
    }

    v7 = *(a2 + 40);
    if (v7)
    {
      CVPixelBufferUnlockBaseAddress(v7, 0);
      CVPixelBufferRelease(*(a2 + 40));
      *(a2 + 40) = 0;
    }

    v8 = *(a2 + 48);
    if (v8)
    {
      CVPixelBufferUnlockBaseAddress(v8, 0);
      CVPixelBufferRelease(*(a2 + 48));
      *(a2 + 48) = 0;
    }
  }

  v9 = *(a2 + 64) - *(a2 + 56);
  if (v9)
  {
    v10 = 0;
    v11 = v9 >> 3;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    do
    {
      v13 = *(a2 + 56);
      v14 = *(v13 + 8 * v10);
      if (v14)
      {
        CVPixelBufferUnlockBaseAddress(v14, 0);
        CVPixelBufferRelease(*(v13 + 8 * v10));
        *(v13 + 8 * v10) = 0;
      }

      ++v10;
    }

    while (v12 != v10);
  }
}

BOOL sub_271014C5C(void *a1, CVPixelBufferRef *a2, char *key)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
LABEL_2:
    result = 1;
    goto LABEL_3;
  }

  value = xpc_dictionary_get_value(a1, key);
  if (value)
  {
    v8 = IOSurfaceLookupFromXPCObject(value);
    if (v8)
    {
      v9 = v8;
      if (!CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v8, 0, a2))
      {
        if (CVPixelBufferLockBaseAddress(*a2, 0))
        {
          if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
          {
            qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
            __cxa_guard_release(&qword_280874BC8);
          }

          v12 = qword_280874BC0;
          if (os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v13) = 0;
            _os_log_error_impl(&dword_271001000, v12, OS_LOG_TYPE_ERROR, "VisionHWAServer: Unable to lock the CVPixelBuffer base address", &v13, 2u);
          }
        }

        CFRelease(v9);
        goto LABEL_2;
      }

      CFRelease(v9);
      if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
      {
        qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
        __cxa_guard_release(&qword_280874BC8);
      }

      v10 = qword_280874BC0;
      result = os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v13 = 136315138;
        v14 = key;
        v11 = "VisionHWAServer: unable to create CVPixelBufferRef from IOSurface for key %s";
LABEL_16:
        _os_log_error_impl(&dword_271001000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 0xCu);
        result = 0;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
      {
        qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
        __cxa_guard_release(&qword_280874BC8);
      }

      v10 = qword_280874BC0;
      result = os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v13 = 136315138;
        v14 = key;
        v11 = "VisionHWAServer: no IOSurface ID found for key %s";
        goto LABEL_16;
      }
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280874BC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280874BC8))
    {
      qword_280874BC0 = os_log_create("com.apple.AppleCVHWA", "visionhwserverd");
      __cxa_guard_release(&qword_280874BC8);
    }

    v10 = qword_280874BC0;
    result = os_log_type_enabled(qword_280874BC0, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v13 = 136315138;
      v14 = key;
      v11 = "VisionHWAServer: no value for key %s";
      goto LABEL_16;
    }
  }

LABEL_3:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}