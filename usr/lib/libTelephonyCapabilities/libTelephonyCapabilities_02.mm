uint64_t capabilities::ipc::supportsUnifiedQMux(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF30))
  {
    byte_1ED7FDF0B = 0;
    __cxa_guard_release(&qword_1ED7FDF30);
  }

  return byte_1ED7FDF0B;
}

uint64_t capabilities::ipc::typeInternal(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF38))
  {
    if (TelephonyRadiosGetRadioVendor() - 1 >= 4)
    {
      v2 = 0;
    }

    else
    {
      v2 = 17;
    }

    dword_1ED7FDF10 = v2;
    __cxa_guard_release(&qword_1ED7FDF38);
  }

  return dword_1ED7FDF10;
}

uint64_t capabilities::ipc::typeInternalForVendor(int a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 17;
  }
}

uint64_t capabilities::ipc::supportsUnifiedQMuxV2(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF40))
  {
    byte_1ED7FDF0C = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FDF40);
  }

  return byte_1ED7FDF0C;
}

uint64_t capabilities::ipc::defaultHistorySizeMB(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF50))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 8;
    if (((RadioVendor - 1) & 0xFFFFFFFD) == 0)
    {
      v3 = 256;
    }

    qword_1ED7FDF48 = v3;
    __cxa_guard_release(&qword_1ED7FDF50);
  }

  return qword_1ED7FDF48;
}

uint64_t capabilities::ipc::defaultHistorySizeMBForVendor(int a1)
{
  if (((a1 - 1) & 0xFFFFFFFD) != 0)
  {
    return 8;
  }

  else
  {
    return 256;
  }
}

uint64_t capabilities::ipc::defaultLogLevel(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF58))
  {
    if (TelephonyRadiosGetRadioVendor() == 1)
    {
      v2 = 3;
    }

    else
    {
      v2 = -1;
    }

    dword_1ED7FDF14 = v2;
    __cxa_guard_release(&qword_1ED7FDF58);
  }

  return dword_1ED7FDF14;
}

uint64_t capabilities::ipc::defaultLogLevelForVendor(int a1)
{
  if (a1 == 1)
  {
    return 3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t capabilities::ipc::defaultMHIConfigPayloadSizeBytes(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF68))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 16;
    if (RadioVendor != 1)
    {
      v3 = -1;
    }

    qword_1ED7FDF60 = v3;
    __cxa_guard_release(&qword_1ED7FDF68);
  }

  return qword_1ED7FDF60;
}

uint64_t capabilities::ipc::defaultMHIConfigPayloadSizeBytesForVendor(int a1)
{
  if (a1 == 1)
  {
    return 16;
  }

  else
  {
    return -1;
  }
}

uint64_t capabilities::ipc::defaultPCIBinaryTraceHistorySizeMB(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF78))
  {
    v2 = TelephonyRadiosGetRadio() - 14;
    if (v2 > 5)
    {
      v3 = 64;
    }

    else
    {
      v3 = qword_1CAE603E8[v2];
    }

    qword_1ED7FDF70 = v3;
    __cxa_guard_release(&qword_1ED7FDF78);
  }

  return qword_1ED7FDF70;
}

uint64_t capabilities::ipc::defaultPCIBinaryTraceHistorySizeMBForRadio(int a1)
{
  if ((a1 - 14) > 5)
  {
    return 64;
  }

  else
  {
    return qword_1CAE603E8[a1 - 14];
  }
}

uint64_t capabilities::ipc::supportsCoalescing(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF80))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FDF0D = (Radio < 0x13) & (0x62000u >> Radio);
    __cxa_guard_release(&qword_1ED7FDF80);
  }

  return byte_1ED7FDF0D;
}

uint64_t capabilities::ipc::defaultPCIBinaryTraceBufferCount(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF90))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 4;
    if (RadioVendor == 4)
    {
      v3 = 1;
    }

    qword_1ED7FDF88 = v3;
    __cxa_guard_release(&qword_1ED7FDF90);
  }

  return qword_1ED7FDF88;
}

uint64_t capabilities::ipc::defaultPCIBinaryTraceBufferCountForVendor(int a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

void capabilities::ipc::ABPLogExtension(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FDF98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF98))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::ipc::sABPLogExtension(&xmmword_1ED7FDFA0, RadioVendor);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FDFA0, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FDF98);
  }

  if (byte_1ED7FDFB7 < 0)
  {
    v3 = xmmword_1ED7FDFA0;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FDFA0;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FDFB0;
  }
}

void *capabilities::ipc::sABPLogExtension(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  v4 = *(result + 23);
  if (a2 == 3)
  {
    if (v4 < 0)
    {
      result[1] = 11;
      result = *result;
    }

    else
    {
      *(result + 23) = 11;
    }

    *(result + 7) = 1701011826;
    *result = *".acipctrace";
    result = (result + 11);
  }

  else if (a2 == 4)
  {
    if (v4 < 0)
    {
      result[1] = 4;
      result = *result;
    }

    else
    {
      *(result + 23) = 4;
    }

    *result = 1852400174;
    result = (result + 4);
  }

  else if (v4 < 0)
  {
    result[1] = 0;
    result = *result;
  }

  else
  {
    *(result + 23) = 0;
  }

  *result = 0;
  return result;
}

void capabilities::ipc::asString(int a1@<W0>, std::string *a2@<X8>)
{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kNone");
    goto LABEL_20;
  }

  if ((a1 & 1) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kRouter"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 4) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kHSIC");
  std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  if ((a1 & 8) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kUART"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 0x10) != 0)
    {
LABEL_12:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kPCI");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 0x10) != 0)
  {
    goto LABEL_12;
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_20:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1CAE5701C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t capabilities::pci::controlChannelCount(capabilities::pci *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDFC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDFC8))
  {
    v2 = TelephonyRadiosGetRadioVendor() - 1;
    if (v2 > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE60418[v2];
    }

    qword_1ED7FDFC0 = v3;
    __cxa_guard_release(&qword_1ED7FDFC8);
  }

  return qword_1ED7FDFC0;
}

uint64_t capabilities::pci::controlChannelCountForVendor(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1CAE60418[a1 - 1];
  }
}

uint64_t capabilities::pci::supportsRxIOPool(capabilities::pci *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDFD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDFD0))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    _MergedGlobals_11 = (RadioVendor < 5) & (0x1Au >> RadioVendor);
    __cxa_guard_release(&qword_1ED7FDFD0);
  }

  return _MergedGlobals_11;
}

uint64_t capabilities::pci::supportsPCIAudio(capabilities::pci *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDFD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDFD8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FDFB9 = capabilities::pci::sSupportsPCIAudio(Product);
    __cxa_guard_release(&qword_1ED7FDFD8);
  }

  return byte_1ED7FDFB9;
}

uint64_t capabilities::pci::sSupportsPCIAudio(int a1)
{
  result = 1;
  if ((a1 - 114) > 0x3B || ((1 << (a1 - 114)) & 0xF3CC478F03C040FLL) == 0)
  {
    v3 = a1 - 200;
    if (v3 > 0x10 || ((1 << v3) & 0x1F1F7) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::trace::allowed(capabilities::trace *this)
{
  if (qword_1ED7FDFE8 != -1)
  {
    dispatch_once(&qword_1ED7FDFE8, &__block_literal_global_0);
  }

  return _MergedGlobals_12;
}

uint64_t ___ZN12capabilities5trace7allowedEv_block_invoke()
{
  result = TelephonyUtilTraceAllowed();
  if (result)
  {
    result = os_variant_uses_ephemeral_storage();
    v1 = result ^ 1;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_12 = v1;
  return result;
}

uint64_t capabilities::trace::supportsBasebandIPCTrace(capabilities::trace *this)
{
  if (qword_1ED7FDFF0 != -1)
  {
    dispatch_once(&qword_1ED7FDFF0, &__block_literal_global_4);
  }

  return byte_1ED7FDFE1;
}

uint64_t ___ZN12capabilities5trace24supportsBasebandIPCTraceEv_block_invoke(capabilities::traceinternal *a1)
{
  if (qword_1ED7FDFE8 != -1)
  {
    dispatch_once(&qword_1ED7FDFE8, &__block_literal_global_0);
  }

  if (_MergedGlobals_12 == 1)
  {
    result = capabilities::traceinternal::supportsBasebandIPCTrace(a1);
  }

  else
  {
    result = 0;
  }

  byte_1ED7FDFE1 = result;
  return result;
}

uint64_t capabilities::trace::supportsKernelPCITrace(capabilities::trace *this)
{
  if (qword_1ED7FDFF8 != -1)
  {
    dispatch_once(&qword_1ED7FDFF8, &__block_literal_global_7);
  }

  return byte_1ED7FDFE2;
}

uint64_t ___ZN12capabilities5trace22supportsKernelPCITraceEv_block_invoke(capabilities::traceinternal *a1)
{
  if (qword_1ED7FDFE8 != -1)
  {
    dispatch_once(&qword_1ED7FDFE8, &__block_literal_global_0);
  }

  if (_MergedGlobals_12 == 1)
  {
    result = capabilities::traceinternal::supportsKernelPCITrace(a1);
  }

  else
  {
    result = 0;
  }

  byte_1ED7FDFE2 = result;
  return result;
}

uint64_t capabilities::trace::supportsKernelPCIBinaryTrace(capabilities::trace *this)
{
  if (qword_1ED7FE000 != -1)
  {
    dispatch_once(&qword_1ED7FE000, &__block_literal_global_10);
  }

  return byte_1ED7FDFE3;
}

uint64_t ___ZN12capabilities5trace28supportsKernelPCIBinaryTraceEv_block_invoke(capabilities::traceinternal *a1)
{
  if (qword_1ED7FDFE8 != -1)
  {
    dispatch_once(&qword_1ED7FDFE8, &__block_literal_global_0);
  }

  if (_MergedGlobals_12 == 1)
  {
    result = capabilities::traceinternal::supportsKernelPCIBinaryTrace(a1);
  }

  else
  {
    result = 0;
  }

  byte_1ED7FDFE3 = result;
  return result;
}

uint64_t capabilities::trace::supportsDumpLogIndication(capabilities::trace *this)
{
  result = TelephonyUtilIsInternalBuild();
  if ((result & 1) != 0 || (result = TelephonyUtilIsCarrierBuild(), result))
  {

    return capabilities::traceinternal::supportsDumpLogIndication(result);
  }

  return result;
}

uint64_t capabilities::trace::enabledByDefault(capabilities::trace *this)
{
  if (qword_1ED7FE008 != -1)
  {
    dispatch_once(&qword_1ED7FE008, &__block_literal_global_13);
  }

  return byte_1ED7FDFE4;
}

uint64_t ___ZN12capabilities5trace16enabledByDefaultEv_block_invoke(capabilities::traceinternal *a1)
{
  if (qword_1ED7FDFE8 != -1)
  {
    dispatch_once(&qword_1ED7FDFE8, &__block_literal_global_0);
  }

  if (_MergedGlobals_12 == 1)
  {
    result = capabilities::traceinternal::enabledByDefault(a1);
  }

  else
  {
    result = 0;
  }

  byte_1ED7FDFE4 = result;
  return result;
}

uint64_t capabilities::trace::supportsHighTPutByDefault(capabilities::trace *this)
{
  if (capabilities::traceinternal::supportsHighTPutByDefault(this))
  {
    if (qword_1ED7FE008 != -1)
    {
      dispatch_once(&qword_1ED7FE008, &__block_literal_global_13);
    }

    v1 = byte_1ED7FDFE4;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t capabilities::trace::supportsDataLoggingByDefault(capabilities::trace *this)
{
  if (capabilities::traceinternal::supportsDataLoggingByDefault(this))
  {
    if (qword_1ED7FE008 != -1)
    {
      dispatch_once(&qword_1ED7FE008, &__block_literal_global_13);
    }

    v1 = byte_1ED7FDFE4;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void *capabilities::trace::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A61C8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = (&off_1E83A6318)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t capabilities::programmer::connectTimeout(capabilities::programmer *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE018))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 10000;
    if ((RadioVendor - 1) >= 4)
    {
      v3 = 0;
    }

    _MergedGlobals_13 = v3;
    __cxa_guard_release(&qword_1ED7FE018);
  }

  return _MergedGlobals_13;
}

uint64_t capabilities::programmer::connectTimeoutForVendor(int a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 10000;
  }
}

uint64_t capabilities::programmer::connectAttemptCount(capabilities::programmer *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE028))
  {
    qword_1ED7FE020 = 8 * (TelephonyRadiosGetRadioVendor() - 1 < 4);
    __cxa_guard_release(&qword_1ED7FE028);
  }

  return qword_1ED7FE020;
}

uint64_t capabilities::programmer::commandTimeout(capabilities::programmer *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE038))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 1000;
    if ((RadioVendor - 1) >= 4)
    {
      v3 = 0;
    }

    qword_1ED7FE030 = v3;
    __cxa_guard_release(&qword_1ED7FE038);
  }

  return qword_1ED7FE030;
}

uint64_t capabilities::programmer::commandTimeoutForVendor(int a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 1000;
  }
}

uint64_t capabilities::radio::radioUnknown(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE068))
  {
    _MergedGlobals_14 = TelephonyRadiosGetRadioVendor() == 0;
    __cxa_guard_release(&qword_1ED7FE068);
  }

  return _MergedGlobals_14;
}

uint64_t capabilities::radio::vendor(capabilities::radio *this)
{
  {
    capabilities::radio::vendor(void)::ret = TelephonyRadiosGetRadioVendor();
  }

  return capabilities::radio::vendor(void)::ret;
}

uint64_t capabilities::radio::type(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE070))
  {
    dword_1ED7FE058 = TelephonyRadiosGetRadio();
    __cxa_guard_release(&qword_1ED7FE070);
  }

  return dword_1ED7FE058;
}

uint64_t capabilities::radio::product(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE078))
  {
    dword_1ED7FE05C = TelephonyRadiosGetProduct();
    __cxa_guard_release(&qword_1ED7FE078);
  }

  return dword_1ED7FE05C;
}

uint64_t capabilities::radio::supportsAccessoryTypeDetectionForARTD(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE080, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FE080);
    if (v2)
    {
      byte_1ED7FE041 = capabilities::radio::supportsAccessoryDetectionForARTD(v2);
      __cxa_guard_release(&qword_1ED7FE080);
    }
  }

  return byte_1ED7FE041;
}

uint64_t capabilities::radio::maverick(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE088, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE088))
  {
    byte_1ED7FE042 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FE088);
  }

  return byte_1ED7FE042;
}

uint64_t capabilities::radio::C2KDevice(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE090))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FE043 = (Radio < 0x14) & (0xEFFAEu >> Radio);
    __cxa_guard_release(&qword_1ED7FE090);
  }

  return byte_1ED7FE043;
}

uint64_t capabilities::radio::safeResetTime(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE0A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0A0))
  {
    v2 = TelephonyRadiosGetRadioVendor() - 1;
    if (v2 > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE60438[v2];
    }

    qword_1ED7FE098 = v3;
    __cxa_guard_release(&qword_1ED7FE0A0);
  }

  return qword_1ED7FE098;
}

uint64_t capabilities::radio::safeResetTimeForVendor(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1CAE60438[a1 - 1];
  }
}

uint64_t capabilities::radio::mav20Plus(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE0A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0A8))
  {
    byte_1ED7FE044 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FE0A8);
  }

  return byte_1ED7FE044;
}

uint64_t capabilities::radio::supportsBasebandStateController(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE0B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0B0))
  {
    byte_1ED7FE045 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FE0B0);
  }

  return byte_1ED7FE045;
}

uint64_t capabilities::radio::supportsDataService(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0B8))
  {
    byte_1ED7FE046 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FE0B8);
  }

  return byte_1ED7FE046;
}

uint64_t capabilities::radio::supportsRemoteFilesystem(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE0C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0C0))
  {
    byte_1ED7FE047 = TelephonyRadiosGetRadioVendor() - 1 < 4;
    __cxa_guard_release(&qword_1ED7FE0C0);
  }

  return byte_1ED7FE047;
}

uint64_t capabilities::radio::defaultControlMsgTimeout(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE0D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0D0))
  {
    v2 = TelephonyRadiosGetRadioVendor() - 1;
    if (v2 > 3)
    {
      v3 = 5000;
    }

    else
    {
      v3 = qword_1CAE60458[v2];
    }

    qword_1ED7FE0C8 = v3;
    __cxa_guard_release(&qword_1ED7FE0D0);
  }

  return qword_1ED7FE0C8;
}

uint64_t capabilities::radio::defaultControlMsgTimeoutForVendor(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 5000;
  }

  else
  {
    return qword_1CAE60458[a1 - 1];
  }
}

uint64_t capabilities::radio::supportsMultiClientAWD(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE0D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0D8))
  {
    byte_1ED7FE048 = TelephonyRadiosGetRadioVendor() - 1 < 4;
    __cxa_guard_release(&qword_1ED7FE0D8);
  }

  return byte_1ED7FE048;
}

uint64_t capabilities::radio::getPacketFilteringVersionForVendor(int a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

void capabilities::radio::firmwarePath(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FE0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0E8))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::radio::sFirmwarePath(&xmmword_1ED7FE1B0, Radio);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FE1B0, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FE0E8);
  }

  if (byte_1ED7FE1C7 < 0)
  {
    v3 = xmmword_1ED7FE1B0;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FE1B0;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FE1C0;
  }
}

std::string *capabilities::radio::sFirmwarePath(std::string *a1, int a2)
{
  v3 = a1;
  memset(a1, 170, sizeof(std::string));
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  v5 = a2 - 4;
  if (a2 - 4) < 0x10 && ((0xFFF9u >> v5))
  {
    return std::string::__assign_external(v3, off_1E83A61E0[v5], qword_1CAE60478[v5]);
  }

  if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
  {
    v3->__r_.__value_.__l.__size_ = 0;
    v3 = v3->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v3->__r_.__value_.__s + 23) = 0;
  }

  v3->__r_.__value_.__s.__data_[0] = 0;
  return result;
}

void sub_1CAE58220(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void capabilities::radio::firmwarePrefix(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FE0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0F0))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::radio::sFirmwarePrefix(&xmmword_1ED7FE1C8, Radio);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FE1C8, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FE0F0);
  }

  if (byte_1ED7FE1DF < 0)
  {
    v3 = xmmword_1ED7FE1C8;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FE1C8;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FE1D8;
  }
}

void *capabilities::radio::sFirmwarePrefix(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  v4 = *(result + 23);
  if (a2 > 11)
  {
    if (a2 > 15)
    {
      switch(a2)
      {
        case 16:
          if (v4 < 0)
          {
            result[1] = 6;
            result = *result;
          }

          else
          {
            *(result + 23) = 6;
          }

          *(result + 2) = 11573;
          v6 = 843858244;
          goto LABEL_67;
        case 17:
          if (v4 < 0)
          {
            result[1] = 6;
            result = *result;
          }

          else
          {
            *(result + 23) = 6;
          }

          v7 = 11572;
          break;
        case 18:
          if (v4 < 0)
          {
            result[1] = 6;
            result = *result;
          }

          else
          {
            *(result + 23) = 6;
          }

          v7 = 11573;
          break;
        default:
          goto LABEL_39;
      }
    }

    else
    {
      switch(a2)
      {
        case 12:
          if (v4 < 0)
          {
            result[1] = 6;
            result = *result;
          }

          else
          {
            *(result + 23) = 6;
          }

          v7 = 11570;
          break;
        case 13:
          if (v4 < 0)
          {
            result[1] = 6;
            result = *result;
          }

          else
          {
            *(result + 23) = 6;
          }

          v7 = 11571;
          break;
        case 14:
          if (v4 < 0)
          {
            result[1] = 5;
            result = *result;
          }

          else
          {
            *(result + 23) = 5;
          }

          *(result + 4) = 45;
          *result = 827608649;
          result = (result + 5);
          goto LABEL_68;
        default:
LABEL_39:
          if (v4 < 0)
          {
            result[1] = 0;
            result = *result;
          }

          else
          {
            *(result + 23) = 0;
          }

          goto LABEL_68;
      }
    }

LABEL_66:
    *(result + 2) = v7;
    v6 = 846618957;
    goto LABEL_67;
  }

  if (a2 > 8)
  {
    if (a2 == 9)
    {
      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v7 = 11568;
    }

    else
    {
      if (a2 != 10)
      {
        if (v4 < 0)
        {
          result[1] = 6;
          result = *result;
        }

        else
        {
          *(result + 23) = 6;
        }

        *(result + 2) = 11568;
        v6 = 863396173;
        goto LABEL_67;
      }

      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v7 = 11569;
    }

    goto LABEL_66;
  }

  if (a2 != 4)
  {
    if (a2 == 7)
    {
      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v5 = 11576;
      goto LABEL_59;
    }

    if (a2 == 8)
    {
      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v5 = 11577;
LABEL_59:
      *(result + 2) = v5;
      v6 = 826622793;
LABEL_67:
      *result = v6;
      result = (result + 6);
      goto LABEL_68;
    }

    goto LABEL_39;
  }

  if (v4 < 0)
  {
    result[1] = 7;
    result = *result;
  }

  else
  {
    *(result + 23) = 7;
  }

  *(result + 3) = 758657363;
  *result = 1397310025;
  result = (result + 7);
LABEL_68:
  *result = 0;
  return result;
}

void capabilities::radio::firmwarePathSuffix(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FE0F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE0F8))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::radio::sFirmwarePathSuffix(&xmmword_1ED7FE1E0, Radio);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FE1E0, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FE0F8);
  }

  if (byte_1ED7FE1F7 < 0)
  {
    v3 = xmmword_1ED7FE1E0;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FE1E0;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FE1F0;
  }
}

void *capabilities::radio::sFirmwarePathSuffix(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  if (a2 > 12)
  {
    if (a2 > 16)
    {
      if (a2 == 17)
      {
        if (*(result + 23) < 0)
        {
          result[1] = 6;
          result = *result;
        }

        else
        {
          *(result + 23) = 6;
        }

        v4 = 13362;
        goto LABEL_55;
      }

      if (a2 == 18)
      {
        if (*(result + 23) < 0)
        {
          result[1] = 6;
          result = *result;
        }

        else
        {
          *(result + 23) = 6;
        }

        v4 = 13618;
        goto LABEL_55;
      }
    }

    else if ((a2 - 14) >= 3 && a2 == 13)
    {
      if (*(result + 23) < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v4 = 13106;
      goto LABEL_55;
    }

LABEL_19:
    if (*(result + 23) < 0)
    {
      result[1] = 0;
      result = *result;
    }

    else
    {
      *(result + 23) = 0;
    }

    goto LABEL_60;
  }

  if (a2 > 8)
  {
    if (a2 > 10)
    {
      if (a2 == 11)
      {
        if (*(result + 23) < 0)
        {
          result[1] = 6;
          result = *result;
        }

        else
        {
          *(result + 23) = 6;
        }

        v4 = 12339;
      }

      else
      {
        if (*(result + 23) < 0)
        {
          result[1] = 6;
          result = *result;
        }

        else
        {
          *(result + 23) = 6;
        }

        v4 = 12850;
      }
    }

    else if (a2 == 9)
    {
      if (*(result + 23) < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v4 = 12338;
    }

    else
    {
      if (*(result + 23) < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v4 = 12594;
    }

LABEL_55:
    *(result + 2) = v4;
    v6 = 1986088239;
LABEL_59:
    *result = v6;
    result = (result + 6);
    goto LABEL_60;
  }

  if (a2 != 4)
  {
    if (a2 == 7)
    {
      if (*(result + 23) < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v5 = 14385;
      goto LABEL_58;
    }

    if (a2 == 8)
    {
      if (*(result + 23) < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      v5 = 14641;
LABEL_58:
      *(result + 2) = v5;
      v6 = 1162037551;
      goto LABEL_59;
    }

    goto LABEL_19;
  }

  if (*(result + 23) < 0)
  {
    result[1] = 7;
    result = *result;
  }

  else
  {
    *(result + 23) = 7;
  }

  *(result + 3) = 942756681;
  *result = 1229080879;
  result = (result + 7);
LABEL_60:
  *result = 0;
  return result;
}

void capabilities::radio::radioType(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FE100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE100))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::radio::sRadioType(&xmmword_1ED7FE1F8, Radio);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FE1F8, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FE100);
  }

  if (byte_1ED7FE20F < 0)
  {
    v3 = xmmword_1ED7FE1F8;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FE1F8;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FE208;
  }
}

_BYTE *capabilities::radio::sRadioType(void *a1, int a2)
{
  memset(a1, 170, 24);
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, "Unknown");
  v4 = *(v3 + 23);
  if (a2 > 11)
  {
    if (a2 > 15)
    {
      switch(a2)
      {
        case 16:
          if (v4 < 0)
          {
            v3[1] = 3;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 3;
          }

          *(v3 + 2) = 53;
          v6 = 12868;
          goto LABEL_67;
        case 17:
          if (v4 < 0)
          {
            v3[1] = 3;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 3;
          }

          v7 = 52;
          break;
        case 18:
          if (v4 < 0)
          {
            v3[1] = 3;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 3;
          }

          v7 = 53;
          break;
        default:
LABEL_39:
          if (v4 < 0)
          {
            v3[1] = 7;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 7;
          }

          *(v3 + 3) = 1853321070;
          *v3 = 1852534357;
          result = v3 + 7;
          goto LABEL_68;
      }
    }

    else
    {
      switch(a2)
      {
        case 12:
          if (v4 < 0)
          {
            v3[1] = 3;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 3;
          }

          v7 = 50;
          break;
        case 13:
          if (v4 < 0)
          {
            v3[1] = 3;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 3;
          }

          v7 = 51;
          break;
        case 14:
          if (v4 < 0)
          {
            v3[1] = 3;
            v3 = *v3;
          }

          else
          {
            *(v3 + 23) = 3;
          }

          *(v3 + 2) = 49;
          v6 = 20041;
          goto LABEL_67;
        default:
          goto LABEL_39;
      }
    }

LABEL_66:
    *(v3 + 2) = v7;
    v6 = 12877;
    goto LABEL_67;
  }

  if (a2 > 8)
  {
    if (a2 == 9)
    {
      if (v4 < 0)
      {
        v3[1] = 3;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 3;
      }

      v7 = 48;
    }

    else
    {
      if (a2 != 10)
      {
        if (v4 < 0)
        {
          v3[1] = 3;
          v3 = *v3;
        }

        else
        {
          *(v3 + 23) = 3;
        }

        *(v3 + 2) = 48;
        v6 = 13133;
        goto LABEL_67;
      }

      if (v4 < 0)
      {
        v3[1] = 3;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 3;
      }

      v7 = 49;
    }

    goto LABEL_66;
  }

  if (a2 != 4)
  {
    if (a2 == 7)
    {
      if (v4 < 0)
      {
        v3[1] = 3;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 3;
      }

      v5 = 56;
      goto LABEL_59;
    }

    if (a2 == 8)
    {
      if (v4 < 0)
      {
        v3[1] = 3;
        v3 = *v3;
      }

      else
      {
        *(v3 + 23) = 3;
      }

      v5 = 57;
LABEL_59:
      *(v3 + 2) = v5;
      v6 = 12617;
LABEL_67:
      *v3 = v6;
      result = v3 + 3;
      goto LABEL_68;
    }

    goto LABEL_39;
  }

  if (v4 < 0)
  {
    v3[1] = 4;
    v3 = *v3;
  }

  else
  {
    *(v3 + 23) = 4;
  }

  *v3 = 942752329;
  result = v3 + 4;
LABEL_68:
  *result = 0;
  return result;
}

uint64_t capabilities::radio::chipID(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE108))
  {
    Radio = TelephonyRadiosGetRadio();
    dword_1ED7FE064 = capabilities::radio::sChipID(Radio);
    __cxa_guard_release(&qword_1ED7FE108);
  }

  return dword_1ED7FE064;
}

uint64_t capabilities::radio::sChipID(int a1)
{
  if ((a1 - 4) > 0xF)
  {
    return 0;
  }

  else
  {
    return dword_1CAE604F8[a1 - 4];
  }
}

uint64_t capabilities::radio::supportsDeviceMaterial(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE110))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FE049 = v4;
    __cxa_guard_release(&qword_1ED7FE110);
  }

  return byte_1ED7FE049;
}

uint64_t capabilities::radio::ice(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE118))
  {
    byte_1ED7FE04A = TelephonyRadiosGetRadioVendor() == 2;
    __cxa_guard_release(&qword_1ED7FE118);
  }

  return byte_1ED7FE04A;
}

uint64_t capabilities::radio::supportsBBTraceV2(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE120))
  {
    byte_1ED7FE04B = ((TelephonyRadiosGetRadioVendor() - 2) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FE120);
  }

  return byte_1ED7FE04B;
}

uint64_t capabilities::radio::supportsAutomaticRadarFiling(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE128))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FE04C = capabilities::radio::sSupportsAutomaticRadarFiling(Product);
    __cxa_guard_release(&qword_1ED7FE128);
  }

  return byte_1ED7FE04C;
}

uint64_t capabilities::radio::sSupportsAutomaticRadarFiling(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 5:
    case 6:
    case 7:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 58:
    case 59:
    case 60:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 86:
    case 87:
    case 88:
    case 93:
    case 94:
    case 95:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 143:
    case 149:
    case 151:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::radio::supportsAccessoryTypeDetectionForRF(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE130))
  {
    byte_1ED7FE04D = TelephonyRadiosGetRadio() - 7 < 2;
    __cxa_guard_release(&qword_1ED7FE130);
  }

  return byte_1ED7FE04D;
}

uint64_t capabilities::radio::supportsAccessoryDetectionForARTD(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE138))
  {
    byte_1ED7FE04E = TelephonyRadiosGetRadio() - 7 < 2;
    __cxa_guard_release(&qword_1ED7FE138);
  }

  return byte_1ED7FE04E;
}

uint64_t capabilities::radio::supportsAccessoryDetection(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE140))
  {
    byte_1ED7FE04F = TelephonyRadiosGetRadio() - 7 < 2;
    __cxa_guard_release(&qword_1ED7FE140);
  }

  return byte_1ED7FE04F;
}

uint64_t capabilities::radio::QMuxPendingRequestLimitCount(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE150))
  {
    v2 = TelephonyRadiosGetRadio() - 9;
    if (v2 > 9)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE60538[v2];
    }

    qword_1ED7FE148 = v3;
    __cxa_guard_release(&qword_1ED7FE150);
  }

  return qword_1ED7FE148;
}

uint64_t capabilities::radio::QMuxPendingRequestLimitCountForRadio(int a1)
{
  if ((a1 - 9) > 9)
  {
    return 0;
  }

  else
  {
    return qword_1CAE60538[a1 - 9];
  }
}

uint64_t capabilities::radio::supportsFactoryCalibrationV2(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE158))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FE050 = capabilities::ct::sSupportsEmergencyQMIExtensions(Product);
    __cxa_guard_release(&qword_1ED7FE158);
  }

  return byte_1ED7FE050;
}

uint64_t capabilities::radio::mav21Plus(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE160))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FE051 = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FE160);
  }

  return byte_1ED7FE051;
}

uint64_t capabilities::radio::supportsLowLatencyData(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE168))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FE052 = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FE168);
  }

  return byte_1ED7FE052;
}

uint64_t capabilities::radio::supportsRel16(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE170))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FE053 = (Radio < 0x13) & (0x63000u >> Radio);
    __cxa_guard_release(&qword_1ED7FE170);
  }

  return byte_1ED7FE053;
}

uint64_t capabilities::radio::dal(capabilities::radio *this)
{
  {
    capabilities::radio::dal(void)::ret = TelephonyRadiosGetRadioVendor() == 4;
  }

  return capabilities::radio::dal(void)::ret;
}

uint64_t capabilities::radio::initium(capabilities::radio *this)
{
  {
    capabilities::radio::initium(void)::ret = TelephonyRadiosGetRadioVendor() == 3;
  }

  return capabilities::radio::initium(void)::ret;
}

uint64_t capabilities::radio::ARITransportTimeout(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE180))
  {
    Product = TelephonyRadiosGetProduct();
    v3 = 10000;
    v4 = 1 << (Product + 56);
    v5 = 300000;
    if ((v4 & 0x8102) == 0)
    {
      v5 = 10000;
    }

    if ((v4 & 0x4081) != 0)
    {
      v6 = 300000;
    }

    else
    {
      v6 = v5;
    }

    if ((Product - 200) <= 0xF)
    {
      v3 = v6;
    }

    qword_1ED7FE178 = v3;
    __cxa_guard_release(&qword_1ED7FE180);
  }

  return qword_1ED7FE178;
}

uint64_t capabilities::radio::ARITransportTimeoutForProduct(int a1)
{
  v1 = 1 << (a1 + 56);
  v2 = 300000;
  if ((v1 & 0x8102) == 0)
  {
    v2 = 10000;
  }

  if ((v1 & 0x4081) != 0)
  {
    v3 = 300000;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 - 200) <= 0xF)
  {
    return v3;
  }

  else
  {
    return 10000;
  }
}

uint64_t capabilities::radio::ARITransportReadSizeBytes(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE190))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 4096;
    if (RadioVendor == 3)
    {
      v3 = 0x4000;
    }

    qword_1ED7FE188 = v3;
    __cxa_guard_release(&qword_1ED7FE190);
  }

  return qword_1ED7FE188;
}

uint64_t capabilities::radio::ARITransportReadSizeBytesForVendor(int a1)
{
  if (a1 == 3)
  {
    return 0x4000;
  }

  else
  {
    return 4096;
  }
}

uint64_t capabilities::radio::ARITransportReadCount(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE1A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE1A0))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 4;
    if (RadioVendor == 3)
    {
      v3 = 16;
    }

    qword_1ED7FE198 = v3;
    __cxa_guard_release(&qword_1ED7FE1A0);
  }

  return qword_1ED7FE198;
}

uint64_t capabilities::radio::ARITransportReadCountForVendor(int a1)
{
  if (a1 == 3)
  {
    return 16;
  }

  else
  {
    return 4;
  }
}

uint64_t capabilities::radio::mav25Plus(capabilities::radio *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE1A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE1A8))
  {
    byte_1ED7FE054 = TelephonyRadiosGetRadio() == 18;
    __cxa_guard_release(&qword_1ED7FE1A8);
  }

  return byte_1ED7FE054;
}

void *capabilities::radio::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A6260[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

uint64_t capabilities::updater::shouldAllowUnfused(capabilities::updater *this)
{
  HardwareConfig = TelephonyRadiosGetHardwareConfig();
  if (HardwareConfig != 2)
  {
    return 1;
  }

  return capabilities::updaterinternal::shouldAllowUnfused(HardwareConfig);
}

uint64_t capabilities::updater::supportsAudioOverPCIe(capabilities::updater *this)
{
  if (capabilities::updaterinternal::supportsAudioOverPCIe(this))
  {
    if (qword_1ED7FE218 != -1)
    {
      dispatch_once(&qword_1ED7FE218, &__block_literal_global_1);
    }

    v1 = _MergedGlobals_15;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ___ZN12capabilities7updater21supportsAudioOverPCIeEv_block_invoke()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceNameMatching("Baseband Voice");
  result = IOServiceGetMatchingService(v0, v1);
  _MergedGlobals_15 = result == 0;
  if (result)
  {

    return IOObjectRelease(result);
  }

  return result;
}

uint64_t capabilities::updater::ICENVMFSizeBytes(capabilities::updaterinternal *a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return capabilities::updaterinternal::dynamicICENVMFSizeBytes(a1);
  }

  return 0x20000;
}

uint64_t capabilities::updater::EUICCCertIDSizeBytes(capabilities::updater *this)
{
  if (this <= 4)
  {
    return 4;
  }

  else
  {
    return 20;
  }
}

void capabilities::radio::personalizedFirmwarePath(void **a1@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(a1, 170, 24);
  v3 = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  capabilities::radio::vendor(v3);
  v4 = operator new[](0x400uLL);
  bzero(v4, 0x400uLL);
  v5 = lookupPathForPersonalizedData();
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v4;
      _os_log_error_impl(&dword_1CAE37000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MSU error: 0x%lx, FW base path: %{public}s", &buf, 0x16u);
    }

    goto LABEL_63;
  }

  memset(&buf, 170, sizeof(buf));
  v6 = std::string::basic_string[abi:ne200100]<0>(&buf, v4);
  v7 = capabilities::radio::initium(v6);
  if (v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Baseband");
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v7 = std::string::append(&buf, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (capabilities::radio::dal(v7))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Baseband");
    v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::string::append(&buf, v10, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  memset(&__p, 170, sizeof(__p));
  capabilities::radio::firmwarePathSuffix(&__p);
  v12 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  v16 = v15 + size;
  if (v15 + size >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 > 0x16)
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    *&v29[8] = v15 + size;
    v30 = v17 | 0x8000000000000000;
    *v29 = v18;
    if (!size)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v18 = v29;
  HIBYTE(v30) = v15 + size;
  if (size)
  {
LABEL_36:
    if (v12 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    memmove(v18, p_buf, size);
  }

LABEL_40:
  v20 = &v18[size];
  if (v15)
  {
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(v20, p_p, v15);
  }

  v20[v15] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *v29;
  a1[2] = v30;
  v22 = *(a1 + 23);
  if (v22 < 0)
  {
    v23 = *a1;
  }

  if (v22 >= 0)
  {
    v24 = *(a1 + 23);
  }

  else
  {
    v24 = a1[1];
  }

  if (ctu::fs::file_exists())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = *a1;
      }

      *v29 = 136446210;
      *&v29[4] = v25;
      _os_log_impl(&dword_1CAE37000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "FW path %{public}s exists", v29, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 23) >= 0)
    {
      v27 = a1;
    }

    else
    {
      v27 = *a1;
    }

    *v29 = 136446210;
    *&v29[4] = v27;
    _os_log_error_impl(&dword_1CAE37000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "FW path %{public}s does not exist (did you remember to enable update baseband?)", v29, 0xCu);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_63:
  operator delete[](v4);
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1CAE59FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  operator delete[](v25);
  if (*(v26 + 23) < 0)
  {
    operator delete(*v26);
  }

  _Unwind_Resume(a1);
}

uint64_t capabilities::trace::getCompressionMode(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE230))
  {
    if (TelephonyRadiosGetRadio() == 15)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    dword_1ED7FE228 = v2;
    __cxa_guard_release(&qword_1ED7FE230);
  }

  return dword_1ED7FE228;
}

uint64_t capabilities::trace::getCompressionModeForRadio(int a1)
{
  if (a1 == 15)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t capabilities::trace::defaultHistorySizeMB(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE240))
  {
    Radio = TelephonyRadiosGetRadio();
    qword_1ED7FE238 = capabilities::trace::sDefaultHistorySizeMB(Radio);
    __cxa_guard_release(&qword_1ED7FE240);
  }

  return qword_1ED7FE238;
}

uint64_t capabilities::trace::sDefaultHistorySizeMB(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 256;
  }

  else
  {
    return qword_1CAE60598[a1 - 1];
  }
}

uint64_t capabilities::trace::defaultMemoryFileMaxCount(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE250))
  {
    v2 = TelephonyRadiosGetRadio() - 1;
    if (v2 > 0x12)
    {
      v3 = 4;
    }

    else
    {
      v3 = qword_1CAE60630[v2];
    }

    qword_1ED7FE248 = v3;
    __cxa_guard_release(&qword_1ED7FE250);
  }

  return qword_1ED7FE248;
}

uint64_t capabilities::trace::defaultMemoryFileMaxCountForRadio(int a1)
{
  if ((a1 - 1) > 0x12)
  {
    return 4;
  }

  else
  {
    return qword_1CAE60630[a1 - 1];
  }
}

uint64_t capabilities::trace::supportsErrorHandling(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE258))
  {
    _MergedGlobals_16 = TelephonyRadiosGetRadioVendor() - 3 < 2;
    __cxa_guard_release(&qword_1ED7FE258);
  }

  return _MergedGlobals_16;
}

uint64_t capabilities::trace::supportsCoredumpCrashReasonOnCustomerBuild(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE260))
  {
    byte_1ED7FE221 = TelephonyRadiosGetRadioVendor() - 3 < 2;
    __cxa_guard_release(&qword_1ED7FE260);
  }

  return byte_1ED7FE221;
}

uint64_t capabilities::trace::defaultPeakBandwidthMbps(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE270))
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    v3 = 50;
    if (RadioVendor == 3)
    {
      v3 = 256;
    }

    qword_1ED7FE268 = v3;
    __cxa_guard_release(&qword_1ED7FE270);
  }

  return qword_1ED7FE268;
}

uint64_t capabilities::trace::defaultPeakBandwidthMbpsForVendor(int a1)
{
  if (a1 == 3)
  {
    return 256;
  }

  else
  {
    return 50;
  }
}

uint64_t capabilities::trace::supportsDataRateObserver(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE278))
  {
    byte_1ED7FE222 = TelephonyRadiosGetRadioVendor() - 3 < 2;
    __cxa_guard_release(&qword_1ED7FE278);
  }

  return byte_1ED7FE222;
}

uint64_t capabilities::trace::supportsDaemonHangDetection(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE280))
  {
    byte_1ED7FE223 = TelephonyRadiosGetRadioVendor() == 4;
    __cxa_guard_release(&qword_1ED7FE280);
  }

  return byte_1ED7FE223;
}

uint64_t capabilities::trace::defaultSleepTraceMode(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE288))
  {
    v2 = TelephonyRadiosGetProduct() - 156;
    if (v2 <= 0x3C)
    {
      if (((1 << v2) & 0xC1F700000000000) != 0)
      {
        v3 = 1;
        goto LABEL_9;
      }

      if (((1 << v2) & 0x120000000003C831) != 0)
      {
        v3 = 2;
LABEL_9:
        dword_1ED7FE22C = v3;
        __cxa_guard_release(&qword_1ED7FE288);
        return dword_1ED7FE22C;
      }
    }

    v3 = 0;
    goto LABEL_9;
  }

  return dword_1ED7FE22C;
}

uint64_t capabilities::trace::defaultSleepTraceModeForProduct(int a1)
{
  v1 = a1 + 100;
  if ((a1 - 156) <= 0x3C)
  {
    if (((1 << v1) & 0xC1F700000000000) != 0)
    {
      return 1;
    }

    if (((1 << v1) & 0x120000000003C831) != 0)
    {
      return 2;
    }
  }

  return 0;
}

uint64_t capabilities::trace::defaultFileSizeBytes(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE298))
  {
    v2 = TelephonyRadiosGetRadio() - 14;
    if (v2 > 5)
    {
      v3 = 0x100000;
    }

    else
    {
      v3 = qword_1CAE606C8[v2];
    }

    qword_1ED7FE290 = v3;
    __cxa_guard_release(&qword_1ED7FE298);
  }

  return qword_1ED7FE290;
}

uint64_t capabilities::trace::defaultFileSizeBytesForRadio(int a1)
{
  if ((a1 - 14) > 5)
  {
    return 0x100000;
  }

  else
  {
    return qword_1CAE606C8[a1 - 14];
  }
}

uint64_t capabilities::trace::supportsDuplicateSignatureDetection(capabilities::trace *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2A0))
  {
    byte_1ED7FE224 = TelephonyRadiosGetRadioVendor() != 3;
    __cxa_guard_release(&qword_1ED7FE2A0);
  }

  return byte_1ED7FE224;
}

uint64_t capabilities::traceinternal::supportsBasebandIPCTrace(capabilities::traceinternal *this)
{
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::traceinternal::supportsBasebandIPCTrace(void)::ret = (RadioVendor < 5) & (0x16u >> RadioVendor);
  }

  return capabilities::traceinternal::supportsBasebandIPCTrace(void)::ret;
}

uint64_t capabilities::traceinternal::supportsKernelPCITrace(capabilities::traceinternal *this)
{
  {
    capabilities::traceinternal::supportsKernelPCITrace(void)::ret = TelephonyRadiosGetRadioVendor() - 1 < 2;
  }

  return capabilities::traceinternal::supportsKernelPCITrace(void)::ret;
}

uint64_t capabilities::traceinternal::supportsDumpLogIndication(capabilities::traceinternal *this)
{
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::traceinternal::supportsDumpLogIndication(void)::ret = (Radio < 0x13) & (0x63FAEu >> Radio);
  }

  return capabilities::traceinternal::supportsDumpLogIndication(void)::ret;
}

uint64_t capabilities::traceinternal::enabledByDefault(capabilities::traceinternal *this)
{
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::traceinternal::enabledByDefault(void)::ret = capabilities::traceinternal::sEnabledByDefault(Product);
  }

  return capabilities::traceinternal::enabledByDefault(void)::ret;
}

uint64_t capabilities::traceinternal::sEnabledByDefault(int a1)
{
  v1 = a1 - 33;
  result = 1;
  switch(v1)
  {
    case 0:
    case 5:
    case 19:
    case 20:
    case 24:
    case 29:
    case 30:
    case 31:
    case 35:
    case 40:
    case 66:
    case 67:
    case 68:
    case 69:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 83:
    case 84:
    case 87:
    case 90:
    case 91:
    case 92:
    case 93:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 167:
    case 168:
    case 169:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::traceinternal::supportsHighTPutByDefault(capabilities::traceinternal *this)
{
  {
    capabilities::traceinternal::supportsHighTPutByDefault(void)::ret = TelephonyRadiosGetRadioVendor() == 1;
  }

  return capabilities::traceinternal::supportsHighTPutByDefault(void)::ret;
}

uint64_t capabilities::traceinternal::supportsDataLoggingByDefault(capabilities::traceinternal *this)
{
  {
    capabilities::traceinternal::supportsDataLoggingByDefault(void)::ret = TelephonyRadiosGetRadioVendor() == 1;
  }

  return capabilities::traceinternal::supportsDataLoggingByDefault(void)::ret;
}

uint64_t capabilities::traceinternal::supportsKernelPCIBinaryTrace(capabilities::traceinternal *this)
{
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::traceinternal::supportsKernelPCIBinaryTrace(void)::ret = (Radio < 0x14) & (0x9C090u >> Radio);
  }

  return capabilities::traceinternal::supportsKernelPCIBinaryTrace(void)::ret;
}

uint64_t capabilities::txpower::supportsPowerSourceDetection(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2B8))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    _MergedGlobals_17 = v4;
    __cxa_guard_release(&qword_1ED7FE2B8);
  }

  return _MergedGlobals_17;
}

uint64_t capabilities::txpower::supportsWristDetection(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2C0))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FE2A9 = v4;
    __cxa_guard_release(&qword_1ED7FE2C0);
  }

  return byte_1ED7FE2A9;
}

uint64_t capabilities::txpower::userSpaceCPMSVariant(capabilities::txpower *this)
{
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::txpower::userSpaceCPMSVariant(void)::ret = (Radio < 0x11) & (0x11F10u >> Radio);
  }

  return capabilities::txpower::userSpaceCPMSVariant(void)::ret;
}

void capabilities::txpower::settingsPlistName(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FE2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2C8))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::txpower::sSettingsPlistName(&xmmword_1ED7FE310, Radio);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FE310, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FE2C8);
  }

  if (byte_1ED7FE327 < 0)
  {
    v3 = xmmword_1ED7FE310;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FE310;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FE320;
  }
}

void *capabilities::txpower::sSettingsPlistName(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, "TxPowerSettings");
  if (a2 == 16 || a2 == 4)
  {
    if (*(result + 23) < 0)
    {
      result[1] = 19;
      result = *result;
    }

    else
    {
      *(result + 23) = 19;
    }

    *(result + 15) = 1869504846;
    *result = *"TxPowerSettingsNano";
    v4 = result + 19;
  }

  else
  {
    if (*(result + 23) < 0)
    {
      result[1] = 15;
      result = *result;
    }

    else
    {
      *(result + 23) = 15;
    }

    qmemcpy(result, "TxPowerSettings", 15);
    v4 = result + 15;
  }

  *v4 = 0;
  return result;
}

uint64_t capabilities::txpower::supportedControlInput(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2D0))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FE2B0 = capabilities::txpower::sSupportedControlInput(Product);
    __cxa_guard_release(&qword_1ED7FE2D0);
  }

  return dword_1ED7FE2B0;
}

uint64_t capabilities::txpower::sSupportedControlInput(int a1)
{
  if ((a1 - 60) > 0x9C)
  {
    return 0;
  }

  else
  {
    return dword_1CAE606F8[a1 - 60];
  }
}

uint64_t capabilities::txpower::supportsAntennaFreeSpaceConfig(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2D8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FE2AA = capabilities::ct::sSupportsSIMDetectionInterrupt(Product);
    __cxa_guard_release(&qword_1ED7FE2D8);
  }

  return byte_1ED7FE2AA;
}

uint64_t capabilities::txpower::supportsMotionAlways(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2E0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FE2AB = capabilities::txpower::sSupportsMotionAlways(Product);
    __cxa_guard_release(&qword_1ED7FE2E0);
  }

  return byte_1ED7FE2AB;
}

uint64_t capabilities::txpower::sSupportsMotionAlways(int a1)
{
  result = 1;
  if (a1 <= 83)
  {
    if ((a1 - 79) >= 3)
    {
      return 0;
    }
  }

  else if (((a1 - 84) > 0x3D || ((1 << (a1 - 84)) & 0x3C0F0103C007A381) == 0) && a1 != 203 && a1 != 212)
  {
    return 0;
  }

  return result;
}

uint64_t capabilities::txpower::supportsKeyboard(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2E8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FE2AC = ((Product - 82) < 0x37) & (0x40034002007103uLL >> (Product - 82));
    __cxa_guard_release(&qword_1ED7FE2E8);
  }

  return byte_1ED7FE2AC;
}

uint64_t capabilities::txpower::supportsMotion(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2F0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FE2AD = capabilities::txpower::sSupportsMotion(Product);
    __cxa_guard_release(&qword_1ED7FE2F0);
  }

  return byte_1ED7FE2AD;
}

uint64_t capabilities::txpower::sSupportsMotion(int a1)
{
  result = 1;
  if ((a1 - 82) > 0x38 || ((1 << (a1 - 82)) & 0x1C01B407E007183) == 0)
  {
    v3 = a1 - 146;
    if (v3 > 0xD || ((1 << v3) & 0x3807) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::txpower::supportsVideoAntennaSwitching(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE2F8))
  {
    byte_1ED7FE2AE = TelephonyRadiosGetRadio() != 8;
    __cxa_guard_release(&qword_1ED7FE2F8);
  }

  return byte_1ED7FE2AE;
}

uint64_t capabilities::txpower::supportedFaceID(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE300))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FE2B4 = capabilities::txpower::sSupportedFaceID(Product);
    __cxa_guard_release(&qword_1ED7FE300);
  }

  return dword_1ED7FE2B4;
}

uint64_t capabilities::txpower::sSupportedFaceID(int a1)
{
  v1 = a1 - 95;
  if ((a1 - 95) > 0x39)
  {
    goto LABEL_7;
  }

  if (((1 << v1) & 0x3C781E000780000) != 0)
  {
    return 2;
  }

  if (((1 << v1) & 3) != 0)
  {
    return 1;
  }

LABEL_7:
  if ((a1 - 164) <= 0x30 && ((1 << (a1 + 92)) & 0x1000000000007) != 0)
  {
    return 2;
  }

  return 0;
}

uint64_t capabilities::txpower::supportsFrontCamera(capabilities::txpower *this)
{
  if ((atomic_load_explicit(&qword_1ED7FE308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FE308))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FE2AF = ((Product - 114) < 0x25) & (0x18300C000FuLL >> (Product - 114));
    __cxa_guard_release(&qword_1ED7FE308);
  }

  return byte_1ED7FE2AF;
}

void capabilities::txpower::asString(int a1@<W0>, std::string *a2@<X8>)
{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kNone");
    goto LABEL_20;
  }

  if ((a1 & 1) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kAudio"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kMotion");
  std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  if ((a1 & 4) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kVoiceCall"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 8) != 0)
    {
LABEL_12:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kMotionHand");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 8) != 0)
  {
    goto LABEL_12;
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_20:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1CAE5B76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void *capabilities::txpower::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = (&off_1E83A6398)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}