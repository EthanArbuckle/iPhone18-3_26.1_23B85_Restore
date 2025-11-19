CFRunLoopRef *UCLoopTapCFRunLoopInit(CFRunLoopRef *a1, CFRunLoopRef Current)
{
  if (!Current)
  {
    Current = CFRunLoopGetCurrent();
  }

  *a1 = Current;
  v6.version = 0;
  memset(&v6.retain, 0, 56);
  v6.info = a1;
  v6.perform = UC::LoopTapCFRunLoop::onSignal;
  a1[1] = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v6);
  v3 = mk_timer_create();
  *(a1 + 4) = v3;
  v6.version = 1;
  v6.info = a1;
  memset(&v6.retain, 0, 24);
  v4 = CFMachPortCreateWithPort(0, v3, UC::LoopTapCFRunLoop::onTimer, &v6, 0);
  a1[3] = v4;
  a1[4] = CFMachPortCreateRunLoopSource(0, v4, 0);
  v6.version = 0;
  memset(&v6.retain, 0, 24);
  v6.info = a1;
  a1[5] = CFRunLoopObserverCreate(0, 1uLL, 1u, 0, UC::LoopTapCFRunLoop::onEntry, &v6);
  _CFRunLoopObserverSetRecursive();
  return a1;
}

uint64_t UCDriverSetLoopTap(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(a2, a1, UC::MakeMethod<&UC::DriverCore::signalHandler>::call);
  (*(a3 + 40))(a2, a1, UC::MakeMethod<&UC::DriverCore::timerHandler>::call);
  result = (*(a3 + 48))(a2, a1, UC::MakeMethod<&UC::DriverCore::returnHandler>::call);
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  a1[2] = a2;
  a1[3] = v7;
  a1[12] = a2;
  a1[13] = v8;
  v9 = *(a3 + 24);
  a1[14] = a2;
  a1[15] = v9;
  return result;
}

uint64_t UC::MakeMethod<&UC::LoopTapCFRunLoop::setTimerHandler>::call(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

uint64_t UC::MakeMethod<&UC::LoopTapCFRunLoop::setReturnHandler>::call(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t UC::MakeMethod<&UC::LoopTapCFRunLoop::setSignalHandler>::call(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

uint64_t UCDriverSignal(uint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = (result + 8);
  v4 = atomic_fetch_or_explicit((result + 8), a2, memory_order_relaxed) | a2;
  if (UCDebugTracingModeCheck && (result = UCDebugTracingModeCheck(), result))
  {
    v10 = result;
    result = kdebug_trace();
    if (v10 >= 2)
    {
      result = getppid();
      v6 = 0;
      v5 = 1;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if ((v4 & 0x80000000) == 0)
  {
    while ((v4 & HIDWORD(v4)) != 0)
    {
      v7 = v4;
      atomic_compare_exchange_strong_explicit(v3, &v7, v4 | 0x80000000, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v4)
      {
        if ((v6 & 1) == 0)
        {
          kdebug_trace();
          if (v5)
          {
            getppid();
          }
        }

        v8 = *(v2 + 16);
        v9 = *(v2 + 24);

        return v9(v8);
      }

      v4 = v7;
      if ((v7 & 0x80000000) != 0)
      {
        return result;
      }
    }
  }

  return result;
}

void UC::MakeMethod<&UC::LoopTapCFRunLoop::signal>::call(__CFRunLoop **a1)
{
  CFRunLoopSourceSignal(a1[1]);
  v2 = *a1;

  CFRunLoopWakeUp(v2);
}

uint64_t UCDriverActivate(uint64_t result)
{
  v1 = result;
  if ((*(result + 8) & HIDWORD(*(result + 8))) != 0)
  {
    if (UCDebugTracingModeCheck)
    {
      v2 = UCDebugTracingModeCheck();
      if (v2)
      {
        v3 = v2;
        kdebug_trace();
        if (v3 >= 2)
        {
          getppid();
        }
      }
    }

    result = (*(v1 + 24))(*(v1 + 16));
  }

  else
  {
    atomic_fetch_and_explicit((result + 8), 0xFFFFFFFF7FFFFFFFLL, memory_order_relaxed);
  }

  *(v1 + 72) = 1;
  return result;
}

uint64_t UCTimeFromSeconds(double a1)
{
  v2 = *&_UCTimeUnitSeconds_Storage;
  if (*&_UCTimeUnitSeconds_Storage == 0.0)
  {
    v2 = _UCTimeUnitSeconds_Load();
  }

  return (a1 / v2);
}

double _UCTimeUnitSeconds_Load()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  result = v0 / (1000000000 * info.denom);
  _UCTimeUnitSeconds_Storage = *&result;
  return result;
}

uint64_t UC::MakeMethod<&UC::LoopTapCFRunLoop::timerCancel>::call(uint64_t a1)
{
  v2 = *(a1 + 16);
  mk_timer_cancel();
  v3 = *(a1 + 16);
  memset(v5, 0, sizeof(v5));
  v5[0].msgh_local_port = v3;
  v5[0].msgh_size = 48;
  return mach_msg(v5, 258, 0, 0x30u, v3, 0, 0);
}

double UCTimeToSeconds(uint64_t a1)
{
  v2 = *&_UCTimeUnitSeconds_Storage;
  if (*&_UCTimeUnitSeconds_Storage == 0.0)
  {
    v2 = _UCTimeUnitSeconds_Load();
  }

  return v2 * a1;
}

uint64_t UCDriverReset(uint64_t a1, unsigned int a2)
{
  v2 = atomic_fetch_and_explicit((a1 + 8), ~a2, memory_order_relaxed) & a2;
  if (UCDebugTracingModeCheck)
  {
    v4 = UCDebugTracingModeCheck();
    if (v4)
    {
      v5 = v4;
      kdebug_trace();
      if (v5 >= 2)
      {
        getppid();
      }
    }
  }

  return v2;
}

double UCTimeUnitSeconds()
{
  result = *&_UCTimeUnitSeconds_Storage;
  if (*&_UCTimeUnitSeconds_Storage == 0.0)
  {
    return _UCTimeUnitSeconds_Load();
  }

  return result;
}

void ___ZN12_GLOBAL__N_116immutableOptionsEv_block_invoke()
{
  os_variant_has_internal_diagnostics();
  if (!os_variant_allows_internal_security_policies())
  {
    v4 = 0;
    goto LABEL_14;
  }

  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UpdateCycle"];
  [v0 addSuiteNamed:@"com.apple.UIKit"];
  v1 = [v0 dictionaryRepresentation];

  v10 = v1;
  v2 = getenv("UCDebugTracing");
  if (!v2)
  {
    v5 = v10;
    if (v10)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"UCDebugTracing"];
      v7 = [v10 objectForKeyedSubscript:v6];
      if (v7)
      {
        v8 = v7;
        v3 = [v7 intValue];

LABEL_12:
        goto LABEL_13;
      }

      v5 = v10;
    }

    v9 = [v5 objectForKeyedSubscript:@"UpdateCycleTracing"];
    v6 = v9;
    if (v9)
    {
      v3 = [v9 intValue];
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_12;
  }

  v3 = atoi(v2);
LABEL_13:

  v4 = v10;
LABEL_14:
}

void UCLoopTapCFRunLoopDeinit(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  CFRunLoopSourceInvalidate(*(a1 + 32));
  CFRelease(*(a1 + 32));
  CFMachPortInvalidate(*(a1 + 24));
  CFRelease(*(a1 + 24));
  v2 = *(a1 + 16);
  mk_timer_cancel();
  v3 = *(a1 + 16);
  mk_timer_destroy();
  v4 = *(a1 + 8);

  CFRelease(v4);
}

void UCLoopTapCFRunLoopAddToMode(CFRunLoopRef *a1, CFRunLoopMode mode)
{
  CFRunLoopAddSource(*a1, a1[1], mode);
  CFRunLoopAddSource(*a1, a1[4], mode);
  v4 = *a1;
  v5 = a1[5];

  CFRunLoopAddObserver(v4, v5, mode);
}

void UCLoopTapCFRunLoopRemoveFromMode(CFRunLoopRef *a1, CFRunLoopMode mode)
{
  CFRunLoopRemoveSource(*a1, a1[1], mode);
  CFRunLoopRemoveSource(*a1, a1[4], mode);
  v4 = *a1;
  v5 = a1[5];

  CFRunLoopRemoveObserver(v4, v5, mode);
}

uint64_t initDebugTracingModeCheck(void)
{
  {
  }

  v1 = debugTracingModeTracepoints;
  {
    if (result != 1)
    {
      result = 2;
      v1 = debugTracingModeTracepointsWithCallstacks;
    }
  }

  else
  {
    v1 = 0;
  }

  UCDebugTracingModeCheck = v1;
  return result;
}

void *UCCoallocNVars(unsigned int a1, int a2, unsigned int *a3, uint64_t a4)
{
  v4 = a4;
  v6 = 0;
  if (a1)
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = 8;
    }

    v8 = v7 - 1;
    v9 = -v7;
    v10 = a1;
    v11 = (a4 + 8);
    do
    {
      v12 = *(v11 - 1);
      if (v12)
      {
        *v12 = v6;
      }

      v13 = *v11;
      v11 += 4;
      v6 += (v8 + v13) & v9;
      --v10;
    }

    while (v10);
  }

  if (a3)
  {
    *a3 = v6;
  }

  result = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  if (result && a1)
  {
    v15 = a1;
    do
    {
      if (*v4)
      {
        **v4 += result;
      }

      v4 += 2;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t UC::SignalsCore::acceptProcessing(UC::SignalsCore *this, unint64_t a2, char a3, int a4)
{
  if (a3)
  {
    v4 = a2;
LABEL_3:
    *(this + 24) = a4;
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      while (1)
      {
        atomic_compare_exchange_strong_explicit(this, &v5, v4 | 0x80000000, memory_order_relaxed, memory_order_relaxed);
        if (v5 == v4)
        {
          break;
        }

        v4 = v5;
        if ((v5 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      *(this + 24) = 1;
    }

LABEL_16:
    if (UCDebugTracingModeCheck)
    {
      v7 = UCDebugTracingModeCheck();
      if (v7)
      {
        v8 = v7;
        kdebug_trace();
        if (v8 >= 2)
        {
          getppid();
        }
      }
    }

    return 1;
  }

  else
  {
    if (a4)
    {
      v4 = a2;
      while (1)
      {
        atomic_compare_exchange_strong_explicit(this, &v4, a2 & 0xFFFFFFFF7FFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
        if (v4 == a2)
        {
          break;
        }

        a2 = v4;
        if ((v4 & HIDWORD(v4)) != 0)
        {
          goto LABEL_3;
        }
      }
    }

    return 0;
  }
}

uint64_t UC::SignalsCore::notifyLost(uint64_t this)
{
  *(this + 24) = 1;
  if (UCDebugTracingModeCheck)
  {
    v1 = this;
    this = UCDebugTracingModeCheck();
    if (this)
    {
      v2 = this;
      v3 = *v1;
      this = kdebug_trace();
      if (v2 >= 2)
      {

        return getppid();
      }
    }
  }

  return this;
}

uint64_t UC::MakeMethod<&UC::DriverCore::returnHandler>::call(uint64_t this)
{
  v1 = this;
  if (*(this + 72))
  {
    if ((*(this + 8) & 0x4000000000000000) == 0)
    {
      return this;
    }

    this = UC::SignalsCore::acceptProcessing((this + 8), atomic_fetch_or_explicit((this + 8), 0x40000000uLL, memory_order_relaxed) | 0x40000000, 1, 0);
    if (!this)
    {
      return this;
    }

    *(v1 + 56) = *(v1 + 40);
    *(v1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
    *(v1 + 72) = 0;
  }

  if (UCDebugTracingModeCheck)
  {
    v2 = UCDebugTracingModeCheck();
    if (v2)
    {
      v3 = v2;
      v4 = *(v1 + 76);
      kdebug_trace();
      if (v3 >= 2)
      {
        getppid();
      }
    }
  }

  return UC::DriverCore::continueProcessing(v1);
}

uint64_t UC::DriverCore::continueProcessing(UC::DriverCore *this)
{
  ++*(this + 76);
  v2 = (this + 8);
  while (1)
  {
    do
    {
      if (UCDebugTracingModeCheck && (v11 = UCDebugTracingModeCheck()) != 0)
      {
        v12 = v11;
        v13 = *(this + 76);
        v14 = *(this + 8);
        kdebug_trace();
        if (v12 >= 2)
        {
          getppid();
          v4 = 0;
          v3 = 1;
        }

        else
        {
          v4 = 0;
          v3 = 0;
        }
      }

      else
      {
        v3 = 0;
        v4 = 1;
      }

      result = (*(this + 8))(*(this + 7));
      *(this + 7) = result;
      *(this + 8) = v6;
    }

    while (v6);
    if (*(this + 18))
    {
      return result;
    }

    v7 = *(this + 77);
    v8 = *(this + 1);
    if ((v8 & HIDWORD(v8)) == 0)
    {
      if (*(this + 32) == 1)
      {
        v10 = *(this + 1);
        while (1)
        {
          atomic_compare_exchange_strong_explicit(v2, &v10, v8 & 0xFFFFFFFF7FFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
          if (v10 == v8)
          {
            break;
          }

          v8 = v10;
          if ((v10 & HIDWORD(v10)) != 0)
          {
            goto LABEL_12;
          }
        }

        if (!UCDebugTracingModeCheck)
        {
          goto LABEL_19;
        }

        result = UCDebugTracingModeCheck();
        if (!result)
        {
          goto LABEL_19;
        }

        v20 = result;
      }

      else
      {
        if (!UCDebugTracingModeCheck)
        {
          goto LABEL_19;
        }

        v19 = *(this + 1);
        result = UCDebugTracingModeCheck();
        if (!result)
        {
          goto LABEL_19;
        }

        v20 = result;
      }

      result = kdebug_trace();
      if (v20 > 1)
      {
        goto LABEL_41;
      }

LABEL_19:
      *(this + 18) = 1;
      *(this + 38) = 0;
      v15 = *(this + 10);
      v16 = *(this + 11);
      if (v15 == v16)
      {
        return result;
      }

      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          result = (*(this + 15))(*(this + 14));
          if ((v4 & 1) == 0)
          {
            v17 = *(this + 11);
            result = kdebug_trace();
            if (v3)
            {
              goto LABEL_43;
            }
          }
        }
      }

      else
      {
        result = (*(this + 13))(*(this + 12));
        if ((v4 & 1) == 0)
        {
          v21 = *(this + 10);
          v22 = *(this + 11);
          result = kdebug_trace();
          if (v3)
          {
LABEL_43:
            result = getppid();
          }
        }
      }

      *(this + 11) = *(this + 10);
      return result;
    }

    v9 = *(this + 1);
LABEL_12:
    if (v7)
    {
      if (*(this + 32) == 1)
      {
        if (UCDebugTracingModeCheck)
        {
          v23 = UCDebugTracingModeCheck();
          if (v23)
          {
            v24 = v23;
            kdebug_trace();
            if (v24 >= 2)
            {
              getppid();
            }
          }
        }

        result = (*(this + 3))(*(this + 2));
      }

      if (UCDebugTracingModeCheck)
      {
        result = (UCDebugTracingModeCheck)(result);
        if (result)
        {
          v18 = result;
          result = kdebug_trace();
          if (v18 >= 2)
          {
LABEL_41:
            result = getppid();
          }
        }
      }

      goto LABEL_19;
    }

    *(this + 56) = *(this + 40);
  }
}

uint64_t UC::MakeMethod<&UC::DriverCore::timerHandler>::call(uint64_t result)
{
  v1 = result;
  if (UCDebugTracingModeCheck && (result = UCDebugTracingModeCheck(), result))
  {
    v4 = result;
    v5 = *(v1 + 76);
    v6 = *(v1 + 88);
    result = kdebug_trace();
    if (v4 >= 2)
    {
      result = getppid();
      v3 = 0;
      v2 = 1;
    }

    else
    {
      v3 = 0;
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  *(v1 + 88) = 0x7FFFFFFFFFFFFFFFLL;
  if (*(v1 + 72))
  {
    if ((*(v1 + 8) & 0x2000000000000000) != 0)
    {
      result = UC::SignalsCore::acceptProcessing((v1 + 8), atomic_fetch_or_explicit((v1 + 8), 0x20000000uLL, memory_order_relaxed) | 0x20000000, 1, 0);
      if (result)
      {
        *(v1 + 56) = *(v1 + 40);
        *(v1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
        *(v1 + 72) = 0;
        if ((v3 & 1) == 0)
        {
          v7 = *(v1 + 76);
          kdebug_trace();
          if (v2)
          {
            getppid();
          }
        }

        return UC::DriverCore::continueProcessing(v1);
      }
    }
  }

  else
  {

    return UC::ERROR_NESTED_RUN_LOOP_IS_NOT_SUPPORTED_DURING_THIS_OPERATION(result);
  }

  return result;
}

uint64_t UC::ERROR_NESTED_RUN_LOOP_IS_NOT_SUPPORTED_DURING_THIS_OPERATION(UC *this)
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t UC::MakeMethod<&UC::DriverCore::signalHandler>::call(uint64_t a1)
{
  if (*(a1 + 72))
  {
    result = UC::SignalsCore::acceptProcessing((a1 + 8), *(a1 + 8), (*(a1 + 8) & HIDWORD(*(a1 + 8))) != 0, 1);
    if (result)
    {
      *(a1 + 56) = *(a1 + 40);
      *(a1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
      *(a1 + 72) = 0;
      if (UCDebugTracingModeCheck)
      {
        v3 = UCDebugTracingModeCheck();
        if (v3)
        {
          v4 = v3;
          v5 = *(a1 + 76);
          kdebug_trace();
          if (v4 >= 2)
          {
            getppid();
          }
        }
      }

      return UC::DriverCore::continueProcessing(a1);
    }
  }

  else
  {
    UC::ERROR_NESTED_RUN_LOOP_IS_NOT_SUPPORTED_DURING_THIS_OPERATION(a1);

    return UC::SignalsCore::notifyLost(a1 + 8);
  }

  return result;
}

uint64_t UC::DriverCore::setMode(void *a1, uint64_t a2, uint64_t a3)
{
  a1[10] = 0x7FFFFFFFFFFFFFFFLL;
  if (UCDebugTracingModeCheck)
  {
    v7 = UCDebugTracingModeCheck();
    if (v7)
    {
      v8 = v7;
      kdebug_trace();
      if (v8 >= 2)
      {
        getppid();
      }
    }
  }

  a1[5] = a2;
  a1[6] = a3;
  return a2;
}

double UCDriverInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *(a1 + 64) = 0u;
  *(a1 + 80) = vnegq_f64(v2);
  *(a1 + 56) = 0u;
  *(a1 + 8) = 0x8000000080000000;
  *(a1 + 72) = 2;
  *(a1 + 77) = 0;
  return result;
}

uint64_t UCDriverSetNextStep(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (UCDebugTracingModeCheck)
  {
    result = UCDebugTracingModeCheck();
    if (result)
    {
      v6 = result;
      result = kdebug_trace();
      if (v6 >= 2)
      {
        result = getppid();
      }
    }
  }

  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  return result;
}

uint64_t UCDriverSetMask(uint64_t result, int a2)
{
  atomic_fetch_xor_explicit((result + 8), (HIDWORD(*(result + 8)) ^ a2) << 32, memory_order_relaxed);
  if (UCDebugTracingModeCheck)
  {
    result = UCDebugTracingModeCheck();
    if (result)
    {
      v2 = result;
      result = kdebug_trace();
      if (v2 >= 2)
      {

        return getppid();
      }
    }
  }

  return result;
}

uint64_t UCDriverUpdateMask(uint64_t result, int a2, unsigned int a3)
{
  atomic_fetch_xor_explicit((result + 8), ((HIDWORD(*(result + 8)) & ~a2 | a3) ^ HIDWORD(*(result + 8))) << 32, memory_order_relaxed);
  if (UCDebugTracingModeCheck)
  {
    result = UCDebugTracingModeCheck();
    if (result)
    {
      v3 = result;
      result = kdebug_trace();
      if (v3 >= 2)
      {

        return getppid();
      }
    }
  }

  return result;
}