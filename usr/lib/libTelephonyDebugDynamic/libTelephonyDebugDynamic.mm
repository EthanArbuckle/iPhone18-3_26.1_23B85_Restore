void TelephonyBasebandWatchdogStartWithStackshot(NSObject **a1, unsigned int a2, uint64_t a3)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = __TelephonyBasebandWatchdogStartWithStackshot_block_invoke;
  v3[3] = &__block_descriptor_tmp_0;
  v3[4] = a3;
  v4 = a2;
  TelephonyBasebandWatchdogStart(a1, a2, v3);
}

void TelephonyBasebandWatchdogStart(NSObject **a1, unsigned int a2, void *a3)
{
  global_queue = dispatch_get_global_queue(-2, 0);
  v7 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, global_queue);
  v8 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_event_handler(v7, a3);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 500000 * a2);
  dispatch_activate(v7);
  *a1 = v7;
}

void TelephonyBasebandWatchdogStop(dispatch_object_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    __TUAssertTrigger();
    v2 = *a1;
  }

  dispatch_source_cancel(v2);
  dispatch_release(*a1);
  *a1 = 0;
}

uint64_t TelephonySystemTrace::TelephonySystemTrace(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = dispatch_queue_create("SystemTrace", 0);
  return a1;
}

void sub_29824298C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void TelephonySystemTrace::~TelephonySystemTrace(TelephonySystemTrace *this)
{
  if (TelephonyUtilTraceAllowed())
  {
    v2 = *(this + 9);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN20TelephonySystemTraceD2Ev_block_invoke;
    block[3] = &__block_descriptor_tmp;
    block[4] = this;
    dispatch_sync(v2, block);
  }

  v3 = *(this + 9);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t TelephonySystemTrace::stopTrace_sync(TelephonySystemTrace *this)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(this + 56) != 1)
  {
    goto LABEL_5;
  }

  if (!TelephonyUtilRunCommand())
  {
    *(this + 56) = 0;
LABEL_5:
    result = 1;
    goto LABEL_6;
  }

  result = 0;
LABEL_6:
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL TelephonySystemTrace::startTrace_sync(TelephonySystemTrace *this)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(this + 56))
  {
    result = 1;
  }

  else
  {
    result = TelephonySystemTrace::setTraceBuffer(this);
    if (result)
    {
      if (TelephonyUtilRunCommand())
      {
        result = 0;
      }

      else
      {
        result = 1;
        *(this + 56) = 1;
      }
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL TelephonySystemTrace::setTraceBuffer(TelephonySystemTrace *this)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(&v5, 170, sizeof(v5));
  std::to_string(&v5, *this);
  v6 = "trace";
  v7 = "-i";
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v1 = &v5;
  }

  else
  {
    v1 = v5.__r_.__value_.__r.__words[0];
  }

  v8 = "-b";
  v9 = v1;
  v10 = 0;
  v2 = TelephonyUtilRunCommand();
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  result = v2 == 0;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298242C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL TelephonySystemTrace::enableTrace(TelephonySystemTrace *this)
{
  v3 = *MEMORY[0x29EDCA608];
  result = TelephonyUtilRunCommand() == 0;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL TelephonySystemTrace::disableTrace(TelephonySystemTrace *this)
{
  v3 = *MEMORY[0x29EDCA608];
  result = TelephonyUtilRunCommand() == 0;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void TelephonySystemTrace::watchdogStart(uint64_t a1, int a2, uint64_t a3, void **a4, void **a5)
{
  if (TelephonyUtilTraceAllowed())
  {
    v10 = _Block_copy(&__block_literal_global);
    v24 = v10;
    TelephonySystemTrace::watchdogStop(a1, 0, &v24);
    if (v10)
    {
      _Block_release(v10);
    }

    v11 = *(a1 + 72);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN20TelephonySystemTrace13watchdogStartEjNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvvEEESB__block_invoke_2;
    block[3] = &__block_descriptor_tmp_3;
    block[4] = a1;
    dispatch_async(v11, block);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN20TelephonySystemTrace13watchdogStartEjNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvvEEESB__block_invoke_3;
    aBlock[3] = &__block_descriptor_tmp_8;
    aBlock[4] = a1;
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    v21 = a2;
    v12 = *a4;
    if (*a4)
    {
      v12 = _Block_copy(v12);
    }

    v20 = v12;
    v13 = _Block_copy(aBlock);
    v22 = v13;
    TelephonySystemTrace::watchdogStartInternal(a1, a2, &v22);
    if (v13)
    {
      _Block_release(v13);
    }

    v14 = *(a1 + 72);
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 1174405120;
    v16[2] = ___ZN20TelephonySystemTrace13watchdogStartEjNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvvEEESB__block_invoke_9;
    v16[3] = &__block_descriptor_tmp_12;
    v15 = *a5;
    if (*a5)
    {
      v15 = _Block_copy(v15);
    }

    v17 = v15;
    dispatch_async(v14, v16);
    if (v17)
    {
      _Block_release(v17);
    }

    if (v20)
    {
      _Block_release(v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_298242FDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void TelephonySystemTrace::watchdogStop(uint64_t a1, int a2, void **a3)
{
  if (TelephonyUtilTraceAllowed())
  {
    if (a2)
    {
      v6 = *(a1 + 72);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN20TelephonySystemTrace12watchdogStopEbN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
      block[3] = &__block_descriptor_tmp_14;
      block[4] = a1;
      dispatch_async(v6, block);
    }

    v7 = *(a1 + 72);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 0x40000000;
    v12[2] = ___ZN20TelephonySystemTrace12watchdogStopEbN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_15;
    v12[4] = a1;
    dispatch_async(v7, v12);
    v8 = *(a1 + 72);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN20TelephonySystemTrace12watchdogStopEbN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_3;
    v10[3] = &__block_descriptor_tmp_18;
    v9 = *a3;
    if (*a3)
    {
      v9 = _Block_copy(v9);
    }

    aBlock = v9;
    dispatch_async(v8, v10);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void TelephonySystemTrace::watchdogStartInternal(uint64_t a1, int a2, void **a3)
{
  v3 = *(a1 + 72);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN20TelephonySystemTrace21watchdogStartInternalEjN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_13;
  block[4] = a1;
  v7 = a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  aBlock = v4;
  dispatch_async(v3, block);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

uint64_t ___ZN20TelephonySystemTrace13watchdogStartEjNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvvEEESB__block_invoke_3(uint64_t a1)
{
  v44 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v40 = v3;
  v39 = v3;
  v38 = v3;
  v37 = v3;
  v36 = v3;
  v35 = v3;
  v32 = v3;
  v31 = v3;
  v28 = v3;
  v26 = v3;
  *__p = v3;
  v24 = v3;
  v25 = v3;
  v23 = v3;
  v34 = 0;
  v4 = MEMORY[0x29EDC95A8] + 64;
  v30 = MEMORY[0x29EDC95A8] + 64;
  v5 = MEMORY[0x29EDC9538];
  v6 = *(MEMORY[0x29EDC9538] + 16);
  v22 = *(MEMORY[0x29EDC9538] + 8);
  *(&v22 + *(v22 - 24)) = v6;
  v7 = (&v22 + *(v22 - 24));
  std::ios_base::init(v7, &v23);
  v8 = MEMORY[0x29EDC95A8] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v22 = v8;
  v30 = v4;
  v9 = MEMORY[0x29EDC9568] + 16;
  *&v23 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2844D0](&v23 + 8);
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v10 = MEMORY[0x29EDC9570] + 16;
  *&v23 = MEMORY[0x29EDC9570] + 16;
  __p[0] = 0;
  __p[1] = 0;
  *&v28 = 0;
  *(&v28 + 1) = __p;
  LODWORD(v29) = 16;
  std::string::resize(__p, 0x16uLL, 0);
  v11 = BYTE7(v28);
  if (SBYTE7(v28) < 0)
  {
    v11 = __p[1];
  }

  *(&v25 + 1) = __p;
  *&v26 = __p;
  *(&v26 + 1) = __p + v11;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "operation timeout at ", 21);
  v12 = *(a1 + 63);
  if (v12 >= 0)
  {
    v13 = a1 + 40;
  }

  else
  {
    v13 = *(a1 + 40);
  }

  if (v12 >= 0)
  {
    v14 = *(a1 + 63);
  }

  else
  {
    v14 = *(a1 + 48);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, ", timeout ", 10);
  MEMORY[0x29C2844C0](&v22, *(a1 + 72));
  std::ostringstream::str[abi:ne200100](&__dst, &v22);
  if (v43 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  syslog(5, "Watchdog fired: %s\n", p_dst);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__dst);
  }

  __dst = "trace";
  v42 = "-d";
  v43 = 0;
  TelephonyUtilRunCommand();
  std::ostringstream::str[abi:ne200100](&__dst, &v22);
  TelephonyUtilWriteStackshot();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__dst);
  }

  TelephonySystemTrace::writeTraceBuffer(v2);
  __dst = "trace";
  v42 = "-e";
  v43 = 0;
  TelephonyUtilRunCommand();
  v16 = *(v2 + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN20TelephonySystemTrace13watchdogStartEjNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvvEEESB__block_invoke_4;
  block[3] = &__block_descriptor_tmp_7;
  v17 = *(a1 + 64);
  if (v17)
  {
    v17 = _Block_copy(v17);
  }

  aBlock = v17;
  dispatch_async(v16, block);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v22 = *v5;
  *(&v22 + *(v22 - 24)) = v5[3];
  *&v23 = v10;
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p[0]);
  }

  *&v23 = v9;
  std::locale::~locale(&v23 + 1);
  std::ostream::~ostream();
  result = MEMORY[0x29C284520](&v30);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2982436B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::ostringstream::str[abi:ne200100](void *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 104);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 96);
    v6 = *(a2 + 56);
    if (v5 < v6)
    {
      *(a2 + 96) = v6;
      v5 = v6;
    }

    v7 = (a2 + 48);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      *(__dst + 23) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 24);
    v5 = *(a2 + 40);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v4 | 7) + 1;
    }

    v10 = operator new(v9);
    v2[1] = v4;
    v2[2] = v9 | 0x8000000000000000;
    *v2 = v10;
    v2 = v10;
  }

  else
  {
    *(__dst + 23) = v4;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  __dst = memmove(v2, v8, v4);
LABEL_17:
  *(v2 + v4) = 0;
  return __dst;
}

BOOL TelephonySystemTrace::writeTraceBuffer(TelephonySystemTrace *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = this + 32;
  if (*(this + 55) < 0)
  {
    v2 = *v2;
  }

  TelephonySystemTrace::generateFileName(v2, &v15);
  v3 = *(this + 31);
  if (v3 >= 0)
  {
    v4 = this + 8;
  }

  else
  {
    v4 = *(this + 1);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 31);
  }

  else
  {
    v5 = *(this + 2);
  }

  v6 = std::string::insert(&v15, 0, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v14 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  syslog(5, "Writing system trace at %s\n", v8);
  v15.__r_.__value_.__r.__words[0] = "trace";
  v15.__r_.__value_.__l.__size_ = "-l";
  if (v14 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v15.__r_.__value_.__r.__words[2] = v9;
  v16 = 0;
  v10 = TelephonyUtilRunCommand();
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  result = v10 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29824394C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  result = *(a2 + 64);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 64) = result;
  return result;
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void ___ZN20TelephonySystemTrace21watchdogStartInternalEjN8dispatch5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 64) = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(v2 + 72));
  v3 = *(a1 + 48);
  v4 = dispatch_time(0, 1000000 * v3);
  dispatch_source_set_event_handler(*(v2 + 64), *(a1 + 40));
  dispatch_source_set_timer(*(v2 + 64), v4, 0xFFFFFFFFFFFFFFFFLL, 500000 * v3);
  v5 = *(v2 + 64);

  dispatch_activate(v5);
}

void *__copy_helper_block_e8_40c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN20TelephonySystemTrace12watchdogStopEbN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 64));
    *(v1 + 64) = 0;
  }
}

unint64_t TelephonySystemTrace::generateFileName@<X0>(const char *a1@<X1>, void *a2@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v12, 0, sizeof(v12));
  v11 = time(0);
  localtime_r(&v11, &v12);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v5;
  v28 = v5;
  v25 = v5;
  v26 = v5;
  v23 = v5;
  v24 = v5;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v17 = v5;
  v18 = v5;
  v15 = v5;
  v16 = v5;
  *__str = v5;
  v14 = v5;
  snprintf(__str, 0x100uLL, "%s%04u-%02u-%02u-%02u-%02u-%02u-systemtrace.raw", a1, v12.tm_year + 1900, v12.tm_mon + 1, v12.tm_mday, v12.tm_hour, v12.tm_min, v12.tm_sec);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (result | 7) + 1;
    }

    v9 = operator new(v8);
    a2[1] = v7;
    a2[2] = v8 | 0x8000000000000000;
    *a2 = v9;
    a2 = v9;
  }

  else
  {
    *(a2 + 23) = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  result = memcpy(a2, __str, v7);
LABEL_10:
  *(a2 + v7) = 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_29EE8E010, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C284490](v22, a1);
  if (LOBYTE(v22[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(__b, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_30;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_30;
    }

    if (v16 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        v18 = (v16 | 7) == 0x17 ? 25 : (v16 | 7) + 1;
        v17 = operator new(v18);
        __b[1].__locale_ = v16;
        __b[2].__locale_ = (v18 | 0x8000000000000000);
        __b[0].__locale_ = v17;
      }

      else
      {
        HIBYTE(__b[2].__locale_) = v16;
        v17 = __b;
      }

      memset(v17, v9, v16);
      *(v17 + v16) = 0;
      v19 = SHIBYTE(__b[2].__locale_) >= 0 ? __b : __b[0].__locale_;
      v20 = (*(*v7 + 96))(v7, v19, v16);
      if (SHIBYTE(__b[2].__locale_) < 0)
      {
        operator delete(__b[0].__locale_);
      }

      if (v20 != v16)
      {
        goto LABEL_30;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_30:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C2844A0](v22);
  return a1;
}

void sub_29824425C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2844A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x298244230);
}

void __TelephonyBasebandWatchdogStartWithStackshot_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v1;
  v20 = v1;
  v17 = v1;
  v18 = v1;
  v15 = v1;
  v16 = v1;
  v13 = v1;
  v14 = v1;
  v11 = v1;
  v12 = v1;
  v9 = v1;
  v10 = v1;
  v7 = v1;
  v8 = v1;
  *__str = v1;
  v6 = v1;
  snprintf(__str, 0x100uLL, "Telephony operation timeout at '%s', timeout %u\n", *(a1 + 32), *(a1 + 40));
  _TelephonyUtilDebugPrint();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v4 = __str;
    _os_log_error_impl(&dword_298242000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Telephony watchdog fired: %s\n", buf, 0xCu);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}